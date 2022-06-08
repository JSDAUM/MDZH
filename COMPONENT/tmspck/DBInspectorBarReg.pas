{***************************************************************************}
{ TDBInspectorBar component                                                 }
{ for Delphi 4.0,5.0,6.0 & C++Builder 4.0,5.0                               }
{ version 1.01 - rel. Jan 2002                                              }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2001                                               }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{***************************************************************************}

unit DBInspectorBarReg;

interface

uses
  DBInspectorBar, Classes, DBInspDE,
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
  RegisterComponents('TMS Bars',[TDBInspectorBar]);
  RegisterPropertyEditor(TypeInfo(string),TDBInspectorItem,'DataField',TInspectorItemFieldNameProperty);
end;

end.
 