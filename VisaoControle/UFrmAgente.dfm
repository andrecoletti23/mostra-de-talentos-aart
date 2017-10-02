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
    Font.Charset = ANSI_CHARSET
<<<<<<< HEAD
    Font.Color = clWhite
=======
    Font.Color = clBlack
>>>>>>> Final
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    object edLogin: TLabeledEdit
      Left = 16
      Top = 38
      Width = 225
      Height = 23
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
      Left = 272
      Top = 38
      Width = 225
      Height = 23
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
      Left = 525
      Top = 38
      Width = 188
      Height = 23
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
    object edEmail: TLabeledEdit
      Left = 16
      Top = 87
      Width = 345
      Height = 23
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
      TabOrder = 3
    end
    object edUnidSau: TLabeledEdit
      Left = 384
      Top = 87
      Width = 329
      Height = 23
      EditLabel.Width = 122
      EditLabel.Height = 20
      EditLabel.Caption = 'Unidade de Sa'#250'de'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      MaxLength = 60
      TabOrder = 4
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
    Font.Charset = ANSI_CHARSET
<<<<<<< HEAD
    Font.Color = clHighlightText
=======
    Font.Color = clBlack
>>>>>>> Final
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    object Label1: TLabel
      Left = 421
<<<<<<< HEAD
      Top = 23
=======
      Top = 17
>>>>>>> Final
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
      Left = 495
      Top = 65
      Width = 38
      Height = 20
      Caption = 'Turno'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
<<<<<<< HEAD
=======
    end
    object lbTel: TLabel
      Left = 577
      Top = 17
      Width = 53
      Height = 20
      Caption = 'Contato'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
>>>>>>> Final
    end
    object edDataNasc: TMaskEdit
      Left = 421
      Top = 40
<<<<<<< HEAD
      Width = 103
=======
      Width = 136
>>>>>>> Final
      Height = 23
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
    end
<<<<<<< HEAD
    object edContato: TLabeledEdit
      Left = 571
      Top = 40
      Width = 174
      Height = 23
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
=======
>>>>>>> Final
    object edCoren: TLabeledEdit
      Left = 16
      Top = 87
      Width = 161
      Height = 23
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
      TabOrder = 1
    end
    object edNome: TLabeledEdit
      Left = 16
      Top = 40
      Width = 385
      Height = 23
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
      TabOrder = 2
    end
    object edEspec: TLabeledEdit
      Left = 201
      Top = 87
      Width = 264
      Height = 23
      EditLabel.Width = 90
      EditLabel.Height = 20
      EditLabel.Caption = 'Especifica'#231#227'o'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      MaxLength = 60
      TabOrder = 3
    end
    object edTurno: TComboBox
      Left = 495
      Top = 87
      Width = 218
      Height = 23
<<<<<<< HEAD
      TabOrder = 5
=======
      TabOrder = 4
>>>>>>> Final
      Items.Strings = (
        'Matutino'
        'Vespertino'
        'Noturno')
    end
    object edContato: TMaskEdit
      Left = 577
      Top = 40
      Width = 133
      Height = 23
      EditMask = '!\(99\)0000-0000;1;_'
      MaxLength = 13
      TabOrder = 5
      Text = '(  )    -    '
    end
  end
  object gbInformacoesAdicionais: TGroupBox [5]
    Left = 0
    Top = 367
    Width = 950
    Height = 150
    Align = alBottom
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Informa'#231#245'es Adicionais'
    Color = 6176512
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    object lbAviso1: TLabel
      Left = 124
      Top = 42
      Width = 652
      Height = 20
      Caption = 
        'Recomendamos que n'#227'o compartilhe esses dados com ningu'#233'm. Seu us' +
        'o '#233' pessoal e intransfer'#237'vel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object LbAviso2: TLabel
      Left = 176
      Top = 123
      Width = 536
      Height = 20
      Caption = 
        'Qualquer d'#250'vida entrar em contato com o Administrador : admin@ad' +
        'min.com.br'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 127
      Top = 69
      Width = 639
      Height = 20
      Caption = 
        'Use uma senha forte, contendo letras, n'#250'meros e caracteres espec' +
        'ias. Seguran'#231'a nunca '#233' demais!'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 98
      Top = 15
      Width = 720
      Height = 20
      Caption = 
        'Antes de registrar um cadastro novo, consulte se o mesmo j'#225' n'#227'o ' +
        'possue de alguma outra unidade de sa'#250'de.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
  end
end
