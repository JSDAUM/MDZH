{********************************************************************}
{ TCALPANEL component                                                }
{ for Delphi 3.0,4.0,5.0,6.0 & C++Builder 3.0,4.0,5.0                }
{ version 1.3                                                        }
{                                                                    }
{ Written by                                                         }
{   TMS Software                                                     }
{   Copyright ? 1998-2001                                            }
{   Email : info@tmssoftware.com                                     }
{   Website : http://www.tmssoftware.com                             }
{********************************************************************}
unit calpreg;

interface

uses
  CalPanel,Classes;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TMS', [TCalPanel]);
end;



end.
 

