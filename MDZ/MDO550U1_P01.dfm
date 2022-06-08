object MDO550F1_P01: TMDO550F1_P01
  Left = 1900
  Top = 0
  Width = 1936
  Height = 1056
  VertScrollBar.Position = 12
  Caption = 'MDO550F1_P01'
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
    Left = 8
    Top = -9
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
    object DetailBand1: TQRBand
      Left = 38
      Top = 192
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
      BandType = rbDetail
      object qrme_Data: TQRMemo
        Left = 7
        Top = 5
        Width = 702
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          18.520833333333330000
          13.229166666666670000
          1857.375000000000000000)
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
    object QRBand2: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 154
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
        407.458333333333400000
        1899.708333333333000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object qrlb_Title: TQRLabel
        Left = 15
        Top = 46
        Width = 97
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333320000
          39.687500000000000000
          121.708333333333300000
          256.645833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'EM Note'
        Color = clWhite
        Font.Charset = HANGEUL_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = #44404#47548
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 18
      end
      object QRShape30: TQRShape
        Left = 2
        Top = 144
        Width = 710
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.937500000000000000
          5.291666666666667000
          381.000000000000000000
          1878.541666666667000000)
        XLColumn = 0
        Brush.Color = clBlack
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRShape2: TQRShape
        Left = 456
        Top = 12
        Width = 254
        Height = 127
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          336.020833333333400000
          1206.500000000000000000
          31.750000000000000000
          672.041666666666800000)
        XLColumn = 0
        Shape = qrsRectangle
        VertAdjust = 0
      end
      object QRLabel12: TQRLabel
        Left = 464
        Top = 41
        Width = 57
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1227.666666666667000000
          108.479166666666700000
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
      object QRLabel1: TQRLabel
        Left = 464
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
          1227.666666666667000000
          58.208333333333320000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #46321#47197#48264#54840
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
      object qrlb_PatNo: TQRLabel
        Left = 537
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
          1420.812500000000000000
          58.208333333333320000
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
      object qrlb_patname: TQRLabel
        Left = 537
        Top = 39
        Width = 133
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1420.812500000000000000
          103.187500000000000000
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
      object QRImage1: TQRImage
        Left = 17
        Top = 75
        Width = 188
        Height = 65
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          171.979166666666700000
          44.979166666666670000
          198.437500000000000000
          497.416666666666700000)
        XLColumn = 0
        Picture.Data = {
          0A544A504547496D61676555130000FFD8FFE000104A46494600010101006000
          600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC0001108004F00D803012200021101031101
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
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
          28A2800A4CD29E9593AB5DCA862B4B6389A738DDFDD5F5FF003E868026BAD66C
          ED18A3C9BA41FC08327FFAC7D8F350C5E22B191F6B1923F775E3F4CD72DA8F8E
          3C37E0ED57FB3278EE66BA4DBE7CD1441BCBC8CF2491D88385CFD2BAABED4F4C
          8ADE1FB6CD0795718F283F3BB3DC7B63BF6C8AB74E4ACDADCCFDAC35D7634925
          59143210CADD0839069F581183A3EA11AA331B1B83C03CEC6381FD7F2FA56F54
          1A0B451499A005A293349938A007514CDC73DA94B1A007514C0D934E24D002D1
          4C0C73DB14ECF1400B453777AE28DC7D2801D453771A3775C5003A8A69240A37
          1A007514DC9C51BBDC7BD003A8A4CD1400B4507A564DDEA7335C1B3D3D04B381
          F3B9FBA9FF00D7FF00EB5006A93C563BFCDE288C9FE1B7C8FCCFF8D3469BA84B
          F34BAABAB1EA10700FE0466A4B2D31EDAE4DC4B76D3C9B3682C3A0FCCD2BA0F5
          388F11F867C1FA9F8CBED3A8DFCF1DC3941716C99F2E4200037360ED1B400791
          F8574FE218F40965823D55B0557E40BBBEE9EA0EDEC71DEB1359F07C977AF33C
          57D6A91DCB1729236241FDEC0C7CDEB5B3AFE8115F4F0DC9BD4B565411319172
          0F718E473D6B92589C7B4ED1D56DE85E2E861214E32A2EEDEE8B9ADB46DA2C72
          C0C0A065646078ADB1DB9ACB3A545FD9315823B2A4600571EA3BD44349BB1FF3
          169BD39C9FFD9ABAA2DB5EF6E671D8DACF6E283586D73A8E92435D30B9B5CE0C
          806197FCF35B11CCB344AE843230E0FAD50CE6FC5BE35B2F0AC31A321B9BC946
          E4B756C7CBFDE6383B47E073D87048E534EF8BE1EED5752D2D62B763FEB6094B
          141EB8206E1EE0F407AF7C89618F5EF8C8F6F7EBBA117257CB61C111A1207D0E
          DCFE27D6BB3F89BA75ADCF83E7BA923513DA3A3C3205E572CAA40F620E3EA07A
          56FCB0564FA9E53AB5AA735484ACA3D3B99BF10FC516B2787601A36B91FDA8DC
          A93F63BB01F6ED6CE429CE3A7E95C66B3AE6B11E93A0BC7ABDFA34B6ACD232DC
          B82E7CD619273CF03159EDA2C03C14BAE0925131BDFB314C8D9B76E723BF5E3A
          D2EB67FE24DE1CFF00AF37FF00D1CF5AA825A238EAD7A936E6F4D11F4420E073
          DAA0BFBD86C6C67BAB86D90C519776F40066A9EB9ADC7A068F26A12DB5C5C244
          01658029603D4E48E3D4D7926A9E21F10FC42BAFECDD3ED5A3B40C0BC1192541
          ECD23F031C640E013D89C1AE784399DFA1EB56C4C69C6CB59137C3AF115EBF8B
          A28750D4EF268AE2264449AE19D37F0470C71D8815ED3BABC7F59F85F7963A4D
          B5DE972B5C5F42BBAE231C166CE77467D47031DC0E307836BC37F136F619A3D2
          F59D3E7B9B80E220F0A81296E80321239CE79C8FA55D48296B039B0D5A543F77
          5BAF52E7C49F136B3A0EAB650E977C6DE39226775112364E71FC4A4D6AEA3F10
          F401A45DFD8B571F6C103F92442D9F3369DA795C75FC2B93F8BFB9B59D34EDC6
          6DDBD4FF0017B0351DFA7C341A65CFD8659CDE089FC918B8C6FC1DA39181CFE1
          54A09C5368CE75EAC6A4F964BE7FA1ABE0CF8868B6F75FF093EAE3CEDE043BA1
          038C73F717D7D6AB781B59BDD47E225F29D4AEAE2C984EF14724EEC9B778DA42
          9381C1AE1F49D4344B28A51AB690D7D233028CB76D06C18F6C66BA5F862F149E
          3B99EDE2F2A1682531C65B76C52CB819EF81819F6AA94231B98D1C4549BA716F
          A9DB7C43F18DC786EDA1B5B0DBF6CB90C448CBB844A30338F5E78EA383C572BF
          D87F114D8FF6C7F6ADC09367982DBED2DBFE9E5E3667BE3F0C76AE9BE21F8425
          F11DB5BDD586C37B6CACBE5B36DF310E3233D88238CFA9AE67FE122F882963FD
          97FD952F9C17CBFB51B67DFE99DF9D99F7FC7DEA20BDD5637C44AD55FB46EDD2
          C753F0F7C653F896D2E2DEF829BCB60ADE620C0911B3838EC78E7EA2B9EF877A
          A6A379E39BF82EB50BC9E158662239A77750448A01009C0E3F9D69780B48B3F0
          9C13DCEA9A8D8C57B75B5162FB42FC8993819CF2C49ED9E831DEB0BE197FC940
          D473D7ECF374FF00AEA94597BD61C6A4EF4949EB73D94514515CE7AC437737D9
          ECE69BBA2161F502B22CAD665F0FCED6EDB6F278DD9643FDE20EDAD8BA87ED16
          9342300BA1504FB8ACCD22E1E4D31A24DA2E600C9B5FA03DB3EDDBF0A4D5F404
          DA775D0E5FC2F69E20126A31DC35D46AD6EC8A66763894F4209FC7247B51E1CD
          3351B7D7A366B79A08D33E716042B718C67F8B923D6A6F034BE34906A52F8A14
          E06D16F13AC6A778DDB8029FC3D3939CE060F5AA5A36BDAD5CF886286499E52E
          F89A12806C5CF2718F9715CD1CA355EFDF935F531C7E3D55AD1A8E366FA23CDF
          51F09F8A350F195D5B359DDC97B25CB1178C8C1319F964DFD02800631E800E46
          2BD3BC57A46AB75A9472C70CB7512C6A88CA01C1E8D91D01CF39FF000A6EB5AC
          6AD6DAD4F1FDAA48846DFBB455F976F18EC73EBDF9F6E2A1F185F6AB1DCD8869
          67811ADD58AC4C54799FC5D3BF4FE957573F4DB7C9F069EA2C3658B1B37414AD
          7D4D85D2B553E0B8ECCEE13AB6EF2B3C94C9F97F2238F6C53347D3B5BB5D0B55
          48375B5D4909166B2104249B4FCD83918C91F977AC1D7B5FD7ACBE19457F693B
          ACA6E7CA92EB1B9961CB0DDCF00E76AEEF7CE7349F0E754F12DE786755BAB992
          E2EE318360F39DCCCD86DD827EF0CEDC727904763574F08B1128E3EF66FA7FC0
          26AC161EABA0EEF951AFF0EF49F13D9D9EA07C4F3CEEB33288609EE04CC98077
          1C82400723807F84F15D268B98A4BCB3CE56093E5F6049FF000AC9F0A5EEAD27
          DA4EAC25102286125C47E5907B8C10091FCAB5B445698DD5E15C2DC49951EC33
          FE27F2AE9ACDF3BB8F0D353A6A4935EA701E3CF0C6AB69E214F136891492B651
          DC44BB9E375E030503E652000460F7ED58DA9F883C4DE3C8E1D261D3C2207065
          F251B6961DD98F0AA3D3D7D6BDBF60349B0751F8D0AAD96A8C2782BC9F2CAC9E
          E8F07F13F80A7F0BE971EA135EC33F99288B6A444104A93D73D38ACED73FE40D
          E1DFFAF37FFD1AF5E97F16C63C270FBDE27FE82D5E69AE7FC81BC398FF009F36
          FF00D1AF5BC26E566CF37134A14AA4A31EC8F53F1478F6CBC3BA80D2EEB4E92E
          4496E246F99769524AE307E95896DF16348B28560B5D0A48215E1638991540F4
          000AF469B4CD3EEDC4B73656F33850374912B1C7A648F7A8DB42D24A9FF895D9
          723FE782FF008560A505A347A92A7886F9A3256F43833F186CB8CE9171FF007F
          16AB3FC54D164BB8EF24F0F97BA88111CCCC85D01EA0311900D62FC2FB6B7BCF
          16DC45736F14D1FD91DB6C8818677A7622BD83FB0B48FF00A05D97FDF85FF0AB
          9FB383B58E7A0F135E1CFCCB7EC61DB41A2FC42D06DAFEFF004E668F7BEC5690
          865C1C1F9948E0E3A7B5607893C3DE04F0CD82CF79A5C8F2C876C5047752EE90
          8EBFC7D0773DBF119F4682D61B587CAB789228C64848D42819F615E3DF15E278
          FC4D633DC445ECDADD531D0315762C01EC7047F9CE229BBBB7436C5254E9F3B4
          9CBBD8ADA278EA0F0F44EDA7786120B29DC6EFF4B91F2D8E819811C7B7E55D6F
          81F4BD12FB54B9F12E997B76F2CCD2096DE7080C65DB790703F2E48AD2BBF167
          845BC3B26EBBB396D1A1DBF634C798C318DA23EA3D3A0C75E2B92F83B0DC8BAD
          4A7F9BECE5238D9B1C19067BFA807B7F7855BD62DEC610F76AC22DA97E85EBFF
          008451DE5FDD5D9D5F1E7CAF2EDFB283B773138FBDCF5AE1BC2BE1783C45E219
          F4B7B930A431BB8755073B580C633EF9AF76D7DDE0F0EEA7345218E44B49595C
          360A9087073DABCCBE1FF8CE3B46D44F887579BE711F93F68777E9BB763D3AAE
          7F0A212938BB06228D255A29E97DCE6A687C2FA3EAF35BCEBABCD359DC142636
          882B146C74209C647AD6EFC2D996E7C757B3A8C092D65703AE019138E3EB5DC3
          78C7C14CC58DFD9B312493E49C927F0AA1E1487C1907885E6D135179AFA68DC1
          466246D2431C02063EE8A6E4DC5DD130A09558B524D2677C28A28AE53D817B56
          55EE9921B9FB658CBE55C630DE8E3DEB569319A61A98A2F7548576CBA66F20FD
          E49383FCEA5B4D42496F3ECD359B412ECDC32D9CFE95AB818AC6930BE278BD5E
          038FD7FC281349D8C5D5BC5D1D8EB2D00B059D6DC80EE5806CF04EDE3DFD79AC
          2F1FFC409347D421D36D34DB4B93E52CEF2DDA175C1CE00504761D49EF5D16B9
          3F87E0D614DF583CD3850CCEAB9503A658679E9E87A541E31D3FC2775716575A
          F5835C4BB4889A3DD90A39F9B6919033FA9C7534E189C0A7EF24D2DCE5A34B15
          394A3195DBDAC68691E225D47C2169AC35918BCF4FF501B8EA57838E9C6471D0
          8AB8350BFC003496F6FDE7FF005AA1D5D215D0E18ED96358B2AB12C60050B8E0
          003B7A56F01EB4369BF7763A9295BDEDCC4FB0EA1A91517CCB05B83930A1C96F
          AD6D246B122A228555180076A705028A4320BBBDB6B181A7BBB88A0857AC92B8
          4519E9C9A6DB5EDB5F5BADC59DC43716ED9DB244E195B0707047158DE32B3B9B
          FF000CCD6F691B4933CB0150A338C4A849C77C004D624DE1FD5F4DB89A2D2EEA
          F1CB5A5DDD6F0CA8B2DDB101011D3A1381C0E39AA514CC2556517B5CE8BC49E1
          EB5F1469C963792CF144B2894340C03640231C823BD73AFF000E741D5ACACA34
          D4AF648AC91A0568668CE70EC5831D846412476E954841E244B2B478DB579585
          CB18E2653192BF201B98BB30E7CCC798194FCC085F94D41226B7A347AADDA25D
          C1696C64B97124BB6391BED6CF84193F7A2C838EA48CE4D5A4D6CCE79CA127CD
          281E9DC85C7A5457377059DBBCF753470409F7A491C2AAF6E49E0579F4FA5EBB
          6EFE7AFDBA4B9934FB45967591989226266518607215863041C671827344D67E
          286D365733EA6F3C7A7462153842F29964077286605826DFE23EA79A5C9E66BE
          DDDBE1377C39E03D3BC31AA3DFDA5D5EC923C4622B33295C120F65073F28AE92
          EAFADAC6DCDC5E5C436F02E37492B8455C9C0E4F1D715E7F7C9E287BCD5CDB8D
          45519655886F38C8963D850EEC60A6F3C2AE3904B1E9A37BA4DFDF783E7D3AE6
          1B898B6A4142C8C59CDB8BAC8C9272404E79ED438DDDDB1539A8A6A11B1D62EA
          5652DD7D912F2DDAE76799E48946FDBFDEC6738F7AADADD8E97A8698D0EB290B
          5A9651995F66189C0C364609270391D71DEBCE6D742F12DB47717A96F326A2D6
          125B09233CED46810639EACA9230EFCD5DBCB0D7EE52CE195352B8B6C8640E36
          E0ADDA30DEA5D89C460E0B1278E7E6A3912774C4ABB947DE8962DBE16F866E24
          33C17D793C424652893A14CA9C15242E78208C6735D9DADB69DA069F1C10AC36
          769161177305196381927A92C71CE4927DEB91F2FC43FDA16BE7AEA8D0F9B3ED
          36EE061FED595DF9C829E57A82319C60E2AA7D93C4774DA82DC417AD14971048
          B148C5B6B25D863B4E718D983F2851803824125CAEF764D3F674DDE30B5CEF2E
          F50D3A1923B3BEBAB58DEEB31C70CD22832F62029FBDD40C0F5AE59FE16F8659
          8B245728A4E42ACE70076FF269FAF594E3C4D25C0D15B5282EACE0B740180457
          49CB9DC792A00656E9CEDACDB5B7F13B3DD2CF36A277DD4424C65576FDA4E591
          83920795D768518C753446EB665557193B4E372F7FC2ACF0D74DB75FF7FCD5FD
          1BC09A2E87A9C77F649389D5481BE52C002307835CBC3A7F88914DC491EA1F6A
          6B38229256762C512E5BCC5C8607779654F04120B60824D741E1AB5D686A96CF
          A95CEA0D0C5A7A0026C20790C927DF50CD9609B3F88FA9E689395B7269C69736
          94EC76428A28AC8EE168A28A000F4ACBD5AD259562B9B61FE91036E51FDE1DC5
          6A52628F4039E36DA3EBD2A4B7310FB4A7CA51988271DB03A8AB5ACE9DA45F44
          875448D962E53739523D7A107F0F6156EEB4AB2BC3BA6854B7F78707FF00AF50
          C5A069F136E11B37B331C7E5597B1A7AFBAB5DFCC706E0F9A3A329C0A756BE8A
          458CA58DBFDCC8C6F3EBF4E2B7F14D58D5142A8C28E8076A756A841494B45002
          629360C63F953A8A006ED14D9218E64292A2C887AAB0C83F9D49451A80DDA08A
          5C034B45201BB0039E7346D1C76ED4EA2980D2A0F1DA8DB8F5A7628A006ED1FE
          3EF46C1CF1D69D4502B0D0A3EB401814EA2818DD8318E7EB9A314EA280128A5A
          2803FFD9}
        Stretch = True
      end
      object QRLabel2: TQRLabel
        Left = 466
        Top = 80
        Width = 57
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1232.958333333333000000
          211.666666666666700000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #45236' '#50896' '#51068
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
      object qrlb_Meddate: TQRLabel
        Left = 537
        Top = 79
        Width = 73
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1420.812500000000000000
          209.020833333333300000
          193.145833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrlb_Meddate'
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
      object QRLabel3: TQRLabel
        Left = 464
        Top = 61
        Width = 57
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1227.666666666667000000
          161.395833333333300000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #49373#45380#50900#51068
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
      object qrlb_birtdate: TQRLabel
        Left = 537
        Top = 61
        Width = 79
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1420.812500000000000000
          161.395833333333300000
          209.020833333333300000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'qrlb_birtdate'
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
        Left = 466
        Top = 119
        Width = 64
        Height = 15
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1232.958333333333000000
          314.854166666666700000
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
      object QRLabel5: TQRLabel
        Left = 466
        Top = 100
        Width = 57
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          1232.958333333333000000
          264.583333333333300000
          150.812500000000000000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #45812' '#45817' '#51032
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
      object qrlb_wardroom: TQRLabel
        Left = 537
        Top = 119
        Width = 37
        Height = 16
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1420.812500000000000000
          314.854166666666700000
          97.895833333333320000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '81/801'
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
      object qrlb_Meddrnm: TQRLabel
        Left = 537
        Top = 99
        Width = 37
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1420.812500000000000000
          261.937500000000000000
          97.895833333333320000)
        XLColumn = 0
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #44608#52384#49849
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
      object QRLabel6: TQRLabel
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
    object QRLabel59: TQRLabel
      Left = 636
      Top = 1087
      Width = 113
      Height = 14
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        37.041666666666670000
        1682.750000000000000000
        2876.020833333333000000
        298.979166666666700000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = 'PMC MR-EM NOTE'
      Color = clWhite
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #48148#53461#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRLabel188: TQRLabel
      Left = 57
      Top = 1087
      Width = 61
      Height = 14
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        37.041666666666670000
        150.812500000000000000
        2876.020833333333000000
        161.395833333333300000)
      XLColumn = 0
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #50696#49688#48337#50896
      Color = clWhite
      Font.Charset = HANGEUL_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #48148#53461#52404
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      WordWrap = True
      ExportAs = exptText
      FontSize = 10
    end
    object QRSysData1: TQRSysData
      Left = 358
      Top = 1085
      Width = 46
      Height = 17
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        44.979166666666670000
        947.208333333333400000
        2870.729166666667000000
        121.708333333333300000)
      XLColumn = 0
      Alignment = taCenter
      AlignToBand = False
      AutoSize = True
      Color = clWhite
      Data = qrsPageNumber
      Transparent = False
      ExportAs = exptText
      FontSize = 10
    end
  end
end
