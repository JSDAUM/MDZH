{*************************************************************************}
{ THTMLButtons components                                                 }
{ for Delphi 3.0,4.0,5.0,6.0 & C++Builder 3.0,4.0,5.0,6.0                 }
{ version 1.3                                                             }
{                                                                         }
{ written by                                                              }
{    TMS Software                                                         }
{    copyright ? 1999-2002                                                }
{    Email : info@tmssoftware.com                                         }
{    Web : http://www.tmssoftware.com                                     }
{                                                                         }
{ The source code is given as is. The author is not responsible           }
{ for any possible damage done due to the use of this code.               }
{ The component can be freely used in any application. The complete       }
{ source code remains property of the author and may not be distributed,  }
{ published, given or sold in any form as such. No parts of the source    }
{ code can be included in any other component or application without      }
{ written authorization of the author.                                    }
{*************************************************************************}

unit htmlbtns;

{$I TMSDEFS.INC}
{$R htmlbtns.res}
{$DEFINE REMOVESTRIP}
{$DEFINE REMOVEDRAW}

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Menus, Buttons, ComObj, ActiveX,
  PictureContainer, BtnXPVS;

{$IFNDEF DELPHI3_LVL}
const
  crHandPoint = crUpArrow;
{$ENDIF}

type
  TButtonType = (btClassic,btBorland,btFlat,btTMS,btWinXP);

  TAnchorClick = procedure (Sender:TObject; Anchor:string) of object;

  TCustomHTMLCheckBox = class(TCustomControl)
  private
    FDown:Boolean;
    FState:TCheckBoxState;
    FFocused:Boolean;
    FCheckColor:TColor;
    FButtonType:TButtonType;
    FReturnIsTab:Boolean;
    FImages:TImageList;
    FAnchor: string;
    FAnchorClick: TAnchorClick;
    FAnchorEnter: TAnchorClick;
    FAnchorExit: TAnchorClick;
    FURLColor: TColor;
    FImageCache: THTMLPictureCache;
    FBtnVAlign: TTextLayout;
    FAlignment: TLeftRight;
    FEllipsis: Boolean;
    FCaption: string;
    FContainer: TPictureContainer;
    FShadowOffset: Integer;
    FShadowColor: TColor;
    FIsWinXP: Boolean;
    FHot: Boolean;
    procedure CMEnabledChanged(var Message: TMessage); message CM_ENABLEDCHANGED;
    procedure CMDialogChar(var Message: TCMDialogChar); message CM_DIALOGCHAR;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
    procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
    procedure SetCheckColor(Value:TColor);
    procedure SetState(Value:TCheckBoxState);
    procedure SetChecked(Value:Boolean);
    function  GetChecked:Boolean;
    procedure SetCaption(Value: string);																			// <PI>
    procedure SetButtonType(const Value:TButtonType);
    procedure SetImages(const Value: TImageList);
    procedure SetURLColor(const Value:TColor);
    function IsAnchor(x,y:integer):string;
    procedure SetButtonVertAlign(const Value: TTextLayout);											// <PI>
    procedure SetAlignment(const Value: TLeftRight);
    procedure SetEllipsis(const Value: Boolean);
    procedure SetContainer(const Value: TPictureContainer);
    procedure SetShadowColor(const Value: TColor);
    procedure SetShadowOffset(const Value: Integer);
  protected
    procedure Notification(AComponent: TComponent; AOperation: TOperation); override;
    procedure Paint; override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState;X, Y: Integer); override;
    procedure KeyDown(var Key:Word;Shift:TShiftSTate); override;
    procedure KeyUp(var Key:Word;Shift:TShiftSTate); override;
    procedure SetDown(Value:Boolean);
    procedure DoEnter; override;
    procedure DoExit; override;
    property Checked: Boolean read GetChecked write SetChecked default False;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Toggle; virtual;
  published
    {$IFDEF DELPHI4_LVL}
    property Action;
    property Anchors;
    property Constraints;
    {$ENDIF}
    property Color;
    property Alignment: TLeftRight read FAlignment write SetAlignment;
    property ButtonType: TButtonType read FButtonType write SetButtonType;
    property ButtonVertAlign: TTextLayout read FBtnVAlign write setButtonVertAlign default tlTop;
    property Caption: string read FCaption write SetCaption;
    property CheckColor: TColor read FCheckColor write SetCheckColor default clBlack;
    property Down: Boolean read FDown write SetDown default False;
    property DragCursor;
    {$IFDEF DELPHI4_LVL}
    property DragKind;
    {$ENDIF}
    property DragMode;
    property Ellipsis: Boolean read FEllipsis write SetEllipsis default False;
    property Enabled;
    property Font;
    property Images: TImageList read FImages write SetImages;
    property ParentFont;
    property ParentColor;
    property PictureContainer: TPictureContainer read FContainer write SetContainer;
    property PopupMenu;
    property ReturnIsTab: Boolean read FReturnIsTab write FReturnIsTab;
    property ShadowColor: TColor read FShadowColor write SetShadowColor default clGray;
    property ShadowOffset: Integer read FShadowOffset write SetShadowOffset default 1;
    property ShowHint;
    property State: TCheckBoxState read FState write SetState default cbUnchecked;
    property TabOrder;
    property TabStop;
    property URLColor: TColor read FURLColor write SetURLColor default clBlue;
    property Visible;
    property OnClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnAnchorClick: TAnchorClick read fAnchorClick write fAnchorClick;
    property OnAnchorEnter: TAnchorClick read fAnchorEnter write fAnchorEnter;
    property OnAnchorExit: TAnchorClick read fAnchorExit write fAnchorExit;
  end;

  THTMLCheckBox = class(TCustomHTMLCheckBox)
  published
    property Checked;
  end;

  THTMLRadioButton = class(TCustomControl)
  private
    FDown: Boolean;
    FChecked: Boolean;
    FFocused: Boolean;
    FCheckColor: TColor;
    FGroupIndex: Byte;
    FButtonType: TButtonType;
    FReturnIsTab: Boolean;
    FImages: TImageList;
    FAnchor: string;
    FAnchorClick: TAnchorClick;
    FAnchorEnter: TAnchorClick;
    FAnchorExit: TAnchorClick;
    FURLColor: TColor;
    FImageCache: THTMLPictureCache;
    FBtnVAlign: TTextLayout;																										// <PI>
    FAlignment: TLeftRight;
    FEllipsis: Boolean;
    FCaption: string;
    FContainer: TPictureContainer;
    FShadowOffset: Integer;
    FShadowColor: TColor;																											// <PI>
    FIsWinXP: Boolean;
    FHot: Boolean;
    procedure TurnSiblingsOff;
    procedure SetDown(Value:Boolean);
    procedure SetChecked(Value:Boolean);
    procedure SetCheckColor(Value:TColor);
    procedure SetButtonType(const Value:TButtonType);
    procedure SetImages(const Value: TImageList);
    procedure SetURLColor(const Value:TColor);
    function IsAnchor(x,y:integer):string;
    procedure CMEnabledChanged(var Message: TMessage); message CM_ENABLEDCHANGED;
    procedure CMDialogChar(var Message: TCMDialogChar); message CM_DIALOGCHAR;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
    procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
    procedure SetButtonVertAlign(const Value: TTextLayout);											// <PI>
    procedure SetAlignment(const Value: TLeftRight);
    procedure SetEllipsis(const Value: Boolean);
    procedure SetCaption(const Value: string);
    procedure SetContainer(const Value: TPictureContainer);
    procedure SetShadowColor(const Value: TColor);
    procedure SetShadowOffset(const Value: Integer);
  protected
    procedure Paint; override;
    procedure Notification(AComponent: TComponent; AOperation: TOperation); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState;X, Y: Integer); override;
    procedure KeyDown(var Key:Word;Shift:TShiftSTate); override;
    procedure KeyUp(var Key:Word;Shift:TShiftSTate); override;
    procedure DoEnter; override;
    procedure DoExit; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    {$IFDEF DELPHI4_LVL}
    property Action;
    property Anchors;
    property Constraints;
    {$ENDIF}
    property Color;
    property Alignment: TLeftRight read fAlignment write SetAlignment;
    property URLColor:TColor read FURLColor write SetURLColor default clBlue;
    property ButtonType:TButtonType read FButtonType write SetButtonType;
    property ButtonVertAlign: TTextLayout read fBtnVAlign write SetButtonVertAlign default tlTop;
    property Caption: string read FCaption write SetCaption;
    property CheckColor:TColor read FCheckColor write SetCheckColor default clBlack;
    property Checked:Boolean read FChecked write SetChecked default False;
    property Down:Boolean read FDown write SetDown default False;
    property DragCursor;
    {$IFDEF DELPHI4_LVL}
    property DragKind;
    {$ENDIF}
    property DragMode;
    property Ellipsis: Boolean read FEllipsis write SetEllipsis default False;
    property Enabled;
    property Font;
    property GroupIndex:Byte read FGroupIndex write FGroupIndex
      default 0;
    property Images:TImageList read fImages write SetImages;
    property ParentFont;
    property ParentColor;
    property PictureContainer: TPictureContainer read FContainer write SetContainer;
    property PopupMenu;
    property ReturnIsTab:Boolean read FReturnIsTab write FReturnIsTab;
    property ShadowColor: TColor read FShadowColor write SetShadowColor default clGray;
    property ShadowOffset: Integer read FShadowOffset write SetShadowOffset default 1;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property OnClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnAnchorClick:TAnchorClick read fAnchorClick write fAnchorClick;
    property OnAnchorEnter:TAnchorClick read fAnchorEnter write fAnchorEnter;
    property OnAnchorExit:TAnchorClick read fAnchorExit write fAnchorExit;
  end;

  THTMLButton = class(TButton)
  private
    FCanvas: TCanvas;
    FStyle: TButtonStyle;
    FKind: TBitBtnKind;
    FLayout: TButtonLayout;
    FSpacing: Integer;
    FMargin: Integer;
    FImageCache: THTMLPictureCache;
    IsFocused: Boolean;
    FImages: TImageList;
    FEllipsis: Boolean;
    FCaption: string;
    FContainer: TPictureContainer;
    FFlat: Boolean;
    FHasMouse: Boolean;
    FColor: TColor;
    FDownColor: TColor;
    FHoverColor: TColor;
    FShadowOffset: Integer;
    FShadowColor: TColor;
    FIsWinXP: Boolean;
    procedure DrawItem(const DrawItemStruct: TDrawItemStruct);
    function IsCustom: Boolean;
    procedure SetStyle(Value: TButtonStyle);
    procedure SetLayout(Value: TButtonLayout);
    procedure SetSpacing(Value: Integer);
    procedure SetMargin(Value: Integer);
    procedure CNMeasureItem(var Message: TWMMeasureItem); message CN_MEASUREITEM;
    procedure CNDrawItem(var Message: TWMDrawItem); message CN_DRAWITEM;
    procedure CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;
    procedure CMEnabledChanged(var Message: TMessage); message CM_ENABLEDCHANGED;
    procedure WMLButtonDblClk(var Message: TWMLButtonDblClk); message WM_LBUTTONDBLCLK;
    procedure CMMouseLeave(Var Msg: TMessage); message CM_MOUSELEAVE;
    procedure CMMouseEnter(Var Msg: TMessage); message CM_MOUSEENTER;
    procedure SetImages(const Value: TImageList);
    procedure SetEllipsis(const Value: Boolean);
    procedure SetCaption(const Value: string);
    procedure SetFlat(const Value: Boolean);
    procedure SetColor(const Value: TColor);
    procedure SetContainer(const Value: TPictureContainer);
    procedure SetShadowColor(const Value: TColor);
    procedure SetShadowOffset(const Value: Integer);
  protected
    procedure Notification(AComponent: TComponent; AOperation: TOperation); override;
    {$IFDEF DELPHI4_LVL}
    procedure ActionChange(Sender: TObject; CheckDefaults: Boolean); override;
    {$ENDIF}
    procedure CreateHandle; override;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure SetButtonStyle(ADefault: Boolean); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Click; override;
  published
    {$IFDEF DELPHI4_LVL}
    property Action;
    property Anchors;
    property Constraints;
    property BiDiMode;
    property DragKind;
    property ParentBiDiMode;
    {$ENDIF}
    property Cancel stored IsCustom;
    property Caption: string read FCaption write SetCaption;
    property Color: TColor read FColor write SetColor default clBtnFace;
    property Default stored IsCustom;
    property DownColor: TColor read FDownColor write FDownColor default clBtnFace;
    property DragCursor;
    property DragMode;
    property Ellipsis: Boolean read FEllipsis write SetEllipsis default False;
    property Enabled;
    property Flat: Boolean read FFlat write SetFlat default False;
    property Font;
    property HoverColor: TColor read FHoverColor write FHoverColor default clBtnFace;
    property Images:TImageList read FImages write SetImages;
    property Layout: TButtonLayout read FLayout write SetLayout default blGlyphLeft;
    property Margin: Integer read FMargin write SetMargin default -1;
    property ModalResult stored IsCustom;
    property ParentFont;
    property ParentShowHint;
    property PictureContainer: TPictureContainer read FContainer write SetContainer;
    property ShadowColor: TColor read FShadowColor write SetShadowColor default clGray;
    property ShadowOffset: Integer read FShadowOffset write SetShadowOffset default 1;
    property ShowHint;
    property Style: TButtonStyle read FStyle write SetStyle default bsAutoDetect;
    property Spacing: Integer read FSpacing write SetSpacing default 4;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnEnter;
    property OnExit;
    property OnClick;
    {$IFDEF DELPHI5_LVL}
    property OnContextPopup;
    {$ENDIF}
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    {$IFDEF DELPHI4_LVL}
    property OnStartDock;
    property OnEndDock;
    {$ENDIF}
    property OnStartDrag;
  end;

  TEnabledEvent = procedure (Sender:TObject; ItemIndex: Integer; var Enabled: Boolean) of object;  

  TCustomHTMLRadioGroup = class(TCustomGroupBox)
  private
    FButtons: TList;
    FItems: TStrings;
    FItemIndex: Integer;
    FColumns: Integer;
    FReading: Boolean;
    FUpdating: Boolean;
    FButtonType: TButtonType;
    FCheckColor: TColor;
    FAlignment: TAlignment;
    FBtnVAlign: TTextLayout;
    FImages: TImageList;
    FContainer: TPictureContainer;
    FEllipsis: Boolean;
    FShadowOffset: Integer;
    FShadowColor: TColor;
    FOnIsEnabled: TEnabledEvent;
    procedure SetButtonType(const Value: TButtonType);
    procedure ArrangeButtons;
    procedure ButtonClick(Sender: TObject);
    procedure ItemsChange(Sender: TObject);
    procedure SetButtonCount(Value: Integer);
    procedure SetColumns(Value: Integer);
    procedure SetItemIndex(Value: Integer);
    procedure SetItems(Value: TStrings);
    procedure UpdateButtons;
    procedure CMEnabledChanged(var Message: TMessage); message CM_ENABLEDCHANGED;
    procedure CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure SetCheckColor(const Value: TColor);
    procedure SetAlignment(const Value: TAlignment);
    procedure SetButtonVertAlign(const Value: TTextLayout);
    procedure SetContainer(const Value: TPictureContainer);
    procedure SetImages(const Value: TImageList);
    procedure SetEllipsis(const Value: Boolean);
    procedure SetShadowColor(const Value: TColor);
    procedure SetShadowOffset(const Value: Integer);
  protected
    procedure Loaded; override;
    procedure ReadState(Reader: TReader); override;
    function CanModify: Boolean; virtual;
    procedure GetChildren(Proc: TGetChildProc; Root: TComponent); override;
    procedure Notification(AComponent: TComponent; AOperation: TOperation); override;
    property Columns: Integer read FColumns write SetColumns default 1;
    property ItemIndex: Integer read FItemIndex write SetItemIndex default -1;
    property Items: TStrings read FItems write SetItems;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    {$IFDEF DELPHI4_LVL}
    procedure FlipChildren(AllLevels: Boolean); override;
    {$ENDIF}
  published
    property Alignment: TAlignment read FAlignment write SetAlignment default taLeftJustify;
    property ButtonType: TButtonType read FButtonType write SetButtonType default btClassic;
    property ButtonVertAlign: TTextLayout read fBtnVAlign write SetButtonVertAlign default tlTop;
    property CheckColor: TColor read FCheckColor write SetCheckColor default clBlack;
    property Ellipsis: Boolean read FEllipsis write SetEllipsis;
    property Images: TImageList read FImages write SetImages;
    property PictureContainer: TPictureContainer read FContainer write SetContainer;
    property ShadowColor: TColor read FShadowColor write SetShadowColor default clGray;
    property ShadowOffset: Integer read FShadowOffset write SetShadowOffset default 1;
    property OnIsEnabled: TEnabledEvent read FOnIsEnabled write FOnIsEnabled;
  end;

  THTMLRadioGroup = class(TCustomHTMLRadioGroup)
  private
  protected
  public
  published
    property Align;
    {$IFDEF DELPHI4_LVL}
    property Anchors;
    property BiDiMode;
    property Constraints;
    property DragKind;
    property ParentBiDiMode;
    {$ENDIF}
    property ButtonType;
    property Caption;
    property Color;
    property Columns;
    property Ctl3D;
    property DragCursor;
    property DragMode;
    property Enabled;
    property Font;
    property ItemIndex;
    property Items;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnClick;
    {$IFDEF DELPHI5_LVL}
    property OnContextPopup;
    {$ENDIF}
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    {$IFDEF DELPHI4_LVL}
    property OnEndDock;
    property OnStartDock;
    {$ENDIF}
    property OnStartDrag;
  end;

  TCustomHTMLCheckGroup = class(TCustomGroupBox)
  private
    FButtons: TList;
    FItems: TStrings;
    FColumns: Integer;
    FReading: Boolean;
    FUpdating: Boolean;
    FButtonType: TButtonType;
    FCheckColor: TColor;
    FAlignment: TAlignment;
    FBtnVAlign: TTextLayout;
    FImages: TImageList;
    FContainer: TPictureContainer;
    FEllipsis: Boolean;
    FShadowOffset: Integer;
    FShadowColor: TColor;
    FOnIsEnabled: TEnabledEvent;
    procedure SetButtonType(const Value: TButtonType);
    procedure ArrangeButtons;
    procedure ButtonClick(Sender: TObject);
    procedure ItemsChange(Sender: TObject);
    procedure SetButtonCount(Value: Integer);
    procedure SetColumns(Value: Integer);
    procedure SetItems(Value: TStrings);
    procedure UpdateButtons;
    procedure CMEnabledChanged(var Message: TMessage); message CM_ENABLEDCHANGED;
    procedure CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure SetCheckColor(const Value: TColor);
    procedure SetAlignment(const Value: TAlignment);
    procedure SetButtonVertAlign(const Value: TTextLayout);
    procedure SetContainer(const Value: TPictureContainer);
    procedure SetImages(const Value: TImageList);
    procedure SetEllipsis(const Value: Boolean);
    procedure SetShadowColor(const Value: TColor);
    procedure SetShadowOffset(const Value: Integer);
    function GetChecked(Index: Integer): Boolean;
    procedure SetChecked(Index: Integer; const Value: Boolean);
  protected
    procedure Loaded; override;
    procedure ReadState(Reader: TReader); override;
    function CanModify: Boolean; virtual;
    procedure GetChildren(Proc: TGetChildProc; Root: TComponent); override;
    procedure Notification(AComponent: TComponent; AOperation: TOperation); override;
    property Columns: Integer read FColumns write SetColumns default 1;
    property Items: TStrings read FItems write SetItems;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    {$IFDEF DELPHI4_LVL}
    procedure FlipChildren(AllLevels: Boolean); override;
    {$ENDIF}
    property Checked[Index: Integer]: Boolean read GetChecked write SetChecked;
  published
    property Alignment: TAlignment read FAlignment write SetAlignment default taLeftJustify;
    property ButtonType: TButtonType read FButtonType write SetButtonType default btClassic;
    property ButtonVertAlign: TTextLayout read fBtnVAlign write SetButtonVertAlign default tlTop;
    property CheckColor: TColor read FCheckColor write SetCheckColor default clBlack;
    property Ellipsis: Boolean read FEllipsis write SetEllipsis;
    property Images: TImageList read FImages write SetImages;
    property PictureContainer: TPictureContainer read FContainer write SetContainer;
    property ShadowColor: TColor read FShadowColor write SetShadowColor default clGray;
    property ShadowOffset: Integer read FShadowOffset write SetShadowOffset default 1;
    property OnIsEnabled: TEnabledEvent read FOnIsEnabled write FOnIsEnabled;
  end;

  THTMLCheckGroup = class(TCustomHTMLCheckGroup)
  private
  protected
  public
  published
    property Align;
    {$IFDEF DELPHI4_LVL}
    property Anchors;
    property BiDiMode;
    property Constraints;
    property DragKind;
    property ParentBiDiMode;
    {$ENDIF}
    property ButtonType;
    property Caption;
    property Color;
    property Columns;
    property Ctl3D;
    property DragCursor;
    property DragMode;
    property Enabled;
    property Font;
    property Items;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnClick;
    {$IFDEF DELPHI5_LVL}
    property OnContextPopup;
    {$ENDIF}
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    {$IFDEF DELPHI4_LVL}
    property OnEndDock;
    property OnStartDock;
    {$ENDIF}
    property OnStartDrag;
  end;


