inherited frmCadPaciente: TfrmCadPaciente
  Caption = 'Cadastro de Pacientes - SUS'
  ClientHeight = 620
  ClientWidth = 1150
  ExplicitWidth = 1168
  ExplicitHeight = 667
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 216
    Top = 184
    Width = 37
    Height = 23
    Caption = 'Sexo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 552
    Top = 184
    Width = 30
    Height = 23
    Caption = 'CPF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 24
    Top = 184
    Width = 156
    Height = 23
    Caption = 'Data de Nascimento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited pnlCabecalho: TPanel
    Width = 1150
    ExplicitWidth = 1150
    inherited lbCabecalho: TLabel
      Width = 206
      Caption = 'Cadastro Pacientes - SUS'
      ExplicitWidth = 206
    end
  end
  inherited gbLocalizar: TGroupBox
    Width = 1150
    ExplicitWidth = 1150
    inherited btnLocalizar: TButton
      Width = 26
      ExplicitWidth = 26
    end
  end
  inherited pnlBotoes: TPanel
    Top = 579
    Width = 1150
    ExplicitTop = 579
    ExplicitWidth = 1150
    inherited btnLimpar: TBitBtn
      Left = 915
      ExplicitLeft = 915
    end
    inherited btnExcluir: TBitBtn
      Left = 798
      ExplicitLeft = 798
    end
    inherited btnGravar: TBitBtn
      Left = 681
      ExplicitLeft = 681
    end
    inherited btnSair: TBitBtn
      Left = 1032
      ExplicitLeft = 1032
    end
  end
  object gbCadastro: TGroupBox [6]
    Left = 0
    Top = 86
    Width = 1150
    Height = 493
    Align = alClient
    Caption = 'Cadastro Pacientes'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI Black'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    ExplicitLeft = 24
    ExplicitTop = 80
    object edCodSus: TLabeledEdit
      Left = 19
      Top = 56
      Width = 174
      Height = 31
      EditLabel.Width = 98
      EditLabel.Height = 23
      EditLabel.Caption = 'Codigo SUS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object edNome: TLabeledEdit
      Left = 208
      Top = 56
      Width = 921
      Height = 31
      EditLabel.Width = 51
      EditLabel.Height = 23
      EditLabel.Caption = 'Nome'
      TabOrder = 1
    end
    object edEndereco: TLabeledEdit
      Left = 423
      Top = 176
      Width = 702
      Height = 31
      EditLabel.Width = 77
      EditLabel.Height = 23
      EditLabel.Caption = 'Endere'#231'o'
      TabOrder = 5
    end
    object edRG: TLabeledEdit
      Left = 718
      Top = 120
      Width = 214
      Height = 31
      EditLabel.Width = 24
      EditLabel.Height = 23
      EditLabel.Caption = 'RG'
      TabOrder = 2
    end
    object edEstado: TLabeledEdit
      Left = 19
      Top = 176
      Width = 102
      Height = 31
      EditLabel.Width = 56
      EditLabel.Height = 23
      EditLabel.Caption = 'Estado'
      TabOrder = 3
    end
    object edFixo: TLabeledEdit
      Left = 19
      Top = 242
      Width = 494
      Height = 31
      EditLabel.Width = 175
      EditLabel.Height = 23
      EditLabel.Caption = 'Telefone Residencial'
      TabOrder = 6
    end
    object edCel: TLabeledEdit
      Left = 536
      Top = 242
      Width = 582
      Height = 31
      EditLabel.Width = 59
      EditLabel.Height = 23
      EditLabel.Caption = 'Celular'
      TabOrder = 7
    end
    object edCidade: TLabeledEdit
      Left = 127
      Top = 176
      Width = 290
      Height = 31
      EditLabel.Width = 58
      EditLabel.Height = 23
      EditLabel.Caption = 'Cidade'
      TabOrder = 4
    end
    object edPai: TLabeledEdit
      Left = 19
      Top = 370
      Width = 1110
      Height = 31
      EditLabel.Width = 109
      EditLabel.Height = 23
      EditLabel.Caption = 'Nome do Pai'
      TabOrder = 9
    end
    object edMae: TLabeledEdit
      Left = 19
      Top = 306
      Width = 1110
      Height = 31
      EditLabel.Width = 119
      EditLabel.Height = 23
      EditLabel.Caption = 'Nome da M'#227'e'
      TabOrder = 8
    end
    object edSexo: TComboBox
      Left = 219
      Top = 120
      Width = 294
      Height = 31
      TabOrder = 10
      Text = 'edSexo'
      Items.Strings = (
        ''
        'Masculino'
        'Feminino')
    end
    object edCPF: TMaskEdit
      Left = 536
      Top = 120
      Width = 158
      Height = 31
      EditMask = '000.000.000-00;1;_'
      MaxLength = 14
      TabOrder = 11
      Text = '   .   .   -  '
    end
    object edNascimento: TMaskEdit
      Left = 19
      Top = 120
      Width = 190
      Height = 31
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 12
      Text = '  /  /    '
    end
  end
end
