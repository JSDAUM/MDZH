//----------------------------------------------------------------------------
// Ad3dcal.hpp - bcbdcc32 generated hdr (DO NOT EDIT) rev: 0
// From: Ad3dcal.pas
//----------------------------------------------------------------------------
#ifndef Ad3dcalHPP
#define Ad3dcalHPP
//----------------------------------------------------------------------------
#include <Addate.hpp>
#include <Menus.hpp>
#include <ExtCtrls.hpp>
#include <StdCtrls.hpp>
#include <Dialogs.hpp>
#include <Forms.hpp>
#include <Buttons.hpp>
#include <Controls.hpp>
#include <Graphics.hpp>
#include <Classes.hpp>
#include <Messages.hpp>
#include <Windows.hpp>
#include <SysUtils.hpp>
#include <System.hpp>
namespace Ad3dcal
{
//-- type declarations -------------------------------------------------------
class __declspec(delphiclass) TAdrock3dCalendarSpeedButton;
class __declspec(pascalimplementation) TAdrock3dCalendarSpeedButton : public Buttons::TSpeedButton
{
	typedef Buttons::TSpeedButton inherited;
	
__published:
	__property Color ;
public:
	/* TSpeedButton.Create */ __fastcall virtual TAdrock3dCalendarSpeedButton(Classes::TComponent* AOwner
		) : Buttons::TSpeedButton(AOwner) { }
	/* TSpeedButton.Destroy */ __fastcall virtual ~TAdrock3dCalendarSpeedButton(void) { }
	
};

enum TAdrockWorkingDays { woSunday, woMonday, woTuesday, woWednesday, woThursday, woFriday, woSaturday 
	};

typedef Set<TAdrockWorkingDays, woSunday, woSaturday>  TAdrockWorking;

enum TAdrockDayOfWeek { Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday };

enum TAdrock3dCalendarDrawFlags { dfNothing, dfAll, dfNonWorking, dfPrevNextMonth, dfCurrentMonth };
	

enum TAdrock3dCalendarDrawingStyle { odStandard, odOwnerDraw };

enum TAdrock3dCalendarDragMode { dmEnabled, dmDisabled };

enum TAdrock3dCalendarVerticalTextAlign { vtTop, vtCenter, vtBottom };

enum TAdrock3dCalendarHorizontalTextAlign { htLeft, htCenter, htRight };

enum TAdrock3dCalendarShowOnCalendar { scNothing, scCombos, scLabels };

enum TAdrock3dCalendarTextStyle { tsNone, tsRaised, tsRecessed };

enum TAdrock3dCalendarSelectMode { smOnlyAfterMouseUp, smDuringMouseMove };

enum Tadrock3dCalendarMouseMode { cmClickOnCell, cmClickAndMoveAroundCells };

enum TAdrock3dCalendarStartOfWeek { swSunday, swMonday };

enum TAdrock3dCalendarCursor { cuDefault, cuSelectable, cuNonSelectable, cuClick };

typedef void __fastcall (__closure *TAdrock3dCalendarDrawCell)(System::TObject* Sender, const Windows::TRect 
	&CellRect, int Day, int CellID, bool CellInCurrentMonth, bool Selected, bool &UseDefaultDrawing);

typedef void __fastcall (__closure *TAdrock3dCalendarCellClick)(System::TObject* Sender, const Windows::TRect 
	&CellRect, int Day, int CellID, bool CellInCurrentMonth);

typedef void __fastcall (__closure *TAdrock3dCalendarCellDblClick)(System::TObject* Sender, const Windows::TRect 
	&CellRect, int Day, int CellID, bool CellInCurrentMonth);

class __declspec(delphiclass) TAdrock3dCalendar;
class __declspec(pascalimplementation) TAdrock3dCalendar : public Controls::TCustomControl
{
	typedef Controls::TCustomControl inherited;
	
private:
	bool fIsFocused;
	bool fSetParentOccurred;
	int fSpaceAtTop;
	int fSpaceAtLeft;
	int fSpaceAtBottom;
	System::AnsiString fVersionString;
	System::AnsiString fVersionString1;
	System::AnsiString fMonthLabel;
	System::AnsiString fYearLabel;
	int fMonthLabelLeft;
	int FMonthLabelTop;
	int fYearLabelRight;
	int fYearLabelTop;
	TAdrock3dCalendarSelectMode fSelectMode;
	Tadrock3dCalendarMouseMode fMouseMode;
	double fMonthButtonPercentage;
	bool fIsLoaded;
	int fSpaceFromSides;
	int fSpaceBetweenTopAndLabels;
	int fSpaceBetweenCellsandButtons;
	int fSpaceBetweenButtonsAndBottom;
	int fSpaceBetweenLabelsAndWeekDayHeader;
	int fSpaceBetweenWeekDayHeaderAndCells;
	Classes::TNotifyEvent fOnDateChange;
	Classes::TNotifyEvent fOnDayChange;
	Classes::TNotifyEvent fOnWeekChange;
	Classes::TNotifyEvent fOnMonthChange;
	Classes::TNotifyEvent fOnYearChange;
	Classes::TNotifyEvent fOnBeforeDateChange;
	Classes::TNotifyEvent fOnBeforeDayChange;
	Classes::TNotifyEvent fOnBeforeWeekChange;
	Classes::TNotifyEvent fOnBeforeMonthChange;
	Classes::TNotifyEvent fOnBeforeYearChange;
	TAdrock3dCalendarDrawingStyle fDrawingStyle;
	TAdrock3dCalendarDrawCell fOnOwnerDrawCell;
	TAdrock3dCalendarCellClick fOnCellClick;
	TAdrock3dCalendarCellDblClick fOnCellDblClick;
	bool HasDateChanged;
	bool HasDayChanged;
	bool HasMonthChanged;
	bool HasWeekChanged;
	bool HasYearChanged;
	TAdrock3dCalendarCursor fCursorSelectable;
	TAdrock3dCalendarCursor fCursorNonSelectable;
	TAdrock3dCalendarCursor fCursorClick;
	TAdrock3dCalendarSpeedButton* fPrevMonthButton;
	TAdrock3dCalendarSpeedButton* fNextMonthButton;
	TAdrock3dCalendarSpeedButton* fPrevYearButton;
	TAdrock3dCalendarSpeedButton* fNextYearButton;
	System::AnsiString fPreviousYearCaption;
	System::AnsiString fPreviousMonthCaption;
	System::AnsiString fNextYearCaption;
	System::AnsiString fNextMonthCaption;
	TAdrock3dCalendarShowOnCalendar fShowOnCalendar;
	bool fShowWeekDayHeader;
	int fWeekDayHeaderDisplayLen;
	bool fAllowDateSelection;
	System::SmallString<2>  m_DateArray[42];
	bool m_Working[42];
	int m_CurrentDateIndex;
	int m_PreviousDateIndex;
	bool fTriggerChangeEventsOnHold;
	bool fDateChangeEventsWaiting;
	bool fResizeNeeded;
	TFormBorderStyle fBorderStyle;
	int fCellWidth;
	int fCellHeight;
	int fButtonHeight;
	int fCellSpaceX;
	int fCellSpaceY;
	TPanelBevel fCellBevel;
	int fCellBevelWidth;
	TPanelBevel fCellsSurroundBevel;
	int fCellsSurroundBevelWidth;
	TPanelBevel fBevelStyle;
	int fBevelWidth;
	TPanelBevel fWeekDayHeaderBevel;
	int fWeekDayHeaderBevelWidth;
	bool fShowNonWorkDayColor;
	int fMonthLabelHeight;
	int fYearLabelHeight;
	TAdrock3dCalendarVerticalTextAlign fCellTextVerticalAlign;
	TAdrock3dCalendarHorizontalTextAlign fCellTextHorizontalAlign;
	TAdrock3dCalendarHorizontalTextAlign fWeekDayHeaderTextAlign;
	bool fMouseIsDown;
	bool fShowCustomCursors;
	TAdrockWorking fWorking;
	TAdrock3dCalendarDragMode fDragMode;
	TAdrock3dCalendarStartOfWeek fStartOfWeek;
	int fComboMinYear;
	int fComboMaxYear;
	int fDayHeaderFontHeight;
	Graphics::TFont* fButtonFont;
	Graphics::TFont* fMonthLabelFont;
	Graphics::TFont* fYearLabelFont;
	Graphics::TFont* fWeekDayHeaderFont;
	Graphics::TFont* fCellFont;
	Graphics::TFont* fSelectedCellFont;
	Graphics::TFont* fCombosFont;
	Graphics::TColor fColorCombosBack;
	Graphics::TColor fColorBack;
	Graphics::TColor fCellsBetweenCellsBackColor;
	Graphics::TColor fColorWeekDayHeaderMonFri;
	Graphics::TColor fColorWeekDayHeaderSunday;
	Graphics::TColor fColorWeekDayHeaderSaturday;
	Graphics::TColor fColorCellsHighlight;
	Graphics::TColor fColorCellsShadow;
	Graphics::TColor fCellsSelectedBackColor;
	Graphics::TColor fCellsBackColor;
	Graphics::TColor fDayHeaderBackColor;
	Graphics::TColor fColorPrevNextMonth;
	Graphics::TColor fColorPrevNextMonthBackColor;
	Graphics::TColor fColorWorkDay;
	Graphics::TColor fColorNonWorkDay;
	System::TDateTime fDate;
	Word fCurrentDay;
	Word fCurrentMonth;
	Word fCurrentYear;
	int nBeginIndex;
	int nEndIndex;
	bool fShowWeekNumbers;
	bool fShowPrevNextMonth;
	bool fShowButtonBar;
	bool fSelectPreviousNextMonth;
	void __fastcall InvalidateCalendar(void);
	void __fastcall SetSpaceAtLeft(int NewValue);
	void __fastcall SetSpaceAtTop(int NewValue);
	void __fastcall SetSpaceAtBottom(int NewValue);
	void __fastcall SetSpaceBetweenTopAndLabels(int NewSpace);
	void __fastcall SetSpaceFromSides(int NewSpace);
	void __fastcall SetSpaceBetweenCellsandButtons(int NewSpace);
	void __fastcall SetSpaceBetweenButtonsAndBottom(int NewSpace);
	void __fastcall SetSpaceBetweenLabelsAndWeekDayHeader(int NewSpace);
	void __fastcall SetSpaceBetweenWeekDayHeaderAndCells(int NewSpace);
	void __fastcall MonthComboBoxOnClick(System::TObject* Sender);
	void __fastcall YearComboBoxOnClick(System::TObject* Sender);
	void __fastcall ButtonsOnMouseMove(System::TObject* Sender, Classes::TShiftState Shift, int X, int 
		Y);
	void __fastcall NextYearOnClick(System::TObject* Sender);
	void __fastcall PrevYearOnClick(System::TObject* Sender);
	void __fastcall NextMonthOnClick(System::TObject* Sender);
	void __fastcall PrevMonthOnClick(System::TObject* Sender);
	void __fastcall SetButtonHeight(int NewButtonHeight);
	void __fastcall SetCellSpaceX(int NewSpaceX);
	void __fastcall SetCellSpaceY(int NewSpaceY);
	void __fastcall SetCellsSurroundBevel(Extctrls::TPanelBevel NewBevel);
	void __fastcall SetCellsSurroundBevelWidth(int NewBevelWidth);
	void __fastcall SetCellBevel(Extctrls::TPanelBevel NewBevel);
	void __fastcall SetCellBevelWidth(int NewBevelWidth);
	void __fastcall SetWeekDayHeaderBevel(Extctrls::TPanelBevel NewBevel);
	void __fastcall SetWeekDayHeaderBevelWidth(int NewBevelWidth);
	void __fastcall SetBevel(Extctrls::TPanelBevel NewBevel);
	void __fastcall SetBevelWidth(int NewWidth);
	void __fastcall SetStartofWeek(TAdrock3dCalendarStartOfWeek NewStartDay);
	void __fastcall SetWeekDayHeaderDisplayLen(int NewDisplayLen);
	double __fastcall GetMonthButtonPercentage(void);
	void __fastcall SetMonthButtonPercentage(double NewPercentage);
	void __fastcall SetText3dWeekDayHeader(TAdrock3dCalendarTextStyle Effect);
	void __fastcall SetText3dHighlighted(TAdrock3dCalendarTextStyle Effect);
	void __fastcall SetText3dCells(TAdrock3dCalendarTextStyle Effect);
	void __fastcall SetText3dLabels(TAdrock3dCalendarTextStyle Effect);
	void __fastcall SetColorCombosBack(Graphics::TColor NewColor);
	void __fastcall SetCellsBetweenCellsBackColor(Graphics::TColor NewColor);
	void __fastcall SetColorCellsHighlight(Graphics::TColor NewColor);
	void __fastcall SetColorCellsShadow(Graphics::TColor NewColor);
	void __fastcall SetColorBack(Graphics::TColor NewColor);
	void __fastcall SetCellsSelectedBackColor(Graphics::TColor NewColor);
	void __fastcall SetCellsBackColor(Graphics::TColor NewColor);
	void __fastcall SetDayHeaderBackColor(Graphics::TColor NewColor);
	void __fastcall SetColorPrevNextMonth(Graphics::TColor NewColor);
	void __fastcall SetPrevNextMonthBackColor(Graphics::TColor NewColor);
	void __fastcall SetColorWorkDay(Graphics::TColor NewColor);
	void __fastcall SetColorNonWorkDay(Graphics::TColor NewColor);
	void __fastcall SetCellVerticalTextAlign(TAdrock3dCalendarVerticalTextAlign NewVerticalTextAlign);
	void __fastcall SetCellHorizontalTextAlign(TAdrock3dCalendarHorizontalTextAlign NewHorizontalTextAlign
		);
	void __fastcall SetWeekDayHeaderTextAlign(TAdrock3dCalendarHorizontalTextAlign NewHorizontalTextAlign
		);
	void __fastcall SetSelectPreviousNextMonth(bool SelectDates);
	void __fastcall SetShowNonWorkDayColor(bool ShowNonWorkDay);
	void __fastcall SetWorking(TAdrockWorking Working);
	void __fastcall SetShowOnCalendar(TAdrock3dCalendarShowOnCalendar NewShow);
	void __fastcall SetShowButtonBar(bool ShowButtons);
	void __fastcall SetWeekDayHeader(bool NewShowWeekDayHeader);
	void __fastcall SetShowPrevNextMonth(bool ShowPrevNext);
	void __fastcall SetBorderStyle(Forms::TBorderStyle NewBorderStyle);
	void __fastcall SetDayHeaderFont(Graphics::TFont* NewFont);
	void __fastcall DayHeaderFontStyleChanged(System::TObject* Sender);
	void __fastcall SetMonthLabelFont(Graphics::TFont* NewFont);
	void __fastcall MonthLabelFontStyleChanged(System::TObject* Sender);
	void __fastcall SetYearLabelFont(Graphics::TFont* NewFont);
	void __fastcall YearLabelFontStyleChanged(System::TObject* Sender);
	void __fastcall SetButtonFont(Graphics::TFont* NewFont);
	void __fastcall ButtonsFontStyleChanged(System::TObject* Sender);
	void __fastcall SetCellFont(Graphics::TFont* NewFont);
	void __fastcall CellFontStyleChanged(System::TObject* Sender);
	void __fastcall SetCellsHighlightedFont(Graphics::TFont* NewFont);
	void __fastcall SelectedCellFontStyleChanged(System::TObject* Sender);
	void __fastcall SetCombosFont(Graphics::TFont* NewFont);
	void __fastcall CombosFontStyleChanged(System::TObject* Sender);
	void __fastcall SetCurrentDay(Word NewDay);
	void __fastcall SetCurrentMonth(Word NewMonth);
	void __fastcall SetCurrentYear(Word NewYear);
	void __fastcall SetDate(System::TDateTime NewDate);
	void __fastcall SetDateBasedOnIndex(int Index);
	void __fastcall LoadDateArray(void);
	int __fastcall GetMonthBegin(void);
	virtual void __fastcall SetParent(Controls::TWinControl* Aparent);
	virtual void __fastcall DoExit(void);
	virtual void __fastcall DOEnter(void);
	virtual void __fastcall DblClick(void);
	virtual void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, 
		int Y);
	virtual void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int 
		Y);
	virtual void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	void __fastcall SetShowCustomCursors(bool ShowMouse);
	void __fastcall DrawMonthLabel(void);
	void __fastcall DrawYearLabel(void);
	void __fastcall ResizeCells(void);
	bool __fastcall IsIndexOnWorkDay(int Cell);
	bool __fastcall ShouldIDrawThisCell(TAdrock3dCalendarDrawFlags DrawFlag, int Cell);
	void __fastcall DrawBetweenAllCells(void);
	void __fastcall DrawDates(TAdrock3dCalendarDrawFlags DrawFlag, int SelectedCell);
	void __fastcall DrawCalendarBackGround(void);
	void __fastcall DrawCalendarBorder(void);
	void __fastcall DrawWeekDayHeader(void);
	void __fastcall DrawFocusFrame(int nIndex);
	void __fastcall SetupLabels(void);
	void __fastcall SetupComboBoxs(void);
	void __fastcall SetupButtons(void);
	bool __fastcall PointInRect(const Windows::TRect &rectTest, int X, int Y);
	int __fastcall ReturnSpaceBetweenTopAndLabels(void);
	int __fastcall ReturnBorderWidth(void);
	int __fastcall ReturnBorderAndBevelWidth(void);
	int __fastcall ReturnBevelWidth(void);
	int __fastcall ReturnBevelWidthAroundCells(void);
	Windows::TRect __fastcall ReturnInsideClientRect(void);
	Windows::TRect __fastcall ReturnInsideCellRectFromIndex(int Index);
	Windows::TRect __fastcall ReturnOutSideCellsRect(void);
	Windows::TRect __fastcall ReturnCellsRect(void);
	Windows::TRect __fastcall ReturnCellRect(int CellX, int CellY);
	int __fastcall ReturnOffsetToCellsLeft(void);
	int __fastcall ReturnOffsetToCombosTop(void);
	int __fastcall ReturnOffsetToCellsTop(void);
	int __fastcall ReturnOffsetToButtonsTop(void);
	Windows::TRect __fastcall ReturnCellDimensions(void);
	Windows::TRect __fastcall ReturnInsideCellRect(int CellX, int CellY);
	int __fastcall ReturnCellSpaceX(void);
	int __fastcall ReturnCellSpaceY(void);
	Windows::TRect __fastcall ReturnDayHeaderRect(void);
	Windows::TRect __fastcall ReturnDayHeaderCellRect(int CellX);
	int __fastcall ReturnAllSpaceAtBottom(void);
	int __fastcall ReturnTopLabelsHeight(void);
	int __fastcall ReturnHeightOfButtons(void);
	int __fastcall ReturnDayHeaderHeight(void);
	int __fastcall ReturnSpaceAtTop(void);
	int __fastcall ReturnSpaceAtBottom(void);
	int __fastcall ReturnSpaceFromSides(void);
	int __fastcall ReturnSpaceBetweenLabelsAndWeekDayHeader(void);
	int __fastcall ReturnSpaceBetweenWeekDayHeaderAndCells(void);
	int __fastcall ReturnSpaceBetweenCellsandButtons(void);
	int __fastcall ReturnSpaceBetweenButtonsAndBottom(void);
	void __fastcall DrawCalendarCellsBackGround(void);
	void __fastcall SetDrawingStyle(TAdrock3dCalendarDrawingStyle NewDrawingStyle);
	void __fastcall TriggerDateChangeEvents(void);
	void __fastcall TriggerBeforeDateChangeEvents(void);
	void __fastcall SetPreviousYearCaption( System::AnsiString NewCaption);
	void __fastcall SetPreviousMonthCaption( System::AnsiString NewCaption);
	void __fastcall SetNextYearCaption( System::AnsiString NewCaption);
	void __fastcall SetNextMonthCaption( System::AnsiString NewCaption);
	Controls::TCursor __fastcall ReturnCursorHandleFromCursor(TAdrock3dCalendarCursor aCursor);
	void __fastcall SetComboMinYear(int NewMin);
	void __fastcall SetComboMaxYear(int NewMax);
	
