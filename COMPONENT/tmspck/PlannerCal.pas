{***********************************************************************}
{ TPlannerCalendar component                                            }
{ for Delphi 3.0,4.0,5.0,6.0 & C++ Builder 3.0, 4.0, 5.0, 6.0           }
{ version 1.2                                                           }
{                                                                       }
{ written by :                                                          }
{            TMS Software                                               }
{            copyright ? 1999-2001                                      }
{            Email : info@tmssoftware.com                               }
{            Website : http://www.tmssoftware.com                       }
{                                                                       }
{ The source code is given as is. The author is not responsible         }
{ for any possible damage done due to the use of this code.             }
{ The component can be freely used in any application. The source       }
{ code remains property of the writer and may not be distributed        }
{ freely as such.                                                       }
{***********************************************************************}

{$I TMSDEFS.INC}

{$DEFINE USEIMAGE}

unit PlannerCal;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls
{$IFDEF USEIMAGE}
  , AdvImage
{$ENDIF}
  ;

const
  adaysinmonth: array[1..13] of word = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31, 29);
  monames: array[1..12] of string[5] = ('JAN', 'FEB', 'MAR', 'APR',
    'MAY', 'JUNE', 'JULY', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC');
  selstr = 'Select month';
  labelx = 30;
  labelw = 65;
  CW = 16;

type
  TCustomCalendarPanel = class;
  TPlannerCalendar = class;

  TDayStr = string;
  TMonthStr = string;

  TDayArray = array[1..14] of TDayStr;
  TMonthArray = array[1..12] of TMonthStr;

  TBackGroundPosition = (bpTopLeft, bpTopRight, bpBottomLeft, bpBottomRight,
    bpTiled, bpStretched, bpCenter);

  TDaySelectEvent = procedure(Sender: TObject; SelDate: TDateTime) of object;
  TDateChangeEvent = procedure(Sender: TObject; origDate, newDate: TDateTime) of object;

  TCancelledChangeEvent = procedure(Sender: TObject; CancelledDate: TDateTime) of object;

  TGetDateEvent = procedure(Sender: TObject; dt: tdatetime; var isEvent: Boolean) of
  object;
  TGetDateEventHint = procedure(Sender: TObject; dt: tdatetime;
    var isEvent: Boolean; var EventHint: string) of object;

  TEventShape = (evsRectangle, evsCircle, evsSquare, evsTriangle, evsNone);

  TSelDateItem = class(TCollectionItem)
  private
    FDate: TDateTime;
    FHint: string;
    FColor: TColor;
    FEventShape: TEventShape;
    procedure SetDate(const Value: TDateTime);
    procedure SetColor(const Value: TColor);
    procedure SetEventShape(const Value: TEventShape);
  public
    destructor Destroy; override;
    procedure Assign(Source: TPersistent); override;
    property Date: TDateTime read FDate write SetDate;
    property Hint: string read FHint write FHint;
    property Color: TColor read FColor write SetColor;
    property Shape: TEventShape read FEventShape write SetEventShape;
  end;

  TSelDateItems = class(TCollection)
  private
    FOwner: TCustomCalendarPanel;
    FUpdateCount: integer;
    FOnChange: TNotifyEvent;
    FVisible: Boolean;
    function GetItem(Index: integer): TSelDateItem;
    procedure SetItem(Index: integer; Value: TSelDateItem);
    procedure DoPaint;
    function GetDate(dt: TDateTime): TSelDateItem;
  protected
    procedure Update(Item: TCollectionItem); override;  
  public
    function IsInList(da, mo, ye: integer): integer;
    function IsDateInList(dt: TDateTime): integer;
    constructor Create(AOwner: TCustomCalendarPanel);
    function Add: TSelDateItem;
    function Insert(Index: integer): TSelDateItem;
    property Items[Index: integer]: TSelDateItem read GetItem write SetItem;
    property Dates[dt: TDateTime]: TSelDateItem read GetDate;
    procedure AddRange(dt1, dt2: TDateTime);
    procedure AddRangeSC(dt1, dt2: TDateTime; Shp: TEventShape; Clr: TColor); // New method
    procedure DelRange(dt1, dt2: TDateTime);
    procedure AddRangeHint(dt1, dt2: TDateTime; Hint: string);
    procedure AddRangeHintSC(dt1, dt2: TDateTime; Hint: string; Shp: TEventShape; Clr: TColor); // New method
    procedure StartUpdate;
    procedure StopUpdate;
    procedure RepaintDate(ADate: TDateTime);
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
    property Visible: Boolean read FVisible write FVisible;
  end;

  TMinMaxDate = class(TPersistent)
  private
    FOwner: TPlannerCalendar;
    FDay: smallint;
    FMonth: smallint;
    FYear: smallint;
    FUse: Boolean;
    procedure SetDay(avalue: smallint);
    procedure SetMonth(avalue: smallint);
    procedure SetYear(avalue: smallint);
    procedure SetUse(avalue: Boolean);
  public
    constructor Create(aOwner: TPlannerCalendar);
  published
    property Day: smallint read fDay write SetDay;
    property Month: smallint read fMonth write SetMonth;
    property Year: smallint read fYear write SetYear;
    property Use: Boolean read fUse write SetUse;
  end;

  TYearStartAt = class(TPersistent)
  private
    FOwner: TCustomCalendarPanel;
    FStartDay: integer;
    FStartMonth: integer;
    FPrevYearStartDay: integer;
    FPrevYearStartMonth: integer;
    FNextYearStartDay: integer;
    FNextYearStartMonth: integer;
    procedure SetStartDay(d: integer);
    procedure SetStartMonth(m: integer);
    procedure SetPrevYearStartDay(d: integer);
    procedure SetPrevYearStartMonth(m: integer);
    procedure SetNextYearStartDay(d: integer);
    procedure SetNextYearStartMonth(m: integer);
    function ValidateDay(d: integer): Boolean;
    function ValidateMonth(m: integer): Boolean;
  public
    constructor Create(AOwner: TCustomCalendarPanel);
    destructor Destroy; override;
  published
    property StartDay: integer read FStartDay write SetStartDay;
    property StartMonth: integer read FStartMonth write SetStartMonth;
    property PrevYearStartDay: integer read FPrevYearStartDay write SetPrevYearStartDay;
    property PrevYearStartMonth: integer read FPrevYearStartMonth write SetPrevYearStartMonth;
    property NextYearStartDay: integer read FNextYearStartDay write SetNextYearStartDay;
    property NextYearStartMonth: integer read FNextYearStartMonth write SetNextYearStartMonth;
  end;

  TNameOfMonths = class(TPersistent)
  private
    FJanuary: TMonthStr;
    FFebruary: TMonthStr;
    FMarch: TMonthStr;
    FApril: TMonthStr;
    FMay: TMonthStr;
    FJune: TMonthStr;
    FJuly: TMonthStr;
    FAugust: TMonthStr;
    FSeptember: TMonthStr;
    FOctober: TMonthStr;
    FNovember: TMonthStr;
    FDecember: TMonthStr;
    FOnChange: TNotifyEvent;
    FUseIntlNames: Boolean;
    procedure SetApril(const Value: TMonthStr);
    procedure SetAugust(const Value: TMonthStr);
    procedure SetDecember(const Value: TMonthStr);
    procedure SetFebruary(const Value: TMonthStr);
    procedure SetJanuary(const Value: TMonthStr);
    procedure SetJuly(const Value: TMonthStr);
    procedure SetJune(const Value: TMonthStr);
    procedure SetMarch(const Value: TMonthStr);
    procedure SetMay(const Value: TMonthStr);
    procedure SetNovember(const Value: TMonthStr);
    procedure SetOctober(const Value: TMonthStr);
    procedure SetSeptember(const Value: TMonthStr);
    procedure SetUseIntlNames(const Value: Boolean);
  protected
    procedure Changed;
    procedure InitIntl;
  public
    constructor Create;
    destructor Destroy; override;
    function GetMonth(i: integer): string;
  published
    property January: TMonthStr read FJanuary write SetJanuary;
    property February: TMonthStr read FFebruary write SetFebruary;
    property March: TMonthStr read FMarch write SetMarch;
    property April: TMonthStr read FApril write SetApril;
    property May: TMonthStr read FMay write SetMay;
    property June: TMonthStr read FJune write SetJune;
    property July: TMonthStr read FJuly write SetJuly;
    property August: TMonthStr read FAugust write SetAugust;
    property September: TMonthStr read FSeptember write SetSeptember;
    property October: TMonthStr read FOctober write SetOctober;
    property November: TMonthStr read FNovember write SetNovember;
    property December: TMonthStr read FDecember write SetDecember;
    property UseIntlNames: Boolean read FUseIntlNames write SetUseIntlNames;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
  end;

  TNameOfDays = class(TPersistent)
  private
    FMonday: TDayStr;
    FTuesday: TDayStr;
    FWednesday: TDayStr;
    FThursday: TDayStr;
    FFriday: TDayStr;
    FSaturday: TDayStr;
    FSunday: TDayStr;
    FOnChange: TNotifyEvent;
    FUseIntlNames: Boolean;
    procedure SetFriday(const Value: TDayStr);
    procedure SetMonday(const Value: TDayStr);
    procedure SetSaturday(const Value: TDayStr);
    procedure SetSunday(const Value: TDayStr);
    procedure SetThursday(const Value: TDayStr);
    procedure SetTuesday(const Value: TDayStr);
    procedure SetWednesday(const Value: TDayStr);
    procedure SetUseIntlNames(const Value: Boolean);
  protected
    procedure Changed;
    procedure InitIntl;
  public
    constructor Create;
    destructor Destroy; override;
    function GetDay(i: integer): string;
  published
    property Monday: TDayStr read FMonday write SetMonday;
    property Tuesday: TDayStr read FTuesday write SetTuesday;
    property Wednesday: TDayStr read FWednesday write SetWednesday;
    property Thursday: TDayStr read FThursday write SetThursday;
    property Friday: TDayStr read FFriday write SetFriday;
    property Saturday: TDayStr read FSaturday write SetSaturday;
    property Sunday: TDayStr read FSunday write SetSunday;
    property UseIntlNames: Boolean read FUseIntlNames write SetUseIntlNames;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
  end;

  TCalendarBrowsers = class(TPersistent)
  private
    FPrevMonth: Boolean;
    FNextMonth: Boolean;
    FPrevYear: Boolean;
    FNextYear: Boolean;
    FOnChange: TNotifyEvent;
    procedure SetNextMonth(const Value: Boolean);
    procedure SetNextYear(const Value: Boolean);
    procedure SetPrevMonth(const Value: Boolean);
    procedure SetPrevYear(const Value: Boolean);
  public
    constructor Create;
    procedure Changed;
  published
    property PrevMonth: Boolean read FPrevMonth write SetPrevMonth default True;
    property PrevYear: Boolean read FPrevYear write SetPrevYear default True;
    property NextMonth: Boolean read FNextMonth write SetNextMonth default True;
    property NextYear: Boolean read FNextYear write SetNextYear default True;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
  end;

  TPlannerCalendarLook = (lookFlat, look3D);

  TCustomCalendarPanel = class(TCustomPanel)
  private
    FEventMarkerColor: TColor;
    FEventMarkerShape: TEventShape;
    procedure SetEventMarkerColor(const Value: TColor);
    procedure SetEventMarkerShape(const Value: TEventShape);
  protected
    procedure UpdateYearStart; virtual;
    procedure DoPaint; virtual;
    procedure RepaintDate(dt: TDateTime); virtual;
  published
    property EventMarkerColor: TColor read FEventMarkerColor write SetEventMarkerColor;
    property EventMarkerShape: TEventShape read FEventMarkerShape write SetEventMarkerShape;
  end;

  TPlannerCalendar = class(TCustomCalendarPanel)
  private
    DateCol: TSelDateItems;
    EventCol: TSelDateItems;
    xoffset, yoffset: integer;
    seldate: TDatetime;
    thedate: TDatetime;
    clkdate: TDatetime;
    movdate: TDatetime;
    initdate: TDatetime;
    mousesel: Boolean;
    showhintbusy: Boolean;
    fLastHintPos: TPoint;
    dx, dy: word;
    lblx1, lblx2, lblx3: word;
    fFont: TFont;
    xposin, yposin: integer;
    flgl, flgr, flgla, dflgl, dflgr: Boolean;
    labels: string[20];
    EventHint: string;
    FShowToday: Boolean;
    FLook: TPlannerCalendarLook;
    FBrowsers: TCalendarBrowsers;
    FMonthSelect: Boolean;
    FMultiSelect: Boolean;
    FEventHints: Boolean;
    FEventDayColor: TColor;
    FYearStartAt: TYearStartAt;
    FNameOfDays: TNameOfDays;
    FNameOfMonths: TNameOfMonths;
    FMaxDate: TMinMaxDate;
    FMinDate: TMinMaxDate;
    FTextcolor: TColor;
    FSelectColor: TColor;
    FSelectFontColor: TColor;
    FInactiveColor: TColor;
    FFocusColor: TColor;
    FInverscolor: TColor;
    FWeekendColor: TColor;
    FHeaderColor: TColor;
    FShowWeeks: Boolean;
    FStartDay: Integer;
    FDay, FMonth, FYear: word;
    FDayFont: TFont;
    FWeekFont: TFont;
    FWeekName: string;
    FOnDaySelect: TDaySelectEvent;
    FOnMonthSelect: TNotifyEvent;
    FOnGetDateEvent: TGetDateEvent;
    FOnGetDateEventHint: TGetDateEventHint;
    FOnDateChange: TDateChangeEvent;
    FOnMonthChange: TDateChangeEvent;
    FOnYearChange: TDateChangeEvent;
    FOnDayChange: TDateChangeEvent;
    {$IFDEF USEIMAGE}
    FImage: TAdvImage;
    FBackgroundPosition: TBackgroundPosition;
    {$ENDIF}
    FShowDaysAfter: Boolean;
    FShowDaysBefore: Boolean;
    FShowSelection: Boolean;
    FWeekSelect: Boolean;
    FAllDaySelect: Boolean;
    FOnCancelledChange: TCancelledChangeEvent;
    FOnWeekSelect: TNotifyEvent;
    FOnAllDaySelect: TNotifyEvent;
    FUpdateCount: Integer;
    FCaptionColor: TColor;
    procedure WMCommand(var Message: TWMCommand); message WM_COMMAND;
    procedure WMKeyDown(var Msg: TWMKeydown); message WM_KEYDOWN;
    procedure CMWantSpecialKey(var Msg: TCMWantSpecialKey); message CM_WANTSPECIALKEY;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
    procedure CMHintShow(var Msg: TMessage); message CM_HINTSHOW;
    procedure SetLabel(mo, ye: word);
    procedure ChangeMonth(dx: integer);
    procedure ChangeYear(dx: integer);
    procedure DiffCheck(dt1, dt2: tdatetime);
    function DiffMonth(dx: integer): tdatetime;
    function DiffYear(dx: integer): tdatetime;
    function CheckDateRange(dt: tdatetime): Boolean;
    function DaysInMonth(mo, ye: word): word;
    procedure PaintArrowLeft;
    procedure PaintArrowRight;
    procedure PaintDblArrowLeft;
    procedure PaintDblArrowRight;
    procedure PaintLabel;
    procedure PaintProc;
    procedure PaintEventMarker(R: TRect; AColor: TColor; AShape: TEventShape);
    procedure SetLook(AValue: TPlannerCalendarLook);
    procedure SetShowToday(AValue: Boolean);
    procedure SetMultiSelect(AValue: Boolean);
    procedure SetDayFont(AValue: TFont);
    procedure SetWeekFont(AValue: TFont);
    procedure SetTextColor(AColor: TColor);
    procedure SetFocusColor(AColor: TColor);
    procedure SetInversColor(AColor: TColor);
    procedure SetWeekendColor(AColor: TColor);
    procedure SetSelectColor(AColor: TColor);
    procedure SetSelectFontColor(AColor: TColor);
    procedure SetInactiveColor(AColor: TColor);
    procedure SetHeaderColor(AColor: TColor);
    procedure SetWeekName(const Value: string);
    procedure FontChanged(Sender: TObject);
    procedure SetFont(Value: TFont);
    procedure SetNameofDays(ANameofDays: TNameOfDays);
    procedure SetNameofMonths(ANameofMonths: TNameOfMonths);
    procedure SetShowWeeks(AValue: Boolean);
    procedure SetStartDay(AValue: integer);
    procedure SetCalDay(AValue: word);
    procedure SetCalMonth(AValue: word);
    procedure SetCalYear(AValue: word);
    function GetCalDay: word;
    function GetCalMonth: word;
    function GetMonth(var dt: TDateTime): word;
    function GetCalYear: word;
    function GetYear(dt: TDatetime): integer;
    function XYToDate(X, Y: integer; change: Boolean): tdatetime;

    function DateToRect(dt: TDateTime): TRect;
    function DateToXY(dt: TDateTime): TPoint;
    function GetDateProc: TDateTime;
    procedure SetDateProc(const Value: TDatetime);
    procedure SetDateCol(const Value: TSelDateItems);
    function GetDateCol: TSelDateItems;
    procedure DoMonthPopup;
    procedure DoYearPopup;
    procedure PropsChanged(Sender: TObject);
    {$IFDEF USEIMAGE}
    procedure SetImage(const Value: TAdvImage);
    procedure SetBackgroundPosition(const Value: TBackgroundPosition);
    procedure BackgroundChanged(Sender: TObject);
    {$ENDIF}
    function GetEvents: TSelDateItems;
    function GetDatesAsText: string;
    procedure SetEvents(const Value: TSelDateItems);
    procedure SetEventDayColor(const Value: TColor);
    procedure SetShowDaysAfter(const Value: Boolean);
    procedure SetShowDaysBefore(const Value: Boolean);
    procedure SetShowSelection(const Value: Boolean);
    procedure SetCaptionColor(const Value: TColor);
  protected
    procedure DoPaint; override;
    procedure RepaintDate(dt: TDateTime); override;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure Paint; override;
    procedure MouseMove(Shift: TShiftState; X, Y: integer); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState;
      X, Y: integer); override;
    procedure KeyPress(var Key: char); override;
    procedure DoEnter; override;
    procedure DoExit; override;
    procedure Loaded; override;
    function HasEvent(dt: TDateTime; var EventItem: TSelDateItem): Boolean; virtual;
    procedure DoChangeMonth(dt1, dt2: TDateTime); virtual;
    procedure DoChangeYear(dt1, dt2: TDateTime); virtual;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure SetDate(da, mo, ye: word);
    procedure GetDate(var da, mo, ye: word);
    procedure BeginUpdate;
    procedure EndUpdate;
    procedure ResetUpdate;
    property Date: TDatetime read GetDateProc write SetDateProc;
    property Dates: TSelDateItems read GetDateCol write SetDateCol;
    property DatesAsText: string read GetDatesAsText;
    property Events: TSelDateItems read GetEvents write SetEvents;
  published
    property Align;
    property AllDaySelect: Boolean read FAllDaySelect write FAllDaySelect default False;
    {$IFDEF DELPHI4_LVL}
    property Anchors;
    property Constraints;
    {$ENDIF}
    {$IFDEF USEIMAGE}
    property Background: TAdvImage read FImage write SetImage;
    property BackgroundPosition: TBackgroundPosition
      read FBackgroundPosition write SetBackgroundPosition;
    {$ENDIF}
    property BevelInner;
    property BevelOuter;
    property BevelWidth;
    property BorderWidth;
    property BorderStyle;
    property Browsers: TCalendarBrowsers read FBrowsers write FBrowsers;
    property Color;
    property Cursor;
    property Look: TPlannerCalendarLook read fLook write SetLook;
    property ShowToday: Boolean read FShowToday write SetShowToday;
    property MultiSelect: Boolean read FMultiSelect write SetMultiSelect;
    property DayFont: TFont read FDayFont write SetDayFont;
    property WeekFont: TFont read FWeekFont write SetWeekFont;
    property WeekName: string read FWeekName write SetWeekName stored True;
    property TextColor: TColor read FTextColor write SetTextColor;
    property SelectColor: TColor read FSelectColor write SetSelectColor;
    property SelectFontColor: TColor read FSelectFontColor write SetSelectFontColor;
    property InActiveColor: TColor read FInactiveColor write SetInactiveColor;
    property HeaderColor: TColor read FHeaderColor write SetHeaderColor;
    property FocusColor: TColor read FFocusColor write SetFocusColor;
    property InversColor: TColor read FInversColor write SetInversColor;
    property WeekendColor: TColor read FWeekendColor write SetWeekendColor;
    property NameOfDays: TNameOfDays read FNameOfDays write SetNameOfDays;
    property NameOfMonths: TNameOfMonths read FNameOfMonths write SetNameOfMonths;
    property MaxDate: TMinMaxDate read FMaxDate write FMaxDate;
    property MinDate: TMinMaxDate read FMinDate write FMinDate;
    property YearStartAt: TYearStartAt read FYearStartAt write FYearStartAt;
    property ShowDaysBefore: Boolean read FShowDaysBefore write SetShowDaysBefore
      default True;
    property ShowDaysAfter: Boolean read FShowDaysAfter write SetShowDaysAfter default True;
    property ShowSelection: Boolean read FShowSelection write SetShowSelection default True;
    property ShowWeeks: Boolean read FShowWeeks write SetShowWeeks;
    property StartDay: integer read FStartDay write SetStartDay;
    property Day: word read GetCalDay write SetCalDay default 1;
    property Month: word read GetCalMonth write SetCalMonth default 1;
    property Year: word read GetCalYear write SetCalYear default 1;
    property ShowHint;
    property ParentShowHint;
    property TabStop;
    property TabOrder;
    property WeekSelect: Boolean read FWeekSelect write FWeekSelect default False;
    property Font: TFont read fFont write SetFont;
    property EventHints: Boolean read FEventHints write FEventHints;
    property EventDayColor: TColor read FEventDayColor write SetEventDayColor;
    property CaptionColor: TColor read FCaptionColor write SetCaptionColor;
    property OnDaySelect: TDaySelectEvent read FOnDaySelect write FOnDaySelect;
    property OnMonthSelect: TNotifyEvent read FOnMonthSelect write FOnMonthSelect;
    property OnGetDateHint: TGetDateEvent read FOnGetDateEvent write FOnGetDateEvent;
    property OnGetDateHintString: TGetDateEventHint
      read FOnGetDateEventHint write FOnGetDateEventHint;
    property OnMonthChange: TDateChangeEvent read FOnMonthChange write FOnMonthChange;
    property OnYearChange: TDateChangeEvent read FOnYearChange write FOnYearChange;
    property OnDayChange: TDateChangeEvent read FOnDayChange write FOnDayChange;
    property OnDateChange: TDateChangeEvent read FOnDateChange write FOnDateChange;
    property OnCancelledChange: TCancelledChangeEvent
      read FOnCancelledChange write FOnCancelledChange;
    property OnWeekSelect: TNotifyEvent read FOnWeekSelect write FOnWeekSelect;
    property OnAllDaySelect: TNotifyEvent read FOnAllDaySelect write FOnAllDaySelect;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseMove;
    property OnMouseDown;
    property OnMouseUp;
  end;


  TPlannerCalendarGroup = class(TCustomCalendarPanel)
  private
    {$IFDEF USEIMAGE}
    FImage: TAdvImage;
    FBackgroundPosition: TBackgroundPosition;
    {$ENDIF}
    FCalendars: TList;
    FColCount: integer;
    FRowCount: integer;
    FResizeVertical: TPanel;
    FResizeHorizontal: TPanel;
    fspliterV: byte;
    fspliterH: byte;
    FLetResize: Boolean;
    FCalendarWidth: integer;
    FCalendarHeight: integer;
    fFont: Tfont;
    FStartMonth: integer;
    FStartYear: integer;
    FOnDaySelect: TDaySelectEvent;
    FOnMonthSelect: TNotifyEvent;
    FOnGetDateEvent: TGetDateEvent;
    FOnGetDateEventHint: TGetDateEventHint;
    FOnDateChange: TDateChangeEvent;
    FOnMonthChange: TDateChangeEvent;
    FOnYearChange: TDateChangeEvent;
    FOnDayChange: TDateChangeEvent;
    FOnCancelledChange: TCancelledChangeEvent;
    FOnWeekSelect: TNotifyEvent;
    FOnAllDaySelect: TNotifyEvent;
    Fctltdown: Boolean;
    FOnKeyDown: TKeyEvent;
    FOnKeyPress: TKeyPressEvent;
    FOnKeyUp: TKeyEvent;
    FOnMouseMove: TMouseMoveEvent;
    FOnMouseDown: TMouseEvent;
    FOnMouseUp: TMouseEvent;
    FDay: word;
    FMonth: word;
    FYear: word;
    FLook: TPlannerCalendarLook;
    FDayFont: TFont;
    FWeekFont: TFont;
    FWeekName: string;
    FTextColor: TColor;
    FSelectColor: TColor;
    FSelectFontColor: TColor;
    FInactiveColor: TColor;
    FHeaderColor: TColor;
    FFocusColor: TColor;
    FInversColor: TColor;
    FWeekendColor: TColor;
    FNameOfDays: TNameOfDays;
    FNameOfMonths: TNameOfMonths;
    FShowSelection: Boolean;
    FShowWeeks: Boolean;
    FEventHints: Boolean;
    FEventDayColor: TColor;
    FSPlitterBevel: Boolean;
    FSplitterColor: TColor;
    FBevelWidth: Integer;
    FBorderStyle: TBorderStyle;
    FBorderWidth: Integer;
    FBevelOuter: TPanelBevel;
    FBevelInner: TPanelBevel;
    FMultiSelect: Boolean;
    FShowToday: Boolean;
    FEventCol: TSelDateItems;
    FDates: TSelDateItems;
    FAllDaySelect: Boolean;
    FWeekSelect: Boolean;
    FCaptionColor: TColor;
    FStartDay: Integer;
    procedure SetColCount(const Value: Integer);
    procedure SetRowCount(const Value: Integer);
    procedure SetCalendarWidth(const Value: Integer);
    procedure SetCalendarHeight(const Value: Integer);
    procedure SetFont(const Value: TFont);
    procedure SetStartMonth(const Value: Integer);
    procedure SetStartYear(const Value: Integer);
    procedure SetSpliterH(const Value: Byte);
    procedure SetSpliterV(const Value: Byte);
    procedure UpdateFields;
    procedure UpdateEvents;
    function GetDates: TSelDateItems;
    procedure SetDates(const Value: TSelDateItems);
    procedure SetDay(Value: word);
    procedure SetMonth(Value: word);
    procedure SetYear(Value: word);
    procedure SetLook(AValue: TPlannerCalendarLook);
    procedure SetDayFont(AValue: TFont);
    procedure SetWeekFont(AValue: TFont);
    procedure SetWeekName(const Value: string);
    procedure SetTextColor(AColor: TColor);
    procedure SetSelectColor(AColor: TColor);
    procedure SetSelectFontColor(AColor: TColor);
    procedure SetInactiveColor(AColor: TColor);
    procedure SetHeaderColor(AColor: TColor);
    procedure SetFocusColor(AColor: TColor);
    procedure SetInversColor(AColor: TColor);
    procedure SetWeekendColor(AColor: TColor);

    procedure SetNameOfDays(const Value: TNameOfDays);
    procedure SetNameOfMonths(const Value: TNameOfMonths);

    procedure SetShowSelection(const Value: Boolean);
    procedure SetShowWeeks(AValue: Boolean);
    procedure SetEventHints(AValue: Boolean);
    procedure SetEventDayColor(const Value: TColor);

    procedure SetFOnDaySelect(Value: TDaySelectEvent);
    procedure SetFOnMonthSelect(Value: TNotifyEvent);
    procedure SetFOnGetDateEvent(Value: TGetDateEvent);
    procedure SetFOnGetDateEventHint(Value: TGetDateEventHint);
    procedure SetFOnDateChange(Value: TDateChangeEvent);
    procedure SetFOnMonthChange(Value: TDateChangeEvent);
    procedure SetFOnYearChange(Value: TDateChangeEvent);
    procedure SetFOnDayChange(Value: TDateChangeEvent);
    procedure SetFOnCancelledChange(Value: TCancelledChangeEvent);
    procedure SetFOnWeekSelect(Value: TNotifyEvent);
    procedure SetFOnAllDaySelect(Value: TNotifyEvent);
    procedure SetFOnKeyDown(Value: TKeyEvent);
    procedure SetFOnKeyPress(Value: TKeyPressEvent);
    procedure SetFOnKeyUp(Value: TKeyEvent);
    procedure SetFOnMouseMove(Value: TMouseMoveEvent);
    procedure SetFOnMouseDown(Value: TMouseEvent);
    procedure SetFOnMouseUp(Value: TMouseEvent);
    procedure MouseDownV(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure MouseMoveV(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure MouseUpV(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure MouseDownH(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    procedure MouseMoveH(Sender: TObject; Shift: TShiftState; X, Y: integer);
    procedure MouseUpH(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: integer);
    {$IFDEF USEIMAGE}
    procedure SetImage(const Value: TAdvImage);
    procedure BackgroundChanged(Sender: TObject);
    procedure SetBackgroundPosition(const Value: TBackgroundPosition);
    {$ENDIF}
    function GetColorEx: TColor;
    procedure SetColorEx(const Value: TColor);
    procedure FitPlanners;
    procedure SetPlannersUpdate(const State: Boolean);
    procedure SetSplitterBevel(const Value: Boolean);
    procedure SetSplitterColor(const Value: TColor);
    procedure SetBebelInnerEx(const Value: TPanelBevel);
    procedure SetBevelOuterEx(const Value: TPanelBevel);
    procedure SetBevelWidthEx(const Value: Integer);
    procedure SetBorderStyleEx(const Value: TBorderStyle);
    procedure SetBorderWidthEx(const Value: Integer);
    procedure SetMultiSelect(const Value: Boolean);
    procedure SetShowToday(const Value: Boolean);
    function GetEvents: TSelDateItems;
    procedure SetEvents(const Value: TSelDateItems);
    procedure SetAllDaySelect(const Value: Boolean);
    procedure SetWeekSelect(const Value: Boolean);
    procedure SetCaptionColor(const Value:TColor);
    function  GetBevelWidth: integer;
    function  GetBorderWidth: integer;
    procedure SetBevelWidth(const Value: integer);
    procedure SetBorderWidth(const Value: integer);
    procedure SetStartDay(const Value: Integer);
  protected
    procedure DoPaint; override;
    procedure RepaintDate(dt: TDateTime); override;
    procedure ShowPlanners;
    procedure UpdatePlanners;
    procedure Updatezero(var dt: TdateTime);
    procedure Paint; override;

    procedure CtrlKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure CtrlKeyUP(Sender: TObject; var Key: word; Shift: TShiftState);

    procedure GetGroupDate(Sender: TObject; origDate, newDate: TDateTime);
    procedure AnyDaySelect(Sender: TObject; SelDate: TDateTime);
    procedure Resize; override;
    procedure PropsChanged(Sender: TObject);
    procedure EventsChanged(Sender: TObject);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Loaded; override;
    procedure ModifyGroup(Cols, Rows, CalendarWidth, CalendarHeight: integer);
    property Events: TSelDateItems read GetEvents write SetEvents;
    property Dates: TSelDateItems read GetDates write SetDates;
    procedure UpdateDates;
  published
    property Align;
    property AllDaySelect: Boolean read FAllDaySelect write SetAllDaySelect default False;
    {$IFDEF USEIMAGE}
    property Background: TAdvImage read FImage write SetImage;
    property BackgroundPosition: TBackgroundPosition
      read FBackgroundPosition write SetBackgroundPosition;
    {$ENDIF}
    property Color: TColor read GetColorEx write SetColorEx;
    property ColCount: integer read FColCount write SetColCount;
    property RowCount: integer read FRowCount write SetRowCount;
    property CalendarWidth: integer read FCalendarWidth write SetCalendarWidth;
    property CalendarHeight: integer read FCalendarHeight write SetCalendarHeight;
    property Font: TFont read fFont write SetFont;
    property StartDay: Integer read FStartDay write SetStartDay;
    property StartMonth: integer read FStartMonth write SetStartMonth;
    property StartYear: integer read FStartYear write SetStartYear;
    property SpliterV: byte read FSpliterV write SetSpliterV;
    property SpliterH: byte read FSpliterH write SetSpliterH;
    property SplitterColor: TColor read FSplitterColor write SetSplitterColor;
    property SplitterBevel: Boolean read FSPlitterBevel write SetSplitterBevel;

    property BorderStyle;
    property BevelInner;
    property BevelOuter;
    property BevelWidth: Integer Read GetBevelWidth write SetBevelWidth;
    property BorderWidth : Integer Read GetBorderWidth write SetBorderWidth;
 (*
    {$IFDEF DELPHI4_LVL}
    property Anchors;
    property Constraints;
    {$ENDIF}
*)
    property CalendarBevelInner: TPanelBevel read FBevelInner write SetBebelInnerEx;
    property CalendarBevelOuter: TPanelBevel read FBevelOuter write SetBevelOuterEx;
    property CalendarBevelWidth: Integer read FBevelWidth write SetBevelWidthEx;
    property CalendarBorderWidth: Integer read FBorderWidth write SetBorderWidthEx;
    property CalendarBorderStyle: TBorderStyle read FBorderStyle write SetBorderStyleEx;

    property Hint;
    property ShowHint;
    property ParentShowHint;
    property Day: word read FDay write SetDay default 1;
    property Month: word read FMonth write SetMonth default 1;
    property Year: word read FYear write SetYear default 1;
    property Look: TPlannerCalendarLook read FLook write SetLook;
    property MultiSelect: Boolean read FMultiSelect write SetMultiSelect;
    property DayFont: TFont read fDayFont write SetDayFont;
    property WeekFont: TFont read fWeekFont write SetWeekFont;
    property WeekName: string read fWeekName write SetWeekName;
    property WeekSelect: Boolean read FWeekSelect write SetWeekSelect default False;

    property NameOfDays: TNameofDays read FNameOfDays write SetNameOfDays;
    property NameOfMonths: TNameofMonths read FNameOfMonths write SetNameOfMonths;

    property TextColor: TColor read FTextColor write SetTextColor;
    property SelectColor: TColor read FSelectColor write SetSelectColor;
    property SelectFontColor: TColor read FSelectFontColor write SetSelectFontColor;
    property InActiveColor: TColor read FInactiveColor write SetInactiveColor;
    property HeaderColor: TColor read FHeaderColor write SetHeaderColor;
    property FocusColor: TColor read FFocusColor write SetFocusColor;
    property InversColor: TColor read FInversColor write SetInversColor;
    property WeekendColor: TColor read FWeekendColor write SetWeekendColor;
    property ShowSelection: Boolean read FShowSelection write SetShowSelection;
    property ShowToday: Boolean read FShowToday write SetShowToday;
    property ShowWeeks: Boolean read FShowWeeks write SetShowWeeks;
    property EventHints: Boolean read FEventHints write SetEventHints;
    property EventDayColor: TColor read FEventDayColor write SetEventDayColor;
    property CaptionColor: TColor read FCaptionColor write SetCaptionColor default clNone;
    property OnDaySelect: TDaySelectEvent read FOnDaySelect write SetFOnDaySelect;
    property OnMonthSelect: TNotifyEvent read FOnMonthSelect write SetFOnMonthSelect;
    property OnGetDateHint: TGetDateEvent read FOnGetDateEvent write SetFOnGetDateEvent;
    property OnGetDateHintString: TGetDateEventHint
      read FOnGetDateEventHint write SetFOnGetDateEventHint;
    property OnMonthChange: TDateChangeEvent read FOnMonthChange write SetFOnMonthChange;
    property OnYearChange: TDateChangeEvent read FOnYearChange write SetFOnYearChange;
    property OnDayChange: TDateChangeEvent read FOnDayChange write SetFOnDayChange;
    property OnDateChange: TDateChangeEvent read FOnDateChange write SetFOnDateChange;
    property OnCancelledChange: TCancelledChangeEvent
      read FOnCancelledChange write SetFOnCancelledChange;
    property OnWeekSelect: TNotifyEvent read FOnWeekSelect write SetFOnWeekSelect;
    property OnAllDaySelect: TNotifyEvent read FOnAllDaySelect write SetFOnAllDaySelect;
    property OnKeyDown   Read FOnKeyDown   Write SetFOnKeyDown;
    property OnKeyPress  Read FOnKeyPress  Write SetFOnKeyPress;
    property OnKeyUp     Read FOnKeyUp     Write SetFOnKeyUp;
    property OnMouseMove Read FOnMouseMove Write SetFOnMouseMove;
    property OnMouseDown Read FOnMouseDown Write SetFOnMouseDown;
    property OnMouseUp   Read FOnMouseUp   Write SetFOnMouseUp;

  end;

implementation

constructor TPlannerCalendar.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ControlStyle := ControlStyle - [csAcceptsControls];
  FNameOfDays := TNameofDays.Create;
  FNameOfDays.OnChange := PropsChanged;
  FNameOfMonths := TNameofMonths.Create;
  FNameOfMonths.OnChange := PropsChanged;
  FYearStartAt := TYearStartAt.Create(self);
  FDayFont := TFont.Create;
  FWeekFont := TFont.Create;
  FFont := TFont.Create;
  FMinDate := TMinMaxDate.Create(self);
  FMaxDate := TMinMaxDate.Create(self);
  DateCol := TSelDateItems.Create(self);
  EventCol := TSelDateItems.Create(self);
  {$IFDEF USEIMAGE}
  FImage := TAdvImage.Create;
  FImage.OnChange := BackgroundChanged;
  FBackgroundPosition := bpTiled;
  {$ENDIF}
  FMonthSelect := True;
  FWeekName := 'Week';
  xoffset := 0;
  yoffset := 16;
  thedate := Now;
  seldate := thedate;
  ChangeMonth(0);
  flgl := False;
  flgr := False;
  flgla := False;
  dflgl := False;
  dflgr := False;
  FUpdateCount := 0;
  Width := 132;
  Height := 135;
  FSelectColor := clTeal;
  FSelectFontColor := clWhite;
  FInactiveColor := clGray;
  FInversColor := clWhite;
  FFocusColor := clHighLight;
  FTextColor := clBlack;
  FWeekendColor := clRed;
  FHeaderColor := clBtnFace;
  FStartDay := 7;
  DecodeDate(theDate, FYear, FMonth, FDay);
  Caption := '';
  Showhintbusy := False;
  FLastHintPos := Point(-1, - 1);
  FFont.OnChange := FontChanged;
  FDayFont.OnChange := FontChanged;
  FWeekFont.OnChange := FontChanged;
  FEventMarkerColor := clYellow;
  FEventMarkerShape := evsCircle;
  FBrowsers := TCalendarBrowsers.Create;
  FBrowsers.OnChange := PropsChanged;
  FShowDaysBefore := True;
  FShowDaysAfter := True;
  FShowSelection := True;
  FCaptionColor := clNone;
  {$IFDEF DELPHI4_LVL}
  DoubleBuffered := True;
  {$ENDIF}
end;

destructor TPlannerCalendar.Destroy;
begin
  FNameOfDays.Destroy;
  FNameOfMonths.Destroy;
  FYearStartAt.Destroy;
  FFont.Free;
  FDayFont.Free;
  FWeekFont.Free;
  FMinDate.Free;
  FMaxDate.Free;
  {$IFDEF USEIMAGE}
  FImage.Free;
  {$ENDIF}
  DateCol.Free;
  EventCol.Free;
  FBrowsers.Free;
  inherited Destroy;
end;

procedure TPlannerCalendar.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
end;

procedure TPlannerCalendar.SetFont(Value: tFont);
begin
  FFont.Assign(Value);
  Canvas.Font.Assign(FFont);
end;

procedure TPlannerCalendar.FontChanged(Sender: TObject);
begin
  Canvas.Font.Assign(Font);
  DoPaint;
end;

procedure TPlannerCalendar.DoEnter;
begin
  inherited DoEnter;
  DoPaint;
end;

procedure TPlannerCalendar.DoExit;
begin
  inherited DoExit;
  DoPaint;
end;

procedure TPlannerCalendar.Loaded;
begin
  inherited Loaded;
  SelDate := EncodeDate(FYear, FMonth, FDay);
  TheDate := SelDate;
  // Make sure all names are initialized to intl. settings when used.
  NameOfDays.UseIntlNames := NameOfDays.UseIntlNames;
  NameOfMonths.UseIntlNames := NameOfMonths.UseIntlNames;
end;

procedure TPlannerCalendar.SetLook(avalue: TPlannerCalendarLook);
begin
  FLook := AValue;
  Invalidate;
end;

procedure TPlannerCalendar.SetShowToday(AValue: Boolean);
begin
  FShowToday := AValue;
  Invalidate;
end;

procedure TPlannerCalendar.SetMultiSelect(AValue: Boolean);
begin
  FMultiSelect := AValue;
  if not FMultiSelect then DateCol.Clear;
  DoPaint;
end;

procedure TPlannerCalendar.SetDayFont(AValue: TFont);
begin
  if Assigned(AValue) then
    FDayFont.Assign(AValue);
  Invalidate;
end;

procedure TPlannerCalendar.SetWeekFont(AValue: TFont);
begin
  if Assigned(AValue) then
    FWeekFont.Assign(AValue);
  Invalidate;
end;

procedure TPlannerCalendar.SetWeekName(const Value: string);
begin
  FWeekName := Value;
  Invalidate;
end;

procedure TPlannerCalendar.SetTextColor(aColor: TColor);
begin
  FTextColor := AColor;
  Invalidate;
end;

procedure TPlannerCalendar.SetInversColor(AColor: TColor);
begin
  FInversColor := AColor;
  Invalidate;
end;

procedure TPlannerCalendar.SetFocusColor(AColor: TColor);
begin
  FFocusColor := AColor;
  Invalidate;
end;

procedure TPlannerCalendar.SetWeekendColor(AColor: TColor);
begin
  FWeekendColor := AColor;
  Invalidate;
end;

procedure TPlannerCalendar.SetSelectColor(AColor: TColor);
begin
  FSelectColor := AColor;
  Invalidate;
end;

procedure TPlannerCalendar.SetSelectFontColor(AColor: TColor);
begin
  FSelectFontColor := AColor;
  Invalidate;
end;


procedure TPlannerCalendar.SetInActiveColor(AColor: TColor);
begin
  FInactiveColor := AColor;
  Invalidate;
end;

procedure TPlannerCalendar.SetHeaderColor(AColor: TColor);
begin
  FHeaderColor := Acolor;
  Invalidate;
end;

procedure TPlannerCalendar.SetLabel(mo, ye: word);
begin
  Labels := FNameofMonths.GetMonth(mo) + ' ' + IntToStr(ye);
end;

function TPlannerCalendar.DaysInMonth(mo, ye: word): word;
begin
  if mo <> 2 then
    DaysInMonth := ADaysinmonth[mo] 
  else
  begin
    if (ye mod 4 = 0) then DaysInMonth := 29 
    else
      DaysInMonth := 28;
    if (ye mod 100 = 0) then DaysInMonth := 28;
    if (ye mod 400 = 0) then DaysInmonth := 29;
  end;
end;

procedure TPlannerCalendar.SetStartDay(AValue: integer);
begin
  if AValue < 1 then
    AValue := 1;
  if AValue > 7 then
    AValue := 7;
  FStartDay := AValue;
  Invalidate;
end;

procedure TPlannerCalendar.SetShowWeeks(aValue: Boolean);
begin
  if AValue then
    XOffset := self.Width div 8
  else if not (csLoading in ComponentState) then XOffset := 0;
  FShowWeeks := AValue;
  Invalidate;
end;

procedure TPlannerCalendar.SetCalDay(AValue: word);
begin
  try
    SetDate(AValue, FMonth, FYear);
    FDay := AValue;
  except
    MessageDlg('Invalid date', mtError, [mbOK], 0);
  end;
  Invalidate;
end;

procedure TPlannerCalendar.SetCalMonth(AValue: word);
begin
  try
    SetDate(FDay, AValue, FYear);
    FMonth := AValue;
  except
    MessageDlg('Invalid date', mtError, [mbOK], 0);
  end;
  Invalidate;
end;

procedure TPlannerCalendar.SetCalYear(AValue: word);
begin
  try
    SetDate(FDay, FMonth, AValue);
    FYear := AValue;
  except
    MessageDlg('Invalid date', mtError, [mbOK], 0);
  end;
  Invalidate;
end;

function TPlannerCalendar.GetCalDay: word;
var
  da, mo, ye: word;
begin
  GetDate(da, mo, ye);
  Result := da;
end;

function TPlannerCalendar.GetCalMonth: word;
var
  da, mo, ye: word;
begin
  GetDate(da, mo, ye);
  Result := mo;
end;

function TPlannerCalendar.GetMonth(var dt: TDateTime): word;
var
  da, mo, ye: word;
begin
  DecodeDate(dt, ye, mo, da);
  Result := mo;
end;


function TPlannerCalendar.GetCalYear: word;
var
  da, mo, ye: word;
begin
  GetDate(da, mo, ye);
  Result := ye;
end;

function TPlannerCalendar.GetYear(dt: tdatetime): integer;
var
  da, mo, ye: word;
begin
  DecodeDate(dt, ye, mo, da);
  Result := ye;
end;

procedure TPlannerCalendar.SetNameofDays(ANameofDays: TNameofDays);
begin
  FNameofDays := ANameofDays;
  Invalidate;
end;

procedure TPlannerCalendar.SetNameofMonths(ANameofMonths: TNameofMonths);
begin
  FNameofMonths := ANameofMonths;
  Invalidate;
end;

procedure TPlannerCalendar.ChangeMonth(dx: integer);
var
  ye, mo, da: word;
  dt: TDateTime;
begin
  DecodeDate(thedate, ye, mo, da);

  mo := mo + dx;

  while mo > 12 do
  begin
    Inc(ye);
    mo := mo - 12;
  end;

  if mo = 0 then
  begin
    Dec(ye);
    mo := 12;
  end;

  if da > DaysInMonth(mo, ye) then
    da := DaysInMonth(mo, ye);

  dt := EncodeDate(ye, mo, da);

  if CheckDateRange(dt) then
  begin
    thedate := dt;
    seldate := thedate;
    SetLabel(mo, ye);
    Invalidate;
  end;
end;

function TPlannerCalendar.CheckDateRange(dt: tdatetime): Boolean;
begin
  Result :=
    (not fMinDate.Use or (encodedate(fMinDate.Year, fMinDate.Month, fMinDate.Day) <= dt))
    and
    (not fMaxDate.Use or (encodedate(fMaxDate.Year, fMaxDate.Month, fMaxDate.Day) >= dt));
end;

procedure TPlannerCalendar.DiffCheck(dt1, dt2: tdatetime);
var
  da1, da2, mo1, mo2, ye1, ye2: word;
begin
  DecodeDate(dt1, ye1, mo1, da1);
  DecodeDate(dt2, ye2, mo2, da2);

  if da1 <> da2 then
  begin
    if Assigned(FOnDayChange) then
      FOnDayChange(self, dt1, dt2);
  end;

  if mo1 <> mo2 then
  begin
    DoChangeMonth(dt1, dt2);
  end;

  if ye1 <> ye2 then
  begin
    DoChangeYear(dt1, dt2);
  end;
end;

function TPlannerCalendar.DiffMonth(dx: integer): tdatetime;
var
  ye, mo, da: word;
  nmo: smallint;
begin
  DecodeDate(thedate, ye, mo, da);
  nmo := mo + dx;
  if nmo > 12 then
  begin
    nmo := nmo - 12;
    Inc(ye);
  end;
  if nmo < 1 then
  begin
    nmo := nmo + 12;
    Dec(ye);
  end;
  if da > DaysInMonth(nmo, ye) then
    da := DaysInMonth(nmo, ye);
  Result := EncodeDate(ye, nmo, da);
end;

function TPlannerCalendar.DiffYear(dx: integer): tdatetime;
var
  ye, mo, da: word;
begin
  DecodeDate(thedate, ye, mo, da);
  ye := ye + dx;
  if da > DaysInMonth(mo, ye) then
    da := DaysInMonth(mo, ye);
  Result := EncodeDate(ye, mo, da);
end;

procedure TPlannerCalendar.ChangeYear(dx: integer);
var
  ye, mo, da: word;
  dt: TDatetime;
begin
  DecodeDate(thedate, ye, mo, da);
  ye := ye + dx;
  dt := EncodeDate(ye, mo, da);
  if CheckDateRange(dt) then
  begin
    thedate := dt;
    seldate := thedate;
    SetLabel(mo, ye);
    DoPaint;
  end;
end;

procedure TPlannerCalendar.PaintArrowLeft;
var
  xoffs: integer;
begin
  xoffs := xoffset + 20;
  with Canvas do
  begin
    if flgl then
    begin
      Brush.Color := FSelectColor;
      Pen.Color := FSelectColor;
    end
    else
    begin
      Brush.Color := FTextColor;
      Pen.Color := FTextColor;
    end;

    if not CheckDateRange(Diffmonth(-1)) then
    begin
      Brush.Color := FInactiveColor;
      Pen.Color := FInactiveColor;
    end;

    Polygon([Point(xoffs + 10, 1), Point(xoffs + 5, 6), Point(xoffs + 10, 11)]);

    Brush.Color := Color;
  end;
end;

procedure TPlannerCalendar.PaintArrowRight;
begin
  with Canvas do
  begin
    if flgr then
    begin
      Brush.Color := FSelectcolor;
      Pen.Color := FSelectcolor;
    end
    else
    begin
      Brush.Color := Textcolor;
      Pen.Color := Textcolor;
    end;

    if not CheckDateRange(diffmonth(+1)) then
    begin
      Brush.Color := FInactiveColor;
      Pen.Color := FInactiveColor;
    end;

    Polygon([Point(Width - 30, 1), Point(Width - 30, 11), Point(Width - 25, 6)]);
    Brush.Color := Color;
  end;
end;

procedure TPlannerCalendar.PaintDblArrowLeft;
begin
  with Canvas do
  begin
    if dflgl then
    begin
      Brush.Color := FSelectColor;
      Pen.Color := FSelectColor;
    end
    else
    begin
      Brush.Color := FTextColor;
      Pen.Color := FTextColor;
    end;

    if not checkdaterange(diffyear(-1)) then
    begin
      Brush.Color := FInactiveColor;
      Pen.Color := FInactiveColor;
    end;

    Polygon([Point(xoffset + 10, 1), Point(xoffset + 5, 6), Point(xoffset + 10, 11)]);
    Polygon([Point(xoffset + 15, 1), Point(xoffset + 10, 6), Point(xoffset + 15, 11)]);

    Brush.Color := Color;
  end;
end;

procedure TPlannerCalendar.PaintDblArrowRight;
begin
  with Canvas do
  begin
    if dflgr then
    begin
      Brush.Color := FSelectColor;
      Pen.Color := FSelectColor;
    end
    else
    begin
      Brush.Color := TextColor;
      Pen.Color := TextColor;
    end;

    if not Checkdaterange(diffyear(+1)) then
    begin
      Brush.Color := FInactiveColor;
      Pen.Color := FInactiveColor;
    end;

    Polygon([Point(Width - 10, 1), Point(Width - 10, 11), Point(Width - 5, 6)]);
    Polygon([Point(Width - 15, 1), Point(Width - 15, 11), Point(Width - 10, 6)]);

    Brush.Color := Color;
  end;
end;

procedure TPlannerCalendar.PaintLabel;
var
  l, yw: longint;
begin
  with Canvas do
  begin
    Self.Canvas.Font.Assign(FFont);
    l := TextWidth(labels);
    yw := TextWidth(' 9999');

    if flgla then
      Font.Color := FSelectColor
    else
      Font.Color := FTextColor;

    SetBKMode(Handle, TRANSPARENT);

    Textout(xoffset + ((self.Width - loword(l) - xoffset) shr 1), 0, labels);
    Font.Color := FTextColor;
    lblx1 := (self.Width - loword(l) - xoffset) shr 1;
    lblx2 := lblx1 + loword(l) - yw;
    lblx3 := lblx1 + loword(l);
  end;
end;

procedure TPlannerCalendar.PaintEventMarker(R: TRect; AColor: TColor;
  AShape: TEventShape);
var
  wi, he: integer;

begin
  InflateRect(R, - 1, - 1);
  Canvas.Brush.Color := AColor;
  Canvas.Pen.Color := AColor;
  case AShape of
    evsCircle: Canvas.Ellipse(r.Left, r.Top, r.Right, r.Bottom);
    evsRectangle: Canvas.Rectangle(r.Left, r.Top, r.Right, r.Bottom);
    evsSquare:
    begin
      wi := (r.Right - r.Left) shr 1;
      he := (r.Bottom - r.Top) shr 1;
      Canvas.Polygon([Point(r.Left + wi, r.Top), Point(r.Right, r.Top + he),
        Point(r.Left + wi, r.Bottom), Point(r.Left, r.Top + he)]);
    end;
    evsTriangle:
    begin
      wi := (r.Right - r.Left) shr 1;
      Canvas.Polygon([Point(r.Left + wi, r.Top), Point(r.Right, r.Bottom),
        Point(r.Left, r.Bottom)]);
    end;
  end;
end;


procedure TPlannerCalendar.PaintProc;
var
  i, j: word;
  da, mo, ye, pmo, pye, nmo, nye, sda, cda, cmo, cye, dye, sye, snye, spye: word;
  fd, fmd: integer;
  d, pyd, pnd, pcd: TDateTime;
  dstr: string;
  isEvent: Boolean;
  r: TRect;
  oldStyle: TFontStyles;
  inlist: Boolean;
  EventDate: TSelDateItem;

  function SmallCaps(s: string): string;
  var
    buf: array[0..10] of char;
  begin
    strpcopy(buf, s);
    strlower(buf);
    s := strpas(buf);
    s[1] := upcase(s[1]);
    SmallCaps := s;
  end;

begin
  if not Assigned(FNameofDays) then
    Exit;
  if not Assigned(FNameofMonths) then
    Exit;

  DecodeDate(SelDate, ye, mo, sda);
  DecodeDate(TheDate, ye, mo, da);
  DecodeDate(Now, cye, cmo, cda);

  Canvas.Font.Assign(FFont);

  if FShowWeeks then
    dx := (self.Width - 8) div 8
  else
    dx := (self.Width - 7) div 7;

  if FShowWeeks then
    XOffset := dx
  else
    XOffset := 0;

  dy := (Height + 8) div 8;

  if FBrowsers.FPrevMonth then PaintArrowLeft;
  if FBrowsers.FNextMonth then  PaintArrowRight;
  if FBrowsers.FPrevYear then  PaintDblArrowLeft;
  if FBrowsers.FNextYear then  PaintDblArrowRight;

  PaintLabel;

  d := EncodeDate(ye, mo, 1);

  //first day of the month
  fd := DayOfWeek(d) - 1 - StartDay;

  if fd < 0 then
    fd := fd + 7;

  //determine previous month
  if mo = 1 then
  begin
    pmo := 12;
    pye := ye - 1;
  end
  else
  begin
    pmo := mo - 1;
    pye := ye;
  end;

  //determine next month
  if mo = 12 then
  begin
    nmo := 1;
    nye := ye + 1;
  end
  else
  begin
    nmo := mo + 1;
    nye := ye;
  end;

  with Canvas do
  begin
    Font.Color := FTextColor;
    SetBKMode(handle, TRANSPARENT);

    if FShowWeeks then
    begin
      Pen.Color := FTextColor;
      MoveTo(dx, dy - 3 + yoffset);
      LineTo(dx, Height - 2);
      Pen.Color := clwhite;
      MoveTo(dx + 1, dy - 3 + yoffset);
      LineTo(dx + 1, Height - 2);

      Canvas.Font.Assign(FDayfont);

      r.Left := 2;
      r.Right := dx + 2;
      r.Top := yoffset;
      r.Bottom := r.top + dy - 8;

      if FLook = Look3D then
      begin
        Canvas.Brush.Color := FHeaderColor;
        Canvas.Rectangle(r.Left, r.Top, r.Right, r.Bottom);
        Frame3d(canvas, r, clWhite, clGray, 1);
      end;

      SetBKMode(Handle, TRANSPARENT);

      DrawText(Canvas.Handle, PChar(FWeekName), Length(FWeekName), r,
        DT_CENTER or DT_VCENTER or DT_SINGLELINE);

      Canvas.Brush.Color := Color;
      Canvas.Font.Assign(FWeekFont);

      SetBKMode(Handle, TRANSPARENT);

      fmd := DayOfWeek(EncodeDate(ye, mo, 1)) - StartDay;
      if fmd <= 0 then
        fmd := fmd + 7;

      //draw week numbers

      for i := 1 to 6 do
      begin
        sye := ye;
        if YearStartAt.StartMonth = 12 then Dec(sye);

        snye := ye + 1;
        if YearStartAt.NextYearStartMonth = 12 then Dec(snye);

        spye := ye - 1;
        if YearStartAt.PrevYearStartMonth = 12 then Dec(spye);

        d := Encodedate(ye, mo, 7 - fmd + 1);

        pcd := d + (i - 1) * 7;

        // compensate for week numbers of next / previous year

        if YearStartAt.StartMonth = 12 then
          pyd := EncodeDate(ye - 1, YearStartAt.StartMonth, YearStartAt.StartDay)
        else
          pyd := EncodeDate(ye, YearStartAt.StartMonth, YearStartAt.StartDay);

        if YearStartAt.NextYearStartMonth = 12 then
          pnd := EncodeDate(ye, YearStartAt.NextYearStartMonth,
            YearStartAt.NextYearStartDay)
        else
          pnd := EncodeDate(ye + 1, YearStartAt.NextYearStartMonth,
            YearStartAt.NextYearStartDay);

        {
        if YearStartAt.StartMonth = 1 then
          DayOffset := YearStartAt.StartDay
        else
          DayOffset := YearStartAt.StartDay - 31;
        }

        // year of rightmost day in calendar
        dye := GetYear(pcd);

        if ((dye = ye) and (pcd > pyd)) or ((pcd < pnd) and (mo = 12)) then
        begin
          dstr := IntToStr(1 + (round(d + (i - 1) * 7 - encodedate(sye,
            yearstartAt.StartMonth, yearStartAt.StartDay)) div 7));
        end
        else
        begin
          if dye > ye then
            dstr := IntToStr(1 + (round(d + (i - 1) * 7 - encodedate(snye,
              YearStartAt.NextYearStartMonth, YearStartAt.NextYearStartDay)) div 7));

          if dye <= ye then
            dstr := IntToStr(1 + (round(d + (i - 1) * 7 - encodedate(spye,
              YearStartAt.PrevYearStartMonth, YearStartAt.PrevYearStartDay)) div 7));
        end;

        with r do
        begin
          left := 0;
          right := dx;
          top := i * dy + yoffset - 2;
          bottom := r.top + dy - 2;
        end;
        DrawText(canvas.handle, PChar(dstr), length(dstr), r,
          DT_CENTER or DT_VCENTER or DT_SINGLELINE);
      end;
    end;

    //draw day names
    r.left := XOffset + 2;
    r.right := r.left + dx * 7 + 2;
    r.top := YOffset;
    r.bottom := r.top + dy - 8;

    if FLook = Look3D then
    begin
      Canvas.Brush.Color := FHeaderColor;
      Canvas.Rectangle(r.Left, r.Top, r.Right, r.Bottom);
      Frame3d(Canvas, r, clWhite, clGray, 1);
    end;

    Canvas.Font.Assign(FDayfont);
    SetBKMode(Handle, TRANSPARENT);

    for i := 1 to 7 do
    begin
      r.left := (i - 1) * dx + XOffset;
      r.right := r.left + dx;
      r.top := yoffset;
      r.bottom := r.top + dy - 8;
      dstr := FNameofDays.GetDay(i + startday - 1);
      DrawText(canvas.handle, PChar(dstr), length(dstr), r,
        DT_CENTER or DT_VCENTER or DT_SINGLELINE);
    end;

    Canvas.Brush.Color := self.Color;

    //draw line under days
    pen.color := clblack;
    moveto(xoffset + 0, dy - 5 + yoffset);
    lineto(xoffset + 7 * dx + 6, dy - 5 + yoffset);
    pen.color := clwhite;
    moveto(xoffset + 0, dy - 4 + yoffset);
    lineto(xoffset + 7 * dx + 6, dy - 4 + yoffset);
    pen.color := clblack;

    Self.Canvas.Font.Assign(FFont);
    OldStyle := Font.Style;

    SetBKMode(handle, TRANSPARENT);

    {draw day numbers}
    for i := 1 to 7 do
      for j := 1 to 6 do
      begin
        r.right := xoffset + i * dx + 2;
        r.top := j * dy + yoffset - 2;
        r.bottom := r.top + dy;
        r.left := r.right - dx + 2;

        Font.Style := OldStyle;

        if (fd >= (i + (j - 1) * 7)) then
        begin
          if FShowDaysBefore then
          begin
            d := EncodeDate(pye, pmo, daysinmonth(pmo, pye) - (fd - i));
            inlist := (DateCol.IsDateInList(d) <> -1) and FShowSelection;
            if inlist then
            begin
              Brush.Color := FSelectcolor;
              Pen.Color := FSelectcolor;
              Font.Color := FSelectFontColor;
              Fillrect(r);
            end
            else
              Brush.color := self.Color;

            IsEvent := HasEvent(d, EventDate);

            Font.Color := FInversColor;

            if IsEvent then
            begin
              Font.Style := [fsBold];
              Font.Color := FEventDayColor;
              if Assigned(EventDate) then
                PaintEventMarker(R, EventDate.Color, EventDate.Shape)
              else
                PaintEventMarker(R, FEventMarkerColor, FEventMarkerShape);
            end;

            if not CheckDateRange(d) then Font.Color := FInactiveColor;

            dstr := IntToStr(daysinmonth(pmo, pye) - (fd - i));

            SetBKMode(canvas.handle, TRANSPARENT);
            Drawtext(canvas.handle, PChar(dstr), length(dstr), r,
              DT_CENTER or DT_VCENTER or DT_SINGLELINE);

            Brush.Color := self.Color;
            Pen.Color := FTextcolor;
          end;
        end
        else
        begin
          if ((i + (j - 1) * 7 - fd) > DaysInMonth(mo, ye)) then
          begin
            if FShowDaysAfter then
            begin
              d := EncodeDate(nye, nmo, i + (j - 1) * 7 - fd - daysinmonth(mo, ye));
              Font.Color := FInversColor;
              Brush.Color := Color;
              inlist := (DateCol.IsDateInList(d) <> -1) and FShowSelection;
              if (inlist) then
              begin
                Brush.Color := FSelectColor;
                Pen.Color := FSelectColor;
                Font.Color := FSelectFontColor;
                FillRect(r);
              end;

              if not checkdaterange(d) then font.color := fInactiveColor;

              IsEvent := HasEvent(d, EventDate);

              if IsEvent then
              begin
                Font.Style := [fsBold];
                Font.Color := FEventDayColor;
                if Assigned(EventDate) then
                  PaintEventMarker(R, EventDate.Color, EventDate.Shape)
                else
                  PaintEventMarker(R, FEventMarkerColor, FEventMarkerShape);
              end;

              dstr := IntToStr(i + (j - 1) * 7 - fd - daysinmonth(mo, ye));
              SetBKMode(canvas.handle, TRANSPARENT);
              DrawText(canvas.handle, PChar(dstr), length(dstr), r,
                DT_CENTER or DT_VCENTER or DT_SINGLELINE);

              Brush.Color := self.Color;
              Pen.Color := FTextColor;
            end;  
          end
          else
          begin
            d := EncodeDate(ye, mo, (i + (j - 1) * 7 - fd));

            IsEvent := HasEvent(d, EventDate);

            if IsEvent then
            begin
              Font.Style := [fsBold];
              Font.Color := FEventDayColor;
              if Assigned(EventDate) then
                PaintEventMarker(R, EventDate.Color, EventDate.Shape)
              else
                PaintEventMarker(R, FEventMarkerColor, FEventMarkerShape);
            end;

            inlist := (DateCol.IsDateInList(d) <> -1) and (FShowSelection);
            if inlist then
            begin
              if inlist then
              begin
                Brush.Color := FSelectColor;
                Font.Color := FSelectFontColor;
              end
              else
              begin
                if (GetFocus = self.Handle) then
                begin
                  Brush.Color := FFocusColor;
                  Font.Color := FInversColor;
                  Pen.Color := FFocusColor;
                end
                else
                begin
                  Brush.Color := FSelectColor;
                  Font.Color := FSelectFontColor;
                  Pen.Color := FSelectColor;
                end;
              end;

              Fillrect(r);

              if fLook = Look3d then frame3d(canvas, r, clWhite, clGray, 1);
              Setbkmode(canvas.handle, TRANSPARENT);
              DrawText(canvas.handle, PChar(IntToStr(i + (j - 1) * 7 - fd)),
                length(IntToStr(i + (j - 1) * 7 - fd)), r, DT_CENTER or DT_VCENTER or DT_SINGLELINE);

              Brush.Color := self.Color;
              Pen.Color := FTextColor;
            end
            else
            begin //check to see if weekend day here
              if not IsEvent then
              begin
                if DayOfWeek(d) in [1, 7] then
                  Font.Color := FWeekendcolor
                else
                  Font.Color := FTextcolor;
              end;
              if not CheckDateRange(d) then
                Font.Color := FInactiveColor;
              if FLook = Look3d then
                Frame3d(canvas, r, clWhite, clGray, 1);
              SetBKMode(Canvas.handle, TRANSPARENT);
              Drawtext(Canvas.handle, PChar(IntToStr(i + (j - 1) * 7 - fd)),
                length(IntToStr(i + (j - 1) * 7 - fd)), r, DT_CENTER or DT_VCENTER or DT_SINGLELINE);
            end;
          end;
        end;

        if (GetFocus = self.Handle) and (da = i + (j - 1) * 7 - fd) then
        begin
          Pen.Color := clBlack;
          WinProcs.DrawFocusRect(Canvas.Handle, r);
        end;

        //draw current day in active color
        if (cda = i + (j - 1) * 7 - fd) and (cmo = mo) and (cye = ye) and FShowToday then
        begin
          Pen.Color := clgray;
          MoveTo(xoffset + (i - 1) * dx + 4, (j + 1) * dy - 4 + yoffset);
          LineTo(xoffset + (i - 1) * dx + 4, j * dy - 2 + yoffset);
          LineTo(xoffset + i * dx + 2, j * dy - 2 + yoffset);
          Pen.Color := clwhite;
          LineTo(xoffset + i * dx + 2, (j + 1) * dy - 4 + yoffset);
          LineTo(xoffset + (i - 1) * dx + 4, (j + 1) * dy - 4 + yoffset);
          Pen.Color := clblack;
        end;
      end;
  end;
end;

procedure TPlannerCalendar.SetDate(da, mo, ye: word);
var
  R: TRect;
  dt: TDateTime;
begin
  r := DateToRect(SelDate);

  dt := EncodeDate(ye, mo, da);
  TheDate := dt;
  SelDate := thedate;

  InvalidateRect(Handle, @r, False);

  SetLabel(mo, ye);
  InitDate := SelDate;
  DateCol.Clear;
  DateCol.Add.Date := seldate;

  Invalidate;
end;

procedure TPlannerCalendar.GetDate(var da, mo, ye: word);
begin
  DecodeDate(seldate, ye, mo, da);
end;

function TPlannerCalendar.GetDatesAsText: string;
var
  i: integer;
  s: string;
  Continuous: Boolean;
begin
  Continuous := False;
  s := '';
  with Dates do
  begin
    for i := 0 to Count - 2 do
    begin
      if Items[i].Date + 1 = Items[i + 1].Date then
      begin
        if not Continuous then
        begin
          s := s + DateToStr(Items[i].Date) + '-';
          Continuous := True;
        end
      end
      else
      begin
        s := s + DateToStr(Items[i].Date) + ',';
        Continuous := False;
      end;
    end;

    if Count > 0 then
      s := s + DateToStr(Items[Count - 1].Date);
  end;
  Result := s;
end;

procedure TPlannerCalendar.RepaintDate(dt: tdatetime);
var
  pt: TPoint;
  r: TRect;
begin
  pt := DateToXY(dt);
  if pt.x = 0 then pt.x := 7;
  r.top := yoffset + (pt.y) * dy - 2;
  r.bottom := r.top + dy;
  r.left := xoffset + (pt.x - 1) * dx;
  r.right := r.left + dx + 2;
  InvalidateRect(self.handle, @r, True);
end;

function TPlannerCalendar.DateToRect(dt: tdatetime): trect;
var
  pt: tpoint;
  r: trect;
begin
  pt := datetoxy(dt);
  if pt.x = 0 then pt.x := 7;
  r.top := yoffset + (pt.y) * dy - 2;
  r.bottom := r.top + dy;
  r.left := xoffset + (pt.x - 1) * dx;
  r.right := r.left + dx + 2;
  Result := r;
end;

function TPlannerCalendar.DateToXY(dt: tdatetime): tpoint;
var
  ye, mo, da: word;
  tmpdt: tdatetime;
  fd: integer;
  rx, ry: integer;

begin
  decodedate(thedate, ye, mo, da);

  tmpdt := encodedate(ye, mo, 1);  {first day of month}

  fd := dayofweek(tmpdt) - 1 - startday;

  if fd < 0 then fd := fd + 7;

  tmpdt := tmpdt - fd; {this is the first day of the calendar}
  fd := round(dt - tmpdt) + 1;

  rx := (fd mod 7);
  ry := (fd div 7) + 1;

  if (rx = 0) then
  begin
    rx := 7;
    dec(ry);
  end;
  Result.x := rx;
  Result.y := ry;
end;

function TPlannerCalendar.XYToDate(X, Y: integer; change: Boolean): tdatetime;
var
  ye, mo, da: word;
  xcal, ycal: integer;
  sda, fd: integer;
  tmpdt: tdatetime;
begin
  xposin := x;
  yposin := y;
  xcal := 0;
  ycal := 0;

  DecodeDate(seldate, ye, mo, da);

  tmpdt := EncodeDate(ye, mo, 1);

  fd := DayOfWeek(tmpdt) - 1 - StartDay;

  if (fd < 0) then fd := fd + 7;

  if (dx > 0) and (dy > 0) then
  begin
    xcal := x div dx;
    ycal := ((y - yoffset) - dy) div dy;
  end;

  if xcal > 6 then xcal := 6;
  if ycal > 5 then ycal := 5;

  sda := xcal + 7 * ycal - fd + 1;

  if sda < 1 then
  begin
    Dec(mo);
    if mo = 0 then
    begin
      mo := 12;
      Dec(ye);
    end;
    sda := DaysInMonth(mo, ye) + sda;
    if Change and FShowDaysBefore then
      ChangeMonth(-1);
  end;

  if sda > DaysInMonth(mo, ye) then
  begin
    sda := sda - DaysInMonth(mo, ye);
    Inc(mo);
    if mo > 12 then
    begin
      mo := 1;
      Inc(ye);
    end;
    if Change and FShowDaysAfter then
      ChangeMonth(+1);
  end;

  da := sda;
  Result := EncodeDate(ye, mo, da);
end;


procedure TPlannerCalendar.MouseMove(Shift: TShiftState; X, Y: integer);
var
  dt: TDateTime;
  newpt: TPoint;
  SelItem: TSelDateItem;

begin
  x := x - xoffset;

  if (x >= lblx1) and (x <= lblx3) and (y > 0) and (y < 15) and FMonthSelect then
  begin
    if not flgla then
    begin
      flgla := True;
      PaintLabel;
    end;
  end
  else if flgla then
  begin
    flgla := False;
    PaintLabel;
  end;

  if FBrowsers.FPrevMonth then
  begin
    if (x > 25) and (x < 35) and (y > 0) and (y < 15) then
    begin
      if not flgl then
      begin
        flgl := True;
        PaintArrowLeft;
      end;
    end
    else if flgl then
    begin
      flgl := False;
      PaintArrowLeft;
    end;
  end;

  if FBrowsers.FPrevYear then
  begin
    if (x > 5) and (x < 15) and (y > 0) and (y < 15) then
    begin
      if not dflgl then
      begin
        dflgl := True;
        PaintDblArrowLeft;
      end;
    end
    else if dflgl then
    begin
      dflgl := False;
      PaintDblArrowLeft;
    end;
  end;

  if FBrowsers.FNextMonth then
  begin
    if (x + xoffset > Width - 30) and (x + xoffset < Width - 15) and (y > 0) and (y < 15) then
    begin
      if not flgr then
      begin
        flgr := True;
        PaintArrowRight;
      end;
    end
    else if flgr then
    begin
      flgr := False;
      PaintArrowRight;
    end;
  end;

  if FBrowsers.FNextYear then
  begin
    if (x + xoffset > Width - 15) and (x + xoffset < Width - 5) and (y > 0) and (y < 15) then
    begin
      if dflgr = False then
      begin
        dflgr := True;
        self.PaintDblArrowRight;
      end;
    end
    else if dflgr then
    begin
      dflgr := False;
      PaintDblArrowRight;
    end;
  end;   

  EventHint := '';

  if (y > dy + yoffset) and (FEventHints or MouseSel) then
  begin
    dt := XYToDate(X, Y, False);

    SelItem := Events.Dates[dt];

    if Assigned(SelItem) then
      EventHint := SelItem.Hint;

    if (dx > 0) and (dy > 0) then
    begin
      newpt.x := x div dx;
      newpt.y := ((y - yoffset) - dy) div dy;
    end;

    if ((newpt.x <> flasthintpos.x) or
      (newpt.y <> flasthintpos.y)) and ShowHintBusy then
    begin
      Application.CancelHint;
      ShowHintbusy := False;
    end;

    FLastHintPos := newpt;

    if MouseSel and (MovDate <> dt) and CheckDateRange(dt) then
    begin
      if MovDate <> -1 then
        DateCol.DelRange(clkdate, movdate);
      MovDate := dt;
      DateCol.AddRange(clkdate, movdate);
    end;
  end;
end;

procedure TPlannerCalendar.MouseDown(Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
var
  ye, da, omo, nmo: word;
  lidx: integer;
  origdate: TDatetime;
  r: TRect;
  flg: Boolean;

begin
  if Button <> mbLeft then
    Exit;

  origdate := seldate;
  xposin := $7fff;
  yposin := $7fff;

  if not (GetFocus = self.Handle) then
    SetFocus;

  x := x - xoffset;

  if (x >= lblx1) and (x <= lblx2) and (y > 0) and (y < 15) then
  begin
    DoMonthPopup;
    Exit;
  end;

  if (x >= lblx2) and (x <= lblx3) and (y > 0) and (y < 15) then
  begin
    DoYearPopup;
    Exit;
  end;

  flg := False;

  if FBrowsers.FPrevMonth then
    if (x > 25) and (x < 35) and (y > 0) and (y < 15) then
    begin
      ChangeMonth(-1);
      flg := True;
    end;

  if FBrowsers.FPrevYear then
    if (x > 5) and (x < 15) and (y > 0) and (y < 15) then
    begin
      ChangeYear(-1);
      flg := True;
    end;

  if FBrowsers.FNextMonth then
    if (x + xoffset > Width - 30) and (x + xoffset < Width - 20) and
      (y > 0) and (y < 15) then
    begin
      ChangeMonth(1);
      flg := True;
    end;

  if FBrowsers.FNextYear then
    if (x + xoffset > Width - 15) and (x + xoffset < Width - 5) and
      (y > 0) and (y < 15) then
    begin
      ChangeYear(1);
      flg := True;
    end;

  if flg then
  begin
    DiffCheck(origdate, seldate);
    Exit;
  end;

  if FMultiSelect then
    MouseSel := True;

  movdate := -1;

  SetCapture(Handle);

  if (y > 15) and (y < dy + YOffset) and
    (x > 0) and FAllDaySelect and FMultiSelect then
  begin
    ClkDate := XYToDate(x, dy + YOffset, False);
    DateCol.Clear;
    for lidx := 1 to 6 do
      with DateCol.Add do Date := ClkDate + (lidx - 1) * 7;
    if Assigned(FOnAllDaySelect) then
      FOnAllDaySelect(Self);
  end;

  if (x < 0) and (y > dy + yoffset) and
    FShowWeeks and FWeekSelect and FMultiSelect then
  begin
    ClkDate := XYToDate(XOffset, y, False);
    DateCol.Clear;
    DateCol.AddRange(ClkDate - 1, ClkDate + 5);

    if Assigned(FOnWeekSelect) then
      FOnWeekSelect(Self);
  end;


  if (y > dy + yoffset) and (x > 0) then
  begin
    ClkDate := XYToDate(X, Y, True);

    if (GetMonth(ClkDate) > GetMonth(SelDate)) and not FShowDaysAfter then
    begin
      Exit;
    end;

    if (GetMonth(ClkDate) < GetMonth(SelDate)) and not FShowDaysBefore then
    begin
      Exit;
    end;

    if not CheckDateRange(clkdate) then
      Exit;

    lidx := Datecol.IsDateInList(origdate);

    if (GetKeyState(VK_CONTROL) and $8000 = $8000) and FMultiSelect then
    begin
      lidx := DateCol.IsDateInList(clkdate);
      if lidx = -1 then
      begin
        with DateCol.Add do
          Date := ClkDate;
        SelDate := ClkDate;
      end
      else
      begin
        origdate := DateCol.items[lidx].Date;
        DateCol.items[lidx].Free;
      end;
    end
    else
    begin
      if (lidx<>-1) then
        DateCol.items[lidx].Free;
      seldate := clkdate;
      thedate := seldate;
      datecol.Clear;
      lidx := datecol.IsDateInList(SelDate);
      if (lidx = -1) then
      begin
        with DateCol.Add do
          Date := seldate;
      end;
    end;

    DecodeDate(clkdate, ye, nmo, da);
    DecodeDate(origdate, ye, omo, da);

    if omo = nmo then
    begin
      r := DateToRect(origdate);
      InvalidateRect(self.Handle, @r, True);
      r := DatetoRect(thedate);
      InvalidateRect(self.Handle, @r, True);
    end
    else
      Dopaint;

    SetLabel(nmo, ye);
    DiffCheck(origdate, seldate);
  end;
end;

procedure TPlannerCalendar.MouseUp(Button: TMouseButton;
  Shift: TShiftState; X, Y: integer);
begin
  mousesel := False;

  ReleaseCapture;

  if Button = mbRight then
    SelDate := initdate;

  x := x - xoffset;

  if (Abs(x - xposin) < 4) and (Abs(y - yposin) < 4) then
  begin
    if Assigned(FOnDaySelect) then
      FOnDaySelect(Self, SelDate);
  end;
end;

procedure TPlannerCalendar.Paint;
var
  r,captionR: TRect;
  xo, yo: integer;
  hrgn: THandle;

  function Max(a, b: integer): integer;
  begin
    if a > b then
      Result := a
    else
      Result := b;
  end;

begin
  Caption := '';

  inherited Paint;

  if FUpdateCount > 0 then
    Exit;

  r := ClientRect;
  InflateRect(r, - BevelWidth - BorderWidth, - BevelWidth - BorderWidth);

  {$IFDEF USEIMAGE}
  if Assigned(FImage) then
  begin
    if not FImage.Empty then
      case FBackgroundPosition of
        bpTopLeft: Canvas.Draw(r.Left, r.Top, FImage);
        bpTopRight: Canvas.Draw(Max(r.Left, Width - FImage.Width - BevelWidth), r.Top, FImage);
        bpBottomLeft: Canvas.Draw(r.Left, Max(r.top, Height - FImage.Height - BevelWidth),
            fImage);
        bpBottomRight: Canvas.Draw(Max(r.Left, Width - FImage.Width - BevelWidth),
            Max(r.top, Height - fImage.Height - BevelWidth), fImage);
        bpCenter: Canvas.Draw(Max(r.Left, Width - FImage.Width - BevelWidth) shr 1,
            Max(r.top, Height - fImage.Height - BevelWidth) shr 1, fImage);
        bpTiled:
        begin
          hrgn := CreateRectRgn(r.Left, r.Top, r.Right, r.Bottom);
          SelectClipRgn(Canvas.Handle, hrgn);

          yo := r.Top;
          while yo < r.Bottom do
          begin
            xo := r.Left;
            while xo < r.Right do
            begin
              Canvas.Draw(xo, yo, FImage);
              xo := xo + FImage.Width;
            end;
            yo := yo + FImage.Height;
          end;

          SelectClipRgn(Canvas.Handle, 0);
          DeleteObject(hrgn);
        end;
        bpStretched: Canvas.StretchDraw(r, FImage);
      end;
  end;
  {$ENDIF}

  if CaptionColor <> clNone then
  begin
    captionR.Top := 0;
    captionR.Left := 0;
    captionR.Right := Width;
    Canvas.Font.Assign(Font);
    captionR.Bottom := Canvas.TextHeight('X') + 1;
    Canvas.Brush.Color := CaptionColor;
    Canvas.Pen.Color := clGray;
    Canvas.Rectangle(captionR.Left,captionR.Top,captionR.Right,captionR.Bottom);
    Canvas.Pen.Color := clWhite;
    Canvas.MoveTo(captionR.Left,captionR.Bottom);
    Canvas.LineTo(captionR.Left,captionR.Top);
    Canvas.LineTo(captionR.Right,captionR.Top);
  end;

  PaintProc;
end;

procedure TPlannerCalendar.KeyPress(var Key: char);
begin
  if (key = #27) then seldate := initdate;
  inherited;
end;

procedure TPlannerCalendar.CMMouseLeave(var Message: TMessage);
var
  r: trect;
begin
  inherited;
  if flgl or flgr or flgla or dflgl or dflgr then
  begin
    flgl := False;
    flgr := False;
    flgla := False;
    dflgl := False;
    dflgr := False;
    r := getclientrect;
    r.bottom := (r.bottom - r.top) div 7;
    invalidaterect(self.handle, @r, True);
  end;
end;

procedure TPlannerCalendar.CMWantSpecialKey(var Msg: TCMWantSpecialKey);
begin
  inherited;
  if msg.CharCode in [vk_up, vk_down, vk_left, vk_right] then
    msg.Result := 1;
end;

procedure TPlannerCalendar.WMKeyDown(var Msg: TWMKeydown);
var
  da, nmo, omo, ye: word;
  origdate: tdatetime;
  dt: tdatetime;
  pt: tpoint;
  r: trect;
  lidx: integer;

begin
  inherited;
  origdate := SelDate;
  pt := DateToXY(seldate);

  DecodeDate(thedate, ye, omo, da);
  case msg.charcode of
    vk_left: dt := thedate - 1;
    vk_right: dt := thedate + 1;
    vk_up: dt := thedate - 7;
    vk_down: dt := thedate + 7;
    else 
      dt := thedate;
  end;

  if (GetMonth(dt) > GetMonth(SelDate)) and not FShowDaysAfter then
  begin
    if Assigned(FOnCancelledChange) then
      FOnCancelledChange(Self, dt);
    Exit;
  end;


  if (GetMonth(dt) < GetMonth(SelDate)) and not FShowDaysBefore then
  begin
    if Assigned(FOnCancelledChange) then
      FOnCancelledChange(Self, dt);
    Exit;
  end;

  if CheckDateRange(dt) then
    thedate := dt
  else
    Exit;

  if Msg.Charcode = VK_SPACE then
  begin
    lidx := datecol.isdateinlist(thedate);
    if (lidx = -1) then
    begin
      if not FMultiSelect then datecol.Clear;
      with DateCol.Add do
        Date := thedate;
    end
    else 
      datecol.Items[lidx].Free;
    RepaintDate(thedate);
  end;

  if msg.charcode in [vk_up, vk_down, vk_left, vk_right] then
  begin
    Seldate := thedate;
    Decodedate(thedate, ye, nmo, da);
    SetLabel(nmo, ye);

    if (GetKeyState(VK_SHIFT) and $8000 = $8000) and (FMultiSelect) then
    begin
      if movdate = -1 then
      begin
        clkdate := origdate;
        DateCol.AddRange(clkdate, seldate);
        MovDate := SelDate;
      end
      else
      begin
        datecol.StartUpdate;
        datecol.DelRange(clkdate, origdate);
        datecol.AddRange(clkdate, seldate);
        datecol.StopUpdate;
      end;
    end
    else
    begin
      movdate := -1;
    end;

    if omo = nmo then
    begin
      pt := datetoxy(origdate);
      if pt.x = 0 then pt.x := 7;
      r.top := yoffset + (pt.y) * dy - 2;
      r.bottom := r.top + dy;
      r.left := xoffset + (pt.x - 1) * dx;
      r.right := r.left + dx + 2;
      invalidaterect(self.handle, @r, True);
      pt := datetoxy(thedate);
      if pt.x = 0 then pt.x := 7;
      r.top := yoffset + (pt.y) * dy - 2;
      r.bottom := r.top + dy;
      r.left := xoffset + (pt.x - 1) * dx;
      r.right := r.left + dx + 2;
      invalidaterect(self.handle, @r, True);
    end
    else
      Dopaint;
  end;

  if msg.charcode = VK_PRIOR then
  begin
    Self.Changemonth(-1);
  end;
  if msg.charcode = VK_NEXT then
  begin
    Self.Changemonth(+1);
  end;

  if msg.charcode in [vk_right, vk_up, vk_down, vk_left, vk_prior, vk_next] then
  begin
    if Assigned(FOnDateChange) then
      FOnDateChange(self, origdate, seldate);
  end;

  DiffCheck(origdate, seldate);

  if Msg.CharCode in [vk_up, vk_left, vk_right, vk_down, vk_next, vk_prior] then
    Msg.Result := 0;
end;

procedure TPlannerCalendar.BeginUpdate;
begin
  Inc(FUpdateCount);
end;

procedure TPlannerCalendar.EndUpdate;
begin
  if FUpdateCount > 0 then
  begin
    Dec(FUpdateCount);
    if FUpdateCount = 0 then
      Invalidate;
  end;
end;

procedure TPlannerCalendar.ResetUpdate;
begin
  FUpdateCount := 0;
end;


{ TNameOfDays }

procedure TNameOfDays.Changed;
begin
  if Assigned(FOnChange) then
    FOnChange(Self);
end;

constructor TNameOfDays.Create;
begin
  inherited Create;
  InitIntl;
end;

destructor TNameOfDays.Destroy;
begin
  inherited Destroy;
end;

function TNameOfDays.GetDay(i: integer): string;
begin
  case i of
    1, 8: Result := FMonday;
    2, 9: Result := FTuesday;
    3, 10: Result := FWednesday;
    4, 11: Result := FThursday;
    5, 12: Result := FFriday;
    6, 13: Result := FSaturday;
    7, 14: Result := FSunday;
    else
      Result := '';
  end;
end;

procedure TNameOfDays.InitIntl;
begin
  FSunday := ShortDayNames[1];
  FMonday := ShortDayNames[2];
  FTuesday := ShortDayNames[3];
  FWednesday := ShortDayNames[4];
  FThursday := ShortDayNames[5];
  FFriday := ShortDayNames[6];
  FSaturday := ShortDayNames[7];
  Changed;
end;

procedure TNameOfDays.SetFriday(const Value: TDayStr);
begin
  FFriday := Value;
  Changed;
end;

procedure TNameOfDays.SetMonday(const Value: TDayStr);
begin
  FMonday := Value;
  Changed;
end;

procedure TNameOfDays.SetSaturday(const Value: TDayStr);
begin
  FSaturday := Value;
  Changed;
end;

procedure TNameOfDays.SetSunday(const Value: TDayStr);
begin
  FSunday := Value;
  Changed;
end;

procedure TNameOfDays.SetThursday(const Value: TDayStr);
begin
  FThursday := Value;
  Changed;
end;

procedure TNameOfDays.SetTuesday(const Value: TDayStr);
begin
  FTuesday := Value;
  Changed;
end;

procedure TNameOfDays.SetUseIntlNames(const Value: Boolean);
begin
  FUseIntlNames := Value;
  if FUseIntlNames then InitIntl;
end;

procedure TNameOfDays.SetWednesday(const Value: TDayStr);
begin
  FWednesday := Value;
  Changed;
end;

{ TNameOfMonths }

constructor TNameofMonths.Create;
begin
  inherited Create;
  InitIntl;
end;

destructor TNameOfMonths.Destroy;
begin
  inherited Destroy;
end;

procedure TNameOfMonths.Changed;
begin
  if Assigned(FOnChange) then
    FOnChange(Self);
end;

procedure TNameOfMonths.InitIntl;
begin
  FJanuary := ShortMonthNames[1];
  FFebruary := ShortMonthNames[2];
  FMarch := ShortMonthNames[3];
  FApril := ShortMonthNames[4];
  FMay := ShortMonthNames[5];
  FJune := ShortMonthNames[6];
  FJuly := ShortMonthNames[7];
  FAugust := ShortMonthNames[8];
  FSeptember := ShortMonthNames[9];
  FOctober := ShortMonthNames[10];
  FNovember := ShortMonthNames[11];
  FDecember := ShortMonthNames[12];
  Changed;
end;

procedure TNameOfMonths.SetUseIntlNames(const Value: Boolean);
begin
  FUseIntlNames := Value;
  if FUseIntlNames then InitIntl;
end;

function TNameOfMonths.GetMonth(i: integer): string;
begin
  case i of
    1: Result := FJanuary;
    2: Result := FFebruary;
    3: Result := FMarch;
    4: Result := FApril;
    5: Result := FMay;
    6: Result := FJune;
    7: Result := FJuly;
    8: Result := FAugust;
    9: Result := FSeptember;
    10: Result := FOctober;
    11: Result := FNovember;
    12: Result := FDecember;
    else
      Result := '';
  end;
end;

procedure TNameofMonths.SetApril(const Value: TMonthStr);
begin
  FApril := Value;
  Changed;
end;

procedure TNameofMonths.SetAugust(const Value: TMonthStr);
begin
  FAugust := Value;
  Changed;
end;

procedure TNameofMonths.SetDecember(const Value: TMonthStr);
begin
  FDecember := Value;
  Changed;
end;

procedure TNameofMonths.SetFebruary(const Value: TMonthStr);
begin
  FFebruary := Value;
  Changed;
end;

procedure TNameofMonths.SetJanuary(const Value: TMonthStr);
begin
  FJanuary := Value;
  Changed;
end;

procedure TNameofMonths.SetJuly(const Value: TMonthStr);
begin
  FJuly := Value;
  Changed;
end;

procedure TNameofMonths.SetJune(const Value: TMonthStr);
begin
  FJune := Value;
  Changed;
end;

procedure TNameofMonths.SetMarch(const Value: TMonthStr);
begin
  FMarch := Value;
  Changed;
end;

procedure TNameofMonths.SetMay(const Value: TMonthStr);
begin
  FMay := Value;
  Changed;
end;

procedure TNameofMonths.SetNovember(const Value: TMonthStr);
begin
  FNovember := Value;
  Changed;
end;

procedure TNameofMonths.SetOctober(const Value: TMonthStr);
begin
  FOctober := Value;
  Changed;
end;

procedure TNameofMonths.SetSeptember(const Value: TMonthStr);
begin
  FSeptember := Value;
  Changed;  
end;

constructor TYearStartAt.Create(AOwner: TCustomCalendarPanel);
begin
  inherited Create;
  FStartDay := 1;
  FStartMonth := 1;
  FOwner := AOwner;
  NextYearStartDay := 1;
  NextYearStartMonth := 1;
  PrevYearStartDay := 1;
  PrevYearStartMonth := 1;
end;

destructor TYearStartAt.Destroy;
begin
  inherited Destroy;
end;

procedure TYearStartAt.SetNextYearStartDay(d: integer);
begin
  if not ValidateDay(d) then
    Exit;
  FNextYearStartDay := d;
  FOwner.UpdateYearStart;
end;

procedure TYearStartAt.SetNextYearStartMonth(m: integer);
begin
  if not ValidateMonth(m) then
    Exit;
  FNextYearStartMonth := m;
  FOwner.UpdateYearStart;
end;

procedure TYearStartAt.SetPrevYearStartDay(d: integer);
begin
  if not ValidateDay(d) then
    Exit;
  FPrevYearStartDay := d;
  FOwner.UpdateYearStart;
end;

procedure TYearStartAt.SetPrevYearStartMonth(m: integer);
begin
  if not ValidateMonth(m) then
    Exit;
  FPrevYearStartMonth := m;
  FOwner.UpdateYearStart;
end;

procedure TYearStartAt.SetStartDay(d: integer);
begin
  if not ValidateDay(d) then
    Exit;
  FStartDay := d;
  FOwner.UpdateYearStart;
end;

procedure TYearStartAt.SetStartMonth(m: integer);
begin
  if not ValidateMonth(m) then
    Exit;
  FStartMonth := m;
  FOwner.UpdateYearStart;
end;

function TYearStartAt.ValidateDay(d: integer): Boolean;
begin
  Result := True;
  if (d <= 0) or (d > 31) then
  begin
    Messagedlg('Invalid day. Should be in [1..31]', mtError, [mbOK], 0);
    Result := False;
  end;
end;

function TYearStartAt.ValidateMonth(m: integer): Boolean;
begin
  Result := True;
  if (m <= 0) or (m > 12) then
  begin
    MessageDlg('Invalid month. Should be in [1..12]', mtError, [mbOK], 0);
    Result := False;
  end;
end;

function TPlannerCalendar.GetDateProc: TDatetime;
begin
  Result := SelDate;
end;

procedure TPlannerCalendar.SetDateProc(const Value: TDatetime);
begin
  DecodeDate(Value, FYear, FMonth, FDay);
  SetDate(FDay, FMonth, FYear);
end;

procedure TPlannerCalendar.SetDateCol(const Value: TSelDateItems);
begin
  DateCol.Assign(Value);
  DateCol.DoPaint;
end;

function TPlannerCalendar.GetDateCol: TSelDateItems;
var
  d: tdatetime;
  i: integer;
  sorted: Boolean;
begin
  //sort the list
  repeat
    sorted := True;
    for i := 2 to datecol.Count do
    begin
      if (datecol.items[i - 2].Date > datecol.items[i - 1].Date) then
      begin
        d := datecol.items[i - 2].date;
        datecol.items[i - 2].date := datecol.items[i - 1].date;
        datecol.items[i - 1].date := d;
        sorted := False;
      end;
    end;
  until sorted;

  Result := Datecol;
end;

procedure TPlannerCalendar.DoPaint;
begin
  InvalidateRect(Handle, nil, False);
end;

procedure TPlannerCalendar.DoMonthPopup;
var
  popmenu: THandle;
  buf: array[0..128] of char;
  pt: TPoint;
  ye, mo, da: word;
  flg: integer;
begin
  pt := ClientToScreen(point(0, 0));
  popmenu := CreatePopupMenu;

  DecodeDate(seldate, ye, mo, da);

  if not checkdaterange(encodedate(ye, 1, 1)) then flg := MF_GRAYED 
  else 
    flg := 0;
  InsertMenu(popmenu, $FFFFFFFF, MF_BYPOSITION or flg, 1,
    PChar(strpcopy(buf, fnameofmonths.january)));
  if not checkdaterange(encodedate(ye, 2, 1)) then flg := MF_GRAYED 
  else 
    flg := 0;
  InsertMenu(popmenu, $FFFFFFFF, MF_BYPOSITION or flg, 2,
    PChar(strpcopy(buf, fnameofmonths.february)));
  if not checkdaterange(encodedate(ye, 3, 1)) then flg := MF_GRAYED 
  else 
    flg := 0;
  InsertMenu(popmenu, $FFFFFFFF, MF_BYPOSITION or flg, 3,
    PChar(strpcopy(buf, fnameofmonths.march)));
  if not checkdaterange(encodedate(ye, 4, 1)) then flg := MF_GRAYED 
  else 
    flg := 0;
  InsertMenu(popmenu, $FFFFFFFF, MF_BYPOSITION or flg, 4,
    PChar(strpcopy(buf, fnameofmonths.april)));
  if not checkdaterange(encodedate(ye, 5, 1)) then flg := MF_GRAYED 
  else 
    flg := 0;
  InsertMenu(popmenu, $FFFFFFFF, MF_BYPOSITION or flg, 5,
    PChar(strpcopy(buf, fnameofmonths.may)));
  if not checkdaterange(encodedate(ye, 6, 1)) then flg := MF_GRAYED 
  else 
    flg := 0;
  InsertMenu(popmenu, $FFFFFFFF, MF_BYPOSITION or flg, 6,
    PChar(strpcopy(buf, fnameofmonths.june)));
  if not checkdaterange(encodedate(ye, 7, 1)) then flg := MF_GRAYED 
  else 
    flg := 0;
  InsertMenu(popmenu, $FFFFFFFF, MF_BYPOSITION or flg, 7,
    PChar(strpcopy(buf, fnameofmonths.july)));
  if not checkdaterange(encodedate(ye, 8, 1)) then flg := MF_GRAYED 
  else 
    flg := 0;
  InsertMenu(popmenu, $FFFFFFFF, MF_BYPOSITION or flg, 8,
    PChar(strpcopy(buf, fnameofmonths.august)));
  if not checkdaterange(encodedate(ye, 9, 1)) then flg := MF_GRAYED 
  else 
    flg := 0;
  InsertMenu(popmenu, $FFFFFFFF, MF_BYPOSITION or flg, 9,
    PChar(strpcopy(buf, fnameofmonths.september)));
  if not checkdaterange(encodedate(ye, 10, 1)) then flg := MF_GRAYED 
  else 
    flg := 0;
  InsertMenu(popmenu, $FFFFFFFF, MF_BYPOSITION or flg, 10,
    PChar(strpcopy(buf, fnameofmonths.october)));
  if not checkdaterange(encodedate(ye, 11, 1)) then flg := MF_GRAYED 
  else 
    flg := 0;
  InsertMenu(popmenu, $FFFFFFFF, MF_BYPOSITION or flg, 11,
    PChar(strpcopy(buf, fnameofmonths.november)));
  if not checkdaterange(encodedate(ye, 12, 1)) then flg := MF_GRAYED 
  else 
    flg := 0;
  InsertMenu(popmenu, $FFFFFFFF, MF_BYPOSITION or flg, 12,
    PChar(strpcopy(buf, fnameofmonths.december)));

  TrackPopupMenu(popmenu, TPM_LEFTALIGN or TPM_LEFTBUTTON, pt.x + lblx1 + xoffset,
    pt.y, 0, self.handle, nil);

  DestroyMenu(popmenu);
end;

procedure TPlannerCalendar.DoYearPopup;
var
  popmenu: THandle;
  pt: TPoint;
  i: integer;
  ye, mo, da: word;
  flg: integer;

begin
  pt := ClientToScreen(point(0, 0));
  popmenu := CreatePopupMenu;
  Decodedate(thedate, ye, mo, da);
  if (mo = 2) and (da = 29) then da := 28;

  for i := 1 to 10 do
  begin
    if CheckDateRange(EncodeDate(i + ye - 5, mo, da)) then
      flg := 0
    else
      flg := MF_GRAYED;
    InsertMenu(popmenu, $FFFFFFFF, MF_BYPOSITION or flg, i + 15,
      PChar(IntToStr(i + ye - 5)));
  end;

  TrackPopupMenu(popmenu, TPM_LEFTALIGN or TPM_LEFTBUTTON, pt.x + lblx2 + xoffset,
    pt.y, 0, self.handle, nil);

  DestroyMenu(popmenu);
end;

procedure TPlannerCalendar.WMCommand(var Message: TWMCommand);
var
  ye, mo, da: word;
  origdate: TDateTime;
begin
  if (message.itemid <= 12) and (message.itemid >= 1) then
  begin
    origdate := seldate;
    DecodeDate(thedate, ye, mo, da);
    mo := Message.ItemId;
    thedate := EncodeDate(ye, mo, 1);
    SelDate := thedate;
    SetLabel(mo, ye);
    DoPaint;
    DoChangeMonth(origdate, seldate);
  end;

  if (message.itemid >= 15) and (message.itemid <= 25) then
  begin
    Origdate := SelDate;
    DecodeDate(thedate, ye, mo, da);
    ye := ye + Message.itemid - 20;
    if (mo = 2) and (da = 29) then da := 28;
    thedate := EncodeDate(ye, mo, da);
    seldate := thedate;
    SetLabel(mo, ye);
    DoPaint;
    DoChangeYear(origdate, seldate);
  end;

  inherited;
end;


{ TSelDateItems }

function TSelDateItems.Add: TSelDateItem;
begin
  Result := TSelDateItem(inherited Add);
  Result.Color := FOwner.EventMarkerColor;
  Result.Shape := FOwner.EventMarkerShape;
end;

constructor TSelDateItems.Create(AOwner: TCustomCalendarPanel);
begin
  inherited Create(TSelDateItem);
  FOwner := AOwner;
  FVisible := True;
end;

function TSelDateItems.GetItem(Index: integer): TSelDateItem;
begin
  Result := TSelDateItem(inherited GetItem(Index));
end;

function TSelDateItems.Insert(Index: integer): TSelDateItem;
begin
  {$IFDEF DELPHI4_LVL}
  Result := TSelDateItem(inherited Insert(Index));
  {$ELSE}
  Result := TSelDateItem(inherited Add);
  {$ENDIF}
end;

function TSelDateItems.IsInList(da, mo, ye: integer): integer;
var
  i: integer;
  dt: TDateTime;
begin
  Result := -1;
  dt := EncodeDate(ye, mo, da);
  for i := 1 to Count do
  begin
    if dt = Items[i - 1].Date then
    begin
      Result := i - 1;
      Break;
    end;
  end;
end;

function TSelDateItems.IsDateInList(dt: TDateTime): integer;
var
  i: integer;
begin
  Result := -1;
  for i := 1 to Count do
  begin
    if Trunc(dt) = Trunc(Items[i - 1].Date) then
    begin
      Result := i - 1;
      Break;
    end;
  end;
end;

procedure TSelDateItems.SetItem(Index: integer; Value: TSelDateItem);
begin
  inherited SetItem(Index, Value);
end;

procedure TSelDateItems.AddRange(dt1, dt2: TDateTime);
var
  swp: TDateTime;
begin
  if dt1 > dt2 then
  begin
    swp := dt1;
    dt1 := dt2;
    dt2 := swp;
  end;
  while dt1 <= dt2 do
  begin
    if IsDateInList(dt1) = -1 then
      with Add do Date := dt1;
    dt1 := dt1 + 1;
  end;
end;

procedure TSelDateItems.AddRangeSC(dt1, dt2: TDateTime; Shp: TEventShape; Clr: TColor); // New method
var
  swp: TDateTime;
begin
  if dt1 > dt2 then
  begin
    swp := dt1;
    dt1 := dt2;
    dt2 := swp;
  end;
  while dt1 <= dt2 do
  begin
    if IsDateInList(dt1) = -1 then
      with Add do begin 
        Date := dt1;
        Shape := Shp;	 // Added!
        Color := Clr;  // Added!
       end; 
    dt1 := dt1 + 1;
  end;
end;


procedure TSelDateItems.DelRange(dt1, dt2: TDateTime);
var
  swp: TDateTime;
  lidx: integer;
begin
  if dt1 > dt2 then
  begin
    swp := dt1;
    dt1 := dt2;
    dt2 := swp;
  end;

  while dt1 <= dt2 do
  begin
    lidx := IsDateInList(dt1);
    if lidx <> -1 then
      items[lidx].Free;
    dt1 := dt1 + 1;
  end;
end;

procedure TSelDateItems.StartUpdate;
begin
  Inc(FUpdateCount);
end;

procedure TSelDateItems.DoPaint;
begin
  if FUpdateCount = 0 then
    FOwner.Dopaint;
end;

procedure TSelDateItems.StopUpdate;
begin
  if FUpdateCount > 0 then
  begin
    Dec(FUpdateCount);
    if FUpdateCount = 0 then
      FOwner.Dopaint;
  end;
end;

function TSelDateItems.GetDate(dt: TDateTime): TSelDateItem;
var
  i: integer;
begin
  Result := nil;
  for i := 1 to Count do
  begin
    if Trunc(dt) = Trunc(Items[i - 1].Date) then
    begin
      Result := Items[i - 1];
      Break;
    end;
  end;
end;

procedure TSelDateItems.AddRangeHint(dt1, dt2: TDateTime; Hint: string);
var
  swp: TDateTime;
  SelItem: TSelDateItem;
begin
  if dt1 > dt2 then
  begin
    swp := dt1;
    dt1 := dt2;
    dt2 := swp;
  end;

  while dt1 <= dt2 do
  begin
    SelItem := Dates[dt1];
    if Assigned(SelItem) then
    begin
      if SelItem.Hint <> '' then
        SelItem.Hint := SelItem.Hint + #13 + Hint
      else
        SelItem.Hint := Hint;
    end
    else
    begin
      SelItem := Add;
      SelItem.Date := dt1;
      SelItem.Hint := Hint;
    end;
    dt1 := dt1 + 1;
  end;
end;

procedure TSelDateItems.AddRangeHintSC(dt1, dt2: TDateTime; Hint: string; Shp: TEventShape; Clr: TColor); // New method
var
  swp: TDateTime;
  SelItem: TSelDateItem;
begin
  if dt1 > dt2 then
  begin
    swp := dt1;
    dt1 := dt2;
    dt2 := swp;
  end;

  while dt1 <= dt2 do
  begin
    SelItem := Dates[dt1];
    if Assigned(SelItem) then
    begin
      if SelItem.Hint <> '' then
        SelItem.Hint := SelItem.Hint + #13 + Hint
      else
        SelItem.Hint := Hint;
      SelItem.Shape := Shp;  // Added!
      SelItem.Color := Clr;  // Added!
    end
    else
    begin
      SelItem := Add;
      SelItem.Date := dt1;
      SelItem.Hint := Hint;
      SelItem.Shape := Shp;  // Added!
      SelItem.Color := Clr;  // Added!
    end;
    dt1 := dt1 + 1;
  end;
end;

procedure TSelDateItems.Update(Item: TCollectionItem);
begin
  inherited;
  if Assigned(FOnChange) then
    FOnChange(Self);
end;

procedure TSelDateItems.RepaintDate(ADate: TDateTime);
begin
  if not FVisible then Exit;

  if FOwner.HandleAllocated then
    FOwner.RepaintDate(ADate);
end;

{ TSelDateItem }

procedure TSelDateItem.Assign(Source: TPersistent);
begin
  Color := TSelDateItem(Source).Color;
  Date := TSelDateItem(Source).Date;
  Hint := TSelDateItem(Source).Hint;
  Shape := TSelDateItem(Source).Shape;
end;

destructor TSelDateItem.Destroy;
begin
  (Collection as TSelDateItems).RepaintDate(FDate);
  inherited;
end;

procedure TSelDateItem.SetColor(const Value: TColor);
begin
  FColor := Value;
  (Collection as TSelDateItems).Fowner.RepaintDate(FDate);
end;

procedure TSelDateItem.SetDate(const Value: TDateTime);
begin
  if Value <> FDate then
  begin
    FDate := Value;
    (Collection as TSelDateItems).FOwner.RepaintDate(FDate);
  end;
end;

procedure TSelDateItem.SetEventShape(const Value: TEventShape);
begin
  FEventShape := Value;
  (Collection as TSelDateItems).FOwner.RepaintDate(FDate);
end;

{ TMinMaxDate }

constructor TMinMaxDate.Create(aOwner: TPlannerCalendar);
begin
  inherited Create;
  FOwner := AOwner;
end;

procedure TMinMaxDate.SetDay(avalue: smallint);
begin
  FDay := AValue;
  FOwner.Invalidate;
end;

procedure TMinMaxDate.SetMonth(avalue: smallint);
begin
  FMonth := AValue;
  FOwner.Invalidate;
end;

procedure TMinMaxDate.SetUse(avalue: Boolean);
begin
  Fuse := AValue;
  FOwner.Invalidate;
end;

procedure TMinMaxDate.SetYear(avalue: smallint);
begin
  FYear := AValue;
  FOwner.Invalidate;
end;

{$IFDEF USEIMAGE}
procedure TPlannerCalendar.SetBackgroundPosition(const Value: TBackgroundPosition);
begin
  FBackgroundPosition := Value;
  Invalidate;
end;

procedure TPlannerCalendar.SetImage(const Value: TAdvImage);
begin
  FImage.Assign(Value);
  Invalidate;
end;

procedure TPlannerCalendar.BackgroundChanged(Sender: TObject);
begin
  Invalidate;
  Changed;
end;
{$ENDIF}

function TPlannerCalendar.HasEvent(dt: TDateTime; var EventItem: TSelDateItem): Boolean;
var
  IsEvent: Boolean;
  l: integer;
begin
  EventItem := nil;

  IsEvent := False;
  EventHint := '';

  if Assigned(FOnGetDateEvent) then
    FOnGetDateEvent(Self, dt, IsEvent);

  if FEventHints and IsEvent then
  begin
    if Assigned(FOnGetDateEventHint) then
      FOnGetDateEventHint(Self, dt, IsEvent, EventHint);
  end;

  l := EventCol.IsDateInList(dt);
  if l <> -1 then
  begin
    IsEvent := True;
    EventItem := EventCol.Items[l]
  end;

  Result := IsEvent;
end;

function TPlannerCalendar.GetEvents: TSelDateItems;
begin
  Result := EventCol;
end;

procedure TPlannerCalendar.SetEvents(const Value: TSelDateItems);
begin
  EventCol.Assign(Value);
end;

procedure TPlannerCalendar.CMHintShow(var Msg: TMessage);
  {$IFNDEF DELPHI3_LVL}
type
  PHintInfo = ^THintInfo;
  {$ENDIF}
var
  hi: PHintInfo;
  CanShow: Boolean;

begin
  if FEventHints then
  begin
    hi := PHintInfo(Msg.LParam);

    Canshow := (EventHint <> '') and not ((FLastHintPos.x = -1) or (FLastHintPos.y = -1));
    ShowHintbusy := Canshow;
    if CanShow then
    begin
      Hi^.Hintpos.X := (FLastHintPos.x + 1) * dx;
      Hi^.Hintpos.y := FLastHintPos.y * dy + yoffset;
      Hi^.HintStr := EventHint;
      Hi^.Hintpos := ClientToScreen(Hi^.HintPos);
    end;
  end;
end;

procedure TPlannerCalendar.SetEventDayColor(const Value: TColor);
begin
  FEventDayColor := Value;
  Invalidate;
end;


procedure TPlannerCalendar.PropsChanged(Sender: TObject);
begin
  SetLabel(Month, Year);
  Invalidate;
end;

procedure TPlannerCalendar.SetShowDaysAfter(const Value: Boolean);
begin
  FShowDaysAfter := Value;
  Invalidate;
end;

procedure TPlannerCalendar.SetShowDaysBefore(const Value: Boolean);
begin
  FShowDaysBefore := Value;
  Invalidate;
end;

procedure TPlannerCalendar.SetShowSelection(const Value: Boolean);
begin
  FShowSelection := Value;
  Invalidate;
end;

procedure TPlannerCalendar.DoChangeMonth(dt1, dt2: TDateTime);
begin
  if Assigned(FOnMonthChange) then
    FOnMonthChange(self, dt1, dt2);
end;

procedure TPlannerCalendar.DoChangeYear(dt1, dt2: TDateTime);
begin
  if Assigned(FOnYearChange) then
    FOnYearChange(self, dt1, dt2);
end;



{ TCalendarBrowsers }

procedure TCalendarBrowsers.Changed;
begin
  if Assigned(FOnChange) then
    FOnChange(Self);
end;

constructor TCalendarBrowsers.Create;
begin
  FNextMonth := True;
  FNextYear := True;
  FPrevMonth := True;
  FPrevYear := True;
end;

procedure TCalendarBrowsers.SetNextMonth(const Value: Boolean);
begin
  FNextMonth := Value;
  Changed;
end;

procedure TCalendarBrowsers.SetNextYear(const Value: Boolean);
begin
  FNextYear := Value;
  Changed;
end;

procedure TCalendarBrowsers.SetPrevMonth(const Value: Boolean);
begin
  FPrevMonth := Value;
  Changed;
end;

procedure TCalendarBrowsers.SetPrevYear(const Value: Boolean);
begin
  FPrevYear := Value;
  Changed;
end;

{ TPlannerCalendarGroup }

procedure TPlannerCalendarGroup.AnyDaySelect(Sender: TObject;
  SelDate: TDateTime);
var
  tempCal: TPlannerCalendar;
  i: longint;
begin
  if Assigned(FOnDaySelect) then
    FOnDaySelect(Sender, SelDate);

  tempCal := TPlannerCalendar(Sender);
  FDay := tempCal.Day;
  FMonth := tempCal.Month;
  FYear := tempCal.Year;

  tempCal.TheDate := EncodeDate(FYear,FMonth,FDay);

  for i := 0 to FCalendars.Count - 1 do
  begin
    if ((not Fctltdown) and (TPlannerCalendar(FCalendars.Items[i]) <> tempCal)) then
    begin
      TPlannerCalendar(FCalendars.Items[i]).ShowSelection := MultiSelect;
      TPlannerCalendar(FCalendars.Items[i]).Dates.Clear;
    end
    else
      TPlannerCalendar(FCalendars.Items[i]).ShowSelection := MultiSelect;
  end;

  tempCal.ShowSelection := FShowSelection;
end;

constructor TPlannerCalendarGroup.Create(AOwner: TComponent);
var
  Da, Mo, Ye: word;
  i, j: word;
  FPL: TPlannerCalendar;

begin
  inherited;
  ControlStyle := ControlStyle - [csAcceptsControls];
  FColCount := 1;
  FRowCount := 3;
  FSpliterH := 2;
  FSpliterV := 2;
  FStartDay := 7;
  Fctltdown := False;
  FBevelInner := bvNone;
  FBevelOuter := bvRaised;
  FBorderStyle := bsNone;
  FBorderWidth := 1;
  FSplitterBevel := True;
  FSplitterColor := clBtnFace;
  FCalendarWidth := 150;
  FCalendarHeight := 150;
  FLetResize := False;
  FShowSelection := True;
  DecodeDate(Now, Ye, Mo, Da);
  FStartMonth := Mo;
  FStartYear := Ye;
  FEventCol := TSelDateItems.Create(Self);
  FEventCol.OnChange := EventsChanged;

  inherited Color := clWhite;

  {$IFDEF USEIMAGE}
  FImage := TAdvImage.Create;
  FImage.OnChange := BackgroundChanged;
  FBackgroundPosition := bpTiled;
  {$ENDIF}

  FResizeVertical := TPanel.Create(Self);
  FResizeVertical.Parent := Self;
  with  FResizeVertical do
  begin
    FResizeVertical.Align := alNone;
    FResizeVertical.Width := FColCount * FCalendarWidth + 2 * (BevelWidth + BorderWidth);
    FResizeVertical.Height := FSpliterV;
    FResizeVertical.Left := 0;
    FResizeVertical.Top := FRowCount*FCalendarHeight+2*(BevelWidth + BorderWidth);
    Cursor := crVSplit;
    Caption := '';
    Color := clScrollBar;
    Visible := True;
    OnMouseDown := MouseDownV;
    OnMouseMove := MouseMoveV;
    OnMouseUp := MouseUpV;
    {$IFDEF DELPHI4_LVL}
    Anchors := [Akleft,akBottom,akRight];
    {$ENDIF}
  end;

  FResizeHorizontal := TPanel.Create(Self);
  FResizeHorizontal.Parent := Self;

  with FResizeHorizontal do
  begin
    Align := alNone;
    Height := FRowCount * FCalendarHeight + 2 * (BevelWidth + BorderWidth);
    Width := FSpliterH;
    Cursor := crHSplit;
    Color := clScrollBar;
    Left := FColCount * FCalendarWidth + 2 * (BevelWidth + BorderWidth);
    Top := 0;
    Caption := '';
    Visible := True;
    OnMouseDown := MouseDownH;
    OnMouseMove := MouseMoveH;
    OnMouseUp := MouseUpH;
    {$IFDEF DELPHI4_LVL}
    FResizeHorizontal.Anchors := [akBottom,AkTop,akRight];
    {$ENDIF}
  end;

  FCalendars := TList.Create;
  FFont := TFont.Create;

  FDayFont := TFont.Create;
  FWeekFont := TFont.Create;

  for i := 1 to FRowCount do
    for j := 1 to FColCount do
    begin
      Fpl := TPlannerCalendar.Create(Self);
      Fpl.BeginUpdate;
      Fpl.Parent := Self;

      FPl.FShowDaysAfter := False;
      FPl.FShowDaysBefore := False;
      FPl.Left := (j - 1) * FCalendarWidth;
      FPl.Top := (i - 1) * FCalendarHeight;
      FPl.Width := FCalendarWidth;
      FPl.Height := FCalendarHeight;
      FPl.Color := clWhite;
      FPl.FFont.Assign(FFont);
      FPl.ChangeMonth(FCalendars.Count);
      FPl.Browsers.NextMonth := (j = FColCount) and (i =1);
      FPl.Browsers.NextYear := (j = FColCount) and (i = 1);

      Fpl.Browsers.PrevMonth := (i = 1) and (j = 1);
      Fpl.Browsers.PrevYear := (i = 1) and (j = 1);
 
      Fpl.ShowSelection := False;
      Fpl.Visible := True;
      Fpl.Dates.Clear;
      FCalendars.Add(pointer(Fpl));
    end;

  DecodeDate(now, ye, mo, da);
  Fday := da;
  FMonth := mo;
  FYear := ye;

  Width := FCalendarWidth * FColCount + FSpliterH + (BevelWidth + BorderWidth) * 2;
  Height := FCalendarHeight * FRowCount + FSpliterV + (BevelWidth + BorderWidth) * 2;

  //Color Copy from Constructor of TPlannerCalendar
  FSelectColor := clTeal;
  FSelectFontColor := clWhite;
  FInactiveColor := clGray;
  FInversColor := clWhite;
  FFocusColor := clHighLight;
  FTextColor := clBlack;
  FWeekendColor := clRed;
  FHeaderColor := clBtnFace;
  FEventMarkerColor := clYellow;
  FCaptionColor := clNone;

  FEventMarkerShape := evsCircle;
  UpdateEvents;

  BevelInner := bvNone;
  BevelOuter := bvNone;

  FDates := TSelDateItems.Create(FCalendars.Items[0]);

  FNameOfDays := TNameofDays.Create;
  FNameOfDays.OnChange := PropsChanged;
  FNameOfMonths := TNameofMonths.Create;
  FNameOfMonths.OnChange := PropsChanged;
  SetPlannersUpdate(False);
end;

destructor TPlannerCalendarGroup.Destroy;
var
  i: integer;
begin
  for i := 0 to FCalendars.Count - 1 do
    TPlannerCalendar(FCalendars.Items[i]).Free;

  {$IFDEF USEIMAGE}
  FImage.Free;
  {$ENDIF}

  FDates.Free;
  FNameOfDays.Destroy;   //rom Destroy pt ca asa se foloseste si in Destroy de la TPL
  FNameOfMonths.Destroy;

  FEventCol.Free;
  FCalendars.Clear;
  FFont.Destroy;
  FResizeVertical.Free;
  FResizeHorizontal.Free;
  FDayFont.Free;
  FWeekFont.Free;
  FCalendars.Free;

  inherited;
end;

procedure TPlannerCalendarGroup.GetGroupDate(Sender: TObject; origDate,
  newDate: TDateTime);
var
  i, MO_new: longint;
  Ye, Mo, Dy, oldYe, oldMo, oldDy: word;
begin
  DecodeDate(newDate, ye, mo, Dy);
  DecodeDate(origDate, oldye, oldmo, oldDy);
  FDay := Dy;
  FMonth := Mo;
  FYear := Ye;
  if ye <> oldYe then
  begin
    if Assigned(FOnYearChange) then
      FOnYearChange(Self, origDate, newDate);
    if Assigned(FOnMonthChange) then
      FOnMonthChange(Self, origDate, newDate);
  end
  else if Mo <> oldMo then
    if Assigned(FOnMonthChange) then
      FOnMonthChange(Self, origDate, newDate);

  i := -1; //0 based
  repeat
    inc(i);
    if i > FCalendars.Count then
      Exit;
  until (TPlannerCalendar(FCalendars.Items[i]) = (Sender as TPlannerCalendar));

  MO_new := Mo - i;

  while Mo_new < 1 do
  begin
    Dec(Ye);
    MO_new := Mo_new + 12;
  end;
  FStartMonth := Mo_new;
  FStartYear := ye;
  UpdatePlanners;
end;

procedure TPlannerCalendarGroup.Loaded;
begin
  inherited;
  ShowPlanners;
end;

procedure TPlannerCalendarGroup.ModifyGroup(Cols, Rows, CalendarWidth,
  CalendarHeight: integer);
begin
  FColCount := Cols;
  FRowCount := Rows;
  FCalendarWidth := CalendarWidth;
  FCalendarHeight := CalendarHeight;
  ShowPlanners;
end;

procedure TPlannerCalendarGroup.MouseDownH(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: integer);
begin
  if Button = mbLeft then
  begin
    FLetResize := True;
  end;
end;

procedure TPlannerCalendarGroup.MouseDownV(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: integer);
begin
  if Button = mbLeft then
  begin
    FLetResize := True;
  end;
end;

procedure TPlannerCalendarGroup.MouseMoveH(Sender: TObject;
  Shift: TShiftState; X, Y: integer);
var
  R: Trect;
begin
  if FLetResize then
  begin
    r := BoundsRect;
    r.Right := r.Right + x;
    BoundsRect := r;
  end;
end;

procedure TPlannerCalendarGroup.MouseMoveV(Sender: TObject;
  Shift: TShiftState; X, Y: integer);
var
  R: Trect;
begin
  if FLetResize then
  begin
    r := BoundsRect;
    r.Bottom := r.Bottom + y;
    Self.BoundsRect := r;
  end;
end;

procedure TPlannerCalendarGroup.MouseUpH(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: integer);
begin
  FLetResize := False;
  FitPlanners;
end;

procedure TPlannerCalendarGroup.MouseUpV(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: integer);
begin
  FLetResize := False;
  FitPlanners;
end;

procedure TPlannerCalendarGroup.Paint;
begin
  inherited Paint;
end;

procedure TPlannerCalendarGroup.SetCalendarHeight(const Value: integer);
begin
  if Value < 1 then
    Exit;
  FCalendarHeight := Value;
  if not (csLoading in ComponentState) then
    ShowPlanners;
end;

procedure TPlannerCalendarGroup.SetCalendarWidth(const Value: integer);
begin
  if Value < 1 then
    Exit;
  FCalendarWidth := Value;
  if not (csLoading in ComponentState) then
    ShowPlanners;
end;

procedure TPlannerCalendarGroup.SetColCount(const Value: integer);
begin
  if Value < 1 then
    Exit;
  FColCount := Value;
  if not (csLoading in ComponentState) then
    ShowPlanners;
end;

procedure TPlannerCalendarGroup.Updatezero(var dt: TdateTime);
begin
  if FCalendars.Count < 1 then
    Exit;
  FStartMonth := FMonth;
  FStartYear := FYear;
  UpdatePlanners;
  TPlannerCalendar(FCalendars.Items[0]).Day := Fday;
  TPlannerCalendar(FCalendars.Items[0]).Month := FMonth;
  TPlannerCalendar(FCalendars.Items[0]).Year := FYear;
  AnyDaySelect(FCalendars.Items[0], dt);
end;

procedure TPlannerCalendarGroup.SetDay(Value: word);
var
  ye, mo, dy: word;
  dt: TdateTime;
begin
  ye := FYear;
  mo := FMonth;
  dy := Value;
  try
    dt := EncodeDate(ye, Mo, dy);
    FDay := Value;
    UpdateZero(dt);
  except
    MessageDlg('Invalid date', mtError, [mbOK], 0);
  end;

  //@d Check valid + Redraw
end;

procedure TPlannerCalendarGroup.SetDayFont(AValue: TFont);
begin
  FDayFont.Assign(AValue);
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetEventDayColor(const Value: TColor);
begin
  FEventDayColor := Value;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetEventHints(AValue: Boolean);
begin
  FEventHints := AValue;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetFocusColor(AColor: TColor);
begin
  FFocusColor := AColor;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetFOnAllDaySelect(Value: TNotifyEvent);
begin
  FOnAllDaySelect := Value;
  UpdateEvents;
end;

procedure TPlannerCalendarGroup.SetFOnCancelledChange(Value: TCancelledChangeEvent);
begin
  FOnCancelledChange := Value;
  UpdateEvents;
end;

procedure TPlannerCalendarGroup.SetFOnDateChange(Value: TDateChangeEvent);
begin
  FOnDateChange := Value;
  UpdateEvents;
end;

procedure TPlannerCalendarGroup.SetFOnDayChange(Value: TDateChangeEvent);
begin
  FOnDayChange := Value;
  UpdateEvents;
end;

procedure TPlannerCalendarGroup.SetFOnDaySelect(Value: TDaySelectEvent);
var
  i: integer;
begin
  FOnDaySelect := Value;
  for i := 0 to FCalendars.Count - 1 do
  begin
    //    TPlannerCalendar(FCalendars.Items[i]).ShowSelection := False;
    TPlannerCalendar(FCalendars.Items[i]).SelDate := 0;
  end;
  UpdateEvents;
end;

procedure TPlannerCalendarGroup.SetFOnGetDateEvent(Value: TGetDateEvent);
begin
  FOnGetDateEvent := Value;
  UpdateEvents;
end;

procedure TPlannerCalendarGroup.SetFOnGetDateEventHint(Value: TGetDateEventHint);
begin
  FOnGetDateEventHint := Value;
  UpdateEvents;
end;

procedure TPlannerCalendarGroup.SetFOnKeyDown(Value: TKeyEvent);
begin
  FOnKeyDown := Value;
end;

procedure TPlannerCalendarGroup.SetFOnKeyPress(Value: TKeyPressEvent);
begin
  FOnKeyPress := Value;
end;

//Bug Toate key nu merg (adica nu merg VIZUAL)
procedure TPlannerCalendarGroup.SetFOnKeyUp(Value: TKeyEvent);
begin
  FOnKeyUp := Value;
  UpdateEvents;
end;

procedure TPlannerCalendarGroup.SetFOnMonthChange(Value: TDateChangeEvent);
begin
  FOnMonthChange := Value;
  UpdateEvents;
end;

procedure TPlannerCalendarGroup.SetFOnMonthSelect(Value: TNotifyEvent);
begin
  FOnMonthSelect := Value;
  UpdateEvents;
end;

procedure TPlannerCalendarGroup.SetFOnMouseDown(Value: TMouseEvent);
begin
  FOnMouseDown := Value;
  UpdateEvents;
end;

procedure TPlannerCalendarGroup.SetFOnMouseMove(Value: TMouseMoveEvent);
begin
  FOnMouseMove := Value;
  UpdateEvents;
end;

procedure TPlannerCalendarGroup.SetFOnMouseUp(Value: TMouseEvent);
begin
  FOnMouseUp := Value;
  UpdateEvents;
end;

procedure TPlannerCalendarGroup.SetFont(const Value: Tfont);
begin
  FFont.Assign(Value);
  if not (csLoading in ComponentState) then
    ShowPlanners;
end;

procedure TPlannerCalendarGroup.SetFOnWeekSelect(Value: TNotifyEvent);
begin
  FOnWeekSelect := Value;
  UpdateEvents;
end;

procedure TPlannerCalendarGroup.SetFOnYearChange(Value: TDateChangeEvent);
begin
  FOnYearChange := Value;
  UpdateEvents;
end;


procedure TPlannerCalendarGroup.SetHeaderColor(AColor: TColor);
begin
  FHeaderColor := AColor;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetInactiveColor(AColor: TColor);
begin
  FInactiveColor := AColor;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetInversColor(AColor: TColor);
begin
  FInversColor := AColor;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetLook(AValue: TPlannerCalendarLook);
begin
  FLook := AValue;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetMonth(Value: word);
var
  dt: TdateTime;
  Ye, Mo, dy: word;
begin
  //@d Check valid + Redraw
  ye := FYear;
  mo := Value;
  dy := Fday;
  try
    dt := EncodeDate(ye, Mo, dy);
    FMonth := Value;
    Updatezero(dt);
  except
    MessageDlg('Invalid date', mtError, [mbOK], 0);
  end;
end;


procedure TPlannerCalendarGroup.SetRowCount(const Value: integer);
begin
  if Value < 1 then exit;
  FRowCount := Value;
  if not (csLoading in ComponentState) then
    ShowPlanners;
end;

procedure TPlannerCalendarGroup.SetSelectColor(AColor: TColor);
begin
  FSelectColor := AColor;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetSelectFontColor(AColor: TColor);
begin
  FSelectFontColor := AColor;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetShowSelection(const Value: Boolean);
begin
  FShowSelection := Value;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetShowWeeks(AValue: Boolean);
begin
  FShowWeeks := AValue;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetStartMonth(const Value: integer);
begin
  FStartMonth := Value;
  if not (csLoading in ComponentState) then
    ShowPlanners;
end;

procedure TPlannerCalendarGroup.SetStartYear(const Value: integer);
begin
  FStartYear := Value;
  if not (csLoading in ComponentState) then
    ShowPlanners;
end;

procedure TPlannerCalendarGroup.SetTextColor(AColor: TColor);
begin
  FTextColor := AColor;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetWeekendColor(AColor: TColor);
begin
  FWeekendColor := AColor;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetWeekFont(AValue: TFont);
begin
  FWeekFont.Assign(AValue);
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetWeekName(const Value: string);
begin
  FWeekName := Value;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetYear(Value: word);
var
  Dt: TDateTime;
  ye, mo, dy: word;
begin
  //@d Check valid + Redraw
  ye := Value;
  mo := FMonth;
  dy := Fday;
  try
    dt := EncodeDate(ye, Mo, dy);
    FYear := Value;
    Updatezero(dt);
  except
    MessageDlg('Invalid date', mtError, [mbOK], 0);
  end;
end;

procedure TPlannerCalendarGroup.ShowPlanners;
var
  i, j: integer;
  pl: TPlannerCalendar;
  mo, ye: integer;

begin
  for i := 1 to FCalendars.Count do
    TPlannerCalendar(FCalendars.Items[i - 1]).Free;

  FCalendars.Clear;

  mo := FStartMonth;
  ye := FStartYear;

  if ColCount = 0 then
    Exit;
  if RowCount = 0 then
    Exit;

  Width := FCalendarWidth * FColCount + FSpliterH + (BevelWidth + BorderWidth) * 2;
  Height := FCalendarHeight * FRowCount + FSpliterV + (BevelWidth + BorderWidth) * 2;


  FResizeHorizontal.Left := FCalendarWidth * FColCount + (BevelWidth + BorderWidth) * 2;
  FResizeHorizontal.Top := 0;
  FResizeHorizontal.Height := Height;

  FResizeVertical.Width := Width;
  FResizeVertical.Left := 0;
  FResizeVertical.Top := FCalendarHeight * FRowCount + (BevelWidth + BorderWidth) * 2;


  for i := 1 to FRowCount do
    for j := 1 to FColCount do
    begin
      pl := TPlannerCalendar.Create(Self);
      pl.BeginUpdate;
      Pl.FShowDaysAfter := False;
      Pl.FShowDaysBefore := False;
      pl.Parent := Self;
      Pl.FFont.Assign(fFont);

      FCalendars.Add(pointer(pl));

      pl.Left := (j - 1) * FCalendarWidth + (BevelWidth + BorderWidth);;
      pl.Top := (i - 1) * FCalendarHeight + (BevelWidth + BorderWidth);;
      pl.Width := FCalendarWidth;
      pl.Height := FCalendarHeight;
      pl.Day := 1;
      pl.Month := mo;
      pl.Year := ye;
      Inc(mo);
      if Mo = 13 then
      begin
        Mo := 1;
        Inc(Ye);
      end;
      pl.Browsers.NextMonth := (j = FColCount) and (i = 1);
      pl.Browsers.NextYear :=  (j = FColCount) and (i = 1); //FRowCount

      pl.Browsers.PrevMonth := (i = 1) and (j = 1);
      pl.Browsers.PrevYear := (i = 1) and (j = 1);

      pl.Visible := True;
      pl.Dates.Clear;
    end;

  UpdateEvents;
  UpdateFields;

  SetPlannersUpdate(False);
  FDates := TSelDateItems.Create(FCalendars.Items[0]);
end;

procedure TPlannerCalendarGroup.UpdateEvents;
var
  i: Integer;
  tempCal: TPlannerCalendar;
begin
  for i := 0 to FCalendars.Count - 1 do    
  begin
    tempCal := TPlannerCalendar(FCalendars.Items[i]);
    tempCal.FOnDaySelect := AnyDaySelect;
    tempCal.FOnMonthSelect := FOnMonthSelect;
    tempCal.FOnGetDateEvent := FOnGetDateEvent;
    tempCal.FOnGetDateEventHint := FOnGetDateEventHint;
    tempCal.FOnDateChange := FOnDateChange;
    tempCal.FOnMonthChange := GetGroupDate;
    tempCal.FOnYearChange := GetGroupDate;
    tempCal.FOnDayChange := FOnDayChange;
    tempcal.FOnWeekSelect := FOnWeekSelect;
    tempCal.FOnAllDaySelect := FOnAllDaySelect;
    tempCal.OnKeyDown := CtrlKeyDown;
    tempCal.OnKeyPress := FOnKeyPress;
    tempCal.OnKeyUp := CtrlKeyUp;
    tempCal.OnMouseMove := FOnMouseMove;
    tempCal.OnMouseDown := FOnMouseDown;
    tempCal.OnMouseUp := FOnMouseUp;
  end;   
end;

procedure TPlannerCalendarGroup.UpdateFields;
var
  i: integer;
  tempCal: TPlannerCalendar;
begin
  for i := 0 to FCalendars.Count - 1 do    // Iterate
  begin
    tempCal := TPlannerCalendar(FCalendars.Items[i]);
    tempCal.BeginUpdate;
    tempCal.Look := FLook;

    if Assigned(FDayFont) then
      tempCal.DayFont.Assign(FDayFont);
    if assigned(FWeekFont) then
      tempCal.WeekFont.Assign(FWeekFont);

    tempCal.WeekName := FWeekName;
    tempCal.Textcolor := FTextcolor;
    tempCal.SelectColor := FSelectColor;
    tempCal.SelectFontColor := FSelectFontColor;
    tempCal.InactiveColor := FInactiveColor;
    tempCal.HeaderColor := FHeaderColor;
    tempCal.CaptionColor:=FCaptionColor;
    tempCal.FocusColor := FFocusColor;
    tempCal.Inverscolor := FInverscolor;
    tempCal.WeekendColor := FWeekendColor;
    tempCal.ShowSelection := FShowSelection;
    tempCal.ShowWeeks := FShowWeeks;
    tempCal.EventHints := FEventHints;
    tempCal.EventDayColor := FEventDayColor;
    tempCal.EventMarkerColor := FEventMarkerColor;
    tempCal.EventMarkerShape := FEventMarkerShape;
    tempCal.Color := Color;
    tempCal.BevelInner := FBevelInner;
    tempCal.BevelOuter := FBevelOuter;
    tempCal.BorderStyle := FBorderStyle;
    tempCal.BorderWidth := FBorderWidth;
    tempCal.MultiSelect := FMultiSelect;
    tempCal.ShowToday := FShowToday;
    tempCal.AllDaySelect := FAllDaySelect;
    tempCal.WeekSelect := FWeekSelect;
    tempCal.CaptionColor := FCaptionColor;
    tempCal.ShowHint := True;
    tempCal.StartDay := FStartDay;

    PropsChanged(Self);

    {$IFDEF USEIMAGE}
    if not FImage.Empty then
      tempCal.BackGround := FImage;
    tempCal.BackgroundPosition := FBackgroundPosition;
    {$ENDIF}
    tempCal.ResetUpdate;
  end;
end;

procedure TPlannerCalendarGroup.UpdatePlanners;
var
  i: Integer;
  pl: TPlannerCalendar;
  mo, ye: Integer;
  ftmp: TSelDateItems;
begin
  mo := FStartMonth;
  ye := FStartYear;

  ftmp := TSelDateItems.Create(TPlannerCalendar(FCalendars.Items[0]));
  ftmp.Assign(GetDates);

  for i := 0 to FCalendars.Count - 1 do
    TPlannerCalendar(FCalendars.Items[i]).BeginUpdate;

  for i := 0 to FCalendars.Count - 1 do
  begin
    pl := TPlannerCalendar(FCalendars.Items[i]);
    pl.ShowSelection := FShowSelection;
    pl.Day := 1;
    pl.Month := mo;
    pl.Year := ye;
    Inc(mo);
    if Mo = 13 then
    begin
      Mo := 1;
      Inc(Ye);
    end;
    pl.Dates.Clear;
  end;

  for i := 0 to FCalendars.Count - 1 do
    TPlannerCalendar(FCalendars.Items[i]).EndUpdate;

  SetDates(ftmp);
  ftmp.Free;
end;

procedure TPlannerCalendarGroup.SetSpliterH(const Value: Byte);
begin
  if Value > FCalendarWidth div 2 then
    Exit;
  FSpliterH := Value;
  Refresh;

  Width := FCalendarWidth * FColCount + FSpliterH + (BevelWidth + BorderWidth) * 2;
  FResizeHorizontal.Width := Value;
  FResizeHorizontal.Left := FCalendarWidth * FColCount + (BevelWidth + BorderWidth) * 2;
  FResizeHorizontal.Top := 0;
  FResizeHorizontal.Height := Height;
end;

procedure TPlannerCalendarGroup.SetSpliterV(const Value: Byte);
begin
  if Value > FCalendarHeight div 2 then
    Exit;
  FSpliterV := Value;
  Refresh;
  Height := FCalendarHeight * FRowCount + FSpliterV + (BevelWidth + BorderWidth) * 2;
  FResizeVertical.Height := Value;
  FResizeVertical.Left := 0;
  FResizeVertical.Top := FCalendarHeight * FRowCount + (BevelWidth + BorderWidth) * 2;
  FResizeVertical.Width := Width;
 end;

function TPlannerCalendarGroup.GetColorEx: TColor;
begin
  Result := inherited Color;
end;

procedure TPlannerCalendarGroup.SetColorEx(const Value: TColor);
begin
  inherited Color := Value;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.Resize;

begin
  inherited;
  if FLetResize then
    Exit;
  FitPlanners;
end;


procedure TPlannerCalendarGroup.FitPlanners;
var
  x, y: integer;
  ftmp: TSelDateItems;
begin
  x := Width div FCalendarWidth;

  if x < 1 then
    x := 1;

  y := Height div FCalendarHeight;

  if y < 1 then
    y := 1;

  if ((x <> FColCount) or (y <> FRowCount)) and not FLetResize then
  begin
    ftmp := TSelDateItems.Create(TPlannerCalendar(FCalendars.Items[0]));
    ftmp.Visible := False;
    ftmp.Assign(GetEvents);

    FColCount := x;
    FRowCount := y;
    ShowPlanners;

    SetEvents(ftmp);
    ftmp.Free;

  end;

  Width := FCalendarWidth * FColCount + FSpliterH + (BevelWidth + BorderWidth) * 2;
  Height := FCalendarHeight * FRowCount + FSpliterV + (BevelWidth + BorderWidth) * 2;
end;

procedure TPlannerCalendarGroup.SetPlannersUpdate(const State: Boolean);
var
  i: integer;
begin
  for i := 0 to FCalendars.Count - 1 do
  begin
    if State then
      TPlannerCalendar(FCalendars.Items[i]).BeginUpdate
    else
      TPlannerCalendar(FCalendars.Items[i]).EndUpdate;
  end;
end;

procedure TPlannerCalendarGroup.SetSplitterBevel(const Value: Boolean);
begin
  FSPlitterBevel := Value;

  if Value then
    FResizeHorizontal.BevelOuter := bvRaised
  else
    FResizeHorizontal.BevelOuter := bvNone;
  if Value then
    FResizeVertical.BevelOuter := bvRaised
  else
    FResizeVertical.BevelOuter := bvNone;
end;

procedure TPlannerCalendarGroup.SetSplitterColor(const Value: TColor);
begin
  FSplitterColor := Value;

  FResizeHorizontal.Color := FSplitterColor;
  FResizeVertical.Color := FSplitterColor;
end;

procedure TPlannerCalendarGroup.SetBebelInnerEx(const Value: TPanelBevel);
begin
  FBevelInner := Value;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetBevelOuterEx(const Value: TPanelBevel);
begin
  FBevelOuter := Value;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetBevelWidthEx(const Value: Integer);
begin
  FBevelWidth := Value;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetBorderStyleEx(const Value: TBorderStyle);
begin
  FBorderStyle := Value;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetBorderWidthEx(const Value: Integer);
begin
  FBorderWidth := Value;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetMultiSelect(const Value: Boolean);
begin
  FMultiSelect := Value;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetAllDaySelect(const Value: Boolean);
begin
  FAllDaySelect := Value;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetWeekSelect(const Value: Boolean);
begin
  FWeekSelect := Value;
  UpdateFields;  
end;


{$IFDEF USEIMAGE}
procedure TPlannerCalendarGroup.SetImage(const Value: TAdvImage);
begin
  FImage.Assign(Value);
  UpdateFields;
end;

procedure TPlannerCalendarGroup.BackgroundChanged(Sender: TObject);
begin
  UpdateFields;
end;

procedure TPlannerCalendarGroup.SetBackgroundPosition(const Value: TBackgroundPosition);
begin
  FBackgroundPosition := Value;
  UpdateFields;
end;
{$ENDIF}

procedure TPlannerCalendarGroup.SetShowToday(const Value: Boolean);
begin
  FShowToday := Value;
  UpdateFields;
end;

procedure TPlannerCalendarGroup.DoPaint;
var
  i: Integer;
begin
  for i := 0 to FCalendars.Count - 1 do
    TPlannerCalendar(FCalendars.Items[i]).Events.Assign(FEventCol);
end;

procedure TPlannerCalendarGroup.RepaintDate(dt: TDateTime);
var
  i: Integer;
begin
  for i := 0 to FCalendars.Count - 1 do
    TPlannerCalendar(FCalendars.Items[i]).Events.Assign(FEventCol);

  for i := 0 to FCalendars.Count - 1 do
    TPlannerCalendar(FCalendars.Items[i]).RepaintDate(dt);
end;

function TPlannerCalendarGroup.GetDates: TSelDateItems;
var
  i,j: Integer;
begin
  FDates.Clear;
  for i := 0 to FCalendars.Count - 1 do
  begin
    for j := 0 to TPlannerCalendar(FCalendars.Items[i]).Dates.Count - 1 do
      FDates.Add.Date := TPlannerCalendar(FCalendars.Items[i]).Dates.Items[j].Date;
  end;
  Result := FDates;
end;

procedure TPlannerCalendarGroup.UpdateDates;
var
  i, j: Integer;
  Ye, Mo, Dy, oldYe, oldMo: Word;
begin
  for i := 0 to FCalendars.Count - 1 do
  begin
    TPlannerCalendar(FCalendars.Items[i]).Dates.Clear;
    oldYe := TPlannerCalendar(FCalendars.Items[i]).Year;
    oldMo := TPlannerCalendar(FCalendars.Items[i]).Month;
    for j := 0 to FDates.Count - 1 do
    begin
      DecodeDate(FDates.Items[j].Date, ye, mo, Dy);
      if ((ye = oldYe) and (Mo = oldMo)) then
        TPlannerCalendar(FCalendars.Items[i]).Dates.Add.Date :=
          FDates.Items[j].Date;
    end;
    TPlannerCalendar(FCalendars.Items[i]).Dates.DoPaint;
  end;

end;

procedure TPlannerCalendarGroup.SetDates(const Value: TSelDateItems);
begin
  FDates.Assign(Value);
  UpdateDates;
end;

procedure TPlannerCalendarGroup.PropsChanged(Sender: TObject);
var
  i: Integer;
  tmpcal: TPlannerCalendar;
begin
  for i := 0 to FCalendars.Count - 1 do
  begin
    tmpcal := TPlannerCalendar(FCalendars[i]);

    tmpcal.FNameOfDays.FMonday := FNameOfDays.FMonday;
    tmpcal.FNameOfDays.FTuesday := FNameOfDays.FTuesday;
    tmpcal.FNameOfDays.FWednesday := FNameOfDays.FWednesday;
    tmpcal.FNameOfDays.FThursday := FNameOfDays.FThursday;
    tmpcal.FNameOfDays.FFriday := FNameOfDays.FFriday;
    tmpcal.FNameOfDays.FSaturday := FNameOfDays.FSaturday;
    tmpcal.FNameOfDays.FSunday := FNameOfDays.FSunday;

    tmpcal.FNameOfMonths.FJanuary := FNameOfMonths.FJanuary;
    tmpcal.FNameOfMonths.FFebruary := FNameOfMonths.FFebruary;
    tmpcal.FNameOfMonths.FMarch := FNameOfMonths.FMarch;
    tmpcal.FNameOfMonths.FApril := FNameOfMonths.FApril;
    tmpcal.FNameOfMonths.FMay := FNameOfMonths.FMay;
    tmpcal.FNameOfMonths.FJune := FNameOfMonths.FJune;
    tmpcal.FNameOfMonths.FJuly := FNameOfMonths.FJuly;
    tmpcal.FNameOfMonths.FAugust := FNameOfMonths.FAugust;
    tmpcal.FNameOfMonths.FSeptember := FNameOfMonths.FSeptember;
    tmpcal.FNameOfMonths.FOctober := FNameOfMonths.FOctober;
    tmpcal.FNameOfMonths.FNovember := FNameOfMonths.FNovember;
    tmpcal.FNameOfMonths.FDecember := FNameOfMonths.FDecember;

    tmpcal.SetLabel(tmpcal.Month, tmpcal.Year);

  end;
  Invalidate;
end;

procedure TPlannerCalendarGroup.SetNameOfDays(const Value: TNameOfDays);
begin
  FNameOfDays := Value;
  PropsChanged(Self);
end;

procedure TPlannerCalendarGroup.SetNameOfMonths(const Value: TNameOfMonths);
begin
  FNameOfMonths := Value;
  PropsChanged(Self);
end;

procedure TPlannerCalendarGroup.CtrlKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if ssCtrl in Shift then
    FCtltDown := True;

  if Assigned(FOnKeyDown) then
    FOnKeyDown(Sender, key, Shift);
end;

procedure TPlannerCalendarGroup.CtrlKeyUP(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  Fctltdown := False;
  if assigned(FOnKeyDown) then
    FOnKeyUp(Sender, key, Shift);
end;

procedure TPlannerCalendarGroup.SetCaptionColor(const Value: TColor);
begin
  if FCaptionColor = Value then
    Exit;
  FCaptionColor := Value;
  UpdateFields;
end;

function TPlannerCalendarGroup.GetBevelWidth: Integer;
begin
  Result := TCustomCalendarPanel(Self).BevelWidth;
end;

function TPlannerCalendarGroup.GetBorderWidth: Integer;
begin
  Result := TCustomCalendarPanel(Self).BorderWidth;
end;

procedure TPlannerCalendarGroup.SetBevelWidth(const Value: Integer);
begin
  TCustomCalendarPanel(Self).BevelWidth := Value;
  ShowPlanners;
end;

procedure TPlannerCalendarGroup.SetBorderWidth(const Value: Integer);
begin
  TCustomCalendarPanel(Self).BorderWidth := Value;
  ShowPlanners;
end;

procedure TPlannerCalendarGroup.EventsChanged(Sender: TObject);
begin
  DoPaint;
end;

procedure TPlannerCalendarGroup.SetStartDay(const Value: Integer);
begin
  FStartDay := Value;
  UpdateFields;
end;

{ TCustomCalendarPanel }

function TPlannerCalendarGroup.GetEvents: TSelDateItems;
begin
  Result := FEventCol;
end;

procedure TPlannerCalendarGroup.SetEvents(const Value: TSelDateItems);
begin
  FEventCol.Assign(Value);
end;

{ TCustomCalendarPanel }

procedure TCustomCalendarPanel.DoPaint;
begin
end;

procedure TCustomCalendarPanel.RepaintDate(dt: TDateTime);
begin
end;

procedure TCustomCalendarPanel.UpdateYearStart;
begin
  Invalidate;
end;

procedure TCustomCalendarPanel.SetEventMarkerColor(const Value: TColor);
begin
  FEventMarkerColor := Value;
  Invalidate;
end;

procedure TCustomCalendarPanel.SetEventMarkerShape(const Value: TEventShape);
begin
  FEventMarkerShape := Value;
  Invalidate;
end;

procedure TPlannerCalendar.SetCaptionColor(const Value: TColor);
begin
  if Value = FCaptionColor then exit;
  FCaptionColor := Value;
  Invalidate;
end;

initialization
  RegisterClass(TPlannerCalendar);
end.
