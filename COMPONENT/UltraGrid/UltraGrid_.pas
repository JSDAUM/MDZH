//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//  Program Name : UltraGrid
//
//  Description  : StringGrid의 기능을 보완한 Component
//
//  Function     :
//
//  Global Var   :
//
//  Create       :
//
//  Modify       :
//
{-------- Usage --------------------------------------------------------------

  1. property
    - 기존의 StringGrid의 property를 모두 사용가능하며 추가된 property는 다음과 같습니다.

    1) Wrap : Cell안의 문자의 Wrap여부를 지정합니다. [True,False]
      ※ 기본적으로 문자길이가 길어지면 Grid의 Hint를 사용하여 내용을 볼 수 있습니다.
         그래서 별도로 개발자가 Hint를 사용할 수는 없습니다.

    2) State : 현재 Grid의 상태를 나타냄 [gsNone,gsInsert,gsUpdate]   //Run,ReadOnly
      ※ State는 자동변경이 아니고 아래의 method중 SetState로만  변경이 가능한 property 입니다.
         OldState : 이전의 State를 나타냄                             //Run,ReadOnly
    3) FixedAlignment : Fixed Cell의 정렬을 지정합니다.
    4) FixedFontBold : Fixed Row의 Font Bold[굵게]를 지정합니다.
    5) Title : Grid의 Fixed Cell을 Title로 사용할 경우 여기에 나타날 Title명을 Design시 지정합니다.
               (Column 분리자는 '|')

  2. method
    - 기존의 StringGrid의 method를 모두 사용가능하며 추가된 method는 다음과 같습니다.

    1) Clear                                               : Grid를 Clear한다. 이때 Fixed Col,Row는 Clear안합니다.
    2) SetColor(ACol, ARow : Longint; AColor : TColor)     : Cell의 Color를 지정합니다.
    3) SetFontColor(ACol, ARow : Longint; AColor : TColor) : Cell의 Font의 Color를 지정합니다.
    4) ColorClear
    5) InsertRow(ARow: Longint)                            : 지정한 위치에 Row를 추가 합니다.
    6) DeleteRow(ARow: Longint)                            : 지정한 위치의 Row를 삭제 합니다.
    7) SetState(AState: TUltraGridState)                   : State를 변경 합니다.
    8) SetColAlignment(ACol,AColAlignmnet)                 : Col단위로 정렬을 지정한다.

  3.event
    - 기존의 StringGrid의 event를 모두 사용가능하며 추가된 event는 다음과 같습니다.

    1) OnStateChange(Sender:TObject; var ASuccess: Boolean) : State변경시 발생 event. 이때 ASuccess에 False를 주면
                                                           State변경이 취소됨

    2) OnBeforeColRowChange(Sender: TObject; PCol, NCol, PRow, NRow: Integer; var ASuccess: Boolean) : Grid의
                               Col,Row 변경시 발생 event
                               PCOL:현재 Col
                               NCol:변경되어질 Col
                               PRow:현재 Row
                               NRow:변경되어질 Row
                               ASuccess에 False를 주면 Col,Row변경이 취소됨

  ※ Design time에서 property수정후에 반영이 바로 안되는 것들이 있는데
     F12를 두번 눌러서 화면을 repaint시키면 반영됩니다.

-------- History --------------------------------------------------------------

//V1.0   1997-10
   - Created by HyungTeak Sim (esaint@samsung.co.kr)

//v1.1   2001-04-18   Manwoong Park (mjacket@samsung.co.kr)
   - Property 추가
     1) SelectedRowColor : 선택된 row의 색상을 지정합니다. ($00FDEDDF)
     2) SelectedRowFontColr : 선택된 row의 Font색상을 지정합니다. (clNavy)

     ※ GridLineWidth를 0으로 설정하면 column구분선만 보이고 마지막 row에만
        가로구분선이 보입니다. (구분선 색상은 clSilver)

//v1.2   2001-04-25   Manwoong Park (mjacket@samsung.co.kr)
   - Property 추가
     1) GridRowColor : Line단위로 toggle되는 Grid row의 색상을 선택할 수
                       있습니다. ($00F0F0F0)
     2) GridRowFontColor : Line단위로 toggle되는 Grid row font의 색상을
                           선택할 수 있습니다.

   - Property 수정
     1) ColAlignment : ColAlign에서 RightJustify인 경우 숫자면 format을
                       주었습니다. ex) 1,000,000
                       숫자아니면 format이 없는데 숫자인 경우도 format을
                       주기싫으면 parameter로 조정 가능합니다.

                       --> ugd_1.ColAlignment(N, taRighJustify, False);

                       Cell의 값을 바꾸는건 아니구 Output Text만 바꾸니까
                       값을 취할때는 ',' 를 뺄 필요는 없습니다.

     2) 우측정렬과 좌측정렬시 너무 바짝 붙는느낌이 들어서 약간의 여백 pixel을
        주었습니다.

//v1.3   2001-04-28   Manwoong Park (mjacket@samsung.co.kr)
   - Event 수정
     1) Grid에 Data가 뿌려진 다음에 빈영역에서는 DoubleClick event가
        발생되지 않도록 막았습니다.
       (예전 project수행시 품관팀에서 지적사항)

//v1.4   2002-04-09   Hongseok Kim (jabdol@weppy.com)
   - FixedRow Double Click시 Grid Sort.
     1) Grid의 FixedRow를 Double Click하면 해당 Column을 기준으로 오름차순 정렬.
        다시 한번 Double Click하면 내림차순 정렬.
        FixedCol이 있는 경우에는 Sort하지 않음.
        ColAlignment가 taRightJustify인 경우에만 숫자로 인식해서 정렬함.
     2) Property 추가
        AllowSort : Boolean;     Sort기능 사용여부.
     3) 현재 오름차순 정렬되어 있는지 여부를 보관하는 내부 변수 추가.
        SortType  : array[0..150] of Boolean;   현재 오름차순 정렬된 상태면 True
                                                내림차순이거나 정렬이 안되어 있는 상태면 False.

