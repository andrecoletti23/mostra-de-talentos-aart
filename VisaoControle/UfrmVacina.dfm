inherited frmVacinas: TfrmVacinas
  Caption = 'Registro de Vacinas'
  ClientHeight = 616
  ClientWidth = 1012
  ExplicitTop = -210
  ExplicitWidth = 1028
  ExplicitHeight = 655
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 1012
    ExplicitWidth = 1012
    inherited lbCabecalho: TLabel
      Width = 206
      Height = 23
      Caption = 'Aplicac'#227'o de Vacinas - SUS'
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ExplicitWidth = 206
      ExplicitHeight = 23
    end
  end
  inherited gbLocalizar: TGroupBox
    Width = 1012
    ExplicitWidth = 1012
  end
  inherited pnlBotoes: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 572
    Width = 1006
    Color = 6176512
    ParentBackground = False
    ExplicitLeft = 3
    ExplicitTop = 572
    ExplicitWidth = 1006
    inherited btnLimpar: TBitBtn
      Left = 762
      ExplicitLeft = 762
    end
    inherited btnExcluir: TBitBtn
      Left = 642
      ExplicitLeft = 642
    end
    inherited btnGravar: TBitBtn
      Left = 523
      OnExit = btnGravarExit
      ExplicitLeft = 523
    end
    inherited btnSair: TBitBtn
      Left = 883
      ExplicitLeft = 883
    end
  end
  object gbVacinacao: TGroupBox [3]
    Left = 0
    Top = 86
    Width = 1012
    Height = 227
    Align = alTop
    Caption = 'Vacina'#231#227'o'
    Color = 6176512
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
    object lbVacina: TLabel
      Left = 8
      Top = 60
      Width = 49
      Height = 20
      Caption = 'Vacinas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbDose: TLabel
      Left = 385
      Top = 57
      Width = 34
      Height = 20
      BiDiMode = bdLeftToRight
      Caption = 'Dose'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 558
      Top = 60
      Width = 102
      Height = 20
      Caption = 'Data Aplica'#231#227'o'
      Color = 6176512
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 227
      Top = 149
      Width = 111
      Height = 20
      Caption = 'Vencimento Lote'
      Color = 6176512
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
<<<<<<< HEAD
=======
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbCod: TLabel
      Left = 107
      Top = 13
      Width = 115
      Height = 20
      Caption = 'Codigo de Sa'#250'de'
      Color = 6176512
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbNomepac: TLabel
      Left = 278
      Top = 13
      Width = 124
      Height = 20
      Caption = 'Nome do paciente'
      Color = 6176512
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
>>>>>>> Final
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object edCodSus: TLabeledEdit
      Left = 8
      Top = 36
      Width = 57
      Height = 21
      EditLabel.Width = 74
      EditLabel.Height = 20
      EditLabel.Caption = 'ID Paciente'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      TabOrder = 0
      OnExit = edCodSusExit
    end
    object cbVacinas: TComboBox
      Left = 8
      Top = 84
      Width = 353
      Height = 21
      TabOrder = 2
    end
    object cbDose: TComboBox
      Left = 385
      Top = 80
      Width = 145
      Height = 21
      TabOrder = 3
    end
    object edAplicador: TLabeledEdit
      Left = 8
      Top = 127
      Width = 520
      Height = 21
      EditLabel.Width = 65
      EditLabel.Height = 20
      EditLabel.Caption = 'Aplicador'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      TabOrder = 5
    end
    object edCorenApli: TLabeledEdit
      Left = 559
      Top = 124
      Width = 177
      Height = 21
      EditLabel.Width = 108
      EditLabel.Height = 20
      EditLabel.Caption = 'Coren Aplicador'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      TabOrder = 6
    end
    object edLoteVacina: TLabeledEdit
      Left = 8
      Top = 172
      Width = 177
      Height = 21
      EditLabel.Width = 97
      EditLabel.Height = 20
      EditLabel.Caption = 'Lote da Vacina'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      TabOrder = 7
    end
    object edUnidadeSaude: TLabeledEdit
      Left = 416
      Top = 172
      Width = 320
      Height = 21
      EditLabel.Width = 185
      EditLabel.Height = 20
      EditLabel.Caption = 'Unidade de Sa'#250'de Aplicada'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      TabOrder = 9
    end
    object btnLocalizarPaciente: TButton
      Left = 71
      Top = 37
      Width = 30
      Height = 19
      Cursor = crHandPoint
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = btnLocalizarPacienteClick
    end
    object stCodigoSUS: TStaticText
      Left = 110
      Top = 37
      Width = 147
      Height = 19
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'stCodigoSUS'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 10
      Transparent = False
    end
    object edDataApli: TMaskEdit
      Left = 559
      Top = 80
      Width = 176
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 4
      Text = '  /  /    '
    end
    object edVencimento: TMaskEdit
      Left = 227
      Top = 172
      Width = 176
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 8
      Text = '  /  /    '
    end
  end
  object gbHistorico: TGroupBox [4]
    Left = 0
    Top = 313
    Width = 1012
    Height = 256
    Align = alClient
    Caption = 'Hist'#243'rico de Vacina'#231#227'o'
    TabOrder = 4
    object dbVacinacao: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 1002
      Height = 233
      Align = alClient
      DataSource = DataSourceVacina
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object stNome: TStaticText [5]
    Left = 278
    Top = 123
    Width = 458
    Height = 19
    AutoSize = False
    BorderStyle = sbsSingle
    Caption = 'stNome'
    Color = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    Transparent = False
  end
  object SQLConVacina: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxfb.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      
        'Database=localhost:D:\Downloads\Delphi Projetos\PROJETO TCC\most' +
        'ra-de-talentos-aart\DB\DBDEFINITIVOUSUARIOS.GDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    VendorLib = 'fbclient.DLL'
    Connected = True
    Left = 32
    Top = 392
  end
  object tbVacinaNova: TSQLTable
    MasterSource = DataSourceVacina
    MaxBlobSize = -1
    SQLConnection = SQLConVacina
    TableName = 'VACINA_NOVA'
    Left = 136
    Top = 400
  end
  object DataSourceVacina: TDataSource
    DataSet = ClientDataSetVacina
    Left = 472
    Top = 392
  end
  object DataSetVacinaNova: TDataSetProvider
    DataSet = tbVacinaNova
    Left = 232
    Top = 400
  end
  object ClientDataSetVacina: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetVacinaNova'
    Left = 352
    Top = 400
  end
end
