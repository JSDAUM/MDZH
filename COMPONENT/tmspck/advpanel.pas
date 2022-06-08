{*************************************************************************}
{ TAdvPanel component                                                     }
{ for Delphi 3.0,4.0,5.0,6.0 + C++Builder 3.0,4.0,5.0                     }
{ version 1.3, January 2002                                               }
{                                                                         }
{ written by TMS Software                                                 }
{            copyright © 2000-2002                                        }
{            Email : info@tmssoftware.com                                 }
{            Website : http://www.tmssoftware.com/                        }
{                                                                         }
{ The source code is given as is. The author is not responsible           }
{ for any possible damage done due to the use of this code.               }
{ The component can be freely used in any application. The complete       }
{ source code remains property of the author and may not be distributed,  }
{ published, given or sold in any form as such. No parts of the source    }
{ code can be included in any other component or application without      }
{ written authorization of the author.                                    }
{*************************************************************************}

unit AdvPanel;

{$I TMSDEFS.INC}

{$DEFINE REMOVESTRIP}
{$DEFINE REMOVEDRAW}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, AdvImage, Inifiles, Registry, PictureContainer, APXPVS;

type
  TAdvPanel = class;

  TBackGroundPosition = (bpTopLeft,bpTopRight,bpBottomLeft,bpBottomRight,bpTiled,bpStretched,bpCenter);

  TTextVAlignment = (tvaTop,tvaCenter,tvaBottom);

  TAnchorEvent = procedure (Sender:TObject; Anchor:string) of object;

  TAnchorHintEvent = procedure (Sender:TObject;var Anchor:string) of object;

  TPanelPositionLocation = (clRegistry,clInifile);

  TPanelPosition = class(TPersistent)
  private
   FSave: Boolean;
   FKey : string;
   FSection : string;
   {$IFDEF DELPHI4_LVL}
   FLocation: TPanelPositionLocation;
   {$ENDIF}
   FOwner: TComponent;
  public
   constructor Create(AOwner: TComponent);
   destructor Destroy; override;
  published
   property Save: Boolean read FSave write FSave;
   property Key:string read FKey write FKey;
   property Section:string read FSection write FSection;
   {$IFDEF DELPHI4_LVL}
   property Location:TPanelPositionLocation read FLocation write FLocation;
   {$ENDIF}
  end;

  TShadeType =(	stNormal, stNoise, stDiagShade, stHShade, stVShade, stHBump, stVBump,
                stSoftBump, stHardBump, stLMetal, stRMetal, stIRadial, stORadial,
                stHShadeInv, stVShadeInv, stXPCaption, stBitmap, stBitmapRStretch, stBitmapLStretch);
  
  TCaptionShape = (csRectangle,csRounded,csSemiRounded);
  
  TPanelCaption = class(TPersistent)
  private
    FHeight: integer;
    FText: string;
    FColor: TColor;
    FFont: TFont;
    FOwner: TAdvPanel;
    FVisible: boolean;
    FCloseButton: boolean;
    FMinMaxButton: boolean;
    FMinMaxButtonColor: TColor;
    FCloseButtonColor: TColor;
    FMinGlyph: TBitmap;
    FCloseMinGlyph: TBitmap;
    FCloseMaxGlyph: TBitmap;
    FMaxGlyph: TBitmap;
    FCloseColor: TColor;
    FShadeLight: Integer;
    FShadeGrain: Byte;
    FShadeType: TShadeType;
    FShape: TCaptionShape;
    FFlat: Boolean;
    FBackground: TBitmap;
    FIndent: Integer;
    FTop: Integer;
    procedure SetColor(const Value: TColor);
    procedure SetFont(const Value: TFont);
    procedure SetHeight(const Value: integer);
    procedure SetText(const Value: string);
    procedure SetVisible(const Value: boolean);
    procedure SetCloseButton(const Value: boolean);
    procedure SetMinMaxButton(const Value: boolean);
    procedure SetCloseButtonColor(const Value: TColor);
    procedure SetMinMaxButtonColor(const Value: TColor);
    procedure FontChanged(Sender: TObject);
    procedure SetCloseColor(const Value: TColor);
    procedure SetMaxGlyph(const Value: TBitmap);
    procedure SetMinGlyph(const Value: TBitmap);
    procedure SetCloseMaxGlyph(const Value: TBitmap);
    procedure SetCloseMinGlyph(const Value: TBitmap);
    procedure SetShadeLight(const Value: Integer);
    procedure ShadeChanged;
    procedure SetShadeGrain(const Value: Byte);
    procedure SetShadeType(const Value: TShadeType);
    procedure SetCaptionShape(const Value: TCaptionShape);
    procedure SetFlat(const Value: Boolean);
    procedure SetBackground(const Value: TBitmap);
    procedure SetIndent(const Value: Integer);
    procedure SetTopIndent(const Value: Integer);
  public
    constructor Create(aOwner:TAdvPanel);
    destructor Destroy; override;
  published
    property Background: TBitmap read FBackground write SetBackground;
    property Color: TColor read FColor write SetColor;
    property CloseColor: TColor read FCloseColor write SetCloseColor;
    property CloseButton: Boolean read fCloseButton write SetCloseButton;
    property CloseButtonColor: TColor read fCloseButtonColor write SetCloseButtonColor;
    property CloseMinGlyph: TBitmap read FCloseMinGlyph write SetCloseMinGlyph;
    property CloseMaxGlyph: TBitmap read FCloseMaxGlyph write SetCloseMaxGlyph;
    property Flat: Boolean read FFlat write SetFlat;
    property Font: TFont read FFont write SetFont;
    property Height: Integer read FHeight write SetHeight;
    property Indent: Integer read FIndent write SetIndent;
    property MaxGlyph: TBitmap read FMaxGlyph write SetMaxGlyph;
    property MinGlyph: TBitmap read FMinGlyph write SetMinGlyph;
    property MinMaxButton: Boolean read FMinMaxButton write SetMinMaxButton;
    property MinMaxButtonColor: TColor read FMinMaxButtonColor write SetMinMaxButtonColor;
    property ShadeLight: Integer read FShadeLight write SetShadeLight;
    property ShadeGrain: Byte read FShadeGrain write SetShadeGrain;
    property ShadeType: TShadeType read FShadeType write SetShadeType;
    property Shape: TCaptionShape read FShape write SetCaptionShape;
    property Text: string read FText write SetText;
    property TopIndent: Integer read FTop write SetTopIndent;
    property Visible: Boolean read fVisible write SetVisible;
  end;

  TAdvPanel = class(TCustomPanel)
  private
    FText: string;
    FImage:TAdvImage;
    FBackgroundPosition: TBackgroundPosition;
    FCaption: TPanelCaption;
    FImages: TImageList;
    FURLColor: TColor;
    FCollaps: Boolean;
    FFullHeight: Integer;
    FAnchor: string;
    FHoverHyperLink: integer;
    FOldHoverHyperLink: integer;
    FCaptionHoverHyperLink: integer;
    FCurrHoverRect: trect;
    FCaptionCurrHoverRect: trect;
    FAnchorHint: boolean;
    FAnchorExit: TAnchorEvent;
    FAnchorClick: TAnchorEvent;
    FAnchorEnter: TAnchorEvent;
    FHover: boolean;
    FHoverColor: TColor;
    FHoverFontColor: TColor;
    FShadowOffset: Integer;
    FShadowColor: TColor;
    FCanSize: Boolean;
    FCanMove: Boolean;
    FTextVAlign: TTextVAlignment;
    FOnAnchorHint: TAnchorHintEvent;
    FOnClose: TNotifyEvent;
    FOnMinimize: TNotifyEvent;
    FOnMaximize: TNotifyEvent;
    FPosition: TPanelPosition;
    FOnCaptionClick: TNotifyEvent;
    FFixedHeight: Boolean;
    FFixedLeft: Boolean;
    FFixedWidth: Boolean;
    FFixedTop: Boolean;
    FTopLeft: TPoint;
    FWidthHeight: TPoint;
    FOnEndMoveSize: TNotifyEvent;
    FOldCursor: TCursor;
    FInMove: Boolean;
    FContainer: TPictureContainer;
    FImageCache: THTMLPictureCache;
    FShowMoveCursor: Boolean;
    FShadedHeader: TBitmap;
    FIsWinXP: Boolean;
    FFreeOnClose: Boolean;
    procedure SetText(const Value: string);
    procedure SetBackgroundPosition(const Value: TBackgroundPosition);
    procedure SetImage(const Value: TAdvImage);
    procedure BackgroundChanged(sender: TObject);
    procedure SetCaption(const Value: TPanelCaption);
    procedure SetImages(const Value: TImageList);
    procedure SetURLColor(const Value: TColor);
    procedure SetCollaps(const Value: boolean);
    function GetHeightEx: integer;
    procedure SetHeightEx(const Value: integer);
    function IsAnchor(x,y:integer;var hoverrect:TRect):string;
    procedure SetHover(const Value: boolean);
    procedure CMHintShow(Var Msg: TMessage); message CM_HINTSHOW;
    procedure CMMouseLeave(Var Msg: TMessage); message CM_MOUSELEAVE;
    procedure CMMouseEnter(Var Msg: TMessage); message CM_MOUSEENTER;
    procedure WMNCHitTest(var Msg: TWMNCHitTest); message WM_NCHITTEST;
    procedure WMEraseBkGnd(var Message:TMessage); message WM_ERASEBKGND;
    procedure WMSizing(var Msg: TMessage); message WM_SIZING;
    procedure WMSize(var Msg: TMessage); message WM_SIZE;
    procedure WMMoving(var Msg: TMessage); message WM_MOVING;
    procedure WMExitSizeMove(var Msg: TMessage); message WM_EXITSIZEMOVE;
    procedure WMSetCursor(var Msg: TWMSetCursor); message WM_SETCURSOR;
    procedure SetShadowColor(const Value: TColor);
    procedure SetShadowOffset(const Value: integer);
    procedure SetCanSize(const Value: boolean);
    procedure SetTextVAlign(const Value: TTextVAlignment);
    { Private declarations }
  protected
    { Protected declarations }
    procedure CreateParams(var Params: TCreateParams); override;
    procedure Notification(AComponent: TComponent; AOperation: TOperation); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    function DoVisualStyles: Boolean;
    procedure Paint; override;
    procedure DrawCaptionBkg(r: TRect);
    procedure ShadeHeader; virtual;
    procedure WndProc(var Message: TMessage); override;
    procedure CreateWnd; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure SetBounds(ALeft, ATop, AWidth, AHeight: Integer); override;
    destructor Destroy; override;
    procedure Loaded; override;
    procedure LoadPosition;
    procedure SavePosition;
    procedure Synchronize;
  published
    { Published declarations }
    property Align;
    {$IFDEF DELPHI4_LVL}
    property Anchors;
    {$ENDIF}
    property AnchorHint: Boolean read fAnchorHint write fAnchorHint;
    property Background: TAdvImage read FImage write SetImage;
    property BackgroundPosition: TBackgroundPosition read fBackgroundPosition write SetBackgroundPosition;
    property BevelInner;
    property BevelOuter;
    property BevelWidth;
    property BorderStyle;
    property CanMove: Boolean read FCanMove write FCanMove;
    property CanSize: Boolean read FCanSize write SetCanSize;
    property Caption:TPanelCaption read fCaption write SetCaption;
    property Collaps: Boolean read FCollaps write SetCollaps;
    property Color;
    {$IFDEF DELPHI4_LVL}
    property Constraints;
    {$ENDIF}
    property Cursor;
    {$IFDEF DELPHI4_LVL}
    property DockSite;
    {$ENDIF}
    property DragCursor;
    {$IFDEF DELPHI4_LVL}
    property DragKind;
    {$ENDIF}
    property DragMode;
    property Enabled;
    property Font;
    property FixedTop: Boolean read FFixedTop write FFixedTop;
    property FixedLeft: Boolean read FFixedLeft write FFixedLeft;
    property FixedHeight: Boolean read FFixedHeight write FFixedHeight;
    property FixedWidth: Boolean read FFixedWidth write FFixedWidth;
    property FreeOnClose: Boolean read FFreeOnClose write FFreeOnClose;
    property Height: Integer read GetHeightEx write SetHeightEx;
    property HelpContext;
    property Hint;
    property Hover: Boolean read FHover write SetHover;
    property HoverColor: TColor read FHoverColor write FHoverColor;
    property HoverFontColor: TColor read FHoverFontColor write fHoverFontColor;
    property Images: TImageList read FImages write SetImages;
    property Locked;
    property ParentColor;
    property ParentFont;
    property ParentShowHint;
    property PictureContainer: TPictureContainer read FContainer write FContainer;
    property PopupMenu;
    property Position: TPanelPosition read FPosition write FPosition;
    property ShadowColor: TColor read FShadowColor write SetShadowColor;
    property ShadowOffset: Integer read FShadowOffset write SetShadowOffset;
    property ShowHint;
    property ShowMoveCursor: Boolean read FShowMoveCursor write FShowMoveCursor;
    property TabOrder;
    property TabStop;
    property Tag;
    property Text:string read fText write SetText;
    property TextVAlign:TTextVAlignment read fTextVAlign write SetTextVAlign;
    property URLColor:TColor read fURLColor write SetURLColor;
    {$IFDEF DELPHI4_LVL}
    property UseDockManager;
    {$ENDIF}
    property Visible;

    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;

    property OnCaptionClick: TNotifyEvent read FOnCaptionClick write FOnCaptionClick;
    property OnAnchorClick:TAnchorEvent read FAnchorClick write FAnchorClick;
    property OnAnchorEnter:TAnchorEvent read FAnchorEnter write FAnchorEnter;
    property OnAnchorExit:TAnchorEvent read FAnchorExit write FAnchorExit;
    property OnAnchorHint:TAnchorHintEvent read FOnAnchorHint write FOnAnchorHint;
    {$IFDEF DELPHI4_LVL}
    property OnCanResize;
    {$ENDIF}
    property OnClick;
    property OnClose: TNotifyEvent read fOnClose write fOnClose;
    {$IFDEF DELPHI4_LVL}
    property OnConstrainedResize;
    {$ENDIF}
    {$IFDEF DELPHI5_LVL}
    property OnContextPopup;
    {$ENDIF}
    property OnDblClick;
    {$IFDEF DELPHI4_LVL}
    property OnDockDrop;
    property OnDockOver;
    {$ENDIF}
    property OnDragDrop;
    property OnDragOver;
    {$IFDEF DELPHI4_LVL}
    property OnEndDock;
    {$ENDIF}
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    {$IFDEF DELPHI4_LVL}
    property OnGetSiteInfo;
    {$ENDIF}
    property OnEndMoveSize: TNotifyEvent read FOnEndMoveSize write FOnEndMoveSize;
    property OnMinimize: TNotifyEvent read FOnMinimize write FOnMinimize;
    property OnMaximize: TNotifyEvent read FOnMaximize write FOnMaximize;
    property OnResize;
    {$IFDEF DELPHI4_LVL}
    property OnStartDock;
    {$ENDIF}
    property OnStartDrag;
    {$IFDEF DELPHI4_LVL}
    property OnUnDock;
    {$ENDIF}
  end;

  TGroupStyle = (gsVertical, gsHorizontal);

  TAdvPanelGroup = class(TAdvPanel)
  private
    FHorzPadding: Integer;
    FVertPadding: Integer;
    FGroupStyle: TGroupStyle;
    FIsArranging: Boolean;
    FScrollBar: TScrollBar;
    procedure WMSize(var Msg: TMessage); message WM_SIZE;
    procedure SetHorzPadding(const Value: Integer);
    procedure SetVertPadding(const Value: Integer);
    procedure SetGroupStyle(const Value: TGroupStyle);
  protected
    procedure ArrangeControlsVert;
    procedure ArrangeControlsHorz;    
    procedure ArrangeControls;
    procedure Scroll(Sender: TObject);
    function PanelHeights: Integer;
    function PanelWidths: Integer;
    procedure UpdateScrollbar;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Loaded; override;
    procedure ChildPanelChanged(APanel: TAdvPanel);
    property IsArranging: Boolean read FIsArranging;
    procedure SetBounds(ALeft, ATop, AWidth, AHeight: Integer); override;
    procedure OpenAllPanels;
    procedure CloseAllPanels;
  published
    property GroupStyle: TGroupStyle read FGroupStyle write SetGroupStyle;
    property HorzPadding: Integer read FHorzPadding write SetHorzPadding;
    property VertPadding: Integer read FVertPadding write SetVertPadding;
  end;

implementation

uses
 {$IFDEF DELPHI4_LVL} ImgList,{$ENDIF} ShellApi, Commctrl, Math;

{$I HTMLENGO.PAS}

{ TAdvPanel }

procedure TAdvPanel.BackgroundChanged(Sender: TObject);
begin
  Invalidate;
end;

constructor TAdvPanel.Create(AOwner: TComponent);
var
  dwVersion:Dword;
  dwWindowsMajorVersion,dwWindowsMinorVersion:Dword;
begin
  inherited;
  FImage := TAdvImage.Create;
  FCaption := TPanelCaption.Create(Self);
  FImage.OnChange := BackgroundChanged;
  FURLColor := clBlue;
  FHoverColor := clNone;
  FHoverFontColor := clNone;
  FShadowColor := clGray;
  FShadowOffset := 2;
  FPosition := TPanelPosition.Create(Self);
  FImageCache := THTMLPictureCache.Create;
  {$IFDEF DELPHI4_LVL}
  DoubleBuffered := True;
  {$ENDIF}
  FShadedHeader := TBitmap.Create;

  dwVersion := GetVersion;
  dwWindowsMajorVersion :=  DWORD(LOBYTE(LOWORD(dwVersion)));
  dwWindowsMinorVersion :=  DWORD(HIBYTE(LOWORD(dwVersion)));

  FIsWinXP := (dwWindowsMajorVersion > 5) OR
    ((dwWindowsMajorVersion = 5) AND (dwWindowsMinorVersion >= 1));
end;

destructor TAdvPanel.Destroy;
begin
  FImage.Free;
  FCaption.Free;
  FPosition.Free;
  FImageCache.Free;
  FShadedHeader.Free;
  inherited;
end;

procedure TAdvPanel.MouseDown(Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
var
  r,hr: TRect;
  anchor: string;
  GW: Integer;

begin
  inherited;

  if FCaption.Visible then
  begin
    r := ClientRect;

    if not FCaption.CloseMinGlyph.Empty and not FCaption.CloseMaxGlyph.Empty then
      GW := FCaption.CloseMinGlyph.Width
    else
      GW := 12;

    if (FCaption.ShadeType = stXPCaption) and DoVisualStyles then
      GW := 16;

    if PtInRect(Rect(r.Right-2-GW,r.Top+2,r.Right-2,r.Top+2+GW),point(x,y)) and FCaption.CloseButton then
    begin
      Visible := False;
      if Assigned(FOnClose) then
        FOnClose(Self);
      Synchronize;
      
      if FreeOnClose then
      begin
        Free;
        Exit;
      end;  
    end;

    if FCaption.CloseButton then
      r.Right := r.Right - GW;

    if PtInRect(Rect(r.Right-2-GW,r.Top+2,r.Right-2,r.Top+2+GW),point(x,y)) and FCaption.MinMaxButton then
    begin
      Collaps := not Collaps;
    end;

    if PtInRect(rect(r.left,r.Top,r.Right-2,r.Top + FCaption.Height),point(x,y)) then
    begin
      if Assigned(FOnCaptionClick) then
        FOnCaptionClick(Self);
    end;

   end;

  Anchor := IsAnchor(X,Y,hr);
  if Anchor <> '' then
  begin
    if (Pos('://',Anchor)>0) or (Pos('mailto:',Anchor)>0) then
      ShellExecute(0,'open',PChar(Anchor),nil,nil,SW_NORMAL)
    else
      begin
        if Assigned(FAnchorClick) then
          FAnchorClick(Self,Anchor);
      end;
  end;
end;

procedure TAdvPanel.ShadeHeader;
var
  a,x,y,xs,i,j,h,k,s,sizeX,sizeY: Integer;
  d : TColor;
  R: Trect;
  Light: Byte;
  rr,br,gr: Integer;

  function Dist(x1,y1,x2,y2: Integer): Integer;
  begin
    Result := Round(sqrt( sqr(x1-x2) + sqr(y1 - y2)));
  end;

begin
  rr := GetRValue(ColorToRGB(FCaption.Color));
  gr := GetGValue(ColorToRGB(FCaption.Color));
  br := GetBValue(ColorToRGB(FCaption.Color));

  Light := FCaption.ShadeLight;
  FShadedHeader.Width := Width;
  FShadedHeader.Height := FCaption.FHeight;

  Randomize;
  SizeX := FShadedHeader.Width;
  SizeY := FShadedHeader.Height;
  FShadedHeader.Canvas.Brush.Color := clWhite;
  r := Rect(0,0,SizeX,SizeY);
  FShadedHeader.Canvas.FillRect(r); //clear the bitmap

  case FCaption.ShadeType of
  stIRADIAL,stORADIAL:
    begin
      h := Dist(0,SizeX,0,SizeY);
      x := sizeX div 2;
      y := sizeY div 2;

      for i := 0 to x do
        for j := 0 to y do
        begin
          k := Dist(i,j,x,y);

          if FCaption.ShadeType = stIRADIAL then
            k := Round((h - k) / h * Light)
          else
            k := Round(k / h * Light);

          d := RGB( (rr*k) div 255,(gr*k) div 255,(br*k) div 255);

          FShadedHeader.Canvas.Pixels[i,j] := d;
          FShadedHeader.Canvas.Pixels[sizex - i,sizey - j] := d;
          FShadedHeader.Canvas.Pixels[sizex - i,j] := d;
          FShadedHeader.Canvas.Pixels[i,sizey - j] := d;
        end;
    end;
  stLMETAL,stRMETAL:
    begin
      for a := 0 to 250 do
      begin
        x := Random(sizeX);
        y := Random(sizeY);
        xs := Random(Min(sizeX,sizeY) div 2);
        i := Light - Random(40);
        d := RGB( (rr*i) div 255,(gr*i) div 255,(br*i) div 255);
        for i := 0 to xs - 1 do
        begin
          if FCaption.ShadeType = stLMetal then
          begin
            if (((x-i)>0)and((y+i)<sizeY)) then
              FShadedHeader.Canvas.Pixels[x + i,y + i] := d;
            if (((x+i)<sizeX)and((y-i)>0)) then
              FShadedHeader.Canvas.Pixels[x - i,y - i] := d;
          end
          else
          begin
            if (((x-i)>0)and((y+i)<sizeY)) then
              FShadedHeader.Canvas.Pixels[x - i,y + i] := d;
            if (((x+i)<sizeX)and((y-i)>0)) then
              FShadedHeader.Canvas.Pixels[x + i,y - i] := d;
          end;
        end;
      end;
      a := 120;
      for i := 0 to sizeX do
        for j := 0 to sizeY do
        begin
          d := FShadedHeader.Canvas.Pixels[i,j];
          x := GetBValue(d);
          x := Light - x;
          x := x + ((a*i) div sizeX)+((a*j) div sizeY);
          x := Light - x div 2;
          d := RGB( (rr*x) div 255,(gr*x) div 255,(br*x) div 255);
          FShadedHeader.Canvas.Pixels[i,j] := d;
        end;
    end;
  stHARDBUMP:
    begin
      for i := 0 to sizeY do
      begin
        x := (255*i div sizeY)-127;
        x := (x*(x*x) div 128) div 128;
        x := ((x*112) div 128) +128;
        for j:= 0 to sizeX do
        begin
          y := Light - x div 2; //offset
          d := RGB( (rr*y) div 255,(gr*y) div 255,(br*y) div 255);
          FShadedHeader.Canvas.Pixels[j,i] := d;
        end;
      end;
      k := min(16, sizeX div 6);
      a := (sizeY*sizeY) div 4;
      for i := 0 to sizeY do
      begin
        y := i - sizeY div 2;
        for j := 0 to sizeX do
        begin
          x  := j - sizeX div 2;
          xs := sizeX div 2 - k + (y*y*k) div a;
          if (x > xs)   then
          begin
            s := 8 + (((sizeX-j)*128) div k);
            s := Light - s div 2;//offset
            d := RGB( (rr*s) div 255,(gr*s) div 255,(br*s) div 255);
            FShadedHeader.Canvas.Pixels[j,i] := d;
          end;
          if (x + xs) < 0   then
          begin
            s := 247 - ((j*128) div k);
            s := Light - s div 2;//offset
            d := RGB( (rr*s) div 255,(gr*s) div 255,(br*s) div 255);
            FShadedHeader.Canvas.Pixels[j,i] := d;
          end;
        end;
      end;
    end;
  stSOFTBUMP:
    begin
      for i := 0 to sizeY do
      begin
        h := ((255 * i) div sizeY) - 127;
        for j := 0 to sizeX do
        begin
          k := 255 * (sizeX - j) div sizeX - 127;
          k := ((h * (h * h)) div 128) div 128 + (k * ( k * k) div 128) div 128;
          k := k * (128 - 8) div 128 + 128;
          if (k < 8)  then k := 8;
          if (k > 247) then k := 247;
          s := Light - k div 2;  //offset
          d := RGB( (rr*s) div 255,(gr*s) div 255,(br*s) div 255);
          FShadedHeader.Canvas.Pixels[j,i] := d;
        end;
      end;
    end;
  stHBUMP:
    begin
      for j := 0 to sizeX do
      begin
        k := (255*(sizeX - j)div sizeX)-127;
        k := (k*(k*k)div 128)div 128;
        k := (k*(128 - 8))div 128 + 128;
        for i := 0 to sizeY do
        begin
          s := Light - k div 2;//offset
          d := RGB( (rr*s) div 255,(gr*s) div 255,(br*s) div 255);
          FShadedHeader.Canvas.Pixels[j,i] := d;
        end;
      end;
    end;
  stVBUMP:
    begin
      for i := 0 to sizeY do
      begin
        k := (255*i div sizeY)-127;
        k := (k*(k*k)div 128)div 128;
        k := (k*(128 - 8))div 128 + 128;
        for j := 0 to sizeX do
        begin
          s := Light - k div 2;//offset
          d := RGB( (rr*s) div 255,(gr*s) div 255,(br*s) div 255);
          FShadedHeader.Canvas.Pixels[j,i] := d;
        end;
      end;
    end;
  stDIAGSHADE:
    begin
      a := 129;
      for i := 0 to sizeX do
        for j := 0 to sizeY do
        begin
          d := FShadedHeader.Canvas.Pixels[i,j];
          x := GetBValue(d);
          x := Light-x;
          x := x+((a*i) div sizeX)+((a*j) div sizeY);
          x := Light-x div 2;//offset
          d := RGB( (rr*x) div 255,(gr*x) div 255,(br*x) div 255);
          FShadedHeader.Canvas.Pixels[i,j] := d;
        end;
      end;
  stVSHADE,stVSHADEInv:
    begin
      a := 239;
      for i := 0 to sizeY do
      begin
        k := a * i div sizeY +8;
        k := Light-k div 2;//offset
        d := RGB( (rr*k) div 255,(gr*k) div 255,(br*k) div 255);
        for j := 0 to sizeX do
          if FCaption.ShadeType = stVSHADEInv then
            FShadedHeader.Canvas.Pixels[j,i] := d
          else
            FShadedHeader.Canvas.Pixels[sizeX - j,i] := d
      end;
    end;
  stHSHADE,stHShadeInv:
    begin
      a := 239;
      for j := 0 to sizeX do
      begin
        k := a * (sizeX-j) div sizeX +8;
        k := Light-k div 2;//offset
        d := RGB( (rr*k) div 255,(gr*k) div 255,(br*k) div 255);
        for i := 0 to sizeY do
          if FCaption.ShadeType = stHSHADE then
            FShadedHeader.Canvas.Pixels[j,i] := d
          else
            FShadedHeader.Canvas.Pixels[sizeX - j,i] := d
      end;
    end;
  stNOISE:
    begin
      for i := 0 to sizeX do
        for j := 0 to sizeY do
        begin
          k := 128 + random(FCaption.ShadeGrain) ;
          k := Light-k div 2;//offset
          d := RGB( (rr*k) div 255,(gr*k) div 255,(br*k) div 255);
          FShadedHeader.Canvas.Pixels[i,j] := d;
        end;
      end;
  stNORMAL,stXPCaption, stBitmap, stBitmapLStretch, stBitmapRStretch:
    begin  //for normal we use the panel caption color
      FShadedHeader.Canvas.Brush.Color:= FCaption.Color;
      FShadedHeader.Canvas.FillRect(r);
    end;
  end;
end;

procedure TAdvPanel.DrawCaptionBkg(r: TRect);
var
  tRgn,rgn1,rgn2: HRGN;
  BorderColor1, BorderColor2: TColor;
  ind: Integer;
  HTheme: THandle;
begin

  BorderColor1 := clWhite;
  BorderColor2 := clGray;

  if (FCaption.ShadeType = stXPCaption) and DoVisualStyles then
  begin
    HTheme := OpenThemeData(Handle,'window');
    InflateRect(r,1,1);
    //Hot := Panel.Index = FMousePanel;
    //Down := Hot and FMouseDown;
    DrawThemeBackground(HTheme,Canvas.Handle,WP_CAPTION,CS_ACTIVE,@r,nil);
    CloseThemeData(HTheme);
  end;


  if (FCaption.ShadeType in [stBitmap, stBitmapLStretch, stBitmapRStretch]) then
  begin
    if not FCaption.Background.Empty then
    begin
      if FCaption.ShadeType = stBitmapLStretch then
      begin
        ind := Width - FCaption.Background.Width;
        if ind < 0 then ind := 0;
        Canvas.Draw(r.Left + Ind, r.Top, FCaption.Background);

        Canvas.CopyRect(Rect(0,r.Top,Ind,R.Bottom),FCaption.Background.Canvas,
          Rect(0,0,2,FCaption.Background.Height));
      end;

      if FCaption.ShadeType = stBitmapRStretch then
      begin
        ind := FCaption.Background.Width;

        Canvas.Draw(r.Left, r.Top, FCaption.Background);

        Canvas.CopyRect(Rect(ind,r.Top,R.Right,R.Bottom),FCaption.Background.Canvas,
          Rect(FCaption.Background.Width -3 ,0,FCaption.Background.Width,FCaption.Background.Height));
      end;

      if FCaption.ShadeType = stBitmap then
      begin
        Canvas.StretchDraw(r,FCaption.Background);
      end;
    end;
  end;


  if not (FCaption.ShadeType in [stXPCaption, stBitmap, stBitmapLStretch, stBitmapRStretch]) then
  begin
    trgn := 0;
    rgn1 := 0;
    rgn2 := 0;
    
    case FCaption.Shape of
    csRectangle:
      begin
        if not FCaption.Flat then
        begin
          Canvas.Pen.Color := BorderColor2;         //lines for 3D effect
          Canvas.MoveTo(R.Left,R.Bottom - 1);
          Canvas.LineTo(R.Right - 1,R.Bottom - 1);
          Canvas.LineTo(R.Right - 1,R.Top);
          Canvas.Pen.Color := BorderColor1;
          Canvas.LineTo(R.Left,R.Top);
          Canvas.LineTo(R.Left,R.Bottom - 1);
          InflateRect(R,-1,-1);
        end;

        tRgn := CreateRectRgn(R.Left,R.Top,R.Right,R.Bottom);
      end;                    //standard rectangle
    csRounded:
      begin
        Canvas.Pen.Color := BorderColor2;         //Round Rects for 3D effect
        tRgn := CreateRoundRectRgn(R.Left,R.Top+(r.Bottom-r.Top)div 2,R.Right,R.Bottom,32,32);
        SelectClipRgn(Canvas.Handle,tRgn);
        Canvas.RoundRect(R.Left,R.Top,R.Right,R.Bottom,32,32);
        Canvas.Pen.Color := BorderColor1;
        tRgn := CreateRoundRectRgn(R.Left,R.Top,R.Right,R.Bottom-(r.Bottom-r.Top)div 2,32,32);
        SelectClipRgn(Canvas.Handle,0);
        DeleteObject(tRgn);

        Canvas.RoundRect(R.Left,R.Top,R.Right,R.Bottom,32,32);
        tRgn := CreateRectRgn(0,0,Width,height);
        SelectClipRgn(Canvas.Handle,tRgn);
        Canvas.Pen.Color := BorderColor2;
        Canvas.MoveTo(R.Left + 16,r.Bottom - 1);
        Canvas.LineTo(r.Right - 16,r.Bottom - 1);
        R.Top := R.Top + 1;
        SelectClipRgn(Canvas.Handle,0);
        DeleteObject(tRgn);
        tRgn := CreateRoundRectRgn(R.Left,R.Top,R.Right,R.Bottom,32,32);
      end;              //round rectangle
    csSemiRounded:
      begin
        Canvas.Pen.Color := BorderColor2;     //Round Rects for 3D effect
        tRgn := CreateRoundRectRgn(R.Left,R.Top + (r.Bottom - r.Top)div 2,R.Right,R.Bottom,32,32);
        SelectClipRgn(Canvas.Handle,tRgn);
        Canvas.RoundRect(R.Left,R.Top,R.Right,R.Bottom,32,32);
        Canvas.Pen.Color := BorderColor1;
        SelectClipRgn(Canvas.Handle,0);
        DeleteObject(tRgn);
        tRgn := CreateRoundRectRgn(R.Left,R.Top,R.Right,R.Bottom-(r.Bottom - r.Top)div 2,32,32);
        SelectClipRgn(Canvas.Handle,tRgn);
        Canvas.RoundRect(R.Left,R.Top,R.Right,R.Bottom,32,32);
        SelectClipRgn(Canvas.Handle,0);
        DeleteObject(tRgn);
        tRgn := CreateRectRgn(0,0,Width,height);
        SelectClipRgn(Canvas.Handle,tRgn);
        Canvas.Pen.Color := BorderColor1;          //Lines for 3D effect
        Canvas.MoveTo(R.Left + (r.Right - r.Left)div 2,r.Top);
        Canvas.LineTo(R.Left,r.Top);
        Canvas.LineTo(R.Left,r.Bottom - 1);
        Canvas.Pen.Color := BorderColor2;
        Canvas.LineTo(r.Right - 16,r.Bottom - 1);
        SelectClipRgn(Canvas.Handle,0);
        DeleteObject(tRgn);
        R.Top := R.Top + 1;
        R.Left := R.Left + 1;
        rgn1 := CreateRoundRectRgn(R.Left,R.Top,R.Right,R.Bottom,32,32);
        rgn2  := CreateRectRgn(R.Left,R.Top,R.Right-(r.Right-r.Left)div 2,R.Bottom-1);
        CombineRgn(tRgn,rgn1,rgn2,RGN_OR);//round rectangle + rectangle
      end;
    end;

    SelectClipRgn(Canvas.Handle,tRgn);    //Set the Canvas Clip region
    Canvas.Draw(R.Left ,R.Top ,FShadedHeader);  //Put the shade

    SelectClipRgn(Canvas.Handle,0);   //Restore the Canvas Clip region
    DeleteObject(tRgn);
    if FCaption.Shape = csSemiRounded then
    begin
      DeleteObject(rgn1);
      DeleteObject(rgn2);
    end;
  end;
end;


procedure TAdvPanel.Paint;
var
  a,s,fa:string;
  xsize,ysize:integer;
  r,hr,cr:trect;
  xo,yo,hl,ml:integer;
  hrgn:THandle;
  TopColor, BottomColor: TColor;
  HTheme: THandle;
  sz: TSize;

  procedure AdjustColors(Bevel: TPanelBevel);
  begin
    TopColor := clBtnHighlight;
    if Bevel = bvLowered then TopColor := clBtnShadow;
    BottomColor := clBtnShadow;
    if Bevel = bvLowered then BottomColor := clBtnHighlight;
  end;

  function Max(a,b:integer):integer;
  begin
    if a>b then result:=a else result:=b;
  end;

begin
  R := ClientRect;

  if BevelOuter <> bvNone then
  begin
    AdjustColors(BevelOuter);
    Frame3D(Canvas, R, TopColor, BottomColor, BevelWidth);
  end;

  Frame3D(Canvas, R, Color, Color, BorderWidth);

  if BevelInner <> bvNone then
  begin
    AdjustColors(BevelInner);
    Frame3D(Canvas, R, TopColor, BottomColor, BevelWidth);
  end;

  Canvas.Brush.Color := Color;
  Canvas.Pen.Color := Color;

  if FCaption.Visible then
    R.top := R.Top + FCaption.Height - 2 * BevelWidth;

  Canvas.Rectangle(R.left,R.top,R.right,R.bottom);

  hrgn := CreateRectRgn(R.left, R.top, R.right,R.bottom);
  SelectClipRgn(Canvas.handle, hrgn);

  if Assigned(FImage) then
  begin
    if not fImage.Empty then
    case fBackgroundPosition of
    bpTopLeft:Canvas.Draw(r.left,r.top,fImage);
    bpTopRight:Canvas.Draw(Max(r.left,width-fImage.Width-BevelWidth),r.top,fImage);
    bpBottomLeft:Canvas.Draw(r.left,Max(r.top,height-fImage.Height-BevelWidth),fImage);
    bpBottomRight:Canvas.Draw(Max(r.left,width-fImage.Width-BevelWidth),Max(r.top,height-fImage.Height-BevelWidth),fImage);
    bpCenter:Canvas.Draw(Max(r.left,width-fImage.Width-BevelWidth) shr 1,Max(r.top,height-fImage.Height-BevelWidth) shr 1,fImage);
    bpTiled:begin
              yo:=r.top;
              while (yo<Height) do
              begin
                xo:=r.left;
                while (xo<Width) do
                begin
                  Canvas.Draw(xo,yo,FImage);
                  xo:=xo+fImage.Width;
                end;
                yo:=yo+fImage.Height;
              end;
            end;
    bpStretched:Canvas.StretchDraw(R,FImage);
    else
    end;
  end;

  if FTextVAlign in [tvaCenter,tvaBottom] then
  begin
    HTMLDrawEx(Canvas,Text,r,fImages,0,0,-1,fHoverHyperLink,fShadowOffset,true,false,false,false,false,fHover,true,1.0,fURLColor,fHoverColor,fHoverFontColor,fShadowColor,a,s,fa,
                      xsize,ysize,hl,ml,hr,FImageCache,FContainer);

    if FCaption.Visible then r.top:=r.top+fCaption.Height-2*BevelWidth;

    if ysize<(r.bottom-r.top) then
    case fTextVAlign of
    tvaCenter:r.top:=r.top+(((r.bottom-r.top)-ysize) shr 1);
    tvaBottom:r.top:=r.bottom-ysize;
    end;
  end;

  Canvas.Font.Assign(self.Font);

  HTMLDrawEx(Canvas,Text,r,fImages,0,0,-1,FHoverHyperLink,FShadowOffset,false,false,false,false,false,fHover,true,1.0,fURLColor,fHoverColor,fHoverFontColor,fShadowColor,a,s,fa,
                    xsize,ysize,hl,ml,hr,FImageCache,FContainer);

  SelectClipRgn(Canvas.handle, 0);
  DeleteObject(hrgn);

  if FCaption.Visible then
  begin
    r := ClientRect;
    
    if (bevelInner<>bvNone) or (bevelOuter<>bvNone) then
      Inflaterect(r,-BevelWidth,-BevelWidth);

    if not FCollaps then
    begin
      Canvas.Brush.Color := FCaption.Color;
      Canvas.Pen.Color := FCaption.Color;
    end
    else
    begin
      Canvas.Brush.Color := FCaption.CloseColor;
      Canvas.Pen.Color := FCaption.CloseColor;
    end;

    // Canvas.RoundRect(r.left,r.top,r.right,r.top+fCaption.Height,10,10);

    if (FCaption.ShadeType = stNormal) or
       ((FCaption.ShadeType = stXPCaption) and not DoVisualStyles) then
      Canvas.Rectangle(r.left,r.top,r.right,r.top+fCaption.Height - 2 * BevelWidth)
    else
      DrawCaptionBkg(Rect(r.left,r.Top,r.Right,r.Top + FCaption.Height - 2 * BevelWidth));

    if FCaption.CloseButton then
    begin
      if (FCaption.ShadeType = stXPCaption) and DoVisualStyles then
      begin
        HTheme := OpenThemeData(Handle,'window');
        sz.Cx := 14;
        sz.Cy := 14;
        cr := Rect(r.Right - sz.cx - 2, r.Top + 4,r.Right - 2, r.Top + Sz.cY + 4);
        DrawThemeBackground(HTheme,Canvas.Handle,WP_CLOSEBUTTON,CS_ACTIVE,@cr,nil);
        CloseThemeData(HTheme);
        r.Right := r.Right - 14;
      end
      else
      begin
        if FCaption.CloseMinGlyph.Empty or FCaption.CloseMaxGlyph.Empty then
        begin
          Canvas.Pen.Width := 2;
          Canvas.Pen.Color := FCaption.FCloseButtonColor;
          Canvas.MoveTo(r.Right - 10,r.Top + 4);
          Canvas.LineTo(r.Right - 4,r.Top + 10);
          Canvas.MoveTo(r.Right - 4,r.Top + 4);
          Canvas.LineTo(r.Right - 10,r.Top + 10);
          r.Right := r.Right - 12;
        end
        else
        begin
          if FCollaps then
          begin
            FCaption.CloseMinGlyph.TransparentMode := tmAuto;
            FCaption.CloseMinGlyph.Transparent := true;

            Canvas.Draw(r.Right - FCaption.CloseMinGlyph.Width,r.Top + 2,FCaption.CloseMinGlyph);
            r.Right := r.Right - FCaption.CloseMinGlyph.Width;
          end
          else
          begin
            FCaption.CloseMaxGlyph.TransparentMode := tmAuto;
            FCaption.CloseMaxGlyph.Transparent := true;

            Canvas.Draw(r.Right - FCaption.CloseMaxGlyph.Width,r.Top + 2,FCaption.CloseMaxGlyph);
            r.Right := r.Right - FCaption.CloseMaxGlyph.Width;
          end;
        end;  
      end;
    end;

    if FCaption.MinMaxButton and FCollaps then
    begin
      if (FCaption.ShadeType = stXPCaption) and DoVisualStyles then
      begin
        HTheme := OpenThemeData(Handle,'window');
        sz.Cx := 14;
        sz.Cy := 14;
        cr := Rect(r.Right - sz.cx - 2, r.Top + 4,r.Right - 2, r.Top + Sz.cY + 4);
        DrawThemeBackground(HTheme,Canvas.Handle,WP_MAXBUTTON,CS_ACTIVE,@cr,nil);
        CloseThemeData(HTheme);
      end
      else
      begin
        if FCaption.MaxGlyph.Empty then
        begin
          Canvas.Pen.Width := 1;
          Canvas.Pen.Color := FCaption.fMinMaxButtonColor;
          Canvas.Brush.Color := FCaption.fMinMaxButtonColor;
          Canvas.Polygon([point(r.Right-10,r.top+5),point(r.right-4,r.top+5),point(r.right-7,r.top+8)]);
        end
        else
        begin
          FCaption.MaxGlyph.TransparentMode := tmAuto;
          FCaption.MaxGlyph.Transparent := true;

          Canvas.Draw(r.Right - FCaption.MaxGlyph.Width,r.Top + 2,FCaption.MaxGlyph);
        end;
      end;
    end;

    if FCaption.MinMaxButton and not FCollaps then
    begin
      if (FCaption.ShadeType = stXPCaption) and DoVisualStyles then
      begin
        HTheme := OpenThemeData(Handle,'window');
        sz.Cx := 14;
        sz.Cy := 14;
        cr := Rect(r.Right - sz.cx - 2, r.Top + 4,r.Right - 2, r.Top + Sz.cY + 4);
        DrawThemeBackground(HTheme,Canvas.Handle,WP_MINBUTTON,CS_ACTIVE,@cr,nil);
        CloseThemeData(HTheme);
      end
      else
      begin
        if FCaption.MinGlyph.Empty then
        begin
          Canvas.Pen.Width := 1;
          Canvas.Pen.Color := FCaption.fMinMaxButtonColor;
          Canvas.Brush.Color := FCaption.fMinMaxButtonColor;
          Canvas.Polygon([Point(r.Right-10,r.top+8),point(r.right-4,r.top+8),point(r.right-7,r.top+5)]);
        end
        else
        begin
          FCaption.MinGlyph.TransparentMode := tmAuto;
          FCaption.MinGlyph.Transparent := true;
          Canvas.Draw(r.Right - FCaption.MinGlyph.Width,r.Top + 2,FCaption.MinGlyph);
        end;
      end;  
    end;

    if FCaption.CloseButton then r.Right := r.Right - 20;
    if FCaption.MinMaxButton then r.Right := r.Right - 20;

    r.Bottom := r.Top + FCaption.Height;

    Canvas.Font.Assign(fCaption.Font);

    r.Left := r.Left + FCaption.Indent;
    r.Top := r.Top + FCaption.TopIndent;

    HTMLDrawEx(Canvas,FCaption.Text,r,fImages,0,0,-1,fCaptionHoverHyperLink,fShadowOffset,false,false,false,false,false,fHover,true,1.0,
      FURLColor,fHoverColor,fHoverFontColor,fShadowColor,a,s,fa,xsize,ysize,hl,ml,hr,FImageCache,FContainer);
  end;

  if not Collaps and FCanSize then
  begin
    r := ClientRect;
    if (bevelInner<>bvNone) or (bevelOuter<>bvNone) then
      Inflaterect(r,-2*BevelWidth,-2*BevelWidth);

    r.left:=r.right-GetSystemMetrics(SM_CXVSCROLL);
    r.top:=r.bottom-GetSystemMetrics(SM_CXHSCROLL);

    with Canvas do
    begin
      Pen.Color:=clGray;
      Pen.Width:=2;
      MoveTo(r.right,r.bottom-11);
      Lineto(r.right-11,r.bottom);
      MoveTo(r.right,r.bottom-6);
      Lineto(r.right-7,r.bottom);
      MoveTo(r.right,r.bottom-3);
      Lineto(r.right-3,r.bottom);

      Pen.Color:=clWhite;
      Pen.Width:=1;
      MoveTo(r.right,r.bottom-12);
      Lineto(r.right-12,r.bottom);
      MoveTo(r.right,r.bottom-8);
      Lineto(r.right-8,r.bottom);
      MoveTo(r.right,r.bottom-4);
      Lineto(r.right-4,r.bottom);
    end;
  end;
end;

procedure TAdvPanel.SetBackgroundPosition(
  const Value: TBackgroundPosition);
begin
  FBackgroundPosition := Value;
  Invalidate;
end;

procedure TAdvPanel.SetCaption(const Value: TPanelCaption);
begin
  FCaption.Assign(Value);
end;

procedure TAdvPanel.SetImage(const Value: TAdvImage);
begin
  FImage.Assign(Value);
  Invalidate;
end;

procedure TAdvPanel.SetImages(const Value: TImageList);
begin
  FImages := Value;
  Invalidate;
end;

procedure TAdvPanel.Notification(AComponent: TComponent;
  AOperation: TOperation);
begin
  if (AOperation = opRemove) and (AComponent = FImages) then
    FImages := nil;

  if (AOperation = opRemove) and (AComponent = FContainer) then
    FContainer := nil;
  inherited;
end;

procedure TAdvPanel.SetText(const Value: string);
begin
  FText := Value;
  Invalidate;
end;

procedure TAdvPanel.SetURLColor(const Value: TColor);
begin
  FURLColor := Value;
  Invalidate;
end;

procedure TAdvPanel.SetCollaps(const Value: boolean);
begin
  if FCollaps and Assigned(FOnMaximize) then
    FOnMaximize(Self);
  if not FCollaps and Assigned(FOnMinimize) then
    FOnMinimize(Self);

  FCollaps := Value;
  if not (csLoading in ComponentState) then
  begin
    if FCollaps then
      Height := FCaption.Height
    else
      Height := FFullHeight;

    Synchronize;  
  end;
end;

procedure TAdvPanel.Loaded;
begin
  inherited;
  FFullHeight := Height;

  if Collaps then Collaps := Collaps;

  if FPosition.Save then LoadPosition;

  FTopLeft := ClientOrigin;
  FWidthHeight := Point(Width, Height);
  FOldCursor := Cursor;
end;

function TAdvPanel.GetHeightEx: integer;
begin
  Result := inherited Height;
end;

procedure TAdvPanel.SetHeightEx(const Value: integer);
begin
  inherited Height := Value;
  if not FCollaps then FFullHeight := Value;
end;

function TAdvPanel.IsAnchor(x, y: integer; var HoverRect: TRect): string;
var
  r,hr: TRect;
  xsize,ysize: Integer;
  a,s,fa: string;
  hl,ml: Integer;
  DrwRes: Boolean;
begin
  Result := '';

  r := Clientrect;

  if (bevelInner <> bvNone) or (bevelOuter <> bvNone) then
  begin
    InflateRect(r,-BevelWidth,-BevelWidth);
  end;

  a := '';

  Canvas.Font.Assign(Font);

  if FTextVAlign in [tvaCenter,tvaBottom] then
  begin
    HTMLDrawEx(Canvas,Text,r,fImages,0,0,-1,fHoverHyperLink,fShadowOffset,true,false,false,false,false,fHover,true,1.0,
      fURLColor,fHoverColor,fHoverFontColor,fShadowColor,a,s,fa,xsize,ysize,hl,ml,hr,FImageCache,FContainer);
  end;

  if FCaption.Visible and (y < FCaption.Height) then
  begin
    r.Bottom := r.Top + FCaption.Height;

    if FTextVAlign in [tvaCenter,tvaBottom] then
    begin
      if ysize < (r.Bottom - r.Top) then
      case FTextVAlign of
      tvaCenter:r.Top := r.Top + (((r.Bottom - r.Top) - ysize) shr 1);
      tvaBottom:r.Top := r.Bottom - ysize;
      end;
    end;

    DrwRes := HTMLDrawEx(Canvas,FCaption.Text,r,fImages,x,y,-1,-1,2,true,false,false,false,false,false,true,1.0,
      FURLColor,clBlue,clRed,clgray,a,s,fa,xsize,ysize,hl,FCaptionHoverHyperlink,hoverrect,FImageCache,FContainer);
  end
  else
  begin
    if FCaption.Visible then
      r.Top := r.Top + FCaption.Height;

    if FTextVAlign in [tvaCenter,tvaBottom] then
    begin
      if ysize < (r.Bottom - r.Top) then
      case fTextVAlign of
      tvaCenter:r.Top := r.top + (((r.Bottom - r.Top) - ysize) shr 1);
      tvaBottom:r.Top := r.bottom - ysize;
      end;
    end;

    DrwRes := HTMLDrawEx(Canvas,Text,r,FImages,x,y,-1,-1,2,true,false,false,false,false,false,true,1.0,
      FURLColor,clBlue,clRed,clgray,a,s,fa,xsize,ysize,hl,FHoverHyperlink,hoverrect,FImageCache,FContainer);
  end;

  if DrwRes then
    Result := a;
end;

procedure TAdvPanel.MouseMove(Shift: TShiftState; X, Y: Integer);
var
  hr: TRect;
  Anchor: string;

begin
  inherited;

  Anchor := IsAnchor(x,y,hr);

  FInMove := False;

  if (y < FCaption.Height) and FCaption.Visible then
  begin
    if FHoverHyperLink <> -1 then
    begin
      if FHover then InvalidateRect(Handle,@FCurrHoverRect,True);
      FHoverHyperLink := -1;
      FOldHoverHyperLink := -1;
    end;

    if Anchor <> '' then
    begin
      if (FAnchor <> Anchor) or not Equalrect(FCaptionCurrHoverRect,hr) or
         (FCaptionHoverHyperlink = -1) then
      begin
        if FAnchor <> '' then
          if FHover then InvalidateRect(Handle,@FCaptionCurrHoverRect,True);

        if FHover then InvalidateRect(Handle,@hr,True);
      end;

      if (Cursor = FOldCursor) or (FAnchor <> Anchor) then
      begin
        if FAnchorHint then Application.CancelHint;
        Cursor := crHandPoint;
        if Assigned(FAnchorEnter) then FAnchorEnter(self,anchor);
        if FHover then invalidaterect(Handle,@hr,true);
       end;

       FAnchor := Anchor;
       FCaptionCurrHoverRect := hr;
     end
    else
    begin
      if Cursor = crHandPoint then
      begin
        Cursor := FOldCursor;
        if Assigned(FAnchorExit) then FAnchorExit(self,anchor);
        FCaptionHoverHyperlink := -1;
        if FHover then InvalidateRect(self.handle,@FCaptionCurrHoverRect,True);
      end;
    end;
  end
  else
  begin
    if FCaptionHoverHyperLink <> -1 then
    begin
      FCaptionHoverHyperlink := -1;
      if FHover then InvalidateRect(self.handle,@FCaptionCurrHoverRect,True);
    end;

    if Anchor <> '' then
    begin
      if (FAnchor <> Anchor) or not Equalrect(FCurrHoverRect,hr) or
         (FHoverHyperlink = -1) or (FHoverHyperLink <> FOldHoverHyperLink) then
      begin
        InflateRect(FCurrHoverRect,1,1);
        if FHover then InvalidateRect(Handle,@FCurrHoverRect,True);
        if FHover then InvalidateRect(Handle,@hr,True);
      end;

      if (Cursor = FOldCursor) or (FAnchor <> Anchor) then
      begin
        if FAnchorHint then Application.CancelHint;
        Cursor := crHandPoint;
        if Assigned(FAnchorEnter) then FAnchorEnter(Self,Anchor);
        if FHover then InvalidateRect(self.handle,@hr,true);
      end;

      FAnchor := Anchor;
      FCurrHoverRect := hr;
      FOldHoverHyperLink := FHoverHyperLink;
    end
    else
    begin
      if (Cursor = crHandPoint) then
      begin
        Cursor := FOldCursor;
        if Assigned(FAnchorExit) then FAnchorExit(Self,Anchor);

        Inflaterect(FCurrHoverRect,1,1);

        FHoverHyperLink := -1;
        FOldHoverHyperLink := -1;

        if FHover then InvalidateRect(Handle,@FCurrHoverRect,True);
      end;
    end;
  end;
end;

procedure TAdvPanel.SetHover(const Value: boolean);
begin
  fHover := Value;
end;

procedure TAdvPanel.CMMouseEnter(var Msg: TMessage);
begin
  inherited;
end;

procedure TAdvPanel.CMMouseLeave(var Msg: TMessage);
begin
 if (fHoverHyperlink>=0) then
   begin
    fHoverHyperlink:=-1;
    inflaterect(fCurrHoverRect,1,1);
    if fHover then invalidaterect(self.handle,@fcurrhoverrect,true);
   end;

 if (fCaptionHoverHyperlink>=0) then
   begin
    fCaptionHoverHyperlink:=-1;
    inflaterect(fCaptionCurrHoverRect,1,1);
    if fHover then invalidaterect(self.handle,@fcaptioncurrhoverrect,true);
   end;

 inherited;
end;

procedure TAdvPanel.SetShadowColor(const Value: TColor);
begin
  FShadowColor := Value;
  Invalidate;
end;

procedure TAdvPanel.SetShadowOffset(const Value: integer);
begin
  FShadowOffset := Value;
  Invalidate;
end;

procedure TAdvPanel.WMNCHitTest(var Msg: TWMNCHitTest);
var
  r: TRect;
  pt: TPoint;
  GW: Integer;

begin
  inherited;

  if (csDesigning in ComponentState) then Exit;

  if not FCaption.CloseMinGlyph.Empty and not FCaption.CloseMaxGlyph.Empty then
    GW := FCaption.CloseMinGlyph.Width
  else
    GW := 12;

  if (FCaption.ShadeType = stXPCaption) and DoVisualStyles then
    GW := 16;

  r := ClientRect;
  if (FCaption.FCloseButton) then r.Right := r.Right - GW;
  if (FCaption.FMinMaxButton) then r.Right := r.Right - GW;

  pt := ScreenToClient(point(msg.xpos,msg.ypos));

  if (pt.y < fCaption.Height) and
     (FCaption.Visible) and
     (pt.x < r.right) and
     (IsAnchor(pt.x,pt.y,r)='') and
     (Msg.Result = htClient) and FCanMove then
  begin
    Msg.Result := htCaption;
    FInMove := true;

    SetWindowPos(Handle, HWND_TOP,0,0,0,0,  SWP_NOMOVE or SWP_NOSIZE);
  end;

  if (pt.y > height - GetSystemMetrics(SM_CYHSCROLL)) and
     (pt.x>width - GetSystemMetrics(SM_CXHSCROLL)) and
     (Msg.Result = htClient) and FCanSize and not FCollaps then
  begin
    SetWindowPos(Handle, HWND_TOP,0,0,0,0,  SWP_NOMOVE or SWP_NOSIZE);
    Msg.Result := HTBOTTOMRIGHT;
  end;
end;

procedure TAdvPanel.CreateParams(var Params: TCreateParams);
begin
  inherited;
end;

procedure TAdvPanel.SetCanSize(const Value: boolean);
begin
  FCanSize := Value;
  Invalidate;
end;

procedure TAdvPanel.SetTextVAlign(const Value: TTextVAlignment);
begin
  fTextVAlign := Value;
  Invalidate;
end;

procedure TAdvPanel.CMHintShow(var Msg: TMessage);
var
 CanShow: Boolean;
 hi: PHintInfo;
 anchor:string;
 hr:trect;

Begin
 CanShow := True;
 hi := PHintInfo(Msg.LParam);

 if fAnchorHint then
  begin
   anchor:=IsAnchor(hi^.cursorPos.x,hi^.cursorpos.y,hr);
   if (anchor<>'') then
    begin
     if assigned(fOnAnchorHint) then fOnAnchorHint(self,anchor);

     hi^.HintPos := clienttoscreen(hi^.CursorPos);
     hi^.hintpos.y:=hi^.hintpos.y-10;
     hi^.hintpos.x:=hi^.hintpos.x+10;
     hi^.HintStr := anchor;
    end;
  end;
 Msg.Result := Ord(Not CanShow);

end;

procedure TAdvPanel.WMEraseBkGnd(var Message: TMessage);
begin
 inherited;
end;

procedure TAdvPanel.SavePosition;
var
  {$IFDEF DELPHI4_LVL}
  IniFile: TCustomIniFile;
  {$ELSE}
  IniFile: TIniFile;
  {$ENDIF}

begin
  if (FPosition.Key<>'') and
     (FPosition.Section<>'') and
     (not (csDesigning in ComponentState)) then
  begin
    {$IFDEF DELPHI4_LVL}
    if FPosition.Location = clRegistry then
      IniFile := TRegistryIniFile.Create(FPosition.Key)
    else
   {$ENDIF}
      IniFile := TIniFile.Create(FPosition.Key);

    with IniFile do
    begin
      WriteInteger(FPosition.Section,'Top',Top);
      WriteInteger(FPosition.Section,'Left',Left);
      WriteInteger(FPosition.Section,'Height',Height);
      WriteInteger(FPosition.Section,'Width',Width);
      if Collaps then
        WriteInteger(FPosition.Section,'Collaps',1)
      else
        WriteInteger(FPosition.Section,'Collaps',0);
    end;
    IniFile.Free;
  end;
end;

procedure TAdvPanel.LoadPosition;
var
  {$IFDEF DELPHI4_LVL}
  IniFile: TCustomIniFile;
  {$ELSE}
  IniFile: TInifile;
  {$ENDIF}
begin
  if (FPosition.Key<>'') and
     (FPosition.Section<>'') and
     (not (csDesigning in ComponentState)) then
  begin
    {$IFDEF DELPHI4_LVL}
    if FPosition.Location = clRegistry then
      Inifile := TRegistryIniFile.Create(FPosition.Key)
    else
    {$ENDIF}
      Inifile := TIniFile.Create(FPosition.Key);

    with Inifile do
    begin
      Top := ReadInteger(FPosition.Section,'Top',Top);
      Left := ReadInteger(FPosition.Section,'Left',Left);
      Height := ReadInteger(FPosition.Section,'Height',Height);
      Width := ReadInteger(FPosition.Section,'Width',Width);
      Collaps := ReadInteger(FPosition.Section,'Collaps',0) = 1;
    end;

    IniFile.Free;
  end;
end;

procedure TAdvPanel.WndProc(var Message: tMessage);
begin
  inherited;
  if Message.Msg = WM_DESTROY then
    if Assigned(FPosition) then
      if FPosition.Save then SavePosition;
end;

procedure TAdvPanel.WMSizing(var Msg: TMessage);
var
  r: PRect;

begin
  if csDesigning in ComponentState then
    inherited
  else
  begin
    r := PRect(msg.LParam);


    if FFixedWidth then
    begin
      r.Right := r.Left + FWidthHeight.X;
    end;

    if FFixedHeight then
    begin
      r.Bottom := r.Top + FWidthHeight.Y;
    end;

    FFullHeight := r.Bottom - r.Top;

    msg.Result := 0;

    if r.Right - r.Left <> Width then
      ShadeHeader;
  end;

end;

procedure TAdvPanel.WMSize(var Msg: TMessage);
begin
  inherited;
  if Width <> FShadedHeader.Width then
    ShadeHeader;
end;

procedure TAdvPanel.WMMoving(var Msg: TMessage);
var
  r: PRect;
  w: Integer;
begin
  FTopLeft := ClientOrigin;

  if csDesigning in ComponentState then
    inherited
  else
  begin
    r := PRect(msg.LParam);
    if FFixedLeft then
    begin
      w := r.Right - r.Left;
      r.Left := FTopLeft.X;
      r.Right := r.Left + w;
    end;

    if FFixedTop then
    begin
      w := r.Bottom - r.Top;
      r.Top := FTopLeft.Y;
      r.Bottom := r.Top + w;
    end;

    msg.Result := 0;
  end;
end;


procedure TAdvPanel.WMExitSizeMove(var Msg: TMessage);
begin
  inherited;
  if Assigned(FOnEndMoveSize) then
    FOnEndMoveSize(Self);
  Synchronize;
end;

procedure TAdvPanel.CreateWnd;
var
  APG: TAdvPanelGroup;
begin
  inherited;
  if (Parent is TAdvPanelGroup) and (csDesigning in ComponentState) then
  begin
    APG := Parent as TAdvPanelGroup;

    if APG.FGroupStyle = gsVertical then
    begin
      Width := APG.Width - 2*APG.HorzPadding;
      Left := APG.HorzPadding;
      if Top < APG.VertPadding then
        Top := APG.VertPadding;
    end;

    if APG.FGroupStyle = gsHorizontal then
    begin
      Height := APG.Height - 2*APG.HorzPadding;
      Top := APG.VertPadding;
      if Left < APG.HorzPadding then
        Left := APG.HorzPadding;
    end;
  end;
end;


procedure TAdvPanel.SetBounds(ALeft, ATop, AWidth, AHeight: Integer);
begin
  inherited;
  if csDesigning in ComponentState then
    Synchronize;
end;

procedure TAdvPanel.Synchronize;
begin
  if (Parent is TAdvPanelGroup) then
    with (Parent as TAdvPanelGroup) do
      ChildPanelChanged(Self);
end;

procedure TAdvPanel.WMSetCursor(var Msg: TWMSetCursor);
begin
  inherited;
  if FInMove and FShowMoveCursor then
  begin
    {$IFDEF DELPHI4_LVL}
    SetCursor(Screen.Cursors[crSizeAll]);
    {$ENDIF}
  end;
end;

function TAdvPanel.DoVisualStyles: Boolean;
begin
  if FIsWinXP then
    Result := IsThemeActive
  else
    Result := False;
end;


{ TPanelCaption }

constructor TPanelCaption.Create(aOwner: TAdvPanel);
begin
  inherited Create;
  FOwner := AOwner;
  FFont := TFont.Create;
  FColor := clHighlight;
  FCloseColor := clBtnFace;
  FHeight := 20;
  FMinMaxButtonColor := clBlack;
  FCloseButtonColor := clBlack;
  FFont.OnChange := FontChanged;
  FCloseMinGlyph := TBitmap.Create;
  FCloseMaxGlyph := TBitmap.Create;
  FMinGlyph := TBitmap.Create;
  FMaxGlyph := TBitmap.Create;
  FShadeLight := 200;
  FShadeGrain := 32;
  FBackground := TBitmap.Create;
end;

destructor TPanelCaption.Destroy;
begin
  FFont.Free;
  FCloseMinGlyph.Free;
  FCloseMaxGlyph.Free;
  FMinGlyph.Free;
  FMaxGlyph.Free;
  FBackground.Free;
  inherited;
end;

procedure TPanelCaption.FontChanged(Sender: TObject);
begin
  FOwner.Invalidate;
end;

procedure TPanelCaption.SetBackground(const Value: TBitmap);
begin
  FBackground.Assign(Value);
  ShadeChanged;
end;

procedure TPanelCaption.SetCaptionShape(const Value: TCaptionShape);
begin
  FShape := Value;
  ShadeChanged;
end;

procedure TPanelCaption.SetCloseButton(const Value: boolean);
begin
  if (FCloseButton <> Value) then
  begin
    FCloseButton := Value;
    FOwner.Invalidate;
  end;
end;

procedure TPanelCaption.SetCloseButtonColor(const Value: TColor);
begin
  if (fCloseButtonColor <> Value) then
  begin
    FCloseButtonColor := Value;
    FOwner.Invalidate;
  end;
end;

procedure TPanelCaption.SetCloseColor(const Value: TColor);
begin
  if FCloseColor <> Value then
  begin
    FCloseColor := Value;
    FOwner.Invalidate;
  end;
end;

procedure TPanelCaption.SetCloseMaxGlyph(const Value: TBitmap);
begin
  FCloseMaxGlyph.Assign(Value);
  FOwner.Invalidate;
end;

procedure TPanelCaption.SetCloseMinGlyph(const Value: TBitmap);
begin
  FCloseMinGlyph.Assign(Value);
  FOwner.Invalidate;
end;

procedure TPanelCaption.SetColor(const Value: TColor);
begin
  if FColor <> Value then
  begin
    FColor := Value;
    ShadeChanged;
  end;
end;

procedure TPanelCaption.SetFlat(const Value: Boolean);
begin
  FFlat := Value;
  ShadeChanged;
end;

procedure TPanelCaption.SetFont(const Value: TFont);
begin
  FFont.Assign(Value);
  FOwner.Invalidate;
end;

procedure TPanelCaption.SetHeight(const Value: integer);
begin
  if (FHeight <> Value) then
  begin
    FHeight := Value;
    FOwner.Invalidate;
  end; 
end;

procedure TPanelCaption.SetIndent(const Value: Integer);
begin
  if FIndent <> Value then
  begin
    FIndent := Value;
    FOwner.Invalidate;
  end;  
end;

procedure TPanelCaption.SetMaxGlyph(const Value: TBitmap);
begin
  FMaxGlyph.Assign(Value);
end;

procedure TPanelCaption.SetMinGlyph(const Value: TBitmap);
begin
  FMinGlyph.Assign(Value);
end;

procedure TPanelCaption.SetMinMaxButton(const Value: boolean);
begin
  if FMinMaxButton <> Value then
  begin
    FMinMaxButton := Value;
    FOwner.Invalidate;
  end;
end;

procedure TPanelCaption.SetMinMaxButtonColor(const Value: TColor);
begin
  if FMinMaxButtonColor <> Value then
  begin
    FMinMaxButtonColor := Value;
    FOwner.Invalidate;
  end;
end;

procedure TPanelCaption.SetShadeGrain(const Value: Byte);
begin
  FShadeGrain := Value;
  ShadeChanged;
end;

procedure TPanelCaption.SetShadeLight(const Value: Integer);
begin
  if Value < 200 then
    FShadeLight := 200
  else
    FShadeLight := Value;
  ShadeChanged;
end;

procedure TPanelCaption.SetShadeType(const Value: TShadeType);
begin
  FShadeType := Value;
  ShadeChanged;
end;

procedure TPanelCaption.SetText(const Value: string);
begin
  FText := Value;
  FOwner.Invalidate;
end;

procedure TPanelCaption.SetTopIndent(const Value: Integer);
begin
  if FTop <> Value then
  begin
    FTop := Value;
    FOwner.Invalidate;
  end;
end;

procedure TPanelCaption.SetVisible(const Value: boolean);
begin
  FVisible := Value;
  FOwner.Invalidate;
end;

procedure TPanelCaption.ShadeChanged;
begin
  FOwner.ShadeHeader;
  FOwner.Invalidate;
end;

{ TPanelPosition }

constructor TPanelPosition.Create(AOwner: TComponent);
begin
  inherited Create;
  FOwner := AOwner;
end;

destructor TPanelPosition.Destroy;
begin
  inherited;
end;

{ TAdvPanelGroup }

procedure TAdvPanelGroup.ArrangeControlsVert;
var
  PL: TList;
  i, T1,T2,H: Integer;
  Sorted: Boolean;
  S: Pointer;
begin
  PL := TList.Create;

  for i := 1 to ControlCount do
  begin
    if (Controls[i - 1] is TAdvPanel) then
      PL.Add(Controls[i - 1]);
  end;

  Sorted := False;

  // perform a simple bubble sort, nr. of subpanels should be small

  while not Sorted do
  begin
    Sorted := True;
    for i := 2 to PL.Count do
    begin
      T1 := TAdvPanel(PL.Items[i - 2]).Top;
      T2 := TAdvPanel(PL.Items[i - 1]).Top;
      if T1 > T2 then
      begin
        Sorted := False;
        S := PL.Items[i - 2];
        PL.Items[i - 2] := PL.Items[i - 1];
        PL.Items[i - 1] := S;
      end;
    end;
  end;

  H := VertPadding;

  if Assigned(FScrollBar) then
  begin
    if FScrollBar.Visible then
      H := VertPadding - FScrollBar.Position;
  end;

  for i := 1 to PL.Count do
  begin
    TAdvPanel(PL.Items[i - 1]).Top := H;
    TAdvPanel(PL.Items[i - 1]).Left := HorzPadding;

    if FScrollBar.Visible then
      TAdvPanel(PL.Items[i - 1]).Width := Width - 2* HorzPadding - FScrollBar.Width
    else
      TAdvPanel(PL.Items[i - 1]).Width := Width - 2* HorzPadding;
      
    if TAdvPanel(PL.Items[i - 1]).Visible then
      H := H + TAdvPanel(PL.Items[i - 1]).Height + VertPadding;
  end;

  PL.Free;
end;

procedure TAdvPanelGroup.ArrangeControlsHorz;
var
  PL: TList;
  i, T1,T2,H: Integer;
  Sorted: Boolean;
  S: Pointer;
begin
  PL := TList.Create;

  for i := 1 to ControlCount do
  begin
    if (Controls[i - 1] is TAdvPanel) then
      PL.Add(Controls[i - 1]);
  end;

  Sorted := False;

  // perform a simple bubble sort, nr. of subpanels should be small

  while not Sorted do
  begin
    Sorted := True;
    for i := 2 to PL.Count do
    begin
      T1 := TAdvPanel(PL.Items[i - 2]).Left;
      T2 := TAdvPanel(PL.Items[i - 1]).Left;
      if T1 > T2 then
      begin
        Sorted := False;
        S := PL.Items[i - 2];
        PL.Items[i - 2] := PL.Items[i - 1];
        PL.Items[i - 1] := S;
      end;
    end;
  end;

  H := HorzPadding;
  
  if Assigned(FScrollBar) then
  begin
  if not FScrollBar.Visible then
    H := HorzPadding
  else
    H := HorzPadding - FScrollBar.Position;
  end;

  for i := 1 to PL.Count do
  begin
    TAdvPanel(PL.Items[i - 1]).Left := H;
    TAdvPanel(PL.Items[i - 1]).Top := VertPadding;

    if FScrollBar.Visible then
      TAdvPanel(PL.Items[i - 1]).Height := Height - 2* VertPadding - FScrollBar.Height
    else
      TAdvPanel(PL.Items[i - 1]).Height := Height - 2* VertPadding;

    if TAdvPanel(PL.Items[i - 1]).Visible then
      H := H + TAdvPanel(PL.Items[i - 1]).Width + HorzPadding;
  end;

  PL.Free;
end;

procedure TAdvPanelGroup.ArrangeControls;
begin
  if FIsArranging then
    Exit;

  FIsArranging := True;
  if GroupStyle = gsVertical then
    ArrangeControlsVert
  else
    ArrangeControlsHorz;
  FIsArranging := False;
end;

procedure TAdvPanelGroup.ChildPanelChanged(APanel: TAdvPanel);
begin
  UpdateScrollBar;
  ArrangeControls;
end;

constructor TAdvPanelGroup.Create(AOwner: TComponent);
begin
  inherited;
  ControlStyle := ControlStyle + [csAcceptsControls];
  FScrollBar := TScrollBar.Create(nil);
  FScrollBar.Parent := Self;
  FScrollBar.Align := alRight;

  FScrollBar.Position := 0;
  FScrollBar.Kind := sbVertical;
  FScrollBar.OnChange := Scroll;
  FScrollBar.Visible := False;
  FScrollBar.LargeChange := 20;
  FScrollBar.SmallChange := 2;
  FScrollBar.TabStop := False;
end;

procedure TAdvPanelGroup.SetGroupStyle(const Value: TGroupStyle);
begin
  if FGroupStyle <> Value then
  begin
    FGroupStyle := Value;
    UpdateScrollBar;
    ArrangeControls;
  end;
end;

procedure TAdvPanelGroup.SetHorzPadding(const Value: Integer);
begin
  if FHorzPadding <> Value then
  begin
    FHorzPadding := Value;
    ArrangeControls;
  end;
end;

procedure TAdvPanelGroup.SetVertPadding(const Value: Integer);
begin
  if FVertPadding <> Value then
  begin
    FVertPadding := Value;
    ArrangeControls;
  end;
end;

procedure TAdvPanelGroup.SetBounds(ALeft, ATop, AWidth, AHeight: Integer);
begin
  inherited;
  ArrangeControls;
end;

destructor TAdvPanelGroup.Destroy;
begin
  FScrollBar.Free;
  inherited;
end;

procedure TAdvPanelGroup.Scroll(Sender: TObject);
begin
  if FScrollbar.Position > FScrollbar.Max - FScrollbar.Pagesize then
    FScrollbar.Position := FScrollbar.Max - FScrollbar.Pagesize;
  ArrangeControls;
end;

function TAdvPanelGroup.PanelHeights: Integer;
var
  H, i: Integer;
begin
  H := VertPadding;

  for i := 1 to ControlCount do
  begin
    if (Controls[i - 1] is TAdvPanel) then
      if TAdvPanel(Controls[i - 1]).Visible then
        H := H + TAdvPanel(Controls[i - 1]).Height + VertPadding;
  end;

  Result := H;
end;

function TAdvPanelGroup.PanelWidths: Integer;
var
  W, i: Integer;
begin
  W := HorzPadding;
  for i := 1 to ControlCount do
  begin
    if (Controls[i - 1] is TAdvPanel) then
      if TAdvPanel(Controls[i - 1]).Visible then
        W := W + TAdvPanel(Controls[i - 1]).Width +  HorzPadding;
  end;

  Result := W;
end;

procedure TAdvPanelGroup.Loaded;
begin
  inherited;
  UpdateScrollBar;
  ArrangeControls;
end;

procedure TAdvPanelGroup.UpdateScrollbar;
var
  TH: Integer;
begin
  if GroupStyle = gsVertical then
  begin
    if FScrollBar.Kind = sbHorizontal then
    begin
      FScrollBar.Kind := sbVertical;
    end;
    
    FScrollBar.Width := 16;
    TH := PanelHeights;
    if TH > Height then
    begin
      FScrollBar.Max := TH;
      FScrollBar.PageSize := Height;
    end;
    FScrollBar.Visible := TH > Height;
    FScrollBar.Invalidate;
  end
  else
  begin
    if FScrollBar.Kind = sbVertical then
      FScrollBar.Kind := sbHorizontal;

    if FScrollBar.Align = alRight then
    begin
      FScrollBar.Align := alBottom;
    end;
    FScrollBar.Height := 16;

    TH := PanelWidths;
    if TH > Width then
    begin
      FScrollBar.Max := TH;
      FScrollBar.PageSize := Width;
    end;
    FScrollBar.Visible := TH > Width;
    FScrollBar.Invalidate;
  end;
end;

procedure TAdvPanelGroup.CloseAllPanels;
var
  i: Integer;
begin
  for i := 1 to ControlCount do
  begin
    if (Controls[i - 1] is TAdvPanel) then
      TAdvPanel(Controls[i - 1]).Collaps := True;
  end;
end;

procedure TAdvPanelGroup.OpenAllPanels;
var
  i: Integer;
begin
  for i := 1 to ControlCount do
  begin
    if (Controls[i - 1] is TAdvPanel) then
      TAdvPanel(Controls[i - 1]).Collaps := False;
  end;
end;

procedure TAdvPanelGroup.WMSize(var Msg: TMessage);
begin
  inherited;
  UpdateScrollBar;
end;

end.
