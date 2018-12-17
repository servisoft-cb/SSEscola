object fAlunoC: TfAlunoC
  Left = 7
  Top = 40
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Aluno'
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
    Height = 97
    Align = alTop
    Color = clSilver
    TabOrder = 0
    DesignSize = (
      989
      97)
    object Label1: TLabel
      Left = 38
      Top = 37
      Width = 101
      Height = 13
      Caption = 'Data Cadastro Inicial:'
    end
    object Label2: TLabel
      Left = 247
      Top = 37
      Width = 25
      Height = 13
      Caption = 'Final:'
    end
    object Label3: TLabel
      Left = 108
      Top = 59
      Width = 30
      Height = 13
      Caption = 'Aluno:'
    end
    object Label4: TLabel
      Left = 87
      Top = 13
      Width = 52
      Height = 13
      Caption = 'C'#243'd.Aluno:'
    end
    object Label10: TLabel
      Left = 106
      Top = 81
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Turma:'
    end
    object Label5: TLabel
      Left = 504
      Top = 13
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Inativo:'
    end
    object Label6: TLabel
      Left = 438
      Top = 36
      Width = 101
      Height = 13
      Alignment = taRightJustify
      Caption = 'Possue Obs. M'#233'dica:'
    end
    object Label7: TLabel
      Left = 479
      Top = 57
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ordenar Por:'
    end
    object DateEdit1: TDateEdit
      Left = 141
      Top = 29
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object DateEdit2: TDateEdit
      Left = 276
      Top = 29
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
      Anchors = [akTop, akRight]
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
      Top = 74
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
      Text = 'N'#227'o Mostrar Inativo'
      Items.Strings = (
        'N'#227'o Mostrar Inativo'
        'Mostrar Somente Inativo'
        'Ambos')
    end
    object ComboBox2: TComboBox
      Left = 541
      Top = 28
      Width = 188
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 6
      Text = 'Mostrar somente os que possuem'
      Items.Strings = (
        'Mostrar somente os que possuem'
        'N'#227'o Mostrar'
        'Ambos')
    end
    object Edit1: TEdit
      Left = 141
      Top = 51
      Width = 320
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object ComboBox3: TComboBox
      Left = 541
      Top = 49
      Width = 188
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 8
      Text = 'Nome Aluno'
      Items.Strings = (
        'C'#243'digo Matr'#237'cula'
        'Nome Aluno'
        'Dt.Nascimento'
        'Turma'
        'Cidade')
    end
    object CheckBox1: TCheckBox
      Left = 864
      Top = 48
      Width = 121
      Height = 17
      Anchors = [akTop, akRight]
      Caption = 'Mostrar os Eventos'
      TabOrder = 9
      OnClick = CheckBox1Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 129
    Width = 989
    Height = 308
    Align = alClient
    DataSource = dsAlunoCons
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
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    OnGetCellParams = SMDBGrid1GetCellParams
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
        Width = 44
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODIGO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Matr'#237'cula'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Aluno'
        Width = 266
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_RESPONSAVEL'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Respons'#225'vel'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CPF_REPONSAVEL'
        Title.Alignment = taCenter
        Title.Caption = 'CPF do Respons'#225'vel'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DDD'
        Title.Alignment = taCenter
        Width = 36
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FONE'
        Title.Alignment = taCenter
        Title.Caption = 'Fone'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clIdadeTexto'
        Title.Alignment = taCenter
        Title.Caption = 'Idade'
        Width = 146
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECIDADE'
        Title.Alignment = taCenter
        Title.Caption = 'Cidade'
        Width = 171
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMETURMA'
        Title.Alignment = taCenter
        Title.Caption = 'Turma'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTNASCIMENTO'
        Title.Alignment = taCenter
        Title.Caption = 'Data Nascimento'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'INATIVO'
        Title.Alignment = taCenter
        Title.Caption = 'Inativo'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'POSSUE_OBSMEDICA'
        Title.Alignment = taCenter
        Title.Caption = 'Possue Observa'#231#227'o M'#233'dica'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IDADE_FINAL_ANOS'
        Title.Alignment = taCenter
        Title.Caption = 'Idade Final (Anos)'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IDADE_FINAL_MESES'
        Title.Alignment = taCenter
        Title.Caption = 'Idade Final (Meses)'
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
    Top = 97
    Width = 989
    Height = 32
    Align = alTop
    TabOrder = 3
    object Shape1: TShape
      Left = 8
      Top = 5
      Width = 25
      Height = 17
      Brush.Color = clRed
    end
    object Label8: TLabel
      Left = 37
      Top = 8
      Width = 32
      Height = 13
      Caption = 'Inativo'
    end
    object BitBtn4: TBitBtn
      Left = 774
      Top = 3
      Width = 83
      Height = 25
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn4Click
    end
    object BitBtn3: TBitBtn
      Left = 396
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
      Left = 496
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
      Left = 570
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
    object BitBtn6: TBitBtn
      Left = 858
      Top = 3
      Width = 83
      Height = 25
      Caption = 'Imprimir Ficha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn6Click
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 437
    Width = 989
    Height = 185
    Align = alBottom
    Caption = 'Eventos do Aluno Selecionado'
    Color = clSilver
    ParentColor = False
    TabOrder = 4
    Visible = False
    object SMDBGrid2: TSMDBGrid
      Left = 2
      Top = 15
      Width = 985
      Height = 135
      Align = alClient
      DataSource = dsAluno_EventoCons
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = SMDBGrid2DblClick
      OnKeyDown = SMDBGrid2KeyDown
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
      RowCount = 2
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODEVENTO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Evento'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMEEVENTO'
          Title.Alignment = taCenter
          Title.Caption = 'Nome Evento'
          Width = 234
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Evento'
          Width = 132
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QTD'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde.'
          Width = 137
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 2
      Top = 150
      Width = 985
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
    end
  end
  object sdsAlunoCons: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT AL.*, T.NOME NOMETURMA, T.IDADE_FINAL_ANOS, T.IDADE_FINAL' +
      '_MESES, CID.NOME NOMECIDADE'#13#10'FROM ALUNO AL'#13#10'LEFT JOIN TURMA T'#13#10'O' +
      'N AL.CODTURMA = T.ID'#13#10'LEFT JOIN CIDADE CID'#13#10'ON AL.CODCIDADE = CI' +
      'D.ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 520
    Top = 280
    object sdsAlunoConsID: TIntegerField
      FieldName = 'ID'
    end
    object sdsAlunoConsCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object sdsAlunoConsNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsAlunoConsENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object sdsAlunoConsCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object sdsAlunoConsCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsAlunoConsUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object sdsAlunoConsCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object sdsAlunoConsBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsAlunoConsDDD: TIntegerField
      FieldName = 'DDD'
    end
    object sdsAlunoConsFONE: TStringField
      FieldName = 'FONE'
      Size = 10
    end
    object sdsAlunoConsNOME_PAI: TStringField
      FieldName = 'NOME_PAI'
      Size = 50
    end
    object sdsAlunoConsCPF_PAI: TStringField
      FieldName = 'CPF_PAI'
      Size = 14
    end
    object sdsAlunoConsDDD_PAI: TIntegerField
      FieldName = 'DDD_PAI'
    end
    object sdsAlunoConsFONE_PAI: TStringField
      FieldName = 'FONE_PAI'
      Size = 10
    end
    object sdsAlunoConsNOME_MAE: TStringField
      FieldName = 'NOME_MAE'
      Size = 50
    end
    object sdsAlunoConsCPF_MAE: TStringField
      FieldName = 'CPF_MAE'
      Size = 14
    end
    object sdsAlunoConsDDD_MAE: TIntegerField
      FieldName = 'DDD_MAE'
    end
    object sdsAlunoConsFONE_MAE: TStringField
      FieldName = 'FONE_MAE'
      Size = 10
    end
    object sdsAlunoConsTIPOCPF: TStringField
      FieldName = 'TIPOCPF'
      FixedChar = True
      Size = 1
    end
    object sdsAlunoConsNOME_RESPONSAVEL: TStringField
      FieldName = 'NOME_RESPONSAVEL'
      Size = 50
    end
    object sdsAlunoConsCPF_REPONSAVEL: TStringField
      FieldName = 'CPF_REPONSAVEL'
      Size = 14
    end
    object sdsAlunoConsDIACOBRANCA: TIntegerField
      FieldName = 'DIACOBRANCA'
    end
    object sdsAlunoConsCODTURMA: TIntegerField
      FieldName = 'CODTURMA'
    end
    object sdsAlunoConsOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsAlunoConsTIPO_RESPONSAVEL: TStringField
      FieldName = 'TIPO_RESPONSAVEL'
      FixedChar = True
      Size = 1
    end
    object sdsAlunoConsINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsAlunoConsDTINATIVO: TDateField
      FieldName = 'DTINATIVO'
    end
    object sdsAlunoConsDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object sdsAlunoConsOBS_MEDICA: TMemoField
      FieldName = 'OBS_MEDICA'
      BlobType = ftMemo
      Size = 1
    end
    object sdsAlunoConsPOSSUE_OBSMEDICA: TStringField
      FieldName = 'POSSUE_OBSMEDICA'
      FixedChar = True
      Size = 1
    end
    object sdsAlunoConsOBS_FREQUENCIA: TMemoField
      FieldName = 'OBS_FREQUENCIA'
      BlobType = ftMemo
      Size = 1
    end
    object sdsAlunoConsMES_INICIO: TIntegerField
      FieldName = 'MES_INICIO'
    end
    object sdsAlunoConsANO_INICIO: TIntegerField
      FieldName = 'ANO_INICIO'
    end
    object sdsAlunoConsMES_FINAL: TIntegerField
      FieldName = 'MES_FINAL'
    end
    object sdsAlunoConsANO_FINAL: TIntegerField
      FieldName = 'ANO_FINAL'
    end
    object sdsAlunoConsRECIBO_BOLETO: TStringField
      FieldName = 'RECIBO_BOLETO'
      FixedChar = True
      Size = 1
    end
    object sdsAlunoConsEND_FOTO: TStringField
      FieldName = 'END_FOTO'
      Size = 200
    end
    object sdsAlunoConsSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object sdsAlunoConsDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsAlunoConsNOMETURMA: TStringField
      FieldName = 'NOMETURMA'
      Size = 50
    end
    object sdsAlunoConsIDADE_FINAL_ANOS: TIntegerField
      FieldName = 'IDADE_FINAL_ANOS'
    end
    object sdsAlunoConsIDADE_FINAL_MESES: TIntegerField
      FieldName = 'IDADE_FINAL_MESES'
    end
    object sdsAlunoConsNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      Size = 40
    end
    object sdsAlunoConsPOSSUE_OBSNUTRICIONAIS: TStringField
      FieldName = 'POSSUE_OBSNUTRICIONAIS'
      FixedChar = True
      Size = 1
    end
    object sdsAlunoConsOBS_NUTRICIONAIS: TMemoField
      FieldName = 'OBS_NUTRICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspAlunoCons: TDataSetProvider
    DataSet = sdsAlunoCons
    Left = 576
    Top = 280
  end
  object cdsAlunoCons: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAlunoCons'
    OnCalcFields = cdsAlunoConsCalcFields
    Left = 640
    Top = 272
    object cdsAlunoConsID: TIntegerField
      FieldName = 'ID'
    end
    object cdsAlunoConsCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsAlunoConsNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsAlunoConsENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object cdsAlunoConsCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
    end
    object cdsAlunoConsCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsAlunoConsUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsAlunoConsCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object cdsAlunoConsBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsAlunoConsDDD: TIntegerField
      FieldName = 'DDD'
    end
    object cdsAlunoConsFONE: TStringField
      FieldName = 'FONE'
      Size = 10
    end
    object cdsAlunoConsNOME_PAI: TStringField
      FieldName = 'NOME_PAI'
      Size = 50
    end
    object cdsAlunoConsCPF_PAI: TStringField
      FieldName = 'CPF_PAI'
      Size = 14
    end
    object cdsAlunoConsDDD_PAI: TIntegerField
      FieldName = 'DDD_PAI'
    end
    object cdsAlunoConsFONE_PAI: TStringField
      FieldName = 'FONE_PAI'
      Size = 10
    end
    object cdsAlunoConsNOME_MAE: TStringField
      FieldName = 'NOME_MAE'
      Size = 50
    end
    object cdsAlunoConsCPF_MAE: TStringField
      FieldName = 'CPF_MAE'
      Size = 14
    end
    object cdsAlunoConsDDD_MAE: TIntegerField
      FieldName = 'DDD_MAE'
    end
    object cdsAlunoConsFONE_MAE: TStringField
      FieldName = 'FONE_MAE'
      Size = 10
    end
    object cdsAlunoConsTIPOCPF: TStringField
      FieldName = 'TIPOCPF'
      FixedChar = True
      Size = 1
    end
    object cdsAlunoConsNOME_RESPONSAVEL: TStringField
      FieldName = 'NOME_RESPONSAVEL'
      Size = 50
    end
    object cdsAlunoConsCPF_REPONSAVEL: TStringField
      FieldName = 'CPF_REPONSAVEL'
      Size = 14
    end
    object cdsAlunoConsDIACOBRANCA: TIntegerField
      FieldName = 'DIACOBRANCA'
    end
    object cdsAlunoConsCODTURMA: TIntegerField
      FieldName = 'CODTURMA'
    end
    object cdsAlunoConsOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAlunoConsTIPO_RESPONSAVEL: TStringField
      FieldName = 'TIPO_RESPONSAVEL'
      FixedChar = True
      Size = 1
    end
    object cdsAlunoConsINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsAlunoConsDTINATIVO: TDateField
      FieldName = 'DTINATIVO'
    end
    object cdsAlunoConsDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
    end
    object cdsAlunoConsOBS_MEDICA: TMemoField
      FieldName = 'OBS_MEDICA'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAlunoConsPOSSUE_OBSMEDICA: TStringField
      FieldName = 'POSSUE_OBSMEDICA'
      FixedChar = True
      Size = 1
    end
    object cdsAlunoConsOBS_FREQUENCIA: TMemoField
      FieldName = 'OBS_FREQUENCIA'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAlunoConsMES_INICIO: TIntegerField
      FieldName = 'MES_INICIO'
    end
    object cdsAlunoConsANO_INICIO: TIntegerField
      FieldName = 'ANO_INICIO'
    end
    object cdsAlunoConsMES_FINAL: TIntegerField
      FieldName = 'MES_FINAL'
    end
    object cdsAlunoConsANO_FINAL: TIntegerField
      FieldName = 'ANO_FINAL'
    end
    object cdsAlunoConsRECIBO_BOLETO: TStringField
      FieldName = 'RECIBO_BOLETO'
      FixedChar = True
      Size = 1
    end
    object cdsAlunoConsEND_FOTO: TStringField
      FieldName = 'END_FOTO'
      Size = 200
    end
    object cdsAlunoConsSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object cdsAlunoConsDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsAlunoConsNOMETURMA: TStringField
      FieldName = 'NOMETURMA'
      Size = 50
    end
    object cdsAlunoConsIDADE_FINAL_ANOS: TIntegerField
      FieldName = 'IDADE_FINAL_ANOS'
    end
    object cdsAlunoConsIDADE_FINAL_MESES: TIntegerField
      FieldName = 'IDADE_FINAL_MESES'
    end
    object cdsAlunoConsNOMECIDADE: TStringField
      FieldName = 'NOMECIDADE'
      Size = 40
    end
    object cdsAlunoConsclIdadeTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'clIdadeTexto'
      Calculated = True
    end
    object cdsAlunoConsPOSSUE_OBSNUTRICIONAIS: TStringField
      FieldName = 'POSSUE_OBSNUTRICIONAIS'
      FixedChar = True
      Size = 1
    end
    object cdsAlunoConsOBS_NUTRICIONAIS: TMemoField
      FieldName = 'OBS_NUTRICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAlunoConssdsAluno_EventoCons: TDataSetField
      FieldName = 'sdsAluno_EventoCons'
    end
  end
  object dsAlunoCons: TDataSource
    DataSet = cdsAlunoCons
    Left = 712
    Top = 280
  end
  object sdsAluno_EventoCons: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT A.*, E.NOME NOMEEVENTO'#13#10'FROM ALUNO_EVENTO A'#13#10'INNER JOIN E' +
      'VENTO E'#13#10'ON A.CODEVENTO = E.ID'#13#10'WHERE A.ID = :ID'
    DataSource = dsAlunoCons_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 584
    Top = 440
    object sdsAluno_EventoConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsAluno_EventoConsCODEVENTO: TIntegerField
      FieldName = 'CODEVENTO'
      Required = True
    end
    object sdsAluno_EventoConsVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsAluno_EventoConsDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object sdsAluno_EventoConsDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
    object sdsAluno_EventoConsOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsAluno_EventoConsANO_INICIO: TIntegerField
      FieldName = 'ANO_INICIO'
    end
    object sdsAluno_EventoConsMES_INICIO: TIntegerField
      FieldName = 'MES_INICIO'
    end
    object sdsAluno_EventoConsANO_FINAL: TIntegerField
      FieldName = 'ANO_FINAL'
    end
    object sdsAluno_EventoConsMES_FINAL: TIntegerField
      FieldName = 'MES_FINAL'
    end
    object sdsAluno_EventoConsQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsAluno_EventoConsNOMEEVENTO: TStringField
      FieldName = 'NOMEEVENTO'
      ProviderFlags = []
      Size = 30
    end
  end
  object cdsAluno_EventoCons: TClientDataSet
    Aggregates = <>
    DataSetField = cdsAlunoConssdsAluno_EventoCons
    Params = <>
    Left = 648
    Top = 440
    object cdsAluno_EventoConsID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAluno_EventoConsCODEVENTO: TIntegerField
      FieldName = 'CODEVENTO'
      Required = True
    end
    object cdsAluno_EventoConsVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsAluno_EventoConsDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object cdsAluno_EventoConsDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
    object cdsAluno_EventoConsOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAluno_EventoConsANO_INICIO: TIntegerField
      FieldName = 'ANO_INICIO'
    end
    object cdsAluno_EventoConsMES_INICIO: TIntegerField
      FieldName = 'MES_INICIO'
    end
    object cdsAluno_EventoConsANO_FINAL: TIntegerField
      FieldName = 'ANO_FINAL'
    end
    object cdsAluno_EventoConsMES_FINAL: TIntegerField
      FieldName = 'MES_FINAL'
    end
    object cdsAluno_EventoConsQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsAluno_EventoConsNOMEEVENTO: TStringField
      FieldName = 'NOMEEVENTO'
      ProviderFlags = []
      Size = 30
    end
  end
  object dsAlunoCons_Mestre: TDataSource
    DataSet = sdsAlunoCons
    Left = 496
    Top = 336
  end
  object dsAluno_EventoCons: TDataSource
    DataSet = cdsAluno_EventoCons
    Left = 712
    Top = 440
  end
  object qProximoCod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(CODIGO) CODIGO'
      'FROM ALUNO')
    SQLConnection = dmDatabase.scoDados
    Left = 304
    Top = 320
    object qProximoCodCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
  end
end
