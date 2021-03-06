{***************************************************************************}
{ TINIInspectorBar component                                                }
{ for Delphi 3.0,4.0,5.0,6.0 & C++Builder 3.0,4.0,5.0                       }
{ version 1.01 - rel. Jan 2001                                              }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright ? 2001                                               }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{***************************************************************************}

unit INIInspectorBarReg;

interface

uses
  INIInspectorBar, Classes,
{$IFDEF VER140}
  DesignIntf, DesignEditors
{$ELSE}
  DsgnIntf
{$ENDIF}
  ;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TMS Bars',[TINIInspectorBar]);
end;

end.
 