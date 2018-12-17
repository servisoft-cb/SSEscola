object fRelAluno: TfRelAluno
  Left = 80
  Top = 112
  Width = 866
  Height = 595
  Caption = 'fRelAluno'
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
    Top = 40
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
      Height = 312
      DataSource = fAlunoC.dsAlunoCons
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 127
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
        Height = 108
        BeforePrint = RLBand2BeforePrint
        object RLDraw2: TRLDraw
          Left = 0
          Top = 0
          Width = 734
          Height = 108
          Align = faClient
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
          Left = 24
          Top = 34
          Width = 61
          Height = 12
          Caption = 'Respons'#225'vel:'
        end
        object RLDBText3: TRLDBText
          Left = 87
          Top = 34
          Width = 370
          Height = 14
          AutoSize = False
          DataField = 'NOME_RESPONSAVEL'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel7: TRLLabel
          Left = 500
          Top = 33
          Width = 25
          Height = 12
          Caption = 'CPF:'
        end
        object RLDBText4: TRLDBText
          Left = 527
          Top = 33
          Width = 130
          Height = 14
          AutoSize = False
          DataField = 'CPF_REPONSAVEL'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel8: TRLLabel
          Left = 40
          Top = 51
          Width = 45
          Height = 12
          Alignment = taRightJustify
          Caption = 'Endere'#231'o:'
        end
        object RLDBText5: TRLDBText
          Left = 87
          Top = 51
          Width = 371
          Height = 14
          AutoSize = False
          DataField = 'ENDERECO'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel9: TRLLabel
          Left = 50
          Top = 68
          Width = 35
          Height = 12
          Alignment = taRightJustify
          Caption = 'Cidade:'
        end
        object RLDBText6: TRLDBText
          Left = 87
          Top = 68
          Width = 259
          Height = 14
          AutoSize = False
          DataField = 'CIDADE'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel11: TRLLabel
          Left = 495
          Top = 51
          Width = 30
          Height = 12
          Alignment = taRightJustify
          Caption = 'Bairro:'
        end
        object RLDBText7: TRLDBText
          Left = 527
          Top = 51
          Width = 194
          Height = 14
          AutoSize = False
          DataField = 'BAIRRO'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel12: TRLLabel
          Left = 502
          Top = 68
          Width = 23
          Height = 12
          Alignment = taRightJustify
          Caption = 'Cep:'
        end
        object RLDBText8: TRLDBText
          Left = 527
          Top = 68
          Width = 91
          Height = 14
          AutoSize = False
          DataField = 'CEP'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel13: TRLLabel
          Left = 377
          Top = 68
          Width = 19
          Height = 12
          Alignment = taRightJustify
          Caption = 'UF:'
        end
        object RLDBText9: TRLDBText
          Left = 398
          Top = 68
          Width = 59
          Height = 13
          AutoSize = False
          DataField = 'UF'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel26: TRLLabel
          Left = 561
          Top = 9
          Width = 69
          Height = 12
          Caption = 'Dt.Nascimento:'
        end
        object RLDBText14: TRLDBText
          Left = 638
          Top = 9
          Width = 92
          Height = 14
          AutoSize = False
          DataField = 'DTNASCIMENTO'
          DataSource = fAlunoC.dsAlunoCons
        end
        object RLLabel10: TRLLabel
          Left = 53
          Top = 92
          Width = 32
          Height = 12
          Alignment = taRightJustify
          Caption = 'Turma:'
        end
        object RLDBText12: TRLDBText
          Left = 87
          Top = 91
          Width = 259
          Height = 14
          AutoSize = False
          DataField = 'NOMETURMA'
          DataSource = fAlunoC.dsAlunoCons
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 108
        Width = 734
        Height = 19
        object RLDraw7: TRLDraw
          Left = 0
          Top = 0
          Width = 734
          Height = 19
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
    end
  end
end
