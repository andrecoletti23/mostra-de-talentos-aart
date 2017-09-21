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
      Width = 219
      Caption = 'Aplicac'#227'o de Vacinas - SUS'
      ExplicitWidth = 219
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
      Width = 177
      Height = 21
      EditLabel.Width = 55
      EditLabel.Height = 13
      EditLabel.Caption = 'Codigo SUS'
      TabOrder = 0
    end
    object edNome: TLabeledEdit
      Left = 216
      Top = 36
      Width = 520
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
      TabOrder = 1
    end
    object cbVacinas: TComboBox
      Left = 8
      Top = 84
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
      EditLabel.Width = 86
      EditLabel.Height = 13
      EditLabel.Caption = 'Data de Aplica'#231#227'o'
      TabOrder = 4
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
    object edVencimento: TLabeledEdit
      Left = 216
      Top = 164
      Width = 177
      Height = 21
      EditLabel.Width = 94
      EditLabel.Height = 13
      EditLabel.Caption = 'Vencimento do Lote'
      TabOrder = 8
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
    ExplicitTop = 433
    object dbVacincao: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 737
      Height = 116
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
