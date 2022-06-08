unit MDP410U1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, Grids, UltraGrid, Menus, NumEdit;

type
  TMDP410F1 = class(TForm)
    pn_Header: TPanel;
    Panel17: TPanel;
    rbt_Op: TRadioButton;
    rbt_Trans: TRadioButton;
    rbt_History: TRadioButton;
    Panel4: TPanel;
    pn_History: TPanel;
    Panel3: TPanel;
    bbt_Close: TBitBtn;
    stb_Message: TStatusBar;
    pn_PatNo: TPanel;
    ed_PatName: TEdit;
    rbt_Blood: TRadioButton;
    pn_Op: TPanel;
    pn_Blood: TPanel;
    pn_Trans: TPanel;
    pn_Title: TPanel;
    Panel32: TPanel;
    ugd_History: TUltraGrid;
    Bevel1: TBevel;
    ugd_OrdDate: TUltraGrid;
    ugd_Op: TUltraGrid;
    ugd_Blood: TUltraGrid;
    ugd_Trans: TUltraGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    ugd_Order: TUltraGrid;
    pn_PatInfo: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    pn_SexAge: TPanel;
    pn_TelNo: TPanel;
    pn_Address: TPanel;
    pn_ResNo: TPanel;
    pn_ZipCd: TPanel;
    Panel5: TPanel;
    pn_Ward: TPanel;
    bbt_Booking: TBitBtn;
    Panel6: TPanel;
    ugd_Temp: TUltraGrid;
    bbt_Print: TBitBtn;
    ugd_PrintList: TUltraGrid;
    Label1: TLabel;
    pn_WardRoom: TPanel;
    bbt_ExmCancel: TBitBtn;
    pm_Order: TPopupMenu;
    ExmCancel: TMenuItem;
    cbx_Flag: TCheckBox;
    Label2: TLabel;
    pn_Insu: TPanel;
    bbt_Interest: TBitBtn;
    pn_Group: TPanel;
    Label3: TLabel;
    lb_Gubun: TLabel;
    bbt_SetCancel: TBitBtn;
    ed_SetNm: TEdit;
    bbt_SetInsert: TBitBtn;
    pn_Interest: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    combx_SetCd: TComboBox;
    combx_SetNm: TComboBox;
    bbt_IntInsert: TBitBtn;
    bbt_IntCancel: TBitBtn;
    me_Comment: TMemo;
    bbt_Choice: TBitBtn;
    rbt_Gubun1: TRadioButton;
    rbt_Gubun2: TRadioButton;
    bbt_Change: TBitBtn;
    pn_Tel: TPanel;
    ed_TelNo1: TEdit;
    ed_TelNo2: TEdit;
    ed_TelNo3: TEdit;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    bbt_Ok: TBitBtn;
    bbt_No: TBitBtn;
    pm_DrugInfo: TMenuItem;
    pm_Price: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbt_CloseClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ed_PatNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure rbt_HistoryClick(Sender: TObject);
    procedure rbt_OpClick(Sender: TObject);
    procedure rbt_BloodClick(Sender: TObject);
    procedure rbt_TransClick(Sender: TObject);
    procedure ed_PatNameChange(Sender: TObject);
    procedure ugd_HistoryClick(Sender: TObject);
    procedure ugd_OrdDateClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ed_PatNameEnter(Sender: TObject);
    procedure bbt_BookingClick(Sender: TObject);
    procedure bbt_PrintClick(Sender: TObject);
    procedure ugd_OrderDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure ugd_OrdDateDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure ugd_OrderMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pm_OrderPopup(Sender: TObject);
    procedure ExmCancelClick(Sender: TObject);
    procedure bbt_ExmCancelClick(Sender: TObject);
    procedure ugd_OrderClick(Sender: TObject);
    procedure cbx_FlagClick(Sender: TObject);
    procedure bbt_InterestClick(Sender: TObject);
    procedure InsInterest(sFlag1,sFlag2:String);
    procedure bbt_SetInsertClick(Sender: TObject);
    procedure bbt_SetCancelClick(Sender: TObject);
    procedure rbt_Gubun1Click(Sender: TObject);
    procedure rbt_Gubun2Click(Sender: TObject);
    procedure bbt_ChoiceClick(Sender: TObject);
    procedure combx_SetNmChange(Sender: TObject);
    procedure bbt_IntInsertClick(Sender: TObject);
    procedure bbt_IntCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbt_NoClick(Sender: TObject);
    procedure bbt_ChangeClick(Sender: TObject);
    procedure bbt_OkClick(Sender: TObject);
    procedure pm_DrugInfoClick(Sender: TObject);
    procedure pm_PriceClick(Sender: TObject);
  private
    { Private declarations }
    procedure GetPatInfo;   //환자기본정보 조회 Procedure
  public
    { Public declarations }
    g_PatNo,g_MedDate,g_MedDr : String;
  end;

var
   MDP410F1: TMDP410F1;

implementation

uses
   CComFunc, VarCom, TuxCom, MsgCom,
   MDCLASS1, MDC100U1, MDO110U6, MDP320U1,  MDN110U1_P02, MDN120U1,
   MDMAINU1, MDO111U1, MDO111U8;

{$R *.DFM}

procedure TMDP410F1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TMDP410F1.bbt_CloseClick(Sender: TObject);
begin
   Close;
end;

procedure TMDP410F1.FormDestroy(Sender: TObject);
begin
   MDP410F1 := Nil;
end;

procedure TMDP410F1.FormShow(Sender: TObject);
var
   i : Integer;
begin
   //Controls 위치 지정
   pn_History.Top  := pn_Header.Height + pn_PatInfo.Height - 4;
   pn_History.Left := pn_Header.Left;

   pn_Op.Top       := pn_History.Top;
   pn_Op.Left      := pn_History.Left;
   pn_Op.Height    := pn_History.Height;

   pn_Blood.Top    := pn_History.Top;
   pn_Blood.Left   := pn_History.Left;
   pn_Blood.Height := pn_History.Height;

   pn_Trans.Top    := pn_History.Top;
   pn_Trans.Left   := pn_History.Left;
   pn_Blood.Height := pn_History.Height;

   pn_Interest.Left := 230;
   pn_Interest.Top  := 25;

   pn_Group.Left    := 290;
   pn_Group.Top     := 85;

   //의사인 경우, [관심환자등록] Button Visible
   if (md_JicJong = 'AB1') or (md_JicJong = 'AB2') or (md_JicJong = 'AB3') or (md_JicJong = 'BB1') or
      (md_JicJong = 'CB2') or (md_JicJong = 'DB3') or (md_JicJong = 'EB4') or (md_JicJong = 'HA1') or
      (md_JicJong = 'IA1') or (md_JikGup  = 'RB9') or (md_JikGup  = 'RC1') then   // 의사
      bbt_Interest.Visible := True
   else
      bbt_Interest.Visible := False;

   //Grid Set
   ugd_History.SetColAlignment(0,taCenter); //진료구분
   ugd_Op.SetColAlignment(0,taCenter);      //수술일
   ugd_Blood.SetColAlignment(0,taCenter);   //처방일
   ugd_Trans.SetColAlignment(0,taCenter);   //등록일
   ugd_Order.SetColAlignment(3,taCenter);   //수납여부

   //타 Form에서 환자번호 넘긴 경우
   if g_PatNo <> '' then
   begin
      pn_PatNo.Caption := g_PatNo;

      //환자기본정보 조회하여 display
      GetPatInfo;

      //수진이력조회
      rbt_HistoryClick(Nil);

      if g_MedDate <> '' then
      begin
         for i:= 1 to ugd_History.RowCount-1 do
         begin
            if (g_MedDate = Copy(Trim(ugd_History.Cells[1,i]),1,10))
               and (g_MedDr = Trim(ugd_History.Cells[4,i])) then
            begin
               ugd_History.Row := i;
               break;
            end;
         end;
      end;

      ActiveControl := ugd_History;
   end

   //Menu에서 call한 경우
   else
   begin
      if md_PatNo <> '' then
      begin
         //환자기본정보 Assign
         ed_PatName.Text    := md_PatName;
         pn_PatNo.Caption   := md_PatNo;
         pn_ResNo.caption   := md_ResNo1 + '-' + md_ResNo2;
         pn_SexAge.Caption  := md_Sex + '/' + Trim(Calc_Age(Date,md_BirtDate));
         pn_TelNo.Caption   := ' (집)'+md_TelNo1 + ' (HP)' + md_TelNo3;
         pn_ZipCd.Caption   := md_ZipCd;
         pn_Address.Caption := ' ' + md_Address;
         ed_TelNo1.Text := md_TelNo1;
         ed_TelNo2.Text := md_TelNo2;
         ed_TelNo3.Text := md_TelNo3;

         //수진이력조회
         rbt_HistoryClick(Sender);
      end
      else
      begin
         pn_ResNo.caption   := '';
         pn_SexAge.Caption  := '';
         pn_TelNo.Caption   := '';
         pn_ZipCd.Caption   := '';
         pn_Address.Caption := '';
         ed_TelNo1.Text := '';
         ed_TelNo2.Text := '';
         ed_TelNo3.Text := '';

         ActiveControl := ed_PatName;
      end;
   end;

   // 외래간호에서만 [재진예약] 가능하게 함.
   if MDN120F1 <> nil then
      bbt_Booking.Visible := True;
end;

