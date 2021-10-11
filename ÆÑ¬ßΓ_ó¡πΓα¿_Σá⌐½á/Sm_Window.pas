unit Sm_Window;

interface

uses
  Windows, SysUtils,  Classes, Controls, Forms, Dialogs, ExtCtrls,
  StdCtrls, ComCtrls, IniFiles, XPMan, Buttons;

type
  Tfrm_MainProg = class(TForm)
    Op:TOpenDialog;
    m_Text: TMemo;StBar:TStatusBar;XPManifest1:TXPManifest;
    Panel1: TPanel;
    sbOpen: TSpeedButton;
    sbSave: TSpeedButton;
    sbDel: TSpeedButton;
    sbOpenParent: TSpeedButton;
    function ReadTextInFile(FileName:string; var FileText:string):boolean;
    function WriteTextInFile(FileName:string; Text: string):boolean;
    function ReWriteTextInFile(FileName:string; NewText: string):boolean;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure tbOpenParentClick(Sender: TObject);
    procedure tbOpenClick(Sender: TObject);
    procedure tbSaveClick(Sender: TObject);
    procedure tbDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var  frm_MainProg: Tfrm_MainProg; f: file of byte;

    implementation

  uses XorCrypt,ShellApi;

  const TxtHeader:string = #$09#$08#$06#$03#$FF#$D9; Section:string ='Window';
{$R *.dfm}
procedure Tfrm_MainProg.ShowHint(Sender: TObject);
begin
if Length(Application.Hint) > 0 then  begin StBar.SimplePanel:=True;
 StBar.SimpleText:=Application.Hint; end else StBar.SimplePanel:=False;
end;

function Tfrm_MainProg.ReadTextInFile(FileName:string;var FileText:string):boolean;
var b:byte;i,p:integer;s,m:string;
begin
AssignFile(f,FileName);try Reset(f);Seek(f,FileSize(f)-6);SetLength(s,6);
for i:=1 to Length(s)do begin Read(f,b);s[i]:=Char(Integer(Byte(b)));end;
if s=TxtHeader then begin Seek(f,FileSize(f)-7);Read(f,b);p:=Integer(b);
SetLength(s,p);Seek(f,FileSize(f)-(7+p));for i:=1 to Length(s)do begin
Read(f,b);m:=IntToStr(b);s[i]:=m[1];end;Seek(f,StrToInt(s));
SetLength(s,FileSize(f)-(StrToInt(s)+7+p));
for i:=1 to Length(s)do begin Read(f,b);s[i]:=chr(b);end;FileText:=DeCrypt(s);
Result:=true;end else Result:=false; finally CloseFile(f); end;
end;

function Tfrm_MainProg.ReWriteTextInFile(FileName, NewText: string): boolean;
var b:byte;i,p:integer;s,m:string;l:char;
begin
Result:=true; AssignFile(f,FileName);
try Reset(f); Seek(f,FileSize(f)-6); SetLength(s,6);
for i:=1 to Length(s)do begin Read(f,b);s[i]:=Char(Integer(Byte(b))); end;
if s=TxtHeader then begin Seek(f,FileSize(f)-7); Read(f,b); p:=Integer(b);
SetLength(s,p); Seek(f,FileSize(f)-(7+p));
for i:=1 to Length(s)do begin Read(f,b); m:=IntToStr(b); s[i]:=m[1];end;
Seek(f,StrToInt(s)); Truncate(f);
if NewText='' then exit else begin s:=IntToStr(FileSize(f));
for i:=1 to Length(s)do begin l:=Chr(StrToInt(s[i]));s[i]:=l;end;
s:=EnCrypt(NewText)+s+Chr(Length(s))+TxtHeader;
for i:=1 to Length(s) do begin b:=Byte(s[i]);Write(f,b);end;end;
end else Result:=false; finally CloseFile(f); end;
end;

function Tfrm_MainProg.WriteTextInFile(FileName, Text: string): boolean;
var b:byte;i:integer;s:string;l:char;
begin
AssignFile(f,FileName);try Reset(f);Seek(f,FileSize(f)-6);SetLength(s,6);
for i:=1 to Length(s)do begin Read(f,b);s[i]:=Char(Integer(Byte(b)));end;
if s=TxtHeader then Result:=false else begin s:=IntToStr(FileSize(f));
for i:=1 to Length(s)do begin l:=Chr(StrToInt(s[i]));s[i]:=l;end;
s:=EnCrypt(Text) + s + Chr(Length(s)) + TxtHeader;
for i:=1 to Length(s) do begin b:=Byte(s[i]); Write(f,b);end;
Result:=true;end; finally CloseFile(f); end;
end;

procedure Tfrm_MainProg.FormCreate(Sender: TObject);
var Text:TIniFile;WS:string;
begin
Text:=TIniFile.Create(extractFileDir(ParamSTR(0))+'\tif.ini');try
Top:=Text.ReadInteger(Section,'Top',375);
Left:=Text.ReadInteger(Section,'Left',340);
Height:=Text.ReadInteger(Section,'Height',274);
Width:=Text.ReadInteger(Section,'Width',400);
WS:=Text.ReadString(Section,'WindowState','wsNormal');
if WS='wsMaximized'then WindowState:=wsMaximized else WindowState:=wsNormal;
finally Text.Free; end; Application.OnHint := ShowHint;
end;

procedure Tfrm_MainProg.FormDestroy(Sender: TObject);
var Text:TIniFile;WS:string;
begin
Text:=TIniFile.Create(extractFileDir(ParamSTR(0))+'\tif.ini'); try
if WindowState=wsNormal then begin
Text.WriteInteger(Section,'Top',Top);
Text.WriteInteger(Section,'Left',Left);
Text.WriteInteger(Section,'Height',Height);
Text.WriteInteger(Section,'Width',Width);
WS:='wsNormal';end else WS:='wsMaximized';
Text.WriteString(Section,'WindowState',WS); finally Text.Free;end;
end;

procedure Tfrm_MainProg.tbOpenParentClick(Sender: TObject);
begin
ShellExecute(0,nil,PChar(op.FileName),nil,nil,SW_SHOWNORMAL);
end;

procedure Tfrm_MainProg.tbOpenClick(Sender: TObject);
var s:string;
begin
If op.Execute then begin if ReadTextInFile(op.FileName,s)then begin
m_Text.Text:=s;StBar.Panels[0].Text:='Состояние: Текст загружен';
sbDel.Enabled:=true;sbOpenParent.Enabled:=true;sbSave.Enabled:=true;
end else begin
m_Text.Clear;sbDel.Enabled:=false;sbOpenParent.Enabled:=true;
sbSave.Enabled:=true;StBar.Panels[0].Text:='Состояние: Текста в файле нет';end;
Caption:='TextInFile - '+ExtractFileName(op.FileName);end;
end;

procedure Tfrm_MainProg.tbSaveClick(Sender: TObject);
begin
if m_Text.Text='' then exit;
if ReWriteTextInFile(Op.FileName,m_Text.Text)then begin
StBar.Panels[0].Text:='Состояние: Текст перезаписан';end
else if WriteTextInFile(Op.FileName,m_Text.Text)
then StBar.Panels[0].Text:='Состояние: Текст добавлен к файлу';
sbDel.Enabled:=true;
end;

procedure Tfrm_MainProg.tbDelClick(Sender: TObject);
begin
if ReWriteTextInFile(Op.FileName,'')then begin m_Text.Clear;
StBar.Panels[0].Text:='Состояние: Текст из файла удалён';sbDel.Enabled:=false;
end else StBar.Panels[0].Text:='Состояние: Текста в файле нет';
end;

end.
