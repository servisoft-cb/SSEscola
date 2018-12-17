object fFuncionario: TfFuncionario
  Left = 71
  Top = 7
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Funcion'#225'rio'
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
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 406
    Width = 849
    Height = 289
    ActivePage = TabSheet2
    Align = alClient
    TabIndex = 2
    TabOrder = 1
    FixedDimension = 19
    object TabSheet6: TRzTabSheet
      Caption = 'Dados Fam'#237'lia'
      object Label12: TLabel
        Left = 36
        Top = 123
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome do Pai:'
      end
      object Label16: TLabel
        Left = 30
        Top = 147
        Width = 70
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome da M'#227'e:'
      end
      object Label25: TLabel
        Left = 24
        Top = 11
        Width = 76
        Height = 13
        Alignment = taRightJustify
        Caption = 'Dt. Nascimento:'
      end
      object Label36: TLabel
        Left = 42
        Top = 78
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = 'Estado Civil:'
      end
      object Label37: TLabel
        Left = 343
        Top = 11
        Width = 64
        Height = 13
        Alignment = taRightJustify
        Caption = 'Escolaridade:'
      end
      object Label39: TLabel
        Left = 27
        Top = 101
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome C'#244'njuge:'
      end
      object Label17: TLabel
        Left = 5
        Top = 33
        Width = 95
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cidade Nascimento:'
      end
      object Label18: TLabel
        Left = 390
        Top = 33
        Width = 17
        Height = 13
        Alignment = taRightJustify
        Caption = 'UF:'
      end
      object Label19: TLabel
        Left = 24
        Top = 55
        Width = 76
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nascionalidade:'
      end
      object DBEdit13: TDBEdit
        Left = 102
        Top = 115
        Width = 343
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOMEPAI'
        DataSource = DMFuncionario.dsFuncionario
        TabOrder = 7
      end
      object DBEdit14: TDBEdit
        Left = 102
        Top = 139
        Width = 343
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOMEMAE'
        DataSource = DMFuncionario.dsFuncionario
        TabOrder = 8
      end
      object DBDateEdit2: TDBDateEdit
        Left = 102
        Top = 3
        Width = 129
        Height = 21
        DataField = 'DTNASCIMENTO'
        DataSource = DMFuncionario.dsFuncionario
        NumGlyphs = 2
        TabOrder = 0
      end
      object DBEdit29: TDBEdit
        Left = 102
        Top = 70
        Width = 268
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ESTCIVIL'
        DataSource = DMFuncionario.dsFuncionario
        TabOrder = 5
      end
      object DBEdit30: TDBEdit
        Left = 409
        Top = 3
        Width = 268
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ESCOLARIDADE'
        DataSource = DMFuncionario.dsFuncionario
        TabOrder = 1
      end
      object DBEdit32: TDBEdit
        Left = 102
        Top = 93
        Width = 268
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOMECONJUGE'
        DataSource = DMFuncionario.dsFuncionario
        TabOrder = 6
      end
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 102
        Top = 25
        Width = 269
        Height = 21
        DropDownCount = 8
        DataField = 'CODCIDADENASC'
        DataSource = DMFuncionario.dsFuncionario
        LookupField = 'ID'
        LookupDisplay = 'NOME'
        LookupSource = DMCidade.dsCidade
        TabOrder = 2
        OnExit = RxDBLookupCombo3Exit
      end
      object DBEdit15: TDBEdit
        Left = 409
        Top = 25
        Width = 39
        Height = 21
        CharCase = ecUpperCase
        DataField = 'UFNASC'
        DataSource = DMFuncionario.dsFuncionario
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit16: TDBEdit
        Left = 102
        Top = 47
        Width = 268
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NASCIONALIDADE'
        DataSource = DMFuncionario.dsFuncionario
        TabOrder = 4
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = 'Observa'#231#227'o Geral'
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 845
        Height = 266
        Align = alClient
        DataField = 'OBS'
        DataSource = DMFuncionario.dsFuncionario
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Motivo Sa'#237'da'
      object DBMemo2: TDBMemo
        Left = 0
        Top = 0
        Width = 845
        Height = 266
        Align = alClient
        DataField = 'MOTIVOSAIDA'
        DataSource = DMFuncionario.dsFuncionario
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 39
    Width = 849
    Height = 367
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 695
      Top = 9
      Width = 14
      Height = 13
      Caption = 'ID:'
    end
    object Label2: TLabel
      Left = 25
      Top = 143
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. Admiss'#227'o:'
    end
    object Label7: TLabel
      Left = 2
      Top = 10
      Width = 89
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nome Funcion'#225'rio:'
    end
    object Label13: TLabel
      Left = 42
      Top = 165
      Width = 49
      Height = 13
      Alignment = taRightJustify
      Caption = 'Endere'#231'o:'
    end
    object Label3: TLabel
      Left = 28
      Top = 98
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Matr'#237'cula:'
    end
    object Label5: TLabel
      Left = 68
      Top = 32
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'CPF:'
    end
    object Label14: TLabel
      Left = 64
      Top = 232
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fone:'
    end
    object Label15: TLabel
      Left = 55
      Top = 187
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
      Left = 382
      Top = 185
      Width = 17
      Height = 13
      Alignment = taRightJustify
      Caption = 'UF:'
    end
    object Label8: TLabel
      Left = 67
      Top = 209
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = 'CEP:'
    end
    object Label11: TLabel
      Left = 197
      Top = 209
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'Bairro:'
    end
    object Label21: TLabel
      Left = 58
      Top = 255
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
    object Label27: TLabel
      Left = 64
      Top = 277
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Sexo:'
    end
    object Label4: TLabel
      Left = 280
      Top = 232
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Celular:'
    end
    object Label32: TLabel
      Left = 272
      Top = 143
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. Demiss'#227'o:'
    end
    object Label33: TLabel
      Left = 257
      Top = 98
      Width = 46
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Ponto:'
    end
    object Label10: TLabel
      Left = 284
      Top = 33
      Width = 19
      Height = 13
      Alignment = taRightJustify
      Caption = 'RG:'
    end
    object Label22: TLabel
      Left = 71
      Top = 54
      Width = 20
      Height = 13
      Alignment = taRightJustify
      Caption = 'PIS:'
    end
    object Label23: TLabel
      Left = 37
      Top = 76
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Carteira:'
    end
    object Label24: TLabel
      Left = 276
      Top = 76
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'S'#233'rie:'
    end
    object Label34: TLabel
      Left = 25
      Top = 121
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = 'Hr. Semanais:'
    end
    object Label35: TLabel
      Left = 54
      Top = 324
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'Hor'#225'rio:'
    end
    object Label38: TLabel
      Left = 52
      Top = 300
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Fun'#231#227'o:'
    end
    object Label9: TLabel
      Left = 388
      Top = 324
      Width = 81
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tipo Pagamento:'
    end
    object Label20: TLabel
      Left = 632
      Top = 324
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Sal'#225'rio:'
    end
    object DBEdit1: TDBEdit
      Left = 711
      Top = 1
      Width = 102
      Height = 21
      TabStop = False
      Color = clScrollBar
      DataField = 'ID'
      DataSource = DMFuncionario.dsFuncionario
      ReadOnly = True
      TabOrder = 28
    end
    object DBDateEdit1: TDBDateEdit
      Left = 93
      Top = 135
      Width = 100
      Height = 21
      DataField = 'DTADMISSAO'
      DataSource = DMFuncionario.dsFuncionario
      NumGlyphs = 2
      TabOrder = 9
    end
    object DBEdit6: TDBEdit
      Left = 93
      Top = 2
      Width = 346
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DMFuncionario.dsFuncionario
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 93
      Top = 157
      Width = 346
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = DMFuncionario.dsFuncionario
      TabOrder = 11
    end
    object DBEdit3: TDBEdit
      Left = 93
      Top = 90
      Width = 135
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NUMMATRICULA'
      DataSource = DMFuncionario.dsFuncionario
      TabOrder = 6
    end
    object DBEdit5: TDBEdit
      Left = 93
      Top = 24
      Width = 135
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CPF'
      DataSource = DMFuncionario.dsFuncionario
      TabOrder = 1
      OnEnter = DBEdit5Enter
      OnExit = DBEdit5Exit
    end
    object DBEdit8: TDBEdit
      Left = 93
      Top = 224
      Width = 39
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DDD'
      DataSource = DMFuncionario.dsFuncionario
      TabOrder = 16
    end
    object DBEdit9: TDBEdit
      Left = 133
      Top = 224
      Width = 143
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FONE'
      DataSource = DMFuncionario.dsFuncionario
      TabOrder = 17
    end
    object RxDBLookupCombo4: TRxDBLookupCombo
      Left = 93
      Top = 179
      Width = 269
      Height = 21
      DropDownCount = 8
      DataField = 'CODCIDADE'
      DataSource = DMFuncionario.dsFuncionario
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMCidade.dsCidade
      TabOrder = 12
      OnExit = RxDBLookupCombo4Exit
    end
    object DBEdit10: TDBEdit
      Left = 401
      Top = 177
      Width = 39
      Height = 21
      CharCase = ecUpperCase
      DataField = 'UF'
      DataSource = DMFuncionario.dsFuncionario
      ReadOnly = True
      TabOrder = 13
    end
    object DBEdit11: TDBEdit
      Left = 93
      Top = 201
      Width = 95
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CEP'
      DataSource = DMFuncionario.dsFuncionario
      TabOrder = 14
    end
    object DBEdit12: TDBEdit
      Left = 229
      Top = 201
      Width = 210
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = DMFuncionario.dsFuncionario
      TabOrder = 15
    end
    object RxDBLookupCombo1: TRxDBLookupCombo
      Left = 93
      Top = 247
      Width = 269
      Height = 21
      DropDownCount = 8
      DataField = 'CODTURMA'
      DataSource = DMFuncionario.dsFuncionario
      LookupField = 'ID'
      LookupDisplay = 'NOME'
      LookupSource = DMTurma.dsTurma
      TabOrder = 19
    end
    object BitBtn3: TBitBtn
      Left = 563
      Top = 227
      Width = 25
      Height = 25
      Hint = 'Abre o caminho p/ localizar a foto'
      TabOrder = 24
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
      DataField = 'ENDFOTO'
      DataSource = DMFuncionario.dsFuncionario
      TabOrder = 25
      OnChange = DBEdit24Change
    end
    object RxDBComboBox4: TRxDBComboBox
      Left = 93
      Top = 269
      Width = 129
      Height = 21
      Style = csDropDownList
      DataField = 'SEXO'
      DataSource = DMFuncionario.dsFuncionario
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'Masculino'
        'Feminino')
      TabOrder = 20
      Values.Strings = (
        'M'
        'F')
    end
    object DBEdit4: TDBEdit
      Left = 317
      Top = 224
      Width = 122
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CELULAR'
      DataSource = DMFuncionario.dsFuncionario
      TabOrder = 18
    end
    object DBDateEdit4: TDBDateEdit
      Left = 341
      Top = 135
      Width = 100
      Height = 21
      DataField = 'DTDEMISSAO'
      DataSource = DMFuncionario.dsFuncionario
      NumGlyphs = 2
      TabOrder = 10
    end
    object DBEdit23: TDBEdit
      Left = 305
      Top = 90
      Width = 135
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NUMPONTO'
      DataSource = DMFuncionario.dsFuncionario
      TabOrder = 7
    end
    object DBEdit7: TDBEdit
      Left = 305
      Top = 25
      Width = 135
      Height = 21
      CharCase = ecUpperCase
      DataField = 'RG'
      DataSource = DMFuncionario.dsFuncionario
      TabOrder = 2
      OnExit = DBEdit5Exit
    end
    object DBEdit21: TDBEdit
      Left = 93
      Top = 46
      Width = 135
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PIS'
      DataSource = DMFuncionario.dsFuncionario
      TabOrder = 3
      OnExit = DBEdit5Exit
    end
    object DBEdit22: TDBEdit
      Left = 93
      Top = 68
      Width = 135
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CTPS'
      DataSource = DMFuncionario.dsFuncionario
      TabOrder = 4
      OnExit = DBEdit5Exit
    end
    object DBEdit25: TDBEdit
      Left = 305
      Top = 68
      Width = 135
      Height = 21
      CharCase = ecUpperCase
      DataField = 'SERIE'
      DataSource = DMFuncionario.dsFuncionario
      TabOrder = 5
      OnExit = DBEdit5Exit
    end
    object DBEdit26: TDBEdit
      Left = 93
      Top = 113
      Width = 135
      Height = 21
      CharCase = ecUpperCase
      DataField = 'HRSEMANAIS'
      DataSource = DMFuncionario.dsFuncionario
      TabOrder = 8
    end
    object DBEdit27: TDBEdit
      Left = 93
      Top = 316
      Width = 268
      Height = 21
      CharCase = ecUpperCase
      DataField = 'HORARIO1'
      DataSource = DMFuncionario.dsFuncionario
      TabOrder = 22
    end
    object DBEdit28: TDBEdit
      Left = 93
      Top = 338
      Width = 268
      Height = 21
      CharCase = ecUpperCase
      DataField = 'HORARIO2'
      DataSource = DMFuncionario.dsFuncionario
      TabOrder = 23
    end
    object DBEdit31: TDBEdit
      Left = 93
      Top = 292
      Width = 268
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FUNCAO'
      DataSource = DMFuncionario.dsFuncionario
      TabOrder = 21
    end
    object RxDBComboBox1: TRxDBComboBox
      Left = 472
      Top = 316
      Width = 145
      Height = 21
      Style = csDropDownList
      EnableValues = True
      ItemHeight = 13
      Items.Strings = (
        'Mensal'
        'Semanal'
        'Horista')
      TabOrder = 26
      Values.Strings = (
        'M'
        'S'
        'H')
    end
    object DBEdit17: TDBEdit
      Left = 669
      Top = 316
      Width = 100
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FUNCAO'
      DataSource = DMFuncionario.dsFuncionario
      TabOrder = 27
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
