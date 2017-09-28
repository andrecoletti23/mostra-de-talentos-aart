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
    Color = 6176512
    ParentBackground = False
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
    Color = 6176512
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
    object edLogin: TLabeledEdit
      Left = 16
      Top = 32
      Width = 225
      Height = 21
      EditLabel.Width = 37
      EditLabel.Height = 20
      EditLabel.Caption = 'Login'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      MaxLength = 20
      TabOrder = 0
    end
    object edSenha: TLabeledEdit
      Left = 16
      Top = 96
      Width = 225
      Height = 21
      EditLabel.Width = 40
      EditLabel.Height = 20
      EditLabel.Caption = 'Senha'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      MaxLength = 12
      PasswordChar = '*'
      TabOrder = 1
    end
    object lbConfirmacaoSenha: TLabeledEdit
      Left = 336
      Top = 32
      Width = 225
      Height = 21
      EditLabel.Width = 150
      EditLabel.Height = 20
      EditLabel.Caption = 'Confirma'#231#227'o de Senha'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
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
    Color = 6176512
    ParentBackground = False
    ParentColor = False
    TabOrder = 4
    object Label1: TLabel
      Left = 16
      Top = 111
      Width = 136
      Height = 20
      Caption = 'Data de Nascimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 472
      Top = 161
      Width = 38
      Height = 20
      Caption = 'Turno'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object edDataNasc: TMaskEdit
      Left = 15
      Top = 135
      Width = 103
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object edContato: TLabeledEdit
      Left = 471
      Top = 100
      Width = 314
      Height = 21
      EditLabel.Width = 53
      EditLabel.Height = 20
      EditLabel.Caption = 'Contato'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      MaxLength = 15
      TabOrder = 1
    end
    object edCoren: TLabeledEdit
      Left = 16
      Top = 84
      Width = 161
      Height = 21
      EditLabel.Width = 39
      EditLabel.Height = 20
      EditLabel.Caption = 'Coren'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      MaxLength = 60
      TabOrder = 2
    end
    object edNome: TLabeledEdit
      Left = 15
      Top = 36
      Width = 225
      Height = 21
      EditLabel.Width = 41
      EditLabel.Height = 20
      EditLabel.Caption = 'Nome'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      MaxLength = 60
      TabOrder = 3
    end
    object edEspec: TLabeledEdit
      Left = 16
      Top = 180
      Width = 264
      Height = 26
      EditLabel.Width = 90
      EditLabel.Height = 20
      EditLabel.Caption = 'Especifica'#231#227'o'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 60
      ParentFont = False
      TabOrder = 4
    end
    object edEmail: TLabeledEdit
      Left = 472
      Top = 40
      Width = 345
      Height = 21
      EditLabel.Width = 43
      EditLabel.Height = 20
      EditLabel.Caption = 'E-Mail'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
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
    Color = 6176512
    ParentBackground = False
    ParentColor = False
    TabOrder = 5
    object meInformacoes: TMemo
      Left = 16
      Top = 16
      Width = 281
      Height = 63
      Color = 6176512
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Lines.Strings = (
        '* Aten'#231#227'o ao preencher as informa'#231#245'es'
        ''
        '* Todos os campos s'#227'o obrigat'#243'rios')
      ParentFont = False
      TabOrder = 0
    end
  end
end
