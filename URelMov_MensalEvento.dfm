object fRelMov_MensalEvento: TfRelMov_MensalEvento
  Left = 80
  Top = 112
  Width = 866
  Height = 595
  Caption = 'fRelMov_MensalEvento'
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
    DataSource = fConsMov_MensalEvento.dsConsulta
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
      DataSource = fConsMov_MensalEvento.dsConsulta
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 734
        Height = 15
        object RLDBText2: TRLDBText
          Left = 51
          Top = 1
          Width = 314
          Height = 12
          AutoSize = False
          DataField = 'NOMEEVENTO'
          DataSource = fConsMov_MensalEvento.dsConsulta
        end
        object RLDBText3: TRLDBText
          Left = 1
          Top = 0
          Width = 48
          Height = 12
          Alignment = taCenter
          AutoSize = False
          DataField = 'ID_EVENTO'
          DataSource = fConsMov_MensalEvento.dsConsulta
        end
        object RLDBText4: TRLDBText
          Left = 480
          Top = 0
          Width = 74
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRTOTAL'
          DataSource = fConsMov_MensalEvento.dsConsulta
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
        object RLDBText1: TRLDBText
          Left = 615
          Top = 1
          Width = 74
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRANUAL'
          DataSource = fConsMov_MensalEvento.dsConsulta
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 15
        Width = 734
        Height = 17
        BandType = btFooter
        object RLDBResult1: TRLDBResult
          Left = 473
          Top = 3
          Width = 82
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRTOTAL'
          DataSource = fConsMov_MensalEvento.dsConsulta
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
        object RLDBResult2: TRLDBResult
          Left = 607
          Top = 3
          Width = 82
          Height = 12
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'VLRANUAL'
          DataSource = fConsMov_MensalEvento.dsConsulta
          DisplayMask = '###,###,##0.00'
          Info = riSum
          ResetAfterPrint = True
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
      object RLLabel6: TRLLabel
        Left = 1
        Top = 44
        Width = 33
        Height = 12
        Caption = 'Evento'
      end
      object RLLabel7: TRLLabel
        Left = 507
        Top = 44
        Width = 47
        Height = 12
        Caption = 'Valor Total'
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 57
        Width = 734
        Height = 2
        Align = faBottom
        DrawKind = dkLine
      end
      object RLLabel4: TRLLabel
        Left = 617
        Top = 44
        Width = 73
        Height = 12
        Alignment = taRightJustify
        Caption = 'Valor Acumulado'
      end
    end
  end
end
