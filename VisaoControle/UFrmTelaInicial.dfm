object frmTelaInicial: TfrmTelaInicial
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 726
  ClientWidth = 1229
  Color = 6176512
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  DesignSize = (
    1229
    726)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 421
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
    Left = 24
    Top = 464
    Width = 1153
    Height = 225
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 64
    Top = 192
    Width = 121
    Height = 129
    Caption = 'Cadastro'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 192
    Width = 121
    Height = 129
    Caption = 'Vacina'#231#227'o'
    TabOrder = 2
    OnClick = Button2Click
  end
end
