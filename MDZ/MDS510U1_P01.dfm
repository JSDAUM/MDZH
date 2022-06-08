object MDS510F1_P01: TMDS510F1_P01
  Left = 720
  Top = 118
  Width = 839
  Height = 892
  Caption = 'MDS510F1_P01 '#49688#49696' '#44592#47197#51648' '#52636#47141
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object qr_01: TQuickRep
    Left = 0
    Top = -8
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548#52404
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Continuous = False
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      150.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    PreviewLeft = 0
    PreviewTop = 0
    object SummaryBand1: TQRBand
      Left = 57
      Top = 515
      Width = 700
      Height = 102
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        269.875000000000000000
        1852.083333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbSummary
      object QRLabel28: TQRLabel
        Left = 9
        Top = 11
        Width = 129
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          23.812500000000000000
          29.104166666666670000
          341.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49688#49696#51473' '#54792#50529#49548#49892#47049
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 514
        Top = 11
        Width = 69
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1359.958333333333000000
          29.104166666666670000
          182.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #48176#50529'/'#48176#45453
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 320
        Top = 61
        Width = 77
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          846.666666666666700000
          161.395833333333300000
          203.729166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51089#49457#51032#49324' :'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel31: TQRLabel
        Left = 449
        Top = 77
        Width = 77
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1187.979166666667000000
          203.729166666666700000
          203.729166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51665#46020#51032#49324' :'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel32: TQRLabel
        Left = 614
        Top = 11
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1624.541666666667000000
          29.104166666666670000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #50976'/'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 673
        Top = 11
        Width = 16
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1780.645833333333000000
          29.104166666666670000
          42.333333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #47924
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape7: TQRShape
        Left = 592
        Top = 14
        Width = 10
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333300000
          1566.333333333330000000
          37.041666666666700000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 651
        Top = 14
        Width = 10
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333300000
          1722.437500000000000000
          37.041666666666700000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrlb_DrainN: TQRLabel
        Left = 650
        Top = 9
        Width = 19
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1719.791666666670000000
          23.812500000000000000
          50.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #8730
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object qrlb_DrainY: TQRLabel
        Left = 592
        Top = 9
        Width = 19
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1566.333333333330000000
          23.812500000000000000
          50.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #8730
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel11: TQRLabel
        Left = 168
        Top = 35
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          444.500000000000000000
          92.604166666666670000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #50976'/'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 232
        Top = 35
        Width = 16
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          613.833333333333300000
          92.604166666666670000
          42.333333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #47924
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape9: TQRShape
        Left = 152
        Top = 37
        Width = 10
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333300000
          402.166666666667000000
          97.895833333333300000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 211
        Top = 37
        Width = 10
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333300000
          558.270833333333000000
          97.895833333333300000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrlb_TissN: TQRLabel
        Left = 208
        Top = 35
        Width = 19
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          550.333333333333000000
          92.604166666666700000
          50.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #8730
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object qrlb_TissY: TQRLabel
        Left = 152
        Top = 35
        Width = 19
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          402.166666666667000000
          92.604166666666700000
          50.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #8730
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object qrlb_Recid: TQRLabel
        Left = 409
        Top = 61
        Width = 123
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1082.145833333333000000
          161.395833333333300000
          325.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrlb_Recid'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape11: TQRShape
        Left = 534
        Top = 90
        Width = 155
        Height = 9
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1412.875000000000000000
          238.125000000000000000
          410.104166666666800000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrlb_OpDr1: TQRLabel
        Left = 552
        Top = 77
        Width = 123
        Height = 14
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1460.500000000000000000
          203.729166666666700000
          325.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrlb_opdr'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlb_bloodrj: TQRLabel
        Left = 149
        Top = 12
        Width = 43
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          394.229166666667000000
          31.750000000000000000
          113.770833333333000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '12345'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 195
        Top = 12
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          515.937500000000000000
          31.750000000000000000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'cc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 321
        Top = 11
        Width = 46
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          849.312500000000000000
          29.104166666666670000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49688#54792#47049
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrl_blood: TQRLabel
        Left = 373
        Top = 12
        Width = 42
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          986.895833333333000000
          31.750000000000000000
          111.125000000000000000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '12345'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 421
        Top = 12
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1113.895833333333000000
          31.750000000000000000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'cc'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 47
        Top = 35
        Width = 91
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          124.354166666666700000
          92.604166666666670000
          240.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51312#51649#54364#48376#44160#52404
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 483
        Top = 35
        Width = 24
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1277.937500000000000000
          92.604166666666670000
          63.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #50976'/'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 542
        Top = 35
        Width = 16
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1434.041666666667000000
          92.604166666666670000
          42.333333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #47924
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 461
        Top = 38
        Width = 10
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333300000
          1219.729166666670000000
          100.541666666667000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 522
        Top = 38
        Width = 10
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333300000
          1381.125000000000000000
          100.541666666667000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrl_sponN: TQRLabel
        Left = 519
        Top = 35
        Width = 19
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1373.187500000000000000
          92.604166666666700000
          50.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #8730
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object qrl_sponY: TQRLabel
        Left = 461
        Top = 35
        Width = 19
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1219.729166666670000000
          92.604166666666700000
          50.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #8730
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel25: TQRLabel
        Left = 321
        Top = 35
        Width = 137
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          849.312500000000000000
          92.604166666666670000
          362.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49828#54256#51648' '#49324#50857#47049' '#54869#51064
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 61
        Top = 61
        Width = 77
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          161.395833333333300000
          161.395833333333300000
          203.729166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51089#49457#51068#49884' :'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlb_Recdate: TQRLabel
        Left = 150
        Top = 61
        Width = 123
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          396.875000000000000000
          161.395833333333300000
          325.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrlb_Recdate'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object DetailBand1: TQRBand
      Left = 57
      Top = 494
      Width = 700
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        55.562500000000000000
        1852.083333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object qrme_data: TQRMemo
        Left = 49
        Top = 4
        Width = 646
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          129.645833333333300000
          10.583333333333330000
          1709.208333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        Color = clWhite
        Transparent = False
        WordWrap = True
        FullJustify = False
        FontSize = 10
      end
    end
    object TitleBand1: TQRBand
      Left = 57
      Top = 206
      Width = 700
      Height = 288
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        762.000000000000000000
        1852.083333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object qrlb_OpDr3: TQRLabel
        Left = 620
        Top = 38
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1640.416666666667000000
          100.541666666666700000
          198.437500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrlb_OpDr3'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlb_OpDr2: TQRLabel
        Left = 452
        Top = 38
        Width = 76
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1195.916666666667000000
          100.541666666666700000
          201.083333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrlb_OpDr2'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 13
        Top = -3
        Width = 78
        Height = 14
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          34.395833333333330000
          -7.937500000000000000
          206.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49688' '#49696' '#51068' :'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 53
        Top = 38
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          140.229166666666700000
          100.541666666666700000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51665#46020#51032'1 :'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 366
        Top = 38
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          968.375000000000000000
          100.541666666666700000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51228'1'#48372#51312#51032' :'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlb_OpDate: TQRLabel
        Left = 95
        Top = -6
        Width = 96
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          251.354166666666700000
          -15.875000000000000000
          254.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '2000-20-20'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object QRLabel14: TQRLabel
        Left = 534
        Top = 38
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1412.875000000000000000
          100.541666666666700000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51228'2'#48372#51312#51032' :'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlb_OpDr: TQRLabel
        Left = 127
        Top = 38
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          336.020833333333400000
          100.541666666666700000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrlb_OpDr'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 8
        Top = 65
        Width = 115
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          21.166666666666670000
          171.979166666666700000
          304.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49688#49696#51204' '#51652#45800#47749' :'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 8
        Top = 87
        Width = 115
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          230.187500000000000000
          304.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49688#49696#54980' '#51652#45800#47749' :'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 11
        Top = 181
        Width = 115
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          29.104166666666670000
          478.895833333333300000
          304.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49688#49696#54980' '#49688#49696#47749' :'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 49
        Top = 262
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          129.645833333333300000
          693.208333333333300000
          203.729166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #47560#52712#51333#47448' :'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlb_PstIcdNm: TQRLabel
        Left = 126
        Top = 87
        Width = 570
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          333.375000000000000000
          230.187500000000000000
          1508.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrlb_PstIcdNm'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qrlb_OpName: TQRLabel
        Left = 126
        Top = 181
        Width = 570
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          333.375000000000000000
          478.895833333333400000
          1508.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrlb_OpName'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qrlb_AnethNm: TQRLabel
        Left = 126
        Top = 262
        Width = 570
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          333.375000000000000000
          693.208333333333400000
          1508.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrlb_AnethNm'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 11
        Top = 163
        Width = 115
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          29.104166666666670000
          431.270833333333300000
          304.270833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49688#49696#51204' '#49688#49696#47749' :'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlb_PreOpName: TQRLabel
        Left = 126
        Top = 163
        Width = 570
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          333.375000000000000000
          431.270833333333400000
          1508.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrlb_OpName'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qrlb_PstIcdNm2: TQRLabel
        Left = 126
        Top = 105
        Width = 570
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          333.375000000000000000
          277.812500000000000000
          1508.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrlb_PstIcdNm'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qrlb_PstIcdNm3: TQRLabel
        Left = 126
        Top = 123
        Width = 570
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          333.375000000000000000
          325.437500000000000000
          1508.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrlb_PstIcdNm'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qrlb_PstIcdNm4: TQRLabel
        Left = 126
        Top = 141
        Width = 570
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          333.375000000000000000
          373.062500000000000000
          1508.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrlb_PstIcdNm'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qrlb_OpName2: TQRLabel
        Left = 126
        Top = 200
        Width = 570
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          333.375000000000000000
          529.166666666666800000
          1508.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrlb_OpName'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qrlb_OpName3: TQRLabel
        Left = 126
        Top = 219
        Width = 570
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          333.375000000000000000
          579.437500000000000000
          1508.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrlb_OpName'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qrlb_OpName4: TQRLabel
        Left = 126
        Top = 238
        Width = 570
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          333.375000000000000000
          629.708333333333400000
          1508.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrlb_OpName'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qrlb_PreIcdNm: TQRLabel
        Left = 126
        Top = 65
        Width = 570
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          333.375000000000000000
          171.979166666666700000
          1508.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrlb_PreIcdNm'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel4: TQRLabel
        Left = 215
        Top = 38
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          568.854166666666700000
          100.541666666666700000
          185.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51665#46020#51032'2 :'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlb_OpDr4: TQRLabel
        Left = 288
        Top = 38
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          762.000000000000000000
          100.541666666666700000
          195.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrlb_OpDr'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 53
        Top = 12
        Width = 107
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          140.229166666666700000
          31.750000000000000000
          283.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49688#49696#49884#51089#49884#44033' :'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel35: TQRLabel
        Left = 349
        Top = 12
        Width = 107
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          923.395833333333300000
          31.750000000000000000
          283.104166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49688#49696#51333#47308#49884#44033' :'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object qrlb_Opstm: TQRLabel
        Left = 164
        Top = 9
        Width = 146
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          433.916666666666800000
          23.812500000000000000
          386.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '2000-20-20 12:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object qrlb_Opetm: TQRLabel
        Left = 459
        Top = 9
        Width = 147
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1214.437500000000000000
          23.812500000000000000
          388.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '2000-20-20 12:00'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 57
      Top = 38
      Width = 700
      Height = 168
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #48148#53461#52404
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        444.500000000000000000
        1852.083333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRShape14: TQRShape
        Left = 344
        Top = 9
        Width = 354
        Height = 151
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          399.520833333333400000
          910.166666666666600000
          23.812500000000000000
          936.625000000000100000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel7: TQRLabel
        Left = 351
        Top = 22
        Width = 49
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          928.687500000000000000
          58.208333333333330000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #46321#47197#48264#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qlb_patno: TQRLabel
        Left = 405
        Top = 18
        Width = 101
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1071.562500000000000000
          47.625000000000000000
          267.229166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'q'#12643'b_Patno'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object qlb_patName: TQRLabel
        Left = 405
        Top = 46
        Width = 122
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1071.562500000000000000
          121.708333333333300000
          322.791666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qlb_patName'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object QRLabel16: TQRLabel
        Left = 351
        Top = 50
        Width = 49
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          928.687500000000000000
          132.291666666666700000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51060'    '#47492
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qlb_ResNo: TQRLabel
        Left = 405
        Top = 77
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1071.562500000000000000
          203.729166666666700000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qlb_ResNo'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel44: TQRLabel
        Left = 351
        Top = 79
        Width = 49
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          928.687500000000000000
          209.020833333333300000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51452#48124#48264#54840
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel45: TQRLabel
        Left = 357
        Top = 107
        Width = 43
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          944.562500000000000000
          283.104166666666700000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SEX/AGE'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qlb_SexAge: TQRLabel
        Left = 405
        Top = 105
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1071.562500000000000000
          277.812500000000000000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'M/15Y 6M'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel48: TQRLabel
        Left = 351
        Top = 136
        Width = 49
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          928.687500000000000000
          359.833333333333300000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51452' '#52824' '#51032
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qlb_chadr: TQRLabel
        Left = 405
        Top = 134
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1071.562500000000000000
          354.541666666666700000
          182.562500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #51060#49440#44508#44508#44508
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel47: TQRLabel
        Left = 481
        Top = 136
        Width = 55
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          1272.645833333333000000
          359.833333333333300000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #48337#46041'/'#48337#49892
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qrl_ward: TQRLabel
        Left = 540
        Top = 134
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1428.750000000000000000
          354.541666666666700000
          222.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_meddept'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object qlb_Meddept: TQRLabel
        Left = 535
        Top = 105
        Width = 160
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1415.520833333333000000
          277.812500000000000000
          423.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #50976#48169#44049#49345#49440#54792#44288#50808#44284
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 12
      end
      object QRLabel46: TQRLabel
        Left = 482
        Top = 107
        Width = 49
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          1275.291666666667000000
          283.104166666666700000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51652' '#47308' '#44284
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #48148#53461#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRImage1: TQRImage
        Left = 13
        Top = 104
        Width = 116
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          103.187500000000000000
          34.395833333333340000
          275.166666666666700000
          306.916666666666700000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676502670000FFD8FFE000104A46494600010201009600
          960000FFE10F9D4578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          00000100020000013100020000001C0000007201320002000000140000008E87
          69000400000001000000A4000000D00016E360000027100016E3600000271041
          646F62652050686F746F73686F70204353332057696E646F777300323031313A
          30373A31362031303A35333A30390000000003A001000300000001FFFF0000A0
          02000400000001000000EDA0030004000000010000006B000000000000000601
          0300030000000100060000011A0005000000010000011E011B00050000000100
          00012601280003000000010002000002010004000000010000012E0202000400
          00000100000E670000000000000048000000010000004800000001FFD8FFE000
          104A46494600010200004800480000FFED000C41646F62655F434D0002FFEE00
          0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
          11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
          0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108004800A003012200
          021101031101FFDD0004000AFFC4013F00000105010101010101000000000000
          00030001020405060708090A0B01000105010101010101000000000000000100
          02030405060708090A0B1000010401030204020507060805030C330100021103
          04211231054151611322718132061491A1B14223241552C16233347282D14307
          259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
          D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
          37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
          021103213112044151617122130532819114A1B14223C152D1F0332462E17282
          92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
          B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
          E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F554924925
          29255F332DB8CC0769B2C79DB5563973901B4F53B7DD66536977FA2AD81C07F5
          9CF494DF4950195958963599BB5F4BCED6E4346D82786DCCFCDDDFBEAFA4A524
          9249294924924A5249249294924924A5249249294924924A524924929FFFD0F5
          54957CCCB18D5070697D8F21955639738F6549A4DD93F66C9EA2199846EFB250
          E6B5CD1F4BE89DD63FDA929391BFAC0DDAFA544B078173B6B9DFE685CB7D50FA
          BB474FEB9D47A99EAD566BA2C6115BA5FB5EFF0058DF9CF738EEB2BD9B1BFE0B
          F9DFEC6FF4ECEE896645FE875019573184585EF062B69F7B9AEF6EEADAEFA562
          C1FAB34FD56BB2B3ABC4EA8335871ACADF5169A8371DC40B6CF59FB5B90C6C56
          DF5EAFD1FF00DB8929D8E955633BA56652DEA7FB5C12E73ACDC1DB25BED6E8FB
          1DF499EAFD2D9FE8D6BE0BDD661D0F76AE756D24F9C2C0FAAF89D071ABCCFB1E
          63B24BDA3D77DC3D32DA9A1FB3F32AF67BACDD72B783674BCBA5EEC1EA8F7D78
          E3DFB6C0031B1ED739A5ADDB5ED6FD3FA0929DB41CCCCC6C1C5B32F2EC6D38F4
          B4BACB1DC00151C6CF2D153CDF5E6E0E41DB4E6565A44CEDDAF75735BBDC36EF
          6AC0FF001A765EDE838EDAE7D37E48F523C5B5DD654DFF00B758D77F5D2526A3
          FC667D5CBB2C63BDB914564ED191631A183F94F6B2C7DF5B3F94FA7D9FE17D34
          4FAC3F5B2FC1EA5D271BA63F1B22ACEB857924CD8E68365150D869B59B3D9759
          FCE35E87F59B07A3D7F514B686B063E3D555982F004EF259E93D8EFDFC9DFF00
          A577F85F56C5C36153D32BBFA0BF11F39B6E533F6857D985B9148C5DBED6EDF5
          2ADDF9CF494FA17D57FAC5D43ABF53EAF8996CA5B5F4FB7D3A0D4D735C47A991
          57E977D966EF6D0CFA1B17465C1A0B9C4003524F0005C47D40FF00977EB1FF00
          E18FFD1D9887D66EFAF1D7F26FE8D460FECEC26B8D77DC5C7658CFDEFB596D6E
          B68B59FE07128F53FC0E459FCE3125377EA7FD71CDEB9D4F2B132C50DAD8C36E
          29A9AF6B9EC0F2CDCEF52DB777E8DD4FD16FE7AEA72EE38F8975ED1B8D35B9E1
          A4C025A0BA17119DFE2FB3BA7D5899BF57B29C7A96189B4B8867AAFD66EA376E
          AA9FA5E8FD96DFD5AEC7FE77FC2597EB746EA7F58FAA74DEA14756E9A712DA6A
          756DB7567AD639AEF6D58EF0EFA3FE99991653FE8BF3F6252BEAE7D78C0EA7D3
          CE4F53BB17A65FEA16B687DED04B36B1CDB7F4DE8BBDCE7B9BF450BA17D7BC6E
          A0CCC3D45D8DD39D43B6E387DE3F4A21DEF68B453FBADFE6D711D0B33EAA6361
          7A5D77A664E5E6079F7D72DDAC86B7D2730DF8DFA463C59BBF469BA2E25D94DC
          97D1D10757631DF49F63AAF4410E7319ED7D7EA7B3DC929F42FA91F583A875FE
          9B7E57506555DB55DE906D2D735B1E9D56FB85B65CEDDBAC597FF3CFEB0F57CD
          BEAFAAFD3ABC8C6C630EC8C831BB586BC7E931995FABB7F44CDF659E9FE92CF4
          903FC5E752C1E9FF0056B3F3736F0CC566580FB88247BEBC6AD9A303BE9BDEB1
          F17A87EC1CAC9FF9B7D6B0ECC2C8748A729B687379D9A7A5EE752DF67AACB7F4
          9FE169494F65F557EB5BFACDD91D3F3B1BEC7D4F135B6A125AE683E9BDCDDDEE
          ADF5D9EDB2B77EFD7E9D96A1FD47FACBD47EB05197667B2963B1DEC6B3D06B9A
          21CDDEEDFEAD972E7FEAB755E83D37A9DDD43A97566E6F57EA4F6D114D56EC06
          C7B7FC23A9A9AEF56CF4BF32BAE9AEBF4D8AE7F8AA696E375269E5B6D60FC431
          253FFFD1F47BF5EAD8A1DF44576167F5BDB3FF0041633D9F577FE7AB19F6D77E
          D62DF57EC401DBB8545BB8DDB36B5DF66FD27A1EAFFC27D05BD9B8A7218D35BB
          D3BEA3BE97F83BC1DFC877E72A2D3855671CFCAE9FE97512C153B2995EF25835
          D8DB99EEDBFC9494E274AE8FF567F686661D79565FEA53763B2A78DAC15BFD99
          2DA6EDADF59D5B7D9BBF73FD27F38B3FEA9F4CFAAF89666B4F50B732DB71ADA8
          596546968C680EC8753A3B7DBB5AC7BDFF00F6D53FCE2EA3A674DE86DCF7E4E2
          D6F6643439C1B66F0D687E963AAADFEDF76E595D26BFAA18F7E764D2EB7D3A68
          B5EF17071ADB8E3FA4BB19A1BBDCCDBFBFFA6F4FF9B494C3A059F56C333ED75B
          7ED6E33FD7FB506B40C6E6F7B7ECFF00F827F84FE42ABD0DBF5373FA6758C7AF
          2725F4BEA6D794EC86FA7636876F14BE8DB5B77FE93F91EA7ABFCED48DF54AEF
          AA9D44F50A312BCAD68D97D79B0271ECDCD7B6AF41CEF63B67E93D5FD615FE91
          D27EAD74BC2BF17171AFBABCC8F5DF6B5F63AC0D9F49BBCFE6D73FA3D9FF0019
          FCE24A49D2F0FA2E1FD56B31FA53DCFC666F739F66961B8BB7B9D70DB5EDB3D4
          FF008367FC1AD5EA1D2F1BABF4B760E7B4BABB9ADDC418735E21CCB6B77E6D95
          D9EF6AAD87D398E6B28AB1FEC7D3EB77A9E91FA76BFF007AD92E76DFEBAD7494
          F0D57F8B5B4BAAC7CAEB175FD36876F6620696C4CCEC9B6CA29DDBBDCFAB1FFE
          2FD2553EB5F46E97D27ADFD5F674EC66E30BB25A6DD93EED9762EC9DC5DF477B
          D7A1820F0B9DFACFF5773BABF52E93978D654CAFA75BEA5C2D2E0E23D4A2DFD1
          6C6BFF003687FD3494F3DF5669EA59195F5AE9E957371B3DF78145CFFA2D3EBE
          5C977B2EFCDFF8357FF627F8CBFF00CBAC7FB87FEF12D2FAAFF5733BA3F52EAD
          9795654FAFA85BEA522A2E2E03D4BEDFD2EF633F36F67D05D1120093A01C9494
          F9A746CCFAF5D6B2B2B1713ABB5966118B4DAD6069F75957E8FD3C67FE752EFA
          4BA0E99D27EBED3D471ADEA1D569BF098F9C8A5B12E6ED70DADFD52BFCFD9FE1
          113EA9FD58EA1D17A8F51CBCAB69B2BCD3350A8B891FA4BADFD26F633F36E6FD
          15D3CA4A70FEB975EBBA17447E5E380722D7B69A5CE12D6B9C1CF75AE6FE77A7
          5D6F735BFBEB9AB7A37D73AFA39EBC7AE5AEC96D5F6A7E24CD7E9EDF55CDFF00
          B88EB3D3FF0005F64F43FC17FC2AECBAE746C5EB7D36CC0CA25AD7C399636373
          1EDF7576B377B7DAB93FF997F5B5F8BFB21FD6EB3D25A766DDAE2ED838ABD3FA
          7E9EDFFB4FF6DF47FEB6929D7FAA6FE99D73EAD37D6C0C6631EF2CCBC7AEA6B6
          97DB516EDB8551F9CD65367BBF9BFE6FFC1AC5FAC5D1FA059F593A674AC5F4FA
          7DFED7BE8AF177577B5CEF5032DBAA7D4C6FB316FAFF0048CB3F9D5D9747E938
          BD1FA7D5D3F124D75024BDDAB9EE71DF65B6111EFB1EE583F593EA866F55EAF4
          F57E9D9E30EFAAB154969716961B3F495595BDBB5DFA57D6F6A4A61D43EABF5E
          6F5275FD02FC0E9D86033D2A862D5BDAE03F48FF0053ECEF77B9DFCB50FF0017
          3D2BA9F4DC7CF6F50C57E21B6CADD58B0B49700C871FD1B9FF009C85FF00343E
          BA7FF3C8FF00FC13FF004A2DAFAB5D1FADF4C3947AAF537752177A7E8876EFD1
          EDF53D4FA6E77F39BD9FE624A7FFD2F55492492534676F59D74DF8F0DF32D7CB
          87E2B0FA35FF0057F2BABF50E99474E353C32EAEE738EE6BAB0FF46FA8D5B9DF
          6765AE77B2BDBFA462E873310E435AEADDE9DF51DD559E07BB5DFC87FE720332
          B229738DD82EF55D1BECA36B83E346C996BFFCF494E2FD57AFEAF51D273ECE8F
          8D662B01732F75CE2F7B8B5BFA21EABDF6BB6B1B67B6ADDFA25D16035CDC1C76
          BB915B41FB82ADE864E6B80BEB18D8A1DBCD2082FB0CCFE936FB5AD5A2929492
          4924A78DE9BF56BAEF4BE9F8EDC0B1B8F996D4F396D1E9B6A16D74D95E035C19
          57E9DBF69B37E4E47F48C8FD1FACFF00499E929E474AFACF9586716FF52FAADC
          5B5965775B50871B1EFA04D6DB1CFC8F4FD2AF7B9FE9FF0084FB4FF3D56575E9
          24A790B71BEB5E4FAF8563EED8316BBB4B031C6C75FB7ECADCDAABAD8EB6BC1C
          5FD2EC77F48C9FD27E86C44BBA77D6DB69C8ADD717EF7E4C31CEA8B1C0D57330
          DBB5CC7FEACFB9F8DBEAB3FD1BFD4AFD2FE7BAB49253CAE460FD6E7BB29B4DAE
          A6B76C140659588D8CBDBFA29ACFA6DB1FF64F52BF4FFF004ADA3EBBF56FAAF5
          2CEFB435ACFD3E0D78196E2E0D2EADE722FCD6336FE77ACCC26B1DFF000D6AEB
          92494F1EFE95F5A8E1E5631738D2EAE9A998ECB2B6835FA6DAECAE8B1ED7BAA7
          D6FDFF0068DFFCF57FCD2B18DD3BEB1E364D02B1B71D8E712DAACAEB648AF1EB
          A9D95FA1B6CBA9DB5DF57B59F68FF84FF095750924A797E99D23AF9B45D9EE22
          FF00B1E4E336F73C39ED36BF1ECC76BBD2FA5E9ECBBDE81D2FA475FC2AF02AC4
          C6674CA18EFD72AA6C63C5963598949CABC386DF4EFAE8CAAFD3A3F49FCCE55B
          FACD9FAB75E924A78F1D37EB80A9AF7DD6BEF6D06B27D664FB9DD3AEC86B5BB6
          9ABD6B3D3EA95635DFE03F47FA5AAB5B9D171FAB54721FD52E75AF79A5B48259
          B43594522E7B5B532BDB65B9872BD4FF00C0F656B512494FFFD3F55497CAA924
          A7EAA497CAA924A7EAA497CAA924A7EAA497CAA924A7EAA497CAA924A7EAA497
          CAA924A7EAA497CAA924A7EAA497CAA924A7EAA497CAA924A7EAA497CAA924A7
          FFD9FFED14C450686F746F73686F7020332E30003842494D0404000000000007
          1C020000020000003842494D0425000000000010E8F15CF32FC118A1A27B67AD
          C564D5BA3842494D042F00000000004A30AE0100580200005802000000000000
          000000009F1A0000981200009CFFFFFF9CFFFFFF031B0000FC12000000017B05
          0000E003000001000F2701002E006A00700067000000000063003842494D03ED
          000000000010009600000001000200960000000100023842494D042600000000
          000E000000000000000000003F8000003842494D040D0000000000040000001E
          3842494D04190000000000040000001E3842494D03F300000000000900000000
          0000000001003842494D040A00000000000100003842494D271000000000000A
          000100000000000000023842494D03F5000000000048002F66660001006C6666
          0006000000000001002F6666000100A1999A0006000000000001003200000001
          005A00000006000000000001003500000001002D000000060000000000013842
          494D03F80000000000700000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E8
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800003842494D0408
          000000000010000000010000024000000240000000003842494D041E00000000
          0004000000003842494D041A0000000003590000000600000000000000000000
          006B000000ED00000012C2DCADF8B2C8CDB0005FD63CC6A9C88CC6B0C870D569
          005F003300300030005F00620077000000010000000000000000000000000000
          0000000000010000000000000000000000ED0000006B00000000000000000000
          0000000000000100000000000000000000000000000000000000100000000100
          00000000006E756C6C0000000200000006626F756E64734F626A630000000100
          0000000000526374310000000400000000546F70206C6F6E6700000000000000
          004C6566746C6F6E67000000000000000042746F6D6C6F6E670000006B000000
          00526768746C6F6E67000000ED00000006736C69636573566C4C73000000014F
          626A6300000001000000000005736C6963650000001200000007736C69636549
          446C6F6E67000000000000000767726F757049446C6F6E670000000000000006
          6F726967696E656E756D0000000C45536C6963654F726967696E0000000D6175
          746F47656E6572617465640000000054797065656E756D0000000A45536C6963
          655479706500000000496D672000000006626F756E64734F626A630000000100
          0000000000526374310000000400000000546F70206C6F6E6700000000000000
          004C6566746C6F6E67000000000000000042746F6D6C6F6E670000006B000000
          00526768746C6F6E67000000ED0000000375726C544558540000000100000000
          00006E756C6C54455854000000010000000000004D7367655445585400000001
          000000000006616C74546167544558540000000100000000000E63656C6C5465
          7874497348544D4C626F6F6C010000000863656C6C5465787454455854000000
          01000000000009686F727A416C69676E656E756D0000000F45536C696365486F
          727A416C69676E0000000764656661756C740000000976657274416C69676E65
          6E756D0000000F45536C69636556657274416C69676E0000000764656661756C
          740000000B6267436F6C6F7254797065656E756D0000001145536C6963654247
          436F6C6F7254797065000000004E6F6E6500000009746F704F75747365746C6F
          6E67000000000000000A6C6566744F75747365746C6F6E67000000000000000C
          626F74746F6D4F75747365746C6F6E67000000000000000B72696768744F7574
          7365746C6F6E6700000000003842494D042800000000000C000000013FF00000
          000000003842494D041100000000000101003842494D04140000000000040000
          00013842494D040C000000000E8300000001000000A000000048000001E00000
          870000000E6700180001FFD8FFE000104A46494600010200004800480000FFED
          000C41646F62655F434D0002FFEE000E41646F626500648000000001FFDB0084
          000C08080809080C09090C110B0A0B11150F0C0C0F1518131315131318110C0C
          0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11110C
          0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0CFFC0001108004800A003012200021101031101FFDD0004000AFFC4013F00
          00010501010101010100000000000000030001020405060708090A0B01000105
          01010101010100000000000000010002030405060708090A0B10000104010302
          04020507060805030C33010002110304211231054151611322718132061491A1
          B14223241552C16233347282D14307259253F0E1F163733516A2B28326449354
          6445C2A3743617D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4A5B5
          C5D5E5F55666768696A6B6C6D6E6F637475767778797A7B7C7D7E7F711000202
          0102040403040506070706053501000211032131120441516171221305328191
          14A1B14223C152D1F0332462E1728292435315637334F1250616A2B283072635
          C2D2449354A317644555367465E2F2B384C3D375E3F34694A485B495C4D4E4F4
          A5B5C5D5E5F55666768696A6B6C6D6E6F62737475767778797A7B7C7FFDA000C
          03010002110311003F00F55492492529255F332DB8CC0769B2C79DB556397390
          1B4F53B7DD66536977FA2AD81C07F59CF494DF4950195958963599BB5F4BCED6
          E4346D82786DCCFCDDDFBEAFA4A5249249294924924A5249249294924924A524
          9249294924924A524924929FFFD0F554957CCCB18D5070697D8F21955639738F
          6549A4DD93F66C9EA2199846EFB250E6B5CD1F4BE89DD63FDA929391BFAC0DDA
          FA544B078173B6B9DFE685CB7D50FABB474FEB9D47A99EAD566BA2C6115BA5FB
          5EFF0058DF9CF738EEB2BD9B1BFE0BF9DFEC6FF4ECEE896645FE875019573184
          585EF062B69F7B9AEF6EEADAEFA562C1FAB34FD56BB2B3ABC4EA8335871ACADF
          5169A8371DC40B6CF59FB5B90C6C56DF5EAFD1FF00DB8929D8E955633BA56652
          DEA7FB5C12E73ACDC1DB25BED6E8FB1DF499EAFD2D9FE8D6BE0BDD661D0F76AE
          756D24F9C2C0FAAF89D071ABCCFB1E63B24BDA3D77DC3D32DA9A1FB3F32AF67B
          ACDD72B783674BCBA5EEC1EA8F7D78E3DFB6C0031B1ED739A5ADDB5ED6FD3FA0
          929DB41CCCCC6C1C5B32F2EC6D38F4B4BACB1DC00151C6CF2D153CDF5E6E0E41
          DB4E6565A44CEDDAF75735BBDC36EF6AC0FF001A765EDE838EDAE7D37E48F523
          C5B5DD654DFF00B758D77F5D2526A3FC667D5CBB2C63BDB914564ED191631A18
          3F94F6B2C7DF5B3F94FA7D9FE17D344FAC3F5B2FC1EA5D271BA63F1B22ACEB85
          7924CD8E68365150D869B59B3D9759FCE35E87F59B07A3D7F514B686B063E3D5
          55982F004EF259E93D8EFDFC9DFF00A577F85F56C5C36153D32BBFA0BF11F39B
          6E533F6857D985B9148C5DBED6EDF52ADDF9CF494FA17D57FAC5D43ABF53EAF8
          996CA5B5F4FB7D3A0D4D735C47A99157E977D966EF6D0CFA1B17465C1A0B9C40
          03524F0005C47D40FF00977EB1FF00E18FFD1D9887D66EFAF1D7F26FE8D460FE
          CEC26B8D77DC5C7658CFDEFB596D6EB68B59FE07128F53FC0E459FCE3125377E
          A7FD71CDEB9D4F2B132C50DAD8C36E29A9AF6B9EC0F2CDCEF52DB777E8DD4FD1
          6FE7AEA72EE38F8975ED1B8D35B9E1A4C025A0BA17119DFE2FB3BA7D5899BF57
          B29C7A96189B4B8867AAFD66EA376EAA9FA5E8FD96DFD5AEC7FE77FC2597EB74
          6EA7F58FAA74DEA14756E9A712DA6A756DB7567AD639AEF6D58EF0EFA3FE9999
          1653FE8BF3F6252BEAE7D78C0EA7D3CE4F53BB17A65FEA16B687DED04B36B1CD
          B7F4DE8BBDCE7B9BF450BA17D7BC6EA0CCC3D45D8DD39D43B6E387DE3F4A21DE
          F68B453FBADFE6D711D0B33EAA63617A5D77A664E5E6079F7D72DDAC86B7D273
          0DF8DFA463C59BBF469BA2E25D94DC97D1D10757631DF49F63AAF4410E7319ED
          7D7EA7B3DC929F42FA91F583A875FE9B7E57506555DB55DE906D2D735B1E9D56
          FB85B65CEDDBAC597FF3CFEB0F57CDBEAFAAFD3ABC8C6C630EC8C831BB586BC7
          E931995FABB7F44CDF659E9FE92CF4903FC5E752C1E9FF0056B3F3736F0CC566
          580FB88247BEBC6AD9A303BE9BDEB1F17A87EC1CAC9FF9B7D6B0ECC2C8748A72
          9B687379D9A7A5EE752DF67AACB7F49FE169494F65F557EB5BFACDD91D3F3B1B
          EC7D4F135B6A125AE683E9BDCDDDEEADF5D9EDB2B77EFD7E9D96A1FD47FACBD4
          7EB05197667B2963B1DEC6B3D06B9A21CDDEEDFEAD972E7FEAB755E83D37A9DD
          D43A97566E6F57EA4F6D114D56EC06C7B7FC23A9A9AEF56CF4BF32BAE9AEBF4D
          8AE7F8AA696E375269E5B6D60FC431253FFFD1F47BF5EAD8A1DF44576167F5BD
          B3FF0041633D9F577FE7AB19F6D77ED62DF57EC401DBB8545BB8DDB36B5DF66F
          D27A1EAFFC27D05BD9B8A7218D35BBD3BEA3BE97F83BC1DFC877E72A2D385567
          1CFCAE9FE97512C153B2995EF25835D8DB99EEDBFC9494E274AE8FF567F68666
          1D79565FEA53763B2A78DAC15BFD992DA6EDADF59D5B7D9BBF73FD27F38B3FEA
          9F4CFAAF89666B4F50B732DB71ADA8596546968C680EC8753A3B7DBB5AC7BDFF
          00F6D53FCE2EA3A674DE86DCF7E4E2D6F6643439C1B66F0D687E963AAADFEDF7
          6E595D26BFAA18F7E764D2EB7D3A68B5EF17071ADB8E3FA4BB19A1BBDCCDBFBF
          FA6F4FF9B494C3A059F56C333ED75B7ED6E33FD7FB506B40C6E6F7B7ECFF00F8
          27F84FE42ABD0DBF5373FA6758C7AF2725F4BEA6D794EC86FA7636876F14BE8D
          B5B77FE93F91EA7ABFCED48DF54AEFAA9D44F50A312BCAD68D97D79B0271ECDC
          D7B6AF41CEF63B67E93D5FD615FE91D27EAD74BC2BF17171AFBABCC8F5DF6B5F
          63AC0D9F49BBCFE6D73FA3D9FF0019FCE24A49D2F0FA2E1FD56B31FA53DCFC66
          6F739F66961B8BB7B9D70DB5EDB3D4FF008367FC1AD5EA1D2F1BABF4B760E7B4
          BABB9ADDC418735E21CCB6B77E6D95D9EF6AAD87D398E6B28AB1FEC7D3EB77A9
          E91FA76BFF007AD92E76DFEBAD7494F0D57F8B5B4BAAC7CAEB175FD36876F662
          0696C4CCEC9B6CA29DDBBDCFAB1FFE2FD2553EB5F46E97D27ADFD5F674EC66E3
          0BB25A6DD93EED9762EC9DC5DF477BD7A1820F0B9DFACFF5773BABF52E93978D
          654CAFA75BEA5C2D2E0E23D4A2DFD16C6BFF003687FD3494F3DF5669EA59195F
          5AE9E957371B3DF78145CFFA2D3EBE5C977B2EFCDFF8357FF627F8CBFF00CBAC
          7FB87FEF12D2FAAFF5733BA3F52EAD9795654FAFA85BEA522A2E2E03D4BEDFD2
          EF633F36F67D05D1120093A01C9494F9A746CCFAF5D6B2B2B1713ABB5966118B
          4DAD6069F75957E8FD3C67FE752EFA4BA0E99D27EBED3D471ADEA1D569BF098F
          9C8A5B12E6ED70DADFD52BFCFD9FE1113EA9FD58EA1D17A8F51CBCAB69B2BCD3
          350A8B891FA4BADFD26F633F36E6FD15D3CA4A70FEB975EBBA17447E5E380722
          D7B69A5CE12D6B9C1CF75AE6FE77A75D6F735BFBEB9AB7A37D73AFA39EBC7AE5
          AEC96D5F6A7E24CD7E9EDF55CDFF00B88EB3D3FF0005F64F43FC17FC2AECBAE7
          46C5EB7D36CC0CA25AD7C3996363731EDF7576B377B7DAB93FF997F5B5F8BFB2
          1FD6EB3D25A766DDAE2ED838ABD3FA7E9EDFFB4FF6DF47FEB6929D7FAA6FE99D
          73EAD37D6C0C6631EF2CCBC7AEA6B697DB516EDB8551F9CD65367BBF9BFE6FFC
          1AC5FAC5D1FA059F593A674AC5F4FA7DFED7BE8AF177577B5CEF5032DBAA7D4C
          6FB316FAFF0048CB3F9D5D9747E938BD1FA7D5D3F124D75024BDDAB9EE71DF65
          B6111EFB1EE583F593EA866F55EAF4F57E9D9E30EFAAB154969716961B3F4955
          95BDBB5DFA57D6F6A4A61D43EABF5E6F5275FD02FC0E9D86033D2A862D5BDAE0
          3F48FF0053ECEF77B9DFCB50FF00173D2BA9F4DC7CF6F50C57E21B6CADD58B0B
          49700C871FD1B9FF009C85FF00343EBA7FF3C8FF00FC13FF004A2DAFAB5D1FAD
          F4C3947AAF537752177A7E8876EFD1EDF53D4FA6E77F39BD9FE624A7FFD2F554
          92492534676F59D74DF8F0DF32D7CB87E2B0FA35FF0057F2BABF50E99474E353
          C32EAEE738EE6BAB0FF46FA8D5B9DF6765AE77B2BDBFA462E873310E435AEADD
          E9DF51DD559E07BB5DFC87FE720332B229738DD82EF55D1BECA36B83E346C996
          BFFCF494E2FD57AFEAF51D273ECE8F8D662B01732F75CE2F7B8B5BFA21EABDF6
          BB6B1B67B6ADDFA25D16035CDC1C76BB915B41FB82ADE864E6B80BEB18D8A1DB
          CD2082FB0CCFE936FB5AD5A29294924924A78DE9BF56BAEF4BE9F8EDC0B1B8F9
          96D4F396D1E9B6A16D74D95E035C1957E9DBF69B37E4E47F48C8FD1FACFF0049
          9E929E474AFACF9586716FF52FAADC5B5965775B50871B1EFA04D6DB1CFC8F4F
          D2AF7B9FE9FF0084FB4FF3D56575E924A790B71BEB5E4FAF8563EED8316BBB4B
          031C6C75FB7ECADCDAABAD8EB6BC1C5FD2EC77F48C9FD27E86C44BBA77D6DB69
          C8ADD717EF7E4C31CEA8B1C0D57330DBB5CC7FEACFB9F8DBEAB3FD1BFD4AFD2F
          E7BAB49253CAE460FD6E7BB29B4DAEA6B76C140659588D8CBDBFA29ACFA6DB1F
          F64F52BF4FFF004ADA3EBBF56FAAF52CEFB435ACFD3E0D78196E2E0D2EADE722
          FCD6336FE77ACCC26B1DFF000D6AEB92494F1EFE95F5A8E1E5631738D2EAE9A9
          98ECB2B6835FA6DAECAE8B1ED7BAA7D6FDFF0068DFFCF57FCD2B18DD3BEB1E36
          4D02B1B71D8E712DAACAEB648AF1EBA9D95FA1B6CBA9DB5DF57B59F68FF84FF0
          95750924A797E99D23AF9B45D9EE22FF00B1E4E336F73C39ED36BF1ECC76BBD2
          FA5E9ECBBDE81D2FA475FC2AF02AC4C6674CA18EFD72AA6C63C5963598949CAB
          C386DF4EFAE8CAAFD3A3F49FCCE55BFACD9FAB75E924A78F1D37EB80A9AF7DD6
          BEF6D06B27D664FB9DD3AEC86B5BB69ABD6B3D3EA95635DFE03F47FA5AAB5B9D
          171FAB54721FD52E75AF79A5B48259B43594522E7B5B532BDB65B9872BD4FF00
          C0F656B512494FFFD3F55497CAA924A7EAA497CAA924A7EAA497CAA924A7EAA4
          97CAA924A7EAA497CAA924A7EAA497CAA924A7EAA497CAA924A7EAA497CAA924
          A7EAA497CAA924A7EAA497CAA924A7FFD9003842494D04210000000000550000
          0001010000000F00410064006F00620065002000500068006F0074006F007300
          68006F00700000001300410064006F00620065002000500068006F0074006F00
          730068006F0070002000430053003300000001003842494D0406000000000007
          0008000000010100FFE10FA8687474703A2F2F6E732E61646F62652E636F6D2F
          7861702F312E302F003C3F787061636B657420626567696E3D22EFBBBF222069
          643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C
          783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D657461
          2F2220783A786D70746B3D2241646F626520584D5020436F726520342E312D63
          3033362034362E3237363732302C204D6F6E2046656220313920323030372032
          323A34303A30382020202020202020223E203C7264663A52444620786D6C6E73
          3A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F
          32322D7264662D73796E7461782D6E7323223E203C7264663A44657363726970
          74696F6E207264663A61626F75743D222220786D6C6E733A7861703D22687474
          703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D6C6E73
          3A64633D22687474703A2F2F7075726C2E6F72672F64632F656C656D656E7473
          2F312E312F2220786D6C6E733A70686F746F73686F703D22687474703A2F2F6E
          732E61646F62652E636F6D2F70686F746F73686F702F312E302F2220786D6C6E
          733A7861704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F786170
          2F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E73
          2E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F757263
          65526566232220786D6C6E733A746966663D22687474703A2F2F6E732E61646F
          62652E636F6D2F746966662F312E302F2220786D6C6E733A657869663D226874
          74703A2F2F6E732E61646F62652E636F6D2F657869662F312E302F2220786170
          3A437265617465446174653D22323031312D30352D30345431333A32323A3539
          2B30393A303022207861703A4D6F64696679446174653D22323031312D30372D
          31365431303A35333A30392B30393A303022207861703A4D6574616461746144
          6174653D22323031312D30372D31365431303A35333A30392B30393A30302220
          7861703A43726561746F72546F6F6C3D2241646F62652050686F746F73686F70
          204353332057696E646F7773222064633A666F726D61743D22696D6167652F6A
          706567222070686F746F73686F703A436F6C6F724D6F64653D2233222070686F
          746F73686F703A486973746F72793D2222207861704D4D3A496E7374616E6365
          49443D22757569643A3033374135373436344541464530313141413844453534
          44314437413842364522207861704D4D3A446F63756D656E7449443D22757569
          643A433135373243314530363736453031313832343142453445353638313542
          44312220746966663A4F7269656E746174696F6E3D22312220746966663A5852
          65736F6C7574696F6E3D22313530303030302F31303030302220746966663A59
          5265736F6C7574696F6E3D22313530303030302F31303030302220746966663A
          5265736F6C7574696F6E556E69743D22322220746966663A4E61746976654469
          676573743D223235362C3235372C3235382C3235392C3236322C3237342C3237
          372C3238342C3533302C3533312C3238322C3238332C3239362C3330312C3331
          382C3331392C3532392C3533322C3330362C3237302C3237312C3237322C3330
          352C3331352C33333433323B4537433739453130343835443434434131323731
          3331324644373339434333322220657869663A506978656C5844696D656E7369
          6F6E3D223233372220657869663A506978656C5944696D656E73696F6E3D2231
          30372220657869663A436F6C6F7253706163653D222D312220657869663A4E61
          746976654469676573743D2233363836342C34303936302C34303936312C3337
          3132312C33373132322C34303936322C34303936332C33373531302C34303936
          342C33363836372C33363836382C33333433342C33333433372C33343835302C
          33343835322C33343835352C33343835362C33373337372C33373337382C3337
          3337392C33373338302C33373338312C33373338322C33373338332C33373338
          342C33373338352C33373338362C33373339362C34313438332C34313438342C
          34313438362C34313438372C34313438382C34313439322C34313439332C3431
          3439352C34313732382C34313732392C34313733302C34313938352C34313938
          362C34313938372C34313938382C34313938392C34313939302C34313939312C
          34313939322C34313939332C34313939342C34313939352C34313939362C3432
          3031362C302C322C342C352C362C372C382C392C31302C31312C31322C31332C
          31342C31352C31362C31372C31382C32302C32322C32332C32342C32352C3236
          2C32372C32382C33303B35374530384641453942353338384439363233443135
          42343241453338363639223E203C7861704D4D3A4465726976656446726F6D20
          73745265663A696E7374616E636549443D22757569643A374332333432434630
          3337364530313138323431424534453536383135424431222073745265663A64
          6F63756D656E7449443D22757569643A37423233343243463033373645303131
          38323431424534453536383135424431222F3E203C2F7264663A446573637269
          7074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020203C
          3F787061636B657420656E643D2277223F3EFFEE000E41646F62650064400000
          0001FFDB00840001010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010202020202020202020202030303
          0303030303030301010101010101010101010202010202030303030303030303
          0303030303030303030303030303030303030303030303030303030303030303
          0303030303030303FFC0001108006B00ED03011100021101031101FFDD000400
          1EFFC401A20000000602030100000000000000000000070806050409030A0201
          000B0100000603010101000000000000000000060504030702080109000A0B10
          0002010304010303020303030206097501020304110512062107132200083114
          4132231509514216612433175271811862912543A1B1F02634720A19C1D13527
          E1533682F192A24454734546374763285556571AB2C2D2E2F2648374938465A3
          B3C3D3E3293866F3752A393A48494A58595A6768696A767778797A8586878889
          8A9495969798999AA4A5A6A7A8A9AAB4B5B6B7B8B9BAC4C5C6C7C8C9CAD4D5D6
          D7D8D9DAE4E5E6E7E8E9EAF4F5F6F7F8F9FA1100020103020404030504040406
          06056D010203110421120531060022134151073261147108428123911552A162
          163309B124C1D14372F017E18234259253186344F1A2B226351954364564270A
          7383934674C2D2E2F255657556378485A3B3C3D3E3F3291A94A4B4C4D4E4F495
          A5B5C5D5E5F52847576638768696A6B6C6D6E6F667778797A7B7C7D7E7F74858
          68788898A8B8C8D8E8F839495969798999A9B9C9D9E9F92A3A4A5A6A7A8A9AAA
          BACADAEAFAFFDA000C03010002110311003F00DFE3DFBAF75EF7EEBDD7BDFBAF
          75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BD
          FBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBD
          D7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7
          EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7FFD0DFE3DFBAF75EF7EEBDD7
          BDFBAF75EF7EEBDD45ABACA4C7D3CB595F574D454902979AA6AE78E9A9E1416B
          BCB34CE91220FEA481FEF7EFDD7BA0CA5EF3EA082A8D1CBD8FB484E1FC642E5E
          9A488392542FDC44CF4FF5FF006A16F7EEBDD08D8CCB62F354A95F87C95065A8
          65BF8EB31B594F5D4AE458D96A29A49622DCF22FEFDD7BA71F7EEBDD7BDFBAF7
          5EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDF
          BAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD
          7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7FFD1DFE3DFBA
          F75EF7EEBDD7BDFBAF7491DF5BCF11D7DB5731BB7392114189A7F278632A2A2B
          2A6465868F1F48AC407A9ADAA91634FC02D7365048F75EE89263B68EE0EF5A49
          BB63BDF778D91D59097ACC1EDD394A7C262E2C62C9A12BEAEBF2124745414521
          0A3EEE706A2A4DCA1863297F75EE87AC0740FC75CF60A8B21B7B6CEDDDC784AF
          A712506E0C667EBB2F4F91803347F714B99A1CB4F1D4A7914FAE2934EA047E08
          F7EEBDD04FBBFA1B73F4EBD47607426732D17F0D56ADCDEC8AE9E4C853E4E862
          1E4A88E9C1D072891C6A4FDBCC1AA34F314C1F4A9F75EE8CB750F6862BB6766D
          16E7C720A4AB0E687378A32F964C565614469A0D442B494F2C722CB0C840D713
          8FED0603DD7BA147DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBD
          D7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7
          EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF7
          5EF7EEBDD7FFD2DFE3DFBAF75EF7EEBDD7BDFBAF744CBE5679B71EE0E97EB6F2
          BC78EDD9BC04B9445621668A0A9C6E3630C00E74C3959C83F504823DFBAF7550
          7FF0A1FF008ADF2A7BF7A9FE3BA7C71D9FBD3B2BAFB61EE5DD34BD87D49D7D4D
          3642BA4ADCB633074DB17764DB5A8A55A8DC98FDBE98EADA3B08E5FE1C6B1650
          A1649244F75EE875FE4C3F0D3E50FC4CF81BD8BB37B2EB9F62F6C768EE2DE3BD
          BADBAFF39591E568BA7E5C96D0A0C16DB398A7A49721414193CC67683F8A6468
          A9FCA902BA2C8AD3F9907BAF746BFE01F547CCAEB297B33FD9A3DEB53B831398
          97112ED4C765F7B7F7F72B1E6A39722D9DCCD2E4ED27F0AC464619210290B8D5
          22EB10C3621BDD7BA13FA769D363FC96EE1D878F021C1E5F1F06E7A5A28C5A0A
          6A879282B91634FEC08933D3C63FDA1547D00F7EEBDD1D6F7EEBDD7BDFBAF75E
          F7EEBDD629244895E495D638A356791E460AB1A2AB3348EC480B1AAA9249E07F
          85BDFBAF745CA8FE62FC4CC86F11D7D43F26BA16B37BB54FD8A6D5A6EDBD893E
          6E5AF2E22FE1F150C79D69E4C8F94E9FB75BCA1B8D37F7EEBDD18FBDAE79E79F
          CF1C7E2FC585AFEFDD7BAA00F8D9FCF6317F21FBD7B0FA4E1F8CD94DA52EC0D8
          7DE3BE24DC72F6C50E6E2C9AF4BE2B23937C6AE2A2D858E6A47DC498FD0B2FDC
          482999EE565B73EEBDD0C3FCB3BF9BF63FF98DF65F60F5CD1741E47A8E4D89D7
          D47BEDB2D5BD9149BD13282AB7051604E2A3A4A7D9BB69A90C66B565F31924D4
          148D22F7F7EEBDD5D08FA0F7EEBDD029F237B8A1F8F9D0BDC3DE351836DCF075
          375DEECDFD26DC4C92E1E5CE8DB187A9CAFF00088F2B2D257C78E7C81A6F12CE
          6194465C1D0DF43EEBDD5607F2D5FE7118DFE627DBDBE3A9E8FA0F21D4B36CCE
          B897B0CE66B7B228B78AE5228B72E0B6E362E3C7D3ECDDB6F4C4367166F37964
          00269D1C861EEBDD5D57BF75EE89E7CD4F9B7D3FF03BACB09DB1DD541BE323B6
          3706F4C76C4A18B61E12833D964CD64F159ACCD349514992CD60E08E8052E067
          0D2095983941A08248F75EE963F13BE52F5BFCC9E92DB9DFBD4F4BBA28B646E7
          C86E2C663A9F7962A930D9F5A8DB19BAEC0648D4E3E872797A78E37AEC7C8622
          B50FAE3B1201E3DFBAF7451BBC7F9BAFC5EE80F95143F0FF007C61BB72A3B52B
          F3FD6DB729EB76FED2C257ED1FE21DA230A76E34997A9DDB415CB4D0FF001D87
          EE9BECC98BD5A049617F75EE84DFE639F3A697F97C743E1BBC2B3ACEABB5A2CB
          764EDDEBCFEEDD1EEB8367CB03E7F11B972E32BFC52A305B85254A54DBA63308
          80173303AD42D8FBAF74A9F805F30A9FE74FC6EDBBF21697605475A439FDC5BB
          F6FAED4AADC916EB9A98ED4CE4F866AB399830D808E615E60F204FB64F1DF4DD
          BEBEFDD7BA427CE9FE66FF0019FE0163719076C65B2FB93B1372514B91DAFD4B
          B169A8F27BD3278E8E47A719BC97DED6E3F15B676F35546625ABAE9E2F3BABAD
          3A4CD1C817DD7BAA7DDB9FF0A7FE9FACDC51516E9F8A9D9185DB2D50167CCE07
          B236A6E6CF53536BD06A3FBB55384DB74D332A8B98C647FC013F5F7EEBDD6C1F
          F1A7E50F4A7CB9EADC5770F43EF2A5DE1B3F213CB4158A629B1D9CDB79BA68A2
          96BB6E6E8C1D5AC55D84CE502CE8648655D2F1BA4D13C90BC723FBAF7554BB77
          F9DBE33707F30393E082FC71C952D547DF3B93A3FF00D269ED1A39699A5DBB5B
          97A36DCA369FF71E3984758717A8529C85D03DBCA6DCFBAF757BBEFDD7BAFFD3
          DFE3DFBAF74C9B8371E076AE3A6CC6E4CC63F098C82C24ADC954C74B06A3FA22
          43230334F2588544BBB1E003EFDD7BA2ED91F987D294150F04593CEE48212BF7
          18FC1549A762091746AD7A29194DB8216DEFDD7BA02774F6CED9EE7EF0E897D9
          34D9AA95DBDB883E4057502D348125C863AB1E68E38A7A9260A5A5C7C8F2C8D6
          441FEF1EEBDD149FE6E7F2CBE40F446ECEA8D91D47BAABFAFF0005B8B6DE5774
          65771E228A8A4C9E6F2B4396FE1C30A95F5D4B5829A8F134BE29A58E255695AA
          D0BB15503DFBAF75CFAA3E6CFC9BDE1FCB37BBBBC29169B39DD1D4F96ADDBB89
          DE126DEA5A84C8E129A4DA75994DD95581A4821C56432FB53059EA99650B08A6
          714AB2CB1B5A50DEEBDD015FCAA7E73FCB3EF6F9213F58F646F693B53AFEA763
          EE5DCF9DAEC8E03034D5FB3AA71B250C584C8D265F6EE331623A5CAE42A851FD
          B54892390C9AA3D2C8C4FBAF75677BA37FE1FA8FE566EEDD5BBA972B1E2729B4
          71F4546F4146B532CEF363F0AA951024B353A4B4CB363A589994928E2C47D6DE
          EBDD0B54BF32BA62A2648A5A8DCD44ACD633D5601DA18C5EDA9C51D555CDA47E
          4846B0F7EEBDD181DA7BE3696FAA0393DA3B831D9DA352AB33514E1A7A576E56
          2ABA4709554729172165446207D0FBF75EE959EFDD7BAD453FE141DF3C7B365E
          CEC2FC0BE9ACE6670D86182DBF9AEE54DB33CF499DDF5B837B1593677599A8A3
          912ADB051E265A7ACAAA442A9919F210472864874BFBAF7406EE7FF84DE7756D
          EF8BF55DA147DB983CCFC80C56D37DE191E89A2DA4460A414F8FFE275BB2B0DB
          EFF8D35456EF0A6814C51C871CB41535ABE15658C8A83EEBDD13EF8DDFCEA7F9
          87F4875C6DDE96D8398DB9D9B88DA50CF0EDE6EC1D899EEC2DF18CC146C8B0E1
          24CB5067E83275584C2B131537DCACB2D2C4443E51124489EEBDD273F94FE52B
          73BF303B77379348E3C9667E2D7CC3CBE416388C11A64327D7396ADAD11C0C4B
          53A2554EE02124A016FC7BF75EE8F67FC2627FECA73E425FFEF1EB0F7FFD1818
          2FEBFEBFBF75EEB7522791CF1723EBFDABFD3E97E3DFBAF75AB6FF003D6FE69B
          D651756EEEF84DD09BA71BBDF7B6F868713DDFBB76ED5C191DB9B176A5156435
          D5FB169F2F4CD2D1E4F78EE0AAA58E9EBE381DD31D42668A522A2511C7EEBDD6
          BF5F06BE4AF63FF2DAF955D5FDD7BAF626E5A5DBDB9366504DBAB6964A867C46
          477D746765454F574FB8B6C8AEFB786B4336360CA626566FB7A9A8A111175467
          23DD7BAFA18F437C84E9EF939D6F84ED7E8EDF984DFBB2B39046F1D7E22A51AB
          71758515E7C2EE1C54A5723B7B7050B1D35145591C53C47EAB6218FBAF7548BF
          F0A5603FD922EAFE073F24F695F81FF3C17641E7FD8FBF75EEA8C7E1876AFF00
          3ADDABF1EF6A617E18EDBED0C8FC7DA5C9EEA9B6A566D7EA8EB5DD789932751B
          872136E81066B7160ABB3152E9B88D42BABCA52370CAA0281EFDD7BA257F2077
          3FCDADC1F33B17B8FE406337351FCCB6DD1D4D2E2F1B9BDADB636FEE26DD1447
          009D50836DE2E8E976CF9A711500815A2F14E1819AE198FBF75EE8DD7F301DEF
          FCE2F72749E3287E7CE0B7A63BA4E3EC4C1D5E3A6CF6CBEA5DBD8FFF0048498A
          DC29818A3AED87470659A638B97205232DF6CCA1891709EFDD7BAD96BFE13EDC
          FF002D3EBA3FF7F1FB83FF007B9C8FBF75EEB59BF9F71E06A7F9CFF62C3F30A7
          CF41D48DF21B6145BCE6635E2583E3FF00DB6DAFE0271E6915AAE2DBC766B47E
          56A31E455350D1FEFDFDFBAF75B2AFCE6DB5FCA5E1F82FBFE5CBD17C5BC76CD8
          BADB2D274F647AB53AE63DE4777478597FB907ACEB368EBCF57E666CC8A6D6B0
          B3C33465CD6DE9FCEC3DD7BAAA2FF84C2C9D87FE963E51C74DFC447577FA3AD8
          CFB880F31C28EC73B86AC6D86406F4C32ADB6465F5E9FDC3004D5E909EFDD7BA
          291D71FF00710B540FFC0F9ECCFAFE7FDCE6EB3C8E3EA7DFBAF75BEA7BF75EEB
          FFD4DF63756E5C66CEDBB99DCF9997C38CC25054642A9AE35BAC287C70420F0D
          51533158A35E3548E07E7DFBAF7441F17848FB6687707C88F90F9FFEEEF53ED9
          A5CAE631383A8AC9E8B0D8FDBB885964AFAFA99A3B4831F0C74EC8CF081555F3
          29B158F4237BAF74B8F8F3F27FE1A776C3B9715D3794DA9AB646267CE6771391
          DA151B5EBE976F5110953B8563CE62E8A4AFC4D3B1025990C8D1175F2E82EBAB
          DD7BA2DDB43F9BFF00C1ACB762516CDC626F2DBD4F95CC4380C6F61D76C1A4C6
          ECDAA96B2AA3A2A4A996B2972526E0A1C356D43C656A2A282345460F288D6E57
          DD7BA057F9B0FF00327F817F1F73785E80F907D3F9BF92BD8D494943BC9F626D
          9A7C750AEC2A1CBC722E3ABF2FBD72396C4CD82C8E768A22F1D250B4F5135304
          7991227899FDD7BA1FFE1A7CFBF855D81F08B39DE7D45B5EA7AA7A87ABF235FB
          477A7565660F1F16E2DBBBBEA4504E36F0A0A0AEAEA0DCF5FBB5B3D4CF4B56B5
          32AD70A8D53BC6E932C5EEBDD367C3FF009E5F1737D76649D5BB1FA3A93E3FE7
          77ED6CFF00C12B71F81D978DC5EF3CA52C355571D0E6AA369D3D19A5CE4B4C92
          353A4EB3C7236A449B5B2ABFBAF7427FC98FE65BF13FE39766CBD4BD911EEDDC
          FBCF0F4B8FAACF41B4F66536E2A3DAA999A58721454F93ADC9E431D11AD9F1F3
          4550D0520A99121914B85242FBF75EE85DDDBF277E1C6DFF008F187F933D83BE
          BAD76EF426E5A4A19717BCB7662E1A4A2C95464DEA29A9F094986A8C7499AACD
          C86A68E78DB1D05349581E9E51E3FDB72BEEBDD003B7723D4BD95B0A8FE59FC1
          4EC8C3EEDDA14B55914C9C1B627AF9F0B5E988917F8F6367C464A2A5CB632AF1
          E183D562AB2189842EB24491B188B7BAF747FBAB7B0B1DD9FB2B0DBBB1F1FDB9
          AE89A1C8D06BF236372B484475F44D20FD6B1CC3546DC6B8995ADCFBF75EEB47
          1FE6A2EFD13FCEB2ABB43B068A7AADA14FD99F1AFB995A78649A2C8EC4C251EC
          94CB352C654B54414553B4ABE94AA0379699947F8FBAF75BC46E0ED8EBADB5D5
          994EEBCB6EDC2C3D5B89D973761556F24AFA79304FB3E2C4B66D3374B5CAE60A
          AA5ADC711242549F3EB50972C01F75EEBE7B3FCBB7E69759FC46F9CB93F93FBF
          B6F6F4AED895D41DB9043B63605061AB339A7B06B5EA3094525266F39B7F1CB4
          18D465329FB8D4AD1AE946FC7BAF74BCFE56598A7DC3F34FBBF7052472C1479F
          F8D5F34737490D4841510D2E6362673234D0D408DE48D678E1AA5570ACCBA81B
          1239F7EEBDD1DFFF0084C4FF00D94E7C84FF00C57BC3FF00EFC1C0FBF75EEAD7
          BF9D07C5BFE627DE91EC47F879DA5BFF002FD75B9426C9ECCE86DB7BAF6EF5D5
          1D2D44FF0075352EF7ABDD0D51B6F239BDAD9084FDAE531F5D90A88A09121921
          85D259963F75EE8B27C09FF84ED6DDEBFCE607B43E6D6E1DBDD8B97C54B06531
          3D17B38D5556C0A6AF85D2780EFF00DC5594F4157BCE3A795417C6D3535363A4
          916D34B5911646F75EEAE3BE747F2DEF8EFF003D3AFB19B53B1B0CFB4F786CEA
          29693AD3B47675250D1EE9D8B13C68A313144F1A5166F67CAF1219F115004042
          EB85A09B4CABEEBDD6B3382FE4C7FCD53E23F7EED93F187B523A6DB7BA37462B
          0359DE1D61BE24DA94782DBB5356167CCF6975AE6AB29EAF278FC551EB9A5A28
          A2CED3492288D5C9707DFBAF75709FCF1BE35F78F6CFF2F6D8DB63AFE8F7677B
          6F7EA3EC4D81BAF7B55E3F07472EF7DDF89C46D0DCFB5F716F0A7DA9B628A9A9
          EA321264F351565450E3697F661791A38CA4440F75EEA80BE2A7F31BFE665F0E
          7A536E7427537C7396AB64ED7C86E2C96367DDFF001EBB772D9F6AADCB9BADCF
          6456AEB282BB134D2C695D5F208C0A74658ECA4B7D7DFBAF7454BBA25F9BBF38
          3E55E37B837874E6F9D9BDBBD8DB8FAD76C50E6F6D757F666C9DADB732D8A6C2
          6D6DAD9E390A8A3CAE436F478B6829EA6A2B84EED4E62332DB4E91EEBDD185FE
          60DF04FF0098E7C66E92C5F617CB9F9092F69758D776260F6BD06026EF6ECAEC
          855DE192C4EE2AEC5E586DFDE58EA3C6C4D05062EB14550633C7E52A05A46F7E
          EBDD5EDFF296F911B3FE297F25A3F2177D63370E7768759EF4ED0CA66B17B429
          F1D599FAC8723DAB1EDF853194F95C9E271D2C82AF3113B796AA21E356209200
          3EEBDD56FF00CEFF00E645FCA6FE7DD262B23DA1D0BF2C36B7656DEA09317B77
          B6F60E2BA971BBC28B15AE49E2C365A0C8EFEAFC46EBC045593B4AB4B59097A7
          677FB79A032396F75EEA9DB0986FE5D1439D5ACCF6F7F9AB9DDB71D497FE1386
          EA7E85DA99DACA6D418C0DB8EB3B87765163E5950D8BAE366FADF4FE3DFBAF75
          75DD1BFCF6FE20FC34EA7A4EA0F8A7F07779E236ED24D357CF53BBBB576D63F3
          5BA77054C50C557B9B78E5E8705BA7259BCDD6A53A2B39711C51A2430AC71224
          6BEEBDD141E9BC89CCFF003F7C3E69A114EF9CF9B5BBF36D4C1CC8299B3136E0
          C8BD3090AA79053B54E8D5A549B5EC3DFBAF75BF47BF75EEBFFFD5DD17E66642
          A693A8E0A3A791E28F31BB70B4158CA480D4C9064320236370349A9A18CDBFC3
          DFBAF74BCEC9E95C1769FC7DDC7D195157361F09BABAFCECF8B25411ABCD8C61
          8F8A2C6E4A280E84A9FB3ADA78A6689885942952DEABFBF75EEAB6BE0D7F2BBD
          CBF1B7B0F7B6F8ED1DFBB637752E7362EE1EBBC560F68C3978A0ABC5EE99A886
          5B219CA8CB5251BD348D4342228A9A11328698B994E8407DD7BA289B63F91C6E
          2C3779E162CD7776C6AFE98C6EE7A5CEC78A8697290F69E6769E3324B90A7DBF
          362DE3385A6AAA8829D296A6BE3A9963085A54875111AFBAF741A7F38DFE4C7D
          D1F28FE4D53FC9CE85DE7D578DA2DFDB776AED8ECCC476A6ECA9D95060339B52
          8C60F15B9F11938F1196A6CA62F23B7A9E9E2A8A4554AA8A7A5D71ACAB3111FB
          AF747DFE357F298D81D1DFCBD33DF176B7B3A8F27BB37BEE18FB7B7DF72E269D
          3FBB6DD818F18C931F3E2E82A6AE032EC5DBF88C1C14204F511CD3C4B354B186
          490247EEBDD045F0B3E066C5A7EF5DBBBF3FD9A5E9BED53D559A8B7451ED3EA3
          CCD3E632D5796C63BAE32A7352C990924C761E8EB9964904314E276411799412
          4FBAF74B1FE617FCB376D777776C3DD98BF905D7BD2F93DFF06130DBA30DD966
          18A8B2F96C1D1D36228F2DB4AA466B0F2D4E4A7C4414F14D44CA55E485584ABA
          D80F75EE850F967FCA4F617C8CF82FD47F0FF05DA192D853748E630DBBB66F65
          576122DC1056E7E0A2CED3EE7AADC7B721CAE122A9C7EE85DCF5B2858AAE27A3
          94C451DD637493DD7BA34DF003E1075FFC06F8E188E83D959FC8EF8F36672FBC
          77A6F3CD525351546F1DDDB8E2A38729925C5D2CB53498BC4478EA1A5A4A4A45
          966115353AEB92591A491BDD7BA72F8983F84E63BB768533336276FEF93FC354
          16F144AF3E5A81912FC2DE9F1908E003E9F7EEBDD165FE6A1FCADF697F310D93
          B7F2D84DC347D7BDFBD734D5B49B0B7BE4292A2AF0398C2574BF755BB1F7A53D
          1AB579C0CF5A3EE296AE9C3D463AA59E448E549668A4F75EEB5C34FE4C9FCE3B
          2980A3F8F793CEA47D194B954929F115FF0024BEEBA5E88A54F9932906C48321
          5396FB78A71E748860D6557E446AFCFBF75EEAF07E3B7FC27EBE11F5EF556DDC
          0F7E6D7AAEF6ED7024AEDDDBF5B74EF9D9D899EBEA823B6236E6DFDBBB971905
          1EDEC52811C3254896B2A0EA96575D6B147EEBDD6B71FCAEF1D4585F9BBDF387
          C643F6F8EC47C73F9B18AC753B48F2982831BB2B3F43434E6594B4B278A9A045
          2CE4B35AE4DFDFBAF746EBFE135D3E4A9BBE3E51D4E1D246CB53FC6149F18B14
          1F712BE462DE789968562808904ECF52AA0258EA3E9B73CFBAF75947CD3FF851
          51166EBAEFC1F5BFFCE206DEB7D4DEF7EBA27FDBFBF75EE99B70FCF5FF008505
          6D0C067375EEADABDD3B736CEDBC5D7E73716E1CDFC4EDAD8EC36130D8BA77AB
          C8E572991ABEBD8A96871F434B133CB2C842468A4B7BF75EE828EADFE6D3FCE8
          3BCF2793C1F4BEEDDCFDAF99C2E363CBE6315D7DF1E7AFF74D7E2B152D4AD145
          91AFA4C46C5AB9A9689EADD63F238552EDA6F73EFDD7BA1BFF00D9D3FF008514
          FD4F5D77DEAFCFFCE216DDFF005C8FF99757FAFBF75EEAF87F93EF6FFCF8EDDD
          83DD590F9E981DF583DD185DEFB728FAF22DF1D5341D55513EDCA9DBD24F967C
          751D0EDEC0266695729A434CCB298DEEBA87D3DFBAF747F3E59FC99D89F103E3
          EF63FC84EC54A9ABDBFB071295106131D2C10E5373EE1C955C189DB5B5F17254
          308A3AECF672B21804A432C08CD2B0291B7BF75EEB4F2DA9F273F9D0FF0035DE
          C2DE95DF1DB77EF3D81B1B6DD50FBCC5757EF04E9DEB3D8D4990D7362F6F6537
          D0A8C7EE1DDFB8A6A41A9E37A9ABAA95019453C109555F75EE98B21F337F9837
          C03EDEC0748FF31FD8E7E4AF534D598BDCD5FD67F20E876A76F52E67054F2546
          3BFBEFD3FD9B95A7CD24B9EC44334F1C426A9A9A78A567A7A8829DA42E9EEBDD
          6E37B33AE7E2E77AFC67C16DBDA3D6DD7595F8D1DC5B5309BC28B62E2F6AE230
          7B2B3B82DCCD8FDDD475159B730F4F4543055CB5C90D45420512AD545EB3A94F
          BF75EE88AFCB3FE58DF0630BF19FBC8F5C7C5EF8FDB4BB22BFACF78E2FACB3B5
          F49B5F67B5376164B6FE429F67AD06E9DCB93C5E2F13917CDBC429E69AA6248E
          4B1B817F7EEBDD5567F25DFE55B96C2EF1EECCEFCD1F8EDD3FBFF65D4ED8DA58
          EEBCAECE6E1E9FEECC351EEAA3CAE4AA771C144BB5B71EF0A7C3E486366A5331
          9562678D9402471EFDD7BA0437CE17F9BA759F71768517407C0EEB6DBFD7F85E
          CCDF343D6F95DAFF000A3E3E452CDB2283746529768D5D366C6DB4C8D6ACD808
          69DD6A24732CA087625893EFDD7BA20FF08B31DA59EFE721D2F99EF2A09F15DC
          F95F94F97AEED4C5D4E2A8B05518EDF951FC7DF72D1CD86C785A0C5C94D932E8
          69E10228ADA5781EFDD7BAFA21FE3FDF7FC52FEFDD7BAFFFD6DE1FE45EC4AAEC
          1EA8DC388C6C2F5197A0F067B134F1F3254D6624B4AF4B18FA99AAE85E68907E
          5DC0F7EEBDD075B4375E67BDFE37EF1DABB277736C8ED79BAE371EC5A6DC716A
          15FB3B79D76D9C86176D6F48E1406A4C74B5CF056A32ADFC913C63D69C7BAF75
          585FC967F978FCC3F85F92EF8DEBF2B7B59B3D5DD99FC071385EBFC776267FB1
          B1B3D7E16BF215792ECCCE65B3222821CEE6455A53D32C4AF50D4AD21AA657F1
          C6BEEBDD10ADFF00D1FF00372B3E47EE0CC4BB07B7EBBB827DFD5F93C2EF4C66
          3B36F41E65CC4B26132786DE300182A1DAB494891788FDC474D052A68755D2C8
          3DD7BA323FCEDBAC3BD3375BD03BFAAB1BB877475EE2B61546DBDD70EDDA2C96
          576DEDBECD96B63ADC9663258CA0866868137150C8B0D255CD12A69A33106048
          57F75EE93BF0A7A33E4BE77F96F7CC1C250E337B5063BB025C0D4F4FED0CA264
          68AAF3749B6DA3ADECA7DAD88C8F8AAE9E8378E3A34A18D61448F23514CEA81F
          5B16F75EE8A2FF002ECD8FDA95BF333A6DF6860B72D2546D5DE50E437CD5478F
          C850C382DA14B1D445BA69F70CF2431251415F8DF2D20867D3E59E54882B311E
          FDD7BA289FCE83E2BFCD3EC7FE651D8E25EA9EDFEE5C2761556D86E81ABDB5B5
          771EECDACBB21F0387A18B6AE12AA8E967C16D997039E4AB5C9452C94BA6666A
          B989499653EEBDD6C1FBEBE1FF00CCBC6FF2D7F893F1F28B3590DF9D8FD6780C
          2D2F766DFA1DDF14792CD4631D5D361F6FC39FC8D7D151EE3C675ECD59150189
          AA4254A52C52C61C469EFDD7BA329F0AF13DBFF137E2D6E51F22A7931F5B1EE9
          C8D675B6C8C9E7A9B3B98C5D056632822A5C11A9A4ADAD829A0C867A2A8A95A5
          8A775A3819DCE9D4CA3DD7BA34BF13F6865307B0B25BB33D1C91E6BB1B3536E6
          95255292FF000F70E31D24A8C03A35634D354283FEEB9D3F37F7EEBDD1A6FF00
          88F7EEBDD7AD6FA7BF75EEBAB0FE83FDB7FBEFEBEFDD7BAF9F17F2D03FF39E1F
          22FF00F101FCE7FF00DE5372FBF75EE8E4FF00C2623FECA6FE427FE2BD618FFE
          C40C0FBF75EEB755F7EEBDD140FE609C7C16F9856E3FE71ABBA4F1C727AFF3F7
          3FEB9F7EEBDD6AE9FF00098E1FF3935F2347E3FD0360CDBF17FF004818BE7FD7
          F7EEBDD6E95EFDD7BAF587F4FEBFEF3F5FF6FEFDD7BAA93FE76BD05BF3E42FF2
          FBECEDBBD6D8CAECF6EBD8D9DDA9DA706DAC5C534F92DC989D9790925DC38CC7
          51C2AD2576420C0D75456C34EA0BCF2522A202EC8A7DD7BAA3CFE481FCD5BE33
          7C53E9ADDFF1D3E4664AAFAE23A9EC1CC761ED4EC9A7DB998DC181CC2EE3C6E1
          E872783DD0BB76872999C6E5B175183434D3B53494F35349E36785E15597DD7B
          A2F7FCEB3F983F53FF00303EC5E8DEAFF8C584CF6F7C3F5A57EE2A7A0DE6FB6B
          258FCC7606F2EC097018BA3DAFB336FD6D3C5B8A7C440B888B4B4F4D0CB59593
          811C5A235925F75EEB6F6F811D2DB9FE3C7C33F8E1D2FBD587F7C7617566DDC6
          6E8856615098ECFD5C326632D888E75BC734784AFC93D1ABA5D1961054916F7E
          EBDD57B7FC285E1337F2DDDDB787C91C3DB7D4524A4C7E448633B91E212B9D25
          6342F285D5C72C05EE6DEFDD7BAA70FE4E3FCD73E2A7C11F8D7BD7A9FBB69FB3
          5B7467FB8B3DBEE846C7D954DB831430791DAFB430F4C67AD933B8C31D6FDE60
          A7D51E8215341D5CD87BAF756D9FF411AFF2F2FF00955F903FFA2B283FFB30F7
          EEBDD057D57FCCF3F9367657C91D8595D97F1CB234BF207B27B63094BB7BB2AB
          7E3AECBC76E3FF0048FBE737161A9B71E4778479A9B2D4B5B5390CB13535819E
          60AECC75723DFBAF75B1EFE3FE37FF0013F5F7EEBDD7FFD7DFE3DFBAF74533B1
          3E3DE660DD13764F4A6E04D99BC267927CA625D8C383CDC92112D431558A7860
          7AC95419A1961969A673AAD1B5DCFBAF74C51F6BFCA5C1A0A1CDF4852E7AAE15
          08D91C3D44A20A8238F31FB2ADC9D3EA6FA90BA07F80FA7BF75EEA5607E47F60
          41BEB68ED0EC4EA79B67C3BC2BD3198EAB6ADAAFB813CD325347511C15148B15
          4D34553322CC03ABA2B86E7E87DD7BA08FE7C7CEBC87C4B7D93B5F676CEC5EED
          DF3BD69325990DB92A2BA9B6EE176FE2E7828A49A6871AD1576532190ACA8D11
          4492C291AC4CCEC6EAA7DD7BA017747F3658B697F2FBEE2F97D55D56B5FBF7A8
          F3784D8953B02872F3C7B6729BC37664F6FE1F6B65066E4A792B6836A39DC915
          45521492A62104912B3B34721F75EEAB7BF958FF003C3F93BF2C7E666D9F8F3D
          D1D71D5B57B67B5E8B7855E232BD67B7B3D80CBEC3AEDABB632BBA12AB25264B
          70E7E3CE6DB9A0C4B524CD3AC75314D34528918068DBDD7BAD837B1BE406F1C1
          764D5F5B75F75D1DE795C5E3296BF225AAAA12661554D055934F4D4D090B4D4B
          0D4C41E591C6A91F485E013EEBDD27DBB7FE506407DAE37A1A9F1F5728D11D5E
          46A2A1A9A12D701DC545763611A7EBEA902FFAFF004F7EEBDD66DB7F1FF7B6FB
          DCB47BDBE41EE18739250379717B1F1CE8D85A425C3F86B3C291D1AD36A55324
          100733D8796775BA1F75EE8E422246891C68B1A22AA22228544450155115400A
          AA05801C01EFDD7BA6DCC66313B7F1794CEE7B2B8FC1E0F0B415795CC6632F5B
          4F8CC562B1B8F81EAABB2392C956CB0D1D063E929A369259A4748E3452CCC002
          7DFBAF748CEBDEDEEA7EDBA5C8D7F54F6875E766D0E1AA61A3CBD6F5F6F4DB7B
          D29B1757508D24149919F6E64B250D1554D144CCA9232BB28240F7EEBDD089CD
          FEBC7D2FF422E073F4B716FF0079F7EEBDD53C755FF28DF829F1B3BAAB77FE07
          78760E2FB2BB936FF6E6C1C660B77F696DF63B9E93B1F09906DFB4DB4B6FCB82
          C76472794C6612AA6A88FC06A0D1C49E59559149F7EEBDD0C9F0A3F957FC63F8
          0FBD376EFDE8AABECEA8CE6F3DA34FB2B3237CEEEA1DC74230F4D96A5CD46F47
          4F4BB7F0ED4F59F7B469772EE345C0517BFBF75EEAC8436A045FFA8BADEEA751
          16FA7E08B5EDF51FEBFBF75EE81FEF8C1F586FAEB4DC9D3FDB5BAA836C6D7EF5
          C5E5FA6516A372E2F6BE6370D6EFDC264B15FDDCDA157957B566EDAEC71A87A4
          A7863A89DDA26658982301EEBDD141F855FCAD3E32FC09DEBBC77EF45D4F66CF
          9DDEFB5A9B67E6977BEEFA3DC542B89A4CB41998CD1535360310D4F59F7B4E97
          72EEA52EBA45EFEFDD7BAB04DC9B9F6DECCC1653746EFDC383DADB67054AF5B9
          ADC7B972F4182C16228A3D224ACCAE63273D2E3F1F491EA1AA496455048B9F7E
          EBDD22DBBBBA655361CC7B77AC563ED39041D60E77F6D4D1D8D319A9E9C47B11
          8E5F4EF097CD59125B1E6A0EB9517EAC3DFBAF74289FEB6BFF00AC7FDBDBE80F
          F8FBF75EEA983BDBF959FF002AAF95BD8E73B594FB436CF69EF3CF6F2A4AAFF4
          23DAF87DAB96DE5B9F66CB0B7614526CEC7D66530790DC7B5AA2A55B39F6F8D5
          ADA59250D58433DFDFBAF7461BE2AFF2A6F847F0EF70C3BD7AA3AABF88F61D20
          9131FD8BD8799ADDF1BB310B3466193F804F94B6276DCF244CC8F3D05253543A
          332B39436F7EEBDD1F74DD9B5E5DCF53B262DCDB7A4DE949848373556D28F358
          F7DCD4BB6EA6B65C7D2E7EA7022A4E560C2546421929D2ADA114EF3232062C0A
          FBF75EE81ADF598F8C3F20A4DF9F1637DEE6EA1ECFC964F0B253F60F46D76EAD
          B799DCF1E2164A6A915198DA14D946DC58B343388278EA3C50CD493F8A646471
          1B0F75EE88637F224FE586CEEE3E3ED7A0918B684ED6EDAF1A063A8226ADEACD
          A16C00B926C073EFDD7BAC47F9127F2C2BD8FC7FAF16E38ED6ED707EA6E6DFDF
          4FC0FC9FE9EFDD7BA55EC4FE4B3FCB9BADB7BECFEC4D9DD1D5F8BDDDB0774607
          78ED7C9BF66766D7263F70EDBC9536670F5AD455BBB67A2AC4A5AFA34731CD1B
          C4FA48652091EFDD7BAB56FC7E7FE27FDB7F5F7EEBDD7FFFD0DFE3DFBAF75EF7
          EEBDD7BDFBAF744CFE4530A7EE4F8DF5531D14EBBAE54691B88D5CE676DF0C7F
          B24EA1F9FF001F7EEBDD247E7CE2BE17C5B0B6DEEEF988F0E37178CCCCD85D95
          99C6C9B963DE32657294ED5B5986C1C5B4524CD6469A7A4C619EA2268E4A68D6
          1123E8601BDFBAF7497E9EEB6FE5FF00F22BE1BF62755757D0E0771FC68DE30E
          770FD9D4B5555B87179883310D2D06472192DCF92DC668F7462372E1A2828AB6
          96AE66434C218648088D54FBF75EE811FE587F0E3F9697446677F6F3F863B86A
          3B47B0929976EEE8DF9BD372D5EE6DEDB7F6F64AA0D4C584C4415785DB74B86D
          BB96ABC7EA6A9A3A106B9A0512544A2350BEEBDD1C1DA969BE66F61BC5FB890E
          C8A48E62B72B1B7D8ED550ADC1B1BB01F5FA9FF0F7EEBDD1CFF7EEBDD7BDFBAF
          75EF7EEBDD152F9D74D5159F0A3E5D51D2D354D754D5FC6AEF0A7A7A3A3825A9
          ACAA9A6EB6DC91C34F494D0472CD3D44AEDA5115599D88001BDBDFBAF75429B4
          FE377C86F8C9F1BBA6FE4875F76CD0F5F76A7CA883F9747C786A7E8CE91C5ED4
          6EB8EA7A99A9A9B379CDDB85DCD36F9A4DE3DA33D26E4D394CCD651D2461E9CD
          A28D1F427BAF74BCFF00663BE6E637E587C8AEBB9BBE37A6DEA2EBA9FE4EED6C
          66DBCCF586E0ECCADA0EA3EBFE81C2E53A5FBC29FAF76774B53D24B96ADDEA53
          2AD956DCB2AEEBACAAA9C65362A33047149EEBDD14CDDBDF5DB7BEF607C6BECB
          DFDDC3DDF06E0E9FEE9F9534B41DFF004186C5EE7A0A4C91F878991DBD5BD55B
          A4750EDEA8CD6CDDC5BD6B22A3A88F3DB7532586AFAEA8C51998C11CA9EEBDD1
          E9EA4EFAF9CFBE7E4D7437C72DFF00BF77EE017B77E3BF537CC1DE15F8ADBBB6
          71198DB3B353E3667361F6475AD11A8DBB515586AECAFC97A9C66500785E7A49
          9DA05648C087DFBAF7443BAA7E447CC9EB9E9CF869B0F61F73F656D4865E9CAE
          CC41FDF2DBBB8B3D5FBAFE4B1F96F57B537E7506E3C3D074A6FBDDBD835184D8
          53C3FEE065AAC34F494D939F2B264A45A654F7EEBDD1F483B53E5264B7CE1F7A
          6EAEC3DF3BB31555FCE8A7F8F780EBFCCF5C6C9ADDBDB1BA2B6355F60D44157B
          62A67D9273C93E756B61A6FE3EF59E58A9A9218E0A88CB4CF2FBAF7451B01F39
          BE6FE63697C90C8E07B4BB80255F5D7576F1DAFF00DE0DB383CDEF8EB7DE394F
          9AD47D55BB76E1A287A736B6DADB19DA7EB2AD11576DFA74CF52D05308AA4D53
          543CBA7DD7BA39DD93BABB97B0FF00944FF316C2767E777A7656E8D89D97F277
          AA768E637460A95378EE0D87B23B32971DB3BEF29F0382C2C19BA9FE19709550
          51A09D14151602DEEBDD56175EF4D76963BBF7E2DECEDC3B3B718DA9F01FE6AF
          4174175054D463728F4B99C0F7BF6DF63F7CD46E1966348615A3C1EC7A1DBF8C
          9EA4B34708D1A9D78B7BAF743DECCF993FCC0EBFA7BE486EBCE7706F88B7161B
          69ED0ABECDC3536C5C8647747C79DCB90F9774FB1777576DB8E6E92DBDB53634
          D8AE8F35ACBB764AFDD7531D2D1C7990E1259027BAF7537A1BB0FBE7ACE8B0F3
          74426E3DDF5599EC1FE73DD81B5B2B9FEB4C5E573FBEF736DCC06033FD37B96A
          2AEBB6851E431D5BBA7292AD48A6C7AE369B3523F85A09174C6BEEBDD0A527CB
          3EE28FE31E06AF64FCA6F92BD9757BC7B97E3F6D5DC3D95B8BAD70BD718EEB0D
          D3BABA272DBCBB3360D476F51753EEBADCEED4937FD1C34EC98FDA8B90C3E5A5
          830E2A9D26793DFBAF743E7F2E4DE5DA7DB5F2D3ADFB83B7A9F2F57BF779FF00
          2A4E98937AEE2C86DC9301FC4776D37C81DFD4F5EB5D4D150D0E3A87353414F1
          CF514A89132B39611229007BAF7455FA3F72ED1EB0CB773ED2A0F8FDBE7777F3
          21EBEEF0FE663DABD7BBB28765670CFD78333B4F7066367EF7DF55F51262B1BB
          EB66F68E14E3F1380A663978AB6B8AC71448C7C9EFDD7BAC5D47F273E6CEF9EB
          4EB2A14F915D9998C3EFFF00953F1E360E5B7CE036B9C96F5DB58EDE7F1D77C6
          EAEE6D9EFBD774F42EC8DAB550D06FAC6D0D4343498BAB3B5AAE46C73D74C511
          9FDD7BA06F19F20FE6650E07707C83FF00493DCF377A6EDFE59DD1197C53576D
          B55C44F343F246B765F756E9C2EDA1B072585A1DCDB1BAFA019AAA920A496AA9
          6A6B65AD960A98922813DD7BA3C3F1CBB8FE60F6A76EFC2DD8392F917BF6A3AB
          775F627CC5CDE6B7BEDBDA30D64BD97D6BD3399EBBCB7596D4DCBBDF7CF4DEC6
          7CF63EAA6AAC8E2CEE5C6E1B11FC731DADE9C8909923F75EEB625E6DFE3FD6DC
          5FFD6BFBF75EEBFFD1DFE3DFBAF75EF7EEBDD7BDFBAF745B7E4EF5EE4F7B6C38
          32DB763925DD1B17249B9B1115382D5351142A3F88D3D2A29BBD52C71A4F128E
          5E4A70A012C3DFBAF7457FBDFA4BAF7F996F42E036964B77D4EC2EC0D939DA3D
          C94F91A0A1A7CB54E0370478EAAC46412B305535342727B6370D1D64854A4B0B
          2308C870F13237BAF7424FC4AF833B1FE2F7406EEE8C7DC791DFA3B2AA371D67
          60EE5A9A28F012E60EE4C241B6EA287158D82AAB97138FA1C253A450EA9A795A
          42F2339D4153DD7BA0AFE38FC41EA5FE5D34BD9BD8AFD8DB8379D66F1A3A2C36
          329333498DC4D4478EC6545564287058FA4A1967FE2B99ACAA9D0CF56DE28D23
          8B508A251216F75EE8C17C5DDAF9EAE6DE5DCFBB2034F99ECBAF33E369D83AF8
          B02B5125409A34750EB4D593322C1AAC4D3D3235ACE3DFBAF746EFDFBAF75EF7
          EEBDD7BDFBAF75EF7EEBDD7ADEFDD7BAF7BF75EEBDEFDD7BA0B29BA67ADE8BB8
          B2FDFD0EDA4FF4B799EBFC6757576EF9721969EA3FB8388CE566E4A2DB5478F9
          F21261F1D48D9DAD7A995E9E9A39A7934191D82205F75EE852FAFF004E473F9F
          F79FC8F7EEBDD7AC39E073F5FF001FC73FEC07BF75EEBBF7EEBDD756078205BF
          A7BF75EEBBB0FE9FD7FDE7EBFEDFDFBAF75EB0FE9FEFBFDF0F7EEBDD7561F5B0
          BFFBEFF8A7BF75EEBBB0FE9EFDD7BAF587F4FF000FF61FD3DFBAF75EB7E7F27D
          FBAF75EB7FBEFF005BE9EFDD7BAF587F4FA7D3FDF7FB1F7EEBDD7AC3FA7FBEE7
          FE2BEFDD7BAF7BF75EEBFFD2DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD15AE
          C2F8CD8FCCE79F7BF5B6E2ADEB6DE8D24B5135462FCCB8AAFA89496965929E96
          6A79A866A963795A22D1484DDE26625BDFBAF74951B63E66D28FE1D16FBD8D59
          4EA742E566A6A2FBA64B69F236BDB2B26A2A3EAD196BFE7DFBAF74E7B67E30D5
          64F3B4FBB3BB779567646629983D3625CCC36FD39570EB1CA2709254D207E7ED
          E38A9606206B47171EFDD7BA3731A244891C68B1C71A2A471A2AA2468802A222
          280AAAAA2C00E00F7EEBDD73F7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBD
          D7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7
          EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF7
          5EF7EEBDD7BDFBAF75FFD3DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBA
          F75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7B
          DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEB
          DD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF
          7EEBDD7BDFBAF75EF7EEBDD7FFD4DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD
          7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7E
          EBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75
          EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFB
          AF75EF7EEBDD7BDFBAF75EF7EEBDD7FFD9}
        Stretch = True
      end
      object QRLabel42: TQRLabel
        Left = 13
        Top = 143
        Width = 298
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          34.395833333333330000
          378.354166666666700000
          788.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PRESBYTERIAN MEDICAL CENTER'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object QRShape30: TQRShape
        Left = -1
        Top = 163
        Width = 698
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          -2.645833333333330000
          431.270833333333000000
          1846.791666666670000000)
        XLColumn = 0
        Brush.Color = clBlack
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel13: TQRLabel
        Left = 13
        Top = 29
        Width = 240
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          34.395833333333340000
          76.729166666666680000
          635.000000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #49688'  '#49696'  '#44592'  '#47197
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = #48148#53461#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 24
      end
      object QRLabel24: TQRLabel
        Left = 8
        Top = 7
        Width = 151
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          21.166666666666670000
          18.520833333333330000
          399.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #8251' '#51204#51088#51064#51613#46108' '#49436#49885#51077#45768#45796'.'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
    end
    object QRLabel26: TQRLabel
      Left = 645
      Top = 1086
      Width = 99
      Height = 14
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        37.041666666666670000
        1706.562500000000000000
        2873.375000000000000000
        261.937500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'PMC 82-OP-2-40'
      Color = clWhite
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel33: TQRLabel
      Left = 349
      Top = 1086
      Width = 69
      Height = 16
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        42.333333333333340000
        923.395833333333400000
        2873.375000000000000000
        182.562500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = True
      Caption = #49688#49696#44592#47197
      Color = clWhite
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 11
    end
    object QRLabel34: TQRLabel
      Left = 63
      Top = 1086
      Width = 69
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        166.687500000000000000
        2873.375000000000000000
        182.562500000000000000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = True
      Caption = #50696#49688#48337#50896
      Color = clWhite
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 12
    end
  end
end
