object frm_MainProg: Tfrm_MainProg
  Left = 277
  Top = 134
  Width = 385
  Height = 259
  Caption = 'Text in file - '#1058#1077#1082#1089#1090' '#1074#1085#1091#1090#1088#1080' '#1092#1072#1081#1083#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object m_Text: TMemo
    Left = 0
    Top = 36
    Width = 377
    Height = 176
    Align = alClient
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object StBar: TStatusBar
    Left = 0
    Top = 212
    Width = 377
    Height = 19
    Panels = <
      item
        Text = #1057#1086#1089#1090#1086#1103#1085#1080#1077': '#1085#1077#1090' '#1076#1072#1085#1085#1099#1093
        Width = 50
      end>
    SimplePanel = True
    SimpleText = '   Alegun  mailto: alegun72@mail.ru '
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 36
    Align = alTop
    TabOrder = 2
    object sbOpen: TSpeedButton
      Left = 6
      Top = 4
      Width = 28
      Height = 27
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1092#1072#1081#1083' '#1076#1083#1103' '#1095#1090#1077#1085#1080#1103'\'#1079#1072#1087#1080#1089#1080' '#1090#1077#1082#1089#1090#1072
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000635A000000
        000052C6DE0052C6DE004AC6DE0052C6DE0042BDDE0042BDDE0042BDDE0039BD
        DE0031B5D60000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000635A008CFF
        FF000000000052C6DE0052C6DE0052C6DE0052C6DE004AC6DE004AC6DE0042BD
        DE0039BDDE0039BDDE0000000000FFFFFF00FFFFFF00FFFFFF0000635A008CFF
        FF0000CEFF000000000052C6DE0052C6DE0052C6DE0052C6DE004AC6DE004AC6
        DE0042BDDE0042BDDE0039BDD60000000000FFFFFF00FFFFFF0000635A008CFF
        FF00FFFFFF0000CEFF000000000063CEE70052C6DE0052C6DE0052C6DE004AC6
        DE004AC6DE004AC6DE0042BDDE0039BDDE0000000000FFFFFF0000635A008CFF
        FF0000CEFF00EFFFFF0000CEFF00000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000635A008CFF
        FF00EFFFFF0000CEFF00FFFFFF0000CEFF00FFFFFF0000CEFF00EFFFFF0000CE
        FF00EFFFFF0000CEFF0000000000FFFFFF00FFFFFF00FFFFFF0000635A008CFF
        FF0000CEFF00FFFFFF0000CEFF00EFFFFF008CFFFF008CFFFF008CFFFF008CFF
        FF008CFFFF008CFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000635A008CFF
        FF00FFFFFF0000CEFF00EFFFFF0000CEFF008CFFFF0000635A0000635A000063
        5A0000635A0000635A0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000063
        5A008CFFFF008CFFFF008CFFFF008CFFFF0000635A00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000635A0000635A0000635A0000635A00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      OnClick = tbOpenClick
    end
    object sbSave: TSpeedButton
      Left = 79
      Top = 4
      Width = 28
      Height = 27
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100'\'#1080#1079#1084#1077#1085#1080#1090#1100' '#1090#1077#1082#1089#1090' '#1074' '#1086#1090#1082#1088#1099#1090#1086#1084' '#1092#1072#1081#1083#1077
      Enabled = False
      Flat = True
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF0000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000FFFFFF0000FFFFFF000000FF8C0800000000000000000000000000
        0000000000000000000000BDBDBDBDBDBDBDBDBD000000FF8C08000000FFFFFF
        0000FFFFFF000000FF8C08000000737B73737B73737B73737B73737B73737B73
        000000BDBDBDBDBDBDBDBDBD000000FF8C08000000FFFFFF0000FFFFFF000000
        FFA531000000000000000000000000000000000000000000000000BDBDBDBDBD
        BDBDBDBD000000FF8C08000000FFFFFF0000FFFFFF000000FFBD52000000737B
        73737B73737B73737B73737B73737B73000000BDBDBDBDBDBDBDBDBD000000FF
        8C08000000FFFFFF0000FFFFFF000000FFC66300000000000000000000000000
        0000000000000000000000000000000000000000000000FF8C08000000FFFFFF
        0000FFFFFF000000FFE79CFFDE8CFFDE8CFFD684FFCE73FFC663FFC65AFFBD52
        FFB54AFFAD42FFAD39FFA531FF9C21FF8C08000000FFFFFF0000FFFFFF000000
        FFE79CFFDE8C0000000000000000000000000000000000000000000000000000
        00000000FF9418FFA531000000FFFFFF0000FFFFFF000000FFE79C000000BDBD
        BDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBD000000FF
        A531000000FFFFFF0000FFFFFF000000FFE79C000000FFFFFF8CFFFFFFFFFF8C
        FFFFFFFFFF8CFFFFFFFFFF8CFFFFFFFFFFBDBDBD000000FFBD52000000FFFFFF
        0000FFFFFF000000FFE79C0000008CFFFFFFFFFF8CFFFFFFFFFF8CFFFFFFFFFF
        8CFFFFFFFFFF8CFFFFBDBDBD000000FFBD52000000FFFFFF0000FFFFFF000000
        FFE79C000000FFFFFFFF6321FF6321FF6321FF6321FF6321FFFFFF8CFFFFFFFF
        FFBDBDBD000000FFE79C000000FFFFFF0000FFFFFF000000FFFFCE000000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8CFFFFFFFFFF8CFFFFBDBDBD00000000
        0000000000FFFFFF0000FFFFFF000000FFFFCE000000FFFFFFFF6321FF6321FF
        6321FF6321FF6321FF6321FF6321FFFFFFBDBDBD000000BDBDBD000000FFFFFF
        0000FFFFFF000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFBDBDBD000000BDBDBD000000FFFFFF0000FFFFFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000}
      Layout = blGlyphRight
      OnClick = tbSaveClick
    end
    object sbDel: TSpeedButton
      Left = 117
      Top = 4
      Width = 28
      Height = 27
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1090#1077#1082#1089#1090' '#1080#1079' '#1086#1090#1082#1088#1099#1090#1086#1075#1086' '#1092#1072#1081#1083#1072
      Enabled = False
      Flat = True
      Glyph.Data = {
        F6000000424DF60000000000000076000000280000000F000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFF0FF0FFFFFFFFFF0F0F090FFFFFFFFF9F0F9990FFFFFFF0FF0F9999FFFFFF0
        9FF0FF9990FFFF09FFF0FFF9990FF099FFF0FFFF9990099FFFF0FFFFF99999FF
        FFF0FFFFF09990FFFFF0FFFF0999990FFFF0FF00999FF990FFF0F09999FFFF99
        0FF0F9999FFFFFF990F0F999FFFFFFFFF9F0FFFFFFFFFFFFFFF0}
      OnClick = tbDelClick
    end
    object sbOpenParent: TSpeedButton
      Left = 42
      Top = 4
      Width = 28
      Height = 27
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1076#1083#1103' '#1087#1088#1086#1089#1084#1086#1090#1088#1072' '#1092#1072#1081#1083'-'#1085#1086#1089#1080#1090#1077#1083#1100
      Enabled = False
      Flat = True
      Glyph.Data = {
        DE030000424DDE03000000000000360000002800000011000000120000000100
        180000000000A803000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF000000000000000000000000000000
        000000000000000000000000000000000000000000FFFFFF0000CE000000FFFF
        FF00FFFFFF000000BDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBD
        BDBDBDBDBDBD0000CE5ACEFF5A00FF0000CEFFFFFF00FFFFFF0000008CFFFFFF
        FFFF8CFFFFFFFFFF8CFFFF0000000000000000000000000000005ACEFF5A00FF
        0000CE000000FFFFFF00FFFFFF000000FFFFFF8CFFFFFFFFFF8CFFFF424A42CE
        9421CE9421CE9421CE94219463210000000000CE000000FFFFFFFFFFFF00FFFF
        FF000000FFFFFFFFFFFF8CFFFF000000737B73FFCE21FFCE21FFCE21CE9421CE
        9421946321000000FFFFFFFFFFFFFFFFFF00FFFFFF000000FFFFFF8CFFFFFFFF
        FF000000FFCE94FFFF94FFFF94FFFF94FFCE21CE9421CE9421000000FFFFFFFF
        FFFFFFFFFF00FFFFFF000000FFFFFFFFFFFF8CFFFF000000FFCE94FFFFFFFFFF
        CEFFFF94FFFF94FFCE21CE9421000000FFFFFFFFFFFFFFFFFF00FFFFFF000000
        FFFFFF8CFFFFFFFFFF000000FFCE94FFFFFFFFFFFFFFFFCEFFFF94FFCE21CE94
        21000000FFFFFFFFFFFFFFFFFF00FFFFFF000000FFFFFFFFFFFF8CFFFF000000
        737B73FFCE94FFFFFFFFFFFFFFFFFFFFCE94737B73000000FFFFFFFFFFFFFFFF
        FF00FFFFFF000000FFFFFF8CFFFFFFFFFF8CFFFF424A42737B73FFCE94FFCE94
        FFCE94737B73000000FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF000000FFFFFFFF
        FFFFFFFFFFFFFFFF8CFFFF000000000000000000000000000000000000FFFFFF
        FFFFFFFFFFFFFFFFFF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C
        FFFFFFFFFFBDBDBDBDBDBDBDBDBD000000FFFFFFFFFFFFFFFFFFFFFFFF00FFFF
        FF000000FFFFFFFFFFFFFFFFFFFFFFFF8CFFFFFFFFFF8CFFFF00000000000000
        0000000000FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF000000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFFFFFF
        FFFFFFFFFF00FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF000000
        000000000000000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00}
      OnClick = tbOpenParentClick
    end
  end
  object Op: TOpenDialog
    Filter = #1042#1089#1077' '#1092#1072#1081#1083#1099' (*.*)|*.*'
    Left = 10
    Top = 42
  end
  object XPManifest1: TXPManifest
    Left = 47
    Top = 42
  end
end
