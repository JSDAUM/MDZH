{********************************************************************}
{ TDBADVLUEDIT component                                             }
{ for Delphi 3.0,4.0,5.0,6.0 & C++Builder 3.0,4.0,5.0                }
{ version 1.3                                                        }
{                                                                    }
{ written by                                                         }
{   TMS Software                                                     }
{   Copyright ? 2000 - 2001                                          }
{   Email : info@tmssoftware.com                                     }
{   Web : http://www.tmssoftware.com                                 }
{********************************************************************}

unit DBAdvLer;

interface

uses
  DBAdvle, Classes;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TMS Edits', [TDBAdvLUEdit]);
end;


end.

