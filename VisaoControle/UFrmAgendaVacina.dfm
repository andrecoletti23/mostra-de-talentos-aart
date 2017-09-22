inherited FrmAgendaVacina: TFrmAgendaVacina
  Caption = 'Agendamento de Vacinas - SUS'
  ClientHeight = 406
  ClientWidth = 575
  ExplicitTop = 0
  ExplicitWidth = 591
  ExplicitHeight = 445
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 575
    ExplicitWidth = 120
  end
  inherited gbLocalizar: TGroupBox
    Width = 575
    ExplicitWidth = 120
  end
  inherited pnlBotoes: TPanel
    Top = 365
    Width = 575
    ExplicitTop = -41
    ExplicitWidth = 120
    inherited btnLimpar: TBitBtn
      Left = 340
      ExplicitLeft = -115
    end
    inherited btnExcluir: TBitBtn
      Left = 223
      ExplicitLeft = -232
    end
    inherited btnGravar: TBitBtn
      Left = 106
      OnClick = nil
      ExplicitLeft = -349
    end
    inherited btnSair: TBitBtn
      Left = 457
      ExplicitLeft = 2
    end
  end
  object gbProximaVacina: TGroupBox [3]
    Left = 0
    Top = 86
    Width = 575
    Height = 279
    Align = alClient
    Caption = 'Agendamento de Vacinas'
    TabOrder = 3
    ExplicitWidth = 120
    ExplicitHeight = 252
    object lbData: TLabel
      Left = 8
      Top = 69
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object lbDose: TLabel
      Left = 423
      Top = 71
      Width = 24
      Height = 13
      Caption = 'Dose'
    end
    object lbVacina: TLabel
      Left = 148
      Top = 70
      Width = 31
      Height = 13
      Caption = 'Vacina'
    end
    object edSusRetorno: TLabeledEdit
      Left = 8
      Top = 40
      Width = 121
      Height = 21
      EditLabel.Width = 55
      EditLabel.Height = 13
      EditLabel.Caption = 'Codigo SUS'
      TabOrder = 0
    end
    object edNomeRetorno: TLabeledEdit
      Left = 144
      Top = 40
      Width = 385
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
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
      Left = 8
      Top = 136
      Width = 521
      Height = 120
      TabOrder = 5
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end
