inherited FrmAgendaVacina: TFrmAgendaVacina
  Caption = 'Agendamento de Vacinas - SUS'
  ExplicitWidth = 651
  ExplicitHeight = 418
  PixelsPerInch = 96
  TextHeight = 13
  object gbProximaVacina: TGroupBox [3]
    Left = 0
    Top = 86
    Width = 635
    Height = 252
    Align = alClient
    Caption = 'Agendamento de Vacinas'
    TabOrder = 3
    ExplicitLeft = 24
    ExplicitTop = 120
    ExplicitWidth = 185
    ExplicitHeight = 105
    object edCodigoSUS: TLabeledEdit
      Left = 8
      Top = 40
      Width = 121
      Height = 21
      EditLabel.Width = 55
      EditLabel.Height = 13
      EditLabel.Caption = 'Codigo SUS'
      TabOrder = 0
    end
    object edNome: TLabeledEdit
      Left = 144
      Top = 40
      Width = 385
      Height = 21
      EditLabel.Width = 27
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome'
      TabOrder = 1
    end
  end
end
