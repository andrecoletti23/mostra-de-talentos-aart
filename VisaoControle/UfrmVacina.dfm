inherited frmVacinas: TfrmVacinas
  Caption = 'Registro de Vacinas'
  ClientHeight = 616
  ClientWidth = 1053
  ExplicitWidth = 1069
  ExplicitHeight = 655
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 1053
    ExplicitWidth = 1053
    inherited lbCabecalho: TLabel
      Width = 219
      Caption = 'Aplicac'#227'o de Vacinas - SUS'
      ExplicitWidth = 219
    end
  end
  inherited gbLocalizar: TGroupBox
    Width = 1053
    ExplicitWidth = 1053
  end
  inherited pnlBotoes: TPanel
    Top = 575
    Width = 1053
    ExplicitTop = 575
    ExplicitWidth = 1053
    inherited btnLimpar: TBitBtn
      Left = 818
      ExplicitLeft = 818
    end
    inherited btnExcluir: TBitBtn
      Left = 701
      ExplicitLeft = 701
    end
    inherited btnGravar: TBitBtn
      Left = 584
      ExplicitLeft = 584
    end
    inherited btnSair: TBitBtn
      Left = 935
      ExplicitLeft = 935
    end
  end
  object gbVacinacao: TGroupBox [3]
    Left = 0
    Top = 86
    Width = 1053
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
      TabOrder = 1
    end
    object cbDose: TComboBox
      Left = 385
      Top = 80
      Width = 145
      Height = 21
      TabOrder = 2
    end
    object edDataApli: TLabeledEdit
      Left = 559
      Top = 80
      Width = 177
      Height = 21
      EditLabel.Width = 86
      EditLabel.Height = 13
      EditLabel.Caption = 'Data de Aplica'#231#227'o'
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
      TabOrder = 4
    end
    object edCorenApli: TLabeledEdit
      Left = 559
      Top = 124
      Width = 177
      Height = 21
      EditLabel.Width = 76
      EditLabel.Height = 13
      EditLabel.Caption = 'Coren Aplicador'
      TabOrder = 5
    end
    object edLoteVacina: TLabeledEdit
      Left = 8
      Top = 164
      Width = 177
      Height = 21
      EditLabel.Width = 70
      EditLabel.Height = 13
      EditLabel.Caption = 'Lote da Vacina'
      TabOrder = 6
    end
    object edVencimento: TLabeledEdit
      Left = 216
      Top = 164
      Width = 177
      Height = 21
      EditLabel.Width = 94
      EditLabel.Height = 13
      EditLabel.Caption = 'Vencimento do Lote'
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
      TabOrder = 8
    end
    object btnLocalizarCidade: TButton
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
      TabOrder = 9
      TabStop = False
      OnClick = btnLocalizarCidadeClick
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
  end
  object gbHistorico: TGroupBox [4]
    Left = 0
    Top = 313
    Width = 1053
    Height = 139
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Hist'#243'rico de Vacina'#231#227'o'
    TabOrder = 4
    object dbVacincao: TDBGrid
      Left = 2
      Top = 15
      Width = 1049
      Height = 122
      Align = alClient
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
end
