{*******************************************************************}
{ TDBADVSTRINGGRID component                                        }
{ for Delphi 3.0, 4.0, 5.0 & C++Builder 3.0,4.0,5.0                 }
{ version 1.5                                                       }
{                                                                   }
{ written by                                                        }
{    TMS Software                                                   }
{    copyright © 1999-2001                                          }
{    Email : info@tmssoftware.com                                   }
{    Web : http://www.tmssoftware.com                               }
{                                                                   }
{*******************************************************************}

unit dbgreg;

interface

uses
  dbadvgrd, Classes, DBAsgDE, HtmlDE,
{$IFDEF VER140}
  DesignIntf
{$ELSE}
  DsgnIntf
{$ENDIF}
  ;


procedure Register;

implementation

procedure Register;
begin
 RegisterComponents('TMS Grids', [TDBAdvStringGrid]);
 RegisterPropertyEditor(TypeInfo(string),TStringGridField,'FieldName',TSgFieldNameProperty);

 {$IFNDEF NOEDITOR}
 RegisterPropertyEditor(TypeInfo(TStringList), TDBAdvStringGrid, 'HTMLTemplate', THTMLTextProperty);
 {$ENDIF}

end;


end.
