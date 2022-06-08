unit mgd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  stdctrls,grids, comctrls, Variants;


 {   TmgdColumn   }
type
    TAlignmentV=(vaTop,vaCenter,vaBottom,vaWordBreak);
    TCellType=(ctNormal,ctCheckBox,ctComboBox);
	TSortOrder=(soNone,soAscending,soDescending);
	TNumberKind=(nkInteger,nkFloat);

   TmgdColumn = class(TCollectionItem)
  private
    FGrid:TcustomGrid;
    FCol:integer;
//    FTitle: string;
  //  FTitleAlignment:TAlignment;
    //FTitleFontStyle:TFontStyles;

    FUseFormat:boolean;
    FNumberKind:TNumberKind;
    FFormatString:string;


    FAlignment: TAlignment;
    FAlignmentV: TAlignmentV;
    FFontStyle: TFontStyles;
    FFontColor: TColor;

    FColor: TColor;
    FCellType: TCellType;
    FCheckBoxCaption:string;
    FReadOnly:boolean;
    FComboItems:Tstrings;
    FComboItemsCount:integer;
    FComboSortOrder:TSortOrder;
	FComboBtnVisible:boolean;
///////////////////////////////////////
	function  getTitle:string;
    function  getTitleAlignment:TAlignment;
    function  getTitleFontStyle:TFontStyles;

    procedure setTitle(value:string);
    procedure setTitleAlignment(value:TAlignment);
    procedure setTitleFontStyle(value:TFontStyles);

    procedure setUseFormat(value:Boolean);
    procedure setFormatString(Value:String);
    procedure setNumberKind(value:TNumberKind);


    procedure setAlignment(value: TAlignment);
    procedure setAlignmentV(value: TAlignmentV);
    procedure setFontStyle(value: TFontStyles);
    procedure setFontColor(value: TColor);

    procedure setColor(value: TColor);
	procedure setCellType(value: TCellType);
    procedure setCheckBoxCaption(value:string);
    procedure setComboItems(value:Tstrings);
    procedure setComboItemsCount(value:integer);
    procedure setComboBtnVisible(value:boolean);
    procedure setComboSortOrder(value:TsortOrder);
    procedure setReadonly(value:boolean);

  protected
    procedure DefineProperties(Filer: TFiler); override;
    function GetDisplayName: string; override;
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
    procedure Assign(Source: TPersistent); override;
  published
//    property Title: string read FTitle write setTitle;
    property Title: string read getTitle write setTitle;
    property TitleAlignment:TAlignment
    		read getTitleAlignment write setTitleAlignment;
//    		read FTitleAlignment write setTitleAlignment;
    property TitleFontStyle:TFontStyles
    		read getTitleFontStyle write setTitleFontStyle;
//    		read FTitleFontStyle write setTitleFontStyle;


   property UseFormat:boolean read FUseFormat write setUseFormat;
   property NumberKind:TNumberKind read FNumberKind write setNumberKind;
   property FormatString:String	read FFormatString	write setFormatString;


    property Alignment: TAlignment
    		read FAlignment write seTAlignment;
    property AlignmentV: TAlignmentV
    		read FAlignmentV write setAlignmentV;
    property FontStyle: TFontStyles
    		read FFontStyle write setFontStyle;
    property FontColor: TColor read FFontColor write setFontColor;
    property Color: TColor read FColor write setColor;
    property CellType: TCellType read FCellType write setCellType;
	property CheckBoxCaption:string read FCheckBoxCaption write setCheckBoxCaption;
    property ReadOnly:boolean read FReadOnly write setReadOnly;
    property ComboItems:Tstrings read FComboItems write SetComboItems;
    property ComboItemsCount:integer read FComboItemsCount write setComboItemsCount;
    property ComboSortOrder:TSortOrder read FComboSortOrder write setComboSortOrder;
	property ComboBtnVisible:boolean
    		read FComboBtnVisible write setComboBtnVisible;
  end;



 {    TmgdColumns    }
 type
  TmgdColumns = class(TCollection)
  private
    FOwner:TcustomGrid;
    function GetItem(Index: Integer): TmgdColumn;
    procedure SetItem(Index: Integer; Value: TmgdColumn);
  protected
    function GetOwner: TPersistent; override;
//    procedure Update(Item: TCollectionItem); override;
  public
    constructor Create(AOwner: TcustomGrid);
    function Add: TmgdColumn;
    property Owner:TcustomGrid read FOwner;
    property Items[Index: Integer]: TmgdColumn read GetItem write SetItem; default;
  end;



  {   TgridInfo--각 cell의 정보를 가지는 객체    }
type

  TgridInfo=class
    private
    FUseFormat:boolean;
    FNumberKind:TNumberKind;
    FFormatString:string;

    FAlignment: TAlignment;
    FAlignmentV: TAlignmentV;
    FFontStyle: TFontStyles;
    FFontColor: TColor;

    FColor: TColor;
    FCellType: TCellType;
    FCheckBoxCaption:string;
    FReadOnly:boolean;
    FComboItems:Tstrings;
    FComboItemsCount:integer;
    FComboSortOrder:TSortOrder;
	FComboBtnVisible:boolean;


      Fchecked:boolean;
      FGrid:TObject;
      FText:string;
      FObjects:TObject;
      FCol:integer;
      FRow:integer;

    procedure setAlignment(value: TAlignment);
    procedure setAlignmentV(value: TAlignmentV);
    procedure setFontStyle(value: TFontStyles);
    procedure setFontColor(value: TColor);

    procedure setColor(value: TColor);
	procedure setCellType(value: TCellType);
    procedure setCheckBoxCaption(value:string);
    procedure setComboItems(value:Tstrings);
    procedure setComboItemsCount(value:integer);
    procedure setComboBtnVisible(value:boolean);
    procedure setComboSortOrder(value:TsortOrder);

      procedure setChecked(value:boolean);




  public
   property UseFormat:boolean read FUseFormat write FUseFormat;
   property NumberKind:TNumberKind read FNumberKind write FNumberKind;
   property FormatString:String	read FFormatString	write FFormatString;

    property Alignment: TAlignment
    		read FAlignment write seTAlignment;
    property AlignmentV: TAlignmentV
    		read FAlignmentV write setAlignmentV;
    property FontStyle: TFontStyles
    		read FFontStyle write setFontStyle;
    property FontColor: TColor read FFontColor write setFontColor;
    property Color: TColor read FColor write setColor;
    property CellType: TCellType read FCellType write setCellType;
	property CheckBoxCaption:string read FCheckBoxCaption write setCheckBoxCaption;
    property ReadOnly:boolean read FReadOnly write FReadOnly;
    property ComboItems:Tstrings read FComboItems write SetComboItems;
    property ComboItemsCount:integer read FComboItemsCount write setComboItemsCount;
    property ComboSortOrder:TSortOrder read FComboSortOrder write setComboSortOrder;
	property ComboBtnVisible:boolean
    		read FComboBtnVisible write setComboBtnVisible;



     property Checked: boolean read Fchecked write setChecked;
     property Text:string read FText write FText;
     property Objects:TObject read FObjects write FObjects;
     constructor create(Owner:TObject; Acol,Arow:integer);
     destructor destroy;override;
end;





type
{ TmgdListbox--comboBox 에 쓰이는 listBox }

  TmgdListbox = class(TCustomListbox)
  private
//    FSearchText: String;
//    FSearchTickCount: Longint;
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWnd; override;
    procedure KeyPress(var Key: Char); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
	 procedure MouseMove(Shift: TShiftState; X, Y: Integer);override;

  end;




{  Tmgd -- StringGrid를 상속한 GRID }
	TOnCheckedEvent=procedure (sgd:TstringGrid; ACol,ARow:integer; oldValue,newValue:Boolean) of object;

