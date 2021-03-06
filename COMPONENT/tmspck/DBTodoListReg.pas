{*************************************************************************}
{ TDBTodoList component                                                   }
{ for Delphi 4.0,5.0,6.0 & C++Builder 4.0,5.0                             }
{ version 1.1 - rel. October, 2001                                        }
{                                                                         }
{ written by TMS Software                                                 }
{           copyright ? 2001                                              }
{           Email : info@tmssoftware.com                                  }
{           Web : http://www.tmssoftware.com                              }
{*************************************************************************}

unit DBTodoListReg;

interface

uses
  DBTodoList, DBTodoListDE, Classes,
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
  RegisterComponents('TMS Planner',[TDBTodoList]);
  RegisterPropertyEditor(TypeInfo(string),TTodoFields,'SubjectField',TTodoListFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TTodoFields,'NotesField',TTodoListFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TTodoFields,'CreationDateField',TTodoListFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TTodoFields,'DueDateField',TTodoListFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TTodoFields,'CompletionDateField',TTodoListFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TTodoFields,'CompleteField',TTodoListFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TTodoFields,'StatusField',TTodoListFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TTodoFields,'PriorityField',TTodoListFieldNameProperty);
  RegisterPropertyEditor(TypeInfo(string),TTodoFields,'KeyField',TTodoListFieldNameProperty);
end;

end.
 