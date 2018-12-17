object fConsMov_Mensal: TfConsMov_Mensal
  Left = 16
  Top = 24
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Movimento Mensal'
  ClientHeight = 689
  ClientWidth = 978
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 978
    Height = 105
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label4: TLabel
      Left = 22
      Top = 12
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'M'#234's/Ano Mov:'
    end
    object Label1: TLabel
      Left = 200
      Top = 35
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ordernar Por:'
    end
    object Label2: TLabel
      Left = 58
      Top = 35
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Op'#231#227'o:'
    end
    object Label3: TLabel
      Left = 6
      Top = 57
      Width = 87
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Vencimento Ini:'
    end
    object Label5: TLabel
      Left = 3
      Top = 79
      Width = 90
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Vencimento Fin:'
    end
    object Label6: TLabel
      Left = 233
      Top = 57
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Aluno:'
    end
    object Label7: TLabel
      Left = 224
      Top = 79
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Mov:'
    end
    object Label8: TLabel
      Left = 391
      Top = 35
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = 'Recibo/Boleto:'
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 193
      Top = 4
      Width = 80
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 95
      Top = 4
      Width = 97
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnKeyDown = ComboBox1KeyDown
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro')
    end
    object ComboBox2: TComboBox
      Left = 265
      Top = 27
      Width = 113
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'Aluno'
      Items.Strings = (
        'Aluno'
        'Data Vencimento'
        'Ano e Mes')
    end
    object ComboBox3: TComboBox
      Left = 95
      Top = 27
      Width = 100
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 3
      Text = 'Ambos'
      Items.Strings = (
        'Pendentes'
        'Pagas'
        'Ambos')
    end
    object DateEdit1: TDateEdit
      Left = 95
      Top = 49
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 4
    end
    object DateEdit2: TDateEdit
      Left = 95
      Top = 71
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 5
    end
    object Edit1: TEdit
      Left = 265
      Top = 49
      Width = 312
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 265
      Top = 71
      Width = 80
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 7
    end
    object ComboBox4: TComboBox
      Left = 465
      Top = 27
      Width = 113
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 8
      Text = 'Ambos'
      Items.Strings = (
        'Recibo'
        'Boleto'
        'Ambos')
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 137
    Width = 978
    Height = 350
    Align = alClient
    DataSource = DMMov_Mensal.dsMov_Mensal
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 16
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Mov.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MES_MOV'
        Title.Alignment = taCenter
        Title.Caption = 'M'#234's'
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ANO_MOV'
        Title.Alignment = taCenter
        Title.Caption = 'Ano'
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODALUNO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Aluno'
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_ALUNO'
        Title.Alignment = taCenter
        Title.Caption = 'Aluno'
        Width = 176
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTVENCIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Vencimento'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTGERACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Gera'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRLIQUIDO'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Width = 104
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTNASCIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Nascimento'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DDD'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FONE'
        Title.Alignment = taCenter
        Title.Caption = 'Fone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_RESPONSAVEL'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Respons'#225'vel'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CPF_REPONSAVEL'
        Title.Alignment = taCenter
        Title.Caption = 'CPF Respons'#225'vel'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRTOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Total'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRPAGO'
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 672
    Width = 978
    Height = 17
    Align = alBottom
    BorderStyle = sbsSunken
    Caption = 'Duplo clique para fazer o PAGAMENTO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 978
    Height = 32
    Align = alTop
    TabOrder = 3
    DesignSize = (
      978
      32)
    object Shape1: TShape
      Left = 8
      Top = 8
      Width = 26
      Height = 16
      Brush.Color = clTeal
    end
    object Label9: TLabel
      Left = 38
      Top = 10
      Width = 30
      Height = 13
      Caption = 'Pagas'
    end
    object Label10: TLabel
      Left = 110
      Top = 10
      Width = 47
      Height = 13
      Caption = 'Atrasadas'
    end
    object Shape2: TShape
      Left = 80
      Top = 8
      Width = 26
      Height = 16
      Brush.Color = clRed
    end
    object Shape3: TShape
      Left = 168
      Top = 8
      Width = 26
      Height = 16
      Brush.Color = clAqua
    end
    object Label11: TLabel
      Left = 198
      Top = 10
      Width = 94
      Height = 13
      Caption = 'Pagas Parcialmente'
    end
    object Label12: TLabel
      Left = 318
      Top = 11
      Width = 335
      Height = 16
      Caption = 'Duplo clique no registro para fazer o pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BitBtn3: TBitBtn
      Left = 675
      Top = 4
      Width = 100
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn3Click
    end
    object BitBtn5: TBitBtn
      Left = 876
      Top = 4
      Width = 100
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn5Click
    end
    object BitBtn1: TBitBtn
      Left = 776
      Top = 4
      Width = 100
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 487
    Width = 978
    Height = 185
    Align = alBottom
    Caption = 'Eventos do Aluno Selecionado'
    Color = clSilver
    ParentColor = False
    TabOrder = 4
    object SMDBGrid2: TSMDBGrid
      Left = 2
      Top = 15
      Width = 974
      Height = 168
      Align = alClient
      DataSource = DMMov_Mensal.dsMov_Mensal_Eventos
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Flat = False
      BandsFont.Charset = DEFAULT_CHARSET
      BandsFont.Color = clWindowText
      BandsFont.Height = -11
      BandsFont.Name = 'MS Sans Serif'
      BandsFont.Style = []
      Groupings = <>
      GridStyle.Style = gsCustom
      GridStyle.OddColor = clWindow
      GridStyle.EvenColor = clWindow
      TitleHeight.PixelCount = 24
      FooterColor = clBtnFace
      ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 8
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID_EVENTO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Evento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEVENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Nome Evento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLREVENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Evento'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTD'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRTOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRDESCONTO'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Desconto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PERCDESCONTO'
          Title.Alignment = taCenter
          Title.Caption = '% Desconto'
          Visible = True
        end>
    end
  end
end
