{***************************************************************************}
{ TInspectorBar component                                                   }
{ for Delphi 4.0,5.0,6.0 & C++Builder 4.0,5.0                               }
{ version 1.01 - rel. Jan 2002                                              }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2001                                               }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{ The source code is given as is. The author is not responsible             }
{ for any possible damage done due to the use of this code.                 }
{ The component can be freely used in any application. The complete         }
{ source code remains property of the author and may not be distributed,    }
{ published, given or sold in any form as such. No parts of the source      }
{ code can be included in any other component or application without        }
{ written authorization of TMS software.                                    }
{***************************************************************************}

{$I TMSDEFS.INC}

unit InspectorBar;

interface

uses
  Classes, Windows, Controls, ExtCtrls, Graphics, StdCtrls, Messages, Dialogs,
  Sysutils, Forms, Mask, ComCtrls, CommCtrl, ComObj, ActiveX,
  InspEdits, InspXPVS, InspDD, InspImg;

type
  TInspectorBar = class;
  TInspectorItem = class;
  TInspectorPanel = class;
  TShadeType =(	stNormal, stNoise, stDiagShade, stHShade, stVShade, stHBump, stVBump,
                stSoftBump, stHardBump, stLMetal, stRMetal, stIRadial, stORadial,
                stHShadeInv, stVShadeInv, stXPButton, stBitmap, stBitmapRStretch, stBitmapLStretch);

  // to be extended property types ...
  TPropertyType = (ptInteger,ptFloat,ptText,ptColor,ptFont,ptBoolean,ptValues,
    ptIntSpin,ptTextButton,ptPropButton,ptDate,ptTime,ptCustom);

  TVAlignment = (vaCenter,vaTop,vaBottom);

  TCaptionShape = (csRectangle,csRounded,csSemiRounded);

  TOpenClosePosition = (ocpLeft, ocpRight);
  TOpenCloseGraphic = (ocgNone, ocgCross, ocgTriangle, ocgGlyph);

  TInspectorItemEvent = procedure(Sender: TObject;
    AInspectorPanel: TInspectorPanel; AInspectorItem: TInspectorItem) of object;

  TInspectorPanelEvent = procedure(Sender: TObject;
    AInspectorPanel: TInspectorPanel) of object;

  TInspectorURLEvent = procedure(Sender: TObject; URL: string;
    var DefaultHandler: Boolean) of object;

  TInspectorFileDropEvent = procedure(Sender: TObject; FileName: string;
    var DefaultHandler: Boolean) of object;

  TPanelDrawEvent = procedure(Sender: TObject; AInspectorPanel: TInspectorPanel;
    ACanvas: TCanvas; ARect: TRect; var DefaultDraw: Boolean) of object;

  TItemDrawEvent = procedure(Sender: TObject; AInspectorItem: TInspectorItem;
    ACanvas: TCanvas; ARect: TRect; var DefaultDraw: Boolean) of object;

  TGetValueListEvent = procedure(Sender: TObject; AInspectorItem: TInspectorItem;
    ValueList: TStringList) of object;

  TInspectorEditButton = (ebDropDown, ebMore, ebSpin, ebNone);

  TCustomEditButtonEvent = procedure(Sender: TObject; AInspectorItem: TInspectorItem;
    var AEditButton: TInspectorEditButton) of object;

  TCustomEditDrawEvent = procedure(Sender: TObject; AInspectorItem: TInspectorItem;
    Canvas: TCanvas; ARect: TRect; var DefaultDraw: Boolean) of object;

  TInspectorEditType = (ieText,ieInteger,ieFloat);

  TInspectorEdit = class(TMaskEdit)
  private
    FInspectorItem: TInspectorItem;
    FOrigValue: string;
    FInspEditType: TInspectorEditType;
  protected
    procedure DoExit; override;
    procedure KeyPress(var Key: Char); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure CreateParams(var Params: TCreateParams); override;
  published
    property OrigValue: string read FOrigValue write FOrigValue;
    property InspectorItem: TInspectorItem read FInspectorItem write FInspectorItem;
    property InspEditType: TInspectorEditType read FInspEditType write FInspEditType;
  end;

  TInspectorCombo = class(TInspComboBox)
  private
    FInspectorItem: TInspectorItem;
    FOrigValue: string;
  protected
    procedure DoExit; override;
    procedure KeyPress(var Key: Char); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;    
  public
    constructor Create(AOwner: TComponent); override;
  published
    property OrigValue: string read FOrigValue write FOrigValue;
    property InspectorItem: TInspectorItem read FInspectorItem write FInspectorItem;
  end;

  TInspectorColorCombo = class(TInspColorComboBox)
  private
    FInspectorItem: TInspectorItem;
    FOrigValue: TColor;
  protected
    procedure DoExit; override;
    procedure KeyPress(var Key: Char); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
  public
    constructor Create(AOwner: TComponent); override;
  published
    property OrigValue: TColor read FOrigValue write FOrigValue;
    property InspectorItem: TInspectorItem read FInspectorItem write FInspectorItem;
  end;

  TInspectorSpin = class(TInspSpinEdit)
  private
    FInspectorItem: TInspectorItem;
    FOrigValue: string;
  protected
    procedure DoExit; override;
    procedure KeyPress(var Key: Char); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure CreateParams(var Params: TCreateParams); override;
  published
    property OrigValue: string read FOrigValue write FOrigValue;
    property InspectorItem: TInspectorItem read FInspectorItem write FInspectorItem;
  end;

  TInspectorEditBtn = class(TInspEditBtn)
  private
    FInspectorItem: TInspectorItem;
    FOrigValue: string;
  protected
    procedure DoExit; override;
    procedure KeyPress(var Key: Char); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure CreateParams(var Params: TCreateParams); override;
  published
    property OrigValue: string read FOrigValue write FOrigValue;
    property InspectorItem: TInspectorItem read FInspectorItem write FInspectorItem;
  end;

  TInspectorDateTimePicker = class(TInspDateTimePicker)
  private
    FInspectorItem: TInspectorItem;
    FOrigValue: TDateTime;
  protected
    procedure DoExit; override;
    procedure KeyPress(var Key: Char); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure CreateParams(var Params: TCreateParams); override;
  published
    property OrigValue: TDateTime read FOrigValue write FOrigValue;
    property InspectorItem: TInspectorItem read FInspectorItem write FInspectorItem;
  end;

  TInspectorCaption = class(TPersistent)
  private
    FHeight: Integer;
    FShape: TCaptionShape;
    FOnChange: TNotifyEvent;
    FAlignment: TAlignment;
    FFont: TFont;
    FVAlignment: TVAlignment;
    FColor: TColor;
    FShadeType: TShadeType; // icon shade type field
    FShadeLight: Byte;      // icon shade light field values: 200 - 255
    FShadeGrain: Byte;
    FOnShadeChange: TNotifyEvent;
    FGlyphClose: TBitmap;
    FGlyphOpen: TBitmap;
    FCursor : TCursor;
    FBarCursor: TCursor;
    FButton: Boolean;
    FOpenCloseGraphic: TOpenCloseGraphic;
    FOpenClosePosition: TOpenClosePosition;
    FFlat: Boolean;
    FBackground: TBitmap;
    FActiveBackground: TBitmap;
    FActiveFont: TFont;
    FIndent: Integer;
    procedure SetHeight(const Value: Integer);
    procedure SetShape(const Value: TCaptionShape);
    procedure SetAlignment(const Value: TAlignment);
    procedure SetFont(const Value: TFont);
    procedure SetVAlignment(const Value: TVAlignment);
    procedure SetColor(const Value: TColor);
    procedure SetShadeGrain(const Value: Byte);
    procedure SetShadeLight(const Value: Byte);
    procedure SetShadeType(const Value: TShadeType);
    procedure SetGlyphClose(const Value: TBitmap);
    procedure SetGlyphOpen(const Value: TBitmap);
    procedure SetCursor(const Value: TCursor);
    procedure SetOpenCloseGraphic(const Value: TOpenCloseGraphic);
    procedure SetOpenClosePosition(const Value: TOpenClosePosition);
    procedure SetFlat(const Value: Boolean);
    procedure SetActiveBackground(const Value: TBitmap);
    procedure SetBackground(const Value: TBitmap);
    procedure SetActiveFont(const Value: TFont);
    procedure SetIndent(const Value: Integer);
  protected
    procedure Changed;
    procedure ShadeChanged;
    procedure FontChanged(Sender: TObject);
  public
    constructor Create;
    destructor Destroy; override;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
    property OnShadeChange: TNotifyEvent read FOnShadeChange write FOnShadeChange;
  published
    property ActiveBackground: TBitmap read FActiveBackground write SetActiveBackground;
    property ActiveFont: TFont read FActiveFont write SetActiveFont;
    property Alignment: TAlignment read FAlignment write SetAlignment default taLeftJustify;
    property Background: TBitmap read FBackground write SetBackground;
    property Button: Boolean read FButton write FButton;
    property Color: TColor read FColor write SetColor;
    property Cursor:TCursor read FCursor write SetCursor default crDefault;
    property Flat: Boolean read FFlat write SetFlat default False;
    property Font: TFont read FFont write SetFont;
    property GlyphOpen: TBitmap read FGlyphOpen write SetGlyphOpen;
    property GlyphClose: TBitmap read FGlyphClose write SetGlyphClose;
    property Height: Integer read FHeight write SetHeight default 20;
    property Indent: Integer read FIndent write SetIndent default 0;
    property OpenClosePosition: TOpenClosePosition read FOpenClosePosition write SetOpenClosePosition;
    property OpenCloseGraphic: TOpenCloseGraphic read FOpenCloseGraphic write SetOpenCloseGraphic;
    property ShadeGrain: Byte read FShadeGrain write SetShadeGrain;
    property ShadeType: TShadeType read FShadeType write SetShadeType;
    property ShadeLight: Byte read FShadeLight write SetShadeLight default 255;
    property Shape: TCaptionShape read FShape write SetShape default csRectangle;
    property VAlignment: TVAlignment read FVAlignment write SetVAlignment default vaCenter;
  end;
                 
  TInspectorEditStyle = (esInplace,esPopup);

  TInspSetPropertiesEvent = procedure(Sender: TObject; R: TRect; Item: TInspectorItem) of object;

  TInspectorEditLink = class(TComponent)
  private
    FWantKeyUpDown: Boolean;
    FWantKeyPriorNext: Boolean;
    FWantKeyHomeEnd: Boolean;
    FWantKeyLeftRight: Boolean;
    FWantKeyEscape: Boolean;
    FWantKeyReturn: Boolean;
    FPopupWidth: Integer;
    FPopupHeight: Integer;
    FTag: Integer;
    FEditStyle: TInspectorEditStyle;
    FInspector: TInspectorBar;
    FPopupForm: TForm;
    FOnSetProperties: TInspSetPropertiesEvent;
  protected
  public
    procedure EditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditExit(Sender: TObject);
    procedure FormExit(Sender: TObject);
    function GetEditor: TWinControl; virtual;
    procedure CreateEditor(AParent:TWinControl); virtual;
    procedure DestroyEditor; virtual;
    procedure SetProperties(R: TRect; Item: TInspectorItem); virtual;
    procedure StartEdit(Item: TInspectorItem); virtual;
    procedure StopEdit(Item: TInspectorItem); virtual;
    function GetEditorValue: string; virtual;
    procedure SetEditorValue(s: string); virtual;
    procedure SetOriginalValue; virtual;
    property Inspector: TInspectorBar read FInspector write FInspector;
  published
    property EditStyle: TInspectorEditStyle read FEditStyle write FEditStyle;
    property PopupWidth: Integer read FPopupWidth write FPopupWidth;
    property PopupHeight: Integer read FPopupHeight write FPopupHeight;
    property WantKeyLeftRight: Boolean read FWantKeyLeftRight write FWantKeyLeftRight;
    property WantKeyUpDown: Boolean read FWantKeyUpDown write FWantKeyUpDown;
    property WantKeyHomeEnd: Boolean read FWantKeyHomeEnd write FWantKeyHomeEnd;
    property WantKeyPriorNext: Boolean read FWantKeyPriorNext write FWantKeyPriorNext;
    property WantKeyReturn: Boolean read FWantKeyReturn write FWantKeyReturn;
    property WantKeyEscape: Boolean read FWantKeyEscape write FWantKeyEscape;
    property Tag: Integer read FTag write FTag;
    property OnSetProperties: TInspSetPropertiesEvent read FOnSetProperties write FOnSetProperties;
  end;


  TInspBackgroundPos = (bpTopLeft,bpBottomLeft,bpTopRight,bpBottomRight);

  TInspectorItem = class(TCollectionItem)
  private
    FCaption: string;
    FIcon: TIcon;
    FIntValue: Integer;
    FTextValue: string;
    FEditMask: string;
    FValues: TStringList;
    FPropertyType: TPropertyType;
    FBoolValue: Boolean;
    FHint: string;
    FImageIndex: Integer;
    // FShortCut: TShortCut;
    FTag: Integer;
    FReadOnly: Boolean;
    FDateTimeValue: TDateTime;
    FDateTime: TDateTime;
    FOwnsObject: Boolean;
    FObject: TObject;
    FAutoIcon: Boolean;
    FURL: string;
    FColorValue: TColor;
    FFontValue: TFont;
    FSpinMax: Integer;
    FSpinMin: Integer;
    FAutoIconIndex: Integer;
    FBackground: TInspImage;
    FBkgPos: TInspBackgroundPos;
    FEditLink: TInspectorEditLink;
    FDown: Boolean;
    FEditing: Boolean;
    procedure SetCaption(const Value: string);
    procedure SetIcon(const Value: TIcon);
    function  GetIcon: TIcon;
    procedure SetIntValue(const Value: Integer);
    procedure SetTextValue(const Value: string);
    procedure SetValues(const Value: TStringList);
    procedure SetPropertyType(const Value: TPropertyType);
    procedure SetBoolValue(const Value: Boolean);
    procedure SetImageIndex(const Value: Integer);
    function GetInspectorBar: TInspectorBar;
    function GetInspectorPanel: TInspectorPanel;
    procedure SetDateTimeValue(const Value: TDateTime);
    procedure SetDateValue(const Value: TDateTime);
    procedure SetTimeValue(const Value: TDateTime);
    procedure SetAutoIcon(const Value: Boolean);
    procedure SetURL(const Value: string);
    procedure SetColorValue(const Value: TColor);
    procedure SetFontValue(const Value: TFont);
    procedure SetAutoIconIndex(const Value: Integer);
    procedure SetBackground(const Value: TInspImage);
    procedure SetBackgroundPos(const Value: TInspBackgroundPos);
    procedure SetDown(const Value: Boolean);
  protected
    procedure Changed;
    function GetDisplayName: string; override;
    procedure EditStart; virtual;
    procedure EditStop; virtual;
    procedure EditChange; virtual;
    procedure BkgChanged(Sender: TObject);
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
    property InspectorPanel: TInspectorPanel read GetInspectorPanel;
    property InspectorBar: TInspectorBar read GetInspectorBar;
    property DateTimeValue: TDateTime read FDateTimeValue write SetDateTimeValue;
    property DateValue: TDateTime read FDateTime write SetDateValue;
    property TimeValue: TDateTime read FDateTime write SetTimeValue;
    property OwnsObject: Boolean read FOwnsObject write FOwnsObject;
    property ItemObject: TObject read FObject write FObject;
    property Down: Boolean read FDown write SetDown;
    property Editing: Boolean read FEditing;
  published
    property AutoIcon: Boolean read FAutoIcon write SetAutoIcon default False;
    property AutoIconIndex: Integer read FAutoIconIndex write SetAutoIconIndex default 0;
    property Background: TInspImage read FBackground write SetBackground;
    property BackgroundPosition: TInspBackgroundPos read FBkgPos write SetBackgroundPos default bpBottomRight;
    property BoolValue: Boolean read FBoolValue write SetBoolValue;
    property Caption: string read FCaption write SetCaption;
    property ColorValue: TColor read FColorValue write SetColorValue;
    property EditLink: TInspectorEditLink read FEditLink write FEditLink;
    property EditMask: string read FEditMask write FEditMask;
    property FontValue: TFont read FFontValue write SetFontValue;
    property Hint: string read FHint write FHint;
    property Icon: TIcon read GetIcon write SetIcon;
    property ImageIndex: Integer read FImageIndex write SetImageIndex default -1;
    property IntValue: Integer read FIntValue write SetIntValue;
    property PropertyType: TPropertyType read FPropertyType write SetPropertyType;
    property ReadOnly: Boolean read FReadOnly write FReadOnly;
    // property ShortCut: TShortCut read FShortCut write FShortCut;
    property SpinMin: Integer read FSpinMin write FSpinMin default 0;
    property SpinMax: Integer read FSpinMax write FSpinMax default 100;
    property Tag: Integer read FTag write FTag default 0;
    property TextValue: string read FTextValue write SetTextValue;
    property Values: TStringList read FValues write SetValues;
    property URL: string read FURL write SetURL;
  end;

  TInspectorItems = class(TOwnedCollection)
  private
    FOwner: TInspectorPanel;
    function GetItem(Index: Integer): TInspectorItem;
    procedure SetItem(Index: Integer; const Value: TInspectorItem);
  protected
    procedure Update(Item: TCollectionItem); override;
  public
    function CreateItemClass: TCollectionItemClass; virtual;
    constructor Create(AOwner: TInspectorPanel);
    function Add: TInspectorItem;
    function Insert(index: Integer): TInspectorItem;
    property Items[Index: Integer]: TInspectorItem read GetItem write SetItem; default;
  published

  end;

  TPanelStyle = (psLargeIcon, psSmallIcon, psProperties, psButtons);
  TInspectorBarMode = (imSinglePanelActive,imMultiPanelActive);

  TPanelBackground = (pbSolid, pbGradient, pbTexture);
  TGradientDirection = (gdVertical, gdHorizontal);

  TInplaceEditType = (itCombo,itPicker,itBtnEdit,itNormal,itColorCombo);

  TInspectorPanel = class(TCollectionItem)
  private
    FItems: TInspectorItems;
    FTopItem:Integer;
    FCaption: string;
    FColor: TColor;
    FFont: TFont;
    FIsOpen:boolean;
    FPanelStyle: TPanelStyle;
    FItemHeight: Integer;
    FGradientStart: TColor;
    FGradientEnd: TColor;
    FBackground: TPanelBackground;
    FGradientDirection: TGradientDirection;
    FGradientSteps: Integer;
    FGridLines: Boolean;
    FGridLineColor: TColor;
    FCaptionWidth: Integer;
    FWordWrap: Boolean;
    FTexture: TBitmap;
    FEditBox: Boolean;
    FEditColor: TColor;
    FHint: string;
    FImageIndex: Integer;
    FTag: Integer;
    FEditFontColor: TColor;
    FAllowResize: Boolean;
    FHoverIconDownColor: TColor;
    FHoverIconColor: TColor;
    FHover: Boolean;
    FSplitter: TInspImage;
    FButtonDownColor: TColor;
    FAlignment: TAlignment;
    FIndent: Integer;
    FControl: TWinControl;
    procedure SetInspectorItems(const Value: TInspectorItems);
    procedure SetCaption(const Value: string);
    procedure SetColor(const Value: TColor);
    procedure SetFont(const Value: TFont);
    procedure SetItemHeight(const Value: Integer);
    procedure SetGradientEnd(const Value: TColor);
    procedure SetGradientStart(const Value: TColor);
    procedure SetBackground(const Value: TPanelBackground);
    procedure SetGradientDirection(const Value: TGradientDirection);
    procedure SetGradientSteps(const Value: Integer);
    procedure SetPanelStyle(const Value: TPanelStyle);
    procedure SetGridLineColor(const Value: TColor);
    procedure SetGridLines(const Value: Boolean);
    procedure SetCaptionWidth(const Value: Integer);
    function  GetTopItem: Integer;
    procedure SetTopItem(const Value: Integer);
    procedure SetWordWrap(const Value: Boolean);
    procedure SetTexture(const Value: TBitmap);
    procedure SetEditBox(const Value: Boolean);
    procedure SetEditColor(const Value: TColor);
    procedure SetImageIndex(const Value: Integer);
    function GetInspectorBar: TInspectorBar;
    procedure SetEditFontColor(const Value: TColor);
    procedure SetSplitter(const Value: TInspImage);
    procedure SetButtonDownColor(const Value: TColor);
    procedure SetAlignment(const Value: TAlignment);
    procedure SetIndent(const Value: Integer);
    procedure SetControl(const Value: TWinControl);
    procedure SetOpen(const Value: Boolean);
  protected
    procedure FontChanged(Sender: TObject);
    procedure ImgChanged(Sender: TObject);
    function GetDisplayName: string; override;
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
    function CreateItems: TInspectorItems; virtual;
    property Open: Boolean read FIsOpen write SetOpen;
    property InspectorBar: TInspectorBar read GetInspectorBar;
  published
    property Alignment: TAlignment read FAlignment write SetAlignment default taCenter;
    property AllowResize: Boolean read FAllowResize write FAllowResize;
    property Background: TPanelBackground read FBackground write SetBackground;
    property ButtonDownColor: TColor read FButtonDownColor write SetButtonDownColor;
    property Caption: string read FCaption write SetCaption;
    property CaptionWidth: Integer read FCaptionWidth write SetCaptionWidth;
    property Color: TColor read FColor write SetColor;
    property Control: TWinControl read FControl write SetControl;
    property Font: TFont read FFont write SetFont;
    property EditBox: Boolean read FEditBox write SetEditBox default False;
    property EditColor: TColor read FEditColor write SetEditColor default clWhite;
    property EditFontColor: TColor read FEditFontColor write SetEditFontColor default clBlack;
    property GradientDirection: TGradientDirection read FGradientDirection write SetGradientDirection;
    property GradientEnd: TColor read FGradientEnd write SetGradientEnd;
    property GradientStart: TColor read FGradientStart write SetGradientStart;
    property GradientSteps: Integer read FGradientSteps write SetGradientSteps;
    property GridLineColor: TColor read FGridLineColor write SetGridLineColor;
    property GridLines: Boolean read FGridLines write SetGridLines;
    property Hint: string read FHint write FHint;
    property HoverCaption: Boolean read FHover write FHover;
    property HoverIconColor: TColor read FHoverIconColor write FHoverIconColor;
    property HoverIconDownColor: TColor read FHoverIconDownColor write FHoverIconDownColor;
    property ImageIndex: Integer read FImageIndex write SetImageIndex default -1;
    property Indent: Integer read FIndent write SetIndent default 0;
    property ItemHeight: Integer read FItemHeight write SetItemHeight;
    property Items: TInspectorItems read FItems write SetInspectorItems;
    property Splitter: TInspImage read FSplitter write SetSplitter;
    property Style: TPanelStyle read FPanelStyle write SetPanelStyle;
    property Tag: Integer read FTag write FTag;
    property Texture: TBitmap read FTexture write SetTexture;
    property TopItem: Integer read GetTopItem write SetTopItem;
    property WordWrap: Boolean read FWordWrap write SetWordWrap;
  end;

  TInspectorPanels = class(TOwnedCollection)
  private
    FOwner: TInspectorBar;
    function GetItem(Index: Integer): TInspectorPanel;
    procedure SetItem(Index: Integer; const Value: TInspectorPanel);
  protected
    procedure Update(Item: TCollectionItem); override;
  public
    function CreateItemClass: TCollectionItemClass; virtual;
    constructor Create(AOwner: TInspectorBar);
    function Add: TInspectorPanel;
    function Insert(index: Integer): TInspectorPanel;
    property Items[Index: Integer]: TInspectorPanel read GetItem write SetItem; default;
  published
  end;

  TInspectorBarDropTarget = class(TInspectorDropTarget)
  private
    FInspectorBar: TInspectorBar;
  public
    constructor Create(AInspectorBar: TInspectorBar);
    procedure DropText(pt:TPoint;s:string); override;
    procedure DropURL(pt:TPoint;s:string); override;
    procedure DropFiles(pt:TPoint;Files: TStrings); override;
    procedure DragMouseMove(pt:TPoint;var Allow: Boolean; DropFormats:TDropFormats); override;
    procedure DragMouseLeave; override;
  end;


  TInspectorBar = class(TCustomPanel)
  private
    FPanels: TInspectorPanels;
    FTopPanel: Integer;
    FInspectorCaption: TInspectorCaption;
    FShowUP: Boolean;
    FShowDown: Boolean;
    FLastOpen: Integer;
    FFirstOpen: Integer;
    FMode: TInspectorBarMode;
    FScrollBar: TScrollBar;
    FOldWidth: Integer;
    FMouseItem: TInspectorItem;
    FMousePanel: Integer;
    FMouseDown: Boolean;
    FShadedHeader: TBitmap;
    FFlat: Boolean;
    FInspectorEdit: TInspectorEdit;
    FInspectorCombo: TInspectorCombo;
    FInspectorColorCombo: TInspectorColorCombo;
    FInspectorSpin: TInspectorSpin;
    FInspectorEditBtn: TInspectorEditBtn;
    FInspectorDateTimePicker: TInspectorDateTimePicker;
    FEditing: Boolean;
    FEditItem: TInspectorItem;
    FOnItemClick : TInspectorItemEvent;
    FOnPanelOpen : TInspectorPanelEvent;
    FOnPanelClose: TInspectorPanelEvent;
    FImages: TImageList;
    FIsWinXP: Boolean;
    FOldHint: string;
    FOnEditStart: TInspectorItemEvent;
    FOnEditStop: TInspectorItemEvent;
    FOnGetValueList: TGetValueListEvent;
    FOnItemDraw: TItemDrawEvent;
    FOnPanelDraw: TPanelDrawEvent;
    FAutoAdvance: Boolean;
    FEditType: TInplaceEditType;
    FOnEditUpdate: TInspectorItemEvent;
    FOnEditDblClick: TInspectorItemEvent;
    FOnEditBtnClick: TInspectorItemEvent;
    FOnURLClick: TInspectorURLEvent;
    FAcceptFiles: Boolean;
    FOnFileDrop: TInspectorFileDropEvent;
    FOnItemRightClick: TInspectorItemEvent;
    FShowFocus: Boolean;
    FOleDropTarget: Boolean;
    FInspectorDropTarget: TInspectorBarDropTarget;
    FOleDropTargetAssigned: Boolean;
    FOnURLDrop: TInspectorFileDropEvent;
    FOnCustomEditButton: TCustomEditButtonEvent;
    FOnCustomEditDraw: TCustomEditDrawEvent;
    procedure SetInspectorPanels(const Value: TInspectorPanels);
    procedure SetTopPanel(const Value: Integer);
    procedure SetMode(const Value:TInspectorBarMode);
    procedure SetFlat(const Value: Boolean);
    procedure CMControlChange(var Message: TMessage); message CM_CONTROLCHANGE;
    procedure CMHintShow(var Msg: TMessage); message CM_HINTSHOW;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
    procedure CMWantSpecialKey(var Msg: TCMWantSpecialKey); message CM_WANTSPECIALKEY;    
    procedure WMDropFiles(var Message: TMessage); message WM_DROPFILES;
    function GetAlignEx: TAlign;
    procedure SetAlignEx(const Value: TAlign);
    procedure SetAcceptFiles(const Value: Boolean);
    function DoVisualStyles: Boolean;
    function GetVersionString: string;
    procedure SetOleDropTarget(const Value: Boolean);
  protected
    procedure AlignControls(AControl: TControl; var Rect: TRect); override;  
    procedure InvalidateItem(Panel: TInspectorPanel; Item: TInspectorItem);
    function GetItemRect(Panel: TInspectorPanel; Item: TInspectorItem): TRect;
    function GetCaptionRect(Panel: TInspectorPanel): TRect;
    function IsMouseDown: Boolean;
    procedure DrawGradient(FromColor,ToColor: TColor; Steps: Integer; R: TRect; Direction: Boolean);
    procedure DrawCaption(Panel: TInspectorPanel; R: TRect); virtual;
    procedure DrawCaptionOptions(Panel: TInspectorPanel; Canvas: TCanvas; var R: TRect); virtual;
    function HintCaptionOptions(Panel: TInspectorPanel; x,y: Integer; var Hint: string): Boolean; virtual;
    function MouseMoveCaptionOptions(Panel: TInspectorPanel; x,y: Integer): Boolean; virtual;
    function MouseDownCaptionOptions(Panel: TInspectorPanel; x,y: Integer): Boolean; virtual;
    procedure DrawItem(Panel: TInspectorPanel; Item: TInspectorItem; R: TRect); virtual;
    procedure DrawButtonUp;
    procedure DrawButtonDown;
    procedure CaptionChanged(Sender: TObject);
    procedure ShadeChanged(Sender: TObject);
    procedure Paint; override;
    procedure PaintSinglePanel;
    procedure PaintMultiPanel;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure MouseDownSinglePanel(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure MouseDownMultiPanel(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ItemClicked(Button: TMouseButton; Panel: TInspectorPanel; Item: TInspectorItem);
    procedure EditDblClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure EditChanged(Sender: TObject);
    procedure ComboChanged(Sender: TObject);
    procedure PanelOpened(Panel: TInspectorPanel);
    procedure PanelClosed(Panel: TInspectorPanel);
    Procedure Scroll(Sender: TObject);
    procedure ArrangeOpenClose;
    procedure ShadeHeader;// method that redraws the shaded bitmap with the current shade
    procedure Notification(AComponent: TComponent; AOperation: TOperation); override;
    procedure NextEdit(InspectorItem: TInspectorItem;NextKey: word);
    Function GetHint(x,y: Integer): string;
    Function GetHintSingle(x,y: Integer): string;
    Function GetHintMulti(x,y: Integer): string;
    function GetCursorMulti(x,y: Integer): Boolean;
    function GetCursorSingle(x,y: Integer): Boolean;
    function GetCaption(x,y: Integer): TInspectorPanel;
    function GetItem(x,y: Integer): TInspectorItem;
    function GetPanel(x,y: Integer): TInspectorPanel;
    procedure SearchShortcutCaption(key: Word);
    procedure UpdateEdit;
    function GetCursorHint(P: TPoint): string;
    function InspectorWidth: Integer;
  public
    procedure ArrangeControls;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Resize; override;
    function CreatePanels: TInspectorPanels; virtual;
    procedure StartEdit(InspectorItem: TInspectorItem); virtual;
    procedure StopEdit(InspectorItem: TInspectorItem); virtual;
    procedure HidePopup;
    procedure GetValueList(InspectorItem: TInspectorItem; Values: TStringList); virtual;
    function GetPanelItemAtXY(x,y: Integer; var Panel: TInspectorPanel;var Item: TInspectorItem): Boolean;
    function IsPanelItemAtXY(x,y: Integer): Boolean;
    function GetPanelAtXY(x,y: Integer; var Panel: TInspectorPanel): Boolean;
    property VersionString: string read GetVersionString;
    property EditItem: TInspectorItem read FEditItem;
  published
    property AcceptFiles: Boolean read FAcceptFiles write SetAcceptFiles;
    property AutoAdvance: Boolean read FAutoAdvance write FAutoAdvance;
    property Align: TAlign read GetAlignEx write SetAlignEx;
    {$IFDEF DELPHI4_LVL}
    property Anchors;
    property Constraints;
    {$ENDIF}
    property Color;
    property DragMode;
    property DragKind;
    property DragCursor;
    property Flat: Boolean read FFlat write SetFlat;
    property Images: TImageList read FImages write FImages;
    property Mode :TInspectorBarMode read Fmode write SetMode default imSinglePanelActive;
    property OleDropTarget: Boolean read FOleDropTarget write SetOleDropTarget default False;
    property PanelCaption: TInspectorCaption read FInspectorCaption write FInspectorCaption;
    property Panels: TInspectorPanels read FPanels write SetInspectorPanels;
    property PopupMenu;
    property ShowFocus: Boolean read FShowFocus write FShowFocus default False;
    property ShowHint;
    property TabStop;
    property TabOrder;
    property TopPanel: Integer read FTopPanel write SetTopPanel;
    property Visible;
    property OnEnter;
    property OnExit;
    property OnMouseMove;
    property OnMouseDown;
    property OnMouseUp;
    property OnKeyDown;
    property OnKeyUp;
    property OnKeyPress;

    property OnCustomEditButton: TCustomEditButtonEvent read FOnCustomEditButton write FOnCustomEditButton;
    property OnCustomEditDraw: TCustomEditDrawEvent read FOnCustomEditDraw write FOnCustomEditDraw;

    property OnEditStart: TInspectorItemEvent read FOnEditStart write FOnEditStart;
    property OnEditStop: TInspectorItemEvent read FOnEditStop write FOnEditStop;
    property OnEditUpdate: TInspectorItemEvent read FOnEditUpdate write FOnEditUpdate;
    property OnEditDblClick: TInspectorItemEvent read FOnEditDblClick write FOnEditDblClick;
    property OnEditBtnClick: TInspectorItemEvent read FOnEditBtnClick write FOnEditBtnClick;
    property OnGetValueList: TGetValueListEvent read FOnGetValueList write FOnGetValueList;
    property OnItemClick: TInspectorItemEvent read FOnItemClick write FOnItemClick;
    property OnItemRightClick: TInspectorItemEvent read FOnItemRightClick write FOnItemRightClick;
    property OnItemDraw: TItemDrawEvent read FOnItemDraw write FOnItemDraw;
    property OnPanelDraw: TPanelDrawEvent read FOnPanelDraw write FOnPanelDraw;
    property OnPanelOpen: TInspectorPanelEvent read FOnPanelOpen write FOnPanelOpen;
    property OnPanelClose: TInspectorPanelEvent read FOnPanelClose write FOnPanelClose;
    property OnURLClick: TInspectorURLEvent read FOnURLClick write FOnURLClick;
    property OnFileDrop: TInspectorFileDropEvent read FOnFileDrop write FOnFileDrop;
    property OnURLDrop: TInspectorFileDropEvent read FOnURLDrop write FOnURLDrop;

    property OnDragDrop;
    property OnDragOver;
    property OnStartDrag;
    property OnEndDrag;

  end;




implementation

uses
  ShellAPI
  {$IFDEF DELPHI4_LVL}
  , ImgList
  {$ENDIF}
  ;

function Min(a,b: Integer): Integer;
begin
  if a >  b then
    Result := b
  else
    Result := a;
end;

function DirExists(const Name: string): Boolean;
var
  Code: Integer;
begin
  Code := GetFileAttributes(PChar(Name));
  Result := (Code <> -1) and (FILE_ATTRIBUTE_DIRECTORY and Code <> 0);
end;

function SysImage(Canvas: TCanvas; x,y: Integer; APath: string;
  Large,Draw:Boolean): TPoint;
var
  SFI: TSHFileInfo;
  i: Integer;
  imglsthandle: THandle;
  rx,ry: Integer;
  SILFlags: DWORD;

begin
  Result := Point(0,0);

  if (APath <> '') then
  begin
    if Large then
      SILFlags := SHGFI_SYSICONINDEX or SHGFI_LARGEICON
    else
      SILFlags := SHGFI_SYSICONINDEX or SHGFI_SMALLICON;

    FillChar(SFI,sizeof(SFI),0);
    if FileExists(APath) or DirExists(APath) then
      // If the file or directory exists, just let Windows figure out it's attrs.
      imglsthandle := SHGetFileInfo(PChar(APath), 0, SFI, SizeOf(TSHFileInfo),
                    SILFlags {or OPEN_FLAG[Open] or SELECTED_FLAG[Selected]})
    else
    // File doesn't exist, so Windows doesn't know what to do with it.  We have
    // to tell it by passing the attributes we want, and specifying the
    // SHGFI_USEFILEATTRIBUTES flag so that the function knows to use them.
      imglsthandle := SHGetFileInfo(PChar(APath), 0, SFI, SizeOf(TSHFileInfo),
                    SILFlags or SHGFI_USEFILEATTRIBUTES {or OPEN_FLAG[Open] or SELECTED_FLAG[Selected]});
    i := SFI.iIcon;

    ImageList_GetIconSize(imglsthandle,rx,ry);
    Result := Point(rx,ry);

    if Draw then
      ImageList_Draw(imglsthandle,i,Canvas.Handle,x,y, ILD_TRANSPARENT);
  end;

end;


{ TInspectorItems }

function TInspectorItems.Add: TInspectorItem;
begin
  Result := TInspectorItem(inherited Add);
  TInspectorPanels(FOwner.GetOwner).FOwner.Invalidate;
end;

constructor TInspectorItems.Create(AOwner: TInspectorPanel);
begin
  inherited Create(AOwner,CreateItemClass);
  FOwner := AOwner;
end;

function TInspectorItems.CreateItemClass: TCollectionItemClass;
begin
  Result := TInspectorItem;
end;

function TInspectorItems.GetItem(Index: Integer): TInspectorItem;
begin
  Result := TInspectorItem(inherited Items[Index]);
end;

function TInspectorItems.Insert(index: Integer): TInspectorItem;
begin
  Result := TInspectorItem(inherited Insert(Index));
  TInspectorPanels(FOwner.GetOwner).FOwner.Invalidate;
end;

procedure TInspectorItems.SetItem(Index: Integer;
  const Value: TInspectorItem);
begin
  inherited Items[Index] := Value;
end;

procedure TInspectorItems.Update(Item: TCollectionItem);
begin
  inherited;
  if Assigned(Item) then
    TInspectorPanels(FOwner.GetOwner).FOwner.InvalidateItem(FOwner,TInspectorItem(Item))
  else
    TInspectorPanels(FOwner.GetOwner).FOwner.Invalidate;  
end;

{ TInspectorPanels }

function TInspectorPanels.Add: TInspectorPanel;
begin
  Result := TInspectorPanel(inherited Add);
end;

constructor TInspectorPanels.Create(AOwner: TInspectorBar);
begin
  inherited Create(AOwner,CreateItemClass);
  FOwner := AOwner;
end;

function TInspectorPanels.CreateItemClass: TCollectionItemClass;
begin
  Result := TInspectorPanel;
end;

function TInspectorPanels.GetItem(Index: Integer): TInspectorPanel;
begin
  Result := TInspectorPanel(inherited Items[Index]);
end;

function TInspectorPanels.Insert(Index: Integer): TInspectorPanel;
begin
  Result := TInspectorPanel(inherited Insert(Index));
end;

procedure TInspectorPanels.SetItem(Index: Integer;
  const Value: TInspectorPanel);
begin
  inherited Items[Index] := Value;
end;

procedure TInspectorPanels.Update(Item: TCollectionItem);
begin
  inherited;
  FOwner.Invalidate;
end;

{ TInspectorPanel }

constructor TInspectorPanel.Create(Collection: TCollection);
begin
  inherited;
  FAlignment := taCenter;
  FItems := CreateItems;
  FFont := TFont.Create;
  FFont.OnChange := FontChanged;
  FColor := clGray;
  FPanelStyle := psLargeIcon;
  FGradientDirection := gdVertical;
  FGradientStart := clWhite;
  FGradientEnd := clSilver;
  FGradientSteps := 20;
  FItemHeight := 48;
  FCaptionWidth := 60;
  FEditColor := clWhite;
  FEditBox := False;
  FIsOpen := False;
  FTexture := TBitmap.Create;
  FImageIndex := -1;
  FGridLineColor := clGray;
  FHoverIconColor := clNone;
  FHoverIconDownColor := clNone;
  FSplitter := TInspImage.Create;
  FSplitter.OnChange := ImgChanged;
  FButtonDownColor := clSilver;
end;

function TInspectorPanel.CreateItems: TInspectorItems;
begin
  Result := TInspectorItems.Create(Self);
end;

destructor TInspectorPanel.Destroy;
begin
  if (InspectorBar.TopPanel = Index) and (Index > 0) then
    InspectorBar.FTopPanel := Index - 1;
  InspectorBar.FMousePanel := -1;
  InspectorBar.FMouseItem := nil;
  FItems.Free;
  FSplitter.Free;
  FTexture.Free;
  inherited;
end;

procedure TInspectorPanel.FontChanged(Sender: TObject);
begin
  Changed(False);
end;

function TInspectorPanel.GetDisplayName: string;
begin
  if Caption <> '' then
    Result := Caption
  else
    Result := 'TInspectorPanel' + IntToStr(Index);
end;

function TInspectorPanel.GetInspectorBar: TInspectorBar;
begin
  Result := TInspectorPanels(Collection).FOwner;
end;

function TInspectorPanel.GetTopItem: Integer;
begin
  Result := FTopItem;
end;

procedure TInspectorPanel.ImgChanged(Sender: TObject);
begin
  Changed(False);
end;

procedure TInspectorPanel.SetAlignment(const Value: TAlignment);
begin
  FAlignment := Value;
  Changed(False);
end;

procedure TInspectorPanel.SetBackground(const Value: TPanelBackground);
begin
  FBackground := Value;
  Changed(False);
end;

procedure TInspectorPanel.SetButtonDownColor(const Value: TColor);
begin
  FButtonDownColor := Value;
  Changed(False);
end;

procedure TInspectorPanel.SetCaption(const Value: string);
begin
  FCaption := Value;
  Changed(False);
end;

procedure TInspectorPanel.SetCaptionWidth(const Value: Integer);
begin
  FCaptionWidth := Value;
  Changed(False);
end;

procedure TInspectorPanel.SetColor(const Value: TColor);
begin
  FColor := Value;
  Changed(False);
end;

procedure TInspectorPanel.SetControl(const Value: TWinControl);
var
  i: Integer;
begin
  if Assigned(Value) then
  begin
    for i := 1 to InspectorBar.Panels.Count do
      if (i <> Index) and (InspectorBar.Panels[i - 1].Control = Value) then
      begin
        ShowMessage('Control already assigned to another panel');
        Exit;
      end;
  end;

  FControl := Value;

  InspectorBar.ArrangeControls;

  Changed(False);
end;

procedure TInspectorPanel.SetEditBox(const Value: Boolean);
begin
  FEditBox := Value;
  Changed(False);
end;

procedure TInspectorPanel.SetEditColor(const Value: TColor);
begin
  FEditColor := Value;
  Changed(False);  
end;

procedure TInspectorPanel.SetEditFontColor(const Value: TColor);
begin
  FEditFontColor := Value;
  Changed(False);
end;

procedure TInspectorPanel.SetFont(const Value: TFont);
begin
  FFont.Assign(Value);
  Changed(False);
end;

procedure TInspectorPanel.SetGradientDirection(
  const Value: TGradientDirection);
begin
  FGradientDirection := Value;
  Changed(False);
end;

procedure TInspectorPanel.SetGradientEnd(const Value: TColor);
begin
  FGradientEnd := Value;
  Changed(False);
end;

procedure TInspectorPanel.SetGradientStart(const Value: TColor);
begin
  FGradientStart := Value;
  Changed(False);
end;

procedure TInspectorPanel.SetGradientSteps(const Value: Integer);
begin
  FGradientSteps := Value;
  Changed(False);
end;

procedure TInspectorPanel.SetGridLineColor(const Value: TColor);
begin
  FGridLineColor := Value;
  Changed(False);
end;

procedure TInspectorPanel.SetGridLines(const Value: Boolean);
begin
  FGridLines := Value;
  Changed(False);
end;

procedure TInspectorPanel.SetImageIndex(const Value: Integer);
begin
  FImageIndex := Value;
  Changed(False);
end;

procedure TInspectorPanel.SetIndent(const Value: Integer);
begin
  FIndent := Value;
  Changed(False); 
end;

procedure TInspectorPanel.SetInspectorItems(const Value: TInspectorItems);
begin
  FItems.Assign(Value);
  Changed(False);
end;

procedure TInspectorPanel.SetItemHeight(const Value: Integer);
begin
  if Value > 0 then
    FItemHeight := Value;
  Changed(False);
end;

procedure TInspectorPanel.SetOpen(const Value: Boolean);
begin
  FIsOpen := Value;
  InspectorBar.ArrangeOpenClose;
  InspectorBar.Invalidate;
end;

procedure TInspectorPanel.SetPanelStyle(const Value: TPanelStyle);
begin
  FPanelStyle := Value;
  Changed(False);
end;

procedure TInspectorPanel.SetSplitter(const Value: TInspImage);
begin
  FSplitter.Assign(Value);
  Changed(False);
end;

procedure TInspectorPanel.SetTexture(const Value: TBitmap);
begin
  FTexture.Assign(Value);
  Changed(False);
end;

procedure TInspectorPanel.SetTopItem(const Value: Integer);
begin
  if (value > FItems.Count-1) or (value<0) then exit;
  FTopItem := Value;
end;

procedure TInspectorPanel.SetWordWrap(const Value: Boolean);
begin
  FWordWrap := Value;
  Changed(False);
end;

{ TInspectorItem }

procedure TInspectorItem.BkgChanged(Sender: TObject);
begin
  Changed;
end;

procedure TInspectorItem.Changed;
begin
  TInspectorItems(GetOwner).Update(Self);
end;

constructor TInspectorItem.Create(Collection: TCollection);
begin
  inherited;
  FIcon := nil;
  FValues := TStringList.Create;
  FImageIndex := -1;
  FFontValue := TFont.Create;
  FSpinMin := 0;
  FSpinMax := 100;
  FBackground := TInspImage.Create;
  FBackground.OnChange := BkgChanged;
  FBkgPos := bpBottomRight;
end;

destructor TInspectorItem.Destroy;
begin
  InspectorBar.FMousePanel := -1;
  InspectorBar.FMouseItem := nil;

  if Assigned(EditLink) then
    EditLink.DestroyEditor;

  if FOwnsObject then
    if Assigned(FObject) then
      FObject.Free;

  if FIcon <> nil then
    FIcon.Free;
  FValues.Free;
  FFontValue.Free;
  FBackground.Free;  
  inherited;
end;

procedure TInspectorItem.EditChange;
begin
  // virtual methods, used for descendent class
end;

procedure TInspectorItem.EditStart;
begin
  // virtual methods, used for descendent class
end;

procedure TInspectorItem.EditStop;
begin
  // virtual methods, used for descendent class
end;

function TInspectorItem.GetDisplayName: string;
begin
  if Caption <> '' then
    Result := Caption
  else
    Result := 'TInspectorItem' + IntToStr(Index);
end;

function TInspectorItem.GetIcon: TIcon;
begin
  if FIcon = nil then
      FIcon := TIcon.Create;
  Result := FIcon;
end;

function TInspectorItem.GetInspectorBar: TInspectorBar;
begin
  Result := TInspectorPanels(TInspectorItems(Collection).FOwner.Collection).FOwner;
end;

function TInspectorItem.GetInspectorPanel: TInspectorPanel;
begin
  Result := TInspectorItems(Collection).FOwner
end;

procedure TInspectorItem.SetAutoIcon(const Value: Boolean);
begin
  FAutoIcon := Value;
  Changed;
end;

procedure TInspectorItem.SetAutoIconIndex(const Value: Integer);
begin
  FAutoIconIndex := Value;
  Changed;
end;

procedure TInspectorItem.SetBackground(const Value: TInspImage);
begin
  FBackground := Value;
  Changed;
end;

procedure TInspectorItem.SetBackgroundPos(const Value: TInspBackgroundPos);
begin
  FBkgPos := Value;
  Changed;
end;

procedure TInspectorItem.SetBoolValue(const Value: Boolean);
begin
  FBoolValue := Value;
  Changed;
end;

procedure TInspectorItem.SetCaption(const Value: string);
begin
  FCaption := Value;
  Changed;
end;

procedure TInspectorItem.SetColorValue(const Value: TColor);
begin
  FColorValue := Value;
  case FColorValue of
  clLime: TextValue := 'Lime';
  clRed: TextValue := 'Red';
  clWhite: TextValue := 'White';
  clBlack: TextValue := 'Black';
  clAqua: TextValue := 'Aqua';
  clGreen: TextValue := 'Green';
  clBlue: TextValue := 'Blue';
  clYellow: TextValue := 'Yellow';
  clSilver: TextValue := 'Silver';
  clGray: TextValue := 'Gray';
  clFuchsia: TextValue := 'Fuchsia';
  clMaroon: TextValue := 'Maroon';
  clOlive: TextValue := 'Olive';
  clNavy: TextValue := 'Navy';
  clPurple: TextValue := 'Purple';
  clTeal: TextValue := 'Teal';
  clBackGround: TextValue := 'Background';
  clActiveCaption: TextValue := 'ActiveCaption';
  clInActiveCaption: TextValue := 'InactiveCaption';
  clMenu: TextValue := 'Menu';
  clWindow: TextValue := 'Window';
  clWindowFrame: TextValue := 'WindowFrame';
  clMenuText: TextValue := 'MenuText';
  clWindowText: TextValue := 'WindowText';
  clCaptionText: TextValue := 'CaptionText';
  clActiveBorder: TextValue := 'ActiveBorder';
  clInactiveBorder: TextValue := 'InactiveBorder';
  clAppWorkSpace: TextValue := 'AppWorkspace';
  clHighLight: TextValue := 'Highlight';
  clHighLightText: TextValue := 'HighlightText';
  clBtnFace: TextValue := 'BtnFace';
  clBtnShadow: TextValue := 'BtnShadow';
  clGrayText: TextValue := 'GrayText';
  clBtnText: TextValue := 'BtnText';
  clInactiveCaptionText: TextValue := 'InactiveCaptionText';
  clBtnHighLight: TextValue := 'BtnHighlight';
  cl3DDkShadow: TextValue := '3ddkShadow';
  cl3DLight: TextValue := '3dLight';
  clInfoText: TextValue := 'InfoText';
  clInfoBk: TextValue := 'Infobk';
  else
    TextValue := '$' + IntToHex(Integer(Value),8);
  end;
  Changed;
end;

procedure TInspectorItem.SetDateTimeValue(const Value: TDateTime);
begin
  FDateTimeValue := Value;
  FTextValue := DateToStr(Value) + ' ' + TimeToStr(Value);
  Changed;
end;

procedure TInspectorItem.SetDateValue(const Value: TDateTime);
begin
  FDateTime := Value;
  FTextValue := DateToStr(Value);
  Changed;
end;

procedure TInspectorItem.SetDown(const Value: Boolean);
begin
  FDown := Value;
  Changed;
end;

procedure TInspectorItem.SetFontValue(const Value: TFont);
begin
  FFontValue := Value;
  if Assigned(FFontValue) then
    FTextValue := FFontValue.Name;
  Changed;  
end;

procedure TInspectorItem.SetIcon(const Value: TIcon);
begin
  if Value = nil then
  begin
    if FIcon <> nil then
    begin
      FIcon.Free;
      FIcon := nil;
    end
  end
  else
  begin
    if FIcon = nil then
      FIcon := TIcon.Create;
    FIcon.Assign(Value);
  end;
  Changed;
end;

procedure TInspectorItem.SetImageIndex(const Value: Integer);
begin
  FImageIndex := Value;
  Changed;
end;

procedure TInspectorItem.SetIntValue(const Value: Integer);
begin
  FIntValue := Value;
  FTextValue := IntToStr(Value);
  Changed;
end;

procedure TInspectorItem.SetPropertyType(const Value: TPropertyType);
begin
  FPropertyType := Value;
  Changed;
end;

procedure TInspectorItem.SetTextValue(const Value: string);
begin
  FTextValue := Value;
  Changed;
end;

procedure TInspectorItem.SetTimeValue(const Value: TDateTime);
begin
  FDateTime := Value;
  FTextValue := TimeToStr(Value);
  Changed;
end;

procedure TInspectorItem.SetURL(const Value: string);
begin
  FURL := Value;
  Changed;
end;

procedure TInspectorItem.SetValues(const Value: TStringList);
begin
  FValues.Assign(Value);
end;

{ TInspectorBar }

procedure TInspectorBar.CaptionChanged(Sender: TObject);
begin
  Invalidate;
end;

constructor TInspectorBar.Create(AOwner: TComponent);
var
  dwVersion:Dword;
  dwWindowsMajorVersion,dwWindowsMinorVersion:Dword;
begin
  inherited;

  FPanels := CreatePanels;

  Width := 180;
  Align := alLeft;

  dwVersion := GetVersion;
  dwWindowsMajorVersion :=  DWORD(LOBYTE(LOWORD(dwVersion)));
  dwWindowsMinorVersion :=  DWORD(HIBYTE(LOWORD(dwVersion)));

  FIsWinXP := (dwWindowsMajorVersion > 5) OR
    ((dwWindowsMajorVersion = 5) AND (dwWindowsMinorVersion >= 1));

  FInspectorCaption := TInspectorCaption.Create;
  FInspectorCaption.OnChange := CaptionChanged;
  FInspectorCaption.OnShadeChange := ShadeChanged;
  FScrollBar := TScrollBar.Create(Nil);
  FScrollBar.Parent := Self;

  FScrollBar.Align := alRight;
  FScrollBar.Visible := False;
  FScrollBar.Position := 0;
  FScrollBar.Kind := sbVertical;
  FScrollBar.OnChange := Scroll;
  DoubleBuffered := True;
  FScrollBar.DoubleBuffered := True;
  FShadedHeader := TBitmap.Create;
  ShadeHeader;
  FInspectorEdit := TInspectorEdit.Create(Self);
  FInspectorEdit.OnDblClick := EditDblClick;
  FInspectorEdit.OnChange := EditChanged;
  FInspectorCombo := TInspectorCombo.Create(Self);
  FInspectorCombo.IsWinXP := FIsWinXP;
  FInspectorCombo.OnDblClick := EditDblClick;
  FInspectorCombo.OnChange := EditChanged;

  FInspectorColorCombo := TInspectorColorCombo.Create(Self);
  FInspectorColorCombo.IsWinXP := FIsWinXP;
  FInspectorColorCombo.Style := csOwnerDrawFixed;
  FInspectorColorCombo.OnDblClick := EditDblClick;
  FInspectorColorCombo.OnChange := ComboChanged;

  FInspectorSpin := TInspectorSpin.Create(Self);
  FInspectorSpin.IsWinXP := FIsWinXP;
  FInspectorSpin.OnDblClick := EditDblClick;
  FInspectorSpin.OnChange := EditChanged;
  FInspectorEditBtn := TInspectorEditBtn.Create(Self);
  FInspectorEditBtn.IsWinXP := FIsWinXP;
  FInspectorEditBtn.OnDblClick := EditDblClick;
  FInspectorEditBtn.OnClickBtn := EditBtnClick;
  FInspectorEditBtn.OnChange := EditChanged;
  FInspectorDateTimePicker := TInspectorDateTimePicker.Create(Self);
  FInspectorDateTimePicker.OnChange := EditChanged;
  OnExit := CaptionChanged;
  OnEnter := CaptionChanged;
  FOnPanelOpen  := nil;
  FOnPanelClose := nil;
  FMousePanel := -1;
  FMouseItem := nil;

  FInspectorDropTarget := nil;
  FOleDropTargetAssigned := False;
end;

destructor TInspectorBar.Destroy;
begin
  FPanels.Free;
  FPanels := nil;
  FInspectorCaption.Free;
  FShadedHeader.Free;
  FInspectorEdit.Free;
  FInspectorCombo.Free;
  FInspectorColorCombo.Free;
  FInspectorSpin.Free;
  FInspectorEditBtn.Free;
  FInspectorDateTimePicker.Free;

  inherited;
end;

function TInspectorBar.CreatePanels: TInspectorPanels;
begin
  Result := TInspectorPanels.Create(Self);
end;

procedure TInspectorBar.DrawCaption(Panel: TInspectorPanel; R: TRect);
var
  DWSTYLE: DWord;
  i, ind: Integer;
  BorderColor1,BorderColor2: TColor;
  pt: TPoint;
  tRgn,rgn1,rgn2: HRGN;
  DefaultDraw: Boolean;
  HTheme: THandle;
  Hot: Boolean;
  Down: Boolean;

begin
  DefaultDraw := True;

  if Assigned(FOnPanelDraw) then
    FOnPanelDraw(Self,Panel,Canvas,R,DefaultDraw);

  if not DefaultDraw then
    Exit;

  Canvas.Brush.Color := Panel.Color;
  Canvas.Pen.Color := Panel.Color;
  Canvas.Rectangle(R.Left,R.Top,R.Right,R.Bottom); //background
  Canvas.Brush.Style := bsClear;
  tRgn := 0;
  rgn1 := 0;
  rgn2 := 0;

  // Set the contour colors

  GetCursorPos(pt);
  pt := ScreenToClient(pt);

  if PtInRect(R,pt) and FMouseDown and PanelCaption.Button then
  begin
    BorderColor1 := clGray;
    BorderColor2 := clWhite;
  end
  else
  begin
    BorderColor1 := clWhite;
    BorderColor2 := clGray;
  end;

  if (PanelCaption.ShadeType = stXPButton) and DoVisualStyles then
  begin
    HTheme := OpenThemeData(Handle,'button');
    InflateRect(r,1,1);
    Hot := Panel.Index = FMousePanel;
    Down := Hot and FMouseDown;

    if Down then
      DrawThemeBackground(HTheme,Canvas.Handle,BP_PUSHBUTTON,PBS_PRESSED,@r,nil)
    else
    if Hot then
      DrawThemeBackground(HTheme,Canvas.Handle,BP_PUSHBUTTON,PBS_HOT,@r,nil)
    else
      DrawThemeBackground(HTheme,Canvas.Handle,BP_PUSHBUTTON,PBS_NORMAL,@r,nil);
    CloseThemeData(HTheme);
  end;

  if (PanelCaption.ShadeType in [stBitmap, stBitmapLStretch, stBitmapRStretch]) then
  begin
    Hot := Panel.Index = FTopPanel;

    if not PanelCaption.Background.Empty and not Hot then
    begin
      if PanelCaption.ShadeType = stBitmapLStretch then
      begin
        ind := Width - PanelCaption.Background.Width;
        if ind < 0 then ind := 0;
        Canvas.Draw(r.Left + Ind, r.Top, PanelCaption.Background);

        Canvas.CopyRect(Rect(0,r.Top,Ind,R.Bottom),PanelCaption.Background.Canvas,
          Rect(0,0,2,PanelCaption.Background.Height));
      end;

      if PanelCaption.ShadeType = stBitmapRStretch then
      begin
        ind := PanelCaption.Background.Width;

        Canvas.Draw(r.Left, r.Top, PanelCaption.Background);

        Canvas.CopyRect(Rect(ind,r.Top,R.Right,R.Bottom),PanelCaption.Background.Canvas,
          Rect(PanelCaption.Background.Width -3 ,0,PanelCaption.Background.Width,PanelCaption.Background.Height));
      end;

      if PanelCaption.ShadeType = stBitmap then
      begin
        Canvas.StretchDraw(r,PanelCaption.Background);
      end;
    end;

    if not PanelCaption.ActiveBackground.Empty and Hot then
    begin
      if PanelCaption.ShadeType = stBitmapLStretch then
      begin
        ind := Width - PanelCaption.Background.Width;
        if ind < 0 then ind := 0;
        Canvas.Draw(r.Left + Ind, r.Top, PanelCaption.ActiveBackground);
        Canvas.CopyRect(Rect(0,r.Top,Ind,R.Bottom),PanelCaption.ActiveBackground.Canvas,
          Rect(0,0,2,PanelCaption.ActiveBackground.Height));
      end;

      if PanelCaption.ShadeType = stBitmapRStretch then
      begin
        ind := PanelCaption.Background.Width;

        Canvas.Draw(r.Left, r.Top, PanelCaption.ActiveBackground);
        Canvas.CopyRect(Rect(ind,r.Top,R.Right,R.Bottom),PanelCaption.ActiveBackground.Canvas,
          Rect(PanelCaption.ActiveBackground.Width -3 ,0,PanelCaption.ActiveBackground.Width,PanelCaption.ActiveBackground.Height));
      end;

      if PanelCaption.ShadeType = stBitmap then
      begin
        Canvas.StretchDraw(r,PanelCaption.ActiveBackground);
      end;
    end;
  end;


  if not (PanelCaption.ShadeType in [stXPButton, stBitmap, stBitmapLStretch, stBitmapRStretch]) then
  begin
    case PanelCaption.Shape of
    csRectangle:
      begin
        if not PanelCaption.Flat then
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
  end;

  if (PanelCaption.OpenClosePosition = ocpLeft) and
     (PanelCaption.OpenCloseGraphic <> ocgNone) then
  begin
    pt := Point(R.Left, R.Top);
    R.Left := R.Left + 16;
  end
  else
    pt := Point(R.Right - 20, R.Top);

  if Panel.FIsOpen then
  begin
    case PanelCaption.OpenCloseGraphic of
    ocgGlyph:
      begin
        if not FInspectorCaption.FGlyphOpen.Empty then
        begin
          FInspectorCaption.FGlyphOpen.TransparentMode := tmAuto;
          FInspectorCaption.FGlyphOpen.Transparent := True;
          Canvas.Draw(pt.X, pt.Y,FInspectorCaption.FGlyphOpen)
        end;
      end;
    ocgCross:
      begin
        Canvas.Pen.Color := clBlack;
        Canvas.Pen.Width := 1;
        Canvas.MoveTo(pt.X + 4, pt.Y + 4);
        Canvas.LineTo(pt.X + 12,pt.Y + 4);
        Canvas.LineTo(pt.X + 12,pt.Y + 12);
        Canvas.LineTo(pt.X + 4,pt.Y + 12);
        Canvas.LineTo(pt.X + 4, pt.Y + 4);
        Canvas.MoveTo(pt.X + 6, pt.Y + 8);
        Canvas.LineTo(pt.X + 11, pt.Y + 8);
      end;
    ocgTriangle:
      begin
        Canvas.Brush.Color := clBlack;
        Canvas.Pen.Color := clBlack;
        Canvas.Pen.Width := 1;
        Canvas.Polygon([Point(pt.X + 4,pt.Y + 4),Point(pt.X + 10,pt.Y + 4),Point(pt.X + 7,pt.Y + 7)]);
      end;
    end;
  end
  else
  begin
    case PanelCaption.OpenCloseGraphic of
    ocgGlyph:
      begin
        if not FInspectorCaption.FGlyphClose.Empty then
        begin
          FInspectorCaption.FGlyphClose.TransparentMode := tmAuto;
          FInspectorCaption.FGlyphClose.Transparent := True;
          Canvas.Draw(pt.X , pt.Y,FInspectorCaption.FGlyphClose)
        end;
      end;
    ocgCross:
      begin
        Canvas.Pen.Color := clBlack;
        Canvas.Pen.Width := 1;
        Canvas.MoveTo(pt.X + 4, pt.Y + 4);
        Canvas.LineTo(pt.X + 12,pt.Y + 4);
        Canvas.LineTo(pt.X + 12,pt.Y + 12);
        Canvas.LineTo(pt.X + 4,pt.Y + 12);
        Canvas.LineTo(pt.X + 4, pt.Y + 4);
        Canvas.MoveTo(pt.X + 6, pt.Y + 8);
        Canvas.LineTo(pt.X + 11, pt.Y + 8);
        Canvas.MoveTo(pt.X + 8, pt.Y + 6);
        Canvas.LineTo(pt.X + 8, pt.Y + 11);
      end;
    ocgTriangle:
      begin
        Canvas.Brush.Color := clBlack;
        Canvas.Pen.Color := clBlack;
        Canvas.Pen.Width := 1;
        Canvas.Polygon([Point(pt.X + 4,pt.Y + 4),Point(pt.X + 4,pt.Y + 10),Point(pt.X + 7,pt.Y + 7)]);
      end;
    end;
  end;

  if (FImages <> nil) and (Panel.FImageIndex <> -1) then   //Add image
  begin
    i := ((R.Bottom - R.Top - FImages.Height) div 2);
    if i < 0 then
      i := R.Top
    else
      i := R.Top + i;

    FImages.Draw(Canvas,R.Left,i,Panel.FImageIndex);
    R.Left := R.Left + FImages.Width;
  end;

  R.Left := R.Left + 4;

  SelectClipRgn(Canvas.Handle,0);   //Restore the Canvas Clip region
  DeleteObject(tRgn);
  if PanelCaption.Shape = csSemiRounded then
    Begin
      DeleteObject(rgn1);
      DeleteObject(rgn2);
    End;

  DrawCaptionOptions(Panel,Canvas,R);


  DWSTYLE := DT_SINGLELINE or DT_END_ELLIPSIS;

  case PanelCaption.Alignment of
  taLeftJustify: DWSTYLE := DWSTYLE or DT_LEFT;
  taRightJustify: DWSTYLE := DWSTYLE or DT_RIGHT;
  taCenter: DWSTYLE := DWSTYLE or DT_CENTER;
  end;

  case PanelCaption.VAlignment of
  vaCenter: DWSTYLE := DWSTYLE or DT_VCENTER;
  vaTop: DWSTYLE := DWSTYLE or DT_TOP;
  vaBottom: DWSTYLE := DWSTYLE or DT_BOTTOM;
  end;

  if Panel.Index = FTopPanel then
    Canvas.Font.Assign(PanelCaption.ActiveFont)
  else
    Canvas.Font.Assign(PanelCaption.Font);
    
  Canvas.Brush.Style := bsClear;

  OffsetRect(R,PanelCaption.Indent,0);

  DrawText(Canvas.Handle,PChar(Panel.Caption),Length(Panel.Caption),R,DWSTYLE);
end;

procedure TInspectorBar.MouseMove(Shift: TShiftState; X, Y: Integer);
var
  r: TRect;
  Panel: TInspectorPanel;
  Item: TInspectorItem;
  NewHint: string;
begin
  inherited;

  if Panels.Count = 0 then
    Exit;

  if ShowHint then
  begin
    NewHint := GetHint(x,y);
    if NewHint <> FOldHint then
      Application.CancelHint;
    FOldHint := NewHint;

  end;

  if GetPanelItemAtXY(x,y,Panel,Item) then
  begin
    if (Panel.GridLines) and (Panel.Style = psProperties) and Panel.AllowResize then
    begin
      if (Cursor = crHSplit) and FMouseDown then
      begin
        Panel.CaptionWidth := x;
        Exit;
      end;

      if Abs(X - Panel.CaptionWidth) < 4 then
        Cursor := crHSplit
      else
        Cursor := crDefault;
    end
    else
      Cursor := crDefault;
  end
  else
  begin
    Cursor := crDefault;
  end;

  if (FInspectorCaption.Cursor <> crDefault) then
  begin
    if (Mode = imSinglePanelActive) and GetCursorSingle(x,y) or
       (Mode = imMultiPanelActive) and GetCursorMulti(x,y) then
    begin                            //Save the Bar cursor if needed
      if FInspectorCaption.FBarCursor = crDefault then
        FInspectorCaption.FBarCursor := Cursor;
      Cursor := FInspectorCaption.Cursor;
    end
    else
    begin                          //Restore the Bar cursor if needed
      if FInspectorCaption.FBarCursor <> crDefault then
        Cursor := FInspectorCaption.FBarCursor;
      FInspectorCaption.FBarCursor := crDefault;
    end;
  end;

  // Invalidate old mouse-over item
  if (Item <> FMouseItem) and Assigned(FMouseItem) then
  begin
    r := GetItemRect(FMouseItem.InspectorPanel,FMouseItem);
    InvalidateRect(Handle,@r,False);
  end;

  if Assigned(Item) then
  begin
    r := GetItemRect(Panel,Item);
    InvalidateRect(Handle,@r,False);
  end;

  Panel := GetCaption(X,Y);
  if Assigned(Panel) then
  begin
    if (FMousePanel <> Panel.Index) or MouseMoveCaptionOptions(Panel,X,Y) then
    begin
      if FMousePanel <> -1 then
      begin
        r := GetCaptionRect(Panels[FMousePanel]);
        InvalidateRect(Handle,@r,False);
      end;
      FMousePanel := Panel.Index;
      r := GetCaptionRect(Panels[FMousePanel]);
      InvalidateRect(Handle,@r,False);
    end;
  end
  else
  begin
    if FMousePanel <> -1 then
    begin
      r := GetCaptionRect(Panels[FMousePanel]);
      InvalidateRect(Handle,@r,False);
      FMousePanel := -1;
    end;
  end;

  FMouseItem := Item;
end;


procedure TInspectorBar.MouseDownSinglePanel(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i,j,k,l, RealWidth: Integer;
  Hover: Boolean;
begin
  if FPanels.Count = 0 then
    Exit;
  //------ Panel Caption Click-------------
  for i := 0 to FPanels.Count - 1 do
  begin
    if i <= FTopPanel then
      j := i * PanelCaption.Height
    else
      j := Height - ((FPanels.Count - i) * PanelCaption.Height);

    if (y >= j) and (y <= j + PanelCaption.Height) then
    begin

      if MouseDownCaptionOptions(FPanels.Items[i], X, Y) then
        Break;

      if TopPanel <> i then
      Begin
        PanelOpened(FPanels.Items[i]);
        PanelClosed(FPanels.Items[TopPanel]);
        TopPanel := i;
        Exit;
      End;
      Break;
    end;
  end;

  //------ Buttons for scroll  Click-------------
  j := (FTopPanel + 1) * PanelCaption.Height; //Click Up
  i := Height - ((FPanels.Count -1 - FTopPanel) * PanelCaption.Height); //Click Down

  //-------Button for scroll 20x20---------------
  if (x >= self.Width - 20) and (x <= self.Width) and
     (y >= j) and (y <= j + 20) and FShowUP then
  begin
    FPanels[FTopPanel].TopItem := FPanels[FTopPanel].FTopItem - 1;
    DrawButtonUp;
    Exit;
  end;

  if (x >= self.Width - 20) and (x <= self.Width) and
     (y <= i ) and (y >= i - 20) and FShowDown then
  begin
    FPanels[FTopPanel].TopItem := FPanels[FTopPanel].FTopItem + 1;
    DrawButtonDown;
    Exit;
  end;

  Hover := FPanels[FTopPanel].HoverCaption;

  case FPanels[FTopPanel].Style of
  psLargeIcon:
    begin
      if ( y > j) and (y < i) and
         (((x > (Width - 32) shr 1) and (x < 32 + (Width - 32) shr 1)) or Hover) then
      begin
        k := FPanels[FTopPanel].TopItem + ((y - j) div FPanels[FTopPanel].ItemHeight);
        if k < FPanels[FTopPanel].Items.Count then
          ItemClicked(Button,FPanels[FTopPanel],FPanels[FTopPanel].Items[k]);
      end;
    end;
  psSmallIcon, psButtons:
    begin
      if ( y > j) and (y < i) and ((x < Width - 20) or Hover or (FPanels[FTopPanel].Style = psButtons)) then
      begin
        k := FPanels[FTopPanel].TopItem + ((y - j) div FPanels[FTopPanel].ItemHeight);
        if k < FPanels[FTopPanel].Items.Count then
          ItemClicked(Button,FPanels[FTopPanel],FPanels[FTopPanel].Items[k]);

        if FPanels[FTopPanel].Style = psButtons then
        begin
          for l := 1 to FPanels[FTopPanel].Items.Count do
            if l - 1 <> k then
              FPanels[FTopPanel].Items[l - 1].Down := False;

          if k < FPanels[FTopPanel].Items.Count then
            FPanels[FTopPanel].Items[k].Down := not FPanels[FTopPanel].Items[k].Down;
        end;
      end;
    end;
  psProperties:
    begin
      if ( y > j) and (y < i) and (x > FPanels[FTopPanel].CaptionWidth) and
         (Cursor <> crHSplit) and (x < InspectorWidth) then
      begin
        RealWidth := InspectorWidth;

        k := FPanels[FTopPanel].TopItem + ((y - j) div FPanels[FTopPanel].ItemHeight);

        if k < FPanels[FTopPanel].Items.Count then
        begin
          ItemClicked(Button,FPanels[FTopPanel],FPanels[FTopPanel].Items[k]);

          if FMouseDown then
          begin
            StartEdit(FPanels[FTopPanel].Items[k]);
            if (x > RealWidth - 32) then
            case FEditType of
            itCombo:  FInspectorCombo.DroppedDown := True;
            itColorCombo: FInspectorColorCombo.DroppedDown := True;
            itPicker: PostMessage(FInspectorDateTimePicker.Handle,WM_KEYDOWN,VK_F4,0);
            itBtnEdit: EditBtnClick(Self);
            end;
          end;
        end;
      end;
    end;
  end;

  Invalidate;
end;

procedure TInspectorBar.MouseDownMultiPanel(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i,j,k,l, RealWidth: Integer;

begin
  if FPanels.Count = 0 then
    Exit;

  j := -FScrollBar.Position;
  for i := 0 to FPanels.Count - 1 do
  begin
    if (y >= j) and (y <= j + PanelCaption.Height) then
    begin
     //if requested an empty panel does not expand
      if FPanels.Items[i].FItems.Count = 0 then
        Break;

      if MouseDownCaptionOptions(FPanels.Items[i], X, Y) then
        Break;

      FPanels.Items[i].FIsOpen := not (FPanels.Items[i].FIsOpen); //open<->close
      if (FPanels.Items[i].FIsOpen) then
        PanelOpened(FPanels.Items[i])
      else
        PanelClosed(FPanels.Items[i]);
      Break;
    end;

    // compute absolute coordinates from local coordinates
    if FPanels.Items[i].FIsOpen then
    begin
      //for open panel
      Inc(j,PanelCaption.Height);  //Panel caption
      //Items

      for k := 1 to FPanels.Items[i].Items.Count do
      begin
        if FPanels.Items[i].Style = psProperties  then
        begin
          RealWidth := InspectorWidth;

          if (y >= j) and (y <= j + FPanels.Items[i].ItemHeight)
             and (x > FPanels[i].CaptionWidth) and (Cursor <> crHSplit)
             and (x < InspectorWidth) then
          begin
            StartEdit(FPanels.Items[i].Items[k-1]);

            if (x > RealWidth - 32) then
              case FEditType of
              itCombo:  FInspectorCombo.DroppedDown := True;
              itColorCombo: FInspectorColorCombo.DroppedDown := True;
              itPicker: PostMessage(FInspectorDateTimePicker.Handle,WM_KEYDOWN,VK_F4,0);
              itBtnEdit: EditBtnClick(Self);
              end;
          end;
        end
        else
        begin
          if (y >= j) and (y <= j + FPanels.Items[i].ItemHeight)
            and (x > 0) and (x < Width) then
          begin
            ItemClicked(Button,FPanels.Items[i],FPanels.Items[i].Items[k-1]);

            if FPanels[i].Style = psButtons then
            begin
              for l := 1 to FPanels[i].Items.Count do
                if l - 1 <> k - 1 then
                  FPanels[i].Items[l - 1].Down := False;

              FPanels[i].Items[k - 1].Down := not FPanels[i].Items[k - 1].Down;
            end;
          end;

        end;

        Inc(j,FPanels.Items[i].ItemHeight);
      end;

      if i = FLastOpen then
      begin
        j := Height - (FPanels.Count - FLastOpen - 1) * PanelCaption.Height;
      end;
    end
    else
    begin
      //for close panel
      Inc(j,PanelCaption.Height);
    end
  end;

  ArrangeOpenClose; //Set the last open panel and the first opened panels
  Invalidate;

end;

procedure TInspectorBar.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  if TabStop then
    SetFocus;

  FMouseDown := (Button = mbLeft);

  StopEdit(FEditItem);
  if FMode = imSinglePanelActive then
    MouseDownSinglePanel(Button, Shift, X, Y)
  else
    MouseDownMultiPanel(Button, Shift, X, Y)
end;

procedure TInspectorBar.DrawGradient(FromColor,ToColor: TColor; Steps: Integer;R:TRect; Direction: Boolean);
var
  diffr,startr,endr: Integer;
  diffg,startg,endg: Integer;
  diffb,startb,endb: Integer;
  rstepr,rstepg,rstepb,rstepw: Real;
  i,stepw: Word;

begin
  if Steps = 0 then
    Steps := 1;

  startr := (FromColor and $0000FF);
  startg := (FromColor and $00FF00) shr 8;
  startb := (FromColor and $FF0000) shr 16;
  endr := (ToColor and $0000FF);
  endg := (ToColor and $00FF00) shr 8;
  endb := (ToColor and $FF0000) shr 16;

  diffr := endr - startr;
  diffg := endg - startg;
  diffb := endb - startb;

  rstepr := diffr / steps;
  rstepg := diffg / steps;
  rstepb := diffb / steps;

  if Direction then
    rstepw := (R.Right - R.Left) / Steps
  else
    rstepw := (R.Bottom - R.Top) / Steps;

  with Canvas do
  begin
    for i := 0 to steps-1 do
    begin
      endr := startr + Round(rstepr*i);
      endg := startg + Round(rstepg*i);
      endb := startb + Round(rstepb*i);
      stepw := Round(i*rstepw);
      Pen.Color := endr + (endg shl 8) + (endb shl 16);
      Brush.Color := Pen.Color;
      if Direction then
        Rectangle(R.Left + stepw,R.Top,R.Left + stepw + Round(rstepw)+1,R.Bottom)
      else
        Rectangle(R.Left,R.Top + stepw,R.Right,R.Top + stepw + Round(rstepw)+1);
    end;
  end;
end;

procedure TInspectorBar.PaintSinglePanel;
var
  i,j,h,top,realtop,realheight: Integer;
  R: TRect;
  VisibleItems: Integer;
  xo,yo: Integer;
  Rgn: THandle;
begin
  //panels at top of inspectorbar
  for i := 1 to FTopPanel + 1 do
  begin
    DrawCaption(FPanels.Items[i - 1],Rect(0,(i-1)*PanelCaption.Height,Width,i*PanelCaption.Height));
  end;

   R := Rect(3,FTopPanel*PanelCaption.Height+3,Width-3,(FTopPanel+1)*PanelCaption.Height-3);

   if Focused and FShowFocus then
    DrawFocusRect(Canvas.Handle,R);

  //panels at bottom of inspectorbar
  for i := FPanels.Count downto FTopPanel + 2 do
  begin
    j :=  FPanels.Count - i +  1;
    DrawCaption(FPanels.Items[i - 1],Rect(0,Height - (j)*PanelCaption.Height,Width,Height - ((j-1)*PanelCaption.Height)));
  end;

  //focused panel background
  h := Height - FPanels.Count * PanelCaption.Height;
  Top := FTopPanel * PanelCaption.Height;

  R := Rect(0,Top + PanelCaption.Height,Width, Top + PanelCaption.Height + h);

  case FPanels[FTopPanel].Background of
  pbSolid:
    begin
      Canvas.Brush.Color := FPanels[FTopPanel].Color;
      Canvas.Pen.Color := Canvas.Brush.Color;
      Canvas.Rectangle(R.Left,R.Top,R.Right,R.Bottom);
    end;
  pbGradient:
    begin
      with FPanels[FTopPanel] do
        DrawGradient(GradientStart,GradientEnd,GradientSteps,R,GradientDirection = gdHorizontal);
    end;
  pbTexture:
    begin
      Rgn := CreateRectRgn(R.Left,R.Top,R.Right,R.Bottom);
      SelectClipRgn(Canvas.Handle,Rgn);

      if not FPanels[FTopPanel].FTexture.Empty then
      begin
        yo := R.Top;
        while (yo < R.Bottom) do
        begin
          xo := R.Left;
          while (xo < R.Right) do
          begin
            Canvas.Draw(xo,yo,FPanels[FTopPanel].FTexture);
            xo := xo + FPanels[FTopPanel].FTexture.Width;
          end;
          yo := yo + FPanels[FTopPanel].FTexture.Height;
        end;
      end;
      SelectClipRgn(Canvas.Handle,0);
      DeleteObject(Rgn);
    end;
  end;
  if not FFlat then
  begin
    Canvas.Pen.Color := clGray;
    Canvas.MoveTo(R.Right-1,R.Top);
    Canvas.LineTo(R.Right-1,R.Bottom);
    Canvas.MoveTo(R.Left,R.Top);
    Canvas.LineTo(R.Left,R.Bottom);
  end;

  //draw the items
  Canvas.Font.Assign(FPanels.Items[FTopPanel].Font);

  RealTop := Top + PanelCaption.Height;
  RealHeight := Self.Height - RealTop - ((FPanels.Count - FTopPanel - 1) * PanelCaption.Height);

  try
    VisibleItems := RealHeight div FPanels.Items[FTopPanel].ItemHeight;
  except
    on Exception do VisibleItems := 0;
  end;

  if VisibleItems > FPanels.Items[FTopPanel].Items.Count then
    VisibleItems := FPanels.Items[FTopPanel].Items.Count;

  for i := FPanels.Items[FTopPanel].FTopItem + 1 to FPanels.Items[FTopPanel].Items.Count do
  begin
    R := Rect(0,RealTop + (i-1-FPanels.Items[FTopPanel].FTopItem) * FPanels.Items[FTopPanel].ItemHeight,Width,RealTop + (i-FPanels.Items[FTopPanel].FTopItem) * FPanels.Items[FTopPanel].ItemHeight);
    if (i <= VisibleItems + FPanels.Items[FTopPanel].FTopItem) then
     DrawItem(FPanels.Items[FTopPanel],FPanels.Items[FTopPanel].Items.Items[i - 1],R);
  end;
  Canvas.Pen.Color:=clBlack;

  //draw Up and Down Buttons
  if FPanels.Items[FTopPanel].TopItem <> 0 then
  begin
    if not FShowUP then
    begin
      FShowUP := True;
      PaintSinglePanel;
    end
    else
      FShowUP := True;
    DrawButtonUp; // draw Up button
  end
  else
  begin
    if FShowUP then
    begin
      FShowUP := False;
      PaintSinglePanel;
    end
    else
      FShowUP := False;
  end;

  if FPanels.Items[FTopPanel].Items.Count-VisibleItems > FPanels.Items[FTopPanel].TopItem then
  begin
    if not FShowDown then
    begin
      FShowDown := True;
      PaintSinglePanel;
    end
    else
      FShowDown := True;
    DrawButtonDown;  // draw Down button
  end
  else
  begin
    if FShowDown then
    begin
      FShowDown := False;
      PaintSinglePanel;
    end
    else
      FShowDown := False;
  end;
end;

procedure TInspectorBar.PaintMultiPanel;
var
  i,j,h,Top,RealTop,RealWidth,q: Integer;
  R: TRect;
  xo,yo: Integer;
  Rgn: THandle;
begin
  // panels at top of inspectorbar
  // RealTop := 0;
  // j holds the current drawing position

  if FscrollBar.Visible then
  begin
    RealWidth := Width - FScrollBar.Width;
    j := -FScrollBar.Position;
  end
  else
  begin
    RealWidth := Width;
    j := 0;
  end;

  for i := 1 to FPanels.Count  do
  begin

    if not FPanels.Items[i-1].FIsOpen then
    begin
      //draw the panel caption for closed panels
      DrawCaption(FPanels.Items[i - 1],
      Rect(0,j,RealWidth,j + PanelCaption.Height));
      Inc(j,PanelCaption.Height);
    end
    else
    begin
      //draw the panel caption for opened panels
      DrawCaption(FPanels.Items[i - 1],
      Rect(0,j,realwidth,j+PanelCaption.Height));

      Inc(j,PanelCaption.Height);

      h := FPanels.Items[i-1].Items.Count * FPanels.Items[i-1].FItemHeight;
      Top := j;

      if (i = FLastOpen + 1)  then  //LastOpen + 1 because i is 1 based
      begin
        // if it is the last panel and it is shorter than TInspectorbar
        RealTop := Height - (FPanels.Count - FLastOpen - 1) * PanelCaption.Height - h - Top;
        if RealTop < 0 then
          RealTop := 0;
      end
      else
        Realtop := 0;

      R := Rect(0,Top, RealWidth,Top + h + RealTop);

      case FPanels.Items[i-1].Background of
      pbSolid:
        begin
          Canvas.Brush.Color := FPanels[i-1].Color;
          Canvas.Pen.Color := Canvas.Brush.Color;
          Canvas.Rectangle(R.Left,R.Top,R.Right,R.Bottom);
        end;
      pbGradient:
        begin
          with FPanels.Items[i-1] do
            DrawGradient(GradientStart,GradientEnd,GradientSteps,R,GradientDirection = gdHorizontal);
        end;
      pbTexture:
        begin
           Rgn := CreateRectRgn(R.Left,R.Top,R.Right,R.Bottom);
           SelectClipRgn(Canvas.Handle,Rgn);
           if not FPanels[i-1].FTexture.Empty then
           begin
             yo := R.Top;
             while (yo < R.Bottom) do
             begin
               xo := R.Left;
               while (xo < R.Right) do
               begin
                 Canvas.Draw(xo,yo,FPanels[i-1].FTexture);
                 xo := xo + FPanels[i-1].FTexture.Width;
               end;
               yo := yo + FPanels[i-1].FTexture.Height;
             end;
           end;
           SelectClipRgn(Canvas.Handle,0);
           DeleteObject(Rgn);
        end;
      end; 

      //draw the items
      Canvas.Font.Assign(FPanels.Items[i-1].Font);

      for q := 1 to FPanels.Items[i-1].Items.Count do
      begin
        R := Rect(0,j,
        RealWidth,j + FPanels.Items[i-1].ItemHeight);
        DrawItem(FPanels.Items[i-1],FPanels.Items[i-1].Items.Items[q - 1],R);
        inc(j,FPanels.Items[i-1].ItemHeight);
      end;

     inc(j,realtop);
    end;
  end;

  //---------  End DRAW -------------
  
  (*
  j := j + FscrollBar.Position;
  Dec(j,RealTop);

  // If the drawing exceeded TInspectorbar and there is no scroll bar
  // then I make the scroll bar visible and
  // call PaintMultiPanel

  if (j > Height) then
  begin
    FScrollBar.Max := j - Height;
    FScrollBar.LargeChange := 100;
    if (not FscrollBar.Visible) then
    begin
      FScrollBar.Visible := True;
      PaintMultiPanel; //self-calling for recalculations
    end;
  end;

  if (j < Height) then
  begin
    if FscrollBar.Visible then
    begin
      FScrollBar.Position := 0;
      FScrollBar.LargeChange := 100;
      FScrollBar.Max := 0;
      FScrollBar.Visible := False;
      PaintMultiPanel; //self-calling for recalculations
    end;
  end;
  *)
end;


procedure TInspectorBar.Paint;
begin
  if (FPanels.Count = 0) or (csDestroying in ComponentState) then
  begin
    inherited;
    Exit;
  end;

  if FMode = imSinglePanelActive then
    PaintSinglePanel
  else
    PaintMultiPanel;
end;

procedure TInspectorBar.SetInspectorPanels(const Value: TInspectorPanels);
begin
  FPanels.Assign(Value);
end;

procedure TInspectorBar.SetTopPanel(const Value: Integer);
var
  i: Integer;
begin
  if Value < FPanels.Count then
  begin
    FTopPanel := Value;
    for i := 1 to FPanels.Count do
      FPanels.Items[i-1].FIsOpen := False;
    FPanels.Items[FTopPanel].FIsOpen := True;
    ArrangeOpenClose;
    Invalidate;
  end;
end;

procedure TInspectorBar.ShadeHeader;
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
  rr := GetRValue(ColorToRGB(FInspectorCaption.Color));
  gr := GetGValue(ColorToRGB(FInspectorCaption.Color));
  br := GetBValue(ColorToRGB(FInspectorCaption.Color));

  Light := FInspectorCaption.ShadeLight;
  FShadedHeader.Width := Width;
  FShadedHeader.Height := FInspectorCaption.FHeight;

  Randomize;
  SizeX := FShadedHeader.Width;
  SizeY := FShadedHeader.Height;
  FShadedHeader.Canvas.Brush.Color := clWhite;
  r := Rect(0,0,SizeX,SizeY);
  FShadedHeader.Canvas.FillRect(r); //clear the bitmap

  case FInspectorCaption.ShadeType of
  stIRADIAL,stORADIAL:
    begin
      h := Dist(0,SizeX,0,SizeY);
      x := sizeX div 2;
      y := sizeY div 2;

      for i := 0 to x do
        for j := 0 to y do
        begin
          k := Dist(i,j,x,y);

          if FInspectorCaption.ShadeType = stIRADIAL then
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
          if FInspectorCaption.ShadeType = stLMetal then
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
          if FInspectorCaption.ShadeType = stVSHADEInv then
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
          if FInspectorCaption.ShadeType = stHSHADE then
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
          k := 128 + random(FInspectorCaption.ShadeGrain) ;
          k := Light-k div 2;//offset
          d := RGB( (rr*k) div 255,(gr*k) div 255,(br*k) div 255);
          FShadedHeader.Canvas.Pixels[i,j] := d;
        end;
      end;
  stNORMAL,stXPButton, stBitmap, stBitmapLStretch, stBitmapRStretch:
    begin  //for normal we use the panel caption color
      FShadedHeader.Canvas.Brush.Color:= FInspectorCaption.Color;
      FShadedHeader.Canvas.FillRect(r);
    end;
  end;
end;

procedure TInspectorBar.DrawItem(Panel: TInspectorPanel;
  Item: TInspectorItem; R: TRect);
var
  TempIcon: TIcon;
  DrwRect,CR,AR: TRect;
  IcoRect: TRect;
  pt: TPoint;
  DTSTYLE: DWord;
  HTheme: THandle;
  Hot,Down: Boolean;
  H,Ind: Integer;
  DefaultDraw: Boolean;
  HIcon: THandle;
  HasIcon,DefDraw: Boolean;
  IEButton: TInspectorEditButton;

begin
  DefaultDraw := True;

  if Assigned(FOnItemDraw) then
    FOnItemDraw(Self,Item,Canvas,R,DefaultDraw);

  if not DefaultDraw then
    Exit;

  SetBkMode(Canvas.Handle,TRANSPARENT);
  TempIcon := Item.FIcon;

  if not Panel.WordWrap then
    DTSTYLE := DT_END_ELLIPSIS or DT_VCENTER or DT_SINGLELINE
  else
    DTSTYLE := DT_WORDBREAK;


  GetCursorPos(pt);
  pt := ScreenToClient(pt);

  AR := R;


  HasIcon := False;
  if (TempIcon <> nil) and not Item.AutoIcon then
     HasIcon := not TempIcon.Empty;
  if Item.AutoIcon then
     HasIcon := Item.URL <> '';

  if not Item.Background.Empty then
  begin
    case Item.BackgroundPosition of
    bpTopLeft: Canvas.Draw(R.Left,R.Top,Item.Background);
    bpBottomLeft: Canvas.Draw(R.Left,R.Bottom - Item.Background.Height,Item.Background);
    bpTopRight: Canvas.Draw(R.Right - Item.Background.Width,R.Top,Item.Background);
    bpBottomRight: Canvas.Draw(R.Right - Item.Background.Width,R.Bottom - Item.Background.Height,Item.Background);
    end;
  end;


  Canvas.Font.Assign(Panel.Font);

  case Panel.Style of
  psLargeIcon:
    begin
      IcoRect.Left := R.Left + (R.Right - R.Left - 32) shr 1;
      IcoRect.Top := R.Top + 2;
      IcoRect.Right := IcoRect.Left + 32;
      IcoRect.Bottom := IcoRect.Top + 32;
      InflateRect(IcoRect,2,1);

      if (Panel.HoverIconColor <> clNone) and (Panel.HoverIconDownColor <> clNone)
        and PtInRect(IcoRect,pt) and HasIcon then
      begin
        Canvas.Pen.Color := clBlack;
        Canvas.Pen.Width := 1;
        if FMouseDown then
          Canvas.Brush.Color := Panel.HoverIconDownColor
        else
          Canvas.Brush.Color := Panel.HoverIconColor;
         Canvas.Rectangle(IcoRect.Left,IcoRect.Top,IcoRect.Right,IcoRect.Bottom);
      end;

      if Item.AutoIcon and (Item.URL <> '') then
      begin
        if (Pos('.EXE',UpperCase(Item.URL)) > 0) or
           (Pos('.ICO',UpperCase(Item.URL)) > 0) or
           (Pos('.ICL',UpperCase(Item.URL)) > 0) or
           (Pos('.DLL',UpperCase(Item.URL)) > 0) then
        begin
          HIcon := ExtractIcon(HInstance,PChar(Item.URL),Item.AutoIconIndex);
          DrawIconEx(Canvas.Handle,R.Left + ((R.Right - R.Left - 32) shr 1), R.Top + 2,HIcon, 32,32,0,0,DI_Normal);
          DeleteObject(HIcon);
        end
        else
        begin
          if Pos('://',Item.URL) > 0 then
            SysImage(Canvas, R.Left + (R.Right - R.Left - 32) shr 1, R.Top + 2, 'a.html', True, True)
          else
            SysImage(Canvas, R.Left + (R.Right - R.Left - 32) shr 1, R.Top + 2, Item.URL, True, True)
        end;

        IcoRect.Left := R.Left + (R.Right - R.Left - 32) shr 1;
        IcoRect.Top := R.Top + 2;
        IcoRect.Right := IcoRect.Left + 32;
        IcoRect.Bottom := IcoRect.Top + 32;
        R.Top := R.Top + 32 + 4;
      end;

      if (TempIcon <> nil) and not Item.AutoIcon then
      begin
        if not TempIcon.Empty then
        begin
          IcoRect.Left := R.Left + (R.Right - R.Left - 32) shr 1;
          IcoRect.Top := R.Top + 2;
          IcoRect.Right := IcoRect.Left + 32;
          IcoRect.Bottom := IcoRect.Top + 32;
          Canvas.Draw(IcoRect.Left,IcoRect.Top,TempIcon);
          InflateRect(IcoRect,2,2);
          R.Top := R.Top + 32 + 4;
        end;
      end;

      if PtInRect(IcoRect,pt) and HasIcon and
        ((Panel.HoverIconColor = clNone) or (Panel.HoverIconDownColor = clNone)) then
      begin
        if FMouseDown then
          Canvas.Pen.Color := clBlack
        else
          Canvas.Pen.Color := clWhite;

        Canvas.MoveTo(IcoRect.Left,IcoRect.Bottom);
        Canvas.LineTo(IcoRect.Left,IcoRect.Top);
        Canvas.LineTo(IcoRect.Right,IcoRect.Top);
        if FMouseDown then
          Canvas.Pen.Color := clWhite
        else
          Canvas.Pen.Color := clBlack;

        Canvas.LineTo(IcoRect.Right,IcoRect.Bottom);
        Canvas.LineTo(IcoRect.Left,IcoRect.Bottom);
      end;

      if Panel.HoverCaption then
      begin
        CR := R;
        H := DrawText(Canvas.Handle,PChar(Item.Caption),Length(Item.Caption),CR,DT_CENTER or DTSTYLE or DT_CALCRECT);

        R.Bottom := R.Top + H+2;
        if PtInRect(R,pt) then
          Canvas.Font.Style := Canvas.Font.Style + [fsUnderline];
      end;

      SetBkMode(Canvas.Handle,TRANSPARENT);

      case Panel.Alignment of
      taLeftJustify: DTSTYLE := DTSTYLE or DT_LEFT;
      taCenter: DTSTYLE := DTSTYLE or DT_CENTER;
      taRightJustify: DTSTYLE := DTSTYLE or DT_RIGHT;
      end;
      R.Left := R.Left + Panel.Indent;

      DrawText(Canvas.Handle,PChar(Item.Caption),Length(Item.Caption),R,DTSTYLE);

      if not Panel.Splitter.Empty then
      begin
        Ind := Width - Panel.Splitter.Width;
        if Ind < 0 then
          Ind := 0;
        Canvas.Draw(AR.Left + Ind,AR.Bottom - Panel.Splitter.Height,Panel.Splitter);
      end;
    end;
  psSmallIcon:
    begin
      R.Left := R.Left + Panel.Indent;
      IcoRect.Left := R.Left + 4;
      IcoRect.Top := R.Top + 2;
      IcoRect.Right := IcoRect.Left + 16;
      IcoRect.Bottom := IcoRect.Top + 16;
      InflateRect(IcoRect,2,2);

      if (Panel.HoverIconColor <> clNone) and (Panel.HoverIconDownColor <> clNone)
        and PtInRect(IcoRect,pt) then
      begin
        Canvas.Pen.Color := clBlack;
        Canvas.Pen.Width := 1;
        if FMouseDown then
          Canvas.Brush.Color := Panel.HoverIconDownColor
        else
          Canvas.Brush.Color := Panel.HoverIconColor;
         Canvas.Rectangle(IcoRect.Left,IcoRect.Top,IcoRect.Right,IcoRect.Bottom);
      end;

      if Item.AutoIcon and (Item.URL <> '') then
      begin
        if (Pos('.EXE',UpperCase(Item.URL)) > 0) or
           (Pos('.ICO',UpperCase(Item.URL)) > 0) or
           (Pos('.DLL',UpperCase(Item.URL)) > 0) then
        begin
          HIcon := ExtractIcon(HInstance,PChar(Item.URL),0);
          DrawIconEx(Canvas.Handle,R.Left + 4, R.Top + 2,HIcon, 16, 16,0,0,DI_Normal);
          DeleteObject(HIcon);
        end
        else
        begin
          if Pos('://',Item.URL) > 0 then
            SysImage(Canvas, R.Left + 4, R.Top + 2, 'a.htm', False, True)
          else
            SysImage(Canvas, R.Left + 4, R.Top + 2, Item.URL, False, True)
        end;

        IcoRect.Left := R.Left + 4;
        IcoRect.Top := R.Top + 2;
        IcoRect.Right := IcoRect.Left + 16;
        IcoRect.Bottom := IcoRect.Top + 16;
        R.Left := R.Left + 16 + 4;
      end;

      if Assigned(FImages) and (Item.ImageIndex > -1) and not Item.AutoIcon then
      begin
        FImages.Draw(Canvas,R.Left,R.Top,Item.ImageIndex);
        R.Left := R.Left + FImages.Width + 2;
      end;

      if (TempIcon <> nil) and (Item.ImageIndex = -1) and not Item.AutoIcon then
      begin
        if not TempIcon.Empty then
        begin
          IcoRect.Left := R.Left + 4;
          IcoRect.Top := R.Top + 2; // + (R.Bottom - R.Top - TempIcon.Height) shr 1;
          IcoRect.Right := IcoRect.Left + TempIcon.Width shr 1;
          IcoRect.Bottom := IcoRect.Top + TempIcon.Height shr 1;
          DrawIconEx(Canvas.Handle, IcoRect.Left, IcoRect.Top, TempIcon.Handle,
            TempIcon.Width shr 1,TempIcon.Width shr 1,0,0,DI_Normal);
          InflateRect(IcoRect,2,2);
          R.Left := R.Left + 8 + TempIcon.Width div 2;
        end;
      end;

      if PtInRect(IcoRect,pt) and
        ((Panel.HoverIconColor = clNone) or (Panel.HoverIconDownColor = clNone)) then
      begin
        if FMouseDown then
          Canvas.Pen.Color := clBlack
        else
          Canvas.Pen.Color := clWhite;
        Canvas.MoveTo(IcoRect.Left,IcoRect.Bottom);
        Canvas.LineTo(IcoRect.Left,IcoRect.Top);
        Canvas.LineTo(IcoRect.Right,IcoRect.Top);
        if FMouseDown then
          Canvas.Pen.Color := clWhite
        else
          Canvas.Pen.Color := clBlack;
        Canvas.LineTo(IcoRect.Right,IcoRect.Bottom);
        Canvas.LineTo(IcoRect.Left,IcoRect.Bottom);
      end;

      if Panel.HoverCaption then
      begin
        CR := R;
        H := DrawText(Canvas.Handle,PChar(Item.Caption),Length(Item.Caption),CR,DT_CENTER or DTSTYLE or DT_CALCRECT);

        R.Bottom := R.Top + H+2;
        if PtInRect(R,pt) then
          Canvas.Font.Style := Canvas.Font.Style + [fsUnderline];
      end;
      SetBkMode(Canvas.Handle, TRANSPARENT);
      DrawText(Canvas.Handle,PChar(Item.Caption),Length(Item.Caption),R,DT_LEFT or DTSTYLE);

      if not Panel.Splitter.Empty then
      begin
        Ind := Width - Panel.Splitter.Width;
        if Ind < 0 then
          Ind := 0;
        Canvas.Draw(AR.Left + Ind,AR.Bottom - Panel.Splitter.Height,Panel.Splitter);
      end;

    end;
  psButtons:
    begin
      InflateRect(R,-1,-1);
      if Item.Down and not (PtInRect(R,pt) and not FMouseDown) and
        not (csDesigning in ComponentState) then
      begin
        Canvas.Brush.Color := Item.InspectorPanel.ButtonDownColor;
        Canvas.Pen.Color := Canvas.Brush.Color;
        Canvas.Rectangle(R.Left,R.Top,R.Right,R.Bottom);
      end;

      if PtInRect(R,pt) or Item.Down then
      begin

        if FMouseDown or Item.Down then
          Canvas.Pen.Color := clGray
        else
          Canvas.Pen.Color := clWhite;

        Canvas.MoveTo(R.Left,R.Bottom - 1);
        Canvas.LineTo(R.Left,R.Top);
        Canvas.LineTo(R.Right - 1,R.Top);
        if FMouseDown or Item.Down then
          Canvas.Pen.Color := clWhite
        else
          Canvas.Pen.Color := clGray;
        Canvas.LineTo(R.Right - 1,R.Bottom - 1);
        Canvas.LineTo(R.Left,R.Bottom - 1);
      end;

      OffsetRect(R,2,2);
      if Assigned(FImages) and (Item.ImageIndex > -1) then
      begin
        FImages.Draw(Canvas,R.Left,R.Top,Item.ImageIndex);
        R.Left := R.Left + FImages.Width + 2;
      end;
      Canvas.Font.Assign(Panel.Font);

      SetBKMode(Canvas.Handle, TRANSPARENT);

      // Caption & Value here
      DrawText(Canvas.Handle,PChar(Item.Caption),Length(Item.Caption),R,DT_LEFT or DT_END_ELLIPSIS);
    end;
  psProperties:
    begin
      if Panel.GridLines then
      begin
        Canvas.Pen.Color := Panel.GridLineColor;
        Canvas.MoveTo(R.Left,R.Bottom - 1);
        Canvas.LineTo(R.Right,R.Bottom - 1);
        Canvas.MoveTo(R.Left + Panel.CaptionWidth,R.Top);
        Canvas.LineTo(R.Left + Panel.CaptionWidth,R.Bottom);
        Canvas.Pen.Color := clWhite;
        Canvas.MoveTo(R.Left + Panel.CaptionWidth + 1,R.Top);
        Canvas.LineTo(R.Left + Panel.CaptionWidth + 1,R.Bottom);
      end;

      DrwRect := R;
      R.Right  := R.Left + Panel.CaptionWidth;
      R.Left := R.Left + 4;
      R.Top := R.Top + 2;

      if Panel.EditBox then
        R.Top := R.Top + 2;

      if Assigned(FImages) and (Item.ImageIndex > -1) then
      begin
        FImages.Draw(Canvas,R.Left,R.Top,Item.ImageIndex);
        R.Left := R.Left + FImages.Width + 2;
      end;

      Canvas.Font.Assign(Panel.Font);
      SetBKMode(Canvas.Handle, TRANSPARENT);

      // Caption & Value here
      DrawText(Canvas.Handle,PChar(Item.Caption),Length(Item.Caption),R,DT_LEFT or DT_END_ELLIPSIS);

      R.Left := R.Right + 4;
      R.Right := DrwRect.Right - 4;

      if (FShowUP or FShowDown) and (FMode = imSinglePanelActive) then
         Dec(R.Right,20);

      if Panel.EditBox then
      begin
        R.Top := R.Top - 2;
        InflateRect(R,-2,-2);
        Canvas.Brush.Color := Panel.EditColor;
        Canvas.FillRect(R);
        R.Left := R.Left + 3;
        R.Top := R.Top + 1;
      end;

      IEButton := ebNone;
      if Item.PropertyType = ptCustom then
      begin
        if Assigned(OnCustomEditButton) then
          OnCustomEditButton(Self,Item,IEButton);
      end;

      if Item.PropertyType = ptColor then
      begin
        DrwRect := Rect(R.Left + 2,R.Top + 2,R.Left + 20,R.Top + 16);
        Canvas.Pen.Color := clBlack;
        Canvas.Brush.Color := Item.ColorValue;
        Canvas.Rectangle(DrwRect.Left,DrwRect.Top,DrwRect.Right,DrwRect.Bottom);
        R.Left := R.Left + 24;
      end;

      if (Item.PropertyType in [ptValues,ptDate,ptColor]) or (IEButton = ebDropDown) then
      begin
        if Panel.EditBox then
          R.Right := R.Right - 3;

        if DoVisualStyles then
        begin
          HTheme := OpenThemeData(Handle,'combobox');

          DrwRect := Rect(R.Right - 17,R.Top + 1,R.Right,R.Top + 17);

          GetCursorPos(pt);
          pt := ScreenToClient(pt);
          Hot := PtInRect(DrwRect,pt);

          if Hot then
            DrawThemeBackground(HTheme,Canvas.Handle,CP_DROPDOWNBUTTON,CBXS_HOT,@DrwRect,nil)
          else
            DrawThemeBackground(HTheme,Canvas.Handle,CP_DROPDOWNBUTTON,CBXS_NORMAL,@DrwRect,nil);

          CloseThemeData(HTheme);
        end
        else
          DrawFrameControl(Canvas.Handle, Rect(R.Right - 16,R.Top ,R.Right ,R.Top + 18), DFC_SCROLL, DFCS_SCROLLCOMBOBOX or DFCS_FLAT);
        R.Right := R.Right - 16;
      end;

      if (Item.PropertyType in [ptTextButton,ptPropButton,ptFont]) or (IEButton = ebMore) then
      begin
        if Panel.EditBox then
          R.Right := R.Right - 3;

        if DoVisualStyles then
        begin
          HTheme := OpenThemeData(Handle,'button');

          DrwRect := Rect(R.Right - 18,R.Top - 1,R.Right,R.Bottom - 2);

          GetCursorPos(pt);
          pt := ScreenToClient(pt);
          Hot := PtInRect(DrwRect,pt);

          if Hot then
            DrawThemeBackground(HTheme,Canvas.Handle,BP_PUSHBUTTON,PBS_HOT,@DrwRect,nil)
          else
            DrawThemeBackground(HTheme,Canvas.Handle,BP_PUSHBUTTON,PBS_NORMAL,@DrwRect,nil);

          CloseThemeData(HTheme);
          DrwRect := Rect(R.Right - 12,R.Top + 2,R.Right,R.Bottom);
        end
        else
        begin
          DrawFrameControl(Canvas.Handle, Rect(R.Right - 14,R.Top ,R.Right ,R.Top + 18), DFC_BUTTON, DFCS_BUTTONPUSH or DFCS_FLAT);
          DrwRect := Rect(R.Right - 10,R.Top + 2,R.Right,R.Bottom);
        end;

        SetBKMode(Canvas.Handle, TRANSPARENT);
        DrawText(Canvas.Handle,'..',2,DrwRect,DT_LEFT);
        R.Right := R.Right - 16;
      end;

      if (Item.PropertyType in [ptIntSpin,ptTime]) or (IEButton = ebSpin) then
      begin
        if Panel.EditBox then
          R.Right := R.Right - 2;
        H := (R.Bottom - R.Top) div 2;

        if DoVisualStyles then
        begin
          Dec(h,2);
          HTheme := OpenThemeData(Self.Handle,'spin');

          DrwRect := Rect(R.Right - 17, R.Top , R.Right, R.Top + H + 1);

          GetCursorPos(pt);
          pt := ScreenToClient(pt);
          Hot := PtInRect(DrwRect,pt);
          Down := Hot and FMouseDown;

          if Down then
            DrawThemeBackground(HTheme,Canvas.Handle, SPNP_UP,UPS_PRESSED,@DrwRect,nil)
          else
            if Hot then
              DrawThemeBackground(HTheme,Canvas.Handle, SPNP_UP,UPS_HOT,@DrwRect,nil)
            else
              DrawThemeBackground(HTheme,Canvas.Handle, SPNP_UP,UPS_NORMAL,@DrwRect,nil);

          DrwRect := Rect(R.Right -17, R.Top + H + 1, R.Right, R.Top + 2 + 2*H);

          Hot := PtInRect(DrwRect,pt);
          Down := Hot and FMouseDown;

          if Down then
            DrawThemeBackground(HTheme,Canvas.Handle, SPNP_DOWN, DNS_PRESSED,@DrwRect,nil)
          else
          if Hot then
            DrawThemeBackground(HTheme,Canvas.Handle, SPNP_DOWN, DNS_HOT,@DrwRect,nil)
          else
            DrawThemeBackground(HTheme,Canvas.Handle, SPNP_DOWN, DNS_NORMAL,@DrwRect,nil);

          CloseThemeData(HTheme);
        end
        else
        begin
          DrawFrameControl(Canvas.Handle, Rect(R.Right - 16,R.Top ,R.Right ,R.Top + H), DFC_SCROLL, DFCS_SCROLLUP or DFCS_FLAT);
          DrawFrameControl(Canvas.Handle, Rect(R.Right - 16,R.Top + H ,R.Right ,R.Top + 2*H), DFC_SCROLL, DFCS_SCROLLDOWN or DFCS_FLAT);
        end;
        R.Right := R.Right - 16;
      end;

      if Item.PropertyType = ptBoolean then
      begin
        if DoVisualStyles then
        begin
          HTheme := OpenThemeData(Self.Handle,'button');

          DrwRect := Rect(R.Left, R.Top, R.Left + 14, R.Top + 14);

          GetCursorPos(pt);
          pt := ScreenToClient(pt);
          Hot := PtInRect(DrwRect,pt);
          Down := Hot and FMouseDown;

          if Item.BoolValue then
          begin
            if Down then
              DrawThemeBackground(HTheme,Canvas.Handle, BP_CHECKBOX,CBS_UNCHECKEDPRESSED,@DrwRect,nil)
            else
              if Hot then
                DrawThemeBackground(HTheme,Canvas.Handle, BP_CHECKBOX,CBS_CHECKEDHOT,@DrwRect,nil)
              else
                DrawThemeBackground(HTheme,Canvas.Handle, BP_CHECKBOX,CBS_CHECKEDNORMAL,@DrwRect,nil)
          end
          else
          begin
            if Down then
              DrawThemeBackground(HTheme,Canvas.Handle, BP_CHECKBOX,CBS_CHECKEDPRESSED,@DrwRect,nil)
            else
            if Hot then
              DrawThemeBackground(HTheme,Canvas.Handle, BP_CHECKBOX,CBS_UNCHECKEDHOT,@DrwRect,nil)
            else
              DrawThemeBackground(HTheme,Canvas.Handle, BP_CHECKBOX,CBS_UNCHECKEDNORMAL,@DrwRect,nil);
          end;

          CloseThemeData(HTheme);
        end
        else
        begin
          if Item.BoolValue then
            DrawFrameControl(Canvas.Handle, Rect(R.Left,R.Top ,R.Left + 14,R.Top + 14), DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_FLAT or DFCS_MONO or DFCS_CHECKED)
          else
            DrawFrameControl(Canvas.Handle, Rect(R.Left,R.Top ,R.Left + 14,R.Top + 14), DFC_BUTTON, DFCS_BUTTONCHECK or DFCS_FLAT or DFCS_MONO);
        end;
        R.Left := R.Left + 16;
      end;

      Canvas.Font.Color := Panel.EditFontColor;
      SetBKMode(Canvas.Handle, TRANSPARENT);

      DefDraw := True;

      if Item.PropertyType = ptCustom then
      begin
        if Assigned(FOnCustomEditDraw) then
        begin
          DefDraw := False;
          FOnCustomEditDraw(Self, Item, Canvas, R, DefDraw);
        end;
      end;

      if DefDraw then
      begin
        DTSTYLE := DTSTYLE and not DT_VCENTER;
        if Item.PropertyType = ptFont then
        begin
          Canvas.Font.Assign(Item.FontValue);
          DrawText(Canvas.Handle,PChar(Item.FontValue.Name),Length(Item.FontValue.Name),R,DTSTYLE or DT_END_ELLIPSIS);
        end
        else
          DrawText(Canvas.Handle,PChar(Item.TextValue),Length(Item.TextValue),R,DTSTYLE);
      end;

      if not Panel.Splitter.Empty then
      begin
        Ind := Width - Panel.Splitter.Width;
        if Ind < 0 then
          Ind := 0;
        Canvas.Draw(AR.Left + Ind,AR.Bottom - Panel.Splitter.Height,Panel.Splitter);
      end;
        
    end;
  end;
end;

procedure TInspectorBar.DrawButtonUp;
var
  r: TRect;
  HTheme: THandle;
  pt: TPoint;
  Hot: Boolean;
  y: Integer;
begin
  y := (TopPanel + 1) * PanelCaption.Height;
  r.Bottom := y + 18;
  r.Right := self.Width;
  r.Left := r.Right - 18;
  r.Top := y;
  if DoVisualStyles then
  begin
    HTheme := OpenThemeData(Handle,'scrollbar');

    GetCursorPos(pt);
    pt := ScreenToClient(pt);
    Hot := PtInRect(r,pt);

    if FMouseDown and Hot then
      DrawThemeBackground(HTheme,Canvas.Handle,SBP_ARROWBTN,ABS_UPPRESSED,@r,nil)
    else
    if Hot then
      DrawThemeBackground(HTheme,Canvas.Handle,SBP_ARROWBTN,ABS_UPHOT,@r,nil)
    else
      DrawThemeBackground(HTheme,Canvas.Handle,SBP_ARROWBTN,ABS_UPNORMAL,@r,nil);

    CloseThemeData(HTheme);
  end
  else
    DrawFrameControl(Canvas.Handle,r,DFC_SCROLL,DFCS_SCROLLUP);
end;

procedure TInspectorBar.DrawButtonDown;
var
  r: TRect;
  HTheme: THandle;
  pt: TPoint;
  Hot: Boolean;
  y: Integer;
begin

//  y := TopPanel * PanelCaption.Height;
//  y := Self.Height - y - ((FPanels.Count - FTopPanel - 1) * PanelCaption.Height);

  y := Self.Height - ((FPanels.Count - FTopPanel - 1) * PanelCaption.Height);

  r.Bottom := y;
  r.Right := self.Width;
  r.Left := r.Right - 18;
  r.Top := y - 18;

  if DoVisualStyles then
  begin
    HTheme := OpenThemeData(Handle,'scrollbar');

    GetCursorPos(pt);
    pt := ScreenToClient(pt);
    Hot := PtInRect(r,pt);

    if FMouseDown and Hot then
       DrawThemeBackground(HTheme,Canvas.Handle,SBP_ARROWBTN,ABS_DOWNPRESSED,@r,nil)
    else
    if Hot then
      DrawThemeBackground(HTheme,Canvas.Handle,SBP_ARROWBTN,ABS_DOWNHOT,@r,nil)
    else
      DrawThemeBackground(HTheme,Canvas.Handle,SBP_ARROWBTN,ABS_DOWNNORMAL,@r,nil);

    CloseThemeData(HTheme);
  end
  else
    DrawFrameControl(Canvas.Handle,r,DFC_SCROLL,DFCS_SCROLLDOWN);
end;

procedure TInspectorBar.SetMode(const Value: TInspectorBarMode);
var
  i:Integer;
begin
  if Value = imSinglePanelActive then
    FScrollBar.Visible := False
  else
  begin
    FLastOpen := 0;
    FFirstOpen := 0;
    if FPanels.Count > 0 then
      FPanels.Items[0].FIsOpen := True;
    for i := 1 to FPanels.Count - 1 do
      FPanels.Items[i].FIsOpen := False;
  end;
  FMode := Value;
  ArrangeOpenClose;
  Invalidate;
end;

procedure TInspectorBar.Scroll(Sender: TObject);
begin
  Invalidate;
  ArrangeControls;
end;

procedure TInspectorBar.ArrangeOpenClose;
var
  i,h: Integer;

begin
  FLastOpen := -1;
  FFirstOpen := -1;
  for i := 0 to FPanels.Count - 1 do
    if FPanels.Items[i].FIsOpen then
    begin
      if FFirstOpen = -1 then
        FFirstOpen := i;
      FLastopen := i;
    end;

  if Mode = imMultiPanelActive then
  begin
    FLastOpen := -1;


    h := 0;
    for i := 0 to FPanels.Count - 1 do
    begin
      h := h + PanelCaption.Height;
      if FPanels[i].Open then
        h := h + FPanels[i].Items.Count * FPanels[i].ItemHeight;
    end;

    if h > Height then
    begin
      FScrollBar.Max := h - Height;
      FScrollBar.LargeChange := 100;
      FscrollBar.Visible := True;
    end
    else
    begin
      FscrollBar.Visible := False;
    end;


  end;



  ArrangeControls;
end;

procedure TInspectorBar.ShadeChanged(Sender: TObject);
begin
  ShadeHeader;
  Invalidate;
end;

procedure TInspectorBar.Resize;
begin
  inherited;
  if FOldWidth <> Width then
    ShadeHeader;
  FOldWidth := Width;
  ArrangeControls;
end;

procedure TInspectorBar.ItemClicked(Button: TMouseButton; Panel: TInspectorPanel;
  Item: TInspectorItem);
var
  DefaultHandler: Boolean;
begin
  if Button = mbLeft then
  begin
    if Assigned(FOnItemClick) then
      FOnItemClick(Self,Panel,Item);

    if Item.URL <> '' then
    begin
      DefaultHandler := True;
      if Assigned(FOnURLClick) then
        FOnURLClick(Self,Item.URL,DefaultHandler);
      if DefaultHandler then
        ShellExecute(Handle,'open',PChar(Item.URL),nil,nil,SW_NORMAL);
    end;
  end;
  if Button = mbRight then
  begin
    if Assigned(FOnItemRightClick) then
      FOnItemRightClick(Self,Panel,Item);
  end;
end;

procedure TInspectorBar.MouseUp(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  FMouseDown := False;
  Invalidate;
end;

procedure TInspectorBar.InvalidateItem(Panel: TInspectorPanel;
  Item: TInspectorItem);
var
  r: TRect;
  ItemIndex: Integer;
begin
  if csLoading in ComponentState then
    Exit;

  if Mode = imSinglePanelActive then
  begin
    if Panel.Index = TopPanel then
    begin
      ItemIndex := Item.Index - Panel.TopItem;
      r := Rect(0,(ItemIndex * Panel.ItemHeight) + ((TopPanel + 1) * PanelCaption.Height),
                Width,((ItemIndex + 1) * Panel.ItemHeight) + ((TopPanel + 1) * PanelCaption.Height));
      InvalidateRect(Handle,@r,False);
    end;
  end                           else
  begin

  // EXTEND DONE
    if Panel.FIsOpen then
    begin
      //MULTIPANEL MODE
      r := GetItemRect(Panel,Item);
      InvalidateRect(Handle,@r,False);
    end;
  end;

end;

function TInspectorBar.GetItemRect(Panel: TInspectorPanel; Item: TInspectorItem): TRect;
var
  ItemIndex: Integer;
  j,i,RealWidth: Integer;
begin
  Result := Rect(0,0,0,0);
  if not Assigned(Panel) then
    Exit;
  if not Assigned(Item) then
    Exit;

  if Mode = imSinglePanelActive then
  begin
    ItemIndex := Item.Index - Panel.TopItem;

    Result := Rect(0,(ItemIndex * Panel.ItemHeight) + ((TopPanel + 1) * PanelCaption.Height),
      Width,((ItemIndex + 1) * Panel.ItemHeight) + ((TopPanel + 1) * PanelCaption.Height));
  end
  else
  begin
    // MULTIPANEL MODE
    if Panel.FIsOpen then
    begin
      j := -FscrollBar.Position;
      for i := 1 to FPanels.Count  do
      begin
        if Panel = FPanels.Items[i - 1] then
        begin
          Inc(j,PanelCaption.Height);  //Panel caption
          Inc(j,Item.Index * Panel.ItemHeight);

          RealWidth := InspectorWidth;
          
          if Panel.FItems.Count = 0 then
            Result := Rect(0,0,0,0)
          else
            Result := Rect(0,j,RealWidth,j + Panel.ItemHeight);
          Exit;
        end;
        if FPanels.Items[i-1].FIsOpen then
        begin
          //for open panel
          Inc(j,PanelCaption.Height);  //Panel caption
          Inc(j,FPanels.Items[i-1].ItemHeight*FPanels.Items[i-1].Items.Count);
          if i = FLastOpen+1 then
            j := Height - (FPanels.Count - FLastOpen - 1) * PanelCaption.Height;
        end
        else
          //for close panel
          Inc(j,PanelCaption.Height);
      end;
    end;
  end;
end;

procedure TInspectorBar.SetFlat(const Value: Boolean);
begin
  FFlat := Value;
  Invalidate;
end;

procedure TInspectorBar.StartEdit(InspectorItem: TInspectorItem);
var
  EditRect: TRect;
  sl: TStringList;
  i: Integer;
  EL: TInspectorEditLink;
  pt: TPoint;

begin
  if InspectorItem.FReadOnly then
    Exit;

  StopEdit(FEditItem);

  if Assigned(FOnEditStart) then
    FOnEditStart(Self,InspectorItem.InspectorPanel,InspectorItem);

  FEditItem := InspectorItem;
  EditRect := InspectorItem.InspectorBar.GetItemRect(InspectorItem.InspectorPanel,InspectorItem);
  InspectorItem.FEditing := True;

  if (FShowUP or FShowDown) and (FMode = imSinglePanelActive) then
    Dec(EditRect.Right,20);

  EditRect.Left := InspectorItem.InspectorPanel.CaptionWidth;
  InflateRect(EditRect, -2, -1);

  FMouseDown := False;

  FEditItem.EditStart;

  if InspectorItem.InspectorPanel.EditBox then
  begin
    InflateRect(EditRect, - 5, -2);
    OffsetRect(EditRect,0,1);
  end;

  FEditType := itNormal;

  case InspectorItem.PropertyType of
  ptCustom:
    begin
      if Assigned(InspectorItem.EditLink) then
      begin
        EL := InspectorItem.EditLink;
        EL.Inspector := Self;

        if EL.EditStyle = esPopup then
        begin
          EL.FPopupForm := TForm.Create(Application);
          pt := ClientToScreen(Point(EditRect.Left,EditRect.Bottom));
          EL.FPopupForm.OnDeactivate := EL.FormExit;
          EL.FPopupForm.Left := pt.x;
          EL.FPopupForm.Top := pt.y;
          EL.FPopupForm.Width := EL.FPopupWidth;
          EL.FPopupForm.Height := EL.FPopupHeight;
          EL.FPopupForm.BorderStyle := bsNone;
          EL.FPopupForm.Show;
          EL.CreateEditor(EL.FPopupForm);
        end
        else
          EL.CreateEditor(Self);

        EL.SetProperties(EditRect,InspectorItem);
        EL.StartEdit(InspectorItem);
        FEditing := True;
      end;
    end;
  ptBoolean:
    begin
      InspectorItem.EditChange;
      InspectorItem.BoolValue := not InspectorItem.BoolValue;
      FEditing := True;
      UpdateEdit;
      StopEdit(InspectorItem);
      if TabStop then
        SetFocus;
    end;
  ptIntSpin:
    begin
      FInspectorSpin.Visible := False;
      FInspectorSpin.Parent := Self;
      FInspectorSpin.Color := FPanels[TopPanel].EditColor;
      FInspectorSpin.Top := EditRect.Top;
      FInspectorSpin.Left := EditRect.Left;
      FInspectorSpin.Width := EditRect.Right - EditRect.Left - 1;
      FInspectorSpin.Height := EditRect.Bottom - EditRect.Top;
      FInspectorSpin.Text := InspectorItem.TextValue;
      FInspectorSpin.MinValue := InspectorItem.SpinMin;
      FInspectorSpin.MaxValue := InspectorItem.SpinMax;
      FInspectorSpin.InspectorItem := InspectorItem;
      InflateRect(EditRect,2,2);
      FInspectorSpin.Font.Assign(FPanels[TopPanel].Font);
      FInspectorSpin.Font.Color := FPanels[TopPanel].EditFontColor;
      FInspectorSpin.BorderStyle := bsNone;
      FInspectorSpin.OrigValue := InspectorItem.TextValue;
      FInspectorSpin.Visible := True;
      FInspectorSpin.SetFocus;
      FInspectorSpin.SelectAll;
      FEditing := True;
    end;
  ptInteger,ptFloat,ptText:
    begin
      FInspectorEdit.Visible := False;
      FInspectorEdit.Parent := Self;
      FInspectorEdit.Color := FPanels[TopPanel].EditColor;
      FInspectorEdit.Top := EditRect.Top;
      FInspectorEdit.Left := EditRect.Left;
      FInspectorEdit.Width := EditRect.Right - EditRect.Left;
      FInspectorEdit.Height := EditRect.Bottom - EditRect.Top;
      FInspectorEdit.Text := InspectorItem.TextValue;
      FInspectorEdit.InspectorItem := InspectorItem;
      InflateRect(EditRect,2,2);
      FInspectorEdit.Font.Assign(FPanels[TopPanel].Font);
      FInspectorEdit.Font.Color := FPanels[TopPanel].EditFontColor;

      case InspectorItem.PropertyType of
      ptInteger: FInspectorEdit.InspEditType := ieInteger;
      ptFloat: FInspectorEdit.InspEditType := ieFloat;
      ptText: FInspectorEdit.InspEditType := ieText;
      end;

      EditRect := Rect(2,1,FInspectorEdit.Width, FInspectorEdit.Height);
      SendMessage(FInspectorEdit.Handle,EM_SETRECT, 0,Longint(@EditRect));

      FInspectorEdit.EditMask := InspectorItem.EditMask;
      FInspectorEdit.OrigValue := InspectorItem.TextValue;
      FInspectorEdit.Visible := True;
      FInspectorEdit.SetFocus;
      FInspectorEdit.SelectAll;
      FEditing := True;
    end;
  ptTextButton,ptPropButton:
    begin
      FInspectorEditBtn.Visible := False;
      FInspectorEditBtn.Parent := Self;
      FInspectorEditBtn.Color := FPanels[TopPanel].EditColor;
      FInspectorEditBtn.Top := EditRect.Top;
      FInspectorEditBtn.Left := EditRect.Left;
      FInspectorEditBtn.Width := EditRect.Right - EditRect.Left;
      FInspectorEditBtn.Height := EditRect.Bottom - EditRect.Top;
      FInspectorEditBtn.Text := InspectorItem.TextValue;
      FInspectorEditBtn.InspectorItem := InspectorItem;
      InflateRect(EditRect,2,2);
      FInspectorEditBtn.Font.Assign(FPanels[TopPanel].Font);
      FInspectorEditBtn.Font.Color := FPanels[TopPanel].EditFontColor;
      FInspectorEditBtn.OrigValue := InspectorItem.TextValue;
      FInspectorEditBtn.EditorEnabled := (InspectorItem.PropertyType = ptTextButton);
      FInspectorEditBtn.Visible := True;
      FInspectorEditBtn.SetFocus;
      FInspectorEditBtn.SelectAll;
      FEditing := True;
      FEditType := itBtnEdit;
    end;
  ptFont:
    begin
      FInspectorEditBtn.Visible := False;
      FInspectorEditBtn.Parent := Self;
      FInspectorEditBtn.Color := FPanels[TopPanel].EditColor;
      FInspectorEditBtn.Top := EditRect.Top;
      FInspectorEditBtn.Left := EditRect.Left;
      FInspectorEditBtn.Width := EditRect.Right - EditRect.Left;
      FInspectorEditBtn.Height := EditRect.Bottom - EditRect.Top;
      FInspectorEditBtn.Text := InspectorItem.FontValue.Name;
      FInspectorEditBtn.InspectorItem := InspectorItem;
      InflateRect(EditRect,2,2);
      FInspectorEditBtn.Font.Assign(InspectorItem.FontValue);
      FInspectorEditBtn.OrigValue := InspectorItem.TextValue;
      FInspectorEditBtn.EditorEnabled := False;
      FInspectorEditBtn.Visible := True;
      FInspectorEditBtn.SetFocus;
      FInspectorEditBtn.SelectAll;
      FEditing := True;
      FEditType := itBtnEdit;
    end;
  ptValues:
    begin
      FInspectorCombo.Visible := False;
      FInspectorCombo.Parent := Self;
      FInspectorCombo.Color := FPanels[TopPanel].EditColor;
      FInspectorCombo.Top := EditRect.Top;
      FInspectorCombo.Left := EditRect.Left;
      FInspectorCombo.Width := EditRect.Right - EditRect.Left;
      FInspectorCombo.Height := EditRect.Bottom - EditRect.Top;
      FInspectorCombo.Text := InspectorItem.TextValue;
      FInspectorCombo.InspectorItem := InspectorItem;

      sl := TStringList.Create;
      sl.Assign(InspectorItem.Values);

      GetValueList(InspectorItem,sl);

      FInspectorCombo.Items.Assign(sl);
      FInspectorCombo.Font.Assign(FPanels[TopPanel].Font);
      FInspectorCombo.Font.Color := FPanels[TopPanel].EditFontColor;
      FInspectorCombo.BkColor := FPanels[TopPanel].EditColor;
      FInspectorCombo.OrigValue := InspectorItem.TextValue;
      FInspectorCombo.Visible := True;
      FInspectorCombo.SetFocus;
      FEditing := True;
      FEditType := itCombo;
    end;
  ptColor:
    begin
      FInspectorColorCombo.Visible := False;
      FInspectorColorCombo.Parent := Self;
      FInspectorColorCombo.Color := FPanels[TopPanel].EditColor;
      FInspectorColorCombo.Top := EditRect.Top;
      FInspectorColorCombo.Left := EditRect.Left;
      FInspectorColorCombo.Width := EditRect.Right - EditRect.Left;
      FInspectorColorCombo.Height := EditRect.Bottom - EditRect.Top;
      FInspectorColorCombo.Text := InspectorItem.TextValue;
      FInspectorColorCombo.InspectorItem := InspectorItem;

      FInspectorColorCombo.Items.Clear;
      for i := 1 to 41 do
        FInspectorColorCombo.Items.Add('');

      FInspectorColorCombo.Font.Assign(FPanels[TopPanel].Font);
      FInspectorColorCombo.Font.Color := FPanels[TopPanel].EditFontColor;
      FInspectorColorCombo.BkColor := FPanels[TopPanel].EditColor;
      FInspectorColorCombo.OrigValue := InspectorItem.ColorValue;
      FInspectorColorCombo.Visible := True;
      FInspectorColorCombo.ColorValue := InspectorItem.ColorValue;
      FInspectorColorCombo.SetFocus;
      FEditing := True;
      FEditType := itColorCombo;
    end;
  ptDate,ptTime:
    begin
      FInspectorDateTimePicker.Visible := False;
      FInspectorDateTimePicker.Parent := Self;
      FInspectorDateTimePicker.Color := FPanels[TopPanel].EditColor;
      FInspectorDateTimePicker.Top := EditRect.Top;
      FInspectorDateTimePicker.Left := EditRect.Left;
      FInspectorDateTimePicker.Width := EditRect.Right - EditRect.Left;
      FInspectorDateTimePicker.Height := EditRect.Bottom - EditRect.Top;

      if InspectorItem.PropertyType = ptDate then
      begin
        FInspectorDateTimePicker.Kind := dtkDate;
        if InspectorItem.TextValue <> '' then
          FInspectorDateTimePicker.Date := StrToDate(InspectorItem.TextValue);
      end
      else
      begin
        FInspectorDateTimePicker.Kind := dtkTime;
        if InspectorItem.TextValue <> '' then
          FInspectorDateTimePicker.Date := StrToTime(InspectorItem.TextValue);
      end;

      FInspectorDateTimePicker.InspectorItem := InspectorItem;

      FInspectorDateTimePicker.Font.Assign(FPanels[TopPanel].Font);
      FInspectorDateTimePicker.Font.Color := FPanels[TopPanel].EditFontColor;
      FInspectorDateTimePicker.OrigValue := InspectorItem.DateValue;
      FInspectorDateTimePicker.Visible := True;
      FInspectorDateTimePicker.SetFocus;
      FEditing := True;
      FEditType := itPicker;
    end;
  end;
end;

procedure TInspectorBar.UpdateEdit;
begin
  case FEditItem.PropertyType of
  ptIntSpin:
    begin
      FInspectorSpin.InspectorItem.IntValue := FInspectorSpin.Value;
      FInspectorSpin.SelectAll;
      FInspectorSpin.OrigValue := FInspectorSpin.Text;
    end;
  ptInteger,ptFloat,ptText:
    begin
      FInspectorEdit.InspectorItem.TextValue := FInspectorEdit.Text;
      FInspectorEdit.SelectAll;
      FInspectorEdit.OrigValue := FInspectorEdit.Text;
    end;
  ptValues:
    begin
      FInspectorCombo.InspectorItem.TextValue := FInspectorCombo.Text;
      FInspectorCombo.SelectAll;
      FInspectorCombo.OrigValue := FInspectorCombo.Text;
    end;
  ptTextButton:
    begin
      FInspectorEditBtn.InspectorItem.TextValue := FInspectorEditBtn.Text;
      FInspectorEditBtn.SelectAll;
      FInspectorEditBtn.OrigValue := FInspectorEditBtn.Text;
    end;
  ptDate:
    begin
      FInspectorDateTimePicker.InspectorItem.DateValue := FInspectorDateTimePicker.Date;
      FInspectorEditBtn.OrigValue := DateToStr(FInspectorDateTimePicker.Date);
    end;
  ptTime:
    begin
      FInspectorDateTimePicker.InspectorItem.TimeValue := FInspectorDateTimePicker.Time;
      FInspectorEditBtn.OrigValue := TimeToStr(FInspectorDateTimePicker.Time);
    end;
  ptColor:
    begin
      FInspectorColorCombo.InspectorItem.ColorValue := FInspectorColorCombo.ColorValue;
      FInspectorColorCombo.OrigValue := FInspectorColorCombo.ColorValue;
    end;
  ptFont:
    begin

    end;
  end;

  if Assigned(FOnEditUpdate) then
    FOnEditUpdate(Self,FEditItem.InspectorPanel,FEditItem);
end;

procedure TInspectorBar.StopEdit(InspectorItem: TInspectorItem);
begin
  if not FEditing then
    Exit;

  UpdateEdit;

  InspectorItem.FEditing := False;

  FEditing := False;

  case InspectorItem.PropertyType of
  ptCustom:
    begin
      InspectorItem.EditLink.StopEdit(InspectorItem);
    end;
  ptIntSpin:
    FInspectorSpin.Hide;
  ptInteger,ptFloat,ptText:
    FInspectorEdit.Hide;
  ptValues:
    FInspectorCombo.Hide;
  ptTextButton,ptFont,ptPropButton:
    FInspectorEditBtn.Hide;
  ptDate,ptTime:
    FInspectorDateTimePicker.Hide;
  ptColor:
    FInspectorColorCombo.Hide;
  end;

  if Assigned(FOnEditStop) then
    FOnEditStop(Self,InspectorItem.InspectorPanel,InspectorItem);

  InspectorItem.EditStop;
end;

procedure TInspectorBar.Notification(AComponent: TComponent;
  AOperation: TOperation);
var
  i: Integer;
begin
  inherited;
  if (AOperation = opRemove) and (AComponent = FImages) then
  begin
    FImages := nil;
    Invalidate;
  end;

  if (AOperation = opRemove) and Assigned(FPanels) then
    for i := 1 to Panels.Count do
    begin
      if Panels[i -1].Control = AComponent then
        Panels[i - 1].Control := nil;
    end;
end;

procedure TInspectorBar.CMHintShow(var Msg: TMessage);
var
  pt: TPoint;
begin
  GetCursorPos(pt);
  pt := ScreenToClient(pt);
  if MSg.LParam <>0 then   //Set the Hint String if available
    THintInfo(ptr(MSg.LParam)^).HintStr := GetCursorHint(pt); // exactly like in VCL code
end;

function TInspectorBar.GetAlignEx: TAlign;
begin
  Result := inherited Align;
end;

procedure TInspectorBar.SetAlignEx(const Value: TAlign);
begin
  inherited Align := Value;
end;

procedure TInspectorBar.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (ssAlt in Shift) then SearchShortcutCaption(key);

  if Assigned(FEditItem) then
  begin
    if FEditItem.PropertyType = ptBoolean then
    begin
      if Key = VK_SPACE then
        FEditItem.BoolValue := not FEditItem.BoolValue;

      if Key in [VK_UP,VK_DOWN,VK_RETURN] then
        NextEdit(FEditItem,Key);

    end;
  end;

end;

procedure TInspectorBar.SearchShortcutCaption(key: word);
var
  i,j: Integer;
  ch: Char;
  ss: string;
begin
  ch := UpCase(chr(key));

  //----- Open or close Panels----
  // Dual MODE -----
  for i := 1 to FPanels.Count do
  begin
    //-- Open / Close Panel by shortcut
    ss := UpperCase(FPanels.Items[i-1].FCaption);
    if (AnsiPos('&'+ch,ss) <> 0) then
    begin
      if Fmode = imMultiPanelActive then
      begin
        if (i-1 = FLastOpen) and  (i-1 = FFirstOpen) then Break;
        if FPanels.Items[i-1].FItems.Count = 0 then
          Break;
        FPanels.Items[i-1].FIsOpen := not (FPanels.Items[i-1].FIsOpen); //open<->close
        if (FPanels.Items[i-1].FIsOpen) then
          PanelOpened(FPanels.Items[i-1])
        else
          PanelClosed(FPanels.Items[i-1]);
        ArrangeOpenClose;
        Break;
      end
      else
      begin
        if (TopPanel <> i - 1) then
        begin
          PanelOpened(FPanels.Items[i-1]);
          PanelClosed(FPanels.Items[TopPanel]);
          TopPanel := i-1;
        end;
        Break;
      end;
    end;

    //-------- Items--------
    if not FPanels.Items[i-1].FIsOpen then
      Continue;
    j := 0;
    while j < FPanels.Items[i-1].FItems.Count do
    begin
      ss := FPanels.Items[i-1].FItems.Items[j].FCaption;
      if (AnsiPos('&'+ch,ss) <> 0) then
      begin
        ItemClicked(mbLeft,FPanels.Items[i-1],FPanels.Items[i-1].FItems.Items[j]);
        Break;
      end;
      inc(j);
    end;

    if j < FPanels.Items[i-1].FItems.Count-1 then
      Break;
  end;
end;

function TInspectorBar.GetHintSingle(x, y: Integer):string;
var
  i,j,k: Integer;
begin
  Result := '';

  for i := 0 to FPanels.Count - 1 do
  begin
    if i <= FTopPanel then
      j := i * PanelCaption.Height
    else
      j := Height - ((FPanels.Count - i) * PanelCaption.Height);

    if (y >= j) and (y <= j + PanelCaption.Height) then
    begin
      if not HintCaptionOptions(FPanels.Items[i],x,y,Result) then
        Result := FPanels.Items[i].FHint;
      Break;
    end;
  end;

  j := (FTopPanel + 1) * PanelCaption.Height; //Click Up
  i := Height - ((FPanels.Count -1- FTopPanel) * PanelCaption.Height); //Click Down

  if ( y > j) and (y < i) and (x > 0) and (x < Width) then
  begin
    k := FPanels[FTopPanel].TopItem + ((y - j) div FPanels[FTopPanel].ItemHeight);
    if k < FPanels[FTopPanel].Items.Count then
      Result := FPanels[FTopPanel].Items[k].FHint;
  end;
end;

//------------   Cursor   -------------
function TInspectorBar.GetCursorSingle(x, y: integer):boolean;
begin
  Result := (y < (FTopPanel + 1) * PanelCaption.Height)
    or (y > Height - (FPanels.Count - FTopPanel - 1) * PanelCaption.Height);
end;

function TInspectorBar.GetCursorMulti(x, y: integer):boolean;
var
  i,j: Integer;
begin
  Result := False;
  j := -FscrollBar.Position;
  for i := 0 to FPanels.Count - 1 do
  begin
    if (y >= j) and (y <= j + PanelCaption.Height) then
    begin
      result:=true;
      exit;
    end;
    if FPanels.Items[i].FIsOpen then       //for open panel
    begin
      inc(j,PanelCaption.Height);  //Panel caption
      //Items
      if (y >= j) and (y <= j + FPanels.Items[i].ItemHeight*FPanels.Items[i].Items.Count) then
       exit;
      inc(j,FPanels.Items[i].ItemHeight*FPanels.Items[i].Items.Count);

      if i = FLastOpen then
        j := Height-(FPanels.Count - FLastOpen - 1)*PanelCaption.Height;
    end
    else   inc(j,PanelCaption.Height);       //for close panel
  end;
end;

function TInspectorBar.GetHintMulti(x, y: integer): string;
var
  i,j,k:Integer;
begin
  Result := '';
  j := -FscrollBar.Position;
  for i := 0 to FPanels.Count - 1 do
  begin
    if (y >= j) and (y <= j + PanelCaption.Height) then
    begin
      if not HintCaptionOptions(FPanels.Items[i],x,y,Result) then
        Result := FPanels.Items[i].FHint;
      Break;
    end;
    // compute absolutete coordinates from local coordinates
    if FPanels.Items[i].FIsOpen then
    begin
      //for open panel
      inc(j,PanelCaption.Height);  //Panel caption
      //Items
      for k := 1 to FPanels.Items[i].Items.Count do
      begin
        if (y >= j) and (y <= j + FPanels.Items[i].ItemHeight) then
        begin
          Result := FPanels.Items[i].Items[k-1].FHint;
          Exit;
        end;
        inc(j,FPanels.Items[i].ItemHeight);
      end;

      if i = FLastOpen then
      begin
        j := Height-(FPanels.Count - FLastOpen - 1)*PanelCaption.Height;
      end;
    end
    else
    begin
      //for close panel
      inc(j,PanelCaption.Height);
    end
  end;
end;

function TInspectorBar.GetHint(x, y: integer): string;
begin
  if FMode = imSinglePanelActive then
    Result := GetHintSingle(x,y)
  else
    Result := GetHintMulti(x,y);
end;

function TInspectorBar.GetCursorHint(P: TPoint): string;
var
  s: string;
begin
  s := GetHint(p.x,p.y);
  if s <> '' then
    Result := s
  else
    Result := Hint;
end;

procedure TInspectorBar.PanelClosed(Panel: TInspectorPanel);
begin
  if Assigned(FOnPanelClose) then
    FOnPanelClose(Self,Panel);
end;

procedure TInspectorBar.PanelOpened(Panel: TInspectorPanel);
begin
  if Assigned(FOnPanelOpen) then
    FOnPanelOpen(Self,Panel);
end;

procedure TInspectorBar.NextEdit(InspectorItem: TInspectorItem;
  NextKey: Word);
var
  NxtItem: TInspectorItem;  
begin
  if not AutoAdvance and (NextKey = VK_RETURN) then
  begin
    UpdateEdit;
    Exit;
  end;

  if NextKey in [VK_RETURN,VK_DOWN] then
  begin
    if InspectorItem.Index + 1 < InspectorItem.Collection.Count then
    begin
      StopEdit(FEditItem);

      NxtItem := TInspectorItem(InspectorItem.Collection.Items[InspectorItem.Index + 1]);

      if Assigned(NxtItem) then
        if NxtItem.PropertyType = ptBoolean then
          NxtItem.BoolValue := not NxtItem.BoolValue;
      StartEdit(NxtItem);
    end;
  end
  else
  begin
    if InspectorItem.Index > 0 then
    begin
      StopEdit(FEditItem);

      NxtItem := TInspectorItem(InspectorItem.Collection.Items[InspectorItem.Index - 1]);

      if Assigned(NxtItem) then
        if NxtItem.PropertyType = ptBoolean then
          NxtItem.BoolValue := not NxtItem.BoolValue;
      StartEdit(NxtItem);
    end;
  end;
end;

procedure TInspectorBar.EditDblClick(Sender: TObject);
begin
  if Assigned(FOnEditDblClick) then
  begin
    StopEdit(FEditItem);
    FOnEditDblClick(Sender,FEditItem.InspectorPanel,FEditItem);
    StartEdit(FEditItem);
  end;
end;

procedure TInspectorBar.EditBtnClick(Sender: TObject);
var
  FD: TFontDialog;
begin
  FMouseDown := False;

  if FEditItem.PropertyType = ptFont then
  begin
    FD := TFontDialog.Create(Self);
    FD.Font.Assign(FEditItem.FontValue);
    if FD.Execute then
    begin
      FEditItem.FontValue.Assign(FD.Font);
      FInspectorEditBtn.Text := FD.Font.Name;
    end;
    StopEdit(FEditItem);
    Exit;
  end;

  if Assigned(FOnEditBtnClick) then
  begin
    StopEdit(FEditItem);
    FOnEditBtnClick(Sender,FEditItem.InspectorPanel,FEditItem);
    StartEdit(FEditItem);
  end;
end;

function TInspectorBar.GetCaption(x, y: Integer): TInspectorPanel;
var
  i,j: Integer;
begin
  Result := nil;
  if fMode=imSinglePanelActive then
  begin
  for i := 0 to FPanels.Count - 1 do
  begin
    if i <= FTopPanel then
      j := i * PanelCaption.Height
    else
      j := Height - ((FPanels.Count - i) * PanelCaption.Height);

    if (y >= j) and (y <= j + PanelCaption.Height) then
    begin
      Result := FPanels.Items[i];
      Break;
    end;
  end;
  end
  else
  begin
  j := -FscrollBar.Position;
  for i := 0 to FPanels.Count - 1 do
  begin
    if (y >= j) and (y <= j + PanelCaption.Height) then
    begin
      result:=FPanels.Items[i];
      exit;
    end;
    if FPanels.Items[i].FIsOpen then  
    begin
      inc(j,PanelCaption.Height);
      if (y >= j) and (y <= j + FPanels.Items[i].ItemHeight*FPanels.Items[i].Items.Count) then
       exit;
      inc(j,FPanels.Items[i].ItemHeight*FPanels.Items[i].Items.Count);
      if i = FLastOpen then
        j := Height-(FPanels.Count - FLastOpen - 1)*PanelCaption.Height;
    end
    else
      inc(j,PanelCaption.Height);
   end;
  end;
end;

function TInspectorBar.GetPanel(x, y: Integer): TInspectorPanel;
var
  i,j,k : Integer;
begin
  Result := nil;
  if FMode = imSinglePanelActive then
  begin
    Result := FPanels[FTopPanel];
  end
  else
  begin
    j := -FscrollBar.Position;
    for i := 0 to FPanels.Count - 1 do
    begin
    if FPanels.Items[i].FIsOpen then
    begin
      //for open panel
      Inc(j,PanelCaption.Height);  //Panel caption
      //Items
      for k := 1 to FPanels.Items[i].Items.Count do
      begin
        if (y > j) and (y < j + FPanels.Items[i].ItemHeight) then
        begin
          Result := FPanels.Items[i];
          Exit;
        end;
        Inc(j,FPanels.Items[i].ItemHeight);
      end;
      if i = FLastOpen then
      begin
        j := Height - (FPanels.Count - FLastOpen - 1)*PanelCaption.Height;
      end;
    end
    else
    begin
      //for closed panel
      inc(j,PanelCaption.Height);
    end
  end;
  end;
end;


function TInspectorBar.GetItem(x, y: Integer): TInspectorItem;
var
  i,j,k : Integer;
begin
  Result := nil;
  if FMode = imSinglePanelActive then
  begin
    j := (FTopPanel + 1) * PanelCaption.Height;
    i := Height - ((FPanels.Count -1- FTopPanel) * PanelCaption.Height);
    if ( y > j) and (y < i) and (x > 0) and (x < Width) then
    begin
      k := FPanels[FTopPanel].TopItem + ((y - j) div FPanels[FTopPanel].ItemHeight);
      if k < FPanels[FTopPanel].Items.Count then
        Result := FPanels[FTopPanel].Items[k];
    end;
  end
  else
  begin
   //Multi Panel
    j := -FScrollBar.Position;
    for i := 0 to FPanels.Count - 1 do
    begin
    if FPanels.Items[i].FIsOpen then
    begin
      //for open panel
      Inc(j,PanelCaption.Height);  //Panel caption
      //Items
      for k := 1 to FPanels.Items[i].Items.Count do
      begin
        if (y > j) and (y < j + FPanels.Items[i].ItemHeight) then
        begin
          Result := FPanels.Items[i].Items[k - 1];
          Exit;
        end;
        Inc(j,FPanels.Items[i].ItemHeight);
      end;
      if i = FLastOpen then
      begin
        j := Height - (FPanels.Count - FLastOpen - 1)*PanelCaption.Height;
      end;
    end
    else
    begin
      //for close panel
      inc(j,PanelCaption.Height);
    end
  end;
  end;
end;

function TInspectorBar.GetPanelItemAtXY(x, y: Integer;
  var Panel: TInspectorPanel; var Item: TInspectorItem): Boolean;
begin
  Item := GetItem(x,y);
  if Assigned(Item) then
    Panel := Item.InspectorPanel
  else
    Panel := nil;

  Result := Assigned(Item);
end;

function TInspectorBar.IsPanelItemAtXY(x, y: Integer): Boolean;
var
  Item: TInspectorItem;
begin
  Item := GetItem(x,y);
  Result := Assigned(Item);
end;

function TInspectorBar.GetPanelAtXY(x, y: Integer; var Panel: TInspectorPanel): Boolean;
begin
  Panel := GetPanel(x,y);
  Result := Assigned(Panel);
end;

function TInspectorBar.GetCaptionRect(Panel: TInspectorPanel): TRect;
var
  i,j: Integer;
begin
  if Mode = imSinglePanelActive then
  begin
    if Panel.Index <= FTopPanel then
      j := Panel.Index * PanelCaption.Height
    else
      j := Height - ((FPanels.Count - Panel.Index) * PanelCaption.Height);

    Result := Rect(0,j,Width,j + PanelCaption.Height);
  end
  else
  begin
    j := -FScrollBar.Position;
    for i := 0 to FPanels.Count - 1 do
    begin
      if FPanels[i] = Panel then
      begin
        Result := Rect(0,j,Width,j + PanelCaption.Height);
      end
      else
      begin
        Inc(j,PanelCaption.Height);
        if FPanels.Items[i].FIsOpen then
        begin
          Inc(j,FPanels[i].Items.Count * FPanels.Items[i].ItemHeight);
        end
      end;
    end;
  end;
end;

procedure TInspectorBar.CMMouseLeave(var Message: TMessage);
var
  r: TRect;
begin
  inherited;
  if FMousePanel <> -1 then
  begin
    r := GetCaptionRect(Panels[FMousePanel]);
    InvalidateRect(Handle,@r,False);
    FMousePanel := -1;
  end;
  if Assigned(FMouseItem) then
  begin
    r := GetItemRect(FMouseItem.InspectorPanel,FMouseItem);
    InvalidateRect(Handle,@r,False);
  end;

end;

procedure TInspectorBar.EditChanged(Sender: TObject);
begin
  FEditItem.EditChange;
end;

procedure TInspectorBar.GetValueList(InspectorItem: TInspectorItem;
  Values: TStringList);
begin
  if Assigned(FOnGetValueList) then
    FOnGetValueList(Self,InspectorItem,Values);
end;

procedure TInspectorBar.SetAcceptFiles(const Value: Boolean);
begin
  FAcceptFiles := Value;
  DragAcceptFiles(Self.Handle,Value);
end;

procedure TInspectorBar.WMDropFiles(var Message: TMessage);
var
  Pos: TPoint;
  Files: TStringList;
  FileCount,Len,i: Integer;
  FileName: array[0..255] of Char;
  DefaultHandler: Boolean;
begin
  DragQueryPoint(Message.wParam, Pos);
  Files := TStringList.Create;
  try
    FileCount := DragQueryFile(Message.wParam, UINT(-1), nil, 0);
    for i := 0 to FileCount - 1 do
    begin
      Len := DragQueryFile(Message.wParam, I, FileName, 255);
      if Len > 0 then
      begin
        Files.Add(StrPas(FileName));

        DefaultHandler := True;
        if Assigned(FOnFileDrop) then
          FOnFileDrop(Self,StrPas(FileName),DefaultHandler);
        if DefaultHandler then
        begin
          with Panels[FTopPanel].Items.Add do
          begin
            URL := StrPas(FileName);
            AutoIcon := True;
            Caption := URL;
          end;
        end;
      end;
    end;
  finally
    Files.Free;
  end;
end;

procedure TInspectorBar.ComboChanged(Sender: TObject);
var
  CD: TColorDialog;
begin
  if FInspectorColorCombo.ItemIndex = 40 then
  begin

    CD := TColorDialog.Create(Self);
    CD.Color := FEditItem.ColorValue;

    if CD.Execute then
    begin
      FEditItem.ColorValue := CD.Color;
      FInspectorColorCombo.ColorValue := CD.Color;
    end;
    CD.Free;

    StopEdit(FEditItem);
  end;
end;

procedure TInspectorBar.DrawCaptionOptions(Panel: TInspectorPanel; Canvas: TCanvas;
  var R: TRect);
begin
  // implementation left for inherited components
end;

function TInspectorBar.MouseDownCaptionOptions(Panel: TInspectorPanel; x,
  y: Integer): Boolean;
begin
  Result := False;
end;

function TInspectorBar.MouseMoveCaptionOptions(Panel: TInspectorPanel; x,
  y: Integer): Boolean;
begin
  Result := False;
end;


function TInspectorBar.InspectorWidth: Integer;
begin
  if FScrollBar.Visible then
    Result := Width - FScrollBar.Width
  else
    Result := Width;

  if (FShowUP or FShowDown) and (FMode = imSinglePanelActive) then
    Dec(Result,20);
end;

function TInspectorBar.IsMouseDown: Boolean;
begin
  Result := FMouseDown;
end;

function TInspectorBar.HintCaptionOptions(Panel: TInspectorPanel; x,
  y: Integer; var Hint: string): Boolean;
begin
  Result := False;
end;

function TInspectorBar.DoVisualStyles: Boolean;
begin
  if FIsWinXP then
    Result := IsThemeActive
  else
    Result := False;
end;

function TInspectorBar.GetVersionString: string;
begin
  Result := '1.01, January 2002';
end;

procedure TInspectorBar.SetOleDropTarget(const Value: Boolean);
begin
  FOleDropTarget := Value;
  if not (csDesigning in ComponentState) then
  begin
    if FOleDropTarget then
    begin
      FInspectorDropTarget := TInspectorBarDropTarget.Create(Self);
      FOleDropTargetAssigned := RegisterDragDrop(Handle, FInspectorDropTarget) = s_OK;
    end
    else
      if FOleDropTargetAssigned then RevokeDragDrop(Handle);
  end;
end;

procedure TInspectorBar.AlignControls(AControl: TControl; var Rect: TRect);
begin
  inherited;

  if (csDesigning in ComponentState) and not (csDestroying in ComponentState) then
    ArrangeControls;
end;

procedure TInspectorBar.CMControlChange(var Message: TMessage);
begin
  {$IFDEF TMSDEBUG}
  if (csDesigning in COmponentState) and not (csLoading in ComponentSTate) then
  begin
    if Boolean(Message.LParam) then
      ShowMessage('control added : ' + TWinControl(Message.WParam).Name + ' at (' + IntToStr(TWinControl(Message.WParam).Left)+':'+
      IntToStr(TWinControl(Message.WParam).Top)+')')
    else
      ShowMessage('control removed : ' + TWinControl(Message.WParam).Name);

    ShowMessage(inttostr(controlcount));
  end;
  {$ENDIF}
end;

procedure TInspectorBar.ArrangeControls;
var
  i: Integer;
  r: TRect;
  sw: Integer;
begin
  if Mode = imSinglePanelActive then
  begin
    for i := 1 to Panels.Count do
    begin
      if i - 1 = FTopPanel then
      begin
        if Assigned(Panels[i - 1].Control) then
        begin
          Panels[i - 1].Control.Left := 0;
          Panels[i - 1].Control.Width := Width;
          Panels[i - 1].Control.Top := (FTopPanel + 1) * PanelCaption.Height;
          Panels[i - 1].Control.Height := Height - Panels.Count * PanelCaption.Height;
          Panels[i - 1].Control.Visible := True;
        end;
      end
      else
      begin
        if Assigned(Panels[i - 1].Control) then
        begin
          Panels[i - 1].Control.Width := 0;
          Panels[i - 1].Control.Height := 0;
          Panels[i - 1].Control.Visible := False;
        end;
      end;
    end;
  end
  else
  begin
    if FScrollBar.Visible then
      sw := Width - FScrollBar.Width
    else
      sw := Width;

    for i := 1 to Panels.Count do
    begin
      if Assigned(Panels[i - 1].Control) then
      begin
        if Panels[i - 1].Open then
        begin
          R := GetCaptionRect(Panels[i - 1]);
          Panels[i - 1].Control.Left := 0;
          Panels[i - 1].Control.Width := sw;
          Panels[i - 1].Control.Height := Panels[i - 1].Items.Count * Panels[i - 1].ItemHeight;
          Panels[i - 1].Control.Top := R.Bottom;
          Panels[i - 1].Control.Visible := True;
        end
        else
        begin
          Panels[i - 1].Control.Width := 0;
          Panels[i - 1].Control.Height := 0;
          Panels[i - 1].Control.Visible := False;
        end;
      end;
    end;
  end;
end;

procedure TInspectorBar.HidePopup;
begin
  PostMessage(Handle,WM_SETFOCUS,0, 0);
end;

procedure TInspectorBar.CMWantSpecialKey(var Msg: TCMWantSpecialKey);
begin
  inherited;
  if Msg.CharCode in [VK_UP,VK_DOWN] then
    Msg.Result := 1;
end;

{ TInspectorCaption }

procedure TInspectorCaption.Changed;
begin
  if Assigned(FOnChange) then
    FOnChange(Self);
end;

constructor TInspectorCaption.Create;
begin
  inherited;
  FHeight := 20;
  FShadeType := stNORMAL;
  FShadeLight := 255;
  FShadeGrain := 32;
  FColor := clBtnFace;
  FActiveFont := TFont.Create;
  FFont := TFont.Create;
  FActiveFont.OnChange := FontChanged;
  FFont.OnChange := FontChanged;
  FGlyphOpen := TBitmap.Create;
  FGlyphClose := TBitmap.Create;
  FCursor := crDefault;
  FBarCursor := crDefault;
  FBackground := TBitmap.Create;
  FActiveBackground := TBitmap.Create;
end;

destructor TInspectorCaption.Destroy;
begin
  FBackground.Free;
  FActiveBackground.Free;
  FActiveFont.Free;
  FFont.Free;
  FGlyphOpen.Free;
  FGlyphClose.Free;
  inherited;
end;

procedure TInspectorCaption.FontChanged(Sender: TObject);
begin
  Changed;
end;

procedure TInspectorCaption.SetActiveBackground(const Value: TBitmap);
begin
  FActiveBackground.Assign(Value);
  Changed;
end;

procedure TInspectorCaption.SetActiveFont(const Value: TFont);
begin
  FActiveFont.Assign(Value);
  Changed;
end;

procedure TInspectorCaption.SetAlignment(const Value: TAlignment);
begin
  FAlignment := Value;
  Changed;
end;

procedure TInspectorCaption.SetBackground(const Value: TBitmap);
begin
  FBackground.Assign(Value);
  Changed;
end;

procedure TInspectorCaption.SetColor(const Value: TColor);
begin
  FColor := Value;
  ShadeChanged;
end;

procedure TInspectorCaption.SetCursor(const Value: TCursor);
begin
  FCursor := Value;
end;

procedure TInspectorCaption.SetFlat(const Value: Boolean);
begin
  FFlat := Value;
  Changed;
end;

procedure TInspectorCaption.SetFont(const Value: TFont);
begin
  FFont.Assign(Value);
  Changed;
end;

procedure TInspectorCaption.SetGlyphClose(const Value: TBitmap);
begin
  FGlyphClose.Assign(Value);
  Changed;
end;

procedure TInspectorCaption.SetGlyphOpen(const Value: TBitmap);
begin
  FGlyphOpen.Assign(Value);
  Changed;
end;

procedure TInspectorCaption.SetHeight(const Value: Integer);
begin
  FHeight := Value;
  ShadeChanged;
  Changed;
end;

procedure TInspectorCaption.SetIndent(const Value: Integer);
begin
  FIndent := Value;
  Changed;
end;

procedure TInspectorCaption.SetOpenCloseGraphic(
  const Value: TOpenCloseGraphic);
begin
  FOpenCloseGraphic := Value;
  Changed;
end;

procedure TInspectorCaption.SetOpenClosePosition(
  const Value: TOpenClosePosition);
begin
  FOpenClosePosition := Value;
  Changed;  
end;

procedure TInspectorCaption.SetShadeGrain(const Value: Byte);
begin
  FShadeGrain := Value;
  ShadeChanged;
end;

procedure TInspectorCaption.SetShadeLight(const Value: Byte);
begin
  if Value < 200 then
    FShadeLight := 200
  else
    FShadeLight := Value;
  ShadeChanged;
end;

procedure TInspectorCaption.SetShadeType(const Value: TShadeType);
begin
  FShadeType := Value;
  ShadeChanged;
end;

procedure TInspectorCaption.SetShape(const Value: TCaptionShape);
begin
  FShape := Value;
  Changed;
end;

procedure TInspectorCaption.SetVAlignment(const Value: TVAlignment);
begin
  FVAlignment := Value;
  Changed;
end;

procedure TInspectorCaption.ShadeChanged;
begin
  if Assigned(FOnShadeChange) then
    FOnShadeChange(Self);
end;


{ TInspectorEdit }

constructor TInspectorEdit.Create(AOwner: TComponent);
begin
  inherited;
  BorderStyle := bsNone;
end;

procedure TInspectorEdit.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.Style := Params.Style or ES_MULTILINE;
end;

procedure TInspectorEdit.DoExit;
begin
  inherited;
  (Parent as TInspectorBar).StopEdit(FInspectorItem);
end;

procedure TInspectorEdit.KeyDown(var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_DOWN,VK_UP] then
  begin
    FInspectorItem.InspectorBar.NextEdit(FInspectorItem,Key);
    Key := 0;
  end;
  inherited;
end;

procedure TInspectorEdit.KeyPress(var Key: Char);
begin
  if  Key = #13 then
  begin
    Key := #0;
    FInspectorItem.InspectorBar.NextEdit(FInspectorItem,VK_RETURN);
  end;
  if  Key = #27 then
  begin
    Key := #0;
    Text := FOrigValue;
    SelectAll;
  end;

  if InspEditType = ieInteger then
  begin
    if not (Key in ['0'..'9','-',#8]) then
      Key := #0;
  end;

  if InspEditType = ieFloat then
  begin
    if not (Key in ['0'..'9','-',DecimalSeparator,#8]) then
      Key := #0;

    if (Key = DecimalSeparator) and (Pos(DecimalSeparator,Text) > 0) then
      Key := #0;
  end;


  inherited;
end;

{ TInspectorCombo }

constructor TInspectorCombo.Create(AOwner: TComponent);
begin
  inherited;
  Flat := True;
end;

procedure TInspectorCombo.DoExit;
begin
  inherited;
  (Parent as TInspectorBar).StopEdit(FInspectorItem);
end;

procedure TInspectorCombo.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited;
end;

procedure TInspectorCombo.KeyPress(var Key: Char);
begin
  if  Key = #13 then
  begin
    Key := #0;
    FInspectorItem.InspectorBar.NextEdit(FInspectorItem,VK_RETURN);
  end;
  if  Key = #27 then
  begin
    Key := #0;
    Text := FOrigValue;
    SelectAll;
  end;
  inherited;
end;

{ TInspectorColorCombo }

constructor TInspectorColorCombo.Create(AOwner: TComponent);
begin
  inherited;
  Flat := True;
end;

procedure TInspectorColorCombo.DoExit;
begin
  inherited;
  (Parent as TInspectorBar).StopEdit(FInspectorItem);
end;

procedure TInspectorColorCombo.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited;
end;

procedure TInspectorColorCombo.KeyPress(var Key: Char);
begin
  if  Key = #13 then
  begin
    Key := #0;
    FInspectorItem.InspectorBar.NextEdit(FInspectorItem,VK_RETURN);
  end;
  if  Key = #27 then
  begin
    Key := #0;
    ColorValue := FOrigValue;
    SelectAll;
  end;
  inherited;
end;


{ TInspectorSpin }

constructor TInspectorSpin.Create(AOwner: TComponent);
begin
  inherited;
end;

procedure TInspectorSpin.CreateParams(var Params: TCreateParams);
begin
  inherited;
end;

procedure TInspectorSpin.DoExit;
begin
  inherited;
  (Parent as TInspectorBar).StopEdit(FInspectorItem);
end;

procedure TInspectorSpin.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited;
end;

procedure TInspectorSpin.KeyPress(var Key: Char);
begin
  if  Key = #13 then
  begin
    Key := #0;
    FInspectorItem.InspectorBar.NextEdit(FInspectorItem,VK_RETURN);
  end;
  if  Key = #27 then
  begin
    Key := #0;
    Text := FOrigValue;
    SelectAll;
  end;
  inherited;
end;

{ TInspectorEditBtn }

constructor TInspectorEditBtn.Create(AOwner: TComponent);
begin
  inherited;
  BorderStyle := bsNone;
end;

procedure TInspectorEditBtn.CreateParams(var Params: TCreateParams);
begin
  inherited;
end;

procedure TInspectorEditBtn.DoExit;
begin
  inherited;
  (Parent as TInspectorBar).StopEdit(FInspectorItem);
end;

procedure TInspectorEditBtn.KeyDown(var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_DOWN,VK_UP] then
  begin
    FInspectorItem.InspectorBar.NextEdit(FInspectorItem,Key);
    Key := 0;
  end;
  inherited;
end;

procedure TInspectorEditBtn.KeyPress(var Key: Char);
begin
  if  Key = #13 then
  begin
    Key := #0;
    FInspectorItem.InspectorBar.NextEdit(FInspectorItem,VK_RETURN);
  end;
  if  Key = #27 then
  begin
    Key := #0;
    Text := FOrigValue;
    SelectAll;
  end;
  inherited;

end;

{ TInspectorDateTimePicker }

constructor TInspectorDateTimePicker.Create(AOwner: TComponent);
begin
  inherited;

end;

procedure TInspectorDateTimePicker.CreateParams(var Params: TCreateParams);
begin
  inherited;
end;

procedure TInspectorDateTimePicker.DoExit;
begin
  inherited;
  (Parent as TInspectorBar).StopEdit(FInspectorItem);
end;

procedure TInspectorDateTimePicker.KeyDown(var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key in [VK_DOWN,VK_UP] then
  begin
    FInspectorItem.InspectorBar.NextEdit(FInspectorItem,Key);
    Key := 0;
  end;
  inherited;
end;

procedure TInspectorDateTimePicker.KeyPress(var Key: Char);
begin
  inherited;
  if  Key = #13 then
  begin
    Key := #0;
    FInspectorItem.InspectorBar.NextEdit(FInspectorItem,VK_RETURN);
  end;
  if  Key = #27 then
  begin
    Key := #0;
    Date := FOrigValue;
  end;
  inherited;
end;


{ TInspectorBarDropTarget }

constructor TInspectorBarDropTarget.Create(AInspectorBar: TInspectorBar);
begin
  inherited Create;
  FInspectorBar := AInspectorBar;
end;

procedure TInspectorBarDropTarget.DragMouseLeave;
begin
  inherited;
end;

procedure TInspectorBarDropTarget.DragMouseMove(pt: TPoint;
  var Allow: Boolean; DropFormats: TDropFormats);
begin
  inherited;
  Allow := True; //dfURL in DropFormats;
end;

procedure TInspectorBarDropTarget.DropFiles(pt: TPoint; Files: TStrings);
var
  i: Integer;
  DefaultHandler: Boolean;
begin
  inherited;

  for i := 1 to Files.Count do
  begin
    DefaultHandler := True;
    if Assigned(FInspectorBar.OnURLDrop) then
      FInspectorBar.OnURLDrop(FInspectorBar,Files.Strings[i - 1],DefaultHandler);
    if DefaultHandler then
    begin
    end;
  end;
end;

procedure TInspectorBarDropTarget.DropText(pt: TPoint; s: string);
begin
  inherited;
end;

procedure TInspectorBarDropTarget.DropURL(pt: TPoint; s: string);
var
  DefaultHandler: Boolean;
  FInspectorPanel: TInspectorPanel;
begin
  DefaultHandler := True;
  if Assigned(FInspectorBar.OnURLDrop) then
    FInspectorBar.OnURLDrop(FInspectorBar,s,DefaultHandler);

  if DefaultHandler then
  begin
    pt := FInspectorBar.ScreenToClient(pt);
    FInspectorBar.GetPanelAtXY(pt.X,pt.Y,FInspectorPanel);

    if Assigned(FInspectorPanel) then
    begin
      with FInspectorPanel.Items.Add do
      begin
        AutoIcon := True;
        Caption := s;
        URL := s;
      end;
    end;
  end;
end;

// Required for system image list handling

{ TInspectorEditLink }

procedure TInspectorEditLink.CreateEditor;
begin

end;

procedure TInspectorEditLink.DestroyEditor;
begin

end;

procedure TInspectorEditLink.EditExit(Sender: TObject);
begin
  StopEdit(FInspector.FEditItem);

  if (EditStyle = esPopup) and Assigned(FPopupForm) then
  begin
    DestroyEditor;
    FPopupForm.Free;
    FPopupForm := nil;
  end;
end;

procedure TInspectorEditLink.EditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Allow: Boolean;
begin
  Allow := Key in [VK_LEFT, VK_RIGHT, VK_DOWN, VK_UP, VK_PRIOR, VK_NEXT,
                   VK_END, VK_UP, VK_RETURN, VK_ESCAPE];

  if FWantKeyUpDown and (Key in [VK_UP,VK_DOWN]) then Allow := False;
  if FWantKeyLeftRight and (Key in [VK_LEFT,VK_RIGHT]) then Allow := False;
  if FWantKeyHomeEnd and (Key in [VK_UP,VK_END]) then Allow := False;
  if FWantKeyPriorNext and (Key in [VK_PRIOR,VK_NEXT]) then Allow := False;
  if FWantKeyReturn and (Key in [VK_RETURN]) then Allow := False;
  if FWantKeyEscape and (Key in [VK_ESCAPE]) then Allow := False;

  if Allow then
  begin
    if Key = VK_ESCAPE then
      SetOriginalValue;

    if Key = VK_RETURN then
    begin
      FInspector.NextEdit(Inspector.FEditItem,VK_RETURN);
      Key := 0;
    end;

    if Key in [VK_UP,VK_DOWN] then
    begin
      FInspector.NextEdit(FInspector.FEditItem ,Key);
      Key := 0;
    end;
  end
  else
    inherited;
end;

procedure TInspectorEditLink.FormExit(Sender: TObject);
begin
  EditExit(Sender);
end;

function TInspectorEditLink.GetEditor: TWinControl;
begin
  Result := nil;
end;

function TInspectorEditLink.GetEditorValue: string;
begin

end;

procedure TInspectorEditLink.SetEditorValue(s: string);
begin

end;

procedure TInspectorEditLink.SetOriginalValue;
begin

end;

procedure TInspectorEditLink.SetProperties;
begin
  if Assigned(FOnSetProperties) then
    FOnSetProperties(Self,R,Item);
end;

procedure TInspectorEditLink.StartEdit;
begin

end;

procedure TInspectorEditLink.StopEdit;
begin

end;

initialization
  OleInitialize(nil);

finalization
  OleUnInitialize;

end.
