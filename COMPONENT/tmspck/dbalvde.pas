{*************************************************************************}
{ TADVLISTVIEW DESIGN TIME EDITOR                                         }
{ for Delphi 3.0,4.0,5.0,6.0 & C++Builder 3.0,4.0,5.0                     }
{ version 1.54                                                            }
{                                                                         }
{ written by TMS Software                                                 }
{            copyright ? 1998-2001                                        }
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

unit DBAlvDE;

interface

uses
  Classes, DBAdvLst, DB, SysUtils,
{$IFDEF VER140}
  DesignIntf, DesignEditors
{$ELSE}
  DsgnIntf
{$ENDIF}
  ;


type
  TLvFieldNameProperty = class(TStringProperty)
  public
    function GetAttributes:TPropertyAttributes; override;
    procedure GetValues(Proc:TGetStrProc); override;
  end;


implementation

function TLvFieldNameProperty.GetAttributes: TPropertyAttributes;
begin
  Result := [paValueList,paSortList];
end;

procedure TLvFieldNameProperty.GetValues(Proc:TGetStrProc);
var
  FListViewField:TListViewField;
  FListViewFields:TListViewFields;
  FDBListView:TDBAdvListView;
  FDataSource:TDataSource;
  FDataSet:TDataSet;
  i: Integer;

begin
 FListViewField := (GetComponent(0) as TListViewField);
 FListViewFields := (FListViewField.Collection as TListViewFields);
 FDBListView := FListViewFields.GetOwner as TDBAdvListView;

 FDataSource := FDBListView.DataSource;
 if not Assigned(FDataSource) then
   Exit;

 FDataSet := FDataSource.DataSet;

 if not Assigned(fDataSet) then
   Exit;

 for i := 1 to FDataSet.FieldCount do
   Proc(FDataSet.Fields[i-1].FieldName);
end;

end.

