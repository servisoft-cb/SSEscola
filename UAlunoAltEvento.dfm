object fAlunoAltEvento: TfAlunoAltEvento
  Left = 235
  Top = 174
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'fAlunoAltEvento'
  ClientHeight = 273
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
    Height = 232
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
    object Label28: TLabel
      Left = 25
      Top = 113
      Width = 44
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.In'#237'cio:'
    end
    object Label29: TLabel
      Left = 30
      Top = 141
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Final:'
    end
    object DBEdit2: TDBEdit
      Left = 72
      Top = 61
      Width = 100
      Height = 21
      DataField = 'QTD'
      DataSource = fAlunoC.dsAluno_EventoCons
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 72
      Top = 85
      Width = 100
      Height = 21
      DataField = 'VALOR'
      DataSource = fAlunoC.dsAluno_EventoCons
      TabOrder = 2
    end
    object DBDateEdit1: TDBDateEdit
      Left = 72
      Top = 109
      Width = 100
      Height = 21
      DataField = 'DTINICIO'
      DataSource = fAlunoC.dsAluno_EventoCons
      NumGlyphs = 2
      TabOrder = 3
    end
    object DBDateEdit2: TDBDateEdit
      Left = 72
      Top = 133
      Width = 100
      Height = 21
      DataField = 'DTFINAL'
      DataSource = fAlunoC.dsAluno_EventoCons
      NumGlyphs = 2
      TabOrder = 4
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
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 72
        Top = 27
        Width = 280
        Height = 21
        DropDownCount = 8
        DataField = 'CODEVENTO'
        DataSource = fAlunoC.dsAluno_EventoCons
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
        DataField = 'CODEVENTO'
        DataSource = fAlunoC.dsAluno_EventoCons
        TabOrder = 0
        OnExit = DBEdit1Exit
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 232
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
