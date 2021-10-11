program TextInFile;

uses
  Forms,
  Sm_Window in 'Sm_Window.pas' {frm_MainProg};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm_MainProg, frm_MainProg);
  Application.Run;
end.
