{****************************************************************}
{ WEBUPDATE component                                            }
{ for Delphi 3.0,4.0,5.0,6.0 - C++Builder 3,4,5                  }
{ version 1.4 - September 2001                                   }
{                                                                }
{ written by                                                     }
{   TMS Software                                                 }
{   copyright © 1998-2001                                        }
{   Email : info@tmssoftware.com                                 }
{   Web : http://www.tmssoftware.com                             }
{****************************************************************}
unit wupdreg;

interface

uses
  Wupdate, Classes;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TMS Web',[TWebUpdate]);
end;

end.

