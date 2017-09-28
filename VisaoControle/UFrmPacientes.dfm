inherited frmPacientes: TfrmPacientes
  Caption = 'Cadastro/Altera'#231#227'o de Pacientes - SUS'
  ClientHeight = 572
  ClientWidth = 1012
  ExplicitWidth = 1028
  ExplicitHeight = 611
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 1012
    ExplicitWidth = 1012
    inherited lbCabecalho: TLabel
      Top = 2
      Width = 429
      Caption = 'CADASTRO DE PACIENTES - SISTEMA '#218'NICO DE SA'#218'DE'
      ExplicitTop = 2
      ExplicitWidth = 429
    end
  end
  inherited gbLocalizar: TGroupBox
    Width = 1012
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI Semilight'
    Font.Style = []
    ExplicitWidth = 1012
  end
  inherited pnlBotoes: TPanel
    Top = 531
    Width = 1012
    Color = 6176512
    ParentBackground = False
    ExplicitTop = 531
    ExplicitWidth = 1012
    inherited btnLimpar: TBitBtn
      Left = 802
      ExplicitLeft = 802
    end
    inherited btnExcluir: TBitBtn
      Left = 685
      ExplicitLeft = 685
    end
    inherited btnGravar: TBitBtn
      Left = 568
      ExplicitLeft = 568
    end
    inherited btnSair: TBitBtn
      Left = 919
      ExplicitLeft = 919
    end
  end
  object gbIdentificacao: TGroupBox [3]
    Left = 0
    Top = 86
    Width = 1012
    Height = 171
    Hint = 'Identifica'#231#227'o do paciente'
    Align = alTop
    Caption = 'Identifica'#231#227'o'
    Color = 6176512
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    object lbSexo: TLabel
      Left = 836
      Top = 16
      Width = 32
      Height = 20
      Caption = 'Sexo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbNasci: TLabel
      Left = 664
      Top = 14
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
    object lbCPF: TLabel
      Left = 8
      Top = 63
      Width = 24
      Height = 20
      Caption = 'CPF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbRG: TLabel
      Left = 184
      Top = 64
      Width = 19
      Height = 20
      Caption = 'RG'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbEmisao: TLabel
      Left = 626
      Top = 67
      Width = 84
      Height = 20
      Caption = 'Data Emis'#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbEstadoCivil: TLabel
      Left = 800
      Top = 67
      Width = 77
      Height = 20
      Caption = 'Estado Civil'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object edNome: TLabeledEdit
      Left = 8
      Top = 40
      Width = 617
      Height = 23
      EditLabel.AlignWithMargins = True
      EditLabel.Width = 111
      EditLabel.Height = 20
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'Nome Completo'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentBiDiMode = False
      EditLabel.ParentFont = False
      TabOrder = 0
    end
    object edMae: TLabeledEdit
      Left = 8
      Top = 138
      Width = 481
      Height = 23
      EditLabel.AlignWithMargins = True
      EditLabel.Width = 202
      EditLabel.Height = 20
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'Nome da M'#227'e ou Respons'#225'vel'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentBiDiMode = False
      EditLabel.ParentFont = False
      TabOrder = 8
    end
    object edEmissor: TLabeledEdit
      Left = 385
      Top = 90
      Width = 200
      Height = 23
      EditLabel.AlignWithMargins = True
      EditLabel.Width = 97
      EditLabel.Height = 20
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'Org'#227'o Emissor'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentBiDiMode = False
      EditLabel.ParentFont = False
      TabOrder = 5
    end
    object cbSexo: TComboBox
      Left = 836
      Top = 40
      Width = 196
      Height = 23
      TabOrder = 2
      Items.Strings = (
        'Masculino'
        'Feminino')
    end
    object edNascimento: TMaskEdit
      Left = 664
      Top = 40
      Width = 136
      Height = 23
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object edCPF: TMaskEdit
      Left = 8
      Top = 89
      Width = 151
      Height = 23
      EditMask = '000.000.000-00;1;_'
      MaxLength = 14
      TabOrder = 3
      Text = '   .   .   -  '
    end
    object edRG: TMaskEdit
      Left = 184
      Top = 88
      Width = 169
      Height = 23
      TabOrder = 4
    end
    object edEmisao: TMaskEdit
      Left = 626
      Top = 89
      Width = 136
      Height = 23
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 6
      Text = '  /  /    '
    end
    object cbEstadoCivil: TComboBox
      Left = 800
      Top = 88
      Width = 232
      Height = 23
      TabOrder = 7
      Items.Strings = (
        'Solteiro(a)'
        'Casado(a)'
        'Divorciado(a)'
        'Vi'#250'vo(a)'
        'Separado(a)')
    end
    object edPai: TLabeledEdit
      Left = 551
      Top = 138
      Width = 481
      Height = 23
      EditLabel.AlignWithMargins = True
      EditLabel.Width = 86
      EditLabel.Height = 20
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'Nome do Pai'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentBiDiMode = False
      EditLabel.ParentFont = False
      TabOrder = 9
    end
  end
  object gbLogradouro: TGroupBox [4]
    Left = 0
    Top = 257
    Width = 1012
    Height = 152
    Align = alTop
    Caption = 'Logradouro'
    Color = 6176512
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    object lbUF: TLabel
      Left = 582
      Top = 14
      Width = 17
      Height = 20
      Caption = 'UF'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbCidade: TLabel
      Left = 744
      Top = 14
      Width = 47
      Height = 20
      Caption = 'Cidade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object edEndereco: TLabeledEdit
      Left = 8
      Top = 40
      Width = 553
      Height = 23
      EditLabel.AlignWithMargins = True
      EditLabel.Width = 62
      EditLabel.Height = 20
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'Endere'#231'o'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentBiDiMode = False
      EditLabel.ParentFont = False
      TabOrder = 0
    end
    object cbUF: TComboBox
      Left = 582
      Top = 40
      Width = 136
      Height = 23
      TabOrder = 1
      OnSelect = cbUFSelect
    end
    object cbCidade: TComboBox
      Left = 744
      Top = 40
      Width = 288
      Height = 23
      TabOrder = 2
    end
    object edBairro: TLabeledEdit
      Left = 8
      Top = 93
      Width = 553
      Height = 23
      EditLabel.AlignWithMargins = True
      EditLabel.Width = 40
      EditLabel.Height = 20
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'Bairro'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentBiDiMode = False
      EditLabel.ParentFont = False
      TabOrder = 3
    end
    object edReferecia: TLabeledEdit
      Left = 582
      Top = 92
      Width = 450
      Height = 23
      EditLabel.AlignWithMargins = True
      EditLabel.Width = 133
      EditLabel.Height = 20
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'Ponto de Referencia'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentBiDiMode = False
      EditLabel.ParentFont = False
      TabOrder = 4
    end
  end
  object gbAdicionais: TGroupBox [5]
    Left = 0
    Top = 409
    Width = 1012
    Height = 122
    Align = alClient
    Caption = 'Informa'#231#245'es Adicionais'
    Color = 6176512
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    object lbCartaoSUS: TLabel
      Left = 8
      Top = 16
      Width = 173
      Height = 20
      Caption = 'Cart'#227'o Nacional de Sa'#250'de'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 459
      Top = 14
      Width = 136
      Height = 20
      Caption = 'Telefone Residencial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 714
      Top = 14
      Width = 46
      Height = 20
      Caption = 'Celular'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 67
      Width = 128
      Height = 20
      Caption = 'Telefone Comercial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 241
      Top = 16
      Width = 104
      Height = 20
      Caption = 'Tipo Sanguineo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object edRecado: TLabeledEdit
      Left = 241
      Top = 90
      Width = 416
      Height = 23
      EditLabel.AlignWithMargins = True
      EditLabel.Width = 75
      EditLabel.Height = 20
      EditLabel.BiDiMode = bdLeftToRight
      EditLabel.Caption = 'Falar Com...'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentBiDiMode = False
      EditLabel.ParentFont = False
      TabOrder = 5
    end
    object edCodigoSUS: TMaskEdit
      Left = 8
      Top = 40
      Width = 173
      Height = 23
      EditMask = '000 0000 0000 0000;1;_'
      MaxLength = 18
      TabOrder = 0
      Text = '                  '
    end
    object edTelResi: TMaskEdit
      Left = 459
      Top = 40
      Width = 198
      Height = 23
      EditMask = '(00)0000-0000;1;_'
      MaxLength = 13
      TabOrder = 2
      Text = '(  )    -    '
    end
    object edCelular: TMaskEdit
      Left = 714
      Top = 38
      Width = 194
      Height = 23
      EditMask = '(00)00000-0000;1;_'
      MaxLength = 14
      TabOrder = 3
      Text = '(  )     -    '
    end
    object edTelComer: TMaskEdit
      Left = 8
      Top = 90
      Width = 198
      Height = 23
      EditMask = '(00)0000-0000;1;_'
      MaxLength = 13
      TabOrder = 4
      Text = '(  )    -    '
    end
    object cbSangue: TComboBox
      Left = 241
      Top = 40
      Width = 173
      Height = 23
      TabOrder = 1
      Items.Strings = (
        'A+'
        'A- '
        'B+ '
        'B-'
        'AB+'
        'AB-'
        'O+'
        'O-')
    end
  end
end