implementation
uses
  ShellApi, CommCtrl
{$IFDEF DELPHI4_LVL}
  ,Imglist
{$ENDIF}
  ;

{$I HTMLENGO.PAS}

const
  BW = 12;

{ TCustomHTMLCheckBox }

constructor TCustomHTMLCheckBox.Create(AOwner: TComponent);
var
  VerInfo: TOSVersioninfo;

begin
  inherited Create(AOwner);
  Width := 98;
  Height := 20;
  FUrlColor := clBlue;
  FBtnVAlign := tlTop;																													// <PI>
  FImageCache := THTMLPictureCache.Create;
  FCaption := self.ClassName;
  FShadowOffset := 1;
  FShadowColor := clGray;

  VerInfo.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
  GetVersionEx(verinfo);

  FIsWinXP := (verinfo.dwMajorVersion > 5) OR
    ((verinfo.dwMajorVersion = 5) AND (verinfo.dwMinorVersion >= 1));
end;

function TCustomHTMLCheckBox.IsAnchor(x,y:integer):string;
var
  r,hr: TRect;
  XSize,YSize,HyperLinks,MouseLink: Integer;
  s:string;
  Anchor, Stripped, FocusAnchor:string;
begin
  r := Clientrect;
  s := Caption;
  Anchor:='';

  r.left := r.left + BW + 5;
  r.top := r.top + 4;

  if FButtonType = btTMS then
    r.left := r.left + 5;

  Result := '';																				 													// <PI>

  if HTMLDrawEx(Canvas,s,r,FImages,x,y,-1,-1,FShadowOffset,True,False,False,False,False,False,not FEllipsis,1.0,FURLColor,
                clNone,clNone,FShadowColor,Anchor,Stripped,FocusAnchor,XSize,YSize,HyperLinks,MouseLink,hr,FImageCache,FContainer) then
    Result := Anchor;
