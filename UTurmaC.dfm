object fTurmaC: TfTurmaC
  Left = 153
  Top = 78
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Turma'
  ClientHeight = 508
  ClientWidth = 704
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 704
    Height = 50
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 105
      Top = 32
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Turma:'
    end
    object Label4: TLabel
      Left = 83
      Top = 10
      Width = 55
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'd.Turma:'
    end
    object Label7: TLabel
      Left = 478
      Top = 10
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ordenar Por:'
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 141
      Top = 2
      Width = 80
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 141
      Top = 24
      Width = 317
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object ComboBox3: TComboBox
      Left = 540
      Top = 2
      Width = 141
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 2
      Text = 'Nome'
      Items.Strings = (
        'C'#243'digo'
        'Nome')
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 82
    Width = 704
    Height = 409
    Align = alClient
    DataSource = DMTurma.dsTurma
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
    ColCount = 8
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Alignment = taCenter
        Title.Caption = 'Nome Turma'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CAPACIDADE'
        Title.Alignment = taCenter
        Title.Caption = 'Capacidade de Alunos'
        Width = 66
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IDADE_INICIAL_ANOS'
        Title.Alignment = taCenter
        Title.Caption = 'Idade Inicial (Anos)'
        Width = 44
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IDADE_INICIAL_MESES'
        Title.Alignment = taCenter
        Title.Caption = 'Idade Inicial (Meses)'
        Width = 43
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IDADE_FINAL_ANOS'
        Title.Alignment = taCenter
        Title.Caption = 'Idade Final (Anos)'
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IDADE_FINAL_MESES'
        Title.Alignment = taCenter
        Title.Caption = 'Idade Final (Meses)'
        Width = 44
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 491
    Width = 704
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
    Top = 50
    Width = 704
    Height = 32
    Align = alTop
    TabOrder = 3
    object BitBtn3: TBitBtn
      Left = 12
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
      TabOrder = 0
      OnClick = BitBtn3Click
    end
    object BitBtn1: TBitBtn
      Left = 112
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
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 186
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
      TabOrder = 2
      TabStop = False
      OnClick = BitBtn2Click
    end
    object BitBtn5: TBitBtn
      Left = 272
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
  end
end
