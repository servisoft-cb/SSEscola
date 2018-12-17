object fFuncionarioC: TfFuncionarioC
  Left = 7
  Top = 40
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Funcion'#225'rio'
  ClientHeight = 639
  ClientWidth = 989
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
    Width = 989
    Height = 114
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 44
      Top = 34
      Width = 95
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. Admiss'#227'o Inicial:'
    end
    object Label2: TLabel
      Left = 247
      Top = 34
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Label3: TLabel
      Left = 81
      Top = 76
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'Funcion'#225'rio:'
    end
    object Label4: TLabel
      Left = 59
      Top = 13
      Width = 80
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'd.Funcion'#225'rio:'
    end
    object Label10: TLabel
      Left = 106
      Top = 96
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Turma:'
    end
    object Label5: TLabel
      Left = 495
      Top = 13
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Demitido:'
    end
    object Label7: TLabel
      Left = 479
      Top = 74
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ordenar Por:'
    end
    object Label6: TLabel
      Left = 43
      Top = 55
      Width = 96
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. Demiss'#227'o Inicial:'
    end
    object Label8: TLabel
      Left = 247
      Top = 55
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object DateEdit1: TDateEdit
      Left = 141
      Top = 26
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object DateEdit2: TDateEdit
      Left = 276
      Top = 26
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object BitBtn5: TBitBtn
      Left = 912
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
    object CurrencyEdit1: TCurrencyEdit
      Left = 141
      Top = 5
      Width = 80
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 141
      Top = 89
      Width = 320
      Height = 21
      DropDownCount = 8
      LookupField = 'ID'
      LookupDisplay = 'Nome'
      LookupSource = DMTurma.dsTurma
      TabOrder = 4
    end
    object ComboBox1: TComboBox
      Left = 541
      Top = 5
      Width = 188
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 5
      Text = 'N'#227'o Mostrar Demitidos'
      Items.Strings = (
        'N'#227'o Mostrar Demitidos'
        'Mostrar Somente Demitidos'
        'Ambos')
    end
    object Edit1: TEdit
      Left = 141
      Top = 68
      Width = 320
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object ComboBox3: TComboBox
      Left = 541
      Top = 66
      Width = 188
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 7
      Text = 'Nome Funcion'#225'rio'
      Items.Strings = (
        'C'#243'digo'
        'Nome Funcion'#225'rio'
        'Turma'
        'Cidade'
        'C'#243'digo Matr'#237'cula'
        'N'#186' do Ponto'
        '')
    end
    object DateEdit3: TDateEdit
      Left = 141
      Top = 47
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 8
    end
    object DateEdit4: TDateEdit
      Left = 276
      Top = 47
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 9
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 146
    Width = 989
    Height = 476
    Align = alClient
    DataSource = dsFuncionarioCons
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 16
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 281
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DDD'
        Title.Alignment = taCenter
        Width = 34
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'CELULAR'
        Title.Alignment = taCenter
        Title.Caption = 'Celular'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTADMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Admiss'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMETURMA'
        Title.Alignment = taCenter
        Title.Caption = 'Turma'
        Width = 169
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Title.Alignment = taCenter
        Title.Caption = 'Bairro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Title.Alignment = taCenter
        Title.Caption = 'Endere'#231'o'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DTDEMISSAO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Demiss'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORARIO1'
        Title.Alignment = taCenter
        Title.Caption = 'Hor'#225'rio 1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HORARIO2'
        Title.Alignment = taCenter
        Title.Caption = 'Hor'#225'rio 2'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NUMPONTO'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Ponto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMMATRICULA'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Matr'#237'cula'
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 622
    Width = 989
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
    Top = 114
    Width = 989
    Height = 32
    Align = alTop
    TabOrder = 3
    object BitBtn4: TBitBtn
      Left = 910
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object BitBtn3: TBitBtn
      Left = 532
      Top = 4
      Width = 101
      Height = 25
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object BitBtn1: TBitBtn
      Left = 632
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Inserir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 706
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = False
      OnClick = BitBtn2Click
    end
  end
  object sdsFuncionarioCons: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT F.*, T.NOME NOMETURMA'#13#10'FROM FUNCIONARIO F'#13#10'LEFT JOIN TURM' +
      'A T'#13#10'ON F.CODTURMA = T.ID'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 520
    Top = 280
    object sdsFuncionarioConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFuncionarioConsNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsFuncionarioConsENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object sdsFuncionarioConsCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object sdsFuncionarioConsCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object sdsFuncionarioConsFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object sdsFuncionarioConsDTADMISSAO: TDateField
      FieldName = 'DTADMISSAO'
    end
    object sdsFuncionarioConsCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object sdsFuncionarioConsBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object sdsFuncionarioConsRG: TStringField
      FieldName = 'RG'
      Size = 11
    end
    object sdsFuncionarioConsCTPS: TIntegerField
      FieldName = 'CTPS'
    end
    object sdsFuncionarioConsSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object sdsFuncionarioConsPIS: TStringField
      FieldName = 'PIS'
      Size = 11
    end
    object sdsFuncionarioConsDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object sdsFuncionarioConsHRSEMANAIS: TFloatField
      FieldName = 'HRSEMANAIS'
    end
    object sdsFuncionarioConsTIPOPGTO: TStringField
      FieldName = 'TIPOPGTO'
      Size = 1
    end
    object sdsFuncionarioConsVLRSALARIO: TFloatField
      FieldName = 'VLRSALARIO'
    end
    object sdsFuncionarioConsDTDEMISSAO: TDateField
      FieldName = 'DTDEMISSAO'
    end
    object sdsFuncionarioConsHORARIO1: TStringField
      FieldName = 'HORARIO1'
      Size = 30
    end
    object sdsFuncionarioConsHORARIO2: TStringField
      FieldName = 'HORARIO2'
      Size = 30
    end
    object sdsFuncionarioConsUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsFuncionarioConsOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsFuncionarioConsESTCIVIL: TStringField
      FieldName = 'ESTCIVIL'
      Size = 15
    end
    object sdsFuncionarioConsESCOLARIDADE: TStringField
      FieldName = 'ESCOLARIDADE'
    end
    object sdsFuncionarioConsFUNCAO: TStringField
      FieldName = 'FUNCAO'
    end
    object sdsFuncionarioConsNOMECONJUGE: TStringField
      FieldName = 'NOMECONJUGE'
      Size = 40
    end
    object sdsFuncionarioConsNUMMATRICULA: TIntegerField
      FieldName = 'NUMMATRICULA'
    end
    object sdsFuncionarioConsNOMEPAI: TStringField
      FieldName = 'NOMEPAI'
      Size = 50
    end
    object sdsFuncionarioConsNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 50
    end
    object sdsFuncionarioConsENDFOTO: TStringField
      FieldName = 'ENDFOTO'
      Size = 250
    end
    object sdsFuncionarioConsCODCIDADENASC: TIntegerField
      FieldName = 'CODCIDADENASC'
    end
    object sdsFuncionarioConsNASCIONALIDADE: TStringField
      FieldName = 'NASCIONALIDADE'
      Size = 25
    end
    object sdsFuncionarioConsSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object sdsFuncionarioConsUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object sdsFuncionarioConsCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object sdsFuncionarioConsMOTIVOSAIDA: TMemoField
      FieldName = 'MOTIVOSAIDA'
      BlobType = ftMemo
      Size = 1
    end
    object sdsFuncionarioConsCODTURMA: TIntegerField
      FieldName = 'CODTURMA'
    end
    object sdsFuncionarioConsDDD: TIntegerField
      FieldName = 'DDD'
    end
    object sdsFuncionarioConsNOMETURMA: TStringField
      FieldName = 'NOMETURMA'
      Size = 50
    end
    object sdsFuncionarioConsCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 35
    end
    object sdsFuncionarioConsNUMPONTO: TIntegerField
      FieldName = 'NUMPONTO'
    end
  end
  object dspFuncionarioCons: TDataSetProvider
    DataSet = sdsFuncionarioCons
    Left = 576
    Top = 280
  end
  object cdsFuncionarioCons: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFuncionarioCons'
    Left = 632
    Top = 272
    object cdsFuncionarioConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFuncionarioConsNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFuncionarioConsENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object cdsFuncionarioConsCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object cdsFuncionarioConsBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object cdsFuncionarioConsCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsFuncionarioConsFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cdsFuncionarioConsDTADMISSAO: TDateField
      FieldName = 'DTADMISSAO'
    end
    object cdsFuncionarioConsCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object cdsFuncionarioConsRG: TStringField
      FieldName = 'RG'
      Size = 11
    end
    object cdsFuncionarioConsCTPS: TIntegerField
      FieldName = 'CTPS'
    end
    object cdsFuncionarioConsSERIE: TStringField
      FieldName = 'SERIE'
      Size = 5
    end
    object cdsFuncionarioConsPIS: TStringField
      FieldName = 'PIS'
      Size = 11
    end
    object cdsFuncionarioConsDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object cdsFuncionarioConsHRSEMANAIS: TFloatField
      FieldName = 'HRSEMANAIS'
    end
    object cdsFuncionarioConsTIPOPGTO: TStringField
      FieldName = 'TIPOPGTO'
      Size = 1
    end
    object cdsFuncionarioConsVLRSALARIO: TFloatField
      FieldName = 'VLRSALARIO'
    end
    object cdsFuncionarioConsDTDEMISSAO: TDateField
      FieldName = 'DTDEMISSAO'
    end
    object cdsFuncionarioConsHORARIO1: TStringField
      FieldName = 'HORARIO1'
      Size = 30
    end
    object cdsFuncionarioConsHORARIO2: TStringField
      FieldName = 'HORARIO2'
      Size = 30
    end
    object cdsFuncionarioConsUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsFuncionarioConsOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsFuncionarioConsESTCIVIL: TStringField
      FieldName = 'ESTCIVIL'
      Size = 15
    end
    object cdsFuncionarioConsESCOLARIDADE: TStringField
      FieldName = 'ESCOLARIDADE'
    end
    object cdsFuncionarioConsFUNCAO: TStringField
      FieldName = 'FUNCAO'
    end
    object cdsFuncionarioConsNOMECONJUGE: TStringField
      FieldName = 'NOMECONJUGE'
      Size = 40
    end
    object cdsFuncionarioConsNUMMATRICULA: TIntegerField
      FieldName = 'NUMMATRICULA'
    end
    object cdsFuncionarioConsNOMEPAI: TStringField
      FieldName = 'NOMEPAI'
      Size = 50
    end
    object cdsFuncionarioConsNOMEMAE: TStringField
      FieldName = 'NOMEMAE'
      Size = 50
    end
    object cdsFuncionarioConsENDFOTO: TStringField
      FieldName = 'ENDFOTO'
      Size = 250
    end
    object cdsFuncionarioConsCODCIDADENASC: TIntegerField
      FieldName = 'CODCIDADENASC'
    end
    object cdsFuncionarioConsNASCIONALIDADE: TStringField
      FieldName = 'NASCIONALIDADE'
      Size = 25
    end
    object cdsFuncionarioConsSEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object cdsFuncionarioConsUFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object cdsFuncionarioConsCELULAR: TStringField
      FieldName = 'CELULAR'
      Size = 15
    end
    object cdsFuncionarioConsMOTIVOSAIDA: TMemoField
      FieldName = 'MOTIVOSAIDA'
      BlobType = ftMemo
      Size = 1
    end
    object cdsFuncionarioConsCODTURMA: TIntegerField
      FieldName = 'CODTURMA'
    end
    object cdsFuncionarioConsDDD: TIntegerField
      FieldName = 'DDD'
    end
    object cdsFuncionarioConsNOMETURMA: TStringField
      FieldName = 'NOMETURMA'
      Size = 50
    end
    object cdsFuncionarioConsCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 35
    end
    object cdsFuncionarioConsNUMPONTO: TIntegerField
      FieldName = 'NUMPONTO'
    end
  end
  object dsFuncionarioCons: TDataSource
    DataSet = cdsFuncionarioCons
    Left = 728
    Top = 280
  end
end
