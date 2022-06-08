unit Addate;
{
This source code file is copyright, BYTE Computer & Software Ltd, 1995, 1996.
By purchasing this source code, you should have read, and agreed to our terms
of purchase, contained in the LICENCE.WRI file (in all distributed archives
from 22nd January, 1996) - a copy of which is shown below for your reading.

LICENCE.WRI - If you wish to purchase source code, this file is a must read.


Delphi Shareware Control - Terms and Conditions of Source Code Purchase
    BYTE Computer & Software Ltd - Adrock Software

"1. The following terms and conditions shall apply to the purchase of Full Registrations or
Upgrade Registrations which contain source code for the following Adrock Software Delphi
controls:
* TAdrock3DCalendar component, copyright BYTE Computer & Software Ltd
* TAdrockAlarmList Component, copyright BYTE Computer & Software Ltd
* TAdrockCalendarEdit Control, copyright BYTE Computer & Software Ltd
* TAdrockCalculatorEdit Control, copyright BYTE Computer & Software Ltd
* TAdrockAnalogClock component, copyright BYTE Computer & Software Ltd
* TAdrockBitMap Property Editor, copyright BYTE Computer & Software Ltd
* TAdrockSearchExpert, copyright BYTE Computer & Software Ltd
* TAdrockGradientFill Control, copyright BYTE Computer & Software Ltd
* TAdrockGroupBox Control, copyright BYTE Computer & Software Ltd
* TAdrockFormPosition Control, copyright BYTE Computer & Software Ltd
* TAdrockSaveGrid Control, copyright BYTE Computer & Software Ltd

herein referred to as the source code.
The ordering of the source code shall be deemed to be an acceptance, by the purchaser  of the
following terms of purchase.
2. The purchase of the source code entitles the purchaser to make use of the source code or
variations of the source code for use and application by the purchaser only.
3. There shall be no reproduction, disclosure, sale, lease, rent or use to or by any 3rd
party of the source code.
4. The purchaser acknowledges that all intellectual property rights in the source code
including copyright confidential information and identifying trade names or marks are the
sole property of the vendor, BYTE Computer & Software Ltd, Christchurch, New Zealand.
5. If there is any dispute as to the interpretation or application of this Contract, the
proper law to apply to the Contract shall be that of New Zealand"


And our interpretation,  for those of you that aren't lawyers (though it's not *that* bad, is
it!).

By purchasing Full Registrations or Upgrade Registrations that contain source code for the
above controls, you accept the terms as stated above. These terms essentially try and protect
us from you copying the code, re-compiling it (with just a few changes (ie you stick your own
name details in there)) and then selling it as your own. Well that's just plain unfair -
ain't it! We've done all the hard work. By purchasing the source code, we give you the rights
to use it to do what you want with it for recompilation for use in your own applications.
Essentially, we're asking you to be honest and fair about the way you use our source code, so
a lot relies on you.
As a final note; it's taken me quite some time to convince BYTE Computer & Software that it
is standard to sell Delphi Shareware controls with source code - and I'm also very pleased
with the prices we've negotiated. So register or upgrade to the source, make all the changes
in the world you want, and let you and your end-users enjoy the results!

If you have any questions regarding our source code policy, you are always welcome to contact
us:

Adrock Software
c/o BYTE Computer & Software Ltd
132 Peterborough Street (physical)
P.O. Box 13-155 (mail)
Christchurch
New Zealand

Email:
CompuServe: 100353,110
Internet: Adrock@USA.NET

WWW (World Wide Web) home page:
http://www.Adrock.COM
}

interface

{$B-} { Disable complete boolean expression parsing, this was causing problems     }
      { in the boolean checks for some functions. I do not really understand       }
      { why this option exists, I think that it should always be disabled          }

      { When this option is on, the compiler generates code that evaluates every   }
      { operand of a boolean expression built from the AND and OR operators, even  }
      { when the result of the entire expression is already known.                 }

      { When this option is off, the compiler generates code for short-circuit     }
      { boolean-expression evaluation.  This means evaluation stops as soon as the }
      {result of the entire expression becomes evident.                            }
      
Uses
    Classes,
    Forms,
{$IFDEF WIN32}
    Windows,
{$ELSE}
    WinTypes, WinProcs,
{$ENDIF}

{$IFDEF UNREGISTERED}
   ExtCtrls, ShellAPI,
{$ENDIF}
    StdCtrls, Buttons, Controls, Graphics, SysUtils, Dialogs;


  {$ifdef UNREGISTERED}
  {$DEFINE ADROCK_NAG_SCREEN_TYPE}
  {$I ADNAG.PAS}
  {$UNDEF ADROCK_NAG_SCREEN_TYPE}
  {$ENDIF}

