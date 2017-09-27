inherited frmAgente: TfrmAgente
  Caption = 'Cadastro Agente do SUS'
  ClientHeight = 558
  ClientWidth = 950
  ExplicitTop = -152
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
    Height = 131
    Align = alTop
    Caption = 'Informa'#231#245'es de Login'
    TabOrder = 3
    object edLogin: TLabeledEdit
      Left = 16
      Top = 32
      Width = 225
      Height = 21
      EditLabel.Width = 25
      EditLabel.Height = 13
      EditLabel.Caption = 'Login'
      MaxLength = 20
      TabOrder = 0
    end
    object edSenha: TLabeledEdit
      Left = 16
      Top = 96
      Width = 225
      Height = 21
      EditLabel.Width = 30
      EditLabel.Height = 13
      EditLabel.Caption = 'Senha'
      MaxLength = 12
      PasswordChar = '*'
      TabOrder = 1
    end
    object lbConfirmacaoSenha: TLabeledEdit
      Left = 336
      Top = 32
      Width = 225
      Height = 21
      EditLabel.Width = 108
      EditLabel.Height = 13
      EditLabel.Caption = 'Confirma'#231#227'o de Senha'
      MaxLength = 12
      PasswordChar = '*'
      TabOrder = 2
    end
  end
  object GroupBox1: TGroupBox [4]
    Left = 0
    Top = 217
    Width = 950
    Height = 215
    Align = alClient
    Caption = 'Informa'#231#245'es do Agente'
    TabOrder = 4
    ExplicitHeight = 209
    object Label1: TLabel
      Left = 16
      Top = 116
      Width = 96
      Height = 13
      Caption = 'Data de Nascimento'
    end
    object Label2: TLabel
      Left = 472
      Top = 161
      Width = 28
      Height = 13
      Caption = 'Turno'
    end
    object edDataNasc: TMaskEdit
      Left = 16
      Top = 135
      Width = 103
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object edContato: TLabeledEdit
      Left = 481
      Top = 100
      Width = 296
      Height = 21
      EditLabel.Width = 39
      EditLabel.Height = 13
      EditLabel.Caption = 'Contato'
      MaxLength = 15
      TabOrder = 1
    end
    object edCoren: TLabeledEdit
      Left = 16
      Top = 84
      Width = 161
      Height = 21
      EditLabel.Width = 29
      EditLabel.Height = 13
      EditLabel.Caption = 'Coren'
      MaxLength = 60
      TabOrder = 2
    end
    object edNome: TLabeledEdit
      Left = 16
      Top = 40
      Width = 225
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
      MaxLength = 60
      TabOrder = 3
    end
    object edEspec: TLabeledEdit
      Left = 16
      Top = 180
      Width = 264
      Height = 21
      EditLabel.Width = 64
      EditLabel.Height = 13
      EditLabel.Caption = 'Especifica'#231#227'o'
      MaxLength = 60
      TabOrder = 4
    end
    object edEmail: TLabeledEdit
      Left = 472
      Top = 40
      Width = 345
      Height = 21
      EditLabel.Width = 28
      EditLabel.Height = 13
      EditLabel.Caption = 'E-Mail'
      MaxLength = 60
      TabOrder = 5
    end
    object edTurno: TComboBox
      Left = 471
      Top = 180
      Width = 145
      Height = 21
      TabOrder = 6
      Items.Strings = (
        'Matutino'
        'Vespertino'
        'Noturno')
    end
  end
  object gbInformacoesAdicionais: TGroupBox [5]
    Left = 0
    Top = 432
    Width = 950
    Height = 85
    Align = alBottom
    Caption = 'Informa'#231#245'es Adicionais'
    TabOrder = 5
    object meInformacoes: TMemo
      Left = 16
      Top = 22
      Width = 225
      Height = 57
      Color = clSilver
      Lines.Strings = (
        '* Aten'#231#227'o ao preencher as informa'#231#245'es'
        ''
        '* Todos os campos s'#227'o obrigat'#243'rios')
      TabOrder = 0
    end
  end
end
