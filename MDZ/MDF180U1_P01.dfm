object MDF180F1_P01: TMDF180F1_P01
  Left = 2354
  Top = 105
  Width = 939
  Height = 678
  Caption = 'MDF180F1_P01'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object qr_Search: TQuickRep
    Left = 8
    Top = 6
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      '')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39)
    OnNeedData = qr_SearchNeedData
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
    object QRBand2: TQRBand
      Left = 57
      Top = 210
      Width = 700
      Height = 21
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
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
      object qrlb_Date1: TQRLabel
        Left = 4
        Top = 3
        Width = 107
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          10.583333333333300000
          7.937500000000000000
          283.104166666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '2001-12-12 22:22'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qrlb_Weight1: TQRLabel
        Left = 117
        Top = 3
        Width = 53
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          309.562500000000000000
          7.937500000000000000
          140.229166666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '154'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qrlb_Height1: TQRLabel
        Left = 177
        Top = 3
        Width = 35
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          468.312500000000000000
          7.937500000000000000
          92.604166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '154'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qrlb_Item11: TQRLabel
        Left = 222
        Top = 3
        Width = 33
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          587.375000000000000000
          7.937500000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '154'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qrlb_Item21: TQRLabel
        Left = 265
        Top = 3
        Width = 35
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          701.145833333333000000
          7.937500000000000000
          92.604166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '154'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qrlb_Item31: TQRLabel
        Left = 307
        Top = 3
        Width = 35
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          812.270833333333000000
          7.937500000000000000
          92.604166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '154'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qrlb_Date2: TQRLabel
        Left = 354
        Top = 3
        Width = 107
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          936.625000000000000000
          7.937500000000000000
          283.104166666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '2001-12-12 22:22'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qrlb_Weight2: TQRLabel
        Left = 467
        Top = 3
        Width = 53
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1235.604166666670000000
          7.937500000000000000
          140.229166666667000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '154'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qrlb_Height2: TQRLabel
        Left = 527
        Top = 3
        Width = 39
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1394.354166666670000000
          7.937500000000000000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '154'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qrlb_Item12: TQRLabel
        Left = 572
        Top = 3
        Width = 37
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1513.416666666670000000
          7.937500000000000000
          97.895833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '154'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qrlb_Item22: TQRLabel
        Left = 615
        Top = 3
        Width = 39
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1627.187500000000000000
          7.937500000000000000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '154'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object qrlb_Item32: TQRLabel
        Left = 659
        Top = 3
        Width = 35
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1743.604166666670000000
          7.937500000000000000
          92.604166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '154'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRShape13: TQRShape
        Left = 112
        Top = 0
        Width = 2
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          296.333333333333000000
          0.000000000000000000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 173
        Top = 0
        Width = 2
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          457.729166666667000000
          0.000000000000000000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape15: TQRShape
        Left = 216
        Top = 0
        Width = 2
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          571.500000000000000000
          0.000000000000000000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape16: TQRShape
        Left = 261
        Top = 0
        Width = 2
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          690.562500000000000000
          0.000000000000000000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape17: TQRShape
        Left = 301
        Top = 0
        Width = 2
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          796.395833333333000000
          0.000000000000000000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape18: TQRShape
        Left = 345
        Top = 0
        Width = 2
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          912.812500000000000000
          0.000000000000000000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape19: TQRShape
        Left = 347
        Top = 0
        Width = 2
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          918.104166666667000000
          0.000000000000000000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape20: TQRShape
        Left = 463
        Top = 0
        Width = 2
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1225.020833333330000000
          0.000000000000000000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 522
        Top = 0
        Width = 2
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1381.125000000000000000
          0.000000000000000000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape22: TQRShape
        Left = 567
        Top = 0
        Width = 2
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1500.187500000000000000
          0.000000000000000000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape23: TQRShape
        Left = 610
        Top = 0
        Width = 2
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1613.958333333330000000
          0.000000000000000000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape25: TQRShape
        Left = 654
        Top = 0
        Width = 2
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1730.375000000000000000
          0.000000000000000000
          5.291666666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
    end
    object QRSysData22: TQRSysData
      Left = 1042
      Top = 760
      Width = 43
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666700000
        2756.958333333330000000
        2010.833333333330000000
        113.770833333333000000)
      XLColumn = 0
      Alignment = taRightJustify
      AlignToBand = False
      AutoSize = True
      Color = clWhite
      Data = qrsDateTime
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExportAs = exptText
      FontSize = 6
    end
    object QRBand1: TQRBand
      Left = 57
      Top = 38
      Width = 700
      Height = 172
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        455.083333333333300000
        1852.083333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRShape2: TQRShape
        Left = 0
        Top = 147
        Width = 716
        Height = 8
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Width = 5
        Size.Values = (
          21.166666666666700000
          0.000000000000000000
          390.000000000000000000
          1894.416666666670000000)
        XLColumn = 0
        Pen.Width = 3
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QR: TQRLabel
        Left = 20
        Top = 24
        Width = 284
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          52.916666666666670000
          63.500000000000000000
          751.416666666666600000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #52404' '#51473' '#52769' '#51221' '#44208' '#44284
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 24
      end
      object QRLabel1: TQRLabel
        Left = 7
        Top = 157
        Width = 99
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          18.520833333333330000
          415.395833333333300000
          261.937500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #52769' '#51221' '#51068' '#49884
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel2: TQRLabel
        Left = 119
        Top = 157
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          314.854166666666700000
          415.395833333333300000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #52404#51473'(Kg)'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel3: TQRLabel
        Left = 177
        Top = 157
        Width = 35
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          468.312500000000000000
          415.395833333333300000
          92.604166666666680000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #49888#51109
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel4: TQRLabel
        Left = 222
        Top = 157
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          587.375000000000000000
          415.395833333333300000
          89.958333333333320000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #48373#50948
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel5: TQRLabel
        Left = 305
        Top = 157
        Width = 36
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          806.979166666666800000
          415.395833333333300000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #46160#50948
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel6: TQRLabel
        Left = 265
        Top = 157
        Width = 34
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          701.145833333333200000
          415.395833333333300000
          89.958333333333320000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #55113#50948
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel9: TQRLabel
        Left = 357
        Top = 157
        Width = 103
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          944.562500000000000000
          415.395833333333300000
          272.520833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #52769' '#51221' '#51068' '#49884
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel10: TQRLabel
        Left = 467
        Top = 157
        Width = 54
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1235.604166666667000000
          415.395833333333300000
          142.875000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #52404#51473'(Kg)'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel11: TQRLabel
        Left = 527
        Top = 157
        Width = 39
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1394.354166666667000000
          415.395833333333300000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #49888#51109
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel12: TQRLabel
        Left = 571
        Top = 157
        Width = 38
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1510.770833333333000000
          415.395833333333300000
          100.541666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #48373#50948
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel13: TQRLabel
        Left = 658
        Top = 157
        Width = 39
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1740.958333333333000000
          415.395833333333300000
          103.187500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #46160#50948
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRLabel14: TQRLabel
        Left = 615
        Top = 157
        Width = 38
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1627.187500000000000000
          415.395833333333300000
          100.541666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #55113#50948
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        ExportAs = exptText
        FontSize = 9
      end
      object QRShape24: TQRShape
        Left = 112
        Top = 152
        Width = 2
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          296.333333333333300000
          402.166666666666700000
          5.291666666666667000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape1: TQRShape
        Left = 173
        Top = 152
        Width = 2
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          457.729166666666700000
          402.166666666666700000
          5.291666666666667000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape3: TQRShape
        Left = 216
        Top = 152
        Width = 2
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          571.500000000000000000
          402.166666666666700000
          5.291666666666667000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 261
        Top = 152
        Width = 2
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          690.562500000000000000
          402.166666666666700000
          5.291666666666667000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape5: TQRShape
        Left = 301
        Top = 152
        Width = 2
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          796.395833333333200000
          402.166666666666700000
          5.291666666666667000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape6: TQRShape
        Left = 345
        Top = 152
        Width = 2
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          912.812500000000000000
          402.166666666666700000
          5.291666666666667000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape7: TQRShape
        Left = 347
        Top = 152
        Width = 2
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          918.104166666666800000
          402.166666666666700000
          5.291666666666667000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape8: TQRShape
        Left = 463
        Top = 152
        Width = 2
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1225.020833333333000000
          402.166666666666700000
          5.291666666666667000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape9: TQRShape
        Left = 522
        Top = 152
        Width = 2
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1381.125000000000000000
          402.166666666666700000
          5.291666666666667000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape10: TQRShape
        Left = 567
        Top = 152
        Width = 2
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1500.187500000000000000
          402.166666666666700000
          5.291666666666667000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape11: TQRShape
        Left = 610
        Top = 152
        Width = 2
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1613.958333333333000000
          402.166666666666700000
          5.291666666666667000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 654
        Top = 152
        Width = 2
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1730.375000000000000000
          402.166666666666700000
          5.291666666666667000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape26: TQRShape
        Left = 0
        Top = 150
        Width = 699
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.229166666666670000
          0.000000000000000000
          396.875000000000000000
          1849.437500000000000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRImage2: TQRImage
        Left = 13
        Top = 82
        Width = 80
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          34.395833333333300000
          216.958333333333000000
          211.666666666667000000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D6167657E1E0000FFD8FFE000104A46494600010101006000
          600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC00011080055015D03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7CA
          28A281087A1AF0BBCD7EEACAD2DA79B53D62592E59C858AF4A000391D319EC2B
          DD1BEE9FA57CEBAFDC34769A34CAA0ED691F1EE242715505766751D91A577E22
          D42C111AE5FC470AC83285EF701BF1DB5D6F802FE7BDF10239BCBE9A09B4F794
          477539936B09557E9DAB92F1B5C37F6358A3CAD31BC93ED80B7FCB2DCB8D82BA
          1F86073AB59FFD82A4FF00D1E2AA4972DC98BF7AC7AC51451599B05145140051
          4514005145140051451400514514005145140051451400515893F8CFC2D6B712
          DBDC78974786789CA491C97D12B230382082D9041E3157F4DD5B4DD62DDAE34B
          D42D6FA05728D25ACCB2A86C038254919C1071EE2802E5145140051451400515
          8F7BE2CF0E6997925A5FF8834AB4B98F1BE19EF238DD720119527232083F8D5C
          D3756D3758B76B8D2F50B5BE815CA3496B32CAA1B00E0952467041C7B8A00B94
          51597A9789342D1EE16DF54D6B4EB19D903AC7757491315C919018838C8233EC
          6803528ACFD335DD235AF37FB2B55B1BFF00271E67D96E125D99CE33B49C6707
          F2355FC47E28D1BC25A7C77FAE5E7D92DA49442AFE53C997209030809E8A7F2A
          00D8A2B88B0F8BDE05D4F50B6B0B4D73CCB9B99561853EC938DCEC4051929819
          2475AEDE800A28ACFD675CD2FC3DA7BDFEAF7F059DB2E46F99F1B8804ED51D59
          B00E14649C702803428AF18D7FF68AD12C2F441A26953EAB10FBF70F2FD9D0F0
          31B4152C7A907217A77EB59907ED2D0B5C44B71E1578E02E048F1DF87655CF24
          298C0271DB233EA2803DEA8AE0344F8CFE06D6BC84FED6FB05C4DBBF737F198B
          6633F79F98C640C8F9BB81D78AEFE800A2B90D6FE28F837C3BABCFA56ABAC7D9
          EF60DBE645F6699F6EE50C395420F041EB5AFE1CF1468DE2DD3E4BFD0EF3ED76
          D1CA6167F29E3C3800918700F461F9D005E9751B382568E5BA811D7AAB48011F
          8533FB5B4EFF009FEB6FFBFCBFE35E57E39B88EC75BD66F5AD22B891678235F3
          412003103FD2B8D1E27C901747B0C93D3637F8D5469CA4AE8CDD449D99F431D5
          74F238BEB639E3FD6AF3FAD78D0B0B3D5EDEDA2B86556FB3CEF1312700F9A724
          E3D85416734F37CD73A669D6E02EE31B464B95F5C6EF947B9ABCF1C8BA869973
          1411FD9A3DD198D7EE956E0ED39393C93425CAF706F98805ADA6B171A325CCAA
          6286CC90B203B6455760C011DF0322B57E1D4F6D69AC5ABC93246874C902B4AD
          B73FBFF5359FFD897DA6D9A4B2C0E1A1B56B54620A80CD230CE7D42FF3A65B5A
          9B5D3EDED26B78269510B2B4B0E588C927807246493552D55895A3B9EC9FDADA
          70241BFB6047ACABFE347F6BE9DFF3FF006DFF007F97FC6BC16F7529AC5448FA
          469B242C70248D5B69FD78AA63C501986FD274FEBD446DFE342A6DAD06EA5B46
          7D1905D5BDD06304F1CA17A98DC363F2A9AB86F87F1C71DE6AC228D6343E436D
          5180329938FC4D773599A277398F1B78EF47F01E971DE6A864792762905BC201
          92523AE3240006464F6C8EE40AF9AFC49F12FC5DF10B54B7D3A199AD22B86FB2
          C561652B4693191B00484B7CE4E40E7E5F40327377E3CEAF757FF136EAC66602
          DF4E86286055271864591988271B897C6463855F4AD2FD9E7405D47C6777AC4A
          8AD1E976FF0021DC415964CAA9C771B049FA5051CC0D37C71F08F5AB2D666B39
          34F95F28A4BA4B14CBC6E8DF631041F4241E32304023DA3C09F1D347D7960B0F
          10BC7A66A6CAECF3B011DA3609200667254EDFEF704838392056BFC70D2D352F
          859A8C8607966B2922B987664ED21C2B3103A808EF9CF03AF6AF922803E89F8F
          7E24D0B58F03595BE97AD69D7D3AEA51BB476B7492B05F2A519214938C9033EE
          2B94FD9CFF00E4A15FFF00D82A4FFD1B15798DD685ABD8E9F06A177A55F5BD94
          FB7C9B99ADDD239370DCBB588C1C8048C7515E9DFB39FF00C942BFFF00B0549F
          FA362A00E03C75FF00250BC4BFF615BAFF00D1AD5F5EF817FE49EF86BFEC156B
          FF00A296BE42F1D7FC942F12FF00D856EBFF0046B57D7BE05FF927BE1AFF00B0
          55AFFE8A5A046FD14578EFC58F8B1AEF813C536BA5E9769A74D04B64970CD751
          BB3062EEB81B5D463083B7AD007B15729E32F88BE1DF03222EAD72ED772A6F8A
          CEDD37CAEBB80CE32028EBCB119DAD8C918AF9EB5AF8EDE36D5EDFC88AE6D74C
          428E8E6C612ACE1863EF3962A47382A548CFD31E713CF35D5C4B71712BCD3CAE
          5E492462CCEC4E4924F2493CE68196356D4A6D6359BED52E15167BCB892E2458
          C10A19D8B103249C64FA9AF49F83DF142D7C12D75A56B2263A55D4AB2A491206
          304A70ACCC3A952A067192360C29C9AED3E1AFC1784F852F67F14457505DEAD6
          ED01B5590298612D1BA330DB95943C61B04918C0619C8AF1DF1A781359F04EAB
          3DB5F5B4CF6624D905F08888A60725707901B0395CE460F5EB401F67DB5CC179
          6D1DCDACF1CF04AA1A396270CAE0F4208E08A96BE20F0EF8C7C43E1395DF43D5
          67B40FF7E31878D8F4C9460549F7C66BD0BFE1A33C5FFF0040ED0FFEFC4BFF00
          C76811F4ED1597E1BD4A6D63C2DA46A970A8B3DE59437122C60850CE81881924
          E327D4D6A5007C85F1AFFE4AE6B9FF006C3FF44475D27C27F8B1A17813C2D75A
          5EA969A8CD3CB7AF70AD6B1A3285288B83B9D4E7287B7A5737F1AFFE4AE6B9FF
          006C3FF44475D27C27F84FA178EFC2D75AA6A977A8C33C57AF6EAB6B222A9508
          8D93B918E72E7BFA5033BBFF00868CF087FD03B5CFFBF117FF001DAF1DF8B1E3
          5D37C77E29B5D534B82EA1822B24B765BA45562C1DDB236B30C61C77F5AF62FF
          008673F087FD0475CFFBFF0017FF001AAF1DF8B1E0AD37C09E29B5D2F4B9EEA6
          825B24B866BA75660C5DD7036AA8C61076F5A0093E19F8A7C5FE1AFED4FF0084
          5741FED5FB4795F69FF43967F2F6EFDBFEAC8C677375EB8F6ABFF11BC69E3AF1
          1F87A0B4F13F86BFB32C92ED6549BEC33C3BA408E02EE91883C1638EBC7B5687
          C0DF1B787BC1DFDBDFDBDA87D93ED5F67F27F73249BB6F99BBEE29C6370EBEB5
          B1F1A7E21F85BC5BE0EB4B0D0F54FB5DCC7A824CC9F67963C208E404E5D40EAC
          3F3A00F28F02FF00C942F0D7FD856D7FF46AD7DB95F11F817FE4A1786BFEC2B6
          BFFA356BEDCA00A7AB6A50E8FA35F6A970AED059DBC97122C60162A8A5881920
          6703D457C75E3DF1D5FF008FB5C4D42F208ADA38633141044CC4226E2C0924F2
          DC8058019DA3815F62EADA6C3AC68D7DA5DC33AC1796F25BC8D190182BA95246
          4119C1F435F17F8D7C3371E11F165FE933413C50C72B1B569B04CB0163B1F238
          39039C770460104000F69F007C0CF0F5F787348D6B5D92EAEEE2EA0170D6D1CF
          B602AE3280E143E4295270DF78771D7A8D4BE03F812FADD62B7B1BAD3DC38632
          DADD3B31183F29F3378C739E99E073D6B13E17FC61F0F3786B4ED0F5BBA5D3AF
          AC6DC42259576C32A202170D9386D8A33BB193D339C576BAD7C54F05E87626E6
          4D7ECEECF3B21B1956E2472067185240CFAB103DE811F2E78F3C1379E02F108D
          2AEEEA0B9F322F3E1961046632ECABB811F2B7C849009033D4D7BEFC0CF1B5E7
          89FC3D71A55E5AC11FF62C56F0432C591E64650AAEE073F30F2CE48383BBA0C7
          3F3EF8D7C63A8F8E7C42DAB6A2B146C2310C30C430B146092173D49CB1249EE4
          F41803E81F80DE0FBAF0EF8567D5AF7E59B59F2A68E30E182C01498C9C7466DE
          C7193C6DE8722819E37F1AFF00E4AEEB9FF6C3FF0044475EBDFB39FF00C93DBF
          FF00B0AC9FFA2A2AF21F8D7FF25775CFFB61FF00A223AF5EFD9CFF00E49EDFFF
          00D8564FFD1515002F8E2D62BBD63558A6B94B68CDE5B6646EDFB9ED58FA75AE
          91A6B48D6DA85A892220ABB93BA4FC4AE07E009AF41D6BC1F7DA8EB1797505DD
          AAC172C8CD14F0799CAA85EF540780350CF33E93D39FF405AA52D2C64D6B7399
          B8BBB333A87BDD37649279A58290370E70401C9FF69BF2A9ADAEAD6EEEDA3B4B
          CB464725E68BE7DA154139ED9E318E475ADF3E00BFC67CFD2B3ED62B5C7C53C5
          14B66B3476F0497B693DB33AC61103162074FA7E94F711D15DEB361A959DB436
          1712FDA042D341F6C24A3052C38C1E1B8E3D80AC437DA7DC41728F7B64D23389
          99E5F3321B9E3000E7DC734C834FBAD00D8EA17D13431595A4B1B33F01DCB385
          55F7E73F8D3BC2BA6BEB9F64B3B65B18D8DA3DC48F2DB072C44A57BFD68D95C3
          C8B11DEDB14706FB4D8D6E0E250B87240EE588391ECD83EF5837FA4E8F3472DC
          43AA5B452C5F7426EDAF8F6232BF8135E83FF0806A07A4FA4FFE0028A41F0FEF
          C7FCB7D281FF00AF15A14ADB038DF72D780401AAEB1FF5CED3AFFD7335DD5737
          E18F0F5CE8B737F3DD5CC53C975E5F31C7B028504018FC6BA4A8348EC7C57F11
          AF6E2FFE24788E6B993CC917509A107006123628838F45551F857B97ECE3042B
          E06D4AE162413BEA4C8F2051B995628CA827A900B3103B6E3EB5E5FF001C7419
          747F89379762D922B4D4952E2168D30ACDB42C99E31BB782C7AFDE04F5AEA7F6
          74F14341AA6A1E179E44105CA1BCB6DCEAA7CD5C2BAA8C658B2E0F5E04678E49
          A0A3DABC75FF0024F7C4BFF60ABAFF00D14D5F11D7D79F19F5BFEC5F861AA6CB
          8F26E2F76D9C5F26EDFBCFCEBD08198C49C9C7B1CE2BE43A00F7DF8A5FF26F9E
          0BFF00B71FFD257AC0FD9CFF00E4A15FFF00D82A4FFD1B15701AAF8DBC43AD78
          7ACB41D4350F3B4CB2D9F6783C98D766C428BF3050C70A48E49AEFFF00673FF9
          2857FF00F60A93FF0046C5401C078EBFE4A17897FEC2B75FFA35ABEBDF02FF00
          C93DF0D7FD82AD7FF452D7C85E3AFF009285E25FFB0ADD7FE8D6AFAF7C0BFF00
          24F7C35FF60AB5FF00D14B408DFAF34F88FF0008A1F881ACDA6A8BACBE9F3C36
          FF00677536E265750C5948F99483966CF273C74C73E975E5BAB7C7BF0B68FAC5
          F6997161AC34F677125BC8D1C31152C8C54904C80E323D28030F4CFD9B7488BC
          DFED5F105F5D671E5FD9614836F5CE776FCF6F4C60F5CF1E8DA47C38F06E86A0
          58F872C032CBE6AC93C7E7C8ADC60ABC9B986303001C03CF7AE27FE1A33C21FF
          0040ED73FEFC45FF00C768FF00868CF087FD03B5CFFBF117FF001DA00F5EAAD7
          DA7D96A968D69A859DBDDDB3905A1B888488D839195208EB5E55FF000D19E10F
          FA076B9FF7E22FFE3B47FC3467843FE81DAE7FDF88BFF8ED00696B7F027C15AB
          CC66B7B7BAD2E42CECDF629B08E5B9FBAE18281D82ED1CFD31C6FF00C333FF00
          D4DDFF0094DFFEDB5D07FC3467843FE81DAE7FDF88BFF8ED1FF0D19E10FF00A0
          76B9FF007E22FF00E3B401E9DA1699FD8BE1ED374AF3BCEFB15AC56DE6EDDBBF
          6205DD8C9C6719C64D685721E06F88DA478FFEDFFD956D7D0FD8BCBF33ED488B
          9DFBB18DACDFDC3E9DABAFA00F90FE35FF00C95DD73FED87FE888EA3F057C58D
          77C09A34DA5E9769A74D04B70D70CD751BB3062AAB81B5D463083B7AD7D39E24
          F00F863C5D7305CEB9A525D4F0A18D2412BC6C1739C128C32339C6738C9C7535
          C6789FE1E7C27F08E8B2EA9ABE8E2285061116F67324CDD9117CCE58FE43A920
          0240079CFF00C34678BFFE81DA1FFDF897FF008ED709E35F1AEA5E3BD661D535
          482D619E2B75B755B546552A199B277331CE5CF7F4AB3AFF00887C2B76AF0E83
          E09B7B0521D7CFB8BFB89A4FF65946F0AA47A10C3FAF2740CEBFC0DF0E757F1F
          FDBFFB2AE6C61FB1797E67DA9DD73BF7631B55BFB87D3B55CF1AFC27D77C09A3
          43AA6A977A74D04B70B6EAB6B23B3062ACD93B91463087BFA563F84BC75AFF00
          826E259744BA4892778DAE229215759821385391903E661F29079EBD2BD46DBE
          307863C7161068FF0011744D9124A265B8B4925F28380E0128A77A80AD8E0BE4
          9CE07600F2AF02FF00C942F0D7FD856D7FF46AD7DB95C168BF0B3E1EC72586B5
          A4E908C51A3BAB5B84BC9D86410C8C32F83D8F35DED0239CF1AF8D74DF0268D0
          EA9AA41753412DC2DBAADAA2B3062ACD93B99463087BFA5795F883E30FC32F15
          5B0B7D6FC35AA5E2818577B788488320FCAE250CB920670467A1AF5FF11F85F4
          6F16E9F1D86B967F6BB68E5132A79AF1E1C0201CA107A31FCEBC67FE31EBFCFD
          BE803C57598F434B92743BAD466819D884BEB648DA35E368DC8EC1CF5C9C2F40
          71CE06657D6961F087E1A6A7A7DB5FDA687E65B5CC4B342FF6BB91B91802A705
          F23208EB5F31F8B2CADF4CF18EB961691F976D6DA84F0C29B89DA8B2305193C9
          C003AD033B0F08EABF0B340960BCD52C35FD62F5108649EDA0FB36E27A88FCC2
          4E071F3123A9C038C7A8C1FB42F82AD6DE2B7B7D23588608902471C76D0AAA28
          1800012600038C553F85FF000BFC1BE22F873A56ABAAE8FF0068BD9FCEF325FB
          4CC9BB6CCEA3857007000E95CE6AD7FF0005347D66FB4BB8F07EB0D3D9DC496F
          23473B952C8C54919B807191E82803CF3E21F88ECFC5BE3AD4B5CB08E78EDAE7
          CAD893A80E36C488720123AA9EF5EEDFB39FFC93DBFF00FB0AC9FF00A2A2AF9E
          BC5171A1DDF88EEE7F0DD9CF67A436CF2209C92E98450D9259BAB6E3D4F5FC2B
          E85FD9CFFE49EDFF00FD8564FF00D1515007AF5145140843F74FD2BC28C51CBA
          96861D55B02E4AAB1C02C19B03EB9C1AF753F74FD2BC0AF2D8DDEA1A0401DE32
          EF30DC9D47EF09E2AE06732C7DB6EAFAC16DEF19E6824D3E692412BE423091B6
          91F8803F0ADDF85F8FED7B3C1C8FECA93FF47D666BFA9FF6CE83344B0476A561
          FB4131FCB9DB2326D6F5CE73F5AD2F85BFF216B43C7FC82E4E9FF5F143F8495F
          11EB54514541B051451401C2FC55F03278DBC2922465C6A362AF3D9EC452647D
          BFEAC93C80D8038239DA4E718AF92A09AFB42D6629D03DAEA161701D4491FCD1
          4A8D9E558750C3A11DB9AFBBEB8EF177C30F0B78CD9A7D46C4C37CD8CDEDA111
          CA718EA704370A07CC0E074C5007CC9E36F893E20F1E7D9A3D51E086DADF94B5
          B55648CBF3F3905892D838E4F033803273E85F04BE175B6AD0278AB5DB78E7B4
          DCCB656B26C9239800E8ED22153C03F779072A4E318CF7DA17C0AF07687AA25F
          B2DE6A45148106A0D1C91648C64A84193F5C8EF8CE2BD220821B5B78ADEDE248
          608902471C6A155140C0000E00038C500788FC7BF0DE85A3F81ACAE34BD174EB
          19DB528D1A4B5B54898AF9529C12A01C64038F615CA7ECE7FF00250AFF00FEC1
          527FE8D8ABBFFDA33FE49ED87FD8563FFD152D701FB39FFC942BFF00FB0549FF
          00A362A00E03C75FF250BC4BFF00615BAFFD1AD5F5EF817FE49EF86BFEC156BF
          FA296BE42F1D7FC942F12FFD856EBFF46B57D7BE05FF00927BE1AFFB055AFF00
          E8A5A00DFAF9DBC49F013C53AC78A757D4EDEFF47582F2F66B88D649A50C15DC
          B00711919C1F535F44D1401F317FC339F8BFFE823A1FFDFF0097FF008D51FF00
          0CE7E2FF00FA08E87FF7FE5FFE355F4ED1401F0E78A3C3979E12F11DDE877F24
          125CDB6CDEF031287722B8C1201E8C3B5747E0AF84FAEF8EF469B54D2EEF4E86
          08AE1ADD96EA47562C155B236A30C61C77F5A93E35FF00C95DD73FEDDFFF0044
          475EBDFB39FF00C93DBFFF00B0AC9FFA2A2A06701FF0CE7E2FFF00A08E87FF00
          7FE5FF00E3547FC339F8BFFE823A1FFDFF0097FF008D57D3B45023CC7E107C39
          D5FC01FDB3FDAB736337DB7C8F2FECAEED8D9E6673B957FBE3D7BD7A75145002
          330552CC40006493DABE2BF1BF8E756F1DEB3F6ED49C243182B6D6B193E5C0A7
          AE3D58E0658F278E80003EC9D5ACE6D4346BEB2B7BB7B39EE2DE48A3B98F3BA1
          6652038C107209CF51D3AD7C37A8E97A8E91722DB53B0BAB29CA87115CC2D1B1
          53D0E18038E0FE5401ECBF0F3E055AF883C3316B1E22BCBCB7378A24B582D195
          4AC47A339656C96E0803A0C7249C2FB1D8FC37F05E9D68B6D078634B78D4920D
          C5BACEFC9CF2F2658FE26A9786FE28F8475AD0EDAEE4D6F4DB09CC6A26B5B8B8
          584C526D05946FDBB80271B80C1C575963A8596A968B77A7DE5BDDDB312166B7
          95644241C1C302475A00E375FF0083DE09D7D096D2134F9F68459B4EC4054039
          FB806C24F2092A4E3E831F3B7C4CF87971F0FF005C8E2137DA34CBCDCF653311
          BC85C6E4703F89772F2060E4118E40FABEFF00C51E1FD2E7106A1AEE9967311B
          84771771C6C4648CE091DC11F507D2BC17E3EF8CB44D79749D3347BEB2BF7B59
          2492E268577F97954DA165E841CB64293CA8CE08A00C5F827E3D9BC33E248F43
          9E279F4FD62E238805739826276AB804E30720377C0539F9707EA9AF8C7E1B68
          DA9EA9E3BD127B0B0B9B986D351B696E658A3252141206CBB745E15BAF5C715F
          6750015F0257DF75F03CD0CB6F3C904F1BC5346C51E3752ACAC0E0820F420F6A
          067DB3E05FF927BE1AFF00B055AFFE8A5AF19F157C03F11EAFE2CD5B53B0D4F4
          A36D7B7525CA09DE4475DEC58A90118704919CF38CF19C0EAFC1BF18BC0F63E0
          AD12CAFB567B5BBB5B28ADE585ED6562191421394520838C8E7A119C1C8A27FD
          A23C1D0DC4B125A6B13A23955963B78C2B807EF0DD20383D7900FA81408EEFC1
          3E19FF00843BC2363A0FDAFED7F65F33F7FE5F97BB748CFF00772718DD8EBDAB
          8CD5BE02785B58D66FB54B8BFD6167BCB892E2458E688286762C40CC64E327D4
          D53FF868CF087FD03B5CFF00BF117FF1DA3FE1A33C21FF0040ED73FEFC45FF00
          C76803C27E21F872CFC25E3AD4B43B092792DADBCAD8F3B02E77448E724003AB
          1ED5EEDFB39FFC93DBFF00FB0AC9FF00A2A2AC7BDF8C3F0B753BC92EEFFC1D3D
          DDCC98DF34FA65AC8ED8000CB17C9C0007E15E8FF0E75FF0E788BC3D7177E18D
          27FB32C92E9A2787ECD1C3BA40884B6D8C90782A33D78F6A0675F451450210FD
          D3F4AF9F35886795B445B660266795549EC4CA71D7E95F419FBA7E95F3FEB50D
          F7D9F48B8B38A42D134C432A920112122AE1B99D4363C5CEF3F86B6DA8647B60
          16EDB03F7C37B29248E3EFA93F8D687C2E0C356B4DC41FF895498FA7DA2B9BD7
          EFAE6F349586DAD2F0497186BA0D19C13BD986063D58D751F0D22921D6ED2395
          595D74993218608FDFD397C04C7E33D568A28ACCD828A28A0028A28A0028A28A
          00E43E23781BFE13FF000F5BE95FDA3F60F26E96E7CDF23CDCE11D76E372FF00
          7F39CF6AC0F873F083FE100F10DC6ABFDBBF6FF3AD5ADBCAFB27958CBA36ECEF
          6FEE6318EF5E9D45007CEDE24F809E29D63C53ABEA96F7FA3AC1797B35C46B24
          D2860AEE580388C8CE0FA9AF75F0DE9B368FE16D234BB86469ECECA1B791A324
          A96440A48C807191E82B528A0028A28A0028A28A00F2DF1D7C12D37C65ADDCEB
          516B17563A85CBA197746B2C5B55026157E520FCAA7258F7E39E3A7F87BE0887
          C03E1B6D262BE7BD792E1AE2599A3080B10AB855C9C0DAABD49E727BE0757450
          0145145001451450015CDF8D7C15A678DF419F4FBD8E38EE0A62DEF042AF25BB
          641CA93CE0950080464646475AE928A00F9575AF807E33D3AEB669D15AEAB033
          36D9219D6260A0F05D642B824760580E79F5E5EFBE1B78D74EB8F267F0C6A8EF
          8CE6DEDDA75EA47DE4C8EDEBE87A115F6951401F1D58FC22F1EEA368B7307872
          E123624017124703F071CA48C187E22BB5F087ECF5AA5ECA27F15DC7F675B0CF
          FA35B48AF3B75C7CDCA28CE0FF001679181D6BE90A28033B46D0349F0ED92D9E
          8FA75BD940000561400BE060163D59B03A9249F5AD1A28A002B90D67E16F82B5
          FD41EFF50D0206B97C977864787792492CC23650CC493963C9F5AEBE8A00E03F
          E14A7C3DFF00A17FFF00276E3FF8E51FF0A53E1EFF00D0BFFF0093B71FFC72BB
          FA280380FF008529F0F7FE85FF00FC9DB8FF00E3947FC294F87BFF0042FF00FE
          4EDC7FF1CAEFE8A00E03FE14A7C3DFFA17FF00F276E3FF008E574FE1CF0BE8DE
          12D3E4B0D0ECFEC96D24A6664F35E4CB900139724F451F956C51400514514001
          19AE493E1FE9F18223BFD4635249DA93E064FB5145026AE3C7812CC74D4F541F
          F6F26AE691E13B2D1B517BF867BA967688C44CF26FF9720FA7A8A28A02C8DEA2
          8A28185145140051451400514514005145140051451400514514005145140051
          4514005145140051451400514514005145140051451400514514005145140051
          4514005145140051451401FFD9}
        Stretch = True
      end
      object QRLabel42: TQRLabel
        Left = 13
        Top = 116
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
          306.916666666666700000
          788.458333333333400000)
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
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object QRShape27: TQRShape
        Left = 414
        Top = 9
        Width = 276
        Height = 128
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          338.666666666667000000
          1095.375000000000000000
          23.812500000000000000
          730.250000000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel48: TQRLabel
        Left = 421
        Top = 112
        Width = 57
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1113.895833333333000000
          296.333333333333300000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51452' '#52824' '#51032
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
      object QRLabel45: TQRLabel
        Left = 428
        Top = 92
        Width = 50
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1132.416666666667000000
          243.416666666666700000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SEX/AGE'
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
      object qrlb_sexage: TQRLabel
        Left = 491
        Top = 93
        Width = 49
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1299.104166666667000000
          246.062500000000000000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'M/23'#44060#50900
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
      object qrl_chadr: TQRLabel
        Left = 491
        Top = 112
        Width = 55
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1299.104166666667000000
          296.333333333333300000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrl_chadr'
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
      object QRLabel47: TQRLabel
        Left = 552
        Top = 112
        Width = 64
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1460.500000000000000000
          296.333333333333300000
          169.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #48337#46041'/'#48337#49892
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
      object qrl_ward: TQRLabel
        Left = 625
        Top = 112
        Width = 56
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1653.645833333330000000
          296.333333333333000000
          148.166666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_meddept'
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
      object qrl_meddept: TQRLabel
        Left = 625
        Top = 92
        Width = 58
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          1653.645833333330000000
          243.416666666667000000
          153.458333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_meddept'
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
      object QRLabel46: TQRLabel
        Left = 559
        Top = 92
        Width = 57
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1479.020833333333000000
          243.416666666666700000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51652' '#47308' '#44284
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
      object qrl_ci: TQRLabel
        Left = 491
        Top = 70
        Width = 37
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333340000
          1299.104166666667000000
          185.208333333333300000
          97.895833333333340000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrl_ci'
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
      object QRLabel44: TQRLabel
        Left = 421
        Top = 70
        Width = 57
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1113.895833333333000000
          185.208333333333300000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51452#48124#48264#54840
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
      object QRLabel7: TQRLabel
        Left = 421
        Top = 45
        Width = 57
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1113.895833333333000000
          119.062500000000000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51060'    '#47492
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
      object qrlb_patname: TQRLabel
        Left = 491
        Top = 42
        Width = 133
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1299.104166666667000000
          111.125000000000000000
          351.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrlb_patname'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 14
      end
      object qrlb_PatNo: TQRLabel
        Left = 491
        Top = 22
        Width = 81
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1299.104166666667000000
          58.208333333333340000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrlb_PatNo'
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
      object QRLabel8: TQRLabel
        Left = 421
        Top = 22
        Width = 57
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1113.895833333333000000
          58.208333333333340000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #54872#51088#48264#54840
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
    end
  end
end
