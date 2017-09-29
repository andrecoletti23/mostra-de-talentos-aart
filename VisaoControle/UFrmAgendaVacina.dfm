inherited FrmAgendaVacina: TFrmAgendaVacina
  Caption = 'Agendamento de Vacinas - SUS'
  ClientHeight = 262
  ClientWidth = 819
  ExplicitWidth = 835
  ExplicitHeight = 301
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 819
    ExplicitWidth = 819
  end
  inherited gbLocalizar: TGroupBox
    Width = 819
    ExplicitWidth = 819
  end
  inherited pnlBotoes: TPanel
    Top = 221
    Width = 819
    ExplicitTop = 221
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
    Height = 135
    Align = alClient
    Caption = 'Agendamento de Vacinas'
    TabOrder = 3
    object lbData: TLabel
      Left = 8
      Top = 69
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object lbDose: TLabel
      Left = 511
      Top = 69
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
      Width = 153
      Height = 21
      EditLabel.Width = 55
      EditLabel.Height = 13
      EditLabel.Caption = 'Codigo SUS'
      TabOrder = 0
    end
    object edNomeRetorno: TLabeledEdit
      Left = 184
      Top = 40
      Width = 433
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
      Width = 353
      Height = 21
      TabOrder = 3
    end
    object cbDoseRetorno: TComboBox
      Left = 511
      Top = 88
      Width = 106
      Height = 21
      TabOrder = 4
    end
  end
end
