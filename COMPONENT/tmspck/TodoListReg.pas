{*************************************************************************}
{ TTodoList component                                                     }
{ for Delphi 4.0,5.0,6.0 & C++Builder 4.0,5.0                             }
{ version 1.1 - rel. October, 2001                                        }
{                                                                         }
{ written by TMS Software                                                 }
{           copyright © 2001                                              }
{           Email : info@tmssoftware.com                                  }
{           Web : http://www.tmssoftware.com                              }
{*************************************************************************}

unit TodoListReg;
                      
interface

uses
  Classes, TodoList;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TMS Planner', [TTodoList]);
end;


end.
 