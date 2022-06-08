unit CComWinU1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, StdCtrls, Buttons, ComCtrls, Mask, ExtCtrls, UltraGrid;

type
  TCComWinF1 = class(TForm)
    pn_condition: TPanel;
    Label2: TLabel;
    cb_condition: TComboBox;
    ed_Value: TEdit;
    bbt_Search: TBitBtn;
    ugd_Selcode: TUltraGrid;
    Panel2: TPanel;
    bbt_Select: TBitBtn;
    bbt_Close: TBitBtn;
    stb_Message: TStatusBar;
    cb_hidden: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure bbt_SearchClick(Sender: TObject);
    procedure bbt_SelectClick(Sender: TObject);
    procedure ed_ValueKeyPress(Sender: TObject; var Key: Char);
    procedure ugd_SelcodeKeyPress(Sender: TObject; var Key: Char);
    procedure bbt_CloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cb_conditionChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ugd_SelcodeDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    sCls       : String ;       // 팝업의 종류
    s_Sysdate  : String ;       // 현재일자
    sService   : String;        // 서비스명
    stype      : String;        // 검색조건값의 타입(한글 or 영문, 숫자)
    sTagetType : String;

    sType1, sType2, sType3 : String; //검색조건
    TargetCD  : TEdit;         // 코드값을 전달할 edit
    TargetNM  : TEdit;         // 명칭을  전달할 edit
    // Lee
    TargetNM1 : TEdit;         // 명칭을  전달할 edit
    TargetNM2 : TPanel;        // 명칭을 전달할 Panel
    function Check_row:Integer;
    procedure Disp_Grid;
  end;

var
  CComWinF1: TCComWinF1;

implementation

uses
   CComFunc, TuxMsg, VarCom, TuxCom, CCCLASS0, GComFunc, MsgCom, GMsg;


{$R *.DFM}

//===========================================
// FormShow
//===========================================
procedure TCComWinF1.FormShow(Sender: TObject);
var
   TempCon : TWinControl;
   iH, iW : Integer;
   function CheckFormTop : Integer;
   var
      iTemp : Integer;
   begin
      if Screen.ActiveForm.Formstyle = fsMDIChild then
         iTemp := TargetCD.Top + Screen.ActiveForm.Top + 114
      else
         iTemp := TargetCD.Top + Screen.ActiveForm.Top + 44;

      if (iTemp + Self.Height) > Screen.Height then
         if Screen.ActiveForm.Formstyle = fsMDIChild then
            iTemp := TargetCD.Top + Screen.ActiveForm.Top - Self.Height + 92
         else
            iTemp := TargetCD.Top + Screen.ActiveForm.Top - Self.Height + 22;
            
      Result := iTemp;
   end;

begin
   TempCon := TargetCD;

   iH := 0;
   iW := 0;
   while (TempCon.Parent <> nil) and NOT(TempCon.Parent is TForm) do
   begin
      iH := iH + TempCon.Parent.Top;
      iW := iW + TempCon.Parent.Left;
      TempCon := TempCon.Parent;
   end;
   self.Left := TargetCD.Left + Screen.ActiveForm.Left + 3 + iW;
   Self.Top  := CheckFormTop + iH;

   ugd_Selcode.Setfocus;
   ed_Value.SetFocus;

end;

//===========================================
// Form close
//===========================================
procedure TCComWinF1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := cafree;
end;

//===========================================
// 조회버튼
//===========================================
procedure TCComWinF1.bbt_SearchClick(Sender: TObject);
begin   //
   Disp_Grid;            // Display prodcedure
   if Self.visible then ugd_Selcode.Setfocus;
end;

//===========================================
//  선택버튼
//===========================================
procedure TCComWinF1.bbt_SelectClick(Sender: TObject);
begin
   TargetCD.Text := ugd_Selcode.Cells[0, ugd_Selcode.Row];
   if sTagetType = 'Panel' then
      TargetNM2.Caption :=   ugd_Selcode.Cells[1, ugd_Selcode.Row]
   else
      TargetNM.Text := ugd_Selcode.Cells[1, ugd_Selcode.Row];
   // Lee
   if ugd_Selcode.ColCount >= 3 then TargetNM1.Text:= ugd_Selcode.Cells[2, ugd_Selcode.Row];

   Self.Close;
end;

//===========================================
// 닫기버튼
//===========================================
procedure TCComWinF1.bbt_CloseClick(Sender: TObject);
begin
   Close;
end;

//===========================================
// 검색조회조건 엔터키처리
//===========================================
procedure TCComWinF1.ed_ValueKeyPress(Sender: TObject; var Key: Char);
begin//
   if Key = #13 then bbt_SearchClick(Sender);
end;

//===========================================
// 그리드 엔터키처리
//===========================================
procedure TCComWinF1.ugd_SelcodeKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then bbt_SelectClick(Sender);
end;

//===========================================
// 검색조건 콤보 변경시
//===========================================
procedure TCComWinF1.cb_conditionChange(Sender: TObject);
begin //
   ed_Value.Text := '';
end;

//===========================================
// GRID의 ROW 수를 구해 1이면 1, 1보다 크면 -1, 0이면 0 return
//===========================================
function TCComWinF1.Check_row:Integer;
begin
   Result := 0;

   with ugd_Selcode do
   begin
      if RowCount = 2 then
      begin
         if trim(Cells[ 1,1]) <> '' then Result := 1;
      end else if RowCount > 2 then
         Result := -1;
   end;

end;

//===========================================
// 조회
//===========================================
procedure TCComWinF1.Disp_Grid;
var
   ii,ij,RowNo, iEd : integer;
begin
   stb_Message.Panels[0].Text := '';
   ed_Value.text := Uppercase(ed_Value.text);
   // ugd_Selcode 초기화
   Clear_Grid(ugd_Selcode, ugd_Selcode.ColCount);
   ugd_Selcode.RowCount := 2;
   ugd_Selcode.Row := 1;

   try
      ccCommcd := HccCommcd.Create;                   // class 생성
      ChkDefaultCond(sCls);                           // 기본 검색조건값 setting

      ccCommcd.sLargcd    := self.sType1 ;
      ccCommcd.sComcddtl  := Trim(ed_Value.text);
      ccCommcd.sCdabbrnm  := cb_hidden.Items[cb_condition.itemindex];

      // CGCLASS0 ->  HcgCommcd.ListCode(sService : String; iCnt:Integer) : integer;
      RowNo := ccCommcd.ListCode(sService, ugd_Selcode.ColCount);

      if (RowNo = -1 ) then
      begin
         ccCommcd.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      if (RowNo = 0) then
      begin
         ccCommcd.Free;
         stb_Message.Panels[0].Text := MakeMsgStr(GF_A000);
         Exit;
      end;

      ugd_Selcode.RowCount := RowNo + 1;

      for ii := 0 to RowNo-1 do
      begin
         with ugd_Selcode do
         begin
            Cells[ 0,ii+1] := ccCommcd.sComcddtl    [ii];      // 코드
            Cells[ 1,ii+1] := ccCommcd.sCdabbrnm    [ii];      // 명
         end;
      end;

      ShowErrMsg(stb_Message);
      ccCommcd.Free;

   finally
      screen.Cursor  :=  crDefault;
   end;
   stb_Message.Panels[0].Text := MakeMsgStr(GF_A045, inttostr(RowNo));
end;


procedure TCComWinF1.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #27 then bbt_CloseClick(Sender);
end;

procedure TCComWinF1.ugd_SelcodeDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var ii : integer;
begin
   ii := ugd_Selcode.ColCount;
   resizegridcol(ugd_Selcode,ii);
end;

end.


