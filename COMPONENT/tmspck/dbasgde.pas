{**************************************************************************}
{ TDBADVSTRINGGRID DESIGN TIME EDITOR                                      }
{ for Delphi 3.0,4.0,5.0,C++Builder 3.0,4.0,5.0                            }
{ version 1.3                                                              }
{                                                                          }
{ written by TMS Software                                                  }
{            copyright © 1999-2001                                         }
{            Email : info@tmssoftware.com                                  }
{            Web : http://www.tmssoftware.com                              }
{                                                                          }
{ The source code is given as is. The author is not responsible            }
{ for any possible damage done due to the use of this code.                }
{ The component can be freely used in any application. The complete        }
{ source code remains property of the author and may not be distributed,   }
{ published, given or sold in any form as such. No parts of the source     }
{ code can be included in any other component or application without       }
{ written authorization of the author.                                     }
{**************************************************************************}

unit DBAsgDE;

interface

uses
  Classes,DBAdvGrd,DB,
{$IFDEF VER140}
  DesignIntf, DesignEditors
{$ELSE}
  DsgnIntf
{$ENDIF}
  ;


type
 TSgFieldNameProperty = class(TStringProperty)
 public
   function GetAttributes:TPropertyAttributes; override;
   procedure GetValues(Proc:TGetStrProc); override;
 end;

implementation

function TSgFieldNameProperty.GetAttributes: TPropertyAttributes;
begin
 result:=[paValueList,paSortList];
end;

procedure TSgFieldNameProperty.GetValues(Proc:TGetStrProc);
var
 fStringGridField:TStringGridField;
 fStringGridFields:TStringGridFields;
 fDBStringGrid:TDBAdvStringGrid;
 fDataSource:TDataSource;
 fDataSet:TDataSet;
 st:tstringlist;
 i:integer;
begin
 fStringGridField:=(GetComponent(0) as TStringGridField);
 fStringGridFields:=(fStringGridField.Collection as TStringGridFields);
 fDBStringGrid:=fStringGridFields.GetOwner as TDBAdvStringGrid;

 fDataSource:=fDBStringGrid.DataSource;
 if not assigned(fDataSource) then exit;

 fDataSet:=fDataSource.DataSet;

 if not assigned(fDataSet) then exit;

 st:=TStringList.Create;
 fDataSet.GetFieldNames(st);
 for i:=1 to st.Count do proc(st.Strings[i-1]);
 st.Free;
end;

end.