COnst
 Version = '2.00';


 type
   TDateOrder = (doMDY, doDMY, doYMD, doDMMMY, doMMMDY, doYMMMD);
   PDayTable = ^TDayTable;
   TDayTable = array[1..12] of Word;

   TAdrockDayOfWeek =
  	 (Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, InvalidDayOfWeek);
   TAdrockDates =  Class
     HolidayStringList : TStrings;
    public
    Constructor Create;

    Function  ReturnDelphiDayOfWeek(StartingDayOfWeek, WeekDay : Integer) : Integer;
    Function  ReturnWeekDayName(StartingDayOfWeek, WeekDay : Integer) : String;
    Function  ReturnWeekofMonth(StartingDayOfWeek : Integer; WorkDate : TDateTime) : Word;
    Function  ReturnWeekofYear(StartingDayOfWeek : Integer; WorkDate : TDateTime) : Integer;

    Function  ReturnDayOfWeek(StartingDayOfWeek : Integer; WorkDate : TDateTime) : Word;
    Function  ReturnDayOfMonth(WorkDate : TDateTime) : Word;
    Function  ReturnDayOfYear(WorkDate : TDateTime)  : Word;

    Function  ReturnMonth(WorkDate : TDateTime)  : Word;

    Function  ReturnQuarter(WorkDate : TDateTime)  : Word;
    Function  ReturnYear(WorkDate : TDateTime) : Word;
    Function  ReturnCentury(WorkDate : TDateTime) : Word;
    Function  ReturnDayTh(WorkDate : TDateTime) : String;
    Function  ReturnDayThi(WorkDay : Integer) : String;
    Function  ReturnDaysAgo(WorkDate : TDateTime) : String;

    Function  ReturnWeeksAgo(StartingDayOfWeek : Integer; WorkDate : TDateTime) : String;
    Function  ReturnMonthsAgo(WorkDate : TDateTime) : String;
    Function  ReturnQuartersAgo(WorkDate : TDateTime) : String;
    Function  ReturnYearsAgo(WorkDate : TDateTime) : String;

    Function  AreDatesInSameMonth(FirstDate, SecondDate : TDateTime) : Boolean;
    Function  AreDatesInSameYear(FirstDate, SecondDate : TDateTime) : Boolean;
    Function  AreDatesInSameMonthAndYear(FirstDate, SecondDate : TDateTime) : Boolean;

    Function  ReturnBoundaryWeeksBetweenDates(StartingDayOfWeek : Integer; FirstDate, SecondDate : TDateTime) : Integer;
    Function  ReturnBoundaryQuartersBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
    Function  ReturnBoundaryMonthsBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
    Function  ReturnBoundaryYearsBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;

    Function  ReturnDaysBetweenDates(FirstDate, SecondDate : TDateTime) : LongInt;
    Function  ReturnWeeksBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
    Function  ReturnMonthsBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
    Function  ReturnQuartersBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
    Function  ReturnYearsBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;

    function  GetDayTable(Year: Word): PDayTable;
    function  DoEncodeDate(fYear, fMonth, fDay: Word; var fDate: TDateTime): Boolean;
    procedure ScanCommasAndBlanks(const S: string; var Pos: Integer);
    procedure ScanBlanks(const S: string; var Pos: Integer);
    function  ScanMonthWord(const S: string; var Pos: Integer;var Number: Word): Boolean;
    function  ScanNumber(const S: string; var Pos: Integer; var Number: Word): Boolean;
    function  ScanCharNoSpace(const S: string; var Pos: Integer; Ch: Char): Boolean;
    function  ScanChar(const S: string; var Pos: Integer; Ch: Char): Boolean;
    function  GetTextDateOrder(const DateFormat: string): TDateOrder;
    function  GetDateOrder(const DateFormat: string): TDateOrder;
    Function  ReturnEasterSunday(Year : Word) : TDateTime;

    function  AdrockStrToDate(WorkDate : String) : TDateTime;
    function  AdrockScanDate(const S: string; var Pos: Integer; var fDate: TDateTime): Boolean;
    function  ScanDate(const S: string; var Pos: Integer; var Date: TDateTime): Boolean;
    Function  IsValidDate(WorkDate : String) : Boolean;

    Function  IsValidAdrockDate(WorkDate : String) : Boolean;

    Function  IsLeapyear(WorkDate : TDateTime) : Boolean;
    function  IsLeapYeari(aYear : Integer) : Boolean;
    Function  IsDateInRange(WorkDate, StartDate, EndDate : TDateTime) : Boolean;

    Function  AddDays(NumberOfDays : Integer; WorkDate :TDateTime) : TDateTime;
    Function  AddWeeks(NumberOfWeeks : Integer; WorkDate :TDateTime) : TDateTime;
    Function  AddMonths(NumberOfMonths : Integer; WorkDate :TDateTime) : TDateTime;
    Function  AddQuarters(NumberOfQuarters : Integer; WorkDate :TDateTime) : TDateTime;
    Function  AddYears(NumberOfYears : Integer; WorkDate :TDateTime) : TDateTime;

    Function  FormatDate(FormatMask : String; WorkDate : TDateTime) : String;

    Function  DaysInMonth(WorkDate : TDateTime) : Word;
    Function  DaysInMonthi(Month, Year : Word) : Word;
    Function  DaysInYear(WorkDate : TDateTime) : Word;
    function  DaysInYeari(Year : Integer) : Word;
    Function  DaysLeftInMonth(WorkDate : TDateTime) : Word;
    function  DaysLeftInMonthi(Day, Month, Year : Integer) : Word;
    Function  DaysLeftInYear(WorkDate : TDateTime) : Word;
    Function  DaysLeftInYeari(Day, Month, Year : Integer) : Word;

    Function  AddDate(DateMask : String; NumberOfPeriods : Integer; WorkDate : TDatetime) : TDateTime;
    Function  DateDiff(DateMask : String; StartingDayOfWeek : Integer; FirstDate, SecondDate : TDatetime) : Longint;

    Function  GetFirstofMonthWeekNumber(StartingDayOfMonth : Integer; WorkDate : TDateTime) : Integer;
    Function  ReturnPersonsAge(DOB : TDateTime) : Integer;
    function  AgeStr(aDate: TDateTime): string;

    Function  ReturnDateOrdinalDayOfWeek(StartOfMonth : Boolean; Week, WeekDay, Month, Year : Integer) : TDateTime;

    Function  ReturnDaysInthePast(WorkDate : TDateTime; TestDate : TDateTime) : String;
    Function  ReturnWeeksInthePast(StartingDayOfWeek : Integer; WorkDate : TDateTime; TestDate : TDateTime) : String;
    Function  ReturnMonthsInthePast(WorkDate : TDateTime; TestDate : TDateTime) : String;
    Function  ReturnQuartersInthePast(WorkDate : TDateTime; TestDate : TDateTime) : String;
    Function  ReturnYearsInthePast(WorkDate : TDateTime; TestDate : TDateTime) : String;

    Function  ReturnFirstOfAWeek(StartingDayOfWeek: Integer; WorkDate : TDateTime) : TDateTime;
    Function  ReturnLastOfAWeek(StartingDayOfWeek: Integer; WorkDate : TDateTime) : TDateTime;

    Function  ReturnLastOfGivenMonth(ADate: TDateTime) : TDateTime;
    Function  ReturnFirstOfGivenMonth(ADate: TDateTime) : TDateTime;

    Function  ReturnFirstOfTheWeek : TDateTime;
    Function  ReturnLastOfTheWeek : TDateTime;


    Function  ReturnFirstOfTheMonth : TDateTime;
    Function  ReturnLastOfTheMonth : TDateTime;
    Function  ReturnFirstOfTheYear : TDateTime;
    Function  ReturnLastOfTheYear : TDateTime;

    Function  ReturnFirstOfLastWeek : TDateTime;
    Function  ReturnLastOfLastWeek : TDateTime;
    Function  ReturnFirstOfLastMonth : TDateTime;
    Function  ReturnLastOfLastMonth : TDateTime;

    Function  ReturnFirstOfLastYear : TDateTime;
    Function  ReturnLastOfLastYear : TDateTime;

    function  IntToDate(WorkDate : Longint) : TDateTime;
    function  DateToInt(WorkDate : TDateTime) : Longint;

    { Added with Version 1.10 }
    Function  IsDateWithinRange(TestDate, FirstDate, LastDate : TDatetime)    : Boolean;
    Function  NextBusinessDay(RequiredDate : TDateTime)  : TDateTime;
    Function  PrevBusinessDay(RequiredDate : TDateTime)  : TDateTime;
    function  ReturnBusinessDaysBetweenDates(FirstDate, LastDate : TDatetime) : Integer;
    Function  VerbalDate(WorkDate : TDatetime) : String;

    Function  IsMonday(WorkDate : TDateTime) : Boolean;
    Function  IsTuesday(WorkDate : TDateTime) : Boolean;
    Function  IsWednesday(WorkDate : TDateTime) : Boolean;
    Function  IsThursday(WorkDate : TDateTime) : Boolean;
    Function  IsFriday(WorkDate : TDateTime) : Boolean;
    Function  IsSaturday(WorkDate : TDateTime) : Boolean;
    Function  IsSunday(WorkDate : TDateTime) : Boolean;

    Function  IsJanuary(WorkDate : TDateTime) : Boolean;
    Function  IsFebruary(WorkDate : TDateTime) : Boolean;
    Function  IsMarch(WorkDate : TDateTime) : Boolean;
    Function  IsApril(WorkDate : TDateTime) : Boolean;
    Function  IsMay(WorkDate : TDateTime) : Boolean;
    Function  IsJune(WorkDate : TDateTime) : Boolean;
    Function  IsJuly(WorkDate : TDateTime) : Boolean;
    Function  IsAugust(WorkDate : TDateTime) : Boolean;
    Function  IsSeptember(WorkDate : TDateTime) : Boolean;
    Function  IsOctober(WorkDate : TDateTime) : Boolean;
    Function  IsNovember(WorkDate : TDateTime) : Boolean;
    Function  IsDecember(WorkDate : TDateTime) : Boolean;

    Function  IsWeekend(WorkDate : TDateTime) : Boolean;
    Function  IsWeekday(WorkDate : TDateTime) : Boolean;

    Function  IsAM(WorkDate : TDateTime) : Boolean;
    Function  IsPM(WorkDate : TDateTime) : Boolean;
    Function  IsMorning(WorkDate : TDateTime) : Boolean;
    Function  IsAfternoon(WorkDate : TDateTime) : Boolean;

    Function  IsMidday(WorkDate : TDateTime) : Boolean;
    Function  IsMidNight(WorkDate : TDateTime) : Boolean;

    Function  IsChristmasDay(WorkDate : TDateTime) : Boolean;
    Function  IsNewYearsDay (WorkDate : TDateTime) : Boolean;
    Function  IsEasterSunday(WorkDate : TDateTime) : Boolean;

    Function  IsFirstOfTheMonth(WorkDate : TDateTime) : Boolean;
    Function  IsLastOfTheMonth(WorkDate : TDateTime) : Boolean;


    Function  IsHoliday(WorkDate : TDateTime) : Boolean;
    Function  IsBusinessDay(WorkDate : TDateTime) : Boolean;
    Function  IsBusinessHoliday(WorkDate : TDateTime) : Boolean;
    function  IsDateInPosNegRange(WorkDate, CompareDate : TDateTime; PositiveDays, NegativeDays : Integer) : Boolean;
    function  IsDateInPosNegBusinessRange(WorkDate, CompareDate : TDateTime; PositiveDays, NegativeDays : Integer) : Boolean;
    Procedure SetHolidayStringList(NewHolidayStringList : TStrings);
    Function  AddBusinessDays(NumberOfDays : Integer; WorkDate :TDateTime) : TDateTime;

    Function  IsEmptyDate(WorkDate : String) : Boolean;

    Procedure SetSystemTime(Hour, Minute, Second, Hundreths : Byte);
    Procedure SetSystemDate(Year : Word; Month, Day : Byte);

    { Added in V1.40 }
    Function SecondsBetweenDates(fStartDateTime, fEndDateTime : TDateTime) : Longint;
    Function DecodeTextDate(DateFormatStr, DateStr : String) : TDateTime;

    Function ConvertDayOfWeekToInt(DayOfWeek : TadrockDayOfWeek) : Integer;
    Function ConvertIntToDayOfWeek(DayOfWeek : Integer) : TAdrockDayofWeek;

    function ExpandYear(fyear : Word) : Word;

    Function  ReturnWeekofYear_Work(RealWeek : Boolean; Recursive : Integer;
                StartingDayOfWeek : Integer; WorkDate : TDateTime) : Word;
    Function  ReturnWeeksInYear(StartingDayOfWeek : Integer; Year : Integer) : Integer;

    Procedure ReturnYearsMonthsDaysBetweenDates(FirstDate, LastDate : TDateTime; var fYear, fMonth, fDay : Word);

  private
  end;

   { Routines that can be called by any code that includes this unit }

     procedure FreeAdrockDateClass;

     {*****************************************************************************}
     {** Create an instance of the AdrockDateClass, this instance does not get   **}
     {** freed, you must call FreeAdrockDateClass to do that. At the end of your **}
     {** program is the best place.                                              **}
     {*****************************************************************************}
     Procedure CreateAdrockDateClass;

    Function  ReturnDelphiDayOfWeek(StartingDayOfWeek, WeekDay : Integer) : Integer;
    Function  ReturnWeekDayName(StartingDayOfWeek, WeekDay : Integer) : String;
    Function  ReturnWeekofMonth(StartingDayOfWeek : Integer; WorkDate : TDateTime) : Word;
    Function  ReturnWeekofYear(StartingDayOfWeek : Integer; WorkDate : TDateTime) : Integer;

    Function  ReturnDayOfWeek(StartingDayOfWeek : Integer; WorkDate : TDateTime) : Word;
    Function  ReturnDayOfMonth(WorkDate : TDateTime) : Word;
    Function  ReturnDayOfYear(WorkDate : TDateTime)  : Word;

    Function  ReturnEasterSunday(Year : Word) : TDateTime;
    Function  ReturnMonth(WorkDate : TDateTime)  : Word;

    Function  ReturnQuarter(WorkDate : TDateTime)  : Word;
    Function  ReturnYear(WorkDate : TDateTime) : Word;
    Function  ReturnCentury(WorkDate : TDateTime) : Word;
    Function  ReturnDayTh(WorkDate : TDateTime) : String;
    Function  ReturnDayThi(WorkDay : Integer) : String;
    Function  ReturnDaysAgo(WorkDate : TDateTime) : String;

    Function  ReturnWeeksAgo(StartingDayOfWeek : Integer; WorkDate : TDateTime) : String;
    Function  ReturnMonthsAgo(WorkDate : TDateTime) : String;
    Function  ReturnQuartersAgo(WorkDate : TDateTime) : String;
    Function  ReturnYearsAgo(WorkDate : TDateTime) : String;

    Function  AreDatesInSameMonth(FirstDate, SecondDate : TDateTime) : Boolean;
    Function  AreDatesInSameYear(FirstDate, SecondDate : TDateTime) : Boolean;
    Function  AreDatesInSameMonthAndYear(FirstDate, SecondDate : TDateTime) : Boolean;

    Function  ReturnBoundaryWeeksBetweenDates(StartingDayOfWeek : Integer; FirstDate, SecondDate : TDateTime) : Integer;
    Function  ReturnBoundaryQuartersBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
    Function  ReturnBoundaryMonthsBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
    Function  ReturnBoundaryYearsBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;

    Function  ReturnDaysBetweenDates(FirstDate, SecondDate : TDateTime) : LongInt;
    Function  ReturnWeeksBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
    Function  ReturnMonthsBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
    Function  ReturnQuartersBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
    Function  ReturnYearsBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;

    Function  IsValidAdrockDate(WorkDate : String) : Boolean;
    Function  AdrockStrToDate(WorkDate : String) : TDateTime;

    Function  IsValidDate(WorkDate : String) : Boolean;
    Function  IsLeapyear(WorkDate : TDateTime) : Boolean;
    function  IsLeapYeari(aYear : Integer) : Boolean;
    Function  IsDateInRange(WorkDate, StartDate, EndDate : TDateTime) : Boolean;

    Function  AddDays(NumberOfDays : Integer; WorkDate :TDateTime) : TDateTime;
    Function  AddWeeks(NumberOfWeeks : Integer; WorkDate :TDateTime) : TDateTime;
    Function  AddMonths(NumberOfMonths : Integer; WorkDate :TDateTime) : TDateTime;
    Function  AddQuarters(NumberOfQuarters : Integer; WorkDate :TDateTime) : TDateTime;
    Function  AddYears(NumberOfYears : Integer; WorkDate :TDateTime) : TDateTime;

    Function  FormatDate(FormatMask : String; WorkDate : TDateTime) : String;

    Function  DaysInMonth(WorkDate : TDateTime) : Word;
    Function  DaysInMonthi(Month, Year : Word) : Word;
    Function  DaysInYear(WorkDate : TDateTime) : Word;
    function  DaysInYeari(Year : Integer) : Word;
    Function  DaysLeftInMonth(WorkDate : TDateTime) : Word;
    function  DaysLeftInMonthi(Day, Month, Year : Integer) : Word;
    Function  DaysLeftInYear(WorkDate : TDateTime) : Word;
    Function  DaysLeftInYeari(Day, Month, Year : Integer) : Word;

    Function  AddDate(DateMask : String; NumberOfPeriods : Integer; WorkDate : TDatetime) : TDateTime;
    Function  DateDiff(DateMask : String; StartingDayOfWeek : Integer; FirstDate, SecondDate : TDatetime) : Longint;

    Function  GetFirstofMonthWeekNumber(StartingDayOfMonth : Integer; WorkDate : TDateTime) : Integer;
    Function  ReturnPersonsAge(DOB : TDateTime) : Integer;
    function  AgeStr(aDate: TDateTime): string;
    function  ExpandYear(fyear : Word) : Word;

    Function  ReturnDateOrdinalDayOfWeek(StartOfMonth : Boolean; Week, WeekDay, Month, Year : Integer) : TDateTime;

    Function  ReturnDaysInthePast(WorkDate : TDateTime; TestDate : TDateTime) : String;
    Function  ReturnWeeksInthePast(StartingDayOfWeek : Integer; WorkDate : TDateTime; TestDate : TDateTime) : String;
    Function  ReturnMonthsInthePast(WorkDate : TDateTime; TestDate : TDateTime) : String;
    Function  ReturnQuartersInthePast(WorkDate : TDateTime; TestDate : TDateTime) : String;
    Function  ReturnYearsInthePast(WorkDate : TDateTime; TestDate : TDateTime) : String;

    Function  ReturnFirstOfAWeek(StartingDayOfWeek: Integer; WorkDate : TDateTime) : TDateTime;
    Function  ReturnLastOfAWeek(StartingDayOfWeek: Integer; WorkDate : TDateTime) : TDateTime;

    Function  ReturnLastOfGivenMonth(ADate: TDateTime) : TDateTime;
    Function  ReturnFirstOfGivenMonth(ADate: TDateTime) : TDateTime;

    Function  ReturnFirstOfTheWeek : TDateTime;
    Function  ReturnLastOfTheWeek : TDateTime;

    Function  ReturnFirstOfTheMonth : TDateTime;
    Function  ReturnLastOfTheMonth : TDateTime;
    Function  ReturnFirstOfTheYear : TDateTime;
    Function  ReturnLastOfTheYear : TDateTime;

    Function  ReturnFirstOfLastWeek : TDateTime;
    Function  ReturnLastOfLastWeek : TDateTime;
    Function  ReturnFirstOfLastMonth : TDateTime;
    Function  ReturnLastOfLastMonth : TDateTime;

    Function  ReturnFirstOfLastYear : TDateTime;
    Function  ReturnLastOfLastYear : TDateTime;

    function  IntToDate(WorkDate : Longint) : TDateTime;
    function  DateToInt(WorkDate : TDateTime) : Longint;

    { Added with Version 1.10 }
    Function  IsDateWithinRange(TestDate, FirstDate, LastDate : TDatetime)    : Boolean;
    Function  NextBusinessDay(RequiredDate : TDateTime)  : TDateTime;
    Function  PrevBusinessDay(RequiredDate : TDateTime)  : TDateTime;
    function  ReturnBusinessDaysBetweenDates(FirstDate, LastDate : TDatetime) : Integer;
    Function  VerbalDate(WorkDate : TDatetime) : String;

    Function  IsMonday(WorkDate : TDateTime) : Boolean;
    Function  IsTuesday(WorkDate : TDateTime) : Boolean;
    Function  IsWednesday(WorkDate : TDateTime) : Boolean;
    Function  IsThursday(WorkDate : TDateTime) : Boolean;
    Function  IsFriday(WorkDate : TDateTime) : Boolean;
    Function  IsSaturday(WorkDate : TDateTime) : Boolean;
    Function  IsSunday(WorkDate : TDateTime) : Boolean;

    Function  IsJanuary(WorkDate : TDateTime) : Boolean;
    Function  IsFebruary(WorkDate : TDateTime) : Boolean;
    Function  IsMarch(WorkDate : TDateTime) : Boolean;
    Function  IsApril(WorkDate : TDateTime) : Boolean;
    Function  IsMay(WorkDate : TDateTime) : Boolean;
    Function  IsJune(WorkDate : TDateTime) : Boolean;
    Function  IsJuly(WorkDate : TDateTime) : Boolean;
    Function  IsAugust(WorkDate : TDateTime) : Boolean;
    Function  IsSeptember(WorkDate : TDateTime) : Boolean;
    Function  IsOctober(WorkDate : TDateTime) : Boolean;
    Function  IsNovember(WorkDate : TDateTime) : Boolean;
    Function  IsDecember(WorkDate : TDateTime) : Boolean;

    Function  IsWeekend(WorkDate : TDateTime) : Boolean;
    Function  IsWeekday(WorkDate : TDateTime) : Boolean;

    Function  IsAM(WorkDate : TDateTime) : Boolean;
    Function  IsPM(WorkDate : TDateTime) : Boolean;
    Function  IsMorning(WorkDate : TDateTime) : Boolean;
    Function  IsAfternoon(WorkDate : TDateTime) : Boolean;

    Function  IsMidday(WorkDate : TDateTime) : Boolean;
    Function  IsMidNight(WorkDate : TDateTime) : Boolean;

    Function  IsChristmasDay(WorkDate : TDateTime) : Boolean;
    Function  IsNewYearsDay (WorkDate : TDateTime) : Boolean;
    Function  IsEasterSunday(WorkDate : TDateTime) : Boolean;

    Function  IsFirstOfTheMonth(WorkDate : TDateTime) : Boolean;
    Function  IsLastOfTheMonth(WorkDate : TDateTime) : Boolean;

    Function  IsBusinessDay(WorkDate : TDateTime) : Boolean;
    function  IsDateInPosNegRange(WorkDate, CompareDate : TDateTime; PositiveDays, NegativeDays : Integer) : Boolean;
    function  IsDateInPosNegBusinessRange(WorkDate, CompareDate : TDateTime; PositiveDays, NegativeDays : Integer) : Boolean;
    Function  AddBusinessDays(NumberOfDays : Integer; WorkDate :TDateTime) : TDateTime;

    Function  IsHoliday(WorkDate : TDateTime) : Boolean;
    Function  IsBusinessHoliday(WorkDate : TDateTime) : Boolean;
    Procedure SetHolidayStringList(NewHolidayStringList : TStrings);

    { Added in V1.20 }
    Function  IsEmptyDate(WorkDate : String) : Boolean;

    { Added in V1.30 }
    { Please refer to the HISTORY file why these functions have been removed }
    Procedure SetSystemTime(Hour, Minute, Second, Hundreths : Byte);
    Procedure SetSystemDate(Year : Word; Month, Day : Byte);

    { Added in V1.40 }
    Function SecondsBetweenDates(fStartDateTime, fEndDateTime : TDateTime) : Longint;
    Function DecodeTextDate(DateFormatStr, DateStr : String) : TDateTime;

    Function ConvertDayOfWeekToInt(DayOfWeek : TadrockDayOfWeek) : Integer;
    Function ConvertIntToDayOfWeek(DayOfWeek : Integer) : TAdrockDayofWeek;

    Procedure ReturnYearsMonthsDaysBetweenDates(FirstDate, LastDate : TDateTime; var fYear, fMonth, fDay : Word);

implementation

Var
{$ifdef UNREGISTERED}
  HasNagScreenBeenShown  : Boolean;
{$ENDIF}
  TAdrockDateClass_RuntimeVariable : TAdrockDates;

{$IFDEF UNREGISTERED}
{Include the NAG Screen Implementation Code }
{$DEFINE ADROCK_NAG_SCREEN_IMPLEMENTATION}
{$I ADNAG.PAS}
{$UNDEF ADROCK_NAG_SCREEN_IMPLEMENTATION}
{$ENDIF}

{****************************************************************************}
{** Return the date for easter sunday, it can be in march or april.        **}
{** If year = 0 then year = the current year                               **}
{****************************************************************************}
Function TAdrockDates.ReturnEasterSunday(Year : Word) : TDateTime;
Var
  century, G, I, J, K, L, EasterMonth, EasterDay : Word;
  fYear, fMonth, fDay : Word;
begin
  DecodeDate(Now, fYear, fMonth, fDay);
  if (Year <> 0) then
    fYear := Year;

  Century := fyear div 100;
  G := fyear mod 19;
  K := (Century - 17) div 25;
  I := (Century - Century div 4 - (Century - K) div 3 + 19*G + 15) mod 30;
  I := I - (I div 28)*(1 - (I div 28)*(29 div (I + 1))*((21 - G) div 11));
  J := (fYear + fYear div 4 + I + 2 - Century + Century div 4) mod 7;
  L := I - J;
  EasterMonth := 3 + (L + 40)div 44;
  EasterDay := L + 28 - 31*(EasterMonth div 4);

  Result := EncodeDate(fYear, EasterMonth, EasterDay);
end;

