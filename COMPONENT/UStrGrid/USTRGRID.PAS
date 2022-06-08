{ ========================================================================
  Unit:    UStrGrid
  VCL:     TXStrGrid
  Version: 1.1
  Copyright (C) 1996, Immo Wache
  ========================================================================}
{*---------------------------------------------------------------------------*}
{*  컴 포 넌 트 명            :  UStrGrid                                    *}
{*  설          명            :  StringGrid + Hcol, Hrow, ALignment 추가     *}
{*  작    성    일   96. 1. 1 :  인터넷에서 download                   			 *}
{*  수    정    일   96. 4.18 :  Alignment                          				 *}
{*                               -> AlignLeftRows                            *}
{*                                  AlignCenterRows                          *}
{*                                  AlignRightRows            		   				 *}
{*                   96. 7.22 :  Alignment property를  재사용                *}
{*---------------------------------------------------------------------------*}

unit Ustrgrid;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, Grids;

type
  TGridColorEvent = procedure (Sender: TObject; ARow, ACol: Longint;
                               AState: TGridDrawState;
                               ABrush: TBrush; AFont: TFont ) of object;
  TGridAlignEvent = procedure (Sender: TObject; ARow, ACol: Longint;
                               var AAlignment: TAlignment) of object;

  TXStrGrid = class(TStringGrid)
  private
    { Private declarations }
    FAlign : TAlignment;
    FHAlign: TAlignment;
    FVAlign: TAlignment;
    FGrid3D : boolean;
    FHCol: TStrings;
    FHRow: TStrings;
    ALeftRow: TStrings;
    ACenterRow: TStrings;
    ARightRow: TStrings;
    FOnGetCellColor: TGridColorEvent;
    FOnGetAlignment: TGridAlignEvent;

    function GetAlign:TAlignment;
    procedure SetAlign(const Value: TAlignment);
    function GetFixedHoriAlign:TAlignment;
    function GetFixedVertiAlign:TAlignment;

    procedure SetFixedHoriAlign(const Value: TAlignment);
    procedure SetFixedVertiAlign(const Value: TAlignment);
    procedure SetGrid3D(Value : boolean);
    procedure InitHCol;
    procedure InitHRow;
    procedure SetHCol(Value: TStrings);
    procedure SetHRow(Value: TStrings);
    procedure SetALeftRow(Value: TStrings);
    procedure SetACenterRow(Value: TStrings);
    procedure SetARightRow(Value: TStrings);
    procedure DrawCell(ACol, ARow : Longint; ARect : TRect;
      AState : TGridDrawState); override;

  protected
    { Protected declarations }
    procedure Loaded; override;

  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure MoveTo(ACol, ARow: longint);

  published
    { Published declarations }
    property HCol: TStrings read FHCol write SetHCol;
    property HRow: TStrings read FHRow write SetHRow;
    property OnGetCellColor: TGridColorEvent read FOnGetCellColor
      write FOnGetCellColor;
    property OnGetAlignment: TGridAlignEvent read FOnGetAlignment
      write FOnGetAlignment;
    property Grid3D : boolean read FGrid3D write SetGrid3D;
    property Alignment: TAlignment read GetAlign
      write SetAlign default taLeftJustify;
    property FixedColsAlignment: TAlignment read GetFixedHoriAlign
      write SetFixedHoriAlign default taLeftJustify;
    property FixedRowsAlignment: TAlignment read GetFixedVertiAlign
      write SetFixedVertiAlign default taCenter;
    property AlignLeftRows: TStrings read ALeftRow write SetALeftRow;
    property AlignCenterRows: TStrings read ACenterRow write SetACenterRow;
    property AlignRightRows: TStrings read ARightRow write SetARightRow;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('uniHISPACK', [TXStrGrid]);
end;

constructor TXStrGrid.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FHCol:=TStringList.Create;
  FHRow:=TStringList.Create;
  FAlign :=taLeftJustify;
  ALeftRow:=TStringList.Create;
  ACenterRow:=TStringList.Create;
  ARightRow:=TStringList.Create;
  FHAlign :=taCenter;
  FVAlign :=taLeftJustify;

end;

procedure TXStrGrid.MoveTo(ACol, ARow: longint);
begin
  MoveColRow(ACol, ARow, True, True);
end;

procedure TXStrGrid.InitHCol;
var
  I: Integer;
begin
  if (FHCol <> nil) then
    for I :=0 to pred( ColCount) do
      if I <FHCol.Count then Cells[I, 0] :=FHCol[I]
                        else Cells[I, 0] :='';
end;


procedure TXStrGrid.InitHRow;
var
  I: Integer;
begin
  if (FHRow <> nil) then
    for I :=0 to RowCount -2 do
      if I <FHRow.Count then  Cells[0, I + 1]:=FHRow[I]
        else Cells[0, I + 1]:='';
end;