end;

procedure TCustomHTMLCheckBox.Paint;
var
  BL,BT,BB,BR:Integer;
  R, hr: TRect;
  a,s,fa,text: string;
  xsize,ysize: Integer;
  flg: longint;
  bmp: TBitmap;
  ExtraBW,HyperLinks,MouseLink: Integer;
  HTheme: THandle;
  UseWinXP: Boolean;

begin
  Canvas.Font := Font;
  ExtraBW := 5;
  BT := 4;

  if FIsWinXP then
    UseWinXP := IsThemeActive
  else
    UseWinXP := False;

  with Canvas do
  begin
    Text := Caption;
    case FButtonType of
    btBorland:
      begin
        case FBtnVAlign of
        tlTop: BT := 4;
        tlCenter: BT := (ClientRect.Bottom-ClientRect.Top) div 2 - (BW div 2);
        tlBottom: BT := ClientRect.Bottom - BW - 4;															// <PI>
        end;
        BB := BT + BW;
        if FAlignment = taRightJustify then																			// <PI>
          BL := ClientRect.Right - BW - 1																				// <PI>
        else																																			// <PI>
          BL := 1;
        BR := BW + BL;																																// <PI>
        Brush.Color:=clBtnFace;
        if not FDown then
        begin
          Pen.Color:=clBtnFace;
          Rectangle(BL,BT,BR,BB);
          Pen.Color:=clBtnHighLight;
          MoveTo(BL,BB);
          LineTo(BL,BT);
          LineTo(BR,BT);
          Pen.Color:=clBtnShadow;
          LineTo(BR,BB);
          LineTo(BL,BB);
        end
        else
        begin
          Pen.Color:=clBlack;
          Pen.Width:=2;
          Rectangle(BL+1,BT+1,BR+1,BB+1);
          Pen.Width:=1;
        end;

        case State of
        cbChecked:
          begin
       	    if Enabled then
              Pen.Color := FCheckColor
            else
              Pen.Color := clGray;
            Pen.Width := 1;
            Dec(BT);Dec(BB);
            MoveTo(BL+2,BT+BW div 2+1);
            LineTo(BL+2,BB-1);
            MoveTo(BL+3,BT+BW div 2);
            LineTo(BL+3,BB-2);
            MoveTo(BL+2,BB-1);
            LineTo(BR-2,BT+3);
            MoveTo(BL+3,BB-1);
            LineTo(BR-1,BT+3);
          end;
        cbGrayed:
          begin
            if Down then
            begin
              Pen.Color:=clBtnFace;
              Brush.Color:=clBtnFace;
              Rectangle(BL+2,BT+2,BR-1,BB-1);
            end;
            Brush.Color:=clBtnShadow;
            Rectangle(BL+2,BT+2,BR-1,BB-1);
          end;
        end;
      end;
    btTMS:
      begin
        ExtraBW := 10;
        bmp := TBitmap.Create;
        if state = cbChecked then
        begin
          if Enabled then
            bmp.LoadFromResourceName(hinstance,'HTMBCHK01')
          else
            bmp.LoadFromResourceName(hinstance,'HTMBCHK03');
        end
        else
        begin
          if Enabled then
            bmp.LoadFromResourceName(hinstance,'HTMBCHK02')
          else
            bmp.LoadFromResourceName(hinstance,'HTMBCHK04');
        end;

        bmp.Transparent:=true;
        bmp.TransparentMode :=tmAuto;

        case fBtnVAlign of
        tlTop: BT := 0;
	tlCenter: BT := (ClientRect.Bottom-ClientRect.Top) div 2 - (bmp.Height div 2);
        tlBottom: BT := ClientRect.Bottom - bmp.Height;
        end;
        if fAlignment = taRightJustify then
          BL := ClientRect.Right - bmp.Width - 1
        else
     	  BL := 0;
        Canvas.Draw(BL,BT,bmp);
        bmp.free;
      end;
    btWinXP:
      begin
        if not UseWinXP then
        begin
          ExtraBW := 10;
          bmp := TBitmap.Create;
          if state = cbChecked then
          begin
            if Enabled then
              bmp.LoadFromResourceName(hinstance,'HTMBCHK05')
            else
              bmp.LoadFromResourceName(hinstance,'HTMBCHK07');
          end
          else
          begin
            if Enabled then
              bmp.LoadFromResourceName(hinstance,'HTMBCHK06')
            else
              bmp.LoadFromResourceName(hinstance,'HTMBCHK08');
          end;

          bmp.Transparent := True;
          bmp.TransparentMode := tmAuto;

          case FBtnVAlign of
          tlTop: BT := 2;
          tlCenter: BT := (ClientRect.Bottom-ClientRect.Top) div 2 - (bmp.Height div 2);
          tlBottom: BT := ClientRect.Bottom - bmp.Height;
          end;
          if fAlignment = taRightJustify then
            BL := ClientRect.Right - bmp.Width - 1
          else
            BL := 0;
          Canvas.Draw(BL,BT,bmp);
          bmp.free;
        end
        else
        begin
          case FBtnVAlign of
          tlTop: BT := 4;
          tlCenter: BT := (ClientRect.Bottom - ClientRect.Top) div 2 - 6;
          tlBottom: BT := ClientRect.Bottom - 14;
          end;
          if FAlignment = taRightJustify then
            BL := ClientRect.Right - 15
          else
            BL := 0;

          HTheme := OpenThemeData(Self.Handle,'button');

          r := Rect(BL, BT, BL + 14, BT + 14);

          if State = cbChecked then
          begin
            if Enabled then
            begin
              if Down then
                DrawThemeBackground(HTheme,Canvas.Handle, BP_CHECKBOX,CBS_CHECKEDPRESSED,@r,nil)
              else
              if FHot then
                DrawThemeBackground(HTheme,Canvas.Handle, BP_CHECKBOX,CBS_CHECKEDHOT,@r,nil)
              else
                DrawThemeBackground(HTheme,Canvas.Handle, BP_CHECKBOX,CBS_CHECKEDNORMAL,@r,nil);
            end
            else
              DrawThemeBackground(HTheme,Canvas.Handle, BP_CHECKBOX,CBS_CHECKEDDISABLED,@r,nil);
          end
          else
          begin
            if Enabled then
            begin
              if Down then
                DrawThemeBackground(HTheme,Canvas.Handle, BP_CHECKBOX,CBS_UNCHECKEDPRESSED,@r,nil)
              else

              if FHot then
                DrawThemeBackground(HTheme,Canvas.Handle, BP_CHECKBOX,CBS_UNCHECKEDHOT,@r,nil)
              else
                DrawThemeBackground(HTheme,Canvas.Handle, BP_CHECKBOX,CBS_UNCHECKEDNORMAL,@r,nil)
            end
            else
              DrawThemeBackground(HTheme,Canvas.Handle, BP_CHECKBOX,CBS_UNCHECKEDDISABLED,@r,nil);
          end;

          CloseThemeData(HTheme);

        end;
      end;

    btClassic,btFlat:
      begin
        if fAlignment = taRightJustify then
          r.Left := ClientRect.Right - 13
        else
          r.left:=0;
        r.Right := r.Left + 13;
	case FBtnVAlign of
        tlTop: r.Top := 4;
        tlCenter: r.Top := (ClientRect.Bottom-ClientRect.Top) div 2 - 6;
        tlBottom: r.Top := ClientRect.Bottom - 17;														// <PI>
        end;																																			// <PI>
        r.Bottom := r.Top + 13;																						// <PI>
        flg:=0;
        if not Enabled then flg := flg or DFCS_INACTIVE;
        if State = cbGrayed then flg := flg or DFCS_INACTIVE;
        if State = cbChecked then flg := flg or DFCS_CHECKED;
        if FButtonType=btFlat then flg := flg or  DFCS_FLAT;
        DrawFrameControl(canvas.handle,r,DFC_BUTTON,DFCS_BUTTONCHECK or flg);
      end;
    end;

    R := GetClientRect;

    if FAlignment = taRightJustify then
    begin
      r.Left := 0;
      r.Right := r.Right - BW - ExtraBW;
    end																																				// <PI>
    else																																				// <PI>
      r.left := r.left + BW + ExtraBW;
    r.top := r.top+4;

    if not Enabled then
    begin
      OffsetRect(r,1,1);
      Canvas.Font.Color := clWhite;
      HTMLDrawEx(Canvas,Text,R,nil,0,0,-1,-1,FShadowOffset,False,False,False,False,False,False,not FEllipsis,1.0,clWhite,
        clNone,clNone,FShadowColor,a,s,fa,XSize,YSize,HyperLinks,MouseLink,hr,FImageCache,FContainer);

      Canvas.Font.Color := clGray;
      Offsetrect(r,-1,-1);

      HTMLDrawEx(Canvas,Text,R,nil,0,0,-1,-1,FShadowOffset,False,False,False,False,False,False,not FEllipsis,1.0,clGray,
        clNone,clNone,FShadowColor,a,s,fa,XSize,YSize,HyperLinks,MouseLink,hr,FImageCache,FContainer);
    end
    else
      HTMLDrawEx(Canvas,Text,R,nil,0,0,-1,-1,FShadowOffset,False,False,False,False,False,False,not FEllipsis,1.0,FURLColor,
        clNone,clNone,FShadowColor,a,s,fa,XSize,YSize,HyperLinks,MouseLink,hr,FImageCache,FContainer);

    if FFocused then
    begin
      r.right := r.left + xsize + 3;
      r.bottom := r.top + ysize + 1;
      DrawFocusRect(R);
    end;
  end;
end;

procedure TCustomHTMLCheckBox.SetDown(Value:Boolean);
begin
  if FDown <> Value then
  begin
    FDown := Value;
  end;
end;

procedure TCustomHTMLCheckBox.SetState(Value:TCheckBoxState);
var
  r: TRect;
begin
  if FState<>Value then
  begin
    FState:=Value;
    Click;
    r := GetClientRect;
    r.Right := 20;
    InvalidateRect(self.Handle,@r,True);
  end;
end;

function TCustomHTMLCheckBox.GetChecked: Boolean;
begin
  Result := State = cbChecked;
end;

procedure TCustomHTMLCheckBox.SetChecked(Value:Boolean);
begin
  if Value then
    State := cbChecked
  else
    State := cbUnchecked;
  Invalidate;																																		// <PI>
end;

procedure TCustomHTMLCheckBox.SetCheckColor(Value:TColor);
begin
  FCheckColor := Value;
  Paint;
end;

procedure TCustomHTMLCheckBox.DoEnter;
begin
  inherited DoEnter;
  FFocused := True;
  Invalidate;
end;

procedure TCustomHTMLCheckBox.DoExit;
begin
  inherited DoExit;
  FFocused := False;
  Invalidate;
end;

procedure TCustomHTMLCheckBox.MouseDown(Button: TMouseButton; Shift: TShiftState;X, Y: Integer);
var
  Anchor:string;