//v1.5  2002-11-26    Manwoong Park (manwoong.park@samsung.com)
   - Color관련 Variant를 Dynamic Array로 변경하여 color관련 method의 performance 향상
   - Color지정후 Cell단위로 color를 지우려면 "clNone"으로 지정하면 되고 전체 clear는 "colorclear"

//v1.55 2002-12-24    Manwoong Park (manwoong.park@samsung.com)
   - SetColor와 SetFontColor지정시에 Column값에 -1을 주면 전체row에 대하여 적용하도록 수정

}
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

unit UltraGrid;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   Grids  , StdCtrls, Mask    , Menus;

type
  TUltraGridState    = (gsUpdate, gsInsert, gsNone);
  TStateChangeEvent  =  procedure (Sender: TObject; Var ASuccess: Boolean) of object;
  TColRowChangeEvent =  procedure (Sender: TObject;
                                   PCol, NCol, PRow, NRow: Longint; Var ASuccess :Boolean) of object;
  TUltraGrid = class(TStringGrid)
  private
    { Private declarations }

    // Col의 Alignment을 보관하는 Array
    ColAlignmentArray   :  array[0..150] of TAlignment;
    // Col Align시 금액인지 여부 보관하는 Array (Added by Park manwoong 2001.4.25)
    ColAlignmentArray2  :  array[0..150] of Boolean;

    // 현재 오름차순 정렬되어 있는지 여부 보관하는 Array
    SortType            :  array[0..150] of Boolean;

    // Color 관련--------------------------------------┐
    //--Cell color
    Arr_C_Color : array of TColor;  // Cell의 color를 저장하는 Array
    Arr_C_Pos   : array of TPoint;  // color를 지정한 Cell의 위치(X:ACol,Y:ARow)
    Last_C_idx  : LongInt;          // color Array의 유효한 마지막 Index
    MAX_C_length: LongInt;          // color Array의 Length Bound

    //--Font color
    Arr_CF_Color : array of TColor; // Cell Font의 color를 저장하는 Array
    Arr_CF_Pos   : array of TPoint; // Font color를 지정한 Cell의 위치(X:ACol,Y:ARow)
    Last_CF_idx  : LongInt;         // Font color Array의 유효한 마지막 Index
    MAX_CF_length: LongInt;         // Font color Array의 Length Bound
    //-------------------------------------------------┘

    // Cell의 Text의 Wrap 여부;
    FWrap               :  Boolean;
    FFixedAlignment     :  TAlignment;
    FFixedFontBold      :  Boolean;

    // Grid에 Data가 있을때 빈영역에서는 DoubleClick이 안 발생하게하기위해서
    // 위치정보를 저장한다(Added by Park manwoong 2001.4.25)
    g_Rect              :  TRect;

    // 선택된 row의 색상
    FSelectedRowColor      :  TColor;
    // 선택된 row의 font색상
    FSelectedRowFontColor  :  TColor;
    // 짝수row의 색상
    FGridRowColor          :  TColor;
    // 짝수row font의 색상
    FGridRowFontColor      :  TColor;

    // stat변경시의 event;
    FOnStateChange         :  TStateChangeEvent;
    // Col,Row변경시의 event;
    FOnBeforeColRowChange  :  TColRowChangeEvent;
    // Grid의 상태 [gsUpdate, gsInsert, gsNone];
    FState                 :  TUltraGridState;
    FOldState              :  TUltraGridState;

    FAllowSort             :  Boolean;
    FTitle                 :  String;
    FMaxCol                :  LongInt;

    procedure SetWrap(Value: Boolean);
    procedure SetTitle(ATitle: string);

    function  SelectCell(ACol, ARow: Longint): Boolean; override;
    procedure SortGrid(ACol : LongInt);
  protected
    { Protected declarations }
    procedure DrawCell(ACol, ARow : Longint; ARect : TRect; AState : TGridDrawState); override;
    //DblClick시 Click위치저장용 재정의
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    //Grid의 Data없는 빈영역에서는 DoubleClick이 안되도록 재정의 (Added by Park manwoong 2001.4.25)
    procedure DblClick; override;
  public
    { Public declarations }
    constructor Create(AOwner : TComponent); override;
    destructor  Destroy; override;

    procedure SetColAlignment(ACol : Longint; AColAlignment : TAlignment; AShowMoneyType: Boolean = True);
    function  SetColor(ACol, ARow : Longint; AColor : TColor) : Boolean;
    function  SetFontColor(ACol, ARow : Longint; AColor : TColor) : Boolean;
    procedure InsertRow(ARow: Longint);
    procedure AppendRow(ARow: LongInt);
    procedure DeleteRow(ARow: Longint);override;
    procedure Clear;
    procedure ColorClear;
    procedure RowUp(ARow:Integer);
    procedure RowDown(ARow:Integer);
    function  SetState(AState: TUltraGridState):Boolean;
    function  GetColAlignment(Col : Integer)  : TAlignment;
    function  GetColAlignment2(Col : Integer) : Boolean;
    function  GetCellColor(ACol, ARow : LongInt ) : TColor;
    function  GetCellFontColor(ACol, ARow : LongInt ) : TColor;
    property  State : TUltraGridState read FState;
    property  OldState : TUltraGridState read FOldState;
  published
    property  FixedAlignment : TAlignment read FFixedAlignment write FFixedAlignment default taLeftJustify;
    property  FixedFontBold : Boolean read FFixedFontBold write FFixedFontBold default True;

    property  SelectedRowColor : TColor read FSelectedRowColor write FSelectedRowColor default clHighlight;
    property  SelectedRowFontColor : TColor read FSelectedRowFontColor write FSelectedRowFontColor default clHighlightText;
    property  GridRowColor : TColor read FGridRowColor write FGridRowColor default clWindow;
    property  GridRowFontColor : TColor read FGridRowFontColor write FGridRowFontColor default clWindowText;

    property  Title : String read FTitle write SetTitle;
    property  Wrap  : Boolean read FWrap write setWrap default True;
    property  OnStateChange : TStateChangeEvent read FOnStateChange write FOnStateChange;
    property  OnBeforeColRowChange : TColRowChangeEvent read FOnBeforeColRowChange write FOnBeforeColRowChange;
    property  AllowSort : Boolean read FAllowSort write FAllowSort default False;
    property  MaxCol : LongInt read FMaxCol write FMaxCol default 80;

    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
   RegisterComponents('uniHISPACK', [TUltraGrid]);
