object fMov_MensalC: TfMov_MensalC
  Left = 67
  Top = 30
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Movimento Mensal'
  ClientHeight = 651
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
    Height = 46
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label4: TLabel
      Left = 11
      Top = 12
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'M'#234's/Ano Mov:'
    end
    object Label1: TLabel
      Left = 294
      Top = 11
      Width = 115
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dia Padr'#227'o Vencimento:'
    end
    object Label2: TLabel
      Left = 536
      Top = 8
      Width = 29
      Height = 13
      Caption = 'Gerar:'
    end
    object Label3: TLabel
      Left = 752
      Top = 8
      Width = 70
      Height = 13
      Caption = 'Buscar Dados:'
    end
    object Label5: TLabel
      Left = 505
      Top = 30
      Width = 60
      Height = 13
      Caption = 'Ordenar Por:'
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 186
      Top = 4
      Width = 80
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 88
      Top = 4
      Width = 97
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'Janeiro'
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
    object ProgressBar1: TProgressBar
      Left = 4
      Top = 30
      Width = 277
      Height = 17
      TabOrder = 2
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 410
      Top = 3
      Width = 80
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 3
    end
    object ComboBox2: TComboBox
      Left = 568
      Top = 2
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 2
      TabOrder = 4
      Text = 'Ambos'
      Items.Strings = (
        'S'#243' Recibos'
        'S'#243' Boletos'
        'Ambos')
    end
    object ComboBox3: TComboBox
      Left = 824
      Top = 2
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = 'M'#234's Anterior'
      Items.Strings = (
        'M'#234's Anterior'
        'Cadastro Aluno')
    end
    object ComboBox4: TComboBox
      Left = 568
      Top = 24
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 6
      Text = 'C'#243'digo'
      Items.Strings = (
        'C'#243'digo'
        'Nome Aluno')
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 78
    Width = 978
    Height = 265
    Align = alTop
    DataSource = DMMov_Mensal.dsMov_Mensal
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
        Title.Color = 16766378
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RECIBO_BOLETO'
        Title.Alignment = taCenter
        Title.Caption = 'Emite Recibo / Boleto'
        Title.Color = 16766378
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MES_MOV'
        Title.Alignment = taCenter
        Title.Caption = 'M'#234's'
        Title.Color = 16766378
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ANO_MOV'
        Title.Alignment = taCenter
        Title.Caption = 'Ano'
        Title.Color = 16766378
        Width = 45
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODALUNO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Aluno'
        Title.Color = 16766378
        Width = 43
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_ALUNO'
        Title.Alignment = taCenter
        Title.Caption = 'Aluno'
        Title.Color = 16766378
        Width = 176
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTVENCIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Vencimento'
        Title.Color = 16766378
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTGERACAO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Gera'#231#227'o'
        Title.Color = 16766378
        Visible = True
      end
      item
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'VLRLIQUIDO'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Title.Color = 16766378
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 89
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTNASCIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Nascimento'
        Title.Color = 16766378
        Width = 69
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DDD'
        Title.Alignment = taCenter
        Title.Color = 16766378
        Width = 34
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FONE'
        Title.Alignment = taCenter
        Title.Caption = 'Fone'
        Title.Color = 16766378
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_RESPONSAVEL'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Respons'#225'vel'
        Title.Color = 16766378
        Width = 228
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CPF_REPONSAVEL'
        Title.Alignment = taCenter
        Title.Caption = 'CPF Respons'#225'vel'
        Title.Color = 16766378
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRTOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Total'
        Title.Color = 16766378
        Width = 90
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 634
    Width = 978
    Height = 17
    Align = alBottom
    BorderStyle = sbsSunken
    Caption = 'Duplo clique para Consultar/Alterar'
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
    Top = 46
    Width = 978
    Height = 32
    Align = alTop
    TabOrder = 3
    object BitBtn3: TBitBtn
      Left = 5
      Top = 4
      Width = 107
      Height = 25
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
    object BitBtn1: TBitBtn
      Left = 111
      Top = 4
      Width = 107
      Height = 25
      Caption = 'Inserir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 217
      Top = 4
      Width = 107
      Height = 25
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = BitBtn2Click
    end
    object BitBtn5: TBitBtn
      Left = 896
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn5Click
    end
    object BitBtn4: TBitBtn
      Left = 615
      Top = 3
      Width = 120
      Height = 25
      Caption = 'Gerar Movimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn4Click
    end
    object BitBtn6: TBitBtn
      Left = 737
      Top = 3
      Width = 120
      Height = 25
      Caption = 'Imprimir Recibo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn6Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 343
    Width = 978
    Height = 291
    Align = alClient
    Caption = 'Eventos do Aluno Selecionado'
    Color = clSilver
    ParentColor = False
    TabOrder = 4
    object Shape1: TShape
      Left = 808
      Top = 12
      Width = 26
      Height = 16
      Brush.Color = clTeal
    end
    object Label9: TLabel
      Left = 838
      Top = 14
      Width = 134
      Height = 13
      Caption = 'Registro Possue Pagamento'
    end
    object SMDBGrid2: TSMDBGrid
      Left = 2
      Top = 15
      Width = 671
      Height = 241
      Align = alLeft
      Ctl3D = False
      DataSource = DMMov_Mensal.dsMov_Mensal_Eventos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = SMDBGrid2DblClick
      Flat = True
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
      FixedCols = 2
      OnGetCellParams = SMDBGrid2GetCellParams
      RegistryKey = 'Software\Scalabium'
      RegistrySection = 'SMDBGrid'
      WidthOfIndicator = 11
      DefaultRowHeight = 17
      ScrollBars = ssHorizontal
      ColCount = 7
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ITEM'
          Title.Alignment = taCenter
          Title.Caption = 'IT'
          Title.Color = 16766378
          Width = 34
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID_EVENTO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Evento'
          Title.Color = 16766378
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEVENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Nome Evento'
          Title.Color = 16766378
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLREVENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Evento'
          Title.Color = 16766378
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRDESCONTO'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Desconto'
          Title.Color = 16766378
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRTOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Total'
          Title.Color = 16766378
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 137
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 2
      Top = 256
      Width = 974
      Height = 33
      Align = alBottom
      Color = clSilver
      TabOrder = 1
      object BitBtn14: TBitBtn
        Left = 14
        Top = 5
        Width = 112
        Height = 24
        Caption = 'Novo Evento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn14Click
        Glyph.Data = {
          36080000424D3608000000000000360000002800000020000000100000000100
          2000000000000008000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          80000080800000808000FFFFFF00FFFFFF000080800000808000008080000080
          800000808000008080000080800000808000FFFFFF00FFFFFF00008080000080
          8000008080000000FF000000FF00008080000080800000808000008080000080
          8000008080000080800000808000000000000000000000000000008080000080
          8000008080007F7F7F007F7F7F00FFFFFF000080800000808000008080000080
          80000080800000808000008080007F7F7F007F7F7F007F7F7F00008080000080
          8000008080000000FF000000FF00008080000080800000808000008080000080
          8000008080000080800000808000000000000000000000000000008080000080
          8000FFFFFF007F7F7F007F7F7F00FFFFFF00FFFFFF00FFFFFF00008080000080
          80000080800000808000008080007F7F7F007F7F7F007F7F7F00008080000000
          FF000000FF000000FF000000FF000000FF000000FF0000808000008080000080
          8000008080000080800000808000008080000080800000808000008080007F7F
          7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F00FFFFFF00008080000080
          80000080800000808000008080000080800000808000FFFFFF00008080000000
          FF000000FF000000FF000000FF000000FF000000FF0000808000008080000080
          8000008080000080800000808000008080000000000000000000008080007F7F
          7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F0000808000008080000080
          8000008080000080800000808000008080007F7F7F007F7F7F00008080000080
          8000008080000000FF000000FF00008080000080800000808000008080000080
          8000008080000080800000808000008080000000000000000000008080000080
          8000008080007F7F7F007F7F7F00FFFFFF000080800000808000008080000080
          8000008080000080800000808000008080007F7F7F007F7F7F00008080000080
          8000008080000000FF000000FF00008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080007F7F7F007F7F7F00008080000080800000808000008080000080
          80000080800000808000008080000080800000808000FFFFFF00008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000FFFFFF000080
          8000008080000080800000808000008080007F7F7F007F7F7F00008080000080
          80000080800000808000008080000080800000808000FF000000008080000080
          8000008080000080800000808000008080000000000000000000008080000080
          800000808000008080000080800000808000008080007F7F7F00FFFFFF00FFFF
          FF00008080000080800000808000008080007F7F7F007F7F7F00008080000080
          80000080800000808000008080000080800000808000FF000000FF0000000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007F7F7F007F7F7F00FFFF
          FF00FFFFFF00FFFFFF0000808000FFFFFF00FFFFFF000080800000808000FF00
          0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000008080000000FF000000FF000080800000808000008080007F7F
          7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
          7F007F7F7F00FFFFFF007F7F7F007F7F7F00FFFFFF000080800000808000FF00
          0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
          0000FF000000008080000000FF000000FF000080800000808000008080007F7F
          7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
          7F007F7F7F00008080007F7F7F007F7F7F000080800000808000008080000080
          80000080800000808000008080000080800000808000FF000000FF0000000080
          8000008080000080800000808000008080000080800000808000008080000080
          800000808000008080000080800000808000008080007F7F7F007F7F7F000080
          800000808000008080000080800000808000FFFFFF00FFFFFF00008080000080
          80000080800000808000008080000080800000808000FF000000008080000080
          8000008080000080800000808000000000000000000000000000008080000080
          800000808000008080000080800000808000008080007F7F7F00008080000080
          80000080800000808000008080007F7F7F007F7F7F007F7F7F00008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          80000080800000808000008080007F7F7F007F7F7F007F7F7F00008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000}
        NumGlyphs = 2
      end
      object BitBtn12: TBitBtn
        Left = 127
        Top = 5
        Width = 112
        Height = 24
        Hint = 'Exclui o item selecionado'
        Caption = 'Exclui Item'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn12Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
          3333333777777777F3333330F77777703333333733F3F3F73F33330FF0808077
          0333337F37F7F7F37F33330FF0807077033333733737F73F73F330FF77808707
          703337F37F37F37F37F330FF08807807703037F37F37F37F37F700FF08808707
          700377F37337F37F377330FF778078077033373F73F7F3733733330FF0808077
          0333337F37F7F7F37F33330FF08070770333337FF7F7F7FF7F33330000000000
          03333377777777777F33330F888777770333337FFFFFFFFF7F33330000000000
          033333777777777773333333307770333333333337FFF7F33333333330000033
          3333333337777733333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object BitBtn7: TBitBtn
        Left = 749
        Top = 4
        Width = 107
        Height = 25
        Caption = 'Cadastro Alunos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn7Click
      end
      object BitBtn8: TBitBtn
        Left = 855
        Top = 4
        Width = 107
        Height = 25
        Caption = 'Cadastro Eventos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = BitBtn8Click
      end
    end
  end
  object qCidade: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CIDADE'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 320
    Top = 168
    object qCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object qCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object qCidadeDDD: TIntegerField
      FieldName = 'DDD'
    end
    object qCidadeCODMUNICIPIO: TStringField
      FieldName = 'CODMUNICIPIO'
      Size = 7
    end
  end
  object mAuxiliar: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_MOV'
        DataType = ftInteger
      end
      item
        Name = 'CodAluno'
        DataType = ftInteger
      end
      item
        Name = 'NomeAluno'
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <>
    IndexFieldNames = 'ID_MOV'
    Params = <>
    StoreDefs = True
    Left = 568
    Top = 272
    Data = {
      580000009619E0BD01000000180000000300000000000300000058000649445F
      4D4F56040001000000000008436F64416C756E6F0400010000000000094E6F6D
      65416C756E6F0100490000000100055749445448020002003C000000}
    object mAuxiliarID_MOV: TIntegerField
      FieldName = 'ID_MOV'
    end
    object mAuxiliarCodAluno: TIntegerField
      FieldName = 'CodAluno'
    end
    object mAuxiliarNomeAluno: TStringField
      FieldName = 'NomeAluno'
      Size = 60
    end
  end
  object dsmAuxiliar: TDataSource
    DataSet = mAuxiliar
    Left = 600
    Top = 272
  end
  object sdsMov_MensalAnt: TSQLDataSet
    CommandText = 
      'SELECT M.*, A.DIACOBRANCA'#13#10'FROM MOV_MENSAL M'#13#10'INNER JOIN ALUNO A' +
      #13#10'  ON M.ID_ALUNO = A.ID'#13#10'WHERE ANO_MOV = :ANO_MOV'#13#10'      AND ME' +
      'S_MOV = :MES_MOV'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ANO_MOV'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MES_MOV'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 592
    Top = 352
    object sdsMov_MensalAntID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMov_MensalAntANO_MOV: TIntegerField
      FieldName = 'ANO_MOV'
    end
    object sdsMov_MensalAntMES_MOV: TIntegerField
      FieldName = 'MES_MOV'
    end
    object sdsMov_MensalAntDTGERACAO: TDateField
      FieldName = 'DTGERACAO'
    end
    object sdsMov_MensalAntOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsMov_MensalAntID_ALUNO: TIntegerField
      FieldName = 'ID_ALUNO'
    end
    object sdsMov_MensalAntVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object sdsMov_MensalAntVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object sdsMov_MensalAntVLRLIQUIDO: TFloatField
      FieldName = 'VLRLIQUIDO'
    end
    object sdsMov_MensalAntPERCDESCONTO: TFloatField
      FieldName = 'PERCDESCONTO'
    end
    object sdsMov_MensalAntDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object sdsMov_MensalAntVLRPAGO: TFloatField
      FieldName = 'VLRPAGO'
    end
    object sdsMov_MensalAntDTPAGAMENTO: TDateField
      FieldName = 'DTPAGAMENTO'
    end
    object sdsMov_MensalAntVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
    end
    object sdsMov_MensalAntNOMEBANCO_PAG: TStringField
      FieldName = 'NOMEBANCO_PAG'
      Size = 10
    end
    object sdsMov_MensalAntNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object sdsMov_MensalAntRECIBO_BOLETO: TStringField
      FieldName = 'RECIBO_BOLETO'
      FixedChar = True
      Size = 1
    end
    object sdsMov_MensalAntDIACOBRANCA: TIntegerField
      FieldName = 'DIACOBRANCA'
    end
  end
  object dspMov_MensalAnt: TDataSetProvider
    DataSet = sdsMov_MensalAnt
    Left = 680
    Top = 352
  end
  object cdsMov_MensalAnt: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMov_MensalAnt'
    Left = 760
    Top = 352
    object cdsMov_MensalAntID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMov_MensalAntANO_MOV: TIntegerField
      FieldName = 'ANO_MOV'
    end
    object cdsMov_MensalAntMES_MOV: TIntegerField
      FieldName = 'MES_MOV'
    end
    object cdsMov_MensalAntDTGERACAO: TDateField
      FieldName = 'DTGERACAO'
    end
    object cdsMov_MensalAntOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsMov_MensalAntID_ALUNO: TIntegerField
      FieldName = 'ID_ALUNO'
    end
    object cdsMov_MensalAntVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object cdsMov_MensalAntVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object cdsMov_MensalAntVLRLIQUIDO: TFloatField
      FieldName = 'VLRLIQUIDO'
    end
    object cdsMov_MensalAntPERCDESCONTO: TFloatField
      FieldName = 'PERCDESCONTO'
    end
    object cdsMov_MensalAntDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
    object cdsMov_MensalAntVLRPAGO: TFloatField
      FieldName = 'VLRPAGO'
    end
    object cdsMov_MensalAntDTPAGAMENTO: TDateField
      FieldName = 'DTPAGAMENTO'
    end
    object cdsMov_MensalAntVLRRESTANTE: TFloatField
      FieldName = 'VLRRESTANTE'
    end
    object cdsMov_MensalAntNOMEBANCO_PAG: TStringField
      FieldName = 'NOMEBANCO_PAG'
      Size = 10
    end
    object cdsMov_MensalAntNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
    end
    object cdsMov_MensalAntRECIBO_BOLETO: TStringField
      FieldName = 'RECIBO_BOLETO'
      FixedChar = True
      Size = 1
    end
    object cdsMov_MensalAntDIACOBRANCA: TIntegerField
      FieldName = 'DIACOBRANCA'
    end
    object cdsMov_MensalAntsdsMov_MensalAnt_Eventos: TDataSetField
      FieldName = 'sdsMov_MensalAnt_Eventos'
    end
  end
  object dsMov_MensalAnt: TDataSource
    DataSet = cdsMov_MensalAnt
    Left = 832
    Top = 352
  end
  object dsMov_MensalAnt_Mestre: TDataSource
    DataSet = sdsMov_MensalAnt
    Left = 520
    Top = 400
  end
  object sdsMov_MensalAnt_Eventos: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM MOV_MENSAL_EVENTOS '#13#10'WHERE ID = :ID'
    DataSource = dsMov_MensalAnt_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 632
    Top = 472
    object sdsMov_MensalAnt_EventosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMov_MensalAnt_EventosID_EVENTO: TIntegerField
      FieldName = 'ID_EVENTO'
      Required = True
    end
    object sdsMov_MensalAnt_EventosVLREVENTO: TFloatField
      FieldName = 'VLREVENTO'
    end
    object sdsMov_MensalAnt_EventosQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsMov_MensalAnt_EventosVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object sdsMov_MensalAnt_EventosVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object sdsMov_MensalAnt_EventosPERCDESCONTO: TFloatField
      FieldName = 'PERCDESCONTO'
    end
  end
  object cdsMov_MensalAnt_Eventos: TClientDataSet
    Aggregates = <>
    DataSetField = cdsMov_MensalAntsdsMov_MensalAnt_Eventos
    IndexFieldNames = 'ID;ID_EVENTO'
    Params = <>
    Left = 712
    Top = 472
    object cdsMov_MensalAnt_EventosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMov_MensalAnt_EventosID_EVENTO: TIntegerField
      FieldName = 'ID_EVENTO'
      Required = True
    end
    object cdsMov_MensalAnt_EventosVLREVENTO: TFloatField
      FieldName = 'VLREVENTO'
    end
    object cdsMov_MensalAnt_EventosQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsMov_MensalAnt_EventosVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object cdsMov_MensalAnt_EventosVLRDESCONTO: TFloatField
      FieldName = 'VLRDESCONTO'
    end
    object cdsMov_MensalAnt_EventosPERCDESCONTO: TFloatField
      FieldName = 'PERCDESCONTO'
    end
  end
  object dsMov_MensalAnt_Eventos: TDataSource
    DataSet = cdsMov_MensalAnt_Eventos
    Left = 816
    Top = 472
  end
end
