object fRelMov_Mensal: TfRelMov_Mensal
  Left = 80
  Top = 112
  Width = 866
  Height = 595
  Caption = 'fRelMov_Mensal'
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
    Left = 24
    Top = 16
    Width = 794
    Height = 1123
    DataSource = DMMov_Mensal.dsMov_Mensal
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
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 89
      Width = 734
      Height = 476
      DataSource = DMMov_Mensal.dsMov_Mensal
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 734
        Height = 15
        BeforePrint = RLBand2BeforePrint
        object RLLabel12: TRLLabel
          Left = 2
          Top = 0
          Width = 47
          Height = 12
        end
        object RLDBText1: TRLDBText
          Left = 50
          Top = 0
          Width = 68
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'DTVENCIMENTO'
          DataSource = DMMov_Mensal.dsMov_Mensal
        end
        object RLDBText2: TRLDBText
          Left = 119
          Top = 0
          Width = 295
          Height = 12
          AutoSize = False
          DataField = 'NOME_ALUNO'
          DataSource = DMMov_Mensal.dsMov_Mensal
        end
        object RLDBText3: TRLDBText
          Left = 415
          Top = 0
          Width = 64
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'ID'
          DataSource = DMMov_Mensal.dsMov_Mensal
        end
        object RLDBText4: TRLDBText
          Left = 480
          Top = 0
          Width = 74
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRTOTAL'
          DataSource = DMMov_Mensal.dsMov_Mensal
        end
        object RLDBText5: TRLDBText
          Left = 556
          Top = 0
          Width = 87
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRPAGO'
          DataSource = DMMov_Mensal.dsMov_Mensal
        end
        object RLDBText6: TRLDBText
          Left = 644
          Top = 0
          Width = 88
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRRESTANTE'
          DataSource = DMMov_Mensal.dsMov_Mensal
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 13
          Width = 734
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 15
        Width = 734
        Height = 18
        BandType = btFooter
        object RLDBResult1: TRLDBResult
          Left = 473
          Top = 3
          Width = 82
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRTOTAL'
          DataSource = DMMov_Mensal.dsMov_Mensal
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult2: TRLDBResult
          Left = 557
          Top = 3
          Width = 86
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRPAGO'
          DataSource = DMMov_Mensal.dsMov_Mensal
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLDBResult3: TRLDBResult
          Left = 645
          Top = 3
          Width = 88
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRRESTANTE'
          DataSource = DMMov_Mensal.dsMov_Mensal
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLLabel10: TRLLabel
          Left = 352
          Top = 2
          Width = 90
          Height = 11
          Caption = 'Total Geral ======>'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object RLBand1: TRLBand
      Left = 30
      Top = 30
      Width = 734
      Height = 59
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 144
        Top = 5
        Width = 410
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Relat'#243'rio do Movimento Mensal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
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
      object RLLabel2: TRLLabel
        Left = 4
        Top = 27
        Width = 30
        Height = 10
        Caption = 'Op'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 36
        Top = 27
        Width = 30
        Height = 10
        Caption = 'Op'#231#245'es:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 4
        Top = 44
        Width = 39
        Height = 12
        Caption = 'M'#234's/Ano'
      end
      object RLLabel5: TRLLabel
        Left = 60
        Top = 44
        Width = 40
        Height = 12
        Caption = 'Dt.Vecto'
      end
      object RLLabel6: TRLLabel
        Left = 120
        Top = 44
        Width = 26
        Height = 12
        Caption = 'Aluno'
      end
      object RLLabel7: TRLLabel
        Left = 507
        Top = 44
        Width = 47
        Height = 12
        Caption = 'Valor Total'
      end
      object RLLabel8: TRLLabel
        Left = 599
        Top = 44
        Width = 48
        Height = 12
        Caption = 'Valor Pago'
      end
      object RLLabel9: TRLLabel
        Left = 665
        Top = 44
        Width = 66
        Height = 12
        Caption = 'Valor Pendente'
      end
      object RLLabel11: TRLLabel
        Left = 428
        Top = 44
        Width = 37
        Height = 12
        Caption = 'N'#186' Mov.'
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 57
        Width = 734
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
    end
  end
end
