{*********************************************************************}
{ TADVSTRINGGRID component                                            }
{ for Delphi 3.0,4.0,5.0,6.0 & C++Builder 3.0, 4.0, 5.0, 6.0          }
{ version 2.2.x.x                                                     }
{                                                                     }
{ written by TMS Software                                             }
{            copyright © 1996-2002                                    }
{            Email : info@tmssoftware.com                             }
{            Web : http://www.tmssoftware.com                         }
{*********************************************************************}

unit ASGReg;

interface

uses
  Advgrid, Classes, AsgDE, AsgCheck, AsgMemo,
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
  RegisterComponents('TMS Grids', [TAdvStringGrid]);
  RegisterComponents('TMS Grids', [TCapitalCheck]);
  RegisterComponents('TMS Grids', [TMemoEditLink]);
  RegisterComponentEditor(TAdvStringGrid,TAdvStringGridEditor);
end;

end.

