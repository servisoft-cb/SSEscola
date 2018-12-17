object fConsMov_MensalEvento_Aluno: TfConsMov_MensalEvento_Aluno
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
    Color = clMoneyGreen
    TabOrder = 0
    DesignSize = (
      819
      74)
    object Label2: TLabel
      Left = 810
      Top = 40
      Width = 3
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = '.'
    end
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 59
      Height = 13
      Caption = 'C'#243'd.Evento:'
    end
    object DBText1: TDBText
      Left = 70
      Top = 15
      Width = 66
      Height = 14
      Alignment = taCenter
      Color = 16776176
      DataField = 'CodEvento'
      DataSource = fConsMov_MensalEvento2.dsmEvento
      ParentColor = False
    end
    object DBText2: TDBText
      Left = 139
      Top = 15
      Width = 362
      Height = 14
      Alignment = taCenter
      Color = 16776176
      DataField = 'NomeEvento'
      DataSource = fConsMov_MensalEvento2.dsmEvento
      ParentColor = False
    end
    object Label3: TLabel
      Left = 25
      Top = 37
      Width = 42
      Height = 13
      Caption = 'Vlr.Total:'
    end
    object DBText3: TDBText
      Left = 70
      Top = 36
      Width = 99
      Height = 14
      Alignment = taCenter
      Color = 16776176
      DataField = 'VlrTotal'
      DataSource = fConsMov_MensalEvento2.dsmEvento
      ParentColor = False
    end
    object Label4: TLabel
      Left = 17
      Top = 54
      Width = 50
      Height = 13
      Caption = 'Vlr. M'#233'dia:'
    end
    object DBText4: TDBText
      Left = 70
      Top = 53
      Width = 99
      Height = 14
      Alignment = taCenter
      Color = 16776176
      DataField = 'VlrTotal'
      DataSource = fConsMov_MensalEvento2.dsmEvento
      ParentColor = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 74
    Width = 819
    Height = 32
    Align = alTop
    Color = clMoneyGreen
    TabOrder = 1
    DesignSize = (
      819
      32)
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
      TabOrder = 0
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
      TabOrder = 1
      OnClick = BitBtn5Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 106
    Width = 819
    Height = 583
    Align = alClient
    DataSource = fConsMov_MensalEvento2.dsmEventoAlu
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ReadOnly = True
    TabOrder = 2
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
        FieldName = 'CodAluno'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Evento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NomeAluno'
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
end