begin
  Anchor := '';

  if FFocused then
  begin
    Anchor := IsAnchor(X,Y);

    if Anchor <> '' then
    begin
      if (Pos('://',Anchor) > 0) or (Pos('mailto:',anchor) > 0) then
        Shellexecute(0,'open',pchar(anchor),nil,nil,SW_NORMAL)
      else
      begin
        if Assigned(FAnchorClick) then
          FAnchorClick(self,anchor);
      end;
    end;
  end
  else
  begin
    SetFocus;
    FFocused := True;
  end;

  if Anchor = '' then
  begin
    inherited MouseDown(Button, Shift, X, Y);
    MouseCapture := True;
    Down := True;
  end;

  if FIsWinXP and (ButtonType = btWinXP) then
    Invalidate;
end;

procedure TCustomHTMLCheckBox.MouseUp(Button: TMouseButton; Shift: TShiftState;
                                  X, Y: Integer);
begin
  MouseCapture := False;

  Down := False;
  if (X >= 0) and (X<=Width) and (Y>=0) and (Y<=Height) then
    Toggle;
  inherited MouseUp(Button, Shift, X, Y);

  if FIsWinXP and (ButtonType = btWinXP) then
    Invalidate;
end;

procedure TCustomHTMLCheckBox.MouseMove(Shift: TShiftState;X, Y: Integer);
var
  Anchor:string;
begin
  if MouseCapture then
     Down:=(X>=0) and (X<=Width) and (Y>=0) and (Y<=Height);

  if fFocused then
    Anchor := IsAnchor(x,y)
  else
    Anchor := '';

  if Anchor <> '' then
  begin
    if (self.Cursor = crDefault) or (FAnchor <> Anchor) then
    begin
      FAnchor := Anchor;
      self.Cursor := crHandPoint;
      if Assigned(FAnchorEnter) then
        FAnchorEnter(self,Anchor);
    end;
  end
  else
  begin
    if self.Cursor = crHandPoint then
    begin
      self.Cursor := crDefault;
      if Assigned(FAnchorExit) then
        FAnchorExit(self,Anchor);
    end;
  end;

  inherited MouseMove(Shift,X,Y);
end;

procedure TCustomHTMLCheckBox.KeyDown(var Key:Word;Shift:TShiftSTate);
begin
  if (Key=vk_return) and (fReturnIsTab) then
  begin
    Key := vk_tab;
    PostMessage(self.Handle,wm_keydown,VK_TAB,0);
  end;

  if Key = vk_Space then
    Down := True;
  inherited KeyDown(Key,Shift);
end;

procedure TCustomHTMLCheckBox.KeyUp(var Key:Word;Shift:TShiftSTate);
begin
  if Key = vk_Space then
  begin
    Down := False;
    Toggle;
  end;
end;

procedure TCustomHTMLCheckBox.SetImages(const Value: TImageList);
begin
  FImages := Value;
  Invalidate;
end;

procedure TCustomHTMLCheckBox.SetURLColor(const Value: TColor);
begin
  if FURLColor <> Value then
  begin
    FURLColor := Value;
    Invalidate;
  end;  
end;

procedure TCustomHTMLCheckBox.Notification(AComponent: TComponent;
  AOperation: TOperation);
begin
  if (AOperation = opRemove) and (AComponent = FImages) then
    FImages:=nil;

  if (AOperation = opRemove) and (AComponent = FContainer) then
    FContainer := nil;

  inherited;
end;

procedure TCustomHTMLCheckBox.CMEnabledChanged(var Message: TMessage);
begin
  inherited;
  Invalidate;
end;

procedure TCustomHTMLCheckBox.SetButtonType(const Value: TButtonType);
begin
  FButtonType := Value;
  Invalidate;
end;

procedure TCustomHTMLCheckBox.SetButtonVertAlign(const Value: TTextLayout);
begin																																						// <PI>
  if Value <> FBtnVAlign then
  begin
    FBtnVAlign := Value;
    Invalidate;
  end;
end;

procedure TCustomHTMLCheckBox.SetAlignment(const Value: TLeftRight);									// <PI>
begin
  if FAlignment <> Value then
  begin
    FAlignment := Value;
    Invalidate;
  end;
end;																																						// <PI>

destructor TCustomHTMLCheckBox.Destroy;
begin
  FImageCache.Free;
  inherited;
end;

procedure TCustomHTMLCheckBox.SetEllipsis(const Value: Boolean);
begin
  if FEllipsis <> Value then
  begin
    FEllipsis := Value;
    Invalidate
  end;
end;

procedure TCustomHTMLCheckBox.SetCaption(Value: string);
begin
  SetWindowText(Handle,pchar(Value));
  FCaption := Value;
  Invalidate;
end;


procedure TCustomHTMLCheckBox.Toggle;
begin
  Checked := not Checked;
end;

procedure TCustomHTMLCheckBox.CMDialogChar(var Message: TCMDialogChar);
begin
  with Message do
    if IsAccel(CharCode, FCaption) and CanFocus then
    begin
      Toggle;
      if TabStop then SetFocus;
      Result := 1;
    end else
      inherited;
end;

procedure TCustomHTMLCheckBox.SetContainer(const Value: TPictureContainer);
begin
  FContainer := Value;
  Invalidate;
end;

procedure TCustomHTMLCheckBox.SetShadowColor(const Value: TColor);
begin
  if FShadowColor <> Value then
  begin
    FShadowColor := Value;
    Invalidate;
  end;
end;

procedure TCustomHTMLCheckBox.SetShadowOffset(const Value: Integer);
begin
  if FShadowOffset <> Value then
  begin
    FShadowOffset := Value;
    Invalidate;
  end;
end;

procedure TCustomHTMLCheckBox.CMMouseEnter(var Message: TMessage);
begin
  FHot := True;
  if (FButtonType = btWinXP) then Invalidate;
end;

procedure TCustomHTMLCheckBox.CMMouseLeave(var Message: TMessage);
begin
  FHot := False;
  if (FButtonType = btWinXP) then Invalidate;
end;

{ THTMLRadioButton }

constructor THTMLRadioButton.Create(AOwner: TComponent);
var
  VerInfo: TOSVersionInfo;

begin
  inherited Create(AOwner);
  Width := 98;
  Height := 20;
  FURLColor := clBlue;
  FBtnVAlign := tlTop;																														// <PI>
  FImageCache := THTMLPictureCache.Create;
  FCaption := self.ClassName;
  FShadowOffset := 1;
  FShadowColor := clGray;
  VerInfo.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
  GetVersionEx(verinfo);

  FIsWinXP := (verinfo.dwMajorVersion > 5) OR
    ((verinfo.dwMajorVersion = 5) AND (verinfo.dwMinorVersion >= 1));
end;

function THTMLRadioButton.IsAnchor(x,y:integer):string;
var
  r,hr: TRect;
  XSize,YSize,HyperLinks,MouseLink: Integer;
  s: string;
  Anchor,Stripped,FocusAnchor: string;
begin
  r := Clientrect;
  s := Caption;
  Anchor := '';

  r.left := r.left + BW + 5;
  r.top := r.top + 4;
  if FButtonType = btTMS then r.left:=r.left+5;

  Result := '';																																	// <PI>

  if HTMLDrawEx(Canvas,s,r,FImages,x,y,-1,-1,FShadowOffset,True,False,False,False,False,False,not FEllipsis,1.0,FURLColor,
                clNone,clNone,FShadowColor,Anchor,Stripped,FocusAnchor,XSize,YSize,HyperLinks,MouseLink,hr,FImageCache,FContainer) then
    Result := Anchor;
end;

procedure THTMLRadioButton.Paint;
var
  BL,BT,BR,BB,BM:Integer;
  CX,CY:Integer;
  R,hr: TRect;
  a,s,fa,text: string;																																// <PI>
  XSize,YSize,HyperLinks,MouseLink: Integer;
  flg: Longint;
  bmp: TBitmap;
  HTheme: THandle;
  UseWinXP: Boolean;

