object fTurma: TfTurma
  Left = 124
  Top = 29
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Turma'
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
      Left = 55
      Top = 35
      Width = 79
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome da Turma:'
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
      Left = 2
      Top = 58
      Width = 132
      Height = 13
      Alignment = taRightJustify
      Caption = 'Idade Inicial (Anos/Meses): '
    end
    object Label2: TLabel
      Left = 293
      Top = 82
      Width = 110
      Height = 13
      Alignment = taRightJustify
      Caption = 'Capacidade de Alunos:'
    end
    object Label1: TLabel
      Left = 275
      Top = 58
      Width = 127
      Height = 13
      Alignment = taRightJustify
      Caption = 'Idade Final (Anos/Meses): '
    end
    object DBEdit6: TDBEdit
      Left = 136
      Top = 27
      Width = 346
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DMTurma.dsTurma
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 136
      Top = 2
      Width = 127
      Height = 21
      DataField = 'ID'
      DataSource = DMTurma.dsTurma
      TabOrder = 0
    end
    object DBEdit9: TDBEdit
      Left = 136
      Top = 50
      Width = 39
      Height = 21
      CharCase = ecUpperCase
      DataField = 'IDADE_INICIAL_ANOS'
      DataSource = DMTurma.dsTurma
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 405
      Top = 74
      Width = 79
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CAPACIDADE'
      DataSource = DMTurma.dsTurma
      TabOrder = 6
    end
    object DBEdit4: TDBEdit
      Left = 176
      Top = 50
      Width = 39
      Height = 21
      CharCase = ecUpperCase
      DataField = 'IDADE_INICIAL_MESES'
      DataSource = DMTurma.dsTurma
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 404
      Top = 50
      Width = 39
      Height = 21
      CharCase = ecUpperCase
      DataField = 'IDADE_FINAL_ANOS'
      DataSource = DMTurma.dsTurma
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 444
      Top = 50
      Width = 39
      Height = 21
      CharCase = ecUpperCase
      DataField = 'IDADE_FINAL_MESES'
      DataSource = DMTurma.dsTurma
      TabOrder = 5
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
      Caption = 'Dados Alimentares'
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 691
        Height = 499
        Align = alClient
        DataField = 'DADOS_ALIMENTARES'
        DataSource = DMTurma.dsTurma
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Rotina'
      object DBMemo2: TDBMemo
        Left = 0
        Top = 0
        Width = 691
        Height = 499
        Align = alClient
        DataField = 'DADOS_ROTINA'
        DataSource = DMTurma.dsTurma
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
end