type

  Tmgd = class(TStringGrid)
   private
   	   FFixedColor:TColor;
       FOnDrawCell: TDrawCellEvent;
	   FFixedRowsHeight:integer;
       FFixedColsWidth:integer;
       FcheckSize: integer;

       FtmpHide:boolean;
       FOldEditorMode:boolean;
       FmyGridstate:TGridState;
       tmpH:integer;
	   WordBreakExist:Boolean;

       FpickList:TmgdListBox;
       FListVisible:boolean;
       FddCol:integer;
       FddRow:integer;
       FbuttonWidth:integer;
       FRowResizing:boolean;
       FColumns:TmgdColumns;
       FOnChecked:TOnCheckedEvent;



    	procedure setFixedColor(value:TColor);

       procedure setColumns(value:TmgdColumns);
       procedure setRowResizing(value:boolean);
       function getGridInfo(Acol,Arow:integer):TgridInfo;
       procedure setGridInfo(Acol,Arow:integer; GridInfo:TGridInfo);
       procedure setFRHeight(value:integer);
       procedure setFCWidth(value:integer);
//       procedure stringFill(Sender:Tstrings;value:string);
       procedure objectsFill;
       procedure columnFill;
       procedure dropdown;
       procedure closeup(Accept:Boolean);
	    procedure CMCancelMode(var Message: TCMCancelMode); message CM_CancelMode;
	    procedure WMKillFocus(var Message: TMessage); message WM_KillFocus;

   protected
       procedure ColumnMoved(FromIndex, ToIndex: Longint);override;
       procedure keypress(var Key: Char);override;
		 procedure KeyDown(var Key: Word; Shift: TShiftState);override;
       procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);override;
		 procedure MouseUp(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer); override;
       function canEditshow:boolean;override;
       function SelectCell(Acol,Arow:integer):boolean;override;
       procedure drawCell(ACol, ARow: Longint; ARect: TRect;
      AState: TGridDrawState);override;


//       procedure WndProc(var Message: TMessage);override;
//	    procedure DoDropDownKeys(var Key: Word; Shift: TShiftState);


   public

       property Grid[Acol,Arow:integer]: TgridInfo read getGridInfo write setGridInfo;
       procedure Clear;

//       procedure Check2Col(Acol:integer; value:boolean);
//       procedure Color2Col(Acol:integer; value:TColor);
//       procedure Color2Row(ARow:integer; value:TColor);
       procedure CellCheck(Acol,ARow:integer; value:boolean);
       procedure CellColor(Acol,ARow:integer; value:TColor);
	   procedure CellComboItems(Acol, Arow:integer; value:Tstrings);

       procedure MoveRow(FromIndex, ToIndex:LongInt);
       procedure MoveColumn(FromIndex, ToIndex:LongInt);
       procedure DeleteRow(ARow:LongInt; Really:boolean);
       procedure DeleteColumn(ACol:LongInt; Really:boolean);
       procedure InsertRow(ARow:LongInt; Really:boolean);
       procedure InsertColumn(ACol:LongInt; Really:boolean);

       constructor Create(AOwner:Tcomponent);override;
       destructor Destroy;override;

  published
//  		property Color2:Tcolor read FColor write setColor;
	    property FixedColor:TColor read FFixedColor write setFixedColor;
		property Columns:TmgdColumns read FColumns write setColumns;
       property RowResizing:boolean read FRowResizing write setRowResizing;
       property CheckSize:Integer read FcheckSize write FcheckSize;
       property FixedRowsHeight:integer read FFixedRowsHeight write setFRHeight;
       property FixedColsWidth:integer read FFixedColsWidth write setFCWidth;
       property OnDrawCell: TDrawCellEvent read FOnDrawCell write FOnDrawCell;
       property OnChecked: TOnCheckedEvent read FOnChecked write FOnChecked;

end;



procedure Register;

implementation


procedure Register;
begin
  RegisterComponents('uniHISPACK', [TMgd]);
  //Standard page에 Component를 등록함.
end;


/////////////////////////////////////////////////////
/////////////////////////////////////////////////////
{ TmgdColumns }

constructor TmgdColumns.Create(AOwner: TcustomGrid);
begin
  inherited Create(TmgdColumn);
  FOwner := AOwner;
end;

function TmgdColumns.GetItem(Index: Integer): TmgdColumn;
begin
  Result := TmgdColumn(inherited GetItem(Index));
end;

procedure TmgdColumns.SetItem(Index: Integer; Value: TmgdColumn);
begin
  inherited SetItem(Index, Value);
  Tmgd(FOwner).invalidate;

end;

function TmgdColumns.Add: TmgdColumn;
begin
  Result := TmgdColumn(inherited Add);
end;

function TmgdColumns.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

{
procedure TmgdColumns.Update(Item: TCollectionItem);
begin
 // if Item <> nil then
//    Owner.UpdateColumn(Item.Index) else
  //  Owner.UpdateColumns;
      if count> Tmgd(Owner).colcount then
  	Tmgd(Owner).Colcount:=count;

end;
 }


{   TmgdColumn   }
constructor TmgdColumn.Create(Collection: TCollection);
//var
  //Column: TLVColumn;
  var i:integer;
begin
  inherited Create(Collection);

    FGrid:=TmgdColumns(Collection).owner;
    FCol:=TmgdColumns(Collection).count-1;

//    FTitle:='';
//    FTitleAlignment:=taCenter;
//  	FTitleFontStyle:=[fsBold];
     FUseFormat:=false;
     FNumberKind:=nkFloat;
     FFormatString:='%.0n';


    FAlignment:=taLeftJustify;
    FAlignmentV:=vaTop;
    FFontStyle:=Tmgd(FGrid).font.style;
    FFontColor:=Tmgd(FGrid).font.color;
    FColor:=Tmgd(FGrid).color;

    FCellType:=ctNormal;
    FReadOnly:=false;
    FComboItems:=Tstringlist.create;
    FComboItemsCount:=5;
	FComboBtnVisible:=true;
    FComboSortOrder:=soNone;


//    if  (TmgdColumns(Collection).count> Tmgd(FGrid).colcount) then
//	위와 같이 하면 Invalid property : mgd1.colwidths 라고뜨면서
//	Form을 실행할 수 없게 된다.

    if (TmgdColumns(Collection).count> Tmgd(FGrid).fixedCols) then
	  	Tmgd(FGrid).Colcount:=TmgdColumns(Collection).count;

    for i:=0 to TmgdColumns(Collection).count-1 do begin
//    	grid[i,0].fontstyle:=[fsBold];
    	Tmgd(FGrid).Grid[i,0].Fontstyle:=[fsBold];
        Tmgd(FGrid).Grid[i,0].alignment:=taCenter;
//    	columns[i].readonly:=columns[i].readonly;
  //      columns[i].comboitems.assign(columns[i].comboitems);
    end;


{  FWidth := 50;
  FAlignment := taLeftJustify;
  with Column do
  begin
    mask := LVCF_FMT or LVCF_WIDTH;
    fmt := LVCFMT_LEFT;
    cx := FWidth;
  end;
  ListView_InsertColumn(TmgdColumns(Collection).Owner.Handle, Index, Column);
}
end;



destructor TmgdColumn.Destroy;
begin
//  if TmgdColumns(Collection).Owner.HandleAllocated then
  //  ListView_DeleteColumn(TmgdColumns(Collection).Owner.Handle, Index);

  	if FGrid.HandleAllocated then begin
    	Tmgd(FGrid).Colcount:=TmgdColumns(Collection).count-1;
	end;


  FComboItems.Free;
  inherited Destroy;
end;

procedure TmgdColumn.DefineProperties(Filer: TFiler);
begin
  inherited DefineProperties(Filer);
//  Filer.DefineProperty('WidthType', ReadData, WriteData,
  //  WidthType <= ColumnTextWidth);
end;

procedure TmgdColumn.Assign(Source: TPersistent);
var
  Column: TmgdColumn;
