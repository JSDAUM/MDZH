{*************************************************************************}
{ TPLANNER design time editors                                            }
{ for Delphi 3.0,4.0,5.0 & C++Builder 3.0,4.0,5.0                         }
{ version 1.6, February 2002                                              }
{                                                                         }
{ written by TMS Software                                                 }
{            copyright © 1999-2001                                        }
{            Email : info@tmssoftware.com                                 }
{            Web : http://www.tmssoftware.com                             }
{                                                                         }
{ The source code is given as is. The author is not responsible           }
{ for any possible damage done due to the use of this code.               }
{ The component can be freely used in any application. The complete       }
{ source code remains property of the author and may not be distributed,  }
{ published, given or sold in any form as such. No parts of the source    }
{ code can be included in any other component or application without      }
{ written authorization of the author.                                    }
{*************************************************************************}

unit plande;

interface

uses
 Classes, SysUtils, Dialogs,
{$IFDEF VER140}
  DesignIntf, DesignEditors
{$ELSE}
  DsgnIntf
{$ENDIF}
  ;


type

  TPlannerEditor = class(TDefaultEditor)
  protected
  {$IFNDEF VER140}
    procedure EditProperty(PropertyEditor: TPropertyEditor;
                           var Continue, FreeEditor: Boolean); override;
  {$ELSE}
    procedure EditProperty(const PropertyEditor:IProperty; var Continue:Boolean); override;
  {$ENDIF}
  public
    function GetVerb(index:integer):string; override;
    function GetVerbCount:integer; override;
    procedure ExecuteVerb(Index:integer); override;
  end;


implementation

procedure TPlannerEditor.ExecuteVerb(Index: integer);
var
 compiler:string;
begin
 case Index of
 0: Edit;
 1: begin
   {$IFDEF VER90}
   compiler := 'Delphi 2';
   {$ENDIF}
   {$IFDEF VER93}
   compiler:='C++Builder 1';
   {$ENDIF}
   {$IFDEF VER100}
   compiler := 'Delphi 3';
   {$ENDIF}
   {$IFDEF VER110}
   compiler := 'C++Builder 3';
   {$ENDIF}
   {$IFDEF VER120}
   compiler := 'Delphi 4';
   {$ENDIF}
   {$IFDEF VER125}
   compiler := 'C++Builder 4';
   {$ENDIF}
   {$IFDEF VER130}
   {$IFDEF BCB}
   compiler := 'C++Builder 5';
   {$ELSE}
   compiler := 'Delphi 5';
   {$ENDIF}
   {$ENDIF}
   {$IFDEF VER140}
   {$IFDEF BCB}
   compiler := 'C++Builder 6';
   {$ELSE}
   compiler := 'Delphi 6';
   {$ENDIF}
   {$ENDIF}

   MessageDlg(Component.ClassName+' version 1.5 for ' + compiler + #13#10#13#10'© 1999-2002 by TMS software'#13#10'http://www.tmssoftware.com',
              mtInformation,[mbok],0);
   end;
 end;
end;

{$IFNDEF VER140}
procedure TPlannerEditor.EditProperty(PropertyEditor: TPropertyEditor;
                                      var Continue, FreeEditor: Boolean);
{$ELSE}
procedure TPlannerEditor.EditProperty(const PropertyEditor:IProperty;
                                      var Continue:Boolean);
{$ENDIF}
var
  PropName: string;
begin

  PropName := PropertyEditor.GetName;
  if (CompareText(PropName, 'ITEMS') = 0) then
  begin
    PropertyEditor.Edit;
    Continue := False;
  end;
end;


function TPlannerEditor.GetVerb(Index: Integer): string;
begin
  Result := '';
  case Index of
  0:Result := 'Items Editor';
  1:Result := 'About';
  end;
end;

function TPlannerEditor.GetVerbCount: Integer;
begin
  Result := 2;
end;


end.

