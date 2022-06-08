unit AComCal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Calendar, Buttons, StdCtrls, ExtCtrls;

type
  TACalender = class(TFrame)
    pnAComCal_1: TPanel;
    PnAComCal_2: TPanel;
    lb_year: TLabel;
    sbtAComCal_prev: TSpeedButton;
    sbtAComCal_next: TSpeedButton;
    AComCal_cald_date: TCalendar;
    pnAComCal_3: TPanel;
    lblAComCal_1: TLabel;
    lb_month: TLabel;
    lblAComCal_2: TLabel;
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

procedure Register;

implementation

{$R *.DFM}

procedure Register;
begin
  RegisterComponents('uniHISPACK', [TACalender]);
end;

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
   AComCal_cald_date.CalendarDate := MyDate;
   Self.Visible := True;
   Self.BringToFront;
   AComCal_cald_date.SetFocus;
end;

procedure TACalender.cald_dateChange(Sender: TObject);
begin
   MyDate := AComCal_cald_date.CalendarDate;
   lb_year.Caption := IntToStr(AComCal_cald_date.Year);
   lb_month.Caption := IntToStr(AComCal_cald_date.Month);
end;

procedure TACalender.sbt_prevClick(Sender: TObject);
begin
   AComCal_cald_date.PrevMonth;
end;

procedure TACalender.sbt_nextClick(Sender: TObject);
begin
   AComCal_cald_date.NextMonth;
end;

procedure TACalender.cald_dateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if ( Key = vk_Left ) then
   begin
      Key := 0;
      AComCal_cald_date.CalendarDate := AComCal_cald_date.CalendarDate - 1;
   end
   else if ( Key = vk_Right ) then
   begin
      Key := 0;
      AComCal_cald_date.CalendarDate := AComCal_cald_date.CalendarDate + 1;
   end
   else if ( Key = vk_Up ) then
   begin
      Key := 0;
      AComCal_cald_date.CalendarDate := AComCal_cald_date.CalendarDate - 7;
   end
   else if ( Key = vk_Down ) then
   begin
      Key := 0;
      AComCal_cald_date.CalendarDate := AComCal_cald_date.CalendarDate + 7;
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
begin
   AComCal_cald_date.Day := StrToInt(AComCal_cald_date.CellText[TStringGrid(AComCal_cald_date).Col,TStringGrid(AComCal_cald_date).Row]);
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
