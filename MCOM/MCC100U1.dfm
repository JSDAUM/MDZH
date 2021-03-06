object MCC100F1: TMCC100F1
  Left = 340
  Top = 231
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = #54872#51088#51312#54924
  ClientHeight = 195
  ClientWidth = 396
  Color = 4194432
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548#52404
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bbt_Confirm: TBitBtn
    Left = 241
    Top = 163
    Width = 68
    Height = 29
    Caption = #49440#53469
    Default = True
    TabOrder = 1
    OnClick = bbt_ConfirmClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object bbt_Cancel: TBitBtn
    Left = 310
    Top = 163
    Width = 83
    Height = 29
    Cancel = True
    Caption = #52712#49548'(&X)'
    TabOrder = 2
    OnClick = bbt_CancelClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object ugd_OutPatList: TUltraGrid
    Left = 3
    Top = 3
    Width = 327
    Height = 155
    Cursor = crHandPoint
    TabStop = False
    BorderStyle = bsNone
    Color = 16383999
    DefaultRowHeight = 20
    FixedColor = 13882323
    FixedCols = 0
    RowCount = 2
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #44404#47548#52404
    Font.Style = []
    GridLineWidth = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 3
    OnClick = ugd_OutPatListClick
    OnDblClick = ugd_OutPatListDblClick
    OnDrawCell = ugd_OutPatListDrawCell
    FixedAlignment = taCenter
    FixedFontBold = False
    SelectedRowColor = 16641503
    SelectedRowFontColor = clNavy
    GridRowColor = 16185078
    Title = #54872#51088#48264#54840'|'#54872#51088#47749'|Sex/Age|'#51077#50896#51068#51088'|'#51652#47308#44284
    ColWidths = (
      66
      59
      59
      82
      60)
  end
  object ugd_PatList: TUltraGrid
    Left = 3
    Top = 3
    Width = 327
    Height = 155
    Cursor = crHandPoint
    TabStop = False
    BorderStyle = bsNone
    Color = 16383999
    ColCount = 4
    DefaultRowHeight = 20
    FixedColor = 13882323
    FixedCols = 0
    RowCount = 2
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #44404#47548#52404
    Font.Style = []
    GridLineWidth = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    OnClick = ugd_PatListClick
    OnDblClick = ugd_PatListDblClick
    FixedAlignment = taCenter
    FixedFontBold = False
    SelectedRowColor = 16641503
    SelectedRowFontColor = clNavy
    GridRowColor = 16185078
    Title = #54872#51088#48264#54840'|'#54872#51088#47749'|Sex/Age|'#51452#48124#46321#47197#48264#54840
    ColWidths = (
      70
      60
      63
      133)
  end
  object ugd_List: TUltraGrid
    Left = 3
    Top = 3
    Width = 390
    Height = 155
    Cursor = crHandPoint
    TabStop = False
    BorderStyle = bsNone
    Color = 16383999
    ColCount = 7
    DefaultRowHeight = 20
    FixedColor = 13882323
    FixedCols = 0
    RowCount = 2
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = #44404#47548#52404
    Font.Style = []
    GridLineWidth = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 4
    Visible = False
    OnClick = ugd_ListClick
    OnDblClick = ugd_ListDblClick
    FixedAlignment = taCenter
    FixedFontBold = False
    SelectedRowColor = 16641503
    SelectedRowFontColor = clNavy
    GridRowColor = 16185078
    Title = #54872#51088#48264#54840'|'#54872#51088#47749'|Sex/Age|'#51452#48124#46321#47197#48264#54840'||'#51652#47308#44284'|'#54633#48376#48264#54840
    ColWidths = (
      55
      53
      63
      96
      2
      58
      64)
  end
end
