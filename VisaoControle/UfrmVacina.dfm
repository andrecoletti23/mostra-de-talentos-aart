inherited frmVacinas: TfrmVacinas
  Caption = 'Registro de Vacinas'
  ClientHeight = 616
  ClientWidth = 747
  ExplicitWidth = 763
  ExplicitHeight = 655
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 747
    ExplicitWidth = 747
    inherited lbCabecalho: TLabel
      Width = 206
      Caption = 'Aplicac'#227'o de Vacinas - SUS'
      ExplicitWidth = 206
    end
  end
  inherited gbLocalizar: TGroupBox
    Width = 747
    ExplicitWidth = 747
  end
  inherited pnlBotoes: TPanel
    Top = 575
    Width = 747
    ExplicitTop = 575
    ExplicitWidth = 747
    inherited btnLimpar: TBitBtn
      Left = 512
      ExplicitLeft = 512
    end
    inherited btnExcluir: TBitBtn
      Left = 395
      ExplicitLeft = 395
    end
    inherited btnGravar: TBitBtn
      Left = 278
      ExplicitLeft = 278
    end
    inherited btnSair: TBitBtn
      Left = 629
      ExplicitLeft = 629
    end
  end
  object gbVacinacao: TGroupBox [3]
    Left = 0
    Top = 86
    Width = 747
    Height = 227
    Align = alTop
    Caption = 'Vacina'#231#227'o'
    Color = 6176512
    ParentBackground = False
    ParentColor = False
    TabOrder = 3
    object lbVacina: TLabel
      Left = 8
      Top = 59
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
      Top = 58
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
    object edCodSus: TLabeledEdit
      Left = 8
      Top = 36
      Width = 177
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
    object edNome: TLabeledEdit
      Left = 216
      Top = 36
      Width = 520
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
    object cbVacinas: TComboBox
      Left = 8
      Top = 80
      Width = 353
      Height = 21
      TabOrder = 2
      OnExit = cbVacinasExit
    end
    object cbDose: TComboBox
      Left = 385
      Top = 80
      Width = 145
      Height = 21
      TabOrder = 3
    end
    object edDataApli: TLabeledEdit
      Left = 559
      Top = 80
      Width = 177
      Height = 21
      EditLabel.Width = 123
      EditLabel.Height = 20
      EditLabel.Caption = 'Data de Aplica'#231#227'o'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      TabOrder = 4
    end
    object edAplicador: TLabeledEdit
      Left = 8
      Top = 124
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
      Top = 171
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
    object edVencimento: TLabeledEdit
      Left = 216
      Top = 171
      Width = 177
      Height = 21
      EditLabel.Width = 133
      EditLabel.Height = 20
      EditLabel.Caption = 'Vencimento do Lote'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWhite
      EditLabel.Font.Height = -15
      EditLabel.Font.Name = 'Segoe UI'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      TabOrder = 8
    end
    object edUnidadeSaude: TLabeledEdit
      Left = 416
      Top = 171
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
  end
  object gbHistorico: TGroupBox [4]
    Left = 0
    Top = 313
    Width = 747
    Height = 139
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Hist'#243'rico de Vacina'#231#227'o'
    TabOrder = 4
    object dbVacincao: TDBGrid
      Left = 2
      Top = 15
      Width = 743
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
end
