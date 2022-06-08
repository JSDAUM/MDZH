{********************************************************************}
{ TPARAMCHECKLIST component                                          }
{ for Delphi 3.0, 4.0, 5.0, 6.0 & C++Builder 1.0, 3.0, 4.0, 5.0      }
{ version 1.2                                                        }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2000 - 2001                                 }
{            Email : info@tmssoftware.com                            }
{            Web : http://www.tmssoftware.com                        }
{********************************************************************}

unit paramchklreg;

interface

uses
 paramchklist,classes;

procedure Register;

implementation

procedure Register;
begin
 RegisterComponents('TMS', [TParamCheckList]);
end;



end.

