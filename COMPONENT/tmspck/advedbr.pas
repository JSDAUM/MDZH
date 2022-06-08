{********************************************************************}
{ TADVEDITBTN and TUnitAdvEditBtn component                          }
{ for Delphi 3.0,4.0,5.0,6.0 & C++Builder 3.0,4.0,5.0                }
{ version 1.2, January 2002                                          }
{                                                                    }
{ written by                                                         }
{   TMS Software                                                     }
{   Copyright © 2000 - 2002                                          }
{   Email : info@tmssoftware.com                                     }
{   Web : http://www.tmssoftware.com                                 }
{********************************************************************}

unit advedbr;

interface

uses
  AdvEdBtn,Classes, AdvFileNameEdit, AdvDirectoryEdit;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TMS Edits', [TAdvEditBtn,TUnitAdvEditBtn]);
  RegisterComponents('TMS Edits', [TAdvFileNameEdit]);
  RegisterComponents('TMS Edits', [TAdvDirectoryEdit]);    
end;



end.