begin
  Canvas.Font := Font;
  Text := Caption;

  if FIsWinXP then
    UseWinXP := IsThemeActive
  else
    UseWinXP := False;

  with Canvas do
  begin
    BR := 0;
    BT := 4;
    case FButtonType of
    btBorland:
      begin
        BM := BW div 2;
        case FBtnVAlign of
        tlTop: BT := 4;
        tlCenter: BT := (ClientRect.Bottom-ClientRect.Top) div 2 - BM;
        tlBottom: BT := ClientRect.Bottom - BW - 4;
        end;
        BB := BT + BW;
        if FAlignment = taRightJustify then																			// <PI>
          BL := ClientRect.Right - BW - 1																				// <PI>
        else																																			// <PI>
          BL := 1;
        BR := BW + BL;																																// <PI>
        Brush.Color := clBtnFace;
        if Down then
        begin
          Pen.Color:=clBlack;
          MoveTo(BL+BM,BT);
          LineTo(BL,BT+BM);
          LineTo(BL+BM,BB);
          LineTo(BR,BT+BM);
          LineTo(BL+BM,BT);
          MoveTo(BL+BM,BT+1);
          LineTo(BL+1,BT+BM);
          LineTo(BL+BM,BB-1);
          LineTo(BR-1,BT+BM);
          LineTo(BL+BM,BT+1);
        end
        else
        begin
          Pen.Color := clBtnFace;
          if Checked then
            Pen.Color := clGray
          else
            Pen.Color := clSilver;
          MoveTo(BL+BM,BT);
          LineTo(BL,BT+BM);
          LineTo(BL+BM,BB);
          if Checked then
            Pen.Color := clSilver
          else
            Pen.Color := clGray;
          LineTo(BR,BT+BM);
          LineTo(BL+BM,BT);
        end;
        if Checked then
        begin
          if Enabled then
            Pen.Color := CheckColor
          else
            Pen.Color := clGray;
          CX:=BL+BM;CY:=BT+BM;
          MoveTo(CX-1,CY-1);
          LineTo(CX+2,CY-1);
          MoveTo(CX-2,CY);
          LineTo(CX+3,CY);
          MoveTo(CX-1,CY+1);
          LineTo(CX+2,CY+1);
          MoveTo(CX,CY-2);
          LineTo(CX,CY+3);
        end;
        BR := BW;
      end;
    btTMS:
      begin
        BR := 13;
        bmp := TBitmap.Create;
        if (Checked) then
        begin
          if Enabled then
            bmp.LoadFromResourceName(hinstance,'HTMBRAD01')
          else
            bmp.LoadFromResourceName(hinstance,'HTMBRAD03');
        end
        else
        begin
          if Enabled then
            bmp.LoadFromResourceName(hinstance,'HTMBRAD02')
          else
            bmp.LoadFromResourceName(hinstance,'HTMBRAD04');
        end;

        bmp.Transparent:=true;
        bmp.TransparentMode :=tmAuto;

        case FBtnVAlign of
        tlTop: BT := 2;
        tlCenter: BT := (ClientRect.Bottom-ClientRect.Top) div 2 - (bmp.Height div 2);
        tlBottom: BT := ClientRect.Bottom - bmp.Height - 2;
        end;
        if fAlignment = taRightJustify then																			// <PI>
          BL := ClientRect.Right - bmp.Width - 1																	// <PI>
        else																																			// <PI>
          BL := 0;
        Canvas.Draw(BL,BT,bmp);
        bmp.Free;
      end;
    btWinXP:
      begin
        BR := 13;

        if not UseWinXP then
        begin
          bmp := TBitmap.Create;
          if (Checked) then
          begin
            if Enabled then
              bmp.LoadFromResourceName(hinstance,'HTMBRAD05')
            else
              bmp.LoadFromResourceName(hinstance,'HTMBRAD07');
          end
          else
          begin
            if Enabled then
              bmp.LoadFromResourceName(hinstance,'HTMBRAD06')
            else
              bmp.LoadFromResourceName(hinstance,'HTMBRAD08');
          end;

          bmp.Transparent := True;
          bmp.TransparentMode := tmAuto;

          case FBtnVAlign of
          tlTop: BT := 2;
          tlCenter: BT := (ClientRect.Bottom-ClientRect.Top) div 2 - (bmp.Height div 2);
          tlBottom: BT := ClientRect.Bottom - bmp.Height - 2;
          end;
          if fAlignment = taRightJustify then																			// <PI>
            BL := ClientRect.Right - bmp.Width - 1																	// <PI>
          else																																			// <PI>
            BL := 0;
          Canvas.Draw(BL,BT,bmp);
          bmp.Free;
        end
        else
        begin
          case FBtnVAlign of
          tlTop: BT := 4;
          tlCenter: BT := (ClientRect.Bottom - ClientRect.Top) div 2 - 6;
          tlBottom: BT := ClientRect.Bottom - 14;
          end;
          if FAlignment = taRightJustify then
            BL := ClientRect.Right - 14
          else
            BL := 0;

          HTheme := OpenThemeData(Self.Handle,'button');

          r := Rect(BL, BT, BL + 13, BT + 13);

          if Checked then
          begin
            if Enabled then
            begin
              if Down then
                DrawThemeBackground(HTheme,Canvas.Handle, BP_RADIOBUTTON,RBS_CHECKEDPRESSED,@r,nil)
              else
              if FHot then
                DrawThemeBackground(HTheme,Canvas.Handle, BP_RADIOBUTTON,RBS_CHECKEDHOT,@r,nil)
              else
                DrawThemeBackground(HTheme,Canvas.Handle, BP_RADIOBUTTON,RBS_CHECKEDNORMAL,@r,nil);
            end
            else
              DrawThemeBackground(HTheme,Canvas.Handle, BP_RADIOBUTTON,RBS_CHECKEDDISABLED,@r,nil);
          end
          else
          begin
            if Enabled then
            begin
              if Down then
                DrawThemeBackground(HTheme,Canvas.Handle, BP_RADIOBUTTON,RBS_UNCHECKEDPRESSED,@r,nil)
              else

              if FHot then
                DrawThemeBackground(HTheme,Canvas.Handle, BP_RADIOBUTTON,RBS_UNCHECKEDHOT,@r,nil)
              else
                DrawThemeBackground(HTheme,Canvas.Handle, BP_RADIOBUTTON,RBS_UNCHECKEDNORMAL,@r,nil)
            end
            else
              DrawThemeBackground(HTheme,Canvas.Handle, BP_RADIOBUTTON,RBS_UNCHECKEDDISABLED,@r,nil);
          end;

          CloseThemeData(HTheme);

        end;
      end;
    btClassic,btFlat:
      begin
        if fAlignment = taRightJustify then
          r.Left := ClientRect.Right - 13
        else																																			// <PI>
          r.Left:=0;

        r.Right := r.Left + 13;
        case FBtnVAlign of
        tlTop: r.Top := 4;
        tlCenter: r.Top := (ClientRect.Bottom-ClientRect.Top) div 2 - 6;
        tlBottom: r.Top := ClientRect.Bottom - 17;
        end;

        r.bottom := r.Top + 13;																						// <PI>
        flg:=0;
        BR:=13;
        if Checked then flg := flg or DFCS_CHECKED;
        if FButtonType=btFlat then flg := flg or  DFCS_FLAT;
        if not Enabled then flg := flg or DFCS_INACTIVE;
        DrawFrameControl(Canvas.Handle,r,DFC_BUTTON,DFCS_BUTTONRADIO or flg);
      end;
    end;

      r := GetClientRect;
      if FAlignment = taRightJustify then																				// <PI>
      begin																																			// <PI>
        r.Left := 0;																														// <PI>
        r.Right := r.Right - BR - 5;																				// <PI>
      end																																				// <PI>
      else																																				// <PI>
        r.Left := r.Left + BR + 5;

      r.Top := r.Top + 4;

      if not Enabled then
      begin
        OffsetRect(R,1,1);
        Canvas.Font.Color := clWhite;
        HTMLDrawEx(Canvas,Text,R,FImages,0,0,-1,-1,FShadowOffset,False,False,False,False,False,False,not FEllipsis,1.0,clGray,
          clNone,clNone,FShadowColor,a,s,fa,XSize,YSize,HyperLinks,MouseLink,hr,FImageCache,FContainer);
        Canvas.Font.Color := clGray;
        Offsetrect(R,-1,-1);
        HTMLDrawEx(Canvas,Text,R,FImages,0,0,-1,-1,FShadowOffset,False,False,False,False,False,False,not FEllipsis,1.0,clWhite,
          clNone,clNone,FShadowColor,a,s,fa,XSize,YSize,HyperLinks,MouseLink,hr,FImageCache,FContainer);
      end
      else
      begin
        Canvas.Font.Color := Font.Color;
        HTMLDrawEx(Canvas,Text,R,FImages,0,0,-1,-1,FShadowOffset,False,False,False,False,False,False,not FEllipsis,1.0,FURLColor,
                clNone,clNone,FShadowColor,a,s,fa,XSize,YSize,HyperLinks,MouseLink,hr,FImageCache,FContainer);
      end;

      if FFocused then
      begin
        r.Right := r.Left + xsize + 3;
        r.Bottom := r.Top + ysize + 1;
        DrawFocusRect(R);
      end;
    end;

end;

procedure THTMLRadioButton.SetURLColor(const Value: TColor);
begin
 fURLColor := Value;
 Invalidate;
end;


procedure THTMLRadioButton.SetDown(Value:Boolean);
begin
  if FDown<>Value then
  begin
    FDown:=Value;
  end;
end;


procedure THTMLRadioButton.TurnSiblingsOff;
var
  i:Integer;
  Sibling: THTMLRadioButton;

begin
  if (Parent <> nil) then
  for i:=0 to Parent.ControlCount-1 do
    if Parent.Controls[i] is THTMLRadioButton then
    begin
      Sibling := THTMLRadioButton(Parent.Controls[i]);
      if (Sibling <> Self) and
         (Sibling.GroupIndex = GroupIndex) then
          Sibling.SetChecked(False);
    end;
end;

procedure THTMLRadioButton.SetChecked(Value: Boolean);
begin
  if FChecked <> Value then
  begin
    TabStop:=Value;
    FChecked:=Value;
    if Value then
    begin
      TurnSiblingsOff;
      Click;
    end;
    Invalidate;
  end;
end;

procedure THTMLRadioButton.SetButtonType(const Value:TButtonType);
begin
  FButtonType := Value;
  Invalidate;
end;

procedure THTMLRadioButton.SetCheckColor(Value:TColor);
begin
  FCheckColor := Value;
  Invalidate;
end;

procedure THTMLRadioButton.DoEnter;
begin
  inherited DoEnter;
  FFocused := True;
  Checked := True;
  Invalidate;
end;

procedure THTMLRadioButton.DoExit;
begin
  inherited DoExit;
  FFocused := False;
  Invalidate;
end;

procedure THTMLRadioButton.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Anchor:string;
begin
  Anchor := '';

  if FFocused then
  begin
    Anchor := IsAnchor(X,Y);
    if Anchor <> '' then
    begin
      if (Pos('://',Anchor)>0) or (Pos('mailto:',Anchor)>0) then
        shellexecute(0,'open',PChar(Anchor),nil,nil,SW_NORMAL)
      else
      begin
        if Assigned(FAnchorClick) then
          FAnchorClick(self,anchor);
      end;
    end;
  end
  else
  begin
    SetFocus;
    FFocused := True;
  end;

  if Anchor = '' then
  begin
    inherited MouseDown(Button, Shift, X, Y);
    MouseCapture := True;
    Down := True;
  end;
  if FIsWinXP then
    Invalidate;
end;

procedure THTMLRadioButton.MouseUp(Button: TMouseButton; Shift: TShiftState;
                                  X, Y: Integer);
begin
  MouseCapture := False;
  Down := False;
  if (X>=0) and (X<=Width) and (Y>=0) and (Y<=Height)
     and not Checked then Checked:=True;
  inherited MouseUp(Button, Shift, X, Y);
  if FIsWinXP and (ButtonType = btWinXP) then
    Invalidate;
end;

procedure THTMLRadioButton.MouseMove(Shift: TShiftState;X, Y: Integer);
var
  Anchor:string;
begin
  if MouseCapture then
    Down := (X>=0) and (X<=Width) and (Y>=0) and (Y<=Height);

  if FFocused then
    Anchor := IsAnchor(x,y)
  else
    Anchor := '';

  if Anchor <> '' then
  begin
    if (self.Cursor = crDefault) or (fAnchor<>Anchor) then
    begin
      FAnchor := Anchor;
      self.Cursor:=crHandPoint;
      if Assigned(FAnchorEnter) then
        FAnchorEnter(self,anchor);
    end;
  end
  else
  begin
    if self.Cursor = crHandPoint then
    begin
      self.Cursor := crDefault;
      if assigned(FAnchorExit) then
        FAnchorExit(self,anchor);
    end;
  end;

  inherited MouseMove(Shift,X,Y);
end;

procedure THTMLRadioButton.KeyDown(var Key:Word;Shift:TShiftSTate);
begin
  if (Key=vk_return) and (fReturnIsTab) then
  begin
    Key := vk_tab;
    PostMessage(self.Handle,wm_keydown,VK_TAB,0);
  end;

  if Key = vk_Space then
    Down := True;
  inherited KeyDown(Key,Shift);
end;

procedure THTMLRadioButton.KeyUp(var Key:Word;Shift:TShiftSTate);
begin
  if Key = vk_Space then
  begin
     Down := False;
    if not Checked then Checked := True;
  end;
end;

procedure THTMLRadioButton.SetImages(const Value: TImageList);
begin
  FImages := Value;
  Invalidate;
end;

procedure THTMLRadioButton.Notification(AComponent: TComponent;
  AOperation: TOperation);
begin
 if (AOperation = opRemove) and (AComponent = FImages) then
   FImages := nil;
   
  if (AOperation = opRemove) and (AComponent = FContainer) then
    FContainer := nil;

 inherited;
end;

procedure THTMLRadioButton.CMEnabledChanged(var Message: TMessage);
begin
  inherited;
  Invalidate;
end;

procedure THTMLRadioButton.SetButtonVertAlign(const Value: TTextLayout);
begin
  if Value <> FBtnVAlign then
  begin
    FBtnVAlign := Value;
    Invalidate;
  end;
end;

procedure THTMLRadioButton.SetAlignment(const Value: TLeftRight);
begin
  if FAlignment <> Value then
  begin
    FAlignment := Value;
    Invalidate;
  end;
end;

destructor THTMLRadioButton.Destroy;
begin
  FImageCache.Free;
  inherited;
end;

procedure THTMLRadioButton.SetEllipsis(const Value: Boolean);
begin
  if FEllipsis <> Value then
  begin
    FEllipsis := Value;
    Invalidate;
  end;
end;

