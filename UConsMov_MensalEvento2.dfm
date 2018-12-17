object fConsMov_MensalEvento2: TfConsMov_MensalEvento2
  Left = 101
  Top = 10
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Movimento Mensal'
  ClientHeight = 689
  ClientWidth = 819
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
    Width = 819
    Height = 74
    Align = alTop
    TabOrder = 0
    DesignSize = (
      819
      74)
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
    object Label6: TLabel
      Left = 25
      Top = 57
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome Evento:'
    end
    object Label7: TLabel
      Left = 34
      Top = 34
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'd.Evento:'
    end
    object Label2: TLabel
      Left = 810
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
    object CurrencyEdit2: TCurrencyEdit
      Left = 95
      Top = 26
      Width = 100
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 3
      OnExit = CurrencyEdit2Exit
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 95
      Top = 49
      Width = 282
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMEvento.dsEvento
      TabOrder = 4
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
      TabOrder = 5
      Text = 'Dentro do Ano'
      Items.Strings = (
        'Dentro do Ano'
        #218'ltimos 12 Meses')
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 106
    Width = 819
    Height = 560
    Align = alClient
    DataSource = dsmEvento
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
    ColCount = 19
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CodEvento'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Evento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeEvento'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Evento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrMes1'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrMes2'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrMes3'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrMes4'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrMes5'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrMes6'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrMes7'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrMes8'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrMes9'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrMes10'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrMes11'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrMes12'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrMes13'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrMes14'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrTotal'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. Acumulado'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VlrMedia'
        Title.Alignment = taCenter
        Title.Caption = 'Vlr. M'#233'dia'
        Width = 85
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 74
    Width = 819
    Height = 32
    Align = alTop
    TabOrder = 2
    DesignSize = (
      819
      32)
    object BitBtn3: TBitBtn
      Left = 514
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
      Left = 615
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
      Left = 715
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
  object StaticText1: TStaticText
    Left = 0
    Top = 666
    Width = 819
    Height = 23
    Align = alBottom
    Caption = 'Duplo Clique para mostrar os alunos do evento selecionado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object sdsConsulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT V.id_evento, E.nome NOMEEVENTO, V.VALOR, V.MES_MOV, V.ANO' +
      '_MOV'#13#10'FROM VALORES_EVENTO V'#13#10'INNER JOIN evento E'#13#10'ON V.ID_EVENTO' +
      ' = E.ID'#13#10'WHERE V.ANO_MOV = 2012'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
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
    object sdsConsultaVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsConsultaMES_MOV: TIntegerField
      FieldName = 'MES_MOV'
      Required = True
    end
    object sdsConsultaANO_MOV: TIntegerField
      FieldName = 'ANO_MOV'
      Required = True
    end
  end
  object dspConsulta: TDataSetProvider
    DataSet = sdsConsulta
    Left = 368
    Top = 280
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ANO_MOV;MES_MOV'
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
    object cdsConsultaVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '0.00'
    end
    object cdsConsultaMES_MOV: TIntegerField
      FieldName = 'MES_MOV'
      Required = True
    end
    object cdsConsultaANO_MOV: TIntegerField
      FieldName = 'ANO_MOV'
      Required = True
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 456
    Top = 280
  end
  object mEvento: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodEvento'
        DataType = ftInteger
      end
      item
        Name = 'NomeEvento'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes1'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes2'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes3'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes4'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes5'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes6'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes7'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes8'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes9'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes10'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes11'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes12'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes13'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes14'
        DataType = ftFloat
      end
      item
        Name = 'VlrMedia'
        DataType = ftFloat
      end
      item
        Name = 'Tipo'
        DataType = ftString
        Size = 3
      end>
    IndexDefs = <>
    IndexFieldNames = 'CodEvento'
    Params = <>
    StoreDefs = True
    Left = 616
    Top = 408
    Data = {
      6B0100009619E0BD0100000018000000130000000000030000006B0109436F64
      4576656E746F04000100000000000A4E6F6D654576656E746F01004900000001
      0005574944544802000200280008566C72546F74616C08000400000000000756
      6C724D657331080004000000000007566C724D65733208000400000000000756
      6C724D657333080004000000000007566C724D65733408000400000000000756
      6C724D657335080004000000000007566C724D65733608000400000000000756
      6C724D657337080004000000000007566C724D65733808000400000000000756
      6C724D657339080004000000000008566C724D65733130080004000000000008
      566C724D65733131080004000000000008566C724D6573313208000400000000
      0008566C724D65733133080004000000000008566C724D657331340800040000
      00000008566C724D656469610800040000000000045469706F01004900000001
      000557494454480200020003000000}
    object mEventoCodEvento: TIntegerField
      FieldName = 'CodEvento'
    end
    object mEventoNomeEvento: TStringField
      FieldName = 'NomeEvento'
      Size = 40
    end
    object mEventoTipo: TStringField
      FieldName = 'Tipo'
      Size = 3
    end
    object mEventoVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '0.00'
    end
    object mEventoVlrMes1: TFloatField
      FieldName = 'VlrMes1'
      DisplayFormat = '0.00'
    end
    object mEventoVlrMes2: TFloatField
      FieldName = 'VlrMes2'
      DisplayFormat = '0.00'
    end
    object mEventoVlrMes3: TFloatField
      FieldName = 'VlrMes3'
      DisplayFormat = '0.00'
    end
    object mEventoVlrMes4: TFloatField
      FieldName = 'VlrMes4'
      DisplayFormat = '0.00'
    end
    object mEventoVlrMes5: TFloatField
      FieldName = 'VlrMes5'
      DisplayFormat = '0.00'
    end
    object mEventoVlrMes6: TFloatField
      FieldName = 'VlrMes6'
      DisplayFormat = '0.00'
    end
    object mEventoVlrMes7: TFloatField
      FieldName = 'VlrMes7'
      DisplayFormat = '0.00'
    end
    object mEventoVlrMes8: TFloatField
      FieldName = 'VlrMes8'
      DisplayFormat = '0.00'
    end
    object mEventoVlrMes9: TFloatField
      FieldName = 'VlrMes9'
      DisplayFormat = '0.00'
    end
    object mEventoVlrMes10: TFloatField
      FieldName = 'VlrMes10'
      DisplayFormat = '0.00'
    end
    object mEventoVlrMes11: TFloatField
      FieldName = 'VlrMes11'
      DisplayFormat = '0.00'
    end
    object mEventoVlrMes12: TFloatField
      FieldName = 'VlrMes12'
      DisplayFormat = '0.00'
    end
    object mEventoVlrMes13: TFloatField
      FieldName = 'VlrMes13'
      DisplayFormat = '0.00'
    end
    object mEventoVlrMes14: TFloatField
      FieldName = 'VlrMes14'
      DisplayFormat = '0.00'
    end
    object mEventoVlrMedia: TFloatField
      FieldName = 'VlrMedia'
      DisplayFormat = '0.00'
    end
  end
  object dsmEvento: TDataSource
    DataSet = mEvento
    Left = 656
    Top = 408
  end
  object mData: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Ano'
        DataType = ftInteger
      end
      item
        Name = 'Mes'
        DataType = ftInteger
      end
      item
        Name = 'Contador'
        DataType = ftInteger
      end
      item
        Name = 'QtdAluno'
        DataType = ftInteger
      end>
    IndexDefs = <>
    IndexFieldNames = 'Contador'
    Params = <>
    StoreDefs = True
    Left = 280
    Top = 424
    Data = {
      540000009619E0BD010000001800000004000000000003000000540003416E6F
      0400010000000000034D6573040001000000000008436F6E7461646F72040001
      000000000008517464416C756E6F04000100000000000000}
    object mDataAno: TIntegerField
      FieldName = 'Ano'
    end
    object mDataMes: TIntegerField
      FieldName = 'Mes'
    end
    object mDataContador: TIntegerField
      FieldName = 'Contador'
    end
    object mDataQtdAluno: TIntegerField
      FieldName = 'QtdAluno'
    end
  end
  object sdsAlunoEve: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.ID_ALUNO, ME.ID_EVENTO, ME.VLRTOTAL, A.NOME NOMEALUNO, ' +
      'A.CODIGO CODALUNO, M.ano_mov, M.mes_mov'#13#10'FROM MOV_MENSAL M'#13#10'INNE' +
      'R JOIN MOV_MENSAL_EVENTOS ME'#13#10'ON M.ID = ME.ID'#13#10'INNER JOIN ALUNO ' +
      'A'#13#10'ON M.ID_ALUNO = A.ID'#13#10'WHERE ((M.ANO_MOV = :ANOINI AND M.MES_M' +
      'OV >= :MESINI)'#13#10'  OR (M.ANO_MOV = :ANOFIN AND M.MES_MOV <= :MESF' +
      'IN))'#13#10'  AND (ME.ID_EVENTO = :CODEVENTO)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ANOINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MESINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANOFIN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MESFIN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODEVENTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 328
    Top = 328
    object sdsAlunoEveID_ALUNO: TIntegerField
      FieldName = 'ID_ALUNO'
    end
    object sdsAlunoEveID_EVENTO: TIntegerField
      FieldName = 'ID_EVENTO'
      Required = True
    end
    object sdsAlunoEveNOMEALUNO: TStringField
      FieldName = 'NOMEALUNO'
      Size = 50
    end
    object sdsAlunoEveVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object sdsAlunoEveCODALUNO: TIntegerField
      FieldName = 'CODALUNO'
    end
    object sdsAlunoEveANO_MOV: TIntegerField
      FieldName = 'ANO_MOV'
    end
    object sdsAlunoEveMES_MOV: TIntegerField
      FieldName = 'MES_MOV'
    end
  end
  object dspAlunoEve: TDataSetProvider
    DataSet = sdsAlunoEve
    Left = 368
    Top = 328
  end
  object cdsAlunoEve: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID_ALUNO;ANO_MOV;MES_MOV'
    Params = <>
    ProviderName = 'dspAlunoEve'
    OnCalcFields = cdsAlunoEveCalcFields
    Left = 416
    Top = 328
    object cdsAlunoEveID_ALUNO: TIntegerField
      FieldName = 'ID_ALUNO'
    end
    object cdsAlunoEveID_EVENTO: TIntegerField
      FieldName = 'ID_EVENTO'
      Required = True
    end
    object cdsAlunoEveNOMEALUNO: TStringField
      FieldName = 'NOMEALUNO'
      Size = 50
    end
    object cdsAlunoEveVLRTOTAL: TFloatField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '0.00'
    end
    object cdsAlunoEveCODALUNO: TIntegerField
      FieldName = 'CODALUNO'
    end
    object cdsAlunoEveclVlrMedia: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clVlrMedia'
      DisplayFormat = '0.00'
      Calculated = True
    end
    object cdsAlunoEveANO_MOV: TIntegerField
      FieldName = 'ANO_MOV'
    end
    object cdsAlunoEveMES_MOV: TIntegerField
      FieldName = 'MES_MOV'
    end
  end
  object dsAlunoEve: TDataSource
    DataSet = cdsAlunoEve
    Left = 456
    Top = 328
  end
  object qConsQtdAluno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Ano_Mov'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Mes_Mov'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select count(m.id_aluno) QtdAluno'
      'from (select distinct m.id_aluno'
      '      from mov_mensal m'
      '       where m.ano_mov = :Ano_Mov'
      '         and m.mes_mov = :Mes_Mov) m')
    SQLConnection = dmDatabase.scoDados
    Left = 440
    Top = 472
    object qConsQtdAlunoQTDALUNO: TIntegerField
      FieldName = 'QTDALUNO'
      Required = True
    end
  end
  object mEventoAlu: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CodEvento'
        DataType = ftInteger
      end
      item
        Name = 'ID_Aluno'
        DataType = ftInteger
      end
      item
        Name = 'CodAluno'
        DataType = ftInteger
      end
      item
        Name = 'NomeAluno'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'VlrMes1'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes2'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes3'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes4'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes5'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes6'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes7'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes8'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes9'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes10'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes11'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes12'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes13'
        DataType = ftFloat
      end
      item
        Name = 'VlrMes14'
        DataType = ftFloat
      end
      item
        Name = 'VlrMedia'
        DataType = ftFloat
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'NomeAluno;CodAluno'
    Params = <>
    StoreDefs = True
    Left = 616
    Top = 464
    Data = {
      730100009619E0BD010000001800000014000000000003000000730109436F64
      4576656E746F04000100000000000849445F416C756E6F040001000000000008
      436F64416C756E6F0400010000000000094E6F6D65416C756E6F010049000000
      010005574944544802000200280007566C724D65733108000400000000000756
      6C724D657332080004000000000007566C724D65733308000400000000000756
      6C724D657334080004000000000007566C724D65733508000400000000000756
      6C724D657336080004000000000007566C724D65733708000400000000000756
      6C724D657338080004000000000007566C724D65733908000400000000000856
      6C724D65733130080004000000000008566C724D657331310800040000000000
      08566C724D65733132080004000000000008566C724D65733133080004000000
      000008566C724D65733134080004000000000008566C724D6564696108000400
      0000000008566C72546F74616C08000400000000000000}
    object mEventoAluCodEvento: TIntegerField
      FieldName = 'CodEvento'
    end
    object mEventoAluID_Aluno: TIntegerField
      FieldName = 'ID_Aluno'
    end
    object mEventoAluCodAluno: TIntegerField
      FieldName = 'CodAluno'
    end
    object mEventoAluNomeAluno: TStringField
      FieldName = 'NomeAluno'
      Size = 40
    end
    object mEventoAluVlrMes1: TFloatField
      FieldName = 'VlrMes1'
      DisplayFormat = '0.00'
    end
    object mEventoAluVlrMes2: TFloatField
      FieldName = 'VlrMes2'
      DisplayFormat = '0.00'
    end
    object mEventoAluVlrMes3: TFloatField
      FieldName = 'VlrMes3'
      DisplayFormat = '0.00'
    end
    object mEventoAluVlrMes4: TFloatField
      FieldName = 'VlrMes4'
      DisplayFormat = '0.00'
    end
    object mEventoAluVlrMes5: TFloatField
      FieldName = 'VlrMes5'
      DisplayFormat = '0.00'
    end
    object mEventoAluVlrMes6: TFloatField
      FieldName = 'VlrMes6'
      DisplayFormat = '0.00'
    end
    object mEventoAluVlrMes7: TFloatField
      FieldName = 'VlrMes7'
      DisplayFormat = '0.00'
    end
    object mEventoAluVlrMes8: TFloatField
      FieldName = 'VlrMes8'
      DisplayFormat = '0.00'
    end
    object mEventoAluVlrMes9: TFloatField
      FieldName = 'VlrMes9'
      DisplayFormat = '0.00'
    end
    object mEventoAluVlrMes10: TFloatField
      FieldName = 'VlrMes10'
      DisplayFormat = '0.00'
    end
    object mEventoAluVlrMes11: TFloatField
      FieldName = 'VlrMes11'
      DisplayFormat = '0.00'
    end
    object mEventoAluVlrMes12: TFloatField
      FieldName = 'VlrMes12'
      DisplayFormat = '0.00'
    end
    object mEventoAluVlrMes13: TFloatField
      FieldName = 'VlrMes13'
      DisplayFormat = '0.00'
    end
    object mEventoAluVlrMes14: TFloatField
      FieldName = 'VlrMes14'
      DisplayFormat = '0.00'
    end
    object mEventoAluVlrMedia: TFloatField
      FieldName = 'VlrMedia'
      DisplayFormat = '0.00'
    end
    object mEventoAluVlrTotal: TFloatField
      FieldName = 'VlrTotal'
      DisplayFormat = '0.00'
    end
  end
  object SQLDataSet1: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT M.ID_ALUNO, ME.ID_EVENTO, SUM(ME.VLRTOTAL) VLRTOTAL, A.NO' +
      'ME NOMEALUNO, A.CODIGO CODALUNO'#13#10'FROM MOV_MENSAL M'#13#10'INNER JOIN M' +
      'OV_MENSAL_EVENTOS ME'#13#10'ON M.ID = ME.ID'#13#10'INNER JOIN ALUNO A'#13#10'ON M.' +
      'ID_ALUNO = A.ID'#13#10'WHERE ((M.ANO_MOV = :ANOINI AND M.MES_MOV >= :M' +
      'ESINI)'#13#10'  OR (M.ANO_MOV = :ANOFIN AND M.MES_MOV <= :MESFIN))'#13#10'  ' +
      'AND (ME.ID_EVENTO = :CODEVENTO)'#13#10'GROUP BY M.ID_ALUNO, ME.ID_EVEN' +
      'TO, A.NOME, A.CODIGO'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ANOINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MESINI'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANOFIN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MESFIN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODEVENTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 592
    Top = 248
    object IntegerField1: TIntegerField
      FieldName = 'ID_ALUNO'
    end
    object IntegerField2: TIntegerField
      FieldName = 'ID_EVENTO'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOMEALUNO'
      Size = 50
    end
    object FloatField1: TFloatField
      FieldName = 'VLRTOTAL'
    end
    object IntegerField3: TIntegerField
      FieldName = 'CODALUNO'
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 632
    Top = 248
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOMEALUNO'
    Params = <>
    ProviderName = 'dspAlunoEve'
    OnCalcFields = cdsAlunoEveCalcFields
    Left = 680
    Top = 248
    object IntegerField4: TIntegerField
      FieldName = 'ID_ALUNO'
    end
    object IntegerField5: TIntegerField
      FieldName = 'ID_EVENTO'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'NOMEALUNO'
      Size = 50
    end
    object FloatField2: TFloatField
      FieldName = 'VLRTOTAL'
      DisplayFormat = '0.00'
    end
    object IntegerField6: TIntegerField
      FieldName = 'CODALUNO'
    end
    object FloatField3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clVlrMedia'
      DisplayFormat = '0.00'
      Calculated = True
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 720
    Top = 248
  end
  object dsmEventoAlu: TDataSource
    DataSet = mEventoAlu
    Left = 656
    Top = 464
  end
end
