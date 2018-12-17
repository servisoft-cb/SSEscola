object fRelRecibo: TfRelRecibo
  Left = 64
  Top = 80
  Width = 922
  Height = 648
  Caption = 'fRelRecibo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RLReport1: TRLReport
    Left = 72
    Top = 32
    Width = 794
    Height = 1123
    DataSource = fMov_MensalC.dsmAuxiliar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 8.000000000000000000
    Margins.TopMargin = 9.000000000000000000
    Margins.RightMargin = 8.000000000000000000
    Margins.BottomMargin = 9.000000000000000000
    ShowProgress = False
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 34
      Width = 734
      Height = 595
      DataSource = fMov_MensalC.dsmAuxiliar
      object RLBand1: TRLBand
        Left = 0
        Top = 0
        Width = 734
        Height = 310
        BeforePrint = RLBand1BeforePrint
        object RLDraw1: TRLDraw
          Left = 0
          Top = 0
          Width = 734
          Height = 136
          Align = faTop
        end
        object RLLabel1: TRLLabel
          Left = 224
          Top = 8
          Width = 218
          Height = 19
          Caption = 'RECIBO DE COBRAN'#199'A N'#186' '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 448
          Top = 8
          Width = 13
          Height = 19
          Caption = '1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
        end
        object RLLabel3: TRLLabel
          Left = 8
          Top = 40
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
          Top = 40
          Width = 77
          Height = 14
          DataField = 'NOME_ALUNO'
          DataSource = DMMov_Mensal.dsMov_Mensal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText2: TRLDBText
          Left = 49
          Top = 40
          Width = 50
          Height = 14
          Alignment = taCenter
          AutoSize = False
          DataField = 'CODALUNO'
          DataSource = DMMov_Mensal.dsMov_Mensal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 102
          Top = 40
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
        object RLLabel5: TRLLabel
          Left = 16
          Top = 65
          Width = 69
          Height = 14
          Caption = 'Respons'#225'vel:'
        end
        object RLDBText3: TRLDBText
          Left = 87
          Top = 65
          Width = 370
          Height = 14
          AutoSize = False
          DataField = 'NOME_RESPONSAVEL'
          DataSource = DMMov_Mensal.dsMov_Mensal
        end
        object RLLabel6: TRLLabel
          Left = 500
          Top = 64
          Width = 25
          Height = 14
          Caption = 'CPF:'
        end
        object RLDBText4: TRLDBText
          Left = 527
          Top = 64
          Width = 130
          Height = 14
          AutoSize = False
          DataField = 'CPF_REPONSAVEL'
          DataSource = DMMov_Mensal.dsMov_Mensal
        end
        object RLLabel7: TRLLabel
          Left = 33
          Top = 82
          Width = 52
          Height = 14
          Alignment = taRightJustify
          Caption = 'Endere'#231'o:'
        end
        object RLDBText5: TRLDBText
          Left = 87
          Top = 82
          Width = 371
          Height = 14
          AutoSize = False
          DataField = 'ENDERECO'
          DataSource = DMMov_Mensal.dsMov_Mensal
        end
        object RLLabel8: TRLLabel
          Left = 46
          Top = 99
          Width = 39
          Height = 14
          Alignment = taRightJustify
          Caption = 'Cidade:'
        end
        object RLDBText6: TRLDBText
          Left = 87
          Top = 99
          Width = 259
          Height = 14
          AutoSize = False
          DataField = 'CIDADE'
          DataSource = DMMov_Mensal.dsMov_Mensal
        end
        object RLLabel9: TRLLabel
          Left = 490
          Top = 82
          Width = 35
          Height = 14
          Alignment = taRightJustify
          Caption = 'Bairro:'
        end
        object RLDBText7: TRLDBText
          Left = 527
          Top = 82
          Width = 194
          Height = 14
          AutoSize = False
          DataField = 'BAIRRO'
          DataSource = DMMov_Mensal.dsMov_Mensal
        end
        object RLLabel10: TRLLabel
          Left = 500
          Top = 99
          Width = 25
          Height = 14
          Alignment = taRightJustify
          Caption = 'Cep:'
        end
        object RLDBText8: TRLDBText
          Left = 527
          Top = 99
          Width = 91
          Height = 14
          AutoSize = False
          DataField = 'CEP'
          DataSource = DMMov_Mensal.dsMov_Mensal
        end
        object RLLabel11: TRLLabel
          Left = 377
          Top = 99
          Width = 19
          Height = 14
          Alignment = taRightJustify
          Caption = 'UF:'
        end
        object RLDBText9: TRLDBText
          Left = 398
          Top = 99
          Width = 59
          Height = 14
          AutoSize = False
          DataField = 'UF'
          DataSource = DMMov_Mensal.dsMov_Mensal
        end
        object RLDraw3: TRLDraw
          Left = 0
          Top = 136
          Width = 734
          Height = 174
          Align = faTop
        end
        object RLLabel14: TRLLabel
          Left = 24
          Top = 144
          Width = 99
          Height = 14
          Caption = 'Data Vencimento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 128
          Top = 144
          Width = 87
          Height = 14
          DataField = 'DTVENCIMENTO'
          DataSource = DMMov_Mensal.dsMov_Mensal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 288
          Top = 144
          Width = 138
          Height = 14
          Caption = 'Valor Total do Recibo: R$'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText13: TRLDBText
          Left = 431
          Top = 144
          Width = 126
          Height = 14
          AutoSize = False
          DataField = 'VLRLIQUIDO'
          DataSource = DMMov_Mensal.dsMov_Mensal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDraw4: TRLDraw
          Left = 1
          Top = 164
          Width = 733
          Height = 2
          DrawKind = dkLine
        end
        object RLLabel16: TRLLabel
          Left = 8
          Top = 174
          Width = 166
          Height = 14
          Caption = 'Presta'#231#227'o de servi'#231'o referente a '
        end
        object RLLabel17: TRLLabel
          Left = 8
          Top = 190
          Width = 107
          Height = 14
          Caption = 'Juros de mora ao dia:'
        end
        object RLLabel18: TRLLabel
          Left = 336
          Top = 190
          Width = 73
          Height = 14
          Caption = 'Multa de mora:'
        end
        object RLLabel19: TRLLabel
          Left = 568
          Top = 190
          Width = 162
          Height = 14
          Caption = 'Recebemos: _____/_____/_____'
        end
        object RLLabel20: TRLLabel
          Left = 568
          Top = 223
          Width = 163
          Height = 14
          Caption = 'Cheque:____________________'
        end
        object RLLabel21: TRLLabel
          Left = 568
          Top = 259
          Width = 163
          Height = 14
          Caption = 'Banco:_____________________'
        end
        object RLDraw5: TRLDraw
          Left = 5
          Top = 248
          Width = 356
          Height = 2
          DrawKind = dkLine
        end
        object RLLabel22: TRLLabel
          Left = 8
          Top = 251
          Width = 385
          Height = 14
          AutoSize = False
        end
        object RLLabel23: TRLLabel
          Left = 8
          Top = 266
          Width = 385
          Height = 14
          AutoSize = False
        end
        object RLLabel25: TRLLabel
          Left = 561
          Top = 40
          Width = 75
          Height = 14
          Caption = 'Dt.Nascimento:'
        end
        object RLDBText14: TRLDBText
          Left = 638
          Top = 40
          Width = 92
          Height = 14
          AutoSize = False
          DataField = 'DTNASCIMENTO'
          DataSource = DMMov_Mensal.dsMov_Mensal
        end
      end
      object RLSubDetail2: TRLSubDetail
        Left = 0
        Top = 330
        Width = 734
        Height = 140
        DataSource = DMMov_Mensal.dsMov_Mensal_Eventos
        object RLBand2: TRLBand
          Left = 0
          Top = 0
          Width = 734
          Height = 22
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Borders.FixedLeft = True
          Borders.FixedRight = True
          object RLLabel12: TRLLabel
            Left = 8
            Top = 6
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
          object RLLabel13: TRLLabel
            Left = 331
            Top = 6
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
          object RLDraw2: TRLDraw
            Left = 1
            Top = 20
            Width = 732
            Height = 2
            Align = faBottom
            DrawKind = dkLine
            Pen.Style = psDot
          end
          object RLLabel26: TRLLabel
            Left = 377
            Top = 6
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
          object RLLabel27: TRLLabel
            Left = 700
            Top = 6
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
          object RLLabel28: TRLLabel
            Left = 228
            Top = 5
            Width = 44
            Height = 14
            Alignment = taRightJustify
            Caption = 'V.Desc.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel29: TRLLabel
            Left = 602
            Top = 5
            Width = 44
            Height = 14
            Alignment = taRightJustify
            Caption = 'V.Desc.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand5: TRLBand
          Left = 0
          Top = 46
          Width = 734
          Height = 16
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object RLDraw6: TRLDraw
            Left = 16
            Top = 6
            Width = 722
            Height = 6
            Pen.Style = psDot
          end
        end
        object RLDetailGrid1: TRLDetailGrid
          Left = 0
          Top = 22
          Width = 734
          Height = 16
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          ColCount = 2
          BeforePrint = RLDetailGrid1BeforePrint
          object RLDBText15: TRLDBText
            Left = 4
            Top = 3
            Width = 221
            Height = 11
            AutoSize = False
            DataField = 'NOMEVENTO'
            DataSource = DMMov_Mensal.dsMov_Mensal_Eventos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText16: TRLDBText
            Left = 274
            Top = 3
            Width = 91
            Height = 11
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRTOTAL'
            DataSource = DMMov_Mensal.dsMov_Mensal_Eventos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText10: TRLDBText
            Left = 226
            Top = 3
            Width = 47
            Height = 11
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'VLRDESCONTO'
            DataSource = DMMov_Mensal.dsMov_Mensal_Eventos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLBand3: TRLBand
          Left = 0
          Top = 38
          Width = 734
          Height = 8
          BandType = btFooter
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          BeforePrint = RLBand3BeforePrint
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 310
        Width = 734
        Height = 20
        AfterPrint = RLBand4AfterPrint
        object RLDraw7: TRLDraw
          Left = 0
          Top = 0
          Width = 734
          Height = 20
          Align = faClient
        end
        object RLLabel24: TRLLabel
          Left = 2
          Top = 4
          Width = 28
          Height = 14
          Caption = 'Obs:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBMemo1: TRLDBMemo
          Left = 32
          Top = 5
          Width = 689
          Height = 12
          Behavior = [beSiteExpander]
          DataField = 'OBS'
          DataSource = DMMov_Mensal.dsMov_Mensal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
end
