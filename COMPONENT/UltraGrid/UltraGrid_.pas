//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//  Program Name : UltraGrid
//
//  Description  : StringGrid�� ����� ������ Component
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
    - ������ StringGrid�� property�� ��� ��밡���ϸ� �߰��� property�� ������ �����ϴ�.

    1) Wrap : Cell���� ������ Wrap���θ� �����մϴ�. [True,False]
      �� �⺻������ ���ڱ��̰� ������� Grid�� Hint�� ����Ͽ� ������ �� �� �ֽ��ϴ�.
         �׷��� ������ �����ڰ� Hint�� ����� ���� �����ϴ�.

    2) State : ���� Grid�� ���¸� ��Ÿ�� [gsNone,gsInsert,gsUpdate]   //Run,ReadOnly
      �� State�� �ڵ������� �ƴϰ� �Ʒ��� method�� SetState�θ�  ������ ������ property �Դϴ�.
         OldState : ������ State�� ��Ÿ��                             //Run,ReadOnly
    3) FixedAlignment : Fixed Cell�� ������ �����մϴ�.
    4) FixedFontBold : Fixed Row�� Font Bold[����]�� �����մϴ�.
    5) Title : Grid�� Fixed Cell�� Title�� ����� ��� ���⿡ ��Ÿ�� Title���� Design�� �����մϴ�.
               (Column �и��ڴ� '|')

  2. method
    - ������ StringGrid�� method�� ��� ��밡���ϸ� �߰��� method�� ������ �����ϴ�.

    1) Clear                                               : Grid�� Clear�Ѵ�. �̶� Fixed Col,Row�� Clear���մϴ�.
    2) SetColor(ACol, ARow : Longint; AColor : TColor)     : Cell�� Color�� �����մϴ�.
    3) SetFontColor(ACol, ARow : Longint; AColor : TColor) : Cell�� Font�� Color�� �����մϴ�.
    4) ColorClear
    5) InsertRow(ARow: Longint)                            : ������ ��ġ�� Row�� �߰� �մϴ�.
    6) DeleteRow(ARow: Longint)                            : ������ ��ġ�� Row�� ���� �մϴ�.
    7) SetState(AState: TUltraGridState)                   : State�� ���� �մϴ�.
    8) SetColAlignment(ACol,AColAlignmnet)                 : Col������ ������ �����Ѵ�.

  3.event
    - ������ StringGrid�� event�� ��� ��밡���ϸ� �߰��� event�� ������ �����ϴ�.

    1) OnStateChange(Sender:TObject; var ASuccess: Boolean) : State����� �߻� event. �̶� ASuccess�� False�� �ָ�
                                                           State������ ��ҵ�

    2) OnBeforeColRowChange(Sender: TObject; PCol, NCol, PRow, NRow: Integer; var ASuccess: Boolean) : Grid��
                               Col,Row ����� �߻� event
                               PCOL:���� Col
                               NCol:����Ǿ��� Col
                               PRow:���� Row
                               NRow:����Ǿ��� Row
                               ASuccess�� False�� �ָ� Col,Row������ ��ҵ�

  �� Design time���� property�����Ŀ� �ݿ��� �ٷ� �ȵǴ� �͵��� �ִµ�
     F12�� �ι� ������ ȭ���� repaint��Ű�� �ݿ��˴ϴ�.

-------- History --------------------------------------------------------------

//V1.0   1997-10
   - Created by HyungTeak Sim (esaint@samsung.co.kr)

//v1.1   2001-04-18   Manwoong Park (mjacket@samsung.co.kr)
   - Property �߰�
     1) SelectedRowColor : ���õ� row�� ������ �����մϴ�. ($00FDEDDF)
     2) SelectedRowFontColr : ���õ� row�� Font������ �����մϴ�. (clNavy)

     �� GridLineWidth�� 0���� �����ϸ� column���м��� ���̰� ������ row����
        ���α��м��� ���Դϴ�. (���м� ������ clSilver)

