{*************************************************************************}
{ TDBADVNAVIGATOR component                                               }
{ for Delphi 4.0,5.0,6.0 & C++Builder 4.0,5.0                             }
{ version 1.0 - rel. January, 2002                                        }
{                                                                         }
{ written by TMS Software                                                 }
{           copyright © 2002                                              }
{           Email : info@tmssoftware.com                                  }
{           Web : http://www.tmssoftware.com                              }
{*************************************************************************}

unit dbanreg;

interface

uses
  Classes, DBAdvNavigator;

  procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TMS',[TDBAdvNavigator]);
end;

end.
 