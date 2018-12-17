object fParametros: TfParametros
  Left = 238
  Top = 219
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Parametros'
  ClientHeight = 286
  ClientWidth = 291
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
    Width = 291
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
    Width = 291
    Height = 247
    Align = alClient
    TabOrder = 1
    object Label7: TLabel
      Left = 202
      Top = 19
      Width = 22
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ano:'
    end
    object Label14: TLabel
      Left = 184
      Top = 88
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Caption = '% Multa:'
    end
    object Label1: TLabel
      Left = 94
      Top = 112
      Width = 130
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dia de Vencimento Padr'#227'o:'
    end
    object Label3: TLabel
      Left = 201
      Top = 41
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'M'#234's:'
    end
    object Label4: TLabel
      Left = 185
      Top = 65
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = '% Juros:'
    end
    object Label2: TLabel
      Left = 92
      Top = 144
      Width = 132
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtd. de Eventos no Recibo:'
    end
    object Label5: TLabel
      Left = 48
      Top = 167
      Width = 176
      Height = 13
      Alignment = taRightJustify
      Caption = 'Altura da RLBand na imp. do Evento:'
    end
    object Label6: TLabel
      Left = 10
      Top = 190
      Width = 214
      Height = 13
      Alignment = taRightJustify
      Caption = 'Altura da RLBand na imp. do Evento (Ajuste):'
    end
    object DBEdit6: TDBEdit
      Left = 226
      Top = 11
      Width = 55
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ANO_MOV'
      DataSource = DMParametros.dsParametros
      TabOrder = 0
    end
    object DBEdit9: TDBEdit
      Left = 226
      Top = 80
      Width = 55
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PERC_MULTA'
      DataSource = DMParametros.dsParametros
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 226
      Top = 104
      Width = 55
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DIA_VENCIMENTO'
      DataSource = DMParametros.dsParametros
      TabOrder = 4
    end
    object DBEdit3: TDBEdit
      Left = 226
      Top = 33
      Width = 55
      Height = 21
      CharCase = ecUpperCase
      DataField = 'MES_MOV'
      DataSource = DMParametros.dsParametros
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 226
      Top = 57
      Width = 55
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PERC_JUROS'
      DataSource = DMParametros.dsParametros
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 226
      Top = 136
      Width = 55
      Height = 21
      CharCase = ecUpperCase
      DataField = 'QTDEVENTOSNORECIBO'
      DataSource = DMParametros.dsParametros
      TabOrder = 5
    end
    object DBEdit5: TDBEdit
      Left = 226
      Top = 159
      Width = 55
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TAMANHODARLBANDA'
      DataSource = DMParametros.dsParametros
      TabOrder = 6
    end
    object DBEdit7: TDBEdit
      Left = 226
      Top = 182
      Width = 55
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TAMANHOAJUSTERLBANDA'
      DataSource = DMParametros.dsParametros
      TabOrder = 7
    end
  end
end