end;

constructor TUltraGrid.Create(AOwner : TComponent);
var
   i  :  Integer;
begin
   inherited Create(AOwner);

   FFixedFontBold         := True;
   FSelectedRowColor      := clHighlight;
   FSelectedRowFontColor  := clHighlightText;
   FGridRowColor          := clWindow;
   FGridRowFontColor      := clWindowText;
   g_Rect.Left            := 0;
   g_Rect.Top             := 0;

   FAllowSort             := False;
   FMaxCol                := 80;
   FWrap                  := True;

   FState    := gsNone;
   FOldState := gsNone;
   
   // color관련---------------------------------------┐
   //--Cell
   MAX_C_length := 20;
   SetLength(Arr_C_Color , MAX_C_length);
   SetLength(Arr_C_Pos   , MAX_C_length);
   Last_C_idx := 0;

   //--Font
   MAX_CF_length := 20;
   SetLength(Arr_CF_Color, MAX_CF_length);
   SetLength(Arr_CF_Pos  , MAX_CF_length);
   Last_CF_idx := 0;

   //Array 초기화
   for i := 0 to High(Arr_C_Color) do
   begin
      Arr_C_Color [i]   := color;
      Arr_C_Pos   [i].X := -1;  //Col
      Arr_C_Pos   [i].Y := -1;  //Row

      Arr_CF_Color[i]   := Font.color;
      Arr_CF_Pos  [i].X := -1;  //Col
      Arr_CF_Pos  [i].Y := -1;  //Row
   end;
   //-------------------------------------------------┘
end;

destructor TUltraGrid.Destroy;
begin
   inherited Destroy;
end;

procedure TUltraGrid.Clear;
var
   i  :  Integer;
   j  :  Integer;
begin
   for i := FixedRows to RowCount - 1 do
   begin
      Rows[i].Clear;
   end;

   Last_C_idx  := 0;
   Last_CF_idx := 0;

   for i := 0 to ColCount - 1 do
   begin
      SortType[i] := False;
   end;
end;

procedure TUltraGrid.ColorClear;
var
   i  :  Integer;
   j  :  Integer;
begin
   MAX_C_length := 20;
   SetLength(Arr_C_Color , MAX_C_length);
   SetLength(Arr_C_Pos   , MAX_C_length);
   Last_C_idx  := 0;

   MAX_CF_length := 20;
   SetLength(Arr_CF_Color, MAX_CF_length);
   SetLength(Arr_CF_Pos  , MAX_CF_length);
   Last_CF_idx := 0;

   for i := 0 to MAX_C_length-1 do
   begin
      Arr_C_Color [i]   := color;
      Arr_C_Pos   [i].X := -1;  //Col
      Arr_C_Pos   [i].Y := -1;  //Row
   end;

   for i := 0 to MAX_CF_length-1 do
   begin
      Arr_CF_Color[i]   := Font.color;
      Arr_CF_Pos  [i].X := -1;  //Col
      Arr_CF_Pos  [i].Y := -1;  //Row
   end;
end;


function TUltraGrid.SelectCell(ACol, ARow: Longint): Boolean;
var
   IsColRowChange : Boolean;
begin
   Result := True;

   IsColRowChange := True;

   if ( ARow <> Row ) or
      ( ACol <> Col ) then
   begin
      if Assigned(FOnBeforeColRowChange) then
      begin
         FOnBeforeColRowChange(Self, Col, ACol, Row, ARow, IsColRowChange);
      end;
      Result := IsColRowChange;
   end;

   if ( Result = True ) then
   begin
      Hint  := Cells[ACol,ARow];
      inherited SelectCell(ACol, ARow);
   end;
end;

function TUltraGrid.SetState(AState: TUltraGridState): Boolean;
var
   IsStateChange  :  Boolean;
   u_OldState     :  TUltraGridState;
begin
   IsStateChange  := True;
   u_OldState     := FOldState;
   FOldState      := FState;
   FState         := AState;

   if Assigned(FOnStateChange) then
   begin
      FOnStateChange(Self,IsStateChange);
   end;

   if not IsStateChange then
   begin
      FState      := FOldState;
      FOldState   := u_OldState;
   end;

   result := IsStateChange;
end;

procedure TUltraGrid.InsertRow(ARow: Longint);
var
   i  :  Longint;
   j  :  Longint;
begin
   //Insert 시키는 Row의 값이 Grid의 RowCount를 초과하면 Error
   if ARow > RowCount then
   begin
      raise ERangeError.Create('Incorrect Row Insertered');
   end
   else
   begin
      //Insert 시키는 Row의 값이 Grid의 RowCount와 같으면 맨뒤에 한 Row를 추가
      if ARow = RowCount then
      begin
         RowCount := RowCount + 1;
         Row      := RowCount - 1;
      end
      //Insert 시키는 Row의 값이 Grid의 RowCount보다 작으면 중간에 Row를 Insert
      else
      begin
         RowCount := RowCount + 1;
         try
            for i := 0 to Last_C_idx-1 do                      //추가된 Row의 뒤에 있는 Row의 Color를 하나씩 뒤로 미룬다.
            begin
               if (Arr_C_Pos[i].Y >= ARow) then
                   Inc(Arr_C_Pos[i].Y);
            end;

            for i := 0 to Last_CF_idx-1 do
            begin
               if (Arr_CF_Pos[i].Y >= ARow) then
                   Inc(Arr_CF_Pos[i].Y);
            end;
         except

         end;

         for i := RowCount - 2 downto ARow do                  //추가된 Row의 뒤에 있는 Row의 Text를 하나씩 뒤로 미룬다.
         begin
            RowMoved(i+1,i);
         end;

         Rows[ARow].Clear;

         Row := ARow;
      end;
   end;
