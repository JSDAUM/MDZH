{***********************************************************************}
{ TDBPlannerCalendar component                                          }
{ for Delphi 3.0,4.0,5.0,6.0 & C++ Builder 3.0, 4.0, 5.0                }
{ version 1.0                                                           }
{                                                                       }
{ written by :                                                          }
{            TMS Software                                               }
{            copyright ? 1999-2001                                      }
{            Email : info@tmssoftware.com                               }
{            Website : http://www.tmssoftware.com                       }
{                                                                       }
{ The source code is given as is. The author is not responsible         }
{ for any possible damage done due to the use of this code.             }
{ The component can be freely used in any application. The source       }
{ code remains property of the writer and may not be distributed        }
{ freely as such.                                                       }
{***********************************************************************}

{$I TMSDEFS.INC}

unit DBPlannerCal;

interface

uses
  PlannerCal,DB, Classes, Controls, Windows, SysUtils
  {$IFDEF TMSCODESITE}
  ,CSIntf
  {$ENDIF}
  ;

type

  TDBPlannerCalendar = class;

  TDBPlannerCalendarDataLink = class(TDataLink)
  private
    FDBPlannerCalendar: TDBPlannerCalendar;
  protected
    procedure ActiveChanged; override;
    procedure DataSetChanged; override;
    procedure DataSetScrolled(Distance: Integer); override;
    procedure RecordChanged(Field: TField); override;
  public
    constructor Create(ADBPlannerCalendar: TDBPlannerCalendar);
    destructor Destroy; override;
  end;

  TDBPlannerCalendar = class(TPlannerCalendar)
  private
    FDataLink: TDBPlannerCalendarDataLink;
    FStartTimeField: string;
    FEndTimeField: string;
    FSubjectFIeld: string;
    FUpdating: Boolean;
    FActive: Boolean;
    FOnSetFilter: TNotifyEvent;
    function GetDataSource: TDataSource;
    procedure SetDataSource(const Value: TDataSource);
    procedure SetEndTimeField(const Value: string);
    procedure SetStartTimeField(const Value: string);
    function CheckDataSet: Boolean;
    procedure SetActive(const Value: Boolean);
    procedure SetSubjectField(const Value: string);
  protected
    procedure Notification(AComponent: TComponent; AOperation: TOperation); override;
    procedure DoChangeMonth(dt1,dt2: TDateTime); override;
    procedure DoChangeYear(dt1,dt2: TDateTime); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure UpdateCalendar;
  published
    property Active: Boolean read FActive write SetActive;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property StartTimeField: string read FStartTimeField write SetStartTimeField;
    property EndTimeField: string read FEndTimeField write SetEndTimeField;
    property SubjectField: string read FSubjectField write SetSubjectField;
    property OnSetFilter: TNotifyEvent read FOnSetFilter write FOnSetFilter;
  end;

             
implementation

{ TDBPlannerCalendar }

function TDBPlannerCalendar.CheckDataSet: Boolean;
begin
  Result := False;
  if not Assigned(DataSource) then
    Exit;

  if not Assigned(DataSource.DataSet) then
    Exit;

  if StartTimeField = '' then Exit;
  if EndTimeField = '' then Exit;

  if not Active then Exit;

  Result := True;
end;

constructor TDBPlannerCalendar.Create(AOwner: TComponent);
begin
  inherited;
  FDataLink := TDBPlannerCalendarDataLink.Create(Self);
  FUpdating := False;
end;

destructor TDBPlannerCalendar.Destroy;
begin
  FDataLink.Free;
  inherited;
end;

procedure TDBPlannerCalendar.DoChangeMonth(dt1, dt2: TDateTime);
begin
  inherited;

  UpdateCalendar;
end;

procedure TDBPlannerCalendar.DoChangeYear(dt1, dt2: TDateTime);
begin
  inherited;

  UpdateCalendar;
end;

function TDBPlannerCalendar.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

procedure TDBPlannerCalendar.Notification(AComponent: TComponent;
  AOperation: TOperation);
begin
  inherited;
  if (AOperation = opRemove) and (AComponent = FDataLink.DataSource) then
     FDataLink.DataSource := nil;
end;

procedure TDBPlannerCalendar.SetActive(const Value: Boolean);
begin
  if FActive <> Value then
  begin
    FActive := Value;
    if FActive then
      UpdateCalendar
    else
      Events.Clear;  
  end;
end;

procedure TDBPlannerCalendar.SetDataSource(const Value: TDataSource);
begin
  if FDataLink.DataSource <> Value then
  begin
    FDataLink.DataSource := Value;
    if not Assigned(FDataLink.DataSource) then
      Events.Clear;
  end;
end;

procedure TDBPlannerCalendar.SetEndTimeField(const Value: string);
begin
  FEndTimeField := Value;
end;

procedure TDBPlannerCalendar.SetStartTimeField(const Value: string);
begin
  FStartTimeField := Value;
end;

procedure TDBPlannerCalendar.SetSubjectField(const Value: string);
begin
  FSubjectField := Value;
end;

procedure TDBPlannerCalendar.UpdateCalendar;
var
  D: TDataSet;
  B: TBookMark;
  dt1: TDateTime;
  dt2: TDateTime;
  Hint: string;

begin
  if not CheckDataSet then
    Exit;

  if FUpdating then Exit;

  D := DataSource.DataSet;

  if D.State in [dsEdit,dsInsert] then Exit;

  {$IFDEF TMSCODESITE}
  CodeSite.SendMsg('Exec UpdateCalendar');
  {$ENDIF}
  
  FUpdating := True;

  Events.Clear;
  
  D.DisableControls;

  B := D.GetBookMark;

  D.First;

  while not D.Eof do
  begin
    dt1 := D.FieldByName(StartTimeField).AsDateTime;
    dt2 := D.FieldByName(EndTimeField).AsDateTime;

    if SubjectField <> '' then
    begin
      Hint := D.FieldByName(SubjectField).AsString;
      Events.AddRangeHint(dt1,dt2,Hint);
    end
    else
      Events.AddRange(dt1,dt2);

    D.Next;
  end;

  D.GotoBookMark(B);
  D.EnableControls;
  D.FreeBookMark(B);

  FUpdating := False;
end;

{ TDBPlannerCalendarDataLink }

procedure TDBPlannerCalendarDataLink.ActiveChanged;
begin
  inherited;
  {$IFDEF TMSCODESITE}
  CodeSite.SendMsg('ActiveChanged');
  {$ENDIF}
  FDBPlannerCalendar.UpdateCalendar;
end;

constructor TDBPlannerCalendarDataLink.Create(
  ADBPlannerCalendar: TDBPlannerCalendar);
begin
  inherited Create;
  FDBPlannerCalendar := ADBPlannerCalendar;
end;

procedure TDBPlannerCalendarDataLink.DataSetChanged;
begin
  inherited;
  {$IFDEF TMSCODESITE}
  CodeSite.SendMsg('DataSetChanged');
  FDBPlannerCalendar.UpdateCalendar;
  {$ENDIF}
end;

procedure TDBPlannerCalendarDataLink.DataSetScrolled(Distance: Integer);
begin
  {$IFDEF TMSCODESITE}
  CodeSite.SendMsg('DataSetScrolled');
  {$ENDIF}
end;

destructor TDBPlannerCalendarDataLink.Destroy;
begin
  inherited;
end;

procedure TDBPlannerCalendarDataLink.RecordChanged(Field: TField);
begin
  {$IFDEF TMSCODESITE}
  CodeSite.SendMsg('RecordChanged');
  {$ENDIF}
end;


end.