//환자명 입력Field OnEnter시 Tag 변경(OnChange시 Check하기위해)
procedure TMDP410F1.ed_PatNameEnter(Sender: TObject);
begin
   ed_PatName.Tag := 1;
end;

//환자명 변경시 화면 Clear
procedure TMDP410F1.ed_PatNameChange(Sender: TObject);
var
   i : Integer;
   TempCompnt : TComponent;
begin
   //Grid All Clear;
   for i := 0 to ComponentCount-1 do
   begin
      if (Components[i] is TUltraGrid) then
      begin
         TempCompnt := Components[i];
         Clear_Grid( TUltraGrid(TempCompnt), TUltraGrid(TempCompnt).ColCount);
      end;
   end;
   //Cleat Pat Info.
   pn_ResNo.caption   := '';
   pn_SexAge.Caption  := '';
   pn_TelNo.Caption   := '';
   ed_TelNo1.Text := '';
   ed_TelNo2.Text := '';
   ed_TelNo3.Text := '';

   pn_ZipCd.Caption   := '';
   pn_Address.Caption := '';

   if ed_PatName.Tag = 1 then
   begin
      pn_PatNo.Caption := '';
      pn_Ward.Caption  := '';
   end;
   stb_Message.Panels[0].Text := '';
end;

//환자명 입력후 EnterKey 입력시 환자번호 대상자 찾기
procedure TMDP410F1.ed_PatNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
   ResultVal : Boolean;
begin
   //Clear
   stb_Message.Panels[0].Text := '';

   //Enter Key 입력시에만 처리
   if (Key <> 13) or
      (Trim(ed_PatName.Text) = '') then
      Exit;

   // 환자명으로 대상자찾기 (Result=True:자료선택)
   ed_PatName.Tag := 0;
   if cbx_Flag.Checked then   // 재원환자
      ResultVal := GetPatNameFlag(ed_PatName, pn_PatNo, ed_PatName, pn_SexAge, '2')
   else
      ResultVal := GetPatNameFlag(ed_PatName, pn_PatNo, ed_PatName, pn_SexAge, '1');

   ed_PatName.Tag := 1;

   // Result=True ==> 자료가 선택된 경우
   if (ResultVal) then
   begin
      //환자기본정보 조회하여 display
      GetPatInfo;

      //자료가 선택된 경우, 선택된 조회구분에 따라 해당이력 Display
      if (pn_PatNo.Caption <> '') then
      begin
         // 수진이력이 선택된 경우
         if rbt_History.Checked then
            rbt_HistoryClick(Nil);
         // 수술이력이 선택된 경우
         if rbt_Op.Checked then
            rbt_OpClick(Nil);
         // 수혈이력이 선택된 경우
         if rbt_Blood.Checked then
            rbt_BloodClick(Nil);
         // 전과전등이력이 선택된 경우
         if rbt_Trans.Checked then
            rbt_TransClick(Nil);
      end;
   end;
end;

//환자기본정보 조회 Procedure
procedure TMDP410F1.GetPatInfo;
var
   RowNo, i : Integer;
   PatName,PatNo,Cond : String;
begin
   // Display Field(s) Clear
   pn_ResNo.caption   := '';
   pn_SexAge.Caption  := '';
   pn_TelNo.Caption   := '';

   ed_TelNo1.Text := '';
   ed_TelNo2.Text := '';
   ed_TelNo3.Text := '';

   pn_ZipCd.Caption   := '';
   pn_Address.Caption := '';

   //환자기본정보 조회하여 Display
   Screen.Cursor := crHourglass;
   try
      //Create Class
      mdPatinf := HmdPatinf.Create;

      //Assign Input Parameter(s).
      Cond    := '3';              //조건:'3'=환자번호로 찾기
      PatNo   := pn_PatNo.Caption; //환자번호
      PatName := '';               //환자명

      //공통Class Function Call (환자 List SELECT)
      //RowNo := mdPatinf.ListPatInfo(PatName,PatNo,PatId1,PatId2); //2001.08.10 수정
      RowNo := mdPatinf.ListPatbat(Cond,PatNo,PatName);

      //오류시 Message처리, Exit
      if (RowNo = -1) then
      begin
         mdPatinf.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      //자료건수=0인경우, Exit
      if (RowNo = 0) then
      begin
         mdPatinf.Free;
         Exit;
      end;

      //Select된 Data를 Grid에 Display
      i := 0;
      ed_PatName.Text    := mdPatinf.sPatName[i];                        //환자번호
      pn_ResNo.caption   := mdPatinf.sResno1[i]+'-'+mdPatinf.sResno2[i]; //주민등록번호
      pn_SexAge.Caption  := mdPatinf.sSex[i]+'/'
                          + Trim(Calc_Age(Date,mdPatinf.sBirtDate[i]));  //성별+나이
      pn_TelNo.Caption   := '(집)'+mdPatinf.sTelNo1[i]
                          + ' (HP)'+mdPatinf.sTelNo3[i];                 //전화번호
      pn_ZipCd.Caption   := mdPatinf.sZipCd[i];                          //우편번호
      pn_Address.Caption := ' '+mdPatinf.sAddress[i];                    //주소

      ed_TelNo1.Text := mdPatinf.sTelNo1[i];
      ed_TelNo2.Text := mdPatinf.sTelNo2[i];
      ed_TelNo3.Text := mdPatinf.sTelNo3[i];

      mdPatinf.Free;
   finally
      Screen.Cursor := crDefault;
   end;
end;

procedure TMDP410F1.cbx_FlagClick(Sender: TObject);
begin
   ed_PatName.Text := '';
   ed_PatName.SetFocus;
end;

// 수진이력 click
procedure TMDP410F1.rbt_HistoryClick(Sender: TObject);
var
   RowNo, i : Integer;
   PatNo, Locate : String;
begin
   //화면 Clear
   stb_Message.Panels[0].Text := '';
   Clear_Grid(ugd_History,ugd_History.ColCount);
   Clear_Grid(ugd_OrdDate,ugd_OrdDate.ColCount);
   Clear_Grid(ugd_Order,  ugd_Order.ColCount);

   //수진이력List Panel Visible..
   pn_History.Visible := True;
   pn_OP.Visible      := False;
   pn_Blood.Visible   := False;
   pn_Trans.Visible   := False;
   //환자에 대한 수진이력 Select 하여 Display
   Screen.Cursor := crHourGlass;
   try
      //Create Class
      mdPdiagt := HmdPdiagt.Create;

      //Assign Input Parameter(s)..
      PatNo  := pn_PatNo.Caption; //환자번호
      Locate := G_LOCATE;         //사업장

      //공통Class Function Call (환자 수진이력 List SELECT)
      RowNo := mdPdiagt.ListDiagHistory(PatNo,Locate);

      //오류시 Message처리, Exit
      if (RowNo = -1) then
      begin
         mdPdiagt.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      //자료건수=0인경우, Exit
      if (RowNo = 0) then
      begin
         mdPdiagt.Free;
         stb_Message.Panels[0].Text := '해당 자료가 한건도 존재하지 않습니다.';
         Exit;
      end;

      //Select된 Data를 Grid에 Display
      ugd_History.RowCount := RowNo + 1;
      for i := 0 to RowNo-1 do
      begin
         //외래환자
         if      mdPdiagt.sPatsect[i] = 'O' then
         begin
            ugd_History.Cells[0,i+1] := '외래';                           //환자구분
            ugd_History.Cells[1,i+1] := ConvertDDate(mdPdiagt.sIndate[i]);//내원일시
            ugd_History.Cells[2,i+1] := '';                               //퇴원일시
         end
         //입원환자
         else if mdPdiagt.sPatsect[i] = 'I' then
         begin
            ugd_History.Cells[0,i+1] := '입원';
            ugd_History.Cells[1,i+1] := ConvertSDate(mdPdiagt.sIndate[i]);
            if mdPdiagt.sOutDate[i] <> '' then
               ugd_History.Cells[2,i+1] := ConvertSDate(mdPdiagt.sOutDate[i]);
         end
         //응급환자
         else if mdPdiagt.sPatsect[i] = 'E' then
         begin
            ugd_History.Cells[0,i+1] := '응급';
            ugd_History.Cells[1,i+1] := ConvertDDate(mdPdiagt.sIndate[i]);
            ugd_History.Cells[2,i+1] := ConvertDDate(mdPdiagt.sOutDate[i]);
         end;
         ugd_History.Cells[3,i+1] := mdPdiagt.sDeptnm[i];  // 진료과명
         ugd_History.Cells[4,i+1] := mdPdiagt.sChadrnm[i]; // 담당교수명

