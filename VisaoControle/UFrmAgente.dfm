inherited frmAgente: TfrmAgente
  Caption = 'Cadastro Agente do SUS'
  ClientHeight = 558
  ClientWidth = 950
  ExplicitWidth = 966
  ExplicitHeight = 597
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 950
    ExplicitWidth = 950
  end
  inherited gbLocalizar: TGroupBox
    Width = 950
    ExplicitWidth = 950
  end
  inherited pnlBotoes: TPanel
    Top = 517
    Width = 950
    ExplicitTop = 517
    ExplicitWidth = 950
    inherited btnLimpar: TBitBtn
      Left = 715
      ExplicitLeft = 715
    end
    inherited btnExcluir: TBitBtn
      Left = 598
      ExplicitLeft = 598
    end
    inherited btnGravar: TBitBtn
      Left = 481
      ExplicitLeft = 481
    end
    inherited btnSair: TBitBtn
      Left = 832
      ExplicitLeft = 832
    end
  end
  object gbUsuarios: TGroupBox [3]
    Left = 0
    Top = 86
    Width = 950
    Height = 431
    Align = alClient
    Caption = 'Cadastro de usu'#225'rios do sistema'
    TabOrder = 3
    object edNome: TLabeledEdit
      Left = 32
      Top = 32
      Width = 121
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
      TabOrder = 0
    end
    object edLogin: TLabeledEdit
      Left = 193
      Top = 32
      Width = 121
      Height = 21
      EditLabel.Width = 25
      EditLabel.Height = 13
      EditLabel.Caption = 'Login'
      TabOrder = 1
    end
    object edSenha: TLabeledEdit
      Left = 32
      Top = 80
      Width = 121
      Height = 21
      EditLabel.Width = 30
      EditLabel.Height = 13
      EditLabel.Caption = 'Senha'
      TabOrder = 2
    end
    object edEmail: TLabeledEdit
      Left = 193
      Top = 80
      Width = 121
      Height = 21
      EditLabel.Width = 28
      EditLabel.Height = 13
      EditLabel.Caption = 'E-Mail'
      TabOrder = 3
    end
    object edCoren: TLabeledEdit
      Left = 32
      Top = 128
      Width = 121
      Height = 21
      EditLabel.Width = 29
      EditLabel.Height = 13
      EditLabel.Caption = 'Coren'
      TabOrder = 4
    end
    object edEspec: TLabeledEdit
      Left = 193
      Top = 128
      Width = 121
      Height = 21
      EditLabel.Width = 64
      EditLabel.Height = 13
      EditLabel.Caption = 'Especifica'#231#227'o'
      TabOrder = 5
    end
    object edTurno: TLabeledEdit
      Left = 32
      Top = 208
      Width = 121
      Height = 21
      EditLabel.Width = 28
      EditLabel.Height = 13
      EditLabel.Caption = 'Turno'
      TabOrder = 6
    end
    object edContato: TLabeledEdit
      Left = 193
      Top = 208
      Width = 121
      Height = 21
      EditLabel.Width = 39
      EditLabel.Height = 13
      EditLabel.Caption = 'Contato'
      TabOrder = 7
    end
    object edDataNasc: TMaskEdit
      Left = 32
      Top = 168
      Width = 120
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 8
      Text = '  /  /    '
    end
  end
end
