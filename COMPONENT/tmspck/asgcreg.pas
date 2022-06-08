{**********************************************************************}
{ TADVCOLUMNGRID component                                             }
{ for Delphi 4.0,5.0,6.0 & C++Builder 4.0,5.0,6.0                      }
{ version 2.2.x.x                                                      }
{                                                                      }
{ written by TMS Software                                              }
{            copyright © 1996-2002                                     }
{            Email : info@tmssoftware.com                              }
{            Web : http://www.tmssoftware.com                          }
{**********************************************************************}

unit asgcreg;

interface

uses
  AdvGrid, AdvCGrid, Classes, ACGDE,
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
  RegisterComponents('TMS Grids', [TAdvColumnGrid]);
  RegisterComponentEditor(TAdvColumnGrid,TAdvColumnGridEditor);
end;

end.

