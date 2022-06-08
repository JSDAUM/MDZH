object VirtualLoginF: TVirtualLoginF
  Left = 358
  Top = 227
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #51676#44032' '#47196#44536#51064#51076#46048'~~~'
  ClientHeight = 463
  ClientWidth = 648
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548#52404
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 648
    Height = 55
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8421440
    Font.Height = -13
    Font.Name = #44404#47548#52404
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 10
      Width = 61
      Height = 13
      Caption = #49324#50857#51088'ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421440
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 13
      Top = 32
      Width = 60
      Height = 13
      Caption = #48708#48128#48264#54840
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421440
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label17: TLabel
      Left = 233
      Top = 10
      Width = 46
      Height = 13
      Caption = #49436#48260'ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421440
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ed_login_userid: TEdit
      Left = 86
      Top = 6
      Width = 121
      Height = 21
      ImeName = #54620#44397#50612'('#54620#44544')'
      TabOrder = 0
      Text = '99991'
      OnKeyDown = ed_login_useridKeyDown
    end
    object ed_login_password: TEdit
      Left = 86
      Top = 28
      Width = 121
      Height = 21
      ImeName = #54620#44397#50612'('#54620#44544')'
      PasswordChar = '*'
      TabOrder = 1
      Text = '789456'
      OnKeyDown = ed_login_useridKeyDown
    end
    object combx_serverid: TComboBox
      Left = 291
      Top = 6
      Width = 145
      Height = 21
      Style = csDropDownList
      ImeName = #54620#44397#50612'('#54620#44544')'
      ItemHeight = 13
      TabOrder = 2
      OnChange = combx_serveridChange
      OnKeyPress = combx_serveridKeyPress
      Items.Strings = (
        #50868#50689' 11'#48264
        #50868#50689' 13'#48264
        #44060#48156' 21'#48264)
    end
    object spbtn_login: TBitBtn
      Left = 474
      Top = 8
      Width = 167
      Height = 41
      Caption = 'Login'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = spbtn_loginClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337FF3333333333330003333333333333777F333333333333080333
        3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
        33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
        B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
        BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
        B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
        3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
        333333333337F33333333333333B333333333333333733333333}
      NumGlyphs = 2
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 444
    Width = 648
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    SimplePanel = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 55
    Width = 339
    Height = 348
    Align = alLeft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8421440
    Font.Height = -13
    Font.Name = #44404#47548#52404
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object GroupBox1: TGroupBox
      Left = 8
      Top = 7
      Width = 324
      Height = 334
      Caption = '[ '#44544#47196#48268' '#48320#49688' ]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label3: TLabel
        Left = 16
        Top = 26
        Width = 64
        Height = 13
        Caption = 'G_USERID'
      end
      object Label4: TLabel
        Left = 16
        Top = 47
        Width = 64
        Height = 13
        Caption = 'G_USERNM'
      end
      object Label5: TLabel
        Left = 16
        Top = 68
        Width = 64
        Height = 13
        Caption = 'G_DEPTCD'
      end
      object Label6: TLabel
        Left = 16
        Top = 131
        Width = 64
        Height = 13
        Caption = 'G_DEPTNM'
      end
      object Label7: TLabel
        Left = 16
        Top = 89
        Width = 56
        Height = 13
        Caption = 'G_GRADE'
      end
      object Label8: TLabel
        Left = 16
        Top = 110
        Width = 64
        Height = 13
        Caption = 'G_LOCATE'
      end
      object Label9: TLabel
        Left = 16
        Top = 257
        Width = 80
        Height = 13
        Caption = 'G_LOCATENM'
      end
      object Label10: TLabel
        Left = 16
        Top = 215
        Width = 80
        Height = 13
        Caption = 'G_WKAREACD'
      end
      object Label11: TLabel
        Left = 16
        Top = 236
        Width = 72
        Height = 13
        Caption = 'G_JIKJONG'
      end
      object Label12: TLabel
        Left = 16
        Top = 152
        Width = 64
        Height = 13
        Caption = 'G_JIKGUP'
      end
      object Label13: TLabel
        Left = 16
        Top = 173
        Width = 56
        Height = 13
        Caption = 'G_GRPID'
      end
      object Label14: TLabel
        Left = 16
        Top = 194
        Width = 64
        Height = 13
        Caption = 'G_USERIP'
      end
      object Label15: TLabel
        Left = 16
        Top = 302
        Width = 72
        Height = 13
        Caption = 'G_CAPTION'
      end
      object Label16: TLabel
        Left = 16
        Top = 281
        Width = 56
        Height = 13
        Caption = 'G_SVRID'
      end
      object ed_userid: TEdit
        Left = 110
        Top = 24
        Width = 204
        Height = 21
        TabStop = False
        Color = 16580074
        ImeName = #54620#44397#50612'('#54620#44544')'
        ReadOnly = True
        TabOrder = 0
      end
      object ed_username: TEdit
        Left = 110
        Top = 45
        Width = 204
        Height = 21
        TabStop = False
        Color = 16580074
        ImeName = #54620#44397#50612'('#54620#44544')'
        ReadOnly = True
        TabOrder = 1
      end
      object ed_deptcd: TEdit
        Left = 110
        Top = 66
        Width = 204
        Height = 21
        TabStop = False
        Color = 16580074
        ImeName = #54620#44397#50612'('#54620#44544')'
        ReadOnly = True
        TabOrder = 2
      end
      object ed_deptnm: TEdit
        Left = 110
        Top = 129
        Width = 204
        Height = 21
        TabStop = False
        Color = 16580074
        ImeName = #54620#44397#50612'('#54620#44544')'
        ReadOnly = True
        TabOrder = 3
      end
      object ed_grade: TEdit
        Left = 110
        Top = 87
        Width = 204
        Height = 21
        TabStop = False
        Color = 16580074
        ImeName = #54620#44397#50612'('#54620#44544')'
        ReadOnly = True
        TabOrder = 4
      end
      object ed_locate: TEdit
        Left = 110
        Top = 108
        Width = 204
        Height = 21
        TabStop = False
        Color = 16580074
        ImeName = #54620#44397#50612'('#54620#44544')'
        ReadOnly = True
        TabOrder = 5
      end
      object ed_locatenm: TEdit
        Left = 110
        Top = 256
        Width = 204
        Height = 21
        TabStop = False
        Color = 16580074
        ImeName = #54620#44397#50612'('#54620#44544')'
        ReadOnly = True
        TabOrder = 6
      end
      object ed_wkareacd: TEdit
        Left = 110
        Top = 214
        Width = 204
        Height = 21
        TabStop = False
        Color = 16580074
        ImeName = #54620#44397#50612'('#54620#44544')'
        ReadOnly = True
        TabOrder = 7
      end
      object ed_jikjong: TEdit
        Left = 110
        Top = 235
        Width = 204
        Height = 21
        TabStop = False
        Color = 16580074
        ImeName = #54620#44397#50612'('#54620#44544')'
        ReadOnly = True
        TabOrder = 8
      end
      object ed_jikgup: TEdit
        Left = 110
        Top = 150
        Width = 204
        Height = 21
        TabStop = False
        Color = 16580074
        ImeName = #54620#44397#50612'('#54620#44544')'
        ReadOnly = True
        TabOrder = 9
      end
      object ed_grpid: TEdit
        Left = 110
        Top = 172
        Width = 204
        Height = 21
        TabStop = False
        Color = 16580074
        ImeName = #54620#44397#50612'('#54620#44544')'
        ReadOnly = True
        TabOrder = 10
      end
      object ed_userip: TEdit
        Left = 110
        Top = 193
        Width = 204
        Height = 21
        TabStop = False
        Color = 16580074
        ImeName = #54620#44397#50612'('#54620#44544')'
        ReadOnly = True
        TabOrder = 11
      end
      object ed_svrid: TEdit
        Left = 110
        Top = 277
        Width = 204
        Height = 21
        TabStop = False
        Color = 16580074
        ImeName = #54620#44397#50612'('#54620#44544')'
        ReadOnly = True
        TabOrder = 12
      end
      object ed_caption: TEdit
        Left = 110
        Top = 298
        Width = 204
        Height = 21
        TabStop = False
        Color = 16580074
        ImeName = #54620#44397#50612'('#54620#44544')'
        ReadOnly = True
        TabOrder = 13
      end
    end
  end
  object Panel3: TPanel
    Left = 339
    Top = 55
    Width = 309
    Height = 348
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8421440
    Font.Height = -13
    Font.Name = #44404#47548#52404
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object GroupBox2: TGroupBox
      Left = 7
      Top = 7
      Width = 294
      Height = 334
      Caption = '[ '#54532#47196#44536#47016' '#47785#47197' ]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421440
      Font.Height = -13
      Font.Name = #44404#47548#52404
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object ugd_pgmlist: TUltraGrid
        Left = 10
        Top = 22
        Width = 275
        Height = 300
        ColCount = 10
        DefaultRowHeight = 20
        FixedCols = 0
        RowCount = 2
        GridLineWidth = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
        ScrollBars = ssVertical
        TabOrder = 0
        OnClick = ugd_pgmlistClick
        OnDblClick = ugd_pgmlistDblClick
        Title = #49324#50857#48512#49436'|'#54532#47196#44536#47016#47749
        ColWidths = (
          122
          151
          64
          64
          64
          64
          64
          64
          64
          64)
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 403
    Width = 648
    Height = 41
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548#52404
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object bbt_ok: TBitBtn
      Left = 481
      Top = 8
      Width = 75
      Height = 25
      Caption = #49892#54665
      Enabled = False
      TabOrder = 0
      OnClick = bbt_okClick
      Kind = bkOK
    end
    object bbt_close: TBitBtn
      Left = 563
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      OnClick = bbt_closeClick
      Kind = bkClose
    end
    object ugd_usergrp: TUltraGrid
      Left = 4
      Top = 8
      Width = 320
      Height = 15
      DefaultColWidth = 20
      DefaultRowHeight = 10
      FixedCols = 0
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -7
      Font.Name = #44404#47548#52404
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
  end
end