end;

procedure TUltraGrid.DeleteRow(ARow: Longint);
var
   i  : LongInt;
   j  : LongInt;
begin
   // Delete 시키는 Row의 값이 Grid의 RowCount 이상이거나 FixedRows 미만이면 Error
   if ( ARow >= RowCount  ) or
      ( ARow <  FixedRows ) then
   begin
      raise ERangeError.Create('Incorrect Row Deleted');
   end
   // Delete 시키는 Row의 값이 Grid의 사용가능한 마지막 Row이면 Clear;
   else if ( ARow = FixedRows    ) and
           ( ARow = RowCount - 1 ) then
   begin
      Clear;
   end
   else
   begin
      try
         // 삭제된 Row의 뒤에 있는 Row의 Color를 하나씩 당긴다.
         for i := 0 to Last_C_idx-1 do
         begin
            if ( Arr_C_Pos[i].Y > ARow ) then
               Dec(Arr_C_Pos[i].Y)
            // 삭제된 Row의 Color를 없앤다.
            else if ( Arr_C_Pos[i].Y = ARow ) then
               Arr_C_Color[i] := Color;
         end;

         for i := 0 to Last_CF_idx-1 do
         begin
            if ( Arr_CF_Pos[i].Y > ARow ) then
               Dec(Arr_CF_Pos[i].Y)
            // 삭제된 Row의 Color를 없앤다.
            else if ( Arr_CF_Pos[i].Y = ARow ) then
               Arr_CF_Color[i] := Font.Color;
         end;
      except

      end;

      // 삭제된 Row의 뒤에 있는 Row의 Text를 하나씩 당긴다.
      for i := ARow to RowCount - 2 do
      begin
         RowMoved(i,i+1);
      end;
      Rows[RowCount - 1].Clear;

      RowCount := RowCount - 1;
      if ( ARow < RowCount ) then
      begin
         Row      := ARow;
      end
      else
      begin
         Row      := RowCount - 1;
      end;
   end;
end;

function TUltraGrid.SetColor(ACol, ARow : Longint; AColor : TColor) : Boolean;
var
   ii,jj,idx : Integer;
begin
   result := False;

   //전체 row에 color설정
   if ACol = -1 then
   begin
      for jj := FixedCols to ColCount-1 do
      begin
         //Array내에서 지정된적이 있는지 chk
         idx := -1;
         for ii := 0 to Last_C_idx-1 do
         begin
            if  (Arr_C_Pos[ii].X = jj  )
             and(Arr_C_Pos[ii].Y = ARow) then
            begin
               idx := ii;
               break;
            end;
         end;
         
         //신규 값지정
         if ( idx = -1 ) then
         begin
            //clnone이면 color정보 무의미
            if AColor = clNone then
               continue
            else
            begin
               result := True;

               Arr_C_Color[Last_C_idx]   := AColor;
               Arr_C_Pos  [Last_C_idx].X := jj;
               Arr_C_Pos  [Last_C_idx].Y := ARow;

               Inc(Last_C_idx);

               //Array size증가
               if Last_C_idx >= Max_C_length then
               begin
                  Max_C_length := Max_C_length + 10;

                  SetLength(Arr_C_Color, Max_C_length);
                  SetLength(Arr_C_Pos  , Max_C_length);

                  //초기화
                  for ii := Last_C_idx to High(Arr_C_Color) do
                  begin
                     Arr_C_Color[ii]   := clWindow;
                     Arr_C_Pos  [ii].X := -1;
                     Arr_C_Pos  [ii].Y := -1;
                  end;
               end;
            end;
         end
         //기지정값 변경
         else
         begin
            //color가 clNone이면 color정보 삭제
            if AColor = clNone then
            begin
               Result := True;
         
               Arr_C_Color[idx] := clWindow;
               Arr_C_Pos[idx].X := -1;
               Arr_C_Pos[idx].Y := -1;
            end
            else if Arr_C_Color[idx] = AColor then
            begin
               continue;
            end
            else
            begin
               Result := True;

               Arr_C_Color[idx] := AColor;
            end;
         end;
      end;
   end
   else
   begin
      //Array내에서 지정된적이 있는지 chk
      idx := -1;
      for ii := 0 to Last_C_idx-1 do
      begin
         if  (Arr_C_Pos[ii].X = ACol)
          and(Arr_C_Pos[ii].Y = ARow) then
         begin
            idx := ii;
            break;
         end;
      end;
      
      //신규 값지정
      if ( idx = -1 ) then
      begin
         //clnone이면 color정보 무의미
         if AColor = clNone then
            Exit
         else
         begin
            result := True;
      
            Arr_C_Color[Last_C_idx]   := AColor;
            Arr_C_Pos  [Last_C_idx].X := ACol;
            Arr_C_Pos  [Last_C_idx].Y := ARow;
      
            Inc(Last_C_idx);
      
            //Array size증가
            if Last_C_idx >= Max_C_length then
            begin
               Max_C_length := Max_C_length + 10;
      
               SetLength(Arr_C_Color, Max_C_length);
               SetLength(Arr_C_Pos  , Max_C_length);
      
               //초기화
               for ii := Last_C_idx to High(Arr_C_Color) do
               begin
                  Arr_C_Color[ii]   := clWindow;
                  Arr_C_Pos  [ii].X := -1;
                  Arr_C_Pos  [ii].Y := -1;
               end;
            end;
         end;
      end
      //기지정값 변경
      else
      begin
         //color가 clNone이면 color정보 삭제
         if AColor = clNone then
         begin
            Result := True;

            Arr_C_Color[idx] := clWindow;
            Arr_C_Pos[idx].X := -1;
            Arr_C_Pos[idx].Y := -1;
         end
         else if Arr_C_Color[idx] = AColor then
         begin
            Exit;
         end
         else
         begin
            Result := True;

            Arr_C_Color[idx] := AColor;
         end;
      end;
   end;
end;

