object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  Caption = 'FrmLogin'
  ClientHeight = 201
  ClientWidth = 346
  Color = clBtnFace
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
    Left = 18
    Top = 43
    Width = 40
    Height = 13
    Caption = 'Usu'#225'rio:'
  end
  object Label2: TLabel
    Left = 24
    Top = 112
    Width = 34
    Height = 13
    Caption = 'Senha:'
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
    Top = 109
    Width = 257
    Height = 21
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
