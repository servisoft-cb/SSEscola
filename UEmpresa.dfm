object fEmpresa: TfEmpresa
  Left = 155
  Top = 222
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Empresa'
  ClientHeight = 378
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 39
    Align = alTop
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 6
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 80
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 39
    Width = 635
    Height = 339
    Align = alClient
    TabOrder = 1
    object Label7: TLabel
      Left = 55
      Top = 19
      Width = 31
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome:'
    end
    object Label14: TLabel
      Left = 40
      Top = 88
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Endere'#231'o'
    end
    object Label1: TLabel
      Left = 56
      Top = 112
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Bairro:'
    end
    object Label2: TLabel
      Left = 64
      Top = 135
      Width = 22
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cep:'
    end
    object Label3: TLabel
      Left = 50
      Top = 41
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cidade:'
    end
    object Label4: TLabel
      Left = 69
      Top = 65
      Width = 17
      Height = 13
      Alignment = taRightJustify
      Caption = 'UF:'
    end
    object Label5: TLabel
      Left = 62
      Top = 159
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tipo:'
    end
    object Label6: TLabel
      Left = 31
      Top = 183
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'CNPJ/CPF:'
    end
    object Label8: TLabel
      Left = 59
      Top = 206
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fone:'
    end
    object DBEdit6: TDBEdit
      Left = 88
      Top = 11
      Width = 346
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DMEmpresa.dsEmpresa
      TabOrder = 0
    end
    object DBEdit9: TDBEdit
      Left = 88
      Top = 80
      Width = 345
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = DMEmpresa.dsEmpresa
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 104
      Width = 345
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = DMEmpresa.dsEmpresa
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 88
      Top = 127
      Width = 137
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CEP'
      DataSource = DMEmpresa.dsEmpresa
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 88
      Top = 33
      Width = 346
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CIDADE'
      DataSource = DMEmpresa.dsEmpresa
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 88
      Top = 57
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      DataField = 'UF'
      DataSource = DMEmpresa.dsEmpresa
      TabOrder = 2
    end
    object RxDBComboBox1: TRxDBComboBox
      Left = 88
      Top = 152
      Width = 137
      Height = 21
      Style = csDropDownList
      DataField = 'PESSOA'
      DataSource = DMEmpresa.dsEmpresa
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'F'#237'sica'
        'Jur'#237'dica')
      TabOrder = 6
      Values.Strings = (
        'F'
        'J')
    end
    object DBEdit5: TDBEdit
      Left = 88
      Top = 175
      Width = 185
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CPF_CNPJ'
      DataSource = DMEmpresa.dsEmpresa
      TabOrder = 7
      OnEnter = DBEdit5Enter
      OnExit = DBEdit5Exit
    end
    object DBEdit7: TDBEdit
      Left = 88
      Top = 198
      Width = 41
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DDD'
      DataSource = DMEmpresa.dsEmpresa
      TabOrder = 8
    end
    object DBEdit8: TDBEdit
      Left = 131
      Top = 198
      Width = 142
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FONE'
      DataSource = DMEmpresa.dsEmpresa
      TabOrder = 9
    end
  end
  object VerificaCPF1: TVerificaCPF
    Resultado = False
    Left = 384
    Top = 216
  end
  object VerificaCGC1: TVerificaCGC
    Resultado = False
    Left = 349
    Top = 217
  end
end