function TUltraGrid.SetFontColor(ACol, ARow : Longint; AColor : TColor) : Boolean;
var
   ii,jj,idx : Integer;
begin
   result := False;

   //전체 row에 font color설정
   if ACol = -1 then
   begin
      for jj := FixedCols to ColCount-1 do
      begin
         //Array내에서 지정된적이 있는지 chk
         idx := -1;
         for ii := 0 to Last_CF_idx-1 do
         begin
            if  (Arr_CF_Pos[ii].X = jj  )
             and(Arr_CF_Pos[ii].Y = ARow) then
            begin
               idx := ii;
               break;
            end;
         end;

         //신규 값지정
         if ( idx = -1 ) then
         begin
            //clnone이면 color정보 무의미
            if AColor = clNone then
               Continue
            else
            begin
               result := True;

               Arr_CF_Color[Last_CF_idx]   := AColor;
               Arr_CF_Pos  [Last_CF_idx].X := jj;
               Arr_CF_Pos  [Last_CF_idx].Y := ARow;

               Inc(Last_CF_idx);

               //Array size증가
               if Last_CF_idx >= Max_CF_length then
               begin
                  Max_CF_length := Max_CF_length + 10;

                  SetLength(Arr_CF_Color, Max_CF_length);
                  SetLength(Arr_CF_Pos  , Max_CF_length);

                  //초기화
                  for ii := Last_CF_idx to High(Arr_CF_Color) do
                  begin
                     Arr_CF_Color[ii]   := clWindowText;
                     Arr_CF_Pos  [ii].X := -1;
                     Arr_CF_Pos  [ii].Y := -1;
                  end;
               end;
            end;
         end
         //기지정값 변경
         else
         begin
            //color가 clNone이면 color정보 삭제
            if AColor = clNone then
            begin
               Result := True;

               Arr_CF_Color[idx] := clWindowText;
               Arr_CF_Pos[idx].X := -1;
               Arr_CF_Pos[idx].Y := -1;
            end
            else if Arr_CF_Color[idx] = AColor then
            begin
               Continue;
            end
            else
            begin
               result := True;

               Arr_CF_Color[idx] := AColor;
            end;
         end;
      end;
   end
   else
   begin
      //Array내에서 지정된적이 있는지 chk
      idx := -1;
      for ii := 0 to Last_CF_idx-1 do
      begin
         if  (Arr_CF_Pos[ii].X = ACol)
          and(Arr_CF_Pos[ii].Y = ARow) then
         begin
            idx := ii;
            break;
         end;
      end;

      //신규 값지정
      if ( idx = -1 ) then
      begin
         //clnone이면 color정보 무의미
         if AColor = clNone then
            Exit
         else
         begin
            result := True;

            Arr_CF_Color[Last_CF_idx]   := AColor;
            Arr_CF_Pos  [Last_CF_idx].X := ACol;
            Arr_CF_Pos  [Last_CF_idx].Y := ARow;

            Inc(Last_CF_idx);

            //Array size증가
            if Last_CF_idx >= Max_CF_length then
            begin
               Max_CF_length := Max_CF_length + 10;

               SetLength(Arr_CF_Color, Max_CF_length);
               SetLength(Arr_CF_Pos  , Max_CF_length);

               //초기화
               for ii := Last_CF_idx to High(Arr_CF_Color) do
               begin
                  Arr_CF_Color[ii]   := clWindowText;
                  Arr_CF_Pos  [ii].X := -1;
                  Arr_CF_Pos  [ii].Y := -1;
               end;
            end;
         end;
      end
      //기지정값 변경
      else
      begin
         //color가 clNone이면 color정보 삭제
         if AColor = clNone then
         begin
            Result := True;

            Arr_CF_Color[idx] := clWindowText;
            Arr_CF_Pos[idx].X := -1;
            Arr_CF_Pos[idx].Y := -1;
         end
         else if Arr_CF_Color[idx] = AColor then
         begin
            Exit;
         end
         else
         begin
            result := True;

            Arr_CF_Color[idx] := AColor;
         end;
      end;
   end;
end;

procedure TUltraGrid.SetWrap(Value: Boolean);
begin
   if Value <> FWrap then
   begin
      FWrap := Value;
      Refresh;
   end;
end;

procedure TUltraGrid.SetTitle(ATitle: string);
var
   string_length  :  Integer;
   Title_count    :  integer;
   i              :  integer;
   Out_Text       :  string;
   LF_Position    :  array[0..10000] of integer;
begin
    if FixedRows = 0 then exit;

    string_length    := length(ATitle);

    Title_count      := 0;
    LF_Position[0]   := 1;

    for  i := 1 to string_length do
    begin
       if ATitle[i] = '|' then
       begin
          inc(Title_count);
          LF_Position[Title_count] := i + 1;
       end;
    end;

    Title_count := Title_count + 1;

    LF_Position[Title_count] := string_length + 3;

    for  i := 1 to Title_count do
    begin
       Cells[i-1,0] := Copy(ATitle,LF_Position[i-1],LF_Position[i]-LF_Position[i-1]-1);
    end;

    FTitle := ATitle;
end;

procedure TUltraGrid.SetColAlignment(ACol : Longint; AColAlignment : TAlignment; AShowMoneyType: Boolean);
begin
   ColAlignmentArray[ACol]  := AColAlignment;
   ColAlignmentArray2[ACol] := AShowMoneyType;   //우측정렬시 금액표시면 1,000,000와 같이 하기위해서 추가(Added by Park manwoong 2001.4.25)
end;


procedure TUltraGrid.DrawCell(ACol, ARow : Longint; ARect : TRect;
   AState : TGridDrawState);
var
   i              : Longint;

   XPos           : Integer;
   YPos           : Integer;
   Sentencelength : Integer;

   Sentence       : String;
   CurString      : String;

   SubString      : pChar;

   EOFSentence    : Boolean;
   FitSentence    : Boolean;
   uCellHeight    : Integer;

   StartPos_l     : Integer;
   StartPos_t     : Integer;
   DataInCell     : String;

   wid            : Integer;
   ii             : Integer;
