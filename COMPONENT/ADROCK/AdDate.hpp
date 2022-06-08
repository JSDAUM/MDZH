//----------------------------------------------------------------------------
// Addate.hpp - bcbdcc32 generated hdr (DO NOT EDIT) rev: 0
// From: Addate.pas
//----------------------------------------------------------------------------
#ifndef AddateHPP
#define AddateHPP
//----------------------------------------------------------------------------
#include <Dialogs.hpp>
#include <SysUtils.hpp>
#include <Graphics.hpp>
#include <Controls.hpp>
#include <Buttons.hpp>
#include <StdCtrls.hpp>
#include <Windows.hpp>
#include <Forms.hpp>
#include <Classes.hpp>
#include <System.hpp>
namespace Addate
{
//-- type declarations -------------------------------------------------------
enum TDateOrder { doMDY, doDMY, doYMD, doDMMMY, doMMMDY, doYMMMD };

typedef Word TDayTable[12];

typedef TDayTable *PDayTable;

enum TAdrockDayOfWeek { Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, InvalidDayOfWeek 
	};

class __declspec(delphiclass) TAdrockDates;
class __declspec(pascalimplementation) TAdrockDates : public System::TObject
{
	typedef System::TObject inherited;
	
public:
	Classes::TStrings* HolidayStringList;
	__fastcall TAdrockDates(void);
	int __fastcall ReturnDelphiDayOfWeek(int StartingDayOfWeek, int WeekDay);
	System::AnsiString __fastcall ReturnWeekDayName(int StartingDayOfWeek, int WeekDay);
	Word __fastcall ReturnWeekofMonth(int StartingDayOfWeek, System::TDateTime WorkDate);
	int __fastcall ReturnWeekofYear(int StartingDayOfWeek, System::TDateTime WorkDate);
	Word __fastcall ReturnDayOfWeek(int StartingDayOfWeek, System::TDateTime WorkDate);
	Word __fastcall ReturnDayOfMonth(System::TDateTime WorkDate);
	Word __fastcall ReturnDayOfYear(System::TDateTime WorkDate);
	Word __fastcall ReturnMonth(System::TDateTime WorkDate);
	Word __fastcall ReturnQuarter(System::TDateTime WorkDate);
	Word __fastcall ReturnYear(System::TDateTime WorkDate);
	Word __fastcall ReturnCentury(System::TDateTime WorkDate);
	System::AnsiString __fastcall ReturnDayTh(System::TDateTime WorkDate);
	System::AnsiString __fastcall ReturnDayThi(int WorkDay);
	System::AnsiString __fastcall ReturnDaysAgo(System::TDateTime WorkDate);
	System::AnsiString __fastcall ReturnWeeksAgo(int StartingDayOfWeek, System::TDateTime WorkDate);
	System::AnsiString __fastcall ReturnMonthsAgo(System::TDateTime WorkDate);
	System::AnsiString __fastcall ReturnQuartersAgo(System::TDateTime WorkDate);
	System::AnsiString __fastcall ReturnYearsAgo(System::TDateTime WorkDate);
	bool __fastcall AreDatesInSameMonth(System::TDateTime FirstDate, System::TDateTime SecondDate);
	bool __fastcall AreDatesInSameYear(System::TDateTime FirstDate, System::TDateTime SecondDate);
	bool __fastcall AreDatesInSameMonthAndYear(System::TDateTime FirstDate, System::TDateTime SecondDate
		);
	int __fastcall ReturnBoundaryWeeksBetweenDates(int StartingDayOfWeek, System::TDateTime FirstDate, 
		System::TDateTime SecondDate);
	int __fastcall ReturnBoundaryQuartersBetweenDates(System::TDateTime FirstDate, System::TDateTime SecondDate
		);
	int __fastcall ReturnBoundaryMonthsBetweenDates(System::TDateTime FirstDate, System::TDateTime SecondDate
		);
	int __fastcall ReturnBoundaryYearsBetweenDates(System::TDateTime FirstDate, System::TDateTime SecondDate
		);
	long __fastcall ReturnDaysBetweenDates(System::TDateTime FirstDate, System::TDateTime SecondDate);
	int __fastcall ReturnWeeksBetweenDates(System::TDateTime FirstDate, System::TDateTime SecondDate);
	int __fastcall ReturnMonthsBetweenDates(System::TDateTime FirstDate, System::TDateTime SecondDate);
		