{         if mdPdiagt.sCficdyn[i] = 'Y' then
            ugd_History.Cells[5,i+1] := '(R/O)' + mdPdiagt.sDiagname[i] // 주진단명
         else
}           ugd_History.Cells[5,i+1] := mdPdiagt.sDiagname[i]; // 주진단명

         ugd_History.Cells[6,i+1] := mdPdiagt.sStayYn[i];  // 재원여부
         ugd_History.Cells[7,i+1] := mdPdiagt.sWardRoom[i];// 병동-호실
         ugd_History.Cells[8,i+1] := mdPdiagt.sMedDept[i]; // 진료과
         ugd_History.Cells[9,i+1] := mdPdiagt.sGendrnm[i]; // 주치의명
         ugd_History.Cells[10,i+1]:= mdPdiagt.sPattpnm[i]; // 주치의명

      end;

      mdPdiagt.Free;
      stb_Message.Panels[0].Text := IntToStr(RowNo)+'건의 자료가 조회되었습니다.';
   finally
      Screen.Cursor := crDefault;
   end;

    // 재원환자의 경우 병동-호실 표기
   for i := 0 to RowNo-1 do
   begin
      if ugd_History.Cells[6,i+1] = 'Y' then
         pn_Ward.Caption := ugd_History.Cells[7,i+1];
   end;

   //진료일별로 Sorting
   QuickSortGrid(ugd_History,1,ugd_History.RowCount-1,1,True);
   ugd_History.Repaint;

   //수진일자별 처방내역 Display
   ugd_History.Row := 1;
   ugd_HistoryClick(Nil);
end;

// 수술이력 Click ==> 환자의 수술이력 List 조회
procedure TMDP410F1.rbt_OpClick(Sender: TObject);
var
   RowNo, i : Integer;
   Type1, PatNo, OpDate, Locate : String;
begin
   //화면 Clear
   stb_Message.Panels[0].Text := '';
   Clear_Grid(ugd_Op,ugd_Op.ColCount);

   //수술이력List Panel Visible..
   pn_Op.Visible      := True;
   pn_History.Visible := False;
   pn_Blood.Visible   := False;
   pn_Trans.Visible   := False;
   bbt_Print.Enabled  := False;
   
   //환자에 대한 수술이력 Select 하여 Display
   Screen.Cursor := crHourGlass;
   try
      //Create Class
      mdOprptt := HmdOprptt.Create;

      //Assign Input Parameter(s)..
      Type1  := '1';              //조회구분('1'=환자번호,'2'=환자번호+수술일)
      PatNo  := pn_PatNo.Caption; //환자번호
      OpDate := '';               //수술일자(=NULL)
      Locate := G_LOCATE;         //사업장

      //공통Class Function Call (환자 수술이력 List SELECT)
      RowNo := mdOprptt.ListPatOp(Type1,PatNo,OpDate,Locate);

      //오류시 Message처리, Exit
      if (RowNo = -1) then
      begin
         mdOprptt.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      //자료건수=0인경우, Exit
      if (RowNo = 0) then
      begin
         mdOprptt.Free;
         stb_Message.Panels[0].Text := '해당 자료가 한건도 존재하지 않습니다.';
         //MakeMsg(CF_D420,NF010,NF020,stb_Message);  //MsgCom
         Exit;
      end;

      //Select된 Data를 Grid에 Display
      ugd_Op.RowCount := RowNo + 1;
      for i := 0 to RowNo-1 do
      begin
         ugd_Op.Cells[0,i+1] := ConvertSDate(mdOprptt.sOpDate[i]);   //수술일
         ugd_Op.Cells[1,i+1] := mdOprptt.sOpname[i];                 //수술명
         ugd_Op.Cells[2,i+1] := mdOprptt.sDeptnm[i];                 //진료과
         ugd_Op.Cells[3,i+1] := mdOprptt.sOpDrNm[i];                 //집도의
         ugd_Op.Cells[4,i+1] := mdOprptt.sAneDrNm1[i];               //마취의
         ugd_Op.Cells[5,i+1] := mdOprptt.sAnecdnm1[i];               //마취구분
         ugd_Op.Cells[6,i+1] := mdOprptt.sRemark[i];                 //비고
      end;

      mdOprptt.Free;
      stb_Message.Panels[0].Text := IntToStr(RowNo)+'건의 자료가 조회되었습니다.';
      //MakeMsg(CF_D420,NF010,NF020,stb_Message);  //MsgCom
   finally
      Screen.Cursor := crDefault;
   end;

   ugd_Op.Setfocus;
end;

// 수혈이력 click ==> 환자의 수혈이력 List 조회
procedure TMDP410F1.rbt_BloodClick(Sender: TObject);
var
   RowNo, i : Integer;
   PatNo, Locate : String;
begin
   //화면 Clear
   stb_Message.Panels[0].Text := '';
   Clear_Grid(ugd_Blood,ugd_Blood.ColCount);

   //수진이력List Panel Visible..
   pn_Blood.Visible   := True;
   pn_History.Visible := False;
   pn_Op.Visible      := False;
   pn_Trans.Visible   := False;
   bbt_Print.Enabled  := False;
   //환자에 대한 수혈이력 Select 하여 Display
   Screen.Cursor := crHourGlass;
   try
      //Create Class
      mdBldort := HmdBldort.Create;

      //Assign Input Parameter(s)..
      PatNo  := pn_PatNo.Caption; //환자번호
      Locate := G_LOCATE;         //사업장

      //공통Class Function Call (환자 수혈이력 List SELECT)
      RowNo := mdBldort.ListBloodOrd(PatNo, Locate);

      //오류시 Message처리, Exit
      if (RowNo = -1) then
      begin
         mdBldort.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      //자료건수=0인경우, Exit
      if (RowNo = 0) then
      begin
         mdBldort.Free;
         stb_Message.Panels[0].Text := '해당 자료가 한건도 존재하지 않습니다.';
         //MakeMsg(CF_D420,NF010,NF020,stb_Message);  //MsgCom
         Exit;
      end;

      //Select된 Data를 Grid에 Display
      ugd_Blood.RowCount := RowNo + 1;
      for i := 0 to RowNo-1 do
      begin
         ugd_Blood.Cells[0,i+1] := ConvertSDate(mdBldort.sOrddate[i]); //처방일
         ugd_Blood.Cells[1,i+1] := mdBldort.sOrdDesc1[i]+' '
                                 + mdBldort.sOrdDesc2[i];              //처방이력
         ugd_Blood.Cells[2,i+1] := mdBldort.sJstatnm[i];               //진행상태
         ugd_Blood.Cells[3,i+1] := mdBldort.sOrddrnm[i];               //지시의
         ugd_Blood.Cells[4,i+1] := mdBldort.sOrdstnm[i];               //발행처
         ugd_Blood.Cells[5,i+1] := mdBldort.sRemark[i];                //비고
      end;

      mdBldort.Free;
      stb_Message.Panels[0].Text := IntToStr(RowNo)+'건의 자료가 조회되었습니다.';
      //MakeMsg(CF_D420,NF010,NF020,stb_Message);  //MsgCom
   finally
      Screen.Cursor := crDefault;
   end;

   ugd_Blood.Setfocus;
end;

// 전과전등이력 click ==> 환자의 전과전등이력 List 조회
procedure TMDP410F1.rbt_TransClick(Sender: TObject);
var
   RowNo, i : Integer;
   Type1, PatNo, AdmDate, Locate : String;
begin
   //화면 Clear
   stb_Message.Panels[0].Text := '';
   Clear_Grid(ugd_Trans,ugd_Trans.colCount);

   //수진이력List Panel Visible..
   pn_Trans.Visible   := True;
   pn_History.Visible := False;
   pn_Op.Visible      := False;
   pn_Blood.Visible   := False;
   bbt_Print.Enabled  := False;
   //환자에 대한 전과전등이력 Select 하여 Display
   Screen.Cursor := crHourGlass;
   try
      //Create Class
      mdMovett := HmdMovett.Create;

      //Assign Input Parameter(s)..
      Type1   := '1';              //조회구분('1'=과거이력,'2'=재원중이력)
      PatNo   := pn_PatNo.Caption; //환자번호
      AdmDate := '';               //입원일자(=NULL)
      Locate  := G_LOCATE;         //사업장

      //공통Class Function Call (환자 전과전등이력 List SELECT)
      RowNo := mdMovett.RequestSelect(Type1,PatNo,AdmDate,Locate);

      //오류시 Message처리, Exit
      if (RowNo = -1) then
      begin
         mdMovett.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      //자료건수=0인경우, Exit
      if (RowNo = 0) then
      begin
         mdMovett.Free;
         stb_Message.Panels[0].Text := '해당 자료가 한건도 존재하지 않습니다.';
         //MakeMsg(CF_D420,NF010,NF020,stb_Message);  //MsgCom
         Exit;
      end;

      //Select된 Data를 Grid에 Display
      ugd_Blood.RowCount := RowNo + 1;
      for i := 0 to RowNo-1 do
      begin
         ugd_Trans.Cells[0,i+1] := ConvertSDate(mdMovett.sCofmdate[i]); //등록일
         ugd_Trans.Cells[1,i+1] := mdMovett.sFromdeptNm[i]+' / '
                                 + mdMovett.sFromward[i] + '-' + mdMovett.sFromRoom[i];               //전출과+병실
         ugd_Trans.Cells[2,i+1] := mdMovett.sToDeptNm[i]+' / '
                                 + mdMovett.sToward[i] + '-' + mdMovett.sToRoom[i];                 //전입과+병실
         ugd_Trans.Cells[3,i+1] := mdMovett.sRemark[i];                 //비고
      end;

      mdMovett.Free;
      stb_Message.Panels[0].Text := IntToStr(RowNo)+'건의 자료가 조회되었습니다.';
      //MakeMsg(CF_D420,NF010,NF020,stb_Message);  //MsgCom
   finally
      Screen.Cursor := crDefault;
   end;

   ugd_Trans.Setfocus;
end;