procedure THTMLRadioButton.SetCaption(const Value: string);
begin
  inherited Caption := Value;
  FCaption := Value;
  Invalidate;
end;

procedure THTMLRadioButton.CMDialogChar(var Message: TCMDialogChar);
begin
  with Message do
    if IsAccel(CharCode, FCaption) and CanFocus then
    begin
      Checked := True;
      if TabStop then SetFocus;
      Result := 1;
    end else
      inherited;

end;

procedure THTMLRadioButton.SetContainer(const Value: TPictureContainer);
begin
  FContainer := Value;
  Invalidate;
end;

procedure THTMLRadioButton.SetShadowColor(const Value: TColor);
begin
  if FShadowColor <> Value then
  begin
    FShadowColor := Value;
    Invalidate;
  end;
end;

procedure THTMLRadioButton.SetShadowOffset(const Value: Integer);
begin
  if FShadowOffset <> Value then
  begin
    FShadowOffset := Value;
    Invalidate;
  end;
end;

procedure THTMLRadioButton.CMMouseEnter(var Message: TMessage);
begin
  FHot := True;
  if FIsWinXP and (ButtonType = btWinXP) then
    Invalidate;
end;

procedure THTMLRadioButton.CMMouseLeave(var Message: TMessage);
begin
  FHot := False;
  if FIsWinXP and (ButtonType = btWinXP) then
    Invalidate;
end;

{ THTMLButton }

constructor THTMLButton.Create(AOwner: TComponent);
var
  VerInfo: TOSVersionInfo;
begin
  inherited Create(AOwner);
  FCanvas := TCanvas.Create;
  FStyle := bsAutoDetect;
  FKind := bkCustom;
  FLayout := blGlyphLeft;
  FSpacing := 4;
  FMargin := -1;
  ControlStyle := ControlStyle + [csReflector];
  FImageCache := THTMLPictureCache.Create;
  FCaption := self.ClassName;
  FColor := clBtnFace;
  FHoverColor := clBtnFace;
  FDownColor := clBtnFace;
  FShadowColor := clGray;
  FShadowOffset := 1;
{$IFDEF DELPHI4_LVL}
  DoubleBuffered := True;
{$ENDIF}
  VerInfo.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
  GetVersionEx(verinfo);

  FIsWinXP := (verinfo.dwMajorVersion > 5) OR
    ((verinfo.dwMajorVersion = 5) AND (verinfo.dwMinorVersion >= 1));
end;

destructor THTMLButton.Destroy;
begin
  FImageCache.Free;
  inherited Destroy;
  FCanvas.Free;
end;

procedure THTMLButton.CreateHandle;
begin
  inherited CreateHandle;
end;

procedure THTMLButton.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do Style := Style or BS_OWNERDRAW;
end;

procedure THTMLButton.SetButtonStyle(ADefault: Boolean);
begin
  if ADefault <> IsFocused then
  begin
    IsFocused := ADefault;
    Refresh;
  end;
end;

procedure THTMLButton.Click;
var
  Form: TCustomForm;
  Control: TWinControl;
begin
  case FKind of
    bkClose:
      begin
        Form := GetParentForm(Self);
        if Form <> nil then Form.Close
        else inherited Click;
      end;
    bkHelp:
      begin
        Control := Self;
        while (Control <> nil) and (Control.HelpContext = 0) do
          Control := Control.Parent;
        if Control <> nil then Application.HelpContext(Control.HelpContext)
        else inherited Click;
      end;
    else
      inherited Click;
  end;
end;

procedure THTMLButton.CNMeasureItem(var Message: TWMMeasureItem);
begin
  with Message.MeasureItemStruct^ do
  begin
    ItemWidth := Width;
    ItemHeight := Height;
  end;
end;

procedure THTMLButton.CNDrawItem(var Message: TWMDrawItem);
begin
  DrawItem(Message.DrawItemStruct^);
end;

procedure THTMLButton.DrawItem(const DrawItemStruct: TDrawItemStruct);
var
  IsDown, IsDefault: Boolean;
  R,hr: TRect;
  Flags: Longint;
  Anchor,Stripped,FocusAnchor:string;
  XSize,YSize,HyperLinks,MouseLink:integer;
  s: string;
  HTheme: THandle;
  Pt: TPoint;
  UseWinXP: Boolean;

begin
  FCanvas.Handle := DrawItemStruct.hDC;
  R := ClientRect;

  with DrawItemStruct do
  begin
    IsDown := ItemState and ODS_SELECTED <> 0;
    IsDefault := ItemState and ODS_FOCUS <> 0;
  end;

  if FIsWinXP then
    UseWinXP := IsThemeActive
  else
    UseWinXP := False;

  FCanvas.Font.Assign(Font);

  if FFlat then
  begin
    if not IsDown then
    begin
      FCanvas.Pen.Color := clBtnShadow;
      FCanvas.Pen.Width := 1;
      if FHasMouse then
        FCanvas.Brush.Color := FHoverColor
      else
        FCanvas.Brush.Color := FColor;

      FCanvas.Rectangle(R.Left, R.Top, R.Right, R.Bottom);

      if IsFocused then
      begin
        InflateRect(R,-1,-1);
        FCanvas.Rectangle(R.Left, R.Top, R.Right, R.Bottom);
      end;

      if FHasMouse then
      begin
        FCanvas.Pen.Color := clWhite;
        FCanvas.Pen.Width := 1;
        FCanvas.MoveTo(R.Left,R.Bottom);
        FCanvas.LineTo(R.Left,R.Top);
        FCanvas.LineTo(R.Right,R.Top);
      end;
    end
    else
    begin
      FCanvas.Pen.Color := clBtnShadow;
      FCanvas.Pen.Width := 2;
      FCanvas.Brush.Color := FDownColor;
      FCanvas.Rectangle(R.Left, R.Top, R.Right, R.Bottom);
      FCanvas.Pen.Color := clGray;
      FCanvas.Pen.Width := 1;
      FCanvas.MoveTo(R.Left,R.Bottom);
      FCanvas.LineTo(R.Left,R.Top);
      FCanvas.LineTo(R.Right,R.Top);
    end;
  end
  else
  begin
    if UseWinXP then
    begin
      HTheme := OpenThemeData(Self.Handle,'button');

      GetCursorPos(pt);
      pt := ScreenToClient(pt);


      if IsDown then
        DrawThemeBackground(HTheme,FCanvas.Handle, BP_PUSHBUTTON,PBS_PRESSED ,@R,nil)
      else
        if PtInRect(R,pt) then
          DrawThemeBackground(HTheme,FCanvas.Handle, BP_PUSHBUTTON,PBS_HOT ,@R,nil)
        else
          DrawThemeBackground(HTheme,FCanvas.Handle, BP_PUSHBUTTON,PBS_NORMAL ,@R,nil);
      CloseThemeData(HTheme);
    end
    else
    begin
      Flags := DFCS_BUTTONPUSH or DFCS_ADJUSTRECT;

      if IsDown then Flags := Flags or DFCS_PUSHED;

      if DrawItemStruct.ItemState and ODS_DISABLED <> 0 then
        Flags := Flags or DFCS_INACTIVE;

      // DrawFrameControl doesn't allow for drawing a button as the
      //  default button, so it must be done here.
      if IsFocused or IsDefault then
      begin
        FCanvas.Pen.Color := clWindowFrame;
        FCanvas.Pen.Width := 1;
        FCanvas.Brush.Style := bsClear;
        FCanvas.Rectangle(R.Left, R.Top, R.Right, R.Bottom);
        // DrawFrameControl must draw within this border
        InflateRect(R, -1, -1);
      end;

      // DrawFrameControl does not draw a pressed button correctly }
      if IsDown then
      begin
        FCanvas.Pen.Color := clBtnShadow;
        FCanvas.Pen.Width := 1;
        FCanvas.Brush.Color := clBtnFace;
        FCanvas.Rectangle(R.Left, R.Top, R.Right, R.Bottom);
        InflateRect(R, -1, -1);
      end
      else
        DrawFrameControl(DrawItemStruct.hDC, R, DFC_BUTTON, Flags);
    end;

    if IsFocused then
    begin
      R := ClientRect;
      InflateRect(R, -1, -1);
    end;

    FCanvas.Font := Self.Font;

    if IsDown then
      OffsetRect(R, 1, 1);

    if IsFocused and IsDefault then
    begin
      R := ClientRect;
      InflateRect(R, -4, -4);
      FCanvas.Pen.Color := clWindowFrame;
      FCanvas.Brush.Color := clBtnFace;
      DrawFocusRect(FCanvas.Handle, R);
    end;
  end;
  R := ClientRect;

  Inflaterect(r,-4,-4);

  s := Caption;

  HTMLDrawEx(FCanvas,s,R,FImages,0,0,-1,-1,FShadowOffset,False,True,False,False,False,False,not FEllipsis,1.0,clBlue,
                clNone,clNone,FShadowColor,Anchor,Stripped,FocusAnchor,XSize,YSize,HyperLinks,MouseLink,hr,FImageCache,FContainer);

  if YSize < R.bottom - R.Top then
  R.top := R.top + ((R.Bottom - R.top - YSize) shr 1);

  if IsDown then
    if FFlat then
      OffsetRect(r,1,1)
    else
      OffsetRect(r,2,2);

  if not Enabled then
  begin
    Offsetrect(R,1,1);
    FCanvas.Font.Color := clWhite;

    HTMLDrawEx(FCanvas,s,R,FImages,0,0,-1,-1,FShadowOffset,False,False,False,False,False,False,not FEllipsis,1.0,clWhite,
               clNone,clNone,FShadowColor,Anchor,Stripped,FocusAnchor,XSize,YSize,HyperLinks,MouseLink,hr,FImageCache,FContainer);

    FCanvas.Font.Color := clGray;
    Offsetrect(r,-1,-1);

    HTMLDrawEx(FCanvas,s,R,FImages,0,0,-1,-1,FShadowOffset,False,False,False,False,False,False,not FEllipsis,1.0,clGray,
               clNone,clNone,FShadowColor,Anchor,Stripped,FocusAnchor,XSize,YSize,HyperLinks,MouseLink,hr,FImageCache,FContainer);

  end
  else
    HTMLDrawEx(FCanvas,s,R,FImages,0,0,-1,-1,FShadowOffset,False,False,False,False,False,False,not FEllipsis,1.0,clBlue,
              clNone,clNone,FShadowColor,Anchor,Stripped,FocusAnchor,XSize,YSize,HyperLinks,MouseLink,hr,FImageCache,FContainer);

  FCanvas.Handle := 0;
end;

procedure THTMLButton.CMFontChanged(var Message: TMessage);
begin
  inherited;
  Invalidate;
end;

procedure THTMLButton.CMEnabledChanged(var Message: TMessage);
begin
  inherited;
  Invalidate;
end;

procedure THTMLButton.WMLButtonDblClk(var Message: TWMLButtonDblClk);
begin
  Perform(WM_LBUTTONDOWN, Message.Keys, Longint(Message.Pos));
end;

function THTMLButton.IsCustom: Boolean;
begin
  Result := true;
end;

procedure THTMLButton.SetStyle(Value: TButtonStyle);
begin
  if Value <> FStyle then
  begin
    FStyle := Value;
    Invalidate;
  end;
end;

procedure THTMLButton.SetLayout(Value: TButtonLayout);
begin
  if FLayout <> Value then
  begin
    FLayout := Value;
    Invalidate;
  end;
end;