procedure TXStrGrid.Loaded;
begin
  inherited Loaded;
  initHCol;
  initHRow;
end;

procedure TXStrGrid.SetHCol(Value: TStrings);
begin
  FHCol.Assign(Value);
  InitHCol;
  Refresh;
end;

procedure TXStrGrid.SetHRow(Value: TStrings);
begin
  FHRow.Assign(Value);
  InitHRow;
  Refresh;
end;

function TXStrGrid.GetAlign: TAlignment;
begin
   Result := FAlign;
end;

procedure TXStrGrid.SetAlign(const Value: TAlignment);
begin
  if FAlign<>Value then
  begin
    FAlign:=Value;
    Invalidate;
  end;
end;

procedure TXStrGrid.SetALeftRow(Value: TStrings);
begin
  ALeftRow.Assign(Value);
end;

procedure TXStrGrid.SetACenterRow(Value: TStrings);
begin
  ACenterRow.Assign(Value);
end;

procedure TXStrGrid.SetARightRow(Value: TStrings);
begin
  ARightRow.Assign(Value);
end;

function TXStrGrid.GetFixedHoriAlign: TAlignment;
begin
   Result := FHAlign;
end;
function TXStrGrid.GetFixedVertiAlign: TAlignment;
begin
   Result := FVAlign;
end;
procedure TXStrGrid.SetFixedHoriAlign(const Value: TAlignment);
begin
  if FHAlign<>Value then
  begin
    FHAlign:=Value;
    Invalidate;
  end;
end;
procedure TXStrGrid.SetFixedVertiAlign(const Value: TAlignment);
begin
  if FVAlign<>Value then
  begin
    FVAlign:=Value;
    Invalidate;
  end;
end;


procedure TXStrGrid.DrawCell(ACol, ARow : Longint; ARect : TRect;
  AState : TGridDrawState);

  procedure DrawCellText;
  var
    Text: array[0..255] of Char;
    l : Integer;
    Left : Integer;
    AlignValue : TAlignment;
    FontHeight: Integer;
    Rect : TRect;
    i : integer;
  const

    Alignments: array[TAlignment] of Word = (DT_LEFT, DT_RIGHT, DT_CENTER);
    FixedColsAlignments: array[TAlignment] of Word = (DT_LEFT, DT_RIGHT, DT_CENTER);
    FixedRowsAlignments: array[TAlignment] of Word = (DT_LEFT, DT_RIGHT, DT_CENTER);

  begin
    AlignValue :=Alignment;
    AlignValue := taLeftJustify;

    for i := 0 to AlignLeftRows.count - 1 do
      if StrToInt(AlignLeftRows[i]) = ACol then
         AlignValue := taLeftJustify;
    for i := 0 to AlignCenterRows.count - 1 do
      if StrToInt(AlignCenterRows[i]) = ACol then
         AlignValue := taCenter;
    for i := 0 to AlignRightRows.count - 1 do
      if StrToInt(AlignRightRows[i]) = ACol then
         AlignValue := taRightJustify;

    if (ACol < FixedCols) and (ARow >= FixedRows) then
      AlignValue :=FixedColsAlignment
    else if (ARow < FixedRows) then
      AlignValue :=FixedRowsAlignment;

    if Assigned(FOnGetAlignment) then
      FOnGetAlignment(Self, ARow, ACol, AlignValue);
    {using of Brush for background color}
    Rect :=ARect;
    Canvas.FillRect(Rect);
    {centering text in cell}
    FontHeight := Canvas.TextHeight('W');
    with Rect do
    begin
      Top := ((Bottom + Top) - FontHeight) shr 1;
      Bottom := Top + FontHeight;
      Dec(Right, 2);
      Inc(Left, 2);
    end;
    {drawing of text}
    StrPCopy(Text, Cells[ACol, ARow]);
    DrawText(Canvas.Handle, Text, StrLen(Text), Rect, (DT_EXPANDTABS or
      DT_VCENTER) or Alignments[AlignValue]);
  end;

begin
  {prepare color and font selection}
  if Assigned(FOnGetCellColor) then
    FOnGetCellColor(Self, ARow, ACol, AState, Canvas.Brush, Canvas.Font);
  {text draw with alignment}
  if DefaultDrawing then DrawCellText
                    else inherited DrawCell(ACol, ARow, ARect, AState);
  {3D look cells}
  if FGrid3D and
    ([goHorzLine, goVertLine] *Options =[goHorzLine, goVertLine]) then
    with ARect do
    begin
      Canvas.Pen.Color := clHighLightText;
      Canvas.PolyLine([Point(Left, Bottom - 1), Point(Left, Top),
        Point(Right, Top)]);
    end;
end;

procedure TXStrGrid.SetGrid3D(Value : Boolean);
begin
  if FGrid3D<>Value then
  begin
    FGrid3D:=Value;
    Invalidate;
  end;
end;

end.
