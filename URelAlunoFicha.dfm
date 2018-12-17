object fRelAlunoFicha: TfRelAlunoFicha
  Left = 80
  Top = 112
  Width = 868
  Height = 595
  VertScrollBar.Position = 101
  Caption = 'fRelAlunoFicha'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 32
    Top = -61
    Width = 794
    Height = 1123
    DataSource = fAlunoC.dsAlunoCons
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.TopMargin = 8.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    Margins.BottomMargin = 8.000000000000000000
    MaxBands = 8
    RecordRange = rrCurrentOnly
    ShowProgress = False
    object RLBand1: TRLBand
      Left = 30
      Top = 30
      Width = 734
      Height = 27
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 2
        Top = 3
        Width = 64
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 666
        Top = 14
        Width = 24
        Height = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 631
        Top = 14
        Width = 33
        Height = 10
        Caption = 'Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 646
        Top = 2
        Width = 18
        Height = 10
        Caption = 'Pag:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 666
        Top = 2
        Width = 54
        Height = 10
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 25
        Width = 734
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
    end
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 57
      Width = 734
      Height = 700
      DataSource = fAlunoC.dsAlunoCons
      RecordRange = rrCurrentOnly
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 382
        Width = 734
        Height = 105
        DataSource = fAlunoC.dsAluno_EventoCons
        object RLBand5: TRLBand
          Left = 0
          Top = 0
          Width = 734
          Height = 21
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          object RLLabel16: TRLLabel
            Left = 64
            Top = 3
            Width = 40
            Height = 14
            Caption = 'Evento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel17: TRLLabel
            Left = 504
            Top = 3
            Width = 32
            Height = 14
            Caption = 'Valor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDraw4: TRLDraw
            Left = 65
            Top = 18
            Width = 471
            Height = 2
            DrawKind = dkLine
            Pen.Style = psDot
          end
        end
        object RLBand6: TRLBand
          Left = 0
          Top = 21
          Width = 734
          Height = 19
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Completion = ctFullPage
          object RLDBText10: TRLDBText
            Left = 65
            Top = 3
            Width = 352
            Height = 14
            AutoSize = False
            DataField = 'NOMEEVENTO'
            DataSource = fAlunoC.dsAluno_EventoCons
          end
          object RLDBText11: TRLDBText
            Left = 446
            Top = 3
            Width = 91
            Height = 14
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VALOR'
            DataSource = fAlunoC.dsAluno_EventoCons
          end
        end
        object RLBand7: TRLBand
          Left = 0
          Top = 40
          Width = 734
          Height = 41
          BandType = btFooter
          Completion = ctFullPage
          object RLDraw3: TRLDraw
            Left = 0
            Top = 0
            Width = 734
            Height = 23
            Align = faTop
          end
          object RLLabel15: TRLLabel
            Left = 424
            Top = 5
            Width = 171
            Height = 14
            Caption = 'Valor Total do Mensalidade: R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel3: TRLLabel
            Left = 5
            Top = 5
            Width = 31
            Height = 14
            Caption = 'Emitir:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLLabel14: TRLLabel
            Left = 37
            Top = 5
            Width = 116
            Height = 14
            Caption = 'Emitir Recibo/Boleto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBResult1: TRLDBResult
            Left = 598
            Top = 5
            Width = 77
            Height = 14
            DataField = 'VALOR'
            DataSource = fAlunoC.dsAluno_EventoCons
            DisplayMask = '###,###,##0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Info = riSum
            ParentFont = False
          end
        end
      end
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 734
        Height = 232
        BeforePrint = RLBand2BeforePrint
        object RLDraw6: TRLDraw
          Left = 562
          Top = 92
          Width = 172
          Height = 140
        end
        object RLDraw5: TRLDraw
          Left = 0
          Top = 72
          Width = 561
          Height = 79
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 0
          Width = 561
          Height = 73
        end
        object RLLabel4: TRLLabel
          Left = 8
          Top = 9
          Width = 38
          Height = 14
          Caption = 'Aluno:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 112
          Top = 9
          Width = 34
          Height = 14
          DataField = 'NOME'
          DataSource = fAlunoC.dsAlunoCons
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 49
          Top = 9
          Width = 50
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'CODIGO'
          DataSource = fAlunoC.dsAlunoCons
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 102
          Top = 9
          Width = 7
          Height = 14
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel6: TRLLabel
          Left = 8
          Top = 81
          Width = 61
          Height = 12
          Caption = 'Respons'#225'vel:'
        end
        object RLDBText3: TRLDBText
          Left = 71
          Top = 81
          Width = 338
          Height = 12
          AutoSize = False
          DataField = 'NOME_RESPONSAVEL'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel7: TRLLabel
          Left = 417
          Top = 81
          Width = 25
          Height = 12
          Caption = 'CPF:'
        end
        object RLDBText4: TRLDBText
          Left = 444
          Top = 81
          Width = 106
          Height = 12
          AutoSize = False
          DataField = 'CPF_REPONSAVEL'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel8: TRLLabel
          Left = 24
          Top = 110
          Width = 45
          Height = 12
          Alignment = taRightJustify
          Caption = 'Endere'#231'o:'
        end
        object RLDBText5: TRLDBText
          Left = 71
          Top = 110
          Width = 371
          Height = 12
          AutoSize = False
          DataField = 'ENDERECO'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel9: TRLLabel
          Left = 34
          Top = 123
          Width = 35
          Height = 12
          Alignment = taRightJustify
          Caption = 'Cidade:'
        end
        object RLDBText6: TRLDBText
          Left = 71
          Top = 123
          Width = 259
          Height = 12
          AutoSize = False
          DataField = 'CIDADE'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel11: TRLLabel
          Left = 39
          Top = 136
          Width = 30
          Height = 12
          Alignment = taRightJustify
          Caption = 'Bairro:'
        end
        object RLDBText7: TRLDBText
          Left = 71
          Top = 136
          Width = 194
          Height = 12
          AutoSize = False
          DataField = 'BAIRRO'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel12: TRLLabel
          Left = 446
          Top = 123
          Width = 23
          Height = 12
          Alignment = taRightJustify
          Caption = 'Cep:'
        end
        object RLDBText8: TRLDBText
          Left = 471
          Top = 123
          Width = 74
          Height = 12
          AutoSize = False
          DataField = 'CEP'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel13: TRLLabel
          Left = 361
          Top = 123
          Width = 19
          Height = 12
          Alignment = taRightJustify
          Caption = 'UF:'
        end
        object RLDBText9: TRLDBText
          Left = 382
          Top = 124
          Width = 59
          Height = 11
          AutoSize = False
          DataField = 'UF'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel26: TRLLabel
          Left = 13
          Top = 33
          Width = 69
          Height = 12
          Caption = 'Dt.Nascimento:'
        end
        object RLDBText14: TRLDBText
          Left = 83
          Top = 32
          Width = 92
          Height = 12
          AutoSize = False
          DataField = 'DTNASCIMENTO'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel10: TRLLabel
          Left = 49
          Top = 46
          Width = 32
          Height = 12
          Alignment = taRightJustify
          Caption = 'Turma:'
        end
        object RLDBText12: TRLDBText
          Left = 83
          Top = 46
          Width = 259
          Height = 12
          AutoSize = False
          DataField = 'NOMETURMA'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLImage1: TRLImage
          Left = 576
          Top = 94
          Width = 147
          Height = 133
          Stretch = True
        end
        object RLLabel18: TRLLabel
          Left = 366
          Top = 46
          Width = 27
          Height = 12
          Alignment = taRightJustify
          Caption = 'Sexo:'
        end
        object RLLabel19: TRLLabel
          Left = 395
          Top = 46
          Width = 27
          Height = 12
          Alignment = taRightJustify
          Caption = 'Sexo:'
        end
        object RLDraw8: TRLDraw
          Left = 562
          Top = 0
          Width = 172
          Height = 93
        end
        object RLLabel20: TRLLabel
          Left = 568
          Top = 14
          Width = 57
          Height = 12
          Alignment = taRightJustify
          Caption = 'Dt.Cadastro:'
        end
        object RLDBText13: TRLDBText
          Left = 629
          Top = 14
          Width = 66
          Height = 12
          DataField = 'DTCADASTRO'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel23: TRLLabel
          Left = 577
          Top = 29
          Width = 48
          Height = 12
          Alignment = taRightJustify
          Caption = 'Dt.Inativo:'
        end
        object RLDBText15: TRLDBText
          Left = 629
          Top = 29
          Width = 52
          Height = 12
          DataField = 'DTINATIVO'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel24: TRLLabel
          Left = 606
          Top = 53
          Width = 99
          Height = 12
          Alignment = taRightJustify
          Caption = 'Possuem Obs M'#233'dicas'
        end
        object RLLabel25: TRLLabel
          Left = 606
          Top = 75
          Width = 117
          Height = 12
          Alignment = taRightJustify
          Caption = 'Possuem Obs. Nutricionais'
        end
        object RLLabel27: TRLLabel
          Left = 41
          Top = 97
          Width = 27
          Height = 12
          Caption = 'Fone:'
        end
        object RLDBText16: TRLDBText
          Left = 71
          Top = 97
          Width = 29
          Height = 12
          AutoSize = False
          DataField = 'DDD'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLDBText17: TRLDBText
          Left = 103
          Top = 97
          Width = 29
          Height = 12
          DataField = 'FONE'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLDraw9: TRLDraw
          Left = 0
          Top = 210
          Width = 561
          Height = 22
        end
        object RLLabel28: TRLLabel
          Left = 8
          Top = 214
          Width = 76
          Height = 12
          Caption = 'Dia de Cobran'#231'a:'
        end
        object RLDBText18: TRLDBText
          Left = 87
          Top = 214
          Width = 72
          Height = 12
          DataField = 'DIACOBRANCA'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel29: TRLLabel
          Left = 144
          Top = 214
          Width = 110
          Height = 12
          Caption = 'M'#234's/Ano Inicio Cobran'#231'a:'
        end
        object RLLabel30: TRLLabel
          Left = 295
          Top = 214
          Width = 6
          Height = 12
          Caption = '/'
        end
        object RLDBText19: TRLDBText
          Left = 255
          Top = 214
          Width = 39
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MES_INICIO'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLDBText20: TRLDBText
          Left = 302
          Top = 214
          Width = 39
          Height = 12
          AutoSize = False
          DataField = 'ANO_INICIO'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel31: TRLLabel
          Left = 359
          Top = 213
          Width = 108
          Height = 12
          Alignment = taRightJustify
          Caption = 'M'#234's/Ano Final Cobran'#231'a:'
        end
        object RLDBText21: TRLDBText
          Left = 468
          Top = 213
          Width = 39
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'MES_FINAL'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel32: TRLLabel
          Left = 508
          Top = 213
          Width = 6
          Height = 12
          Caption = '/'
        end
        object RLDBText22: TRLDBText
          Left = 515
          Top = 213
          Width = 39
          Height = 12
          AutoSize = False
          DataField = 'ANO_FINAL'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLDraw10: TRLDraw
          Left = 0
          Top = 150
          Width = 561
          Height = 61
        end
        object RLLabel33: TRLLabel
          Left = 8
          Top = 153
          Width = 60
          Height = 12
          Alignment = taRightJustify
          Caption = 'Nome do Pai:'
        end
        object RLDBText23: TRLDBText
          Left = 71
          Top = 153
          Width = 338
          Height = 12
          AutoSize = False
          DataField = 'NOME_PAI'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel34: TRLLabel
          Left = 71
          Top = 166
          Width = 25
          Height = 12
          Caption = 'CPF:'
        end
        object RLDBText24: TRLDBText
          Left = 97
          Top = 166
          Width = 106
          Height = 12
          AutoSize = False
          DataField = 'CPF_PAI'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel35: TRLLabel
          Left = 215
          Top = 166
          Width = 27
          Height = 12
          Caption = 'Fone:'
        end
        object RLDBText25: TRLDBText
          Left = 244
          Top = 166
          Width = 112
          Height = 12
          AutoSize = False
          DataField = 'FONE_PAI'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel36: TRLLabel
          Left = 4
          Top = 181
          Width = 64
          Height = 12
          Alignment = taRightJustify
          Caption = 'Nome da M'#227'e:'
        end
        object RLDBText26: TRLDBText
          Left = 71
          Top = 181
          Width = 338
          Height = 12
          AutoSize = False
          DataField = 'NOME_MAE'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLDBText27: TRLDBText
          Left = 97
          Top = 194
          Width = 106
          Height = 12
          AutoSize = False
          DataField = 'CPF_PAI'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel37: TRLLabel
          Left = 71
          Top = 194
          Width = 25
          Height = 12
          Caption = 'CPF:'
        end
        object RLLabel38: TRLLabel
          Left = 215
          Top = 194
          Width = 27
          Height = 12
          Caption = 'Fone:'
        end
        object RLDBText28: TRLDBText
          Left = 244
          Top = 194
          Width = 112
          Height = 12
          AutoSize = False
          DataField = 'FONE_MAE'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel42: TRLLabel
          Left = 575
          Top = 53
          Width = 26
          Height = 12
          Alignment = taRightJustify
          Caption = '(  X  )'
        end
        object RLLabel43: TRLLabel
          Left = 576
          Top = 75
          Width = 26
          Height = 12
          Alignment = taRightJustify
          Caption = '(  X  )'
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 232
        Width = 734
        Height = 33
        object RLDraw7: TRLDraw
          Left = 0
          Top = 0
          Width = 734
          Height = 33
          Align = faClient
        end
        object RLLabel2: TRLLabel
          Left = 2
          Top = 3
          Width = 23
          Height = 12
          Caption = 'Obs:'
        end
        object RLDBMemo1: TRLDBMemo
          Left = 32
          Top = 3
          Width = 689
          Height = 12
          DataField = 'OBS'
          DataSource = fAlunoC.dsAlunoCons
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 265
        Width = 734
        Height = 42
        object RLDraw11: TRLDraw
          Left = 0
          Top = 0
          Width = 734
          Height = 42
          Align = faClient
        end
        object RLLabel39: TRLLabel
          Left = 2
          Top = 3
          Width = 52
          Height = 12
          Caption = 'Frequ'#234'ncia:'
        end
        object RLDBMemo2: TRLDBMemo
          Left = 57
          Top = 3
          Width = 668
          Height = 12
          DataField = 'OBS_FREQUENCIA'
          DataSource = fAlunoC.dsAlunoCons
        end
      end
      object RLBand8: TRLBand
        Left = 0
        Top = 307
        Width = 734
        Height = 35
        object RLDraw12: TRLDraw
          Left = 0
          Top = 0
          Width = 734
          Height = 35
          Align = faClient
        end
        object RLLabel40: TRLLabel
          Left = 2
          Top = 3
          Width = 63
          Height = 12
          Caption = 'Obs. M'#233'dicas:'
        end
        object RLDBMemo3: TRLDBMemo
          Left = 67
          Top = 3
          Width = 658
          Height = 12
          DataField = 'OBS_MEDICA'
          DataSource = fAlunoC.dsAlunoCons
        end
      end
      object RLBand9: TRLBand
        Left = 0
        Top = 342
        Width = 734
        Height = 40
        object RLDraw13: TRLDraw
          Left = 0
          Top = 0
          Width = 734
          Height = 40
          Align = faClient
        end
        object RLLabel41: TRLLabel
          Left = 2
          Top = 3
          Width = 78
          Height = 12
          Caption = 'Obs. Nutricionais:'
        end
        object RLDBMemo4: TRLDBMemo
          Left = 83
          Top = 3
          Width = 640
          Height = 12
          DataField = 'OBS_NUTRICIONAIS'
          DataSource = fAlunoC.dsAlunoCons
        end
      end
    end
  end
end
