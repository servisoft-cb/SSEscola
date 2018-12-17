object fMov_MensalPag: TfMov_MensalPag
  Left = 84
  Top = 255
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Movimento Mensal'
  ClientHeight = 269
  ClientWidth = 744
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
    Width = 744
    Height = 39
    Align = alTop
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 6
      Top = 9
      Width = 71
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 39
    Width = 744
    Height = 230
    Align = alClient
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 128
      Width = 83
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Pagamento:'
    end
    object Label3: TLabel
      Left = 49
      Top = 18
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Mov.:'
    end
    object Label7: TLabel
      Left = 228
      Top = 18
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'M'#234's/Ano:'
    end
    object Label1: TLabel
      Left = 582
      Top = 13
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr.Total:'
    end
    object Label4: TLabel
      Left = 560
      Top = 34
      Width = 64
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr.Desconto:'
    end
    object Label5: TLabel
      Left = 570
      Top = 55
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr.L'#237'quido:'
    end
    object Label19: TLabel
      Left = 578
      Top = 89
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Pago:'
    end
    object Label20: TLabel
      Left = 557
      Top = 110
      Width = 67
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Pendente:'
    end
    object Label22: TLabel
      Left = 549
      Top = 132
      Width = 74
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. Pagamento:'
    end
    object Label6: TLabel
      Left = 61
      Top = 42
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Aluno:'
    end
    object Label8: TLabel
      Left = 6
      Top = 65
      Width = 85
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Vencimento:'
    end
    object Label9: TLabel
      Left = 7
      Top = 152
      Width = 84
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor Pagamento:'
    end
    object Label10: TLabel
      Left = 36
      Top = 175
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Cheque:'
    end
    object Label11: TLabel
      Left = 26
      Top = 198
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome Banco:'
    end
    object DBDateEdit1: TDBDateEdit
      Left = 93
      Top = 120
      Width = 100
      Height = 21
      DataField = 'DTPAGAMENTO'
      DataSource = DMMov_Mensal.dsMov_Mensal
      NumGlyphs = 2
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 93
      Top = 10
      Width = 127
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'ID'
      DataSource = DMMov_Mensal.dsMov_Mensal
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 277
      Top = 10
      Width = 47
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'MES_MOV'
      DataSource = DMMov_Mensal.dsMov_Mensal
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 325
      Top = 10
      Width = 55
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'ANO_MOV'
      DataSource = DMMov_Mensal.dsMov_Mensal
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit1: TDBEdit
      Left = 626
      Top = 5
      Width = 100
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'VLRTOTAL'
      DataSource = DMMov_Mensal.dsMov_Mensal
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit4: TDBEdit
      Left = 626
      Top = 26
      Width = 100
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'VLRDESCONTO'
      DataSource = DMMov_Mensal.dsMov_Mensal
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit5: TDBEdit
      Left = 626
      Top = 47
      Width = 100
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'VLRLIQUIDO'
      DataSource = DMMov_Mensal.dsMov_Mensal
      ReadOnly = True
      TabOrder = 9
    end
    object DBEdit13: TDBEdit
      Left = 626
      Top = 81
      Width = 100
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'VLRPAGO'
      DataSource = DMMov_Mensal.dsMov_Mensal
      ReadOnly = True
      TabOrder = 10
    end
    object DBEdit14: TDBEdit
      Left = 626
      Top = 102
      Width = 100
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'VLRRESTANTE'
      DataSource = DMMov_Mensal.dsMov_Mensal
      ReadOnly = True
      TabOrder = 11
    end
    object DBDateEdit3: TDBDateEdit
      Left = 626
      Top = 124
      Width = 100
      Height = 21
      TabStop = False
      DataField = 'DTPAGAMENTO'
      DataSource = DMMov_Mensal.dsMov_Mensal
      ReadOnly = True
      Color = clScrollBar
      NumGlyphs = 2
      TabOrder = 12
    end
    object DBEdit2: TDBEdit
      Left = 93
      Top = 34
      Width = 287
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'NOME_ALUNO'
      DataSource = DMMov_Mensal.dsMov_Mensal
      ReadOnly = True
      TabOrder = 13
    end
    object DBEdit8: TDBEdit
      Left = 93
      Top = 57
      Width = 127
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'DTVENCIMENTO'
      DataSource = DMMov_Mensal.dsMov_Mensal
      ReadOnly = True
      TabOrder = 14
    end
    object DBEdit9: TDBEdit
      Left = 93
      Top = 145
      Width = 96
      Height = 21
      DataField = 'VLRPAGO'
      DataSource = DMMov_Mensal.dsMov_Mensal
      TabOrder = 1
    end
    object DBEdit10: TDBEdit
      Left = 93
      Top = 168
      Width = 100
      Height = 21
      DataField = 'NUMCHEQUE'
      DataSource = DMMov_Mensal.dsMov_Mensal
      TabOrder = 2
    end
    object DBEdit11: TDBEdit
      Left = 93
      Top = 191
      Width = 284
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOMEBANCO_PAG'
      DataSource = DMMov_Mensal.dsMov_Mensal
      TabOrder = 3
    end
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
    TabOrder = 2
    OnClick = BitBtn2Click
  end
end