procedure THTMLButton.SetSpacing(Value: Integer);
begin
  if FSpacing <> Value then
  begin
    FSpacing := Value;
    Invalidate;
  end;
end;

procedure THTMLButton.SetMargin(Value: Integer);
begin
  if (Value <> FMargin) and (Value >= - 1) then
  begin
    FMargin := Value;
    Invalidate;
  end;
end;

{$IFDEF DELPHI4_LVL}
procedure THTMLButton.ActionChange(Sender: TObject; CheckDefaults: Boolean);

  procedure CopyImage(ImageList: TCustomImageList; Index: Integer);
  begin
  end;

begin
  inherited ActionChange(Sender, CheckDefaults);
end;
{$ENDIF}

procedure THTMLButton.SetImages(const Value: TImageList);
begin
   FImages := Value;
   Repaint;
end;

procedure THTMLButton.Notification(AComponent: TComponent;
  AOperation: TOperation);
begin
  if (AOperation = opRemove) and (AComponent = FImages) then
    FImages := nil;

  if (AOperation = opRemove) and (AComponent = FContainer) then
    FContainer := nil;

  inherited;
end;

procedure THTMLButton.SetEllipsis(const Value: Boolean);
begin
  if FEllipsis <> Value then
  begin
    FEllipsis := Value;
    Invalidate;
  end;
end;

procedure THTMLButton.SetCaption(const Value: string);
begin
  inherited Caption := Value;
  FCaption := Value;
  Invalidate;
end;

procedure THTMLButton.SetFlat(const Value: Boolean);
begin
  if FFlat <> Value then
  begin
    FFlat := Value;
    Invalidate;
  end;
end;

procedure THTMLButton.CMMouseEnter(var Msg: TMessage);
begin
  FHasMouse := True;
  inherited;
  Invalidate;
end;

procedure THTMLButton.CMMouseLeave(var Msg: TMessage);
begin
  FHasMouse := False;
  inherited;
  Invalidate;
end;

procedure THTMLButton.SetColor(const Value: TColor);
begin
  if FColor <> Value then
  begin
    FColor := Value;
    Invalidate;
  end;
end;

procedure THTMLButton.SetContainer(const Value: TPictureContainer);
begin
  FContainer := Value;
  Invalidate;
end;

procedure THTMLButton.SetShadowColor(const Value: TColor);
begin
  if FShadowColor <> Value then
  begin
    FShadowColor := Value;
    Invalidate;
  end;
end;

procedure THTMLButton.SetShadowOffset(const Value: Integer);
begin
  if FShadowOffset <> Value then
  begin
    FShadowOffset := Value;
    Invalidate;
  end;
end;



{ TGroupButton }

type
  TGroupButton = class(THTMLRadioButton)
  private
    FInClick: Boolean;
    procedure CNCommand(var Message: TWMCommand); message CN_COMMAND;
  protected
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
  public
    constructor InternalCreate(RadioGroup: TCustomHTMLRadioGroup);
    destructor Destroy; override;
  end;

constructor TGroupButton.InternalCreate(RadioGroup: TCustomHTMLRadioGroup);
begin
  inherited Create(RadioGroup);
  RadioGroup.FButtons.Add(Self);
  Visible := False;
  Enabled := RadioGroup.Enabled;
  ParentShowHint := False;
  OnClick := RadioGroup.ButtonClick;
  Parent := RadioGroup;
end;

destructor TGroupButton.Destroy;
begin
  TCustomHTMLRadioGroup(Owner).FButtons.Remove(Self);
  inherited Destroy;
end;

procedure TGroupButton.CNCommand(var Message: TWMCommand);
begin
  if not FInClick then
  begin
    FInClick := True;
    try
      if ((Message.NotifyCode = BN_CLICKED) or
        (Message.NotifyCode = BN_DOUBLECLICKED)) and
        TCustomHTMLRadioGroup(Parent).CanModify then
        inherited;
    except
      Application.HandleException(Self);
    end;
    FInClick := False;
  end;
end;

