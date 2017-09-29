inherited frmVacinas: TfrmVacinas
  Caption = 'Registro de Vacinas'
  ClientHeight = 616
  ClientWidth = 1012
  ExplicitWidth = 1028
  ExplicitHeight = 655
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 1012
    ExplicitWidth = 1012
    inherited lbCabecalho: TLabel
      Width = 219
      Caption = 'Aplicac'#227'o de Vacinas - SUS'
      ExplicitWidth = 219
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
      Top = 65
      Width = 36
      Height = 13
      Caption = 'Vacinas'
    end
    object lbDose: TLabel
      Left = 388
      Top = 64
      Width = 24
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Dose'
      ParentBiDiMode = False
    end
    object Label1: TLabel
      Left = 560
      Top = 64
      Width = 71
      Height = 13
      Caption = 'Data Aplica'#231#227'o'
      Color = 6176512
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 227
      Top = 149
      Width = 79
      Height = 13
      Caption = 'Vencimento Lote'
      Color = 6176512
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object edCodSus: TLabeledEdit
      Left = 8
      Top = 36
      Width = 57
      Height = 21
      EditLabel.Width = 55
      EditLabel.Height = 13
      EditLabel.Caption = 'ID Paciente'
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
      Top = 124
      Width = 520
      Height = 21
      EditLabel.Width = 44
      EditLabel.Height = 13
      EditLabel.Caption = 'Aplicador'
      TabOrder = 5
    end
    object edCorenApli: TLabeledEdit
      Left = 559
      Top = 124
      Width = 177
      Height = 21
      EditLabel.Width = 76
      EditLabel.Height = 13
      EditLabel.Caption = 'Coren Aplicador'
      TabOrder = 6
    end
    object edLoteVacina: TLabeledEdit
      Left = 8
      Top = 164
      Width = 177
      Height = 21
      EditLabel.Width = 70
      EditLabel.Height = 13
      EditLabel.Caption = 'Lote da Vacina'
      TabOrder = 7
    end
    object edUnidadeSaude: TLabeledEdit
      Left = 416
      Top = 164
      Width = 320
      Height = 21
      EditLabel.Width = 130
      EditLabel.Height = 13
      EditLabel.Caption = 'Unidade de Sa'#250'de Aplicada'
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
      Top = 164
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
      
        'Database=localhost:T:\Documentos\GitHub\mostra-de-talentos-aart\' +
        'DB\DBDEFINITIVOUSUARIOS.GDB'
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
    Active = True
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
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetVacinaNova'
    Left = 352
    Top = 400
  end
end
