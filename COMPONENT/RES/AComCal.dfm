object ACalender: TACalender
  Left = 0
  Top = 0
  Width = 181
  Height = 137
  TabOrder = 0
  TabStop = True
  Visible = False
  OnExit = FrameExit
  object pnAComCal_1: TPanel
    Left = 0
    Top = 0
    Width = 181
    Height = 137
    TabOrder = 0
    object PnAComCal_2: TPanel
      Left = 1
      Top = 1
      Width = 179
      Height = 24
      Align = alTop
      BevelOuter = bvNone
      Color = 11174460
      TabOrder = 0
      object lb_year: TLabel
        Left = 56
        Top = 6
        Width = 28
        Height = 12
        Alignment = taRightJustify
        Caption = '2001'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = 16773360
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
      end
      object sbtAComCal_prev: TSpeedButton
        Left = 13
        Top = 3
        Width = 18
        Height = 18
        Glyph.Data = {
          9A000000424D9A00000000000000760000002800000004000000090000000100
          04000000000024000000C40E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777700007770
          000077000000700000000000000070000000770000007770000077770000}
        OnClick = sbtAComCal_prevClick
      end
      object sbtAComCal_next: TSpeedButton
        Left = 149
        Top = 3
        Width = 18
        Height = 18
        Glyph.Data = {
          9A000000424D9A00000000000000760000002800000004000000090000000100
          04000000000024000000C40E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777700000777
          000000770000000700000000000000070000007700000777000077770000}
        OnClick = sbtAComCal_nextClick
      end
      object lblAComCal_1: TLabel
        Left = 83
        Top = 6
        Width = 13
        Height = 12
        Caption = #45380
        Font.Charset = HANGEUL_CHARSET
        Font.Color = 16773360
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lb_month: TLabel
        Left = 108
        Top = 6
        Width = 7
        Height = 12
        Alignment = taRightJustify
        Caption = '3'
        Font.Charset = HANGEUL_CHARSET
        Font.Color = 16773360
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblAComCal_2: TLabel
        Left = 115
        Top = 6
        Width = 13
        Height = 12
        Caption = #50900
        Font.Charset = HANGEUL_CHARSET
        Font.Color = 16773360
        Font.Height = -12
        Font.Name = #44404#47548#52404
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object AComCal_cald_date: TCalendar
      Left = 1
      Top = 25
      Width = 179
      Height = 111
      Align = alClient
      BorderStyle = bsNone
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      GridLineWidth = 0
      ParentFont = False
      StartOfWeek = 0
      TabOrder = 1
      UseCurrentDate = False
      OnClick = AComCal_cald_dateClick
      OnChange = AComCal_cald_dateChange
      OnKeyDown = AComCal_cald_dateKeyDown
    end
    object pnAComCal_3: TPanel
      Left = 1
      Top = 25
      Width = 180
      Height = 15
      Caption = #51068'  '#50900'  '#54868'  '#49688'  '#47785'  '#44552'  '#53664
      Color = 15393753
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = #44404#47548#52404
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
end