procedure TGroupButton.KeyPress(var Key: Char);
begin
  inherited KeyPress(Key);
  TCustomHTMLRadioGroup(Parent).KeyPress(Key);
  if (Key = #8) or (Key = ' ') then
  begin
    if not TCustomHTMLRadioGroup(Parent).CanModify then Key := #0;
  end;
end;

procedure TGroupButton.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited KeyDown(Key, Shift);
  TCustomHTMLRadioGroup(Parent).KeyDown(Key, Shift);
end;


{ TCustomHTMLRadioGroup }

constructor TCustomHTMLRadioGroup.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := [csSetCaption, csDoubleClicks];
  FButtons := TList.Create;
  FItems := TStringList.Create;
  TStringList(FItems).OnChange := ItemsChange;
  FItemIndex := -1;
  FColumns := 1;
  FAlignment := taLeftJustify;
  FCheckColor := clBlack;
  FButtonType := btClassic;
  FBtnVAlign := tlTop;
end;

destructor TCustomHTMLRadioGroup.Destroy;
begin
  SetButtonCount(0);
  TStringList(FItems).OnChange := nil;
  FItems.Free;
  FButtons.Free;
  inherited Destroy;
end;

{$IFDEF DELPHI4_LVL}
procedure TCustomHTMLRadioGroup.FlipChildren(AllLevels: Boolean);
begin
  { The radio buttons are flipped using BiDiMode }
end;
{$ENDIF}

procedure TCustomHTMLRadioGroup.ArrangeButtons;
var
  ButtonsPerCol, ButtonWidth, ButtonHeight, TopMargin, I: Integer;
  DC: HDC;
  SaveFont: HFont;
  Metrics: TTextMetric;
  DeferHandle: THandle;
  ALeft: Integer;
  RadioEnable: Boolean;

begin
  if (FButtons.Count <> 0) and not FReading then
  begin
    DC := GetDC(0);
    SaveFont := SelectObject(DC, Font.Handle);
    GetTextMetrics(DC, Metrics);
    SelectObject(DC, SaveFont);
    ReleaseDC(0, DC);
    ButtonsPerCol := (FButtons.Count + FColumns - 1) div FColumns;
    ButtonWidth := (Width - 10) div FColumns;
    I := Height - Metrics.tmHeight - 5;
    ButtonHeight := I div ButtonsPerCol;
    TopMargin := Metrics.tmHeight + 1 + (I mod ButtonsPerCol) div 2;
    DeferHandle := BeginDeferWindowPos(FButtons.Count);
    try
      for I := 0 to FButtons.Count - 1 do
        with TGroupButton(FButtons[I]) do
        begin
          {$IFDEF DELPHI4_LVL}
          BiDiMode := Self.BiDiMode;
          {$ENDIF}

          Alignment := Self.Alignment;
          ButtonType := Self.ButtonType;
          ButtonVertAlign := Self.ButtonVertAlign;
          CheckColor := Self.CheckColor;
          Images := Self.Images;
          PictureContainer := Self.PictureContainer;
          Ellipsis := Self.Ellipsis;
          ShadowOffset := Self.ShadowOffset;
          ShadowColor := Self.ShadowColor;

          RadioEnable := True;
          if Assigned(FOnIsEnabled) then
            FOnIsEnabled(Self,I,RadioEnable);

          Enabled := RadioEnable;

          ALeft := (I div ButtonsPerCol) * ButtonWidth + 8;
          {$IFDEF DELPHI4_LVL}
          if UseRightToLeftAlignment then
            ALeft := Self.ClientWidth - ALeft - ButtonWidth;
          {$ENDIF}  
          DeferHandle := DeferWindowPos(DeferHandle, Handle, 0,
            ALeft,
            (I mod ButtonsPerCol) * ButtonHeight + TopMargin,
            ButtonWidth, ButtonHeight,
            SWP_NOZORDER or SWP_NOACTIVATE);
          Visible := True;

        end;
    finally
      EndDeferWindowPos(DeferHandle);
    end;
  end;
end;

procedure TCustomHTMLRadioGroup.ButtonClick(Sender: TObject);
begin
  if not FUpdating then
  begin
    FItemIndex := FButtons.IndexOf(Sender);
    Changed;
    Click;
  end;
end;

procedure TCustomHTMLRadioGroup.ItemsChange(Sender: TObject);
begin
  if not FReading then
  begin
    if FItemIndex >= FItems.Count then FItemIndex := FItems.Count - 1;
    UpdateButtons;
  end;
end;

procedure TCustomHTMLRadioGroup.Loaded;
begin
  inherited Loaded;
  ArrangeButtons;
end;

procedure TCustomHTMLRadioGroup.ReadState(Reader: TReader);
begin
  FReading := True;
  inherited ReadState(Reader);
  FReading := False;
  UpdateButtons;
end;

procedure TCustomHTMLRadioGroup.SetButtonCount(Value: Integer);
begin
  while FButtons.Count < Value do TGroupButton.InternalCreate(Self);
  while FButtons.Count > Value do TGroupButton(FButtons.Last).Free;
end;

procedure TCustomHTMLRadioGroup.SetColumns(Value: Integer);
begin
  if Value < 1 then Value := 1;
  if Value > 16 then Value := 16;
  if FColumns <> Value then
  begin
    FColumns := Value;
    ArrangeButtons;
    Invalidate;
  end;
end;

procedure TCustomHTMLRadioGroup.SetItemIndex(Value: Integer);
begin
  if FReading then FItemIndex := Value else
  begin
    if Value < -1 then Value := -1;
    if Value >= FButtons.Count then Value := FButtons.Count - 1;
    if FItemIndex <> Value then
    begin
      if FItemIndex >= 0 then
        TGroupButton(FButtons[FItemIndex]).Checked := False;
      FItemIndex := Value;
      if FItemIndex >= 0 then
        TGroupButton(FButtons[FItemIndex]).Checked := True;
    end;
  end;
end;

procedure TCustomHTMLRadioGroup.SetItems(Value: TStrings);
begin
  FItems.Assign(Value);
end;

procedure TCustomHTMLRadioGroup.UpdateButtons;
var
  I: Integer;
begin
  SetButtonCount(FItems.Count);
  for I := 0 to FButtons.Count - 1 do
    TGroupButton(FButtons[I]).Caption := FItems[I];
  if FItemIndex >= 0 then
  begin
    FUpdating := True;
    TGroupButton(FButtons[FItemIndex]).Checked := True;
    FUpdating := False;
  end;
  ArrangeButtons;
  Invalidate;
end;

procedure TCustomHTMLRadioGroup.CMEnabledChanged(var Message: TMessage);
var
  I: Integer;
begin
  inherited;
  for I := 0 to FButtons.Count - 1 do
    TGroupButton(FButtons[I]).Enabled := Enabled;
end;

procedure TCustomHTMLRadioGroup.CMFontChanged(var Message: TMessage);
begin
  inherited;
  ArrangeButtons;
end;

procedure TCustomHTMLRadioGroup.WMSize(var Message: TWMSize);
begin
  inherited;
  ArrangeButtons;
end;

function TCustomHTMLRadioGroup.CanModify: Boolean;
begin
  Result := True;
end;

procedure TCustomHTMLRadioGroup.SetButtonType(const Value: TButtonType);
begin
  FButtonType := Value;
  ArrangeButtons;
end;


procedure TCustomHTMLRadioGroup.GetChildren(Proc: TGetChildProc; Root: TComponent);
begin
end;

procedure TCustomHTMLRadioGroup.SetCheckColor(const Value: TColor);
begin
  FCheckColor := Value;
  ArrangeButtons;
end;

procedure TCustomHTMLRadioGroup.SetAlignment(const Value: TAlignment);
begin
  FAlignment := Value;
  ArrangeButtons;
end;

procedure TCustomHTMLRadioGroup.SetButtonVertAlign(
  const Value: TTextLayout);
begin
  fBtnVAlign := Value;
  ArrangeButtons;
end;

procedure TCustomHTMLRadioGroup.SetContainer(
  const Value: TPictureContainer);
begin
  FContainer := Value;
  ArrangeButtons;
end;

procedure TCustomHTMLRadioGroup.SetImages(const Value: TImageList);
begin
  FImages := Value;
  ArrangeButtons;
end;

procedure TCustomHTMLRadioGroup.Notification(AComponent: TComponent;
  AOperation: TOperation);
begin
  if (AOperation = opRemove) and (AComponent = FImages) then
    FImages:=nil;

  if (AOperation = opRemove) and (AComponent = FContainer) then
    FContainer := nil;

  inherited;

end;

procedure TCustomHTMLRadioGroup.SetEllipsis(const Value: Boolean);
begin
  FEllipsis := Value;
  ArrangeButtons;
end;

procedure TCustomHTMLRadioGroup.SetShadowColor(const Value: TColor);
begin
  FShadowColor := Value;
  ArrangeButtons;
end;

procedure TCustomHTMLRadioGroup.SetShadowOffset(const Value: Integer);
begin
  FShadowOffset := Value;
  ArrangeButtons;
end;

{ TGroupCheck }

type
  TGroupCheck = class(THTMLCheckBox)
  private
    FInClick: Boolean;
    procedure CNCommand(var Message: TWMCommand); message CN_COMMAND;
  protected
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
  public
    constructor InternalCreate(CheckGroup: TCustomHTMLCheckGroup);
    destructor Destroy; override;
  end;

constructor TGroupCheck.InternalCreate(CheckGroup: TCustomHTMLCheckGroup);
begin
  inherited Create(CheckGroup);
  CheckGroup.FButtons.Add(Self);
  Visible := False;
  Enabled := CheckGroup.Enabled;
  ParentShowHint := False;
  OnClick := CheckGroup.ButtonClick;
  Parent := CheckGroup;
end;

destructor TGroupCheck.Destroy;
begin
  TCustomHTMLCheckGroup(Owner).FButtons.Remove(Self);
  inherited Destroy;
end;

procedure TGroupCheck.CNCommand(var Message: TWMCommand);
begin
  if not FInClick then
  begin
    FInClick := True;
    try
      if ((Message.NotifyCode = BN_CLICKED) or
        (Message.NotifyCode = BN_DOUBLECLICKED)) and
        TCustomHTMLCheckGroup(Parent).CanModify then
        inherited;
    except
      Application.HandleException(Self);
    end;
    FInClick := False;
  end;
end;

procedure TGroupCheck.KeyPress(var Key: Char);
begin
  inherited KeyPress(Key);
  TCustomHTMLCheckGroup(Parent).KeyPress(Key);
  if (Key = #8) or (Key = ' ') then
  begin
    if not TCustomHTMLCheckGroup(Parent).CanModify then Key := #0;
  end;
end;

procedure TGroupCheck.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited KeyDown(Key, Shift);
  TCustomHTMLCheckGroup(Parent).KeyDown(Key, Shift);
end;


{ TCustomHTMLCheckGroup }

constructor TCustomHTMLCheckGroup.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := [csSetCaption, csDoubleClicks];
  FButtons := TList.Create;
  FItems := TStringList.Create;
  TStringList(FItems).OnChange := ItemsChange;
  FColumns := 1;
  FAlignment := taLeftJustify;
  FCheckColor := clBlack;
  FButtonType := btClassic;
  FBtnVAlign := tlTop;
end;

destructor TCustomHTMLCheckGroup.Destroy;
begin
  SetButtonCount(0);
  TStringList(FItems).OnChange := nil;
  FItems.Free;
  FButtons.Free;
  inherited Destroy;
end;

{$IFDEF DELPHI4_LVL}
procedure TCustomHTMLCheckGroup.FlipChildren(AllLevels: Boolean);
begin
  { The radio buttons are flipped using BiDiMode }
end;
{$ENDIF}

procedure TCustomHTMLCheckGroup.ArrangeButtons;
var
  ButtonsPerCol, ButtonWidth, ButtonHeight, TopMargin, I: Integer;
  DC: HDC;
  SaveFont: HFont;
  Metrics: TTextMetric;
  DeferHandle: THandle;
  ALeft: Integer;
  RadioEnable: Boolean;

begin
  if (FButtons.Count <> 0) and not FReading then
  begin
    DC := GetDC(0);
    SaveFont := SelectObject(DC, Font.Handle);
    GetTextMetrics(DC, Metrics);
    SelectObject(DC, SaveFont);
    ReleaseDC(0, DC);
    ButtonsPerCol := (FButtons.Count + FColumns - 1) div FColumns;
    ButtonWidth := (Width - 10) div FColumns;
    I := Height - Metrics.tmHeight - 5;
    ButtonHeight := I div ButtonsPerCol;
    TopMargin := Metrics.tmHeight + 1 + (I mod ButtonsPerCol) div 2;
    DeferHandle := BeginDeferWindowPos(FButtons.Count);
    try
      for I := 0 to FButtons.Count - 1 do
        with TGroupCheck(FButtons[I]) do
        begin
          {$IFDEF DELPHI4_LVL}
          BiDiMode := Self.BiDiMode;
          {$ENDIF}

          Alignment := Self.Alignment;
          ButtonType := Self.ButtonType;
          ButtonVertAlign := Self.ButtonVertAlign;
          CheckColor := Self.CheckColor;
          Images := Self.Images;
          PictureContainer := Self.PictureContainer;
          Ellipsis := Self.Ellipsis;
          ShadowOffset := Self.ShadowOffset;
          ShadowColor := Self.ShadowColor;

          RadioEnable := True;
          if Assigned(FOnIsEnabled) then
            FOnIsEnabled(Self,I,RadioEnable);

          Enabled := RadioEnable;

          ALeft := (I div ButtonsPerCol) * ButtonWidth + 8;
          {$IFDEF DELPHI4_LVL}
          if UseRightToLeftAlignment then
            ALeft := Self.ClientWidth - ALeft - ButtonWidth;
          {$ENDIF}  
          DeferHandle := DeferWindowPos(DeferHandle, Handle, 0,
            ALeft,
            (I mod ButtonsPerCol) * ButtonHeight + TopMargin,
            ButtonWidth, ButtonHeight,
            SWP_NOZORDER or SWP_NOACTIVATE);
          Visible := True;

        end;
    finally
      EndDeferWindowPos(DeferHandle);
    end;
  end;
end;

procedure TCustomHTMLCheckGroup.ButtonClick(Sender: TObject);
begin
  if not FUpdating then
  begin
    Changed;
    Click;
  end;
end;

procedure TCustomHTMLCheckGroup.ItemsChange(Sender: TObject);
begin
  if not FReading then
  begin
    UpdateButtons;
  end;
end;

procedure TCustomHTMLCheckGroup.Loaded;
begin
  inherited Loaded;
  ArrangeButtons;
end;

procedure TCustomHTMLCheckGroup.ReadState(Reader: TReader);
begin
  FReading := True;
  inherited ReadState(Reader);
  FReading := False;
  UpdateButtons;
end;

procedure TCustomHTMLCheckGroup.SetButtonCount(Value: Integer);
begin
  while FButtons.Count < Value do TGroupCheck.InternalCreate(Self);
  while FButtons.Count > Value do TGroupCheck(FButtons.Last).Free;
end;

procedure TCustomHTMLCheckGroup.SetColumns(Value: Integer);
begin
  if Value < 1 then Value := 1;
  if Value > 16 then Value := 16;
  if FColumns <> Value then
  begin
    FColumns := Value;
    ArrangeButtons;
    Invalidate;
  end;
end;

procedure TCustomHTMLCheckGroup.SetItems(Value: TStrings);
begin
  FItems.Assign(Value);
end;

procedure TCustomHTMLCheckGroup.UpdateButtons;
var
  I: Integer;
begin
  SetButtonCount(FItems.Count);
  for I := 0 to FButtons.Count - 1 do
    TGroupCheck(FButtons[I]).Caption := FItems[I];

  ArrangeButtons;
  Invalidate;
end;

procedure TCustomHTMLCheckGroup.CMEnabledChanged(var Message: TMessage);
var
  I: Integer;
begin
  inherited;
  for I := 0 to FButtons.Count - 1 do
    TGroupCheck(FButtons[I]).Enabled := Enabled;
end;

procedure TCustomHTMLCheckGroup.CMFontChanged(var Message: TMessage);
begin
  inherited;
  ArrangeButtons;
end;

procedure TCustomHTMLCheckGroup.WMSize(var Message: TWMSize);
begin
  inherited;
  ArrangeButtons;
end;

function TCustomHTMLCheckGroup.CanModify: Boolean;
begin
  Result := True;
end;

procedure TCustomHTMLCheckGroup.SetButtonType(const Value: TButtonType);
begin
  FButtonType := Value;
  ArrangeButtons;
end;


procedure TCustomHTMLCheckGroup.GetChildren(Proc: TGetChildProc; Root: TComponent);
begin
end;

procedure TCustomHTMLCheckGroup.SetCheckColor(const Value: TColor);
begin
  FCheckColor := Value;
  ArrangeButtons;
end;

procedure TCustomHTMLCheckGroup.SetAlignment(const Value: TAlignment);
begin
  FAlignment := Value;
  ArrangeButtons;
end;

procedure TCustomHTMLCheckGroup.SetButtonVertAlign(
  const Value: TTextLayout);
begin
  fBtnVAlign := Value;
  ArrangeButtons;
end;

procedure TCustomHTMLCheckGroup.SetContainer(
  const Value: TPictureContainer);
begin
  FContainer := Value;
  ArrangeButtons;
end;

procedure TCustomHTMLCheckGroup.SetImages(const Value: TImageList);
begin
  FImages := Value;
  ArrangeButtons;
end;

procedure TCustomHTMLCheckGroup.Notification(AComponent: TComponent;
  AOperation: TOperation);
begin
  if (AOperation = opRemove) and (AComponent = FImages) then
    FImages:=nil;

  if (AOperation = opRemove) and (AComponent = FContainer) then
    FContainer := nil;

  inherited;

end;

procedure TCustomHTMLCheckGroup.SetEllipsis(const Value: Boolean);
begin
  FEllipsis := Value;
  ArrangeButtons;
end;

procedure TCustomHTMLCheckGroup.SetShadowColor(const Value: TColor);
begin
  FShadowColor := Value;
  ArrangeButtons;
end;

procedure TCustomHTMLCheckGroup.SetShadowOffset(const Value: Integer);
begin
  FShadowOffset := Value;
  ArrangeButtons;
end;


function TCustomHTMLCheckGroup.GetChecked(Index: Integer): Boolean;
begin
  if (Index < FButtons.Count)  and (Index >= 0) then
    Result := TGroupCheck(FButtons[Index]).Checked
  else
    raise Exception.Create('Invalid checkbox index');
end;

procedure TCustomHTMLCheckGroup.SetChecked(Index: Integer;
  const Value: Boolean);
begin
  if (Index < FButtons.Count)  and (Index >= 0) then
    TGroupCheck(FButtons[Index]).Checked := Value;
end;

end.
