object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  Caption = 'FrmLogin'
  ClientHeight = 375
  ClientWidth = 796
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edLogin: TEdit
    Left = 80
    Top = 88
    Width = 233
    Height = 21
    TabOrder = 0
  end
  object edSenha: TEdit
    Left = 400
    Top = 88
    Width = 257
    Height = 21
    TabOrder = 1
    OnKeyDown = edSenhaKeyDown
  end
  object btnEntrar: TButton
    Left = 80
    Top = 168
    Width = 75
    Height = 25
    Caption = 'btnEntrar'
    TabOrder = 2
    OnClick = btnEntrarClick
  end
  object btnCancelar: TButton
    Left = 400
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = btnCancelarClick
  end
end
