{***********************************************************************}
{ TADVSPINEDIT component                                                }
{ for Delphi 3.0,4.0,5.0,6.0 & C++Builder 3.0,4.0,5.0                   }
{ version 1.2 - february 2001                                           }
{                                                                       }
{ written by                                                            }
{   TMS Software                                                        }
{   Copyright ? 1998-2001                                               }
{   Email : info@tmssoftware.com                                        }
{   Web : http://www.tmssoftware.com                                    }
{***********************************************************************}
unit asreg;

interface

uses
  AdvSpin, Classes;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TMS Edits', [TAdvSpinEdit]);
end;

end.