//v1.2   2001-04-25   Manwoong Park (mjacket@samsung.co.kr)
   - Property �߰�
     1) GridRowColor : Line������ toggle�Ǵ� Grid row�� ������ ������ ��
                       �ֽ��ϴ�. ($00F0F0F0)
     2) GridRowFontColor : Line������ toggle�Ǵ� Grid row font�� ������
                           ������ �� �ֽ��ϴ�.

   - Property ����
     1) ColAlignment : ColAlign���� RightJustify�� ��� ���ڸ� format��
                       �־����ϴ�. ex) 1,000,000
                       ���ھƴϸ� format�� ���µ� ������ ��쵵 format��
                       �ֱ������ parameter�� ���� �����մϴ�.

                       --> ugd_1.ColAlignment(N, taRighJustify, False);

                       Cell�� ���� �ٲٴ°� �ƴϱ� Output Text�� �ٲٴϱ�
                       ���� ���Ҷ��� ',' �� �� �ʿ�� �����ϴ�.

     2) �������İ� �������Ľ� �ʹ� ��¦ �ٴ´����� �� �ణ�� ���� pixel��
        �־����ϴ�.

//v1.3   2001-04-28   Manwoong Park (mjacket@samsung.co.kr)
   - Event ����
     1) Grid�� Data�� �ѷ��� ������ �󿵿������� DoubleClick event��
        �߻����� �ʵ��� ���ҽ��ϴ�.
       (���� project����� ǰ�������� ��������)

//v1.4   2002-04-09   Hongseok Kim (jabdol@weppy.com)
   - FixedRow Double Click�� Grid Sort.
     1) Grid�� FixedRow�� Double Click�ϸ� �ش� Column�� �������� �������� ����.
        �ٽ� �ѹ� Double Click�ϸ� �������� ����.
        FixedCol�� �ִ� ��쿡�� Sort���� ����.
        ColAlignment�� taRightJustify�� ��쿡�� ���ڷ� �ν��ؼ� ������.
     2) Property �߰�
        AllowSort : Boolean;     Sort��� ��뿩��.
     3) ���� �������� ���ĵǾ� �ִ��� ���θ� �����ϴ� ���� ���� �߰�.
        SortType  : array[0..150] of Boolean;   ���� �������� ���ĵ� ���¸� True
                                                ���������̰ų� ������ �ȵǾ� �ִ� ���¸� False.

//v1.5  2002-11-26    Manwoong Park (manwoong.park@samsung.com)
   - Color���� Variant�� Dynamic Array�� �����Ͽ� color���� method�� performance ���
   - Color������ Cell������ color�� ������� "clNone"���� �����ϸ� �ǰ� ��ü clear�� "colorclear"

