object frmTelaInicial: TfrmTelaInicial
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderStyle = bsNone
  ClientHeight = 426
  ClientWidth = 839
  Color = 6176512
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  DesignSize = (
    839
    426)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 229
    Width = 244
    Height = 37
    Caption = 'Pr'#243'ximos Pacientes '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 280
    Width = 828
    Height = 132
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 32
    Top = 48
    Width = 121
    Height = 129
    Caption = 'Cadastro'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 208
    Top = 48
    Width = 121
    Height = 129
    Caption = 'Vacina'#231#227'o'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 384
    Top = 48
    Width = 129
    Height = 129
    Caption = 'Deposito'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 584
    Top = 48
    Width = 129
    Height = 129
    Caption = 'Cadastro Usu'#225'rios'
    TabOrder = 4
    OnClick = Button4Click
  end
end
