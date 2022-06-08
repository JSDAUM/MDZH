object MDP410F1: TMDP410F1
  Left = 102
  Top = 99
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'MDP410F1 환자정보조회'
  ClientHeight = 613
  ClientWidth = 915
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = '굴림체'
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
  object pn_Header: TPanel
    Left = 0
    Top = 0
    Width = 915
    Height = 36
    BevelInner = bvLowered
    TabOrder = 0
    object Panel17: TPanel
      Left = 393
      Top = 6
      Width = 365
      Height = 23
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = 12964541
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '굴림체'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object rbt_Op: TRadioButton
        Left = 92
        Top = 4
        Width = 77
        Height = 16
        Cursor = crHandPoint
        Caption = '수술이력'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = '굴림체'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = rbt_OpClick
      end
      object rbt_Trans: TRadioButton
        Left = 257
        Top = 4
        Width = 104
        Height = 16
        Cursor = crHandPoint
        Caption = '전과전등이력'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = '굴림체'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = rbt_TransClick
      end
      object rbt_History: TRadioButton
        Left = 9
        Top = 4
        Width = 79
        Height = 16
        Cursor = crHandPoint
        Caption = '수진이력'
        Checked = True
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = '굴림체'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = True
        OnClick = rbt_HistoryClick
      end
      object rbt_Blood: TRadioButton
        Left = 173
        Top = 4
        Width = 77
        Height = 16
        Cursor = crHandPoint
        Caption = '수혈이력'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = '굴림체'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = rbt_BloodClick
      end
    end
    object Panel4: TPanel
      Left = 8
      Top = 7
      Width = 153
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = '환 자 명         '
      Color = 12964541
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '굴림체'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object cbx_Flag: TCheckBox
        Left = 71
        Top = 5
        Width = 78
        Height = 13
        Cursor = crHandPoint
        TabStop = False
        Alignment = taLeftJustify
        Caption = '(재원환자)'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = '굴림체'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = cbx_FlagClick
      end
    end
    object pn_PatNo: TPanel
      Left = 238
      Top = 7
      Width = 75
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = 15526635
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '굴림체'
      Font.Style = [fsBold]
      Locked = True
      ParentFont = False
      TabOrder = 2
    end
    object ed_PatName: TEdit
      Left = 161
      Top = 7
      Width = 76
      Height = 21
      Color = 16774399
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = '굴림체'
      Font.Style = []
      ImeMode = imSHanguel
      ImeName = '한국어(한글)'
      MaxLength = 10
      ParentFont = False
      TabOrder = 3
      OnChange = ed_PatNameChange
      OnEnter = ed_PatNameEnter
      OnKeyDown = ed_PatNameKeyDown
    end
    object pn_Ward: TPanel
      Left = 314
      Top = 7
      Width = 75
      Height = 21
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = 15526635
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object pn_PatInfo: TPanel
    Left = 0
    Top = 34
    Width = 915
    Height = 52
    BevelInner = bvLowered
    TabOrder = 7
    object Label6: TLabel
      Left = 377
      Top = 8
      Width = 70
      Height = 13
      Caption = '【연락처】'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '굴림체'
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
      Caption = '【주    소】'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 4
      Top = 8
      Width = 80
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '【주민번호】'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 193
      Top = 8
      Width = 91
      Height = 13
      Caption = '【성별/나이】'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 747
      Top = 31
      Width = 84
      Height = 13
      Caption = '【퇴원병동】'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 747
      Top = 10
      Width = 84
      Height = 13
      Caption = '【보험구분】'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = '굴림체'
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
      Color = 15526635
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
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
      Color = 15526635
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object pn_TelNo: TPanel
      Left = 441
      Top = 4
      Width = 263
      Height = 20
      Alignment = taLeftJustify
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = 15526635
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object pn_Address: TPanel
      Left = 155
      Top = 26
      Width = 588
      Height = 20
      Alignment = taLeftJustify
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = 15526635
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
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
      Color = 15526635
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object pn_WardRoom: TPanel
      Left = 828
      Top = 27
      Width = 81
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = 15526635
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object pn_Insu: TPanel
      Left = 828
      Top = 4
      Width = 81
      Height = 20
      BevelInner = bvLowered
      BevelOuter = bvNone
      Color = 15526635
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object bbt_Change: TBitBtn
      Left = 705
      Top = 4
      Width = 38
      Height = 21
      Cursor = crHandPoint
      Caption = '변경'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = bbt_ChangeClick
      NumGlyphs = 2
    end
  end
  object pn_History: TPanel
    Left = 0
    Top = 84
    Width = 915
    Height = 470
    BevelInner = bvLowered
    TabOrder = 1
    object Bevel1: TBevel
      Left = 1
      Top = 200
      Width = 913
      Height = 3
    end
    object ugd_History: TUltraGrid
      Left = 2
      Top = 2
      Width = 910
      Height = 197
      Cursor = crHandPoint
      BorderStyle = bsNone
      Color = 16383999
      ColCount = 11
      DefaultRowHeight = 21
      FixedColor = 13882323
      FixedCols = 0
      RowCount = 2
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      GridLineWidth = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goRowSelect]
      ParentFont = False
      ParentShowHint = False
      ScrollBars = ssVertical
      ShowHint = False
      TabOrder = 2
      OnClick = ugd_HistoryClick
      FixedAlignment = taCenter
      FixedFontBold = False
      SelectedRowColor = 16641503
      SelectedRowFontColor = clNavy
      GridRowColor = 15724527
      Title = 
        '진료구분|내원일시|퇴원일시|진료과|담당교수|진         단        ' +
        ' 명'
      Wrap = False
      ColWidths = (
        63
        115
        108
        96
        64
        464
        64
        64
        64
        64
        64)
    end
    object Panel32: TPanel
      Left = 6
      Top = 208
      Width = 158
      Height = 20
      BevelOuter = bvNone
      Color = 12351305
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '굴림체'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object pn_Title: TPanel
      Left = 3
      Top = 205
      Width = 159
      Height = 21
      Caption = '수진기간중 처방이력'
      Color = 16641503
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = '굴림체'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object ugd_OrdDate: TUltraGrid
      Left = 2
      Top = 230
      Width = 90
      Height = 238
      Cursor = crHandPoint
      BorderStyle = bsNone
      Color = 15463162
      ColCount = 1
      DefaultRowHeight = 21
      FixedColor = 13882323
      FixedCols = 0
      RowCount = 2
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      GridLineWidth = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goRowSelect]
      ParentFont = False
      ParentShowHint = False
      ScrollBars = ssVertical
      ShowHint = False
      TabOrder = 3
      OnClick = ugd_OrdDateClick
      OnDrawCell = ugd_OrdDateDrawCell
      FixedAlignment = taCenter
      FixedFontBold = False
      SelectedRowColor = clNavy
      SelectedRowFontColor = clWhite
      GridRowColor = 15463162
      Title = '처방일자'
      Wrap = False
      ColWidths = (
        89)
    end
    object Panel1: TPanel
      Left = 149
      Top = 230
      Width = 633
      Height = 21
      Caption = '처        방        내        역'
      Color = 13882323
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Panel2: TPanel
      Left = 811
      Top = 230
      Width = 101
      Height = 21
      Caption = '처방결과'
      Color = 13882323
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object ugd_Order: TUltraGrid
      Left = 93
      Top = 251
      Width = 819
      Height = 217
      Cursor = crHandPoint
      BorderStyle = bsNone
      Color = 16383999
      ColCount = 10
      DefaultRowHeight = 20
      FixedColor = 13882323
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      GridLineWidth = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goRowSelect]
      ParentFont = False
      ParentShowHint = False
      PopupMenu = pm_Order
      ScrollBars = ssVertical
      ShowHint = False
      TabOrder = 6
      OnClick = ugd_OrderClick
      OnDrawCell = ugd_OrderDrawCell
      OnMouseUp = ugd_OrderMouseUp
      FixedAlignment = taCenter
      FixedFontBold = False
      SelectedRowColor = 16641503
      SelectedRowFontColor = clNavy
      GridRowColor = 15724527
      ColWidths = (
        56
        303
        330
        29
        101
        64
        64
        64
        64
        64)
    end
    object Panel5: TPanel
      Left = 93
      Top = 230
      Width = 56
      Height = 21
      Caption = '구 분'
      Color = 13882323
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object Panel6: TPanel
      Left = 782
      Top = 230
      Width = 29
      Height = 21
      Caption = '수납'
      Color = 13882323
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object ugd_Temp: TUltraGrid
      Left = 31
      Top = 64
      Width = 141
      Height = 57
      ColCount = 16
      DefaultRowHeight = 20
      FixedColor = 13882323
      FixedCols = 0
      RowCount = 2
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      GridLineWidth = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 9
      Visible = False
      FixedAlignment = taCenter
      FixedFontBold = False
      SelectedRowColor = 16641503
      SelectedRowFontColor = clNavy
      GridRowColor = 16185078
      Title = '구 분|처   방   내   역|처방결과'
      Wrap = False
      ColWidths = (
        66
        476
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
        64)
    end
    object ugd_PrintList: TUltraGrid
      Left = 31
      Top = 127
      Width = 138
      Height = 46
      Anchors = []
      Color = cl3DLight
      ColCount = 11
      DefaultColWidth = 10
      DefaultRowHeight = 20
      FixedColor = 13882323
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      GridLineWidth = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
      ParentFont = False
      TabOrder = 10
      Visible = False
      FixedAlignment = taCenter
      FixedFontBold = False
      SelectedRowColor = clNone
      SelectedRowFontColor = clNavy
      GridRowColor = 16185078
      Wrap = False
    end
    object pn_Interest: TPanel
      Left = 466
      Top = 32
      Width = 437
      Height = 188
      BevelInner = bvLowered
      BorderWidth = 3
      TabOrder = 12
      Visible = False
      object Label4: TLabel
        Left = 13
        Top = 59
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = '특기사항'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '굴림체'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 13
        Top = 36
        Width = 62
        Height = 13
        Alignment = taRightJustify
        Caption = '분 류 명'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '굴림체'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 13
        Top = 13
        Width = 16
        Height = 13
        Caption = '구'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '굴림체'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 59
        Top = 13
        Width = 16
        Height = 13
        Caption = '분'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '굴림체'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object combx_SetCd: TComboBox
        Left = 240
        Top = 39
        Width = 50
        Height = 21
        Cursor = crHandPoint
        TabStop = False
        Color = 16056319
        DropDownCount = 20
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = '굴림체'
        Font.Style = []
        ImeName = '한국어(한글)'
        ItemHeight = 13
        ParentFont = False
        TabOrder = 4
        Visible = False
      end
      object combx_SetNm: TComboBox
        Left = 76
        Top = 31
        Width = 248
        Height = 21
        Cursor = crHandPoint
        Style = csDropDownList
        Color = 16056319
        DropDownCount = 20
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = '굴림체'
        Font.Style = []
        ImeName = '한국어(한글)'
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
        OnChange = combx_SetNmChange
      end
      object bbt_IntInsert: TBitBtn
        Left = 239
        Top = 150
        Width = 83
        Height = 31
        Cursor = crHandPoint
        Caption = ' 등 록'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = '굴림체'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = bbt_IntInsertClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
          FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
          00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
          F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
          00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
          F033777777777337F73309999990FFF0033377777777FFF77333099999000000
          3333777777777777333333399033333333333337773333333333333903333333
          3333333773333333333333303333333333333337333333333333}
        NumGlyphs = 2
      end
      object bbt_IntCancel: TBitBtn
        Left = 323
        Top = 150
        Width = 103
        Height = 31
        Cursor = crHandPoint
        Caption = '취소(ESC)'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = '굴림체'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = bbt_IntCancelClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
          0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
          0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
          0333337F777FFFFF7F3333000000000003333377777777777333}
        NumGlyphs = 2
      end
      object me_Comment: TMemo
        Left = 76
        Top = 58
        Width = 350
        Height = 89
        Color = 16056319
        ImeName = '한국어(한글)'
        TabOrder = 3
      end
      object bbt_Choice: TBitBtn
        Left = 326
        Top = 29
        Width = 100
        Height = 26
        Cursor = crHandPoint
        Caption = ' 분류추가'
        TabOrder = 5
        OnClick = bbt_ChoiceClick
        Glyph.Data = {
          76050000424D7605000000000000360000002800000015000000150000000100
          18000000000040050000130B0000130B00000000000000000000777777B7B7B7
          B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7
          B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B700777777B7B7B7
          B7B7B7B7B8B67778767976787A78787977777778767577787778767776787777
          77777777777876757778787878747677797678B7B7B7B7B7B700777777B7B7B7
          B7B7B70000010000010001010001000001020000010200000200000001000000
          00000000030100000000000001010200747676B7B7B7B7B7B700777777B7B7B7
          B7B7B7000100F7F6F8F7F8F6F6F9F7F5F7F7F8F6F6F8F8F8F5F8F6F7F7F7F7F6
          F8F4F6F7F5F7F8F5F7F7FBF8F4000001777777B7B7B7B7B7B700777777B7B7B7
          B7B7B7020001F5F7F7F9F7F6F6F5F7020000000100020000B4B6B7B9B6B8B7B7
          B7B7B8B6B9B8B4B8B8B8F5F7F7000000757778B7B7B7B7B7B700777777B7B7B7
          B7B7B7000100F9F7F6F5F7F7F7F6F8000001B9B7B6787675010101B9B7B7F5F8
          F6F8F9F7F8F5F7F9F8F4F5F7F8020000777876B7B7B7B7B7B700777777B7B7B7
          B7B7B7020000F7F7F7F9F7F7F7F8F6000003F4F6F6030101780001000000B7B7
          B7F2F5F9F7F8F6F7F8F6F6F5F7000000777777B7B7B7B7B7B700777777B7B7B7
          B7B7B7000001F7F8F6F7F6FAF6F7F5F5F7F7000100FBF6F7F7F7007700000000
          00B7B7B7F5F8F6F6F6F6F8F7F9000000777777B7B7B7B7B7B700777777B7B7B7
          B7B7B7000000F7F8F6F7F7F7F7F8F6F7F7F7F7F6F8000100F9F6F8F4F6027801
          00000000B9B7B7F9F7F7F7F7F7000100777678B7B7B7B7B7B700777777B7B7B7
          B7B7B7000001F9F7F6F4F6F6F9F7F7F7F8F6F5F7F8F6F7F5000000F7F8F6F6F7
          00790000000000B9B7B6F5F7F8000000797777B7B7B7B7B7B700777777B7B7B7
          B7B7B7020000F7F6F8F9F7F7F5F7F8F7F7F7F8F7F9F3F8F6F7F7F7000100F7F6
          F8FAF800790000000000B7B7B7000001737876B7B7B7B7B7B700777777B7B7B7
          B7B7B7000000F9F7F7F7F8F6F6F7F5797701767703F9F7F7F9F7F7FBF6F80001
          01F6F6F6F8F702000100000000787779757777B7B7B7B7B7B700777777B7B7B7
          B7B7B7030101F5F7F8F6F7F5F3F8F7787600777701F8F8F8F5F7F7F7F8F6F6F6
          F6010200000000007779007776020000777777B7B7B7B7B7B700777777B7B7B7
          B7B7B7000100F7F7F77A7802777500787502767700787700777800F2F6F7F8F8
          F8F3F9F402000000F7F7000001007677777678B7B7B7B7B7B700777777B7B7B7
          B7B7B7010002F7F6F8757602777701767700767600767700767600F9F7F6F4F6
          F7F9F6F8F8F8F8000000017877787878777678B7B7B7B7B7B700777777B7B7B7
          B7B7B7000100F4F9F7F9F7F7F7F7F7787700767700F9F7F7F5F8F6F8F8F8F7F6
          F8F5F8F6F7F6F8F8F7F9F7F8F6000100777876B7B7B7B7B7B700777777B7B7B7
          B7B7B7000000F7F7F7FAF8F8F4F6F6777800767600F4F7F5F9F7F7F7F6FAF5F7
          F7F7F8F6F5F8F6F5F7F7F7F7F7020000777777B7B7B7B7B7B700767676B7B7B7
          B7B7B7000000F7F7F7F6F6F6F7F7F7F7F7F7F7F7F7F6F6F6F7F7F7F7F7F7F7F7
          F7F7F7F7F7F7F7F6F6F6F7F7F7000000777777B7B7B7B7B7B700777777B7B7B7
          B8B8B80000000101010000000000000000000000000000000000000000000000
          00000000010101010101000000000000B7B7B7B7B7B7B6B6B600787878B6B6B6
          B8B8B8B7B7B7B7B7B7B7B7B7B8B8B8B7B7B7B7B7B7B8B8B8B7B7B7B7B7B7B7B7
          B7B8B8B8B7B7B7B8B8B8B6B6B6B7B7B7B7B7B7B6B6B6B7B7B700767676777777
          7777777777777676767878787676767777777777777676767878787878787676
          7677777778787877777777777777777777777777777777777700}
      end
      object rbt_Gubun1: TRadioButton
        Left = 85
        Top = 12
        Width = 59
        Height = 16
        Cursor = crHandPoint
        Caption = '개 인'
        Checked = True
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = '굴림체'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        TabStop = True
        OnClick = rbt_Gubun1Click
      end
      object rbt_Gubun2: TRadioButton
        Left = 145
        Top = 12
        Width = 63
        Height = 16
        Cursor = crHandPoint
        Caption = '진료과'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = '굴림체'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = rbt_Gubun2Click
      end
    end
    object pn_Group: TPanel
      Left = 422
      Top = 113
      Width = 336
      Height = 73
      BevelInner = bvLowered
      BorderWidth = 3
      TabOrder = 11
      Visible = False
      object Label3: TLabel
        Left = 10
        Top = 14
        Width = 46
        Height = 13
        Caption = '분류명'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '굴림체'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lb_Gubun: TLabel
        Left = 48
        Top = 40
        Width = 56
        Height = 13
        Caption = 'lb_Gubun'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = '굴림체'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object bbt_SetCancel: TBitBtn
        Left = 235
        Top = 40
        Width = 92
        Height = 25
        Cursor = crHandPoint
        Caption = '취소(ESC)'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = '굴림체'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = bbt_SetCancelClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
          0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
          0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
          0333337F777FFFFF7F3333000000000003333377777777777333}
        NumGlyphs = 2
      end
      object ed_SetNm: TEdit
        Left = 57
        Top = 10
        Width = 269
        Height = 22
        AutoSelect = False
        AutoSize = False
        Color = 16056319
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = '굴림체'
        Font.Style = []
        ImeName = '한국어(한글)'
        MaxLength = 30
        ParentFont = False
        TabOrder = 1
      end
      object bbt_SetInsert: TBitBtn
        Left = 151
        Top = 40
        Width = 83
        Height = 25
        Cursor = crHandPoint
        Caption = ' 등 록'
        Default = True
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = '굴림체'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = bbt_SetInsertClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
          FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
          00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
          F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
          00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
          F033777777777337F73309999990FFF0033377777777FFF77333099999000000
          3333777777777777333333399033333333333337773333333333333903333333
          3333333773333333333333303333333333333337333333333333}
        NumGlyphs = 2
      end
    end
  end
  object pn_Trans: TPanel
    Left = 7
    Top = 403
    Width = 915
    Height = 470
    BevelInner = bvLowered
    TabOrder = 5
    Visible = False
    object ugd_Trans: TUltraGrid
      Left = 2
      Top = 2
      Width = 910
      Height = 454
      BorderStyle = bsNone
      Color = 16383999
      ColCount = 4
      DefaultRowHeight = 21
      FixedColor = 13882323
      FixedCols = 0
      RowCount = 2
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      GridLineWidth = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goRowSelect]
      ParentFont = False
      ParentShowHint = False
      ScrollBars = ssVertical
      ShowHint = False
      TabOrder = 0
      FixedAlignment = taCenter
      FixedFontBold = False
      SelectedRowColor = 16641503
      SelectedRowFontColor = clNavy
      GridRowColor = 15724527
      Title = '등록일|전출과 / 병실|전입과 / 병실|비  고|입원일'
      Wrap = False
      ColWidths = (
        74
        252
        278
        305)
    end
  end
  object pn_Blood: TPanel
    Left = 23
    Top = 433
    Width = 915
    Height = 460
    BevelInner = bvLowered
    TabOrder = 4
    Visible = False
    object ugd_Blood: TUltraGrid
      Left = 2
      Top = 2
      Width = 910
      Height = 470
      BorderStyle = bsNone
      Color = 16383999
      ColCount = 6
      DefaultRowHeight = 21
      FixedColor = 13882323
      FixedCols = 0
      RowCount = 2
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      GridLineWidth = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goRowSelect]
      ParentFont = False
      ParentShowHint = False
      ScrollBars = ssVertical
      ShowHint = False
      TabOrder = 0
      FixedAlignment = taCenter
      FixedFontBold = False
      SelectedRowColor = 16641503
      SelectedRowFontColor = clNavy
      GridRowColor = 15724527
      Title = '처방일|처  방  이  력|진행|지시의|발행처|비  고'
      Wrap = False
      ColWidths = (
        74
        392
        50
        61
        101
        231)
    end
  end
  object pn_Op: TPanel
    Left = 40
    Top = 472
    Width = 915
    Height = 470
    BevelInner = bvLowered
    TabOrder = 3
    Visible = False
    object ugd_Op: TUltraGrid
      Left = 2
      Top = 2
      Width = 910
      Height = 454
      BorderStyle = bsNone
      Color = 16383999
      ColCount = 7
      DefaultRowHeight = 21
      FixedColor = 13882323
      FixedCols = 0
      RowCount = 2
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      GridLineWidth = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goRowSelect]
      ParentFont = False
      ParentShowHint = False
      ScrollBars = ssVertical
      ShowHint = False
      TabOrder = 0
      FixedAlignment = taCenter
      FixedFontBold = False
      SelectedRowColor = 16641503
      SelectedRowFontColor = clNavy
      GridRowColor = 15724527
      Title = '수술일|수    술    명|진료과|집도의|마취의|마취구분|비  고'
      Wrap = False
      ColWidths = (
        75
        415
        84
        69
        68
        101
        97)
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 552
    Width = 915
    Height = 43
    BevelInner = bvLowered
    TabOrder = 2
    object bbt_Close: TBitBtn
      Left = 808
      Top = 5
      Width = 105
      Height = 33
      Cursor = crHandPoint
      Anchors = [akTop, akRight, akBottom]
      Caption = ' 종 료(&X)'
      TabOrder = 0
      OnClick = bbt_CloseClick
      Glyph.Data = {
        6E040000424D6E04000000000000360000002800000013000000120000000100
        18000000000038040000CE0E0000D80E00000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
        BFBFFFFFFFBFBFBFFFFFFFFFFFFFBFBFBFFFFFFF000000000000FFFFFFBFBFBF
        FFFFFFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFFFFFFFBFBFBFFFFFFFFFFF
        FFBFBFBFFFFFFFBFBFBFFFFFFFFFFFFF000000FFFF00000000FFFFFFFFFFFFBF
        BFBFBFBFBFBFBFBFBFBFBF000000BFBFBFFFFFFFBFBFBFFFFFFFBFBFBFFFFFFF
        FFFFFFBFBFBFFFFFFFBFBFBF000000FFFF007F7F00000000BFBFBFFFFFFFFFFF
        FFBFBFBFBFBFBF000000BFBFBF000000000000000000000000000000000000FF
        FFFFFFFFFFBFBFBF000000FFFF007F7F007F7F00000000000000000000BFBFBF
        BFBFBF000000BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBF
        BFFFFFFF000000FFFF007F7F007F7F00000000BFBFBFFFFFFFBFBFBFBFBFBF00
        0000BFBFBFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF7F7F7F7F7F7F7F7F7F
        000000FFFF007F7F007F7F00000000BFBFBFFFFFFFBFBFBFBFBFBF000000BFBF
        BFFFFFFFFFFFFFFFFFFFFFFFFF0000000000007F7F7F7F7F7F7F7F7F000000FF
        FF007F7F007F7F00000000BFBFBFFFFFFFBFBFBFBFBFBF000000BFBFBFFFFFFF
        FFFFFFBFBFBFBFBFBF0000007F7F000000007F7F7F7F7F7F000000FFFF007F7F
        7F7F7F00000000BFBFBFFFFFFFBFBFBFBFBFBF000000BFBFBFFFFFFF00000000
        0000000000000000FFFF007F7F000000007F7F7F000000FFFF000000007F7F00
        000000BFBFBFFFFFFFBFBFBFBFBFBF000000BFBFBF000000FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF007F7F00000000000000FFFF007F7F007F7F00000000BF
        BFBFFFFFFFBFBFBFBFBFBF000000BFBFBF000000FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF007F7F007F7F7F000000FFFF007F7F007F7F00000000BFBFBFFFFF
        FFBFBFBFBFBFBF000000BFBFBFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF007F
        7F007F7F7F7F7F7F000000FFFF007F7F007F7F00000000BFBFBFFFFFFFBFBFBF
        BFBFBF000000BFBFBFFFFFFFFFFFFFFFFFFFFFFFFF0000007F7F007F7F7F7F7F
        7F7F7F7F000000FFFF007F7F007F7F00000000BFBFBFFFFFFFBFBFBFBFBFBF00
        0000BFBFBFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF7F7F7F7F7F7F7F7F7F
        7F7F7F000000FFFF007F7F00000000BFBFBFFFFFFFBFBFBFBFBFBF000000BFBF
        BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F000000FFFF00000000BFBFBFFFFFFFBFBFBFBFBFBF000000BFBFBFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000}
    end
    object bbt_Booking: TBitBtn
      Left = 521
      Top = 5
      Width = 117
      Height = 33
      Cursor = crHandPoint
      Anchors = [akTop, akRight, akBottom]
      Caption = ' 진료예약(&R)'
      TabOrder = 1
      OnClick = bbt_BookingClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
        7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
        777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
        79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
        7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
        777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
        79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
        CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
      NumGlyphs = 2
    end
    object bbt_Print: TBitBtn
      Left = 239
      Top = 5
      Width = 129
      Height = 33
      Cursor = crHandPoint
      Caption = ' 투약처치기록'
      Enabled = False
      TabOrder = 2
      Visible = False
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
    object bbt_ExmCancel: TBitBtn
      Left = 638
      Top = 5
      Width = 169
      Height = 33
      Cursor = crHandPoint
      Anchors = [akTop, akRight, akBottom]
      Caption = ' 실시취소(과내검사)'
      Enabled = False
      TabOrder = 3
      OnClick = bbt_ExmCancelClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF33339993707399933333773337F3777FF3399933000339
        9933377333777F3377F3399333707333993337733337333337FF993333333333
        399377F33333F333377F993333303333399377F33337FF333373993333707333
        333377F333777F333333993333101333333377F333777F3FFFFF993333000399
        999377FF33777F77777F3993330003399993373FF3777F37777F399933000333
        99933773FF777F3F777F339993707399999333773F373F77777F333999999999
        3393333777333777337333333999993333333333377777333333}
      NumGlyphs = 2
    end
    object bbt_Interest: TBitBtn
      Left = 4
      Top = 6
      Width = 110
      Height = 31
      Cursor = crHandPoint
      Caption = '관심환자 등록'
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = bbt_InterestClick
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777700000007777777777777777700000007777777774F77777700000007777
        7777444F77777000000077777774444F777770000000700000444F44F7777000
        000070FFF444F0744F777000000070F8884FF0774F777000000070FFFFFFF077
        74F77000000070F88888F077774F7000000070FFFFFFF0777774F000000070F8
        8777F07777774000000070FFFF00007777777000000070F88707077777777000
        000070FFFF007777777770000000700000077777777770000000777777777777
        777770000000}
    end
  end
  object stb_Message: TStatusBar
    Left = 0
    Top = 594
    Width = 915
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Width = 50
      end>
    SimplePanel = False
  end
  object pn_Tel: TPanel
    Left = 441
    Top = 60
    Width = 428
    Height = 49
    BevelInner = bvLowered
    BorderWidth = 3
    Caption = 'pn_TelNo'
    Color = 16716049
    TabOrder = 8
    Visible = False
    object ed_TelNo1: TEdit
      Left = 4
      Top = 24
      Width = 120
      Height = 21
      Color = 16447469
      ImeName = '한국어(한글)'
      TabOrder = 0
    end
    object ed_TelNo2: TEdit
      Left = 123
      Top = 24
      Width = 121
      Height = 21
      Color = 16447469
      ImeName = '한국어(한글)'
      TabOrder = 1
    end
    object ed_TelNo3: TEdit
      Left = 243
      Top = 24
      Width = 120
      Height = 21
      Color = 16447469
      ImeName = '한국어(한글)'
      TabOrder = 2
    end
    object Panel8: TPanel
      Left = 5
      Top = 5
      Width = 120
      Height = 21
      Caption = '집전화번호'
      Color = 14540253
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Panel9: TPanel
      Left = 125
      Top = 5
      Width = 120
      Height = 21
      Caption = '사무실전화번호'
      Color = 14540253
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object Panel10: TPanel
      Left = 245
      Top = 5
      Width = 119
      Height = 21
      Caption = '핸드폰번호'
      Color = 14540253
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = '굴림체'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object bbt_Ok: TBitBtn
      Left = 365
      Top = 5
      Width = 29
      Height = 39
      Cursor = crHandPoint
      TabOrder = 3
      OnClick = bbt_OkClick
      OnKeyDown = FormKeyDown
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
    object bbt_No: TBitBtn
      Left = 394
      Top = 5
      Width = 29
      Height = 39
      Cursor = crHandPoint
      TabOrder = 4
      OnClick = bbt_NoClick
      Glyph.Data = {
        BE060000424DBE06000000000000360400002800000024000000120000000100
        0800000000008802000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303F8F80303030303030303030303030303030303FF03030303030303030303
        0303030303F90101F80303030303F9F80303030303030303F8F8FF0303030303
        03FF03030303030303F9010101F8030303F90101F8030303030303F8FF03F8FF
        030303FFF8F8FF030303030303F901010101F803F901010101F80303030303F8
        FF0303F8FF03FFF80303F8FF030303030303F901010101F80101010101F80303
        030303F8FF030303F8FFF803030303F8FF030303030303F90101010101010101
        F803030303030303F8FF030303F803030303FFF80303030303030303F9010101
        010101F8030303030303030303F8FF030303030303FFF8030303030303030303
        030101010101F80303030303030303030303F8FF0303030303F8030303030303
        0303030303F901010101F8030303030303030303030303F8FF030303F8030303
        0303030303030303F90101010101F8030303030303030303030303F803030303
        F8FF030303030303030303F9010101F8010101F803030303030303030303F803
        03030303F8FF0303030303030303F9010101F803F9010101F803030303030303
        03F8030303F8FF0303F8FF03030303030303F90101F8030303F9010101F80303
        03030303F8FF0303F803F8FF0303F8FF03030303030303F9010303030303F901
        0101030303030303F8FFFFF8030303F8FF0303F8FF0303030303030303030303
        030303F901F903030303030303F8F80303030303F8FFFFFFF803030303030303
        03030303030303030303030303030303030303030303030303F8F8F803030303
        0303030303030303030303030303030303030303030303030303030303030303
        0303}
      NumGlyphs = 2
    end
  end
  object pm_Order: TPopupMenu
    AutoHotkeys = maManual
    OnPopup = pm_OrderPopup
    Left = 166
    Top = 352
    object ExmCancel: TMenuItem
      Caption = '실시취소(과내검사)'
      OnClick = ExmCancelClick
    end
    object pm_DrugInfo: TMenuItem
      Caption = '약품정보조회'
      OnClick = pm_DrugInfoClick
    end
    object pm_Price: TMenuItem
      Caption = '수가 조회'
      OnClick = pm_PriceClick
    end
  end
end
