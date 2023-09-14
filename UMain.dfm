object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Consulta CNPJ.ws'
  ClientHeight = 219
  ClientWidth = 483
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtCNPJ: TLabeledEdit
    Left = 16
    Top = 24
    Width = 153
    Height = 21
    EditLabel.Width = 25
    EditLabel.Height = 13
    EditLabel.Caption = 'CNPJ'
    MaxLength = 14
    NumbersOnly = True
    TabOrder = 0
  end
  object btnConsultar: TButton
    Left = 175
    Top = 22
    Width = 75
    Height = 25
    Caption = '&Consultar'
    TabOrder = 1
    OnClick = btnConsultarClick
  end
  object GroupBox1: TGroupBox
    Left = 18
    Top = 53
    Width = 457
    Height = 156
    Caption = 'Empresa'
    TabOrder = 2
    object edtAtualizado_em: TLabeledEdit
      Left = 16
      Top = 32
      Width = 161
      Height = 21
      EditLabel.Width = 67
      EditLabel.Height = 13
      EditLabel.Caption = 'Atualizado em'
      TabOrder = 0
    end
    object edtCnpj_raiz: TLabeledEdit
      Left = 344
      Top = 32
      Width = 96
      Height = 21
      EditLabel.Width = 45
      EditLabel.Height = 13
      EditLabel.Caption = 'Cnpj Raiz'
      TabOrder = 1
    end
    object edtRazao_social: TLabeledEdit
      Left = 16
      Top = 74
      Width = 425
      Height = 21
      EditLabel.Width = 59
      EditLabel.Height = 13
      EditLabel.Caption = 'Raz'#227'o social'
      TabOrder = 2
    end
    object edtNome_fantasia: TLabeledEdit
      Left = 16
      Top = 114
      Width = 425
      Height = 21
      EditLabel.Width = 69
      EditLabel.Height = 13
      EditLabel.Caption = 'Nome fantasia'
      TabOrder = 3
    end
    object edtIE: TLabeledEdit
      Left = 200
      Top = 32
      Width = 113
      Height = 21
      EditLabel.Width = 10
      EditLabel.Height = 13
      EditLabel.Caption = 'IE'
      TabOrder = 4
    end
  end
end