begin
  if Source is TmgdColumn then
  begin
    Column := TmgdColumn(Source);

    FGrid:=Column.FGrid;
	Title:=column.Title;
    TitleAlignment:=column.TitleAlignment;
    TitleFontStyle:=column.TitleFontStyle;

    UseFormat:=column.UseFormat;
    NumberKind:=column.numberKind;
    FormatString:=column.FormatString;


    Alignment:=column.Alignment;
    AlignmentV:=column.AlignmentV;
    FontStyle:=column.FontStyle;
    FontColor:=column.FontColor;

    color:=column.Color;

    CellType:=column.CellType;
    checkBoxCaption:=column.checkboxcaption;
    ReadOnly:=column.ReadOnly;

//    ComboItems:=column.ComboItems;
      comboItems.Assign(column.comboItems);
    ComboItemsCount:=column.ComboItemscount;
	ComboBtnVisible:=column.ComboBtnVisible;
    ComboSortOrder:=column.ComboSortOrder;

  end
  else inherited Assign(Source);
end;

function TmgdColumn.GetDisplayName: string;
begin
  Result := Title;
  if Result = '' then Result := inherited GetDisplayName;
end;

function TmgdColumn.getTitle:string;
begin
   	result:=Tmgd(FGrid).cells[FCol,0];
end;

function TmgdColumn.getTitleAlignment:TAlignment;
begin
   	result:=Tmgd(FGrid).grid[FCol,0].alignment;
end;

function TmgdColumn.getTitleFontStyle:TFontStyles;
begin
   	result:=Tmgd(FGrid).grid[FCol,0].fontStyle;
end;



procedure TmgdColumn.setTitle(value:string);
var i:integer;
begin
{	if Ftitle=value then exit;
	FTitle:=value;
    FGrid.Invalidate;
 }
    with Tmgd(FGrid) do begin
    	cells[FCol,0]:=value;
    	Invalidate;
    end ;

end;


procedure TmgdColumn.setTitleAlignment(value:TAlignment);
begin
{	if FTitleAlignment=value then exit;
	FTitleAlignment:=value;
    FGrid.invalidate;
}
    with Tmgd(FGrid) do begin
    	grid[FCol,0].alignment:=value;
    end ;

end;


procedure TmgdColumn.setTitleFontStyle(value:TFontStyles);
begin
{	if FTitleFontStyle=value then exit;
  	FTitleFontStyle:=value;
    FGrid.invalidate;
}
    with Tmgd(FGrid) do begin
    	grid[FCol,0].fontStyle:=value;
    end ;

end;


procedure TmgdColumn.setUseFormat(value:Boolean);
var i:integer;
begin
	FUseFormat:=value;

    with Tmgd(FGrid) do begin
        for i:=0 to rowcount-1 do
            grid[FCol,i].UseFormat:=value;
    end ;

end;

procedure TmgdColumn.setFormatString(Value:String);
var i:integer;
begin
	FFormatString:=value;

    with Tmgd(FGrid) do begin
        for i:=0 to rowcount-1 do
            grid[FCol,i].FormatString:=value;
    end ;
end;

procedure TmgdColumn.setNumberKind(value:TNumberKind);
var i:integer;
begin
	FNumberKind:=value;

    with Tmgd(FGrid) do begin
        for i:=0 to rowcount-1 do
            grid[FCol,i].NumberKind:=value;
    end ;
end;



procedure TmgdColumn.setAlignment(value: TAlignment);
var i:integer;
begin
//	if FAlignment=value then exit;
	FAlignment:=value;

    with Tmgd(FGrid) do begin
        for i:=0 to rowcount-1 do
            grid[FCol,i].alignment:=value;
    end ;

    //FGrid.invalidate;
end;

procedure TmgdColumn.setAlignmentV(value: TAlignmentV);
var i:integer;
begin
//	if FAlignmentV=value then exit;
	FAlignmentV:=value;

    with Tmgd(FGrid) do begin
        for i:=0 to rowcount-1 do
            grid[FCol,i].alignmentV:=value;
    end ;

  //  FGrid.invalidate;
end;

procedure TmgdColumn.setFontStyle(value: TFontStyles);
var i:integer;
begin
//	if FFontStyle=value then exit;
	FFontStyle:=value;

    with Tmgd(FGrid) do begin
        for i:=0 to rowcount-1 do
            grid[FCol,i].FontStyle:=value;
    end ;

    //FGrid.invalidate;
end;

procedure TmgdColumn.setFontColor(value: TColor);
var i:integer;
begin
//	if FFontColor=value then exit;
	FFontColor:=value;

    with Tmgd(FGrid) do begin
        for i:=0 to rowcount-1 do
            grid[FCol,i].Fontcolor:=value;
    end ;

  //  FGrid.invalidate;
end;

procedure TmgdColumn.setColor(value: TColor);
var i:integer;
begin
//	if FColor=value then exit;
	FColor:=value;

    with Tmgd(FGrid) do begin
        for i:=0 to rowcount-1 do
            grid[FCol,i].color:=value;
    end ;

//    FGrid.invalidate;
end;



procedure TmgdColumn.setCellType(value: TCellType);
var i:integer;
begin
//	if FCellType=value then exit;
	FCellType:=value;

    with Tmgd(FGrid) do begin
        for i:=0 to rowcount-1 do
            grid[FCol,i].CellType:=value;
    end ;

//    FGrid.invalidate;
end;

procedure TmgdColumn.setCheckBoxCaption(value:string);
var i:integer;
begin
//	if FCheckBoxCaption=value then exit;
    FCheckBoxCaption:=value;

    with Tmgd(FGrid) do begin
        for i:=0 to rowcount-1 do
            grid[FCol,i].checkboxcaption:=value;
    end ;

 //   FGrid.invalidate;
end;

procedure TmgdColumn.setComboItems(value:Tstrings);
var i,j:integer;
begin
//	if FComboItems=value then exit;
	FComboItems.Assign(value);


    with Tmgd(FGrid) do begin
        for i:=0 to rowcount-1 do begin
            grid[FCol,i].comboItems.assign(value);
        end;
   end ;

end;

procedure TmgdColumn.setComboItemsCount(value:integer);
var i:integer;
begin
//	if (FComboItemsCount=value)
  //  	or (FComboItemsCount<=0) then exit;
     if (FComboItemsCount<=0) then exit;
	FComboItemsCount:=value;

    with Tmgd(FGrid) do begin
        for i:=0 to rowcount-1 do
            grid[FCol,i].comboItemsCount:=value;
    end ;

end;

procedure TmgdColumn.setComboBtnVisible(value:boolean);
var i:integer;
begin
//	if FComboBtnVisible=value then exit;
	FComboBtnVisible:=value;

    with Tmgd(FGrid) do begin
        for i:=0 to rowcount-1 do
            grid[FCol,i].comboBtnVisible:=value;
    end ;

//    FGrid.invalidate;
end;


procedure TmgdColumn.setComboSortOrder(value:TsortOrder);
var i:integer;
begin
//	if FComboBtnVisible=value then exit;
	FcomboSortOrder:=value;

    with Tmgd(FGrid) do begin
        for i:=0 to rowcount-1 do
            grid[FCol,i].comboSortOrder:=value;
    end ;

//    FGrid.invalidate;
end;


procedure TmgdColumn.setReadonly(value:boolean);
var i:integer;
begin
	FReadOnly:=value;

    with Tmgd(FGrid) do begin
        for i:=0 to rowcount-1 do
            grid[FCol,i].readonly:=value;
    end ;

end;




/////////////////////////////////////////////////////
/////////////////////////////////////////////////////





{   TmgdListBox--ComboBox에 대한 함수들  }


procedure TmgdListBox.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
  begin
    Style := Style or WS_BORDER;
    ExStyle := WS_EX_TOOLWINDOW or WS_EX_TOPMOST;
    WindowClass.Style := CS_SAVEBITS;
  end;
end;

procedure TmgdListbox.CreateWnd;
begin
  inherited CreateWnd;
  Windows.SetParent(Handle, 0);
  CallWindowProc(DefWndProc, Handle, wm_SetFocus, 0, 0);
end;

