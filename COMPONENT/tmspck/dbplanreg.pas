
{***********************************************************************}
{ TDBPlanner component                                                  }
{ for Delphi 3.0,4.0,5.0,6.0 & C++Builder 3.0,4.0,5.0                   }
{                                                                       }
{ written by                                                            }
{    TMS Software                                                       }
{    copyright © 2001                                                   }
{    Email : info@tmssoftware.com                                       }
{    Web : http://www.tmssoftware.com                                   }
{                                                                       }
{***********************************************************************}


unit DBPlanReg;

interface


uses
  DBPlanner, Classes, DBPlanDE,
{$IFDEF VER140}
  DesignIntf, DesignEditors
{$ELSE}
  DsgnIntf
{$ENDIF}
  ;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TMS Planner', [TDBPlanner]);
  RegisterComponents('TMS Planner', [TDBDaySource]);
  RegisterComponents('TMS Planner', [TDBPeriodSource]);
  RegisterComponents('TMS Planner', [TDBMonthSource]);
  RegisterComponents('TMS Planner', [TDBWeekSource]);

  RegisterPropertyEditor(TypeInfo(string),TDBDaySource,'StartTimeField',TPlannerFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TDBDaySource,'EndTimeField',TPlannerFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TDBDaySource,'KeyField',TPlannerFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TDBDaySource,'NotesField',TPlannerFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TDBDaySource,'SubjectField',TPlannerFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TDBDaySource,'ResourceField',TPlannerFieldNameProperty);

  RegisterPropertyEditor(TypeInfo(string),TDBPeriodSource,'StartTimeField',TPlannerFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TDBPeriodSource,'EndTimeField',TPlannerFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TDBPeriodSource,'KeyField',TPlannerFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TDBPeriodSource,'NotesField',TPlannerFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TDBPeriodSource,'SubjectField',TPlannerFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TDBPeriodSource,'ResourceField',TPlannerFieldNameProperty);

  RegisterPropertyEditor(TypeInfo(string),TDBMonthSource,'StartTimeField',TPlannerFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TDBMonthSource,'EndTimeField',TPlannerFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TDBMonthSource,'KeyField',TPlannerFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TDBMonthSource,'NotesField',TPlannerFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TDBMonthSource,'SubjectField',TPlannerFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TDBMonthSource,'ResourceField',TPlannerFieldNameProperty);

  RegisterPropertyEditor(TypeInfo(string),TDBWeekSource,'StartTimeField',TPlannerFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TDBWeekSource,'EndTimeField',TPlannerFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TDBWeekSource,'KeyField',TPlannerFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TDBWeekSource,'NotesField',TPlannerFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TDBWeekSource,'SubjectField',TPlannerFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TDBWeekSource,'ResourceField',TPlannerFieldNameProperty);

end;

end.