protected:
	void __fastcall SetupDefaults(void);
	__fastcall virtual TAdrock3dCalendar(Classes::TComponent* Aowner);
	__fastcall virtual ~TAdrock3dCalendar(void);
	HIDESBASE MESSAGE void __fastcall WMSetFocus(Messages::TWMSetFocus &Message);
	HIDESBASE MESSAGE void __fastcall WMKillFocus(Messages::TWMKillFocus &Message);
	MESSAGE void __fastcall Resize(Messages::TWMSize &Message);
	virtual void __fastcall Paint(void);
	MESSAGE void __fastcall WMGetDlgCode(Messages::TWMNoParams &Message);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	
public:
	Stdctrls::TComboBox* fMonthComboBox;
	Stdctrls::TComboBox* fYearComboBox;
	TAdrock3dCalendarTextStyle fText3dCells;
	TAdrock3dCalendarTextStyle fText3dLabels;
	TAdrock3dCalendarTextStyle fText3dHighlight;
	TAdrock3dCalendarTextStyle fText3dWeekDayHeader;
	Word __fastcall ReturnCellTextDrawingFlags(void);
	void __fastcall RefreshCells(void);
	void __fastcall SetupMonthAndYearComboText(void);
	void __fastcall Draw3dText(TAdrock3dCalendarTextStyle Effect,  System::AnsiString TextStr, Windows::TRect 
		&Rect, Word Flags);
	void __fastcall RepaintCellByIndex(int Index);
	bool __fastcall IsIndexInCurrentCalendarMonth(int nIndex);
	int __fastcall GetIndexFromPoint(int nLeft, int nTop);
	System::TDateTime __fastcall GetDateFromIndex(int Index);
	int __fastcall GetDayFromIndex(int Index);
	int __fastcall GetIndexFromDay(int Day);
	int __fastcall GetIndexFromDate(System::TDateTime GetDate);
	System::AnsiString __fastcall DateString(void);
	void __fastcall SetDateString( System::AnsiString NewDate);
	void __fastcall SetWorkingFlag(System::TDateTime Date, bool Working);
	void __fastcall GotoMonth(int fGotoMonth);
	void __fastcall GotoYear(int fGotoYear);
	void __fastcall Today(void);
	void __fastcall NextDay(void);
	void __fastcall PrevDay(void);
	void __fastcall NextWeek(void);
	void __fastcall PrevWeek(void);
	void __fastcall NextMonth(void);
	void __fastcall PrevMonth(void);
	void __fastcall NextYear(void);
	void __fastcall PrevYear(void);
	
