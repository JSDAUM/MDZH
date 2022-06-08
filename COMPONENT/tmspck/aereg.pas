{***********************************************************************}
{ TADVEDIT component                                                    }
{ for Delphi 3.0,4.0,5.0,6.0 & C++Builder 3.0,4.0,5.0                   }
{ version 2.1 - rel. January 2002                                       }
{                                                                       }
{ written by                                                            }
{   TMS Software                                                        }
{   Copyright © 1996-2002                                               }
{   Email : info@tmssoftware.com                                        }
{   Web : http://www.tmssoftware.com                                    }
{***********************************************************************}
unit aereg;

interface

uses
  AdvEdit, Classes;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TMS Edits', [TAdvEdit,TAdvMaskEdit]);
end;



end.

