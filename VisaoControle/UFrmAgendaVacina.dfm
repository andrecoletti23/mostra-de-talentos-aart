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
      Left = 511
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
      Top = 70
      Width = 43
      Height = 20
      Caption = 'Vacina'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object edSusRetorno: TLabeledEdit
      Left = 8
      Top = 40
      Width = 153
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
      Left = 184
      Top = 40
      Width = 433
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
