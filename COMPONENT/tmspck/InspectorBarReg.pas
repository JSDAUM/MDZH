{***************************************************************************}
{ TInspectorBar component                                                   }
{ for Delphi 4.0,5.0,6.0 & C++Builder 4.0,5.0                               }
{ version 1.01 - rel. Jan 2001                                              }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2001                                               }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{***************************************************************************}

unit InspectorBarReg;

interface

uses
  Classes, InspectorBar, InspImg, InspDE, Controls, 
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
  RegisterComponents('TMS Bars',[TInspectorBar]);
  RegisterComponentEditor(TInspectorBar,TInspectorBarEditor);
  RegisterPropertyEditor(TypeInfo(TInspImage), TInspectorPanel, 'Splitter', TInspImageProperty);
  RegisterPropertyEditor(TypeInfo(TInspImage), TInspectorItem, 'Background', TInspImageProperty);
  RegisterPropertyEditor(TypeInfo(TWinControl), TInspectorPanel, 'Control', TInspControlProperty);    
end;

end.
 