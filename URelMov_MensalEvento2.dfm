object fRelMov_MensalEvento2: TfRelMov_MensalEvento2
  Left = 13
  Top = 118
  Width = 978
  Height = 601
  Caption = 'fRelMov_MensalEvento2'
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
    Width = 1123
    Height = 794
    DataSource = fConsMov_MensalEvento2.dsmEvento
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
    PageSetup.Orientation = poLandscape
    ShowProgress = False
    object RLSubDetail1: TRLSubDetail
      Left = 30
      Top = 89
      Width = 1063
      Height = 476
      DataSource = fConsMov_MensalEvento2.dsmEvento
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 1063
        Height = 14
        BeforePrint = RLBand2BeforePrint
        object RLDBText3: TRLDBText
          Left = 1
          Top = 0
          Width = 36
          Height = 11
          Alignment = taCenter
          AutoSize = False
          DataField = 'CodEvento'
          DataSource = fConsMov_MensalEvento2.dsmEvento
        end
        object RLDBText4: TRLDBText
          Left = 921
          Top = 1
          Width = 74
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrTotal'
          DataSource = fConsMov_MensalEvento2.dsmEvento
        end
        object RLDraw2: TRLDraw
          Left = 0
          Top = 12
          Width = 1063
          Height = 2
          Align = faBottom
          DrawKind = dkLine
          Pen.Style = psDot
        end
        object RLDBText1: TRLDBText
          Left = 995
          Top = 1
          Width = 66
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMedia'
          DataSource = fConsMov_MensalEvento2.dsmEvento
        end
        object RLDBText5: TRLDBText
          Left = 212
          Top = 1
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes1'
          DataSource = fConsMov_MensalEvento2.dsmEvento
        end
        object RLDBText6: TRLDBText
          Left = 271
          Top = 1
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes2'
          DataSource = fConsMov_MensalEvento2.dsmEvento
        end
        object RLDBText7: TRLDBText
          Left = 330
          Top = 1
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes3'
          DataSource = fConsMov_MensalEvento2.dsmEvento
        end
        object RLDBText8: TRLDBText
          Left = 507
          Top = 1
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes6'
          DataSource = fConsMov_MensalEvento2.dsmEvento
        end
        object RLDBText9: TRLDBText
          Left = 448
          Top = 1
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes5'
          DataSource = fConsMov_MensalEvento2.dsmEvento
        end
        object RLDBText10: TRLDBText
          Left = 389
          Top = 1
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes4'
          DataSource = fConsMov_MensalEvento2.dsmEvento
        end
        object RLDBText11: TRLDBText
          Left = 566
          Top = 1
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes7'
          DataSource = fConsMov_MensalEvento2.dsmEvento
        end
        object RLDBText12: TRLDBText
          Left = 625
          Top = 1
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes8'
          DataSource = fConsMov_MensalEvento2.dsmEvento
        end
        object RLDBText13: TRLDBText
          Left = 684
          Top = 1
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes9'
          DataSource = fConsMov_MensalEvento2.dsmEvento
        end
        object RLDBText14: TRLDBText
          Left = 861
          Top = 1
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes12'
          DataSource = fConsMov_MensalEvento2.dsmEvento
        end
        object RLDBText15: TRLDBText
          Left = 802
          Top = 1
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes11'
          DataSource = fConsMov_MensalEvento2.dsmEvento
        end
        object RLDBText16: TRLDBText
          Left = 743
          Top = 1
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes10'
          DataSource = fConsMov_MensalEvento2.dsmEvento
        end
        object RLDBMemo1: TRLDBMemo
          Left = 37
          Top = 0
          Width = 171
          Height = 12
          DataField = 'NomeEvento'
          DataSource = fConsMov_MensalEvento2.dsmEvento
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 14
        Width = 1063
        Height = 17
        BandType = btFooter
        BeforePrint = RLBand3BeforePrint
        object rlrMes1: TRLDBResult
          Left = 208
          Top = 3
          Width = 63
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes1'
          DataSource = fConsMov_MensalEvento2.dsmEvento
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLLabel10: TRLLabel
          Left = 96
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
        object RLDBResult2: TRLDBResult
          Left = 921
          Top = 3
          Width = 74
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrTotal'
          DataSource = fConsMov_MensalEvento2.dsmEvento
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object rlrMes2: TRLDBResult
          Left = 271
          Top = 3
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes2'
          DataSource = fConsMov_MensalEvento2.dsmEvento
          DisplayMask = '0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object rlrMes3: TRLDBResult
          Left = 330
          Top = 3
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes3'
          DataSource = fConsMov_MensalEvento2.dsmEvento
          DisplayMask = '0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object rlrMes5: TRLDBResult
          Left = 448
          Top = 3
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes5'
          DataSource = fConsMov_MensalEvento2.dsmEvento
          DisplayMask = '0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object rlrMes4: TRLDBResult
          Left = 389
          Top = 3
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes4'
          DataSource = fConsMov_MensalEvento2.dsmEvento
          DisplayMask = '0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object rlrMes6: TRLDBResult
          Left = 507
          Top = 3
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes6'
          DataSource = fConsMov_MensalEvento2.dsmEvento
          DisplayMask = '0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object rlrMes7: TRLDBResult
          Left = 566
          Top = 3
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes7'
          DataSource = fConsMov_MensalEvento2.dsmEvento
          DisplayMask = '0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object rlrMes9: TRLDBResult
          Left = 684
          Top = 3
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes9'
          DataSource = fConsMov_MensalEvento2.dsmEvento
          DisplayMask = '0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object rlrMes8: TRLDBResult
          Left = 625
          Top = 3
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes8'
          DataSource = fConsMov_MensalEvento2.dsmEvento
          DisplayMask = '0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object rlrMes10: TRLDBResult
          Left = 743
          Top = 3
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes10'
          DataSource = fConsMov_MensalEvento2.dsmEvento
          DisplayMask = '0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object rlrMes11: TRLDBResult
          Left = 802
          Top = 3
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes11'
          DataSource = fConsMov_MensalEvento2.dsmEvento
          DisplayMask = '0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object rlrMes12: TRLDBResult
          Left = 861
          Top = 3
          Width = 59
          Height = 11
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VlrMes12'
          DataSource = fConsMov_MensalEvento2.dsmEvento
          DisplayMask = '0.00'
          Info = riSum
          ResetAfterPrint = True
        end
        object RLLabel5: TRLLabel
          Left = 995
          Top = 3
          Width = 66
          Height = 12
          Alignment = taRightJustify
        end
      end
    end
    object RLBand1: TRLBand
      Left = 30
      Top = 30
      Width = 1063
      Height = 59
      BandType = btHeader
      BeforePrint = RLBand1BeforePrint
      object RLLabel1: TRLLabel
        Left = 56
        Top = 5
        Width = 546
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = 'Relat'#243'rio do Movimento Mensal Por Evento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 982
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
        Left = 1002
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
        Left = 967
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
        Left = 1002
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
      object RLLabel6: TRLLabel
        Left = 1
        Top = 44
        Width = 33
        Height = 12
        Caption = 'Evento'
      end
      object RLLabel7: TRLLabel
        Left = 932
        Top = 44
        Width = 63
        Height = 12
        Caption = 'Vlr.Acumulado'
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 57
        Width = 1063
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
      object RLLabel4: TRLLabel
        Left = 1020
        Top = 44
        Width = 41
        Height = 12
        Alignment = taRightJustify
        Caption = 'Vlr.M'#233'dia'
      end
      object rlMes1: TRLLabel
        Left = 217
        Top = 43
        Width = 54
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
      end
      object rlMes2: TRLLabel
        Left = 276
        Top = 44
        Width = 54
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
      end
      object rlMes4: TRLLabel
        Left = 395
        Top = 44
        Width = 54
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
      end
      object rlMes3: TRLLabel
        Left = 336
        Top = 44
        Width = 54
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
      end
      object rlMes5: TRLLabel
        Left = 454
        Top = 45
        Width = 54
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
      end
      object rlMes6: TRLLabel
        Left = 513
        Top = 45
        Width = 54
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
      end
      object rlMes8: TRLLabel
        Left = 632
        Top = 45
        Width = 54
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
      end
      object rlMes7: TRLLabel
        Left = 573
        Top = 45
        Width = 54
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
      end
      object rlMes9: TRLLabel
        Left = 689
        Top = 45
        Width = 54
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
      end
      object rlMes10: TRLLabel
        Left = 748
        Top = 45
        Width = 54
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
      end
      object rlMes12: TRLLabel
        Left = 867
        Top = 45
        Width = 54
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
      end
      object rlMes11: TRLLabel
        Left = 808
        Top = 45
        Width = 54
        Height = 12
        Alignment = taRightJustify
        AutoSize = False
      end
    end
  end
end