procedure TmgdListbox.Keypress(var Key: Char);
//var  TickCount: Integer;
begin				//Combo창에서 Keyboard가 눌렸을 때 Cell에 저장-but 사용하지 않음.
{  case Key of
    #8, #27: FSearchText := '';
    #32..#255:
      begin
        TickCount := GetTickCount;
        if TickCount - FSearchTickCount > 2000 then FSearchText := '';
        FSearchTickCount := TickCount;
        if Length(FSearchText) < 32 then FSearchText := FSearchText + Key;
        SendMessage(Handle, LB_SelectString, WORD(-1), Longint(PChar(FSearchText)));
        Key := #0;
        with Tmgd(Owner) do begin
//        	cells[col,row]:=items[selectedItem];
        end;
      end;
  end;
 }
  inherited Keypress(Key);
end;



procedure TmgdListbox.MouseUp(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited MouseUp(Button, Shift, X, Y);

  Tmgd(Owner).CloseUp((X >= 0) and (Y >= 0) and
      (X < Width) and (Y < Height));
end;



procedure TmgdlistBox.MouseMove(Shift: TShiftState; X, Y: Integer);
var
  MousePos: TSmallPoint;
begin
	SetCapture(Handle);  //** MouseCapture함수를 사용하면 안됨.

   if not ptInRect(ClientRect,Point(x,y)) then ReleaseCapture;
    //ScrollBar는 client영역에 속하지 않으므로 ReleaseCapture된다.


   MousePos := PointToSmallPoint(Point(x,y));
   SendMessage(Handle, WM_LBUTTONDOWN, 0, Integer(MousePos));

	inherited MouseMove(Shift, X, Y);
end;

{    Tmgd에 대한 Implementation  }


constructor Tmgd.create(AOwner:Tcomponent);
var i, j:integer;
begin
     inherited create(AOwner);
     FColumns:=TmgdColumns.Create(self);

//     FColor:=Color;
	 FFixedColor:=clBtnFace;
     FtmpHide:=false;
     FOldEditormode:=editormode;
	  FmyGridstate:=gsNormal;

     FRowResizing:=false;
     FcheckSize:=15;
     DefaultColWidth:=64;
     DefaultRowHeight:=22;
     FFixedRowsHeight:=20;
     FFixedColsWidth:=40;
     colwidths[0]:=40;
     FButtonWidth:=18;
     Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine,
    goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing];

     tmpH:=DefaultRowHeight-2;
     WordBreakExist:=False;

//    objectsFill;
  //	for i:=columns.Count+1 to colCount do columns.Add;
  	columnFill;




  //   for i:=0 to colcount-1 do
//         columns[i].celltype :=ctcheckbox;

//    stringFill(FColType,'N');
end;


destructor Tmgd.Destroy;
begin

    FPicklist.Free;
	FColumns.free;
    FColumns:=nil;

     inherited Destroy;

end;


{   ComboBox 구현하는 함수들       }

procedure Tmgd.CMCancelMode(var Message: TCMCancelMode);
begin
  if (Message.Sender <> Self) and (Message.Sender <> FpickList) then
    CloseUp(False);
end;


procedure Tmgd.WMKillFocus(var Message: TMessage);
begin
  inherited;
  CloseUp(False);
end;




procedure Tmgd.closeup(Accept:Boolean);
var
   ListValue: Variant;
begin
  if FListVisible then
  begin
    ReleaseCapture;

    SetWindowPos(Fpicklist.Handle, 0, 0, 0, 0, 0, SWP_NOZORDER or
      SWP_NOMOVE or SWP_NOSIZE or SWP_NOACTIVATE or SWP_HIDEWINDOW);

    FListVisible := False;
//    Invalidate;
	invalidatecell(FddCol,FddRow);

  try
    if Accept  then begin
        if FPickList.ItemIndex > -1 then
           ListValue := FPickList.Items[FPicklist.ItemIndex];

         if not VarIsNull(ListValue) then
            cells[FddCol,FddRow]:=listvalue;
    end;
  except
//     showmessage('영역에서 벗어났습니다.');
  end;
  end;
end;


procedure Tmgd.dropdown;
var
  P: TPoint;
  I,J,Y: Integer;
  R: TRect;
  tmpItems:Tstrings;
	cell_ComboItemsCount:integer;
    cell_ComboSortOrder:TSortOrder;
begin
	columnFill;

   if Col>Columns.Count-1 then begin
        cell_ComboItemsCount:=5;
		cell_comboSortOrder:=soNone;
   end else begin
        cell_ComboItemsCount:=grid[FddCol,Fddrow].ComboItemsCount;
        cell_ComboSortOrder:=grid[FddCol,Fddrow].ComboSortOrder;
   end;



	if FpickList=nil then begin
     	  FpickList := TmgdListbox.Create(Self);
		  Fpicklist.Visible := False;
		  FpickList.Parent := Self;
          FpickList.MultiSelect:=false;
    end;

  if not FListVisible and Assigned(FpickList) then
  begin
      FPickList.Color := clWhite;
      FPickList.Font := Font;
      FpickList.Font.Size:=FPickList.Font.Size+1;
      FPickList.sorted:=False;

{      if FComboItemsInherit then begin
      	 FPickList.Items:=grid[FddCol,0].items;
      end else begin
	       FPickList.Items := grid[FddCol,FddRow].items;
      end;
 }
// 	FPickList.items:=cell_ComboItems;
	FPickList.items:=grid[FddCol,Fddrow].ComboItems;

      if FPickList.Items.Count >= cell_ComboItemsCount then
        FPickList.Height := cell_ComboItemsCount * FPickList.ItemHeight+2
      else if FPickList.Items.Count=0 then
      	FPickList.Height:=FPickList.ItemHeight-2
      else
      	FPickList.Height := FPickList.Items.Count * FPickList.ItemHeight+2 ;

      //***** ComboBox내용의 Sort에 관한 Routine임.

      case  cell_ComboSortOrder of
      	 soAscending:  FpickList.Sorted:=true;
         soDescending:
         	begin
            	FpickList.sorted:=true;
                tmpItems:=Tstringlist.Create;

                for i:=0 to FpickList.Items.Count-1 do
                      tmpItems.Add(FpickList.Items[i]);

               j:=tmpItems.count-1;
                for  i:=0 to j do
                	FpickList.items[i]:=tmpItems[j-i];

                tmpItems.Free;

            end;
      end;


      if FPickList.Items.Count>0 then begin
         FPickList.ItemIndex := FPickList.Items.IndexOf(cells[FddCol,FddRow]);
      end else  FPickList.ItemIndex :=-1;

      J:=ColWidths[FddCol];
      for I := 0 to FPickList.Items.Count - 1 do
      begin
        Y :=Trunc( FPickList.Canvas.TextWidth(FPickList.Items[I])*((-Font.Height/10)));
        if Y > J then J := Y;
      end;

      FPickList.ClientWidth := J;

	  R:=cellRect(FddCol,FddRow);
      P :=ClientToScreen(Point(R.Left, R.Top));

    Y := P.Y + (R.Bottom-R.Top);

    if Y + FpickList.Height > Screen.Height then Y := P.Y - FpickList.Height;
    SetWindowPos(FpickList.Handle, HWND_TOP, P.X, Y, 0, 0,
      SWP_NOSIZE or SWP_NOACTIVATE or SWP_SHOWWINDOW);
    FListVisible := True;
//    Invalidate;
	InvalidateCell(FddCol,FddRow);
    Windows.SetFocus(Handle);
  end;

//  cell_comboItems.Free;

end;