// 수진이력 List Grid Click ==> 환자의 처방이력(처방일자)List 조회
procedure TMDP410F1.ugd_HistoryClick(Sender: TObject);
var
   RowNo, i : Integer;
   Type1, PatNo, AdmDate, Type2, Locate : String;
begin
   if (ugd_History.Cells[0,ugd_History.Row] = '') then
      Exit;

   if (ugd_History.Cells[0,ugd_History.Row] = '입원') then
      pn_WardRoom.Caption := ugd_History.Cells[7, ugd_History.Row]
   else
      pn_WardRoom.Caption := '외래';

   pn_Insu.Caption := ugd_History.Cells[10,ugd_History.Row];

   //화면 Clear
   stb_Message.Panels[0].Text := '';
   Clear_Grid(ugd_OrdDate,ugd_OrdDate.ColCount);
   Clear_Grid(ugd_Order,ugd_Order.ColCount);

   //환자에 대한 처방이력(처방일자) Select 하여 Display
   Screen.Cursor := crHourGlass;
   try
      //Create Class
      mdOrderv := HmdOrderv.Create;

      //Assign Input Parameter(s)..
      Type1   := '2';              //조회구분('2'=진료일별 처방일)
      PatNo   := pn_PatNo.Caption; //환자번호
      AdmDate := InvertSdate(Copy(ugd_History.Cells[1,ugd_History.Row],1,10)); //입원일,진료일
      if ugd_History.Cells[0,ugd_History.Row] = '외래' then
         Type2 := 'O'
      else if ugd_History.Cells[0,ugd_History.Row] = '입원' then
         Type2 := 'I'
      else if ugd_History.Cells[0,ugd_History.Row] = '응급' then
         Type2 := 'E';
      Locate  := G_LOCATE;         //사업장

      //공통Class Function Call (환자 처방이력 List SELECT)
      RowNo := mdOrderv.DayOrderSelect(Type1,PatNo,AdmDate,Type2,Locate);

      //오류시 Message처리, Exit
      if (RowNo = -1) then
      begin
         mdOrderv.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      //자료건수=0인경우, Exit
      if (RowNo = 0) then
      begin
         mdOrderv.Free;
         //stb_Message.Panels[0].Text := '해당 자료가 한건도 존재하지 않습니다.';
         Exit;
      end;

      //Select된 Data를 Grid에 Display
      ugd_OrdDate.RowCount := RowNo + 1;
      for i := 0 to RowNo-1 do
      begin
         ugd_OrdDate.Cells[0,i+1] := ConvertSDate(mdOrderv.sOrdDate[i]); //처방일
      end;

      mdOrderv.Free;
   finally
      Screen.Cursor := crDefault;
   end;

   //첫번째 처방일자에 대한 처방내역 List SELECT하여 Dispaly
   if (ugd_OrdDate.Cells[0,1] <> '') then
   begin
      ugd_OrdDate.Row := 1;
      ugd_OrdDateClick(Nil);
   end;

   ugd_OrdDate.Setfocus;

   if ugd_History.Cells[0, ugd_History.Row] = '입원' then
      bbt_Print.Enabled  := True
   else
      bbt_Print.Enabled  := False;

end;

//처방일 List Grid Click ==> 해당 처방일별 처방상세 List 조회
procedure TMDP410F1.ugd_OrdDateClick(Sender: TObject);
var
   RowNo, i, nRow, iCol : Integer;
   Type1, PatNo, AdmDate, Type2, Locate : String;
   sTempOrdGrpNm, sTempOrdType : String;
   GridFontColor : TColor;
   ReVal : Real;
begin
   if (ugd_OrdDate.Cells[0,ugd_OrdDate.Row] = '') then
      Exit;

   //화면 Clear
   stb_Message.Panels[0].Text := '';
   Clear_Grid(ugd_Order,ugd_Order.ColCount);
   Clear_Grid(ugd_Temp,20);
   ugd_Order.RowCount := 2;

   //특정처방일에 대한 처방내역 조회하여 Display
   Screen.Cursor := crHourGlass;
   try
      //Create Class
      mdOrderv := HmdOrderv.Create;

      //Assign Input Parameter(s)..
      Type1   := '3';                 //조회구분('3'=특정처방일에 대한 처방내역)
      PatNo   := pn_PatNo.Caption;    //환자번호
      AdmDate := InvertSDate(ugd_OrdDate.Cells[0,ugd_OrdDate.Row]); //처방일
      Type2   := ugd_History.Cells[8,ugd_History.Row];              //진료과
      Locate  := G_LOCATE;            //사업장

      //공통Class Function Call (처방일에 대한 처방내역List SELECT)
      RowNo := mdOrderv.DayOrderSelect(Type1,PatNo,AdmDate,Type2,Locate);

      //오류시 Message처리, Exit
      if (RowNo = -1) then
      begin
         mdOrderv.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      //자료건수=0인경우, Exit
      if (RowNo = 0) then
      begin
         mdOrderv.Free;
         Exit;
      end;

      //Select된 Data를 Grid에 Display
      sTempOrdGrpNm := '';
      sTempOrdType := '';
      nRow := 0;
      for i := 0 to RowNo-1 do
      begin
         //[취소]된 자료는 Display하지 않음
         if (mdOrderv.sDiscYn[i] = 'X') and
            (mdOrderv.sOrdKind[i] <> '8') and   //외래+입원시처방은 Display
            (mdOrderv.sOrdKind[i] <> '9') then  //외래+미래처방은 Display
             Continue;

         // 처치/재료 (간호사가 입력한 것은 제외)
{
         if ((mdOrderv.sOrdGrp[i] = 'D1') or
             (mdOrderv.sOrdGrp[i] = 'D2')) and (mdOrderv.sUseSite[i] <> '') then
              continue;
}
         if (mdOrderv.sOrdGrpNm[i] <> sTempOrdGrpNm) or
            (mdOrderv.sOrdType[i]  <> sTempOrdType ) or
            (mdOrderv.sOrdCd[i] = 'SPECIAL') then
            ugd_Order.Cells[0,nRow] := mdOrderv.sOrdGrpNm[i]; //구분(처방분류명)

         ugd_Order.Cells[1,nRow] := mdOrderv.sOrdDesc1[i];    //처방편집1
         if ugd_Order.Cells[1,nRow] = '' then
            ugd_Order.Cells[1,nRow] := mdOrderv.sOrdName[i];  //처방편집1없는 경우, 처방명
         ugd_Order.Cells[2,nRow] := mdOrderv.sOrdDesc2[i];    //처방편집2

         if mdOrderv.sRcpStat[i] = 'Y' then
            ugd_Order.Cells[3,nRow] := 'Y'
         else if mdOrderv.sRcpStat[i] = 'R' then
            ugd_Order.Cells[3,nRow] := '환불';

         if Copy(mdOrderv.sOrdGrp[i],1,1) = 'B' then       //약처방일때 수행여부
         begin
            if mdOrderv.sNurStat[i] = 'A' then
                 ugd_Order.Cells[4,nRow] := '실시'
            else ugd_Order.Cells[4,nRow] := '';
         end;
         if ugd_Order.Cells[4,nRow] = '' then
            ugd_Order.Cells[4,nRow] := mdOrderv.sStatName[i]; //결과및진행여부

         //InVisible Cell(s)..
         ugd_Order.Cells[ 5,nRow] := mdOrderv.sOrdDate[i];     //처방일
         ugd_Order.Cells[ 6,nRow] := mdOrderv.iOrdSeqno[i];    //처방순번
         ugd_Order.Cells[ 7,nRow] := mdOrderv.sOrdName[i];     //처방명
         ugd_Order.Cells[ 8,nRow] := mdOrderv.sSlipCd[i];
         ugd_Order.Cells[ 9,nRow] := mdOrderv.sJinjStat[i];
         ugd_Order.Cells[10,nRow] := mdOrderv.sOrdcd[i];
         ugd_Order.Cells[11,nRow] := mdOrderv.sOrdGrp[i];

         //2002.07.16 추가
         if mdOrderv.sDiscYn[i] = 'X' then
              GridFontColor := $00A4A4A4   //[Gray]    //[취소]된 자료
         else if mdOrderv.sDiscYn[i] = 'Y' then
              GridFontColor := $0063A3E9   //[Maroon]  //[D/C]된 자료
         else if mdOrderv.sPrnYn[i] = 'Y' then
              GridFontColor := $00007500   //[Green]   //PRN처방
         else GridFontColor := clBlack;    //[Black]   //정상자료

         if (mdOrderv.sOrdKind[i] = '8') or    //외래+입원시처방
            (mdOrderv.sOrdKind[i] = '9') then  //외래+미래처방
             GridFontColor := clTeal;    //[Teal]

         if mdOrderv.sOrdKind[i] = 'S' then
            GridFontColor := clOlive;    //[Olive]   //검사2차처방

         if mdOrderv.sOrdcd[i] = 'SPECIAL' then
            GridFontColor := $000000CC;     //[Red]     //처방종류Title

         for iCol := 0 to 3 do
             ugd_Order.SetFontColor(iCol,nRow,GridFontColor);

         //검사결과및 진행사항 Font Color 표시 (2002.02.05)
         if (Copy(ugd_Order.Cells[11,nRow],1,1) = 'C') and
            (Trim(ugd_Order.Cells[4,nRow]) <> 'SET검사결과') and
            (Trim(ugd_Order.Cells[4,nRow]) <> '판독결과') and
            (Copy(Trim(ugd_Order.Cells[4,nRow]),1,4) <> '실시') then
         begin
            try
               ReVal := StrToFloat(mdOrderv.sRsltVal[i]);
               if (Trim(mdOrderv.sRsltUpp[i]) <> '') and (Trim(mdOrderv.sRsltLow[i]) <> '') then
               begin
                  if ReVal > StrToFloat(mdOrderv.sRsltUpp[i]) then
                       ugd_Order.SetFontColor(4,nRow,clRed)    //[Red]최대값초과
                  else if ReVal < StrToFloat(mdOrderv.sRsltLow[i]) then
                       ugd_Order.SetFontColor(4,nRow,clBlue)   //[Blue]최소값미만
                  else ugd_Order.SetFontColor(4,nRow,clBlack); //[Black]정상
               end;
            except
               ReVal := 0;
               ugd_Order.SetFontColor(4,nRow,clBlack); //[Black]수치값이 아닌 경우
            end;
         end
         else ugd_Order.SetFontColor(4,nRow,clBlack);  //[Black]검사처방아닌 경우,

         sTempOrdGrpNm := mdOrderv.sOrdGrpNm[i]; //처방분류명
         sTempOrdType  := mdOrderv.sOrdType[i];  //처방형태

         Inc(nRow);
      end;

      if nRow < 1 then
           ugd_Order.RowCount := 1
      else ugd_Order.RowCount := nRow;

      //=투약처치기록을 출력하기 위해 Temp Grid에 Assign---------//
      if ugd_History.Cells[0,ugd_History.Row] = '입원' then
      begin
         bbt_Print.Enabled  := True; //[투약처치기록]

         //Select된 Data를 Grid에 Display
         sTempOrdGrpNm := '';
         sTempOrdType := '';
         nRow := 1;
         for i := 0 to RowNo-1 do
         begin
            if ((mdOrderv.sOrdGrp[i] = 'D1') or  // 처치/재료 (간호사가 입력한 것은 제외)
                (mdOrderv.sOrdGrp[i] = 'D2')) and
                (mdOrderv.sUseSite[i] <> '') then
                 continue;

            if (mdOrderv.sOrdGrpNm[i] <> sTempOrdGrpNm ) or
               (mdOrderv.sOrdType[i]  <> sTempOrdType ) or
               (mdOrderv.sOrdCd[i] = 'SPECIAL') then
               ugd_Temp.Cells[0,nRow] := mdOrderv.sOrdGrpNm[i]; //구분(처방분류명)

            if Trim(mdOrderv.sOrdDesc[i]) = '' then
               ugd_Temp.Cells[1,nRow] := format('%-44.44s',[(mdOrderv.sOrdName[i])])+' '
                                         + format('%-100s', [mdOrderv.sOrdDesc2[i]])
            else
               ugd_Temp.Cells[1,nRow] := format('%-44.44s',[Trim(mdOrderv.sOrdDesc[i])])+' '
                                         + format('%-100s', [mdOrderv.sOrdDesc2[i]]);

            if (Copy(mdOrderv.sOrdGrp[i],1,1) = 'B') and  // 약처방일때 수행여부
               (mdOrderv.sPrnyn[i] <> 'Y') then
            begin
               if mdOrderv.sNurStat[i] = 'A' then
                  ugd_Temp.Cells[2,nRow] := '실시'    //실행결과
               else
                  ugd_Temp.Cells[2,nRow] := '';
            end
            else
               ugd_Temp.Cells[2,nRow] := mdOrderv.sStatName[i];    //실행결과

            //InVisible Cell(s)..
            ugd_Temp.Cells[3,nRow]  := mdOrderv.sOrdDate[i];     // 처방일
            ugd_Temp.Cells[4,nRow]  := mdOrderv.iOrdSeqno[i];    // 처방순번
            ugd_Temp.Cells[5,nRow]  := mdOrderv.sOrdName[i];     // 처방명
            ugd_Temp.Cells[6,nRow]  := mdOrderv.sOrdGrp[i];      // 처방분류(B1:경구,B2:주사,B3:외용)
            ugd_Temp.Cells[7,nRow]  := mdOrderv.sPrnYn[i];       // PRN 여부
            ugd_Temp.Cells[8,nRow]  := mdOrderv.sOrdGrpNm[i];    // 처방분류명
            ugd_Temp.Cells[9,nRow]  := mdOrderv.sOrdDrNm[i];     // 처방의
            ugd_Temp.Cells[10,nRow] := mdOrderv.sOrdTime2[i];    // 처방입력시간

            if mdOrderv.sRcpStat[i] = 'Y' then                   // 수납여부
               ugd_Temp.Cells[11,nRow] := ' Y'
            else if mdOrderv.sRcpStat[i] = 'R' then
               ugd_Temp.Cells[11,nRow] := '환불'
            else
               ugd_Temp.Cells[11,nRow] := '';
            ugd_Temp.Cells[12,nRow] := mdOrderv.sPatSect[i];     // 환자유형(I:입원,O:외래,E:응급)
            ugd_Temp.Cells[13,nRow] := mdOrderv.sDiscYn[i];      // DC 여부(X:취소,Y:DC)
            ugd_Temp.Cells[14,nRow] := mdOrderv.sOrddesc1[i];
            ugd_Temp.Cells[15,nRow] := mdOrderv.sDcDate[i];      // DC처방일자

            sTempOrdGrpNm := mdOrderv.sOrdGrpNm[i];
            sTempOrdType  := mdOrderv.sOrdType[i];

            Inc(nRow);
         end;

         if nRow < 2 then
            ugd_Temp.RowCount := 2
         else
            ugd_Temp.RowCount := nRow;
      end
      else
         bbt_Print.Enabled  := False;


      mdOrderv.Free;
      stb_Message.Panels[0].Text := IntToStr(RowNo)+'건의 자료가 조회되었습니다.';
   finally
      Screen.Cursor := crDefault;
   end;
