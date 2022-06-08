{********************************************************************}
{ TLOOKUP components : TLUEdit & TLUCombo                            }
{ for Delphi 3.0,4.0,5.0,6.0 & C++Builder 3.0,4.0,5.0                }
{ version 2.2                                                        }
{                                                                    }
{ written by                                                         }
{   TMS Software                                                     }
{   Copyright � 1996-2001                                            }
{   Email : info@tmssoftware.com                                     }
{   Web : http://www.tmssoftware.com                                 }
{********************************************************************}
unit lureg;

interface

uses
  LuCombo, Classes;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TMS Edits', [TLUCombo,TLUEdit]);
end;


end.

