{***********************************************************************}
{ TDBPLANNERCALENDAR & TDBPLANNERDATEPICKER components                  }
{ for Delphi 3.0,4.0,5.0,6.0 & C++Builder 3.0,4.0,5.0                   }
{ version 1.0                                                           }
{                                                                       }
{ written by :                                                          }
{            TMS Software                                               }
{            copyright © 1999-2001                                      }
{            Email : info@tmssoftware.com                               }
{            Website : http://www.tmssoftware.com                       }
{***********************************************************************}
unit DBPlannerCalReg;

interface

uses
  Classes,DBPlannerCal,DBPlannerCalDE,DBPlannerDatePicker,
{$IFDEF VER140}
  DesignIntf, DesignEditors
{$ELSE}
  DsgnIntf
{$ENDIF}
  ;

type
  TDBPlannerCalendarEditProperty = class(TClassProperty);


  procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TMS Planner', [TDBPlannerCalendar]);
  RegisterPropertyEditor(TypeInfo(string),TDBPlannerCalendar,'StartTimeField',TPlannerCalendarFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TDBPlannerCalendar,'EndTimeField',TPlannerCalendarFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TDBPlannerCalendar,'SubjectField',TPlannerCalendarFieldNameProperty);

  RegisterComponents('TMS Planner', [TDBPlannerDatePicker]);
  RegisterPropertyEditor(TypeInfo(TDBPlannerCalendar), TDBPlannerDatePicker, 'Calendar', TDBPlannerCalendarEditProperty);

  RegisterClass(TDBPlannerCalendar);
end;




end.
 