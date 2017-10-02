inherited frmDeposito: TfrmDeposito
  Caption = 'Deposito Vacina'#231#227'o'
  ClientHeight = 460
  ClientWidth = 749
  ExplicitWidth = 765
  ExplicitHeight = 499
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 749
    ExplicitWidth = 749
    inherited lbCabecalho: TLabel
      ParentColor = False
    end
  end
  inherited gbLocalizar: TGroupBox
    Width = 749
    ExplicitWidth = 749
    inherited edCodigo: TEdit
      Color = clWindow
    end
  end
  inherited pnlBotoes: TPanel
    Top = 419
    Width = 749
    Color = 6176512
    ParentBackground = False
    ExplicitTop = 419
    ExplicitWidth = 749
    inherited btnLimpar: TBitBtn
      Left = 514
      ExplicitLeft = 514
    end
    inherited btnExcluir: TBitBtn
      Left = 397
      ExplicitLeft = 397
    end
    inherited btnGravar: TBitBtn
      Left = 280
      ExplicitLeft = 280
    end
    inherited btnSair: TBitBtn
      Left = 631
      ExplicitLeft = 631
    end
  end
  object gbDeposito: TGroupBox [3]
    Left = 0
    Top = 86
    Width = 749
    Height = 187
    Align = alTop
    Caption = 'Deposito de Vacinas'
    Color = 6176512
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
    object lbVencimento: TLabel
      Left = 235
      Top = 63
      Width = 111
      Height = 20
      Caption = 'Vencimento Lote'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object edNomeVacina: TLabeledEdit
      Left = 8
      Top = 37
      Width = 726
      Height = 21
      EditLabel.Width = 109
      EditLabel.Height = 20
      EditLabel.Caption = 'Nome da Vacina'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      TabOrder = 0
    end
    object edLaboratorio: TLabeledEdit
      Left = 8
      Top = 133
      Width = 726
      Height = 21
      EditLabel.Width = 164
      EditLabel.Height = 20
      EditLabel.Caption = 'Laborat'#243'rio Respons'#225'vel'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      TabOrder = 1
    end
    object edLoteVacina: TLabeledEdit
      Left = 8
      Top = 88
      Width = 169
      Height = 21
      EditLabel.Width = 29
      EditLabel.Height = 20
      EditLabel.Caption = 'Lote'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      TabOrder = 2
    end
    object edQuantidade: TLabeledEdit
      Left = 450
      Top = 88
      Width = 284
      Height = 21
      EditLabel.Width = 133
      EditLabel.Height = 20
      EditLabel.Caption = 'Quantidade do Lote'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      TabOrder = 3
    end
    object edVencimento: TMaskEdit
      Left = 235
      Top = 88
      Width = 168
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object dbDeposito: TDBGrid [4]
    AlignWithMargins = True
    Left = 3
    Top = 276
    Width = 743
    Height = 138
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object tbDeposito: TSQLTable
    Active = True
    MaxBlobSize = -1
    SQLConnection = SQLConnection1
    TableName = 'LOTE_VACINA'
    Left = 208
    Top = 368
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = tbDeposito
    Left = 288
    Top = 368
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 376
    Top = 368
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 448
    Top = 368
  end
  object SQLConnection1: TSQLConnection
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
      
        'Database=localhost:D:\Downloads\Delphi Projetos\PROJETO TCC\most' +
        'ra-de-talentos-aart\DB\DBDEFINITIVOUSUARIOS.GDB'
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
    Connected = True
    Left = 136
    Top = 368
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 496
    Top = 368
  end
end