begin
   ShowHint    := False;
   uCellHeight := 0;

   //------------------------------------------------------------------//
   //  Cell의 Color와 FontColor를 지정한 Color에 맞춰 Draw             //
   //------------------------------------------------------------------//
   if not(gdFixed in AState) then                                                 //Cell이 Fixed Cell이 아니면
   begin
      //--Added by Park manwoong
      // 짝수row의 색상
      if (ARow mod 2) > 0 then
      begin
         Canvas.Brush.Color   := FGridRowColor;
         Canvas.Font.Color    := FGridRowFontColor;
      end;

      // 선택된 ROW의 색상지정
      if gdSelected in AState then
      begin
         Canvas.Brush.Color   := FSelectedRowColor;        //$00FDEDDF;
         Canvas.Font.Color    := FSelectedRowFontColor;    //clNavy;
      end;

      //--- Cell Color ---//
      for i := 0 to Last_C_idx-1 do
      begin
         if  (ACol = Arr_C_Pos[i].X)
          and(ARow = Arr_C_Pos[i].Y) then
            Canvas.Brush.Color := Arr_C_Color[i];
      end;

      //--- Cell Font Color ---//
      for i := 0 to Last_CF_idx-1 do
      begin
         if  (ACol = Arr_CF_Pos[i].X)
          and(ARow = Arr_CF_Pos[i].Y) then
            Canvas.Font.Color := Arr_CF_Color[i];
      end;
   end;

   Canvas.FillRect(ARect);                                                        //화면에 Cell을 그린다.

   //--Added by Park manwoong
   //  Grid구분선 안보이고 마지막row에만 보이도록
   if ( GridLineWidth = 0 ) then
   begin
      Canvas.Pen.Color  := clSilver;
      Canvas.MoveTo(ARect.Right-1 , ARect.Top);
      Canvas.LineTo(ARect.Right-1 , ARect.Bottom);
      if ( ARow = RowCount - 1 ) then
      begin
         Canvas.MoveTo(ARect.Left-1 ,  ARect.Bottom-1);
         Canvas.LineTo(ARect.Right-1 , ARect.Bottom-1);
      end;
   end;

   //------------------------------------------------------------------//
   //  Cell의 Text를 Wrap                                              //
   //------------------------------------------------------------------//
   if (gdFixed in AState) then                                                 //Cell이 Fixed Cell
   begin
      if FFixedFontBold then
      begin
         Canvas.Font.Style := Canvas.Font.Style + [fsBold];
      end
      else
      begin
         Canvas.Font.Style := Canvas.Font.Style - [fsBold];
      end;

      //문자의 길이가 Cell의 Width보다 작으면
      if ( Canvas.TextWidth(Cells[ACol,ARow]) + ARect.Left < ARect.Right ) then
      begin
         if ( FFixedAlignment = taCenter ) then
         begin
            Canvas.TextOut(ARect.Left + ((ARect.Right - ARect.Left - Canvas.TextWidth(Cells[ACol,ARow])) div 2), ARect.Top+3, Cells[ACol,ARow]);
         end
         else if ( FFixedAlignment = taRightJustify ) then
         begin
            Canvas.TextOut(ARect.Left + (ARect.Right - ARect.Left - Canvas.TextWidth(Cells[ACol,ARow])-3), ARect.Top+3, Cells[ACol,ARow]);
         end
         else
         begin
            Canvas.TextOut(ARect.Left+1, ARect.Top+3, Cells[ACol,ARow]);
         end;

         if Assigned(OnDrawCell) then
         begin
            OnDrawCell(Self, ACol, ARow, ARect, AState);
         end;

         exit;
      end;
   end
   else
   begin
      //문자의 길이가 Cell의 Width보다 작으면
      if ( Canvas.TextWidth(Cells[ACol,ARow]) + ARect.Left < ARect.Right ) then
      begin
         if ( ColAlignmentArray[ACol] = taCenter ) then
         begin
            Canvas.TextOut(ARect.Left + ((ARect.Right - ARect.Left - Canvas.TextWidth(Cells[ACol,ARow])) div 2), ARect.Top+3, Cells[ACol,ARow]);
         end
         else if ( ColAlignmentArray[ACol] = taRightJustify ) then
         begin
            //우측정렬시 금액과 관련되서 표시해야 되면 1,000,000형식으로 표시(Added by Park manwoong)
            if ( Trim(Cells[ACol,ARow]) = '' ) then
            begin
               DataInCell := Cells[ACol,ARow];
            end
            else
            begin
               if ( ColAlignmentArray2[ACol] ) then
               begin
                  try
                     DataInCell := FormatFloat('###,##0.###',StrToFloat(Cells[ACol,ARow]));
                  except
                     DataInCell := Cells[ACol,ARow];
                  end;
               end
               else
               begin
                  DataInCell := Cells[ACol, ARow];
               end;
            end;

            Canvas.TextOut(ARect.Left + (ARect.Right - ARect.Left - Canvas.TextWidth(DataInCell))-3, ARect.Top+3, DataInCell);
         end
         else
         begin
            Canvas.TextOut(ARect.Left+1, ARect.Top+3, Cells[ACol,ARow]);
         end;

         //--Added by Park manwoong
         //  Grid구분선 안보이고 마지막row에만 보이도록
         if ( GridLineWidth = 0 ) then
         begin
            Canvas.Pen.Color  := clSilver;
            Canvas.MoveTo(ARect.Right-1 , ARect.Top);
            Canvas.LineTo(ARect.Right-1 , ARect.Bottom);
            if ( ARow = RowCount - 1 ) then
            begin
               Canvas.MoveTo(ARect.Left-1 ,  ARect.Bottom-1);
               Canvas.LineTo(ARect.Right-1 , ARect.Bottom-1);
            end;
         end;

         if Assigned(OnDrawCell) then OnDrawCell(Self, ACol, ARow, ARect, AState);

         exit;
      end
      else
      begin
         ShowHint := True;
      end;
   end;

   //Cell의 Width가 2문자를 그리기에 적으면 wrap시키지 않는다.
   if ( (Canvas.TextWidth('AB') + ARect.Left) > ARect.Right ) then
   begin
      Canvas.TextOut(ARect.Left, ARect.Top+3, Cells[ACol,ARow]);

      if ( Assigned(OnDrawCell) ) then
      begin
         OnDrawCell(Self, ACol, ARow, ARect, AState);
      end;

      exit;
   end;

   XPos := ARect.Left;
   YPos := ARect.Top+3;

   Sentence := Cells[ACol,ARow];

   EOFSentence := False;

   //Cell이 Text를 갖고 있지 않으면 Wrap부분을 Skip하고 종료
   if ( length(Sentence) = 0 ) then
   begin
      Canvas.TextOut(ARect.Left, ARect.Top+1, Cells[ACol,ARow]);
      if ( Assigned(OnDrawCell) ) then
      begin
         OnDrawCell(Self, ACol, ARow, ARect, AState);
      end;

      exit;
   end;

   while ( not EOFSentence ) do                                                     //Cell의 Text의 문자수 만큼 수행
   begin
      Sentencelength := length(Sentence);
      FitSentence    := False;

      while ( not FitSentence ) do                                                  //cell의 width에 맞는 길이의  문자를 읽어들일 때까지 수행
      begin
         CurString := Copy(Sentence,0,Sentencelength);

         if ( (Canvas.TextWidth(CurString) + XPos) > ARect.Right ) then               //읽어들인 문자의 길이가 Cell의 Width보다 작으면
         begin
            Dec(Sentencelength);                                                   //읽어들일 문자의 수를 증가
         end
         else
         begin
            FitSentence := True;
         end;
      end;

      SubString := AnsiLastChar(CurString);                                       //읽어들인 문자열의 마지막문자를 구한다. 이때 마지막문자가  한글이면 2문자가 Return
      if ( length(SubString) = 1 ) then                                               //마지막 문자의 길이가  1자리일때
      begin
         if ( ord(SubString[0]) > 128 ) then                                          //Ascii 값이 128보다 크면 한글이 반으로 잘린것이므로
         begin
            Dec(Sentencelength);                                                  //한문자를 더 읽어들여 한글이 깨지는 것을 막는다.
            CurString := Copy(Sentence,0,Sentencelength);
         end;
      end;

      Canvas.TextOut(XPos, YPos, CurString);                                      //화면에 문자를 출력

      if ( sentence = CurString ) then                                                //Cell의 모든문자를 출력했으면 종료
      begin
         EOFSentence := True;
      end
      else
      begin
         Sentence := Copy(Sentence,Sentencelength + 1,Length(sentence)-Sentencelength);
      end;

      if ( not FWrap                 ) and
         ( not ( gdFixed in AState ) ) then                            //wrap이 지정되지 않았으면 화면에 문자출력후 종료.
      begin
         EOFSentence := True;
      end;

      YPos        := YPos + Canvas.TextHeight(Sentence);                                 //다음줄의 Y좌표를 구한다.
      uCellHeight := uCellHeight + Canvas.TextHeight(Sentence);
   end;

   //--Added by Park manwoong
   //  Grid구분선 안보이고 마지막row에만 보이도록
   if ( GridLineWidth = 0 ) then
   begin
      Canvas.Pen.Color  := clSilver;
      Canvas.MoveTo(ARect.Right-1 , ARect.Top);
      Canvas.LineTo(ARect.Right-1 , ARect.Bottom);
      if ( ARow = RowCount - 1 ) then
      begin
         Canvas.MoveTo(ARect.Left-1 ,  ARect.Bottom-1);
         Canvas.LineTo(ARect.Right-1 , ARect.Bottom-1);
      end;
   end;

   if ( Assigned(OnDrawCell) ) then
   begin
      OnDrawCell(Self, ACol, ARow, ARect, AState);
   end;
