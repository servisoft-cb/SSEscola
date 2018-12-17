object fConsMov_MensalEvento: TfConsMov_MensalEvento
  Left = 101
  Top = 10
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Movimento Mensal'
  ClientHeight = 689
  ClientWidth = 751
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
    Width = 751
    Height = 95
    Align = alTop
    TabOrder = 0
    DesignSize = (
      751
      95)
    object Label4: TLabel
      Left = 22
      Top = 12
      Width = 71
      Height = 13
      Alignment = taRightJustify
      Caption = 'M'#234's/Ano Mov:'
    end
    object Label1: TLabel
      Left = 287
      Top = 11
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ordernar Por:'
    end
    object Label3: TLabel
      Left = 6
      Top = 33
      Width = 87
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Vencimento Ini:'
    end
    object Label5: TLabel
      Left = 3
      Top = 55
      Width = 90
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Vencimento Fin:'
    end
    object Label6: TLabel
      Left = 202
      Top = 77
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome Evento:'
    end
    object Label7: TLabel
      Left = 34
      Top = 77
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'd.Evento:'
    end
    object Label2: TLabel
      Left = 742
      Top = 40
      Width = 3
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = '.'
    end
    object Label8: TLabel
      Left = 484
      Top = 10
      Width = 106
      Height = 13
      Alignment = taRightJustify
      Caption = 'Op'#231#227'o de Acumulado:'
    end
    object Label9: TLabel
      Left = 512
      Top = 40
      Width = 67
      Height = 13
      Caption = 'M'#234's/Ano Ref:'
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
      Left = 352
      Top = 3
      Width = 113
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 2
      Text = 'C'#243'd. Evento'
      Items.Strings = (
        'C'#243'd. Evento'
        'Nome Evento')
    end
    object DateEdit1: TDateEdit
      Left = 95
      Top = 25
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
    end
    object DateEdit2: TDateEdit
      Left = 95
      Top = 47
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 4
    end
    object CurrencyEdit2: TCurrencyEdit
      Left = 95
      Top = 69
      Width = 100
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 5
      OnExit = CurrencyEdit2Exit
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 271
      Top = 69
      Width = 282
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMEvento.dsEvento
      TabOrder = 6
      OnExit = RxDBLookupCombo1Exit
    end
    object ComboBox3: TComboBox
      Left = 592
      Top = 2
      Width = 113
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 7
      Text = 'Ano Atual'
      Items.Strings = (
        'Ano Atual'
        '12 Meses')
    end
    object CurrencyEdit3: TCurrencyEdit
      Left = 584
      Top = 32
      Width = 49
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 8
    end
    object CurrencyEdit4: TCurrencyEdit
      Left = 634
      Top = 32
      Width = 49
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 9
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 127
    Width = 751
    Height = 562
    Align = alClient
    DataSource = dsConsulta
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ReadOnly = True
    TabOrder = 1
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID_EVENTO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Evento'
        Width = 74
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEEVENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Evento'
        Width = 277
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRTOTAL'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Total'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VLRANUAL'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Acumulado no Ano'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 95
    Width = 751
    Height = 32
    Align = alTop
    TabOrder = 2
    DesignSize = (
      751
      32)
    object BitBtn3: TBitBtn
      Left = 446
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
    object BitBtn1: TBitBtn
      Left = 547
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
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn5: TBitBtn
      Left = 647
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
      TabOrder = 2
      OnClick = BitBtn5Click
    end
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ME.id_evento, E.nome NOMEEVENTO, SUM(ME.vlrtotal) VLRTOTA' +
      'L, VA.VLRANUAL'#13#10'FROM mov_mensal M'#13#10'INNER JOIN mov_mensal_eventos' +
      ' ME'#13#10'ON M.ID = ME.ID'#13#10'INNER JOIN evento E'#13#10'ON ME.id_evento = E.I' +
      'D'#13#10'INNER JOIN  (SELECT SUM(VALOR) VLRANUAL, ID_EVENTO'#13#10'         ' +
      '    FROM VALORES_EVENTO'#13#10'             WHERE ANO_MOV = :ANO_MOV'#13#10 +
      '             GROUP BY ID_EVENTO) VA'#13#10'  ON ME.id_evento = VA.ID_E' +
      'VENTO'#13#10'GROUP BY ME.id_evento, E.nome, VA.VLRANUAL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ANO_MOV'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 328
    Top = 280
    object sdsConsultaID_EVENTO: TIntegerField
      FieldName = 'ID_EVENTO'
      Required = True
    end
    object sdsConsultaNOMEEVENTO: TStringField
      FieldName = 'NOMEEVENTO'
      Size = 30
    end
    object sdsConsultaVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object sdsConsultaVLRANUAL: TFloatField
      FieldName = 'VLRANUAL'
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 368
    Top = 280
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 416
    Top = 280
    object cdsConsultaID_EVENTO: TIntegerField
      FieldName = 'ID_EVENTO'
      Required = True
    end
    object cdsConsultaNOMEEVENTO: TStringField
      FieldName = 'NOMEEVENTO'
      Size = 30
    end
    object cdsConsultaVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object cdsConsultaVLRANUAL: TFloatField
      FieldName = 'VLRANUAL'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 464
    Top = 280
  end
  object mEvento: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 616
    Top = 408
    object mEventoCodEvento: TIntegerField
      FieldName = 'CodEvento'
    end
    object mEventoNomeEvento: TStringField
      FieldName = 'NomeEvento'
      Size = 40
    end
    object mEventoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object mEventoVlrMes1: TFloatField
      FieldName = 'VlrMes1'
    end
    object mEventoVlrMes2: TFloatField
      FieldName = 'VlrMes2'
    end
    object mEventoVlrMes3: TFloatField
      FieldName = 'VlrMes3'
    end
    object mEventoVlrMes4: TFloatField
      FieldName = 'VlrMes4'
    end
    object mEventoVlrMes5: TFloatField
      FieldName = 'VlrMes5'
    end
    object mEventoVlrMes6: TFloatField
      FieldName = 'VlrMes6'
    end
    object mEventoVlrMes7: TFloatField
      FieldName = 'VlrMes7'
    end
    object mEventoVlrMes8: TFloatField
      FieldName = 'VlrMes8'
    end
    object mEventoVlrMes9: TFloatField
      FieldName = 'VlrMes9'
    end
    object mEventoVlrMes10: TFloatField
      FieldName = 'VlrMes10'
    end
    object mEventoVlrMes11: TFloatField
      FieldName = 'VlrMes11'
    end
    object mEventoVlrMes12: TFloatField
      FieldName = 'VlrMes12'
    end
    object mEventoVlrMes13: TFloatField
      FieldName = 'VlrMes13'
    end
    object mEventoVlrMes14: TFloatField
      FieldName = 'VlrMes14'
    end
  end
  object dsmEvento: TDataSource
    DataSet = mEvento
    Left = 656
    Top = 408
  end
  object SQLDataSet1: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ME.id_evento, E.nome NOMEEVENTO, SUM(ME.vlrtotal) VLRTOTA' +
      'L, VA.VLRANUAL'#13#10'FROM mov_mensal M'#13#10'INNER JOIN mov_mensal_eventos' +
      ' ME'#13#10'ON M.ID = ME.ID'#13#10'INNER JOIN evento E'#13#10'ON ME.id_evento = E.I' +
      'D'#13#10'INNER JOIN  (SELECT SUM(VALOR) VLRANUAL, ID_EVENTO'#13#10'         ' +
      '    FROM VALORES_EVENTO'#13#10'             WHERE ANO_MOV = :ANO_MOV'#13#10 +
      '             GROUP BY ID_EVENTO) VA'#13#10'  ON ME.id_evento = VA.ID_E' +
      'VENTO'#13#10'GROUP BY ME.id_evento, E.nome, VA.VLRANUAL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ANO_MOV'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 512
    Top = 208
    object IntegerField1: TIntegerField
      FieldName = 'ID_EVENTO'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOMEEVENTO'
      Size = 30
    end
    object FloatField1: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object FloatField2: TFloatField
      FieldName = 'VLRANUAL'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 552
    Top = 208
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta'
    Left = 600
    Top = 208
    object IntegerField2: TIntegerField
      FieldName = 'ID_EVENTO'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'NOMEEVENTO'
      Size = 30
    end
    object FloatField3: TFloatField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '###,###,##0.00'
    end
    object FloatField4: TFloatField
      FieldName = 'VLRANUAL'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 648
    Top = 208
  end
end