procedure Tmgd.MouseUp(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
begin

	inherited mouseup(Button,shift,x,y);
 { ********** Fixed Rows를 Resizing하기위한 루틴
   if (FmyGridState=gsColSizing) and (x>0) then  colwidths[0]:=x;
   if  (FmyGridState=gsRowSizing) and (y>0) then   RowHeights[0]:=y;

   FmyGridState:=gsNormal;
 }
end;


procedure Tmgd.MouseDown(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
var Acol,Arow:integer;
    closedCol,closedRow:integer;
    cell_CellType:TCellType;
	cell_readOnly:boolean;
    R:TRect;
begin
	closedCol:=-1;
    closedRow:=-1;

     mousetocell(x,y,Acol,Arow);

//     stringFill(FColType,'N');

     //-----ComboBox를 열고 닫기 위한 루틴-----
     if FlistVisible then begin
     	closeup(false);
        closedCol:=FddCol;
        closedRow:=FddRow;
     end;

     if (Acol<0) or (ARow<0) then begin
   		inherited MouseDown(Button,shift,x,y);
         exit;
     end;

//     objectsFill;
	columnFill;

{   if ACol>Columns.Count-1 then begin
        cell_CellType:=ctNormal;
        cell_readOnly:=false;
   end else begin
 }       cell_CellType:=grid[ACol,Arow].CellType;
        cell_readOnly:=grid[ACol,Arow].readOnly;
  // end;


{   //-------Fixed영역을 Sizing하기 위한 기능--- Start--//
  	if (fixedcols>0) and (X>=ColWidths[0]-1)
		and (X<=ColWidths[0]+gridLineWidth+1) then begin
     	FMyGridState:=gsColSizing;
   end;

	if (fixedrows>0) and (Y>=RowHeights[0]-1)
		and (Y<=RowHeights[0]+gridLineWidth+1) then begin
      FMyGridState:=gsRowSizing;
	end;
   //-------Fixed영역을 Sizing하기 위한 기능--End-//
 }


   inherited mousedown(button,shift,x,y);

   	if (Acol<fixedcols) and (Arow<fixedrows) then exit;


   //-------CellType이 (checKbox),(readOnly), (comBobox)이면
   //-------Editing 할 수 없게 함.

   	case cell_CellType of
    	ctNormal:
       	if cell_readOnly then editormode:=false;

	   	ctCheckBox:
        begin
       		if not cell_readOnly then
	       		grid[Acol,Arow].checked:=not grid[Acol,Arow].checked;

           	editormode:=false;
   	    end;

       	ctComboBox:
	    begin
        	R:=cellRect(ACol,ARow);
       	    R.Right:=R.Right-FButtonWidth;
       		if not ptInRect(R,Point(x,y)) then begin
	       		  editormode:=false;

    	       	 if (Acol<>closedCol) or (Arow<>closedRow) then begin
   	    	    		FddCol:=ACol;
         			    FddRow:=ARow;
      	      		  	DropDown;
	             end;
  			end;

			if cell_readOnly then
	            editormode:=false;

	    end;
   end;

end;



procedure Tmgd.KeyDown(var Key: Word; Shift: TShiftState);
var cell_CellType:TCellType;
begin					//---필요없는 루틴임
	if not FListVisible then begin
		columnFill;
   	{	if Col>Columns.Count-1 then begin
        	cell_CellType:=ctNormal;
	   end else begin
     }	    cell_CellType:=grid[Col,row].CellType;
	  // end;

       if cell_CellType=ctComboBox then
            editormode:=false;

    	inherited KeyDown(Key,Shift);
        exit;
    end;

   with FPickList do begin
	   case  Key of
	   		VK_DOWN: ItemIndex:=ItemIndex+1;
		    VK_UP: if ItemIndex>0 then ItemIndex:=ItemIndex-1;
	   end;
    end;

end;


procedure Tmgd.KeyPress(var Key: Char);
var closedCol,ClosedRow:integer;
    cell_CellType:TCellType;
	cell_readOnly:boolean;
begin
	closedCol:=-1;
    closedRow:=-1;

//     stringFill(FColType,'N');
    // objectsFill;
	columnFill;

{   if Col>Columns.Count-1 then begin
        cell_CellType:=ctNormal;
        cell_readOnly:=false;
   end else begin
 }       cell_CellType:=grid[Col,row].CellType;
        cell_readOnly:=grid[Col,row].readOnly;
  // end;


     {----CellType이 N(Normal)이면 정상의 KeyEvent를 수행하고
      ----그렇지 않은 경우에는 KeyEvent를 수행하지 않음.}

    if FlistVisible then begin
    	if Key=#13 then closeUp(True)
        else  closeup(false);
    	 closedCol:=FddCol;
	     closedRow:=FddRow;
   end;


   case cell_CellType of
   		ctNormal:
        if cell_readOnly then begin
        	editormode:=false;
			if Assigned(OnKeyPress) then
			    OnkeyPress(self, Key);
            key:=#0;
            exit;
        end;

  		ctCheckBox:
        begin
        	 if (key=#13) and not cell_ReadOnly then begin
      			grid[col,row].checked:=not grid[col,row].checked;
           		drawCell(col,row,cellrect(col,row),[gdSelected]);
	          end;
    	      editormode:=false;
      	end;

		ctComboBox:
        begin
      	    if (key=#13) and (editormode=false) and
          	((Col<>closedCol) or (Row<>closedRow)) then begin
	   	       	FddCol:=Col;
    	        FddRow:=Row;
         	    DropDown;
  			end;

            if cell_readOnly then
            	editormode:=false;
  		end;
   end;


  	inherited Keypress(key);


end;


function Tmgd.SelectCell(ACol, ARow: Longint): Boolean;
begin
		//----필요없는 루틴임.
     result:=inherited selectcell(Acol,Arow);
end;


//**********EditorMode가 True인 경우
//** ColType이 K, B, O인 경우에는 EditorMode를 False로 Setting

function Tmgd.canEditshow:boolean;
var cell_CellType:TCellType;
    cell_ReadOnly:boolean;
begin

     if (col<0) or (col>=colcount) then begin
          result:=inherited canEditshow;
          exit;
     end;

//     stringFill(FColType,'N');
	columnFill;
{   if Col>Columns.Count-1 then begin
        cell_CellType:=ctNormal;
        cell_readOnly:=false;
   end else begin
 }       cell_CellType:=grid[Col,row].CellType;
        cell_readOnly:=grid[Col,row].readOnly;
  // end;


   	if (cell_CellType=ctNormal) and (not cell_ReadOnly) then begin
	      if FtmpHide then begin
            FtmpHide:=false;
            editormode:=FOldEditorMode;
          end;

         result:=inherited canEditshow;

    end else begin
         result:=false;
         if (cell_CellType=ctComboBox) and (not cell_readOnly) then
         	result:=inherited canEditShow;

         if not FtmpHide then begin
           FOldEditorMode:=editormode;
           editormode:=false;
           FtmpHide:=true;
         end;
     end;
end;


//********* 하나 하나의 Cell을 그리는 루틴*********//

procedure Tmgd.drawCell(ACol, ARow: Longint; ARect: TRect;
      AState: TGridDrawState);
var
  DrawState: Integer;
  DrawRect: TRect;
  hAlign:TAlignment;
  vAlign:TAlignmentV;
  uFormat:uint;
  S:string;
  H:integer;
   		cell_title:string;
        cell_titlefontstyle:TFontStyles;
        cell_TitleAlignment:TAlignment;

        cell_fontstyle:TFontStyles;
        cell_fontcolor:TColor;
        cell_Alignment:TAlignment;
        cell_AlignmentV:TAlignmentV;
        cell_CellType:TCellType;
        cell_ComboBtnVisible:boolean;
        cell_CheckBoxCaption:string;
        cell_color:Tcolor;

begin

//   objectsFill;
	columnFill;
   H:=1;

{
   if ACol>Columns.Count-1 then begin
   	  //	cell_title:='';
        cell_titlefontstyle:=[fsBold];
        cell_fontstyle:=font.style;
        cell_fontcolor:=font.color;
//        cell_TitleAlignment:=taCenter;
  //      cell_Alignment:=taLeftJustify;
        cell_AlignmentV:=vaTop;
        cell_CellType:=ctNormal;
        cell_ComboBtnVisible:=true;
        cell_CheckBoxCaption:='';
        cell_color:=color;
   end else begin
   	cell_title:=columns[Acol].Title;
        cell_titleFontStyle:=columns[ACol].titleFontStyle;
        cell_TitleAlignment:=columns[ACol].TitleAlignment;
 }
        cell_fontStyle:=grid[ACol,Arow].fontstyle;
        cell_fontColor:=grid[ACol,Arow].fontColor;
        cell_Alignment:=grid[ACol,Arow].Alignment;
        cell_AlignmentV:=grid[ACol,Arow].AlignmentV;
        cell_CellType:=grid[ACol,Arow].CellType;
        cell_ComboBtnVisible:=grid[ACol,Arow].ComboBtnVisible;
        cell_CheckBoxCaption:=grid[ACol,Arow].checkBoxCaption;
        cell_color:=grid[Acol,Arow].color;
  { end;

 }

//   if (Arow=0) and (FixedRows>0) then begin
  //		S:=cell_title;
//   end else
		S:=cells[Acol,Arow];


	if grid[ACol,ARow].UseFormat and (S<>'') and (Arow>=fixedRows) then begin
    	try
        	if (grid[ACol,ARow].NumberKind=nkInteger) then
				S:=format(grid[ACol,ARow].FormatString,[strToInt(S)])
            else
            	S:=format(grid[ACol,ARow].FormatString,[strTofloat(S)]);

    	except
    	   //	showmessage('format을 잘못 사용하였거나'+#13
        	 //	+ '숫자값이 아닌 값이 cell에 있는지 확인하십시오');
        end;
    end;


  //fontcolor와 fontstyle을 설정한다.

//	if (ARow<fixedRows) then begin
  //  	canvas.Font.Style:=cell_TitlefontStyle;
//    end else begin
//    	if not (gdselected in Astate) then
		if not (gdselected in Astate) or (cell_fontColor<>clWindowText) then
	  		canvas.Font.color:=cell_fontcolor;

    	canvas.Font.Style:=cell_fontStyle;
//    end;

//   if (Acol<fixedCols) or  (Arow<fixedRows) then begin
  if (gdFixed in Astate) and Ctl3D then begin
   	   canvas.brush.color:=FFixedColor;
       canvas.FillRect(ARect);
//       DrawEdge(Canvas.Handle, ARect, BDR_RAISEDOUTER,BF_TOPLEFT or BF_BOTTOMRIGHT );
   end else if  not (gdselected in Astate)
      and (objects[Acol,Arow]<>nil)
      and (objects[Acol,Arow] is TgridInfo) then begin
      canvas.brush.color:=cell_color;
      canvas.FillRect(Arect);   //grid.color로 cell을 채운다.

   end;

//  if defaultdrawing then begin
  //default drawing이 True이면******  Text 쓰기 시작********


    if Arow<fixedrows then begin   //고정열일때
  //	 	hAlign:=cell_TitleAlignment;
        vAlign:=vaWordBreak;
    end else begin
//   		hAlign:=cell_Alignment;
        vAlign:=cell_AlignmentV;
    end;

    hAlign:=cell_Alignment;

	  case hAlign of
         taLeftJustify: uFormat:=DT_LEFT;
         taCenter  : uFormat:=DT_CENTER;
         taRightJustify: uFormat:=DT_RIGHT;
      end;

      case vAlign of
       	 vaTop,vaWordBreak: uFormat:=uFormat+DT_TOP;
         vaCenter: uFormat:=uFormat+DT_VCENTER;
         vaBottom: uFormat:=uFormat+DT_BOTTOM;
      end;

       if (ARow<fixedRows) or (vAlign=vaWordBreak) then begin
       		uFormat:=uFormat + DT_WORDBREAK;
            WordBreakExist:=True;
       end else begin
			uFormat:=uFormat + DT_SINGLELINE;
       end;
				//고정열일때는 word break를 한다.
       DrawRect.Left:=Arect.left+2;
       DrawRect.Right:=Arect.Right-2;
       DrawRect.Top:=Arect.Top+2;

       if (Arow<FixedRows) or (vAlign=vaWordBreak) then begin
	       DrawRect.Bottom:=Arect.Top+(-Canvas.Font.Height)*50;
       end else begin
	       DrawRect.Bottom:=Arect.Bottom-2;
       end;

       		// Bottom은 최대의 크기로 잡아야 한다.
       if (ARow<FixedRows) or (cell_CellType<>ctCheckBox) then begin
           H:=DrawText(Canvas.Handle,PChar(S),Length(S),DrawRect, uFormat);
       end;

       if H > tmpH then tmpH:=H;

       if (ARect.Right>clientwidth) or (ACol=ColCount-1) then begin
            if tmpH>DrawRect.Bottom then tmpH:=DrawRect.Bottom;
     		if (WordBreakExist and RowResizing)
            	or (csDesigning in ComponentState)and(ARow<FixedRows) then begin
            	RowHeights[ARow]:=tmpH+2;
  			end;
            tmpH:=DefaultRowHeight-2;
            WordBreakExist:=False;
       end;



  //end;         //Default Drawing 끝******  Text 쓰기 끝***********



   //********************* check Box그리기 시작*****************//


	if (cell_CellType=ctCheckBox) and 	//checkBox일때
     (Acol>=fixedcols) and (Arow>=fixedrows)  then begin


          case grid[Acol,Arow].checked of
               true:
                    DrawState := DFCS_BUTTONCHECK or DFCS_CHECKED;
               false:
                     DrawState := DFCS_BUTTONCHECK;
          end;

          S:=cell_checkBoxCaption;
          if S= '' then
	          DrawRect.Left := ARect.Left + (ARect.Right - ARect.Left-FcheckSize) div 2
          else  begin
          	  DrawRect.Left := ARect.Left+FCheckSize+10;
              DrawText(Canvas.Handle,PChar(S),Length(S),DrawRect, DT_SINGLELINE+DT_VCENTER+DT_LEFT);
              DrawRect.Left:=  ARect.Left+5;
          end;

          DrawRect.Top := ARect.Top + (ARect.Bottom - ARect.Top - FCheckSize) div 2;
          DrawRect.Right := DrawRect.Left + FCheckSize;
          DrawRect.Bottom := DrawRect.Top + FCheckSize;

          DrawFrameControl( Canvas.Handle, DrawRect, DFC_BUTTON,DrawState);



   end;
//********************* check Box그리기 끝*****************//

	if (cell_CellType=ctComboBox) and cell_ComboBtnVisible and //comboBox일 때
     (Acol>=fixedcols) and (Arow>=fixedrows)  then begin
		DrawRect.left:=Arect.Right-FButtonWidth;
   		DrawRect.right:=Arect.Right;
		DrawRect.Top:=Arect.Top;
   		DrawRect.Bottom:=Arect.Bottom;

		DrawState := DFCS_SCROLLCOMBOBOX;

       	if FListVisible and (FddCol=ACol) and (FddRow=ARow) then
              DrawState := DFCS_SCROLLCOMBOBOX or DFCS_FLAT or DFCS_PUSHED;

	    DrawFrameControl(Canvas.Handle, DrawRect, DFC_SCROLL, DrawState);
	end;

  //  ON DrawCell Event 시작
  if Assigned(FOnDrawCell) then
    FOnDrawCell(Self, ACol, ARow, ARect, AState);

end;



{***************************************************}
{				CustomGrid(protected)에서 상속받은 함수들          }
{***************************************************}

procedure Tmgd.setRowResizing(value:boolean);
begin
	FRowResizing:=value;
    if value=true then invalidate;
end;


procedure Tmgd.Clear;
var i,j:integer;
begin
	for i:=0 to colcount-1 do begin
    	for j:=fixedRows to rowcount-1 do begin
        	cells[i,j]:='';
            grid[i,j].checked:=false;
//            if all then  grid[i,j]:=TgridInfo.create(self,i,j);
        end;
    end;
end;


procedure Tmgd.moveRow(FromIndex, ToIndex:LongInt);
begin
	if (FromIndex<0) or (FromIndex>=RowCount) then begin
//		showmessage('FromIndex['+inttostr(FromIndex)+']는 범위밖이므로 이동할 수 없습니다.');
	    exit;
    end;
    if	(ToIndex<0) or (ToIndex>=RowCount)   then begin
//    	showmessage('ToIndex['+inttostr(ToIndex)+']는 범위밖이므로 이동할 수 없습니다.');
	    exit;
    end;

     inherited moveRow(FromIndex,ToIndex);
end;


procedure Tmgd.moveColumn(FromIndex, ToIndex:LongInt);
begin
	if (FromIndex<0) or (FromIndex>=ColCount) then begin
//		showmessage('FromIndex['+inttostr(FromIndex)+']는 범위밖이므로 이동할 수 없습니다.');
	    exit;
    end;
    if	(ToIndex<0) or (ToIndex>=ColCount)   then begin
//    	showmessage('ToIndex['+inttostr(ToIndex)+']는 범위밖이므로 이동할 수 없습니다.');
	    exit;
    end;

     inherited moveColumn(FromIndex,ToIndex);

end;


procedure Tmgd.deleteRow(ARow:LongInt; Really:boolean);
var i:integer;
begin
	if (ARow<0) or (ARow>=Rowcount) then begin
//    	showmessage('Row['+inttostr(ARow)+']는 범위밖이므로 삭제할 수 없습니다.');
	    exit;
    end;

    if Really then begin
    	for i:=0 to ColCount-1 do begin
          cells[i,ARow]:='';
          grid[i,ARow]:=TgridInfo.create(self,i,Arow);
        end;
    end;

     inherited deleteRow(ARow);

end;


procedure Tmgd.deleteColumn(ACol:LongInt; Really:boolean);
var j:integer;
begin
	if (ACol<0) or (ACol>=ColCount) then begin
//    	showmessage('Col['+inttostr(ACol)+']는 범위밖이므로 삭제할 수 없습니다.');
	    exit;
    end;

    if Really then begin
    	for j:=0 to RowCount-1 do begin
          cells[ACol, j]:='';
          grid[Acol,j]:=TgridInfo.create(self,Acol,j);
        end;
    end;

     inherited deleteColumn(ACol);

     if ACol<columns.Count then
	     columns[Acol].Destroy;

end;


procedure Tmgd.insertRow(ARow:LongInt; Really:boolean);
var i:integer;
begin

    RowCount:=RowCount+1;

    if Really then begin
    	for i:=0 to ColCount-1 do begin
          cells[i,RowCount-1]:='';
          grid[i,RowCount-1]:=TgridInfo.create(self,i,Rowcount-1);
        end;
    end;

	if ARow<0 then
        moveRow(RowCount-1,0)
    else if (Arow>=0) and (Arow<rowCount-1) then
        moveRow(RowCount-1,ARow);

end;


procedure Tmgd.insertColumn(ACol:LongInt; Really:boolean);
var j:integer;
begin
	if ACol<0 then ACol:=0;
    if ACol>=Colcount then ACol:=Colcount-1;

{	if (ACol<0) or (ACol>=ColCount) then begin
    	showmessage('Col['+inttostr(ACol)+']는 범위밖이므로 삽입할 수 없습니다.');
	    exit;
    end;
 }
//   	for j:=columns.Count+1 to colCount do columns.Add;
	columnFill;

    ColCount:=ColCount+1;

    if Really then begin
    	for j:=0 to RowCount-1 do begin
          cells[ColCount-1, j]:='';
          grid[ColCount-1,j]:=TgridInfo.create(self,ColCount-1,j);
        end;
    end;

	moveColumn(ColCount-1,ACol);

//    columns.Add;
//    columns[columns.Count-1].index:=ACol;
end;




{***************************************************}
{			 Property와 관계된 Procedure들 }
{***************************************************}

procedure Tmgd.CellCheck(Acol, Arow:integer; value:boolean);
var i:integer;
begin
{	if ((Acol<0) and (ARow<0)) or ((Acol>=colcount)and (Arow>=rowcount)) then begin
   	showmessage('Cell['+inttostr(Acol)+','+inttostr(Arow)+']는 check를 지정할 범위에서 벗어납니다.');
      exit;
   end;
 }
//  if (Arow<0) and (Acol>=0) and (Acol<colcount) then begin
  if (Arow<0) and (Acol>=0) then begin
      for i:=fixedRows to rowcount-1 do begin
      	grid[Acol,i].checked:=value;
      end;
      exit;
   end;

//   if (Acol<0) and (Arow>=0) and (Arow<rowcount) then begin
   if (Acol<0) and (Arow>=0) then begin
      for i:=fixedcols to colcount-1 do begin
      	grid[i,Arow].checked:=value;
      end;
      exit;
   end;

//   if (Arow>=0) and (ARow<rowcount) and (Acol>=0) and (Acol<colcount) then begin
   if (Arow>=0) and (Acol>=0) then begin
     	grid[Acol,Arow].checked:=value;
        exit;
   end;

//	showmessage('Cell['+inttostr(Acol)+','+inttostr(Arow)+']는 check를 지정할 범위에서 벗어납니다.');

end;


procedure Tmgd.CellColor(Acol, Arow:integer; value:Tcolor);
var i:integer;
begin
{	if ((Acol<0) and (ARow<0)) or ((Acol>=colcount)and (Arow>=rowcount)) then begin
   	showmessage('Cell['+inttostr(Acol)+','+inttostr(Arow)+']는 check를 지정할 범위에서 벗어납니다.');
      exit;
   end;
 }
//  if (Arow<0) and (Acol>=0) and (Acol<colcount) then begin
  if (Arow<0) and (Acol>=0) then begin
      for i:=fixedRows to rowcount-1 do begin
      	grid[Acol,i].color:=value;
      end;
      exit;
   end;

//   if (Acol<0) and (Arow>=0) and (Arow<rowcount) then begin
   if (Acol<0) and (Arow>=0) then begin
      for i:=fixedcols to colcount-1 do begin
      	grid[i,Arow].color:=value;
      end;
      exit;
   end;

//   if (Arow>=0) and (ARow<rowcount) and (Acol>=0) and (Acol<colcount) then begin
   if (Arow>=0) and (Acol>=0) then begin
     	grid[Acol,Arow].color:=value;
        exit;
   end;

//	showmessage('Cell['+inttostr(Acol)+','+inttostr(Arow)+']는 color를 지정할 범위에서 벗어납니다.');



end;


procedure Tmgd.CellComboItems(Acol, Arow:integer; value:Tstrings);
var i:integer;
begin
  if (Arow<0) and (Acol>=0) then begin
      for i:=fixedRows to rowcount-1 do begin
      	grid[Acol,i].comboItems.assign(value);
      end;
      exit;
   end;

   if (Acol<0) and (Arow>=0) then begin
      for i:=fixedcols to colcount-1 do begin
      	grid[i,Arow].comboItems.assign(value);
      end;
      exit;
   end;

   if (Arow>=0) and (Acol>=0) then begin
     	grid[Acol,Arow].comboItems.assign(value);
        exit;
   end;


end;

{
procedure Tmgd.Color2Col(Acol:integer; value:TColor);
var i:integer;
begin
	if (Acol<0) or (Acol>=colcount) then begin
   	showmessage('column('+inttostr(Acol)+')는 Color를 지정할 범위에서 벗어납니다.');
      exit;
   end;


   for i:=fixedRows to rowcount-1 do begin
   	grid[Acol,i].Color:=value;
   end;

end;


procedure Tmgd.Color2Row(ARow:integer; value:TColor);
var i:integer;
begin
	if (ARow<0) or (ARow>=Rowcount) then begin
   	showmessage('Row('+inttostr(ARow)+')는 BkColor를 지정할 범위에서 벗어납니다.');
      exit;
   end;


   for i:=fixedCols to ColCount-1 do begin
   	grid[i,ARow].Color:=value;
   end;

end;
}

{procedure Tmgd.RowColor(ARow:integer; value:TColor);
var i:integer;
begin
	if (ARow<0) or (ARow>=Rowcount) then begin
   	showmessage('Row('+inttostr(ARow)+')는 BkColor를 지정할 범위에서 벗어납니다.');
      exit;
   end;


   for i:=fixedCols to ColCount-1 do begin
   	grid[i,ARow].Color:=value;
   end;

end;
 }
{**********************************************************}
{----------- 내부 처리 루틴들 Private  procedure들 ---------}
{**********************************************************}
procedure Tmgd.setFixedColor(value:TColor);
begin
	FFixedColor:=value;
    Invalidate;
end;


procedure Tmgd.ColumnMoved(FromIndex, ToIndex: Longint);
var i:integer;
   // varColwidth:Tstrings;
begin
 {    varColwidth:=TstringList.Create;
     for i:=0 to colcount-1 do
         varColwidth.Add(inttostr(colwidths[i]));
  }
    inherited ColumnMoved(FromIndex,ToIndex);

  	for i:=columns.Count+1 to colCount do columns.Add;

    columns[FromIndex].index:=ToIndex;

{    varColWidth.Move(FromIndex,ToIndex);

    for i:=0 to colcount-1 do
        colwidths[i]:=strtoInt(varColwidth[i]);

    varColwidth.Free;
}
end;


procedure Tmgd.setFRHeight(value:integer);
var i:integer;
begin
	if (fixedrows>0) and (value>1) then begin
   	FFixedRowsHeight:=value;
   	for i:=0 to fixedrows-1 do rowheights[i]:=value;
   end;
end;


procedure Tmgd.setFCWidth(value:integer);
var i:integer;
begin
	if (fixedcols>0) and (value>1) then begin
  		FFixedColsWidth:=value;
    	for i:=0 to fixedcols-1 do colwidths[i]:=value;
   end;
end;

  {
procedure Tmgd.stringFill(Sender:Tstrings;value:string);
var i,j :integer;
begin

    for i:=sender.count+1 to colcount do sender.Add(value);

    for i:=0 to colcount-1 do begin
        for j:=length(sender[i])+1 to length(value) do
         sender[i]:=sender[i]+value[j];
    end;

end;

   }

procedure Tmgd.columnFill;
var i:integer;
begin
   	for i:=columns.Count+1 to colCount do columns.Add;
end;

procedure Tmgd.objectsFill;
var i, j:integer;
begin
    for i:=0 to colcount-1 do begin
        for j:=0 to rowcount-1 do begin
            if objects[i,j]=nil then begin
               objects[i,j]:=Tgridinfo.create(self, i,j);
            end;
        end;
    end;

end;



procedure Tmgd.setGridInfo(Acol,Arow:integer;GridInfo:TGridInfo);
begin
     objects[Acol,Arow] :=GridInfo;
end;


function Tmgd.getGridInfo(Acol,Arow:integer):TGridInfo;
begin
     if (Acol<0) or (Arow<0) then begin
//        showmessage('Grid['+inttostr(Acol)+','+inttostr(Arow)+']는 범위밖이므로 정보를 얻을 수 없습니다.');
        result:=TgridInfo.create(self, Acol,Arow);
        exit;
     end;


     if (objects[Acol,Arow]=nil) or not (objects[Acol,Arow] is TGridInfo) then begin
         objects[Acol,Arow]:=TgridInfo.create(self, Acol,Arow);
     end;

    result:=(objects[Acol,Arow] as TGridInfo);
end;


procedure Tmgd.setColumns(value:TmgdColumns);
begin
	if Fcolumns=Value then exit;

    FColumns:=value;
    if value.Count> colCount then begin
    	colCount:=value.Count;
    end;
    invalidate;


end;


{	  TgridInfo     }

constructor TgridInfo.create(Owner:TObject; Acol,Arow:integer );
begin
     inherited create;
    FUseFormat:=Tmgd(owner).columns[ACol].UseFormat ;
    FFormatString:=Tmgd(owner).columns[ACol].FormatString;
    FNumberKind:=Tmgd(owner).columns[ACol].NumberKind ;

    FAlignment:=Tmgd(owner).columns[ACol].Alignment ;
    FAlignmentV:=Tmgd(owner).columns[ACol].AlignmentV;
    FFontStyle:=Tmgd(owner).columns[ACol].FontStyle;
    FFontColor:=Tmgd(owner).columns[ACol].FontColor;

    FColor:=Tmgd(owner).columns[ACol].Color;

    FCellType:=Tmgd(owner).columns[ACol].CellType;
    FCheckBoxCaption:=Tmgd(owner).columns[ACol].checkBoxCaption;
    FReadOnly:=Tmgd(owner).columns[ACol].readOnly;
    FcomboItems:=TstringList.Create;
    FComboItems.assign(Tmgd(owner).columns[ACol].ComboItems);
    FComboItemsCount:=Tmgd(owner).columns[ACol].ComboItemsCount;
    FComboSortOrder:=Tmgd(owner).columns[ACol].ComboSortOrder;
	FComboBtnVisible:=Tmgd(owner).columns[ACol].comboBtnVisible;



     FText:='';
     FCol:=ACol;
     FRow:=ARow;
     Fchecked:=false;
     FGrid:=Tmgd(Owner);

end;

destructor TgridInfo.destroy;
begin
     FcomboItems.free;

     inherited destroy;

end;



procedure TgridInfo.setAlignment(value: TAlignment);
begin
	if FAlignment=value then exit;
	FAlignment:=value;

    Tmgd(FGrid).invalidateCell(FCol,FRow);

end;

procedure TgridInfo.setAlignmentV(value: TAlignmentV);
begin
	if FAlignmentV=value then exit;
	FAlignmentV:=value;
    Tmgd(FGrid).invalidateCell(FCol,FRow);

end;

procedure TgridInfo.setFontStyle(value: TFontStyles);
begin
	if FFontStyle=value then exit;
	FFontStyle:=value;

    Tmgd(FGrid).invalidateCell(FCol,FRow);

end;

procedure TgridInfo.setFontColor(value: TColor);
begin
	if FFontColor=value then exit;
	FFontColor:=value;

    Tmgd(FGrid).invalidateCell(FCol,FRow);

end;

procedure TgridInfo.setColor(value: TColor);
var i:integer;
begin
	if FColor=value then exit;
	FColor:=value;

    Tmgd(FGrid).invalidateCell(FCol,FRow);

end;



procedure TgridInfo.setCellType(value: TCellType);
begin
	if FCellType=value then exit;
	FCellType:=value;

    Tmgd(FGrid).invalidateCell(FCol,FRow);

end;

procedure TgridInfo.setCheckBoxCaption(value:string);
begin
	if FCheckBoxCaption=value then exit;
    FCheckBoxCaption:=value;

    Tmgd(FGrid).invalidateCell(FCol,FRow);

end;

procedure TgridInfo.setComboItems(value:Tstrings);
begin
	if FComboItems=value then exit;
	FComboItems.Assign(value);
end;

procedure TgridInfo.setComboItemsCount(value:integer);
begin
	if (FComboItemsCount=value)
    	or (FComboItemsCount<=0) then exit;

	FComboItemsCount:=value;

end;

procedure TgridInfo.setComboBtnVisible(value:boolean);
begin
	if FComboBtnVisible=value then exit;
	FComboBtnVisible:=value;

    Tmgd(FGrid).invalidateCell(FCol,FRow);
end;


procedure TgridInfo.setComboSortOrder(value:TsortOrder);
begin
	if FComboSortOrder=value then exit;
	FcomboSortOrder:=value;
end;






procedure TgridInfo.setChecked(value:boolean);
var oldValue:boolean;
begin
	oldValue:=FChecked;
	if Fchecked=value then exit;
	Fchecked:=value;
    Tmgd(FGrid).invalidateCell(FCol,FRow);
    if assigned(Tmgd(FGrid).OnChecked) then
    	Tmgd(FGrid).Onchecked(TstringGrid(FGrid),FCol,FRow,oldValue,value);

end;


end.