//v1.55 2002-12-24    Manwoong Park (manwoong.park@samsung.com)
   - SetColor�� SetFontColor�����ÿ� Column���� -1�� �ָ� ��ürow�� ���Ͽ� �����ϵ��� ����

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

    // Col�� Alignment�� �����ϴ� Array
    ColAlignmentArray   :  array[0..150] of TAlignment;
    // Col Align�� �ݾ����� ���� �����ϴ� Array (Added by Park manwoong 2001.4.25)
    ColAlignmentArray2  :  array[0..150] of Boolean;

    // ���� �������� ���ĵǾ� �ִ��� ���� �����ϴ� Array
    SortType            :  array[0..150] of Boolean;

    // Color ����--------------------------------------��
    //--Cell color
    Arr_C_Color : array of TColor;  // Cell�� color�� �����ϴ� Array
    Arr_C_Pos   : array of TPoint;  // color�� ������ Cell�� ��ġ(X:ACol,Y:ARow)
    Last_C_idx  : LongInt;          // color Array�� ��ȿ�� ������ Index
    MAX_C_length: LongInt;          // color Array�� Length Bound

    //--Font color
    Arr_CF_Color : array of TColor; // Cell Font�� color�� �����ϴ� Array
    Arr_CF_Pos   : array of TPoint; // Font color�� ������ Cell�� ��ġ(X:ACol,Y:ARow)
    Last_CF_idx  : LongInt;         // Font color Array�� ��ȿ�� ������ Index
    MAX_CF_length: LongInt;         // Font color Array�� Length Bound
    //-------------------------------------------------��

    // Cell�� Text�� Wrap ����;
    FWrap               :  Boolean;
    FFixedAlignment     :  TAlignment;
    FFixedFontBold      :  Boolean;

    // Grid�� Data�� ������ �󿵿������� DoubleClick�� �� �߻��ϰ��ϱ����ؼ�
    // ��ġ������ �����Ѵ�(Added by Park manwoong 2001.4.25)
    g_Rect              :  TRect;

    // ���õ� row�� ����
    FSelectedRowColor      :  TColor;
    // ���õ� row�� font����
    FSelectedRowFontColor  :  TColor;
    // ¦��row�� ����
    FGridRowColor          :  TColor;
    // ¦��row font�� ����
    FGridRowFontColor      :  TColor;

    // stat������� event;
    FOnStateChange         :  TStateChangeEvent;
    // Col,Row������� event;
    FOnBeforeColRowChange  :  TColRowChangeEvent;
    // Grid�� ���� [gsUpdate, gsInsert, gsNone];
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
    //DblClick�� Click��ġ����� ������
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    //Grid�� Data���� �󿵿������� DoubleClick�� �ȵǵ��� ������ (Added by Park manwoong 2001.4.25)
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
   
   // color����---------------------------------------��
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

   //Array �ʱ�ȭ
   for i := 0 to High(Arr_C_Color) do
   begin
      Arr_C_Color [i]   := color;
      Arr_C_Pos   [i].X := -1;  //Col
      Arr_C_Pos   [i].Y := -1;  //Row

      Arr_CF_Color[i]   := Font.color;
      Arr_CF_Pos  [i].X := -1;  //Col
      Arr_CF_Pos  [i].Y := -1;  //Row
   end;
   //-------------------------------------------------��
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
   //Insert ��Ű�� Row�� ���� Grid�� RowCount�� �ʰ��ϸ� Error
   if ARow > RowCount then
   begin
      raise ERangeError.Create('Incorrect Row Insertered');
   end
   else
   begin
      //Insert ��Ű�� Row�� ���� Grid�� RowCount�� ������ �ǵڿ� �� Row�� �߰�
      if ARow = RowCount then
      begin
         RowCount := RowCount + 1;
         Row      := RowCount - 1;
      end
      //Insert ��Ű�� Row�� ���� Grid�� RowCount���� ������ �߰��� Row�� Insert
      else
      begin
         RowCount := RowCount + 1;
         try
            for i := 0 to Last_C_idx-1 do                      //�߰��� Row�� �ڿ� �ִ� Row�� Color�� �ϳ��� �ڷ� �̷��.
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

         for i := RowCount - 2 downto ARow do                  //�߰��� Row�� �ڿ� �ִ� Row�� Text�� �ϳ��� �ڷ� �̷��.
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
   // Delete ��Ű�� Row�� ���� Grid�� RowCount �̻��̰ų� FixedRows �̸��̸� Error
   if ( ARow >= RowCount  ) or
      ( ARow <  FixedRows ) then
   begin
      raise ERangeError.Create('Incorrect Row Deleted');
   end
   // Delete ��Ű�� Row�� ���� Grid�� ��밡���� ������ Row�̸� Clear;
   else if ( ARow = FixedRows    ) and
           ( ARow = RowCount - 1 ) then
   begin
      Clear;
   end
   else
   begin
      try
         // ������ Row�� �ڿ� �ִ� Row�� Color�� �ϳ��� ����.
         for i := 0 to Last_C_idx-1 do
         begin
            if ( Arr_C_Pos[i].Y > ARow ) then
               Dec(Arr_C_Pos[i].Y)
            // ������ Row�� Color�� ���ش�.
            else if ( Arr_C_Pos[i].Y = ARow ) then
               Arr_C_Color[i] := Color;
         end;

         for i := 0 to Last_CF_idx-1 do
         begin
            if ( Arr_CF_Pos[i].Y > ARow ) then
               Dec(Arr_CF_Pos[i].Y)
            // ������ Row�� Color�� ���ش�.
            else if ( Arr_CF_Pos[i].Y = ARow ) then
               Arr_CF_Color[i] := Font.Color;
         end;
      except

      end;

      // ������ Row�� �ڿ� �ִ� Row�� Text�� �ϳ��� ����.
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

   //��ü row�� color����
   if ACol = -1 then
   begin
      for jj := FixedCols to ColCount-1 do
      begin
         //Array������ ���������� �ִ��� chk
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
         
         //�ű� ������
         if ( idx = -1 ) then
         begin
            //clnone�̸� color���� ���ǹ�
            if AColor = clNone then
               continue
            else
            begin
               result := True;

               Arr_C_Color[Last_C_idx]   := AColor;
               Arr_C_Pos  [Last_C_idx].X := jj;
               Arr_C_Pos  [Last_C_idx].Y := ARow;

               Inc(Last_C_idx);

               //Array size����
               if Last_C_idx >= Max_C_length then
               begin
                  Max_C_length := Max_C_length + 10;

                  SetLength(Arr_C_Color, Max_C_length);
                  SetLength(Arr_C_Pos  , Max_C_length);

                  //�ʱ�ȭ
                  for ii := Last_C_idx to High(Arr_C_Color) do
                  begin
                     Arr_C_Color[ii]   := clWindow;
                     Arr_C_Pos  [ii].X := -1;
                     Arr_C_Pos  [ii].Y := -1;
                  end;
               end;
            end;
         end
         //�������� ����
         else
         begin
            //color�� clNone�̸� color���� ����
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
      //Array������ ���������� �ִ��� chk
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
      
      //�ű� ������
      if ( idx = -1 ) then
      begin
         //clnone�̸� color���� ���ǹ�
         if AColor = clNone then
            Exit
         else
         begin
            result := True;
      
            Arr_C_Color[Last_C_idx]   := AColor;
            Arr_C_Pos  [Last_C_idx].X := ACol;
            Arr_C_Pos  [Last_C_idx].Y := ARow;
      
            Inc(Last_C_idx);
      
            //Array size����
            if Last_C_idx >= Max_C_length then
            begin
               Max_C_length := Max_C_length + 10;
      
               SetLength(Arr_C_Color, Max_C_length);
               SetLength(Arr_C_Pos  , Max_C_length);
      
               //�ʱ�ȭ
               for ii := Last_C_idx to High(Arr_C_Color) do
               begin
                  Arr_C_Color[ii]   := clWindow;
                  Arr_C_Pos  [ii].X := -1;
                  Arr_C_Pos  [ii].Y := -1;
               end;
            end;
         end;
      end
      //�������� ����
      else
      begin
         //color�� clNone�̸� color���� ����
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

   //��ü row�� font color����
   if ACol = -1 then
   begin
      for jj := FixedCols to ColCount-1 do
      begin
         //Array������ ���������� �ִ��� chk
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

         //�ű� ������
         if ( idx = -1 ) then
         begin
            //clnone�̸� color���� ���ǹ�
            if AColor = clNone then
               Continue
            else
            begin
               result := True;

               Arr_CF_Color[Last_CF_idx]   := AColor;
               Arr_CF_Pos  [Last_CF_idx].X := jj;
               Arr_CF_Pos  [Last_CF_idx].Y := ARow;

               Inc(Last_CF_idx);

               //Array size����
               if Last_CF_idx >= Max_CF_length then
               begin
                  Max_CF_length := Max_CF_length + 10;

                  SetLength(Arr_CF_Color, Max_CF_length);
                  SetLength(Arr_CF_Pos  , Max_CF_length);

                  //�ʱ�ȭ
                  for ii := Last_CF_idx to High(Arr_CF_Color) do
                  begin
                     Arr_CF_Color[ii]   := clWindowText;
                     Arr_CF_Pos  [ii].X := -1;
                     Arr_CF_Pos  [ii].Y := -1;
                  end;
               end;
            end;
         end
         //�������� ����
         else
         begin
            //color�� clNone�̸� color���� ����
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
      //Array������ ���������� �ִ��� chk
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

      //�ű� ������
      if ( idx = -1 ) then
      begin
         //clnone�̸� color���� ���ǹ�
         if AColor = clNone then
            Exit
         else
         begin
            result := True;

            Arr_CF_Color[Last_CF_idx]   := AColor;
            Arr_CF_Pos  [Last_CF_idx].X := ACol;
            Arr_CF_Pos  [Last_CF_idx].Y := ARow;

            Inc(Last_CF_idx);

            //Array size����
            if Last_CF_idx >= Max_CF_length then
            begin
               Max_CF_length := Max_CF_length + 10;

               SetLength(Arr_CF_Color, Max_CF_length);
               SetLength(Arr_CF_Pos  , Max_CF_length);

               //�ʱ�ȭ
               for ii := Last_CF_idx to High(Arr_CF_Color) do
               begin
                  Arr_CF_Color[ii]   := clWindowText;
                  Arr_CF_Pos  [ii].X := -1;
                  Arr_CF_Pos  [ii].Y := -1;
               end;
            end;
         end;
      end
      //�������� ����
      else
      begin
         //color�� clNone�̸� color���� ����
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
   ColAlignmentArray2[ACol] := AShowMoneyType;   //�������Ľ� �ݾ�ǥ�ø� 1,000,000�� ���� �ϱ����ؼ� �߰�(Added by Park manwoong 2001.4.25)
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
   //  Cell�� Color�� FontColor�� ������ Color�� ���� Draw             //
   //------------------------------------------------------------------//
   if not(gdFixed in AState) then                                                 //Cell�� Fixed Cell�� �ƴϸ�
   begin
      //--Added by Park manwoong
      // ¦��row�� ����
      if (ARow mod 2) > 0 then
      begin
         Canvas.Brush.Color   := FGridRowColor;
         Canvas.Font.Color    := FGridRowFontColor;
      end;

      // ���õ� ROW�� ��������
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

   Canvas.FillRect(ARect);                                                        //ȭ�鿡 Cell�� �׸���.

   //--Added by Park manwoong
   //  Grid���м� �Ⱥ��̰� ������row���� ���̵���
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
   //  Cell�� Text�� Wrap                                              //
   //------------------------------------------------------------------//
   if (gdFixed in AState) then                                                 //Cell�� Fixed Cell
   begin
      if FFixedFontBold then
      begin
         Canvas.Font.Style := Canvas.Font.Style + [fsBold];
      end
      else
      begin
         Canvas.Font.Style := Canvas.Font.Style - [fsBold];
      end;

      //������ ���̰� Cell�� Width���� ������
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
      //������ ���̰� Cell�� Width���� ������
      if ( Canvas.TextWidth(Cells[ACol,ARow]) + ARect.Left < ARect.Right ) then
      begin
         if ( ColAlignmentArray[ACol] = taCenter ) then
         begin
            Canvas.TextOut(ARect.Left + ((ARect.Right - ARect.Left - Canvas.TextWidth(Cells[ACol,ARow])) div 2), ARect.Top+3, Cells[ACol,ARow]);
         end
         else if ( ColAlignmentArray[ACol] = taRightJustify ) then
         begin
            //�������Ľ� �ݾװ� ���õǼ� ǥ���ؾ� �Ǹ� 1,000,000�������� ǥ��(Added by Park manwoong)
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
         //  Grid���м� �Ⱥ��̰� ������row���� ���̵���
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

   //Cell�� Width�� 2���ڸ� �׸��⿡ ������ wrap��Ű�� �ʴ´�.
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

   //Cell�� Text�� ���� ���� ������ Wrap�κ��� Skip�ϰ� ����
   if ( length(Sentence) = 0 ) then
   begin
      Canvas.TextOut(ARect.Left, ARect.Top+1, Cells[ACol,ARow]);
      if ( Assigned(OnDrawCell) ) then
      begin
         OnDrawCell(Self, ACol, ARow, ARect, AState);
      end;

      exit;
   end;

   while ( not EOFSentence ) do                                                     //Cell�� Text�� ���ڼ� ��ŭ ����
   begin
      Sentencelength := length(Sentence);
      FitSentence    := False;

      while ( not FitSentence ) do                                                  //cell�� width�� �´� ������  ���ڸ� �о���� ������ ����
      begin
         CurString := Copy(Sentence,0,Sentencelength);

         if ( (Canvas.TextWidth(CurString) + XPos) > ARect.Right ) then               //�о���� ������ ���̰� Cell�� Width���� ������
         begin
            Dec(Sentencelength);                                                   //�о���� ������ ���� ����
         end
         else
         begin
            FitSentence := True;
         end;
      end;

      SubString := AnsiLastChar(CurString);                                       //�о���� ���ڿ��� ���������ڸ� ���Ѵ�. �̶� ���������ڰ�  �ѱ��̸� 2���ڰ� Return
      if ( length(SubString) = 1 ) then                                               //������ ������ ���̰�  1�ڸ��϶�
      begin
         if ( ord(SubString[0]) > 128 ) then                                          //Ascii ���� 128���� ũ�� �ѱ��� ������ �߸����̹Ƿ�
         begin
            Dec(Sentencelength);                                                  //�ѹ��ڸ� �� �о�鿩 �ѱ��� ������ ���� ���´�.
            CurString := Copy(Sentence,0,Sentencelength);
         end;
      end;

      Canvas.TextOut(XPos, YPos, CurString);                                      //ȭ�鿡 ���ڸ� ���

      if ( sentence = CurString ) then                                                //Cell�� ��繮�ڸ� ��������� ����
      begin
         EOFSentence := True;
      end
      else
      begin
         Sentence := Copy(Sentence,Sentencelength + 1,Length(sentence)-Sentencelength);
      end;

      if ( not FWrap                 ) and
         ( not ( gdFixed in AState ) ) then                            //wrap�� �������� �ʾ����� ȭ�鿡 ��������� ����.
      begin
         EOFSentence := True;
      end;

      YPos        := YPos + Canvas.TextHeight(Sentence);                                 //�������� Y��ǥ�� ���Ѵ�.
      uCellHeight := uCellHeight + Canvas.TextHeight(Sentence);
   end;

   //--Added by Park manwoong
   //  Grid���м� �Ⱥ��̰� ������row���� ���̵���
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
   //Click�� ��ġ�����
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
            // ���������̸� ���������̹Ƿ� ���ڷ� ��ȯ�ؼ� Sort.
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

               // �̹� �������� ������ �Ǿ� ������ ������������ �����Ѵ�.
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
   //Insert ��Ű�� Row�� ���� Grid�� RowCount�� �ʰ��ϸ� Error
   if ARow > RowCount then
   begin
      raise ERangeError.Create('Incorrect Row Insertered');
   end
   else
   begin
      //Insert ��Ű�� Row�� ���� Grid�� RowCount�� ������ �ǵڿ� �� Row�� �߰�
      if ARow = RowCount - 1 then
      begin
         RowCount := RowCount + 1;
         Row      := RowCount - 1;
      end
      //Insert ��Ű�� Row�� ���� Grid�� RowCount���� ������ �߰��� Row�� Insert
      else
      begin
         RowCount := RowCount + 1;

         try
            for i := 0 to Last_C_idx-1 do                      //�߰��� Row�� �ڿ� �ִ� Row�� Color�� �ϳ��� �ڷ� �̷��.
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

         for i := RowCount - 2 downto ARow + 1 do                  //�߰��� Row�� �ڿ� �ִ� Row�� Text�� �ϳ��� �ڷ� �̷��.
         begin
            RowMoved(i+1,i);
         end;

         Rows[ARow+1].Clear;
         Row := ARow + 1;
      end;
   end;
end;

end.
