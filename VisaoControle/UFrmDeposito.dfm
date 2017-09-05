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
  end
  inherited gbLocalizar: TGroupBox
    Width = 749
  end
  inherited pnlBotoes: TPanel
    Top = 419
    Width = 749
    inherited btnLimpar: TBitBtn
      Left = 514
    end
    inherited btnExcluir: TBitBtn
      Left = 397
    end
    inherited btnGravar: TBitBtn
      Left = 280
    end
    inherited btnSair: TBitBtn
      Left = 631
    end
  end
  object gbDeposito: TGroupBox [3]
    Left = 0
    Top = 86
    Width = 749
    Height = 187
    Align = alTop
    Caption = 'Deposito de Vacinas'
    TabOrder = 3
    ExplicitWidth = 776
    object lbVencimento: TLabel
      Left = 235
      Top = 71
      Width = 79
      Height = 13
      Caption = 'Vencimento Lote'
    end
    object edNomeVacina: TLabeledEdit
      Left = 8
      Top = 37
      Width = 726
      Height = 21
      EditLabel.Width = 76
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome da Vacina'
      TabOrder = 0
    end
    object edLaboratorio: TLabeledEdit
      Left = 8
      Top = 133
      Width = 726
      Height = 21
      EditLabel.Width = 119
      EditLabel.Height = 13
      EditLabel.Caption = 'Laborat'#243'rio Respons'#225'vel'
      TabOrder = 1
    end
    object edLoteVacina: TLabeledEdit
      Left = 8
      Top = 88
      Width = 169
      Height = 21
      EditLabel.Width = 21
      EditLabel.Height = 13
      EditLabel.Caption = 'Lote'
      TabOrder = 2
    end
    object edQuantidade: TLabeledEdit
      Left = 450
      Top = 88
      Width = 284
      Height = 21
      EditLabel.Width = 95
      EditLabel.Height = 13
      EditLabel.Caption = 'Quantidade do Lote'
      TabOrder = 3
    end
    object edVencimento: TMaskEdit
      Left = 235
      Top = 88
      Width = 168
      Height = 21
      TabOrder = 4
    end
  end
  object dbDeposito: TDBGrid [4]
    Left = 0
    Top = 273
    Width = 749
    Height = 144
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
