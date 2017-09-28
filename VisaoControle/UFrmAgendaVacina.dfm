inherited FrmAgendaVacina: TFrmAgendaVacina
  Caption = 'Agendamento de Vacinas - SUS'
  ClientHeight = 543
  ClientWidth = 819
  ExplicitWidth = 835
  ExplicitHeight = 582
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 819
    ExplicitWidth = 819
  end
  inherited gbLocalizar: TGroupBox
    Width = 819
    ExplicitWidth = 819
    inherited lbCodigo: TLabel
      Top = 23
      ExplicitTop = 23
    end
  end
  inherited pnlBotoes: TPanel
    Top = 502
    Width = 819
    ExplicitTop = 502
    ExplicitWidth = 819
    inherited btnLimpar: TBitBtn
      Left = 584
      ExplicitLeft = 584
    end
    inherited btnExcluir: TBitBtn
      Left = 467
      ExplicitLeft = 467
    end
    inherited btnGravar: TBitBtn
      Left = 350
      OnClick = nil
      ExplicitLeft = 350
    end
    inherited btnSair: TBitBtn
      Left = 701
      ExplicitLeft = 701
    end
  end
  object gbProximaVacina: TGroupBox [3]
    Left = 0
    Top = 86
    Width = 819
    Height = 416
    Align = alClient
    Caption = 'Agendamento de Vacinas'
    TabOrder = 3
    DesignSize = (
      819
      416)
    object lbData: TLabel
      Left = 8
      Top = 69
      Width = 32
      Height = 20
      Caption = 'Data'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbDose: TLabel
      Left = 422
      Top = 69
      Width = 34
      Height = 20
      Caption = 'Dose'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbVacina: TLabel
      Left = 148
      Top = 69
      Width = 42
      Height = 18
      Caption = 'Vacina'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edSusRetorno: TLabeledEdit
      Left = 8
      Top = 40
      Width = 121
      Height = 21
      EditLabel.Width = 79
      EditLabel.Height = 20
      EditLabel.Caption = 'Codigo SUS'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      TabOrder = 0
    end
    object edNomeRetorno: TLabeledEdit
      Left = 144
      Top = 40
      Width = 385
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
      TabOrder = 1
    end
    object edDataRetorno: TMaskEdit
      Left = 8
      Top = 88
      Width = 120
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
    end
    object cbVacinaRetorno: TComboBox
      Left = 144
      Top = 88
      Width = 273
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object cbDoseRetorno: TComboBox
      Left = 423
      Top = 88
      Width = 106
      Height = 21
      TabOrder = 4
    end
    object dbgProxVacina: TDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 136
      Width = 765
      Height = 257
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = DataSourceagenda
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = dbgProxVacinaDrawColumnCell
    end
  end
  object SQLConnAgenda: TSQLConnection
    DriverName = 'Firebird'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxfb.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver150.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=15.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver150.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=15.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'VendorLib=fbclient.DLL'
      
        'Database=localhost:T:\Documentos\GitHub\mostra-de-talentos-aart\' +
        'DB\DBDEFINITIVOUSUARIOS.GDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    VendorLib = 'fbclient.DLL'
    Left = 64
    Top = 408
  end
  object tbVacinaNova: TSQLTable
    MaxBlobSize = -1
    SQLConnection = SQLConnAgenda
    TableName = 'VACINA_NOVA'
    Left = 160
    Top = 376
  end
  object DataSetProviderAgenda: TDataSetProvider
    DataSet = tbVacinaNova
    Left = 256
    Top = 416
  end
  object ClientDataSetAgenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProviderAgenda'
    Left = 368
    Top = 360
  end
  object DataSourceagenda: TDataSource
    DataSet = ClientDataSetAgenda
    Left = 440
    Top = 416
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 504
    Top = 384
  end
end
