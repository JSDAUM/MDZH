{**************************************************************************}
{ TDBADVSTRINGGRID component                                               }
{ for Delphi 3.0,4.0,5.0,6.0 & C++Builder 3.0,4.0,5.0                      }
{ version 1.6, November 2001                                               }
{                                                                          }
{ written by                                                               }
{    TMS Software                                                          }
{    copyright © 1999-2001                                                 }
{    Email : info@tmssoftware.com                                          }
{    Web : http://www.tmssoftware.com                                      }
{                                                                          }
{ The source code is given as is. The author is not responsible            }
{ for any possible damage done due to the use of this code.                }
{ The component can be freely used in any application. The complete        }
{ source code remains property of the author and may not be distributed,   }
{ published, given or sold in any form as such. No parts of the source     }
{ code can be included in any other component or application without       }
{ written authorization of the author.                                     }
{**************************************************************************}

unit dbadvgrd;

interface

{$I TMSDEFS.INC}

uses
  Windows, WinTypes, SysUtils, Messages, Classes, Controls, Grids, DB,
  Graphics, BaseGrid, AdvGrid, AdvObj, Dialogs {$IFDEF TMSDEBUG}, tmsutil {$ENDIF};

const
  MAX_FIELDS = 255;

type
  EDBAdvGridError = class(Exception);

  TDBAdvStringGrid = class;

  TStringGridField = class(TCollectionItem)
  private
    FFieldName:string;
    FTitle:string;
    procedure SetFieldName(const value:string);
    procedure SetTitle(const value:string);
    procedure Changed;
  protected
    function GetDisplayName: string; override;
  public
    constructor Create(Collection:TCollection); override;
    destructor Destroy; override;
    procedure Assign(Source: TPersistent); override;
  published
    property FieldName:string read fFieldName write SetFieldName;
    property Title:string read fTitle write SetTitle;
  end;

  TStringGridFields = class(TCollection)
  private
    FOwner : TDBAdvStringGrid;
    function GetItem(Index: Integer): TStringGridField;
    procedure SetItem(Index: Integer; const Value: TStringGridField);
  public
    constructor Create(aOwner:TDBAdvStringGrid);
  protected
    procedure Update(Item:TCollectionItem); override;
  public
    function Add:TStringGridField;
    function Insert(index:integer): TStringGridField;
    property Items[Index: Integer]: TStringGridField read GetItem write SetItem;
    function GetOwner: tPersistent; override;
  end;

  TAdvGridDataLink = class(TDataLink)
  private
    FGrid: TDBAdvStringGrid;
  protected
    procedure ActiveChanged; override;
    procedure DataSetChanged; override;
    procedure DataSetScrolled(distance:integer); override;
    procedure RecordChanged(Field: TField); override;
    procedure BeforeRecordDeleted(DataSet: TDataSet);
    procedure AfterRecordDeleted(DataSet: TDataSet);
  public
    constructor Create(AGrid: TDBAdvStringGrid);
    destructor Destroy; override;
  end;

  TDataMapMode = (dmRow,dmCell);

  {TDBAdvStringGrid}
  TDBAdvStringGrid = class(TAdvStringGrid)
  private
    FMapping:array[0..MAX_FIELDS] of integer;
    FDataLink : TAdvGridDataLink;
    FOldState:TDataSetState;
    FStringGridFields : TStringGridFields;
    FCloseWhenLoaded: Boolean;
    FLoaded: Boolean;
    FSelectScroll: Boolean;
    FDataScroll: Boolean;
    FKeepLinked: Boolean;
    FPageMode: Boolean;
    FHTMLTemplate: TStringList;
    FDataMapMode: TDataMapMode;
    FMaxRows: Integer;
    FLastRow,FLastCol: Integer;
    FWidths: TIntList;
    FFixedColumns: Integer;
    FShowPictureFields: Boolean;
    FShowMemoFields: Boolean;
    FShowBooleanFields: Boolean;
    FShowIndicator: Boolean;
    FDeleting: Boolean;
    function GetDataSource:TDataSource;
    procedure SetDatasource(Value: TDatasource);
    procedure SetCloseWhenLoaded(Value: Boolean);
    procedure SetStringGridFields(value:tStringGridFields);
    function CheckDataSet: Boolean;
    function MaxVisibleRows:integer;
    function MaxRowsInDataset:integer;
    procedure SetBufferCount;
    function InitMapping: Boolean;
    procedure SetPageMode(const Value: boolean);
    procedure SetHTMLTemplate(const Value: TStringList);
    procedure WMKeyDown(var Msg:TWMKeydown); message wm_keydown;
    procedure WMVScroll(var WMScroll: TWMScroll); message wm_vscroll;
    procedure WMSize(var Msg:TWMKeydown); message wm_size;
    procedure StoreColWidths;
    procedure ReStoreColWidths;
    procedure SetShowIndicator(const Value: boolean);
  protected
    procedure ClearAll;
    procedure Loaded; override;
    function  SelectCell(ACol, ARow: longint): Boolean; override;
    procedure SetActive(Active: Boolean);
    procedure ShowFields;
    procedure GetCellAlign(ACol,ARow:Integer;var HAlign: TAlignment;var VAlign: TVAlignment); override;
    procedure ColumnMoved(FromIndex, ToIndex: Integer); override;
    function UpdateDataRow(ARow:integer): Boolean;
    function UpdateDataCell(ACol,ARow:integer): Boolean;
    procedure UpdateVisibleCells;
    procedure UpdateCursorPos;
    procedure UpdateRowCount;
    procedure TemplateChanged(Sender:TObject);
    procedure DrawCell(ACol,ARow:longint;ARect:TRect;AState:TGridDrawState); override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function GetVersionNr:integer; override;
    function GetVersionString:string; override;
    procedure LoadFromDataSource;
  published
    property CloseWhenLoaded: Boolean read FCloseWhenLoaded write SetCloseWhenLoaded;
    property KeepLinked: Boolean read fKeepLinked write fKeepLinked;
    property DataMapMode: TDataMapMode read fDataMapMode write fDataMapMode;
    property Datasource: TDatasource read GetDatasource write SetDatasource;
    property Fields: TStringGridFields read FStringGridFields write SetStringGridFields;
    property PageMode: Boolean read FPageMode write SetPageMode;
    property HTMLTemplate:TStringList read FHTMLTemplate write SetHTMLTemplate;
    property ShowMemoFields: Boolean read FShowMemoFields write fShowMemoFields;
    property ShowPictureFields: Boolean read FShowPictureFields write fShowPictureFields;
    property ShowBooleanFields: Boolean read FShowBooleanFields write fShowBooleanFields;
    property ShowIndicator: Boolean read FShowIndicator write SetShowIndicator;
  end;

implementation


function HTMLDBReplace(s:string;dataset:tdataset):string;
var
  beforetag,aftertag,fld,dbfld:string;
  i,j:integer;
begin
  beforetag:='';
  while Pos('<#',s) > 0 do
  begin
    i := pos('<#',s);
    beforetag := beforetag+copy(s,1,i-1); //part prior to the tag
    aftertag := copy(s,i,length(s)); //part after the tag
    j := pos('>',aftertag);
    fld := copy(aftertag,1,j-1);
    Delete(fld,1,2);
    Delete(s,1,i+j-1);

    dbfld := '';
    if Assigned(DataSet) then
    begin
      if DataSet.Active then
        dbfld := DataSet.FieldByName(fld).DisplayText
      else
        dbfld := '('+fld+')';
    end
    else dbfld := '('+fld+')';

    beforetag := beforetag + dbfld;
  end;

  Result := beforetag + s;
end;

function MinInt(a,b:integer):integer;
begin
  if a < b then
    Result := a
  else
    Result := b;
end;

procedure TDBAdvStringGrid.ClearAll;
begin
  // Remove all old rows and columns
  if ColumnHeaders.Count = 0 then
    Clear
  else
    ClearNormalCells;

  RowCount := FixedRows + 1;

  // if (fDataMapMode=dmRow) and (fHTMLTemplate.Count=0) then ColCount:=MinInt(1,FixedCols)+1;
  if FixedCols = 1 then
    ColWidths[0] := 12;
end;

function TDBAdvStringGrid.MaxVisibleRows;
begin
  if FPageMode then
    Result := 2 + (Height div DefaultRowHeight)
  else
   Result := (Height div DefaultRowHeight) - 1;
end;

function TDBAdvStringGrid.CheckDataSet: Boolean;
begin
  Result := False;
  if not Assigned(FDataLink) then Exit;
  if not Assigned(FDataLink.DataSource) then Exit;
  if Assigned(FDataLink.Datasource.DataSet) then
  begin
    if FDataLink.Datasource.DataSet.Active then
      Result := True;
  end;
end;

procedure TDBAdvStringGrid.GetCellAlign(ACol,ARow: Integer;var HAlign: TAlignment;var VAlign: TVAlignment);
var
  d: TDataSet;
begin
  HAlign := taLeftJustify;
  if not CheckDataSet then Exit;
  if (ACol = 0) and (FixedCols > 0) then Exit;

  d := FDataLink.Datasource.DataSet;

  ACol := 1 + FMapping[ACol - MinInt(1,FixedCols)];

  with d do
  if (ACol < FieldCount) and (ACol >= MinInt(1, FixedCols)) then
  begin
    HAlign := Fields[ACol-MinInt(1,FixedCols)].Alignment;
  end;

  inherited;
end;

function TDBAdvStringGrid.UpdateDataCell(acol,arow:integer): Boolean;
var
  d:TDataSet;
  EmptyRow: Boolean;
  NewRecord,OldRecord: Integer;
  s: string;
  k: Integer;

begin
  {$IFDEF TMSDEBUG}
  DbgMsg('in update data cell');
  {$ENDIF}
  Result := False;
  EmptyRow := True;
  if (ARow < 0) or (ACol < 0) then Exit;
  if FHTMLTemplate.Count = 0 then Exit;

  if not CheckDataSet then Exit;
  d := FDataLink.Datasource.DataSet;
  if d.FieldCount = 0 then Exit;

  OldRecord := FDataLink.ActiveRecord;
  NewRecord := (arow-FixedRows)*(colcount-MinInt(1,FixedCols))+(acol-(MinInt(1,FixedCols)));

  FDataLink.ActiveRecord:=NewRecord;

  {$IFDEF TMSDEBUG}
  DbgPoint('update data cell : ',point(acol,arow));
  {$ENDIF}

  if FDataLink.ActiveRecord = NewRecord then
  begin
    with d do
    begin
      for k := 1 to d.FieldCount do
        if Trim(Fields[k-1].AsString) <> '' then
          EmptyRow := False;

      if not EmptyRow then
      begin
        s := HTMLDBReplace(FHTMLTemplate.Strings[0],d);
        if s <> Cells[ACol,ARow] then
          Cells[ACol,ARow]:=s;
      end
      else
      begin
        if ARow < RowCount then
          Cells[acol,arow]:='';
      end;
    end;
  end;

  FDataLink.ActiveRecord := oldrecord;
  Result := EmptyRow;
end;


function TDBAdvStringGrid.UpdateDataRow(arow:integer): Boolean;
var
  d: TDataSet;
  j,k: Integer;
  dt: TFieldType;
  fieldidx: Integer;
  mapped: Boolean;
  numfields: Integer;
  oldrecord: Integer;
  field: TField;
  emptyrow: Boolean;
  s:string;

begin
  Result := False;
  emptyrow := True;

  if (arow<0) then Exit;

  if not CheckDataSet then Exit;

  d:=FDataLink.Datasource.DataSet;
  if (d.FieldCount=0) then Exit;

  oldrecord:=FDataLink.ActiveRecord;

  FDataLink.ActiveRecord:=arow;

  if (FDataLink.ActiveRecord=arow) then
  begin
    arow:=arow+FixedRows;
    if (arow>=RowCount) then exit;

    mapped := InitMapping;
    if (mapped) then numfields:=Fields.Count else numfields:=d.FieldCount;

    for k := 1 to Fields.Count do
    begin
      if (Fields.Items[k-1].FFieldName<>'') then
      try
        Field := d.FieldByName(self.Fields.Items[k-1].fFieldName);
        if Assigned(field) then
          FMapping[k-1] := Field.Index;
      finally
      end;
    end;

    with d do
    begin
      if (fHTMLTemplate.Count>0) then
      begin
        for j:=1 to fHTMLTemplate.Count do
        begin
          s:=HTMLDBReplace(fHTMLTemplate.Strings[j-1],d);
          if s<>Cells[j+MinInt(1,FixedCols)-1, arow] then Cells[j+MinInt(1,FixedCols)-1, arow]:=s;
        end;

        for k:=1 to d.FieldCount do
          if (Trim(Fields[k-1].AsString)<>'') then emptyrow:=false;

      end
      else
        for j:=1 to numfields do
        begin
          if mapped then fieldidx:=FMapping[j-1] else fieldidx:=j-1;
          if (fieldidx=-1) then continue;

          dt:=Fields[fieldidx].DataType;

          s:='';

          if not (dt in [ftBlob,ftMemo,ftGraphic,ftTypedBinary]) then
            s:=Trim(Fields[fieldidx].DisplayText);

          if (dt=ftMemo) and fShowMemoFields then
            s:=Trim(Fields[fieldidx].AsString);

          if (dt=ftBoolean) and fShowBooleanFields then
            SetCheckBoxState(j+MinInt(1,FixedCols)-1,arow,Fields[fieldidx].AsBoolean)
          else
            if (s<>Cells[j+MinInt(1,FixedCols)-1,arow]) then Cells[j+MinInt(1,FixedCols)-1, arow]:=s;

          for k:=1 to d.FieldCount do
            if (Trim(Fields[k-1].AsString)<>'') then emptyrow:=false;
        end;
    end;
  end;

  FDataLink.ActiveRecord := oldrecord;
  Result := emptyrow;
end;

procedure TDBAdvStringGrid.SetBufferCount;
begin
  if FDataMapMode = dmRow then
    FDataLink.BufferCount := RowCount - FixedRows
  else
    FDataLink.BufferCount := (RowCount - FixedRows)*(ColCount-MinInt(1,FixedCols));
end;

function TDBAdvStringGrid.MaxRowsInDataset:integer;
var
  cb: TBookMark;
  ol: Boolean;
begin
  FMaxRows := -1;
  Result := -1;
  if not CheckDataSet then Exit;

  ol := FKeepLinked;
  FKeepLinked := False;
  FDataScroll := True;
  FDataLink.DataSet.DisableControls;

  with FDataLink.DataSet do
  begin
    cb := GetBookMark;
    First;
    Result := MoveBy($7FFFFFFF)+1;
    GotoBookMark(cb);
    FreeBookMark(cb);
    FMaxRows := Result;
  end;

  FDataLink.DataSet.EnableControls;
  FDataScroll := False;
  FKeepLinked := ol;
end;

procedure TDBAdvStringGrid.UpdateRowCount;
var
  rc: Integer;
begin
  rc := MaxRowsInDataset;

  if rc >= 0 then
  begin
    if FDataMapMode = dmRow then
    begin
      if FixedRows + rc <> RowCount then
       begin
        if rc = 0 then inc(rc);
        RowCount := FixedRows + rc;
       end;
    end
    else
    begin
      if (FixedRows + rc <> RowCount) then
        RowCount := FixedRows + 1 + (rc div (ColCount-MinInt(1,FixedCols)));
    end;

    FDataLink.BufferCount := rc;
  end;
end;

procedure TDBAdvStringGrid.UpdateCursorPos;
var
 NewRow, NewCol:integer;

begin

 fDataScroll:=true;
 if fDataMapMode=dmRow then
  begin
   if (fDataLink.DataSet.Bof) then NewRow := FixedRows
   else
   if (fDataLink.DataSet.Eof) then NewRow := RowCount-1
   else
    begin
     if (fDataLink.DataSet.State=dsInsert) then
      NewRow := RowCount - 1
     else
      NewRow := FDataLink.ActiveRecord+FixedRows;
    end;
   if (NewRow <> Row) then Row := NewRow;
  end
 else
  begin
    NewRow:=row;
    NewCol:=col;
    if (fDataLink.DataSet.State=dsInsert) then
     begin
      if not FPageMode then NewRow:=((FDataLink.BufferCount+1) div (ColCount-MinInt(1,FixedCols)))+FixedRows;
      if not FPageMode then NewCol:=((FDataLink.BufferCount+1) mod (ColCount-MinInt(1,FixedCols)))+MinInt(1,FixedCols);
     end
    else
     begin
      NewRow:=(fDataLink.ActiveRecord div (ColCount-FixedCols))+FixedRows;
      NewCol:=(fDataLink.ActiveRecord mod (ColCount-MinInt(1,FixedCols)))+MinInt(1,FixedCols);
     end;

   if (NewRow<>Row) then Row:=NewRow;
   if (NewCol<>Col) then Col:=NewCol;
  end;
 fDataScroll:=false;
end;

procedure TDBAdvStringGrid.UpdateVisibleCells;
var
  i,j:integer;
begin
  if (fDataMapMode=dmRow) then
  begin
    j:=TopRow+VisibleRowCount-1;
    if (j>=RowCount) then j:=RowCount;
    i:=TopRow-FixedRows;

    while (i<=j) and (i<RowCount) and (i<fDataLink.BufferCount) do
    begin
      if UpdateDataRow(i) then
        if (fDataLink.DataSet.State=dsBrowse) then
          if (RowCount>FixedRows+1) then RowCount:=RowCount-1;
     inc(i);
    end;
  end
  else
  begin
    i := (TopRow-FixedRows)*(ColCount-MinInt(1,FixedCols));
    j := (TopRow+VisibleRowCount-1)*(ColCount-MinInt(1,FixedCols));

    while (i<=j) and (i<fDataLink.BufferCount) do
    begin
      if UpdateDataCell(MinInt(1,FixedCols)+(i mod (ColCount-MinInt(1,FixedCols))),FixedRows+(i div (ColCount-MinInt(1,FixedCols)))) then
      begin
        if (fDataLink.DataSet.State=dsBrowse) and (i mod (ColCount-MinInt(1,FixedCols))=0) then
          if (RowCount>FixedRows+1) then RowCount:=RowCount-1;
      end;
      inc(i);
    end;
  end;
end;

function TDBAdvStringGrid.InitMapping: Boolean;
var
  i: Integer;
begin
  if Fields.Count > 0 then
    for i := 0 to MAX_FIELDS do FMapping[i] := -1
  else
    for i := 0 to MAX_FIELDS do FMapping[i] := i;

  Result := Fields.Count > 0;
end;

procedure TDBAdvStringGrid.LoadFromDataSource;
var
  d:TDataSet;
  i,j:integer;
  dt:TFieldType;
  cb:TBookMark;
  field:TField;
  mapped: Boolean;
  numfields:integer;
  fieldidx:integer;

begin
  dt := ftUnknown;

  // Check to see if Dataset is Open
  if not CheckDataSet then
  begin
    if (Fields.Count > 0) then ShowFields;
    Exit;
  end;

  // Remove all old rows and columns
  StoreColWidths;
  ClearAll;

  d:=FDataLink.Datasource.DataSet;

  with d do
  begin
    DisableControls;
    cb := GetBookMark;

    // mapping between columns & fields
    mapped := InitMapping;
    if  mapped then
      numfields := Self.Fields.Count
    else
      numfields := FieldCount;

    if FDataMapMode = dmRow then
    begin
      if (FHTMLTemplate.Count = 0) then
        ColCount := MinInt(1,FixedCols) + Numfields
      else
        ColCount := MinInt(1,FixedCols) + FHTMLTemplate.Count;
    end;

    for i := 1 to Self.Fields.Count do
    begin
      if (Self.Fields.Items[i - 1].FFieldName <> '') then
      try
        Field := FieldByName(Self.Fields.Items[i-1].FFieldName);
        if Assigned(Field) then FMapping[i-1] := Field.Index;
      finally
      end;
    end;

    First;

    // if Fixed Rows = 0 and UseHeader True, Iterate through Fields and
    // assign Column Labels

    if (FixedRows = 1) and (FHTMLTemplate.Count = 0) then
    begin
      for i := 1 to numfields do
      begin
        if mapped then fieldidx:=FMapping[i-1] else fieldidx:=i-1;
        if fieldidx=-1 then continue;
        if mapped then
        begin
          if (self.Fields.Items[i-1].Title<>'') then
            Cells[i+MinInt(1,FixedCols)-1,0]:=self.Fields.Items[i-1].Title;
        end
        else
        begin
          if Length(TField(Fields[fieldidx]).DisplayLabel) > 0 then
          begin
            dt := Fields[fieldidx].DataType;
            if not (dt in [ftBlob,ftTypedBinary]) then
              Cells[i+MinInt(1,FixedCols)-1,0] := TField(Fields[fieldidx]).DisplayLabel;
          end
          else
          begin
            if not (dt in [ftBlob,ftTypedBinary]) then
              Cells[i+MinInt(1,FixedCols)-1,0] := TField(Fields[fieldidx]).DisplayName;
          end;  // if Length(TField(...
        end;
      end;  // for i := 0 to FieldCount-1
    end;  // (a = 0) and (FUseHeader = True)

    // Iterate through records and assign to rows
    i := 0;
    BeginUpdate;

    while (not Eof) and ((RowCount < MaxVisibleRows) or (FPageMode = False)) do
    begin
      // Iterate through the fields array and put data in cells

      if FDataMapMode = dmRow then
      begin
        if FHTMLTemplate.Count > 0 then
        begin
          for j:=1 to FHTMLTemplate.Count do
           Cells[j+MinInt(1,FixedCols)-1, RowCount-1]:=HTMLDBReplace(fHTMLTemplate.Strings[j-1],d);
        end
        else
        begin
          for j:=1 to Numfields do
          begin
            if mapped then fieldidx:=FMapping[j-1] else fieldidx:=j-1;

            if fieldidx=-1 then continue;

            dt := Fields[fieldidx].DataType;
            if not (dt in [ftBlob,ftMemo,ftGraphic,ftTypedBinary,ftBoolean]) then
               Cells[j+MinInt(1,FixedCols)-1, RowCount-1]:=Trim(Fields[fieldidx].DisplayText);

            if (dt = ftGraphic) and FShowPictureFields then
              begin
               with CreatePicture(j+MinInt(1,FixedCols)-1,RowCount-1,true,StretchWithAspectRatio,4,haLeft,vaTop) do
                 Assign(Fields[fieldidx]);
              end;

            if (dt = ftMemo) and FShowMemoFields then
              begin
                Cells[j + MinInt(1,FixedCols)-1, RowCount-1] := Trim(Fields[fieldidx].AsString);
              end;

            if dt = ftBoolean then
             if FShowBooleanFields then
                AddCheckBox(j+MinInt(1,FixedCols)-1, RowCount-1,Fields[fieldidx].AsBoolean, false)
             else
                Cells[j + MinInt(1,FixedCols)-1, RowCount-1] := Trim(Fields[fieldidx].DisplayText);

          end;
        end;
        Next;
        if not Eof then RowCount := RowCount + 1;
      end
      else
      begin
        if FHTMLTemplate.Count > 0 then
          Cells[i + MinInt(1,FixedCols), RowCount-1] := HTMLDBReplace(FHTMLTemplate.Strings[0],d);

        Next;
        Inc(i);
        if (i = ColCount - MinInt(1,FixedCols)) and not Eof then
        begin
          i := 0;
          RowCount := RowCount + 1;
        end;
      end;
    end;  // while not Eof

    EndUpdate;

    if (FCloseWhenLoaded) and not (csDesigning in ComponentState) then Close;

    GotoBookMark(cb);
    FreeBookMark(cb);

    SetBufferCount;
    MaxRowsInDataset;
    EnableControls;
  end;

  Row := FixedRows;

  RestoreColWidths;

  FLoaded := True;
end;

procedure TDBAdvStringGrid.SetDataSource(Value : TDatasource);
begin
  if not Assigned(FDataLink) then
    Exit;

  if (Value = nil) then
  begin
     SetActive(False);
     ClearAll;
  end;

  if (FDataLink.DataSource<>Value) then
  begin
     FDataLink.DataSource:=Value;
  end;

  if (Value <> Nil) then Value.FreeNotification(Self);

  if not Assigned(FDataLink.DataSource) then
    ClearAll;
end;

function TDBAdvStringGrid.GetDataSource: TDataSource;
begin
  if Assigned(FDataLink) then
    Result := FDataLink.DataSource
  else
    Result := nil;
end;

procedure TDBAdvStringGrid.SetCloseWhenLoaded(Value: Boolean);
begin
 if FCloseWhenLoaded <> Value then FCloseWhenLoaded := Value;
end;

procedure TDBAdvStringGrid.SetStringGridFields(value:tStringGridFields);
begin
  FStringGridFields.Assign(value);
end;

function TDBAdvStringGrid.GetVersionNr: integer;
begin
  Result := makelong(1,6);
end;

function TDBAdvStringGrid.GetVersionString: string;
begin
  Result := '1.6, November 2001';
end;

constructor TDBAdvStringGrid.Create(AOwner: TComponent);
var
  i:integer;
begin
  inherited Create(aOwner);
  for i:=0 to MAX_FIELDS do FMapping[i]:=i;
  FDataLink := TAdvGridDataLink.Create(self);
  {$IFDEF DELPHI4_LVL}
  FDataLink.VisualControl := True;
  {$ENDIF}
  FStringGridFields:=TStringGridFields.Create(self);
  FLoaded := False;
  FKeepLinked := True;
  FHTMLTemplate := TStringList.Create;
  FHTMLTemplate.OnChange:=TemplateChanged;
  FDataMapMode := dmRow;
  FShowPictureFields := True;
  FShowMemoFields := True;
  FShowIndicator := True;
  FWidths := TIntList.Create(0,0);
end;

destructor TDBAdvStringGrid.Destroy;
begin
  FDataLink.Free;
  FDataLink := nil;
  FStringGridFields.Free;
  FHTMLTemplate.Free;
  FWidths.Free;
  inherited Destroy;
end;

procedure TDBAdvStringGrid.Loaded;
begin
  inherited Loaded;
  if not FLoaded then
    LoadFromDataSource;
end;

procedure TDBAdvStringGrid.SetActive(Active: boolean);
begin
  if not Active then
  begin
    ClearAll;
    if FHTMLTemplate.Count = 0 then
    begin
      RowCount := 5;
      //ColCount:=5;
      Clear;
    end
    else
    begin
      ClearNormalCells;
    end;
  end
  else
  begin
    if not (csLoading in ComponentState) then LoadFromDatasource;
  end;
end;

procedure TDBAdvStringGrid.ShowFields;
var
 i:integer;
begin
 if FixedRows=0 then exit;

 if fHTMLTemplate.Count=0 then ColCount:=MinInt(1,FixedCols)+Fields.Count;

 for i:=1 to Fields.Count do
  begin
   if (Fields.Items[i-1].Title<>'') then
    Cells[MinInt(1,FixedCols)+i-1,0]:=Fields.Items[i-1].Title
   else
    Cells[MinInt(1,FixedCols)+i-1,0]:=Fields.Items[i-1].FieldName;
  end;
end;


{ FGridDataLink }

procedure TAdvGridDataLink.ActiveChanged;
begin
 inherited ActiveChanged;
 if Assigned(FGrid) and Assigned(DataSet) then
   with FGrid do SetActive(Dataset.Active);

 if Assigned(DataSet) then
 if DataSet.Active then
   begin
    DataSet.BeforeDelete:=BeforeRecordDeleted;
    DataSet.AfterDelete:=AfterRecordDeleted;
   end;
end;

constructor TAdvGridDataLink.Create(AGrid: TDBAdvStringGrid);
begin
  inherited Create;
  FGrid := Agrid;
end;

procedure TAdvGridDataLink.DataSetChanged;
var
  NewRow,NewCol:integer;
label
  Skip;
begin
  if not FGrid.FKeepLinked then Exit;

  inherited DataSetChanged;

  FGrid.KeepLinked := False;
  FGrid.FDataScroll := True;

  if DataSet.Bof then FGrid.Row := FGrid.FixedRows;
  if DataSet.Eof then FGrid.Row := FGrid.RowCount - 1;

  if not DataSet.Bof and not DataSet.Eof then

  if FGrid.FDataMapMode <> dmRow then
  begin //goto last open cell?
    if DataSet.State <> dsInsert then
    begin
      NewRow := (ActiveRecord div (FGrid.ColCount-MinInt(1,FGrid.FixedCols))) + FGrid.FixedRows;
      NewCol := (ActiveRecord mod (FGrid.ColCount-MinInt(1,FGrid.FixedCols))) + MinInt(1,FGrid.FixedCols);
      if NewRow <> FGrid.Row then FGrid.Row := NewRow;
      if NewCol <> FGrid.Col then FGrid.Col := NewCol;
    end;
  end
  else
  begin
    if DataSet.State <> dsInsert then
    begin
      FGrid.Row := ActiveRecord + FGrid.FixedRows;
      if goRowSelect in FGrid.Options then
        FGrid.Selection := TGridRect(Rect(FGrid.FixedCols,FGrid.Row,FGrid.ColCount - 1, FGrid.Row));
      //FGrid.UpdateSelect;
    end;
  end;

  //after insert, update rowcount

  {$IFDEF TMSDEBUG}
  DbgMsg('state change:'+inttostr(integer(DataSet.State))+':'+inttostr(integer(FGrid.FoldState)));
  {$ENDIF}

  // switch to insert state
  if ((DataSet.State <> FGrid.FOldState) and (DataSet.State = dsInsert)) then
  begin
    if FGrid.DataMapMode = dmRow then
    begin
      if (FGrid.MaxVisibleRows >= FGrid.RowCount) then
      begin
        if not FGrid.FPageMode then BufferCount := BufferCount + 1;
        if not FGrid.FPageMode then FGrid.RowCount := FGrid.RowCount + 1;
        FGrid.Row := FGrid.RowCount - 1;
        if goRowSelect in FGrid.Options then
          FGrid.Selection := TGridRect(Rect(FGrid.FixedCols,FGrid.Row,FGrid.ColCount - 1, FGrid.Row));
        //FGrid.UpdateSelect;
        FGrid.UpdateVisibleCells;
      end;
    end
    else
    begin
      if not FGrid.FPageMode then
        BufferCount := BufferCount + 1;

      NewRow := FGrid.row;
      NewCol := FGrid.col;
      if not FGrid.FPageMode then NewRow:=((FGrid.FMaxRows) div (FGrid.ColCount-MinInt(1,FGrid.FixedCols)))+FGrid.FixedRows;
      if not FGrid.FPageMode then NewCol:=((FGrid.FMaxRows) mod (FGrid.ColCount-MinInt(1,FGrid.FixedCols)))+MinInt(1,FGrid.FixedCols);

      if not FGrid.FPageMode and (NewRow>FGrid.RowCount-1) then FGrid.RowCount:=FGrid.RowCount+1;

      if (NewRow <> FGrid.Row) then FGrid.Row:=NewRow;
      if (NewCol <> FGrid.Col) then FGrid.Col:=NewCol;
      if goRowSelect in FGrid.Options then
        FGrid.Selection := TGridRect(Rect(FGrid.FixedCols,FGrid.Row,FGrid.ColCount - 1, FGrid.Row));
      //FGrid.UpdateSelect;
      FGrid.UpdateVisibleCells;
    end;
  end;

Skip:
  FGrid.UpdateRowCount;

  // switch from insert state to browse
  if ((DataSet.State <> FGrid.FOldState) and (FGrid.FOldState = dsInsert)) and not FGrid.FPageMode then
  begin

    if (FGrid.DataMapMode = dmRow) then
    begin
      FGrid.Row := ActiveRecord + FGrid.FixedRows;
      if goRowSelect in FGrid.Options then
        FGrid.Selection := TGridRect(Rect(FGrid.FixedCols,FGrid.Row,FGrid.ColCount - 1, FGrid.Row));

      //FGrid.UpdateSelect;
    end
    else
    begin
      NewRow := (ActiveRecord div (FGrid.ColCount-MinInt(1,FGrid.FixedCols)))+FGrid.FixedRows;
      NewCol := (ActiveRecord mod (FGrid.ColCount-MinInt(1,FGrid.FixedCols)))+MinInt(1,FGrid.FixedCols);
      if (NewRow <> FGrid.Row) then FGrid.Row := NewRow;
      if (NewCol <> FGrid.Col) then FGrid.Col := NewCol;
    end;
  end;

  FGrid.FDataScroll := False;
  FGrid.FOldState := DataSet.State;
  FGrid.UpdateVisibleCells;
  FGrid.KeepLinked := True;
end;

procedure TAdvGridDataLink.DataSetScrolled(Distance:Integer);
var
  NewRow: Integer;
begin
  {$IFDEF TMSDEBUG}
  DbgInt('datasetscrolled',Distance);
  {$ENDIF}

 inherited DataSetScrolled(Distance);

  if not FGrid.FKeepLinked then Exit;
  if FGrid.FSelectScroll then Exit;

  FGrid.FDataScroll := True;

  NewRow := ActiveRecord + FGrid.FixedRows;
  if (NewRow < FGrid.FixedRows) then NewRow := FGrid.FixedRows;
  if (NewRow >= FGrid.RowCount) then NewRow := FGrid.RowCount - 1;

  FGrid.Row := NewRow;

  if goRowSelect in FGrid.Options then
    FGrid.Selection := TGridRect(Rect(FGrid.FixedCols,FGrid.Row,FGrid.ColCount - 1, FGrid.Row));

  //FGrid.UpdateSelect;
  FGrid.FDataScroll := False;
end;

procedure TAdvGridDataLink.BeforeRecordDeleted(DataSet: TDataSet);
begin
  {$IFDEF TMSDEBUG}
  DbgMsg('BeforeRecordDeleted');
  {$ENDIF}
  FGrid.FDeleting := True;
end;

procedure TAdvGridDataLink.AfterRecordDeleted(DataSet: TDataSet);
begin
  {$IFDEF TMSDEBUG}
  DbgMsg('AfterRecordDeleted');
  {$ENDIF}
  FGrid.FDeleting := False;
  if not FGrid.PageMode then
  begin
    if BufferCount > 0 then
      BufferCount := BufferCount - 1;
  end;
end;

procedure TAdvGridDataLink.RecordChanged(Field: TField);
begin
  {$IFDEF TMSDEBUG}
  DbgMsg('record changed');
  {$ENDIF}

  inherited RecordChanged(Field);

  with FGrid do
  begin
    if not fKeepLinked then Exit;
    if fDataMapMode=dmRow then
      UpdateDataRow(ActiveRecord)
    else
      UpdateDataCell(MinInt(1,FixedCols)+(ActiveRecord mod (ColCount-MinInt(1,FixedCols))),FixedRows+(ActiveRecord div (ColCount-MinInt(1,FixedCols))));
  end;
end;

destructor TAdvGridDataLink.Destroy;
begin
  inherited Destroy;
end;

{ TStringGridFields }

function TStringGridFields.Add: TStringGridField;
begin
  Result := TStringGridField(inherited Add);
end;

constructor TStringGridFields.Create(aOwner: TDBAdvStringGrid);
begin
  inherited Create(TStringGridField);
  FOwner := AOwner;
end;

function TStringGridFields.GetItem(Index: Integer): TStringGridField;
begin
  Result := TStringGridField(inherited GetItem(Index));
end;

function TStringGridFields.GetOwner: tPersistent;
begin
  Result := FOwner;
end;

function TStringGridFields.Insert(index: integer): TStringGridField;
{$IFNDEF DELPHI4_LVL}
var
  i: Integer;
{$ENDIF}
begin
  {$IFDEF DELPHI4_LVL}
  Result := TStringGridField(inherited Insert(index));
  {$ELSE}
  inherited Add;
  
  for i := Count - 1 downto Index + 1 do
    TStringGridField(Items[i]).Assign(TStringGridField(Items[i-1]));
  Result := TStringGridField(Items[index]);
 {$ENDIF}
end;

procedure TStringGridFields.SetItem(Index: Integer;
  const Value: TStringGridField);
begin
  inherited SetItem(Index, Value);
end;

procedure TStringGridFields.Update(Item: TCollectionItem);
begin
  inherited Update(Item);
  with (GetOwner as TDBAdvStringGrid) do
  begin
    if (csDesigning in ComponentState) and
      not (csLoading in ComponentState) then
      LoadFromDataSource;
  end;
end;

{ TStringGridField }

procedure TStringGridField.Assign(Source: TPersistent);
begin
  FFieldName := (Source as TStringGridField).FieldName;
  FTitle := (Source as TStringGridField).Title;
end;

procedure TStringGridField.Changed;
begin
  with (Collection as TStringGridFields) do
  begin
    with (GetOwner as TDBAdvStringGrid) do
    begin
      if (csDesigning in ComponentState) and
         not (csLoading in ComponentState) then
         LoadFromDataSource;
    end;
  end;
end;

constructor TStringGridField.Create(Collection: TCollection);
begin
  inherited Create(Collection);
end;

destructor TStringGridField.Destroy;
begin
  inherited Destroy;
end;

function TStringGridField.GetDisplayName: string;
begin
  Result := FFieldName;
end;


procedure TStringGridField.SetFieldName(const Value: string);
begin
  FFieldName := Value;
  Changed;
end;

procedure TStringGridField.SetTitle(const Value: string);
begin
  FTitle := Value;
  with (Collection as TStringGridFields) do
  begin
    with (GetOwner as TDBAdvStringGrid) do
    begin
      if (csDesigning in ComponentState) and
         not (csLoading in ComponentState) then
        LoadFromDataSource;
    end;
  end;
end;

function TDBAdvStringGrid.SelectCell(ACol, ARow: Integer): Boolean;
var
  d: TDataSet;
  distance: Integer;
begin
  if CheckDataSet then
  begin
    d := FDataLink.Datasource.DataSet;
    if fLoaded and not FDataScroll and fKeepLinked then
    begin
      fKeepLinked:=false;
      if fDataMapMode=dmRow then
      begin
        if (arow>=FixedRows) and (arow<RowCount) then
        begin
          FSelectScroll:=true;
          distance:=arow-row;
          d.MoveBy(distance);
          FSelectScroll:=false;
        end;
      end
      else
      begin
        if (Cells[acol,arow]<>'') then
        begin
          FSelectScroll := True;
          Distance := (arow-flastrow)*(ColCount-MinInt(1,FixedCols))+(acol-flastcol);
          d.MoveBy(distance);
          FSelectScroll:=false;
          FLastCol := ACol;
          FLastRow := ARow;
        end;
      end;
      FKeepLinked := True;
    end;
  end;

  if FixedCols > 0 then Cells[0,Row] := '';

  Result := inherited SelectCell(Acol,Arow);

  if FixedCols > 0 then Cells[0,ARow] := '';
end;

procedure TDBAdvStringGrid.SetPageMode(const Value: boolean);
begin
  fPageMode := Value;
  if fPageMode and (Rowcount>MaxVisibleRows) then RowCount:=MaxVisibleRows;
end;

procedure TDBAdvStringGrid.WMKeyDown(var Msg:TWMKeydown);
var
  d:TDataSet;
  distance,colmove: Integer;

begin
  if CheckDataSet and fPageMode then
  begin
    d := FDataLink.Datasource.DataSet;

    if (FDataMapMode=dmRow) then
    begin
      case msg.CharCode of
      vk_up:if (Row=FixedRows) then d.MoveBy(-1);
      vk_down:if (Row=MaxVisibleRows-1) then d.MoveBy(1);
      vk_prior:d.MoveBy(-MaxVisibleRows);
      vk_next:d.MoveBy(MaxVisibleRows);
      end;
    end
    else
    begin
      case msg.CharCode of
      vk_up:if (Row=fixedRows) then d.MoveBy(-(Colcount-MinInt(1,FixedCols)));
      vk_down:begin
                if (Row=MaxVisibleRows-1) then
                  begin
                   colmove:=(ColCount-Col);
                   distance:=(colmove+(Colcount-MinInt(1,FixedCols))-1);
                   {$IFDEF TMSDEBUG}
                   DbgMsg('keydown move from : '+inttostr(fDataLink.ActiveRecord)+':' +inttostr(distance)+':'+inttostr(colmove));
                   {$ENDIF}
                   FSelectScroll:=true;
                   d.MoveBy(distance);
                   d.MoveBy(-ColMove+MinInt(1,FixedCols));
                   FSelectScroll:=false;
                  end;
              end;
      vk_prior:d.MoveBy(-MaxVisibleRows);
      vk_next:d.MoveBy(MaxVisibleRows);
      end;

     end;
  end;

 inherited;
end;

procedure TDBAdvStringGrid.SetHTMLTemplate(const Value: TStringList);
begin
  fHTMLTemplate.Assign(Value);
end;

procedure TDBAdvStringGrid.TemplateChanged(Sender: TObject);
var
 i:integer;
begin
 if (csDesigning in ComponentState) then
  begin
   for i:=1 to fHTMLTemplate.Count do
    Cells[MinInt(1,FixedCols)+i-1,FixedRows]:=fHTMLTemplate.Strings[i-1];
  end;
end;

procedure TDBAdvStringGrid.WMSize(var Msg: TWMKeydown);
var
  NewRowCount: Integer;
begin
  inherited;
  if (fPageMode) and (DataMapMode=dmRow) then
  begin
    NewRowCount := 0;
    if (Rowcount > MaxVisibleRows) then NewRowCount := MaxVisibleRows;
    if (RowCount < MaxVisibleRows) and (RowCount<fMaxRows) then NewRowCount:=MaxVisibleRows;

    if (NewRowCount<>RowCount) and (NewRowCount<>0) then
    begin
      RowCount:=NewRowCount;
      SetBufferCount;
      UpdateVisibleCells;
      UpdateCursorPos;
    end;
  end;
  if (fPageMode) and (DataMapMode=dmCell) then
  begin
    NewRowCount := 0;
    if (Rowcount>MaxVisibleRows) then NewRowCount:=MaxVisibleRows;
    if (RowCount<MaxVisibleRows) and (RowCount<fMaxRows div (Colcount-MinInt(1,FixedCols))) then NewRowCount:=MaxVisibleRows;

    if (NewRowCount<>RowCount) and (NewRowCount<>0) then
     begin
      RowCount:=NewRowCount;
      SetBufferCount;
      UpdateVisibleCells;
      UpdateCursorPos;
     end;
  end;
end;

procedure TDBAdvStringGrid.ReStoreColWidths;
var
  i: Integer;
begin
  FixedCols:=fFixedcolumns;

  for i := 1 to ColCount do
  begin
    if (FWidths.Count >= i) then
      ColWidths[i - 1] := FWidths.Items[i - 1];
  end;
end;

procedure TDBAdvStringGrid.StoreColWidths;
var
  i: Integer;
begin
  FFixedColumns:=FixedCols;
  FWidths.Clear;
  for i := 1 to ColCount do
    FWidths.Add(ColWidths[i-1]);
end;

procedure TDBAdvStringGrid.DrawCell(ACol, ARow: Integer; ARect: TRect;
  AState: TGridDrawState);
begin
  inherited;
  if (ACol = 0) and (ARow = Row) and (FixedCols > 0) and FShowIndicator then
  begin
    Canvas.Brush.Color := clBlack;
    Canvas.Polygon([point(arect.left+2,arect.top+2),point(arect.left+2,arect.top+14),point(arect.left+8,arect.top+8)]);
  end;
end;

procedure TDBAdvStringGrid.WMVScroll(var WMScroll: TWMScroll);
var
  d: TDataSet;
begin
  if CheckDataSet and FPageMode then
  begin
    d := FDataLink.Datasource.DataSet;

    case wmscroll.ScrollCode of
    sb_lineup:
      begin
        if (Row = FixedRows) then d.MoveBy(-(Colcount-MinInt(1,FixedCols)));
        row:=fixedrows;
      end;
    sb_linedown:
      begin
        FSelectScroll:=true;
        d.MoveBy(1);
        FSelectScroll:=false;
        if MaxVisibleRows - 1 < RowCount - 1 then
          Row := MaxVisibleRows - 1;
      end;
    sb_pageup:d.MoveBy(-MaxVisibleRows);
    sb_pagedown:d.MoveBy(MaxVisibleRows);
    end;
  end
  else inherited;
end;

procedure TDBAdvStringGrid.SetShowIndicator(const Value: boolean);
begin
  if (FShowIndicator <> Value) then
  begin
    FShowIndicator := Value;
    Invalidate;
  end;
end;

procedure TDBAdvStringGrid.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and  (AComponent = DataSource) then DataSource := nil;
end;

procedure TDBAdvStringGrid.ColumnMoved(FromIndex, ToIndex: Integer);
var
  AField: TStringGridField;
  Field: TField;
  i: Integer;
  d: TDataSet;
begin
  inherited;

  if Fields.Count > 0 then
  begin
    Fields.Add.Assign(Fields.Items[FromIndex-FixedCols]);
    Fields.Items[FromIndex-FixedCols].Free;

    AField := Fields.Insert(ToIndex-FixedCols);
    AField.Assign(Fields.Items[Fields.Count - 1]);

    Fields.Items[Fields.Count - 1].Free;

    if CheckDataSet then
    begin
      d := FDataLink.Datasource.DataSet;
      for i := 1 to Fields.Count do
      begin
        if (Fields.Items[i - 1].FFieldName <> '') then
        try
          Field := d.FieldByName(Fields.Items[i - 1].FFieldName);
          if Assigned(Field) then
            FMapping[i - 1] := Field.Index;
        finally
        end;
      end;
    end;
  end;
end;

end.
