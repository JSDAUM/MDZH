object MDN111F5_P01: TMDN111F5_P01
  Left = 569
  Top = 8
  Width = 842
  Height = 991
  Caption = 'MDN111F5_P01'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 8
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRLOOPBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      '0')
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
      100.000000000000000000
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
    object QRBand4: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 1011
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        2674.937500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel1: TQRLabel
        Left = 127
        Top = 14
        Width = 463
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          336.020833333333300000
          37.041666666666670000
          1225.020833333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'PRESBYTERIAN MEDICAL CENTER, JEONJU, KOREA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 15
      end
      object QRLabel2: TQRLabel
        Left = 25
        Top = 42
        Width = 651
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          66.145833333333330000
          111.125000000000000000
          1722.437500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'HISTORY, PHYSICAL EXAMINATION, DELIVERY, DISCHARGE'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 17
      end
      object Name: TQRLabel
        Left = 15
        Top = 86
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          39.687500000000000000
          227.541666666666700000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Name'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_patname: TQRLabel
        Left = 55
        Top = 86
        Width = 110
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          145.520833333333000000
          227.541666666667000000
          291.041666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_patname'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 182
        Top = 86
        Width = 73
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          481.541666666666700000
          227.541666666666700000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hosp. No.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_Hospno: TQRLabel
        Left = 258
        Top = 86
        Width = 110
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          682.625000000000000000
          227.541666666667000000
          291.041666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_Hospno'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object Age: TQRLabel
        Left = 399
        Top = 86
        Width = 25
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1055.687500000000000000
          227.541666666666700000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Age'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_age: TQRLabel
        Left = 429
        Top = 86
        Width = 76
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1135.062500000000000000
          227.541666666667000000
          201.083333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_age'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object Religion: TQRLabel
        Left = 517
        Top = 86
        Width = 65
        Height = 14
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1367.895833333333000000
          227.541666666666700000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Religion'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_religion: TQRLabel
        Left = 587
        Top = 86
        Width = 110
        Height = 14
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1553.104166666670000000
          227.541666666667000000
          291.041666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_religion'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape1: TQRShape
        Left = 9
        Top = 103
        Width = 700
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          23.812500000000000000
          272.520833333333000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object ADMISSIOM: TQRLabel
        Left = 15
        Top = 110
        Width = 82
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          39.687500000000000000
          291.041666666666700000
          216.958333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ADMISSIOM'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object Time: TQRLabel
        Left = 16
        Top = 135
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          42.333333333333330000
          357.187500000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Time'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_admdate: TQRLabel
        Left = 55
        Top = 135
        Width = 200
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          145.520833333333000000
          357.187500000000000000
          529.166666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_admdate'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object LMP: TQRLabel
        Left = 341
        Top = 116
        Width = 25
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          902.229166666666700000
          306.916666666666700000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LMP'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object PMP: TQRLabel
        Left = 341
        Top = 135
        Width = 25
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          902.229166666666700000
          357.187500000000000000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PMP'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_lmp: TQRLabel
        Left = 378
        Top = 116
        Width = 120
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1000.125000000000000000
          306.916666666667000000
          317.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_lmp'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_pmp: TQRLabel
        Left = 378
        Top = 135
        Width = 120
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1000.125000000000000000
          357.187500000000000000
          317.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_pmp'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object EDC: TQRLabel
        Left = 505
        Top = 116
        Width = 25
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1336.145833333333000000
          306.916666666666700000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'EDC'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel15: TQRLabel
        Left = 505
        Top = 135
        Width = 81
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1336.145833333333000000
          357.187500000000000000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Guset. Wks'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_edc: TQRLabel
        Left = 536
        Top = 116
        Width = 166
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1418.166666666670000000
          306.916666666667000000
          439.208333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_edc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_gestwks: TQRLabel
        Left = 593
        Top = 135
        Width = 109
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1568.979166666670000000
          357.187500000000000000
          288.395833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_gestwks'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape2: TQRShape
        Left = 9
        Top = 152
        Width = 700
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          23.812500000000000000
          402.166666666667000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel10: TQRLabel
        Left = 15
        Top = 207
        Width = 55
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          39.687500000000000000
          547.687500000000000000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'MEM - '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object BRANES: TQRLabel
        Left = 15
        Top = 231
        Width = 55
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          39.687500000000000000
          611.187500000000000000
          145.520833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'BRANES'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object Intact: TQRLabel
        Left = 110
        Top = 231
        Width = 49
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          291.041666666666700000
          611.187500000000000000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Intact'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object Rupt: TQRLabel
        Left = 186
        Top = 231
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          492.125000000000000000
          611.187500000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Rupt'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 224
        Top = 214
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          592.666666666666700000
          566.208333333333300000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Time'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel11: TQRLabel
        Left = 16
        Top = 160
        Width = 41
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          42.333333333333330000
          423.333333333333300000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LABOR'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object BEGAN: TQRLabel
        Left = 15
        Top = 181
        Width = 46
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          39.687500000000000000
          478.895833333333300000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'BEGAN'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object Contractions: TQRLabel
        Left = 72
        Top = 183
        Width = 97
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          190.500000000000000000
          484.187500000000000000
          256.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Contractions'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object Interval: TQRLabel
        Left = 292
        Top = 160
        Width = 65
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          772.583333333333300000
          423.333333333333300000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Interval'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_interval: TQRLabel
        Left = 360
        Top = 160
        Width = 30
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          952.500000000000000000
          423.333333333333000000
          79.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_interval'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object Duration: TQRLabel
        Left = 399
        Top = 160
        Width = 65
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1055.687500000000000000
          423.333333333333300000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Duration'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_duration: TQRLabel
        Left = 467
        Top = 160
        Width = 38
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1235.604166666670000000
          423.333333333333000000
          100.541666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_duration'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object Character: TQRLabel
        Left = 284
        Top = 183
        Width = 73
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          751.416666666666700000
          484.187500000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Character'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_charact: TQRLabel
        Left = 360
        Top = 183
        Width = 37
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          952.500000000000000000
          484.187500000000000000
          97.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_charact'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object LABOR: TQRLabel
        Left = 15
        Top = 158
        Width = 46
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          39.687500000000000000
          418.041666666666700000
          121.708333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LABOR'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_fhr: TQRLabel
        Left = 427
        Top = 183
        Width = 86
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1129.770833333330000000
          484.187500000000000000
          227.541666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_fhr'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object FHR: TQRLabel
        Left = 399
        Top = 183
        Width = 25
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1055.687500000000000000
          484.187500000000000000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FHR'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object Show: TQRLabel
        Left = 515
        Top = 173
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1362.604166666667000000
          457.729166666666700000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Show'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 566
        Top = 165
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1497.541666666667000000
          436.562500000000000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(+)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel21: TQRLabel
        Left = 566
        Top = 184
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1497.541666666667000000
          486.833333333333300000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(-)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object Bleedind: TQRLabel
        Left = 594
        Top = 173
        Width = 65
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1571.625000000000000000
          457.729166666666700000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Bleeding'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 677
        Top = 184
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1791.229166666667000000
          486.833333333333300000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(-)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel17: TQRLabel
        Left = 677
        Top = 165
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1791.229166666667000000
          436.562500000000000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(+)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object Date: TQRLabel
        Left = 224
        Top = 230
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          592.666666666666700000
          608.541666666666700000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Date'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_memdate: TQRLabel
        Left = 261
        Top = 222
        Width = 129
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          690.562500000000000000
          587.375000000000000000
          341.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_memdate'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel27: TQRLabel
        Left = 394
        Top = 221
        Width = 81
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1042.458333333333000000
          584.729166666666700000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Blood Type'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object RH: TQRLabel
        Left = 486
        Top = 221
        Width = 19
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1285.875000000000000000
          584.729166666666700000
          50.270833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RH'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 11
      end
      object Serology: TQRLabel
        Left = 559
        Top = 221
        Width = 65
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1479.020833333333000000
          584.729166666666700000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Serology'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_bldabo: TQRLabel
        Left = 629
        Top = 221
        Width = 70
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1664.229166666670000000
          584.729166666667000000
          185.208333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_bldabo'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel34: TQRLabel
        Left = 15
        Top = 256
        Width = 100
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          39.687500000000000000
          677.333333333333300000
          264.583333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CHEST X-RAY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel35: TQRLabel
        Left = 524
        Top = 212
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1386.416666666667000000
          560.916666666666700000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(+)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel36: TQRLabel
        Left = 524
        Top = 230
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1386.416666666667000000
          608.541666666666700000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(-)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape3: TQRShape
        Left = 4
        Top = 199
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          10.583333333333300000
          526.520833333333000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape4: TQRShape
        Left = 9
        Top = 246
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          650.875000000000000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel23: TQRLabel
        Left = 128
        Top = 258
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          338.666666666666700000
          682.625000000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Date'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_xraydate: TQRLabel
        Left = 169
        Top = 258
        Width = 125
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          447.145833333333000000
          682.625000000000000000
          330.729166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_xraydate'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object Result: TQRLabel
        Left = 303
        Top = 258
        Width = 49
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          801.687500000000000000
          682.625000000000000000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Result'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_xrayrslt: TQRLabel
        Left = 359
        Top = 258
        Width = 330
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          949.854166666667000000
          682.625000000000000000
          873.125000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_xrayrslt'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel38: TQRLabel
        Left = 15
        Top = 280
        Width = 82
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          39.687500000000000000
          740.833333333333300000
          216.958333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PRE-NATAL'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape5: TQRShape
        Left = 9
        Top = 273
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          722.312500000000000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel32: TQRLabel
        Left = 104
        Top = 285
        Width = 25
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          275.166666666666700000
          754.062500000000000000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Wt.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel39: TQRLabel
        Left = 103
        Top = 302
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          272.520833333333300000
          799.041666666666700000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Gain'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_prewt: TQRLabel
        Left = 140
        Top = 292
        Width = 37
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          370.416666666667000000
          772.583333333333000000
          97.895833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel12'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel42: TQRLabel
        Left = 201
        Top = 285
        Width = 49
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          531.812500000000000000
          754.062500000000000000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Severe'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel43: TQRLabel
        Left = 201
        Top = 301
        Width = 25
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          531.812500000000000000
          796.395833333333300000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N/V'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel46: TQRLabel
        Left = 180
        Top = 292
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          476.250000000000000000
          772.583333333333300000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Kg'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel49: TQRLabel
        Left = 298
        Top = 285
        Width = 49
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          788.458333333333300000
          754.062500000000000000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hyper-'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel50: TQRLabel
        Left = 297
        Top = 301
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          785.812500000000000000
          796.395833333333300000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tension'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel55: TQRLabel
        Left = 401
        Top = 292
        Width = 65
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1060.979166666667000000
          772.583333333333300000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Headache'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel56: TQRLabel
        Left = 513
        Top = 294
        Width = 41
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1357.312500000000000000
          777.875000000000000000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Edema'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel63: TQRLabel
        Left = 601
        Top = 292
        Width = 65
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1590.145833333333000000
          772.583333333333300000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Bleeding'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape6: TQRShape
        Left = 10
        Top = 318
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          26.458333333333300000
          841.375000000000000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel67: TQRLabel
        Left = 15
        Top = 325
        Width = 72
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          39.687500000000000000
          859.895833333333300000
          190.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #8251' OTHER'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel68: TQRLabel
        Left = 15
        Top = 345
        Width = 118
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          39.687500000000000000
          912.812500000000000000
          312.208333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'COMPLICATIONS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape7: TQRShape
        Left = 9
        Top = 361
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          955.145833333334000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrm_othcomp: TQRMemo
        Left = 141
        Top = 329
        Width = 564
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333300000
          373.062500000000000000
          870.479166666667000000
          1492.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FullJustify = False
        FontSize = 10
      end
      object QRLabel69: TQRLabel
        Left = 15
        Top = 369
        Width = 145
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          39.687500000000000000
          976.312500000000000000
          383.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PAST OB. HISTORY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_membranes1: TQRShape
        Left = 91
        Top = 234
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          240.770833333333000000
          619.125000000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_membranes2: TQRShape
        Left = 167
        Top = 234
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          441.854166666667000000
          619.125000000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_bldrh1: TQRShape
        Left = 510
        Top = 216
        Width = 9
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1349.375000000000000000
          571.500000000000000000
          23.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_bldrh2: TQRShape
        Left = 510
        Top = 232
        Width = 9
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1349.375000000000000000
          613.833333333333000000
          23.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_fhrshow1: TQRShape
        Left = 553
        Top = 169
        Width = 9
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1463.145833333330000000
          447.145833333333000000
          23.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_fhrshow2: TQRShape
        Left = 553
        Top = 185
        Width = 9
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1463.145833333330000000
          489.479166666667000000
          23.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_fhrbleed1: TQRShape
        Left = 664
        Top = 169
        Width = 9
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1756.833333333330000000
          447.145833333333000000
          23.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_fhrbleed2: TQRShape
        Left = 664
        Top = 185
        Width = 9
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1756.833333333330000000
          489.479166666667000000
          23.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel14: TQRLabel
        Left = 267
        Top = 284
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          706.437500000000000000
          751.416666666666700000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(+)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel18: TQRLabel
        Left = 267
        Top = 303
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          706.437500000000000000
          801.687500000000000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(-)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_prenav1: TQRShape
        Left = 254
        Top = 288
        Width = 9
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          672.041666666667000000
          762.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_prenav2: TQRShape
        Left = 254
        Top = 304
        Width = 9
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          672.041666666667000000
          804.333333333333000000
          23.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel41: TQRLabel
        Left = 373
        Top = 284
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          986.895833333333300000
          751.416666666666700000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(+)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel44: TQRLabel
        Left = 373
        Top = 303
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          986.895833333333300000
          801.687500000000000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(-)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_prenhyper1: TQRShape
        Left = 360
        Top = 288
        Width = 9
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          952.500000000000000000
          762.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_prenhyper2: TQRShape
        Left = 360
        Top = 304
        Width = 9
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          952.500000000000000000
          804.333333333333000000
          23.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel45: TQRLabel
        Left = 484
        Top = 283
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1280.583333333333000000
          748.770833333333300000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(+)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel47: TQRLabel
        Left = 484
        Top = 304
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1280.583333333333000000
          804.333333333333300000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(-)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_prenhache1: TQRShape
        Left = 471
        Top = 287
        Width = 9
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1246.187500000000000000
          759.354166666667000000
          23.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_prenhache2: TQRShape
        Left = 471
        Top = 305
        Width = 9
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1246.187500000000000000
          806.979166666667000000
          23.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel48: TQRLabel
        Left = 681
        Top = 284
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1801.812500000000000000
          751.416666666666700000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(+)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel51: TQRLabel
        Left = 681
        Top = 303
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1801.812500000000000000
          801.687500000000000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(-)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_prenbleed1: TQRShape
        Left = 668
        Top = 288
        Width = 9
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1767.416666666670000000
          762.000000000000000000
          23.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_prenbleed2: TQRShape
        Left = 668
        Top = 304
        Width = 9
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1767.416666666670000000
          804.333333333333000000
          23.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel52: TQRLabel
        Left = 15
        Top = 388
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          39.687500000000000000
          1026.583333333333000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Para'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel53: TQRLabel
        Left = 15
        Top = 407
        Width = 25
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          39.687500000000000000
          1076.854166666667000000
          66.145833333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'A/C'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_pastpara: TQRLabel
        Left = 63
        Top = 388
        Width = 210
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          166.687500000000000000
          1026.583333333330000000
          555.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel12'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_pastal: TQRLabel
        Left = 62
        Top = 407
        Width = 211
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          164.041666666667000000
          1076.854166666670000000
          558.270833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel58: TQRLabel
        Left = 15
        Top = 425
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          39.687500000000000000
          1124.479166666667000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Herb'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel59: TQRLabel
        Left = 15
        Top = 443
        Width = 73
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          39.687500000000000000
          1172.104166666667000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Iron pill'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape8: TQRShape
        Left = 9
        Top = 458
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          1211.791666666670000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object Menache: TQRLabel
        Left = 375
        Top = 387
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          992.187500000000000000
          1023.937500000000000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Menache'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel65: TQRLabel
        Left = 367
        Top = 406
        Width = 65
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          971.020833333333300000
          1074.208333333333000000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Marriage'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel66: TQRLabel
        Left = 295
        Top = 424
        Width = 137
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          780.520833333333300000
          1121.833333333333000000
          362.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Menstration Cycle'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel64: TQRLabel
        Left = 367
        Top = 441
        Width = 65
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          971.020833333333300000
          1166.812500000000000000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Interval'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_menache: TQRLabel
        Left = 437
        Top = 387
        Width = 32
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1156.229166666670000000
          1023.937500000000000000
          84.666666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel12'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_marriage: TQRLabel
        Left = 437
        Top = 406
        Width = 32
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1156.229166666670000000
          1074.208333333330000000
          84.666666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_menscycl: TQRLabel
        Left = 437
        Top = 423
        Width = 77
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1156.229166666670000000
          1119.187500000000000000
          203.729166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel12'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_mensintv: TQRLabel
        Left = 437
        Top = 441
        Width = 32
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1156.229166666670000000
          1166.812500000000000000
          84.666666666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel74: TQRLabel
        Left = 541
        Top = 387
        Width = 65
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1431.395833333333000000
          1023.937500000000000000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dulation'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel75: TQRLabel
        Left = 557
        Top = 406
        Width = 49
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1473.729166666667000000
          1074.208333333333000000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Amount'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_mensdula: TQRLabel
        Left = 607
        Top = 387
        Width = 37
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1606.020833333330000000
          1023.937500000000000000
          97.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel12'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_mensamt: TQRLabel
        Left = 607
        Top = 406
        Width = 37
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1606.020833333330000000
          1074.208333333330000000
          97.895833333333300000)
        XLColumn = 0
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel76: TQRLabel
        Left = 126
        Top = 427
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          333.375000000000000000
          1129.770833333333000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(+)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel77: TQRLabel
        Left = 181
        Top = 427
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          478.895833333333300000
          1129.770833333333000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(-)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_pastherb1: TQRShape
        Left = 107
        Top = 429
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          283.104166666667000000
          1135.062500000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_pastherb2: TQRShape
        Left = 162
        Top = 429
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          428.625000000000000000
          1135.062500000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel80: TQRLabel
        Left = 126
        Top = 442
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          333.375000000000000000
          1169.458333333333000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(+)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel81: TQRLabel
        Left = 181
        Top = 442
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          478.895833333333300000
          1169.458333333333000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(-)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_pastiron1: TQRShape
        Left = 107
        Top = 446
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          283.104166666667000000
          1180.041666666670000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_pastiron2: TQRShape
        Left = 162
        Top = 446
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          428.625000000000000000
          1180.041666666670000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel60: TQRLabel
        Left = 15
        Top = 466
        Width = 154
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          39.687500000000000000
          1232.958333333333000000
          407.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'MED-SURG. HISTORY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape29: TQRShape
        Left = 9
        Top = 524
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          1386.416666666670000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrm_surghis: TQRMemo
        Left = 15
        Top = 486
        Width = 678
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          39.687500000000000000
          1285.875000000000000000
          1793.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FullJustify = False
        FontSize = 10
      end
      object QRLabel61: TQRLabel
        Left = 15
        Top = 532
        Width = 127
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          39.687500000000000000
          1407.583333333333000000
          336.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FAMILY HISTORY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape30: TQRShape
        Left = 9
        Top = 587
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          1553.104166666670000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrm_fmhis: TQRMemo
        Left = 15
        Top = 550
        Width = 678
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666700000
          39.687500000000000000
          1455.208333333330000000
          1793.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FullJustify = False
        FontSize = 10
      end
      object QRLabel82: TQRLabel
        Left = 248
        Top = 623
        Width = 221
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          656.166666666666700000
          1648.354166666667000000
          584.729166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'PHYSICAL EXAMINATION'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 15
      end
      object QRLabel83: TQRLabel
        Left = 19
        Top = 654
        Width = 49
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          50.270833333333330000
          1730.375000000000000000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Weight'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel84: TQRLabel
        Left = 19
        Top = 678
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          50.270833333333330000
          1793.875000000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Head'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_weight: TQRLabel
        Left = 78
        Top = 654
        Width = 42
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          206.375000000000000000
          1730.375000000000000000
          111.125000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel12'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_head: TQRLabel
        Left = 81
        Top = 678
        Width = 130
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          214.312500000000000000
          1793.875000000000000000
          343.958333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel88: TQRLabel
        Left = 244
        Top = 678
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          645.583333333333300000
          1793.875000000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ears'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_ears: TQRLabel
        Left = 283
        Top = 678
        Width = 130
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          748.770833333333000000
          1793.875000000000000000
          343.958333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel92: TQRLabel
        Left = 423
        Top = 678
        Width = 121
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1119.187500000000000000
          1793.875000000000000000
          320.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nose and throat'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_nosnthr: TQRLabel
        Left = 554
        Top = 678
        Width = 130
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1465.791666666670000000
          1793.875000000000000000
          343.958333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel95: TQRLabel
        Left = 123
        Top = 654
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          325.437500000000000000
          1730.375000000000000000
          21.166666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'g'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel96: TQRLabel
        Left = 184
        Top = 654
        Width = 73
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          486.833333333333300000
          1730.375000000000000000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Body type'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel97: TQRLabel
        Left = 310
        Top = 654
        Width = 36
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          820.208333333333300000
          1730.375000000000000000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Large'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel98: TQRLabel
        Left = 399
        Top = 654
        Width = 43
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1055.687500000000000000
          1730.375000000000000000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Medium'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_bodytyp1: TQRShape
        Left = 288
        Top = 657
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          762.000000000000000000
          1738.312500000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_bodytyp2: TQRShape
        Left = 380
        Top = 657
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1005.416666666670000000
          1738.312500000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel99: TQRLabel
        Left = 492
        Top = 654
        Width = 36
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1301.750000000000000000
          1730.375000000000000000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Small'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_bodytyp3: TQRShape
        Left = 473
        Top = 657
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1251.479166666670000000
          1738.312500000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel100: TQRLabel
        Left = 261
        Top = 654
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          690.562500000000000000
          1730.375000000000000000
          21.166666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel62: TQRLabel
        Left = 19
        Top = 701
        Width = 41
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          50.270833333333330000
          1854.729166666667000000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Mouth'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_mouth: TQRLabel
        Left = 81
        Top = 701
        Width = 130
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          214.312500000000000000
          1854.729166666670000000
          343.958333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel89: TQRLabel
        Left = 236
        Top = 701
        Width = 41
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          624.416666666666700000
          1854.729166666667000000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Teeth'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_teeth: TQRLabel
        Left = 283
        Top = 701
        Width = 130
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          748.770833333333000000
          1854.729166666670000000
          343.958333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel93: TQRLabel
        Left = 423
        Top = 701
        Width = 65
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1119.187500000000000000
          1854.729166666667000000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dentures'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel101: TQRLabel
        Left = 547
        Top = 701
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1447.270833333333000000
          1854.729166666667000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'YES'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel102: TQRLabel
        Left = 603
        Top = 701
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1595.437500000000000000
          1854.729166666667000000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_denture1: TQRShape
        Left = 525
        Top = 704
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1389.062500000000000000
          1862.666666666670000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_denture2: TQRShape
        Left = 584
        Top = 704
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1545.166666666670000000
          1862.666666666670000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel103: TQRLabel
        Left = 19
        Top = 722
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          50.270833333333330000
          1910.291666666667000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Thyroid'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_thyroid: TQRLabel
        Left = 81
        Top = 722
        Width = 130
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          214.312500000000000000
          1910.291666666670000000
          343.958333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel105: TQRLabel
        Left = 220
        Top = 722
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          582.083333333333300000
          1910.291666666667000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Breasts'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_breast: TQRLabel
        Left = 283
        Top = 722
        Width = 130
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          748.770833333333000000
          1910.291666666670000000
          343.958333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel107: TQRLabel
        Left = 423
        Top = 722
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1119.187500000000000000
          1910.291666666667000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nipples'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_nipple: TQRLabel
        Left = 494
        Top = 722
        Width = 130
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1307.041666666670000000
          1910.291666666670000000
          343.958333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel109: TQRLabel
        Left = 19
        Top = 744
        Width = 41
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          50.270833333333330000
          1968.500000000000000000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Lungs'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_lung: TQRLabel
        Left = 81
        Top = 744
        Width = 614
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          214.312500000000000000
          1968.500000000000000000
          1624.541666666670000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel111: TQRLabel
        Left = 19
        Top = 767
        Width = 41
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          50.270833333333330000
          2029.354166666667000000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Heart'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_heart: TQRLabel
        Left = 81
        Top = 767
        Width = 614
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          214.312500000000000000
          2029.354166666670000000
          1624.541666666670000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel113: TQRLabel
        Left = 19
        Top = 789
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          50.270833333333330000
          2087.562500000000000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Abdomen'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_abdomen: TQRLabel
        Left = 81
        Top = 789
        Width = 200
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          214.312500000000000000
          2087.562500000000000000
          529.166666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel115: TQRLabel
        Left = 300
        Top = 789
        Width = 97
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          793.750000000000000000
          2087.562500000000000000
          256.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Back & Spine'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_bacnspn: TQRLabel
        Left = 407
        Top = 789
        Width = 200
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1076.854166666670000000
          2087.562500000000000000
          529.166666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel117: TQRLabel
        Left = 19
        Top = 812
        Width = 105
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          50.270833333333330000
          2148.416666666667000000
          277.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ht. of Fundus'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_hof: TQRLabel
        Left = 131
        Top = 812
        Width = 54
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          346.604166666667000000
          2148.416666666670000000
          142.875000000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel119: TQRLabel
        Left = 241
        Top = 812
        Width = 97
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          637.645833333333300000
          2148.416666666667000000
          256.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Presentation'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_present: TQRLabel
        Left = 344
        Top = 812
        Width = 130
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          910.166666666667000000
          2148.416666666670000000
          343.958333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel121: TQRLabel
        Left = 491
        Top = 812
        Width = 65
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1299.104166666667000000
          2148.416666666667000000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Position'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_position: TQRLabel
        Left = 563
        Top = 812
        Width = 130
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1489.604166666670000000
          2148.416666666670000000
          343.958333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel123: TQRLabel
        Left = 189
        Top = 812
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          500.062500000000000000
          2148.416666666667000000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cm'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel124: TQRLabel
        Left = 19
        Top = 835
        Width = 41
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          50.270833333333330000
          2209.270833333333000000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FETAL'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape36: TQRShape
        Left = 9
        Top = 671
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          1775.354166666670000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape37: TQRShape
        Left = 9
        Top = 693
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          1833.562500000000000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape38: TQRShape
        Left = 9
        Top = 715
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          1891.770833333330000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape39: TQRShape
        Left = 9
        Top = 736
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          1947.333333333330000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape40: TQRShape
        Left = 9
        Top = 759
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          2008.187500000000000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape41: TQRShape
        Left = 9
        Top = 782
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          2069.041666666670000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape42: TQRShape
        Left = 9
        Top = 803
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          2124.604166666670000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape43: TQRShape
        Left = 9
        Top = 827
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          2188.104166666670000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape44: TQRShape
        Left = 9
        Top = 850
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          2248.958333333330000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel126: TQRLabel
        Left = 19
        Top = 857
        Width = 81
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          50.270833333333330000
          2267.479166666667000000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Heart-Rate'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_fethfhr: TQRLabel
        Left = 107
        Top = 857
        Width = 590
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          283.104166666667000000
          2267.479166666670000000
          1561.041666666670000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel128: TQRLabel
        Left = 273
        Top = 841
        Width = 65
        Height = 14
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          722.312500000000000000
          2225.145833333333000000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Location'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape45: TQRShape
        Left = 9
        Top = 872
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          2307.166666666670000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel137: TQRLabel
        Left = 19
        Top = 881
        Width = 81
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          50.270833333333330000
          2330.979166666667000000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'IMPRESSION'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_fetalimp1: TQRLabel
        Left = 107
        Top = 889
        Width = 600
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          283.104166666667000000
          2352.145833333330000000
          1587.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_fetalimp2: TQRLabel
        Left = 107
        Top = 912
        Width = 600
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          283.104166666667000000
          2413.000000000000000000
          1587.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape47: TQRShape
        Left = 9
        Top = 903
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          2389.187500000000000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape48: TQRShape
        Left = 9
        Top = 926
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          2450.041666666670000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrl_fetalimp3: TQRLabel
        Left = 107
        Top = 935
        Width = 600
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          283.104166666667000000
          2473.854166666670000000
          1587.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape49: TQRShape
        Left = 9
        Top = 949
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          2510.895833333330000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrl_fetalimp4: TQRLabel
        Left = 107
        Top = 956
        Width = 600
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          283.104166666667000000
          2529.416666666670000000
          1587.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape50: TQRShape
        Left = 9
        Top = 970
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          2566.458333333330000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrl_fetalimp5: TQRLabel
        Left = 107
        Top = 979
        Width = 414
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          283.104166666667000000
          2590.270833333330000000
          1095.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape51: TQRShape
        Left = 9
        Top = 993
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          2627.312500000000000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel144: TQRLabel
        Left = 470
        Top = 441
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1243.541666666667000000
          1166.812500000000000000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51068
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel145: TQRLabel
        Left = 647
        Top = 387
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1711.854166666667000000
          1023.937500000000000000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51068
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_contract: TQRLabel
        Left = 175
        Top = 183
        Width = 102
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          463.020833333333000000
          484.187500000000000000
          269.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRLabel24'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel152: TQRLabel
        Left = 534
        Top = 979
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1412.875000000000000000
          2590.270833333333000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SIGN'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_lab: TQRLabel
        Left = 73
        Top = 160
        Width = 33
        Height = 14
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          193.145833333333300000
          423.333333333333300000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Time'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_laborTm: TQRLabel
        Left = 115
        Top = 160
        Width = 163
        Height = 14
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          304.270833333333000000
          423.333333333333000000
          431.270833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_laborTm'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel3: TQRLabel
        Left = 572
        Top = 286
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1513.416666666667000000
          756.708333333333300000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(+)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel4: TQRLabel
        Left = 572
        Top = 302
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1513.416666666667000000
          799.041666666666700000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(-)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_pren1: TQRShape
        Left = 559
        Top = 289
        Width = 9
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1479.020833333330000000
          764.645833333333000000
          23.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_pren2: TQRShape
        Left = 559
        Top = 304
        Width = 9
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1479.020833333330000000
          804.333333333333000000
          23.812500000000000000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel6: TQRLabel
        Left = 373
        Top = 842
        Width = 22
        Height = 14
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          986.895833333333300000
          2227.791666666667000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LLQ'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 429
        Top = 842
        Width = 22
        Height = 14
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1135.062500000000000000
          2227.791666666667000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RLQ'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_fetal1: TQRShape
        Left = 351
        Top = 845
        Width = 10
        Height = 9
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          928.687500000000000000
          2235.729166666670000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_fetal2: TQRShape
        Left = 410
        Top = 845
        Width = 10
        Height = 9
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1084.791666666670000000
          2235.729166666670000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel8: TQRLabel
        Left = 491
        Top = 842
        Width = 22
        Height = 14
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1299.104166666667000000
          2227.791666666667000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RUQ'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel9: TQRLabel
        Left = 547
        Top = 842
        Width = 22
        Height = 14
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1447.270833333333000000
          2227.791666666667000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LUQ'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_fetal3: TQRShape
        Left = 469
        Top = 845
        Width = 10
        Height = 9
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1240.895833333330000000
          2235.729166666670000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel12: TQRLabel
        Left = 470
        Top = 406
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1243.541666666667000000
          1074.208333333333000000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49464
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel13: TQRLabel
        Left = 470
        Top = 387
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1243.541666666667000000
          1023.937500000000000000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49464
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_fetal4: TQRShape
        Left = 528
        Top = 845
        Width = 10
        Height = 9
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1397.000000000000000000
          2235.729166666670000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 1049
      Width = 718
      Height = 40
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
        105.833333333333300000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel147: TQRLabel
        Left = 313
        Top = 14
        Width = 91
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          828.145833333333300000
          37.041666666666670000
          240.770833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'P.M.C Form'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel148: TQRLabel
        Left = 234
        Top = 37
        Width = 232
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          619.125000000000000000
          97.895833333333330000
          613.833333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'OBSTETRICS DEPARTMENT'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 15
      end
      object QRLabel149: TQRLabel
        Left = 313
        Top = 14
        Width = 91
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          828.145833333333300000
          37.041666666666670000
          240.770833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'P.M.C Form'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel150: TQRLabel
        Left = 313
        Top = 14
        Width = 91
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          828.145833333333300000
          37.041666666666670000
          240.770833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'P.M.C Form'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel151: TQRLabel
        Left = 313
        Top = 14
        Width = 91
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          828.145833333333300000
          37.041666666666670000
          240.770833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'P.M.C Form'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRImage1: TQRImage
        Left = 16
        Top = 11
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          42.333333333333300000
          29.104166666666700000
          256.645833333333000000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D616765A8820000FFD8FFE000104A46494600010201004800
          480000FFE109F84578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          00000100020000013100020000001D0000007201320002000000140000008F87
          69000400000001000000A4000000D00000004800000001000000480000000141
          646F62652050686F746F73686F7020456C656D656E747320322E300032303034
          3A30363A32392030393A30353A353900000003A001000300000001FFFF0000A0
          0200040000000100000342A0030004000000010000009E000000000000000601
          0300030000000100060000011A0005000000010000011E011B00050000000100
          00012601280003000000010002000002010004000000010000012E0202000400
          000001000008C20000000000000048000000010000004800000001FFD8FFE000
          104A46494600010201004800480000FFED000C41646F62655F434D0002FFEE00
          0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
          11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
          0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080018008003012200
          021101031101FFDD00040008FFC4013F00000105010101010101000000000000
          00030001020405060708090A0B01000105010101010101000000000000000100
          02030405060708090A0B1000010401030204020507060805030C330100021103
          04211231054151611322718132061491A1B14223241552C16233347282D14307
          259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
          D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
          37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
          021103213112044151617122130532819114A1B14223C152D1F0332462E17282
          92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
          B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
          E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F43C8FAC7D
          0B1AFB31B233A9AEEA8EDB18E74169203E1FFBBED72F3239D9B5F55C626FB198
          E3399936BCD840389EA63B5AD14FF3CE7FDAFED77DDF42DFB3D5FE8574DD5FEA
          0E6E775FCDEACD1836FDAA1B57DA5B63CD6D0CAEADCC6376D2DB1AE63DED7FF3
          9FF0AB9825AD653D35B4E207DD92DAD87D27EE17596370FD5734DAEF4FA5B291
          F64A2C6E47DBBED1BFFC0DB624A7D3B1BEB1743CAC8AF1B1F36AB6EB4915B1AE
          D5C4073E1BFBDEC639CB3FEBCFD6A1F55FA19CEAEB17655CF1462D6EFA3BDC1C
          FF0052DD5AFF004AB656EFA1F9FE9D7ECF53D4593D1BEA1E774FEBF8DD59C306
          A1548B5B8ADB6B2E6EC731BFA371750E7EEF4FDFE9D4FF00E72DB2C7AA1FE3AB
          1AD3D2FA666897538F92E658CEC4D8DDCC73BFED87B3FEB8929ACDFADFF5D3EA
          96660D9F5C9EDCDE9FD4EA2F0DA5958BA973435CFADCDAEBC5FD2D7EAD5EB31D
          EA57FE82D59A3FC63FD60CDC8FAC37E0E73D9858D8C6FE9EC7D348757FACE250
          DDDFA37EEFD0DF6D7FA47D9FE7AD1FF1B9D4B1BA962743C3E9A4E5E4663FED78
          EDA3DD61ADCD0CA5CDA9BFA6FD61D67E87D9FE06C5CA5F98FCEEA5F5BF2ECA2C
          C47DD88E7BB1EE116309CBC0F658D21BB5E929F66FAA99B95D43EADF4ECDCC7F
          AB9391432CB6C80D9711A9DB58631BFD96AC8EB7FE33BEAAF4CC4B2CC7CB6F50
          CA00FA38D8F2EDCEE1BEA5D1E9555EEFA6EFDCFE6EBB55DFA9975747D4AE9775
          A76D7561B1EF304C35ADDCE30172981D7BFC4DE05DF68C6A6B17076F6BECC7BE
          D2D74EE0EAFED0CB7D3735DFE8D2535BEAEFD7DFAC1D0F35B57D7BF5DB89D46A
          6DD8790EADBFA3899DD5E331AFDB635FFA567F3F47E87F43FA55E8BD2BAEF47E
          B0D7BBA5E5D5962ADBEA7A6E92DDF3B37B7E93376C7AE5B3FF00C61FF8B6EA74
          8A3A8DACCBA81DCD65D8B63C07416EF6EFA4EC7ED77D36AB1F523A87D417E5E5
          62FD546FA77DAC1764B436E00B6B3B19FD27D8DD8EC8FA15A4A723EB0FD69FAC
          9D3BFC623303A7576751C618E1E3A5B1CDAC3C9ADEE73BD535D8EFD1FF003AB3
          FEB2FD76FAF1FB53A4535F4F7F4175F6EC6537DADB2BC8717D2DDB73BD2A5D55
          55EEDB67BBE85CB7BEB8FD5460EAEEFADCDEBDFB0CE3D02B7D86916C407B0FA6
          7D5A9DBADADFE9B28657659EA7F36B84CB6FEDDBA8C8CECEEB3D7B030EC316D7
          D387A6E6CB1D90CAEEFB735D5FA8D67D27B3F46929EA7A7F5EFAE27FC6474FE9
          7D6EEAA965B4BDD661E2389A0814E4595BDDEA3AC7FABBD9FBCB57FC6AFD61EA
          FD13A1D3FB309A4E6D869B72DBF4AB1B4BB654EFF0775DEFD96FD3AFD3FD1FE9
          3DEB07EA6F46FABD9DF5C317AE7D56BEAA3A7E1D4E37F4DB9D67DA9AF7D76E3B
          9FB2EF55AFABF4D4FE91992FAD6DFF008CAC9EAF8CDA0B3A86062749BDBE95D8
          F9F4BAF6DB6826E1FA3661E6FB5ACADBFB9EF494E7F58FAA9D2FA7FD57B7AF61
          FD60CD19CCA7D5AFA9FDA9C4643E25947B5DF46F77E8A9F4ECF56BFF0086599D
          57EB4FD60CEFA95D07A8DB91763655F9EEA2DBE879A7D6630BD9BDCDC735FE73
          7639BFE92B5CFE47D4CEB1D2FEB760F48B0E0599B9CDF5A961DEFC5683EA868B
          996D5BBE950FFD1FA76B113EB1F54EB2FBB13A3752EA785983A765B6A187874B
          EAF45D51346D0E76161D1E8D7FCD6CA6D7A4A7FFD0F555E43173BA96152DAEE8
          675C66438807D1D845347AAEFF0086F5BF41FD4FD17F835E66924A7EAA55FA87
          4FC2EA5856E067D4DC8C5C86EDB6A770473DBDCD7B5DEFAEC67BEB7FBD8BE5D4
          9253F417D5CFF173F573EAEE73BA8620BAFCA822AB321CD7FA40CB5FE88AEBAB
          E9B5DB37BF7D9FF822E07AAF42EB9675CFADF6B3A765BEBCAA5EDC67B68B0B6C
          272F09E1B43833F4BFA363ECFD1FF8362F3B49253F47FD50C5B2AFAA7D37132E
          9756F6E2B2BBA8B9A5A469B5F5D95583FE8B917FE69FD55FFCA6C0FF00D85A7F
          F49AF9AD2494FAE7F8B6FAA0D6E5F5BFDBFD199B3D5A8627DB31DAE6C0764FAB
          F66F598E66CFE67F99FF00835E8385D13A2F4EB4DDD3F031B12D73763ACA29AE
          B716C876C2EA98D76DDCD5F3124929F77FF1A5F56FAAF5EE8748E9936DB876FA
          CFC4063D4696966EAE7E95F4EEF633FD1FADFE17D3AD55C5FF001A5D270F1AAC
          4CDE8F9FD3F2696B6BFB13286ED6ED1B5B563EE7D1EC6B7E8EEAA95E24924A7D
          7FEAA74BEADD63EBD5BF5BCF4F7F45E9A03C0A6C058FC873ABF4B7BEB3E9EEF5
          1D67DAACB7D3F47D466CFD35DEADEB57FC6A7D5EEAFD7BA3E255D2A8FB4DB464
          6FB2B0E6B4ED2C7B378F55CC6FD25E16924A7DA2CEA3FE31ADCAAF32CFAA784F
          CAA46DAB21CFA8D8C0665B5DA723D467D277D155BAB3BEBE75A6515755FAA78F
          9155168BAB0323610F1EDDDBA9CB67E6BBF3FF0046BC812494FF00FFD9FFED0E
          C250686F746F73686F7020332E30003842494D04250000000000100000000000
          00000000000000000000003842494D03ED000000000010004800000001000200
          480000000100023842494D042600000000000E000000000000000000003F8000
          003842494D040D000000000004000000783842494D0419000000000004000000
          1E3842494D03F3000000000009000000000000000001003842494D040A000000
          00000100003842494D271000000000000A000100000000000000023842494D03
          F5000000000048002F66660001006C66660006000000000001002F6666000100
          A1999A0006000000000001003200000001005A00000006000000000001003500
          000001002D000000060000000000013842494D03F80000000000700000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF03E800003842494D040000000000000200013842494D040200
          0000000004000000003842494D04080000000000100000000100000240000002
          40000000003842494D041E000000000004000000003842494D041A0000000003
          3D0000000600000000000000000000009E0000034200000004BB34C81C002D00
          3100000001000000000000000000000000000000000000000100000000000000
          00000003420000009E0000000000000000000000000000000001000000000000
          0000000000000000000000000010000000010000000000006E756C6C00000002
          00000006626F756E64734F626A63000000010000000000005263743100000004
          00000000546F70206C6F6E6700000000000000004C6566746C6F6E6700000000
          0000000042746F6D6C6F6E670000009E00000000526768746C6F6E6700000342
          00000006736C69636573566C4C73000000014F626A6300000001000000000005
          736C6963650000001200000007736C69636549446C6F6E670000000000000007
          67726F757049446C6F6E6700000000000000066F726967696E656E756D000000
          0C45536C6963654F726967696E0000000D6175746F47656E6572617465640000
          000054797065656E756D0000000A45536C6963655479706500000000496D6720
          00000006626F756E64734F626A63000000010000000000005263743100000004
          00000000546F70206C6F6E6700000000000000004C6566746C6F6E6700000000
          0000000042746F6D6C6F6E670000009E00000000526768746C6F6E6700000342
          0000000375726C54455854000000010000000000006E756C6C54455854000000
          010000000000004D7367655445585400000001000000000006616C7454616754
          4558540000000100000000000E63656C6C54657874497348544D4C626F6F6C01
          0000000863656C6C546578745445585400000001000000000009686F727A416C
          69676E656E756D0000000F45536C696365486F727A416C69676E000000076465
          6661756C740000000976657274416C69676E656E756D0000000F45536C696365
          56657274416C69676E0000000764656661756C740000000B6267436F6C6F7254
          797065656E756D0000001145536C6963654247436F6C6F725479706500000000
          4E6F6E6500000009746F704F75747365746C6F6E67000000000000000A6C6566
          744F75747365746C6F6E67000000000000000C626F74746F6D4F75747365746C
          6F6E67000000000000000B72696768744F75747365746C6F6E67000000000038
          42494D041100000000000101003842494D041400000000000400000002384249
          4D040C0000000008DE0000000100000080000000180000018000002400000008
          C200180001FFD8FFE000104A46494600010201004800480000FFED000C41646F
          62655F434D0002FFEE000E41646F626500648000000001FFDB0084000C080808
          09080C09090C110B0A0B11150F0C0C0F1518131315131318110C0C0C0C0C0C11
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B
          0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C
          110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000
          11080018008003012200021101031101FFDD00040008FFC4013F000001050101
          0101010100000000000000030001020405060708090A0B010001050101010101
          0100000000000000010002030405060708090A0B100001040103020402050706
          0805030C33010002110304211231054151611322718132061491A1B142232415
          52C16233347282D14307259253F0E1F163733516A2B283264493546445C2A374
          3617D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F556
          66768696A6B6C6D6E6F637475767778797A7B7C7D7E7F7110002020102040403
          04050607070605350100021103213112044151617122130532819114A1B14223
          C152D1F0332462E1728292435315637334F1250616A2B283072635C2D2449354
          A317644555367465E2F2B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5
          F55666768696A6B6C6D6E6F62737475767778797A7B7C7FFDA000C0301000211
          0311003F00F43C8FAC7D0B1AFB31B233A9AEEA8EDB18E74169203E1FFBBED72F
          3239D9B5F55C626FB198E3399936BCD840389EA63B5AD14FF3CE7FDAFED77DDF
          42DFB3D5FE8574DD5FEA0E6E775FCDEACD1836FDAA1B57DA5B63CD6D0CAEADCC
          6376D2DB1AE63DED7FF39FF0AB9825AD653D35B4E207DD92DAD87D27EE175963
          70FD5734DAEF4FA5B291F64A2C6E47DBBED1BFFC0DB624A7D3B1BEB1743CAC8A
          F1B1F36AB6EB4915B1AED5C4073E1BFBDEC639CB3FEBCFD6A1F55FA19CEAEB17
          655CF1462D6EFA3BDC1CFF0052DD5AFF004AB656EFA1F9FE9D7ECF53D4593D1B
          EA1E774FEBF8DD59C306A1548B5B8ADB6B2E6EC731BFA371750E7EEF4FDFE9D4
          FF00E72DB2C7AA1FE3AB1AD3D2FA666897538F92E658CEC4D8DDCC73BFED87B3
          FEB8929ACDFADFF5D3EA96660D9F5C9EDCDE9FD4EA2F0DA5958BA973435CFADC
          DAEBC5FD2D7EAD5EB31DEA57FE82D59A3FC63FD60CDC8FAC37E0E73D9858D8C6
          FE9EC7D348757FACE250DDDFA37EEFD0DF6D7FA47D9FE7AD1FF1B9D4B1BA9627
          43C3E9A4E5E4663FED78EDA3DD61ADCD0CA5CDA9BFA6FD61D67E87D9FE06C5CA
          5F98FCEEA5F5BF2ECA2CC47DD88E7BB1EE116309CBC0F658D21BB5E929F66FAA
          99B95D43EADF4ECDCC7FAB9391432CB6C80D9711A9DB58631BFD96AC8EB7FE33
          BEAAF4CC4B2CC7CB6F50CA00FA38D8F2EDCEE1BEA5D1E9555EEFA6EFDCFE6EBB
          55DFA9975747D4AE9775A76D7561B1EF304C35ADDCE30172981D7BFC4DE05DF6
          8C6A6B17076F6BECC7BED2D74EE0EAFED0CB7D3735DFE8D2535BEAEFD7DFAC1D
          0F35B57D7BF5DB89D46A6DD8790EADBFA3899DD5E331AFDB635FFA567F3F47E8
          7F43FA55E8BD2BAEF47EB0D7BBA5E5D5962ADBEA7A6E92DDF3B37B7E93376C7A
          E5B3FF00C61FF8B6EA748A3A8DACCBA81DCD65D8B63C07416EF6EFA4EC7ED77D
          36AB1F523A87D417E5E562FD546FA77DAC1764B436E00B6B3B19FD27D8DD8EC8
          FA15A4A723EB0FD69FAC9D3BFC623303A7576751C618E1E3A5B1CDAC3C9ADEE7
          3BD535D8EFD1FF003AB3FEB2FD76FAF1FB53A4535F4F7F4175F6EC6537DADB2B
          C8717D2DDB73BD2A5D5555EEDB67BBE85CB7BEB8FD5460EAEEFADCDEBDFB0CE3
          D02B7D86916C407B0FA67D5A9DBADADFE9B28657659EA7F36B84CB6FEDDBA8C8
          CECEEB3D7B030EC316D7D387A6E6CB1D90CAEEFB735D5FA8D67D27B3F46929EA
          7A7F5EFAE27FC6474FE97D6EEAA965B4BDD661E2389A0814E4595BDDEA3AC7FA
          BBD9FBCB57FC6AFD61EAFD13A1D3FB309A4E6D869B72DBF4AB1B4BB654EFF077
          5DEFD96FD3AFD3FD1FE93DEB07EA6F46FABD9DF5C317AE7D56BEAA3A7E1D4E37
          F4DB9D67DA9AF7D76E3B9FB2EF55AFABF4D4FE91992FAD6DFF008CAC9EAF8CDA
          0B3A86062749BDBE95D8F9F4BAF6DB6826E1FA3661E6FB5ACADBFB9EF494E7F5
          8FAA9D2FA7FD57B7AF61FD60CD19CCA7D5AFA9FDA9C4643E25947B5DF46F77E8
          A9F4ECF56BFF0086599D57EB4FD60CEFA95D07A8DB91763655F9EEA2DBE879A7
          D6630BD9BDCDC735FE737639BFE92B5CFE47D4CEB1D2FEB760F48B0E0599B9CD
          F5A961DEFC5683EA868B996D5BBE950FFD1FA76B113EB1F54EB2FBB13A3752EA
          785983A765B6A187874BEAF45D51346D0E76161D1E8D7FCD6CA6D7A4A7FFD0F5
          55E43173BA96152DAEE8675C66438807D1D845347AAEFF0086F5BF41FD4FD17F
          835E66924A7EAA55FA874FC2EA5856E067D4DC8C5C86EDB6A770473DBDCD7B5D
          EFAEC67BEB7FBD8BE5D49253F417D5CFF173F573EAEE73BA8620BAFCA822AB32
          1CD7FA40CB5FE88AEBABE9B5DB37BF7D9FF822E07AAF42EB9675CFADF6B3A765
          BEBCAA5EDC67B68B0B6C272F09E1B43833F4BFA363ECFD1FF8362F3B49253F47
          FD50C5B2AFAA7D37132E9756F6E2B2BBA8B9A5A469B5F5D95583FE8B917FE69F
          D55FFCA6C0FF00D85A7FF49AF9AD2494FAE7F8B6FAA0D6E5F5BFDBFD199B3D5A
          8627DB31DAE6C0764FABF66F598E66CFE67F99FF00835E8385D13A2F4EB4DDD3
          F031B12D73763ACA29AEB716C876C2EA98D76DDCD5F3124929F77FF1A5F56FAA
          F5EE8748E9936DB876FACFC4063D4696966EAE7E95F4EEF633FD1FADFE17D3AD
          55C5FF001A5D270F1AAC4CDE8F9FD3F2696B6BFB13286ED6ED1B5B563EE7D1EC
          6B7E8EEAA95E24924A7D7FEAA74BEADD63EBD5BF5BCF4F7F45E9A03C0A6C058F
          C873ABF4B7BEB3E9EEF51D67DAACB7D3F47D466CFD35DEADEB57FC6A7D5EEAFD
          7BA3E255D2A8FB4DB4646FB2B0E6B4ED2C7B378F55CC6FD25E16924A7DA2CEA3
          FE31ADCAAF32CFAA784FCAA46DAB21CFA8D8C0665B5DA723D467D277D155BAB3
          BEBE75A6515755FAA78F9155168BAB0323610F1EDDDBA9CB67E6BBF3FF0046BC
          812494FF00FFD93842494D042100000000007900000001010000001800410064
          006F00620065002000500068006F0074006F00730068006F007000200045006C
          0065006D0065006E007400730000001C00410064006F00620065002000500068
          006F0074006F00730068006F007000200045006C0065006D0065006E00740073
          00200032002E003000000001003842494D040600000000000700010000000101
          00FFE113CB687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E30
          2F003C3F787061636B657420626567696E3D27EFBBBF272069643D2757354D30
          4D7043656869487A7265537A4E54637A6B633964273F3E0A3C3F61646F62652D
          7861702D66696C74657273206573633D224352223F3E0A3C783A7861706D6574
          6120786D6C6E733A783D2761646F62653A6E733A6D6574612F2720783A786170
          746B3D27584D5020746F6F6C6B697420322E382E322D33332C206672616D6577
          6F726B20312E35273E0A3C7264663A52444620786D6C6E733A7264663D276874
          74703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73
          796E7461782D6E73232720786D6C6E733A69583D27687474703A2F2F6E732E61
          646F62652E636F6D2F69582F312E302F273E0A0A203C7264663A446573637269
          7074696F6E2061626F75743D27757569643A30356262613362642D633936302D
          313164382D393666612D626235393061623038653066270A2020786D6C6E733A
          7064663D27687474703A2F2F6E732E61646F62652E636F6D2F7064662F312E33
          2F273E0A20203C212D2D207064663A43726561746F7220697320616C69617365
          64202D2D3E0A203C2F7264663A4465736372697074696F6E3E0A0A203C726466
          3A4465736372697074696F6E2061626F75743D27757569643A30356262613362
          642D633936302D313164382D393666612D626235393061623038653066270A20
          20786D6C6E733A7861703D27687474703A2F2F6E732E61646F62652E636F6D2F
          7861702F312E302F273E0A20203C7861703A43726561746F72546F6F6C3E4164
          6F62652050686F746F73686F7020456C656D656E747320666F722057696E646F
          77732C2076657273696F6E20322E303C2F7861703A43726561746F72546F6F6C
          3E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A446573
          6372697074696F6E2061626F75743D27757569643A30356262613362642D6339
          36302D313164382D393666612D626235393061623038653066270A2020786D6C
          6E733A7861704D4D3D27687474703A2F2F6E732E61646F62652E636F6D2F7861
          702F312E302F6D6D2F273E0A20203C7861704D4D3A446F63756D656E7449443E
          61646F62653A646F6369643A70686F746F73686F703A30356262613362622D63
          3936302D313164382D393666612D6262353930616230386530663C2F7861704D
          4D3A446F63756D656E7449443E0A203C2F7264663A4465736372697074696F6E
          3E0A0A3C2F7264663A5244463E0A3C2F783A7861706D6574613E0A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A3C3F787061
          636B657420656E643D2777273F3EFFEE000E41646F626500648000000001FFDB
          0084000C08080809080C09090C110B0A0B11150F0C0C0F151813131513131811
          0C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11
          110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0CFFC0001108009E034203012200021101031101FFDD00040035FFC401
          3F0000010501010101010100000000000000030001020405060708090A0B0100
          010501010101010100000000000000010002030405060708090A0B1000010401
          030204020507060805030C330100021103042112310541516113227181320614
          91A1B14223241552C16233347282D14307259253F0E1F163733516A2B2832644
          93546445C2A3743617D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4
          A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7B7C7D7E7F71100
          0202010204040304050607070605350100021103213112044151617122130532
          819114A1B14223C152D1F0332462E1728292435315637334F1250616A2B28307
          2635C2D2449354A317644555367465E2F2B384C3D375E3F34694A485B495C4D4
          E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F62737475767778797A7B7C7FFDA
          000C03010002110311003F00F554924925292492494A492492539BF58B2AFC3E
          81D4B2F1DFE9DF8F897DB53E0187B2B7D95BA1C1CDFA6D5E5BD1BAEFF8DCEB98
          8ECBE937FDA686586A759B70990F686BDCDDB7B2B7FD0B18BD3BEB67FE25BACF
          FE10C9FF00CF362F2BE8A48FF13DD748307EDCDE3CDDD39253ABFF00AFD3B71D
          BFE4F4BFF5FB7FAFECF5E6BD3F0733A8E653838351BF2AF3B2BA99A9279D67DB
          ED6FBDCE7FB19F9EBAEB3FC51FD6D661FAEDFB3596ED6BBECADB4FAB2E8DCC25
          EC662FE8A7DFFAC7FC524A773FF5FAFF00AFECF543AD75DFF1B9D0F15B97D56F
          FB350F78A9AFD984F9790F7B5BB6965AEFA15BD79D9106278F032BAA61FF00D7
          5DC4CF5E03FF00651253EDBF57726FCBE81D372F21DEA5F918945B73E0097BEB
          65963B6B435BF4DCB4564FD53FFC4B746FFC218DFF009EAB5AC9294924924A52
          49249294924924A5249249294924924A52492066656362633F232AD65143237D
          B6B83183710C6EE7BCB1BEE7BB63525274979C75BFF1C5D1B199655D1A9B33AF
          101B7583D2A20B777A9EEFD66CD967F827D147A9FA4FD32E73FF001E7FAD1FF7
          1B027FE2EEFF00DEA494FB524BCB3A4FF8E9AF6ECEB580E0E0D24DB84410E74F
          B1A31F21CCF4DBB3F3FED56AF41E8BF583A3F5CA4DFD2F2ABCA6363786987B64
          B9ADF5687EDBA9DFE9BB67A95FBFF31253A4924924A52498F1E2B9BFAF3F5A6E
          FAAFD1DB9F550321F6DA31D8D738B435CE65B6B6D74077A9B7D1FA0929E9525E
          29FF008F47D681FF00697027FE2EEFFDEA4E3FC74FD67768FC4C12DEE032D063
          CA725C929F6A4973BF52FEB51FAD3D2EDEA0718627A57BB1FD20FF00524B5955
          BBF7FA757FA659FF00E307EBB65FD53A31061E3577DF9DEA6C7DAE3B19E91A77
          6EA6BDAFBBD465FF00E9EA494F6492F14FFC7ABEB57FDC5C0FFB6EEFFDEA53A7
          FC757D64F559EBE1E13A9DC3D46B1B6B1C5B3EE6B2C75F6B58E737F3FD2B3FE2
          D253ED092A3D1F34F51E99879FB3D3FB5D155FB2776DF558DB766F8F7EDDDFC8
          57925292492494A4924925292492494A49249252924933B829297497897D64FF
          0019BF5959D73359D2739B460D769AF1DAC653734B59FA2F5D975943DCFF00B4
          39BEB7D2F66F599FF8E8FD7AFF00CB3FFC031FFF0079D253F4024BC007F8D0FA
          F3FF00967FF8063FFEF3AF62FA99D5F23AD7D5BC0EA5923F4F7565B6BB4F73EA
          73B1ACB61AD6359EB3E9F57D3FE5FF0021253BA924924A5249249294924924A5
          249249294924924A52499D31A72BE75EA5F5B7EB19CEC97D3D6737D275CF3596
          645AD1B773B6ED6B5B86DD9FFA098DFF0085F1FF009A494FD1692F9ABFE767D6
          9FFCB9CFFF00D8ABBFF4A2E97FC5C7D61EBF9BF5CFA76366753CBC9C7B3D6DF4
          DB7D8F63A28BDEDDD5D8F731DB5EDDC929F7049249252924933B8F1494BA4B87
          FF001B1D53A8F4CFAB555BD3F26CC4B2ECBAEA7DB4B8B1E59B2EB8B5B637F4B5
          FE92967D072F22FF009D9F5A7FF2E73FFF0062AEFF00D28929FA5525F35FFCEC
          FAD0743D673E3FF0CDDFFA517A4FF89CEA9D4FA8BBAB9EA3977E61A7ECFE9FAF
          6BEDD9BBED3BF67AAE76CDDB1253E96924924A524BE6AFAD9FF8A9EB3FF87F2B
          FF003F58B29253F5524BE6AFAA7FF8A9E8DFF87F17FF003F56BE940929749249
          25292492494A4C784CF8DA678FBD79E7D77FF19B57487DBD27A3B5B7E7B5A596
          E54CD7459206D63087B72B22B61F7EF77A755BE9FADEB7E9A8AD29EC7AC75FE9
          1D128F5BAA653315A7E807497BE0B5AEF4A96875B6ED759F98CF67F38FFD1AE0
          3AB7F8E9A830B7A374F2E796B62ECC76D01D3EF6FD971DCE7595FA7F43F5AABF
          E2FF00D2799751CECCEA3976E766DAEC8C9BCEEB6E7724FCBDAD637E8318CF63
          19FA362AA929EC32BFC6A7D73BEF759565D78CC3C535515960FEAFDA6BBEDFFC
          11645DF5BFEB5596BED3D5F35A5EE2E2197D8C6C93BBD95D6F6B18DFE4B16322
          514DB7DD5D14B0D96DAE0CAD8DD4B9CE3B5AD6FF0059C929D4A7EB7FD69AEE65
          83AC66B8B1C1C03F22C7B646BEEAEC7B98FF00ED2D9C5FF1A9F5D69BDB6DB975
          E4D6277536D35863A411EEFB2B31EEF6FD3F65CB907023FBD45253EBDD1FFC73
          74EBB655D630ECC6790C69BB1C8B6A24FF003D6BAA7FA77534B3E97A6CFB5BFF
          00EFFDDF49EB7D2BAC33D5E9B9756535AD6B9E2B702E687C9AFD5ABF9DA5EEDB
          F42E6D6FFA6BE67577A6F56EA3D2B246574EC8B316F1037D6624070B3658DFA1
          6D7BDBFCDD9EC494FD3892E0BEA27F8C7C5EB38EDC1EAF6D78DD56B86B5EE218
          CC8DC456C753F9ACC9DEFF00D2E37FD771BF47BEBC5EE9A65253277D13DFC972
          FF0059BEBFF45FAAF9956267B2FBAEB6BF54368634C3371631EEF5ACA19EF732
          CFA0BA95E2BFE3ABFF0015389FF842BFFCFD94929EABFF001EAFAABFF7173FFE
          DBA7FF007A92FF00C7A7EAB1D3ECB9FF00F6DD3FFBD4BC552494FD4DAF87E4FF
          003524449253FFD0F554924925292492494A4924925393F5B3FF0012DD67FF00
          08657FE79B1795F46FFF00239D77FF000FB3FEAFA6AF54FAD9FF00896EB3FF00
          8432BFF3CD8BCAFA37FF0091CEBBFF0087D9FF0057D35253CF7D47EAD89D1BEB
          360F52CD716E3545EDB0B46E701657651BF6FF0021D6EF7AF4CFAB7D1FEB0F4B
          FAE7D77ACF56DD4748C96DEF6DF65CC2C2D65AD7623EC6FAA5D5FA187EAFA6FB
          ABFD5E9FD1AF155ED1F58B33EC9FE28F176DBE8D97E060D35C3B6976E147AB53
          3F7B7637ADEA7FC1A4A7C8BABDF8B93D5333270EBF4716EBEDB28AA037656F7B
          9F557E9B3D8CD959DBEC5BDFFE6B3FF6BDFF00BA6B962BA9FF00F359FF00B5EF
          FDD3494FB57D53FF00C4B746FF00C218BFF9E6B5ACB27EA9FF00E25BA37FE10C
          5FFCF35AD6494A4924925292492494A4924925292492494A4C53A677D1494E7F
          58EB381D1F06CCDCEB5B554C6B8B5A5CD6BAC735AEB45147AAE636CBDED67E8D
          9BD783FD6BFAE5D5FEB35C4E53FD3C26585F8F86C8F4D92363773B6B1F7DDB3F
          C2DBFF0009E97A5EAEC577FC60FD72B7EB1F527D18B6B8F46C670FB257B4B37B
          80DAFC9B58EF739CEF7B28DFB3D3C7FF000355BEB2E45252924E395A58DF57BA
          F6650DC9C4E9B979343E765B4D1658C7412D76DB18C737B24A73568748EB5D4B
          A3658CBE9B90EC6BF6961700D20B5DF4ABB2BB5AFA6C6FFC63554C8A6EA2C7D3
          7B1D5DB5B8B2CADE20B5CDF6B98E047D341494FD03F51FEBAE1FD67C5D8E028E
          A7436727141D081ECFB4E3EEF73E87FE77FA0B3F4567F82B6FEA57CC3D23A964
          F4AEA78DD4711DB6FC6B058CD480639AECD8E63FD2B5BFA2B7DFFCD2FA3BA275
          7C3EB3D3A8EA5825CEC6C96935EF6ED702D26BB18E6FEF57631CCFF47FE8DE92
          9D05E7FF00E3ABFF0012D8BFF87EBFFCF394BD0179FF00F8EAFF00C4B62FFE1F
          AFFF003CE524A7C552492494FB57F894FF00C4B657FE1FB3FF003CE2AC9FF1E7
          FF00789FFA15FF00BA8B5BFC4A7FE25B2BFF000FD9FF009E71564FF8F3FF00BC
          4FFD0AFF00DD4494F95A49276F2929FA4FEA9FFE25BA37FE10C5FF00CF35AD65
          8BF53AEAADFAADD21D53DB6346150C25A4101D5D6DAAD67F599631EC72DA494A
          4924925292492494A4924925292492494B158BF5AFEB055F57FA1E4F51716FAA
          D6ECC5ACC7BEE77F32CDA5CC73D8CFE76FDAFF00E63D45AF916D54D0FBAE7B6A
          AAA05F658F21AD6B5BEE7BDEF77B58C637E939780FD7EFADD6FD66EAB2CDA3A7
          E117D7841A0CB9AE237E4BDCF6B6CDF93E956FF4BFC0B3F47FCEFAB65A94F34F
          3A71130A092492971CAF52FF00133D7AAAECCAE81696B1F738E5631D0173835B
          5E455ABFDEF6D75D36D6CAD9F43ED4BCB159E9D9F99D37369CEC1B5D464D0EDD
          558DE41E383ED7B1EDF6595BBF9DAFF46929FA8525CB7D47FAED87F5A31369DB
          4753A1B3938C0E847D1FB4E36EF73F1DEFFF00B62CFD1DDFE06EC8EA52529249
          2494A4924925292492494A49249252C785F2B2FAA4F0BE56494A5D5FF8AEFF00
          C5DF4CFF00AFFF00EDBE42E511B172F2B0AF6E4E1DD66364573B2EA9C58F6C82
          C76DB2B2D7B7731DB5253F5224BE6AFF009D9F5A7FF2E73FFF0062AEFF00D289
          7FCECFAD3FF9739FFF00B1577FE94494FD2A98F0BE6BFF009D9F5A7FF2E73FFF
          0062AEFF00D289C7D6CFAD24FF00CB39FF00FB1577FE94494FAAFF008E5AEDB3
          EAAD258C739B4E6D6FB080486B766453BEC23DAC67AB632B5E28B433BAE759EA
          140A33B3F272EA0E0F0CBED7D8D0E00B43DADB5EEDAEDAE59E92971CAE87EAB7
          D75EA7F557ED47A753458733D3F53ED0D73A3D3F5366CF46CA3FD32E752494F7
          FF00F8F57D6AFF00B8B81FF6DDDFFBD49C7F8E9FAD474FB2E07FDB777FEF52F3
          F492536FA966D9D433B2B3ED6B5B6E5DCFBEC6B341BAC73AD7ED0E2F76CF72A8
          924929D5FAA7FF008A9E8DFF0087F17FF3F56BE940BE6BFAA7FF008A9E8DFF00
          87F17FF3F56BE940929749249252933A3699FF005FB93A677D12929E27FC657D
          6C1D17A41C4C3BFD3EA59E036BD8E02CAE933EAE4FD17EDF5367D9EB7EF67F39
          EAD3FD1D788E45B6DD6BEFB9EEB2DB1C5CF7BCEE739CE25CF73DCEF739FBBF7D
          743FE317A8FED0FADDD41ED7586BC7B062D6DB0CEDF407A16B6B1B9FFA37E4B6
          EB7FEB8B99494B8E56EFD56FAA9D43EB375018B8A3D3A590EC9CA702595B0FE7
          168FA76BFF00C050DFA7FF0017FA4584D12E8F15F477D51E834FD5FE898DD398
          1BEB35BBF29ED83BEE7FBAF76F6B2ADFB1DFA1A77337FD9EBA525397D03FC5A7
          D58E915037503A96539B165F9403DBA866EF431CFE82A6FA95EFADFF00D219F4
          3ED2BAC608D070A6924A477D555F4D94DCC6DB55AD2CB2B780E6B9AE1B5EC7B5
          DED731ED5C8F5DFF00163F563AAB2C76351FB3729FAB6DC6D1921A6B635D893E
          87A5F9F67A0CA2C7FF00A45D92677D12929F99FAE744EA1D0BA859D373EBD96D
          7EE0F1258F61FA1752FD3D4A9FFBFF00D8B3D3B7D4AD672F7BFF00193F57A9EA
          DF56722F1B5B93D39AFCAAAC70886B06EC9AFE83ECD96521EFF67FDA8652BC1D
          D1AA4A5E8B6DA6EAEEA1EEAAEA9C1F5D8D25AE6B9A7731EC7B7E839AE1F497BC
          7F8BBFADB6FD65E9967DB36FED1C1736BC82D11BDAE07D1C973768AEB7DDE9DA
          DB2B67FA1FF476555AF041CAEC7FC54E55D47D75C3A6B76D6E55775570807730
          556646DD46E67E9F1EA7A4A7DE178AFF008EAFFC54E27FE10AFF00F3F652F6A5
          E2BFE3ABFF0015389FF842BFFCFD94929F3F49249253F5524924929FFFD1F554
          931E1701F5A7FC69FF00CDFEB995D23F667DABECDE9FE9BD7F4F76F6577FF37F
          67B76EDF57F79253E8092F2AFF00C7CFFF00349FFB35FF00BE897FE3E7FF009A
          4FFD9AFF00DF4494FAAA4BCABFF1F2FF00CD27FECD7FEFA243FC789E7F62FF00
          ECD7FEFA24A7BFFAD7FF00896EB3FF0084327FF3CD8BCAFA2923FC4F75BEE3ED
          ECF2FCEE9EADF54FF1C5FB4BA666601E91E90CCA2CC7F53ED1BB6FA8C755BB67
          D9EBDDF4BF7D55E8FA7F89FEB64891F6F673C1F774F1E2125397F58BEA86561F
          4FE95D43A6615F761E4F4DAF273321A1D686DCEDF7E43EEDA1DE8D7551655EFD
          95FF00DBBEAAD6EAFD46DBBFC51F4A68C9758E19A71B2007EE21ADFB6594E35B
          EEDDB6AA5B8AFAEB7FF83F43F315AC5FAC3D4DDFE28B27D0ACBDD8D6BBA75F7B
          9E1C5B8F66C7EFD96B7DDFA3CAAFA73296FF0037FCF7F835CF7FF9AF9EDFB766
          3FF41125367EAEFD5827A6F58B7AC74BB9CDAFA63F3FA767BBD46D41C2AF5EB6
          B1F56DA321D736EAECF73DFE9FD9FD3555DFFE4B8F6FF2F71FFA08BA4A3EB175
          8FFC696FB6E35D4E160E9D8D63E18EB3176D5539B456E63EACBB7D3FB4633F67
          A7B29A6CB7F9EC65CEEA7FC5868223AECC7FE8224A7D9FEA9FFE25BA37FE10C5
          FF00CF35AD65E43D2BFC70FECDE9787D3FF649B8E1D2CA3D4FB46CDDE9B5B56E
          DBF67B3F7559FF00C7CA3FEF13FF0066BFF7D1253EAA92F2AFFC7CFF00F349FF
          00B35FFBE897FE3E7FF9A4FF00D9AFFDF4494FAAA4BCABFF001F2FFCD27FECD7
          FEFA2B3D33FC717ED3EA589D3FF647A5F6BBABA37FDA7747A8E6D5BB6FD9ABDD
          F4BF7D253E98928852494A49249252C785C67F8D1EBCEE95F566CC7A5CD17F51
          77D9A25B22A23F5A7B6B7077A8DF4FF56FFAFAECDDF44C2F0BFF001AFD63F687
          D677E231FBA9E98C6D0D0D7EF61B0FE9721ED6FD1AAD6B9CDC5BBFF0AFFDB694
          F18EE25336275E13276F2929EDFF00C597D501D73A9FED0CC607F4DC070DD5D8
          D716DD6B83BD3A9AE1EC7368F6DF7FBBFD057E97EB1BD7B6801A0CE83F1FFA2B
          0BEA1F473D1BEACE0E23D9B2E7D7EBE402CF4DFEA5DFA52CBD9F49D6E3B5CCC5
          DEEFF43FE6744929E2BFC63FD506F5EE9272B16B6FED2C06EFA9C1A4D96D4D0E
          759863D2FE53B7E3FE8ACFD2FF00C7D8BC35CD2D6C1E57D4AEFA2BE78FAF7D1C
          746FACF9D88C66CA5F67AF8E033D367A777E95ACA19F45D563B9CEC5DEDFF43F
          E6253CF8E56E747FAE5F58FA0E1BB13A4E5FD9A97D86D7B3D2A9F2F706B0BB75
          F558EFA15316124929EAC7F8D1FAF53FF29FFE018FFF00BCEA875AFAE3F58FAE
          E1B713AAE5FDA686582D633D3A990F682C6BB751557F9963D61A49294924924A
          7DABFC4A7FE25B2BFF000FD9FF009E71564FF8F3FF00BC4FFD0AFF00DD45ADFE
          253FF12D95FF0087ECFF00CF38AB27FC79FF00DE27FE857FEEA24A7CAD249249
          4FD29F54FF00F12DD1BFF0862FFE79AD6B2C9FAA7FF896E8DFF84317FF003CD6
          B5925292492494A492593F5A7AE1E81D072BAB8A7ED071BD38A8BB603EA595D1
          F4F6BFE87ABBFE8A4A75925E2BFF008F3FD679D317076F9B2D3A76E327FEF8AB
          E6FF008DDFADB935065271F05C0EEF529A8924446C7372DF955EDFEC24A7DC5D
          C15CC7D62FAF9F57FA2635C4E4579998DDEDAF0E87073CD8D219E95CF66FFB2F
          B9DEF7DDFF005AAECB7F44BC53AA7D69FAC5D59B6B7A8750BEEAEEDBEA51BCB6
          93B482DFD56AD98FED7B377F36B21253D27D6FFAEBD5BEB3D8D193B68C2A5C5D
          462544ED049706D96B8FF3F7B6BFD1FABEC67FA2AA9F56C5CDA49C7292941697
          4DFABFD53AA626665E153EB63F4E67AB98FDEC6EC610FB376CB5CC73BDB4DBF4
          159FAB5F55FA97D63CF6E36156E3535CCFB4E4685B556F706BAD707BAB6BFD9B
          AC650C7FA962F7AE8BD1303A1F4F674EE9ECD95572E739C65F63CC7A97DF67E7
          DB6FFEA3FE6BD2AD253F35BB884CBBCFAF7FE2E72BA3DEECDE9355993D29F2F3
          5B439EFC7DA0BDEDB7F39F8DB5AF73327FEB591EFF004ADC8E11C2125373A675
          6EA3D2B246574EC8B3172040DF598901C2CF4EC6EACB6BDED6FE8DFF004D7ACF
          D57FF1B5D373DACC7EBA0606739C40B981C719F2E6B6B6EAEB2DC77FBDDBFD4F
          D07E8BD5F5FF00495D2BC613A4A7EA1C3CBC5CCA5B9389757914BE76DB5383D8
          63DAEDB633D8EE1585F30E0F52CFE9F69B70326DC4B5E3639F43DD5B8B490F2C
          2EA8B5DB773574BD37FC69FD70E9E007DF5E6B1AC0C6B326B078DAD6D9EA51E8
          645B66D6FD3B6E7A4A7DE525E2F4FF008EAFAC9EAB3D7C3C27D41C0D8D636D6B
          8B41F7063DD916358FFF00ADD8BB0FA89FE30EDFACFD40F4DBB09B8F6D38BEBD
          97B2CDCD739AEAA9786526B6FA6C73AEFF004AFF004F67F86494F70924924A52
          492492963C2F9597D52785F2B24A52492E83EA174BC0EAFF005B307A7751ABD7
          C4BFD5F52BDCE64ECA6EB59EFA9D5D9FCE31BF9E929E7D25EFFF00F8D6FD45FF
          00CACFFC1F23FF007A12FF00C6B7EA2FFE567FE0F91FFBD0929F00497BFF00FE
          35BF517FF2B3FF0007C8FF00DE84BFF1AEFA8A351D335FF8FC8FFDE8494F8024
          BD53FC64FD4FFAB3D0BEAE7DABA6E1D78D9166457536C7D990F71043DEE6D0D3
          6D94FABFA3FF00B51FA2F43D5D9FAC7A4BCAD252E395DA7F8BFF00A9781F5AAA
          EA832ADB69B71055F6775446DDD68BFF009D63DAE73F6BA9FCDB2B5C52F55FF1
          19CF5AFF00D05FFDDB494AFF00C63E74FDB5FF00B2BFFBF6A74FF88FA996B1F7
          75875950703656CC7D8E7367DED658722DF4DCE6FE7FA562F5249253F31757C1
          FD9DD5333A7EFF0057EC77D98FEAEDDBBBD37BAADFB25FB776CFA1B9525ABF5B
          3FF153D67FF0FE57FE7EB16524A757EA9FFE2A7A37FE1FC5FF00CFD5AFA502F9
          AFEA9FFE2A7A37FE1FC5FF00CFD5AFA5024A5D2492494A4CEE13A674ED31CA4A
          7E6FFAE14DB57D69EAEDB58EADCECDBDE038104B6CB1D6D4EFEDD6F63D632F4B
          FF001C3F566CAF2EBFAC58B5B9D55ED1567B802432C66DAB1EEB0EF77B6FAB65
          1ECAEBABF41FE932579A24A64D12E1FC395F4F74DCCAB3F071B3E9045597532F
          AC3A276D8D6D8CDDFD972F9859F4876F35E8DFE2DFEBFD7D3195F41EAAE6B30F
          7118B94406FA4E7B8BDD4E47FC0596BDDFA7FF0001FE13F43FD1D29F6249071E
          DAAFA99752F6D9558D0E63D87735CD700E6398F6FB5CCDBFB88C9294924877DB
          4D34D975EF6D54D6D2FB2C790D6B5AD1B9EF7B9DED6B1ADFA6929C9FAE993462
          FD52EAF65EFF004D8EC4B6A0E827DF734E3523DBFBD75B5B57CE2EF871F82EDB
          FC647D7AA7EB1D956074C2EFD978CE2F739ECDAEB6E06CADB7365CE7FD9FD177
          E8BF98B7F4BFA7ABF9AF4F87494A5D27F8BAC7FB4FD74E995FAB6530F7D9BEA7
          6C77E8EAB6FF004F77FA3B7D3F4AEFDFA5F62E7072BD63FC4D740BAB195D7EED
          CC6DAD3898ADD4073439B664DBAB76BEBF5595D35595DBFCE3329253E9CDD0AF
          18FF001D5FF8A9C4FF00C215FF00E7ECA5ED4BC57FC757FE2A713FF0857FF9FB
          29253E7E924924A7EAA49249253FFFD2F555E52FFF00F2E47C7B4F13F60D17AB
          2F2AFF00F3EBFEBFF95E929CA3FE3A7EB403A6260C769AEDE3E5929BFF001EAF
          AD5FF71703FEDBBBFF007A9702898F5597DD5D3531D6DB6383595B41739CE261
          AD6B5BEE724A7BAFFC7ABEB4FF00DC5C0FFB6EEFFDEA45C7FF001C3F5BB26E65
          34E161596DAE0C656CAAE2E71261AD6B7ED5F9CA3D03FC51F56EA38AFC8EA977
          ECA9DBE856F60B5EE691BDEEB2A6DB4FD9F6EEFE6ECFD2FA9FF83DE7FD45FAD2
          EBE9C5E89D3F1FEAF3308B9E7A91C9F56FBECFE8DEA373B1D9F6EA6ABA9DCFFB
          1B3170F1BF9EF57F9CF46B4A4FD43FC637D73E8199457F587A5E1B45AD738514
          D9B6C2DFA3BF7B72337D1F77FA5A7DFF00A4591F5BBEB8E4FD68FABADBD99347
          4EC7AEF355DD27D436645EE02BB69C9F6D4DDD8ADDD67E8EDAE8A2BB31FF009F
          BF23D0AA90742C3CEEADD72977D5263ABEA1D3DD90ECBFAC19363EC6E41B6595
          E55B4E450F6E33AE6BAEF4B1FD2B723F4BFA4B3F417652D6E9FD53A0DDD56DFA
          B3F5D7A4E2333C3ED195D608AF1BD4B03DF955DAFB194E05B4557D5B7D3C86DB
          BF2BF47FF72925397F523A8519BF567AEFD55BAAF56DC8A2CCDC0ADB21F65F5B
          1AEF499B1FBECB5AFC7C5BA9AAAAFF00C1E4FA9FA35440FF00D763AC47EDCF3F
          FB89E4BA2E99D168FA99F58717AE6138F5AFABF915DED7E6D151BDD8AC69DA6E
          75D8A5F4B7D28D96E557FCED3FB42BFB32EE5B5FD51C2E9791D541C6774E764B
          FA95994E70C8AFED24FA6FCAA1EE7646DC9DEDD95B71FF003FF45553EA24A7CE
          BFC623DBD1BA2744FA9ECADA1D8D537332DE25CD369F52A9A1EE76EFD25EFCE7
          D9BEBFF42A97D54FAD593F53F05971F43A962F53DEF38355E45D45941F4BD5BD
          9B2C651F6967BD9ECFD3D4CAEDF53F46B6B2FA13BFC60FD6A3D4B0B1ECC2E855
          31B5DBD45CCDA72BD3758DF5315B6347AB6D9B7ECDBECF53D1A29AFED3FA4FD5
          51EEEA1D33A0FD6877D52FABF8B4F42C9C8B6BA9DD6DC1D9B6FE9ABAB2198ECC
          7C80E7B1B7647D9F1FF4990FC7FF000FE8FA9FA4A929860FF8C6FAEBD6BED167
          45C1C1C8F437DAEC3F79C8652DFA0FDAEC8A3ED5BB77A5FAA54F7FA9FE071BD6
          C659D77F8E3FADD8D6BE8B70B0ABB2A7163D8FAAF6B839A76B9AF63B2B735EDF
          E52ABD6712DC4EA7918FF5F311CDCAEA4EFD07D60C774EC6D61B436DFB1D1B71
          B2F1FF004547AB4FA58D9FF677DB67F3CFC7F4F55BF56FEB1F50CD6E6754E98D
          FADD81F67AABE9B9CECAFB1BCD1FCFE3DAF1BEABDCF7B2F7FDA7ED745B7FABFF
          006A6CFF000A94D0FF00C7ABEB57FDC5C0FF00B6EEFF00DEA4BFF1EAFAD5FF00
          71703FEDBBBFF7A94BEB07F8A4EAFD3B1DB7F4DBBF6B1971BAB6D62AB1AD68DE
          1D5B1D6DDF69DDB5DFA3AFF4CB82BEAB28B9F4DCC7576D6E2C7D6F696B9AE061
          CD7B5DEE639A929EF07F8E8FAD04EB8B81FF006DDC3FF7696E7D69CCB73F3FFC
          5EE7DC00B72EEAAFB0364343AC774EB5DB6777B7DCBC8D7AAF5BFF00F367FF00
          A0DFFC6D494FAA0E13A64E9294924924A62EE17CC7D5F3BF68F53CCEA1B3D3FB
          65F6E46CE76FAAF36ED9FE4EF5F47F5DCCB703A2750CEA4036E2635B7D61DA82
          EA98EB59BBFB4C5F3338CCA4A62AF742C3AB3FADE060DC48AB2F26AA2C2DD086
          DAF6D4EDBFD97AA2BA7FF16B4557FD76E995DAC6D8DDD6BC35E0386E65375B5B
          A1DF9D5D8C658C494FD00C111CA9A834429A4A58F0BC87FC7660ECEA5D3BA86F
          9FB463BE8D91C7A0F16EFDDFCBFB6AF5E3C2F3BFF1D14D5FF37716F2C6FAADCD
          6B18F8121AEAEF758C6BBF75EEAAA724A7C6938E53270929EFFEAC7F8ABFF9C1
          D0F1BABFED3FB37DA77FE87D0F523D3B1F47F39F68ABE97A5FB8AA7D74FF0017
          5FF35BA557D43F687DB3D4BDB8FE9FA3E946E65B6EFDDEB5FBBF995DBFF89AB6
          DB3EAB5CD7BDCF6D599657502490D6FA745BB59FBADF52CB2C51FF001D5FF896
          C5FF00C3F5FF00E79CA494F8AA4924929F6AFF00129FF896CAFF00C3F67FE79C
          5593FE3CFF00EF13FF0042BFF7516B7F894FFC4B657FE1FB3FF3CE2AC9FF001E
          7FF789FF00A15FFBA8929F2B49249253F4A7D53FFC4B746FFC218BFF009E6B5A
          CB27EA9FFE25BA37FE10C5FF00CF35AD6494A492492529729FE347FF00109D4F
          FEB1FF00B718EBAB5CD7F8C7C4CACDFA99D471B0E9B32722CF47653534BDEE8B
          E87BB6D75873DDB58DDC929F9E925ABFF34FEB4FFE5367FF00EC2DDFFA4D38FA
          A7F5A0193D1F3C01FF00756EFF00D26929C94975557F8B5FAED754CB19D31DB2
          C682375B4B0C1D7DD5D9757635DFC8735745D37FC4BE7BADDDD5B3EAAAB6B987
          6628758E7B666E67A97368650FFF004767A77FF2D253E68D8DC24C79AED3EA8F
          F8B7EABD7DD5E5E5876074BDCD2EB1E08B6DACB7D5FD4D8F66D7EFF67EB0FF00
          D07F84AFD6F4FD25E9BD17FC5EFD56E8CEAECA313ED19757D1C9C93EABA4385A
          DB057EDC7AACADCD6ECB69A6AFFD29D2B4424A73FA1744E9FD0706BE9BD3AAF4
          E8AF5738EAFB1E40DF7DCF1F4ED7FF00EABFD156C5A69249291DF5557D165373
          45955AD2CB18E01CD735C36BD8E63BDAF6B9BF9ABCC3EB97F8A875D6DDD4BEAE
          001CF734BFA668D682E27D57E2DCF2DAD8C6FB7F55FF00B62DFE63197A9A63C2
          4A7E5FCCC3C9C2B5D8D974D98F915C6FAAD6963C48DC3731E1AEF737E82ACBE9
          7EAFF57FA3F5CA3D0EA98ACCA68FA05D21ECD5AE77A57565B7D3B9D5FBFD27AE
          17ABFF00899C3B6CB2DE919CEC566D73998B7B3D568712E7359F686BEB7B28DB
          B2BF7D7936FF00C25C929F22497699BFE2A7EB8E359E9D545398D224DB45CC0D
          1C8D87ED8EC5B377FD6D625DF543EB5576BEA3D2335C58E2D259458F6C83B7D9
          656C731EDFE5312538CBD03FC4AFFE2AB2BFF0859FF9FB1572BFF34FEB48FF00
          BC6CFF00FD85BBFF0049AEDFFC52745EB1D3FEB2E45D9F8193895BF0AC635F7D
          3656D2E3663BC303AD637DDB5A929F5D4924925292492494B1E17CACBEA93C2F
          9592529757FE2BBFF177D33FEBFF00FB6F90B945D07D42EA981D23EB660F51EA
          36FA18947ABEA59B5CF8DF4DD533D9536CB3F9C7B7F31253F4524B94FF00C74B
          EA2FFE59FF00E0191FFBCE97FE3A5F517FF2CFFF0000C8FF00DE7494F5698F0B
          95FF00C74BEA2FFE59FF00E0191FFBCE98FF008D1FA8A447ED3FFC0323FF0079
          D25399FE396BB6CFAAB49631CE6D39B5BEC20121ADD9914EFB08F6B19EAD8CAD
          78A2F51FF199F5C3EAC75EFABF5E274DCD75F91564B2E0C14D8D0406DB51F51F
          90DC7F4D9B6DF6FA7EB7FC57F865E5C9297124E9CAD5E8FF0058FAD742DF6749
          C9762BAC735D610D690E2D6D8CAF7B6D6D8C7B76DF6FB367FC2AC949253D57FE
          3A3F5EBFF2CFFF0000C7FF00DE74E3FC687D79240FDA7FF8063FFEF3AE512494
          9F372AECDCABB3321DBEFC87BADB5F006E7BCEFB1D0D0D6FD372024924A757EA
          9FFE2A7A37FE1FC5FF00CFD5AFA502F9AFEA9FFE2A7A37FE1FC5FF00CFD5AFA5
          024A5D2492494A492492535BA8E061F52C1BB073AA6DF8D7B76DB5BB8239E47B
          98F63BDF5D8DFE6ACFD22F07FAF1F52733EABE5EE1BAFE997BA31B248D41FA5F
          66C9DBED66431BFF006FD7FA4A7FC3538FF40A1DF555752FA6E636CAAC696595
          BC6E6B9AE1B5EC7B0FD26BDA929F96538E57AA7D64FF0013EDFD264FD5DBE06A
          FF00B0DE7C03DFB71B275FF81AAAAB23FE32DCB5E7FD67EAE75CE8C48EA7836E
          33439AC16B86EA8B9CDF5056CC9AF7E3BDFB3F72D4949BA57D6EFAC5D1982BE9
          F9F6D358696B2A31656D0E22C3E9D17B6DA6B76EFCF63574B89FE393EB256EA9
          B7E3E25F5B23D576DB1963C4FBFDCCB7D2658E6FE7FA1FF5B5E7E924A7BEB7FC
          71FD67B2A7D6CA30EA3634B45ACAECDCD2E07DEC0FBDF5EF6FF2D8F5CB759FAC
          7D73AC927A9E75B92D2E6BC54E3B6A0E6B7D316331ABD98EC7ECFDCA965271CA
          4A593B74702B6BA4FD51FAC5D6582CE9D816DB5B9A5CDB4815D6E008ADDE9DF7
          BAAA6C77F218E5E8BF577FC4F60E3C6475FBBED960D462505CCA47D31FA4BCEC
          C8BFDAEA9FECFB37D0FD27AE929E33EA67D43CFF00AC792C7DAD7E37491EEB73
          3691BC07399E8E1978DB6DBB98F6EFFE6E9FF0BFA4F4E95EEF8F557456CA6963
          6AA6B686575306D6B5AD1B58C635BED6B5B1ED6A6C7A2BA18CA696359554D0D6
          35A000D6810D6B5A3F351D252978AFF8EAFF00C54E27FE10AFFF003F652F6977
          0BC63FC74536B7EB1625E58E153B0D95B5E41DA5CDB6F7BD8D77EF3196D6929F
          3D49249253F5524924929FFFD3F555E52EFF00F2E9FEBFF95EBD54AF2A77FF00
          970D7C46BE3FA824A703EA77F8BAB7EB3E164669CE1875D379A1A3D236B9CE6B
          5B63F737D4A36B76D957EFAEA9BF54BAE74CEA27A17D5A6D1D2F12CACBACEB77
          B99667DF5935B331947A7FA6A69C7FB463B6B6554627E9B1EABBED95FAEB270B
          FC54FD77C0B5D6E0752C7C3B1E0B4D955F7D7616CFD12EA68F243B7FC507D6EB
          EE7DF7E6E159758E2FB2C75B739C5CED5CF2E7E36EDE929DCFF997D77EAFDD55
          BD068A7AA758CB367DA7AFE63E1F41B4EC7D95E0DAE7B1AE6B5DEAFDA5B6675F
          6FEB75BE9F49FE9D93BFEAD7D79E85D54F5DE9998CFAC5D4326B7E35ECCB69AB
          D3ADCF194D38EDFB532AF4BD4ADDFA1AAEAD95EFF651FE8B1B37FC577D7CEA01
          833FAAE3E58AE7D36DF919166CDDC867A98FECDDB5ADF6A9DBFE2D3FC615D89F
          61BBACD366186B58319D9592EAB6B23D368A0E3FA7ECD8C494ED7D57E97F5C8D
          C3EB3DDD4B17AADD9D58A2EC4F588C7F4980FA7E9E56132DC4664E2656FA5D55
          5897E3FE932ECFB4FAB72CFEB5F51FEB3FD696FDAB23ADE16666635B65166257
          231B1BDC5F65355D535F67DA5BFA0F53D7C565DFE0EFBFF45FA5C7FF00C657EB
          4CCFDAB03FEDCBBFF79551EB9FE2C7AFF41E977F54CCBF11F8F8E1A5E2B7DA5C
          77B9B53435AFA2B6FD3B3F7D253D87F8BEE91F5BFA4E3B2FEA79F4E27D5FA859
          7FD98BEAB839AF607B6EAB26BF5AAC7C2F7FDA37B32BFC17F31FA6B2C5D153F5
          D3EA957D2BF69D594DAFA79C976397B69B1A3ED1603996B3D3F4B7EEB37FAF65
          FF0042CF7AE2FEB2B2FE95FE293A462D56EE666D953AEF6C4B2F17F5415EDFF8
          2BBD3FF31735FF00E6B8FF00E9FBFF00751253DB7F8C2C3FADF9B8D666F4BEA9
          53BEAEE4B6B26AF56AC5DADB19E8BBD4CBB0D0DC9C2C8DFF0046DCAF7D993FD1
          BF44AAF49FA91F5A3EAF06FD62FABD9187999990D70774FAE5D8CFC7B5DBD9F6
          6CEC9B98FB767EAF7B7D4753FCD7F48C8FFB535FEA951FB43FC5475CC7C9B1EE
          AF1ECBECA8077D1F42BA3A8575B77CEC63F25BBDEB99FAB1F503AC7D66C1B33B
          02DC6AAAAAD34B85EE783B9AD6587F9BA6EF66DB5A929EF323EA8FD7DC9CFAFE
          B3D5D528C2EB76D6DAEEC301DE8554ED87515DAF39ECB3DCDF59F4FD9FD0FB57
          A9732DFCF7D7C6E83F5C3EB1E5BAEEAB6DBF57BABF4DA598CFCFC76BE32E9B3F
          4ECAF75191562EEA2EADF75EFC7B3D27FDABD3B2BA7ECCB16DFF0013FF005BAF
          7875B998563835AD97DB73886B1BE954CFE8DF4595B7D36FF515D3FE2E7FC639
          C7FB29EB959C70CF4BD0FB564EC2C8D9E97A7E86CF4D25371BF517AF756CCBDD
          D758DC5EACC732FABEB3E25B3EA3ABF499563FECE0719F5BEAAF7FEB555787FA
          4C7A7F9EFA7936B27EA6F5CCCC9A7A775EA71BAF6039BE9B3AC4FD973B19AC63
          761B1CD16FDA58D73F23ECF8CFFB5FAD91FA5CDBEA58587FE2A7EBBE058EB707
          A962E258F6EC7BA8BEFADC5A4CEC26BC7F757ED55CFF00897FAD4E3272F0493D
          CD974FFEDAA4A43F5EBFC5D33EAE630EA58595EB611B054EAAF2D6DCD247B363
          C7A6CCADCFF537B2AA7D4A59FE9ABF5ADAF6BAD7FF009B39E7F56FCBD31650FF
          0012FF005A0739581FF6E5C7FF007556E7D6AC3B7033FF00C5F60DDB4DB8B755
          43DCD923754EE9F53B6CEDF6FB5253E9A9D30E13A4A524924929C9FAD9FF0089
          5EB3FF008432BFF3CD8BE6B5F50F52C2ABA874FC9C0B896D59753E9B0B79DB63
          4D6EDBFD972F985DAEBFDC92982EAFFC577FE2EFA67FD7FF00F6DF21728BA4FF
          00173954E27D75E976DEED8D2F7D4D304FBEEAADC7A5B0DFDFBADAD8929FA192
          506F32A69294BCFF00FC757FE25B17FF000FD7FF009E72977E785E75FE3AB2A8
          6F40C2C42E8BEDCBF56B641D59557657699FE4BB269494F8DA49270929F69FF1
          2BFF00896CAFFC3F67FE79C54BFC757FE25B17FF000FD7FF009E7294BFC4D556
          D7F55AE73D8E636DCCB2CA89040737D3A2ADCCFDE6FA95D95A8FF8EAFF00C4B6
          2FFE1FAFFF003CE524A7C552492494FB57F894FF00C4B657FE1FB3FF003CE2AC
          9FF1E7FF00789FFA15FF00BA8B5BFC4A7FE25B2BFF000FD9FF009E71564FF8F3
          FF00BC4FFD0AFF00DD4494F95A4924929FA53EA9FF00E25BA37FE10C5FFCF35A
          D6593F54FF00F12DD1BFF0862FFE79AD6B24A5249249294924924A5249249294
          924924A5249249294924924A5249249294924924A5249249294924924A524924
          9294924924A59DC7FAFF00B57CD3F587A6FECAEB39FD3835ED662E43EBABD410
          E3583FA0B1FA37F9CA7D3B1AF5F4B3BE895C4FF8C1FA8A3EB2D03A8611D9D5B1
          99E9B1AE3ECB6B04BFD177FA2B18E7D9E8DBF9FF0042DF66CB2B4A7C3125D59F
          F163F5E4FF00DE673FF0F8E3FF0047A6FF00C6BBEBD7FE567FE0F8FF00FBD092
          9E5525D57FE35DF5EBFF002B3FF07C7FFDE84BFF001AEFAF5FF959FF0083E3FF
          00EF424A79549755FF008D77D7AFFCACFF00C1F1FF00F7A12FFC6BBEBD7FE567
          FE0F8FFF00BD0929E5525D57FE35DF5EBFF2B3FF0007C7FF00DE84BFF1AEFAF5
          FF00959FF83E3FFEF424A7960BB4FF00165F56FA7F5EEB3914F54C5764E1558C
          E713BAC6B45A5F57A5BADA1D5FB9F5FAFE9B37FBD551FE2BFEBC83FF00267FE0
          F8FF00FBD0BBAFF159F54BAFF40CCCFBBAAD3F6565D5D6CAABF51B66F20BDC5F
          18F91652DF4BFE1A9B2DFD2FE82DA7F58F5D29DAFF00C6B7EA2FFE567FE0F91F
          FBD097FE35DF5146BFB33FF07C8FFDE85D5A4929F99FEB162D387D7BA961E3B7
          6518D957D54B249DAC658FAEB6CB8B9DF41AB356AFD6CFFC54F59FFC3F95FF00
          9FAC594929D5FAA7FF008A9E8DFF0087F17FF3F56BE940BE6BFAA7FF008A9E8D
          FF0087F17FF3F56BE940929749249252C785E5DFE337EB97D63E83D7E8C4E939
          9F66A1F88CB5ECF4EA7FBDD65F5B9D37D563BE854C5EA4BC57FC757FE2A713FF
          000857FF009FB2925393FF008E8FD7AFFCB3FF00C031FF00F79D2FFC747EBD7F
          E59FFE018FFF00BCEB9549253D57FE3A3F5EBFF2CFFF0000C7FF00DE74BFF1D0
          FAF27FEF4FFF0000C7FF00DE75CAA4929D1EA9D673BAA38D999E8BAC2E73CBEB
          A29A5CE73C82F7DCFC5AA875AED3FC2ACE492494B8E55EE99D5F37A5BFD5C3F4
          45BB9AF6BEDA69B9CD733563EA7E4D577A4E6BBFD1AA0924A7ABFF00C73FEBC0
          123A97FE018FFF00BCE9BFF1D1FAF5FF00967FF8063FFEF3AE552494F55FF8E8
          FD7AFF00CB3FFC031FFF0079D2FF00C747EBD7FE59FF00E018FF00FBCEB95492
          53D58FF1A1F5E675EA7FF8063FFEF3AC9EB9F58FAC75E7576F54C9764BA91B6B
          F6B58D683E1552D657BDFF009EF594924A524924929FAA92492494FF00FFD4F5
          42B8FEBBFE2CFA1F5DEAD7756CBC8CAAB2320377B697D6D68D8C652DFA74D8EF
          A15AEC52494F9FFF00E32DF558FF00DAACFF00FB72AFFDE64BFF00195FAABFF7
          2B3FFEDCA7FF007957A024929F3FFF00C657EAAFFDCACFFF00B729FF00DE54BF
          F195FAADFF0072B3FF00EDCA7FF7957A024929F32EB5FE293EADF4EE8F9D9F56
          4E6BACC4C6B6F635EFA8B49AD8EB61C1B8F5BBF37F7D6174723FF1A0EB649263
          398D8931A3F01D1FBBDD7AA7D6CFFC4B759FFC2193FF009E6C5E57D1B4FF0013
          BD77FF000F33FEABA7A4A743A7D39DF5E3FC5CB3A6D1657F6FE89780CA89136D
          75D6F663336B767D9B7D37DB450E733F4B661FFC67A786DC0CEB3FC5CD98B5E3
          5AFBEAEBC1B65218E2F6B8E3B71831F5EDF639D916D74FFC6BEBAFFC22BBFE2B
          3A36DCBBFEB566BFD1E9FD22BBA2C0412EB3D3FD36E635AF7ECA712E7BDFFF00
          08FAFF00E15754DFF1A151FAAAFEBEFE9CE6C667D86BC616876E77A6DC8F52CB
          3D267A6CF4BD4F67A56A4A703A8B32FEA37F8BD3D22F7B7F69F5DB6C26B68D2A
          A8B29AF2DBBF6D8CB7F46CAA9B3F9AF7E5FE8FFA3FBF0263FC57989D7AE473A7
          F45F0FECAD2FF19DD25D7598DF5BB143BF67F59A687385846F65A6AFD156E60F
          CD7E2D55BBF9CB7F4ACBBFE0565BBFFC96EBFF0097BFFBA6929ECBA27F8A4FAB
          9D47A3E0F50BF2735B6E663557BC31F50683631B6FB77E3D8EFCEFDE577FF195
          FAABFF0072B3FF00EDCA7FF795755F54FF00F12DD1BFF0862FFE79AD6B24A7CF
          FF00F195FAABFF0072B3FF00EDCA7FF7952FFC657EAAFF00DCACFF00FB729FFD
          E55E80924A7CFF00FF00195FAABFF72B3FFEDCA7FF007951B03FC527D5CE9D9D
          8D9F464E69B716E65F587BEA2DDD5B85ADDCD6E3B3F77F79774924A582749249
          4A49249252CEE3FD7FDABE69FAC3D37F65759CFE9C1AF6B31721F5D5EA0871AC
          1FD058FD1BFCE53E9D8D7AFA59DC185E2BFE387A38C3EBD57546996F54AFDCD2
          64B6CC715D0FF6ED6EDADD4BB1B67BDFFA4F5D253C02B7D2337F67F55C3EA1B3
          D4FB1DF5DFB26377A4F6DBB3FB5B1544EDE424A7EA668D7CFB8E614D727FE2D3
          AD7ED6FAA98BB9BB6CC0FD46C810D3E8B59E8BD9EE7FFDA67D1EA7D0FD3FABEC
          5D624A62EFA2578DFF008E6EA42FEB587D39AE6B99878FEA3A0CBDB65EEF7D76
          FBBFD0E3E3D8DFF8C5EC5916D74D165D6BDB5555B4BECB1E76B5AD68DCF7BDC7
          E8B58D5F39FD70EAECEB5F58FA8752ACB5D55D716D2F687343AAAC7D9F19FB6C
          F7B5CFA2AAFD4DDFE13FCC494E2A71CA649253A78DF587AF61D2DC6C4EA5978D
          433E8554DF631824EE3B6B63DADF74A86775CEB3D428146767E4E5D41C1E197D
          AFB1A1C01687B5B6BDDB5DB5CB3D2494A49249253ED5FE253FF12D95FF0087EC
          FF00CF38AB27FC79FF00DE27FE857FEEA2D6FF00129FF896CAFF00C3F67FE79C
          5593FE3CFF00EF13FF0042BFF751253E56924924A7E94FAA7FF896E8DFF84317
          FF003CD6B5964FD53FFC4B746FFC218BFF009E6B5AC9294924924A52499C61A7
          F82F09EA3FE347EB61CEC9774FCF75384EB1EEC6ADD4505CDA8BA69AC9752F77
          B6BDBF9C929F77497CFF00FF008E8FD7AFFCB3FF00C031FF00F79D2FFC747EBD
          7FE59FFE018FFF00BCE929FA0125F3FF00FE3A3F5EBFF2CFFF0000C7FF00DE74
          BFF1D1FAF5FF00967FF8063FFEF3A4A7E80497CFFF00F8E8FD7AFF00CB3FFC03
          1FFF0079D2FF00C747EBD7FE59FF00E018FF00FBCE929FA0125F3FFF00E3A3F5
          EBFF002CFF00F00C7FFDE74BFF001D1FAF5FF967FF008063FF00EF3A4A7E8049
          7CFF00FF008E8FD7AFFCB3FF00C031FF00F79D2FFC747EBD7FE59FFE018FFF00
          BCE929FA0125F3FF00FE3A3F5EBFF2CFFF0000C7FF00DE74BFF1D1FAF5FF0096
          7FF8063FFEF3A4A7E80497CFFF00F8E8FD7AFF00CB3FFC031FFF0079D2FF00C7
          47EBD7FE59FF00E018FF00FBCE929FA0125F3FFF00E3A3F5EBFF002CFF00F00C
          7FFDE74E3FC687D7A27FE53FFC031FFF0079D253EFE92E3BFC5875DEABD77A15
          F9BD56FF00B4E4332DF531FB18CF636BA6C0DDB432B67D3B5EBB1494A4924925
          292492494A4924C78494BA63C2C7FAC1F59FA4FD5EC6191D4AFF004F7EEF4AA6
          82EB2C730177A7531BFE67AB67E877AF25FAC5FE34BEB0F550EAB09FFB2B19DF
          998EE3EB18F4DDFA4CC8658CF7B1DB7ECDF67FF0955DEB24A7D7FA8FD61E89D2
          B70EA19D46358D67ABE93EC68B0B3DD0EAA973BD4B376CFCC62E4BA9FF008E3F
          ABD8BEA37028BFA858C8F4DDB4534BE4B777E92D9C8AF637FEE9FD35E399175D
          7D8FBAF7BACB6C717D963CC9739DEE73DC49FA682929F4DCDFF1D99EEA87D83A
          65345A1C0937D8EB9A5B1C0654CC4D8EFF00AE2A3FF8F57D6AFF00B8B81FF6DD
          DFFBD4B8049253E8557F8EAFAC9EAB3D6C4C2356E1BC3196B5C5B3EE0D73AFB5
          ADFF00B6D6AD5FE3BAA758C6DBD1DCCA9CE1BDECC90E706CFE6B5D8F5EF77F21
          D633FE3179424929F77E9DFE34BEA8E76D6BB22CC2B1EF15B2BC9AC89DDB62C3
          651EBE3D55FBBFC25CCD8BADA2DAAEA59752F6D9558D0E63D87735CD700E6BD8
          E6FB5CCDBFBABE5C1CABFD37AD757E936EFE9797762B8B9AE77A4E2D6BCB0CD7
          EAD63F477B7DDFCDDAD494FB067FF8A4FAB9D473F273AFC9CD16E5DCFBEC0C7D
          41A1D638DAED81D8EF76DDCEFDE41FFC657EAAFF00DCACFF00FB729FFDE5547E
          A9FF008D9AB21D5E07D608AAEB1CCAEACE60DB5996ED2ECC6EEFD03DCF67F3D4
          33ECFF00A5FE631FD35E918F6D57D4CBA97B6CAAC68731EC3B9AE6B80731CC7B
          7DAE66DFDC494F1981FE28BEAE74FCEC6CFC7C9CD75D897577D61EFA8B4BAB73
          6C6EE0DC767EEFEF2ED9BC8D14D2494A49249252C5713F5CFF00C5CFFCEBEAB5
          F50FDA1F62F4A86E3FA7E8FAB3B5F6DBBF77AD47FA65DBA67705253E57FF008C
          67FE6EFF00F657FF007ED2FF00C633FF00377FFB2BFF00BF6BABFACDFE307A37
          D58EA0CC1EA1464DB6D9536F6BA86B1CDDAE75950DDEADD57BBF42B27FF1EAFA
          ABFF007173FF00EDBA7FF7A925395FF8C67FE6EFFF00657FF7ED2FFC633FF377
          FF00B2BFFBF6B57FF1E9FAAC74FB2E7FFDB74FFEF52ED7A6E6D7D4307173EA0E
          6D5974B2FADAFD086D8D6DACDD05EDDFEE494F9AFF00E31B1FF7B7FF00B2BFFB
          F6B1FEB5FF008ADB7EAFF44BBAB33A8372DB8EE60B186A351DAF736969ADC2DB
          DB63BD4B1BFB8BDB0F0B8DFF001AD954E3FD4ACCA6C76D7653E9AA9104EE78B6
          BC8DBA0DADFD063DAF494F8424924929EDBEA67F8B91F5AFA5D9D40750FB17A5
          7BB1FD3F47D59DACAADDFBBD6A3FD32DFF00FC633FF377FF00B2BFFBF6B57FC4
          A7FE25B2BFF0FD9FF9E71577E78494F95FFE319FF9BBFF00D95FFDFB4BFF0018
          CFFCDDFF00ECAFFEFDAEABFC60FD67CFFAB1D1E9EA180CAACB6CC96505B70739
          9B5CCBAC9FD1BEAF77E8BF7979FF00FE3D5F5ABFEE2E07FDB777FEF524A75BFF
          0018DFFCDDFF00ECAFFEFDAE2FEBAFD566FD55EA5574EFB4FDB0DB8EDC8F5767
          A51B9F6D5B367A97FF00A1FDE5BFFF008F57D693FF0069703FEDBBBFF7A973DF
          5ABEB7754FAD0FA2DEA0DAAB18AD736BAE8690C05E41B1FF00A475B66F7ECAFF
          003FFC1A4A7012492494FD54924924A7FFD5F554924925292492494A49249253
          93F5B3FF0012DD67FF0008657FE79B1795F46FFF00239D77FF000FB3FEABA6AF
          54FAD9FF00896EB3FF008432BFF3CD8BCAFA37FF0091CEBBFF0087D9FF0057D3
          52530E858B939FFE2B7AC62E15E05D8F99F6ACAC7F612FC763287BB7EF3FA06E
          EA1F91EA7F84FB1FA4B3B9FF001604F6FDBBFF00BA8A3FE2F3A965E37D63C7C2
          AEB39589D4DDF66CDC28DCCB2AB01ADEFBABDB66E662B1CEBFFE2596D7FCDD96
          2F5C1F51FEAD330E8E9F5E216E0D196338E3B9CE7B2CB830D0DF5C5EEB5CEAB6
          BBF98FD1D5FBFF00A3F59253E69D571BA862FF008AAE9CCCE10CB3A90B70EB20
          873697D79246F1B59FCEDDEBE457FCE7E8ADAD679FFF0025BFFB5EFF00DD44FF
          00E313ABE7E5F5DBFA6DF57D9B0BA4D8EA3030F6060AEA0DAAADEC22BA9FE964
          B28A726AFDCAEDFD17E8D31FFF0025BE1FE5EFFDD3494FB4FD53FF00C4B746FF
          00C218BFF9E6B5ACB27EA9FF00E25BA37FE10C5FFCF35AD6494A492492529249
          2494A4924925292492494B3B85CC7F8C1FABE7AF7D5CBE96978BB109CAC7656D
          DC5F656CB1ADA5CCFA5FA5658EADABA84CEE1253F2CB86D11AFE2A217A0FF8D3
          FA9B6F4FCDB3AEE054E76065BB7E5BB717FA590F71F51EEFF478F90E73367BDF
          FAC7A95FE8BF56AD79EA4A7AAFA87F5BACFAB3D581B369E9F98EAD99B332D682
          5ACC8AF636C7EFC6F56D77A6C67E97F9B5EE3D33AA74EEAD8C32FA7E4D79543B
          4F52B74C1DAD7ECB1BF4AAB1AD7FF316FE957CC8924A7D6BFC627F8C5C46E2DB
          D13A2DB5E4BB218599996C22CADB5BC43B1F1DDEEAEEB6CADDFA6B7F9BABF9BF
          E91FD1BC9DDC4A8A71CA4A50E57A0FD41FF1718BF58BA75D9FD55F91450E78AF
          13D02D617EC07D7B1DEB516B1D56F2CAAB7B3FC2D590B97FAAFF0056B2FEB375
          46F4FC57B6A869B2FB9FC5753486D966C9DF6BF73DAC633F7FF3EB67E917D0BD
          3B030FA7E2D385834B71F171DBB2AA99C01E33F49EE7B8EF7BDFFCEFF3BF4D25
          3C57FE32BF55BFEE567FFDB94FFEF2AE63FC617D40E8DF567A2D39D83764DB75
          B92CA1C2F730B435CCBEDF6FA54D1EEFD0AF675E7FFE3ABFF12D8BFF0087EBFF
          00CF394929F1549249253ED5FE253FF12D95FF0087ECFF00CF38AB27FC79FF00
          DE27FE857FEEA2D6FF00129FF896CAFF00C3F67FE79C5593FE3CFF00EF13FF00
          42BFF751253E56924924A7E94FAA7FF896E8DFF84317FF003CD6B5964FD53FFC
          4B746FFC218BFF009E6B5AC9294924924A58F0BE565F543FE898FC395E0D7FF8
          B0FAE65EF14F4F2F60710C2EB71D8E2DFCD73AB1956EC77EF7E99E929E4125D5
          7FE35DF5EBFF002B3FF07C7FFDE84BFF001AEFAF5FF959FF0083E3FF00EF424A
          79549755FF008D77D7AFFCACFF00C1F1FF00F7A12FFC6BBEBD7FE567FE0F8FFF
          00BD0929E5525D57FE35DF5EBFF2B3FF0007C7FF00DE84E3FC57FD7A067F667F
          E0F8FF00FBD0929E5125A5D6FA0F55E8392CC4EAB47D9AFB2B16B6BDEC7FB097
          31AE9A5F637E9D6F59A92949271CAE83A67D43FAD7D5F02BEA1D3B07D7C4BF77
          A767AD4B776C71A9FECB6EAECF6D8C7A4A79E49755FF008D77D7AFFCACFF00C1
          F1FF00F7A12FFC6BBEBD7FE567FE0F8FFF00BD0929E5525D57FE35DF5EBFF2B3
          FF0007C7FF00DE84BFF1AEFAF5FF00959FF83E3FFEF424A79549755FF8D77D7A
          FF00CACFFC1F1FFF007A138FF15FF5E81FF933FF0007C7FF00DE8494F7FF00E2
          53FF0012D95FF87ECFFCF38ABD0171DFE2C3A1755E85D0AFC2EAB47D9B21F96F
          B58CDEC7FB1D5D35876EA1F633E9D4F5D8A4A5249249294924924A59DF44AE5B
          EBA7D75C4FAB3870C2DBFA95ED271F1C990071F68C88FF0002D77E6FF87FE6E9
          5D0F51CDABA7F4FC9CFB839D56252FBEC6B20B8B6B69B5E19B8B1BBB6B7F797C
          DBD6BAB66759EA591D4F34B4E4E4B839FB06D680D0DAEB631BABB6575B18CFFC
          F9EF4948FA8F50CCEA5956E6E6DCEBF22F76FB2C7724FCBDACD9FE0EBFCC67D0
          F4D8AA24ACF4EC0CCEA59D4E0E152EC8C9BDDB6AA99C93CF7F6B58D6FBEC7BFD
          95D7F4D2535C72BA1E8DF51FEB4757756EC5C1B194BB61F5F23F435EC7FD1B9A
          EBA3D7A9ADFF00B8F5DCBD47EA77F8B4E9DD047DAB3FD3EA3D45DB4B5EE64D54
          16EDB3F566D9F4ECF59BFD29FE9D9E9FF37E8FE9BD6ED1A21253E4B87FE24B3A
          DAC9CFEA94E3DBB880DA2A75CD2D81EF365AFC3735FBB77B3D3563FF0018CFFC
          DDFF00ECAFFEFDAF5549253E55FF008C6C6BFB6FFF00657FF7ED63752FF145F5
          A31039D8668EA15FA9B5ADADFB2CD9EE2DB9ECC86D7537F377D75645BFF5CFA6
          BDB931494FCBF998793856BB1B2E9B31F22B8DF55AD2C7891B86E63C35DEE6FD
          05597D33D5FA274CEB58870FA9D0DC9C7DC1E1A490439BF45F5D9596DB5BFF00
          37D8BC47EBAFD44EA3F56F25F654C7E574977BAACB0D9F4C170636ACBD836D76
          6E7FA6CB3D95E4FF0081FF00434A53CAB75700BACFA99F5F33FEAE64B196B9F9
          3D24FB6DC3DC4EC05CE7FAD861E76D56EE7BDDB3F9BBBFC2FE93D3B97249DA25
          C358F3F0494FD478F6D77D6CBA97B6DA6C687D76B0EE6B9AE1B98F639BED735D
          3ED7232F26FF00141F5A5ECC93F56B24FE8ADF52EC1712E243DA37DD8BB7F48C
          655E932CC867F35EFF005BF9CFB42F59494A4924925292492494F8AFF8EAFF00
          C54E27FE10AFFF003F652F3F5E81FE3ABFF15389FF00842BFF00CFD94BCFD252
          97D29F54FF00F12DD1BFF0862FFE79AD7CD6BE94FAA7FF00896E8DFF0084317F
          F3CD6929D65E7FFE3ABFF12D8BFF0087EBFF00CF394BBF2B9FFAEBF576DFAC5F
          57F23A6E37A2329EEADF8F65F3B58E63D85EF0F636CB2B73A8F56AF631253F3B
          24BBFF00FC657EB57FDCAC0FFB72EFFDE553ABFC4B7D6416B3D6CBC26D5B87A8
          E63AD738367DCE6B1F8F5B5CE6B7FE11253D47F894FF00C4B657FE1FB3FF003C
          E2AF405CEFD4AFAAC7EABF4CB303ED5F6B165EEBF7FA7E946E65556CD9EA5DFE
          87F797425253C07F8EAFFC4B62FF00E1FAFF00F3CE52F155F4F6674CE9FD418D
          AB3F1A9CBA9AEDEDAEF636D68700581E196877BB6B955FF9A7F55BFF0029B03F
          F6169FFD26929F9AD25F499FAA7F55A34E8D81FF00B0B4FF00E935E59FE37BA7
          E174EEA7834606057878EEA0BFD4A6AAEAAEC797ED7307A34D6E7DB4B5B5FA9B
          EEB7F9EA7F454FF399094F9FA4924929FAA92492494FFFD6F554924925292492
          494A4924925393F5B3FF0012DD67FF0008657FE79B1795F46FFF00239D77FF00
          0FB3FEAFA6AF54FAD9FF00896EB3FF008432BFF3CD8BCAFA37FF0091CEBBFF00
          87D9FF0055D352532FF15955ADC1FAC79F84C73BA9E361ECC37325CEDD636FB7
          636BFA2FDF762E3ACCAAEB31FF00C5BB6FA5EEAEDABAF07D6F6CB5CD73717735
          ED737F3DAE1FD8589F57BAFE7FD5FEA4CEA58247AAC6B98EADFBB63DAF1B4B2D
          656EAFD46B5DFA5AD9BBF9DF4D7B5D3F56FEAF1FAB8CBEEE8CE65248EAF674A6
          6F7B8657A41EEA2BA0BAADEE6FF476626C650FFF0042C494F9DFF8CB35E4E2FD
          5BEA76DFEAF50CCE9959C9612D0621975771A9BEE67AF6E4657FC1FE8BF47F41
          679FFF0025BFFB5EFF00DD3599F593EB1E7FD63CFF00B7F50D9EA36B6D4C6D63
          6B5AC6FBB680EDEFFE71F63FE9AD33FF00E4B7FF006BDFFBA6929F69FAA7FF00
          896E8DFF0084317FF3CD6B5964FD53FF00C4B746FF00C218BFF9E6B5AC929492
          4924A5249249294924924A5249249294924924A43998B466625F8992DF528C8A
          DD55CC923731E0B2C6EE66D7FB98EFCC5E29F5DBFC5AE6742B3ED7D29B76774B
          2D97BA37DB496B4BECFB47A4D66EA36B1D63723656CFF0567F82FB47B8A8BBE8
          9494FCB2E10A2BE82EB7FE2F3EABF5BB2CB72317ECF936EAEC9C63E93E777A8E
          7967BB1ADB5FB9ECB6DBE8B6C5896FF895FAB5E93C53999ADB4B48ADCF754E68
          711ED73EB6D1539ED6BBF33D4624A7C647216E7D5BFAA5D6BEB25BE9E055B6B6
          EEDD9764B6869686BB63AD6B5FFA576FADBE956CF57FC22F53C1FF00147F54F1
          6D365E3273416C0AAEB76B01D0EF1F666D16767B7F496ECD8FFEDAECF1E8AE86
          329A58D655534358D680035A0435AD68FCD494E4FD53FAAFD3BEAD6037131017
          DD643B2B29C21F6BC0FCEFDCAABFF0147F81FF008DF52CBB75249252979FFF00
          8EAFFC4B62FF00E1FAFF00F3CE52F405E7FF00E3ABFF0012D8BFF87EBFFCF394
          929F1549249253ED5FE253FF0012D95FF87ECFFCF38AB27FC79FFDE27FE857FE
          EA2D6FF129FF00896CAFFC3F67FE79C5593FE3CFFEF13FF42BFF00751253E569
          24924A7E94FAA7FF00896E8DFF0084317FF3CD6B5964FD53FF00C4B746FF00C2
          18BFF9E6B5AC9294924924A5249249294924924A5249249294924924A7C57FC7
          57FE2A713FF0857FF9FB2979FAF40FF1D5FF008A9C4FFC215FFE7ECA5E7E9294
          BDFF00FC577FE217A67FD7FF00F6E3217802F7FF00F15DFF00885E99FF005FFF
          00DB8C8494F56924924A5249249294924924A5249249294924924A5263C274C7
          8494F0DFE37F32DC6FAA26A60696E6E4D545933A347A996D2CFE57A98AD5E1EB
          DC3FC6FE1DB93F544DAC2D0DC2C9AAFB267569F5311A19FCAF5329ABC3D252ED
          3057A77F896E9155D979DD62DA8B9D8AD6D18B6168D81D66F393B1C5BFCFD75B
          296FE8DFECA727FE1D7988E42F45FF00133D5F1F17AD6574BB347F51ADAEA1DA
          EAFC7F56CF4B686B9BEFA2DB6EF51EFF00F05E9FE7A4A7D912492494A4924925
          292492494A547AE74DABAB748CCE9B6EDDB9553AB0E7B43C35C47E8EED8EFF00
          4366DB59FD4579667D65EAC3A2F41CEEA64B43B1AA73AADC0B9A6D77E8F1AB73
          59EEFD2643EBAD253F35394511F11F910D253ADF5532FEC7F59BA5E49B7ECECA
          F2AAF56DDDB00ACBDACBF7BFFD1BA9758DB3FE0D7D22C3267FD7FD5CBE6BFAB5
          80DEA3F583A760BEA75F55F935B6EAD80926ADC0E41FD1FBBD947A8F72FA5180
          E80F6F39F924A66924924A524924929F15FF001D5FF8A9C4FF00C215FF00E7EC
          A5E7EBD03FC757FE2A713FF0857FF9FB2979FA4A52FA53EA9FFE25BA37FE10C5
          FF00CF35AF9B1BC895F407D59FACDF5731FEAEF4AA2FEAB8555D56163B2DADF9
          1535CD736AADAE63DAEB376EDC1253D4A4B27FE767D56FFCB9C0FF00D8AA7FF4
          A25FF3B3EAB7FE5CE07FEC553FFA51253AC92C9FF9D9F55BFF002E703FF62A9F
          FD2897FCECFAADFF0097381FFB154FFE94494EB24B27FE767D56FF00CB9C0FFD
          8AA7FF004A25FF003B3EAB7FE5CE07FEC553FF00A51253AC92C9FF009D9F55BF
          F2E703FF0062A9FF00D2897FCECFAADFF97381FF00B154FF00E94494EA9E1723
          F5F7EA4DBF5B2BC53565B716CC16DDB1AEACBC58EB7D286B9ED757E935BE87FA
          3B16CFFCECFAADFF0097381FFB154FFE944BFE767D56FF00CB9C0FFD8AA7FF00
          4A24A7CABFF197FAD07FED5604FF00C65DFF00BCAA757F895FAC9EAB3D7CCC26
          525C058E63AD7B8367DEE656EA2A6D8E6B7F33D5AFFE317A97FCECFAADFF0097
          381FFB154FFE944C7EB67D568FF96703FF0062A9FF00D28929D381E3DFCB9FFC
          9A49E47876949253FFD7F554924925292492494A4924925393F5B3FF0012DD67
          FF000864FF00E79B1795746FFF0023BD73FF000FB3FEAFA72F55FAD9FF00896E
          B3FF008432BFF3CD8BCAFA37FF0091CEBBFF0087D9FF0057D3525399FE2E3EAF
          E2F5EFACACA72CFE83118731F4ED6B85BE9D95B1B8F60B3D9E93DF6FE97D9FA4
          ABF46BB8AFEB0F5AAC16B329D0EFAD8EE987706BC8C471367D981B18F76DF7FB
          3FD0FD0AD798FD59FAC195F577AB53D4F1C7A82BF6DB41716B6CADC3DF53CB7F
          EDCABFD1DDE9D9EFD8BD159D27AB5BF542EEBF14E3640EA8EFAD18D8D613634D
          4D67AECA2EB2AF4F6B9D5EEB3FEDBADFF66DFF00A04A794FF1A3D231FA5FD6AB
          4D07DB9F5B730B353B5F639ECBBDEF2E73FD4BA9B2EFFAEA01FF00F25BFF00B5
          EFFDD4543EB57D64CBFAC9D4DFD432DADA835A2AA2A670CADA4B995EFF00A763
          B758FDFF00FA2FF9B5A07FFC96FF00ED7BFF0074D253ED3F54FF00F12DD1BFF0
          862FFE79AD6B2C9FAA7FF896E8DFF84317FF003CD6B5925292492494A4924925
          292492494A4924925292492494A4924925292492494A4924925292492494A5E7
          FF00E3ABFF0012D8BFF87EBFFCF394BD0179FF00F8EAFF00C4B62FFE1FAFFF00
          3CE524A7C552492494FB57F894FF00C4B657FE1FB3FF003CE2AC9FF1E7FF0078
          9FFA15FF00BA8B5BFC4A7FE25B2BFF000FD9FF009E71564FF8F3FF00BC4FFD0A
          FF00DD4494F95A4924929FA53EA9FF00E25BA37FE10C5FFCF35AD6593F54FF00
          F12DD1BFF0862FFE79AD6B24A5249249294924924A5249249294924924A52492
          4929F15FF1D5FF008A9C4FFC215FFE7ECA5E7EBD03FC757FE2A713FF000857FF
          009FB2979FA4A52F7FFF0015DFF885E99FF5FF00FDB8C85E00BDFF00FC577FE2
          17A67FD7FF00F6E321253D5A49249294924924A5249249294924924A52492492
          94924924A419B8D4E5E1DF8990DDF46456EAAD64912C78D9636590FF00731DF9
          8BE6BEB7D232BA2F52C8E999A1ADC9C6706BF61DCD7020595BDAFD3F9CA9F5D9
          FF0057B3E82FA69DF44AE5BEBA7D4AC4FACD872C0DA3A950D231F20880473F67
          C88FF02E77E77F80FE729494FCFE898F75B8F7D77D2F7576D4E0FAEC6921CD73
          7DCC7B1CDF735CC723F51E9F99D372ADC2CDA5D46450ED9656EE41F97B5FBFFC
          1D9F9ECFA1EA3154494FB07D51FF001AF8B96CAF07EB0118B941AC6B7384FA57
          3C9D9FA5631BFA9BF6963F7FF46FE7ADFD07E8A9B3D131EDAAFA99752F6D9558
          D0E63D87735CD700E6398F6FB5CCDBFB8BE5C1CABFD37AD756E956EFE9B976E2
          12E6B9DE93CB5AF2C25CCF559FCDDCDF77D0B7D8929FA6925E1D89FE377EB662
          D45977D9735C4922DBEA21D1006C1F657E257B3DBFE8F7AB98FF00E3A7AEB7D4
          FB4E162D92C22AF4BD4AE1FF009AF7FA96647A8CFF0083FD124A7D9533B830BC
          57FF001E6FACFC1C5C03C83FA3B7FF007A962F57FAFF00F5ABAB57653939EEAF
          1AC2EDD8F4015376B839AEA8BEB67AF653B1FF00CDDD6DA929F65EB7F5D7EAE7
          4273AAEA198D192D6B9DF65AA6CB6400F6D6F657BBECEFB1AE6FA5F697D55FF2
          D78A7D6DFADDD4FEB46536FCCDB5E3D2E7FD9315A07E89AFD81ED36ED6D9739D
          E8B3D4759F9FFCD574FF0034B09C654525293B641D126E8E05759F533EA1E7FD
          63C963ED6BF1BA48F75B99B48DE039CCF470CBC6DB6DDCC7B77FF374FF0085FD
          27A74A4A7A2FF141F562CB335DF58F26B7368A1AEAB009040758E0EAB22E63B7
          B77B68AF763FBABF4BD4BBFEEB2F5B41C7AABA2B6534B1B5535B432BA9836B5A
          D68DAC631ADF6B5AD8F6B51925292492494A4CEE13A67705253E31FE3A29B5BF
          58B12F2C70A9D86CADAF20ED2E6DB7BDEC6BBF798CB6B5E7ABDE3FC64FD56B3E
          B0745F57184E774EDF752D8738BD9B66FC6AD95EEFD2DFB2A7D5FA37FE96BF45
          7865F4DB45AFA6E63AAB6B716595BC16B9AE69DAE63DAEF735EDFCF494892492
          494A4924925292492494A4924925292492494A49249252924938E5253ED1FB6B
          FE133FFF00125F6EFE99FF00827F47FF00957FF369FF00B2692ADFB23AA7FDC4
          BFFF00119F63FE6DDFD23FEE271FD2BFEEBFF38924A7FFD0F554924925292492
          494A4924925393F5B3FF0012DD67FF000864FF00E79B179D7D49E8D93D77FC59
          F55E958858DBF233BD86C2437D8306E3B9CD0E77D1AD7A4FD61663D9D0FA8D79
          56FA18EFC5B9B75DB4BF630D6F1659E9B7DCFD8CF76D5E27FF0037FEA2C40FAD
          907B9FD9D911FF0054929D46FF0089AFAD4449C8C167FD72DFFBEE3957FF00F1
          B7FAFF00FB24743FDA78A7A61B3D4FB3FAB66D0EFA51BBECDEA7A5BFF49E87F3
          3EB7E9FF009D5CD7FCDDFA8BFF00CF77FF000BB23FF2697FCDDFA89FFCF77FF0
          B723FF0026929D6FFC663EB4CEB93831E3EA5BFF00BCCA5F5A3EACE7FD59FF00
          17CCE9F9EFAACB6CEAEDBC3A82E2DDAEC6B2AFCF6D7FE87F7563FF00CDDFA89F
          FCF77FF0B723FF0026A43EAF7D46EDF5B7E7FB3B23FF0026929F68FAA7FF0089
          6E8DFF0084317FF3CD6B5966FD5DAE9AFA0F4DAF1EDF5E8662D0DA6EDA59BD82
          B67A767A6EF757BD9F98B4925292492494A4924925292492494A492492529249
          2494A4924925292492494A4924925292492494B3B8F05C6FF8CEE83D5BAF742A
          30BA551F69BD996CB5CCDCC6431B5DEC73B7DEEAFF003ED6AECD2494FCFF00FF
          008D77D7AFFCACFF00C1F1FF00F7A138FF0015FF005E81FF00933FF07C7FFDE8
          5EFE924A78DFF165D0FAAF41E839187D568FB3643F2DF6B19BD8FF0063ABA2B0
          EDD43DECFA753D627F8E2E95D4FA97EC91D3B0EFCC357DA7D41456FB766EFB2E
          CDDE8B5FB376C5E9A924A7E6AFF9A7F5A7FF0029B3FF00F616EFFD269C7D53FA
          D13AF46CF8FF00C2B77FE935F4A24929CAFAAF55B4FD5CE954DCC7576D5858EC
          B2B78DA5AE6D55B1EC735DEE6BB72D5492494A4924925292492494A492492529
          2492494A4C53A4929E17EBC7F8BBB7EB47506F52AB3463594E30C7650EA8B838
          B5D6DAD2EB858CF4F77ADFE8AC5C77FE32FF005A0FFDAAC09FF8CBBFF7957B5A
          4929F17ABFC4AFD64F559EBE5E10AB70F50B1F6B9C1B3EE7358EA2A6BF6FFC62
          F51FAADD13F60743C6E91EB7DA7ECDBFF4DB766EDF65991FCDEFB767F3BFBEB5
          D2494A4924925292492494A4924925292492494A4924925292492494A4C784E9
          24A71BEB07D58E93F5871863F52A3D4D9BBD2B5A4B6CADCF05BEA54F6FF9FE95
          9FA1DEBC97EB17F8ADFAC3D283ADC267ED5C66FE7E3B4FAC27D36FE930E5F63F
          DEF76DFB37DA3FC25B77A2BDCD31E1253F2E645375163E9BD8EAEDADC59656F1
          05AE6FB5CC7023E9A0AFA0BEB77FCC4D8FFF009D1F64F53D3646FF00E95E9EFF
          00D1FA1F67FF00287A5EAFA9FD1FFE1FD4FD17A8BCF7AAF4AFF147922C774FEB
          57F4FB1D1E9B7D1BEEA5BA8DDFA2B71DB90FDCCFFBB8929F3F4974B95F57FEA7
          B2873B0FEB55776408D95DB8393530EA376EBAB6E53D9ECFF807ACFF00D8DD37
          FF002F703FCCCEFF00E46A4A72925B14F46E91EAB3D6EBD842ADC3796579AE70
          6CFBB6B1D81535DFF6E2D8C4E81FE2EDB7B1D97F5A1F6D0277B2AC1BAA79D0ED
          DB6D8DC9633DDB7E953624A7901CAD0E99D13AB757B7D3E99896E5BB7358EF49
          A5CD61792DAFD6B3F9BA19EDFE72DFD1AF44E994FF00895A1F8F5FAFF6ABC3DB
          B6ECA1921A4EE1B7ED1FA2C7C1F4777F39EB55E8ECFE77D8BD370BECBF66A7EC
          7B3ECBE9B3ECFE96DF4FD2DA3D2F47D3FD1FA5B3F9BF4FD8929F35FAADFE2805
          6E665FD647B6DF6C8E9D4B8C02E6B76FDA325859EEAF759BEAC7FD1BDFE9FEB3
          655FA35E978F45743194D2C6B2AA9A1AC6B4001AD021AD6B47E6A3A492949249
          24A5249249294924924A58F0B17AAFD51FAB9D69C5FD4702AB9EE7073ED6CD76
          38B416377DF43AAB9EDFE43DCB6D2494F2D57F8B3FA914DACB99D31A5F5B83DB
          BEDB9ED969DDEFAECB9F5D8CFF0083B1BB1E8CCFA85F5419B76F49C7F66D82E0
          5DF43D0DBBB738EFFE8957A9BFF9DFD6BD4FE9B99EBF46924A79C67D42FAA0CD
          BB7A4E3FB36C1702EFA1E86DDDB9C77FF44ABD4DFF00CEFEB5EA7F4DCCF5D33E
          A17D5066DDBD271FD9B60B8177D0F436EEDCE3BFFA255EA6FF00E77F5AF53FA6
          E67AFD1A4929E719F50BEA8336EDE938FECDB05C0BBE87A1B776E71DFF00D12A
          F537FF003BFAD7A9FD3733D74CFA85F5419B76F49C7F66D82E05DF43D0DBBB73
          8EFF00E8957A9BFF009DFD6BD4FE9B99EBF46924A79C67D42FAA0CDBB7A4E3FB
          36C1702EFA1E86DDDB9C77FF0044ABD4DFFCEFEB5EA7F4DCCF5D33EA17D5066D
          DBD271FD9B60B8177D0F436EEDCE3BFF00A255EA6FFE77F5AF53FA6E67AFD1A4
          929E719F50BEA8336EDE938FECDB05C0BBE87A1B776E71DFFD12AF537FF3BFAD
          7A9FD3733D74CFA85F5419B76F49C7F66D82E05DF43D0DBBB738EFFE8957A9BF
          F9DFD6BD4FE9B99EBF46924A79C67D42FAA0CDBB7A4E3FB36C1702EFA1E86DDD
          B9C77FF44ABD4DFF00CEFEB5EA7F4DCCF5E27FC5EFD4D7D469774AA430B43090
          5E1D005234B58F16EFFD56BFD26FDFFD27FEE665FAFD2A4929E53FF1ADFA8BFF
          00959FF83E47FEF42955FE2CBEA3D36B2E674B69756E0E687DB73DB20CFBEAB6
          E7D7633FE0EC67A6BA9492531D7FD7FDC92924929FFFD9}
        Stretch = True
      end
    end
  end
  object QuickRep2: TQuickRep
    Left = 0
    Top = 756
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
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
      100.000000000000000000
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
    object QRBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 1011
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        2674.937500000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel16: TQRLabel
        Left = 314
        Top = 4
        Width = 89
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          830.791666666666700000
          10.583333333333330000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'DELIVERY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 15
      end
      object QRLabel22: TQRLabel
        Left = 14
        Top = 31
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          37.041666666666670000
          82.020833333333330000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'By. Dr.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_bydr: TQRLabel
        Left = 77
        Top = 31
        Width = 127
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          203.729166666667000000
          82.020833333333300000
          336.020833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_bydr'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel24: TQRLabel
        Left = 212
        Top = 31
        Width = 73
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          560.916666666666700000
          82.020833333333330000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Assistant'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
        Left = 9
        Top = 46
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          9.921875000000000000
          23.151041666666700000
          122.369791666667000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel25: TQRLabel
        Left = 14
        Top = 51
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          37.041666666666670000
          134.937500000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DATE'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_delvdate: TQRLabel
        Left = 52
        Top = 51
        Width = 653
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333300000
          137.583333333333000000
          134.937500000000000000
          1727.729166666670000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_delvdate'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel26: TQRLabel
        Left = 14
        Top = 73
        Width = 205
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          36.380208333333300000
          36.380208333333300000
          191.822916666667000000
          542.395833333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Placenta delivered Time'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_plcdelvt: TQRLabel
        Left = 224
        Top = 73
        Width = 126
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          36.380208333333300000
          592.005208333333000000
          191.822916666667000000
          334.036458333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_plcdelvt'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape10: TQRShape
        Left = 9
        Top = 68
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          9.921875000000000000
          23.151041666666700000
          178.593750000000000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel28: TQRLabel
        Left = 14
        Top = 140
        Width = 81
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          37.041666666666670000
          370.416666666666700000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ANESTHESIA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape11: TQRShape
        Left = 9
        Top = 107
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          283.104166666667000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape12: TQRShape
        Left = 9
        Top = 132
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          349.250000000000000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel30: TQRLabel
        Left = 318
        Top = 140
        Width = 17
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          841.375000000000000000
          370.416666666666700000
          44.979166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'By'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_anedr: TQRLabel
        Left = 342
        Top = 140
        Width = 300
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          904.875000000000000000
          370.416666666667000000
          793.750000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_anedr'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel31: TQRLabel
        Left = 14
        Top = 182
        Width = 169
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          37.041666666666670000
          481.541666666666700000
          447.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DELIVERY  Spontaneous'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape13: TQRShape
        Left = 9
        Top = 157
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          415.395833333333000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel33: TQRLabel
        Left = 243
        Top = 750
        Width = 232
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          642.937500000000000000
          1984.375000000000000000
          613.833333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'DISCHARGE EXAMINATION'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 15
      end
      object qrl_assistnr: TQRLabel
        Left = 292
        Top = 31
        Width = 120
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          772.583333333333000000
          82.020833333333300000
          317.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_assistnr'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel37: TQRLabel
        Left = 14
        Top = 93
        Width = 89
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          37.041666666666670000
          246.062500000000000000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PREPARATION'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel40: TQRLabel
        Left = 131
        Top = 93
        Width = 65
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          346.604166666666700000
          246.062500000000000000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SCRUBBED'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel54: TQRLabel
        Left = 223
        Top = 93
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          590.020833333333300000
          246.062500000000000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(+)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel57: TQRLabel
        Left = 278
        Top = 93
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          735.541666666666700000
          246.062500000000000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(-)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_prepscrb1: TQRShape
        Left = 204
        Top = 95
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          539.750000000000000000
          251.354166666667000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_prepscrb2: TQRShape
        Left = 259
        Top = 95
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          685.270833333333000000
          251.354166666667000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel70: TQRLabel
        Left = 318
        Top = 93
        Width = 49
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          841.375000000000000000
          246.062500000000000000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DRAPED'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel71: TQRLabel
        Left = 396
        Top = 93
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1047.750000000000000000
          246.062500000000000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(+)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel72: TQRLabel
        Left = 451
        Top = 93
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1193.270833333333000000
          246.062500000000000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(-)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_prepdrap1: TQRShape
        Left = 377
        Top = 95
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          997.479166666667000000
          251.354166666667000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_prepdrap2: TQRShape
        Left = 432
        Top = 95
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1143.000000000000000000
          251.354166666667000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel73: TQRLabel
        Left = 498
        Top = 93
        Width = 97
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1317.625000000000000000
          246.062500000000000000
          256.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CATHETERIZED'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel78: TQRLabel
        Left = 625
        Top = 93
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1653.645833333333000000
          246.062500000000000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(+)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel79: TQRLabel
        Left = 680
        Top = 93
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1799.166666666667000000
          246.062500000000000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(-)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_prepcath1: TQRShape
        Left = 606
        Top = 95
        Width = 11
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1603.375000000000000000
          251.354166666667000000
          29.104166666666700000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_prepcath2: TQRShape
        Left = 661
        Top = 95
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1748.895833333330000000
          251.354166666667000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel85: TQRLabel
        Left = 268
        Top = 116
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          709.083333333333300000
          306.916666666666700000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Station'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_prepstat: TQRLabel
        Left = 333
        Top = 116
        Width = 132
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          881.062500000000000000
          306.916666666667000000
          349.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_prepstat'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel86: TQRLabel
        Left = 14
        Top = 116
        Width = 65
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          37.041666666666670000
          306.916666666666700000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Position'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_preppos: TQRLabel
        Left = 86
        Top = 116
        Width = 176
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          227.541666666667000000
          306.916666666667000000
          465.666666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_preppos'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel87: TQRLabel
        Left = 468
        Top = 116
        Width = 81
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1238.250000000000000000
          306.916666666666700000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dilatation'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_prepdila: TQRLabel
        Left = 556
        Top = 116
        Width = 150
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1471.083333333330000000
          306.916666666667000000
          396.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_prepdila'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel90: TQRLabel
        Left = 138
        Top = 140
        Width = 36
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          365.125000000000000000
          370.416666666666700000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Local'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel91: TQRLabel
        Left = 226
        Top = 140
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          597.958333333333300000
          370.416666666666700000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'General'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_anesth1: TQRShape
        Left = 115
        Top = 143
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          304.270833333333000000
          378.354166666667000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_anesth2: TQRShape
        Left = 207
        Top = 143
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          547.687500000000000000
          378.354166666667000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel94: TQRLabel
        Left = 14
        Top = 164
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          37.041666666666670000
          433.916666666666700000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Type of'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_delvspon1: TQRShape
        Left = 197
        Top = 185
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          521.229166666667000000
          489.479166666667000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape14: TQRShape
        Left = 9
        Top = 198
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          523.875000000000000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel104: TQRLabel
        Left = 14
        Top = 205
        Width = 41
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          37.041666666666670000
          542.395833333333300000
          108.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'OTHER'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_delvtxt: TQRLabel
        Left = 226
        Top = 205
        Width = 400
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          597.958333333333000000
          542.395833333333000000
          1058.333333333330000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_delvtxt'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape18: TQRShape
        Left = 9
        Top = 221
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          584.729166666667000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel106: TQRLabel
        Left = 14
        Top = 230
        Width = 65
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          37.041666666666670000
          608.541666666666700000
          171.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PLACENTA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel108: TQRLabel
        Left = 298
        Top = 230
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          788.458333333333300000
          608.541666666666700000
          169.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Condition'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_placond: TQRLabel
        Left = 370
        Top = 230
        Width = 320
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          978.958333333333000000
          608.541666666667000000
          846.666666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_placond'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape19: TQRShape
        Left = 9
        Top = 245
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          648.229166666667000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel110: TQRLabel
        Left = 118
        Top = 230
        Width = 78
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          312.208333333333300000
          608.541666666666700000
          206.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Spontaneous'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel112: TQRLabel
        Left = 234
        Top = 230
        Width = 36
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          619.125000000000000000
          608.541666666666700000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Other'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_plaspon1: TQRShape
        Left = 95
        Top = 233
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          251.354166666667000000
          616.479166666667000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_plaspon2: TQRShape
        Left = 212
        Top = 233
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          560.916666666667000000
          616.479166666667000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel114: TQRLabel
        Left = 14
        Top = 253
        Width = 81
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          37.041666666666670000
          669.395833333333300000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'BLOOD LOSS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape22: TQRShape
        Left = 9
        Top = 270
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          714.375000000000000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrl_bldloss: TQRLabel
        Left = 108
        Top = 253
        Width = 61
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          285.750000000000000000
          669.395833333333000000
          161.395833333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_bldloss'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel116: TQRLabel
        Left = 170
        Top = 253
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          449.791666666666700000
          669.395833333333300000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'cc'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel118: TQRLabel
        Left = 14
        Top = 277
        Width = 81
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          37.041666666666670000
          732.895833333333300000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'EPISIOTOMY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_epst: TQRLabel
        Left = 108
        Top = 277
        Width = 550
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          285.750000000000000000
          732.895833333333000000
          1455.208333333330000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_epst'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape15: TQRShape
        Left = 9
        Top = 292
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          772.583333333333000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel120: TQRLabel
        Left = 14
        Top = 298
        Width = 81
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          37.041666666666670000
          788.458333333333300000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LACERATION'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape23: TQRShape
        Left = 9
        Top = 312
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          825.500000000000000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrl_lacerat: TQRLabel
        Left = 108
        Top = 298
        Width = 550
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          285.750000000000000000
          788.458333333333000000
          1455.208333333330000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_lacerat'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel122: TQRLabel
        Left = 14
        Top = 318
        Width = 153
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          37.041666666666670000
          841.375000000000000000
          404.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'REPAIR Type. suture'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape16: TQRShape
        Left = 9
        Top = 345
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          912.812500000000000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel125: TQRLabel
        Left = 14
        Top = 354
        Width = 209
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          37.041666666666670000
          936.625000000000000000
          552.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'MEDICATION during delivery'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape17: TQRShape
        Left = 9
        Top = 370
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          978.958333333333000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel127: TQRLabel
        Left = 14
        Top = 380
        Width = 105
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          37.041666666666670000
          1005.416666666667000000
          277.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'POST-DELIVERY'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape24: TQRShape
        Left = 9
        Top = 396
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          1047.750000000000000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel129: TQRLabel
        Left = 136
        Top = 380
        Width = 43
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          359.833333333333300000
          1005.416666666667000000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fundus'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel130: TQRLabel
        Left = 278
        Top = 380
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          735.541666666666700000
          1005.416666666667000000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'BP'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel131: TQRLabel
        Left = 428
        Top = 380
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1132.416666666667000000
          1005.416666666667000000
          21.166666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'P'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_pdelvfund: TQRLabel
        Left = 184
        Top = 380
        Width = 81
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          486.833333333333000000
          1005.416666666670000000
          214.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Fundus'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_pdelvbp: TQRLabel
        Left = 302
        Top = 380
        Width = 99
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          799.041666666667000000
          1005.416666666670000000
          261.937500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Fundus'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_pdelvp: TQRLabel
        Left = 440
        Top = 380
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1164.166666666670000000
          1005.416666666670000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Fundus'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel132: TQRLabel
        Left = 14
        Top = 403
        Width = 49
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          37.041666666666670000
          1066.270833333333000000
          129.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'INFANT'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel133: TQRLabel
        Left = 278
        Top = 403
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          735.541666666666700000
          1066.270833333333000000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Wt'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qr1_infantwt: TQRLabel
        Left = 298
        Top = 403
        Width = 52
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          788.458333333333000000
          1066.270833333330000000
          137.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qr1_infantwt'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape25: TQRShape
        Left = 9
        Top = 419
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          1108.604166666670000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel134: TQRLabel
        Left = 118
        Top = 403
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          312.208333333333300000
          1066.270833333333000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Boy'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel135: TQRLabel
        Left = 181
        Top = 403
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          478.895833333333300000
          1066.270833333333000000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Girl'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_infantsx1: TQRShape
        Left = 95
        Top = 407
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          251.354166666667000000
          1076.854166666670000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_infantsx2: TQRShape
        Left = 159
        Top = 407
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          420.687500000000000000
          1076.854166666670000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel136: TQRLabel
        Left = 14
        Top = 469
        Width = 89
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          37.041666666666670000
          1240.895833333333000000
          235.479166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RESPIRATION'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel138: TQRLabel
        Left = 367
        Top = 469
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          971.020833333333300000
          1240.895833333333000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'O2(min)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_respiro2: TQRLabel
        Left = 428
        Top = 469
        Width = 250
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1132.416666666670000000
          1240.895833333330000000
          661.458333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_respiro2'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape28: TQRShape
        Left = 9
        Top = 483
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          1277.937500000000000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel139: TQRLabel
        Left = 165
        Top = 469
        Width = 78
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          436.562500000000000000
          1240.895833333333000000
          206.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Spontaneous'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel140: TQRLabel
        Left = 282
        Top = 469
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          746.125000000000000000
          1240.895833333333000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Assisted'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_respir1: TQRShape
        Left = 142
        Top = 472
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          375.708333333333000000
          1248.833333333330000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_respir2: TQRShape
        Left = 260
        Top = 472
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          687.916666666667000000
          1248.833333333330000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel141: TQRLabel
        Left = 406
        Top = 403
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1074.208333333333000000
          1066.270833333333000000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Abn.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qr1_infantabn: TQRLabel
        Left = 441
        Top = 403
        Width = 150
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1166.812500000000000000
          1066.270833333330000000
          396.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qr1_infantabn'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel142: TQRLabel
        Left = 352
        Top = 403
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          931.333333333333300000
          1066.270833333333000000
          21.166666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'g'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel143: TQRLabel
        Left = 14
        Top = 532
        Width = 113
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          37.041666666666670000
          1407.583333333333000000
          298.979166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'IMMEDIATE CARE'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel146: TQRLabel
        Left = 432
        Top = 532
        Width = 162
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1143.000000000000000000
          1407.583333333333000000
          428.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Brac. & prints Hykinone'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape54: TQRShape
        Left = 9
        Top = 548
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          9.921875000000000000
          23.151041666666700000
          1448.593750000000000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel153: TQRLabel
        Left = 144
        Top = 532
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          381.000000000000000000
          1407.583333333333000000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cord'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel154: TQRLabel
        Left = 285
        Top = 532
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          754.062500000000000000
          1407.583333333333000000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Eyes'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel155: TQRLabel
        Left = 625
        Top = 532
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1653.645833333333000000
          1407.583333333333000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(+)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel156: TQRLabel
        Left = 680
        Top = 532
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1799.166666666667000000
          1407.583333333333000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(-)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_imcarbph1: TQRShape
        Left = 606
        Top = 536
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.151041666666700000
          1604.036458333330000000
          1418.828125000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_imcarbph2: TQRShape
        Left = 661
        Top = 536
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.151041666666700000
          1749.557291666670000000
          1418.828125000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel157: TQRLabel
        Left = 341
        Top = 532
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          902.229166666666700000
          1407.583333333333000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(+)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel158: TQRLabel
        Left = 396
        Top = 532
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1047.750000000000000000
          1407.583333333333000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(-)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_imcareye1: TQRShape
        Left = 322
        Top = 536
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.151041666666700000
          853.281250000000000000
          1418.828125000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_imcareye2: TQRShape
        Left = 377
        Top = 536
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.151041666666700000
          998.802083333333000000
          1418.828125000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel159: TQRLabel
        Left = 199
        Top = 532
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          526.520833333333300000
          1407.583333333333000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(+)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel160: TQRLabel
        Left = 254
        Top = 532
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          672.041666666666700000
          1407.583333333333000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '(-)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_imcarecd1: TQRShape
        Left = 180
        Top = 536
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.151041666666700000
          476.250000000000000000
          1418.828125000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_imcarecd2: TQRShape
        Left = 235
        Top = 536
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.151041666666700000
          621.770833333333000000
          1418.828125000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape31: TQRShape
        Left = 9
        Top = 551
        Width = 700
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          3.307291666666670000
          23.151041666666700000
          1458.515625000000000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel161: TQRLabel
        Left = 14
        Top = 578
        Width = 36
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          37.041666666666670000
          1529.291666666667000000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'APGAR'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel162: TQRLabel
        Left = 412
        Top = 556
        Width = 78
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1090.083333333333000000
          1471.083333333333000000
          206.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'REAPONSE TO'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel163: TQRLabel
        Left = 58
        Top = 565
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          153.458333333333300000
          1494.895833333333000000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #51216
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel164: TQRLabel
        Left = 412
        Top = 570
        Width = 78
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1090.083333333333000000
          1508.125000000000000000
          206.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CATHETER IN'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel165: TQRLabel
        Left = 89
        Top = 578
        Width = 71
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          235.479166666666700000
          1529.291666666667000000
          187.854166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'HEART RATE'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel166: TQRLabel
        Left = 182
        Top = 578
        Width = 85
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          481.541666666666700000
          1529.291666666667000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RESP. EFFORT'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel167: TQRLabel
        Left = 538
        Top = 578
        Width = 36
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1423.458333333333000000
          1529.291666666667000000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'COLOR'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel168: TQRLabel
        Left = 304
        Top = 578
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          804.333333333333300000
          1529.291666666667000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'M. TONE'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel169: TQRLabel
        Left = 58
        Top = 586
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          153.458333333333300000
          1550.458333333333000000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49688
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel170: TQRLabel
        Left = 412
        Top = 586
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1090.083333333333000000
          1550.458333333333000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NOSTRIL'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape20: TQRShape
        Left = 9
        Top = 601
        Width = 609
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          23.812500000000000000
          1590.145833333330000000
          1611.312500000000000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel171: TQRLabel
        Left = 94
        Top = 605
        Width = 43
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          248.708333333333300000
          1600.729166666667000000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Absent'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel172: TQRLabel
        Left = 193
        Top = 605
        Width = 43
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          510.645833333333300000
          1600.729166666667000000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Absent'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel173: TQRLabel
        Left = 294
        Top = 605
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          777.875000000000000000
          1600.729166666667000000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Limp'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel174: TQRLabel
        Left = 408
        Top = 605
        Width = 78
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1079.500000000000000000
          1600.729166666667000000
          206.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'No Response'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel175: TQRLabel
        Left = 525
        Top = 605
        Width = 71
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1389.062500000000000000
          1600.729166666667000000
          187.854166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Blue, Pale'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape34: TQRShape
        Left = 50
        Top = 622
        Width = 568
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          132.291666666667000000
          1645.708333333330000000
          1502.833333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRShape21: TQRShape
        Left = 50
        Top = 622
        Width = 568
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          132.291666666667000000
          1645.708333333330000000
          1502.833333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel176: TQRLabel
        Left = 58
        Top = 586
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          153.458333333333300000
          1550.458333333333000000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49688
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel177: TQRLabel
        Left = 58
        Top = 606
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          153.458333333333300000
          1603.375000000000000000
          21.166666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '0'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape46: TQRShape
        Left = 50
        Top = 675
        Width = 658
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          3.307291666666670000
          132.291666666667000000
          1785.937500000000000000
          1739.635416666670000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel178: TQRLabel
        Left = 58
        Top = 648
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          153.458333333333300000
          1714.500000000000000000
          21.166666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel179: TQRLabel
        Left = 527
        Top = 628
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1394.354166666667000000
          1661.583333333333000000
          169.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Body pink'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel180: TQRLabel
        Left = 527
        Top = 644
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1394.354166666667000000
          1703.916666666667000000
          169.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Extremity'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel181: TQRLabel
        Left = 562
        Top = 659
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1486.958333333333000000
          1743.604166666667000000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Blue'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel182: TQRLabel
        Left = 418
        Top = 642
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1105.958333333333000000
          1698.625000000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Grimace'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel183: TQRLabel
        Left = 291
        Top = 636
        Width = 85
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          769.937500000000000000
          1682.750000000000000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Some flexion'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel184: TQRLabel
        Left = 291
        Top = 652
        Width = 85
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          769.937500000000000000
          1725.083333333333000000
          224.895833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'of extremity'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel185: TQRLabel
        Left = 94
        Top = 642
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          248.708333333333300000
          1698.625000000000000000
          169.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Below 100'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel186: TQRLabel
        Left = 194
        Top = 636
        Width = 36
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          513.291666666666700000
          1682.750000000000000000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SLow,'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel187: TQRLabel
        Left = 194
        Top = 652
        Width = 64
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          513.291666666666700000
          1725.083333333333000000
          169.333333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Irregular'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel188: TQRLabel
        Left = 58
        Top = 685
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          153.458333333333300000
          1812.395833333333000000
          21.166666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel189: TQRLabel
        Left = 96
        Top = 685
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          254.000000000000000000
          1812.395833333333000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'over 100'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel190: TQRLabel
        Left = 193
        Top = 685
        Width = 78
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          510.645833333333300000
          1812.395833333333000000
          206.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Good crying'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel191: TQRLabel
        Left = 288
        Top = 685
        Width = 92
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          762.000000000000000000
          1812.395833333333000000
          243.416666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Active motion'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel192: TQRLabel
        Left = 408
        Top = 677
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1079.500000000000000000
          1791.229166666667000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cough or'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel193: TQRLabel
        Left = 408
        Top = 691
        Width = 43
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1079.500000000000000000
          1828.270833333333000000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sneeze'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel194: TQRLabel
        Left = 525
        Top = 677
        Width = 71
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1389.062500000000000000
          1791.229166666667000000
          187.854166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Completely'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel195: TQRLabel
        Left = 568
        Top = 691
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1502.833333333333000000
          1828.270833333333000000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'pink'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel196: TQRLabel
        Left = 644
        Top = 684
        Width = 36
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1703.916666666667000000
          1809.750000000000000000
          95.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TOTAL'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape26: TQRShape
        Left = 43
        Top = 706
        Width = 662
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          3.307291666666670000
          112.447916666667000000
          1868.619791666670000000
          1752.864583333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel197: TQRLabel
        Left = 46
        Top = 710
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          121.708333333333300000
          1878.541666666667000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '1'#48516
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape68: TQRShape
        Left = 32
        Top = 725
        Width = 664
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          3.307291666666670000
          85.989583333333300000
          1918.229166666670000000
          1756.171875000000000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel198: TQRLabel
        Left = 46
        Top = 730
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          121.708333333333300000
          1931.458333333333000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '5'#48516
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape69: TQRShape
        Left = 43
        Top = 744
        Width = 664
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          3.307291666666670000
          112.447916666667000000
          1967.838541666670000000
          1756.171875000000000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel238: TQRLabel
        Left = 13
        Top = 779
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          34.395833333333330000
          2061.104166666667000000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Date'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel240: TQRLabel
        Left = 273
        Top = 779
        Width = 71
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          722.312500000000000000
          2061.104166666667000000
          187.854166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PUERPERIUM'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape138: TQRShape
        Left = 9
        Top = 796
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          2106.083333333330000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrl_discdate: TQRLabel
        Left = 67
        Top = 779
        Width = 191
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          177.270833333333000000
          2061.104166666670000000
          505.354166666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_discdate'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel243: TQRLabel
        Left = 13
        Top = 804
        Width = 43
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          34.395833333333330000
          2127.250000000000000000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'BREAST'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel245: TQRLabel
        Left = 527
        Top = 804
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1394.354166666667000000
          2127.250000000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'NURSING'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape141: TQRShape
        Left = 9
        Top = 820
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          2169.583333333330000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel246: TQRLabel
        Left = 621
        Top = 804
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1643.062500000000000000
          2127.250000000000000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Yes'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel247: TQRLabel
        Left = 681
        Top = 804
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1801.812500000000000000
          2127.250000000000000000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'No'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_nursing1: TQRShape
        Left = 599
        Top = 807
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1584.854166666670000000
          2135.187500000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_nursing2: TQRShape
        Left = 659
        Top = 807
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1743.604166666670000000
          2135.187500000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel248: TQRLabel
        Left = 454
        Top = 779
        Width = 106
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1201.208333333333000000
          2061.104166666667000000
          280.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #9733'Complications'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_discomp1: TQRLabel
        Left = 566
        Top = 779
        Width = 135
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1497.541666666670000000
          2061.104166666670000000
          357.187500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_discomp1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel251: TQRLabel
        Left = 13
        Top = 827
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          34.395833333333330000
          2188.104166666667000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ut.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_utinvlab: TQRLabel
        Left = 336
        Top = 828
        Width = 350
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          889.000000000000000000
          2190.750000000000000000
          926.041666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_utinvlab'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape144: TQRShape
        Left = 9
        Top = 844
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          2233.083333333330000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel259: TQRLabel
        Left = 88
        Top = 827
        Width = 120
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          232.833333333333300000
          2188.104166666667000000
          317.500000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Normal involution'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel260: TQRLabel
        Left = 256
        Top = 827
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          677.333333333333300000
          2188.104166666667000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Abnormal'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_utinvol1: TQRShape
        Left = 68
        Top = 831
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          179.916666666667000000
          2198.687500000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_utinvol2: TQRShape
        Left = 237
        Top = 831
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          627.062500000000000000
          2198.687500000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_discuper2: TQRShape
        Left = 439
        Top = 782
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1161.520833333330000000
          2069.041666666670000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel199: TQRLabel
        Left = 370
        Top = 779
        Width = 43
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          978.958333333333300000
          2061.104166666667000000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Normal'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_discuper1: TQRShape
        Left = 352
        Top = 782
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          931.333333333334000000
          2069.041666666670000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrl_dsbreast: TQRLabel
        Left = 65
        Top = 804
        Width = 180
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          171.979166666667000000
          2127.250000000000000000
          476.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_dsbreast'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel200: TQRLabel
        Left = 273
        Top = 804
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          722.312500000000000000
          2127.250000000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nipples'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_dsvipple: TQRLabel
        Left = 330
        Top = 804
        Width = 180
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          873.125000000000000000
          2127.250000000000000000
          476.250000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_dsvipple'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel201: TQRLabel
        Left = 13
        Top = 851
        Width = 43
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          34.395833333333330000
          2251.604166666667000000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LOCHIA'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_lochiaab: TQRLabel
        Left = 336
        Top = 851
        Width = 350
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          889.000000000000000000
          2251.604166666670000000
          926.041666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_lochiaab'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape71: TQRShape
        Left = 9
        Top = 867
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          2293.937500000000000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel202: TQRLabel
        Left = 88
        Top = 851
        Width = 43
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          232.833333333333300000
          2251.604166666667000000
          113.770833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Normal'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_lochiana1: TQRShape
        Left = 68
        Top = 854
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          179.916666666667000000
          2259.541666666670000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_lochiana2: TQRShape
        Left = 237
        Top = 854
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          627.062500000000000000
          2259.541666666670000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel203: TQRLabel
        Left = 256
        Top = 851
        Width = 71
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          677.333333333333300000
          2251.604166666667000000
          187.854166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #9733'Abnormal'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel204: TQRLabel
        Left = 325
        Top = 873
        Width = 100
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          859.895833333333000000
          2309.812500000000000000
          264.583333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Condition of'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel205: TQRLabel
        Left = 13
        Top = 891
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          34.395833333333330000
          2357.437500000000000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PREINEUM'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel206: TQRLabel
        Left = 325
        Top = 891
        Width = 127
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          859.895833333333300000
          2357.437500000000000000
          336.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Episiotomy or lac.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape77: TQRShape
        Left = 9
        Top = 907
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          2399.770833333330000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrl_condperi: TQRLabel
        Left = 81
        Top = 891
        Width = 230
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          214.312500000000000000
          2357.437500000000000000
          608.541666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_condperi'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_condepis: TQRLabel
        Left = 463
        Top = 891
        Width = 230
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1225.020833333330000000
          2357.437500000000000000
          608.541666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_condepis'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel207: TQRLabel
        Left = 13
        Top = 915
        Width = 106
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          34.395833333333330000
          2420.937500000000000000
          280.458333333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #9733'COMPLICATIONS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape74: TQRShape
        Left = 9
        Top = 932
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          2465.916666666670000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrl_discomp2: TQRLabel
        Left = 128
        Top = 915
        Width = 550
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          338.666666666667000000
          2420.937500000000000000
          1455.208333333330000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_discomp2'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel208: TQRLabel
        Left = 13
        Top = 940
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          34.395833333333330000
          2487.083333333333000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'REMARKS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_remark: TQRLabel
        Left = 72
        Top = 940
        Width = 580
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          190.500000000000000000
          2487.083333333330000000
          1534.583333333330000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_remark'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape75: TQRShape
        Left = 9
        Top = 956
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          2529.416666666670000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel209: TQRLabel
        Left = 13
        Top = 964
        Width = 225
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          34.395833333333330000
          2550.583333333333000000
          595.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ADVICE ON FAMILY PLANNING GIVEN?'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape79: TQRShape
        Left = 9
        Top = 980
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          2592.916666666670000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel210: TQRLabel
        Left = 374
        Top = 963
        Width = 225
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          989.541666666666700000
          2547.937500000000000000
          595.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'SIGNATURE OF ATTENDING PHYSICIAN'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_signdr: TQRLabel
        Left = 609
        Top = 963
        Width = 77
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1611.312500000000000000
          2547.937500000000000000
          203.729166666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_signdr'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape84: TQRShape
        Left = 9
        Top = 1003
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          2653.770833333330000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object qrs_delvspon2: TQRShape
        Left = 197
        Top = 208
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          521.229166666667000000
          550.333333333333000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrl_meddelv: TQRLabel
        Left = 231
        Top = 354
        Width = 450
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          611.187500000000000000
          936.625000000000000000
          1190.625000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_meddelv'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_hr1: TQRLabel
        Left = 85
        Top = 709
        Width = 81
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          36.380208333333300000
          224.895833333333000000
          1875.234375000000000000
          214.973958333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_hr1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_re1: TQRLabel
        Left = 185
        Top = 709
        Width = 81
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          36.380208333333300000
          489.479166666667000000
          1875.234375000000000000
          214.973958333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_re1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_mt1: TQRLabel
        Left = 290
        Top = 709
        Width = 81
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          36.380208333333300000
          767.291666666667000000
          1875.234375000000000000
          214.973958333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_mt1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_rcn1: TQRLabel
        Left = 404
        Top = 709
        Width = 81
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          36.380208333333300000
          1068.255208333330000000
          1875.234375000000000000
          214.973958333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_rcn1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_col1: TQRLabel
        Left = 518
        Top = 709
        Width = 81
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          36.380208333333300000
          1369.218750000000000000
          1875.234375000000000000
          214.973958333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_col1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_to1: TQRLabel
        Left = 622
        Top = 709
        Width = 85
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          36.380208333333300000
          1647.031250000000000000
          1875.234375000000000000
          224.895833333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_to1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_to2: TQRLabel
        Left = 622
        Top = 729
        Width = 85
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          36.380208333333300000
          1647.031250000000000000
          1928.151041666670000000
          224.895833333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_to2'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_rcn2: TQRLabel
        Left = 404
        Top = 729
        Width = 81
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          36.380208333333300000
          1068.255208333330000000
          1928.151041666670000000
          214.973958333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_rcn2'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_mt2: TQRLabel
        Left = 292
        Top = 729
        Width = 81
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          36.380208333333300000
          773.906250000000000000
          1928.151041666670000000
          214.973958333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_mt2'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_re2: TQRLabel
        Left = 185
        Top = 729
        Width = 81
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          36.380208333333300000
          489.479166666667000000
          1928.151041666670000000
          214.973958333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_re2'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_hr2: TQRLabel
        Left = 85
        Top = 729
        Width = 81
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          36.380208333333300000
          224.895833333333000000
          1928.151041666670000000
          214.973958333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_hr2'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_col2: TQRLabel
        Left = 518
        Top = 729
        Width = 81
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          36.380208333333300000
          1369.218750000000000000
          1928.151041666670000000
          214.973958333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_col2'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel211: TQRLabel
        Left = 287
        Top = 964
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          759.354166666666700000
          2550.583333333333000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Yes'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel212: TQRLabel
        Left = 352
        Top = 964
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          931.333333333333300000
          2550.583333333333000000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'No'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_adfmyn1: TQRShape
        Left = 265
        Top = 967
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          701.145833333333000000
          2558.520833333330000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_adfmyn2: TQRShape
        Left = 330
        Top = 967
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          873.125000000000000000
          2558.520833333330000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape32: TQRShape
        Left = 76
        Top = 551
        Width = 1
        Height = 194
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          512.630208333333000000
          201.744791666667000000
          1458.515625000000000000
          3.307291666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape27: TQRShape
        Left = 172
        Top = 551
        Width = 1
        Height = 194
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          512.630208333333000000
          456.406250000000000000
          1458.515625000000000000
          3.307291666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape33: TQRShape
        Left = 278
        Top = 551
        Width = 1
        Height = 193
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          509.322916666667000000
          734.218750000000000000
          1458.515625000000000000
          3.307291666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape35: TQRShape
        Left = 388
        Top = 551
        Width = 1
        Height = 194
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          512.630208333333000000
          1025.260416666670000000
          1458.515625000000000000
          3.307291666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape52: TQRShape
        Left = 502
        Top = 551
        Width = 1
        Height = 194
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          512.630208333333000000
          1329.531250000000000000
          1458.515625000000000000
          3.307291666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRShape53: TQRShape
        Left = 617
        Top = 551
        Width = 1
        Height = 194
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          512.630208333333000000
          1633.802083333330000000
          1458.515625000000000000
          3.307291666666670000)
        XLColumn = 0
        Shape = qrsVertLine
        VertAdjust = 0
      end
      object QRLabel213: TQRLabel
        Left = 478
        Top = 380
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1264.708333333333000000
          1005.416666666667000000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #54924
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrm_reptpsut: TQRMemo
        Left = 184
        Top = 318
        Width = 521
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666700000
          486.833333333333000000
          841.375000000000000000
          1378.479166666670000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        Lines.Strings = (
          'a'
          'b')
        ParentFont = False
        Transparent = False
        WordWrap = True
        FullJustify = False
        FontSize = 9
      end
      object QRLabel214: TQRLabel
        Left = 278
        Top = 425
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          735.541666666666700000
          1124.479166666667000000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Wt'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qr1_infantwt2: TQRLabel
        Left = 298
        Top = 425
        Width = 52
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          788.458333333333000000
          1124.479166666670000000
          137.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qr1_infantwt'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape55: TQRShape
        Left = 9
        Top = 441
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          1166.812500000000000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel215: TQRLabel
        Left = 118
        Top = 425
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          312.208333333333300000
          1124.479166666667000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Boy'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel216: TQRLabel
        Left = 181
        Top = 425
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          478.895833333333300000
          1124.479166666667000000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Girl'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_infantsx1B: TQRShape
        Left = 95
        Top = 429
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          251.354166666667000000
          1135.062500000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_infantsx2B: TQRShape
        Left = 159
        Top = 429
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          420.687500000000000000
          1135.062500000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel217: TQRLabel
        Left = 406
        Top = 425
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1074.208333333333000000
          1124.479166666667000000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Abn.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qr1_infantabn2: TQRLabel
        Left = 441
        Top = 425
        Width = 150
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1166.812500000000000000
          1124.479166666670000000
          396.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qr1_infantabn'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel218: TQRLabel
        Left = 352
        Top = 425
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          931.333333333333300000
          1124.479166666667000000
          21.166666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'g'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel219: TQRLabel
        Left = 278
        Top = 447
        Width = 15
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          735.541666666666700000
          1182.687500000000000000
          39.687500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Wt'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qr1_infantwt3: TQRLabel
        Left = 298
        Top = 447
        Width = 52
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          788.458333333333000000
          1182.687500000000000000
          137.583333333333000000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qr1_infantwt'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape56: TQRShape
        Left = 9
        Top = 462
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          1222.375000000000000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel220: TQRLabel
        Left = 118
        Top = 447
        Width = 22
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          312.208333333333300000
          1182.687500000000000000
          58.208333333333330000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Boy'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel221: TQRLabel
        Left = 181
        Top = 447
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          478.895833333333300000
          1182.687500000000000000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Girl'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_infantsx1C: TQRShape
        Left = 95
        Top = 450
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          251.354166666667000000
          1190.625000000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_infantsx2C: TQRShape
        Left = 159
        Top = 450
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          420.687500000000000000
          1190.625000000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel222: TQRLabel
        Left = 406
        Top = 447
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1074.208333333333000000
          1182.687500000000000000
          76.729166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Abn.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qr1_infantabn3: TQRLabel
        Left = 441
        Top = 447
        Width = 150
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1166.812500000000000000
          1182.687500000000000000
          396.875000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qr1_infantabn'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel223: TQRLabel
        Left = 352
        Top = 447
        Width = 8
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          931.333333333333300000
          1182.687500000000000000
          21.166666666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'g'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape57: TQRShape
        Left = 9
        Top = 88
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          9.921875000000000000
          23.151041666666700000
          231.510416666667000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel224: TQRLabel
        Left = 367
        Top = 489
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          971.020833333333300000
          1293.812500000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'O2(min)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_respiro2b: TQRLabel
        Left = 428
        Top = 489
        Width = 250
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1132.416666666670000000
          1293.812500000000000000
          661.458333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_respiro2'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape58: TQRShape
        Left = 9
        Top = 503
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          1330.854166666670000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel225: TQRLabel
        Left = 165
        Top = 489
        Width = 78
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          436.562500000000000000
          1293.812500000000000000
          206.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Spontaneous'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel226: TQRLabel
        Left = 282
        Top = 489
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          746.125000000000000000
          1293.812500000000000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Assisted'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_respir1b: TQRShape
        Left = 142
        Top = 492
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          375.708333333333000000
          1301.750000000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_respir2b: TQRShape
        Left = 260
        Top = 492
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          687.916666666667000000
          1301.750000000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel227: TQRLabel
        Left = 367
        Top = 510
        Width = 50
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          971.020833333333300000
          1349.375000000000000000
          132.291666666666700000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'O2(min)'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrl_respiro2c: TQRLabel
        Left = 428
        Top = 510
        Width = 250
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1132.416666666670000000
          1349.375000000000000000
          661.458333333333000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_respiro2'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRShape59: TQRShape
        Left = 9
        Top = 524
        Width = 700
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333300000
          23.812500000000000000
          1386.416666666670000000
          1852.083333333330000000)
        XLColumn = 0
        Shape = qrsHorLine
        VertAdjust = 0
      end
      object QRLabel228: TQRLabel
        Left = 165
        Top = 510
        Width = 78
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          436.562500000000000000
          1349.375000000000000000
          206.375000000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Spontaneous'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel229: TQRLabel
        Left = 282
        Top = 510
        Width = 57
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          746.125000000000000000
          1349.375000000000000000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Assisted'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object qrs_respir1c: TQRShape
        Left = 142
        Top = 513
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          375.708333333333000000
          1357.312500000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object qrs_respir2c: TQRShape
        Left = 260
        Top = 513
        Width = 10
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          687.916666666667000000
          1357.312500000000000000
          26.458333333333300000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel230: TQRLabel
        Left = 73
        Top = 403
        Width = 17
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          193.145833333333300000
          1066.270833333333000000
          44.979166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '1.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel231: TQRLabel
        Left = 73
        Top = 426
        Width = 17
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          193.145833333333300000
          1127.125000000000000000
          44.979166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel232: TQRLabel
        Left = 73
        Top = 447
        Width = 17
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          193.145833333333300000
          1182.687500000000000000
          44.979166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '3.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel233: TQRLabel
        Left = 120
        Top = 469
        Width = 17
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          317.500000000000000000
          1240.895833333333000000
          44.979166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '1.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel234: TQRLabel
        Left = 120
        Top = 489
        Width = 17
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          317.500000000000000000
          1293.812500000000000000
          44.979166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel235: TQRLabel
        Left = 120
        Top = 509
        Width = 17
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          317.500000000000000000
          1346.729166666667000000
          44.979166666666670000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '3.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel236: TQRLabel
        Left = 558
        Top = 6
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1476.375000000000000000
          15.875000000000000000
          87.312500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Name'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel237: TQRLabel
        Left = 598
        Top = 6
        Width = 110
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1582.208333333330000000
          15.875000000000000000
          291.041666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_patname'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel239: TQRLabel
        Left = 518
        Top = 26
        Width = 73
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1370.541666666667000000
          68.791666666666670000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hosp. No.'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel241: TQRLabel
        Left = 598
        Top = 26
        Width = 110
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666700000
          1582.208333333330000000
          68.791666666666700000
          291.041666666667000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'qrl_Hospno'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
    object QRBand3: TQRBand
      Left = 38
      Top = 1049
      Width = 718
      Height = 66
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
        174.625000000000000000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageFooter
      object QRLabel242: TQRLabel
        Left = 313
        Top = 14
        Width = 91
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          828.145833333333300000
          37.041666666666670000
          240.770833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'P.M.C Form'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel244: TQRLabel
        Left = 234
        Top = 38
        Width = 232
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          619.125000000000000000
          100.541666666666700000
          613.833333333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'OBSTETRICS DEPARTMENT'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 15
      end
      object QRLabel249: TQRLabel
        Left = 313
        Top = 14
        Width = 91
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          828.145833333333300000
          37.041666666666670000
          240.770833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'P.M.C Form'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel250: TQRLabel
        Left = 313
        Top = 14
        Width = 91
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          828.145833333333300000
          37.041666666666670000
          240.770833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'P.M.C Form'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRLabel252: TQRLabel
        Left = 313
        Top = 14
        Width = 91
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          828.145833333333300000
          37.041666666666670000
          240.770833333333300000)
        XLColumn = 0
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'P.M.C Form'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
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
      object QRImage2: TQRImage
        Left = 16
        Top = 36
        Width = 97
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          42.333333333333300000
          95.250000000000000000
          256.645833333333000000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D616765A8820000FFD8FFE000104A46494600010201004800
          480000FFE109F84578696600004D4D002A000000080007011200030000000100
          010000011A00050000000100000062011B0005000000010000006A0128000300
          00000100020000013100020000001D0000007201320002000000140000008F87
          69000400000001000000A4000000D00000004800000001000000480000000141
          646F62652050686F746F73686F7020456C656D656E747320322E300032303034
          3A30363A32392030393A30353A353900000003A001000300000001FFFF0000A0
          0200040000000100000342A0030004000000010000009E000000000000000601
          0300030000000100060000011A0005000000010000011E011B00050000000100
          00012601280003000000010002000002010004000000010000012E0202000400
          000001000008C20000000000000048000000010000004800000001FFD8FFE000
          104A46494600010201004800480000FFED000C41646F62655F434D0002FFEE00
          0E41646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B
          11150F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E
          0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080018008003012200
          021101031101FFDD00040008FFC4013F00000105010101010101000000000000
          00030001020405060708090A0B01000105010101010101000000000000000100
          02030405060708090A0B1000010401030204020507060805030C330100021103
          04211231054151611322718132061491A1B14223241552C16233347282D14307
          259253F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3
          D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
          37475767778797A7B7C7D7E7F711000202010204040304050607070605350100
          021103213112044151617122130532819114A1B14223C152D1F0332462E17282
          92435315637334F1250616A2B283072635C2D2449354A317644555367465E2F2
          B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6
          E6F62737475767778797A7B7C7FFDA000C03010002110311003F00F43C8FAC7D
          0B1AFB31B233A9AEEA8EDB18E74169203E1FFBBED72F3239D9B5F55C626FB198
          E3399936BCD840389EA63B5AD14FF3CE7FDAFED77DDF42DFB3D5FE8574DD5FEA
          0E6E775FCDEACD1836FDAA1B57DA5B63CD6D0CAEADCC6376D2DB1AE63DED7FF3
          9FF0AB9825AD653D35B4E207DD92DAD87D27EE17596370FD5734DAEF4FA5B291
          F64A2C6E47DBBED1BFFC0DB624A7D3B1BEB1743CAC8AF1B1F36AB6EB4915B1AE
          D5C4073E1BFBDEC639CB3FEBCFD6A1F55FA19CEAEB17655CF1462D6EFA3BDC1C
          FF0052DD5AFF004AB656EFA1F9FE9D7ECF53D4593D1BEA1E774FEBF8DD59C306
          A1548B5B8ADB6B2E6EC731BFA371750E7EEF4FDFE9D4FF00E72DB2C7AA1FE3AB
          1AD3D2FA666897538F92E658CEC4D8DDCC73BFED87B3FEB8929ACDFADFF5D3EA
          96660D9F5C9EDCDE9FD4EA2F0DA5958BA973435CFADCDAEBC5FD2D7EAD5EB31D
          EA57FE82D59A3FC63FD60CDC8FAC37E0E73D9858D8C6FE9EC7D348757FACE250
          DDDFA37EEFD0DF6D7FA47D9FE7AD1FF1B9D4B1BA962743C3E9A4E5E4663FED78
          EDA3DD61ADCD0CA5CDA9BFA6FD61D67E87D9FE06C5CA5F98FCEEA5F5BF2ECA2C
          C47DD88E7BB1EE116309CBC0F658D21BB5E929F66FAA99B95D43EADF4ECDCC7F
          AB9391432CB6C80D9711A9DB58631BFD96AC8EB7FE33BEAAF4CC4B2CC7CB6F50
          CA00FA38D8F2EDCEE1BEA5D1E9555EEFA6EFDCFE6EBB55DFA9975747D4AE9775
          A76D7561B1EF304C35ADDCE30172981D7BFC4DE05DF68C6A6B17076F6BECC7BE
          D2D74EE0EAFED0CB7D3735DFE8D2535BEAEFD7DFAC1D0F35B57D7BF5DB89D46A
          6DD8790EADBFA3899DD5E331AFDB635FFA567F3F47E87F43FA55E8BD2BAEF47E
          B0D7BBA5E5D5962ADBEA7A6E92DDF3B37B7E93376C7AE5B3FF00C61FF8B6EA74
          8A3A8DACCBA81DCD65D8B63C07416EF6EFA4EC7ED77D36AB1F523A87D417E5E5
          62FD546FA77DAC1764B436E00B6B3B19FD27D8DD8EC8FA15A4A723EB0FD69FAC
          9D3BFC623303A7576751C618E1E3A5B1CDAC3C9ADEE73BD535D8EFD1FF003AB3
          FEB2FD76FAF1FB53A4535F4F7F4175F6EC6537DADB2BC8717D2DDB73BD2A5D55
          55EEDB67BBE85CB7BEB8FD5460EAEEFADCDEBDFB0CE3D02B7D86916C407B0FA6
          7D5A9DBADADFE9B28657659EA7F36B84CB6FEDDBA8C8CECEEB3D7B030EC316D7
          D387A6E6CB1D90CAEEFB735D5FA8D67D27B3F46929EA7A7F5EFAE27FC6474FE9
          7D6EEAA965B4BDD661E2389A0814E4595BDDEA3AC7FABBD9FBCB57FC6AFD61EA
          FD13A1D3FB309A4E6D869B72DBF4AB1B4BB654EFF0775DEFD96FD3AFD3FD1FE9
          3DEB07EA6F46FABD9DF5C317AE7D56BEAA3A7E1D4E37F4DB9D67DA9AF7D76E3B
          9FB2EF55AFABF4D4FE91992FAD6DFF008CAC9EAF8CDA0B3A86062749BDBE95D8
          F9F4BAF6DB6826E1FA3661E6FB5ACADBFB9EF494E7F58FAA9D2FA7FD57B7AF61
          FD60CD19CCA7D5AFA9FDA9C4643E25947B5DF46F77E8A9F4ECF56BFF0086599D
          57EB4FD60CEFA95D07A8DB91763655F9EEA2DBE879A7D6630BD9BDCDC735FE73
          7639BFE92B5CFE47D4CEB1D2FEB760F48B0E0599B9CDF5A961DEFC5683EA868B
          996D5BBE950FFD1FA76B113EB1F54EB2FBB13A3752EA785983A765B6A187874B
          EAF45D51346D0E76161D1E8D7FCD6CA6D7A4A7FFD0F555E43173BA96152DAEE8
          675C66438807D1D845347AAEFF0086F5BF41FD4FD17F835E66924A7EAA55FA87
          4FC2EA5856E067D4DC8C5C86EDB6A770473DBDCD7B5DEFAEC67BEB7FBD8BE5D4
          9253F417D5CFF173F573EAEE73BA8620BAFCA822AB321CD7FA40CB5FE88AEBAB
          E9B5DB37BF7D9FF822E07AAF42EB9675CFADF6B3A765BEBCAA5EDC67B68B0B6C
          272F09E1B43833F4BFA363ECFD1FF8362F3B49253F47FD50C5B2AFAA7D37132E
          9756F6E2B2BBA8B9A5A469B5F5D95583FE8B917FE69FD55FFCA6C0FF00D85A7F
          F49AF9AD2494FAE7F8B6FAA0D6E5F5BFDBFD199B3D5A8627DB31DAE6C0764FAB
          F66F598E66CFE67F99FF00835E8385D13A2F4EB4DDD3F031B12D73763ACA29AE
          B716C876C2EA98D76DDCD5F3124929F77FF1A5F56FAAF5EE8748E9936DB876FA
          CFC4063D4696966EAE7E95F4EEF633FD1FADFE17D3AD55C5FF001A5D270F1AAC
          4CDE8F9FD3F2696B6BFB13286ED6ED1B5B563EE7D1EC6B7E8EEAA95E24924A7D
          7FEAA74BEADD63EBD5BF5BCF4F7F45E9A03C0A6C058FC873ABF4B7BEB3E9EEF5
          1D67DAACB7D3F47D466CFD35DEADEB57FC6A7D5EEAFD7BA3E255D2A8FB4DB464
          6FB2B0E6B4ED2C7B378F55CC6FD25E16924A7DA2CEA3FE31ADCAAF32CFAA784F
          CAA46DAB21CFA8D8C0665B5DA723D467D277D155BAB3BEBE75A6515755FAA78F
          9155168BAB0323610F1EDDDBA9CB67E6BBF3FF0046BC812494FF00FFD9FFED0E
          C250686F746F73686F7020332E30003842494D04250000000000100000000000
          00000000000000000000003842494D03ED000000000010004800000001000200
          480000000100023842494D042600000000000E000000000000000000003F8000
          003842494D040D000000000004000000783842494D0419000000000004000000
          1E3842494D03F3000000000009000000000000000001003842494D040A000000
          00000100003842494D271000000000000A000100000000000000023842494D03
          F5000000000048002F66660001006C66660006000000000001002F6666000100
          A1999A0006000000000001003200000001005A00000006000000000001003500
          000001002D000000060000000000013842494D03F80000000000700000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF03E800003842494D040000000000000200013842494D040200
          0000000004000000003842494D04080000000000100000000100000240000002
          40000000003842494D041E000000000004000000003842494D041A0000000003
          3D0000000600000000000000000000009E0000034200000004BB34C81C002D00
          3100000001000000000000000000000000000000000000000100000000000000
          00000003420000009E0000000000000000000000000000000001000000000000
          0000000000000000000000000010000000010000000000006E756C6C00000002
          00000006626F756E64734F626A63000000010000000000005263743100000004
          00000000546F70206C6F6E6700000000000000004C6566746C6F6E6700000000
          0000000042746F6D6C6F6E670000009E00000000526768746C6F6E6700000342
          00000006736C69636573566C4C73000000014F626A6300000001000000000005
          736C6963650000001200000007736C69636549446C6F6E670000000000000007
          67726F757049446C6F6E6700000000000000066F726967696E656E756D000000
          0C45536C6963654F726967696E0000000D6175746F47656E6572617465640000
          000054797065656E756D0000000A45536C6963655479706500000000496D6720
          00000006626F756E64734F626A63000000010000000000005263743100000004
          00000000546F70206C6F6E6700000000000000004C6566746C6F6E6700000000
          0000000042746F6D6C6F6E670000009E00000000526768746C6F6E6700000342
          0000000375726C54455854000000010000000000006E756C6C54455854000000
          010000000000004D7367655445585400000001000000000006616C7454616754
          4558540000000100000000000E63656C6C54657874497348544D4C626F6F6C01
          0000000863656C6C546578745445585400000001000000000009686F727A416C
          69676E656E756D0000000F45536C696365486F727A416C69676E000000076465
          6661756C740000000976657274416C69676E656E756D0000000F45536C696365
          56657274416C69676E0000000764656661756C740000000B6267436F6C6F7254
          797065656E756D0000001145536C6963654247436F6C6F725479706500000000
          4E6F6E6500000009746F704F75747365746C6F6E67000000000000000A6C6566
          744F75747365746C6F6E67000000000000000C626F74746F6D4F75747365746C
          6F6E67000000000000000B72696768744F75747365746C6F6E67000000000038
          42494D041100000000000101003842494D041400000000000400000002384249
          4D040C0000000008DE0000000100000080000000180000018000002400000008
          C200180001FFD8FFE000104A46494600010201004800480000FFED000C41646F
          62655F434D0002FFEE000E41646F626500648000000001FFDB0084000C080808
          09080C09090C110B0A0B11150F0C0C0F1518131315131318110C0C0C0C0C0C11
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B
          0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C
          110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000
          11080018008003012200021101031101FFDD00040008FFC4013F000001050101
          0101010100000000000000030001020405060708090A0B010001050101010101
          0100000000000000010002030405060708090A0B100001040103020402050706
          0805030C33010002110304211231054151611322718132061491A1B142232415
          52C16233347282D14307259253F0E1F163733516A2B283264493546445C2A374
          3617D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4A5B5C5D5E5F556
          66768696A6B6C6D6E6F637475767778797A7B7C7D7E7F7110002020102040403
          04050607070605350100021103213112044151617122130532819114A1B14223
          C152D1F0332462E1728292435315637334F1250616A2B283072635C2D2449354
          A317644555367465E2F2B384C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5
          F55666768696A6B6C6D6E6F62737475767778797A7B7C7FFDA000C0301000211
          0311003F00F43C8FAC7D0B1AFB31B233A9AEEA8EDB18E74169203E1FFBBED72F
          3239D9B5F55C626FB198E3399936BCD840389EA63B5AD14FF3CE7FDAFED77DDF
          42DFB3D5FE8574DD5FEA0E6E775FCDEACD1836FDAA1B57DA5B63CD6D0CAEADCC
          6376D2DB1AE63DED7FF39FF0AB9825AD653D35B4E207DD92DAD87D27EE175963
          70FD5734DAEF4FA5B291F64A2C6E47DBBED1BFFC0DB624A7D3B1BEB1743CAC8A
          F1B1F36AB6EB4915B1AED5C4073E1BFBDEC639CB3FEBCFD6A1F55FA19CEAEB17
          655CF1462D6EFA3BDC1CFF0052DD5AFF004AB656EFA1F9FE9D7ECF53D4593D1B
          EA1E774FEBF8DD59C306A1548B5B8ADB6B2E6EC731BFA371750E7EEF4FDFE9D4
          FF00E72DB2C7AA1FE3AB1AD3D2FA666897538F92E658CEC4D8DDCC73BFED87B3
          FEB8929ACDFADFF5D3EA96660D9F5C9EDCDE9FD4EA2F0DA5958BA973435CFADC
          DAEBC5FD2D7EAD5EB31DEA57FE82D59A3FC63FD60CDC8FAC37E0E73D9858D8C6
          FE9EC7D348757FACE250DDDFA37EEFD0DF6D7FA47D9FE7AD1FF1B9D4B1BA9627
          43C3E9A4E5E4663FED78EDA3DD61ADCD0CA5CDA9BFA6FD61D67E87D9FE06C5CA
          5F98FCEEA5F5BF2ECA2CC47DD88E7BB1EE116309CBC0F658D21BB5E929F66FAA
          99B95D43EADF4ECDCC7FAB9391432CB6C80D9711A9DB58631BFD96AC8EB7FE33
          BEAAF4CC4B2CC7CB6F50CA00FA38D8F2EDCEE1BEA5D1E9555EEFA6EFDCFE6EBB
          55DFA9975747D4AE9775A76D7561B1EF304C35ADDCE30172981D7BFC4DE05DF6
          8C6A6B17076F6BECC7BED2D74EE0EAFED0CB7D3735DFE8D2535BEAEFD7DFAC1D
          0F35B57D7BF5DB89D46A6DD8790EADBFA3899DD5E331AFDB635FFA567F3F47E8
          7F43FA55E8BD2BAEF47EB0D7BBA5E5D5962ADBEA7A6E92DDF3B37B7E93376C7A
          E5B3FF00C61FF8B6EA748A3A8DACCBA81DCD65D8B63C07416EF6EFA4EC7ED77D
          36AB1F523A87D417E5E562FD546FA77DAC1764B436E00B6B3B19FD27D8DD8EC8
          FA15A4A723EB0FD69FAC9D3BFC623303A7576751C618E1E3A5B1CDAC3C9ADEE7
          3BD535D8EFD1FF003AB3FEB2FD76FAF1FB53A4535F4F7F4175F6EC6537DADB2B
          C8717D2DDB73BD2A5D5555EEDB67BBE85CB7BEB8FD5460EAEEFADCDEBDFB0CE3
          D02B7D86916C407B0FA67D5A9DBADADFE9B28657659EA7F36B84CB6FEDDBA8C8
          CECEEB3D7B030EC316D7D387A6E6CB1D90CAEEFB735D5FA8D67D27B3F46929EA
          7A7F5EFAE27FC6474FE97D6EEAA965B4BDD661E2389A0814E4595BDDEA3AC7FA
          BBD9FBCB57FC6AFD61EAFD13A1D3FB309A4E6D869B72DBF4AB1B4BB654EFF077
          5DEFD96FD3AFD3FD1FE93DEB07EA6F46FABD9DF5C317AE7D56BEAA3A7E1D4E37
          F4DB9D67DA9AF7D76E3B9FB2EF55AFABF4D4FE91992FAD6DFF008CAC9EAF8CDA
          0B3A86062749BDBE95D8F9F4BAF6DB6826E1FA3661E6FB5ACADBFB9EF494E7F5
          8FAA9D2FA7FD57B7AF61FD60CD19CCA7D5AFA9FDA9C4643E25947B5DF46F77E8
          A9F4ECF56BFF0086599D57EB4FD60CEFA95D07A8DB91763655F9EEA2DBE879A7
          D6630BD9BDCDC735FE737639BFE92B5CFE47D4CEB1D2FEB760F48B0E0599B9CD
          F5A961DEFC5683EA868B996D5BBE950FFD1FA76B113EB1F54EB2FBB13A3752EA
          785983A765B6A187874BEAF45D51346D0E76161D1E8D7FCD6CA6D7A4A7FFD0F5
          55E43173BA96152DAEE8675C66438807D1D845347AAEFF0086F5BF41FD4FD17F
          835E66924A7EAA55FA874FC2EA5856E067D4DC8C5C86EDB6A770473DBDCD7B5D
          EFAEC67BEB7FBD8BE5D49253F417D5CFF173F573EAEE73BA8620BAFCA822AB32
          1CD7FA40CB5FE88AEBABE9B5DB37BF7D9FF822E07AAF42EB9675CFADF6B3A765
          BEBCAA5EDC67B68B0B6C272F09E1B43833F4BFA363ECFD1FF8362F3B49253F47
          FD50C5B2AFAA7D37132E9756F6E2B2BBA8B9A5A469B5F5D95583FE8B917FE69F
          D55FFCA6C0FF00D85A7FF49AF9AD2494FAE7F8B6FAA0D6E5F5BFDBFD199B3D5A
          8627DB31DAE6C0764FABF66F598E66CFE67F99FF00835E8385D13A2F4EB4DDD3
          F031B12D73763ACA29AEB716C876C2EA98D76DDCD5F3124929F77FF1A5F56FAA
          F5EE8748E9936DB876FACFC4063D4696966EAE7E95F4EEF633FD1FADFE17D3AD
          55C5FF001A5D270F1AAC4CDE8F9FD3F2696B6BFB13286ED6ED1B5B563EE7D1EC
          6B7E8EEAA95E24924A7D7FEAA74BEADD63EBD5BF5BCF4F7F45E9A03C0A6C058F
          C873ABF4B7BEB3E9EEF51D67DAACB7D3F47D466CFD35DEADEB57FC6A7D5EEAFD
          7BA3E255D2A8FB4DB4646FB2B0E6B4ED2C7B378F55CC6FD25E16924A7DA2CEA3
          FE31ADCAAF32CFAA784FCAA46DAB21CFA8D8C0665B5DA723D467D277D155BAB3
          BEBE75A6515755FAA78F9155168BAB0323610F1EDDDBA9CB67E6BBF3FF0046BC
          812494FF00FFD93842494D042100000000007900000001010000001800410064
          006F00620065002000500068006F0074006F00730068006F007000200045006C
          0065006D0065006E007400730000001C00410064006F00620065002000500068
          006F0074006F00730068006F007000200045006C0065006D0065006E00740073
          00200032002E003000000001003842494D040600000000000700010000000101
          00FFE113CB687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E30
          2F003C3F787061636B657420626567696E3D27EFBBBF272069643D2757354D30
          4D7043656869487A7265537A4E54637A6B633964273F3E0A3C3F61646F62652D
          7861702D66696C74657273206573633D224352223F3E0A3C783A7861706D6574
          6120786D6C6E733A783D2761646F62653A6E733A6D6574612F2720783A786170
          746B3D27584D5020746F6F6C6B697420322E382E322D33332C206672616D6577
          6F726B20312E35273E0A3C7264663A52444620786D6C6E733A7264663D276874
          74703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73
          796E7461782D6E73232720786D6C6E733A69583D27687474703A2F2F6E732E61
          646F62652E636F6D2F69582F312E302F273E0A0A203C7264663A446573637269
          7074696F6E2061626F75743D27757569643A30356262613362642D633936302D
          313164382D393666612D626235393061623038653066270A2020786D6C6E733A
          7064663D27687474703A2F2F6E732E61646F62652E636F6D2F7064662F312E33
          2F273E0A20203C212D2D207064663A43726561746F7220697320616C69617365
          64202D2D3E0A203C2F7264663A4465736372697074696F6E3E0A0A203C726466
          3A4465736372697074696F6E2061626F75743D27757569643A30356262613362
          642D633936302D313164382D393666612D626235393061623038653066270A20
          20786D6C6E733A7861703D27687474703A2F2F6E732E61646F62652E636F6D2F
          7861702F312E302F273E0A20203C7861703A43726561746F72546F6F6C3E4164
          6F62652050686F746F73686F7020456C656D656E747320666F722057696E646F
          77732C2076657273696F6E20322E303C2F7861703A43726561746F72546F6F6C
          3E0A203C2F7264663A4465736372697074696F6E3E0A0A203C7264663A446573
          6372697074696F6E2061626F75743D27757569643A30356262613362642D6339
          36302D313164382D393666612D626235393061623038653066270A2020786D6C
          6E733A7861704D4D3D27687474703A2F2F6E732E61646F62652E636F6D2F7861
          702F312E302F6D6D2F273E0A20203C7861704D4D3A446F63756D656E7449443E
          61646F62653A646F6369643A70686F746F73686F703A30356262613362622D63
          3936302D313164382D393666612D6262353930616230386530663C2F7861704D
          4D3A446F63756D656E7449443E0A203C2F7264663A4465736372697074696F6E
          3E0A0A3C2F7264663A5244463E0A3C2F783A7861706D6574613E0A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A3C3F787061
          636B657420656E643D2777273F3EFFEE000E41646F626500648000000001FFDB
          0084000C08080809080C09090C110B0A0B11150F0C0C0F151813131513131811
          0C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E0E0E0E14110C0C0C0C0C11
          110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0CFFC0001108009E034203012200021101031101FFDD00040035FFC401
          3F0000010501010101010100000000000000030001020405060708090A0B0100
          010501010101010100000000000000010002030405060708090A0B1000010401
          030204020507060805030C330100021103042112310541516113227181320614
          91A1B14223241552C16233347282D14307259253F0E1F163733516A2B2832644
          93546445C2A3743617D255E265F2B384C3D375E3F3462794A485B495C4D4E4F4
          A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7B7C7D7E7F71100
          0202010204040304050607070605350100021103213112044151617122130532
          819114A1B14223C152D1F0332462E1728292435315637334F1250616A2B28307
          2635C2D2449354A317644555367465E2F2B384C3D375E3F34694A485B495C4D4
          E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F62737475767778797A7B7C7FFDA
          000C03010002110311003F00F554924925292492494A492492539BF58B2AFC3E
          81D4B2F1DFE9DF8F897DB53E0187B2B7D95BA1C1CDFA6D5E5BD1BAEFF8DCEB98
          8ECBE937FDA686586A759B70990F686BDCDDB7B2B7FD0B18BD3BEB67FE25BACF
          FE10C9FF00CF362F2BE8A48FF13DD748307EDCDE3CDDD39253ABFF00AFD3B71D
          BFE4F4BFF5FB7FAFECF5E6BD3F0733A8E653838351BF2AF3B2BA99A9279D67DB
          ED6FBDCE7FB19F9EBAEB3FC51FD6D661FAEDFB3596ED6BBECADB4FAB2E8DCC25
          EC662FE8A7DFFAC7FC524A773FF5FAFF00AFECF543AD75DFF1B9D0F15B97D56F
          FB350F78A9AFD984F9790F7B5BB6965AEFA15BD79D9106278F032BAA61FF00D7
          5DC4CF5E03FF00651253EDBF57726FCBE81D372F21DEA5F918945B73E0097BEB
          65963B6B435BF4DCB4564FD53FFC4B746FFC218DFF009EAB5AC9294924924A52
          49249294924924A5249249294924924A52492066656362633F232AD65143237D
          B6B83183710C6EE7BCB1BEE7BB63525274979C75BFF1C5D1B199655D1A9B33AF
          101B7583D2A20B777A9EEFD66CD967F827D147A9FA4FD32E73FF001E7FAD1FF7
          1B027FE2EEFF00DEA494FB524BCB3A4FF8E9AF6ECEB580E0E0D24DB84410E74F
          B1A31F21CCF4DBB3F3FED56AF41E8BF583A3F5CA4DFD2F2ABCA6363786987B64
          B9ADF5687EDBA9DFE9BB67A95FBFF31253A4924924A52498F1E2B9BFAF3F5A6E
          FAAFD1DB9F550321F6DA31D8D738B435CE65B6B6D74077A9B7D1FA0929E9525E
          29FF008F47D681FF00697027FE2EEFFDEA4E3FC74FD67768FC4C12DEE032D063
          CA725C929F6A4973BF52FEB51FAD3D2EDEA0718627A57BB1FD20FF00524B5955
          BBF7FA757FA659FF00E307EBB65FD53A31061E3577DF9DEA6C7DAE3B19E91A77
          6EA6BDAFBBD465FF00E9EA494F6492F14FFC7ABEB57FDC5C0FFB6EEFFDEA53A7
          FC757D64F559EBE1E13A9DC3D46B1B6B1C5B3EE6B2C75F6B58E737F3FD2B3FE2
          D253ED092A3D1F34F51E99879FB3D3FB5D155FB2776DF558DB766F8F7EDDDFC8
          57925292492494A4924925292492494A49249252924933B829297497897D64FF
          0019BF5959D73359D2739B460D769AF1DAC653734B59FA2F5D975943DCFF00B4
          39BEB7D2F66F599FF8E8FD7AFF00CB3FFC031FFF0079D253F4024BC007F8D0FA
          F3FF00967FF8063FFEF3AF62FA99D5F23AD7D5BC0EA5923F4F7565B6BB4F73EA
          73B1ACB61AD6359EB3E9F57D3FE5FF0021253BA924924A5249249294924924A5
          249249294924924A52499D31A72BE75EA5F5B7EB19CEC97D3D6737D275CF3596
          645AD1B773B6ED6B5B86DD9FFA098DFF0085F1FF009A494FD1692F9ABFE767D6
          9FFCB9CFFF00D8ABBFF4A2E97FC5C7D61EBF9BF5CFA76366753CBC9C7B3D6DF4
          DB7D8F63A28BDEDDD5D8F731DB5EDDC929F7049249252924933B8F1494BA4B87
          FF001B1D53A8F4CFAB555BD3F26CC4B2ECBAEA7DB4B8B1E59B2EB8B5B637F4B5
          FE92967D072F22FF009D9F5A7FF2E73FFF0062AEFF00D28929FA5525F35FFCEC
          FAD0743D673E3FF0CDDFFA517A4FF89CEA9D4FA8BBAB9EA3977E61A7ECFE9FAF
          6BEDD9BBED3BF67AAE76CDDB1253E96924924A524BE6AFAD9FF8A9EB3FF87F2B
          FF003F58B29253F5524BE6AFAA7FF8A9E8DFF87F17FF003F56BE940929749249
          25292492494A4C784CF8DA678FBD79E7D77FF19B57487DBD27A3B5B7E7B5A596
          E54CD7459206D63087B72B22B61F7EF77A755BE9FADEB7E9A8AD29EC7AC75FE9
          1D128F5BAA653315A7E807497BE0B5AEF4A96875B6ED759F98CF67F38FFD1AE0
          3AB7F8E9A830B7A374F2E796B62ECC76D01D3EF6FD971DCE7595FA7F43F5AABF
          E2FF00D2799751CECCEA3976E766DAEC8C9BCEEB6E7724FCBDAD637E8318CF63
          19FA362AA929EC32BFC6A7D73BEF759565D78CC3C535515960FEAFDA6BBEDFFC
          11645DF5BFEB5596BED3D5F35A5EE2E2197D8C6C93BBD95D6F6B18DFE4B16322
          514DB7DD5D14B0D96DAE0CAD8DD4B9CE3B5AD6FF0059C929D4A7EB7FD69AEE65
          83AC66B8B1C1C03F22C7B646BEEAEC7B98FF00ED2D9C5FF1A9F5D69BDB6DB975
          E4D6277536D35863A411EEFB2B31EEF6FD3F65CB907023FBD45253EBDD1FFC73
          74EBB655D630ECC6790C69BB1C8B6A24FF003D6BAA7FA77534B3E97A6CFB5BFF
          00EFFDDF49EB7D2BAC33D5E9B9756535AD6B9E2B702E687C9AFD5ABF9DA5EEDB
          F42E6D6FFA6BE67577A6F56EA3D2B246574EC8B316F1037D6624070B3658DFA1
          6D7BDBFCDD9EC494FD3892E0BEA27F8C7C5EB38EDC1EAF6D78DD56B86B5EE218
          CC8DC456C753F9ACC9DEFF00D2E37FD771BF47BEBC5EE9A65253277D13DFC972
          FF0059BEBFF45FAAF9956267B2FBAEB6BF54368634C3371631EEF5ACA19EF732
          CFA0BA95E2BFE3ABFF0015389FF842BFFCFD94929EABFF001EAFAABFF7173FFE
          DBA7FF007A92FF00C7A7EAB1D3ECB9FF00F6DD3FFBD4BC552494FD4DAF87E4FF
          003524449253FFD0F554924925292492494A4924925393F5B3FF0012DD67FF00
          08657FE79B1795F46FFF00239D77FF000FB3FEAFA6AF54FAD9FF00896EB3FF00
          8432BFF3CD8BCAFA37FF0091CEBBFF0087D9FF0057D35253CF7D47EAD89D1BEB
          360F52CD716E3545EDB0B46E701657651BF6FF0021D6EF7AF4CFAB7D1FEB0F4B
          FAE7D77ACF56DD4748C96DEF6DF65CC2C2D65AD7623EC6FAA5D5FA187EAFA6FB
          ABFD5E9FD1AF155ED1F58B33EC9FE28F176DBE8D97E060D35C3B6976E147AB53
          3F7B7637ADEA7FC1A4A7C8BABDF8B93D5333270EBF4716EBEDB28AA037656F7B
          9F557E9B3D8CD959DBEC5BDFFE6B3FF6BDFF00BA6B962BA9FF00F359FF00B5EF
          FDD3494FB57D53FF00C4B746FF00C218BFF9E6B5ACB27EA9FF00E25BA37FE10C
          5FFCF35AD6494A4924925292492494A4924925292492494A4C53A677D1494E7F
          58EB381D1F06CCDCEB5B554C6B8B5A5CD6BAC735AEB45147AAE636CBDED67E8D
          9BD783FD6BFAE5D5FEB35C4E53FD3C26585F8F86C8F4D92363773B6B1F7DDB3F
          C2DBFF0009E97A5EAEC577FC60FD72B7EB1F527D18B6B8F46C670FB257B4B37B
          80DAFC9B58EF739CEF7B28DFB3D3C7FF000355BEB2E45252924E395A58DF57BA
          F6650DC9C4E9B979343E765B4D1658C7412D76DB18C737B24A73568748EB5D4B
          A3658CBE9B90EC6BF6961700D20B5DF4ABB2BB5AFA6C6FFC63554C8A6EA2C7D3
          7B1D5DB5B8B2CADE20B5CDF6B98E047D341494FD03F51FEBAE1FD67C5D8E028E
          A7436727141D081ECFB4E3EEF73E87FE77FA0B3F4567F82B6FEA57CC3D23A964
          F4AEA78DD4711DB6FC6B058CD480639AECD8E63FD2B5BFA2B7DFFCD2FA3BA275
          7C3EB3D3A8EA5825CEC6C96935EF6ED702D26BB18E6FEF57631CCFF47FE8DE92
          9D05E7FF00E3ABFF0012D8BFF87EBFFCF394BD0179FF00F8EAFF00C4B62FFE1F
          AFFF003CE524A7C552492494FB57F894FF00C4B657FE1FB3FF003CE2AC9FF1E7
          FF00789FFA15FF00BA8B5BFC4A7FE25B2BFF000FD9FF009E71564FF8F3FF00BC
          4FFD0AFF00DD4494F95A49276F2929FA4FEA9FFE25BA37FE10C5FF00CF35AD65
          8BF53AEAADFAADD21D53DB6346150C25A4101D5D6DAAD67F599631EC72DA494A
          4924925292492494A4924925292492494B158BF5AFEB055F57FA1E4F51716FAA
          D6ECC5ACC7BEE77F32CDA5CC73D8CFE76FDAFF00E63D45AF916D54D0FBAE7B6A
          AAA05F658F21AD6B5BEE7BDEF77B58C637E939780FD7EFADD6FD66EAB2CDA3A7
          E117D7841A0CB9AE237E4BDCF6B6CDF93E956FF4BFC0B3F47FCEFAB65A94F34F
          3A71130A092492971CAF52FF00133D7AAAECCAE81696B1F738E5631D0173835B
          5E455ABFDEF6D75D36D6CAD9F43ED4BCB159E9D9F99D37369CEC1B5D464D0EDD
          558DE41E383ED7B1EDF6595BBF9DAFF46929FA8525CB7D47FAED87F5A31369DB
          4753A1B3938C0E847D1FB4E36EF73F1DEFFF00B62CFD1DDFE06EC8EA52529249
          2494A4924925292492494A49249252C785F2B2FAA4F0BE56494A5D5FF8AEFF00
          C5DF4CFF00AFFF00EDBE42E511B172F2B0AF6E4E1DD66364573B2EA9C58F6C82
          C76DB2B2D7B7731DB5253F5224BE6AFF009D9F5A7FF2E73FFF0062AEFF00D289
          7FCECFAD3FF9739FFF00B1577FE94494FD2A98F0BE6BFF009D9F5A7FF2E73FFF
          0062AEFF00D289C7D6CFAD24FF00CB39FF00FB1577FE94494FAAFF008E5AEDB3
          EAAD258C739B4E6D6FB080486B766453BEC23DAC67AB632B5E28B433BAE759EA
          140A33B3F272EA0E0F0CBED7D8D0E00B43DADB5EEDAEDAE59E92971CAE87EAB7
          D75EA7F557ED47A753458733D3F53ED0D73A3D3F5366CF46CA3FD32E752494F7
          FF00F8F57D6AFF00B8B81FF6DDDFFBD49C7F8E9FAD474FB2E07FDB777FEF52F3
          F492536FA966D9D433B2B3ED6B5B6E5DCFBEC6B341BAC73AD7ED0E2F76CF72A8
          924929D5FAA7FF008A9E8DFF0087F17FF3F56BE940BE6BFAA7FF008A9E8DFF00
          87F17FF3F56BE940929749249252933A3699FF005FB93A677D12929E27FC657D
          6C1D17A41C4C3BFD3EA59E036BD8E02CAE933EAE4FD17EDF5367D9EB7EF67F39
          EAD3FD1D788E45B6DD6BEFB9EEB2DB1C5CF7BCEE739CE25CF73DCEF739FBBF7D
          743FE317A8FED0FADDD41ED7586BC7B062D6DB0CEDF407A16B6B1B9FFA37E4B6
          EB7FEB8B99494B8E56EFD56FAA9D43EB375018B8A3D3A590EC9CA702595B0FE7
          168FA76BFF00C050DFA7FF0017FA4584D12E8F15F477D51E834FD5FE898DD398
          1BEB35BBF29ED83BEE7FBAF76F6B2ADFB1DFA1A77337FD9EBA525397D03FC5A7
          D58E915037503A96539B165F9403DBA866EF431CFE82A6FA95EFADFF00D219F4
          3ED2BAC608D070A6924A477D555F4D94DCC6DB55AD2CB2B780E6B9AE1B5EC7B5
          DED731ED5C8F5DFF00163F563AAB2C76351FB3729FAB6DC6D1921A6B635D893E
          87A5F9F67A0CA2C7FF00A45D92677D12929F99FAE744EA1D0BA859D373EBD96D
          7EE0F1258F61FA1752FD3D4A9FFBFF00D8B3D3B7D4AD672F7BFF00193F57A9EA
          DF56722F1B5B93D39AFCAAAC70886B06EC9AFE83ECD96521EFF67FDA8652BC1D
          D1AA4A5E8B6DA6EAEEA1EEAAEA9C1F5D8D25AE6B9A7731EC7B7E839AE1F497BC
          7F8BBFADB6FD65E9967DB36FED1C1736BC82D11BDAE07D1C973768AEB7DDE9DA
          DB2B67FA1FF476555AF041CAEC7FC54E55D47D75C3A6B76D6E55775570807730
          556646DD46E67E9F1EA7A4A7DE178AFF008EAFFC54E27FE10AFF00F3F652F6A5
          E2BFE3ABFF0015389FF842BFFCFD94929F3F49249253F5524924929FFFD1F554
          931E1701F5A7FC69FF00CDFEB995D23F667DABECDE9FE9BD7F4F76F6577FF37F
          67B76EDF57F79253E8092F2AFF00C7CFFF00349FFB35FF00BE897FE3E7FF009A
          4FFD9AFF00DF4494FAAA4BCABFF1F2FF00CD27FECD7FEFA243FC789E7F62FF00
          ECD7FEFA24A7BFFAD7FF00896EB3FF0084327FF3CD8BCAFA2923FC4F75BEE3ED
          ECF2FCEE9EADF54FF1C5FB4BA666601E91E90CCA2CC7F53ED1BB6FA8C755BB67
          D9EBDDF4BF7D55E8FA7F89FEB64891F6F673C1F774F1E2125397F58BEA86561F
          4FE95D43A6615F761E4F4DAF273321A1D686DCEDF7E43EEDA1DE8D7551655EFD
          95FF00DBBEAAD6EAFD46DBBFC51F4A68C9758E19A71B2007EE21ADFB6594E35B
          EEDDB6AA5B8AFAEB7FF83F43F315AC5FAC3D4DDFE28B27D0ACBDD8D6BBA75F7B
          9E1C5B8F66C7EFD96B7DDFA3CAAFA73296FF0037FCF7F835CF7FF9AF9EDFB766
          3FF41125367EAEFD5827A6F58B7AC74BB9CDAFA63F3FA767BBD46D41C2AF5EB6
          B1F56DA321D736EAECF73DFE9FD9FD3555DFFE4B8F6FF2F71FFA08BA4A3EB175
          8FFC696FB6E35D4E160E9D8D63E18EB3176D5539B456E63EACBB7D3FB4633F67
          A7B29A6CB7F9EC65CEEA7FC5868223AECC7FE8224A7D9FEA9FFE25BA37FE10C5
          FF00CF35AD65E43D2BFC70FECDE9787D3FF649B8E1D2CA3D4FB46CDDE9B5B56E
          DBF67B3F7559FF00C7CA3FEF13FF0066BFF7D1253EAA92F2AFFC7CFF00F349FF
          00B35FFBE897FE3E7FF9A4FF00D9AFFDF4494FAAA4BCABFF001F2FFCD27FECD7
          FEFA2B3D33FC717ED3EA589D3FF647A5F6BBABA37FDA7747A8E6D5BB6FD9ABDD
          F4BF7D253E98928852494A49249252C785C67F8D1EBCEE95F566CC7A5CD17F51
          77D9A25B22A23F5A7B6B7077A8DF4FF56FFAFAECDDF44C2F0BFF001AFD63F687
          D677E231FBA9E98C6D0D0D7EF61B0FE9721ED6FD1AAD6B9CDC5BBFF0AFFDB694
          F18EE25336275E13276F2929EDFF00C597D501D73A9FED0CC607F4DC070DD5D8
          D716DD6B83BD3A9AE1EC7368F6DF7FBBFD057E97EB1BD7B6801A0CE83F1FFA2B
          0BEA1F473D1BEACE0E23D9B2E7D7EBE402CF4DFEA5DFA52CBD9F49D6E3B5CCC5
          DEEFF43FE6744929E2BFC63FD506F5EE9272B16B6FED2C06EFA9C1A4D96D4D0E
          759863D2FE53B7E3FE8ACFD2FF00C7D8BC35CD2D6C1E57D4AEFA2BE78FAF7D1C
          746FACF9D88C66CA5F67AF8E033D367A777E95ACA19F45D563B9CEC5DEDFF43F
          E6253CF8E56E747FAE5F58FA0E1BB13A4E5FD9A97D86D7B3D2A9F2F706B0BB75
          F558EFA15316124929EAC7F8D1FAF53FF29FFE018FFF00BCEA875AFAE3F58FAE
          E1B713AAE5FDA686582D633D3A990F682C6BB751557F9963D61A49294924924A
          7DABFC4A7FE25B2BFF000FD9FF009E71564FF8F3FF00BC4FFD0AFF00DD45ADFE
          253FF12D95FF0087ECFF00CF38AB27FC79FF00DE27FE857FEEA24A7CAD249249
          4FD29F54FF00F12DD1BFF0862FFE79AD6B2C9FAA7FF896E8DFF84317FF003CD6
          B5925292492494A492593F5A7AE1E81D072BAB8A7ED071BD38A8BB603EA595D1
          F4F6BFE87ABBFE8A4A75925E2BFF008F3FD679D317076F9B2D3A76E327FEF8AB
          E6FF008DDFADB935065271F05C0EEF529A8924446C7372DF955EDFEC24A7DC5D
          C15CC7D62FAF9F57FA2635C4E4579998DDEDAF0E87073CD8D219E95CF66FFB2F
          B9DEF7DDFF005AAECB7F44BC53AA7D69FAC5D59B6B7A8750BEEAEEDBEA51BCB6
          93B482DFD56AD98FED7B377F36B21253D27D6FFAEBD5BEB3D8D193B68C2A5C5D
          462544ED049706D96B8FF3F7B6BFD1FABEC67FA2AA9F56C5CDA49C7292941697
          4DFABFD53AA626665E153EB63F4E67AB98FDEC6EC610FB376CB5CC73BDB4DBF4
          159FAB5F55FA97D63CF6E36156E3535CCFB4E4685B556F706BAD707BAB6BFD9B
          AC650C7FA962F7AE8BD1303A1F4F674EE9ECD95572E739C65F63CC7A97DF67E7
          DB6FFEA3FE6BD2AD253F35BB884CBBCFAF7FE2E72BA3DEECDE9355993D29F2F3
          5B439EFC7DA0BDEDB7F39F8DB5AF73327FEB591EFF004ADC8E11C2125373A675
          6EA3D2B246574EC8B3172040DF598901C2CF4EC6EACB6BDED6FE8DFF004D7ACF
          D57FF1B5D373DACC7EBA0606739C40B981C719F2E6B6B6EAEB2DC77FBDDBFD4F
          D07E8BD5F5FF00495D2BC613A4A7EA1C3CBC5CCA5B9389757914BE76DB5383D8
          63DAEDB633D8EE1585F30E0F52CFE9F69B70326DC4B5E3639F43DD5B8B490F2C
          2EA8B5DB773574BD37FC69FD70E9E007DF5E6B1AC0C6B326B078DAD6D9EA51E8
          645B66D6FD3B6E7A4A7DE525E2F4FF008EAFAC9EAB3D7C3C27D41C0D8D636D6B
          8B41F7063DD916358FFF00ADD8BB0FA89FE30EDFACFD40F4DBB09B8F6D38BEBD
          97B2CDCD739AEAA9786526B6FA6C73AEFF004AFF004F67F86494F70924924A52
          492492963C2F9597D52785F2B24A52492E83EA174BC0EAFF005B307A7751ABD7
          C4BFD5F52BDCE64ECA6EB59EFA9D5D9FCE31BF9E929E7D25EFFF00F8D6FD45FF
          00CACFFC1F23FF007A12FF00C6B7EA2FFE567FE0F91FFBD0929F00497BFF00FE
          35BF517FF2B3FF0007C8FF00DE84BFF1AEFA8A351D335FF8FC8FFDE8494F8024
          BD53FC64FD4FFAB3D0BEAE7DABA6E1D78D9166457536C7D990F71043DEE6D0D3
          6D94FABFA3FF00B51FA2F43D5D9FAC7A4BCAD252E395DA7F8BFF00A9781F5AAA
          EA832ADB69B71055F6775446DDD68BFF009D63DAE73F6BA9FCDB2B5C52F55FF1
          19CF5AFF00D05FFDDB494AFF00C63E74FDB5FF00B2BFFBF6A74FF88FA996B1F7
          75875950703656CC7D8E7367DED658722DF4DCE6FE7FA562F5249253F31757C1
          FD9DD5333A7EFF0057EC77D98FEAEDDBBBD37BAADFB25FB776CFA1B9525ABF5B
          3FF153D67FF0FE57FE7EB16524A757EA9FFE2A7A37FE1FC5FF00CFD5AFA502F9
          AFEA9FFE2A7A37FE1FC5FF00CFD5AFA5024A5D2492494A4CEE13A674ED31CA4A
          7E6FFAE14DB57D69EAEDB58EADCECDBDE038104B6CB1D6D4EFEDD6F63D632F4B
          FF001C3F566CAF2EBFAC58B5B9D55ED1567B802432C66DAB1EEB0EF77B6FAB65
          1ECAEBABF41FE932579A24A64D12E1FC395F4F74DCCAB3F071B3E9045597532F
          AC3A276D8D6D8CDDFD972F9859F4876F35E8DFE2DFEBFD7D3195F41EAAE6B30F
          7118B94406FA4E7B8BDD4E47FC0596BDDFA7FF0001FE13F43FD1D29F6249071E
          DAAFA99752F6D9558D0E63D87735CD700E6398F6FB5CCDBFB88C9294924877DB
          4D34D975EF6D54D6D2FB2C790D6B5AD1B9EF7B9DED6B1ADFA6929C9FAE993462
          FD52EAF65EFF004D8EC4B6A0E827DF734E3523DBFBD75B5B57CE2EF871F82EDB
          FC647D7AA7EB1D956074C2EFD978CE2F739ECDAEB6E06CADB7365CE7FD9FD177
          E8BF98B7F4BFA7ABF9AF4F87494A5D27F8BAC7FB4FD74E995FAB6530F7D9BEA7
          6C77E8EAB6FF004F77FA3B7D3F4AEFDFA5F62E7072BD63FC4D740BAB195D7EED
          CC6DAD3898ADD4073439B664DBAB76BEBF5595D35595DBFCE3329253E9CDD0AF
          18FF001D5FF8A9C4FF00C215FF00E7ECA5ED4BC57FC757FE2A713FF0857FF9FB
          29253E7E924924A7EAA49249253FFFD2F555E52FFF00F2E47C7B4F13F60D17AB
          2F2AFF00F3EBFEBFF95E929CA3FE3A7EB403A6260C769AEDE3E5929BFF001EAF
          AD5FF71703FEDBBBFF007A9702898F5597DD5D3531D6DB6383595B41739CE261
          AD6B5BEE724A7BAFFC7ABEB4FF00DC5C0FFB6EEFFDEA45C7FF001C3F5BB26E65
          34E161596DAE0C656CAAE2E71261AD6B7ED5F9CA3D03FC51F56EA38AFC8EA977
          ECA9DBE856F60B5EE691BDEEB2A6DB4FD9F6EEFE6ECFD2FA9FF83DE7FD45FAD2
          EBE9C5E89D3F1FEAF3308B9E7A91C9F56FBECFE8DEA373B1D9F6EA6ABA9DCFFB
          1B3170F1BF9EF57F9CF46B4A4FD43FC637D73E8199457F587A5E1B45AD738514
          D9B6C2DFA3BF7B72337D1F77FA5A7DFF00A4591F5BBEB8E4FD68FABADBD99347
          4EC7AEF355DD27D436645EE02BB69C9F6D4DDD8ADDD67E8EDAE8A2BB31FF009F
          BF23D0AA90742C3CEEADD72977D5263ABEA1D3DD90ECBFAC19363EC6E41B6595
          E55B4E450F6E33AE6BAEF4B1FD2B723F4BFA4B3F417652D6E9FD53A0DDD56DFA
          B3F5D7A4E2333C3ED195D608AF1BD4B03DF955DAFB194E05B4557D5B7D3C86DB
          BF2BF47FF72925397F523A8519BF567AEFD55BAAF56DC8A2CCDC0ADB21F65F5B
          1AEF499B1FBECB5AFC7C5BA9AAAAFF00C1E4FA9FA35440FF00D763AC47EDCF3F
          FB89E4BA2E99D168FA99F58717AE6138F5AFABF915DED7E6D151BDD8AC69DA6E
          75D8A5F4B7D28D96E557FCED3FB42BFB32EE5B5FD51C2E9791D541C6774E764B
          FA95994E70C8AFED24FA6FCAA1EE7646DC9DEDD95B71FF003FF45553EA24A7CE
          BFC623DBD1BA2744FA9ECADA1D8D537332DE25CD369F52A9A1EE76EFD25EFCE7
          D9BEBFF42A97D54FAD593F53F05971F43A962F53DEF38355E45D45941F4BD5BD
          9B2C651F6967BD9ECFD3D4CAEDF53F46B6B2FA13BFC60FD6A3D4B0B1ECC2E855
          31B5DBD45CCDA72BD3758DF5315B6347AB6D9B7ECDBECF53D1A29AFED3FA4FD5
          51EEEA1D33A0FD6877D52FABF8B4F42C9C8B6BA9DD6DC1D9B6FE9ABAB2198ECC
          7C80E7B1B7647D9F1FF4990FC7FF000FE8FA9FA4A929860FF8C6FAEBD6BED167
          45C1C1C8F437DAEC3F79C8652DFA0FDAEC8A3ED5BB77A5FAA54F7FA9FE071BD6
          C659D77F8E3FADD8D6BE8B70B0ABB2A7163D8FAAF6B839A76B9AF63B2B735EDF
          E52ABD6712DC4EA7918FF5F311CDCAEA4EFD07D60C774EC6D61B436DFB1D1B71
          B2F1FF004547AB4FA58D9FF677DB67F3CFC7F4F55BF56FEB1F50CD6E6754E98D
          FADD81F67AABE9B9CECAFB1BCD1FCFE3DAF1BEABDCF7B2F7FDA7ED745B7FABFF
          006A6CFF000A94D0FF00C7ABEB57FDC5C0FF00B6EEFF00DEA4BFF1EAFAD5FF00
          71703FEDBBBFF7A94BEB07F8A4EAFD3B1DB7F4DBBF6B1971BAB6D62AB1AD68DE
          1D5B1D6DDF69DDB5DFA3AFF4CB82BEAB28B9F4DCC7576D6E2C7D6F696B9AE061
          CD7B5DEE639A929EF07F8E8FAD04EB8B81FF006DDC3FF7696E7D69CCB73F3FFC
          5EE7DC00B72EEAAFB0364343AC774EB5DB6777B7DCBC8D7AAF5BFF00F367FF00
          A0DFFC6D494FAA0E13A64E9294924924A62EE17CC7D5F3BF68F53CCEA1B3D3FB
          65F6E46CE76FAAF36ED9FE4EF5F47F5DCCB703A2750CEA4036E2635B7D61DA82
          EA98EB59BBFB4C5F3338CCA4A62AF742C3AB3FADE060DC48AB2F26AA2C2DD086
          DAF6D4EDBFD97AA2BA7FF16B4557FD76E995DAC6D8DDD6BC35E0386E65375B5B
          A1DF9D5D8C658C494FD00C111CA9A834429A4A58F0BC87FC7660ECEA5D3BA86F
          9FB463BE8D91C7A0F16EFDDFCBFB6AF5E3C2F3BFF1D14D5FF37716F2C6FAADCD
          6B18F8121AEAEF758C6BBF75EEAAA724A7C6938E53270929EFFEAC7F8ABFF9C1
          D0F1BABFED3FB37DA77FE87D0F523D3B1F47F39F68ABE97A5FB8AA7D74FF0017
          5FF35BA557D43F687DB3D4BDB8FE9FA3E946E65B6EFDDEB5FBBF995DBFF89AB6
          DB3EAB5CD7BDCF6D599657502490D6FA745BB59FBADF52CB2C51FF001D5FF896
          C5FF00C3F5FF00E79CA494F8AA4924929F6AFF00129FF896CAFF00C3F67FE79C
          5593FE3CFF00EF13FF0042BFF7516B7F894FFC4B657FE1FB3FF3CE2AC9FF001E
          7FF789FF00A15FFBA8929F2B49249253F4A7D53FFC4B746FFC218BFF009E6B5A
          CB27EA9FFE25BA37FE10C5FF00CF35AD6494A492492529729FE347FF00109D4F
          FEB1FF00B718EBAB5CD7F8C7C4CACDFA99D471B0E9B32722CF47653534BDEE8B
          E87BB6D75873DDB58DDC929F9E925ABFF34FEB4FFE5367FF00EC2DDFFA4D38FA
          A7F5A0193D1F3C01FF00756EFF00D26929C94975557F8B5FAED754CB19D31DB2
          C682375B4B0C1D7DD5D9757635DFC8735745D37FC4BE7BADDDD5B3EAAAB6B987
          6628758E7B666E67A97368650FFF004767A77FF2D253E68D8DC24C79AED3EA8F
          F8B7EABD7DD5E5E5876074BDCD2EB1E08B6DACB7D5FD4D8F66D7EFF67EB0FF00
          D07F84AFD6F4FD25E9BD17FC5EFD56E8CEAECA313ED19757D1C9C93EABA4385A
          DB057EDC7AACADCD6ECB69A6AFFD29D2B4424A73FA1744E9FD0706BE9BD3AAF4
          E8AF5738EAFB1E40DF7DCF1F4ED7FF00EABFD156C5A69249291DF5557D165373
          45955AD2CB18E01CD735C36BD8E63BDAF6B9BF9ABCC3EB97F8A875D6DDD4BEAE
          001CF734BFA668D682E27D57E2DCF2DAD8C6FB7F55FF00B62DFE63197A9A63C2
          4A7E5FCCC3C9C2B5D8D974D98F915C6FAAD6963C48DC3731E1AEF737E82ACBE9
          7EAFF57FA3F5CA3D0EA98ACCA68FA05D21ECD5AE77A57565B7D3B9D5FBFD27AE
          17ABFF00899C3B6CB2DE919CEC566D73998B7B3D568712E7359F686BEB7B28DB
          B2BF7D7936FF00C25C929F22497699BFE2A7EB8E359E9D545398D224DB45CC0D
          1C8D87ED8EC5B377FD6D625DF543EB5576BEA3D2335C58E2D259458F6C83B7D9
          656C731EDFE5312538CBD03FC4AFFE2AB2BFF0859FF9FB1572BFF34FEB48FF00
          BC6CFF00FD85BBFF0049AEDFFC52745EB1D3FEB2E45D9F8193895BF0AC635F7D
          3656D2E3663BC303AD637DDB5A929F5D4924925292492494B1E17CACBEA93C2F
          9592529757FE2BBFF177D33FEBFF00FB6F90B945D07D42EA981D23EB660F51EA
          36FA18947ABEA59B5CF8DF4DD533D9536CB3F9C7B7F31253F4524B94FF00C74B
          EA2FFE59FF00E0191FFBCE97FE3A5F517FF2CFFF0000C8FF00DE7494F5698F0B
          95FF00C74BEA2FFE59FF00E0191FFBCE98FF008D1FA8A447ED3FFC0323FF0079
          D25399FE396BB6CFAAB49631CE6D39B5BEC20121ADD9914EFB08F6B19EAD8CAD
          78A2F51FF199F5C3EAC75EFABF5E274DCD75F91564B2E0C14D8D0406DB51F51F
          90DC7F4D9B6DF6FA7EB7FC57F865E5C9297124E9CAD5E8FF0058FAD742DF6749
          C9762BAC735D610D690E2D6D8CAF7B6D6D8C7B76DF6FB367FC2AC949253D57FE
          3A3F5EBFF2CFFF0000C7FF00DE74E3FC687D79240FDA7FF8063FFEF3AE512494
          9F372AECDCABB3321DBEFC87BADB5F006E7BCEFB1D0D0D6FD372024924A757EA
          9FFE2A7A37FE1FC5FF00CFD5AFA502F9AFEA9FFE2A7A37FE1FC5FF00CFD5AFA5
          024A5D2492494A492492535BA8E061F52C1BB073AA6DF8D7B76DB5BB8239E47B
          98F63BDF5D8DFE6ACFD22F07FAF1F52733EABE5EE1BAFE997BA31B248D41FA5F
          66C9DBED66431BFF006FD7FA4A7FC3538FF40A1DF555752FA6E636CAAC696595
          BC6E6B9AE1B5EC7B0FD26BDA929F96538E57AA7D64FF0013EDFD264FD5DBE06A
          FF00B0DE7C03DFB71B275FF81AAAAB23FE32DCB5E7FD67EAE75CE8C48EA7836E
          33439AC16B86EA8B9CDF5056CC9AF7E3BDFB3F72D4949BA57D6EFAC5D1982BE9
          F9F6D358696B2A31656D0E22C3E9D17B6DA6B76EFCF63574B89FE393EB256EA9
          B7E3E25F5B23D576DB1963C4FBFDCCB7D2658E6FE7FA1FF5B5E7E924A7BEB7FC
          71FD67B2A7D6CA30EA3634B45ACAECDCD2E07DEC0FBDF5EF6FF2D8F5CB759FAC
          7D73AC927A9E75B92D2E6BC54E3B6A0E6B7D316331ABD98EC7ECFDCA965271CA
          4A593B74702B6BA4FD51FAC5D6582CE9D816DB5B9A5CDB4815D6E008ADDE9DF7
          BAAA6C77F218E5E8BF577FC4F60E3C6475FBBED960D462505CCA47D31FA4BCEC
          C8BFDAEA9FECFB37D0FD27AE929E33EA67D43CFF00AC792C7DAD7E37491EEB73
          3691BC07399E8E1978DB6DBB98F6EFFE6E9FF0BFA4F4E95EEF8F557456CA6963
          6AA6B686575306D6B5AD1B58C635BED6B5B1ED6A6C7A2BA18CA696359554D0D6
          35A000D6810D6B5A3F351D252978AFF8EAFF00C54E27FE10AFFF003F652F6977
          0BC63FC74536B7EB1625E58E153B0D95B5E41DA5CDB6F7BD8D77EF3196D6929F
          3D49249253F5524924929FFFD3F555E52EFF00F2E9FEBFF95EBD54AF2A77FF00
          970D7C46BE3FA824A703EA77F8BAB7EB3E164669CE1875D379A1A3D236B9CE6B
          5B63F737D4A36B76D957EFAEA9BF54BAE74CEA27A17D5A6D1D2F12CACBACEB77
          B99667DF5935B331947A7FA6A69C7FB463B6B6554627E9B1EABBED95FAEB270B
          FC54FD77C0B5D6E0752C7C3B1E0B4D955F7D7616CFD12EA68F243B7FC507D6EB
          EE7DF7E6E159758E2FB2C75B739C5CED5CF2E7E36EDE929DCFF997D77EAFDD55
          BD068A7AA758CB367DA7AFE63E1F41B4EC7D95E0DAE7B1AE6B5DEAFDA5B6675F
          6FEB75BE9F49FE9D93BFEAD7D79E85D54F5DE9998CFAC5D4326B7E35ECCB69AB
          D3ADCF194D38EDFB532AF4BD4ADDFA1AAEAD95EFF651FE8B1B37FC577D7CEA01
          833FAAE3E58AE7D36DF919166CDDC867A98FECDDB5ADF6A9DBFE2D3FC615D89F
          61BBACD366186B58319D9592EAB6B23D368A0E3FA7ECD8C494ED7D57E97F5C8D
          C3EB3DDD4B17AADD9D58A2EC4F588C7F4980FA7E9E56132DC4664E2656FA5D55
          5897E3FE932ECFB4FAB72CFEB5F51FEB3FD696FDAB23ADE16666635B65166257
          231B1BDC5F65355D535F67DA5BFA0F53D7C565DFE0EFBFF45FA5C7FF00C657EB
          4CCFDAB03FEDCBBFF79551EB9FE2C7AFF41E977F54CCBF11F8F8E1A5E2B7DA5C
          77B9B53435AFA2B6FD3B3F7D253D87F8BEE91F5BFA4E3B2FEA79F4E27D5FA859
          7FD98BEAB839AF607B6EAB26BF5AAC7C2F7FDA37B32BFC17F31FA6B2C5D153F5
          D3EA957D2BF69D594DAFA79C976397B69B1A3ED1603996B3D3F4B7EEB37FAF65
          FF0042CF7AE2FEB2B2FE95FE293A462D56EE666D953AEF6C4B2F17F5415EDFF8
          2BBD3FF31735FF00E6B8FF00E9FBFF00751253DB7F8C2C3FADF9B8D666F4BEA9
          53BEAEE4B6B26AF56AC5DADB19E8BBD4CBB0D0DC9C2C8DFF0046DCAF7D993FD1
          BF44AAF49FA91F5A3EAF06FD62FABD9187999990D70774FAE5D8CFC7B5DBD9F6
          6CEC9B98FB767EAF7B7D4753FCD7F48C8FFB535FEA951FB43FC5475CC7C9B1EE
          AF1ECBECA8077D1F42BA3A8575B77CEC63F25BBDEB99FAB1F503AC7D66C1B33B
          02DC6AAAAAD34B85EE783B9AD6587F9BA6EF66DB5A929EF323EA8FD7DC9CFAFE
          B3D5D528C2EB76D6DAEEC301DE8554ED87515DAF39ECB3DCDF59F4FD9FD0FB57
          A9732DFCF7D7C6E83F5C3EB1E5BAEEAB6DBF57BABF4DA598CFCFC76BE32E9B3F
          4ECAF75191562EEA2EADF75EFC7B3D27FDABD3B2BA7ECCB16DFF0013FF005BAF
          7875B998563835AD97DB73886B1BE954CFE8DF4595B7D36FF515D3FE2E7FC639
          C7FB29EB959C70CF4BD0FB564EC2C8D9E97A7E86CF4D25371BF517AF756CCBDD
          D758DC5EACC732FABEB3E25B3EA3ABF499563FECE0719F5BEAAF7FEB555787FA
          4C7A7F9EFA7936B27EA6F5CCCC9A7A775EA71BAF6039BE9B3AC4FD973B19AC63
          761B1CD16FDA58D73F23ECF8CFFB5FAD91FA5CDBEA58587FE2A7EBBE058EB707
          A962E258F6EC7BA8BEFADC5A4CEC26BC7F757ED55CFF00897FAD4E3272F0493D
          CD974FFEDAA4A43F5EBFC5D33EAE630EA58595EB611B054EAAF2D6DCD247B363
          C7A6CCADCFF537B2AA7D4A59FE9ABF5ADAF6BAD7FF009B39E7F56FCBD31650FF
          0012FF005A0739581FF6E5C7FF007556E7D6AC3B7033FF00C5F60DDB4DB8B755
          43DCD923754EE9F53B6CEDF6FB5253E9A9D30E13A4A524924929C9FAD9FF0089
          5EB3FF008432BFF3CD8BE6B5F50F52C2ABA874FC9C0B896D59753E9B0B79DB63
          4D6EDBFD972F985DAEBFDC92982EAFFC577FE2EFA67FD7FF00F6DF21728BA4FF
          00173954E27D75E976DEED8D2F7D4D304FBEEAADC7A5B0DFDFBADAD8929FA192
          506F32A69294BCFF00FC757FE25B17FF000FD7FF009E72977E785E75FE3AB2A8
          6F40C2C42E8BEDCBF56B641D59557657699FE4BB269494F8DA49270929F69FF1
          2BFF00896CAFFC3F67FE79C54BFC757FE25B17FF000FD7FF009E7294BFC4D556
          D7F55AE73D8E636DCCB2CA89040737D3A2ADCCFDE6FA95D95A8FF8EAFF00C4B6
          2FFE1FAFFF003CE524A7C552492494FB57F894FF00C4B657FE1FB3FF003CE2AC
          9FF1E7FF00789FFA15FF00BA8B5BFC4A7FE25B2BFF000FD9FF009E71564FF8F3
          FF00BC4FFD0AFF00DD4494F95A4924929FA53EA9FF00E25BA37FE10C5FFCF35A
          D6593F54FF00F12DD1BFF0862FFE79AD6B24A5249249294924924A5249249294
          924924A5249249294924924A5249249294924924A5249249294924924A524924
          9294924924A59DC7FAFF00B57CD3F587A6FECAEB39FD3835ED662E43EBABD410
          E3583FA0B1FA37F9CA7D3B1AF5F4B3BE895C4FF8C1FA8A3EB2D03A8611D9D5B1
          99E9B1AE3ECB6B04BFD177FA2B18E7D9E8DBF9FF0042DF66CB2B4A7C3125D59F
          F163F5E4FF00DE673FF0F8E3FF0047A6FF00C6BBEBD7FE567FE0F8FF00FBD092
          9E5525D57FE35DF5EBFF002B3FF07C7FFDE84BFF001AEFAF5FF959FF0083E3FF
          00EF424A79549755FF008D77D7AFFCACFF00C1F1FF00F7A12FFC6BBEBD7FE567
          FE0F8FFF00BD0929E5525D57FE35DF5EBFF2B3FF0007C7FF00DE84BFF1AEFAF5
          FF00959FF83E3FFEF424A7960BB4FF00165F56FA7F5EEB3914F54C5764E1558C
          E713BAC6B45A5F57A5BADA1D5FB9F5FAFE9B37FBD551FE2BFEBC83FF00267FE0
          F8FF00FBD0BBAFF159F54BAFF40CCCFBBAAD3F6565D5D6CAABF51B66F20BDC5F
          18F91652DF4BFE1A9B2DFD2FE82DA7F58F5D29DAFF00C6B7EA2FFE567FE0F91F
          FBD097FE35DF5146BFB33FF07C8FFDE85D5A4929F99FEB162D387D7BA961E3B7
          6518D957D54B249DAC658FAEB6CB8B9DF41AB356AFD6CFFC54F59FFC3F95FF00
          9FAC594929D5FAA7FF008A9E8DFF0087F17FF3F56BE940BE6BFAA7FF008A9E8D
          FF0087F17FF3F56BE940929749249252C785E5DFE337EB97D63E83D7E8C4E939
          9F66A1F88CB5ECF4EA7FBDD65F5B9D37D563BE854C5EA4BC57FC757FE2A713FF
          000857FF009FB2925393FF008E8FD7AFFCB3FF00C031FF00F79D2FFC747EBD7F
          E59FFE018FFF00BCEB9549253D57FE3A3F5EBFF2CFFF0000C7FF00DE74BFF1D0
          FAF27FEF4FFF0000C7FF00DE75CAA4929D1EA9D673BAA38D999E8BAC2E73CBEB
          A29A5CE73C82F7DCFC5AA875AED3FC2ACE492494B8E55EE99D5F37A5BFD5C3F4
          45BB9AF6BEDA69B9CD733563EA7E4D577A4E6BBFD1AA0924A7ABFF00C73FEBC0
          123A97FE018FFF00BCE9BFF1D1FAF5FF00967FF8063FFEF3AE552494F55FF8E8
          FD7AFF00CB3FFC031FFF0079D2FF00C747EBD7FE59FF00E018FF00FBCEB95492
          53D58FF1A1F5E675EA7FF8063FFEF3AC9EB9F58FAC75E7576F54C9764BA91B6B
          F6B58D683E1552D657BDFF009EF594924A524924929FAA92492494FF00FFD4F5
          42B8FEBBFE2CFA1F5DEAD7756CBC8CAAB2320377B697D6D68D8C652DFA74D8EF
          A15AEC52494F9FFF00E32DF558FF00DAACFF00FB72AFFDE64BFF00195FAABFF7
          2B3FFEDCA7FF007957A024929F3FFF00C657EAAFFDCACFFF00B729FF00DE54BF
          F195FAADFF0072B3FF00EDCA7FF7957A024929F32EB5FE293EADF4EE8F9D9F56
          4E6BACC4C6B6F635EFA8B49AD8EB61C1B8F5BBF37F7D6174723FF1A0EB649263
          398D8931A3F01D1FBBDD7AA7D6CFFC4B759FFC2193FF009E6C5E57D1B4FF0013
          BD77FF000F33FEABA7A4A743A7D39DF5E3FC5CB3A6D1657F6FE89780CA89136D
          75D6F663336B767D9B7D37DB450E733F4B661FFC67A786DC0CEB3FC5CD98B5E3
          5AFBEAEBC1B65218E2F6B8E3B71831F5EDF639D916D74FFC6BEBAFFC22BBFE2B
          3A36DCBBFEB566BFD1E9FD22BBA2C0412EB3D3FD36E635AF7ECA712E7BDFFF00
          08FAFF00E15754DFF1A151FAAAFEBEFE9CE6C667D86BC616876E77A6DC8F52CB
          3D267A6CF4BD4F67A56A4A703A8B32FEA37F8BD3D22F7B7F69F5DB6C26B68D2A
          A8B29AF2DBBF6D8CB7F46CAA9B3F9AF7E5FE8FFA3FBF0263FC57989D7AE473A7
          F45F0FECAD2FF19DD25D7598DF5BB143BF67F59A687385846F65A6AFD156E60F
          CD7E2D55BBF9CB7F4ACBBFE0565BBFFC96EBFF0097BFFBA6929ECBA27F8A4FAB
          9D47A3E0F50BF2735B6E663557BC31F50683631B6FB77E3D8EFCEFDE577FF195
          FAABFF0072B3FF00EDCA7FF795755F54FF00F12DD1BFF0862FFE79AD6B24A7CF
          FF00F195FAABFF0072B3FF00EDCA7FF7952FFC657EAAFF00DCACFF00FB729FFD
          E55E80924A7CFF00FF00195FAABFF72B3FFEDCA7FF007951B03FC527D5CE9D9D
          8D9F464E69B716E65F587BEA2DDD5B85ADDCD6E3B3F77F79774924A582749249
          4A49249252CEE3FD7FDABE69FAC3D37F65759CFE9C1AF6B31721F5D5EA0871AC
          1FD058FD1BFCE53E9D8D7AFA59DC185E2BFE387A38C3EBD57546996F54AFDCD2
          64B6CC715D0FF6ED6EDADD4BB1B67BDFFA4F5D253C02B7D2337F67F55C3EA1B3
          D4FB1DF5DFB26377A4F6DBB3FB5B1544EDE424A7EA668D7CFB8E614D727FE2D3
          AD7ED6FAA98BB9BB6CC0FD46C810D3E8B59E8BD9EE7FFDA67D1EA7D0FD3FABEC
          5D624A62EFA2578DFF008E6EA42FEB587D39AE6B99878FEA3A0CBDB65EEF7D76
          FBBFD0E3E3D8DFF8C5EC5916D74D165D6BDB5555B4BECB1E76B5AD68DCF7BDC7
          E8B58D5F39FD70EAECEB5F58FA8752ACB5D55D716D2F687343AAAC7D9F19FB6C
          F7B5CFA2AAFD4DDFE13FCC494E2A71CA649253A78DF587AF61D2DC6C4EA5978D
          433E8554DF631824EE3B6B63DADF74A86775CEB3D428146767E4E5D41C1E197D
          AFB1A1C01687B5B6BDDB5DB5CB3D2494A49249253ED5FE253FF12D95FF0087EC
          FF00CF38AB27FC79FF00DE27FE857FEEA2D6FF00129FF896CAFF00C3F67FE79C
          5593FE3CFF00EF13FF0042BFF751253E56924924A7E94FAA7FF896E8DFF84317
          FF003CD6B5964FD53FFC4B746FFC218BFF009E6B5AC9294924924A52499C61A7
          F82F09EA3FE347EB61CEC9774FCF75384EB1EEC6ADD4505CDA8BA69AC9752F77
          B6BDBF9C929F77497CFF00FF008E8FD7AFFCB3FF00C031FF00F79D2FFC747EBD
          7FE59FFE018FFF00BCE929FA0125F3FF00FE3A3F5EBFF2CFFF0000C7FF00DE74
          BFF1D1FAF5FF00967FF8063FFEF3A4A7E80497CFFF00F8E8FD7AFF00CB3FFC03
          1FFF0079D2FF00C747EBD7FE59FF00E018FF00FBCE929FA0125F3FFF00E3A3F5
          EBFF002CFF00F00C7FFDE74BFF001D1FAF5FF967FF008063FF00EF3A4A7E8049
          7CFF00FF008E8FD7AFFCB3FF00C031FF00F79D2FFC747EBD7FE59FFE018FFF00
          BCE929FA0125F3FF00FE3A3F5EBFF2CFFF0000C7FF00DE74BFF1D1FAF5FF0096
          7FF8063FFEF3A4A7E80497CFFF00F8E8FD7AFF00CB3FFC031FFF0079D2FF00C7
          47EBD7FE59FF00E018FF00FBCE929FA0125F3FFF00E3A3F5EBFF002CFF00F00C
          7FFDE74E3FC687D7A27FE53FFC031FFF0079D253EFE92E3BFC5875DEABD77A15
          F9BD56FF00B4E4332DF531FB18CF636BA6C0DDB432B67D3B5EBB1494A4924925
          292492494A4924C78494BA63C2C7FAC1F59FA4FD5EC6191D4AFF004F7EEF4AA6
          82EB2C730177A7531BFE67AB67E877AF25FAC5FE34BEB0F550EAB09FFB2B19DF
          998EE3EB18F4DDFA4CC8658CF7B1DB7ECDF67FF0955DEB24A7D7FA8FD61E89D2
          B70EA19D46358D67ABE93EC68B0B3DD0EAA973BD4B376CFCC62E4BA9FF008E3F
          ABD8BEA37028BFA858C8F4DDB4534BE4B777E92D9C8AF637FEE9FD35E399175D
          7D8FBAF7BACB6C717D963CC9739DEE73DC49FA682929F4DCDFF1D99EEA87D83A
          65345A1C0937D8EB9A5B1C0654CC4D8EFF00AE2A3FF8F57D6AFF00B8B81FF6DD
          DFFBD4B8049253E8557F8EAFAC9EAB3D6C4C2356E1BC3196B5C5B3EE0D73AFB5
          ADFF00B6D6AD5FE3BAA758C6DBD1DCCA9CE1BDECC90E706CFE6B5D8F5EF77F21
          D633FE3179424929F77E9DFE34BEA8E76D6BB22CC2B1EF15B2BC9AC89DDB62C3
          651EBE3D55FBBFC25CCD8BADA2DAAEA59752F6D9558D0E63D87735CD700E6BD8
          E6FB5CCDBFBABE5C1CABFD37AD757E936EFE9797762B8B9AE77A4E2D6BCB0CD7
          EAD63F477B7DDFCDDAD494FB067FF8A4FAB9D473F273AFC9CD16E5DCFBEC0C7D
          41A1D638DAED81D8EF76DDCEFDE41FFC657EAAFF00DCACFF00FB729FFDE5547E
          A9FF008D9AB21D5E07D608AAEB1CCAEACE60DB5996ED2ECC6EEFD03DCF67F3D4
          33ECFF00A5FE631FD35E918F6D57D4CBA97B6CAAC68731EC3B9AE6B80731CC7B
          7DAE66DFDC494F1981FE28BEAE74FCEC6CFC7C9CD75D897577D61EFA8B4BAB73
          6C6EE0DC767EEFEF2ED9BC8D14D2494A49249252C5713F5CFF00C5CFFCEBEAB5
          F50FDA1F62F4A86E3FA7E8FAB3B5F6DBBF77AD47FA65DBA67705253E57FF008C
          67FE6EFF00F657FF007ED2FF00C633FF00377FFB2BFF00BF6BABFACDFE307A37
          D58EA0CC1EA1464DB6D9536F6BA86B1CDDAE75950DDEADD57BBF42B27FF1EAFA
          ABFF007173FF00EDBA7FF7A925395FF8C67FE6EFFF00657FF7ED2FFC633FF377
          FF00B2BFFBF6B57FF1E9FAAC74FB2E7FFDB74FFEF52ED7A6E6D7D4307173EA0E
          6D5974B2FADAFD086D8D6DACDD05EDDFEE494F9AFF00E31B1FF7B7FF00B2BFFB
          F6B1FEB5FF008ADB7EAFF44BBAB33A8372DB8EE60B186A351DAF736969ADC2DB
          DB63BD4B1BFB8BDB0F0B8DFF001AD954E3FD4ACCA6C76D7653E9AA9104EE78B6
          BC8DBA0DADFD063DAF494F8424924929EDBEA67F8B91F5AFA5D9D40750FB17A5
          7BB1FD3F47D59DACAADDFBBD6A3FD32DFF00FC633FF377FF00B2BFFBF6B57FC4
          A7FE25B2BFF0FD9FF9E71577E78494F95FFE319FF9BBFF00D95FFDFB4BFF0018
          CFFCDDFF00ECAFFEFDAEABFC60FD67CFFAB1D1E9EA180CAACB6CC96505B70739
          9B5CCBAC9FD1BEAF77E8BF7979FF00FE3D5F5ABFEE2E07FDB777FEF524A75BFF
          0018DFFCDDFF00ECAFFEFDAE2FEBAFD566FD55EA5574EFB4FDB0DB8EDC8F5767
          A51B9F6D5B367A97FF00A1FDE5BFFF008F57D693FF0069703FEDBBBFF7A973DF
          5ABEB7754FAD0FA2DEA0DAAB18AD736BAE8690C05E41B1FF00A475B66F7ECAFF
          003FFC1A4A7012492494FD54924924A7FFD5F554924925292492494A49249253
          93F5B3FF0012DD67FF0008657FE79B1795F46FFF00239D77FF000FB3FEABA6AF
          54FAD9FF00896EB3FF008432BFF3CD8BCAFA37FF0091CEBBFF0087D9FF0057D3
          52530E858B939FFE2B7AC62E15E05D8F99F6ACAC7F612FC763287BB7EF3FA06E
          EA1F91EA7F84FB1FA4B3B9FF001604F6FDBBFF00BA8A3FE2F3A965E37D63C7C2
          AEB39589D4DDF66CDC28DCCB2AB01ADEFBABDB66E662B1CEBFFE2596D7FCDD96
          2F5C1F51FEAD330E8E9F5E216E0D196338E3B9CE7B2CB830D0DF5C5EEB5CEAB6
          BBF98FD1D5FBFF00A3F59253E69D571BA862FF008AAE9CCCE10CB3A90B70EB20
          873697D79246F1B59FCEDDEBE457FCE7E8ADAD679FFF0025BFFB5EFF00DD44FF
          00E313ABE7E5F5DBFA6DF57D9B0BA4D8EA3030F6060AEA0DAAADEC22BA9FE964
          B28A726AFDCAEDFD17E8D31FFF0025BE1FE5EFFDD3494FB4FD53FF00C4B746FF
          00C218BFF9E6B5ACB27EA9FF00E25BA37FE10C5FFCF35AD6494A492492529249
          2494A4924925292492494B3B85CC7F8C1FABE7AF7D5CBE96978BB109CAC7656D
          DC5F656CB1ADA5CCFA5FA5658EADABA84CEE1253F2CB86D11AFE2A217A0FF8D3
          FA9B6F4FCDB3AEE054E76065BB7E5BB717FA590F71F51EEFF478F90E73367BDF
          FAC7A95FE8BF56AD79EA4A7AAFA87F5BACFAB3D581B369E9F98EAD99B332D682
          5ACC8AF636C7EFC6F56D77A6C67E97F9B5EE3D33AA74EEAD8C32FA7E4D79543B
          4F52B74C1DAD7ECB1BF4AAB1AD7FF316FE957CC8924A7D6BFC627F8C5C46E2DB
          D13A2DB5E4BB218599996C22CADB5BC43B1F1DDEEAEEB6CADDFA6B7F9BABF9BF
          E91FD1BC9DDC4A8A71CA4A50E57A0FD41FF1718BF58BA75D9FD55F91450E78AF
          13D02D617EC07D7B1DEB516B1D56F2CAAB7B3FC2D590B97FAAFF0056B2FEB375
          46F4FC57B6A869B2FB9FC5753486D966C9DF6BF73DAC633F7FF3EB67E917D0BD
          3B030FA7E2D385834B71F171DBB2AA99C01E33F49EE7B8EF7BDFFCEFF3BF4D25
          3C57FE32BF55BFEE567FFDB94FFEF2AE63FC617D40E8DF567A2D39D83764DB75
          B92CA1C2F730B435CCBEDF6FA54D1EEFD0AF675E7FFE3ABFF12D8BFF0087EBFF
          00CF394929F1549249253ED5FE253FF12D95FF0087ECFF00CF38AB27FC79FF00
          DE27FE857FEEA2D6FF00129FF896CAFF00C3F67FE79C5593FE3CFF00EF13FF00
          42BFF751253E56924924A7E94FAA7FF896E8DFF84317FF003CD6B5964FD53FFC
          4B746FFC218BFF009E6B5AC9294924924A58F0BE565F543FE898FC395E0D7FF8
          B0FAE65EF14F4F2F60710C2EB71D8E2DFCD73AB1956EC77EF7E99E929E4125D5
          7FE35DF5EBFF002B3FF07C7FFDE84BFF001AEFAF5FF959FF0083E3FF00EF424A
          79549755FF008D77D7AFFCACFF00C1F1FF00F7A12FFC6BBEBD7FE567FE0F8FFF
          00BD0929E5525D57FE35DF5EBFF2B3FF0007C7FF00DE84E3FC57FD7A067F667F
          E0F8FF00FBD0929E5125A5D6FA0F55E8392CC4EAB47D9AFB2B16B6BDEC7FB097
          31AE9A5F637E9D6F59A92949271CAE83A67D43FAD7D5F02BEA1D3B07D7C4BF77
          A767AD4B776C71A9FECB6EAECF6D8C7A4A79E49755FF008D77D7AFFCACFF00C1
          F1FF00F7A12FFC6BBEBD7FE567FE0F8FFF00BD0929E5525D57FE35DF5EBFF2B3
          FF0007C7FF00DE84BFF1AEFAF5FF00959FF83E3FFEF424A79549755FF8D77D7A
          FF00CACFFC1F1FFF007A138FF15FF5E81FF933FF0007C7FF00DE8494F7FF00E2
          53FF0012D95FF87ECFFCF38ABD0171DFE2C3A1755E85D0AFC2EAB47D9B21F96F
          B58CDEC7FB1D5D35876EA1F633E9D4F5D8A4A5249249294924924A59DF44AE5B
          EBA7D75C4FAB3870C2DBFA95ED271F1C990071F68C88FF0002D77E6FF87FE6E9
          5D0F51CDABA7F4FC9CFB839D56252FBEC6B20B8B6B69B5E19B8B1BBB6B7F797C
          DBD6BAB66759EA591D4F34B4E4E4B839FB06D680D0DAEB631BABB6575B18CFFC
          F9EF4948FA8F50CCEA5956E6E6DCEBF22F76FB2C7724FCBDACD9FE0EBFCC67D0
          F4D8AA24ACF4EC0CCEA59D4E0E152EC8C9BDDB6AA99C93CF7F6B58D6FBEC7BFD
          95D7F4D2535C72BA1E8DF51FEB4757756EC5C1B194BB61F5F23F435EC7FD1B9A
          EBA3D7A9ADFF00B8F5DCBD47EA77F8B4E9DD047DAB3FD3EA3D45DB4B5EE64D54
          16EDB3F566D9F4ECF59BFD29FE9D9E9FF37E8FE9BD6ED1A21253E4B87FE24B3A
          DAC9CFEA94E3DBB880DA2A75CD2D81EF365AFC3735FBB77B3D3563FF0018CFFC
          DDFF00ECAFFEFDAF5549253E55FF008C6C6BFB6FFF00657FF7ED63752FF145F5
          A31039D8668EA15FA9B5ADADFB2CD9EE2DB9ECC86D7537F377D75645BFF5CFA6
          BDB931494FCBF998793856BB1B2E9B31F22B8DF55AD2C7891B86E63C35DEE6FD
          05597D33D5FA274CEB58870FA9D0DC9C7DC1E1A490439BF45F5D9596DB5BFF00
          37D8BC47EBAFD44EA3F56F25F654C7E574977BAACB0D9F4C170636ACBD836D76
          6E7FA6CB3D95E4FF0081FF00434A53CAB75700BACFA99F5F33FEAE64B196B9F9
          3D24FB6DC3DC4EC05CE7FAD861E76D56EE7BDDB3F9BBBFC2FE93D3B97249DA25
          C358F3F0494FD478F6D77D6CBA97B6DA6C687D76B0EE6B9AE1B98F639BED735D
          3ED7232F26FF00141F5A5ECC93F56B24FE8ADF52EC1712E243DA37DD8BB7F48C
          655E932CC867F35EFF005BF9CFB42F59494A4924925292492494F8AFF8EAFF00
          C54E27FE10AFFF003F652F3F5E81FE3ABFF15389FF00842BFF00CFD94BCFD252
          97D29F54FF00F12DD1BFF0862FFE79AD7CD6BE94FAA7FF00896E8DFF0084317F
          F3CD6929D65E7FFE3ABFF12D8BFF0087EBFF00CF394BBF2B9FFAEBF576DFAC5F
          57F23A6E37A2329EEADF8F65F3B58E63D85EF0F636CB2B73A8F56AF631253F3B
          24BBFF00FC657EB57FDCAC0FFB72EFFDE553ABFC4B7D6416B3D6CBC26D5B87A8
          E63AD738367DCE6B1F8F5B5CE6B7FE11253D47F894FF00C4B657FE1FB3FF003C
          E2AF405CEFD4AFAAC7EABF4CB303ED5F6B165EEBF7FA7E946E65556CD9EA5DFE
          87F797425253C07F8EAFFC4B62FF00E1FAFF00F3CE52F155F4F6674CE9FD418D
          AB3F1A9CBA9AEDEDAEF636D68700581E196877BB6B955FF9A7F55BFF0029B03F
          F6169FFD26929F9AD25F499FAA7F55A34E8D81FF00B0B4FF00E935E59FE37BA7
          E174EEA7834606057878EEA0BFD4A6AAEAAEC797ED7307A34D6E7DB4B5B5FA9B
          EEB7F9EA7F454FF399094F9FA4924929FAA92492494FFFD6F554924925292492
          494A4924925393F5B3FF0012DD67FF0008657FE79B1795F46FFF00239D77FF00
          0FB3FEAFA6AF54FAD9FF00896EB3FF008432BFF3CD8BCAFA37FF0091CEBBFF00
          87D9FF0055D352532FF15955ADC1FAC79F84C73BA9E361ECC37325CEDD636FB7
          636BFA2FDF762E3ACCAAEB31FF00C5BB6FA5EEAEDABAF07D6F6CB5CD73717735
          ED737F3DAE1FD8589F57BAFE7FD5FEA4CEA58247AAC6B98EADFBB63DAF1B4B2D
          656EAFD46B5DFA5AD9BBF9DF4D7B5D3F56FEAF1FAB8CBEEE8CE65248EAF674A6
          6F7B8657A41EEA2BA0BAADEE6FF476626C650FFF0042C494F9DFF8CB35E4E2FD
          5BEA76DFEAF50CCE9959C9612D0621975771A9BEE67AF6E4657FC1FE8BF47F41
          679FFF0025BFFB5EFF00DD3599F593EB1E7FD63CFF00B7F50D9EA36B6D4C6D63
          6B5AC6FBB680EDEFFE71F63FE9AD33FF00E4B7FF006BDFFBA6929F69FAA7FF00
          896E8DFF0084317FF3CD6B5964FD53FF00C4B746FF00C218BFF9E6B5AC929492
          4924A5249249294924924A5249249294924924A43998B466625F8992DF528C8A
          DD55CC923731E0B2C6EE66D7FB98EFCC5E29F5DBFC5AE6742B3ED7D29B76774B
          2D97BA37DB496B4BECFB47A4D66EA36B1D63723656CFF0567F82FB47B8A8BBE8
          9494FCB2E10A2BE82EB7FE2F3EABF5BB2CB72317ECF936EAEC9C63E93E777A8E
          7967BB1ADB5FB9ECB6DBE8B6C5896FF895FAB5E93C53999ADB4B48ADCF754E68
          711ED73EB6D1539ED6BBF33D4624A7C647216E7D5BFAA5D6BEB25BE9E055B6B6
          EEDD9764B6869686BB63AD6B5FFA576FADBE956CF57FC22F53C1FF00147F54F1
          6D365E3273416C0AAEB76B01D0EF1F666D16767B7F496ECD8FFEDAECF1E8AE86
          329A58D655534358D680035A0435AD68FCD494E4FD53FAAFD3BEAD6037131017
          DD643B2B29C21F6BC0FCEFDCAABFF0147F81FF008DF52CBB75249252979FFF00
          8EAFFC4B62FF00E1FAFF00F3CE52F405E7FF00E3ABFF0012D8BFF87EBFFCF394
          929F1549249253ED5FE253FF0012D95FF87ECFFCF38AB27FC79FFDE27FE857FE
          EA2D6FF129FF00896CAFFC3F67FE79C5593FE3CFFEF13FF42BFF00751253E569
          24924A7E94FAA7FF00896E8DFF0084317FF3CD6B5964FD53FF00C4B746FF00C2
          18BFF9E6B5AC9294924924A5249249294924924A5249249294924924A7C57FC7
          57FE2A713FF0857FF9FB2979FAF40FF1D5FF008A9C4FFC215FFE7ECA5E7E9294
          BDFF00FC577FE217A67FD7FF00F6E3217802F7FF00F15DFF00885E99FF005FFF
          00DB8C8494F56924924A5249249294924924A5249249294924924A5263C274C7
          8494F0DFE37F32DC6FAA26A60696E6E4D545933A347A996D2CFE57A98AD5E1EB
          DC3FC6FE1DB93F544DAC2D0DC2C9AAFB267569F5311A19FCAF5329ABC3D252ED
          3057A77F896E9155D979DD62DA8B9D8AD6D18B6168D81D66F393B1C5BFCFD75B
          296FE8DFECA727FE1D7988E42F45FF00133D5F1F17AD6574BB347F51ADAEA1DA
          EAFC7F56CF4B686B9BEFA2DB6EF51EFF00F05E9FE7A4A7D912492494A4924925
          292492494A547AE74DABAB748CCE9B6EDDB9553AB0E7B43C35C47E8EED8EFF00
          4366DB59FD4579667D65EAC3A2F41CEEA64B43B1AA73AADC0B9A6D77E8F1AB73
          59EEFD2643EBAD253F35394511F11F910D253ADF5532FEC7F59BA5E49B7ECECA
          F2AAF56DDDB00ACBDACBF7BFFD1BA9758DB3FE0D7D22C3267FD7FD5CBE6BFAB5
          80DEA3F583A760BEA75F55F935B6EAD80926ADC0E41FD1FBBD947A8F72FA5180
          E80F6F39F924A66924924A524924929F15FF001D5FF8A9C4FF00C215FF00E7EC
          A5E7EBD03FC757FE2A713FF0857FF9FB2979FA4A52FA53EA9FFE25BA37FE10C5
          FF00CF35AF9B1BC895F407D59FACDF5731FEAEF4AA2FEAB8555D56163B2DADF9
          1535CD736AADAE63DAEB376EDC1253D4A4B27FE767D56FFCB9C0FF00D8AA7FF4
          A25FF3B3EAB7FE5CE07FEC553FFA51253AC92C9FF9D9F55BFF002E703FF62A9F
          FD2897FCECFAADFF0097381FFB154FFE94494EB24B27FE767D56FF00CB9C0FFD
          8AA7FF004A25FF003B3EAB7FE5CE07FEC553FF00A51253AC92C9FF009D9F55BF
          F2E703FF0062A9FF00D2897FCECFAADFF97381FF00B154FF00E94494EA9E1723
          F5F7EA4DBF5B2BC53565B716CC16DDB1AEACBC58EB7D286B9ED757E935BE87FA
          3B16CFFCECFAADFF0097381FFB154FFE944BFE767D56FF00CB9C0FFD8AA7FF00
          4A24A7CABFF197FAD07FED5604FF00C65DFF00BCAA757F895FAC9EAB3D7CCC26
          525C058E63AD7B8367DEE656EA2A6D8E6B7F33D5AFFE317A97FCECFAADFF0097
          381FFB154FFE944C7EB67D568FF96703FF0062A9FF00D28929D381E3DFCB9FFC
          9A49E47876949253FFD7F554924925292492494A4924925393F5B3FF0012DD67
          FF000864FF00E79B1795746FFF0023BD73FF000FB3FEAFA72F55FAD9FF00896E
          B3FF008432BFF3CD8BCAFA37FF0091CEBBFF0087D9FF0057D3525399FE2E3EAF
          E2F5EFACACA72CFE83118731F4ED6B85BE9D95B1B8F60B3D9E93DF6FE97D9FA4
          ABF46BB8AFEB0F5AAC16B329D0EFAD8EE987706BC8C471367D981B18F76DF7FB
          3FD0FD0AD798FD59FAC195F577AB53D4F1C7A82BF6DB41716B6CADC3DF53CB7F
          EDCABFD1DDE9D9EFD8BD159D27AB5BF542EEBF14E3640EA8EFAD18D8D613634D
          4D67AECA2EB2AF4F6B9D5EEB3FEDBADFF66DFF00A04A794FF1A3D231FA5FD6AB
          4D07DB9F5B730B353B5F639ECBBDEF2E73FD4BA9B2EFFAEA01FF00F25BFF00B5
          EFFDD4543EB57D64CBFAC9D4DFD432DADA835A2AA2A670CADA4B995EFF00A763
          B758FDFF00FA2FF9B5A07FFC96FF00ED7BFF0074D253ED3F54FF00F12DD1BFF0
          862FFE79AD6B2C9FAA7FF896E8DFF84317FF003CD6B5925292492494A4924925
          292492494A4924925292492494A4924925292492494A4924925292492494A5E7
          FF00E3ABFF0012D8BFF87EBFFCF394BD0179FF00F8EAFF00C4B62FFE1FAFFF00
          3CE524A7C552492494FB57F894FF00C4B657FE1FB3FF003CE2AC9FF1E7FF0078
          9FFA15FF00BA8B5BFC4A7FE25B2BFF000FD9FF009E71564FF8F3FF00BC4FFD0A
          FF00DD4494F95A4924929FA53EA9FF00E25BA37FE10C5FFCF35AD6593F54FF00
          F12DD1BFF0862FFE79AD6B24A5249249294924924A5249249294924924A52492
          4929F15FF1D5FF008A9C4FFC215FFE7ECA5E7EBD03FC757FE2A713FF000857FF
          009FB2979FA4A52F7FFF0015DFF885E99FF5FF00FDB8C85E00BDFF00FC577FE2
          17A67FD7FF00F6E321253D5A49249294924924A5249249294924924A52492492
          94924924A419B8D4E5E1DF8990DDF46456EAAD64912C78D9636590FF00731DF9
          8BE6BEB7D232BA2F52C8E999A1ADC9C6706BF61DCD7020595BDAFD3F9CA9F5D9
          FF0057B3E82FA69DF44AE5BEBA7D4AC4FACD872C0DA3A950D231F20880473F67
          C88FF02E77E77F80FE729494FCFE898F75B8F7D77D2F7576D4E0FAEC6921CD73
          7DCC7B1CDF735CC723F51E9F99D372ADC2CDA5D46450ED9656EE41F97B5FBFFC
          1D9F9ECFA1EA3154494FB07D51FF001AF8B96CAF07EB0118B941AC6B7384FA57
          3C9D9FA5631BFA9BF6963F7FF46FE7ADFD07E8A9B3D131EDAAFA99752F6D9558
          D0E63D87735CD700E6398F6FB5CCDBFB8BE5C1CABFD37AD756E956EFE9B976E2
          12E6B9DE93CB5AF2C25CCF559FCDDCDF77D0B7D8929FA6925E1D89FE377EB662
          D45977D9735C4922DBEA21D1006C1F657E257B3DBFE8F7AB98FF00E3A7AEB7D4
          FB4E162D92C22AF4BD4AE1FF009AF7FA96647A8CFF0083FD124A7D9533B830BC
          57FF001E6FACFC1C5C03C83FA3B7FF007A962F57FAFF00F5ABAB57653939EEAF
          1AC2EDD8F4015376B839AEA8BEB67AF653B1FF00CDDD6DA929F65EB7F5D7EAE7
          4273AAEA198D192D6B9DF65AA6CB6400F6D6F657BBECEFB1AE6FA5F697D55FF2
          D78A7D6DFADDD4FEB46536FCCDB5E3D2E7FD9315A07E89AFD81ED36ED6D9739D
          E8B3D4759F9FFCD574FF0034B09C654525293B641D126E8E05759F533EA1E7FD
          63C963ED6BF1BA48F75B99B48DE039CCF470CBC6DB6DDCC7B77FF374FF0085FD
          27A74A4A7A2FF141F562CB335DF58F26B7368A1AEAB009040758E0EAB22E63B7
          B77B68AF763FBABF4BD4BBFEEB2F5B41C7AABA2B6534B1B5535B432BA9836B5A
          D68DAC631ADF6B5AD8F6B51925292492494A4CEE13A67705253E31FE3A29B5BF
          58B12F2C70A9D86CADAF20ED2E6DB7BDEC6BBF798CB6B5E7ABDE3FC64FD56B3E
          B0745F57184E774EDF752D8738BD9B66FC6AD95EEFD2DFB2A7D5FA37FE96BF45
          7865F4DB45AFA6E63AAB6B716595BC16B9AE69DAE63DAEF735EDFCF494892492
          494A4924925292492494A4924925292492494A49249252924938E5253ED1FB6B
          FE133FFF00125F6EFE99FF00827F47FF00957FF369FF00B2692ADFB23AA7FDC4
          BFFF00119F63FE6DDFD23FEE271FD2BFEEBFF38924A7FFD0F554924925292492
          494A4924925393F5B3FF0012DD67FF000864FF00E79B179D7D49E8D93D77FC59
          F55E958858DBF233BD86C2437D8306E3B9CD0E77D1AD7A4FD61663D9D0FA8D79
          56FA18EFC5B9B75DB4BF630D6F1659E9B7DCFD8CF76D5E27FF0037FEA2C40FAD
          907B9FD9D911FF0054929D46FF0089AFAD4449C8C167FD72DFFBEE3957FF00F1
          B7FAFF00FB24743FDA78A7A61B3D4FB3FAB66D0EFA51BBECDEA7A5BFF49E87F3
          3EB7E9FF009D5CD7FCDDFA8BFF00CF77FF000BB23FF2697FCDDFA89FFCF77FF0
          B723FF0026929D6FFC663EB4CEB93831E3EA5BFF00BCCA5F5A3EACE7FD59FF00
          17CCE9F9EFAACB6CEAEDBC3A82E2DDAEC6B2AFCF6D7FE87F7563FF00CDDFA89F
          FCF77FF0B723FF0026A43EAF7D46EDF5B7E7FB3B23FF0026929F68FAA7FF0089
          6E8DFF0084317FF3CD6B5966FD5DAE9AFA0F4DAF1EDF5E8662D0DA6EDA59BD82
          B67A767A6EF757BD9F98B4925292492494A4924925292492494A492492529249
          2494A4924925292492494A4924925292492494B3B8F05C6FF8CEE83D5BAF742A
          30BA551F69BD996CB5CCDCC6431B5DEC73B7DEEAFF003ED6AECD2494FCFF00FF
          008D77D7AFFCACFF00C1F1FF00F7A138FF0015FF005E81FF00933FF07C7FFDE8
          5EFE924A78DFF165D0FAAF41E839187D568FB3643F2DF6B19BD8FF0063ABA2B0
          EDD43DECFA753D627F8E2E95D4FA97EC91D3B0EFCC357DA7D41456FB766EFB2E
          CDDE8B5FB376C5E9A924A7E6AFF9A7F5A7FF0029B3FF00F616EFFD269C7D53FA
          D13AF46CF8FF00C2B77FE935F4A24929CAFAAF55B4FD5CE954DCC7576D5858EC
          B2B78DA5AE6D55B1EC735DEE6BB72D5492494A4924925292492494A492492529
          2492494A4C53A4929E17EBC7F8BBB7EB47506F52AB3463594E30C7650EA8B838
          B5D6DAD2EB858CF4F77ADFE8AC5C77FE32FF005A0FFDAAC09FF8CBBFF7957B5A
          4929F17ABFC4AFD64F559EBE5E10AB70F50B1F6B9C1B3EE7358EA2A6BF6FFC62
          F51FAADD13F60743C6E91EB7DA7ECDBFF4DB766EDF65991FCDEFB767F3BFBEB5
          D2494A4924925292492494A4924925292492494A4924925292492494A4C784E9
          24A71BEB07D58E93F5871863F52A3D4D9BBD2B5A4B6CADCF05BEA54F6FF9FE95
          9FA1DEBC97EB17F8ADFAC3D283ADC267ED5C66FE7E3B4FAC27D36FE930E5F63F
          DEF76DFB37DA3FC25B77A2BDCD31E1253F2E645375163E9BD8EAEDADC59656F1
          05AE6FB5CC7023E9A0AFA0BEB77FCC4D8FFF009D1F64F53D3646FF00E95E9EFF
          00D1FA1F67FF00287A5EAFA9FD1FFE1FD4FD17A8BCF7AAF4AFF147922C774FEB
          57F4FB1D1E9B7D1BEEA5BA8DDFA2B71DB90FDCCFFBB8929F3F4974B95F57FEA7
          B2873B0FEB55776408D95DB8393530EA376EBAB6E53D9ECFF807ACFF00D8DD37
          FF002F703FCCCEFF00E46A4A72925B14F46E91EAB3D6EBD842ADC3796579AE70
          6CFBB6B1D81535DFF6E2D8C4E81FE2EDB7B1D97F5A1F6D0277B2AC1BAA79D0ED
          DB6D8DC9633DDB7E953624A7901CAD0E99D13AB757B7D3E99896E5BB7358EF49
          A5CD61792DAFD6B3F9BA19EDFE72DFD1AF44E994FF00895A1F8F5FAFF6ABC3DB
          B6ECA1921A4EE1B7ED1FA2C7C1F4777F39EB55E8ECFE77D8BD370BECBF66A7EC
          7B3ECBE9B3ECFE96DF4FD2DA3D2F47D3FD1FA5B3F9BF4FD8929F35FAADFE2805
          6E665FD647B6DF6C8E9D4B8C02E6B76FDA325859EEAF759BEAC7FD1BDFE9FEB3
          655FA35E978F45743194D2C6B2AA9A1AC6B4001AD021AD6B47E6A3A492949249
          24A5249249294924924A58F0B17AAFD51FAB9D69C5FD4702AB9EE7073ED6CD76
          38B416377DF43AAB9EDFE43DCB6D2494F2D57F8B3FA914DACB99D31A5F5B83DB
          BEDB9ED969DDEFAECB9F5D8CFF0083B1BB1E8CCFA85F5419B76F49C7F66D82E0
          5DF43D0DBBB738EFFE8957A9BFF9DFD6BD4FE9B99EBF46924A79C67D42FAA0CD
          BB7A4E3FB36C1702EFA1E86DDDB9C77FF44ABD4DFF00CEFEB5EA7F4DCCF5D33E
          A17D5066DDBD271FD9B60B8177D0F436EEDCE3BFFA255EA6FF00E77F5AF53FA6
          E67AFD1A4929E719F50BEA8336EDE938FECDB05C0BBE87A1B776E71DFF00D12A
          F537FF003BFAD7A9FD3733D74CFA85F5419B76F49C7F66D82E05DF43D0DBBB73
          8EFF00E8957A9BFF009DFD6BD4FE9B99EBF46924A79C67D42FAA0CDBB7A4E3FB
          36C1702EFA1E86DDDB9C77FF0044ABD4DFFCEFEB5EA7F4DCCF5D33EA17D5066D
          DBD271FD9B60B8177D0F436EEDCE3BFF00A255EA6FFE77F5AF53FA6E67AFD1A4
          929E719F50BEA8336EDE938FECDB05C0BBE87A1B776E71DFFD12AF537FF3BFAD
          7A9FD3733D74CFA85F5419B76F49C7F66D82E05DF43D0DBBB738EFFE8957A9BF
          F9DFD6BD4FE9B99EBF46924A79C67D42FAA0CDBB7A4E3FB36C1702EFA1E86DDD
          B9C77FF44ABD4DFF00CEFEB5EA7F4DCCF5E27FC5EFD4D7D469774AA430B43090
          5E1D005234B58F16EFFD56BFD26FDFFD27FEE665FAFD2A4929E53FF1ADFA8BFF
          00959FF83E47FEF42955FE2CBEA3D36B2E674B69756E0E687DB73DB20CFBEAB6
          E7D7633FE0EC67A6BA9492531D7FD7FDC92924929FFFD9}
        Stretch = True
      end
    end
  end
end
