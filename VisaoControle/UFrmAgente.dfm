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
      EditLabel.Width = 25
      EditLabel.Height = 13
      EditLabel.Caption = 'Login'
      MaxLength = 20
      TabOrder = 0
    end
    object edSenha: TLabeledEdit
      Left = 272
      Top = 32
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
      Left = 525
      Top = 32
      Width = 188
      Height = 21
      EditLabel.Width = 108
      EditLabel.Height = 13
      EditLabel.Caption = 'Confirma'#231#227'o de Senha'
      MaxLength = 12
      PasswordChar = '*'
      TabOrder = 2
    end
    object edEmail: TLabeledEdit
      Left = 16
      Top = 78
      Width = 345
      Height = 21
      EditLabel.Width = 28
      EditLabel.Height = 13
      EditLabel.Caption = 'E-Mail'
      MaxLength = 60
      TabOrder = 3
    end
  end
  object GroupBox1: TGroupBox [4]
    Left = 0
    Top = 217
    Width = 950
    Height = 144
    Align = alTop
    Caption = 'Informa'#231#245'es do Agente'
    Color = 6176512
    ParentBackground = False
    ParentColor = False
    TabOrder = 4
    object Label1: TLabel
      Left = 421
      Top = 23
      Width = 96
      Height = 13
      Caption = 'Data de Nascimento'
    end
    object Label2: TLabel
      Left = 495
      Top = 70
      Width = 28
      Height = 13
      Caption = 'Turno'
    end
    object edDataNasc: TMaskEdit
      Left = 421
      Top = 40
      Width = 103
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
    object edContato: TLabeledEdit
      Left = 539
      Top = 40
      Width = 174
      Height = 21
      EditLabel.Width = 39
      EditLabel.Height = 13
      EditLabel.Caption = 'Contato'
      MaxLength = 15
      TabOrder = 1
    end
    object edCoren: TLabeledEdit
      Left = 16
      Top = 87
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
      Width = 385
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
      MaxLength = 60
      TabOrder = 3
    end
    object edEspec: TLabeledEdit
      Left = 201
      Top = 87
      Width = 264
      Height = 21
      EditLabel.Width = 64
      EditLabel.Height = 13
      EditLabel.Caption = 'Especifica'#231#227'o'
      MaxLength = 60
      TabOrder = 4
    end
    object edTurno: TComboBox
      Left = 495
      Top = 87
      Width = 218
      Height = 21
      TabOrder = 5
      Items.Strings = (
        'Matutino'
        'Vespertino'
        'Noturno')
    end
  end
  object gbInformacoesAdicionais: TGroupBox [5]
    Left = 0
    Top = 367
    Width = 950
    Height = 150
    Align = alBottom
    Caption = 'Informa'#231#245'es Adicionais'
    Color = 6176512
    ParentBackground = False
    ParentColor = False
    TabOrder = 5
    object lbAviso1: TLabel
      Left = 124
      Top = 42
      Width = 683
      Height = 21
      Caption = 
        'Recomendamos que n'#227'o compartilhe esses dados com ningu'#233'm. Seu us' +
        'o '#233' pessoal e intransfer'#237'vel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LbAviso2: TLabel
      Left = 176
      Top = 123
      Width = 560
      Height = 21
      Caption = 
        'Qualquer d'#250'vida entrar em contato com o Administrador : admin@ad' +
        'min.com.br'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 127
      Top = 69
      Width = 671
      Height = 21
      Caption = 
        'Use uma senha forte, contendo letras, n'#250'meros e caracteres espec' +
        'ias. Seguran'#231'a nunca '#233' demais!'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 98
      Top = 15
      Width = 751
      Height = 21
      Caption = 
        'Antes de registrar um cadastro novo, consulte se o mesmo j'#225' n'#227'o ' +
        'possue de alguma outra unidade de sa'#250'de.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
end
