object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Login do Sistema'
  ClientHeight = 194
  ClientWidth = 356
  Color = 6176512
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 38
    Width = 53
    Height = 20
    Caption = 'Usu'#225'rio:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 15
    Top = 91
    Width = 43
    Height = 20
    Caption = 'Senha:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 198
    Top = 120
    Width = 123
    Height = 17
    Caption = 'Esqueceu sua senha?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnMouseMove = Label3MouseMove
    OnMouseLeave = Label3MouseLeave
  end
  object edLogin: TEdit
    Left = 64
    Top = 40
    Width = 257
    Height = 21
    TabOrder = 0
  end
  object edSenha: TEdit
    Left = 64
    Top = 93
    Width = 257
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
    OnKeyDown = edSenhaKeyDown
  end
  object btnEntrar: TButton
    Left = 64
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Entrar'
    TabOrder = 2
    OnClick = btnEntrarClick
  end
  object btnCancelar: TButton
    Left = 246
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = btnCancelarClick
  end
end
