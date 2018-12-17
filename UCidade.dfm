object fCidade: TfCidade
  Left = 172
  Top = 226
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cidade'
  ClientHeight = 130
  ClientWidth = 635
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
    Width = 635
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
    Width = 635
    Height = 91
    Align = alClient
    TabOrder = 1
    object Label7: TLabel
      Left = 98
      Top = 35
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cidade:'
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
      Left = 98
      Top = 58
      Width = 36
      Height = 13
      Alignment = taRightJustify
      Caption = 'Estado:'
    end
    object DBEdit6: TDBEdit
      Left = 136
      Top = 27
      Width = 346
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DMCidade.dsCidade
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 136
      Top = 2
      Width = 127
      Height = 21
      DataField = 'ID'
      DataSource = DMCidade.dsCidade
      TabOrder = 0
    end
    object DBEdit9: TDBEdit
      Left = 136
      Top = 50
      Width = 39
      Height = 21
      CharCase = ecUpperCase
      DataField = 'UF'
      DataSource = DMCidade.dsCidade
      TabOrder = 2
    end
  end
end