	int __fastcall ReturnQuartersBetweenDates(System::TDateTime FirstDate, System::TDateTime SecondDate
		);
	int __fastcall ReturnYearsBetweenDates(System::TDateTime FirstDate, System::TDateTime SecondDate);
	PDayTable __fastcall GetDayTable(Word Year);
	bool __fastcall DoEncodeDate(Word fYear, Word fMonth, Word fDay, System::TDateTime &fDate);
	void __fastcall ScanCommasAndBlanks(const System::AnsiString S, int &Pos);
	void __fastcall ScanBlanks(const System::AnsiString S, int &Pos);
	bool __fastcall ScanMonthWord(const System::AnsiString S, int &Pos, Word &Number);
	bool __fastcall ScanNumber(const System::AnsiString S, int &Pos, Word &Number);
	bool __fastcall ScanCharNoSpace(const System::AnsiString S, int &Pos, char Ch);
	bool __fastcall ScanChar(const System::AnsiString S, int &Pos, char Ch);
	TDateOrder __fastcall GetTextDateOrder(const System::AnsiString DateFormat);
	TDateOrder __fastcall GetDateOrder(const System::AnsiString DateFormat);
	System::TDateTime __fastcall ReturnEasterSunday(Word Year);
	System::TDateTime __fastcall AdrockStrToDate( System::AnsiString WorkDate);
	bool __fastcall AdrockScanDate(const System::AnsiString S, int &Pos, System::TDateTime &fDate);
	bool __fastcall ScanDate(const System::AnsiString S, int &Pos, System::TDateTime &Date);
	bool __fastcall IsValidDate( System::AnsiString WorkDate);
	bool __fastcall IsValidAdrockDate( System::AnsiString WorkDate);
	bool __fastcall IsLeapyear(System::TDateTime WorkDate);
	bool __fastcall IsLeapYeari(int aYear);
	bool __fastcall IsDateInRange(System::TDateTime WorkDate, System::TDateTime StartDate, System::TDateTime 
		EndDate);
	System::TDateTime __fastcall AddDays(int NumberOfDays, System::TDateTime WorkDate);
	System::TDateTime __fastcall AddWeeks(int NumberOfWeeks, System::TDateTime WorkDate);
	System::TDateTime __fastcall AddMonths(int NumberOfMonths, System::TDateTime WorkDate);
	System::TDateTime __fastcall AddQuarters(int NumberOfQuarters, System::TDateTime WorkDate);
	System::TDateTime __fastcall AddYears(int NumberOfYears, System::TDateTime WorkDate);
	System::AnsiString __fastcall FormatDate( System::AnsiString FormatMask, System::TDateTime WorkDate
		);
	Word __fastcall DaysInMonth(System::TDateTime WorkDate);
	Word __fastcall DaysInMonthi(Word Month, Word Year);
	Word __fastcall DaysInYear(System::TDateTime WorkDate);
	Word __fastcall DaysInYeari(int Year);
	Word __fastcall DaysLeftInMonth(System::TDateTime WorkDate);
	Word __fastcall DaysLeftInMonthi(int Day, int Month, int Year);
	Word __fastcall DaysLeftInYear(System::TDateTime WorkDate);
	Word __fastcall DaysLeftInYeari(int Day, int Month, int Year);
	System::TDateTime __fastcall AddDate( System::AnsiString DateMask, int NumberOfPeriods, System::TDateTime 
		WorkDate);
	long __fastcall DateDiff( System::AnsiString DateMask, int StartingDayOfWeek, System::TDateTime FirstDate
		, System::TDateTime SecondDate);
	int __fastcall GetFirstofMonthWeekNumber(int StartingDayOfMonth, System::TDateTime WorkDate);
	int __fastcall ReturnPersonsAge(System::TDateTime DOB);
	System::AnsiString __fastcall AgeStr(System::TDateTime aDate);
	System::TDateTime __fastcall ReturnDateOrdinalDayOfWeek(bool StartOfMonth, int Week, int WeekDay, int 
		Month, int Year);
	System::AnsiString __fastcall ReturnDaysInthePast(System::TDateTime WorkDate, System::TDateTime TestDate
		);
	System::AnsiString __fastcall ReturnWeeksInthePast(int StartingDayOfWeek, System::TDateTime WorkDate
		, System::TDateTime TestDate);
	System::AnsiString __fastcall ReturnMonthsInthePast(System::TDateTime WorkDate, System::TDateTime TestDate
		);
	System::AnsiString __fastcall ReturnQuartersInthePast(System::TDateTime WorkDate, System::TDateTime 
		TestDate);
	System::AnsiString __fastcall ReturnYearsInthePast(System::TDateTime WorkDate, System::TDateTime TestDate
		);
	System::TDateTime __fastcall ReturnFirstOfAWeek(int StartingDayOfWeek, System::TDateTime WorkDate);
		
