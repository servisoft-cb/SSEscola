object fAluno: TfAluno
  Left = 71
  Top = 7
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Alunos'
  ClientHeight = 695
  ClientWidth = 849
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
    Width = 849
    Height = 39
    Align = alTop
    TabOrder = 0
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
    Width = 849
    Height = 298
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 695
      Top = 9
      Width = 14
      Height = 13
      Caption = 'ID:'
    end
    object Label2: TLabel
      Left = 262
      Top = 12
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. Nascimento'
    end
    object Label7: TLabel
      Left = 27
      Top = 35
      Width = 61
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome Aluno:'
    end
    object Label13: TLabel
      Left = 39
      Top = 125
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'Endere'#231'o:'
    end
    object Label3: TLabel
      Left = 15
      Top = 10
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'd. Matr'#237'cula:'
    end
    object Label4: TLabel
      Left = 23
      Top = 58
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'Respons'#225'vel:'
    end
    object Label5: TLabel
      Left = 441
      Top = 57
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'CPF:'
    end
    object Label14: TLabel
      Left = 61
      Top = 80
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fone:'
    end
    object Label15: TLabel
      Left = 52
      Top = 103
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cidade:'
    end
    object Image1: TImage
      Left = 632
      Top = 56
      Width = 209
      Height = 193
      Stretch = True
    end
    object Label6: TLabel
      Left = 379
      Top = 101
      Width = 17
      Height = 13
      Alignment = taRightJustify
      Caption = 'UF:'
    end
    object Label8: TLabel
      Left = 64
      Top = 147
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'CEP:'
    end
    object Label11: TLabel
      Left = 194
      Top = 147
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Bairro:'
    end
    object Label21: TLabel
      Left = 55
      Top = 169
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Turma:'
    end
    object Label52: TLabel
      Left = 472
      Top = 237
      Width = 88
      Height = 13
      Caption = 'Endere'#231'o da Foto:'
    end
    object Label25: TLabel
      Left = 26
      Top = 215
      Width = 62
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. Cadastro:'
    end
    object Label26: TLabel
      Left = 472
      Top = 189
      Width = 52
      Height = 13
      Caption = 'Dt. Inativo:'
      Visible = False
    end
    object Label27: TLabel
      Left = 61
      Top = 192
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Sexo:'
    end
    object DBEdit1: TDBEdit
      Left = 711
      Top = 1
      Width = 102
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'ID'
      DataSource = DMAluno.dsAluno
      ReadOnly = True
      TabOrder = 21
    end
    object DBDateEdit1: TDBDateEdit
      Left = 338
      Top = 4
      Width = 100
      Height = 21
      DataField = 'DTNASCIMENTO'
      DataSource = DMAluno.dsAluno
      NumGlyphs = 2
      TabOrder = 1
    end
    object DBEdit6: TDBEdit
      Left = 90
      Top = 27
      Width = 346
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DMAluno.dsAluno
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 90
      Top = 117
      Width = 346
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = DMAluno.dsAluno
      TabOrder = 9
    end
    object DBEdit3: TDBEdit
      Left = 90
      Top = 2
      Width = 127
      Height = 21
      CharCase = ecUpperCase
      Color = clInfoBk
      DataField = 'CODIGO'
      DataSource = DMAluno.dsAluno
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 90
      Top = 50
      Width = 346
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME_RESPONSAVEL'
      DataSource = DMAluno.dsAluno
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 466
      Top = 49
      Width = 135
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CPF_REPONSAVEL'
      DataSource = DMAluno.dsAluno
      TabOrder = 4
      OnEnter = DBEdit5Enter
      OnExit = DBEdit5Exit
    end
    object DBEdit8: TDBEdit
      Left = 90
      Top = 72
      Width = 39
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DDD'
      DataSource = DMAluno.dsAluno
      TabOrder = 5
    end
    object DBEdit9: TDBEdit
      Left = 130
      Top = 72
      Width = 159
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FONE'
      DataSource = DMAluno.dsAluno
      TabOrder = 6
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 90
      Top = 95
      Width = 269
      Height = 21
      DropDownCount = 8
      DataField = 'CODCIDADE'
      DataSource = DMAluno.dsAluno
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCidade.dsCidade
      TabOrder = 7
      OnExit = RxDBLookupCombo4Exit
    end
    object DBEdit10: TDBEdit
      Left = 398
      Top = 93
      Width = 39
      Height = 21
      CharCase = ecUpperCase
      DataField = 'UF'
      DataSource = DMAluno.dsAluno
      ReadOnly = True
      TabOrder = 8
    end
    object DBEdit11: TDBEdit
      Left = 90
      Top = 139
      Width = 95
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CEP'
      DataSource = DMAluno.dsAluno
      TabOrder = 10
    end
    object DBEdit12: TDBEdit
      Left = 226
      Top = 139
      Width = 210
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = DMAluno.dsAluno
      TabOrder = 11
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 90
      Top = 161
      Width = 269
      Height = 21
      DropDownCount = 8
      DataField = 'CODTURMA'
      DataSource = DMAluno.dsAluno
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMTurma.dsTurma
      TabOrder = 12
    end
    object DBCheckBox1: TDBCheckBox
      Left = 90
      Top = 237
      Width = 179
      Height = 17
      Caption = 'Possue Observa'#231#245'es M'#233'dicas'
      DataField = 'POSSUE_OBSMEDICA'
      DataSource = DMAluno.dsAluno
      TabOrder = 17
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      OnClick = DBCheckBox1Click
    end
    object BitBtn3: TBitBtn
      Left = 563
      Top = 227
      Width = 25
      Height = 25
      Hint = 'Abre o caminho p/ localizar a foto'
      TabOrder = 19
      OnClick = BitBtn3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F75F75500FFFFFF0FF0105577F555FF7F57575550FF700008
        8F0055575FF7777555775555000888888F005555777FFFFFFF77555550000000
        0F055555577777777F7F555550FFFFFF0F05555557F5FFF57F7F555550F000FF
        0005555557F777557775555550FFFFFF0555555557F555FF7F55555550FF7000
        05555555575FF777755555555500055555555555557775555555}
      NumGlyphs = 2
    end
    object DBEdit24: TDBEdit
      Left = 472
      Top = 253
      Width = 373
      Height = 21
      CharCase = ecUpperCase
      DataField = 'END_FOTO'
      DataSource = DMAluno.dsAluno
      TabOrder = 20
      OnChange = DBEdit24Change
    end
    object DBDateEdit2: TDBDateEdit
      Left = 90
      Top = 207
      Width = 129
      Height = 21
      DataField = 'DTCADASTRO'
      DataSource = DMAluno.dsAluno
      NumGlyphs = 2
      TabOrder = 16
    end
    object DBCheckBox2: TDBCheckBox
      Left = 396
      Top = 185
      Width = 69
      Height = 17
      Caption = 'Inativo'
      DataField = 'INATIVO'
      DataSource = DMAluno.dsAluno
      TabOrder = 14
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      OnClick = DBCheckBox2Click
    end
    object DBDateEdit3: TDBDateEdit
      Left = 528
      Top = 181
      Width = 100
      Height = 21
      DataField = 'DTINATIVO'
      DataSource = DMAluno.dsAluno
      NumGlyphs = 2
      TabOrder = 15
      Visible = False
    end
    object RxDBComboBox4: TRxDBComboBox
      Left = 90
      Top = 184
      Width = 129
      Height = 21
      Style = csDropDownList
      DataField = 'SEXO'
      DataSource = DMAluno.dsAluno
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'Masculino'
        'Feminino')
      TabOrder = 13
      Values.Strings = (
        'M'
        'F')
    end
    object DBCheckBox3: TDBCheckBox
      Left = 90
      Top = 261
      Width = 179
      Height = 17
      Caption = 'Possue Observa'#231#245'es Nutricionais'
      DataField = 'POSSUE_OBSNUTRICIONAIS'
      DataSource = DMAluno.dsAluno
      TabOrder = 18
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      OnClick = DBCheckBox3Click
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 337
    Width = 849
    Height = 358
    ActivePage = TabSheet3
    ActivePageDefault = TabSheet7
    Align = alClient
    TabIndex = 2
    TabOrder = 2
    FixedDimension = 19
    object TabSheet7: TRzTabSheet
      Caption = 'Financeiro'
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 845
        Height = 335
        Align = alClient
        TabOrder = 0
        object Label10: TLabel
          Left = 47
          Top = 16
          Width = 83
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dia de Cobran'#231'a:'
        end
        object Label22: TLabel
          Left = 4
          Top = 38
          Width = 126
          Height = 13
          Alignment = taRightJustify
          Caption = 'M'#234's/Ano In'#237'cio Cobran'#231'a:'
        end
        object Label23: TLabel
          Left = 9
          Top = 62
          Width = 121
          Height = 13
          Alignment = taRightJustify
          Caption = 'M'#234's/Ano Final Cobran'#231'a:'
        end
        object Label24: TLabel
          Left = 16
          Top = 86
          Width = 114
          Height = 13
          Alignment = taRightJustify
          Caption = 'Emite Recibo ou Boleto:'
        end
        object DBEdit7: TDBEdit
          Left = 132
          Top = 8
          Width = 64
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DIACOBRANCA'
          DataSource = DMAluno.dsAluno
          TabOrder = 0
        end
        object RxDBComboBox1: TRxDBComboBox
          Left = 132
          Top = 30
          Width = 129
          Height = 21
          Style = csDropDownList
          DataField = 'MES_INICIO'
          DataSource = DMAluno.dsAluno
          EnableValues = True
          ItemHeight = 13
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
          TabOrder = 1
          Values.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12')
        end
        object DBEdit22: TDBEdit
          Left = 262
          Top = 29
          Width = 71
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ANO_INICIO'
          DataSource = DMAluno.dsAluno
          TabOrder = 2
        end
        object DBEdit21: TDBEdit
          Left = 262
          Top = 54
          Width = 71
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ANO_FINAL'
          DataSource = DMAluno.dsAluno
          TabOrder = 4
        end
        object RxDBComboBox2: TRxDBComboBox
          Left = 132
          Top = 54
          Width = 129
          Height = 21
          Style = csDropDownList
          DataField = 'MES_FINAL'
          DataSource = DMAluno.dsAluno
          EnableValues = True
          ItemHeight = 13
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
          TabOrder = 3
          Values.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12')
        end
        object RxDBComboBox3: TRxDBComboBox
          Left = 132
          Top = 78
          Width = 127
          Height = 21
          Style = csDropDownList
          DataField = 'RECIBO_BOLETO'
          DataSource = DMAluno.dsAluno
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'Recibo'
            'Boleto')
          TabOrder = 5
          Values.Strings = (
            'R'
            'B')
        end
      end
    end
    object TabSheet6: TRzTabSheet
      Caption = 'Dados Fam'#237'lia'
      object Label12: TLabel
        Left = 32
        Top = 18
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome do Pai:'
      end
      object Label16: TLabel
        Left = 26
        Top = 42
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome da M'#227'e:'
      end
      object Label17: TLabel
        Left = 449
        Top = 17
        Width = 23
        Height = 13
        Alignment = taRightJustify
        Caption = 'CPF:'
      end
      object Label18: TLabel
        Left = 449
        Top = 41
        Width = 23
        Height = 13
        Alignment = taRightJustify
        Caption = 'CPF:'
      end
      object Label19: TLabel
        Left = 613
        Top = 16
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fone:'
      end
      object Label20: TLabel
        Left = 613
        Top = 38
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fone:'
      end
      object DBEdit13: TDBEdit
        Left = 98
        Top = 10
        Width = 343
        Height = 21
        DataField = 'NOME_PAI'
        DataSource = DMAluno.dsAluno
        TabOrder = 0
      end
      object DBEdit14: TDBEdit
        Left = 98
        Top = 34
        Width = 343
        Height = 21
        DataField = 'NOME_MAE'
        DataSource = DMAluno.dsAluno
        TabOrder = 4
      end
      object DBEdit15: TDBEdit
        Left = 474
        Top = 9
        Width = 135
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CPF_PAI'
        DataSource = DMAluno.dsAluno
        TabOrder = 1
        OnEnter = DBEdit15Enter
        OnExit = DBEdit15Exit
      end
      object DBEdit16: TDBEdit
        Left = 474
        Top = 33
        Width = 135
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CPF_MAE'
        DataSource = DMAluno.dsAluno
        TabOrder = 5
        OnEnter = DBEdit16Enter
        OnExit = DBEdit16Exit
      end
      object DBEdit17: TDBEdit
        Left = 642
        Top = 8
        Width = 39
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DDD_PAI'
        DataSource = DMAluno.dsAluno
        TabOrder = 2
      end
      object DBEdit18: TDBEdit
        Left = 682
        Top = 8
        Width = 119
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FONE_PAI'
        DataSource = DMAluno.dsAluno
        TabOrder = 3
      end
      object DBEdit19: TDBEdit
        Left = 642
        Top = 30
        Width = 39
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DDD_MAE'
        DataSource = DMAluno.dsAluno
        TabOrder = 6
      end
      object DBEdit20: TDBEdit
        Left = 682
        Top = 30
        Width = 119
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FONE_MAE'
        DataSource = DMAluno.dsAluno
        TabOrder = 7
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = 'Observa'#231#227'o Geral (Vai imprimir no Recibo)'
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 845
        Height = 335
        Align = alClient
        DataField = 'OBS'
        DataSource = DMAluno.dsAluno
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Frequ'#234'ncia'
      object DBMemo2: TDBMemo
        Left = 0
        Top = 0
        Width = 845
        Height = 335
        Align = alClient
        DataField = 'OBS_FREQUENCIA'
        DataSource = DMAluno.dsAluno
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet4: TRzTabSheet
      Caption = 'Observa'#231#227'o M'#233'dica'
      object DBMemo3: TDBMemo
        Left = 0
        Top = 0
        Width = 845
        Height = 335
        Align = alClient
        DataField = 'OBS_MEDICA'
        DataSource = DMAluno.dsAluno
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet5: TRzTabSheet
      Caption = 'Obs_Nutricionais'
      object DBMemo4: TDBMemo
        Left = 0
        Top = 0
        Width = 845
        Height = 335
        Align = alClient
        DataField = 'OBS_NUTRICIONAIS'
        DataSource = DMAluno.dsAluno
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet1: TRzTabSheet
      Caption = 'Eventos'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 45
        Width = 845
        Height = 290
        Align = alClient
        DataSource = DMAluno.dsAluno_Evento
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
            Expanded = False
            FieldName = 'CODEVENTO'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Evento'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEEVENTO'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Nome Evento'
            Width = 219
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTINICIO'
            Title.Alignment = taCenter
            Title.Caption = 'Data In'#237'cio'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTTERMINO'
            Title.Alignment = taCenter
            Title.Caption = 'Data T'#233'rmino'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Informado para este Aluno'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOREVENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Valor no Cadastro  do EVENTO'
            Width = 119
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 845
        Height = 45
        Align = alTop
        Color = clSilver
        TabOrder = 1
        object SpeedButton2: TSpeedButton
          Left = 763
          Top = 12
          Width = 30
          Height = 25
          Hint = 'Cancela a inser'#231#227'o de um item'
          Glyph.Data = {
            CE070000424DCE07000000000000360000002800000024000000120000000100
            18000000000098070000CE0E0000C40E00000000000000000000008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080808080808080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080FFFFFF008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800000FF0000
            800000808080800080800080800080800080800080800000FF80808000808000
            8080008080008080008080008080008080008080808080808080FFFFFF008080
            008080008080008080008080008080FFFFFF0080800080800080800080800080
            800080800080800000FF00008000008000008080808000808000808000808000
            00FF000080000080808080008080008080008080008080008080008080808080
            FFFFFF008080808080FFFFFF008080008080008080FFFFFF808080808080FFFF
            FF0080800080800080800080800080800080800000FF00008000008000008000
            00808080800080800000FF000080000080000080000080808080008080008080
            008080008080008080808080FFFFFF008080008080808080FFFFFF008080FFFF
            FF808080008080008080808080FFFFFF00808000808000808000808000808000
            80800000FF000080000080000080000080808080000080000080000080000080
            000080808080008080008080008080008080008080808080FFFFFF0080800080
            80008080808080FFFFFF808080008080008080008080008080808080FFFFFF00
            80800080800080800080800080800080800000FF000080000080000080000080
            0000800000800000800000808080800080800080800080800080800080800080
            80008080808080FFFFFF00808000808000808080808000808000808000808000
            8080FFFFFF808080008080008080008080008080008080008080008080008080
            0000FF0000800000800000800000800000800000808080800080800080800080
            80008080008080008080008080008080008080808080FFFFFF00808000808000
            8080008080008080008080FFFFFF808080008080008080008080008080008080
            0080800080800080800080800080800000800000800000800000800000808080
            8000808000808000808000808000808000808000808000808000808000808000
            8080808080FFFFFF008080008080008080008080008080808080008080008080
            0080800080800080800080800080800080800080800080800080800000FF0000
            8000008000008000008080808000808000808000808000808000808000808000
            8080008080008080008080008080008080808080FFFFFF008080008080008080
            8080800080800080800080800080800080800080800080800080800080800080
            800080800000FF00008000008000008000008000008080808000808000808000
            8080008080008080008080008080008080008080008080008080008080808080
            008080008080008080008080808080FFFFFF0080800080800080800080800080
            800080800080800080800080800000FF00008000008000008080808000008000
            0080000080808080008080008080008080008080008080008080008080008080
            008080008080808080008080008080008080008080008080808080FFFFFF0080
            800080800080800080800080800080800080800080800000FF00008000008000
            00808080800080800000FF000080000080000080808080008080008080008080
            008080008080008080008080008080808080008080008080008080808080FFFF
            FF008080008080808080FFFFFF00808000808000808000808000808000808000
            80800000FF0000800000808080800080800080800080800000FF000080000080
            000080808080008080008080008080008080008080008080808080FFFFFF0080
            80008080808080008080808080FFFFFF008080008080808080FFFFFF00808000
            80800080800080800080800080800080800000FF000080008080008080008080
            0080800080800000FF0000800000800000800080800080800080800080800080
            80008080808080FFFFFFFFFFFF808080008080008080008080808080FFFFFF00
            8080008080808080FFFFFF008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800000FF0000800000FF0080
            8000808000808000808000808000808000808080808080808000808000808000
            8080008080008080808080FFFFFFFFFFFFFFFFFF808080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080808080808080808080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            008080008080008080008080008080008080}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 734
          Top = 12
          Width = 30
          Height = 25
          Hint = 'Exclui o item selecionado ao lado'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
            3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
            33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
            33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
            333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
            03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
            33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
            0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
            3333333337FFF7F3333333333000003333333333377777333333}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton3Click
        end
        object Label9: TLabel
          Left = 180
          Top = 3
          Width = 34
          Height = 13
          Caption = 'Evento'
        end
        object Label28: TLabel
          Left = 526
          Top = 2
          Width = 41
          Height = 13
          Caption = 'Dt.In'#237'cio'
        end
        object Label29: TLabel
          Left = 625
          Top = 2
          Width = 36
          Height = 13
          Caption = 'Dt.Final'
        end
        object Label30: TLabel
          Left = 388
          Top = 3
          Width = 20
          Height = 13
          Caption = 'Qtd.'
        end
        object Label31: TLabel
          Left = 461
          Top = 3
          Width = 24
          Height = 13
          Caption = 'Valor'
        end
        object Label32: TLabel
          Left = 28
          Top = 4
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object BitBtn7: TBitBtn
          Left = 704
          Top = 12
          Width = 30
          Height = 25
          Hint = 'Confirma a inser'#231#227'o de um item'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = BitBtn7Click
          Glyph.Data = {
            CE070000424DCE07000000000000360000002800000024000000120000000100
            18000000000098070000CE0E0000D80E00000000000000000000008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080FFFFFF008080008080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8080000080000000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080808080808080FFFFFF
            FFFFFF0080800080800080800080800080800080800080800080800080800080
            8000808000808000808080000000800000800080000000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            808080808080808080808080FFFFFFFFFFFF0080800080800080800080800080
            8000808000808000808000808000808000808080000000800000800000800000
            8000800000008080008080008080008080008080008080008080008080008080
            008080008080008080808080808080808080808080808080808080FFFFFFFFFF
            FF00808000808000808000808000808000808000808000808000808080000000
            8000008000008000008000008000008000800000008080008080008080008080
            0080800080800080800080800080800080808080808080808080808080808080
            80808080808080808080808080FFFFFF00808000808000808000808000808000
            808000808080000000800000800000800000FF00008000008000008000008000
            8000000080800080800080800080800080800080800080800080808080808080
            80808080808080FFFFFF808080808080808080808080808080FFFFFF00808000
            808000808000808000808000808000808000800000800000800000FF00008080
            00FF000080000080000080008000000080800080800080800080800080800080
            80008080008080808080808080808080FFFFFF008080FFFFFF80808080808080
            8080808080FFFFFFFFFFFF00808000808000808000808000808000808000FF00
            00800000FF0000808000808000808000FF000080000080000080008000000080
            80008080008080008080008080008080008080808080808080FFFFFF00808000
            8080008080FFFFFF808080808080808080808080FFFFFFFFFFFF008080008080
            00808000808000808000808000FF0000808000808000808000808000808000FF
            0000800000800000800080000000808000808000808000808000808000808000
            8080FFFFFF008080008080008080008080008080FFFFFF808080808080808080
            808080FFFFFFFFFFFF0080800080800080800080800080800080800080800080
            8000808000808000808000808000FF0000800000800000800080000000808000
            8080008080008080008080008080008080008080008080008080008080008080
            008080FFFFFF808080808080808080808080FFFFFFFFFFFF0080800080800080
            8000808000808000808000808000808000808000808000808000808000FF0000
            8000008000008000800000008080008080008080008080008080008080008080
            008080008080008080008080008080008080FFFFFF8080808080808080808080
            80FFFFFF00808000808000808000808000808000808000808000808000808000
            808000808000808000808000FF00008000008000008000800000008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            80FFFFFF808080808080808080808080FFFFFF00808000808000808000808000
            808000808000808000808000808000808000808000808000808000FF00008000
            0080000080008000000080800080800080800080800080800080800080800080
            80008080008080008080008080008080FFFFFF808080808080808080808080FF
            FFFF008080008080008080008080008080008080008080008080008080008080
            00808000808000808000FF000080000080008000000080800080800080800080
            80008080008080008080008080008080008080008080008080008080008080FF
            FFFF808080808080808080008080008080008080008080008080008080008080
            00808000808000808000808000808000808000808000808000FF000080000080
            0000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080FFFFFF808080808080008080008080008080
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000FF0000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080FFFFFF
            0080800080800080800080800080800080800080800080800080800080800080
            8000808000808000808000808000808000808000808000808000808000808000
            8080008080008080008080008080008080008080008080008080008080008080
            008080008080008080008080008080008080}
          NumGlyphs = 2
        end
        object RxDBLookupCombo2: TRxDBLookupCombo
          Left = 78
          Top = 17
          Width = 280
          Height = 21
          DropDownCount = 8
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DMEvento.dsEvento
          TabOrder = 1
          OnExit = RxDBLookupCombo2Exit
        end
        object DateEdit1: TDateEdit
          Left = 503
          Top = 16
          Width = 100
          Height = 21
          NumGlyphs = 2
          TabOrder = 4
        end
        object DateEdit2: TDateEdit
          Left = 603
          Top = 16
          Width = 100
          Height = 21
          NumGlyphs = 2
          TabOrder = 5
        end
        object CurrencyEdit1: TCurrencyEdit
          Left = 357
          Top = 16
          Width = 73
          Height = 21
          AutoSize = False
          DisplayFormat = '0'
          TabOrder = 2
          Value = 1.000000000000000000
        end
        object CurrencyEdit2: TCurrencyEdit
          Left = 430
          Top = 16
          Width = 73
          Height = 21
          AutoSize = False
          DisplayFormat = '0.00'
          TabOrder = 3
        end
        object CurrencyEdit3: TCurrencyEdit
          Left = 5
          Top = 17
          Width = 73
          Height = 21
          AutoSize = False
          DisplayFormat = '0'
          TabOrder = 0
          OnExit = CurrencyEdit3Exit
        end
      end
    end
  end
  object OpenPictureDialog2: TOpenPictureDialog
    Filter = 'JPG Image|*.jpg|JPEG|*.JPEG|PDF|*.PDF|Todos|*.*'
    InitialDir = 'C:\'
    Left = 615
    Top = 45
  end
  object VerificaCPF1: TVerificaCPF
    Resultado = False
    Left = 368
    Top = 264
  end
end
