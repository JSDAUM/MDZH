{********************************************************************}
{ TPlanner component                                                 }
{ for Delphi 3.0,4.0,5.0,6.0 & C++Builder 3.0,4.0,5.0                }
{ version 1.5, December 2001                                         }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 1999-2001                                   }
{            Email : info@tmssoftware.com                            }
{            Web : http://www.tmssoftware.com                        }
{********************************************************************}

unit planreg;

interface

uses
  Classes, Planner, PlanDE, PlanCheck,
  {$IFDEF VER140}
  DesignIntf
  {$ELSE}
  DsgnIntf
  {$ENDIF}
  ;

procedure Register;

implementation

procedure Register;
begin
 RegisterComponents('TMS Planner', [TPlanner]);
 RegisterComponents('TMS Planner', [TCapitalPlannerCheck]);
 RegisterComponents('TMS Planner', [TAlarmMessage]);
 RegisterComponentEditor(TPlanner, TPlannerEditor);
end;



end.