end;

procedure TUltraGrid.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   //Click한 위치저장용
   g_Rect.Left := X;
   g_Rect.Top  := Y;

   inherited MouseDown(Button, Shift, X, Y);
end;

procedure TUltraGrid.DblClick;
var
   l_Rect : TRect;

   l_Row  : LongInt;
   l_Col  : LongInt;
begin
   l_Rect := CellRect(Col,Row);
//   if ( l_Rect.Bottom > g_Rect.Top ) then
//   begin
      MouseToCell(g_Rect.Left, g_Rect.Top, l_Col, l_Row);
//   end
//   else
//   begin
//      l_Row := FixedRows;
//      l_Col := 0;
//   end;

   if ( FixedRows     > 0          ) and
      ( l_Row         < FixedRows  ) and
      ( l_Row         >= 0         ) then
   begin
      if FAllowSort then
      begin
         Screen.Cursor := crHourGlass;
         SortGrid(l_Col);
         if ( Assigned(OnClick) ) then
         begin
            OnClick(Self);
         end;
         Screen.Cursor := crDefault;
      end
      else
      begin
         Exit;
      end;
   end
   else
   begin
      if ( l_Rect.Top    < g_Rect.Top ) and
         ( l_Rect.Bottom > g_Rect.Top ) then
      begin
         inherited DblClick;
      end
      else
      begin
         Exit;
      end;
   end;
end;

function  TUltraGrid.GetColAlignment(Col : Integer)  : TAlignment;
begin
   result := ColAlignmentArray[Col];
end;

function  TUltraGrid.GetColAlignment2(Col : Integer) : Boolean;
begin
   result := ColAlignmentArray2[Col];
end;

function  TUltraGrid.GetCellColor(ACol, ARow : LongInt ) : TColor;
var
   ii  : LongInt;
begin
   Result := clWindow;

   for ii := 0 to Last_C_idx-1 do
   begin
      if  ( Arr_C_Pos[ii].X = ACol )
       and( Arr_C_Pos[ii].Y = ARow ) then
      begin
         Result := Arr_C_Color[ii];

         Break;
      end;
   end;
end;

function  TUltraGrid.GetCellFontColor(ACol, ARow : LongInt ) : TColor;
var
   ii  : LongInt;
