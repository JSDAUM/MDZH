{***********************************************************************}
{ TPLANNERCALENDAR component                                            }
{ for Delphi 3.0,4.0,5.0,6.0 & C++Builder 3.0,4.0,5.0                   }
{ version 1.2                                                           }
{                                                                       }
{ written by :                                                          }
{            TMS Software                                               }
{            copyright © 1999-2001                                      }
{            Email : info@tmssoftware.com                               }
{            Website : http://www.tmssoftware.com                       }
{***********************************************************************}
unit PlannerCalReg;

interface

uses
  PlannerCal, PlannerDatePicker, Classes, AdvImage, AdvImgDE 
{$IFDEF VER140}
  ,DesignIntf, DesignEditors
{$ELSE}
  ,DsgnIntf
{$ENDIF}
  ;

type
  TPlannerCalendarEditProperty = class(TClassProperty);

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TMS Planner', [TPlannerCalendar]);
  RegisterPropertyEditor(TypeInfo(TAdvImage), TPlannerCalendar, 'Background', TAdvImageProperty);

  RegisterComponents('TMS Planner', [TPlannerCalendarGroup]);

  RegisterPropertyEditor(TypeInfo(TAdvImage), TPlannerCalendarGroup, 'Background', TAdvImageProperty);

  RegisterComponents('TMS Planner', [TPlannerDatePicker]);
  RegisterPropertyEditor(TypeInfo(TPlannerCalendar), TPlannerDatePicker, 'Calendar', TPlannerCalendarEditProperty);
end;



end.