end;

procedure TMDP410F1.ugd_OrderClick(Sender: TObject);
begin
   if Copy(Trim(ugd_Order.Cells[8,ugd_Order.Row]),1,1) = 'Y' then   // 과내 부속검사
      bbt_ExmCancel.Enabled := True
   else
      bbt_ExmCancel.Enabled := False;
end;

// [처방내역] Grid <결과및진행> Cell 선택시 ==> 검사결과조회 Form Call
procedure TMDP410F1.ugd_OrderMouseUp(Sender: TObject; Button: TMouseButton;
                                     Shift: TShiftState; X, Y: Integer);
var
   SelCol,SelRow : Integer;
begin
   //<결과및진행> Cell 선택시 ==> 처방결과조회 Form Call
   ugd_Order.MouseToCell(X,Y,SelCol,SelRow);

   if (SelCol = 4) and
      ((ugd_Order.Cells[SelCol,SelRow] = 'SET검사결과') or
       (ugd_Order.Cells[SelCol,SelRow] = '판독결과'))   then
   begin
      if MDO110F6 <> Nil then
         MDO110F6.Close;
      MDO110F6 := TMDO110F6.Create(Application);

      MDO110F6.g_OrdName := ugd_Order.Cells[7,SelRow];             //처방명
      MDO110F6.g_PatNo   := pn_PatNo.Caption;                      //환자번호
      MDO110F6.g_OrdDate := ugd_Order.Cells[5,SelRow];             //처방일
      MDO110F6.g_SeqNo   := StrToInt(ugd_Order.Cells[6,SelRow]);   //처방순번
      if      ugd_Order.Cells[SelCol,SelRow] = 'SET검사결과' then
              MDO110F6.g_ResultKind := '1'       //검사결과 List View
      else if ugd_Order.Cells[SelCol,SelRow] = '판독결과' then
              MDO110F6.g_ResultKind := '2';      //검사결과 Text View

      MDO110F6.ShowModal;
   end;
end;

//진료예약
procedure TMDP410F1.bbt_BookingClick(Sender: TObject);
begin
   if MDP320F1 <> nil then
      MDP320F1.Close;
   Application.CreateForm(TMDP320F1, MDP320F1);
   MDMAINF1.ShowForm(MDP320F1);

   // 환자명으로 대상자찾기
   MDP320F1.ed_PatName.Text := pn_Patno.Caption;
   MDP320F1.ed_PatName.Tag := 0;
   GetPatName(MDP320F1.ed_PatName, MDP320F1.pn_PatNo, MDP320F1.ed_PatName);
   MDP320F1.ed_PatName.Tag := 1;

//   MDP320F1.ed_PatName.Text := pn_Patno.Caption;
//   MDP320F1.ed_PatnameChange(sender);
end;

//투약처치기록
procedure TMDP410F1.bbt_PrintClick(Sender: TObject);
var i, k, Len, RowNo :Integer;
    sFlag1,sFlag2 : String;
    sType1,sType2,sType3,sType4:String;
