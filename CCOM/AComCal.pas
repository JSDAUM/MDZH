unit AComCal;

interface

uses 
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Calendar, Buttons, StdCtrls, ExtCtrls;

type
  TACalender = class(TFrame)
    Panel4: TPanel;
    Panel11: TPanel;
    lb_year: TLabel;
    sbt_prev: TSpeedButton;
    sbt_next: TSpeedButton;
    cald_date: TCalendar;
    Panel15: TPanel;
    Label1: TLabel;
    lb_month: TLabel;
    Label3: TLabel;
    procedure cald_dateChange(Sender: TObject);
    procedure sbt_prevClick(Sender: TObject);
    procedure sbt_nextClick(Sender: TObject);
    procedure SetDate(in_str : String);
    procedure cald_dateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cald_dateClick(Sender: TObject);
    procedure FrameExit(Sender: TObject);

  private
    { Private declarations }
  public
    MyEdit : TEdit;
    MyDate : TDate;
    { Public declarations }
  end;

implementation

{$R *.DFM}

procedure TACalender.SetDate(in_str : String);
begin
   if ( in_str = '' ) then
   begin
      MyDate := now;
   end
   else
   begin
      MyDate := StrToDate(in_str);
   end;
   MyEdit := nil;
   cald_date.CalendarDate := MyDate;
   Self.Visible := True;
   Self.BringToFront;
   cald_date.SetFocus;
end;

procedure TACalender.cald_dateChange(Sender: TObject);
begin
   MyDate := cald_date.CalendarDate;
   lb_year.Caption := IntToStr(cald_date.Year);
   lb_month.Caption := IntToStr(cald_date.Month);
end;

procedure TACalender.sbt_prevClick(Sender: TObject);
begin
   cald_date.PrevMonth;
end;

procedure TACalender.sbt_nextClick(Sender: TObject);
begin
   cald_date.NextMonth;
end;

procedure TACalender.cald_dateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if ( Key = vk_Left ) then
   begin
      Key := 0;
      cald_date.CalendarDate := cald_date.CalendarDate - 1;
   end
   else if ( Key = vk_Right ) then
   begin
      Key := 0;
      cald_date.CalendarDate := cald_date.CalendarDate + 1;
   end
   else if ( Key = vk_Up ) then
   begin
      Key := 0;
      cald_date.CalendarDate := cald_date.CalendarDate - 7;
   end
   else if ( Key = vk_Down ) then
   begin
      Key := 0;
      cald_date.CalendarDate := cald_date.CalendarDate + 7;
   end
   else if ( Key = 81 ) then       // q
   begin
      Key := 0;
      Self.Visible := False;
      MyEdit := nil;
   end
   else if ( Key = vk_Return ) then
   begin
      Key := 0;
      cald_dateClick(Sender);
   end;
end;

procedure TACalender.cald_dateClick(Sender: TObject);
var
   coord : TGridCoord;
begin
   cald_date.Day := StrToInt(cald_date.CellText[TStringGrid(cald_date).Col,TStringGrid(cald_date).Row]);
   cald_dateChange(Sender);
   if ( MyEdit <> nil ) then
   begin
      MyEdit.Text := DateToStr(MyDate);
   end;

   Self.Visible := False;
   MyEdit := nil;
end;

procedure TACalender.FrameExit(Sender: TObject);
begin
   Self.Visible := false;
   MyEdit := nil;
end;

end.