begin
   Result := clWindow;

   for ii := 0 to Last_CF_idx-1 do
   begin
      if  ( Arr_CF_Pos[ii].X = ACol )
       and( Arr_CF_Pos[ii].Y = ARow ) then
      begin
         Result := Arr_CF_Color[ii];

         break;
      end;
   end;
end;

procedure TUltraGrid.SortGrid(ACol: Integer);
var
   SortList : array of array of String;
   TmpList  : array of String;
   i        : Integer;
   j        : Integer;
   k        : Integer;
   sVal     : Real;
   tVal     : Real;
begin
   try
      SetLength(SortList,RowCount);
      SetLength(tmpList,FMaxCol+1);
      for i := FixedRows to RowCount - 1 do
      begin
         SetLength(SortList[i],FMaxCol+1);

         if ( Cells[FMaxCol + 1,i] <> '' ) then
         begin
            Exit;
         end;

         for j := 0 to FMaxCol do
         begin
            SortList[i,j] := Cells[j,i];
         end;
      end;

      for i := FixedRows to RowCount - 2 do
      begin
         for k := i + 1 to RowCount - 1 do
         begin
            // 우측정렬이면 숫자형식이므로 숫자로 변환해서 Sort.
            if ( ColAlignmentArray[ACol] = taRightJustify ) then
            begin
               if ( StringReplace(SortList[i,ACol],',','',[rfReplaceAll, rfIgnoreCase]) = '' ) then
               begin
                  sVal  := -99999999999;
               end
               else
               begin
                  sVal := StrToFloat(StringReplace(SortList[i,ACol],',','',[rfReplaceAll, rfIgnoreCase]));
               end;

               if ( StringReplace(SortList[k,ACol],',','',[rfReplaceAll, rfIgnoreCase]) = '' ) then
               begin
                  tVal  := -99999999999;
               end
               else
               begin
                  tVal := StrToFloat(StringReplace(SortList[k,ACol],',','',[rfReplaceAll, rfIgnoreCase]));
               end;

               // 이미 오름차순 정렬이 되어 있으면 내림차순으로 정렬한다.
               if SortType[ACol] then
               begin
                  if sVal < tVal then
                  begin
                     for j := 0 to FMaxCol do
                     begin
                        tmpList[j]    := SortList[i,j];
                        SortList[i,j] := SortList[k,j];
                        SortList[k,j] := tmpList[j];
                     end;
                  end;
               end
               else
               begin
                  if sVal > tVal then
                  begin
                     for j := 0 to FMaxCol do
                     begin
                        tmpList[j]    := SortList[i,j];
                        SortList[i,j] := SortList[k,j];
                        SortList[k,j] := tmpList[j];
                     end;
                  end;
               end;
            end
            else
            begin
               if SortType[ACol] then
               begin
                  if UpperCase(SortList[i,ACol]) < UpperCase(SortList[k,ACol]) then
                  begin
                     for j := 0 to FMaxCol do
                     begin
                        tmpList[j]    := SortList[i,j];
                        SortList[i,j] := SortList[k,j];
                        SortList[k,j] := tmpList[j];
                     end;
                  end;
               end
               else
               begin
                  if UpperCase(SortList[i,ACol]) > UpperCase(SortList[k,ACol]) then
                  begin
                     for j := 0 to FMaxCol do
                     begin
                        tmpList[j]    := SortList[i,j];
                        SortList[i,j] := SortList[k,j];
                        SortList[k,j] := tmpList[j];
                     end;
                  end;
               end;
            end;
         end;
      end;

      for i := FixedRows to RowCount - 1 do
      begin
         for j := 0 to FMaxCol do
         begin
            Cells[j,i] := SortList[i,j];
         end;
      end;

      for i := 0 to ColCount - 1 do
      begin
         if ( i = ACol ) then
         begin
            SortType[i] := not SortType[i];
         end
         else
         begin
            SortType[i] := False;
         end;
      end;
   except
      exit;
   end;
end;

procedure TUltraGrid.RowUp(ARow:Integer);
begin
   if ( ARow > FixedRows ) then
   begin
      RowMoved(ARow,ARow-1);
      Row := ARow - 1;
   end;
end;

procedure TUltraGrid.RowDown(ARow:Integer);
begin
   if ( ARow < RowCount - 1 ) then
   begin
      RowMoved(ARow,ARow+1);
      Row := ARow + 1;
   end;
end;

procedure TUltraGrid.AppendRow(ARow: Integer);
var
   i  :  Longint;
   j  :  Longint;
begin
   //Insert 시키는 Row의 값이 Grid의 RowCount를 초과하면 Error
   if ARow > RowCount then
   begin
      raise ERangeError.Create('Incorrect Row Insertered');
   end
   else
   begin
      //Insert 시키는 Row의 값이 Grid의 RowCount와 같으면 맨뒤에 한 Row를 추가
      if ARow = RowCount - 1 then
      begin
         RowCount := RowCount + 1;
         Row      := RowCount - 1;
      end
      //Insert 시키는 Row의 값이 Grid의 RowCount보다 작으면 중간에 Row를 Insert
      else
      begin
         RowCount := RowCount + 1;

         try
            for i := 0 to Last_C_idx-1 do                      //추가된 Row의 뒤에 있는 Row의 Color를 하나씩 뒤로 미룬다.
            begin
               if ( Arr_C_Pos[i].Y >= ARow+1 ) then
                  Inc(Arr_C_Pos[i].Y);
            end;

            for i := 0 to Last_CF_idx-1 do                      
            begin
               if ( Arr_CF_Pos[i].Y >= ARow+1 ) then
                  Inc(Arr_CF_Pos[i].Y);
            end;
         except

         end;

         for i := RowCount - 2 downto ARow + 1 do                  //추가된 Row의 뒤에 있는 Row의 Text를 하나씩 뒤로 미룬다.
         begin
            RowMoved(i+1,i);
         end;

         Rows[ARow+1].Clear;
         Row := ARow + 1;
      end;
   end;
end;

end.