begin
  stb_Message.Panels[0].Text := '';

  if ugd_OrdDate.Cells[0,ugd_OrdDate.Row] = '' then
     exit;

  {
  if MessageDlg('※【 '+ ugd_OrdDate.Cells[0,ugd_OrdDate.Row]+
                ' 】일자 의사지시 및 투약처치 기록을 출력하시겠습니까?',
                mtConfirmation, [mbYes, mbNo], 0) <> mrYes then Exit;
  }
   if Application.MessageBox('※ 해당일자의 의사지시 및 투약처치 기록을 출력하시겠습니까?',
                              '출력', MB_OKCANCEL) <> IDOK then exit;

   Screen.Cursor := crHourglass;
   bbt_Print.Enabled := False;

   try
   ugd_PrintList.Clear;
   ugd_PrintList.RowCount := 1;

   sFlag1 := '';
   sFlag2 := '';

   k := 0;
   for i:= 1 to ugd_Temp.Rowcount - 1 do
   begin
      if sFlag1 <> Copy(Trim(ugd_Temp.Cells[6,i]),1,1) then
      begin
         ugd_PrintList.Cells[0, k] := '';
         sFlag1 := Copy(Trim(ugd_Temp.Cells[6,i]),1,1);
      end;
      if sFlag2 <> ugd_Temp.Cells[8, i] then
         ugd_PrintList.Cells[0, k] := ugd_Temp.Cells[8, i];

      ugd_PrintList.Cells[1, k] := ugd_Temp.Cells[1,i];
      ugd_PrintList.Cells[2, k] := ugd_Temp.Cells[6,i];
      ugd_PrintList.Cells[3, k] := InvertSDate(ugd_OrdDate.Cells[0,ugd_OrdDate.Row]);
      ugd_PrintList.Cells[4, k] := ugd_Temp.Cells[4,i];
      ugd_PrintList.Cells[5, k] := ugd_Temp.Cells[2,i];

      // 처방종류(≪정규≫, ≪추가≫)의 처방의, 처방시간 안나타나게 함.
      if Copy(Trim(ugd_Temp.Cells[0,i]),1,2) = '≪' then
      begin
         ugd_PrintList.Cells[8, k] := '';
         ugd_PrintList.Cells[9, k] := '';
      end
      else
      begin
         ugd_PrintList.Cells[8, k] := ugd_Temp.Cells[9,i];
         ugd_PrintList.Cells[9, k] := ugd_Temp.Cells[10,i];
      end;

      ugd_PrintList.Cells[10, k] := Copy(ugd_Temp.cells[15,i],1,2) + ' '
                                      + Copy(ugd_Temp.cells[15,i],3,1) + ' '
                                      + Copy(ugd_Temp.cells[15,i],4,5);
                   
      ugd_PrintList.Cells[7, k] := 'Y';

      sFlag2 := ugd_Temp.Cells[8, i];
      ugd_PrintList.RowCount := ugd_PrintList.RowCount + 1;

      if Copy(ugd_PrintList.Cells[2,k],1,1) <> 'B' then  // 약처방
      begin
         if trim(ugd_PrintList.Cells[5,k]) <> '' then
            ugd_PrintList.Cells[3,k+1] := '▶ ' + ugd_PrintList.Cells[5,k];

      end;

      Inc(k);
      ugd_PrintList.RowCount := ugd_PrintList.RowCount + 1;
      Inc(k);
   end;
   except
      bbt_Print.Enabled := True;
      Screen.Cursor := crDefault;
   end;

   for i:=0 to ugd_PrintList.RowCount-1 do
   begin
      if ugd_PrintList.Cells[1,i] <> '' then    //서비스콜
      begin
         if Copy(ugd_PrintList.Cells[2,i],1,1) = 'B' then //약종류처방
         begin
            //특정처방에 대한 약처방수행기록조회
            Screen.Cursor := crHourGlass;
            try
              //Create Class
              mdOrderv := HmdOrderv.Create;

              //Assign Input Parameter(s)..
              sType1   := '6';                                               //조회구분('3'=특정처방일에 대한 처방내역)
              sType2   := Trim(pn_PatNo.Caption);                                          //환자번호
              sType3   := InvertSDate(ugd_OrdDate.Cells[0,ugd_OrdDate.Row]); //처방일
              sType4   := ugd_PrintList.Cells[4,i];                                          //사업장

              //공통Class Function Call (특정처방일에 대한 처방내역List SELECT)
              RowNo := mdOrderv.PreOrderSelect(sType1,sType2,sType3,sType4);

              //오류시 Message처리, Exit
              if (RowNo = -1) then
              begin
                 mdOrderv.Free;
                 break;
              end;

              //자료건수=0인경우, Exit
              if (RowNo > 0) then
              begin
               for k := 0 to RowNo-1 do
               begin
                  if Trim(mdOrderv.sOrdDr[k]) = '' then
                  begin
                    if (Trim(mdOrderv.sOrdtype[k]) <> '') and (Trim(mdOrderv.sOrdtype[k]) <> ':') then
                    begin
                       ugd_PrintList.Cells[3,i+1] := ugd_PrintList.Cells[3,i+1]
                                                   + '(' + Copy(mdOrderv.sOrddate[k],7,2)
                                                   + ')' + mdOrderv.sOrdtime[k]
                                                   + '/' + mdOrderv.sOrdtype[k]
                                                   + '/' + mdOrderv.sOrddrnm[k]
                                                   + ', ';
                    end;
                  end
                  else
                  begin
                     {
                     if ((Trim(mdOrderv.sOrdtype[k]) = 'R') or (Trim(mdOrderv.sOrdtype[k]) = 'W')
                        or (Trim(mdOrderv.sOrdtype[k]) = 'T'))
                          and (Trim(mdOrderv.sOrdtype[k]) <> ':') then
                     begin
                        ugd_PrintList.Cells[3,i+1] := ugd_PrintList.Cells[3,i+1]
                                                   + '(' + Copy(mdOrderv.sOrddate[k],7,2)
                                                   + ')' + mdOrderv.sOrdtime[k]
                                                   + '/' + mdOrderv.sOrdtype[k]
                                                   + '(Remain:' + mdOrderv.sOrdDr[k] + ')'
                                                   + '/' + mdOrderv.sOrddrnm[k]
                                                   + ', ';
                     end
                     else if (Trim(mdOrderv.sOrdtype[k]) = 'X') then
                     begin
                        ugd_PrintList.Cells[3,i+1] := ugd_PrintList.Cells[3,i+1]
                                                   + '(' + Copy(mdOrderv.sOrddate[k],7,2)
                                                   + ')' + mdOrderv.sOrdtime[k]
                                                   + '/' + mdOrderv.sOrdtype[k]
                                                   + '(비고:' + mdOrderv.sOrdDr[k] + ')'
                                                   + '/' + mdOrderv.sOrddrnm[k]
                                                   + ', ';
                     end
                     else if (Trim(mdOrderv.sOrdtype[k]) <> '') and (Trim(mdOrderv.sOrdtype[k]) <> ':')
                              and (Trim(mdOrderv.sOrdDr[k]) = '') then
                     begin
                        ugd_PrintList.Cells[3,i+1] := ugd_PrintList.Cells[3,i+1]
                                                    + '(' + Copy(mdOrderv.sOrddate[k],7,2)
                                                    + ')' + mdOrderv.sOrdtime[k]
                                                    + '/' + mdOrderv.sOrdtype[k]
                                                    + '/' + mdOrderv.sOrddrnm[k]
                                                    + ', ';
                     end
                     else if (Trim(mdOrderv.sOrdtype[k]) <> '') and (Trim(mdOrderv.sOrdtype[k]) <> ':')
                              and (Trim(mdOrderv.sOrdDr[k]) <> '') then
                     begin
                        ugd_PrintList.Cells[3,i+1] := ugd_PrintList.Cells[3,i+1]
                                                   + '(' + Copy(mdOrderv.sOrddate[k],7,2)
                                                   + ')' + mdOrderv.sOrdtime[k]
                                                   + '/' + mdOrderv.sOrdtype[k]
                                                   + '(시간:' + mdOrderv.sOrdDr[k] + ')'
                                                   + '/' + mdOrderv.sOrddrnm[k]
                                                   + ', ';
                     end;

                  }
                     if (Trim(mdOrderv.sOrdtype[k]) <> '') and (Trim(mdOrderv.sOrdtype[k]) <> ':') then
                     begin
                        ugd_PrintList.Cells[3,i+1] := ugd_PrintList.Cells[3,i+1]
                                                   + '(' + Copy(mdOrderv.sOrddate[k],7,2)
                                                   + ')' + mdOrderv.sOrdtime[k]
                                                   + '/' + mdOrderv.sOrdtype[k]
                                                   + '(비고:' + mdOrderv.sOrdDr[k] + ')'
                                                   + '/' + mdOrderv.sOrddrnm[k]
                                                   + ', ';
                     end;
                  end;
                  ugd_PrintList.Cells[7, i+1] := '';
               end;

               if trim(ugd_PrintList.Cells[3,i+1]) <> '' then
                  ugd_PrintList.Cells[3,i+1] := '▶ ' + Copy(ugd_PrintList.Cells[3,i+1],1,Length(Trim(ugd_PrintList.Cells[3,i+1]))-1);
              end;
              mdOrderv.Free;
           finally
              Screen.Cursor := crDefault;
           end;
         end
         else   // 약처방 이외.
         begin
            ugd_PrintList.Cells[3,i+1] := ugd_PrintList.Cells[5, i];
         end;
      end;
   end;

       // 프린트 상태 Check
   if (IsNotPrinterReady) then exit;

   if MDN110F1_P02 <> nil then
      MDN110F1_P02.Close;
   Application.CreateForm(TMDN110F1_P02, MDN110F1_P02);
   MDN110F1_P02.strFromForm := 'MDP410F1';
   MDN110F1_P02.qrlb_RoomNo.Caption    := pn_Ward.Caption;
   MDN110F1_P02.qrlb_PatNo.Caption     := pn_PatNo.Caption;
   MDN110F1_P02.qrlb_PatName.Caption   := ed_PatName.Text;
   MDN110F1_P02.qrlb_SA.Caption        := pn_SexAge.Caption;
   MDN110F1_P02.qrlb_DeptName.Caption  := ugd_History.Cells[3,ugd_History.Row];
   MDN110F1_P02.qrlb_AdmDate.Caption   := ugd_History.Cells[1,ugd_History.Row];
   MDN110F1_P02.qrlb_Chadr.Caption     := ugd_History.Cells[4,ugd_History.Row];
   MDN110F1_P02.qrlb_Gendr.Caption     := ugd_History.Cells[9,ugd_History.Row];
   MDN110F1_P02.qrlb_Gendr2.Caption    := ugd_History.Cells[9,ugd_History.Row];
   MDN110F1_P02.qrlb_Diagname.Caption  := '';

   Len := Length(Trim(ugd_History.Cells[5,ugd_History.Row]));
   if Len < 43 then
      MDN110F1_P02.qrlb_Diagname.Caption  := Trim(ugd_History.Cells[5,ugd_History.Row])
   else
   begin
      if (ByteType(Trim(ugd_History.Cells[5,ugd_History.Row]), 43) = mbSingleByte) or
         (ByteType(Trim(ugd_History.Cells[5,ugd_History.Row]), 43) = mbTrailByte)  then
        MDN110F1_P02.qrlb_Diagname.Caption  := Copy(Trim(ugd_History.Cells[5,ugd_History.Row]),1,43)
      else if ByteType(Trim(ugd_History.Cells[5,ugd_History.Row]), 43) = mbLeadByte	then
        MDN110F1_P02.qrlb_Diagname.Caption  := Copy(Trim(ugd_History.Cells[5,ugd_History.Row]),1,42);
   end;

   MDN110F1_P02.qrlb_OrdDate.Caption   := ugd_OrdDate.Cells[0,ugd_OrdDate.Row];

   MDN110F1_P02.qr_Search.Print;
   MDN110F1_P02.Close;

   bbt_Print.Enabled := True;
   stb_Message.Panels[0].Text := '출력되었습니다.';
   Screen.Cursor := crDefault;