	System::TDateTime __fastcall ReturnLastOfAWeek(int StartingDayOfWeek, System::TDateTime WorkDate);
	System::TDateTime __fastcall ReturnLastOfGivenMonth(System::TDateTime ADate);
	System::TDateTime __fastcall ReturnFirstOfGivenMonth(System::TDateTime ADate);
	System::TDateTime __fastcall ReturnFirstOfTheWeek(void);
	System::TDateTime __fastcall ReturnLastOfTheWeek(void);
	System::TDateTime __fastcall ReturnFirstOfTheMonth(void);
	System::TDateTime __fastcall ReturnLastOfTheMonth(void);
	System::TDateTime __fastcall ReturnFirstOfTheYear(void);
	System::TDateTime __fastcall ReturnLastOfTheYear(void);
	System::TDateTime __fastcall ReturnFirstOfLastWeek(void);
	System::TDateTime __fastcall ReturnLastOfLastWeek(void);
	System::TDateTime __fastcall ReturnFirstOfLastMonth(void);
	System::TDateTime __fastcall ReturnLastOfLastMonth(void);
	System::TDateTime __fastcall ReturnFirstOfLastYear(void);
	System::TDateTime __fastcall ReturnLastOfLastYear(void);
	System::TDateTime __fastcall IntToDate(long WorkDate);
	long __fastcall DateToInt(System::TDateTime WorkDate);
	bool __fastcall IsDateWithinRange(System::TDateTime TestDate, System::TDateTime FirstDate, System::TDateTime 
		LastDate);
	System::TDateTime __fastcall NextBusinessDay(System::TDateTime RequiredDate);
	System::TDateTime __fastcall PrevBusinessDay(System::TDateTime RequiredDate);
	int __fastcall ReturnBusinessDaysBetweenDates(System::TDateTime FirstDate, System::TDateTime LastDate
		);
	System::AnsiString __fastcall VerbalDate(System::TDateTime WorkDate);
	bool __fastcall IsMonday(System::TDateTime WorkDate);
	bool __fastcall IsTuesday(System::TDateTime WorkDate);
	bool __fastcall IsWednesday(System::TDateTime WorkDate);
	bool __fastcall IsThursday(System::TDateTime WorkDate);
	bool __fastcall IsFriday(System::TDateTime WorkDate);
	bool __fastcall IsSaturday(System::TDateTime WorkDate);
	bool __fastcall IsSunday(System::TDateTime WorkDate);
	bool __fastcall IsJanuary(System::TDateTime WorkDate);
	bool __fastcall IsFebruary(System::TDateTime WorkDate);
	bool __fastcall IsMarch(System::TDateTime WorkDate);
	bool __fastcall IsApril(System::TDateTime WorkDate);
	bool __fastcall IsMay(System::TDateTime WorkDate);
	bool __fastcall IsJune(System::TDateTime WorkDate);
	bool __fastcall IsJuly(System::TDateTime WorkDate);
	bool __fastcall IsAugust(System::TDateTime WorkDate);
	bool __fastcall IsSeptember(System::TDateTime WorkDate);
	bool __fastcall IsOctober(System::TDateTime WorkDate);
	bool __fastcall IsNovember(System::TDateTime WorkDate);
	bool __fastcall IsDecember(System::TDateTime WorkDate);
	bool __fastcall IsWeekend(System::TDateTime WorkDate);
	bool __fastcall IsWeekday(System::TDateTime WorkDate);
	bool __fastcall IsAM(System::TDateTime WorkDate);
	bool __fastcall IsPM(System::TDateTime WorkDate);
	bool __fastcall IsMorning(System::TDateTime WorkDate);
	bool __fastcall IsAfternoon(System::TDateTime WorkDate);
	bool __fastcall IsMidday(System::TDateTime WorkDate);
	bool __fastcall IsMidNight(System::TDateTime WorkDate);
	bool __fastcall IsChristmasDay(System::TDateTime WorkDate);
	bool __fastcall IsNewYearsDay(System::TDateTime WorkDate);
	bool __fastcall IsEasterSunday(System::TDateTime WorkDate);
	bool __fastcall IsFirstOfTheMonth(System::TDateTime WorkDate);
	bool __fastcall IsLastOfTheMonth(System::TDateTime WorkDate);
	bool __fastcall IsHoliday(System::TDateTime WorkDate);
	bool __fastcall IsBusinessDay(System::TDateTime WorkDate);
	bool __fastcall IsBusinessHoliday(System::TDateTime WorkDate);
	bool __fastcall IsDateInPosNegRange(System::TDateTime WorkDate, System::TDateTime CompareDate, int 
		PositiveDays, int NegativeDays);
	bool __fastcall IsDateInPosNegBusinessRange(System::TDateTime WorkDate, System::TDateTime CompareDate
		, int PositiveDays, int NegativeDays);
	void __fastcall SetHolidayStringList(Classes::TStrings* NewHolidayStringList);
	System::TDateTime __fastcall AddBusinessDays(int NumberOfDays, System::TDateTime WorkDate);
	bool __fastcall IsEmptyDate( System::AnsiString WorkDate);
	void __fastcall SetSystemTime(Byte Hour, Byte Minute, Byte Second, Byte Hundreths);
	void __fastcall SetSystemDate(Word Year, Byte Month, Byte Day);
	long __fastcall SecondsBetweenDates(System::TDateTime fStartDateTime, System::TDateTime fEndDateTime
		);
	System::TDateTime __fastcall DecodeTextDate( System::AnsiString DateFormatStr,  System::AnsiString 
		DateStr);
	int __fastcall ConvertDayOfWeekToInt(TAdrockDayOfWeek DayOfWeek);
	TAdrockDayOfWeek __fastcall ConvertIntToDayOfWeek(int DayOfWeek);
	Word __fastcall ExpandYear(Word fyear);
	Word __fastcall ReturnWeekofYear_Work(bool RealWeek, int Recursive, int StartingDayOfWeek, System::TDateTime 
		WorkDate);
	int __fastcall ReturnWeeksInYear(int StartingDayOfWeek, int Year);
	void __fastcall ReturnYearsMonthsDaysBetweenDates(System::TDateTime FirstDate, System::TDateTime LastDate
		, Word &fYear, Word &fMonth, Word &fDay);
public:
	/* TObject.Destroy */ __fastcall virtual ~TAdrockDates(void) { }
	
};

//-- var, const, procedure ---------------------------------------------------
#define Version "2.00"
extern void __fastcall FreeAdrockDateClass(void);
extern void __fastcall CreateAdrockDateClass(void);
extern int __fastcall ReturnDelphiDayOfWeek(int StartingDayOfWeek, int WeekDay);
extern System::AnsiString __fastcall ReturnWeekDayName(int StartingDayOfWeek, int WeekDay);
extern Word __fastcall ReturnWeekofMonth(int StartingDayOfWeek, System::TDateTime WorkDate);
extern int __fastcall ReturnWeekofYear(int StartingDayOfWeek, System::TDateTime WorkDate);
extern Word __fastcall ReturnDayOfWeek(int StartingDayOfWeek, System::TDateTime WorkDate);
extern Word __fastcall ReturnDayOfMonth(System::TDateTime WorkDate);
extern Word __fastcall ReturnDayOfYear(System::TDateTime WorkDate);
extern Word __fastcall ReturnMonth(System::TDateTime WorkDate);
extern Word __fastcall ReturnQuarter(System::TDateTime WorkDate);
extern Word __fastcall ReturnYear(System::TDateTime WorkDate);
extern Word __fastcall ReturnCentury(System::TDateTime WorkDate);
extern System::AnsiString __fastcall ReturnDayTh(System::TDateTime WorkDate);
extern System::AnsiString __fastcall ReturnDayThi(int WorkDay);
extern System::AnsiString __fastcall ReturnDaysAgo(System::TDateTime WorkDate);
extern System::AnsiString __fastcall ReturnWeeksAgo(int StartingDayOfWeek, System::TDateTime WorkDate
	);
extern System::AnsiString __fastcall ReturnMonthsAgo(System::TDateTime WorkDate);
extern System::AnsiString __fastcall ReturnQuartersAgo(System::TDateTime WorkDate);
extern System::AnsiString __fastcall ReturnYearsAgo(System::TDateTime WorkDate);
extern bool __fastcall AreDatesInSameMonth(System::TDateTime FirstDate, System::TDateTime SecondDate
	);
extern bool __fastcall AreDatesInSameYear(System::TDateTime FirstDate, System::TDateTime SecondDate)
	;
extern bool __fastcall AreDatesInSameMonthAndYear(System::TDateTime FirstDate, System::TDateTime SecondDate
	);
extern int __fastcall ReturnBoundaryWeeksBetweenDates(int StartingDayOfWeek, System::TDateTime FirstDate
	, System::TDateTime SecondDate);
extern int __fastcall ReturnBoundaryQuartersBetweenDates(System::TDateTime FirstDate, System::TDateTime 
	SecondDate);
extern int __fastcall ReturnBoundaryMonthsBetweenDates(System::TDateTime FirstDate, System::TDateTime 
	SecondDate);
extern int __fastcall ReturnBoundaryYearsBetweenDates(System::TDateTime FirstDate, System::TDateTime 
	SecondDate);
extern long __fastcall ReturnDaysBetweenDates(System::TDateTime FirstDate, System::TDateTime SecondDate
	);
extern int __fastcall ReturnWeeksBetweenDates(System::TDateTime FirstDate, System::TDateTime SecondDate
	);
extern int __fastcall ReturnMonthsBetweenDates(System::TDateTime FirstDate, System::TDateTime SecondDate
	);
extern int __fastcall ReturnQuartersBetweenDates(System::TDateTime FirstDate, System::TDateTime SecondDate
	);
extern int __fastcall ReturnYearsBetweenDates(System::TDateTime FirstDate, System::TDateTime SecondDate
	);
extern bool __fastcall IsValidDate( System::AnsiString WorkDate);
extern System::TDateTime __fastcall AdrockStrToDate( System::AnsiString WorkDate);
extern bool __fastcall IsValidAdrockDate( System::AnsiString WorkDate);
extern bool __fastcall IsLeapyear(System::TDateTime WorkDate);
extern bool __fastcall IsLeapYeari(int aYear);
extern bool __fastcall IsDateInRange(System::TDateTime WorkDate, System::TDateTime StartDate, System::TDateTime 
	EndDate);
extern System::TDateTime __fastcall AddDays(int NumberOfDays, System::TDateTime WorkDate);
extern System::TDateTime __fastcall AddWeeks(int NumberOfWeeks, System::TDateTime WorkDate);
extern System::TDateTime __fastcall AddMonths(int NumberOfMonths, System::TDateTime WorkDate);
extern System::TDateTime __fastcall AddQuarters(int NumberOfQuarters, System::TDateTime WorkDate);
extern System::TDateTime __fastcall AddYears(int NumberOfYears, System::TDateTime WorkDate);
extern System::AnsiString __fastcall FormatDate( System::AnsiString FormatMask, System::TDateTime WorkDate
	);
extern Word __fastcall DaysInMonth(System::TDateTime WorkDate);
extern Word __fastcall DaysInMonthi(Word Month, Word Year);
extern Word __fastcall DaysInYear(System::TDateTime WorkDate);
extern Word __fastcall DaysInYeari(int Year);
extern Word __fastcall DaysLeftInMonth(System::TDateTime WorkDate);
extern Word __fastcall DaysLeftInMonthi(int Day, int Month, int Year);
extern Word __fastcall DaysLeftInYear(System::TDateTime WorkDate);
extern Word __fastcall DaysLeftInYeari(int Day, int Month, int Year);
extern System::TDateTime __fastcall AddDate( System::AnsiString DateMask, int NumberOfPeriods, System::TDateTime 
	WorkDate);
extern long __fastcall DateDiff( System::AnsiString DateMask, int StartingDayOfWeek, System::TDateTime 
	FirstDate, System::TDateTime SecondDate);
extern int __fastcall GetFirstofMonthWeekNumber(int StartingDayOfMonth, System::TDateTime WorkDate);
	
extern int __fastcall ReturnPersonsAge(System::TDateTime DOB);
extern System::AnsiString __fastcall ReturnDaysInthePast(System::TDateTime WorkDate, System::TDateTime 
	TestDate);
extern System::AnsiString __fastcall ReturnWeeksInthePast(int StartingDayOfWeek, System::TDateTime WorkDate
	, System::TDateTime TestDate);
extern System::AnsiString __fastcall ReturnMonthsInthePast(System::TDateTime WorkDate, System::TDateTime 
	TestDate);
extern System::AnsiString __fastcall ReturnQuartersInthePast(System::TDateTime WorkDate, System::TDateTime 
	TestDate);
extern System::AnsiString __fastcall ReturnYearsInthePast(System::TDateTime WorkDate, System::TDateTime 
	TestDate);
extern System::TDateTime __fastcall ReturnLastOfGivenMonth(System::TDateTime ADate);
extern System::TDateTime __fastcall ReturnFirstOfGivenMonth(System::TDateTime ADate);
extern System::TDateTime __fastcall ReturnFirstOfTheWeek(void);
extern System::TDateTime __fastcall ReturnLastOfTheWeek(void);
extern System::TDateTime __fastcall ReturnFirstOfTheMonth(void);
extern System::TDateTime __fastcall ReturnLastOfTheMonth(void);
extern System::TDateTime __fastcall ReturnFirstOfTheYear(void);
extern System::TDateTime __fastcall ReturnLastOfTheYear(void);
extern System::TDateTime __fastcall ReturnFirstOfLastWeek(void);
extern System::TDateTime __fastcall ReturnLastOfLastWeek(void);
extern System::TDateTime __fastcall ReturnFirstOfLastMonth(void);
extern System::TDateTime __fastcall ReturnLastOfLastMonth(void);
extern System::TDateTime __fastcall ReturnFirstOfLastYear(void);
extern System::TDateTime __fastcall ReturnLastOfLastYear(void);
extern System::TDateTime __fastcall IntToDate(long WorkDate);
extern long __fastcall DateToInt(System::TDateTime WorkDate);
extern bool __fastcall IsDateWithinRange(System::TDateTime TestDate, System::TDateTime FirstDate, System::TDateTime 
	LastDate);
extern System::AnsiString __fastcall VerbalDate(System::TDateTime WorkDate);
extern bool __fastcall IsMonday(System::TDateTime WorkDate);
extern bool __fastcall IsTuesday(System::TDateTime WorkDate);
extern bool __fastcall IsWednesday(System::TDateTime WorkDate);
extern bool __fastcall IsThursday(System::TDateTime WorkDate);
extern bool __fastcall IsFriday(System::TDateTime WorkDate);
extern bool __fastcall IsSaturday(System::TDateTime WorkDate);
extern bool __fastcall IsSunday(System::TDateTime WorkDate);
extern bool __fastcall IsJanuary(System::TDateTime WorkDate);
extern bool __fastcall IsFebruary(System::TDateTime WorkDate);
extern bool __fastcall IsMarch(System::TDateTime WorkDate);
extern bool __fastcall IsApril(System::TDateTime WorkDate);
extern bool __fastcall IsMay(System::TDateTime WorkDate);
extern bool __fastcall IsJune(System::TDateTime WorkDate);
extern bool __fastcall IsJuly(System::TDateTime WorkDate);
extern bool __fastcall IsAugust(System::TDateTime WorkDate);
extern bool __fastcall IsSeptember(System::TDateTime WorkDate);
extern bool __fastcall IsOctober(System::TDateTime WorkDate);
extern bool __fastcall IsNovember(System::TDateTime WorkDate);
extern bool __fastcall IsDecember(System::TDateTime WorkDate);
extern bool __fastcall IsWeekend(System::TDateTime WorkDate);
extern bool __fastcall IsWeekday(System::TDateTime WorkDate);
extern bool __fastcall IsAM(System::TDateTime WorkDate);
extern bool __fastcall IsPM(System::TDateTime WorkDate);
extern bool __fastcall IsMorning(System::TDateTime WorkDate);
extern bool __fastcall IsAfternoon(System::TDateTime WorkDate);
extern bool __fastcall IsMidday(System::TDateTime WorkDate);
extern bool __fastcall IsMidNight(System::TDateTime WorkDate);
extern bool __fastcall IsChristmasDay(System::TDateTime WorkDate);
extern bool __fastcall IsNewYearsDay(System::TDateTime WorkDate);
extern bool __fastcall IsEasterSunday(System::TDateTime WorkDate);
extern bool __fastcall IsFirstOfTheMonth(System::TDateTime WorkDate);
extern bool __fastcall IsLastOfTheMonth(System::TDateTime WorkDate);
extern int __fastcall ReturnBusinessDaysBetweenDates(System::TDateTime FirstDate, System::TDateTime 
	LastDate);
extern System::TDateTime __fastcall PrevBusinessDay(System::TDateTime RequiredDate);
extern System::TDateTime __fastcall NextBusinessDay(System::TDateTime RequiredDate);
extern System::TDateTime __fastcall AddBusinessDays(int NumberOfDays, System::TDateTime WorkDate);
extern bool __fastcall IsDateInPosNegBusinessRange(System::TDateTime WorkDate, System::TDateTime CompareDate
	, int PositiveDays, int NegativeDays);
extern bool __fastcall IsDateInPosNegRange(System::TDateTime WorkDate, System::TDateTime CompareDate
	, int PositiveDays, int NegativeDays);
extern bool __fastcall IsBusinessDay(System::TDateTime WorkDate);
extern bool __fastcall IsEmptyDate( System::AnsiString WorkDate);
extern bool __fastcall IsHoliday(System::TDateTime WorkDate);
extern bool __fastcall IsBusinessHoliday(System::TDateTime WorkDate);
extern void __fastcall SetHolidayStringList(Classes::TStrings* NewHolidayStringList);
extern System::TDateTime __fastcall ReturnFirstOfAWeek(int StartingDayOfWeek, System::TDateTime WorkDate
	);
extern System::TDateTime __fastcall ReturnLastOfAWeek(int StartingDayOfWeek, System::TDateTime WorkDate
	);
extern void __fastcall SetSystemDate(Word Year, Byte Month, Byte Day);
extern void __fastcall SetSystemTime(Byte Hour, Byte Minute, Byte Second, Byte Hundreths);
extern System::AnsiString __fastcall AgeStr(System::TDateTime aDate);
extern long __fastcall SecondsBetweenDates(System::TDateTime fStartDateTime, System::TDateTime fEndDateTime
	);
extern System::TDateTime __fastcall DecodeTextDate( System::AnsiString DateFormatStr,  System::AnsiString 
	DateStr);
extern int __fastcall ConvertDayOfWeekToInt(TAdrockDayOfWeek DayOfWeek);
extern TAdrockDayOfWeek __fastcall ConvertIntToDayOfWeek(int DayOfWeek);
extern System::TDateTime __fastcall ReturnDateOrdinalDayOfWeek(bool StartOfMonth, int Week, int WeekDay
	, int Month, int Year);
extern System::TDateTime __fastcall ReturnEasterSunday(Word Year);
extern Word __fastcall ExpandYear(Word fyear);
extern void __fastcall ReturnYearsMonthsDaysBetweenDates(System::TDateTime FirstDate, System::TDateTime 
	LastDate, Word &fYear, Word &fMonth, Word &fDay);

}	/* namespace Addate */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Addate;
#endif
//-- end unit ----------------------------------------------------------------
#endif	// Addate
