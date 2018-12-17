object fMov_Mensal: TfMov_Mensal
  Left = 153
  Top = 102
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Movimento Mensal'
  ClientHeight = 487
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
      Width = 97
      Height = 25
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 39
    Width = 849
    Height = 154
    Align = alTop
    TabOrder = 1
    object Label2: TLabel
      Left = 3
      Top = 32
      Width = 105
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. Gera'#231#227'o/Emiss'#227'o:'
    end
    object Label3: TLabel
      Left = 67
      Top = 10
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Mov.:'
    end
    object Label15: TLabel
      Left = 79
      Top = 55
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Aluno:'
    end
    object Label25: TLabel
      Left = 33
      Top = 79
      Width = 76
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. Vencimento:'
    end
    object Label7: TLabel
      Left = 246
      Top = 10
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'M'#234's/Ano:'
    end
    object Label1: TLabel
      Left = 536
      Top = 13
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr.Total:'
    end
    object Label4: TLabel
      Left = 514
      Top = 34
      Width = 64
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr.Desconto:'
    end
    object Label5: TLabel
      Left = 524
      Top = 55
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr.L'#237'quido:'
    end
    object Label19: TLabel
      Left = 532
      Top = 89
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Pago:'
    end
    object Label20: TLabel
      Left = 511
      Top = 110
      Width = 67
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr. Pendente:'
    end
    object Label22: TLabel
      Left = 503
      Top = 132
      Width = 74
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. Pagamento:'
    end
    object Label6: TLabel
      Left = 37
      Top = 102
      Width = 72
      Height = 13
      Alignment = taRightJustify
      Caption = 'Recibo/Boleto:'
    end
    object Label8: TLabel
      Left = 682
      Top = 89
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cheque:'
    end
    object Label11: TLabel
      Left = 688
      Top = 110
      Width = 34
      Height = 13
      Alignment = taRightJustify
      Caption = 'Banco:'
    end
    object SpeedButton1: TSpeedButton
      Left = 399
      Top = 44
      Width = 23
      Height = 22
      Hint = 'Abre o cadastro de Alunos'
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
        000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
        00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
        8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
        8888880BB088888888888800008888888888}
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object DBDateEdit1: TDBDateEdit
      Left = 111
      Top = 24
      Width = 100
      Height = 21
      DataField = 'DTGERACAO'
      DataSource = DMMov_Mensal.dsMov_Mensal
      NumGlyphs = 2
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 111
      Top = 2
      Width = 127
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'ID'
      DataSource = DMMov_Mensal.dsMov_Mensal
      ReadOnly = True
      TabOrder = 1
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 111
      Top = 47
      Width = 287
      Height = 21
      DropDownCount = 8
      DataField = 'ID_ALUNO'
      DataSource = DMMov_Mensal.dsMov_Mensal
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMAluno.dsAluno
      TabOrder = 2
      OnExit = RxDBLookupCombo4Exit
    end
    object DBDateEdit2: TDBDateEdit
      Left = 111
      Top = 71
      Width = 129
      Height = 21
      DataField = 'DTVENCIMENTO'
      DataSource = DMMov_Mensal.dsMov_Mensal
      NumGlyphs = 2
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 295
      Top = 2
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
      Left = 343
      Top = 2
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
      Left = 580
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
      Left = 580
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
      Left = 580
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
      Left = 580
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
      Left = 580
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
      Left = 580
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
    object RxDBComboBox1: TRxDBComboBox
      Left = 111
      Top = 94
      Width = 129
      Height = 21
      Style = csDropDownList
      DataField = 'RECIBO_BOLETO'
      DataSource = DMMov_Mensal.dsMov_Mensal
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'Recibo'
        'Boleto')
      TabOrder = 4
      Values.Strings = (
        'R'
        'B')
    end
    object DBEdit2: TDBEdit
      Left = 724
      Top = 81
      Width = 120
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'NUMCHEQUE'
      DataSource = DMMov_Mensal.dsMov_Mensal
      ReadOnly = True
      TabOrder = 13
    end
    object DBEdit8: TDBEdit
      Left = 724
      Top = 102
      Width = 120
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'NUMCHEQUE'
      DataSource = DMMov_Mensal.dsMov_Mensal
      ReadOnly = True
      TabOrder = 14
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 193
    Width = 849
    Height = 294
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 1
    TabOrder = 2
    FixedDimension = 19
    object TabSheet3: TRzTabSheet
      Caption = 'Observa'#231#227'o Geral'
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 845
        Height = 271
        Align = alClient
        DataField = 'OBS'
        DataSource = DMMov_Mensal.dsMov_Mensal
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet1: TRzTabSheet
      Caption = 'Eventos'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 44
        Width = 845
        Height = 227
        Align = alClient
        DataSource = DMMov_Mensal.dsMov_Mensal_Eventos
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        ExOptions = [eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
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
            FieldName = 'ID_EVENTO'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd. Evento'
            Title.Color = 16766378
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEVENTO'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Nome Evento'
            Title.Color = 16766378
            Width = 248
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLREVENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Evento'
            Title.Color = 16766378
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRDESCONTO'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Desconto'
            Title.Color = 16766378
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLRTOTAL'
            Title.Alignment = taCenter
            Title.Caption = 'Valor Total'
            Title.Color = 16766378
            Width = 126
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD'
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Qtd.'
            Title.Color = 16766378
            Width = 108
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 845
        Height = 44
        Align = alTop
        Color = clSilver
        TabOrder = 0
        object Label9: TLabel
          Left = 103
          Top = 3
          Width = 34
          Height = 13
          Caption = 'Evento'
        end
        object Label10: TLabel
          Left = 328
          Top = 3
          Width = 52
          Height = 13
          Caption = 'Vlr. Evento'
        end
        object Label12: TLabel
          Left = 464
          Top = 3
          Width = 57
          Height = 13
          Caption = '% Desconto'
        end
        object Label16: TLabel
          Left = 536
          Top = 3
          Width = 61
          Height = 13
          Caption = 'Vlr.Desconto'
        end
        object Label17: TLabel
          Left = 624
          Top = 3
          Width = 42
          Height = 13
          Caption = 'Vlr. Total'
        end
        object Label18: TLabel
          Left = 424
          Top = 3
          Width = 20
          Height = 13
          Caption = 'Qtd.'
        end
        object SpeedButton3: TSpeedButton
          Left = 731
          Top = 14
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
        object SpeedButton2: TSpeedButton
          Left = 760
          Top = 14
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
        object Label32: TLabel
          Left = 28
          Top = 4
          Width = 33
          Height = 13
          Caption = 'C'#243'digo'
        end
        object SpeedButton4: TSpeedButton
          Left = 281
          Top = 16
          Width = 23
          Height = 22
          Hint = 'Abre o cadastro de Eventos'
          Glyph.Data = {
            EE000000424DEE000000000000007600000028000000100000000F0000000100
            04000000000078000000C40E0000C40E00001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888800000
            000088888880FFFFFFF088888880F00F00F088888880FFFFFFF088888880F00F
            00F088888880FFFFFFF088888884444444448800008444444444880BB0888888
            8888000BB000888888880BBBBBB0888888880BBBBBB088888888000BB0008888
            8888880BB088888888888800008888888888}
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton4Click
        end
        object BitBtn7: TBitBtn
          Left = 701
          Top = 14
          Width = 30
          Height = 25
          Hint = 'Confirma a inser'#231#227'o de um item'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
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
          Left = 80
          Top = 17
          Width = 201
          Height = 21
          DropDownCount = 8
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DMEvento.dsEvento
          TabOrder = 1
          OnChange = RxDBLookupCombo2Change
          OnDropDown = RxDBLookupCombo2DropDown
          OnExit = RxDBLookupCombo2Exit
        end
        object CurrencyEdit1: TCurrencyEdit
          Left = 305
          Top = 16
          Width = 97
          Height = 21
          AutoSize = False
          DisplayFormat = '0.00'
          TabOrder = 2
          OnExit = CurrencyEdit1Exit
        end
        object CurrencyEdit2: TCurrencyEdit
          Left = 458
          Top = 16
          Width = 72
          Height = 21
          AutoSize = False
          DisplayFormat = '0.00'
          TabOrder = 4
          OnEnter = CurrencyEdit2Enter
          OnExit = CurrencyEdit2Exit
        end
        object CurrencyEdit3: TCurrencyEdit
          Left = 530
          Top = 16
          Width = 72
          Height = 21
          AutoSize = False
          DisplayFormat = '0.00'
          TabOrder = 5
          OnExit = CurrencyEdit3Exit
        end
        object CurrencyEdit4: TCurrencyEdit
          Left = 601
          Top = 16
          Width = 97
          Height = 21
          TabStop = False
          AutoSize = False
          Color = clScrollBar
          DisplayFormat = '0.00'
          ReadOnly = True
          TabOrder = 6
        end
        object CurrencyEdit5: TCurrencyEdit
          Left = 401
          Top = 16
          Width = 57
          Height = 21
          AutoSize = False
          DisplayFormat = '0'
          TabOrder = 3
          Value = 1.000000000000000000
          OnExit = CurrencyEdit5Exit
        end
        object BitBtn15: TBitBtn
          Left = 789
          Top = 14
          Width = 30
          Height = 25
          Hint = 'Edita o item selecionada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = BitBtn15Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
            00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
            F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
            0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
            FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
            FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
            0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
            00333377737FFFFF773333303300000003333337337777777333}
          NumGlyphs = 2
        end
        object CurrencyEdit6: TCurrencyEdit
          Left = 5
          Top = 17
          Width = 73
          Height = 21
          AutoSize = False
          DisplayFormat = '0'
          TabOrder = 0
          OnExit = CurrencyEdit6Exit
          OnKeyDown = CurrencyEdit6KeyDown
        end
      end
    end
  end
  object BitBtn2: TBitBtn
    Left = 112
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
    TabOrder = 3
    OnClick = BitBtn2Click
  end
end
