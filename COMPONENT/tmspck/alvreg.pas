{***********************************************************************}
{ TADVLISTVIEW, TDBADVLISTVIEW component                                }
{ for Delphi 3.0,4.0,5.0,6.0 & C++Builder 3.0,4.0,5.0                   }
{ version 1.54                                                          }
{                                                                       }
{ written by                                                            }
{   TMS Software                                                        }
{   copyright © 1998-2001                                               }
{   Email : info@tmssoftware.com                                        }
{   Web : http://www.tmssoftware.com                                    }
{***********************************************************************}


{$IFDEF VER100}
 {$DEFINE DBADVLST}
{$ENDIF}

{$IFDEF VER110}
 {$DEFINE DBADVLST}
{$ENDIF}

{$IFDEF VER120}
 {$DEFINE DBADVLST}
{$ENDIF}

{$IFDEF VER125}
 {$DEFINE DBADVLST}
{$ENDIF}

{$IFDEF VER130}
 {$DEFINE DBADVLST}
{$ENDIF}

{$IFDEF VER140}
 {$DEFINE DBADVLST}
{$ENDIF}


unit AlvReg;

interface

uses
  Advlistv,AlvDE
  {$IFDEF DBADVLST}
  ,DBAdvLst,DB,DBAlvDE
  {$ENDIF}
  ,Classes
{$IFDEF VER140}
  ,DesignIntf, DesignEditors
{$ELSE}
  ,DsgnIntf
{$ENDIF}
  ;


procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('TMS', [TAdvListView]);
  RegisterComponentEditor(TAdvListView,TAdvListViewEditor);
  {$IFDEF DBADVLST}
  RegisterComponents('TMS', [TDBAdvListView]);
  RegisterPropertyEditor(TypeInfo(string),TListViewField,'FieldName',TLvFieldNameProperty);
  {$ENDIF}
end;



end.

