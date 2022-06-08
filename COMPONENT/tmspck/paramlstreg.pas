{********************************************************************}
{ TPARAMLISTBOX component                                            }
{ for Delphi 3.0, 4.0, 5.0, 6.0 & C++Builder 1.0, 3.0, 4.0, 5.0      }
{ version 1.2                                                        }
{                                                                    }
{ written by TMS Software                                            }
{            copyright © 2000 - 2001                                 }
{            Email : info@tmssoftware.com                            }
{            Web : http://www.tmssoftware.com                        }
{********************************************************************}

unit paramlstreg;

interface

uses
  paramlistbox,classes;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TMS', [TParamListBox]);
end;



end.

