{-------------------------------------------------------------------------------
| ���ϸ� : AsOutlook.pas
| �뵵   : Outlook Bar Components
| ����   : 2.0
| ������ : �輺��
|
| Copyright (C) 1998. Sung-Dong Kim. All rights reserved.
|
|-------------------------------------------------------------------------------
|                          ��                  ��
|-------------------------------------------------------------------------------
| 1. TAsOutlook Component
|    Main Container Component�μ� TAsOutlookPage�� Child Window�� ������
|    Page�� Arrange�ϰ� ���� Page�� ������ �� �ִ�.
|    -. Property
|       ActivePage : ���� ���õ� TAsOutlookPage
|       Animate : ���� Page�� ������ �� �ε巯�� Scroll ȿ���� �ش�.
|
| 2. TAsOutlookPage Component
|    TAsOutlookButton Component�� Container Component.
|    -. Property
|       Caption : Page�� �̸�
|       ViewStyle : ū ������ �Ǵ� ����Ʈ ����
|       ButtonWidth : Child Button�� ��
|       ButtonHeight : Child Button�� ����
|       ButtonSpace : Child Button ������ ����
|       DownButtonGlyph : Down Scrol Button�� �׸�
|       UpButtonGlyph : Up Scrol Button�� �׸�
|
| 3. TAsOutlookButton Component
|    TAsOutlookPage Component�� Child Button Component
|    -. Property
|       Glyph : ��ư �׸�
|    -. Event
|       OnMouseEntered : ���콺 �����Ͱ� ��ư�� �׸� ��ġ�� ���� ��
|       OnMouseLeft : ���콺 �����Ͱ� ��ư�� �׸� ��ġ�� ���� ���� ��
|-------------------------------------------------------------------------------
|                          ��  ��  ��  ��  ��  ��
|-------------------------------------------------------------------------------
| ��      ¥ | ������ |            ��       ��        ��       ��
|------------|--------|---------------------------------------------------------
| 1998.02.02 | �輺�� | ����
| 1998.02.03 | �輺�� | 1.0 �Ϸ�
| 1998.02.04 | �輺�� | Page ������ Gradientȿ���� �� �� �ֵ��� Upgrade
|            |        | Page ������ Tile Bitmap�� ���� �� �ֵ��� Upgrade
| 1998.02.13 | �輺�� | Animated Scroll ȿ�� �ֱ� ����
|            |        | TAsOutlookPage�� CaptionStyle Property �߰�
| 2002.06.19 | ������ | ����ǥ�� �κп����� Ŭ�� �̺�Ʈ ���, ActivePage�� ����
|            |        | ���� ���θ� �����ϴ� TAsOutlookPage�� EnabledSetActivePage
|            |        | Property �߰�.
|            |        |
|            |        |
|            |        |
|            |        |
|            |        | TAsOutlookPage�� CaptionStyle Property �߰�
|            |        |
|            |        |
+------------------------------------------------------------------------------}
unit AsOutlook;

{ �������� Up, Down Button�� �� Bitmap�� ������ �ִ� ���ҽ� ������ �����Ѵ�. }
{$R AsOutlookGlyph.Res}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, AsSpeedButton;

Const
  ROP_DSPDxax = $00E20746;
  LargeSize = 32;
  SmallSize = 16;

type

  TAsTextStyle = (ttsFlat, ttsRaised, ttsSunken);
  TAsGradientStyle = ( tgsLeftRight, tgsRightLeft, tgsTopBottom, tgsBottomTop,
                       tgsInnerOuter, tgsOuterInner );

  TAsOutlookPage = Class;

  TAsOutlook = class(TCustomControl)
  private
    { Private declarations }
    FActivePage : TAsOutlookPage;
    FPageIndex : Integer;
    FAnimate : Boolean;

    Procedure SetActivePage(Value : TAsOutlookPage);
  protected
		Constructor Create(AOwner: TComponent); Override;
		Destructor Destroy; Override;
    Procedure CreateParams(var Params : TCreateParams); Override;
    Procedure WMSize(Var Msg : TWMSize); Message WM_SIZE;
    Procedure ArrangePage;
    Procedure MovePage(APage, ALeft, ATop, AWidth, AHeight : Integer);
    Procedure Loaded; Override;
    Procedure Notification(AComponent: TComponent; Operation: TOperation); Override;
  public
    { Public declarations }
  published
    { Published declarations }
    Property ActivePage : TAsoutlookPage Read FActivePage Write SetActivePage;
    Property Animate : Boolean Read FAnimate Write FAnimate;
    Property Align;
    Property Color;
    Property Cursor;
    Property DragCursor;
    Property DragMode;
    Property Enabled;
    Property Font;
    Property HelpContext;
    Property Hint;
    Property ParentFont;
    Property ParentShowhint;
    Property ParentColor;
    Property PopupMenu;
    Property ShowHint;
    Property TabOrder;
    Property Visible;

    Property OnClick;
    Property OnDblClick;
    Property OnEnter;
    Property OnExit;
    Property OnKeyDown;
    Property OnKeyPress;
    Property OnKeyUp;
    Property OnMouseDown;
    Property OnMouseMove;
    Property OnMouseUp;
  end;

  TAsViewStyle = ( avsIcon, avsList );
  TAsBackgroundStyle = ( absNormal, absGradient, absTiledBitmap );

  TAsOutlookPage  = Class(TCustomControl)
  private
    { Private declarations }
    FButtonWidth, FButtonHeight, FButtonSpace : Integer;
    FStartButtonIndex : Integer;
    rCaption : TRect;
    FViewStyle : TAsViewStyle;
    FUpButton, FDownButton : TAsSpeedButton;
    FGradientFromColor : TColor;
    FGradientToColor : TColor;
    FGradientStyle : TAsGradientStyle;
    FUsePalette : Boolean;
    FBackBitmap : TBitmap;
    FTiledBitmap : TBitmap;
    FBackgroundStyle : TAsBackgroundStyle;
    FCaptionStyle : TAsTextStyle; { 1998.02.13 �߰� }
    FEnableSetActivePage : boolean;
    FCaptionHeight : Integer;

    Procedure SetViewStyle(Value : TAsViewStyle);
    Procedure SetButtonWidth(Value : Integer);
    Procedure SetButtonHeight(Value : Integer);
    Procedure SetButtonSpace(Value : Integer);
    Procedure ScrollPage(Sender : TObject);
    Procedure SetUpButtonGlyph(Value : TBitmap);
    Function GetUpButtonGlyph : TBitmap;
    Procedure SetDownButtonGlyph(Value : TBitmap);
    Function GetDownButtonGlyph : TBitmap;
    Function CreateButton : TAsSpeedButton;

    Procedure SetBackgroundStyle(Value : TAsBackgroundStyle);
    Procedure SetTiledBitmap(Value : TBitmap);
    Procedure SetUsePalette(Value : Boolean);
    Procedure SetGradientFromColor(Value : TColor);
    Procedure SetGradientToColor(Value : TColor);
    Procedure SetGradientStyle(Value : TAsGradientStyle);
    Procedure UpdateBackBitmap;
    Procedure SetEnableSetActivePage(Value : Boolean);

    Procedure SetCaptionStyle(Value : TAsTextStyle); { 1998.02.13 �߰� }
    Procedure SetCaptionHeight(Value : Integer); { 2002.06.20. ������ }
    Procedure LockButton(Value : Boolean);
  protected
		Constructor Create(AOwner: TComponent); Override;
		Destructor Destroy; Override;
    Procedure CreateParams(var Params : TCreateParams); Override;
    Procedure Paint; Override;
    Procedure CMFontChanged(Var Msg : TMessage); Message CM_FONTCHANGED;
    Procedure CMTextChanged(Var Msg : TMessage); Message CM_TEXTCHANGED;
    Procedure WMSize(Var Msg : TWMSize); Message WM_SIZE;
    Procedure Click; Override;
    Procedure Loaded; Override;
