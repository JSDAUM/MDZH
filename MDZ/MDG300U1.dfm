object MDG300F1: TMDG300F1
  Left = 581
  Top = 74
  Width = 948
  Height = 690
  Caption = 'MDG300F1 '#54872#51088#51221#48372#51312#54924'(NEW)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pn_Header: TPanel
    Left = -1
    Top = 0
    Width = 907
    Height = 37
    BevelInner = bvLowered
    Color = clWhite
    TabOrder = 0
    object Panel4: TPanel
      Left = 4
      Top = 7
      Width = 93
      Height = 21
      Alignment = taLeftJustify
      BevelInner = bvRaised
      BevelOuter = bvNone
      Caption = #54872#51088#48264#54840#51077#47141
      Color = clGradientInactiveCaption
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object pn_PatName: TPanel
      Left = 208
      Top = 7
      Width = 75
      Height = 21
      Hint = #54872#51088#48264#54840
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = clInfoBk
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      Locked = True
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object ed_PatNo: TEdit
      Left = 94
      Top = 7
      Width = 102
      Height = 21
      Color = 16774399
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = #54620#44397#50612'('#54620#44544')'
      MaxLength = 40
      ParentFont = False
      TabOrder = 2
      OnChange = ed_PatNoChange
      OnEnter = ed_PatNoEnter
      OnKeyDown = ed_PatNoKeyDown
      OnKeyPress = ed_PatNoKeyPress
    end
    object pn_Ward: TPanel
      Left = 371
      Top = 7
      Width = 75
      Height = 21
      Hint = #48337#46041'-'#48337#49892
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = clInfoBk
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object bbt_MdHSearch: TBitBtn
      Left = 291
      Top = 8
      Width = 72
      Height = 23
      Caption = #51312' '#54924
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = bbt_MdHSearchClick
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000130B0000130B00000000000000000000C0C0C0C0C0C0
        C0C0C0C0C0C0C1C1C1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0818181808080C0C0C0C0C0C0C0C0C0BFC2C0BFC1C2BEC0C0C2
        C0C0C0C0C0BCC0C1C0C1BFC1C1C1C0C0C0C0C0C0BFBFBFC1C1C1C0C0C0C0C0C0
        808080000000000000C1C1C1C0C0C0C1C1C1C2C0C0C3C2BEC1C1C1C2C0C0BEC0
        C0C1BEC0C0C1BFC0C0C0C1C1C17F7F7F8181817F7F7F808080C0C0C000000000
        0000010101BEBEBEC1C1C1C0C0C0C0BFC1BDBFC0C3C2BEBEC0C1BFBFBFBFC1C2
        C0C0C0C0C0C08080800000000000000000000000007F7F7F000000000000C0C0
        C0C1C1C1C0C0C0C0C0C0C0C1BDBEC0C0C2BFC1C3C1C1C2C0BFC1C1C1C1BFBF80
        80800000008080808181817F7F7F808080000000C0C0C0C0C0C0C0C0C0BFBFBF
        BFBFBFBFBFBFC0C0C0BFC1C1BDBFC082807F82807F7B7F80838181000000FFFF
        FFBFBFBFBFBFBFC0C0C08080807F7F7F000000C0C0C0BFBFBFC0C0C0C0C0C0BF
        BFBFC3C1C0C2C0C0000001020000000000000100000100000000FFFFFFBFBFBF
        C1C1C1BFBFBFBFBFBF8080800000007F7F7FC0C0C0C0C0C0C0C0C0C0C0C0BEC0
        C0C2C0C0020000FDFFFFFFFEFF000000FDFFFF010101FEFEFEC0C0C0C0C0C0C0
        C0C0C0C0C0808080000000808080C0C0C0C0C0C0C0C0C0C0C0C0C0C1BFC0C0C0
        000000FFFFFF0400FF020000FFFFFF000000FFFFFFFFFFFFBFBFBFC0C0C0C0C0
        C0808080000000808080C0C0C0C0C0C0C1C1C1C0C0C0C0C0C0BFC0BE00010200
        0100000000000000000000000000000001FFFEFEFFFFFFFEFEFEFFFEFF000001
        000100808080C0C0C0C0C0C0C0C0C0C0C0C0BBC0BFC1C1C1020000FFFFFEFFFF
        FE010002FDFFFFFFFFFF000001020100020000000000010002FFFFFF02000080
        8080C0C0C0C0C0C0C0C0C0C0C0C0C1C2C0C0C0C0000003FFFFFF0001FD000001
        FFFEFFFFFFFF000100FDFFFFFFFFFF000100FFFEFFFCFEFF000000808080C0C0
        C0C0C0C0C0C0C0C0C0C0C2C0C0C2C0BF00000000000102000100010102000000
        0000000200000100000003000001000100010002040000808080C0C0C0C0C0C0
        C0C0C0C0C0C0BFBFBFC0C1BF010002FFFFFFFDFFFF000100FDFFFEFFFFFF0000
        00FFFFFBFFFEFF000000FFFEFFFEFEFE000100808080C0C0C0C0C0C0C0C0C0C0
        C0C0C0BFC1C0BFC1040000FFFFFF0000FE020001FFFEFF817F7F000001FFFFFF
        80817F030002FFFEFD7D8281000000808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C1BF00000005010000000000000100020000000002000000000002000100
        0000000000020000000000808080C0C0C0C0C0C0C0C0C0C0C0C0C2C0C0BDBFBF
        0001027E8000FFFEFF7E7F008180007F81007F80007F8000837F027D81008180
        007E7F00020000808080C0C0C0C0C0C0C0C0C0C0C0C0BFBFBFC0C0C000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000C1C1C1BFBFBFC1C1C1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C1C1
        C1BFBFBFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C1C1C1BFBFBFC1C1C1C0C0C0C0C0C0BFBFBFC1C1C1BFBFBFBFBFBFC0C0C0
        C1C1C1C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0}
    end
    object pn_birthdate: TPanel
      Left = 765
      Top = 5
      Width = 137
      Height = 27
      Caption = 'pn_birthdate'
      TabOrder = 5
      Visible = False
    end
  end
  object stb_Message: TStatusBar
    Left = 0
    Top = 632
    Width = 932
    Height = 19
    Color = clCream
    Panels = <
      item
        Alignment = taCenter
        Width = 50
      end>
  end
  object pn_PatInfo: TPanel
    Left = -1
    Top = 35
    Width = 915
    Height = 52
    BevelInner = bvLowered
    Color = clBtnHighlight
    TabOrder = 2
    object Label6: TLabel
      Left = 372
      Top = 7
      Width = 70
      Height = 13
      Caption = #12304#50672#46973#52376#12305
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 4
      Top = 29
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = #12304#51452'    '#49548#12305
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 4
      Top = 7
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = #12304#51452#48124#48264#54840#12305
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 191
      Top = 7
      Width = 91
      Height = 13
      Caption = #12304#49457#48324'/'#45208#51060#12305
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 743
      Top = 29
      Width = 84
      Height = 13
      Caption = #12304#53748#50896#48337#46041#12305
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 743
      Top = 7
      Width = 84
      Height = 13
      Caption = #12304#48372#54744#44396#48516#12305
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
    end
    object pn_ResNo: TPanel
      Left = 81
      Top = 4
      Width = 111
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = clInfoBk
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object pn_SexAge: TPanel
      Left = 282
      Top = 4
      Width = 91
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = clInfoBk
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object pn_TelNo: TPanel
      Left = 441
      Top = 4
      Width = 300
      Height = 20
      Alignment = taLeftJustify
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = clInfoBk
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object pn_Address: TPanel
      Left = 155
      Top = 26
      Width = 587
      Height = 20
      Alignment = taLeftJustify
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = clInfoBk
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object pn_ZipCd: TPanel
      Left = 81
      Top = 26
      Width = 73
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = clInfoBk
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object pn_WardRoom: TPanel
      Left = 826
      Top = 27
      Width = 85
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = clInfoBk
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object pn_Insu: TPanel
      Left = 826
      Top = 4
      Width = 84
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = clInfoBk
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
  end
  object pn_History: TPanel
    Left = -1
    Top = 86
    Width = 918
    Height = 541
    BevelInner = bvLowered
    TabOrder = 3
    DesignSize = (
      918
      541)
    object Label4: TLabel
      Left = 711
      Top = 322
      Width = 44
      Height = 13
      Caption = #54872#51088#48264#54840
      Color = clGradientInactiveCaption
      ParentColor = False
    end
    object Label3: TLabel
      Left = 711
      Top = 345
      Width = 93
      Height = 13
      Caption = #51077#50896#51068#51088'/'#51652#47308#51068#51088
      Color = clGradientInactiveCaption
      ParentColor = False
    end
    object Label5: TLabel
      Left = 711
      Top = 365
      Width = 44
      Height = 13
      Caption = #53748#50896#51068#51088
      Color = clGradientInactiveCaption
      ParentColor = False
    end
    object Label10: TLabel
      Left = 711
      Top = 386
      Width = 44
      Height = 13
      Caption = #54872#51088#44396#48516
      Color = clGradientInactiveCaption
      ParentColor = False
    end
    object Label11: TLabel
      Left = 711
      Top = 406
      Width = 33
      Height = 13
      Caption = #51652#47308#44284
      Color = clGradientInactiveCaption
      ParentColor = False
    end
    object Label12: TLabel
      Left = 711
      Top = 425
      Width = 33
      Height = 13
      Caption = #51452#52824#51032
      Color = clGradientInactiveCaption
      ParentColor = False
    end
    object lb_patno: TLabel
      Left = 814
      Top = 321
      Width = 3
      Height = 13
      Color = clBtnHighlight
      ParentColor = False
    end
    object lb_meddate: TLabel
      Left = 814
      Top = 344
      Width = 3
      Height = 13
      Color = clBtnHighlight
      ParentColor = False
    end
    object lb_dschdate: TLabel
      Left = 814
      Top = 364
      Width = 3
      Height = 13
      Color = clBtnHighlight
      ParentColor = False
    end
    object lb_patgubun: TLabel
      Left = 814
      Top = 384
      Width = 3
      Height = 13
      Color = clBtnHighlight
      ParentColor = False
    end
    object lb_meddept: TLabel
      Left = 814
      Top = 405
      Width = 3
      Height = 13
      Color = clBtnHighlight
      ParentColor = False
    end
    object lb_chadr: TLabel
      Left = 814
      Top = 424
      Width = 3
      Height = 13
      Color = clBtnHighlight
      ParentColor = False
    end
    object Panel32: TPanel
      Left = 10
      Top = 7
      Width = 169
      Height = 20
      BevelOuter = bvNone
      Color = 12351305
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object pn_Title: TPanel
      Left = 4
      Top = 4
      Width = 174
      Height = 21
      Caption = #44592#47197#51648' '#48156#44553#51060#47141
      Color = 16641503
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object ugd_RecodKnd: TUltraGrid
      Left = 293
      Top = 30
      Width = 444
      Height = 244
      Cursor = crHandPoint
      BorderStyle = bsNone
      Color = 15463162
      ColCount = 4
      DefaultRowHeight = 21
      FixedColor = 8454143
      FixedCols = 0
      RowCount = 2
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      GridLineWidth = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goRowSelect]
      ParentFont = False
      ParentShowHint = False
      ScrollBars = ssVertical
      ShowHint = False
      TabOrder = 2
      OnClick = ugd_RecodKndClick
      FixedAlignment = taCenter
      FixedFontBold = False
      SelectedRowColor = clNavy
      SelectedRowFontColor = clWhite
      GridRowColor = 15463162
      Title = #44592#47197#51648' '#51333#47448'|'#49436#49885' '#53076#46300'|'#51116#50896#51068#51088'|'#44592#47197#51648#53076#46300
      Wrap = False
      ColWidths = (
        156
        110
        72
        106)
    end
    object ugd_PrintList: TUltraGrid
      Left = 780
      Top = 83
      Width = 55
      Height = 64
      Anchors = []
      Color = cl3DLight
      ColCount = 27
      DefaultColWidth = 10
      DefaultRowHeight = 20
      FixedColor = 13882323
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      GridLineWidth = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
      ParentFont = False
      TabOrder = 4
      Visible = False
      FixedAlignment = taCenter
      FixedFontBold = False
      SelectedRowColor = clNone
      SelectedRowFontColor = clNavy
      GridRowColor = 16185078
      Wrap = False
    end
    object ugd_RecodDt: TUltraGrid
      Left = 4
      Top = 276
      Width = 685
      Height = 261
      Cursor = crHandPoint
      BorderStyle = bsNone
      Color = 16383999
      ColCount = 10
      DefaultRowHeight = 20
      FixedColor = 8454143
      FixedCols = 0
      RowCount = 2
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      GridLineWidth = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goRowSelect]
      ParentFont = False
      ParentShowHint = False
      ScrollBars = ssVertical
      ShowHint = False
      TabOrder = 3
      FixedAlignment = taCenter
      FixedFontBold = False
      SelectedRowColor = 16641503
      SelectedRowFontColor = clNavy
      GridRowColor = 15724527
      ColWidths = (
        77
        128
        134
        100
        74
        69
        64
        39
        83
        97)
    end
    object ugd_History: TUltraGrid
      Left = 2
      Top = 31
      Width = 287
      Height = 243
      Cursor = crHandPoint
      BorderStyle = bsNone
      Color = 16383999
      ColCount = 3
      DefaultRowHeight = 21
      FixedColor = 8454143
      FixedCols = 0
      RowCount = 2
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      GridLineWidth = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goRowSelect, goThumbTracking]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 5
      OnClick = ugd_HistoryClick
      FixedAlignment = taCenter
      FixedFontBold = False
      SelectedRowColor = 16641503
      SelectedRowFontColor = clNavy
      GridRowColor = clCream
      Title = #49692#48264'|'#45236#50896#51068#49884'|'#53748#50896#51068#49884
      Wrap = False
      ColWidths = (
        63
        115
        108)
    end
    object ugd_Temp: TUltraGrid
      Left = 834
      Top = 79
      Width = 71
      Height = 66
      ColCount = 30
      DefaultRowHeight = 20
      FixedColor = 13882323
      FixedCols = 0
      RowCount = 2
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      GridLineWidth = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 6
      Visible = False
      FixedAlignment = taCenter
      FixedFontBold = False
      SelectedRowColor = 16641503
      SelectedRowFontColor = clNavy
      GridRowColor = 16185078
      Title = #44396' '#48516'|'#52376'   '#48169'   '#45236'   '#50669'|'#52376#48169#44208#44284
      Wrap = False
      ColWidths = (
        66
        91
        86
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64)
    end
    object bbt_Print: TBitBtn
      Left = 708
      Top = 280
      Width = 101
      Height = 27
      Cursor = crDrag
      Anchors = [akTop, akRight, akBottom]
      Caption = #44592#47197#51648' '#52636' '#47141'(&P)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = bbt_PrintClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object ugd_AllList: TUltraGrid
      Left = 779
      Top = 150
      Width = 125
      Height = 38
      BorderStyle = bsNone
      Color = 16383999
      ColCount = 60
      DefaultRowHeight = 20
      FixedColor = 13882323
      FixedCols = 0
      RowCount = 2
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      GridLineWidth = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
      ParentFont = False
      ParentShowHint = False
      ScrollBars = ssVertical
      ShowHint = False
      TabOrder = 8
      Visible = False
      FixedAlignment = taCenter
      FixedFontBold = False
      SelectedRowColor = 16641503
      SelectedRowFontColor = clNavy
      GridRowColor = 15724527
      Title = #44221#44284#44592#47197#51648#50857' UGD|'#45236'      '#50857'|'#44036#54840#49324
      ColWidths = (
        75
        349
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64)
      RowHeights = (
        21
        20)
    end
    object ugd_List: TUltraGrid
      Left = 817
      Top = 191
      Width = 79
      Height = 41
      ColCount = 30
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      TabOrder = 9
      Visible = False
    end
    object char_VS: TChart
      Left = 746
      Top = 7
      Width = 166
      Height = 65
      AnimatedZoom = True
      BackWall.Brush.Color = clWhite
      BackWall.Color = 15132390
      MarginBottom = 1
      MarginLeft = 1
      MarginRight = 1
      MarginTop = 2
      PrintProportional = False
      Title.Brush.Color = clSilver
      Title.Color = clWhite
      Title.Font.Charset = HANGEUL_CHARSET
      Title.Font.Color = clBlack
      Title.Font.Height = -15
      Title.Font.Name = #44404#47548#52404
      Title.Font.Style = [fsBold]
      Title.Frame.Visible = True
      Title.Text.Strings = (
        'TChart')
      Title.Visible = False
      BackColor = 15132390
      BottomAxis.AxisValuesFormat = '#,##0'
      BottomAxis.ExactDateTime = False
      BottomAxis.LabelsFont.Charset = ANSI_CHARSET
      BottomAxis.LabelsFont.Color = clBlack
      BottomAxis.LabelsFont.Height = -11
      BottomAxis.LabelsFont.Name = 'Arial'
      BottomAxis.LabelsFont.Style = []
      BottomAxis.LabelsMultiLine = True
      BottomAxis.LabelsSeparation = 0
      BottomAxis.LabelStyle = talText
      BottomAxis.MinorTickCount = 0
      BottomAxis.MinorTickLength = 0
      BottomAxis.RoundFirstLabel = False
      LeftAxis.Automatic = False
      LeftAxis.AutomaticMaximum = False
      LeftAxis.AutomaticMinimum = False
      LeftAxis.ExactDateTime = False
      LeftAxis.Increment = 10.000000000000000000
      LeftAxis.LabelsMultiLine = True
      LeftAxis.Maximum = 250.000000000000000000
      LeftAxis.RoundFirstLabel = False
      Legend.Alignment = laBottom
      Legend.ColorWidth = 25
      Legend.Font.Charset = HANGEUL_CHARSET
      Legend.Font.Color = clBlack
      Legend.Font.Height = -13
      Legend.Font.Name = #44404#47548#52404
      Legend.Font.Style = []
      Legend.HorizMargin = 12
      Legend.LegendStyle = lsSeries
      Legend.ShadowSize = 0
      Legend.TopPos = 11
      MaxPointsPerPage = 24
      RightAxis.Automatic = False
      RightAxis.AutomaticMaximum = False
      RightAxis.AutomaticMinimum = False
      RightAxis.ExactDateTime = False
      RightAxis.Increment = 0.400000000000000000
      RightAxis.Maximum = 45.000000000000000000
      RightAxis.Minimum = 35.000000000000000000
      ScaleLastPage = False
      View3D = False
      BevelInner = bvLowered
      Color = clSilver
      TabOrder = 10
      Visible = False
      DesignSize = (
        166
        65)
      object Panel69: TPanel
        Left = 5
        Top = 501
        Width = 328
        Height = 20
        BevelInner = bvLowered
        BevelOuter = bvNone
        Color = 15461355
        TabOrder = 0
        object Label62: TLabel
          Left = 3
          Top = 4
          Width = 300
          Height = 12
          Caption = #39#8600#39#48169#54693#51004#47196' '#46300#47000#44536' :       '#39#8598#39#48169#54693#51004#47196' '#46300#47000#44536' : '
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
        end
        object Label60: TLabel
          Left = 299
          Top = 4
          Width = 24
          Height = 12
          Caption = #52629#49548
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
        end
        object Label71: TLabel
          Left = 132
          Top = 4
          Width = 24
          Height = 12
          Caption = #54869#45824
          Font.Charset = HANGEUL_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = #44404#47548#52404
          Font.Style = []
          ParentFont = False
        end
      end
      object ugd_PatList: TUltraGrid
        Left = -11
        Top = 20
        Width = 96
        Height = 65
        Anchors = []
        Color = cl3DLight
        ColCount = 6
        DefaultColWidth = 80
        DefaultRowHeight = 20
        FixedColor = 13882323
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        GridLineWidth = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
        ParentFont = False
        TabOrder = 1
        Visible = False
        FixedAlignment = taCenter
        FixedFontBold = False
        SelectedRowColor = clNone
        SelectedRowFontColor = clNavy
        GridRowColor = 16185078
        Wrap = False
      end
      object Series1: TLineSeries
        Marks.ArrowLength = 8
        Marks.Style = smsValue
        Marks.Transparent = True
        Marks.Visible = False
        SeriesColor = clSilver
        ShowInLegend = False
        Title = #51076#49884
        LinePen.Color = clSilver
        LinePen.Visible = False
        Pointer.Brush.Color = clSilver
        Pointer.InflateMargins = True
        Pointer.Pen.Visible = False
        Pointer.Style = psSmallDot
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series2: TLineSeries
        Marks.Arrow.Visible = False
        Marks.ArrowLength = 7
        Marks.BackColor = 14024703
        Marks.Font.Charset = DEFAULT_CHARSET
        Marks.Font.Color = clTeal
        Marks.Font.Height = -11
        Marks.Font.Name = 'Arial'
        Marks.Font.Style = [fsBold]
        Marks.Frame.Visible = False
        Marks.Style = smsValue
        Marks.Transparent = True
        Marks.Visible = False
        SeriesColor = 8421440
        Title = #52404#50728
        VertAxis = aRightAxis
        LinePen.Color = 8421440
        Pointer.HorizSize = 3
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.VertSize = 3
        Pointer.Visible = True
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series3: TLineSeries
        Marks.Arrow.Visible = False
        Marks.ArrowLength = -15
        Marks.BackColor = 14935039
        Marks.Font.Charset = DEFAULT_CHARSET
        Marks.Font.Color = clRed
        Marks.Font.Height = -11
        Marks.Font.Name = 'Arial'
        Marks.Font.Style = [fsBold]
        Marks.Frame.Visible = False
        Marks.Style = smsValue
        Marks.Transparent = True
        Marks.Visible = False
        SeriesColor = clRed
        Title = #47589#48149
        LineBrush = bsClear
        LinePen.Color = clRed
        Pointer.Brush.Color = clRed
        Pointer.HorizSize = 3
        Pointer.InflateMargins = True
        Pointer.Pen.Color = clRed
        Pointer.Style = psCircle
        Pointer.VertSize = 3
        Pointer.Visible = True
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series4: TLineSeries
        Marks.Arrow.Visible = False
        Marks.ArrowLength = 7
        Marks.BackColor = 16777185
        Marks.Font.Charset = DEFAULT_CHARSET
        Marks.Font.Color = clMaroon
        Marks.Font.Height = -11
        Marks.Font.Name = 'Arial'
        Marks.Font.Style = [fsBold]
        Marks.Frame.Visible = False
        Marks.Style = smsValue
        Marks.Transparent = True
        Marks.Visible = False
        SeriesColor = 6986414
        Title = #54840#55137
        LinePen.Color = 8958401
        Pointer.HorizSize = 3
        Pointer.InflateMargins = True
        Pointer.Style = psDiamond
        Pointer.VertSize = 3
        Pointer.Visible = True
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series5: TLineSeries
        Marks.Arrow.Visible = False
        Marks.ArrowLength = 7
        Marks.BackColor = 16768991
        Marks.Font.Charset = DEFAULT_CHARSET
        Marks.Font.Color = clBlue
        Marks.Font.Height = -11
        Marks.Font.Name = 'Arial'
        Marks.Font.Style = [fsBold]
        Marks.Frame.Visible = False
        Marks.Style = smsValue
        Marks.Transparent = True
        Marks.Visible = False
        SeriesColor = clBlue
        Title = #49688#52629#44592#50517
        LinePen.Color = clBlue
        Pointer.HorizSize = 3
        Pointer.InflateMargins = True
        Pointer.Pen.Visible = False
        Pointer.Style = psDownTriangle
        Pointer.VertSize = 3
        Pointer.Visible = True
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series6: TLineSeries
        Marks.Arrow.Visible = False
        Marks.ArrowLength = 7
        Marks.BackColor = 14286809
        Marks.Font.Charset = DEFAULT_CHARSET
        Marks.Font.Color = clBlue
        Marks.Font.Height = -11
        Marks.Font.Name = 'Arial'
        Marks.Font.Style = [fsBold]
        Marks.Frame.Visible = False
        Marks.Style = smsValue
        Marks.Transparent = True
        Marks.Visible = False
        SeriesColor = clBlue
        Title = #51060#50756#44592#50517
        LinePen.Color = clBlue
        Pointer.Brush.Color = clBlue
        Pointer.HorizSize = 3
        Pointer.InflateMargins = True
        Pointer.Pen.Color = clBlue
        Pointer.Style = psTriangle
        Pointer.VertSize = 3
        Pointer.Visible = True
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
    end
    object combx_Room: TComboBox
      Left = 954
      Top = 87
      Width = 186
      Height = 21
      Style = csDropDownList
      Color = 16383999
      DropDownCount = 20
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 11
      Visible = False
    end
    object combx_RoomCd: TComboBox
      Left = 1106
      Top = 87
      Width = 50
      Height = 21
      Style = csDropDownList
      DropDownCount = 30
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 12
      Visible = False
    end
    object combx_MedDeptCd: TComboBox
      Left = 1092
      Top = 110
      Width = 26
      Height = 21
      Style = csDropDownList
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 13
      TabOrder = 13
      Visible = False
    end
    object combx_MedDept: TComboBox
      Left = 957
      Top = 110
      Width = 128
      Height = 21
      Cursor = crHandPoint
      Style = csDropDownList
      Color = 16383999
      DropDownCount = 20
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 14
      Visible = False
      Items.Strings = (
        #51068#48152#50808#44284
        #51221#54805#50808#44284
        #49457#54805#50808#44284
        #49888#44221#50808#44284
        #55113#48512#50808#44284
        #49328#48512#51064#44284
        #51060#48708#51064#54980#44284)
    end
    object combx_OutDeptCd: TComboBox
      Left = 963
      Top = 132
      Width = 26
      Height = 20
      Style = csDropDownList
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 12
      ParentFont = False
      TabOrder = 15
      Visible = False
    end
    object combx_OutDept: TComboBox
      Left = 961
      Top = 141
      Width = 69
      Height = 20
      Cursor = crHandPoint
      Style = csDropDownList
      Color = 16383999
      DropDownCount = 20
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 12
      ParentFont = False
      TabOrder = 16
      Visible = False
      Items.Strings = (
        #51068#48152#50808#44284
        #51221#54805#50808#44284
        #49457#54805#50808#44284
        #49888#44221#50808#44284
        #55113#48512#50808#44284
        #49328#48512#51064#44284
        #51060#48708#51064#54980#44284)
    end
    object cboDeptCD: TComboBox
      Left = 1006
      Top = 158
      Width = 26
      Height = 21
      Style = csDropDownList
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 13
      TabOrder = 17
      Visible = False
    end
    object cboDept: TComboBox
      Left = 962
      Top = 159
      Width = 103
      Height = 21
      Cursor = crHandPoint
      Style = csDropDownList
      Color = 16383999
      DropDownCount = 20
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 18
      Visible = False
      Items.Strings = (
        #51068#48152#50808#44284
        #51221#54805#50808#44284
        #49457#54805#50808#44284
        #49888#44221#50808#44284
        #55113#48512#50808#44284
        #49328#48512#51064#44284
        #51060#48708#51064#54980#44284)
    end
    object combx_ConslDept1: TComboBox
      Left = 1170
      Top = 88
      Width = 71
      Height = 20
      Cursor = crHandPoint
      Style = csDropDownList
      Color = 16383999
      DropDownCount = 20
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 12
      ParentFont = False
      TabOrder = 19
      Visible = False
      Items.Strings = (
        #51068#48152#50808#44284
        #51221#54805#50808#44284
        #49457#54805#50808#44284
        #49888#44221#50808#44284
        #55113#48512#50808#44284
        #49328#48512#51064#44284
        #51060#48708#51064#54980#44284)
    end
    object combx_ConslDept2: TComboBox
      Left = 1170
      Top = 109
      Width = 71
      Height = 20
      Cursor = crHandPoint
      Style = csDropDownList
      Color = 16383999
      DropDownCount = 20
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 12
      ParentFont = False
      TabOrder = 20
      Visible = False
      Items.Strings = (
        #51068#48152#50808#44284
        #51221#54805#50808#44284
        #49457#54805#50808#44284
        #49888#44221#50808#44284
        #55113#48512#50808#44284
        #49328#48512#51064#44284
        #51060#48708#51064#54980#44284)
    end
    object combx_ConslDept3: TComboBox
      Left = 1170
      Top = 130
      Width = 71
      Height = 20
      Cursor = crHandPoint
      Style = csDropDownList
      Color = 16383999
      DropDownCount = 20
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 12
      ParentFont = False
      TabOrder = 21
      Visible = False
      Items.Strings = (
        #51068#48152#50808#44284
        #51221#54805#50808#44284
        #49457#54805#50808#44284
        #49888#44221#50808#44284
        #55113#48512#50808#44284
        #49328#48512#51064#44284
        #51060#48708#51064#54980#44284)
    end
    object combx_ErRsltCd: TComboBox
      Left = 1172
      Top = 211
      Width = 57
      Height = 21
      Cursor = crHandPoint
      Style = csDropDownList
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 22
      Visible = False
    end
    object combx_ErRslt: TComboBox
      Left = 1172
      Top = 163
      Width = 57
      Height = 21
      Cursor = crHandPoint
      Style = csDropDownList
      Color = 16383999
      DropDownCount = 10
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 23
      Visible = False
    end
    object combx_DiagKind: TComboBox
      Left = 955
      Top = 182
      Width = 137
      Height = 21
      Cursor = crHandPoint
      Style = csDropDownList
      Color = 16383999
      DropDownCount = 20
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 24
      Visible = False
      Items.Strings = (
        #51068#48152#50808#44284
        #51221#54805#50808#44284
        #49457#54805#50808#44284
        #49888#44221#50808#44284
        #55113#48512#50808#44284
        #49328#48512#51064#44284
        #51060#48708#51064#54980#44284)
    end
    object combx_DiagKindCd: TComboBox
      Left = 1002
      Top = 181
      Width = 26
      Height = 21
      Style = csDropDownList
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 13
      TabOrder = 25
      Visible = False
    end
    object combx_Intencd: TComboBox
      Left = 1079
      Top = 202
      Width = 61
      Height = 21
      Cursor = crHandPoint
      Style = csDropDownList
      Color = 16383999
      DropDownCount = 30
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 26
      Visible = False
      Items.Strings = (
        #51656#48337
        #50808#49345
        #51473#46021
        #44592#53440)
    end
    object combx_Inten: TComboBox
      Left = 951
      Top = 202
      Width = 224
      Height = 21
      Cursor = crHandPoint
      Style = csDropDownList
      Color = 14342874
      DropDownCount = 30
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 27
      Visible = False
      Items.Strings = (
        #51656#48337
        #50808#49345
        #51473#46021
        #44592#53440)
    end
    object combx_Injury: TComboBox
      Left = 1127
      Top = 182
      Width = 224
      Height = 21
      Cursor = crHandPoint
      Style = csDropDownList
      Color = 14342874
      DropDownCount = 30
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 28
      Visible = False
      Items.Strings = (
        #51656#48337
        #50808#49345
        #51473#46021
        #44592#53440)
    end
    object combx_Injurycd: TComboBox
      Left = 1255
      Top = 182
      Width = 61
      Height = 21
      Cursor = crHandPoint
      Style = csDropDownList
      Color = 16383999
      DropDownCount = 30
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 29
      Visible = False
      Items.Strings = (
        #51656#48337
        #50808#49345
        #51473#46021
        #44592#53440)
    end
    object combx_return: TComboBox
      Left = 988
      Top = 127
      Width = 192
      Height = 21
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 30
      Visible = False
    end
    object combx_returncd: TComboBox
      Left = 1068
      Top = 126
      Width = 136
      Height = 21
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 31
      Visible = False
    end
    object combx_transfer: TComboBox
      Left = 1061
      Top = 158
      Width = 239
      Height = 21
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 32
      Visible = False
    end
    object combx_transfercd: TComboBox
      Left = 1148
      Top = 158
      Width = 136
      Height = 21
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 33
      Visible = False
    end
    object combx_inbedcd: TComboBox
      Left = 1036
      Top = 108
      Width = 136
      Height = 21
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 34
      Visible = False
    end
    object combx_inbed: TComboBox
      Left = 955
      Top = 108
      Width = 216
      Height = 21
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 35
      Visible = False
    end
    object combx_killcd: TComboBox
      Left = 1069
      Top = 140
      Width = 136
      Height = 21
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 36
      Visible = False
    end
    object combx_kill: TComboBox
      Left = 965
      Top = 140
      Width = 241
      Height = 21
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 37
      Visible = False
    end
    object combx_kill2: TComboBox
      Left = 967
      Top = 158
      Width = 237
      Height = 21
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 38
      Visible = False
    end
    object combx_kill2cd: TComboBox
      Left = 1023
      Top = 158
      Width = 136
      Height = 21
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 39
      Visible = False
    end
    object cbx_type_out_cd: TComboBox
      Left = 1076
      Top = 112
      Width = 61
      Height = 21
      Cursor = crHandPoint
      Style = csDropDownList
      Color = 16383999
      DropDownCount = 30
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 40
      Visible = False
      Items.Strings = (
        #51656#48337
        #50808#49345
        #51473#46021
        #44592#53440)
    end
    object cbx_type_out: TComboBox
      Left = 956
      Top = 112
      Width = 209
      Height = 21
      ImeName = 'Microsoft IME 2003'
      ItemHeight = 13
      TabOrder = 41
      Visible = False
      Items.Strings = (
        '1 : '#51333#54633#51204#47928' '#48337#50896
        '2 : '#51333#54633#48337#50896
        '3 : '#48337#50896
        '4 : '#51032#50896
        '5 : '#54620#48169#48337'.'#51032#50896
        '8 : '#47784#47492
        '9 : '#44592#53440)
    end
    object combx_apath1: TComboBox
      Left = 963
      Top = 126
      Width = 218
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      ItemHeight = 13
      TabOrder = 42
      Visible = False
    end
    object combx_apath: TComboBox
      Left = 971
      Top = 134
      Width = 218
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      ItemHeight = 13
      TabOrder = 43
      Visible = False
    end
    object combx_apathcd1: TComboBox
      Left = 1098
      Top = 134
      Width = 70
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      ItemHeight = 13
      TabOrder = 44
      Visible = False
    end
    object combx_apathcd: TComboBox
      Left = 1019
      Top = 134
      Width = 70
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      ItemHeight = 13
      TabOrder = 45
      Visible = False
    end
    object cbx_type_in_cd: TComboBox
      Left = 1068
      Top = 135
      Width = 61
      Height = 21
      Cursor = crHandPoint
      Style = csDropDownList
      Color = 16383999
      DropDownCount = 30
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 46
      Visible = False
      Items.Strings = (
        #51656#48337
        #50808#49345
        #51473#46021
        #44592#53440)
    end
    object cbx_type_in: TComboBox
      Left = 955
      Top = 135
      Width = 201
      Height = 21
      Enabled = False
      ImeName = 'Microsoft IME 2003'
      ItemHeight = 13
      TabOrder = 47
      Visible = False
      Items.Strings = (
        '1 : '#51333#54633#51204#47928' '#48337#50896
        '2 : '#51333#54633#48337#50896
        '3 : '#48337#50896
        '4 : '#51032#50896
        '5 : '#54620#48169#48337'.'#51032#50896
        '8 : '#47784#47492
        '9 : '#44592#53440)
    end
    object combx_roomno: TComboBox
      Left = 987
      Top = 130
      Width = 74
      Height = 21
      Style = csDropDownList
      Color = 16383999
      DropDownCount = 20
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 48
      Visible = False
    end
    object combx_dangsacd: TComboBox
      Left = 1008
      Top = 149
      Width = 48
      Height = 21
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      ItemHeight = 13
      TabOrder = 49
      Visible = False
    end
    object combx_dangsa: TComboBox
      Left = 956
      Top = 180
      Width = 96
      Height = 21
      Cursor = crHandPoint
      Style = csDropDownList
      Color = 14342874
      DropDownCount = 10
      Enabled = False
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 50
      Visible = False
    end
    object combx_Disease: TComboBox
      Left = 1243
      Top = 91
      Width = 95
      Height = 21
      Cursor = crHandPoint
      Style = csDropDownList
      Color = 15129053
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 13
      TabOrder = 51
      Visible = False
      Items.Strings = (
        #51025#44553
        #44596#44553
        #48708#51025#44553
        #44592#53440)
    end
    object cboHome: TComboBox
      Left = 1048
      Top = 176
      Width = 121
      Height = 21
      Style = csDropDownList
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612' '#51077#47141' '#49884#49828#53596' (IME 2000)'
      ItemHeight = 13
      ItemIndex = 0
      ParentFont = False
      TabOrder = 52
      Text = #47924
      Visible = False
      Items.Strings = (
        #47924
        #50976)
    end
    object combx_Location: TComboBox
      Left = 1175
      Top = 189
      Width = 97
      Height = 21
      Cursor = crHandPoint
      Color = 16383999
      DropDownCount = 30
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = []
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 13
      ParentFont = False
      TabOrder = 53
      Visible = False
      Items.Strings = (
        '1'#44396#50669
        '2'#44396#50669
        '3'#44396#50669
        '4'#44396#50669
        #49548#50500#44396#50669
        #44288#52272#49892
        #52376#52824#49892
        #51068#48152#44201#47532#49892'1'
        #51068#48152#44201#47532#49892'2'
        #51020#50517#44201#47532#49892
        #44256#50517#49328#49548#49892
        '5'#44396#50669
        '6'#44396#50669
        '7'#44396#50669
        #49548#50500#51020#50517#44201#47532#49892
        #49548#50500#51068#48152#44201#47532#49892
        #49548#50500#52376#52824#49892
        #49548#50500#51473#51613#51025#44553#54872#51088#44396#50669
        #49548#50500#51025#44553#54872#51088#51652#47308#44396#50669)
    end
    object Combo_Num: TComboBox
      Left = 1271
      Top = 189
      Width = 57
      Height = 21
      ImeName = 'Microsoft Office IME 2007'
      ItemHeight = 13
      TabOrder = 54
      Visible = False
    end
  end
end