__published:
	__property PopupMenu ;
	__property Align ;
	__property TabStop ;
	__property Enabled ;
	__property Visible ;
	__property DragCursor ;
	__property OnClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDrag ;
	__property OnKeyDown ;
	__property OnKeyUp ;
	__property OnKeyPress ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property Canvas ;
	__property TAdrock3dCalendarDragMode DragMode = {read=fDragMode, write=fDragMode, default=1};
	__property int ButtonsHeight = {read=fButtonHeight, write=SetButtonHeight, nodefault};
	__property TAdrock3dCalendarCursor CursorSelectable = {read=fCursorSelectable, write=fCursorSelectable
		, default=3};
	__property TAdrock3dCalendarCursor CursorNonSelectable = {read=fCursorNonSelectable, write=fCursorNonSelectable
		, default=2};
	__property TAdrock3dCalendarCursor CursorClick = {read=fCursorClick, write=fCursorClick, default=3}
		;
	__property int ComboMinYear = {read=fComboMinYear, write=SetComboMinYear, default=1900};
	__property int ComboMaxYear = {read=fComboMaxYear, write=SetComboMaxYear, default=2099};
	__property bool ShowCustomCursors = {read=fShowCustomCursors, write=SetShowCustomCursors, default=0
		};
	__property bool AllowDateSelection = {read=fAllowDateSelection, write=fAllowDateSelection, default=1
		};
	__property double MonthButtonPercentage = {read=GetMonthButtonPercentage, write=SetMonthButtonPercentage
		};
	__property int SpaceBetweenLabelsAndWeekDayHeader = {read=fSpaceBetweenLabelsAndWeekDayHeader, write=
		SetSpaceBetweenLabelsAndWeekDayHeader, default=5};
	__property int SpaceBetweenWeekDayHeaderAndCells = {read=fSpaceBetweenWeekDayHeaderAndCells, write=
		SetSpaceBetweenWeekDayHeaderAndCells, default=5};
	__property int SpaceBetweenCellsandButtons = {read=fSpaceBetweenCellsandButtons, write=SetSpaceBetweenCellsandButtons
		, default=5};
	__property int SpaceBetweenButtonsAndBottom = {read=fSpaceBetweenButtonsAndBottom, write=SetSpaceBetweenButtonsAndBottom
		, default=5};
	__property int SpaceBetweenTopAndLabels = {read=fSpaceBetweenTopAndLabels, write=SetSpaceBetweenTopAndLabels
		, default=5};
	__property int SpaceFromSides = {read=fSpaceFromSides, write=SetSpaceFromSides, default=5};
	__property int SpaceAtTop = {read=fSpaceAtTop, write=SetSpaceAtTop, default=0};
	__property int SpaceAtBottom = {read=fSpaceAtBottom, write=SetSpaceAtBottom, default=0};
	__property int SpaceAtLeft = {read=fSpaceAtLeft, write=SetSpaceAtLeft, default=0};
	__property TAdrock3dCalendarVerticalTextAlign CellTextVerticalAlign = {read=fCellTextVerticalAlign, 
		write=SetCellVerticalTextAlign, default=1};
	__property TAdrock3dCalendarHorizontalTextAlign CellTextHorizontalAlign = {read=fCellTextHorizontalAlign
		, write=SetCellHorizontalTextAlign, default=1};
	__property TAdrock3dCalendarHorizontalTextAlign WeekDayHeaderTextAlign = {read=fWeekDayHeaderTextAlign
		, write=SetWeekDayHeaderTextAlign, default=1};
	__property int CellSpaceX = {read=fCellSpaceX, write=SetCellSpaceX, default=2};
	__property int CellSpaceY = {read=fCellSpaceY, write=SetCellSpaceY, default=2};
	__property int BevelWidth = {read=fBevelWidth, write=SetBevelWidth, default=2};
	__property Extctrls::TPanelBevel Bevel = {read=fBevelStyle, write=SetBevel, default=2};
	__property TAdrock3dCalendarTextStyle Text3dLabels = {read=fText3dLabels, write=SetText3dLabels, default=0
		};
	__property TAdrock3dCalendarTextStyle Text3dCells = {read=fText3dCells, write=SetText3dCells, default=1
		};
	__property TAdrock3dCalendarTextStyle Text3dHighlight = {read=fText3dHighlight, write=SetText3dHighlighted
		, default=0};
	__property TAdrock3dCalendarTextStyle Text3dWeekDayHeader = {read=fText3dWeekDayHeader, write=SetText3dWeekDayHeader
		, default=2};
	__property bool ShowNonWorkDayColor = {read=fShowNonWorkDayColor, write=SetShowNonWorkDayColor, default=1
		};
	__property TAdrock3dCalendarStartOfWeek StartOfWeek = {read=fStartOfWeek, write=SetStartofWeek, nodefault
		};
	__property bool ShowWeekDayHeader = {read=fShowWeekDayHeader, write=SetWeekDayHeader, default=1};
	__property Extctrls::TPanelBevel WeekDayHeaderBevel = {read=fWeekDayHeaderBevel, write=SetWeekDayHeaderBevel
		, default=2};
	__property int WeekDayHeaderBevelWidth = {read=fWeekDayHeaderBevelWidth, write=SetWeekDayHeaderBevelWidth
		, default=2};
	__property Extctrls::TPanelBevel CellBevel = {read=fCellBevel, write=SetCellBevel, default=1};
	__property int CellBevelWidth = {read=fCellBevelWidth, write=SetCellBevelWidth, default=1};
	__property Extctrls::TPanelBevel CellsSurroundBevel = {read=fCellsSurroundBevel, write=SetCellsSurroundBevel
		, default=0};
	__property int CellsSurroundBevelWidth = {read=fCellsSurroundBevelWidth, write=SetCellsSurroundBevelWidth
		, default=1};
	__property TAdrock3dCalendarDrawingStyle Style = {read=fDrawingStyle, write=SetDrawingStyle, default=0
		};
	__property TAdrock3dCalendarShowOnCalendar ShowOnCalendar = {read=fShowOnCalendar, write=SetShowOnCalendar
		, default=1};
	__property bool ShowButtonBar = {read=fShowButtonBar, write=SetShowButtonBar, default=1};
	__property Graphics::TColor ColorCombosBack = {read=fColorCombosBack, write=SetColorCombosBack, default=-2147483643
		};
	__property Graphics::TColor ColorWorkDay = {read=fColorWorkDay, write=SetColorWorkDay, default=16711680
		};
	__property Graphics::TColor ColorNonWorkDay = {read=fColorNonWorkDay, write=SetColorNonWorkDay, default=255
		};
	__property Graphics::TColor ColorBack = {read=fColorBack, write=SetColorBack, default=-2147483633};
		
	__property Graphics::TColor ColorPrevNextMonth = {read=fColorPrevNextMonth, write=SetColorPrevNextMonth
		, default=8421504};
	__property Graphics::TColor ColorCellsBack = {read=fCellsBackColor, write=SetCellsBackColor, default=-2147483633
		};
	__property Graphics::TColor ColorBetweenCellsBackColor = {read=fCellsBetweenCellsBackColor, write=SetCellsBetweenCellsBackColor
		, default=-2147483633};
	__property Graphics::TColor ColorSelectedBackColor = {read=fCellsSelectedBackColor, write=SetCellsSelectedBackColor
		, default=-2147483628};
	__property Graphics::TColor ColorPrevNextMonthBackColor = {read=fColorPrevNextMonthBackColor, write=
		SetPrevNextMonthBackColor, default=-2147483628};
	__property Graphics::TColor ColorWeekDayHeaderBackColor = {read=fDayHeaderBackColor, write=SetDayHeaderBackColor
		, default=-2147483633};
	__property Graphics::TColor ColorCellsHighlight = {read=fColorCellsHighlight, write=SetColorCellsHighlight
		, default=-2147483628};
	__property Graphics::TColor ColorCellsShadow = {read=fColorCellsShadow, write=SetColorCellsShadow, 
		default=-2147483632};
	__property TAdrockWorking WorkingDays = {read=fWorking, write=SetWorking, default=62};
	__property int WeekDayHeaderDisplayLen = {read=fWeekDayHeaderDisplayLen, write=SetWeekDayHeaderDisplayLen
		, default=2};
	__property bool SelectPreviousNextMonthDates = {read=fSelectPreviousNextMonth, write=SetSelectPreviousNextMonth
		, default=0};
	__property Word Day = {read=fCurrentDay, write=SetCurrentDay, nodefault};
	__property Word Month = {read=fCurrentMonth, write=SetCurrentMonth, nodefault};
	__property Word Year = {read=fCurrentYear, write=SetCurrentYear, nodefault};
	__property System::TDateTime Date = {read=fDate, write=SetDate};
	__property bool ShowPrevNextMonth = {read=fShowPrevNextMonth, write=SetShowPrevNextMonth, default=1
		};
	__property Forms::TBorderStyle BorderStyle = {read=fBorderStyle, write=SetBorderStyle, default=1};
	__property Tadrock3dCalendarMouseMode MouseMode = {read=fMouseMode, write=fMouseMode, default=1};
	__property TAdrock3dCalendarSelectMode SelectMode = {read=fSelectMode, write=fSelectMode, default=0
		};
	__property Graphics::TFont* MonthLabelFont = {read=fMonthLabelFont, write=SetMonthLabelFont, nodefault
		};
	__property Graphics::TFont* YearLabelFont = {read=fYearLabelFont, write=SetYearLabelFont, nodefault
		};
	__property Graphics::TFont* ButtonsFont = {read=fButtonFont, write=SetButtonFont, nodefault};
	__property Graphics::TFont* WeekDayHeaderFont = {read=fWeekDayHeaderFont, write=SetDayHeaderFont, nodefault
		};
	__property Graphics::TFont* CellFont = {read=fCellFont, write=SetCellFont, nodefault};
	__property Graphics::TFont* SelectedCellFont = {read=fSelectedCellFont, write=SetCellsHighlightedFont
		, nodefault};
	__property Graphics::TFont* CombosFont = {read=fCombosFont, write=SetCombosFont, nodefault};
	__property System::AnsiString PreviousYearCaption = {read=fPreviousYearCaption, write=SetPreviousYearCaption
		, nodefault};
	__property System::AnsiString PreviousMonthCaption = {read=fPreviousMonthCaption, write=SetPreviousMonthCaption
		, nodefault};
	__property System::AnsiString NextYearCaption = {read=fNextYearCaption, write=SetNextYearCaption, nodefault
		};
	__property System::AnsiString NextMonthCaption = {read=fNextMonthCaption, write=SetNextMonthCaption
		, nodefault};
	__property Classes::TNotifyEvent OnDateChange = {read=fOnDateChange, write=fOnDateChange};
	__property Classes::TNotifyEvent OnDayChange = {read=fOnDayChange, write=fOnDayChange};
	__property Classes::TNotifyEvent OnWeekChange = {read=fOnWeekChange, write=fOnWeekChange};
	__property Classes::TNotifyEvent OnMonthChange = {read=fOnMonthChange, write=fOnMonthChange};
	__property Classes::TNotifyEvent OnYearChange = {read=fOnYearChange, write=fOnYearChange};
	__property Classes::TNotifyEvent OnBeforeDateChange = {read=fOnBeforeDateChange, write=fOnBeforeDateChange
		};
	__property Classes::TNotifyEvent OnBeforeDayChange = {read=fOnBeforeDayChange, write=fOnBeforeDayChange
		};
	__property Classes::TNotifyEvent OnBeforeWeekChange = {read=fOnBeforeWeekChange, write=fOnBeforeWeekChange
		};
	__property Classes::TNotifyEvent OnBeforeMonthChange = {read=fOnBeforeMonthChange, write=fOnBeforeMonthChange
		};
	__property Classes::TNotifyEvent OnBeforeYearChange = {read=fOnBeforeYearChange, write=fOnBeforeYearChange
		};
	__property TAdrock3dCalendarDrawCell OnDrawCell = {read=fOnOwnerDrawCell, write=fOnOwnerDrawCell};
	__property TAdrock3dCalendarCellClick OnCellClick = {read=fOnCellClick, write=fOnCellClick};
	__property TAdrock3dCalendarCellDblClick OnCellDblClick = {read=fOnCellDblClick, write=fOnCellDblClick
		};
	__property System::AnsiString Version = {read=fVersionString, write=fVersionString1, stored=false, 
		nodefault};
public:
	/* TWinControl.CreateParented */ __fastcall TAdrock3dCalendar(HWND ParentWindow) : Controls::TCustomControl(
		ParentWindow) { }
	
};

//-- var, const, procedure ---------------------------------------------------
#define VersionString "1.28 (Registered Version)"
#define crPointCursor (Byte)(20)
#define crClickCursor (Byte)(21)
#define crNoGoCursor (Byte)(22)
#define DEFAULT_COMBO_MIN_YEAR (Word)(1900)
#define DEFAULT_COMBO_MAX_YEAR (Word)(2099)
#define DayHeader_RECT (Shortint)(-1)
extern int m_DaysPerMonth[12];
extern void __fastcall Register(void);
//-- template instantiations -------------------------------------------------
template class SmallString<2> ;
template class TAdrockWorking ;

}	/* namespace Ad3dcal */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Ad3dcal;
#endif
//-- end unit ----------------------------------------------------------------
#endif	// Ad3dcal