end;

//과내검사실시취소
procedure TMDP410F1.bbt_ExmCancelClick(Sender: TObject);
var
   sType1, sPatNo, sOrdDate, sOrdSeqNo, sEditid, sEditip : String;
   Cnt : Integer;
begin
   if (Trim(ugd_Order.Cells[4,ugd_Order.Row]) = '') then
   begin
      Showmessage('이미 실시취소한 검사입니다.');
      Exit;
   end;

   if (ugd_Order.Cells[3,ugd_Order.Row] = 'Y') then
   begin
      if Application.MessageBox('이미 수납된 검사입니다.' + #13#10 + #13#10 +
                                '실시취소후 환불이 가능합니다.' + #13#10 + #13#10 +
                                '실시취소 하시겠습니까?' , '과내검사 실시취소', MB_OKCANCEL) <> IDOK then
         exit;
   end
   else
   begin
      if Application.MessageBox('실시취소 하시겠습니까?', '과내검사 실시취소', MB_OKCANCEL) <> IDOK then
         exit;
   end;

   // 서비스내용 설명
   Screen.Cursor := crHourglass;
   try
      sType1    := '1';
      sPatNo    := pn_PatNo.Caption;                                     // 환자번호
      sOrdDate  := InvertSDate(ugd_OrdDate.Cells[0,ugd_OrdDate.Row]); // 처방일자
      sOrdSeqNo := ugd_Order.Cells[6,ugd_Order.Row];
      sEditId   := md_UserId;
      sEditIp   := G_USERIP;

      mdOrderv := HmdOrderv.Create ;
      Cnt := mdOrderv.ExmCancel(sType1, sPatNo, sOrdDate, sOrdSeqNo, sEditId, sEditIp,'','','','','','');  // 과내검사 실시취소

      // system error message
      if Cnt <> 1  then
      begin
         mdOrderv.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      mdOrderv.Free;

      Showmessage('해당 검사가 실시취소 되었습니다.');

      ugd_Order.Cells[4,ugd_Order.Row] := '';

      stb_Message.Panels[0].Text := '해당 검사가 실시취소 되었습니다.';
   finally
        Screen.Cursor := crDefault;
   end;
end;

//관심환자등록
procedure TMDP410F1.bbt_InterestClick(Sender: TObject);
begin

   if ugd_History.Cells[0,1]='' then
   begin
      ShowMessage('환자의 수진이력이 없습니다.');
      exit;
   end;

   //Clear
   stb_Message.Panels[0].Text := '';
   me_Comment.Clear;

   //조회된 환자List가 없는 경우, Exit
   if pn_PatNo.Caption = '' then
   begin
      ShowMessage('등록할 환자를 먼저 선택하십시오.');
      exit;
   end;

   rbt_Gubun1.Checked := True;
   InsInterest('1',''); // 개인별

end;

//관심환자등록 - 저장
procedure TMDP410F1.InsInterest(sFlag1,sFlag2:String);   //sFlag1=1:개인,2:진료과  sFlag2='':초기,not null:분류추가
var
   RowNo, i : integer;
   sType1 : String;
begin
   me_Comment.Clear;

   //진료의별 관심분류명 조회하여 ComboBox에 Add
   Screen.Cursor := crHourglass;
   try
      //Create Class
      mdRschmt := HmdRschmt.Create;

      //공통class Function CALL (관심분류명 List 조회)

      if sFlag1 = '1' then
         sType1 := md_UserId
      else if sFlag1 = '2' then
         sType1 := md_DeptCd;

      RowNo := mdRschmt.ListRschmt(sType1);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdRschmt.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      combx_SetNm.Items.Clear;
      combx_SetCd.Items.Clear;
      combx_SetNm.Items.Add('');
      combx_SetCd.Items.Add('');

      // 조회건수 없음
      if RowNo = 0 then
      begin
         // 2002.02.20 진료과별 개인별 추가하면서 빠짐.
         {
         mdRschmt.Free;
         ShowMessage('등록된 분류명이 없습니다. 먼저 관심분류를 등록하십시오.');
         //관심분류등록 Panel Visible
         pn_Group.Visible := True;
         ed_SetNm.Clear;
         ed_SetNm.SetFocus;
         Exit;
         }
      end
      else
      begin
         //select된 자료를 comboBox에 Add
         for i := 0 to RowNo - 1 do
         begin
            combx_SetNm.Items.Add(mdRschmt.sSetNm[i]);
            combx_SetCd.Items.Add(mdRschmt.sSetSeqno[i]);
         end;
      end;
      mdRschmt.Free;
   finally
      screen.Cursor := crDefault;
   end;

   //관심환자등록 Panel Visible
   if sFlag1 ='1' then
      rbt_Gubun1.Checked := True
   else if sFlag1 = '2' then
      rbt_Gubun2.Checked := True;
   
   pn_Interest.Visible := True;

   //관심환자 상세내역 SELECT 하여 display
   if sFlag2='' then // 초기
      combx_SetNm.ItemIndex := 1
   else
      combx_SetNm.ItemIndex := combx_SetNm.Items.IndexOf(sFlag2);
   combx_SetNmChange(Nil);

   me_Comment.SetFocus;
end;

procedure TMDP410F1.bbt_SetInsertClick(Sender: TObject);
var
   Cnt : Integer;
   MedDr,SetNm,EditId,EditIp : String;
begin
   if (G_USERID = '59999') or (md_UserId = '59999') then
   begin
      Showmessage('본 메뉴에 대한 사용권한이 없습니다.');
      Exit;
   end;

   stb_Message.Panels[0].Text := '';

   //Input Value Check..
   if Trim(ed_SetNm.Text) = '' then
   begin
      ShowMessage('분류명을 입력하십시오.');
      ed_SetNm.SetFocus;
      Exit;
   end;

   //관심분류 Insert
   Screen.Cursor := crHourglass;
   try
      //Create Class
      mdRschmt := HmdRschmt.Create;

      //Parameter Assign
      if lb_Gubun.Caption = '1' then
         MedDr  := md_UserId           //진료의
      else
         MedDr  := md_DeptCd;

      SetNm  := Trim(ed_SetNm.Text); //관심분류명
      EditId := md_UserId;           //사용자ID
      EditIp := G_USERIP;            //사용자IP

      //공통Class Function Call
      Cnt := mdRschmt.InsertRschmt(MedDr,SetNm,EditId,EditIp);

      // SYSTEM ERROR
      if Cnt = -1 then
      begin
         mdRschmt.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      mdRschmt.Free;
   finally
      screen.Cursor := crDefault;
   end;

   //관심분류등록 Panel InVisible
   pn_Group.Visible := False;

   //관심분류명 List Add, 관심환자등록 Panel Visible
   InsInterest(lb_Gubun.Caption, Trim(ed_SetNm.Text))

   //bbt_InterestClick(Nil);

end;

procedure TMDP410F1.bbt_SetCancelClick(Sender: TObject);
begin
   pn_Group.Visible := False;
   //ugd_List.SetFocus;
   pn_Interest.Visible := True;
end;

procedure TMDP410F1.rbt_Gubun1Click(Sender: TObject);
begin
   InsInterest('1','');
