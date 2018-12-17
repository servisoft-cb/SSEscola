object fMov_MensalAltEvento: TfMov_MensalAltEvento
  Left = 235
  Top = 174
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fMov_MensalAltEvento'
  ClientHeight = 204
  ClientWidth = 492
  Color = clMoneyGreen
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
    Width = 492
    Height = 163
    Align = alClient
    Color = clMoneyGreen
    TabOrder = 0
    object Label30: TLabel
      Left = 46
      Top = 68
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtd.:'
    end
    object Label31: TLabel
      Left = 42
      Top = 91
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor:'
    end
    object Label1: TLabel
      Left = 9
      Top = 115
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = '% Desconto:'
    end
    object Label2: TLabel
      Left = 5
      Top = 139
      Width = 64
      Height = 13
      Alignment = taRightJustify
      Caption = 'Vlr.Desconto:'
    end
    object Label3: TLabel
      Left = 218
      Top = 139
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Valor:'
    end
    object DBEdit2: TDBEdit
      Left = 72
      Top = 61
      Width = 100
      Height = 21
      DataField = 'QTD'
      DataSource = DMMov_Mensal.dsMov_Mensal_Eventos
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 72
      Top = 85
      Width = 100
      Height = 21
      DataField = 'VLREVENTO'
      DataSource = DMMov_Mensal.dsMov_Mensal_Eventos
      TabOrder = 2
      OnExit = DBEdit3Exit
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 490
      Height = 53
      Align = alTop
      Color = clMoneyGreen
      TabOrder = 0
      OnExit = Panel3Exit
      object Label32: TLabel
        Left = 33
        Top = 12
        Width = 36
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'digo:'
      end
      object Label9: TLabel
        Left = 32
        Top = 35
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Evento:'
      end
      object DBText1: TDBText
        Left = 416
        Top = 16
        Width = 65
        Height = 17
        DataField = 'ITEM'
        DataSource = DMMov_Mensal.dsMov_Mensal_Eventos
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 72
        Top = 27
        Width = 280
        Height = 21
        DropDownCount = 8
        DataField = 'ID_EVENTO'
        DataSource = DMMov_Mensal.dsMov_Mensal_Eventos
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = DMEvento.dsEvento
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 72
        Top = 3
        Width = 100
        Height = 21
        DataField = 'ID_EVENTO'
        DataSource = DMMov_Mensal.dsMov_Mensal_Eventos
        TabOrder = 0
        OnExit = DBEdit1Exit
      end
    end
    object DBEdit4: TDBEdit
      Left = 72
      Top = 109
      Width = 100
      Height = 21
      DataField = 'PERCDESCONTO'
      DataSource = DMMov_Mensal.dsMov_Mensal_Eventos
      TabOrder = 3
      OnExit = DBEdit4Exit
    end
    object DBEdit5: TDBEdit
      Left = 72
      Top = 133
      Width = 100
      Height = 21
      DataField = 'VLRDESCONTO'
      DataSource = DMMov_Mensal.dsMov_Mensal_Eventos
      TabOrder = 4
      OnExit = DBEdit5Exit
    end
    object DBEdit6: TDBEdit
      Left = 248
      Top = 133
      Width = 100
      Height = 21
      DataField = 'VLRTOTAL'
      DataSource = DMMov_Mensal.dsMov_Mensal_Eventos
      TabOrder = 5
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 163
    Width = 492
    Height = 41
    Align = alBottom
    Color = clMoneyGreen
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 158
      Top = 6
      Width = 83
      Height = 29
      Caption = 'Confirmar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 241
      Top = 6
      Width = 83
      Height = 29
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
end