//		Procedure ArrangeButton;
  public
    { Public declarations }
		Procedure ArrangeButton;
  published
    { Published declarations }
    Property Align;
    Property BackgroundStyle : TAsBackgroundStyle Read FBackgroundStyle Write SetBackgroundStyle;
    Property ButtonWidth : Integer Read FButtonWidth Write SetButtonWidth;
    Property ButtonHeight : Integer Read FButtonHeight Write SetButtonHeight;
    Property ButtonSpace : Integer Read FButtonSpace Write SetButtonSpace;
    Property UpButtonGlyph : TBitmap Read GetUpButtonGlyph Write SetUpButtonGlyph;
    Property DownButtonGlyph : TBitmap Read GetDownButtonGlyph Write SetDownButtonGlyph;
    Property Caption;
    Property CaptionHeight : Integer Read FCaptionHeight Write SetCaptionHeight;
    Property CaptionStyle : TAsTextStyle Read FCaptionStyle Write SetCaptionStyle; { 1998.02.13 �߰� }
    Property Color;
    Property Cursor;
    Property DragCursor;
    Property DragMode;
    Property Enabled;
    Property EnableSetActivePage : Boolean Read FEnableSetActivePage Write SetEnableSetActivePage;
    Property Font;
    Property GradientFromColor : TColor Read FGradientFromColor Write SetGradientFromColor;
    Property GradientToColor : TColor Read FGradientToColor Write SetGradientToColor;
    Property GradientStyle : TAsGradientStyle Read FGradientStyle Write SetGradientStyle;
    Property HelpContext;
    Property Hint;
    Property ParentFont;
    Property ParentShowhint;
    Property ParentColor;
    Property PopupMenu;
    Property ShowHint;
    Property TabOrder;
    Property TiledBitmap : TBitmap Read FTiledBitmap Write SetTiledBitmap;
    Property UsePalette : Boolean Read FUsePalette Write SetUsePalette;
    Property ViewStyle : TAsViewStyle Read FViewStyle Write SetViewStyle;
    Property Visible;

    Property OnClick;
    Property OnDblClick;
    Property OnEnter;
    Property OnExit;
    Property OnKeyDown;
    Property OnKeyPress;
    Property OnKeyUp;
    Property OnMouseDown;
    Property OnMouseMove;
    Property OnMouseUp;
  End;

  TAsOutlookButton  = Class(TGraphicControl)
  private
    { Private declarations }
    FViewStyle : TAsViewStyle;
    FTextHeight, FTextWidth : Integer;
    FDown : Boolean;
    FMouseIn : Boolean;
    FrGlyph, FInGlyph, FrCaption : TRect;
    FGlyph : TBitmap;
    FSmallGlyph : TBitmap;
    FRestoreBmp : TBitmap;
    FLock : Boolean;

    FMouseInTimer : TTimer;
    FOnMouseEntered : TNotifyEvent;
    FOnMouseLeft : TNotifyEvent;

    Procedure SetGlyph(Value : TBitmap);
    Procedure SetSmallGlyph(Value : TBitmap);
    Procedure DrawDown;
    Procedure DrawMouseIn;
    Procedure DrawMouseOut;
    Procedure CalcGlyphRect;
    Procedure SetViewStyle(Value : TAsViewStyle);
    Procedure OnTimer(Sender : TObject);
  protected
		Constructor Create(AOwner: TComponent); Override;
		Destructor Destroy; Override;
    Procedure Paint; Override;
    Procedure CMFontChanged(Var Msg : TMessage); Message CM_FONTCHANGED;
    Procedure CMTextChanged(Var Msg : TMessage); Message CM_TEXTCHANGED;
    Procedure MouseMove(Shift: TShiftState; X, Y: Integer); Override;
    procedure MouseDown (Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure MouseUp (Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    Procedure Click; Override;
    Procedure CMMouseLeave(Var Msg : TMessage); Message CM_MOUSELEAVE;
    Procedure Loaded; Override;
    Property TextHeight : Integer Read FTextHeight;
  public
    { Public declarations }
    Property ViewStyle : TAsViewStyle Read FViewStyle Write SetViewStyle;
  published
    { Published declarations }
    Property Align;
    Property Caption;
    Property Color;
    Property Cursor;
    Property DragCursor;
    Property DragMode;
    Property Enabled;
    Property Font;
    Property Glyph : TBitmap Read FGlyph Write SetGlyph;
    Property Hint;
    Property ParentFont;
    Property ParentShowhint;
    Property ParentColor;
    Property PopupMenu;
    Property ShowHint;
    Property SmallGlyph : TBitmap Read FSmallGlyph Write SetSmallGlyph;
    Property Visible;

    Property OnClick;
    Property OnDblClick;
    Property OnMouseDown;
    Property OnMouseEntered : TNotifyEvent Read FOnMouseEntered Write FOnMouseEntered;
    Property OnMouseLeft : TNotifyEvent Read FOnMouseLeft Write FOnMouseLeft;
    Property OnMouseMove;
    Property OnMouseUp;
  End;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('uniHISPACK', [TAsOutlook, TAsOutlookPage, TAsOutlookButton]);
end;

{ General Routine }

{ Extracted from RX Library VCLUtils.pas }
function Min(A, B: Longint): Longint;
begin
  if A < B then Result := A
  else Result := B;
end;

{ Extracted from RX Library VCLUtils.pas }
function Max(A, B: Longint): Longint;
begin
  if A > B then Result := A
  else Result := B;
end;

{ Extracted from RX Library VCLUtils.pas }
procedure DrawTransparentBitmapRect(DC: HDC; Bitmap: HBitmap; xStart, yStart,
  Width, Height: Integer; Rect: TRect; TransparentColor: TColorRef);
var
{$IFDEF WIN32}
  BM: Windows.TBitmap;
{$ELSE}
  BM: WinTypes.TBitmap;
{$ENDIF}
  cColor: TColorRef;
  bmAndBack, bmAndObject, bmAndMem, bmSave: HBitmap;
  bmBackOld, bmObjectOld, bmMemOld, bmSaveOld: HBitmap;
  hdcMem, hdcBack, hdcObject, hdcTemp, hdcSave: HDC;
  ptSize, ptRealSize, ptBitSize, ptOrigin: TPoint;
begin
  hdcTemp := CreateCompatibleDC(DC);
  SelectObject(hdcTemp, Bitmap);      { Select the bitmap    }
  GetObject(Bitmap, SizeOf(BM), @BM);
  ptRealSize.x := Min(Rect.Right - Rect.Left, BM.bmWidth - Rect.Left);
  ptRealSize.y := Min(Rect.Bottom - Rect.Top, BM.bmHeight - Rect.Top);
  DPtoLP(hdcTemp, ptRealSize, 1);
  ptOrigin.x := Rect.Left;
  ptOrigin.y := Rect.Top;
  DPtoLP(hdcTemp, ptOrigin, 1);       { Convert from device  }
                                      { to logical points    }
  ptBitSize.x := BM.bmWidth;          { Get width of bitmap  }
  ptBitSize.y := BM.bmHeight;         { Get height of bitmap }
  DPtoLP(hdcTemp, ptBitSize, 1);
  if (ptRealSize.x = 0) or (ptRealSize.y = 0) then begin
    ptSize := ptBitSize;
    ptRealSize := ptSize;
  end
  else ptSize := ptRealSize;
  if (Width = 0) or (Height = 0) then begin
    Width := ptSize.x;
    Height := ptSize.y;
  end;

  { Create some DCs to hold temporary data }
  hdcBack   := CreateCompatibleDC(DC);
  hdcObject := CreateCompatibleDC(DC);
  hdcMem    := CreateCompatibleDC(DC);
  hdcSave   := CreateCompatibleDC(DC);
  { Create a bitmap for each DC. DCs are required for a number of }
  { GDI functions                                                 }
  { Monochrome DC }
  bmAndBack   := CreateBitmap(ptSize.x, ptSize.y, 1, 1, nil);
  bmAndObject := CreateBitmap(ptSize.x, ptSize.y, 1, 1, nil);
  bmAndMem    := CreateCompatibleBitmap(DC, Max(ptSize.x, Width), Max(ptSize.y, Height));
  bmSave      := CreateCompatibleBitmap(DC, ptBitSize.x, ptBitSize.y);
  { Each DC must select a bitmap object to store pixel data }
  bmBackOld   := SelectObject(hdcBack, bmAndBack);
  bmObjectOld := SelectObject(hdcObject, bmAndObject);
  bmMemOld    := SelectObject(hdcMem, bmAndMem);
  bmSaveOld   := SelectObject(hdcSave, bmSave);
  { Set proper mapping mode }
  SetMapMode(hdcTemp, GetMapMode(DC));

  { Save the bitmap sent here, because it will be overwritten }
  BitBlt(hdcSave, 0, 0, ptBitSize.x, ptBitSize.y, hdcTemp, 0, 0, SRCCOPY);
  { Set the background color of the source DC to the color,         }
  { contained in the parts of the bitmap that should be transparent }
  cColor := SetBkColor(hdcTemp, TransparentColor);
  { Create the object mask for the bitmap by performing a BitBlt()  }
  { from the source bitmap to a monochrome bitmap                   }
  BitBlt(hdcObject, 0, 0, ptSize.x, ptSize.y, hdcTemp, ptOrigin.x, ptOrigin.y,
    SRCCOPY);
  { Set the background color of the source DC back to the original  }
  { color                                                           }
  SetBkColor(hdcTemp, cColor);
  { Create the inverse of the object mask }
  BitBlt(hdcBack, 0, 0, ptSize.x, ptSize.y, hdcObject, 0, 0,
    NOTSRCCOPY);
  { Copy the background of the main DC to the destination }
  BitBlt(hdcMem, 0, 0, Width, Height, DC, xStart, yStart,
    SRCCOPY);
  { Mask out the places where the bitmap will be placed }
  StretchBlt(hdcMem, 0, 0, Width, Height, hdcObject, 0, 0,
    ptSize.x, ptSize.y, SRCAND);
  {BitBlt(hdcMem, 0, 0, ptSize.x, ptSize.y, hdcObject, 0, 0, SRCAND);}
  { Mask out the transparent colored pixels on the bitmap }
  BitBlt(hdcTemp, ptOrigin.x, ptOrigin.y, ptSize.x, ptSize.y, hdcBack, 0, 0,
    SRCAND);
  { XOR the bitmap with the background on the destination DC }
  StretchBlt(hdcMem, 0, 0, Width, Height, hdcTemp, ptOrigin.x, ptOrigin.y,
    ptSize.x, ptSize.y, SRCPAINT);
  {BitBlt(hdcMem, 0, 0, ptSize.x, ptSize.y, hdcTemp, ptOrigin.x, ptOrigin.y,
    SRCPAINT);}
  { Copy the destination to the screen }
  BitBlt(DC, xStart, yStart, Max(ptRealSize.x, Width), Max(ptRealSize.y, Height),
    hdcMem, 0, 0, SRCCOPY);
  { Place the original bitmap back into the bitmap sent here }
  BitBlt(hdcTemp, 0, 0, ptBitSize.x, ptBitSize.y, hdcSave, 0, 0, SRCCOPY);

  { Delete the memory bitmaps }
  DeleteObject(SelectObject(hdcBack, bmBackOld));
  DeleteObject(SelectObject(hdcObject, bmObjectOld));
  DeleteObject(SelectObject(hdcMem, bmMemOld));
  DeleteObject(SelectObject(hdcSave, bmSaveOld));
  { Delete the memory DCs }
  DeleteDC(hdcMem);
  DeleteDC(hdcBack);
  DeleteDC(hdcObject);
  DeleteDC(hdcSave);
  DeleteDC(hdcTemp);
end;

{ 3���� ȿ���� ������ �ؽ�Ʈ�� ����Ѵ�. }
Procedure Draw3DText(ACanvas : TCanvas; AStartX, AStartY, ABevelWidth : Integer;
                     AText : String; AclText, AclShadow, AclLight : TColor; AStyle : TAsTextStyle);
Var
  rDraw : TRect;
  TX, TY : Integer;
  OldBkMode : Integer;
Begin
  With ACanvas Do
  Begin
    TX := TextWidth(AText);
    TY := TextHeight(AText);
    OldBkMode := SetBkMode(Handle, TRANSPARENT);
    rDraw := RECT(AStartX, AStartY, AStartX + TX, AStartY + TY);
    Case AStyle Of
      ttsFlat:
      Begin
        Font.Color := AclText;
        DrawText(Handle, PChar(AText), -1, rDraw, DT_SINGLELINE + DT_CENTER + DT_VCENTER);
      End;
      ttsRaised:
      Begin
        Font.Color := AclLight;
        OffsetRect(rDraw, -ABevelWidth, -ABevelWidth);
        DrawText(Handle, PChar(AText), -1, rDraw, DT_SINGLELINE + DT_CENTER + DT_VCENTER);
        Font.Color := AclShadow;
        OffsetRect(rDraw, ABevelWidth*2, ABevelWidth*2);
        DrawText(Handle, PChar(AText), -1, rDraw, DT_SINGLELINE + DT_CENTER + DT_VCENTER);
        Font.Color := AclText;
        OffsetRect(rDraw, -ABevelWidth, -ABevelWidth);
        DrawText(Handle, PChar(AText), -1, rDraw, DT_SINGLELINE + DT_CENTER + DT_VCENTER);
      End;
      ttsSunken:
      Begin
        Font.Color := AclShadow;
        OffsetRect(rDraw, -ABevelWidth, -ABevelWidth);
        DrawText(Handle, PChar(AText), -1, rDraw, DT_SINGLELINE + DT_CENTER + DT_VCENTER);
        Font.Color := AclLight;
        OffsetRect(rDraw, ABevelWidth*2, ABevelWidth*2);
        DrawText(Handle, PChar(AText), -1, rDraw, DT_SINGLELINE + DT_CENTER + DT_VCENTER);
        Font.Color := AclText;
        OffsetRect(rDraw, -ABevelWidth, -ABevelWidth);
        DrawText(Handle, PChar(AText), -1, rDraw, DT_SINGLELINE + DT_CENTER + DT_VCENTER);
      End;
    End;
    If OldBkMode <> 0 Then
      SetBkMode(Handle, OldBkMode);
  End;
End;

{ 3���� ȿ���� ������ �ؽ�Ʈ�� ���� �簢�� �ȿ� Align�ؼ� ����Ѵ�. }
Procedure Draw3DTextAlign(ACanvas : TCanvas; ARect : TRect; ABevelWidth : Integer;
                     AText : String; AclText, AclShadow, AclLight : TColor; AStyle : TAsTextStyle;
                     AAlignment : TAlignment);
Var
  SX, SY, TX, TY : Integer;
Begin
  TX := ACanvas.TextWidth(AText);
  TY := ACanvas.TextHeight(AText);
  Case AAlignment Of
    taLeftJustify :
    Begin
      SX := ARect.Left;
      SY := ARect.Top + ((ARect.Bottom - ARect.Top - TY) div 2) - 1;
    End;
    taRightJustify :
    Begin
      SX := ARect.Right - TX;
      SY := ARect.Top + ((ARect.Bottom - ARect.Top - TY) div 2) - 1;
    End;
    taCenter :
    Begin
      SX := ARect.Left + ((ARect.Right - ARect.Left - TX) div 2);
      SY := ARect.Top + ((ARect.Bottom - ARect.Top - TY) div 2) - 1;
    End;
  End;
  Draw3DText(ACanvas, SX, SY, ABevelWidth, AText, AclText, AclShadow, AclLight, AStyle);
End;

{ 3���� ȿ���� �簢���� �׸���. }
Procedure Draw3DRect(ACanvas : TCanvas; ARect : TRect; AFill : Boolean);
Begin
  With ACanvas Do
  Begin
    Pen.Mode := pmCopy;
    Pen.Style := psSolid;
    Pen.Width := 1;
    If AFill Then
    Begin
      FillRect(ARect);
    End;
    Pen.Color := clWindow;
    MoveTo(ARect.Left, ARect.Bottom-1);
    LineTo(ARect.Left, ARect.Top);
    LineTo(ARect.Right, ARect.Top);
    Pen.Color := clBtnShadow;
    MoveTo(ARect.Left + 1, ARect.Bottom-2);
    LineTo(ARect.Right-2, ARect.Bottom-2);
    LineTo(ARect.Right-2, ARect.Top);
    Pen.Color := clBlack;
    MoveTo(ARect.Left, ARect.Bottom-1);
    LineTo(ARect.Right-1, ARect.Bottom-1);
    LineTo(ARect.Right-1, ARect.Top - 1);
  End;
End;

Procedure DrawGradientBackground(ABitmap : TBitmap; ADrawRect : TRect; AStep : Integer; AFromColor, AToColor : TColor; AStyle : TAsGradientStyle);
Var
  i : Integer;
  RGBFrom : Array[0..2] Of Byte;
  RGBDiff : Array[0..2] Of real;
  rDraw : TRECT;
  FLogPalette : PLogPalette;
  FWidth, FHeight : Integer;
  FBrush : HBRUSH;
Begin
  RGBFrom[0] := GetRValue (ColorToRGB (AFromColor));
  RGBFrom[1] := GetGValue (ColorToRGB (AFromColor));
  RGBFrom[2] := GetBValue (ColorToRGB (AFromColor));

  RGBDiff[0] := (GetRValue (ColorToRGB (AToColor)) - RGBFrom[0]) / (AStep + 1);
  RGBDiff[1] := (GetGValue (ColorToRGB (AToColor)) - RGBFrom[1]) / (AStep + 1);
  RGBDiff[2] := (GetBValue (ColorToRGB (AToColor)) - RGBFrom[2]) / (AStep + 1);

  GetMem(FLogPalette, ((AStep + 1) * SizeOf(TPaletteEntry)) + (SizeOf(Word) * 2));
  Try
    FLogPalette.palVersion := $300;
    FLogPalette.palNumEntries := AStep + 1;
    For i := 0 To AStep Do
    Begin
      FLogPalette.palPalEntry[i].peRed := RGBFrom[0] + Trunc(i * RGBDiff[0]);
      FLogPalette.palPalEntry[i].peGreen := RGBFrom[1] + Trunc(i * RGBDiff[1]);
      FLogPalette.palPalEntry[i].peBlue := RGBFrom[2] + Trunc(i * RGBDiff[2]);
      FLogPalette.palPalEntry[i].peFlags := 0;
    End;
    ABitmap.Palette := CreatePalette(FLogPalette^);

    rDraw := ADrawRect;
    FWidth := rDraw.Right - rDraw.Left;
    FHeight := rDraw.Bottom - rDraw.Top;

    For i := 0 To AStep Do
    Begin
      Case AStyle Of
        tgsLeftRight :
        Begin
          rDraw.Left := MulDiv(i, FWidth, (AStep + 1));
          rDraw.Right := MulDiv(i + 1, FWidth, (AStep + 1));
          FBrush := CreateSolidBrush(PaletteIndex(i));
        End;
        tgsRightLeft :
        Begin
          rDraw.Left := MulDiv(i, FWidth, (AStep + 1));
          rDraw.Right := MulDiv(i + 1, FWidth, (AStep + 1));
          FBrush := CreateSolidBrush(PaletteIndex(AStep - i));
        End;
        tgsTopBottom :
        Begin
          rDraw.Top := MulDiv(i, FHeight, (AStep + 1)) + 2;
          rDraw.Bottom := MulDiv(i + 1, FHeight, (AStep + 1)) + 2;
          FBrush := CreateSolidBrush(PaletteIndex(i));
        End;
        tgsBottomTop :
        Begin
          rDraw.Top := MulDiv(i, FHeight, (AStep + 1));
          rDraw.Bottom := MulDiv(i + 1, FHeight, (AStep + 1));
          FBrush := CreateSolidBrush(PaletteIndex(AStep - i));
        End;
        tgsOuterInner :
        Begin
          rDraw.Left := MulDiv(i, FWidth, (AStep + 1)) div 2;
          rDraw.Right := FWidth - MulDiv(i + 1, FWidth, (AStep + 1)) div 2;
          rDraw.Top := MulDiv(i, FHeight, (AStep + 1)) div 2;
          rDraw.Bottom := FHeight - MulDiv(i + 1, FHeight, (AStep + 1)) Div 2;
          FBrush := CreateSolidBrush(PaletteIndex(i));
        End;
        tgsInnerOuter :
        Begin
          rDraw.Left := MulDiv(i, FWidth, (AStep + 1)) div 2;
          rDraw.Right := FWidth - MulDiv(i + 1, FWidth, (AStep + 1)) div 2;
          rDraw.Top := MulDiv(i, FHeight, (AStep + 1)) div 2;
          rDraw.Bottom := FHeight - MulDiv(i + 1, FHeight, (AStep + 1)) Div 2;
          FBrush := CreateSolidBrush(PaletteIndex(AStep - i));
        End;
      End;
      FillRect(ABitmap.Canvas.Handle, rDraw, FBrush);
      DeleteObject(FBrush);
    End;
  Finally
    FreeMem(FLogPalette);
  End;
End;

Procedure DrawGradientBackgroundD(ABitmap : TBitmap; ADrawRect : TRect; AStep : Integer; AFromColor, AToColor : TColor; AStyle : TAsGradientStyle);
Var
  i : Integer;
  RGBFrom : Array[0..2] Of Byte;
  RGBDiff : Array[0..2] Of real;
  rDraw : TRECT;
  FWidth, FHeight : Integer;
  FBrush : HBRUSH;
Begin
  RGBFrom[0] := GetRValue (ColorToRGB (AFromColor));
  RGBFrom[1] := GetGValue (ColorToRGB (AFromColor));
  RGBFrom[2] := GetBValue (ColorToRGB (AFromColor));

  RGBDiff[0] := (GetRValue (ColorToRGB (AToColor)) - RGBFrom[0]) / (AStep + 1);
  RGBDiff[1] := (GetGValue (ColorToRGB (AToColor)) - RGBFrom[1]) / (AStep + 1);
  RGBDiff[2] := (GetBValue (ColorToRGB (AToColor)) - RGBFrom[2]) / (AStep + 1);

  rDraw := ADrawRect;
  FWidth := rDraw.Right - rDraw.Left;
  FHeight := rDraw.Bottom - rDraw.Top;

  For i := 0 To AStep Do
  Begin
    Case AStyle Of
      tgsLeftRight :
      Begin
        rDraw.Left := MulDiv(i, FWidth, (AStep + 1));
        rDraw.Right := MulDiv(i + 1, FWidth, (AStep + 1));
        FBrush := CreateSolidBrush(RGB(RGBFrom[0] + Trunc(i * RGBDiff[0]),
                           RGBFrom[1] + Trunc(i * RGBDiff[1]),
                           RGBFrom[2] + Trunc(i * RGBDiff[2])));
      End;
      tgsRightLeft :
      Begin
        rDraw.Left := MulDiv(i, FWidth, (AStep + 1));
        rDraw.Right := MulDiv(i + 1, FWidth, (AStep + 1));
        FBrush := CreateSolidBrush(RGB(RGBFrom[0] + Trunc((AStep - i) * RGBDiff[0]),
                           RGBFrom[1] + Trunc((AStep - i) * RGBDiff[1]),
                           RGBFrom[2] + Trunc((AStep - i) * RGBDiff[2])));
      End;
      tgsTopBottom :
      Begin
        rDraw.Top := MulDiv(i, FHeight, (AStep + 1));
        rDraw.Bottom := MulDiv(i + 1, FHeight, (AStep + 1));
        FBrush := CreateSolidBrush(RGB(RGBFrom[0] + Trunc(i * RGBDiff[0]),
                           RGBFrom[1] + Trunc(i * RGBDiff[1]),
                           RGBFrom[2] + Trunc(i * RGBDiff[2])));
      End;
      tgsBottomTop :
      Begin
        rDraw.Top := MulDiv(i, FHeight, (AStep + 1));
        rDraw.Bottom := MulDiv(i + 1, FHeight, (AStep + 1));
        FBrush := CreateSolidBrush(RGB(RGBFrom[0] + Trunc((AStep - i) * RGBDiff[0]),
                           RGBFrom[1] + Trunc((AStep - i) * RGBDiff[1]),
                           RGBFrom[2] + Trunc((AStep - i) * RGBDiff[2])));
      End;
      tgsOuterInner :
      Begin
        rDraw.Left := MulDiv(i, FWidth, (AStep + 1)) div 2;
        rDraw.Right := FWidth - MulDiv(i + 1, FWidth, (AStep + 1)) div 2;
        rDraw.Top := MulDiv(i, FHeight, (AStep + 1)) div 2;
        rDraw.Bottom := FHeight - MulDiv(i + 1, FHeight, (AStep + 1)) Div 2;
        FBrush := CreateSolidBrush(RGB(RGBFrom[0] + Trunc(i * RGBDiff[0]),
                           RGBFrom[1] + Trunc(i * RGBDiff[1]),
                           RGBFrom[2] + Trunc(i * RGBDiff[2])));
      End;
      tgsInnerOuter :
      Begin
        rDraw.Left := MulDiv(i, FWidth, (AStep + 1)) div 2;
        rDraw.Right := FWidth - MulDiv(i + 1, FWidth, (AStep + 1)) div 2;
        rDraw.Top := MulDiv(i, FHeight, (AStep + 1)) div 2;
        rDraw.Bottom := FHeight - MulDiv(i + 1, FHeight, (AStep + 1)) Div 2;
        FBrush := CreateSolidBrush(RGB(RGBFrom[0] + Trunc((AStep - i) * RGBDiff[0]),
                           RGBFrom[1] + Trunc((AStep - i) * RGBDiff[1]),
                           RGBFrom[2] + Trunc((AStep - i) * RGBDiff[2])));
      End;
    End;
    FillRect(ABitmap.Canvas.Handle, rDraw, FBrush);
    DeleteObject(FBrush);
  End;
End;

Procedure DrawTiledBitmap(ADest, ASrc : TBitmap);
Var
  Col, Row : Integer;
Begin
  If (ADest <> Nil) And (ASrc <> Nil) Then
  Begin
    For Row := 0 To ADest.Height div ASrc.height Do
    Begin
      For Col := 0 To ADest.Width div ASrc.Width Do
      Begin
        ADest.Canvas.Draw(Col * ASrc.Width, Row * ASrc.Height, ASrc);
      End;
    End;
  End;
End;

{ TAsOutlook Implementation}
Constructor TAsOutlook.Create(AOwner: TComponent);
Begin
	Inherited Create(AOwner);
  { ����ÿ� Child Control�� �θ� �� �� �ְ� �Ѵ�. }
  ControlStyle := ControlStyle + [csAcceptsControls];
  Color := clBtnFace;
  Align := alLeft;
  Width := 100;
  Height := 200;
  FActivePage := Nil;
  FPageIndex := -1;
End;

Destructor TAsOutlook.Destroy;
Begin
	Inherited Destroy;
End;

Procedure TAsOutlook.CreateParams(var Params : TCreateParams);
Begin
  Inherited CreateParams(Params);
  With Params Do
  Begin
    { Client ������ �׸� �� �ڽ� ��Ʈ���� �����ϰ� �ִ� ������ �׸��� �ʵ��� �����Ѵ�. }
    Style := Style or WS_CLIPCHILDREN;
    { Component�� ��谡 �� ���̰� �Ѵ�. }
    ExStyle := ExStyle Or WS_EX_CLIENTEDGE;
  End;
End;

Procedure TAsOutlook.Notification(AComponent: TComponent; Operation: TOperation);
Begin
  If Operation = opRemove Then
  Begin
    { FActivePage�� ������ Component�� ������ �����Ǹ� FActivePage�� Nil�� ���ش�. }
    If FActivePage = AComponent Then
    Begin
      FActivePage := Nil;
      FPageIndex := -1;
    End;
  End;
End;

Procedure TAsOutlook.SetActivePage(Value : TAsOutlookPage);
Var
  TY, nIndex, OldPage, PageHeight : Integer;
Begin
  If Value = Nil Then Exit;

  FActivePage := Value;
  OldPage := FPageIndex;
  FPageIndex := -1;
  { ������ �������� Index�� ã�´�. }
  For nIndex := 0 To Pred(ControlCount) Do
  Begin
    If Controls[nIndex] = Value Then
    Begin
      FPageIndex := nIndex;
      TAsOutlookPage(Controls[nIndex]).ArrangeButton;
      Break;
    End;
  End;
  If FPageIndex = -1 Then Exit;

  With Canvas Do
  Begin
    Font.Assign(Self.Font);
    TY := TextHeight('A') + 6;
  End;

  PageHeight := ClientHeight - (ControlCount - 1) * TY;

  { ���� �������� ������ ���������� ���� Index�� ������ ���� ��������
    ���� ���������� ������ ���������� �������� �̵��Ѵ�. }
  If OldPage < FPageIndex Then
  Begin
    For nIndex := OldPage + 1 To FPageIndex Do
    Begin
      MovePage(nIndex, 0, nIndex * TY, ClientWidth, PageHeight)
    End;
  End
  Else
  Begin
  { ���� �������� ������ ���������� ���� Index�� ������ ������ ���������� �Ѵܰ�
    ���� ���������� ���� ���������� �������� �̵��Ѵ�. }
    For nIndex := OldPage DownTo FPageIndex + 1 Do
    Begin
      If Controls[nIndex] Is TAsOutlookPage Then
      Begin
        MovePage(nIndex, 0, ClientHeight - (ControlCount - nIndex) * TY, ClientWidth, PageHeight);
      End;
    End;
  End;
End;

Procedure TAsOutlook.WMSize(Var Msg : TWMSize);
Var
  bTmp : Boolean;
Begin
  Inherited;
  { ũ�Ⱑ ����Ǿ����Ƿ� �������� �������Ѵ�.
    ũ�Ⱑ ����Ǿ �������� ������ ���� Animate Scroll�� ���� �ʴ´�. }
  bTmp := FAnimate;
  FAnimate := False;
  ArrangePage;
  FAnimate := bTmp;
End;

Procedure TAsOutlook.MovePage(APage, ALeft, ATop, AWidth, AHeight : Integer);
Var
  OTop, nIndex, nMax : Integer;
  nDiff : Integer;
Begin
  If Not (APage In [0..ControlCount - 1]) Then Exit;
  { �������� �̵��� ���� Up, Down ��ư�� ������ �ʰ� �Ѵ�. }
  TAsOutlookPage(Controls[APage]).FUpButton.Visible := False;
  TAsOutlookPage(Controls[APage]).FDownButton.Visible := False;
  TAsOutlookPage(Controls[APage]).LockButton(True);

  { �ε巯�� ��ũ���̶� ���� �������� �̵��� ���� �ٷ� ���� ��������
    �̵��� ���� �ε巯�� ��ũ���� �Ѵ�. }
  { 1998.02.13 ���� }
  If FAnimate And ((FPageIndex = APage) Or ((APage - FPageIndex) = 1)) Then
  Begin

    OTop := Controls[APage].Top;
    nDiff := 2;

    { ��� ��ġ�� ������ ��� ��ġ�� �����Ѵ�. }
    Controls[APage].SetBounds(ALeft,  OTop, AWidth, AHeight);
    nMax := OTop + (ATop - OTop) Div 3;
    For nIndex := 1 To 100 Do
    Begin
      { nIndex * nDiff ũ�⸸ŭ ���� ��� ��ġ���� ���ϰų� ���ش�. }
      If ATop > OTop Then
      Begin
        Controls[APage].Top := Controls[APage].Top + (nIndex * nDiff);
        Application.ProcessMessages;
        { ���� ��ġ�� ������ ����� ������ ���� ������. }
        If (Controls[APage].Top) > nMax Then Break;
      End
      Else
      Begin
        Controls[APage].Top := Controls[APage].Top - (nIndex * nDiff);
        Application.ProcessMessages;
        { ���� ��ġ�� ������ ����� ������ ���� ������. }
        If (Controls[APage].Top) < nMax Then Break;
      End;
    End;
  End;
  { �������� ���� ��ġ�� �̵��Ѵ�. }
  Controls[APage].SetBounds(ALeft, ATop, AWidth, AHeight);
  { ��ư�� �������Ѵ�. }
  TAsOutlookPage(controls[APage]).ArrangeButton;
  TAsOutlookPage(Controls[APage]).LockButton(False);
End;

Procedure TAsOutlook.ArrangePage;
Var
  nIndex : Integer;
  TY, PageHeight : Integer;
Begin
  if FPageIndex = -1 Then Exit;

  { ������ ĸ���� ũ�⸦ ����Ѵ�. }
  With Canvas Do
  Begin
    Font.Assign(Self.Font);
    TY := TextHeight('A') + 6;
  End;

  { �������� ���̸� ����Ѵ�. }
  PageHeight := ClientHeight - (ControlCount - 1) * TY;
  { �������� �����Ѵ�. }
  For nIndex := 0 To Pred(ControlCount) Do
  Begin
    If Controls[nIndex] Is TAsOutlookPage Then
    Begin
      If nIndex < FPageIndex Then
        MovePage(nIndex, 0, nIndex * TY, ClientWidth, PageHeight)
      Else If nIndex = FPageIndex Then
        MovePage(nIndex, 0, nIndex * TY, ClientWidth, PageHeight)
      Else
        MovePage(nIndex, 0, ClientHeight - (ControlCount - nIndex) * TY, ClientWidth, PageHeight);
    End;
  End;
  { ���� �������� �ٽ� �׸���. }
  Controls[FPageIndex].Invalidate;
End;

Procedure TAsOutlook.Loaded;
Begin
  Inherited Loaded;
  ArrangePage;
End;

{ TAsOutlookPage Implementation }
Constructor TAsOutlookPage.Create(AOwner: TComponent);
Begin
	Inherited Create(AOwner);
  { ����ÿ� Child Control�� �θ� �� �� �ְ� �Ѵ�. }
  ControlStyle := ControlStyle + [csAcceptsControls];
  Color := clBtnShadow;
  Width := 100;
  Height := 200;
  FViewStyle := avsIcon;
  FButtonWidth := 80;
  FButtonHeight := 60;
  FButtonSpace := 4;
  FUpButton := CreateButton;
  FUpButton.Glyph.LoadFromResourceName(hInstance, 'IDB_UP');
  FDownButton := CreateButton;
  FDownButton.Glyph.LoadFromResourceName(hInstance, 'IDB_DOWN');
  FStartButtonIndex := 0;
  FBackgroundStyle := absNormal;
  FGradientFromColor := clBlue;
  FGradientToColor := clNavy;
  FGradientStyle := tgsTopBottom;
  FUsePalette := False;
  FBackBitmap := TBitmap.Create;
  FTiledBitmap := TBitmap.Create;
  FTiledBitmap.Width := 16;
  FTiledBitmap.Height := 16;

  FCaptionStyle := ttsFlat; { 1998.02.13 �߰� }
End;

Destructor TAsOutlookPage.Destroy;
Begin
  FTiledBitmap.Free;
  FBackBitmap.Free;
  FDownButton.Free;
  FUpButton.Free;
	Inherited Destroy;
End;

Procedure TAsOutlookPage.CreateParams(var Params : TCreateParams);
Begin
  Inherited CreateParams(Params);
  With Params Do
  Begin
    { Client ������ �׸� �� �ڽ� ��Ʈ���� �����ϰ� �ִ� ������ �׸��� �ʵ��� �����Ѵ�. }
    Style := Style or WS_CLIPCHILDREN;
  End;
End;

Procedure TAsOutlookPage.CMFontChanged(Var Msg : TMessage);
Begin
  Invalidate;
End;

Procedure TAsOutlookPage.CMTextChanged(Var Msg : TMessage);
Begin
  Invalidate;
End;

Procedure TAsOutlookPage.SetViewStyle(Value : TAsViewStyle);
Begin
  FViewStyle := Value;
  FStartButtonIndex := 0;
  ArrangeButton;
End;

Procedure TAsOutlookPage.SetBackgroundStyle(Value : TAsBackgroundStyle);
Begin
  FBackgroundStyle := Value;

  UpdateBackBitmap;
  Invalidate;
End;

Procedure TAsOutlookPage.SetTiledBitmap(Value : TBitmap);
Begin
  FTiledBitmap.Assign(Value);
  UpdateBackBitmap;
  Invalidate;
End;

Procedure TAsoutlookPage.SetButtonWidth(Value : Integer);
Begin
  FButtonWidth := Value;
  ArrangeButton;
End;

Procedure TAsoutlookPage.SetButtonHeight(Value : Integer);
Begin
  FButtonHeight := Value;
  ArrangeButton;
End;

Procedure TAsoutlookPage.SetButtonSpace(Value : Integer);
Begin
  FButtonSpace := Value;
  ArrangeButton;
End;

Procedure TAsOutlookPage.SetUpButtonGlyph(Value : TBitmap);
Begin
  FUpButton.Glyph.Assign(Value);
  Invalidate;
End;

Function TAsOutlookPage.GetUpButtonGlyph : TBitmap;
Begin
  Result := FUpButton.Glyph;
End;

Procedure TAsOutlookPage.SetDownButtonGlyph(Value : TBitmap);
Begin
  FDownButton.Glyph.Assign(Value);
  Invalidate;
End;

Function TAsOutlookPage.GetDownButtonGlyph : TBitmap;
Begin
  Result := FDownButton.Glyph;
End;

Procedure TAsOutlookPage.SetGradientFromColor(Value : TColor);
Begin
  FGradientFromColor := Value;
  UpdateBackBitmap;
  Invalidate;
End;

Procedure TAsOutlookPage.SetGradientToColor(Value : TColor);
Begin
  FGradientToColor := Value;
  UpdateBackBitmap;
  Invalidate;
End;

Procedure TAsOutlookPage.SetGradientStyle(Value : TAsGradientStyle);
Begin
  FGradientStyle := Value;
  UpdateBackBitmap;
  Invalidate;
End;

Procedure TAsOutlookPage.SetUsePalette(Value : Boolean);
Begin
  FUsePalette := Value;
  UpdateBackBitmap;
  Invalidate;
End;

Procedure TAsOutlookPage.SetCaptionHeight(Value : Integer);
Begin
  FCaptionHeight := Value;
  Invalidate;
End;


Procedure TAsOutlookPage.SetCaptionStyle(Value : TAsTextStyle);
Begin
  FCaptionStyle := Value;
  Invalidate;
End;

Procedure TAsOutlookPage.WMSize(Var Msg : TWMSize);
Begin
  Inherited;
  With Canvas Do
  Begin
    Font.Assign(Self.Font);
    rCaption := RECT(0, 0, Width, TextHeight('A') + 6);
  End;
  { �������� ũ�Ⱑ ����Ǿ����Ƿ� Up, Down ��ư�� ��ġ�� �����Ѵ�. }
  FUpButton.SetBounds(ClientWidth - 22, rCaption.Bottom + 6, 16, 16);
  FDownButton.SetBounds(ClientWidth - 22, ClientHeight - 22, 16, 16);
  UpdateBackBitmap;
  FStartButtonIndex := 0;
  ArrangeButton;
End;

Procedure TAsOutlookPage.UpdateBackBitmap;
Begin
  { Background Bitmap�� �̸� ����� ���� ����� �׸��� ������(�ӵ�)
    Background Style�� Gradient Fill�̳� Tiled Bitmap�� ���
    Background Bitmap�� Refresh�Ѵ�. }
  FBackBitmap.Width := Width;
  FBackBitmap.Height := Height;
  FBackBitmap.IgnorePalette := False;
  If FBackgroundStyle = absGradient Then
  Begin
    If FUsePalette Then
      DrawGradientBackground(FBackBitmap, RECT(0, 0, FBackBitmap.Width, FBackBitmap.Height),
                             255, FGradientFromColor, FGradientToColor, FGradientStyle)
    Else
      DrawGradientBackgroundD(FBackBitmap, RECT(0, 0, FBackBitmap.Width, FBackBitmap.Height),
                             255, FGradientFromColor, FGradientToColor, FGradientStyle);
  End
  Else If FBackgroundStyle = absTiledBitmap Then
  Begin
    DrawTiledBitmap(FBackBitmap, FTiledBitmap);
  End;
End;

Procedure TAsOutlookPage.SetEnableSetActivePage(Value:Boolean);
Begin
  FEnableSetActivePage := Value;
  Invalidate;
End;

Procedure TAsOutlookPage.Paint;
Var
  rClient : TRect;
  TY : Integer;
Begin
  Inherited;
  rClient := GetClientRect;
  With Canvas Do
  Begin
    { Draw Background }
    Brush.Color := Self.Color;
    If FBackgroundStyle = absGradient Then
      Draw(0, rCaption.Top, FBackBitmap)
    Else If FBackgroundStyle = absTiledBitmap Then
      Draw(0, rCaption.Top, FBackBitmap)
    Else
      FillRect(rClient);
    { Draw Caption }
    Brush.Color := clBtnFace;
    Font.Assign(Self.Font);

    // 2002.06.20. ������
    TY := FCaptionHeight;
//    TY := TextHeight('A');

    rCaption := RECT(0, 0, Width, TY + 6);

    Draw3DRect(Canvas, rCaption, True);
    { 1998.02.13 ����}
    Draw3DTextAlign(Canvas, rCaption, 1, Self.Caption, Font.Color, clBtnShadow, clWindow, FCaptionStyle, taCenter);

    { ����ð��� ��� �������� �ܰ��� �׷��ش�. }
    If csDesigning In ComponentState Then
    Begin
      Brush.Color := clBlack;
      FrameRect(rClient);
    End;
  End;
End;

Procedure TAsOutlookPage.LockButton(Value : Boolean);
Var
  nIndex : Integer;
Begin
  { ��ũ�� �� �� ��ư�� MouseMove Event�� ������ ���� �ʰ� �Ѵ�. }
  For nIndex := 0 To Pred(ControlCount) Do
  Begin
    If Controls[nIndex] Is TAsOutlookButton Then
    Begin
      TAsOutlookButton(Controls[nIndex]).FLock := Value;
    End;
  End;
End;

Procedure TAsOutlookPage.ArrangeButton;
Var
  nIndex : Integer;
  nTop : Integer;
  TmpList : TStringList;
Begin
  TmpList := TStringList.Create;
  Try
    { Up, Down Button�� ������ TAsOutlookButton�� �����Ѵ�. }
    TmpList.Clear;
    For nIndex := 0 To Pred(ControlCount) Do
    Begin
      If Controls[nIndex] Is TAsOutlookButton Then
      Begin
        TmpList.Add(IntToStr(nIndex));
        TAsOutlookButton(Controls[nIndex]).ViewStyle := FViewStyle;
      End;
    End;

    { ����� ��ư�� ���� ��ġ�� �����Ѵ�. }
    If FViewStyle = avsIcon Then
    Begin
      For nIndex := 0 To FStartButtonIndex - 1 Do
      Begin
        nTop := (nIndex + 1) * (FButtonHeight + FButtonSpace);
        Controls[StrToInt(TmpList.Strings[nIndex])].Top := 0 - nTop;
      End;
      nTop := rCaption.Bottom + FButtonSpace;
      For nIndex := FStartButtonIndex To Pred(TmpList.Count) Do
      Begin
        Controls[StrToInt(TmpList.Strings[nIndex])].Top := nTop;
        nTop := nTop + FButtonHeight + FButtonSpace;
      End;
    End
    Else
    Begin
      For nIndex := 0 To FStartButtonIndex - 1 Do
      Begin
        nTop := (nIndex + 1) * (Controls[StrToInt(TmpList.Strings[nIndex])].Height + (FButtonSpace div 2));
        Controls[StrToInt(TmpList.Strings[nIndex])].Top := 0 - nTop;
      End;
      nTop := rCaption.Bottom + FButtonSpace;
      For nIndex := FStartButtonIndex To Pred(TmpList.Count) Do
      Begin
        Controls[StrToInt(TmpList.Strings[nIndex])].Top := nTop;
        nTop := nTop + Controls[StrToInt(TmpList.Strings[nIndex])].Height + (FButtonSpace div 2);
      End;
    End;
  Finally
    TmpList.Free;
  End;

  { ���� �������� �ƴϸ� Up, Down ��ư�� ������ �ʰ� �Ѵ�. }
  If TAsOutlook(Parent).ActivePage <> Self Then
  Begin
    FUpButton.Visible := False;
    FDownButton.Visible := False;
  End
  Else
  Begin
    { Up, Down ��ư�� Visible ���¸� �����Ѵ�. }
    If FStartButtonIndex > 0 Then FUpButton.Visible := True
    Else FUpButton.Visible := False;
    If nTop > ClientHeight Then FDownButton.Visible := True
    Else FDownButton.Visible := False;
    FUpButton.BringToFront;
    FDownButton.BringToFront;
  End;
End;

Procedure TAsOutlookPage.Click;
Var
  pt : TPoint;
Begin
  { Cursor Position�� Caption�� �׷��� ��ġ�� �־�� Click Event�� �߻���Ű��
    Parent�� PageIndex�� �����Ѵ�. }

  // 2002.06.19. ������.
  // ActivePage�� �����ų�������� �����ϴ� Property���� ���� ���� ����.
  if FEnableSetActivePage = False then
     Exit;
      
  GetCursorPos(pt);

  If PtInRect(rCaption, Self.ScreenToClient(pt)) Then
  Begin
    If Parent Is TAsOutlook Then
    Begin
      TAsOutlook(Parent).ActivePage := Self;
    End;
    Inherited;
  End;
End;


Procedure TAsOutlookPage.ScrollPage(Sender : TObject);
Begin
  If TAsSpeedButton(Sender).Visible Then
  Begin
    { Up, Down ��ư�� �������Ƿ� �������� �˸°� ��ũ���Ѵ�. }
    If Sender = FUpButton Then
      Dec(FStartButtonIndex)
    Else
      Inc(FStartButtonIndex);

    If FStartButtonIndex < 0 Then
      FStartButtonIndex := 0;

    ArrangeButton;
  End;
End;

Function TAsOutlookPage.CreateButton : TAsSpeedButton;
Begin
  Result := TAsSpeedButton.Create(Self);
  Result.Visible := False;
  Result.Enabled := True;
  Result.OnClick := ScrollPage;
  Result.Parent := Self;
End;

Procedure TAsOutlookPage.Loaded;
Begin
  Inherited Loaded;
  UpdateBackBitmap;
End;


{ TAsOutlookButton Implementation }
Constructor TAsOutlookButton.Create(AOwner: TComponent);
Begin
	Inherited Create(AOwner);
  FRestoreBmp := TBitmap.Create;
  Color := clBtnShadow;
  Width := 100;
  Height := 100;
  FMouseIn := False;
  FDown := False;
  FGlyph := TBitmap.Create;
  FGlyph.Width := LargeSize;
  FGlyph.Height := LargeSize;
  FSmallGlyph := TBitmap.Create;
  FSmallGlyph.Width := SmallSize;
  FSmallGlyph.Height := SmallSize;
  FViewStyle := avsIcon;
  CalcGlyphRect;
  FMouseInTimer := TTimer.Create(AOwner);
  FMouseInTimer.Enabled := False;
  FMouseInTimer.Interval := 50;
  FMouseInTimer.OnTimer := OnTimer;

  FLock := False;
End;

Destructor TAsOutlookButton.Destroy;
Begin
  FMouseInTimer.Free;
  FRestoreBmp.Free;
  FSmallGlyph.Free;
  FGlyph.Free;
	Inherited Destroy;
End;

Procedure TAsOutlookButton.CMFontChanged(Var Msg : TMessage);
Begin
  Invalidate;
End;

Procedure TAsOutlookButton.CMTextChanged(Var Msg : TMessage);
Begin
  Invalidate;
End;

Procedure TAsOutlookButton.DrawDown;
Begin
  If FLock Then Exit;
  { ��ư�� ������ ���¸� �׸���. }
  If FMouseIn And FDown Then
  Begin
    With Canvas Do
    Begin
      Pen.Color := clBlack;
      MoveTo(FrGlyph.Left, FrGlyph.Bottom-1);
      LineTo(FrGlyph.Left, FrGlyph.Top);
      LineTo(FrGlyph.Right, FrGlyph.Top);
      Pen.Color := clSilver;
      MoveTo(FrGlyph.Left, FrGlyph.Bottom-1);
      LineTo(FrGlyph.Right-1, FrGlyph.Bottom-1);
      LineTo(FrGlyph.Right-1, FrGlyph.Top);
    End;
  End;
End;

Procedure TAsOutlookButton.DrawMouseIn;
Begin
  If FLock Then Exit;
  { ���콺�� �׸� ��ġ�� ������ ��Ÿ����. }
  With Canvas Do
  Begin
    Pen.Color := clSilver;
    MoveTo(FrGlyph.Left, FrGlyph.Bottom-1);
    LineTo(FrGlyph.Left, FrGlyph.Top);
    LineTo(FrGlyph.Right, FrGlyph.Top);
    Pen.Color := clBlack;
    MoveTo(FrGlyph.Left, FrGlyph.Bottom-1);
    LineTo(FrGlyph.Right-1, FrGlyph.Bottom-1);
    LineTo(FrGlyph.Right-1, FrGlyph.Top);
    if FMouseInTimer <> nil then
      FMouseInTimer.Enabled := True;
    If Assigned(FOnMouseEntered) Then FOnMouseEntered(Self);
  End;
End;

Procedure TAsOutlookButton.DrawMouseOut;
Begin
  { ���콺�� �׸� ��ġ�� ���� ������ ��Ÿ����. }
  if FMouseInTimer <> nil then
   If FMouseInTimer.Enabled Then
     FMouseInTimer.Enabled := False;

  { DrawMouseIn���� BackUp�� �׸��� �׷��ش�. }
  Canvas.Draw(FrGlyph.Left - 1, FrGlyph.Top - 1, FRestoreBmp);
  If Assigned(FOnMouseLeft) Then FOnMouseLeft(Self);
End;

Procedure TAsOutlookButton.OnTimer(Sender : TObject);
Var
  pt : TPoint;
Begin
  { Cursor Position�� �׸� ��ġ�� ���� �������� �˻��Ѵ�. }
  GetCursorPos(pt);
  If (Not PtInRect(FInGlyph, Self.ScreenToClient(pt))) And (Not PtInRect(Frcaption, Self.ScreenToClient(pt))) Then
  Begin
    FMouseInTimer.Enabled := False;
    FMouseIn := False;
    FDown := False;
    DrawMouseOut;
  End;
End;

Procedure TAsOutlookButton.CMMouseLeave(Var Msg : TMessage);
Begin
  If FMouseIn Then
  Begin
    FMouseIn := False;
    DrawMouseOut;
  End;
End;

Procedure TAsOutlookButton.MouseMove(Shift: TShiftState; X, Y: Integer);
Begin
  If FLock Then Exit;

  If FMouseIn Then
  Begin
    If (Not PtInRect(FInGlyph, POINT(X, Y))) And (Not PtInRect(FrCaption, POINT(X, Y))) Then
    Begin
      FMouseIn := False;
      DrawMouseOut;
    End;
  End
  Else
  Begin
    If PtInRect(FInGlyph, POINT(X, Y)) Or PtInRect(FrCaption, POINT(X, Y)) Then
    Begin
      FMouseIn := True;
      DrawMouseIn;
    End;
  End;
  Inherited MouseMove(Shift, X, Y);
End;

Procedure TAsOutlookButton.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
  If (csClicked In ControlState) And (PtInRect(FInGlyph, POINT(X, Y)) Or PtInRect(FrCaption, POINT(X, Y))) Then
  Begin
    FMouseIn := True;
    FDown := True;
    DrawDown;
  End;
  Inherited MouseDown(Button, Shift, X, Y);
End;

Procedure TAsOutlookButton.MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
  If PtInRect(FInGlyph, POINT(X, Y)) Or PtInRect(FrCaption, POINT(X, Y)) Then
  Begin
    FMouseIn := True;
    FDown := False;
    DrawMouseIn;
  End
  Else
  Begin
    FMouseIn := False;
    FDown := False;
    DrawMouseOut;
  End;
  Inherited MouseUp(Button, Shift, X, Y);
End;

Procedure TAsOutlookButton.SetGlyph(Value : TBitmap);
Begin
  FGlyph.Assign(Value);
  Invalidate;
End;

Procedure TAsOutlookButton.SetSmallGlyph(Value : TBitmap);
Begin
  FSmallGlyph.Assign(Value);
  Invalidate;
End;

Procedure TAsOutlookButton.Paint;
Var
  rClient : TRect;
  TmpBmp : TBitmap;
  BmpSize : Integer;
Begin
  Inherited;
  rClient := GetClientRect;
  With Canvas Do
  Begin
    Canvas.Font.Assign(Self.Font);
    FTextHeight := Canvas.TextHeight('A');
    FTextWidth := Canvas.TextWidth(Caption);

    CalcGlyphRect;

    If FGlyph <> Nil Then
    Begin
      If FViewStyle = avsIcon Then
        BmpSize := LargeSize
      Else
        BmpSize := SmallSize;
      TmpBmp := TBitmap.Create;
      Try
        TmpBmp.Width := BmpSize;
        TmpBmp.Height := BmpSize;

        If FViewStyle = avsIcon Then
          TmpBmp.Canvas.StretchDraw(RECT(0, 0, BmpSize, BmpSize), FGlyph)
        Else
          TmpBmp.Canvas.StretchDraw(RECT(0, 0, BmpSize, BmpSize), FSmallGlyph);

        DrawTransparentBitmapRect(Handle, TmpBmp.Handle, FrGlyph.Left + 2, FrGlyph.Top + 2, BmpSize, BmpSize, RECT(0, 0, TmpBmp.Width, TmpBmp.Height), TmpBmp.Canvas.Pixels[0, BmpSize-1]);
      Finally
        TmpBmp.Free;
      End;
    End;

    If FViewStyle = avsIcon Then
      Draw3DTextAlign(Canvas, FrCaption,
                      1, Self.Caption, Font.Color, clWindow, clWindow, ttsFlat, taCenter)
    Else
      Draw3DTextAlign(Canvas, FrCaption,
                      1, Self.Caption, Font.Color, clWindow, clWindow, ttsFlat, taLeftJustify);

    If csDesigning In ComponentState Then
    Begin
      Brush.Color := clBlack;
      FrameRect(rClient);
    End;
  End;
  { DrawMouseOut���� ����� BackUp ��Ʈ���� �����. }
  if FRestoreBmp <> nil then
  begin
    FRestoreBmp.Width := FrGlyph.Right - FrGlyph.Left + 3;
    FRestoreBmp.Height := FrGlyph.Bottom - FrGlyph.Top + 3;
    FRestoreBmp.Canvas.CopyRect(RECT(0, 0, FRestoreBmp.Width, FRestoreBmp.Height),
                       Canvas, RECT(FrGlyph.Left - 1, FrGlyph.Top - 1, FrGlyph.Right + 1, FrGlyph.Bottom + 1));
  end;
End;

Procedure TAsOutlookButton.CalcGlyphRect;
Begin
  { �׸��� �׷��� ��ġ�� �����Ѵ�. }
  If FViewStyle = avsIcon Then
  Begin
    FrGlyph.Left := (Width - LargeSize - 4) div 2;
    FrGlyph.Top := 3;
    FrGlyph.Right := FrGlyph.Left + LargeSize + 4;
    FrGlyph.Bottom := FrGlyph.Top + LargeSize + 4;

    FrCaption := RECT((Width - FTextWidth) div 2, FrGlyph.Bottom + 4, Width - (Width - FTextWidth) div 2, FrGlyph.Bottom + 4 + FTextHeight);
    FInGlyph := FrGlyph;
    FInGlyph.Bottom := FrCaption.Top;
  End
  Else
  Begin
    FrGlyph.Left := 1;
    FrGlyph.Top := 1;
    FrGlyph.Right := FrGlyph.Left + SmallSize + 4;
    FrGlyph.Bottom := FrGlyph.Top + SmallSize + 4;

    FrCaption := RECT(FrGlyph.Right + 2, FrGlyph.Top, FrGlyph.Right + 2 + FTextWidth, FrGlyph.Bottom);
    FInGlyph := FrGlyph;
    FInGlyph.Bottom := FrCaption.Top;
  End;
End;

Procedure TAsOutlookButton.Click;
Var
  pt : TPoint;
Begin
  { Cursor Position�� Glyph�� �׷��� ��ġ�� �־�� Click Event�� �߻���Ų��. }
  GetCursorPos(pt);
  If PtInRect(FInGlyph, Self.ScreenToClient(pt)) Or PtInRect(FrCaption, Self.ScreenToClient(pt)) Then
  Begin
    Inherited;
  End;
End;

Procedure TAsOutlookButton.Loaded;
Begin
  Inherited Loaded;
  If Parent Is TAsOutlookPage Then
  Begin
    With TAsOutlookPage(Parent) Do
    Begin
      Self.SetBounds((Width - ButtonWidth) div 2, Self.Top, ButtonWidth, ButtonHeight);
    End;
  End;
End;

Procedure TAsOutlookButton.SetViewStyle(Value : TAsViewStyle);
Begin
  FViewStyle := Value;
  If FViewStyle = avsIcon Then
  Begin
    If Parent Is TAsOutlookPage Then
    Begin
      With TAsOutlookPage(Parent) Do
      Begin
        Self.SetBounds((Width - ButtonWidth) div 2, Self.Top, ButtonWidth, ButtonHeight);
      End;
    End;
  End
  Else
  Begin
    If Parent Is TAsOutlookPage Then
    Begin
      With TAsOutlookPage(Parent) Do
      Begin
        Self.SetBounds(4, Self.Top, Width-2, SmallSize + 6);
      End;
    End;
  End;
End;

end.