end;

procedure TMDP410F1.rbt_Gubun2Click(Sender: TObject);
begin
   InsInterest('2','');
end;

procedure TMDP410F1.bbt_ChoiceClick(Sender: TObject);
begin
   if rbt_Gubun1.Checked then
      lb_Gubun.Caption := '1'
   else if rbt_Gubun2.Checked then
      lb_Gubun.Caption := '2';

   pn_Interest.Visible := False;
   pn_Group.Visible := True;
   ed_SetNm.Text :='';
   ed_SetNm.SetFocus;

end;

procedure TMDP410F1.combx_SetNmChange(Sender: TObject);
var
   RowNo, i : integer;
   MedDr,SeqNo,PatNo : String;
begin
   me_Comment.Clear;

   if combx_SetNm.ItemIndex < 1 then
      Exit;

   //관심환자 상세내역 SELECT 하여 display
   Screen.Cursor := crHourglass;
   try
      //Create Class
      mdRschdt := HmdRschdt.Create;

      //Assign Param(s)
      if rbt_Gubun1.Checked then
         MedDr := md_UserId
      else if rbt_Gubun2.Checked then
         MedDr := md_DeptCd
      else
         MedDr := md_UserId;

      SeqNo := combx_SetCd.Items[combx_SetNm.ItemIndex];
      PatNo := pn_PatNo.Caption;

      //공통class Function CALL (관심환자상세조회)
      RowNo := mdRschdt.SelectRschdt(MedDr,SeqNo,PatNo);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdRschdt.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      // 조회건수 있는 경우, select된 자료를 Display
      if RowNo > 0 then
      begin
         i := 0;
         me_Comment.Text := mdRschdt.sRemark[i];
      end;

      mdRschdt.Free;
   finally
      screen.Cursor := crDefault;
   end;

   me_Comment.SetFocus;
end;

procedure TMDP410F1.bbt_IntInsertClick(Sender: TObject);
var
   Cnt : integer;
   MedDr,SetSeqno,PatNo,PatSect,Remark,EditId,EditIp : string;
begin

   if (G_USERID = '59999') or (md_UserId = '59999') then
   begin
      Showmessage('본 메뉴에 대한 사용권한이 없습니다.');
      Exit;
   end;

   if Trim(combx_SetNm.Text) = '' then
   begin
      Showmessage('분류명을 선택해 주십시오.');
      combx_SetNm.SetFocus;
      Exit;
   end;

   stb_Message.Panels[0].Text := '';

   //Input Value Check..
   if combx_SetNm.ItemIndex < 1 then
   begin
      ShowMessage('등록할 분류명을 먼저 선택하십시오.');
      combx_SetNm.SetFocus;
      Exit;
   end;

   // 관심환자 등록
   Screen.Cursor := crHourglass;
   try
      //Create Class
      mdRschdt := HmdRschdt.Create;

      //Parameter Assign
      if rbt_Gubun1.Checked then
         MedDr    := md_UserId                               //진료의
      else if rbt_Gubun2.Checked then
         MedDr    := md_DeptCd;                              //진료과

      SetSeqno := combx_SetCd.Items[combx_SetNm.ItemIndex];//관심분류번호
      PatNo    := pn_PatNo.Caption;          //환자번호
      if ugd_History.Cells[0, ugd_History.Row] = '외래' then
         PatSect  := 'O'
      else if ugd_History.Cells[0, ugd_History.Row] = '입원' then
         PatSect  := 'I'
      else if ugd_History.Cells[0, ugd_History.Row] = '응급' then
         PatSect  := 'E';
         
      Remark   := me_Comment.Text;                         //특기사항
      EditId   := md_UserId;                               //사용자ID
      EditIp   := G_USERIP;                                //사용자IP

      //공통Class Function Call
      Cnt := mdRschdt.InsertRschdt(MedDr,SetSeqno,PatNo,PatSect,Remark,EditId,EditIp);

      // SYSTEM ERROR
      if Cnt = -1 then
      begin
         mdRschdt.Free;
         ShowErrMsg;
         Exit;
      end;

      mdRschdt.Free;
      stb_Message.Panels[0].Text := '정상적으로 등록되었습니다.';
   finally
      screen.Cursor := crDefault;
   end;

   pn_Interest.Visible := False;
   ugd_History.SetFocus;

end;

procedure TMDP410F1.bbt_IntCancelClick(Sender: TObject);
begin
   pn_Interest.Visible := False;
   ugd_History.SetFocus;
end;

procedure TMDP410F1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      if pn_Group.Visible then
         bbt_SetCancelClick(Sender)
      else if pn_Interest.Visible then
         bbt_IntCancelClick(Sender)
      else if pn_Tel.Visible then
         bbt_NoClick(Sender)
      else
         bbt_CloseClick(Sender);
   end;
end;

procedure TMDP410F1.bbt_NoClick(Sender: TObject);
begin
   pn_Tel.Visible := False;
end;

procedure TMDP410F1.bbt_ChangeClick(Sender: TObject);
begin
   if pn_Tel.Visible then
      pn_Tel.Visible := False
   else
      pn_Tel.Visible := True;
end;

procedure TMDP410F1.bbt_OkClick(Sender: TObject);
var Cnt : Integer;
   PatNo,Type1,Type2,Type3,EditId,EditIp :String;
begin
   //clear
   stb_Message.Panels[0].Text := '';

   // 입력값 Assign
   PatNo  := pn_PatNo.Caption;
   Type1  := ed_TelNo1.Text;
   Type2  := ed_TelNo2.Text;
   Type3  := ed_TelNo3.Text;
   EditId := md_UserId;
   EditIp := G_USERIP;

   //Update 처리.
   Screen.Cursor := crHourGlass;
   try
      //Create Class
      mdPatInf  := HmdPatInf.Create;

      Cnt := mdPatInf.TelNoUpdate(PatNo,Type1,Type2,Type3,EditId,EditIp);

      //System Error Message
      if (Cnt <> 1) then
      begin
        mdPatInf.Free;
        ShowErrMsg;
        Exit;
      end;

      mdPatInf.Free;
      pn_Tel.Visible := False;
      stb_Message.Panels[0].Text := '전화번호가 수정되었습니다';
   finally
     Screen.Cursor := crDefault;
   end;

   if pn_PatNo.Caption  = md_PatNo then
   begin
      md_TelNo1 := ed_TelNo1.Text;
      md_TelNo2 := ed_TelNo2.Text;
      md_TelNo3 := ed_TelNo3.Text;
   end;

   pn_TelNo.Caption   := ' (집)'+ed_TelNo1.Text + ' (HP)' + ed_TelNo3.Text;

end;

procedure TMDP410F1.pm_OrderPopup(Sender: TObject);
begin
   if Copy(Trim(ugd_Order.Cells[8,ugd_Order.Row]),1,1) = 'Y' then   // 과내 부속검사
      ExmCancel.Enabled := True
   else
      ExmCancel.Enabled := False;
end;

//PopupMenu - 과내검사실시취소
procedure TMDP410F1.ExmCancelClick(Sender: TObject);
begin
   bbt_ExmCancelClick(Sender);
end;

//PopupMenu - 약품정보조회
procedure TMDP410F1.pm_DrugInfoClick(Sender: TObject);
begin
   if (ugd_Order.Cells[1,ugd_Order.Row] = '') or
      (Copy(ugd_Order.Cells[11,ugd_Order.Row],1,1) <> 'B') then
       Exit;

   //약품정보조회 Form Create
   if MDO111F1 <> nil then
      MDO111F1.Close;
   MDO111F1 := TMDO111F1.Create(Application);

   //Default Value Assign
   MDO111F1.g_DrugCode := ugd_Order.Cells[10,ugd_Order.Row]; //처방코드

   MDO111F1.Position   := poScreenCenter;
   //약품정보조회 Form View
   MDO111F1.ShowModal;
end;

//PopupMenu - 수가조회
procedure TMDP410F1.pm_PriceClick(Sender: TObject);
begin
   if (ugd_Order.Cells[10,Ugd_order.Row] = '') or
      (ugd_Order.Cells[10,Ugd_order.Row] = 'SPECIAL') then
       Exit;

   //선택표시된 처방의 수가를 조회하여 Display --> 수가조회 Form Call
   if MDO111F8 <> nil then
      MDO111F8.Close;
   MDO111F8 := TMDO111F8.Create(Application);
   MDO111F8.Top  := pn_History.ClientOrigin.Y + 180;
   MDO111F8.Left := pn_History.ClientOrigin.X + 590;
   with ugd_Order do
   begin
      MDO111F8.g_OrdCd := Cells[10,Row];       //처방코드Assign
      if Cells[10,Row] = 'MESSAGE' then
           MDO111F8.g_OrdName := Cells[1,Row]  //Message처방인 경우, Orddesc1 Assign
      else MDO111F8.g_OrdName := Cells[7,Row]; //처방명Assign
   end;
   //수가조회 Form View
   MDO111F8.ShowModal;
end;

procedure TMDP410F1.ugd_OrderDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
   ReSizeGridCol((Sender as TUltragrid), 5);
   ReSizeGridRow(Sender as TUltraGrid,1,2,ARow);// Grid RowHeight Resizing
end;

procedure TMDP410F1.ugd_OrdDateDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
   ReSizeGridCol((Sender as TUltragrid), 1);
end;

end.

