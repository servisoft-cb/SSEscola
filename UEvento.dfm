object fEvento: TfEvento
  Left = 124
  Top = 29
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Evento'
  ClientHeight = 661
  ClientWidth = 695
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 695
    Height = 39
    Align = alTop
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 6
      Top = 9
      Width = 75
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
    Width = 695
    Height = 100
    Align = alTop
    TabOrder = 1
    object Label7: TLabel
      Left = 51
      Top = 35
      Width = 83
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome do Evento:'
    end
    object Label3: TLabel
      Left = 98
      Top = 10
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'C'#243'digo:'
    end
    object Label14: TLabel
      Left = 107
      Top = 58
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor:'
    end
    object Label1: TLabel
      Left = 85
      Top = 80
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'Desconto:'
    end
    object DBEdit6: TDBEdit
      Left = 136
      Top = 27
      Width = 346
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DMEvento.dsEvento
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 136
      Top = 2
      Width = 120
      Height = 21
      DataField = 'ID'
      DataSource = DMEvento.dsEvento
      TabOrder = 0
    end
    object DBEdit9: TDBEdit
      Left = 136
      Top = 50
      Width = 120
      Height = 21
      CharCase = ecUpperCase
      DataField = 'VALOR'
      DataSource = DMEvento.dsEvento
      TabOrder = 2
    end
    object RxDBComboBox1: TRxDBComboBox
      Left = 136
      Top = 72
      Width = 145
      Height = 21
      Style = csDropDownList
      DataField = 'DESCONTO'
      DataSource = DMEvento.dsEvento
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'N'#227'o'
        'Sim')
      TabOrder = 3
      Values.Strings = (
        'N'
        'S')
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 139
    Width = 695
    Height = 522
    ActivePage = TabSheet3
    ActivePageDefault = TabSheet3
    Align = alClient
    TabIndex = 0
    TabOrder = 2
    FixedDimension = 19
    object TabSheet3: TRzTabSheet
      Caption = 'Observa'#231#227'o'
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 691
        Height = 499
        Align = alClient
        DataField = 'OBS'
        DataSource = DMEvento.dsEvento
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
end
