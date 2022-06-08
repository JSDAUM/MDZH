object GGA001F3: TGGA001F3
  Left = 266
  Top = 264
  BorderStyle = bsDialog
  Caption = 'GGA001F3  '#49688#47532#51217#49688
  ClientHeight = 144
  ClientWidth = 469
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poDefault
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cpn1: TPanel
    Left = 0
    Top = 0
    Width = 471
    Height = 145
    Caption = 'cpn1'
    TabOrder = 0
    object cpn2: TGroupBox
      Left = 1
      Top = 1
      Width = 469
      Height = 143
      Align = alClient
      Caption = 'cpn2'
      TabOrder = 0
      object Shape23: TShape
        Left = 6
        Top = 0
        Width = 67
        Height = 21
        Brush.Color = 16641503
      end
      object Label48: TLabel
        Left = 15
        Top = 5
        Width = 48
        Height = 12
        Caption = #51217#49688#45236#50669
        Color = 16641503
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Shape1: TShape
        Left = 9
        Top = 53
        Width = 67
        Height = 20
        Brush.Color = clCream
      end
      object Label58: TLabel
        Left = 38
        Top = 58
        Width = 36
        Height = 12
        Caption = #45236'   '#50857
        Color = clCream
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Shape2: TShape
        Left = 179
        Top = 27
        Width = 85
        Height = 20
        Brush.Color = clCream
      end
      object SpeedButton1: TSpeedButton
        Left = 181
        Top = 29
        Width = 82
        Height = 17
        Caption = #44592#44592#53076#46300
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33033333333333333F7F3333333333333000333333333333F777333333333333
          000333333333333F777333333333333000333333333333F77733333333333300
          033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
          33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
          3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
          33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
          333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
          333333773FF77333333333370007333333333333777333333333}
        NumGlyphs = 2
        ParentFont = False
      end
      object Shape8: TShape
        Left = 9
        Top = 27
        Width = 67
        Height = 20
      end
      object Label23: TLabel
        Left = 38
        Top = 32
        Width = 36
        Height = 12
        Caption = #51217#49688#51068
        Color = clCream
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object me_reqmeno: TMemo
        Left = 77
        Top = 52
        Width = 385
        Height = 53
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSHanguel
        ImeName = #54620#44397#50612'('#54620#44544')'
        MaxLength = 40
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object ed_equipno1: TEdit
        Left = 265
        Top = 27
        Width = 114
        Height = 20
        Color = clWhite
        Ctl3D = True
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = []
        ImeMode = imSAlpha
        ImeName = #54620#44397#50612'('#54620#44544')'
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnChange = ed_equipno1Change
      end
      object dtp_reqsdate: TDateTimePicker
        Left = 77
        Top = 26
        Width = 79
        Height = 21
        CalAlignment = dtaLeft
        Date = 37561.7303462963
        Time = 37561.7303462963
        DateFormat = dfShort
        DateMode = dmComboBox
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImeName = #54620#44397#50612'('#54620#44544')'
        Kind = dtkDate
        ParseInput = False
        ParentFont = False
        TabOrder = 2
      end
      object bbt_can_repair: TBitBtn
        Left = 387
        Top = 113
        Width = 74
        Height = 25
        Cursor = crHandPoint
        Caption = #52712#49548
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #44404#47548#52404
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = bbt_can_repairClick
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
      object bbt_save_repair: TBitBtn
        Left = 309
        Top = 113
        Width = 75
        Height = 25
        Caption = #51200#51109
        Enabled = False
        TabOrder = 4
        OnClick = bbt_save_repairClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
          7700333333337777777733333333008088003333333377F73377333333330088
          88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
          000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
          FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
          99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
          99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
          99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
          93337FFFF7737777733300000033333333337777773333333333}
        NumGlyphs = 2
      end
    end
  end
end