{****************************************************************************}
{** Convert a TAdrockDayOfWeek to an integer, if DayofWeek =InvalidDayOfWeek*}
{** then result = 0 else it is 1 to 7.
{****************************************************************************}
Function TAdrockDates.ConvertDayOfWeekToInt(DayOfWeek : TadrockDayOfWeek) : Integer;
begin
  if (DayOfWeek = InvalidDayOfWeek) then
    Result := 0
  else
    Result := 1+Ord(DayOfWeek);
end;

{****************************************************************************}
{** Convert an integer in the range of 1-7 to a TAdrockDayofWeek            *}
{****************************************************************************}
Function TAdrockDates.ConvertIntToDayOfWeek(DayOfWeek : Integer) : TAdrockDayofWeek;
begin
  if (DayOfWeek < 1) or (DayOfWeek > 7) then
    Result := InvalidDayOfWeek
  else
    Result := TAdrockDayOfWeek(DayofWeek-1);
end;

{****************************************************************************}
{** Return the number of seconds between 2 dates                            *}
{****************************************************************************}
Function  TAdrockDates.SecondsBetweenDates(fStartDateTime, fEndDateTime : TDateTime) : Longint;
Var
  fStartTime, fEndTime         : TDateTime;
  Days                         : Integer;
  fSeconds                     : Integer;
  fHour, fMin, fSec, fHSec     : Word;
begin
  Days := Trunc(fEndDateTime) - Trunc(fStartDateTime);

  fStartTime :=  fStartDateTime - Trunc(fStartDateTime);
  fEndTime   :=  fEndDateTime - Trunc(fEndDateTime);

  if (FEndTime >= fStartTime) then
    begin
      DecodeTime(fEndtime - fStartTime, fHour, fMin, fSec, fHSec);
      fSeconds := (Days * (3600*24))+(fHour * 3600) + (fMin * 60)+(Fsec);
    end
  else
   begin
      fendTime := fEndTime + (3600 * 24);  
      DecodeTime(fEndTime-fStartTime, fHour, fMin, fSec, fHSec);
      fSeconds := ((Days -1)* (3600*24))+(fHour * 3600) + (fMin * 60)+(Fsec);
   end;
  result := fSeconds;
end;


{****************************************************************************}
{** Return TRUE if the date passed falls on a business day, Monday - Friday *}
{****************************************************************************}
Function  TAdrockDates.IsBusinessDay(WorkDate : TDateTime) : Boolean;
Var
 WeekDay : Byte;
begin
  WeekDay := DayOfWeek(WorkDate);
  if (WeekDay = 1) or (WeekDay = 7) then
    Result := FALSE
  else { Check to see if the date is on a holiday }
    Result := TRUE;
end;

{*******************************************************************}
{** Return TRUE if the date passed is a business day or a holiday  *}
{*******************************************************************}
Function  TAdrockDates.IsBusinessHoliday(WorkDate : TDateTime) : Boolean;
begin
 if (isHoliday(WorkDate) = TRUE) then
   Result := TRUE
 else if (IsBusinessDay(WorkDate)=False) then
   Result := TRUE
 else
   Result := FALSE;
end;
{****************************************************************************}
{** Return the next business day, the required date is the date wanted so   *}
{** if that date falls on a business day return that or return next bus day *}
{****************************************************************************}
Function TAdrockDates.NextBusinessDay(RequiredDate : TDateTime)  : TDateTime;
begin
  RequiredDate := RequiredDate+1;
  while (IsBusinessHoliday(RequiredDate) = TRUE) do
    RequiredDate := RequiredDate+1;
  Result := RequiredDate;
end;

{******************************************************************************}
{** Return the previous business day, the required date is the date wanted so *}
{** if that date falls on a business day return that or return prev bus day   *}
{******************************************************************************}
Function TAdrockDates.PrevBusinessDay(RequiredDate : TDateTime)  : TDateTime;
begin
  RequiredDate := RequiredDate-1;
  while (IsBusinessHoliday(RequiredDate) = TRUE) do
    RequiredDate := RequiredDate-1;
  Result := RequiredDate;
end;

{******************************************************************************}
{** Add the specified number of business days to the date given. The date that*}
{** gets returned will not fall on a holiday or a non working day.            *}
{******************************************************************************}
Function  TAdrockDates.AddBusinessDays(NumberOfDays : Integer; WorkDate :TDateTime) : TDateTime;
Var
  TmpDate : TDateTime;
  MoveForward : Boolean;
begin
  TmpDate := WorkDate;
  moveForward := (NumberOfDays > 0);
  while (Abs(NumberOfDays) > 0) do
   begin
     if (moveForward = TRUE) then
       TmpDate := NextBusinessDay(TmpDate)
     else
       TmpDate := PrevBusinessDay(TmpDate);
     if (NumberOfDays > 0) then
       Dec(NumberOfDays)
     else
       inc(NumberOfDays);
   end;
  Result := TmpDate;
end;

{***************************************************************************}
{** Returns true if the year specified in the TDateTime Variable isLeapYear*}
{***************************************************************************}
function TAdrockDates.ReturnBusinessDaysBetweenDates(FirstDate, LastDate : TDatetime) : Integer;
Var
 BusDays : INteger;
 moveForward : Boolean;
begin
 BusDays := 0;
 moveForward := (LastDate > FirstDate);
 while (FirstDate <> LastDate) do
  begin
    if (IsBusinessHoliday(FirstDate) = FALSE) then
      Inc(BusDays);
    if (moveForward = TRUE) then
      FirstDate := FirstDate+1
    else
      FirstDate := FirstDate-1;
  end;
  if (moveForward = TRUE) then
   Result := -BusDays
  else
   Result := BusDays
end;


{********************************************************************************}
{** Sets a string list up to use as a holiday list. Any date in the file uses  **}
{** one line.                                                                  **}
{********************************************************************************}
Procedure TAdrockDates.SetHolidayStringList(NewHolidayStringList : TStrings);
begin
  HolidayStringList := NewHolidayStringList;
end;

{*********************************************************************************}
{** Returns true if the date specified falls on a holiday. To use this function **}
{** you need to call SetHistoryStringList() with a TStrings property which      **}
{** has a date on each line which refers to a holiday.                          **}
{*********************************************************************************}
Function TAdrockDates.IsHoliday(WorkDate : TDateTime) : Boolean;
var
  Count, Pos : Integer;
begin
  Result := FALSE;
  { Do not check nil string lists }
  if (HolidayStringList = nil) then
    Exit;

  Count := HolidayStringlist.count;
  for Pos := 0 to Count-1 do
   if (WorkDate = StrToDate(HolidayStringlist.Strings[pos])) then
    begin
      Result := TRUE;
      Exit;
    end;
end;


{***************************************************************************}
{** Returns true if the date in in the range specified                    **}
{***************************************************************************}
function TAdrockDates.IsDateInRange(WorkDate, StartDate, EndDate : TDateTime) : Boolean;
begin
  Result := ((WorkDate >= StartDate) and (WorkDate <= EndDate));
end;

{***************************************************************************}
{** Returns true if the date in the range specified and also in the range **}
{** plus or minus a given number of days                                  **}
{***************************************************************************}
function TAdrockDates.IsDateInPosNegRange(WorkDate, CompareDate : TDateTime; PositiveDays, NegativeDays : Integer) : Boolean;
begin
  Result := ((WorkDate >= CompareDate-NegativeDays) and (WorkDate <= CompareDate+PositiveDays));
end;

{***************************************************************************}
{** Returns true if the date in the range specified and also in the range **}
{** plus or minus a given number of days                                  **}
{***************************************************************************}
Function TAdrockDates.IsDateInPosNegBusinessRange(WorkDate, CompareDate : TDateTime; PositiveDays, NegativeDays : Integer) :
  Boolean;
Var
 FirstDate, LastDate : TDatetime;
begin
 FirstDate := AddBusinessDays(-NegativeDays, CompareDate);
 LastDate := AddBusinessDays(PositiveDays, CompareDate);
 Result := (WorkDate >= FirstDate) and (WorkDate <= LastDate);
end;

Function TAdrockDates.IsEmptyDate(WorkDate : String) : Boolean;
begin
    Result := (WorkDate = '');
end;

Function TAdrockDates.IsSunday(WorkDate : TDateTime) : Boolean;
begin
    Result := (DayOfWeek(WorkDate)=1);
end;

Function TAdrockDates.IsMonday(WorkDate : TDateTime) : Boolean;
begin
    Result := (DayOfWeek(WorkDate)=2);
end;

Function TAdrockDates.IsTuesday(WorkDate : TDateTime) : Boolean;
begin
    Result := (DayOfWeek(WorkDate)=3);
end;

Function TAdrockDates.IsWednesday(WorkDate : TDateTime) : Boolean;
begin
    Result := (DayOfWeek(WorkDate)=4);
end;

Function TAdrockDates.IsThursday(WorkDate : TDateTime) : Boolean;
begin
    Result := (DayOfWeek(WorkDate)=5);
end;

Function TAdrockDates.IsFriday(WorkDate : TDateTime) : Boolean;
begin
    Result := (DayOfWeek(WorkDate)=6);
end;

Function TAdrockDates.IsSaturday(WorkDate : TDateTime) : Boolean;
begin
    Result := (DayOfWeek(WorkDate)=7);
end;


Function TAdrockDates.IsJanuary(WorkDate : TDateTime) : Boolean;
begin
  Result := (ReturnMonth(WorkDate)=1);
end;

Function TAdrockDates.IsFebruary(WorkDate : TDateTime) : Boolean;
begin
  Result := (ReturnMonth(WorkDate)=2);
end;

Function TAdrockDates.IsMarch(WorkDate : TDateTime) : Boolean;
begin
  Result := (ReturnMonth(WorkDate)=3);
end;

Function TAdrockDates.IsApril(WorkDate : TDateTime) : Boolean;
begin
  Result := (ReturnMonth(WorkDate)=4);
end;

Function TAdrockDates.IsMay(WorkDate : TDateTime) : Boolean;
begin
  Result := (ReturnMonth(WorkDate)=5);
end;

Function TAdrockDates.IsJune(WorkDate : TDateTime) : Boolean;
begin
  Result := (ReturnMonth(WorkDate)=6);
end;

Function TAdrockDates.IsJuly(WorkDate : TDateTime) : Boolean;
begin
  Result := (ReturnMonth(WorkDate)=7);
end;

Function TAdrockDates.IsAugust(WorkDate : TDateTime) : Boolean;
begin
  Result := (ReturnMonth(WorkDate)=8);
end;

Function TAdrockDates.IsSeptember(WorkDate : TDateTime) : Boolean;
begin
  Result := (ReturnMonth(WorkDate)=9);
end;

Function TAdrockDates.IsOctober(WorkDate : TDateTime) : Boolean;
begin
  Result := (ReturnMonth(WorkDate)=10);
end;

Function TAdrockDates.IsNovember(WorkDate : TDateTime) : Boolean;
begin
  Result := (ReturnMonth(WorkDate)=11);
end;

Function TAdrockDates.IsDecember(WorkDate : TDateTime) : Boolean;
begin
  Result := (ReturnMonth(WorkDate)=12);
end;


Function TAdrockDates.IsWeekend(WorkDate : TDateTime) : Boolean;
begin
  Result := not isWeekDay(WorkDate);
end;

Function TAdrockDates.IsWeekday(WorkDate : TDateTime) : Boolean;
Var
 Day : Integer;
begin
  Day := DayOfWeek(WorkDate);
  if (Day = 1) or (Day = 7) then
    Result := FALSE
  else
    Result := TRUE;
end;


Function TAdrockDates.IsAM(WorkDate : TDateTime) : Boolean;
begin
  Result := IsMorning(WorkDate);
end;

Function TAdrockDates.IsPM(WorkDate : TDateTime) : Boolean;
begin
  Result := IsAfternoon(WorkDate);
end;

Function TAdrockDates.IsMorning(WorkDate : TDateTime) : Boolean;
Var
  Ahour, AMin, ASec, AMSec : Word;
begin
  DecodeTime(WorkDate, AHour, AMin, ASec, AMsec);
  if (AHour > 11) then
    Result := FALSE
  else
    Result := TRUE;
end;

Function TAdrockDates.IsAfternoon(WorkDate : TDateTime) : Boolean;
begin
  Result := Not IsMorning(WorkDate);
end;

Function TAdrockDates.IsMidday(WorkDate : TDateTime) : Boolean;
Var
  Ahour, AMin, ASec, AMSec : Word;
begin
  DecodeTime(WorkDate, AHour, AMin, ASec, AMsec);
  if (AHour = 12) and (AMin = 0) then
    Result := TRUE
  else
    Result := FALSE;
end;

Function TAdrockDates.IsMidNight(WorkDate : TDateTime) : Boolean;
Var
  Ahour, AMin, ASec, AMSec : Word;
begin
  DecodeTime(WorkDate, AHour, AMin, ASec, AMsec);
  if (AHour = 0) and (AMin = 0) then
    Result := TRUE
  else
    Result := FALSE;
end;

{*******************************************************************}
{* Is the date in WorkDate the date for Christmas Day (Dec 25th)   *}
{*******************************************************************}
Function TAdrockDates.IsChristmasDay(WorkDate : TDateTime) : Boolean;
begin
  result := ((ReturnMonth(WorkDate)=12) and (ReturnDayOfMonth(WorkDate)=25));
end;

{*******************************************************************}
{* Is the date in WorkDate the date for New Years Day (Jan 1st)    *}
{*******************************************************************}
Function TAdrockDates.IsNewYearsDay(WorkDate : TDateTime) : Boolean;
begin
  result := ((ReturnDayOfMonth(WorkDate)=1) and (ReturnMonth(WorkDate)=1));
end;

{*******************************************************************}
{* Is the date in WorkDate the date for New Years Day (Jan 1st)    *}
{*******************************************************************}
Function TAdrockDates.IsEasterSunday(WorkDate : TDateTime) : Boolean;
begin
  result := (ReturnEasterSunday(ReturnYear(WorkDate)) = WorkDate);
end;

{*******************************************************************}
{* Is the day in WorkDate equal to the first of the month          *}
{*******************************************************************}
Function TAdrockDates.IsFirstOfTheMonth(WorkDate : TDateTime) : Boolean;
begin
  Result := (ReturnDayOfMonth(WorkDate) = 1);
end;

{**********************************************************************}
{* return the last day in the given month and year contained in ADate *}
{**********************************************************************}
Function TAdrockDates.ReturnLastOfGivenMonth(ADate: TDateTime) : TDateTime;
var
   Day, Month, Year: Word;
begin
   DecodeDate(ADate, Year, Month, Day);
   { Return the date of last of the month }
   Result := EncodeDate(Year, Month, DaysInMonthi(Month, Year));
end;

{***********************************************************************}
{* return the first day in the given month and year contained in ADate *}
{***********************************************************************}
Function TAdrockDates.ReturnFirstOfGivenMonth(ADate: TDateTime) : TDateTime;
var
  Day, Month, Year: Word;
begin
  DecodeDate(ADate, Year, Month, Day);
  { Return the date of last of the month }
  Result := EncodeDate(Year, Month, 1);
end;

{*******************************************************************}
{* Is the day in WorkDate equal to the last day in the month       *}
{*******************************************************************}
Function TAdrockDates.IsLastOfTheMonth(WorkDate : TDateTime) : Boolean;
begin
  Result := (ReturnDayOfMonth(WorkDate) = DaysInMonth(WorkDate));
end;

{*****************************************************************************}
{** Return the day of the week from a TDateTime, and allow any starting day **}
{** of the week to be used.                                                 **}
{*****************************************************************************}
Function  TAdrockDates.ReturnDayOfWeek(StartingDayOfWeek : Integer; WorkDate : TDateTime) : Word;
Var
 D : Integer;
begin
  d := DayofWeek(WorkDate);
  d := d - (StartingDayOfWeek-1);
  if (D < 1) then
     D := 7+D;
  Result := D;
end;

{***************************************************************************}
{** Return the day of the week as a delphi index to the longndaynames     **}
{** strings.                                                              **}
{***************************************************************************}
Function  TAdrockDates.ReturnDelphiDayOfWeek(StartingDayOfWeek, WeekDay : Integer) : Integer;
Var
   Tmp : Integer;
begin
   Tmp := WeekDay + (StartingDayOfWeek-1);
   if (Tmp > 7) then
     Tmp := tmp - 7;
   result := Tmp;
end;

{***************************************************************************}
{** Return the text for the week day. The weekday is dependant on the     **}
{** starting day of the week                                              **}
{***************************************************************************}
Function  TAdrockDates.ReturnWeekDayName(StartingDayOfWeek, WeekDay : Integer) : String;
begin
   result := LongDayNames[ReturnDelphiDayOfWeek(StartingDayOfWeek, WeekDay)];
end;

{***************************************************************************}
{** Return the week number of the day in the month.                       **}
{***************************************************************************}
Function  TAdrockDates.ReturnWeekofMonth(StartingDayOfWeek : Integer; WorkDate : TDateTime) : Word;
Var
  AYear, AMonth, ADay : Word;
  WeekDay : Word;
begin
  DecodeDate(WorkDate, AYear, AMonth, ADay);
  WeekDay := ReturnDayOfWeek(StartingDayOfWeek, EncodeDate(AYear, AMonth, 1));
  Result := 1+(((WeekDay-1)  + (ADay-1)) div 7);
end;

{***************************************************************************}
{** Return the week of the year.                                          **}
{***************************************************************************}
Function  TAdrockDates.ReturnWeeksInYear(StartingDayOfWeek : Integer; Year : Integer) : Integer;
var
   Week1Date                : TDateTime;
   WorkDate                 : TDateTime;
   Test,WeekDay             : integer;
   month, day               : word;
   DateDiff , WeekNr        : double;
begin
   {Calculate Date of First Week}
   Day := 31;
   Month := 12;
   WorkDate := EncodeDate(Year, Month, Day);
   Week1Date := EncodeDate(Year, 1, 1);
   {Week One Date: Adjust Day of week starting Monday}

   WeekDay := ReturnDayOfWeek(StartingDayOfWeek, Week1Date );
   if WeekDay <= 4 then
     Week1Date := Week1Date - (WeekDay-1)
   else
     Week1Date := EncodeDate(Year, 1, 9-WeekDay);
   DateDiff := WorkDate - Week1Date;
   WeekNr := (DateDiff / 7) + 1;
   Test := Trunc(WeekNr);
   If Test=0 Then
      Test:=ReturnWeekOfYear(StartingDayOfWeek, EncodeDate((Year-1),12,31));
   Result:=Test;
end;

function TAdrockDates.ReturnWeekOfYear(StartingDayOfWeek : Integer; WorkDate : TDateTime) : Integer;
begin
  { The ReturnWeekOfYear_Work() routine is a recursive routine : 0=No Recursion taking place }
  Result := ReturnWeekOfYear_Work(TRUE, 0, StartingDayofWeek, WorkDate);
end;

Function  TAdrockDates.ReturnWeekofYear_Work(RealWeek : Boolean; Recursive : Integer;
  StartingDayOfWeek : Integer; WorkDate : TDateTime) : Word;
const
  DayOfs: array[1..7, Sunday..Saturday] of byte = (
                                { Sunday    }       (6,  7,  8,  9, 10,  4,  5),
                                { Monday    }       (5,  6,  7,  8,  9, 10,  4),
                                { Tuesday   }       (4,  5,  6,  7,  8,  9, 10),
                                { Wednesday }       (10, 4,  5,  6,  7,  8,  9),
                                { Thursday  }       (9, 10,  4,  5,  6,  7,  8),
                                { Friday    }       (8,  9, 10,  4,  5,  6,  7),
                                { Saturday  }       (7,  8,  9, 10,  4,  5,  6)
                                                  );
var
  Jan01: TDateTime;
  aValue: longint;
  aDayOf: TAdrockDayOfWeek;
  Year, Month, Day : Word;
begin
  { Decode the date, extract the year, month and day }
  DecodeDate(WorkDate, Year, Month, Day);

  { Create a date to represent January 01, for the specific year }
 Jan01 := EncodeDate(Year, 1, 1);
 { Convert from a TDateTime to a LongInt }
 aValue := Trunc(Jan01);

 { Determine the day of the week }
 aDayOf := TAdrockDayOfWeek(aValue mod 7);

 { Determine the week number for the specific starting }
 Result := (Trunc(WorkDate) - aValue + DayOfs[StartingDayOfWeek][aDayOf]) div 7;
 
 { If real week = true then 1st of january might be week 53, or week 1 }
 { if real week = false then week can be 0-53                          }
 if (RealWeek = True) then
   begin
     { If the week is 53 and (Next Year starts at week 1) then the week = 1) }
     { We also do not want to do this if the recursive status = 2, recursive back a year }
     if (Result = 53) and (Recursive <> 2) and
       (ReturnWeekofYear_Work(True, 1, StartingDayofWeek, EncodeDate(Year+1,1,1)) = 1) then
          Result := 1
     { If the week is 0 then the week # is the last week of the previous year }
     { We also do not want to do this if the recursive status = 1, recursive forward a year }
     else if (Result = 0) and (Recursive <> 1) then
       Result := ReturnWeekofYear_Work(True, 2, StartingDayOfWeek, EncodeDate(Year-1,12,31));
   end;
end;

{***************************************************************************}
{** Get the week number for the first of the current month.               **}
{***************************************************************************}
Function TAdrockDates.GetFirstofMonthWeekNumber(StartingDayOfMonth : Integer; WorkDate : TDateTime) : Integer;
var
  TmpDate  : TDateTime;
  AYear, AMonth, ADay : Word;
begin
  DecodeDate(WorkDate, Ayear, Amonth, ADay);
  TmpDate := EncodeDate(AYear, AMonth, 1);
  Result := ReturnWeekOfYear(StartingDayofMonth, TmpDate);
end;

{***************************************************************************}
{** Get the day of the year for the specified date                        **}
{***************************************************************************}
Function TAdrockDates.ReturnDayOfYear(WorkDate : TDateTime) : Word;
var
  Days, Months, Years, Month, DayOfYear : Word;
begin
  DecodeDate(WorkDate, Years, Months, Days);
  DayOfYear :=0;
  for Month := 1 to Months-1 do
    DayOfYear := DayOfYear+DaysInMonthi(MOnth, Years);
  DayofYear := DayofYear+Days;
  Result := DayofYear;
end;

{***************************************************************************}
{** Returns true if the year specified is a LEAP year.                    **}
{***************************************************************************}
function TAdrockDates.IsLeapYeari(aYear : Integer) : Boolean;
begin
  Result := ( aYear mod 4 = 0 ) and
            ( ( aYear mod 100 <> 0 ) or ( aYear mod 400 = 0 ) );
end;

{*********************************************************************************}
{** Returns true if the year specified in the TDateTime Variable is a Leap Year **}
{*********************************************************************************}
function TAdrockDates.IsLeapyear(WorkDate : TDateTime) : Boolean;
begin
  Result := IsLeapYeari(ReturnYear(WorkDate));
end;

{*****************************************************************************}
{** Add the specified number of days to the workdate returning the new date **}
{*****************************************************************************}
function TAdrockDates.AddDays(NumberOfDays : Integer; WorkDate :TDateTime) : TDateTime;
begin
  Result := WorkDate+NumberOfDays;
end;

{*********************************************************************************}
{** Add the specified number of weeks to the workdate returning the new date **}
{*********************************************************************************}
function TAdrockDates.AddWeeks(NumberOfWeeks : Integer; WorkDate :TDateTime) : TDateTime;
begin
  Result := WorkDate+(NumberOFWeeks * 7); { 7 Days per week }
end;

{*********************************************************************************}
{** Add the specified number of months to the workdate returning the new date   **}
{*********************************************************************************}
function TAdrockDates.AddMonths(NumberOfMonths : Integer; WorkDate :TDateTime) : TDateTime;
Var
  AYear, AMonth, ADay : Word;
  fMonth              : Integer;
begin
  if (NumberOfMonths = 0) then
    begin
      Result := WorkDate;
      exit;
    end;
  DecodeDate(WorkDate, AYear, AMonth, ADay);
  fMonth := AMonth;
  AYear  := AYear + (NumberOfMonths div 12);
  fMonth := fMonth + (NumberOfMonths mod 12);
  if (NumberOfMonths > 0) then
    begin
      if (fMonth > 12) then
        begin
          Inc(AYear);
          fMonth := fMonth-12;
        end;
    end
  else
    if (fMonth < 1) then
        begin
          Dec(AYear);
          fMonth := 12+fMonth;
        end;
  if ADay > DaysInMonthi(fMonth, AYear) then
    ADay := DaysInMonthi(fMonth, AYear);
  aMonth := fMonth;
  Result := EncodeDate(AYear, AMonth, ADay);
end;

{*********************************************************************************}
{** Add the specified number of quarters to the workdate returning the new date **}
{*********************************************************************************}
function TAdrockDates.AddQuarters(NumberOfQuarters : Integer; WorkDate :TDateTime) : TDateTime;
begin
  { Since a quarter is every 3 months just use the months routine and multiply by 3 }
  Result := AddMonths(NumberOfQuarters*3, WorkDate);
end;

{******************************************************************************}
{** Add the specified number of years to the workdate returning the new date **}
{******************************************************************************}
function TAdrockDates.AddYears(NumberOfYears : Integer; WorkDate :TDateTime) : TDateTime;
Var
  AYear, AMonth, ADay : Word;
begin
  DecodeDate(WorkDate, AYear, AMonth, ADay);
  AYear := AYear + NumberOfYears;
  if ADay > DaysInMonthi(AMonth, AYear) then
    ADay := DaysInMonthi(AMonth, AYear);
  Result := EncodeDate(AYear, AMonth, ADay);
end;

{***************************************************************************}
{** Return the number of days in a month, handles leap years.             **}
{***************************************************************************}
function TAdrockDates.DaysInMonthi(Month, Year : Word) : Word;
Const
 m_DaysPerMonth: array[1..12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
  Result := m_DaysPerMonth[Month];
  if ( Month = 2 ) and IsLeapYeari(Year) then
    Inc( Result ); { leap-year Feb is special }
end;

{***************************************************************************}
{** Return the number of days in a month, based on TDateTime date.        **}
{***************************************************************************}
function TAdrockDates.DaysInMonth(WorkDate : TDateTime) : Word;
begin
  Result := DaysInMonthI(ReturnMonth(WorkDate), ReturnYear(WorkDate));
end;

{***************************************************************************}
{** Return the number of days left in a month using an integer for mon,year*}
{***************************************************************************}
function TAdrockDates.DaysLeftInMonthi(Day, Month, Year : Integer) : Word;
Var
  fDaysInMonth : Integer;
begin
  fDaysInMonth := DaysInMonthi(Month, Year);
  Result := fDaysInMonth-Day;
end;

{***************************************************************************}
{** Return the number of days left in a month                             **}
{***************************************************************************}
function TAdrockDates.DaysLeftInMonth(WorkDate : TDateTime) : Word;
begin
  Result := DaysLeftInMonthI(ReturnDayOfMonth(WorkDate), ReturnMonth(WorkDate), ReturnYear(WorkDate));
end;


{***************************************************************************}
{** Return the number of days left in the year, using ints for Day,Mon,Year*}
{***************************************************************************}
function TAdrockDates.DaysLeftInYeari(Day, Month, Year : Integer) : Word;
Var
  fDayOfyear : Integer;
begin
  fDayOfYear := ReturnDayofYear(EncodeDate(Year, Month, Day));
  Result := DaysInYeari(Year) - FDayOfYear;
end;

{***************************************************************************}
{** Return the number of days left in the year specified by WorkDate      **}
{***************************************************************************}
function TAdrockDates.DaysLeftInYear(WorkDate : TDateTime) : Word;
begin
  Result := DaysLeftInYearI(ReturnDayofMonth(WorkDate), ReturnMonth(WorkDate), ReturnYear(WorkDate));
end;

{***************************************************************************}
{** Return the number of days in a year, Year is specified as a integer   **}
{***************************************************************************}
function TAdrockDates.DaysInYeari(Year : Integer) : Word;
begin
  if (IsLeapYeari(Year)) then
    Result := 366
  else
    Result := 365;
end;

{***************************************************************************}
{** Return the number of days in a year, specified as a TDateTime date    **}
{***************************************************************************}
function TAdrockDates.DaysInYear(WorkDate : TDateTime) : Word;
begin
  Result := DaysInYeari(ReturnYear(WorkDate));
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.ReturnDayOfMonth(WorkDate : TDateTime) : Word;
var
  Days, Months, Years : Word;
begin
  DecodeDate(WorkDate, Years, Months, Days);
  Result := Days;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.ReturnMonth(WorkDate : TDateTime) : Word;
var
  Days, Months, Years : Word;
begin
  DecodeDate(WorkDate, Years, Months, Days);
  Result := Months;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.ReturnQuarter(WorkDate : TDateTime)  : Word;
var
  Days, Months, Years : Word;
begin
  DecodeDate(WorkDate, Years, Months, Days);
  Result := 1+trunc((Months-1) / 3);
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.ReturnYear(WorkDate : TDateTime) : Word;
var
  Days, Months, Years : Word;
begin
  DecodeDate(WorkDate, Years, Months, Days);
  Result := Years;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.ReturnCentury(WorkDate : TDateTime) : Word;
var
  Days, Months, Years : Word;
begin
  DecodeDate(WorkDate, Years, Months, Days);
  Result := trunc(Years / 100);
end;


{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Procedure TAdrockDates.ReturnYearsMonthsDaysBetweenDates(FirstDate, LastDate : TDateTime; var fYear, fMonth, fDay : Word);
Var
  firstYear, firstMonth, firstDay     : Word;
  SecondYear, SecondMonth, SecondDay : Word;
  FirstDaysInMonth, SecondDaysInMonth : Integer;
begin
  { First Date = 20/12/1966 }
  DecodeDate(FirstDate, FirstYear, FirstMonth, FirstDay);
  FirstDaysInMonth := DaysInMonthi(FirstMonth, FirstYear);

  { Second Date = 18/07/1997 }
  DecodeDate(LastDate, SecondYear, SecondMonth, SecondDay);
  SecondDaysInMonth := DaysInMonthi(SecondMonth, SecondYear);

  { Determine the number of full years }
  fYear := SecondYear - FirstYear;
  if (fYear > 0) then
    if (FirstMonth > SecondMonth) or (FirstMonth > SecondMonth) and (FirstDay > SecondDay) then
       { Only part of a year - so decrement the years. }
       Dec(fYear);

  if (FirstMonth > SecondMonth) then
    fMonth := FirstMonth - 12+SecondMonth
  else
    fMonth := SecondMonth - FirstMonth;

  if (FirstDay > SecondDay) then
    begin
      { Only part of a month - so decrement the Months }
      Dec(fMonth);
      fDay := (FirstDaysInMonth+SecondMonth) - FirstMonth ;
    end
  else
    begin
      fDay := SecondDay - FirstDay;
    end;

end;

{ Date encoding and decoding }

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
function TAdrockDates.GetDayTable(Year: Word): PDayTable;
const
  DayTable1: TDayTable = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
  DayTable2: TDayTable = (31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
  DayTables: array[Boolean] of PDayTable = (@DayTable1, @DayTable2);
begin
  Result := DayTables[IsLeapYeari(Year)];
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
function TAdrockDates.DoEncodeDate(fYear, fMonth, fDay: Word; var fDate: TDateTime): Boolean;
var
  I: LongInt;
  DayTable: PDayTable;
begin
  Result := False;
  DayTable := GetDayTable(fYear);
  if (fYear >= 1) and (fYear <= 9999) and (fMonth >= 1) and (fMonth <= 12) and
    (fDay >= 1) and (fDay <= DayTable^[fMonth]) then
  begin
    for I := 1 to fMonth - 1 do Inc(fDay, DayTable^[I]);
    I := fYear - 1;
    fDate := (I * 365) + (fDay + I div 4 - I div 100 + I div 400);
    Result := True;
  end;
end;

{ String to date/time conversions }

procedure TAdrockDates.ScanCommasAndBlanks(const S: string; var Pos: Integer);
var
  I: Integer;
begin
  I := Pos;
  while (I <= Length(S)) and (S[I] in [' ', ',']) do
    Inc(I);
  Pos := I;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
procedure TAdrockDates.ScanBlanks(const S: string; var Pos: Integer);
var
  I: Integer;
begin
  I := Pos;
  while (I <= Length(S)) and (S[I] = ' ') do Inc(I);
  Pos := I;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
function TAdrockDates.ScanNumber(const S: string; var Pos: Integer;
  var Number: Word): Boolean;
var
  I: Integer;
  N: Word;
begin
  Result := False;
  ScanBlanks(S, Pos);
  I := Pos;
  N := 0;
  while (I <= Length(S)) and (S[I] in ['0'..'9']) and (N < 1000) do
  begin
    N := N * 10 + (Ord(S[I]) - Ord('0'));
    Inc(I);
  end;
  if I > Pos then
  begin
    Pos := I;
    Number := N;
    Result := True;
  end;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
function TAdrockDates.ScanMonthWord(const S: string; var Pos: Integer; var Number: Word): Boolean;
var
  fMonth   : String;
  fPos, I  : Integer;
begin
  Result := False;
  ScanCommasAndBlanks(S, Pos);
  I := Pos;
  fMonth := '';
{ while (I <= Length(S)) and (S[i] <> ' ') and (S[i] <> DateSeparator) do}
  while (I <= Length(S)) and not (S[i] in [' ', ',',DateSeparator]) do
  begin
    fMonth := fMonth + Upcase(S[I]);
    Inc(I);
  end;
  if I > Pos then
  begin
    { Scan the fmonth variable for a valid month name... }
    Number := 0;
    for fPos := 1 to 12 do
      if (fMonth = uppercase(Copy(LongMonthNames[fPos],1,Length(fMonth))) ) then
        begin
          Number := fPos;
          Result := True;
          Pos := I;
          exit;
        end;
    Pos := I;
  end;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
function TAdrockDates.ScanChar(const S: string; var Pos: Integer; Ch: Char): Boolean;
begin
  Result := False;
  ScanBlanks(S, Pos);
  if (Pos <= Length(S)) and (S[Pos] = Ch) then
  begin
    Inc(Pos);
    Result := True;
  end;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
function TAdrockDates.GetDateOrder(const DateFormat: string): TDateOrder;
var
  I: Integer;
begin
  Result := doYMD;
  I := 1;
  while I <= Length(DateFormat) do
  begin
    case Chr(Ord(DateFormat[I]) and $DF) of
      'Y': Result := doYMD;
      'M': Result := doMDY;
      'D': Result := doDMY;
    else
      Inc(I);
      Continue;
    end;
    Exit;
  end;
  Result := doMDY;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
function TAdrockDates.GetTextDateOrder(const DateFormat: string): TDateOrder;
var
  Ms, Pos, I: Integer;
begin
  Result := doYMD;
  I := 1;
  ms := 0;
  while I <= Length(DateFormat) do
  begin
    case Chr(Ord(DateFormat[I]) and $DF) of
      'Y': Result := doYMD;
      'M': Result := doMDY;
      'D': Result := doDMY;
    else
      Inc(I);
      Continue;
    end;
    { At this point we have determined the date order but we now need to determine if the
      month is a number or a string
    }

    { Basically we count the m's if there is more than 2 then it is a string}
    for Pos :=1 to Length(DateFormat) do
      if (Upcase(DateFormat[POs]) = 'M') then
        Inc(Ms);
    if (Ms > 2) then
      { We again compare the character to see if we should use MMM, or M}
      case Chr(Ord(DateFormat[I]) and $DF) of
        'Y': Result := doYMMMD;
        'M': Result := doMMMDY;
        'D': Result := doDMMMY;
      end;
    Exit;
  end;
  Result := doMDY;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
function TAdrockDates.ScanDate(const S: string; var Pos: Integer; var Date: TDateTime): Boolean;
var
  DateOrder: TDateOrder;
  ADay, AMonth, AYear : Word;
  N1, N2, N3, Y, M, D : Word;
begin
  Y := 0;
  M := 0;
  D := 0;
  Result := False;
  DateOrder := GetDateOrder(ShortDateFormat);

  if not (ScanNumber(S, Pos, N1) and ScanChar(S, Pos, DateSeparator) and
    ScanNumber(S, Pos, N2)) then Exit;
  if ScanChar(S, Pos, DateSeparator) then
  begin
    if not ScanNumber(S, Pos, N3) then Exit;
    case DateOrder of
      doMDY: begin Y := N3; M := N1; D := N2; end;
      doDMY: begin Y := N3; M := N2; D := N1; end;
      doYMD: begin Y := N1; M := N2; D := N3; end;
    end;
    if Y <= 99 then Inc(Y, 1900);
  end
  else
  begin
    DecodeDate(Now, AYear, aMonth, aDay);
    Y := AYear;
    if DateOrder = doDMY then
      begin
        D := N1; M := N2;
      end
    else
      begin
        M := N1; D := N2;
      end;
  end;
  ScanBlanks(S, Pos);
  Result := DoEncodeDate(Y, M, D, Date);
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
function TAdrockDates.IsValidDate(WorkDate : String) : Boolean;
var
  Pos: Integer;
  ADate : TDateTime;
begin
  Pos := 1;
  Result := TRUE;
  if not ScanDate(WorkDate, Pos, ADate) or (Pos <= Length(WorkDate)) then
    Result := FALSE;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
function TAdrockDates.AdrockScanDate(const S: string; var Pos: Integer; var fDate: TDateTime): Boolean;
var
  DateOrder: TDateOrder;
  StartPos, ADay, AMonth, AYear : Word;
  N1, N2, N3, Y, M, D : Word;
  WordMonthFirst,
  WordMonth, Valid    : Boolean;
begin
  Y := 0;
  M := 0;
  D := 0;
  Result := False;
  DateOrder := GetDateOrder(ShortDateFormat);

  StartPos := Pos;
  WordMonth := FALSE;
  WordMonthFirst := FALSE;
  Valid := TRUE;

  { Attempt to find a valid date using the standard Delphi method }
  if not (ScanNumber(S, Pos, N1) and ScanChar(S, Pos, DateSeparator) and ScanNumber(S, Pos, N2)) then
     Valid := FALSE;

  { Check to see if a valid date can be found by searching for a day, then a a space, and then
    a month, (Not Word, just numeric) "13 5"}
  if (Valid = FALSE) then
    begin
       Pos := StartPos;
       if not (ScanNumber(S, Pos, N1) and ScanNumber(S, Pos, N2)) then
         Valid := FALSE
       else
        begin
         Valid := TRUE;
         WordMonth := TRUE;
        end;
    end;

  { Check to see if a valid date can be found by searching for a day, then date seperator
    and then a word month. eg: "13/March"}
  if (Valid = FALSE) then
    begin
       Pos := StartPos;
       if not (ScanNumber(S, Pos, N1) and ScanChar(S, Pos, DateSeparator) and ScanMonthWord(S, Pos, N2)) then
         Valid := FALSE
       else
        begin
         Valid := TRUE;
         WordMonth := TRUE;
        end;
    end;

  { Check to see if a valid date can be found by searching for just a word month after the
    day, no date seperator: eg: "20 March" }
  if (Valid = FALSE) then
    begin
       Pos := StartPos;
       if (ScanNumber(S, Pos, N1) = FALSE) or (ScanMonthWord(S, Pos, N2) = FALSE) then
          Valid := FALSE
       else
        begin
          Valid := TRUE;
          WordMonth := TRUE;
        end;
    end;

  { Check to see if a valid date can be found by searching for a month word and then a date
    seperator, and then the day, eg: "March/20" }
  if (Valid = FALSE) then
    begin
       Pos := StartPos;
       if not (ScanMonthWord(S, Pos, N1) and ScanChar(S, Pos, DateSeparator) and ScanNumber(S, Pos, N2)) then
          Valid := FALSE
       else
         begin
           Valid := TRUE;
           WordMonth := TRUE;
           WordMonthFirst := FALSE;
         end;
    end;

  { Check to see if a valid date can be found by searching for a month word and then the
    day, eg: "March 20" }
  if (Valid = FALSE) then
    begin
       Pos := StartPos;
       if not (ScanMonthWord(S, Pos, N1) and ScanNumber(S, Pos, N2)) then
          Valid := FALSE
       else
         begin
           Valid := TRUE;
           WordMonth := TRUE;
           WordMonthFirst := TRUE;
         end;
    end;

  { At this point we have no idea what the user typed in, assume it is rubbish }
  if (Valid = FALSE) then
     Exit;

  if (WordMonth = TRUE) then
   begin
      ScanCommasAndBlanks(S, Pos);

      if (Pos > length(s)) then
        begin
          DecodeDate(Now, AYear, aMonth, aDay);
          N3 := AYear;
        end
      else
        if not ScanNumber(S, Pos, N3) then
          Exit;

      if (WordMonthFirst = TRUE) then
        begin
          Y := N3;
          D := N2;
          M := N1;
        end
      else
         case DateOrder of
              doMDY: begin Y := N3; M := N1; D := N2; end;
              doDMY: begin Y := N3; M := N2; D := N1; end;
              doYMD: begin Y := N1; M := N2; D := N3; end;
         end;
      if Y <= 75 then Inc(Y, 2000);
      if Y <= 99 then Inc(Y, 1900);

      if (Y >= 1) and (Y <= 9999) and (M >= 1) and (M <= 12) and
        (D >= 1) and (D <= DaysInMonthi(M, Y)) then
           begin
             Fdate := EncodeDate(Y, M, D);
             Result := TRUE;
           end;
   end
  else
    begin
     if (ScanChar(S, Pos, DateSeparator)) then
     begin
       if not ScanNumber(S, Pos, N3) then Exit;
       case DateOrder of
         doMDY: begin Y := N3; M := N1; D := N2; end;
         doDMY: begin Y := N3; M := N2; D := N1; end;
         doYMD: begin Y := N1; M := N2; D := N3; end;
       end;
      if Y <= 75 then Inc(Y, 2000);
      if Y <= 99 then Inc(Y, 1900);
     end
     else
     begin
       DecodeDate(Now, AYear, aMonth, aDay);
       Y := AYear;
       if DateOrder = doDMY then
         begin
           D := N1; M := N2;
         end
       else
         begin
           M := N1; D := N2;
         end;
     end;
      if Y <= 75 then Inc(Y, 2000);
      if Y <= 99 then Inc(Y, 1900);
     ScanBlanks(S, Pos);
      if (Y >= 1) and (Y <= 9999) and (M >= 1) and (M <= 12) and
        (D >= 1) and (D <= DaysInMonthi(M, Y)) then
           begin
             Fdate := EncodeDate(Y, M, D);
             Result := TRUE;
           end;
  end;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
function TAdrockDates.IsValidAdrockDate(WorkDate : String) : Boolean;
var
  Pos: Integer;
  ADate : TDateTime;
begin
  Pos := 1;
  Result := TRUE;
  if not AdrockScanDate(WorkDate, Pos, ADate) or (Pos <= Length(WorkDate)) then
    Result := FALSE;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
function TAdrockDates.AdrockStrToDate(WorkDate : String) : TDateTime;
var
  Pos: Integer;
  ADate : TDateTime;
begin
  Pos := 1;
  if not AdrockScanDate(WorkDate, Pos, ADate) or (Pos <= Length(WorkDate)) then
    Result := 0
  else
    Result := ADate;
end;


{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
function TAdrockDates.ScanCharNoSpace(const S: string; var Pos: Integer; Ch: Char): Boolean;
begin
  Result := False;
{  ScanBlanks(S, Pos);}
  if (Pos <= Length(S)) and (S[Pos] = Ch) then
  begin
    Inc(Pos);
    Result := True;
  end;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.DecodeTextDate(DateFormatStr, DateStr : String) : TDateTime;
Var
  fDateOrder : TDateOrder;
    fYear, fMonth, fDay : Word;
  Pos, Offset   : Integer;
  Valid    : Boolean;
begin
  Result := 0;
  Offset := 1;
  { At the moment we are assumming a date in this format: DD MMM, YYYY }

  { Determine the date ordering... }
  fDateOrder := GetTextDateOrder(DateFormatStr);

  Pos := 0; { Pos is used to determine which action should be taken Below is
              for doDMY or doDMMMY
              0 = Day (or Month or year depending on format)
              1 = Separator
              2 = Month (either 3, 03, or Mar, March, or Day or Year)
              3 = Separator
              4 = Year (or day depending on format)
             }
  Valid := TRUE;
  while (Valid = TRUE) and (Pos < 5) do
    begin
      case Pos of
        0   : case fDateOrder of
                doDMY, doDMMMY : { Scan for the Day of the date... }
                                 Valid := ScanNumber(DateStr, Offset, fDay);
                doYMD, doYMMMD : { Scan for the Year of the date... }
                                 Valid := ScanNumber(DateStr, Offset, fYear);
                doMDY          : { Scan for the month as a number... }
                                 begin
                                  Valid := ScanNumber(DateStr, Offset, fMonth);
                                  if (Valid = FALSE) then
                                    Valid := ScanMonthWord(DateStr, Offset, fMonth);
                                 end;
                doMMMDY        : { Scan for the month : Allow MAR, MARCH, etcc, but not marc }
                                 Valid := ScanMonthWord(DateStr, Offset, fMonth);
              end;
        1,3 : begin
                { Scan for either the date separator or a space ' ' }
                Valid := ScanCharNoSpace(DateStr, Offset, ' ');
                if (Valid = FALSE) then
                  { The scan for the space failed, so check for the date separator... }
                Valid := ScanCharNoSpace(DateStr, Offset, DateSeparator);
              end;
        2   : case fDateOrder of
                doMDY, doMMMDY   : { Scan for the Day of the date... }
                                   Valid := ScanNumber(DateStr, Offset, fDay);
                doYMD, doDMY     : { Scan for the month as a number... }
                                   begin
                                      Valid := ScanNumber(DateStr, Offset, fMonth);
                                      if (Valid = FALSE) then
                                        Valid := ScanMonthWord(DateStr, Offset, fMonth);
                                   end;
                doYMMMD, doDMMMY : { Scan for the month : Allow MAR, MARCH, etcc, but not marc }
                                   Valid := ScanMonthWord(DateStr, Offset, fMonth);
              end;
        4   : case fDateOrder of
                doMDY, doMMMDY,
                doDMY, doDMMMY :  { Scan for the year.... }
                                  Valid := ScanNumber(DateStr, Offset, fYear);
                doYMD, doYMMMD :  { Scan for the year.... }
                                  Valid := ScanNumber(DateStr, Offset, fDay);
              end;
      end;
      Inc(Pos);
    end;
  if (Valid) then
    begin
      { Encode the date..}
      if (fYear < 100) then
        fYear := fYear+1900;
      Result := EncodeDate(fYear, fMonth, fDay);
    end;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
function TAdrockDates.ExpandYear(fyear : Word) : Word;
begin
  if (fYear < 100) then
    if (fYear <= 29) then
      fYear := fYear + 2000 { eg: 20= 2020, 29=2029, 00=2000 }
    else
      fYear := fYear + 1900;{ eg: 56= 1956, 86=1986, 35=1935 }
    Result := fYear;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
function TAdrockDates.DateToInt(WorkDate : TDateTime) : Longint;
begin
   if (WorkDate = 0) then
     DateToInt := 0
   else
     DateToInt := Trunc(WorkDate);
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
function TAdrockDates.IntToDate(WorkDate : Longint) : TDateTime;
begin
  Result := WorkDate;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
function TAdrockDates.ReturnDaysBetweenDates(FirstDate, SecondDate : TDateTime) : LongInt;
begin
  Result := DateToInt(FirstDate)-DateToInt(SecondDate);
end;

function TAdrockDates.ReturnWeeksBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
begin
  Result := trunc((DateToInt(FirstDate)-DateToInt(SecondDate)) / 7);
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
function TAdrockDates.ReturnBoundaryQuartersBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
Var
  FirstDateQuarter, SecondDateQuarter : Integer;
  FirstYear, SecondYear               : Integer;
begin
  FirstDateQuarter := ReturnQuarter(FirstDate);
  SecondDateQuarter := ReturnQuarter(SecondDate);

  FirstYear := ReturnYear(FirstDate);
  SecondYear := ReturnYear(SecondDate);

  { Same quarter }
  if (FirstYear = SecondYear) and (FirstDateQuarter = SecondDateQuarter) then
    begin
      Result := 0;
      exit;
    end;

  if (FirstDate > SecondDate) then
   begin
      if (FirstYear = SecondYear) then
        Result := FirstDateQuarter - SecondDateQuarter
      else
        Result := 1+(FirstDateQuarter - SecondDateQuarter)+((FirstYear-SecondYear) * 3);
   end
  else
   begin
      if (FirstYear = SecondYear) then
        Result := -(SecondDateQuarter - FirstDateQuarter)
      else
        Result := -(1+(SecondDateQuarter - FirstDateQuarter)+((SecondYear-FirstYear) * 3));
   end;

end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function  TAdrockDates.ReturnBoundaryYearsBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
begin
  Result := ( ReturnYear(FirstDate) - ReturnYear(SecondDate) );
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function  TAdrockDates.ReturnBoundaryMonthsBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
Var
  FirstWorkDate, SecondWorkDate : TDateTime;
  Months                        : Integer;
  AYear, AMonth, ADay, BYear, bMonth, bDay : Word;
begin
  DecodeDate(FirstDate, aYear, aMonth, ADay);
  DecodeDate(SecondDate, bYear, bMonth, bDay);
  if (AMonth = BMonth) and (AYear=BYear) then
    begin { Same Month }
      Result := 0;
      exit;
    end;
  FirstWorkDate := EncodeDate(AYear, AMonth, 1);
  SecondWorkDate := EncodeDate(BYear, BMonth, 1);
  Months := 0;

  if (FirstDate > SecondDate) then
  begin
    Dec(AMonth);
    if (AMOnth = 0) then
      begin
        Dec(AYear);
        AMonth := 12;
      end;
    while 1=1 do { Just Loop }
    begin
       if (FirstWorkDate > SecondWorkDate) then
         begin
            FirstWorkDate := EncodeDate(AYear, AMonth,1);
            Dec(AMonth);
            if (AMOnth = 0) then
              begin
                Dec(AYear);
                AMonth := 12;
              end;
            Inc(Months);
         end
       else { FirstWorkDate is now equal or less than Second Date, so exit loop }
         begin
           Result := Months;
           exit;
         end;
    end;
  end
else
 begin
    Dec(BMonth);
    if (BMonth = 0) then
      begin
        Dec(BYear);
        BMonth := 12;
      end;
    while 1=1 do { Just Loop }
    begin
       if (SecondWorkDate > FirstWorkDate) then
         begin
            SecondWorkDate := EncodeDate(BYear, BMonth,1);
            Dec(BMonth);
            if (BMOnth = 0) then
              begin
                Dec(BYear);
                BMonth := 12;
              end;
            Inc(Months);
         end
       else { FirstWorkDate is now equal or less than Second Date, so exit loop }
         begin
           Result := -Months;
           exit;
         end;
    end;
  end;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function  TAdrockDates.ReturnBoundaryWeeksBetweenDates(StartingDayofWeek: Integer; FirstDate, SecondDate : TDateTime)
   : Integer;
Var
  FirstWeekday : Integer;
  SecondWeekday : Integer;
begin
  if (FirstDate > SecondDate) then
  begin
{  if (StartingDayOfWeek = 1) then }{Sunday }
     begin
       FirstWeekday := ReturnDayOfWeek(StartingDayofWeek, FirstDate);
       if (SecondDate > FirstDate-FirstWeekDay) then { It is in the same week }
         { Same Week }
         begin
           Result := 0;
           exit;
         end
       else
        begin
          SecondWeekday := ReturnDayOfWeek(StartingDayofWeek, SecondDate);
          FirstDate := FirstDate - FirstWeekDay-1; { Go to the start of the week }
          SecondDate := SecondDate - SecondWeekDay-1;
          Result := trunc((FirstDate-SecondDate) / 7);
        end;
     end
  end
else
 begin
  SecondWeekday := ReturnDayOfWeek(StartingDayofWeek, SecondDate);
{  if (StartingDayOfWeek = 1) then } {Sunday }
     begin
       if (FirstDate > SecondDate-SecondWeekDay) then { It is in the same week }
         { Same Week }
         begin
           Result := 0;
           exit;
         end
       else
        begin
          FirstWeekday := ReturnDayOfWeek(StartingDayofWeek, FirstDate);
          FirstDate := FirstDate - FirstWeekDay; { Go to the start of the week }
          SecondDate := SecondDate - SecondWeekDay;
          Result := - trunc((SecondDate-FirstDate) / 7);
        end;
     end
   end;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
function TAdrockDates.ReturnMonthsBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
Var
  AYear, Amonth, ADay   : Word;
  BYear, BMonth, BDay   : Word;
  FirstWorkDate, SecondWorkDate : TDateTime;
  Months                : Integer;
begin
  DecodeDate(FirstDate, AYear, AMonth, Aday);
  DecodeDate(SecondDate, BYear, BMonth, Bday);

  Months:= 0;
  if (aYear = bYear) and (aMonth = bMonth) then
    Months := 0
  else { The dates are not in the same month}
    if (FirstDate > SecondDate) then
    begin
      FirstWorkDate := EncodeDate(AYear, AMonth, 1);
      SecondWorkDate := EncodeDate(BYear, BMonth, 1);

      while(1=1) do
      begin
        if (SecondWorkDate = FirstWorkDate) then
           begin
            if (ADay < bDay) then
              Dec(Months);
            result := Months;
            exit;
           end
        else
          begin
            Inc(BMonth);
            if (BMonth = 13) then
             begin
               bMonth := 1;
               Inc(bYear);
             end;
            SecondWorkDate := EncodeDate(BYear, BMonth, 1);
            Inc(Months);
          end;

      end;
    end
  else
   begin
      FirstWorkDate := EncodeDate(AYear, AMonth, 1);
      SecondWorkDate := EncodeDate(BYear, BMonth, 1);
      while(1=1) do
      begin
        if (FirstWorkDate = SecondWorkDate) then
           begin
            if (BDay < ADay) then
              Dec(Months);
            result := -Months;
            exit;
           end
        else
          begin
            Inc(AMonth);
            if (AMonth = 13) then
              begin
                aMonth := 1;
                Inc(aYear);
              end;
              FirstWorkDate := EncodeDate(AYear, AMonth, 1);
              Inc(Months);
           end;
      end;
   end;
  Result := Months;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
function TAdrockDates.ReturnQuartersBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
begin
  Result := ReturnMonthsBetweenDates(FirstDate, SecondDate)div 3;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
function TAdrockDates.ReturnYearsBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
Var
  AYear, Amonth, ADay   : Word;
  BYear, BMonth, BDay   : Word;
  FirstWorkDate         : TDateTime;
  FirstYear, SecondYear : INteger;
  Years                 : Integer;
begin
  Firstyear := ReturnYear(FirstDate);
  SecondYear := ReturnYear(SecondDate);
  if (FirstYear = SecondYear) then
    Years := 0
  else { The dates are not in the same year, but not nessacarily 1 year apart }
    if (FirstDate > SecondDate) then
    begin
      Years := FirstYear - SecondYear;
      DecodeDate(FirstDate, Ayear, Amonth, ADay);
      DecodeDate(SecondDate, BYear, BMonth, BDay);
      if (aDay > DaysInMonthi(AMonth,BYear)) then
        ADay := DaysInMonthi(AMonth, BYear);
      FirstWorkDate := EncodeDate(BYear, AMonth, ADay);
      if (FirstWorkDate < SecondDate) then
        Dec(Years);
    end
  else
   begin
      Years := SecondYear - FirstYear;
      DecodeDate(FirstDate, Ayear, Amonth, ADay);
      DecodeDate(SecondDate, BYear, BMonth, BDay);
      if (ADay > DaysInMonthi(AMonth,BYear)) then
        ADay := DaysInMonthi(AMonth, BYear);
      FirstWorkDate := EncodeDate(BYear, AMonth, ADay);
      if (SecondDate < FirstWorkDate) then
        Dec(Years);
      Years := -Years;
   end;
  Result := Years;
end;


{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.AreDatesInSameMonth(FirstDate, SecondDate : TDateTime) : Boolean;
begin
 if (ReturnMonth(FirstDate) = ReturnMonth(SecondDate)) then
   Result := TRUE
 else
   Result := FALSE;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.AreDatesInSameYear(FirstDate, SecondDate : TDateTime) : Boolean;
begin
 if (ReturnYear(FirstDate) = ReturnYear(SecondDate)) then
   Result := TRUE
 else
   Result := FALSE;
end;


{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function  TAdrockDates.IsDateWithinRange(TestDate, FirstDate, LastDate : TDatetime)    : Boolean;
begin
 Result := FALSE;
 if (TestDate >= FirstDate) and (TestDate <= LastDate) then
   Result := TRUE;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.AreDatesInSameMonthAndYear(FirstDate, SecondDate : TDateTime) : Boolean;
begin
 if ((AreDatesInSameMonth(FirstDate, SecondDate) = TRUE) and (AreDatesInSameYear(FirstDate, SecondDate) = TRUE)) then
   Result := TRUE
 else
   Result := FALSE;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.ReturnFirstOfAWeek(StartingDayOfWeek: Integer;WorkDate : TDateTime) : TDateTime;
begin
   Result := AddDays(-Pred(ReturnDayOfWeek(Ord(StartingDayOfWeek),WorkDate)),WorkDate);
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TadrockDates.ReturnLastOfAWeek(StartingDayOfWeek: Integer; WorkDate : TDateTime) : TDateTime;
begin
   Result := AddDays(7 - ReturnDayOfWeek(Ord(StartingDayOfWeek),WorkDate),WorkDate);
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.ReturnFirstOfTheWeek : TDateTime;
Var
  CurrentDay : Integer;
begin
   CurrentDay := DayOfWeek(Date);
   ReturnFirstOfTheWeek := Date-(CurrentDay-1);
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.ReturnLastOfTheWeek : TDateTime;
Var
  CurrentDay : Integer;
begin
   CurrentDay := DayOfWeek(Date);
   ReturnLastOfTheWeek := Date+(7-CurrentDay);
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.ReturnFirstOfTheMonth : TDateTime;
Var
  Day, Month, Year : Word;
begin
   DecodeDate(Date, Year, Month, Day);
   { Return the date of first of the month }
   ReturnFirstOfTheMonth := EnCodeDate(Year,Month,1);
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.ReturnLastOfTheMonth : TDateTime;
Var
  Day, Month, Year : Word;
begin
   DecodeDate(Date, Year, Month, Day);
   { Return the date of last of the month }
   ReturnLastOfTheMonth := EnCodeDate(Year, Month, DaysInMonthi(Month, Year));
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.ReturnFirstOfTheYear : TDateTime;
Var
  Day, Month, Year : Word;
begin
   DecodeDate(Date, Year, Month, Day);
   { Return the date of first of the month }
   ReturnFirstOfTheYear := EnCodeDate(Year,1,1);
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.ReturnLastOfTheYear : TDateTime;
Var
  Day, Month, Year : Word;
begin
   DecodeDate(Date, Year, Month, Day);
   { Return the date of last of the month }
   ReturnLastOfTheYear := EnCodeDate(Year, 12, DaysInMonthi(Month, Year));
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.ReturnFirstOfLastWeek : TDateTime;
begin
   ReturnFirstOfLastWeek := ReturnFirstOfTheWeek-7;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.ReturnLastOfLastWeek : TDateTime;
begin
   ReturnLastOfLastWeek := ReturnLastOfTheWeek-7;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.ReturnFirstOfLastMonth : TDateTime;
Var
  Day, Month, Year : Word;
begin
   DecodeDate(Date, Year, Month, Day);
   { Return Last date of first of Last month }
   if (Month = 1) then
       ReturnFirstOfLastMonth := EnCodeDate(Year-1,12,1)
   else
       ReturnFirstOfLastMonth := EnCodeDate(Year,Month-1,1);

end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.ReturnLastOfLastMonth : TDateTime;
Var
  Day, Month, Year : Word;
begin
   DecodeDate(Date, Year, Month, Day);
   { Return Last date of last of Last month }
   if (Month = 1) then
       ReturnLastOfLastMonth := EnCodeDate(Year-1,12,DaysInMonthi(Month, Year))
   else
       ReturnLastOfLastMonth := EnCodeDate(Year,Month-1,DaysInMonthi(Month-1, Year));
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.ReturnFirstOfLastYear : TDateTime;
Var
  Day, Month, Year : Word;
begin
   DecodeDate(Date, Year, Month, Day);
   { Return Last date of first of Last month }
   ReturnFirstOfLastYear := EnCodeDate(Year-1,1,1);
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.ReturnLastOfLastYear : TDateTime;
Var
  Day, Month, Year : Word;
begin
   DecodeDate(Date, Year, Month, Day);
   { Return Last date of last of Last month }
   ReturnLastOfLastYear := EnCodeDate(Year-1, 12, DaysInMonthi(Month, Year));
end;


{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.AddDate(DateMask : String; NumberOfPeriods : Integer; WorkDate : TDatetime) : TDateTime;
Begin
  DateMask := uppercase(DateMask);
  if (DateMask = 'D') then
    Result := AddDays(NumberOfPeriods, WorkDate)
  else if (DateMask = 'B') then
    Result := AddBusinessDays(NumberOfPeriods, WorkDate)
  else if (DateMask = 'W') then
    Result := AddWeeks(NumberOfPeriods, WorkDate)
  else if (DateMask = 'M') then
    Result := AddMonths(NumberOfPeriods, WorkDate)
  else if (DateMask = 'Q') then
    Result := AddQuarters(NumberOfPeriods, WorkDate)
  else if (DateMask = 'Y') then
    Result := AddYears(NumberOfPeriods, WorkDate)
  else
    Result := 0;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.DateDiff(DateMask : String; StartingDayOfWeek : Integer; FirstDate, SecondDate : TDatetime):Longint;
Begin
  DateMask := uppercase(DateMask);
  if (DateMask = 'D') then
    Result := ReturnDaysBetweenDates(FirstDate, SecondDate)
  else if (DateMask = 'B') then
    Result := ReturnBusinessDaysBetweenDates(FirstDate, SecondDate)
  else if (DateMask = 'W') then
    Result := ReturnWeeksBetweenDates(FirstDate, SecondDate)
  else if (DateMask = 'BW') then
    Result := ReturnBoundaryWeeksBetweenDates(StartingDayOfWeek, FirstDate, SecondDate)
  else if (DateMask = 'M') then
    Result := ReturnMonthsBetweenDates(FirstDate, SecondDate)
  else if (DateMask = 'BM') then
    Result := ReturnBoundaryMonthsBetweenDates(FirstDate, SecondDate)
  else if (DateMask = 'Q') then
    Result := ReturnQuartersBetweenDates(FirstDate, SecondDate)
  else if (DateMask = 'BQ') then
    Result := ReturnBoundaryQuartersBetweenDates(FirstDate, SecondDate)
  else if (DateMask = 'Y') then
    Result := ReturnYearsBetweenDates(FirstDate, SecondDate)
  else if (DateMask = 'BY') then
    Result := ReturnBoundaryYearsBetweenDates(FirstDate, SecondDate)
  else
    Result := 0;
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Function TAdrockDates.ReturnPersonsAge(DOB : TDateTime) : Integer;
Var
  WorkDate : TDateTime;
  Years    : Integer;
  Working  : Boolean;
begin
  Result := 0;
  if (DOB = 0) then
    Exit
  else
    begin
      Working := TRUE;
      WorkDate := DOB;
      Years := 0;
      while(Working = TRUE) do
        begin
          WorkDate := AddYears(1, WorkDate);
          if (WorkDate > Date) then
            begin
              Working := FALSE;
              Result := Years;
            end
          else
            Inc(Years);
          if (WorkDate = Date) then
            begin
              Working := FALSE;
              Result := Years;
            end
{          Diff := ReturnDaysBetweenDates(Date, DOB) div 365;
          Result :=  Diff;}
        end;
    end;
end;


Function TAdrockDates.ReturnDayTH(WorkDate : TDateTime) : String;
begin
  Result := ReturnDayTHI(ReturnDayOfMonth(WorkDate));
end;

Function TAdrockDates.ReturnDayTHi(WorkDay : Integer) : String;
begin
   case WorkDay of
     1, 21, 31 : Result := 'st';
     2, 22     : Result := 'nd';
     3, 23     : Result := 'rd';
   else
     Result := 'th';
   end;
end;

Function TAdrockDates.ReturnDaysAgo(WorkDate : TDateTime) : String;
begin
  Result := ReturnDaysInthePast(trunc(Now), WorkDate);
end;

Function TAdrockDates.ReturnWeeksAgo(StartingDayOfWeek : Integer; WorkDate : TDateTime) : String;
begin
  Result := ReturnWeeksInthePast(StartingDayOfWeek, trunc(Now), WorkDate);
end;

Function TAdrockDates.ReturnMonthsAgo(WorkDate : TDateTime) : String;
begin
  Result := ReturnMonthsInthePast(trunc(Now), WorkDate);
end;

Function TAdrockDates.ReturnYearsAgo(WorkDate : TDateTime) : String;
begin
  Result := ReturnYearsInthePast(trunc(Now), WorkDate);
end;

Function TAdrockDates.ReturnQuartersAgo(WorkDate : TDateTime) : String;
begin
  Result := ReturnQuartersInthePast(trunc(Now), WorkDate);
end;

Function TAdrockDates.ReturnDaysInthePast(WorkDate : TDateTime; TestDate : TDateTime) : String;
Var
  DaysBetween : Longint;
begin
  DaysBetween := ReturnDaysBetweenDates(WorkDate,TestDate);
  if (DaysBetween = 0) then
    ReturnDaysInThePast := 'Today.'
  else if (WorkDate > TestDate) then
    begin
      if (ReturnDaysBetweenDates(WorkDate,TestDate) = 1) then
        ReturnDaysInThePast := 'Yesterday.'
      else
        ReturnDaysInThePast := IntToStr(ReturnDaysBetweenDates(WorkDate,TestDate))+' days ago.';
    end
  else
    begin
      if (ReturnDaysBetweenDates(WorkDate,TestDate) = -1) then
        ReturnDaysInThePast := 'Tomorrow.'
      else
        ReturnDaysInThePast := 'In '+IntToStr(ReturnDaysBetweenDates(TestDate,WorkDate))+' days.'
    end;
end;

Function TAdrockDates.ReturnWeeksInthePast(StartingDayOfWeek : Integer; WorkDate : TDateTime; TestDate : TDateTime) : String;
Var
  WeeksBetween : Integer;
begin
  WeeksBetween := ReturnBoundaryWeeksBetweenDates(StartingDayOfWeek,WorkDate,TestDate);
  if (WeeksBetween = 0) then
    ReturnWeeksInThePast := 'This Week.'
  else if (WorkDate > TestDate) then
    begin
      if (WeeksBetween = 1) then
        ReturnWeeksInThePast := 'Last Week.'
      else
        ReturnWeeksInThePast := IntToStr(WeeksBetween)+' weeks ago.';
    end
  else
    begin
      if (WeeksBetween = -1) then
        ReturnWeeksInThePast := 'Next week.'
      else
        ReturnWeeksInThePast := 'In '+IntToStr(-WeeksBetween)+' weeks.'
    end;
end;

Function TAdrockDates.ReturnMonthsInthePast(WorkDate : TDateTime; TestDate : TDateTime) : String;
Var
  MonthsBetween : Integer;
begin
  MonthsBetween := ReturnBoundaryMonthsBetweenDates(WorkDate, TestDate);
{  MonthsBetween := ReturnMonthsBetweenDates(WorkDate,TestDate);}
  if (MonthsBetween = 0) then
    ReturnMonthsInThePast := 'This Month.'
  else if (WorkDate > TestDate) then
    begin
      if (MonthsBetween = 1) then
        ReturnMonthsInThePast := 'Last Month.'
      else
        ReturnMonthsInThePast := IntToStr(MonthsBetween)+' months ago.';
    end
  else
    begin
      if (MonthsBetween = -1) then
        ReturnMonthsInThePast := 'Next Month.'
      else
        ReturnMonthsInThePast := 'In '+IntToStr(-MonthsBetween)+' months.'
    end;
end;

Function  TAdrockDates.ReturnQuartersInthePast(WorkDate : TDateTime; TestDate : TDateTime) : String;
Var
  QuartersBetween : Integer;
begin
  QuartersBetween := ReturnBoundaryQuartersBetweenDates(WorkDate, TestDate);
  if (QuartersBetween = 0) then
    ReturnQuartersInthePast := 'This Quarter.'
  else if (WorkDate > TestDate) then
    begin
      if (QuartersBetween = 1) then
        ReturnQuartersInthePast := 'Last Quarter.'
      else
        ReturnQuartersInthePast := IntToStr(QuartersBetween)+' quarters ago.';
    end
  else
    begin
      if (QuartersBetween = -1) then
        ReturnQuartersInthePast := 'Next Quarter.'
      else
        ReturnQuartersInthePast := 'In '+IntToStr(-QuartersBetween)+' quarters.'
    end;
end;


Function TAdrockDates.ReturnYearsInthePast(WorkDate : TDateTime; TestDate : TDateTime) : String;
Var
  YearsBetween : Integer;
begin
  YearsBetween := ReturnBoundaryYearsBetweenDates(WorkDate,TestDate);
  if (YearsBetween = 0) then
    ReturnYearsInThePast := 'This Year.'
  else if (WorkDate > TestDate) then
    begin
      if (YearsBetween = 1) then
        ReturnYearsInThePast := 'Last Year.'
      else
        ReturnYearsInThePast := IntToStr(YearsBetween)+' years ago.';
    end
  else
    begin
      if (YearsBetween = -1) then
        ReturnYearsInThePast := 'Next Year.'
      else
        ReturnYearsInThePast := 'In '+IntToStr(-YearsBetween)+' years.'
    end;
end;

{*******************************************************************************}
{** Return a string which has a verbal date: 1/1/96 = 1St day of January, 1996 *}
{*******************************************************************************}
Function TAdrockDates.VerbalDate(WorkDate : TDatetime) : String;
begin
  Result := intToStr(ReturnDayOfMonth(WorkDate))+ReturnDayTh(WorkDate)+' day of '+FormatDateTime('MMMM, YYYY', WorkDate);
end;

{***************************************************************************}
{** Format the date using the delphi format datetime routine              **}
{***************************************************************************}
Function  TAdrockDates.FormatDate(FormatMask : String; WorkDate : TDateTime) : String;
Var
  Str, Str1, Str2 : String;
  APOs       : Byte;
  AYear, AMonth, aDay : Word;
begin
  DecodeDate(WorkDate, AYear, aMOnth, aDay);
  APos := Pos('Z', FormatMask);
  if (APos = 0) then
    Str := FormatDateTime(FormatMask, WorkDate)
  else
   begin
    if (APos = 1) then { The first letter of the format string }
      begin
       if (APos+1 < Length(FormatMask)) then
         Str2 := Copy(FormatMask, 2, 256)
       else
          Str2 := '';
       Str := ReturnDayThi(ADay)+FormatDateTime(Str2, WorkDate);
      end
    else
     begin
       Str1 := Copy(FormatMask, 0, APos-1);
       if (APos+1 < Length(FormatMask)) then
         begin
           Str2 := Copy(FormatMask, APos+1, 256);
           Str := FormatDateTime(Str1, WorkDate)+ReturnDayThi(ADay)+FormatDateTime(Str2, WorkDate);
         end
       else
          Str := FormatDateTime(Str1, WorkDate)+ReturnDayThi(ADay);
     end;
   end;
  Result := Str;
end;

{$IFDEF WIN32}
Procedure TAdrockDates.SetSystemTime(Hour, Minute, Second, Hundreths : Byte);
Var
  SystemTime: TSystemTime;
begin
  GetLocalTime(SystemTime);
  SystemTime.WHour         := Hour;
  SystemTime.WMinute       := Minute;
  SystemTime.WSecond       := Second;
  SystemTime.WMilliSeconds := Hundreths;
  SetLocalTime(SystemTime);
end;

Procedure TAdrockDates.SetSystemDate(Year : Word;  Month, Day : Byte);
Var
  SystemTime: TSystemTime;
begin
  GetLocalTime(SystemTime);
  SystemTime.WYear        := Year;
  SystemTime.WMonth       := Month;
  SystemTime.WDay         := Day;
  SystemTime.WDayOfWeek   := DayOfWeek(EncodeDate(Year,Month,Day));
  SetLocalTime(SystemTime);
end;
{$ENDIF}

{$IFNDEF WIN32}
Procedure TAdrockDates.SetSystemTime(Hour, Minute, Second, Hundreths : Byte); assembler;
asm
     mov  ch, Byte Ptr hour
     mov  cl, Byte Ptr Minute
     mov  dh, Byte Ptr Second
     mov  dl, Byte Ptr hundreths
     mov  ah, $2d
     int  $21
     end;

Procedure TAdrockDates.SetSystemDate(Year : Word; Month, Day : Byte); assembler;
asm
     mov  cx, year
     mov  dh, Byte Ptr month
     mov  dl, Byte Ptr day
     mov  ah, $2b
     int  $21
     end;
{$ENDIF}

{****************************************************************************}
{** Return a date based on a day of the week and a week in the month.       *}
{**                                                                         *}
{** Weekday = 1 to 7                                                        *}
{** Example return the 4th wednesday in the month                           *}
{** Example return the last wednesday in the month                          *}
{** StartOfMonth = TRUE  = The weeks start at the first of the month        *}
{** StartOfMonth = FALSE = The weeks start at the end of the month          *}
{****************************************************************************}
Function TAdrockDates.ReturnDateOrdinalDayOfWeek(StartOfMonth : Boolean; Week, WeekDay, Month, Year : Integer) : TDateTime;
Var
 FirstOfTheMonth : TDateTime;
 FirstOfTheMonthWeekDay : Integer;
 fDay, fMonth, FYear    : Word;
begin
  { Check for invalid weeks or weekdays }
  if (((Week < 1) or (Week > 5)) or ((WeekDay < 1) or (WeekDay > 7))) then
    begin
       Result := 0;
       exit;
    end;
  if (StartofMonth = TRUE) then
    begin
       FirstOfTheMonth := EncodeDate(Year, Month, 1);
       FirstOfTheMonthWeekDay := DayofWeek(FirstOfTheMonth);
       if (Week = 1) and (FirstOfTheMonthWeekDay = Weekday) then
         Result := FirstOfTheMonth
       else
         begin
           while (FirstOfTheMonthWeekDay <> Weekday) do
             begin
               FirstOfTheMonth := FirstOfTheMonth+1;
               if (FirstOfTheMonthWeekDay = 7) then
                 FirstOfTheMonthWeekDay := 1
               else
                 Inc(FirstOfTheMonthWeekDay);
             end;

           Result := (FirstOfTheMonth + (Week-1) * 7);
           DecodeDate(Result, fYear, fMonth, fDay);
           if (fMonth <> month) or (fYear <> Year) then
             Result := 0;
         end;
     end
    else
      begin  { Return the last weeks of the month. }
       FirstOfTheMonth := ReturnLastOfTheMonth;
       FirstOfTheMonthWeekDay := DayofWeek(FirstOfTheMonth);
       if (Week = 1) and (FirstOfTheMonthWeekDay = Weekday) then
         Result := FirstOfTheMonth
       else
         begin
           while (FirstOfTheMonthWeekDay <> Weekday) do
             begin
               FirstOfTheMonth := FirstOfTheMonth-1;
               if (FirstOfTheMonthWeekDay = 1) then
                 FirstOfTheMonthWeekDay := 7
               else
                 Dec(FirstOfTheMonthWeekDay);
             end;

           Result := (FirstOfTheMonth - (Week-1) * 7);
           DecodeDate(Result, fYear, fMonth, fDay);
           if (fMonth <> month) or (fYear <> Year) then
             Result := 0;
         end;
     end;
end;

{****************************************************************************}
{** Specify a date in ADate and this routine will reutrn the number of years *}
{** and months apart the dates are.                                         *}
{****************************************************************************}
function TAdrockDates.AgeStr(aDate: TDateTime): string;
var
  DaysOld : Double;
  Years,
  Months  : Integer;
begin
  DaysOld := Date - aDate;

  Years := Trunc(DaysOld / 365.25);
  DaysOld := DaysOld - (365.25 * Years);
  Months := Trunc(DaysOld / 30.41);

  Result := Format('%d years, %d months',[Years, Months]);
end;

Constructor TAdrockDates.Create;
begin
  {$IFDEF UNREGISTERED}
  if (HasNagScreenBeenShown = FALSE) then
    TAdrockNagScreen.Create(NAG_IF_DELPHI_NOT_FOUND, 'TAdrockDateClass', 'Component', '', 29, 60,
        '10625','10987','10985','10987');
  HasNagScreenBeenShown := TRUE;
  {$ENDIF}
  Inherited Create;
  HolidayStringList := nil;
end;

{*******************************************************************}
{* Below is a much simplified way of calling most of the date      *}
{* routines.  Any dates that use business should not be called     *}
{* using a short cut routine unless holidays are not important to  *}
{* you.                                                            *}
{*******************************************************************}

{****************************************************************************}
{** Free the Adrock Date Class run time variable. You should call this     **}
{** function at the end of your program.                                   **}
{****************************************************************************}
procedure FreeAdrockDateClass;
begin
  if (TAdrockDateClass_RuntimeVariable <> nil) then
    TAdrockDateClass_RuntimeVariable.Free;
  TAdrockDateClass_RuntimeVariable := Nil;
end;

{*****************************************************************************}
{** Create an instance of the AdrockDateClass, this instance does not get   **}
{** freed, you must call FreeAdrockDateClass to do that. At the end of your **}
{** program is the best place.                                              **}
{*****************************************************************************}
Procedure CreateAdrockDateClass;
begin
  if (TAdrockDateClass_RuntimeVariable = nil) then
    TAdrockDateClass_RuntimeVariable := TAdrockDates.Create;
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnDelphiDayOfWeek(StartingDayOfWeek, WeekDay : Integer) : Integer;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnDelphiDayOfWeek(StartingDayOfWeek, WeekDay);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnWeekDayName(StartingDayOfWeek, WeekDay : Integer) : String;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnWeekDayName(StartingDayOfWeek, WeekDay);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnWeekofMonth(StartingDayOfWeek : Integer; WorkDate : TDateTime) : Word;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnWeekOfMonth(StartingDayOfWeek, WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnWeekofYear(StartingDayOfWeek : Integer; WorkDate : TDateTime) : Integer;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnWeekOfyear(StartingDayOfWeek, WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnDayOfWeek(StartingDayOfWeek : Integer; WorkDate : TDateTime) : Word;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnDayOfWeek(StartingDayOfWeek, WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnDayOfMonth(WorkDate : TDateTime) : Word;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnDayOfMonth(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnDayOfYear(WorkDate : TDateTime)  : Word;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnDayOfYear(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnMonth(WorkDate : TDateTime)  : Word;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnMonth(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnQuarter(WorkDate : TDateTime)  : Word;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnQuarter(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnYear(WorkDate : TDateTime) : Word;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnYear(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnCentury(WorkDate : TDateTime) : Word;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnCentury(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnDayTh(WorkDate : TDateTime) : String;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnDayTh(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnDayThi(WorkDay : Integer) : String;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnDayThi(WorkDay);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnDaysAgo(WorkDate : TDateTime) : String;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnDaysAgo(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnWeeksAgo(StartingDayOfWeek : Integer; WorkDate : TDateTime) : String;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnWeeksAgo(StartingDayOfWeek, WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnMonthsAgo(WorkDate : TDateTime) : String;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnMonthsAgo(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnQuartersAgo(WorkDate : TDateTime) : String;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnQuartersAgo(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnYearsAgo(WorkDate : TDateTime) : String;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnYearsAgo(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  AreDatesInSameMonth(FirstDate, SecondDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.AreDatesInSameMonth(FirstDate, SecondDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  AreDatesInSameYear(FirstDate, SecondDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.AreDatesInSameYear(FirstDate, SecondDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  AreDatesInSameMonthAndYear(FirstDate, SecondDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.AreDatesInSameMonthAndYear(FirstDate, SecondDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnBoundaryWeeksBetweenDates(StartingDayOfWeek : Integer; FirstDate, SecondDate : TDateTime) : Integer;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnBoundaryWeeksBetweenDates(StartingDayOfWeek, FirstDate, SecondDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnBoundaryQuartersBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnBoundaryQuartersBetweenDates(FirstDate, SecondDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnBoundaryMonthsBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnBoundaryMonthsBetweenDates(FirstDate, SecondDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnBoundaryYearsBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnBoundaryYearsBetweenDates(FirstDate, SecondDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnDaysBetweenDates(FirstDate, SecondDate : TDateTime) : LongInt;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnDaysBetweenDates(FirstDate, SecondDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnWeeksBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnWeeksBetweenDates(FirstDate, SecondDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnMonthsBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnMonthsBetweenDates(FirstDate, SecondDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnQuartersBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnQuartersBetweenDates(FirstDate, SecondDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnYearsBetweenDates(FirstDate, SecondDate : TDateTime) : Integer;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnYearsBetweenDates(FirstDate, SecondDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  IsValidDate(WorkDate : String) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsValidDate(WorkDate);
end;


{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function AdrockStrToDate(WorkDate : String) : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.AdrockStrToDate(WorkDate);
end;



{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  IsValidAdrockDate(WorkDate : String) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsValidAdrockDate(WorkDate);
end;


{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  IsLeapyear(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsLeapYear(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
function  IsLeapYeari(aYear : Integer) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsLeapyearI(AYear);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  IsDateInRange(WorkDate, StartDate, EndDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsDateInRange(WorkDate, StartDate, EndDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  AddDays(NumberOfDays : Integer; WorkDate :TDateTime) : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.AddDays(NumberOfDays, WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  AddWeeks(NumberOfWeeks : Integer; WorkDate :TDateTime) : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.AddWeeks(NumberOfWeeks, WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  AddMonths(NumberOfMonths : Integer; WorkDate :TDateTime) : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.AddMonths(NumberOfMonths, WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  AddQuarters(NumberOfQuarters : Integer; WorkDate :TDateTime) : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.AddQuarters(NumberOfQuarters, WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  AddYears(NumberOfYears : Integer; WorkDate :TDateTime) : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.AddYears(NumberOfYears, WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  FormatDate(FormatMask : String; WorkDate : TDateTime) : String;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.FormatDate(FormatMask, WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  DaysInMonth(WorkDate : TDateTime) : Word;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.DaysInMonth(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  DaysInMonthi(Month, Year : Word) : Word;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.DaysInMonthi(Month, Year);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  DaysInYear(WorkDate : TDateTime) : Word;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.DaysInYear(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
function  DaysInYeari(Year : Integer) : Word;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.DaysInYeari(Year);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  DaysLeftInMonth(WorkDate : TDateTime) : Word;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.DaysLeftInMonth(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
function  DaysLeftInMonthi(Day, Month, Year : Integer) : Word;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.DaysLeftInMonthi(Day, Month, Year);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  DaysLeftInYear(WorkDate : TDateTime) : Word;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.DaysLeftInYear(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  DaysLeftInYeari(Day, Month, Year : Integer) : Word;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.DaysLeftInYeari(Day, Month, Year);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  AddDate(DateMask : String; NumberOfPeriods : Integer; WorkDate : TDatetime) : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.AddDate(DateMask, NumberOfPeriods, WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  DateDiff(DateMask : String; StartingDayOfWeek : Integer; FirstDate, SecondDate : TDatetime) : Longint;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.DateDiff(DateMask, StartingDayOfWeek, FirstDate, SecondDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  GetFirstofMonthWeekNumber(StartingDayOfMonth : Integer; WorkDate : TDateTime) : Integer;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.GetFirstofMonthWeekNumber(StartingDayOfMonth, WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnPersonsAge(DOB : TDateTime) : Integer;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnPersonsAge(DOB);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnDaysInthePast(WorkDate : TDateTime; TestDate : TDateTime) : String;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnDaysInThePast(WorkDate, TestDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnWeeksInthePast(StartingDayOfWeek : Integer; WorkDate : TDateTime; TestDate : TDateTime) : String;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnWeeksInThePast(StartingDayOfWeek, WorkDate, TestDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnMonthsInthePast(WorkDate : TDateTime; TestDate : TDateTime) : String;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnMonthsInThePast(WorkDate, TestDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnQuartersInthePast(WorkDate : TDateTime; TestDate : TDateTime) : String;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnQuartersInThePast(WorkDate, TestDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnYearsInthePast(WorkDate : TDateTime; TestDate : TDateTime) : String;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnYearsInThePast(WorkDate, TestDate);
end;

{**********************************************************************}
{* return the last day in the given month and year contained in ADate *}
{**********************************************************************}
Function  ReturnLastOfGivenMonth(ADate: TDateTime) : TDateTime;
begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnLastOfGivenMonth(ADate);
end;

{***********************************************************************}
{* return the first day in the given month and year contained in ADate *}
{***********************************************************************}
Function  ReturnFirstOfGivenMonth(ADate: TDateTime) : TDateTime;
begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnFirstOfGivenMonth(ADate);
end;

{************************************************************************}
{* Return the first date for the current week, based on Sunday = Start **}
{************************************************************************}
Function  ReturnFirstOfTheWeek : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnFirstOfTheWeek;
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnLastOfTheWeek : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnLastOfTheWeek;
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnFirstOfTheMonth : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnFirstofTheMonth;
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnLastOfTheMonth : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnLastOfTheMonth;
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnFirstOfTheYear : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnFirstofTheYear;
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnLastOfTheYear : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnLastOfTheYear;
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnFirstOfLastWeek : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnFirstOfLastWeek;
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnLastOfLastWeek : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnLastOfLastWeek;
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnFirstOfLastMonth : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnFirstOfLastMonth;
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnLastOfLastMonth : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnLastOfLastMonth;
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnFirstOfLastYear : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnFirstOfLastYear;
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnLastOfLastYear : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnLastOfLastYear;
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
function  IntToDate(WorkDate : Longint) : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IntToDate(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
function  DateToInt(WorkDate : TDateTime) : Longint;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.DateToInt(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  IsDateWithinRange(TestDate, FirstDate, LastDate : TDatetime)    : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsDateWithinRange(TestDate, FirstDate, LastDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  VerbalDate(WorkDate : TDatetime) : String;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.VerbalDate(WorkDate);
end;

{*******************************************************************}
{* Does WorkDate fall on a Monday                                  *}
{*******************************************************************}
Function  IsMonday(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.isMonday(WorkDate);
end;

{*******************************************************************}
{* Does WorkDate fall on a Tuesday                                 *}
{*******************************************************************}
Function  IsTuesday(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsTuesday(WorkDate);
end;

{*******************************************************************}
{* Does WorkDate fall on a Wednesday                               *}
{*******************************************************************}
Function  IsWednesday(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.isWednesday(WorkDate);
end;

{*******************************************************************}
{* Does WorkDate fall on a Thursday                                *}
{*******************************************************************}
Function  IsThursday(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.isThursday(WorkDate);
end;

{*******************************************************************}
{* Does WorkDate fall on a Friday                                  *}
{*******************************************************************}
Function  IsFriday(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.isFriDay(WorkDate);
end;

{*******************************************************************}
{* Does WorkDate fall on a Saturday                                *}
{*******************************************************************}
Function  IsSaturday(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsSaturday(WorkDate);
end;

{*******************************************************************}
{* Does WorkDate fall on a Sunday                                  *}
{*******************************************************************}
Function  IsSunday(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsSunday(WorkDate);
end;

{*******************************************************************}
{* Is the Date in WorkDate in January                              *}
{*******************************************************************}
Function  IsJanuary(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsJanuary(WorkDate);
end;

{*******************************************************************}
{* Is the Date in WorkDate in February                             *}
{*******************************************************************}
Function  IsFebruary(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.isFebruary(WorkDate);
end;

{*******************************************************************}
{* Is the Date in WorkDate in March                                *}
{*******************************************************************}
Function  IsMarch(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsMarch(WorkDate);
end;

{*******************************************************************}
{* Is the Date in WorkDate in April                                *}
{*******************************************************************}
Function  IsApril(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsApril(WorkDate);
end;

{*******************************************************************}
{* Is the Date in WorkDate in May                                  *}
{*******************************************************************}
Function  IsMay(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.isMay(WorkDate);
end;

{*******************************************************************}
{* Is the Date in WorkDate in June                                 *}
{*******************************************************************}
Function  IsJune(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.isJune(WorkDate);
end;

{*******************************************************************}
{* Is the Date in WorkDate in July                                 *}
{*******************************************************************}
Function  IsJuly(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsJuly(WorkDate);
end;

{*******************************************************************}
{* Is the Date in WorkDate in August                               *}
{*******************************************************************}
Function  IsAugust(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsAugust(WorkDate);
end;

{*******************************************************************}
{* Is the Date in WorkDate in September                            *}
{*******************************************************************}
Function  IsSeptember(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsSeptember(WorkDate);
end;

{*******************************************************************}
{* Is the Date in WorkDate in October                              *}
{*******************************************************************}
Function  IsOctober(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsOctober(WorkDate);
end;

{*******************************************************************}
{* Is the Date in WorkDate in November                             *}
{*******************************************************************}
Function  IsNovember(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.isNovember(WorkDate);
end;

{*******************************************************************}
{* Is the Date in WorkDate in December                             *}
{*******************************************************************}
Function  IsDecember(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.isDecember(WorkDate);
end;

{*******************************************************************}
{* Is the date in WorkDate a Saturday or a Sunday?                 *}
{*******************************************************************}
Function  IsWeekend(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsWeekEnd(WorkDate);
end;

{*******************************************************************}
{* Return true if the day in WorkDate is a weekday Monday-Friday   *}
{*******************************************************************}
Function  IsWeekday(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.isWeekDay(WorkDate);
end;

{*******************************************************************}
{* Return true if the time in WorkDate is in the AM 12-11 am       *}
{*******************************************************************}
Function  IsAM(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsAM(WorkDate);
end;

{*******************************************************************}
{* Return true if the time in WorkDate is in the PM 12-11 pm       *}
{*******************************************************************}
Function  IsPM(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsPM(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  IsMorning(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsMorning(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  IsAfternoon(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsAfterNoon(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  IsMidday(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsMidday(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  IsMidNight(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.isMidnight(WorkDate);
end;

{*******************************************************************}
{* Is the date in WorkDate the date for Christmas Day (Dec 25th)   *}
{*******************************************************************}
Function  IsChristmasDay(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsChristmasDay(WorkDate);
end;

{*******************************************************************}
{* Is the date in WorkDate the date for New Years Day (Jan 1st)    *}
{*******************************************************************}
Function  IsNewYearsDay(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsNewYearsDay(WorkDate);
end;

{*******************************************************************}
{* Is the date in WorkDate the date for New Years Day (Jan 1st)    *}
{*******************************************************************}
Function  IsEasterSunday(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsEasterSunday(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  IsFirstOfTheMonth(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsFirstofTheMonth(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  IsLastOfTheMonth(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsLastofTheMonth(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  ReturnBusinessDaysBetweenDates(FirstDate, LastDate : TDatetime) : Integer;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnBusinessDaysBetweenDates(FirstDate,LastDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  PrevBusinessDay(RequiredDate : TDateTime)  : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.PrevBusinessDay(RequiredDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  NextBusinessDay(RequiredDate : TDateTime)  : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.NextBusinessDay(RequiredDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  AddBusinessDays(NumberOfDays : Integer; WorkDate :TDateTime) : TDateTime;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.AddBusinessDays(NumberOfDays, WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
function  IsDateInPosNegBusinessRange(WorkDate, CompareDate : TDateTime; PositiveDays, NegativeDays : Integer) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsDateInPosNegBusinessRange(WorkDate, CompareDate, PositiveDays, NegativeDays);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
function  IsDateInPosNegRange(WorkDate, CompareDate : TDateTime; PositiveDays, NegativeDays : Integer) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsDateInPosNegRange(WorkDate, CompareDate, PositiveDays, NegativeDays);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  IsBusinessDay(WorkDate : TDateTime) : Boolean;
Begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsBusinessDay(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  IsEmptyDate(WorkDate : String) : Boolean;
begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsEmptyDate(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  IsHoliday(WorkDate : TDateTime) : Boolean;
begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsHoliday(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function  IsBusinessHoliday(WorkDate : TDateTime) : Boolean;
begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.IsBusinessHoliday(WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Procedure SetHolidayStringList(NewHolidayStringList : TStrings);
begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  TAdrockDateClass_RuntimeVariable.SetHolidayStringList(NewHolidayStringList);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function ReturnFirstOfAWeek(StartingDayOfWeek: Integer; WorkDate : TDateTime) : TDateTime;
begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnFirstOfAWeek(StartingDayOfWeek, WorkDate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function ReturnLastOfAWeek(StartingDayOfWeek: Integer; WorkDate : TDateTime) : TDateTime;
begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnLastOfAWeek(StartingDayOfWeek, WorkDate);
end;


{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Procedure SetSystemDate(Year : Word; Month, Day : Byte);
begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  TAdrockDateClass_RuntimeVariable.SetSystemDate(Year, Month, Day);
end;


{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Procedure SetSystemTime(Hour, Minute, Second, Hundreths : Byte);
begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  TAdrockDateClass_RuntimeVariable.SetSystemTime(Hour, Minute, Second, Hundreths);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function AgeStr(aDate: TDateTime): string;
begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.AgeStr(ADate);
end;

{*******************************************************************}
{*                                                                 *}
{*******************************************************************}
Function SecondsBetweenDates(fStartDateTime, fEndDateTime : TDateTime) : Longint;
begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.SecondsBetweenDates(fStartDateTime, fEndDateTime);
end;

{*******************************************************************}
{* Decode a string date into a TDatetime variable based on the date*}
{* format string.                                                  *}
{*                                                                 *}
{* DateFormatStr = 'D MMM YY', DateStr = '10 Mar 1998'             *}
{* DateFormatStr = 'D MM YY', DateStr = '10 3 1998'                *}
{*******************************************************************}
Function DecodeTextDate(DateFormatStr, DateStr : String) : TDateTime;
begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.DecodeTextDate(DateFormatStr, DateStr);
end;

Function ConvertDayOfWeekToInt(DayOfWeek : TadrockDayOfWeek) : Integer;
begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ConvertDayofWeekToInt(DayofWeek);
end;

Function ConvertIntToDayOfWeek(DayOfWeek : Integer) : TAdrockDayofWeek;
begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ConvertIntToDayofWeek(DayofWeek);
end;

{****************************************************************************}
{** Return a date based on a day of the week and a week in the month.       *}
{**                                                                         *}
{** Weekday = 1 to 7                                                        *}
{** Example return the 4th wednesday in the month                           *}
{** Example return the last wednesday in the month                          *}
{** StartOfMonth = TRUE  = The weeks start at the first of the month        *}
{** StartOfMonth = FALSE = The weeks start at the end of the month          *}
{****************************************************************************}
Function  ReturnDateOrdinalDayOfWeek(StartOfMonth : Boolean; Week, WeekDay, Month, Year : Integer) : TDateTime;
begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnDateOrdinalDayOfWeek(StartofMonth, Week, WeekDay, Month, Year);
end;

{****************************************************************************}
{** Return the date for easter sunday, it can be in march or april.        **}
{** If year = 0 then year = the current year                               **}
{****************************************************************************}
Function ReturnEasterSunday(Year : Word) : TDateTime;
begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ReturnEasterSunday(Year);
end;

{****************************************************************************}
{** Expand the year from say 95 to 1995                                    **}
{** If fyear is less than 29 then 2000 is added else 1900 is added         **}
{****************************************************************************}
function ExpandYear(fyear : Word) : Word;
begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  Result := TAdrockDateClass_RuntimeVariable.ExpandYear(fYear);
end;

{****************************************************************************}
{** **}
{** **}
{****************************************************************************}
Procedure ReturnYearsMonthsDaysBetweenDates(FirstDate, LastDate : TDateTime; var fYear, fMonth, fDay : Word);
begin
  CreateAdrockDateClass;    { Create an instance of the AdrockDates class if it has not already been defined. }
  TAdrockDateClass_RuntimeVariable.ReturnYearsMonthsDaysBetweenDates(FirstDate, LastDate, fYear, fMonth, fDay);
end;

end.

