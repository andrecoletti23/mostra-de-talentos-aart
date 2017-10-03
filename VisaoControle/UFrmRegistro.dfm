inherited FrmRegistro: TFrmRegistro
  Caption = 'Resgistro'
  ClientHeight = 367
  ClientWidth = 580
  ExplicitWidth = 596
  ExplicitHeight = 406
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCabecalho: TPanel
    Width = 580
    ExplicitWidth = 120
  end
  inherited gbLocalizar: TGroupBox
    Width = 580
    ExplicitWidth = 120
  end
  inherited pnlBotoes: TPanel
    Top = 326
    Width = 580
    ExplicitTop = -41
    ExplicitWidth = 120
    inherited btnLimpar: TBitBtn
      Left = 345
      ExplicitLeft = -115
    end
    inherited btnExcluir: TBitBtn
      Left = 228
      ExplicitLeft = -232
    end
    inherited btnGravar: TBitBtn
      Left = 111
      ExplicitLeft = -349
    end
    inherited btnSair: TBitBtn
      Left = 462
      ExplicitLeft = 2
    end
  end
  object GroupBox1: TGroupBox [3]
    Left = 0
    Top = 86
    Width = 580
    Height = 240
    Align = alClient
    Caption = 'GroupBox1'
    TabOrder = 3
    ExplicitWidth = 120
    ExplicitHeight = 252
    object lbVacina: TLabel
      Left = 10
      Top = 85
      Width = 31
      Height = 13
      Caption = 'Vacina'
    end
    object lbDose: TLabel
      Left = 210
      Top = 86
      Width = 24
      Height = 13
      Caption = 'Dose'
    end
    object lbData: TLabel
      Left = 368
      Top = 85
      Width = 65
      Height = 13
      Caption = 'Data Retorno'
    end
    object edPaciente: TLabeledEdit
      Left = 152
      Top = 51
      Width = 336
      Height = 21
      EditLabel.Width = 86
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome do Paciente'
      TabOrder = 1
    end
    object cbVacina: TComboBox
      Left = 8
      Top = 102
      Width = 185
      Height = 21
      TabOrder = 2
      Items.Strings = (
        'BCG'
        'Hepatite B'
        'Hepatite B'
        'Vacina Oral contra a P'#243'lio'
        'Vacina Tetravalente '
        'Vacina Oral contra Rotav'#237'rus Humano'
        'Vacina contra Pneumococos'
        'Vacina contra Meningococo C'
        'Vacina Oral contra a P'#243'lio'
        'Vacina Tetravalente'
        'Vacina Oral contra Rotav'#237'rus Humano'
        'Vacina contra Pneumococos'
        'Vacina contra Meningococo C'
        'Vacina contra Hepatite B'
        'Vacina Oral contra a P'#243'lio'
        'Vacina Tetravalente'
        'Vacina contra Pneumococos'
        'Vacina contra febre amarela '
        'Tr'#237'plice Viral'
        'Vacina contra Pneumococos'
        'Vacina Oral contra a P'#243'lio'
        'Vacina Tr'#237'plice Bacteriana'
        'Vacina contra Meningococo C'
        'Tr'#237'plice Viral'
        'Vacina Tr'#237'plice Bacteriana'
        'Dupla Adulto'
        'Hepatite B'
        'Febre Amarela'
        'Tr'#237'plice Viral '
        'Hepatite B'
        'Hepatite B'
        'Dupla Adulto'
        'Dupla Adulto'
        'Dupla Adulto'
        'Febre Amarela'
        'Influenza')
    end
    object cbDose: TComboBox
      Left = 207
      Top = 102
      Width = 145
      Height = 21
      TabOrder = 3
      Items.Strings = (
        'Dose '#250'nica'
        '1'#170' dose'
        '2'#170' dose'
        '1'#170' dose'
        '1'#170' dose'
        '1'#170' dose'
        '1'#170' dose'
        #9'1'#170' dose'
        '2'#170' dose'
        '2'#170' dose'
        '2'#170' dose'
        '2'#170' dose'
        '2'#170' dose'
        '3'#170' dose'
        '3'#170' dose'
        '3'#170' dose'
        '3'#170' dose'
        '1'#170' dose'
        '1'#170' dose'
        'Refor'#231'o'
        'Refor'#231'o'
        '1'#186' Refor'#231'o'
        'Refor'#231'o'
        'Refor'#231'o'
        '2'#186' Refor'#231'o'
        '1'#170' dose'
        '1'#170' dose'
        'Refor'#231'o'
        #218'nica'
        '2'#170' dose'
        '3'#170' dose'
        '2'#170' dose'
        '3'#170' dose'
        'Refor'#231'o'
        'Refor'#231'o'
        'Anual')
    end
    object edData: TMaskEdit
      Left = 368
      Top = 102
      Width = 120
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 4
      Text = '  /  /    '
    end
    object lbTelefone: TMaskEdit
      Left = 10
      Top = 51
      Width = 117
      Height = 21
      EditMask = '!\(99\)0000-0000;1;_'
      MaxLength = 13
      TabOrder = 0
      Text = '(  )    -    '
    end
  end
end
