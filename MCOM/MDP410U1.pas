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
    procedure GetPatInfo;   //???????????? ???? Procedure
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
   //Controls ???? ????
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

   //?????? ????, [????????????] Button Visible
   if (md_JicJong = 'AB1') or (md_JicJong = 'AB2') or (md_JicJong = 'AB3') or (md_JicJong = 'BB1') or
      (md_JicJong = 'CB2') or (md_JicJong = 'DB3') or (md_JicJong = 'EB4') or (md_JicJong = 'HA1') or
      (md_JicJong = 'IA1') or (md_JikGup  = 'RB9') or (md_JikGup  = 'RC1') then   // ????
      bbt_Interest.Visible := True
   else
      bbt_Interest.Visible := False;

   //Grid Set
   ugd_History.SetColAlignment(0,taCenter); //????????
   ugd_Op.SetColAlignment(0,taCenter);      //??????
   ugd_Blood.SetColAlignment(0,taCenter);   //??????
   ugd_Trans.SetColAlignment(0,taCenter);   //??????
   ugd_Order.SetColAlignment(3,taCenter);   //????????

   //?? Form???? ???????? ???? ????
   if g_PatNo <> '' then
   begin
      pn_PatNo.Caption := g_PatNo;

      //???????????? ???????? display
      GetPatInfo;

      //????????????
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

   //Menu???? call?? ????
   else
   begin
      if md_PatNo <> '' then
      begin
         //???????????? Assign
         ed_PatName.Text    := md_PatName;
         pn_PatNo.Caption   := md_PatNo;
         pn_ResNo.caption   := md_ResNo1 + '-' + md_ResNo2;
         pn_SexAge.Caption  := md_Sex + '/' + Trim(Calc_Age(Date,md_BirtDate));
         pn_TelNo.Caption   := ' (??)'+md_TelNo1 + ' (HP)' + md_TelNo3;
         pn_ZipCd.Caption   := md_ZipCd;
         pn_Address.Caption := ' ' + md_Address;
         ed_TelNo1.Text := md_TelNo1;
         ed_TelNo2.Text := md_TelNo2;
         ed_TelNo3.Text := md_TelNo3;

         //????????????
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

   // ?????????????? [????????] ???????? ??.
   if MDN120F1 <> nil then
      bbt_Booking.Visible := True;
end;

//?????? ????Field OnEnter?? Tag ????(OnChange?? Check????????)
procedure TMDP410F1.ed_PatNameEnter(Sender: TObject);
begin
   ed_PatName.Tag := 1;
end;

//?????? ?????? ???? Clear
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

//?????? ?????? EnterKey ?????? ???????? ?????? ????
procedure TMDP410F1.ed_PatNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
   ResultVal : Boolean;
begin
   //Clear
   stb_Message.Panels[0].Text := '';

   //Enter Key ?????????? ????
   if (Key <> 13) or
      (Trim(ed_PatName.Text) = '') then
      Exit;

   // ?????????? ?????????? (Result=True:????????)
   ed_PatName.Tag := 0;
   if cbx_Flag.Checked then   // ????????
      ResultVal := GetPatNameFlag(ed_PatName, pn_PatNo, ed_PatName, pn_SexAge, '2')
   else
      ResultVal := GetPatNameFlag(ed_PatName, pn_PatNo, ed_PatName, pn_SexAge, '1');

   ed_PatName.Tag := 1;

   // Result=True ==> ?????? ?????? ????
   if (ResultVal) then
   begin
      //???????????? ???????? display
      GetPatInfo;

      //?????? ?????? ????, ?????? ?????????? ???? ???????? Display
      if (pn_PatNo.Caption <> '') then
      begin
         // ?????????? ?????? ????
         if rbt_History.Checked then
            rbt_HistoryClick(Nil);
         // ?????????? ?????? ????
         if rbt_Op.Checked then
            rbt_OpClick(Nil);
         // ?????????? ?????? ????
         if rbt_Blood.Checked then
            rbt_BloodClick(Nil);
         // ?????????????? ?????? ????
         if rbt_Trans.Checked then
            rbt_TransClick(Nil);
      end;
   end;
end;

//???????????? ???? Procedure
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

   //???????????? ???????? Display
   Screen.Cursor := crHourglass;
   try
      //Create Class
      mdPatinf := HmdPatinf.Create;

      //Assign Input Parameter(s).
      Cond    := '3';              //????:'3'=?????????? ????
      PatNo   := pn_PatNo.Caption; //????????
      PatName := '';               //??????

      //????Class Function Call (???? List SELECT)
      //RowNo := mdPatinf.ListPatInfo(PatName,PatNo,PatId1,PatId2); //2001.08.10 ????
      RowNo := mdPatinf.ListPatbat(Cond,PatNo,PatName);

      //?????? Message????, Exit
      if (RowNo = -1) then
      begin
         mdPatinf.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      //????????=0??????, Exit
      if (RowNo = 0) then
      begin
         mdPatinf.Free;
         Exit;
      end;

      //Select?? Data?? Grid?? Display
      i := 0;
      ed_PatName.Text    := mdPatinf.sPatName[i];                        //????????
      pn_ResNo.caption   := mdPatinf.sResno1[i]+'-'+mdPatinf.sResno2[i]; //????????????
      pn_SexAge.Caption  := mdPatinf.sSex[i]+'/'
                          + Trim(Calc_Age(Date,mdPatinf.sBirtDate[i]));  //????+????
      pn_TelNo.Caption   := '(??)'+mdPatinf.sTelNo1[i]
                          + ' (HP)'+mdPatinf.sTelNo3[i];                 //????????
      pn_ZipCd.Caption   := mdPatinf.sZipCd[i];                          //????????
      pn_Address.Caption := ' '+mdPatinf.sAddress[i];                    //????

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

// ???????? click
procedure TMDP410F1.rbt_HistoryClick(Sender: TObject);
var
   RowNo, i : Integer;
   PatNo, Locate : String;
begin
   //???? Clear
   stb_Message.Panels[0].Text := '';
   Clear_Grid(ugd_History,ugd_History.ColCount);
   Clear_Grid(ugd_OrdDate,ugd_OrdDate.ColCount);
   Clear_Grid(ugd_Order,  ugd_Order.ColCount);

   //????????List Panel Visible..
   pn_History.Visible := True;
   pn_OP.Visible      := False;
   pn_Blood.Visible   := False;
   pn_Trans.Visible   := False;
   //?????? ???? ???????? Select ???? Display
   Screen.Cursor := crHourGlass;
   try
      //Create Class
      mdPdiagt := HmdPdiagt.Create;

      //Assign Input Parameter(s)..
      PatNo  := pn_PatNo.Caption; //????????
      Locate := G_LOCATE;         //??????

      //????Class Function Call (???? ???????? List SELECT)
      RowNo := mdPdiagt.ListDiagHistory(PatNo,Locate);

      //?????? Message????, Exit
      if (RowNo = -1) then
      begin
         mdPdiagt.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      //????????=0??????, Exit
      if (RowNo = 0) then
      begin
         mdPdiagt.Free;
         stb_Message.Panels[0].Text := '???? ?????? ?????? ???????? ????????.';
         Exit;
      end;

      //Select?? Data?? Grid?? Display
      ugd_History.RowCount := RowNo + 1;
      for i := 0 to RowNo-1 do
      begin
         //????????
         if      mdPdiagt.sPatsect[i] = 'O' then
         begin
            ugd_History.Cells[0,i+1] := '????';                           //????????
            ugd_History.Cells[1,i+1] := ConvertDDate(mdPdiagt.sIndate[i]);//????????
            ugd_History.Cells[2,i+1] := '';                               //????????
         end
         //????????
         else if mdPdiagt.sPatsect[i] = 'I' then
         begin
            ugd_History.Cells[0,i+1] := '????';
            ugd_History.Cells[1,i+1] := ConvertSDate(mdPdiagt.sIndate[i]);
            if mdPdiagt.sOutDate[i] <> '' then
               ugd_History.Cells[2,i+1] := ConvertSDate(mdPdiagt.sOutDate[i]);
         end
         //????????
         else if mdPdiagt.sPatsect[i] = 'E' then
         begin
            ugd_History.Cells[0,i+1] := '????';
            ugd_History.Cells[1,i+1] := ConvertDDate(mdPdiagt.sIndate[i]);
            ugd_History.Cells[2,i+1] := ConvertDDate(mdPdiagt.sOutDate[i]);
         end;
         ugd_History.Cells[3,i+1] := mdPdiagt.sDeptnm[i];  // ????????
         ugd_History.Cells[4,i+1] := mdPdiagt.sChadrnm[i]; // ??????????

{         if mdPdiagt.sCficdyn[i] = 'Y' then
            ugd_History.Cells[5,i+1] := '(R/O)' + mdPdiagt.sDiagname[i] // ????????
         else
}           ugd_History.Cells[5,i+1] := mdPdiagt.sDiagname[i]; // ????????

         ugd_History.Cells[6,i+1] := mdPdiagt.sStayYn[i];  // ????????
         ugd_History.Cells[7,i+1] := mdPdiagt.sWardRoom[i];// ????-????
         ugd_History.Cells[8,i+1] := mdPdiagt.sMedDept[i]; // ??????
         ugd_History.Cells[9,i+1] := mdPdiagt.sGendrnm[i]; // ????????
         ugd_History.Cells[10,i+1]:= mdPdiagt.sPattpnm[i]; // ????????

      end;

      mdPdiagt.Free;
      stb_Message.Panels[0].Text := IntToStr(RowNo)+'???? ?????? ??????????????.';
   finally
      Screen.Cursor := crDefault;
   end;

    // ?????????? ???? ????-???? ????
   for i := 0 to RowNo-1 do
   begin
      if ugd_History.Cells[6,i+1] = 'Y' then
         pn_Ward.Caption := ugd_History.Cells[7,i+1];
   end;

   //?????????? Sorting
   QuickSortGrid(ugd_History,1,ugd_History.RowCount-1,1,True);
   ugd_History.Repaint;

   //?????????? ???????? Display
   ugd_History.Row := 1;
   ugd_HistoryClick(Nil);
end;

// ???????? Click ==> ?????? ???????? List ????
procedure TMDP410F1.rbt_OpClick(Sender: TObject);
var
   RowNo, i : Integer;
   Type1, PatNo, OpDate, Locate : String;
begin
   //???? Clear
   stb_Message.Panels[0].Text := '';
   Clear_Grid(ugd_Op,ugd_Op.ColCount);

   //????????List Panel Visible..
   pn_Op.Visible      := True;
   pn_History.Visible := False;
   pn_Blood.Visible   := False;
   pn_Trans.Visible   := False;
   bbt_Print.Enabled  := False;
   
   //?????? ???? ???????? Select ???? Display
   Screen.Cursor := crHourGlass;
   try
      //Create Class
      mdOprptt := HmdOprptt.Create;

      //Assign Input Parameter(s)..
      Type1  := '1';              //????????('1'=????????,'2'=????????+??????)
      PatNo  := pn_PatNo.Caption; //????????
      OpDate := '';               //????????(=NULL)
      Locate := G_LOCATE;         //??????

      //????Class Function Call (???? ???????? List SELECT)
      RowNo := mdOprptt.ListPatOp(Type1,PatNo,OpDate,Locate);

      //?????? Message????, Exit
      if (RowNo = -1) then
      begin
         mdOprptt.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      //????????=0??????, Exit
      if (RowNo = 0) then
      begin
         mdOprptt.Free;
         stb_Message.Panels[0].Text := '???? ?????? ?????? ???????? ????????.';
         //MakeMsg(CF_D420,NF010,NF020,stb_Message);  //MsgCom
         Exit;
      end;

      //Select?? Data?? Grid?? Display
      ugd_Op.RowCount := RowNo + 1;
      for i := 0 to RowNo-1 do
      begin
         ugd_Op.Cells[0,i+1] := ConvertSDate(mdOprptt.sOpDate[i]);   //??????
         ugd_Op.Cells[1,i+1] := mdOprptt.sOpname[i];                 //??????
         ugd_Op.Cells[2,i+1] := mdOprptt.sDeptnm[i];                 //??????
         ugd_Op.Cells[3,i+1] := mdOprptt.sOpDrNm[i];                 //??????
         ugd_Op.Cells[4,i+1] := mdOprptt.sAneDrNm1[i];               //??????
         ugd_Op.Cells[5,i+1] := mdOprptt.sAnecdnm1[i];               //????????
         ugd_Op.Cells[6,i+1] := mdOprptt.sRemark[i];                 //????
      end;

      mdOprptt.Free;
      stb_Message.Panels[0].Text := IntToStr(RowNo)+'???? ?????? ??????????????.';
      //MakeMsg(CF_D420,NF010,NF020,stb_Message);  //MsgCom
   finally
      Screen.Cursor := crDefault;
   end;

   ugd_Op.Setfocus;
end;

// ???????? click ==> ?????? ???????? List ????
procedure TMDP410F1.rbt_BloodClick(Sender: TObject);
var
   RowNo, i : Integer;
   PatNo, Locate : String;
begin
   //???? Clear
   stb_Message.Panels[0].Text := '';
   Clear_Grid(ugd_Blood,ugd_Blood.ColCount);

   //????????List Panel Visible..
   pn_Blood.Visible   := True;
   pn_History.Visible := False;
   pn_Op.Visible      := False;
   pn_Trans.Visible   := False;
   bbt_Print.Enabled  := False;
   //?????? ???? ???????? Select ???? Display
   Screen.Cursor := crHourGlass;
   try
      //Create Class
      mdBldort := HmdBldort.Create;

      //Assign Input Parameter(s)..
      PatNo  := pn_PatNo.Caption; //????????
      Locate := G_LOCATE;         //??????

      //????Class Function Call (???? ???????? List SELECT)
      RowNo := mdBldort.ListBloodOrd(PatNo, Locate);

      //?????? Message????, Exit
      if (RowNo = -1) then
      begin
         mdBldort.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      //????????=0??????, Exit
      if (RowNo = 0) then
      begin
         mdBldort.Free;
         stb_Message.Panels[0].Text := '???? ?????? ?????? ???????? ????????.';
         //MakeMsg(CF_D420,NF010,NF020,stb_Message);  //MsgCom
         Exit;
      end;

      //Select?? Data?? Grid?? Display
      ugd_Blood.RowCount := RowNo + 1;
      for i := 0 to RowNo-1 do
      begin
         ugd_Blood.Cells[0,i+1] := ConvertSDate(mdBldort.sOrddate[i]); //??????
         ugd_Blood.Cells[1,i+1] := mdBldort.sOrdDesc1[i]+' '
                                 + mdBldort.sOrdDesc2[i];              //????????
         ugd_Blood.Cells[2,i+1] := mdBldort.sJstatnm[i];               //????????
         ugd_Blood.Cells[3,i+1] := mdBldort.sOrddrnm[i];               //??????
         ugd_Blood.Cells[4,i+1] := mdBldort.sOrdstnm[i];               //??????
         ugd_Blood.Cells[5,i+1] := mdBldort.sRemark[i];                //????
      end;

      mdBldort.Free;
      stb_Message.Panels[0].Text := IntToStr(RowNo)+'???? ?????? ??????????????.';
      //MakeMsg(CF_D420,NF010,NF020,stb_Message);  //MsgCom
   finally
      Screen.Cursor := crDefault;
   end;

   ugd_Blood.Setfocus;
end;

// ???????????? click ==> ?????? ???????????? List ????
procedure TMDP410F1.rbt_TransClick(Sender: TObject);
var
   RowNo, i : Integer;
   Type1, PatNo, AdmDate, Locate : String;
begin
   //???? Clear
   stb_Message.Panels[0].Text := '';
   Clear_Grid(ugd_Trans,ugd_Trans.colCount);

   //????????List Panel Visible..
   pn_Trans.Visible   := True;
   pn_History.Visible := False;
   pn_Op.Visible      := False;
   pn_Blood.Visible   := False;
   bbt_Print.Enabled  := False;
   //?????? ???? ???????????? Select ???? Display
   Screen.Cursor := crHourGlass;
   try
      //Create Class
      mdMovett := HmdMovett.Create;

      //Assign Input Parameter(s)..
      Type1   := '1';              //????????('1'=????????,'2'=??????????)
      PatNo   := pn_PatNo.Caption; //????????
      AdmDate := '';               //????????(=NULL)
      Locate  := G_LOCATE;         //??????

      //????Class Function Call (???? ???????????? List SELECT)
      RowNo := mdMovett.RequestSelect(Type1,PatNo,AdmDate,Locate);

      //?????? Message????, Exit
      if (RowNo = -1) then
      begin
         mdMovett.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      //????????=0??????, Exit
      if (RowNo = 0) then
      begin
         mdMovett.Free;
         stb_Message.Panels[0].Text := '???? ?????? ?????? ???????? ????????.';
         //MakeMsg(CF_D420,NF010,NF020,stb_Message);  //MsgCom
         Exit;
      end;

      //Select?? Data?? Grid?? Display
      ugd_Blood.RowCount := RowNo + 1;
      for i := 0 to RowNo-1 do
      begin
         ugd_Trans.Cells[0,i+1] := ConvertSDate(mdMovett.sCofmdate[i]); //??????
         ugd_Trans.Cells[1,i+1] := mdMovett.sFromdeptNm[i]+' / '
                                 + mdMovett.sFromward[i] + '-' + mdMovett.sFromRoom[i];               //??????+????
         ugd_Trans.Cells[2,i+1] := mdMovett.sToDeptNm[i]+' / '
                                 + mdMovett.sToward[i] + '-' + mdMovett.sToRoom[i];                 //??????+????
         ugd_Trans.Cells[3,i+1] := mdMovett.sRemark[i];                 //????
      end;

      mdMovett.Free;
      stb_Message.Panels[0].Text := IntToStr(RowNo)+'???? ?????? ??????????????.';
      //MakeMsg(CF_D420,NF010,NF020,stb_Message);  //MsgCom
   finally
      Screen.Cursor := crDefault;
   end;

   ugd_Trans.Setfocus;
end;

// ???????? List Grid Click ==> ?????? ????????(????????)List ????
procedure TMDP410F1.ugd_HistoryClick(Sender: TObject);
var
   RowNo, i : Integer;
   Type1, PatNo, AdmDate, Type2, Locate : String;
begin
   if (ugd_History.Cells[0,ugd_History.Row] = '') then
      Exit;

   if (ugd_History.Cells[0,ugd_History.Row] = '????') then
      pn_WardRoom.Caption := ugd_History.Cells[7, ugd_History.Row]
   else
      pn_WardRoom.Caption := '????';

   pn_Insu.Caption := ugd_History.Cells[10,ugd_History.Row];

   //???? Clear
   stb_Message.Panels[0].Text := '';
   Clear_Grid(ugd_OrdDate,ugd_OrdDate.ColCount);
   Clear_Grid(ugd_Order,ugd_Order.ColCount);

   //?????? ???? ????????(????????) Select ???? Display
   Screen.Cursor := crHourGlass;
   try
      //Create Class
      mdOrderv := HmdOrderv.Create;

      //Assign Input Parameter(s)..
      Type1   := '2';              //????????('2'=???????? ??????)
      PatNo   := pn_PatNo.Caption; //????????
      AdmDate := InvertSdate(Copy(ugd_History.Cells[1,ugd_History.Row],1,10)); //??????,??????
      if ugd_History.Cells[0,ugd_History.Row] = '????' then
         Type2 := 'O'
      else if ugd_History.Cells[0,ugd_History.Row] = '????' then
         Type2 := 'I'
      else if ugd_History.Cells[0,ugd_History.Row] = '????' then
         Type2 := 'E';
      Locate  := G_LOCATE;         //??????

      //????Class Function Call (???? ???????? List SELECT)
      RowNo := mdOrderv.DayOrderSelect(Type1,PatNo,AdmDate,Type2,Locate);

      //?????? Message????, Exit
      if (RowNo = -1) then
      begin
         mdOrderv.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      //????????=0??????, Exit
      if (RowNo = 0) then
      begin
         mdOrderv.Free;
         //stb_Message.Panels[0].Text := '???? ?????? ?????? ???????? ????????.';
         Exit;
      end;

      //Select?? Data?? Grid?? Display
      ugd_OrdDate.RowCount := RowNo + 1;
      for i := 0 to RowNo-1 do
      begin
         ugd_OrdDate.Cells[0,i+1] := ConvertSDate(mdOrderv.sOrdDate[i]); //??????
      end;

      mdOrderv.Free;
   finally
      Screen.Cursor := crDefault;
   end;

   //?????? ?????????? ???? ???????? List SELECT???? Dispaly
   if (ugd_OrdDate.Cells[0,1] <> '') then
   begin
      ugd_OrdDate.Row := 1;
      ugd_OrdDateClick(Nil);
   end;

   ugd_OrdDate.Setfocus;

   if ugd_History.Cells[0, ugd_History.Row] = '????' then
      bbt_Print.Enabled  := True
   else
      bbt_Print.Enabled  := False;

end;

//?????? List Grid Click ==> ???? ???????? ???????? List ????
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

   //???? Clear
   stb_Message.Panels[0].Text := '';
   Clear_Grid(ugd_Order,ugd_Order.ColCount);
   Clear_Grid(ugd_Temp,20);
   ugd_Order.RowCount := 2;

   //???????????? ???? ???????? ???????? Display
   Screen.Cursor := crHourGlass;
   try
      //Create Class
      mdOrderv := HmdOrderv.Create;

      //Assign Input Parameter(s)..
      Type1   := '3';                 //????????('3'=???????????? ???? ????????)
      PatNo   := pn_PatNo.Caption;    //????????
      AdmDate := InvertSDate(ugd_OrdDate.Cells[0,ugd_OrdDate.Row]); //??????
      Type2   := ugd_History.Cells[8,ugd_History.Row];              //??????
      Locate  := G_LOCATE;            //??????

      //????Class Function Call (???????? ???? ????????List SELECT)
      RowNo := mdOrderv.DayOrderSelect(Type1,PatNo,AdmDate,Type2,Locate);

      //?????? Message????, Exit
      if (RowNo = -1) then
      begin
         mdOrderv.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      //????????=0??????, Exit
      if (RowNo = 0) then
      begin
         mdOrderv.Free;
         Exit;
      end;

      //Select?? Data?? Grid?? Display
      sTempOrdGrpNm := '';
      sTempOrdType := '';
      nRow := 0;
      for i := 0 to RowNo-1 do
      begin
         //[????]?? ?????? Display???? ????
         if (mdOrderv.sDiscYn[i] = 'X') and
            (mdOrderv.sOrdKind[i] <> '8') and   //????+???????????? Display
            (mdOrderv.sOrdKind[i] <> '9') then  //????+?????????? Display
             Continue;

         // ????/???? (???????? ?????? ???? ????)
{
         if ((mdOrderv.sOrdGrp[i] = 'D1') or
             (mdOrderv.sOrdGrp[i] = 'D2')) and (mdOrderv.sUseSite[i] <> '') then
              continue;
}
         if (mdOrderv.sOrdGrpNm[i] <> sTempOrdGrpNm) or
            (mdOrderv.sOrdType[i]  <> sTempOrdType ) or
            (mdOrderv.sOrdCd[i] = 'SPECIAL') then
            ugd_Order.Cells[0,nRow] := mdOrderv.sOrdGrpNm[i]; //????(??????????)

         ugd_Order.Cells[1,nRow] := mdOrderv.sOrdDesc1[i];    //????????1
         if ugd_Order.Cells[1,nRow] = '' then
            ugd_Order.Cells[1,nRow] := mdOrderv.sOrdName[i];  //????????1???? ????, ??????
         ugd_Order.Cells[2,nRow] := mdOrderv.sOrdDesc2[i];    //????????2

         if mdOrderv.sRcpStat[i] = 'Y' then
            ugd_Order.Cells[3,nRow] := 'Y'
         else if mdOrderv.sRcpStat[i] = 'R' then
            ugd_Order.Cells[3,nRow] := '????';

         if Copy(mdOrderv.sOrdGrp[i],1,1) = 'B' then       //?????????? ????????
         begin
            if mdOrderv.sNurStat[i] = 'A' then
                 ugd_Order.Cells[4,nRow] := '????'
            else ugd_Order.Cells[4,nRow] := '';
         end;
         if ugd_Order.Cells[4,nRow] = '' then
            ugd_Order.Cells[4,nRow] := mdOrderv.sStatName[i]; //??????????????

         //InVisible Cell(s)..
         ugd_Order.Cells[ 5,nRow] := mdOrderv.sOrdDate[i];     //??????
         ugd_Order.Cells[ 6,nRow] := mdOrderv.iOrdSeqno[i];    //????????
         ugd_Order.Cells[ 7,nRow] := mdOrderv.sOrdName[i];     //??????
         ugd_Order.Cells[ 8,nRow] := mdOrderv.sSlipCd[i];
         ugd_Order.Cells[ 9,nRow] := mdOrderv.sJinjStat[i];
         ugd_Order.Cells[10,nRow] := mdOrderv.sOrdcd[i];
         ugd_Order.Cells[11,nRow] := mdOrderv.sOrdGrp[i];

         //2002.07.16 ????
         if mdOrderv.sDiscYn[i] = 'X' then
              GridFontColor := $00A4A4A4   //[Gray]    //[????]?? ????
         else if mdOrderv.sDiscYn[i] = 'Y' then
              GridFontColor := $0063A3E9   //[Maroon]  //[D/C]?? ????
         else if mdOrderv.sPrnYn[i] = 'Y' then
              GridFontColor := $00007500   //[Green]   //PRN????
         else GridFontColor := clBlack;    //[Black]   //????????

         if (mdOrderv.sOrdKind[i] = '8') or    //????+??????????
            (mdOrderv.sOrdKind[i] = '9') then  //????+????????
             GridFontColor := clTeal;    //[Teal]

         if mdOrderv.sOrdKind[i] = 'S' then
            GridFontColor := clOlive;    //[Olive]   //????2??????

         if mdOrderv.sOrdcd[i] = 'SPECIAL' then
            GridFontColor := $000000CC;     //[Red]     //????????Title

         for iCol := 0 to 3 do
             ugd_Order.SetFontColor(iCol,nRow,GridFontColor);

         //?????????? ???????? Font Color ???? (2002.02.05)
         if (Copy(ugd_Order.Cells[11,nRow],1,1) = 'C') and
            (Trim(ugd_Order.Cells[4,nRow]) <> 'SET????????') and
            (Trim(ugd_Order.Cells[4,nRow]) <> '????????') and
            (Copy(Trim(ugd_Order.Cells[4,nRow]),1,4) <> '????') then
         begin
            try
               ReVal := StrToFloat(mdOrderv.sRsltVal[i]);
               if (Trim(mdOrderv.sRsltUpp[i]) <> '') and (Trim(mdOrderv.sRsltLow[i]) <> '') then
               begin
                  if ReVal > StrToFloat(mdOrderv.sRsltUpp[i]) then
                       ugd_Order.SetFontColor(4,nRow,clRed)    //[Red]??????????
                  else if ReVal < StrToFloat(mdOrderv.sRsltLow[i]) then
                       ugd_Order.SetFontColor(4,nRow,clBlue)   //[Blue]??????????
                  else ugd_Order.SetFontColor(4,nRow,clBlack); //[Black]????
               end;
            except
               ReVal := 0;
               ugd_Order.SetFontColor(4,nRow,clBlack); //[Black]???????? ???? ????
            end;
         end
         else ugd_Order.SetFontColor(4,nRow,clBlack);  //[Black]???????????? ????,

         sTempOrdGrpNm := mdOrderv.sOrdGrpNm[i]; //??????????
         sTempOrdType  := mdOrderv.sOrdType[i];  //????????

         Inc(nRow);
      end;

      if nRow < 1 then
           ugd_Order.RowCount := 1
      else ugd_Order.RowCount := nRow;

      //=?????????????? ???????? ???? Temp Grid?? Assign---------//
      if ugd_History.Cells[0,ugd_History.Row] = '????' then
      begin
         bbt_Print.Enabled  := True; //[????????????]

         //Select?? Data?? Grid?? Display
         sTempOrdGrpNm := '';
         sTempOrdType := '';
         nRow := 1;
         for i := 0 to RowNo-1 do
         begin
            if ((mdOrderv.sOrdGrp[i] = 'D1') or  // ????/???? (???????? ?????? ???? ????)
                (mdOrderv.sOrdGrp[i] = 'D2')) and
                (mdOrderv.sUseSite[i] <> '') then
                 continue;

            if (mdOrderv.sOrdGrpNm[i] <> sTempOrdGrpNm ) or
               (mdOrderv.sOrdType[i]  <> sTempOrdType ) or
               (mdOrderv.sOrdCd[i] = 'SPECIAL') then
               ugd_Temp.Cells[0,nRow] := mdOrderv.sOrdGrpNm[i]; //????(??????????)

            if Trim(mdOrderv.sOrdDesc[i]) = '' then
               ugd_Temp.Cells[1,nRow] := format('%-44.44s',[(mdOrderv.sOrdName[i])])+' '
                                         + format('%-100s', [mdOrderv.sOrdDesc2[i]])
            else
               ugd_Temp.Cells[1,nRow] := format('%-44.44s',[Trim(mdOrderv.sOrdDesc[i])])+' '
                                         + format('%-100s', [mdOrderv.sOrdDesc2[i]]);

            if (Copy(mdOrderv.sOrdGrp[i],1,1) = 'B') and  // ?????????? ????????
               (mdOrderv.sPrnyn[i] <> 'Y') then
            begin
               if mdOrderv.sNurStat[i] = 'A' then
                  ugd_Temp.Cells[2,nRow] := '????'    //????????
               else
                  ugd_Temp.Cells[2,nRow] := '';
            end
            else
               ugd_Temp.Cells[2,nRow] := mdOrderv.sStatName[i];    //????????

            //InVisible Cell(s)..
            ugd_Temp.Cells[3,nRow]  := mdOrderv.sOrdDate[i];     // ??????
            ugd_Temp.Cells[4,nRow]  := mdOrderv.iOrdSeqno[i];    // ????????
            ugd_Temp.Cells[5,nRow]  := mdOrderv.sOrdName[i];     // ??????
            ugd_Temp.Cells[6,nRow]  := mdOrderv.sOrdGrp[i];      // ????????(B1:????,B2:????,B3:????)
            ugd_Temp.Cells[7,nRow]  := mdOrderv.sPrnYn[i];       // PRN ????
            ugd_Temp.Cells[8,nRow]  := mdOrderv.sOrdGrpNm[i];    // ??????????
            ugd_Temp.Cells[9,nRow]  := mdOrderv.sOrdDrNm[i];     // ??????
            ugd_Temp.Cells[10,nRow] := mdOrderv.sOrdTime2[i];    // ????????????

            if mdOrderv.sRcpStat[i] = 'Y' then                   // ????????
               ugd_Temp.Cells[11,nRow] := ' Y'
            else if mdOrderv.sRcpStat[i] = 'R' then
               ugd_Temp.Cells[11,nRow] := '????'
            else
               ugd_Temp.Cells[11,nRow] := '';
            ugd_Temp.Cells[12,nRow] := mdOrderv.sPatSect[i];     // ????????(I:????,O:????,E:????)
            ugd_Temp.Cells[13,nRow] := mdOrderv.sDiscYn[i];      // DC ????(X:????,Y:DC)
            ugd_Temp.Cells[14,nRow] := mdOrderv.sOrddesc1[i];
            ugd_Temp.Cells[15,nRow] := mdOrderv.sDcDate[i];      // DC????????

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
      stb_Message.Panels[0].Text := IntToStr(RowNo)+'???? ?????? ??????????????.';
   finally
      Screen.Cursor := crDefault;
   end;
end;

procedure TMDP410F1.ugd_OrderClick(Sender: TObject);
begin
   if Copy(Trim(ugd_Order.Cells[8,ugd_Order.Row]),1,1) = 'Y' then   // ???? ????????
      bbt_ExmCancel.Enabled := True
   else
      bbt_ExmCancel.Enabled := False;
end;

// [????????] Grid <??????????> Cell ?????? ==> ???????????? Form Call
procedure TMDP410F1.ugd_OrderMouseUp(Sender: TObject; Button: TMouseButton;
                                     Shift: TShiftState; X, Y: Integer);
var
   SelCol,SelRow : Integer;
begin
   //<??????????> Cell ?????? ==> ???????????? Form Call
   ugd_Order.MouseToCell(X,Y,SelCol,SelRow);

   if (SelCol = 4) and
      ((ugd_Order.Cells[SelCol,SelRow] = 'SET????????') or
       (ugd_Order.Cells[SelCol,SelRow] = '????????'))   then
   begin
      if MDO110F6 <> Nil then
         MDO110F6.Close;
      MDO110F6 := TMDO110F6.Create(Application);

      MDO110F6.g_OrdName := ugd_Order.Cells[7,SelRow];             //??????
      MDO110F6.g_PatNo   := pn_PatNo.Caption;                      //????????
      MDO110F6.g_OrdDate := ugd_Order.Cells[5,SelRow];             //??????
      MDO110F6.g_SeqNo   := StrToInt(ugd_Order.Cells[6,SelRow]);   //????????
      if      ugd_Order.Cells[SelCol,SelRow] = 'SET????????' then
              MDO110F6.g_ResultKind := '1'       //???????? List View
      else if ugd_Order.Cells[SelCol,SelRow] = '????????' then
              MDO110F6.g_ResultKind := '2';      //???????? Text View

      MDO110F6.ShowModal;
   end;
end;

//????????
procedure TMDP410F1.bbt_BookingClick(Sender: TObject);
begin
   if MDP320F1 <> nil then
      MDP320F1.Close;
   Application.CreateForm(TMDP320F1, MDP320F1);
   MDMAINF1.ShowForm(MDP320F1);

   // ?????????? ??????????
   MDP320F1.ed_PatName.Text := pn_Patno.Caption;
   MDP320F1.ed_PatName.Tag := 0;
   GetPatName(MDP320F1.ed_PatName, MDP320F1.pn_PatNo, MDP320F1.ed_PatName);
   MDP320F1.ed_PatName.Tag := 1;

//   MDP320F1.ed_PatName.Text := pn_Patno.Caption;
//   MDP320F1.ed_PatnameChange(sender);
end;

//????????????
procedure TMDP410F1.bbt_PrintClick(Sender: TObject);
var i, k, Len, RowNo :Integer;
    sFlag1,sFlag2 : String;
    sType1,sType2,sType3,sType4:String;
begin
  stb_Message.Panels[0].Text := '';

  if ugd_OrdDate.Cells[0,ugd_OrdDate.Row] = '' then
     exit;

  {
  if MessageDlg('???? '+ ugd_OrdDate.Cells[0,ugd_OrdDate.Row]+
                ' ?????? ???????? ?? ???????? ?????? ?????????????????',
                mtConfirmation, [mbYes, mbNo], 0) <> mrYes then Exit;
  }
   if Application.MessageBox('?? ?????????? ???????? ?? ???????? ?????? ?????????????????',
                              '????', MB_OKCANCEL) <> IDOK then exit;

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

      // ????????(????????, ????????)?? ??????, ???????? ?????????? ??.
      if Copy(Trim(ugd_Temp.Cells[0,i]),1,2) = '??' then
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

      if Copy(ugd_PrintList.Cells[2,k],1,1) <> 'B' then  // ??????
      begin
         if trim(ugd_PrintList.Cells[5,k]) <> '' then
            ugd_PrintList.Cells[3,k+1] := '?? ' + ugd_PrintList.Cells[5,k];

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
      if ugd_PrintList.Cells[1,i] <> '' then    //????????
      begin
         if Copy(ugd_PrintList.Cells[2,i],1,1) = 'B' then //??????????
         begin
            //?????????? ???? ??????????????????
            Screen.Cursor := crHourGlass;
            try
              //Create Class
              mdOrderv := HmdOrderv.Create;

              //Assign Input Parameter(s)..
              sType1   := '6';                                               //????????('3'=???????????? ???? ????????)
              sType2   := Trim(pn_PatNo.Caption);                                          //????????
              sType3   := InvertSDate(ugd_OrdDate.Cells[0,ugd_OrdDate.Row]); //??????
              sType4   := ugd_PrintList.Cells[4,i];                                          //??????

              //????Class Function Call (???????????? ???? ????????List SELECT)
              RowNo := mdOrderv.PreOrderSelect(sType1,sType2,sType3,sType4);

              //?????? Message????, Exit
              if (RowNo = -1) then
              begin
                 mdOrderv.Free;
                 break;
              end;

              //????????=0??????, Exit
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
                                                   + '(????:' + mdOrderv.sOrdDr[k] + ')'
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
                                                   + '(????:' + mdOrderv.sOrdDr[k] + ')'
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
                                                   + '(????:' + mdOrderv.sOrdDr[k] + ')'
                                                   + '/' + mdOrderv.sOrddrnm[k]
                                                   + ', ';
                     end;
                  end;
                  ugd_PrintList.Cells[7, i+1] := '';
               end;

               if trim(ugd_PrintList.Cells[3,i+1]) <> '' then
                  ugd_PrintList.Cells[3,i+1] := '?? ' + Copy(ugd_PrintList.Cells[3,i+1],1,Length(Trim(ugd_PrintList.Cells[3,i+1]))-1);
              end;
              mdOrderv.Free;
           finally
              Screen.Cursor := crDefault;
           end;
         end
         else   // ?????? ????.
         begin
            ugd_PrintList.Cells[3,i+1] := ugd_PrintList.Cells[5, i];
         end;
      end;
   end;

       // ?????? ???? Check
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
   stb_Message.Panels[0].Text := '??????????????.';
   Screen.Cursor := crDefault;
end;

//????????????????
procedure TMDP410F1.bbt_ExmCancelClick(Sender: TObject);
var
   sType1, sPatNo, sOrdDate, sOrdSeqNo, sEditid, sEditip : String;
   Cnt : Integer;
begin
   if (Trim(ugd_Order.Cells[4,ugd_Order.Row]) = '') then
   begin
      Showmessage('???? ?????????? ??????????.');
      Exit;
   end;

   if (ugd_Order.Cells[3,ugd_Order.Row] = 'Y') then
   begin
      if Application.MessageBox('???? ?????? ??????????.' + #13#10 + #13#10 +
                                '?????????? ?????? ??????????.' + #13#10 + #13#10 +
                                '???????? ?????????????' , '???????? ????????', MB_OKCANCEL) <> IDOK then
         exit;
   end
   else
   begin
      if Application.MessageBox('???????? ?????????????', '???????? ????????', MB_OKCANCEL) <> IDOK then
         exit;
   end;

   // ?????????? ????
   Screen.Cursor := crHourglass;
   try
      sType1    := '1';
      sPatNo    := pn_PatNo.Caption;                                     // ????????
      sOrdDate  := InvertSDate(ugd_OrdDate.Cells[0,ugd_OrdDate.Row]); // ????????
      sOrdSeqNo := ugd_Order.Cells[6,ugd_Order.Row];
      sEditId   := md_UserId;
      sEditIp   := G_USERIP;

      mdOrderv := HmdOrderv.Create ;
      Cnt := mdOrderv.ExmCancel(sType1, sPatNo, sOrdDate, sOrdSeqNo, sEditId, sEditIp,'','','','','','');  // ???????? ????????

      // system error message
      if Cnt <> 1  then
      begin
         mdOrderv.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      mdOrderv.Free;

      Showmessage('???? ?????? ???????? ??????????.');

      ugd_Order.Cells[4,ugd_Order.Row] := '';

      stb_Message.Panels[0].Text := '???? ?????? ???????? ??????????.';
   finally
        Screen.Cursor := crDefault;
   end;
end;

//????????????
procedure TMDP410F1.bbt_InterestClick(Sender: TObject);
begin

   if ugd_History.Cells[0,1]='' then
   begin
      ShowMessage('?????? ?????????? ????????.');
      exit;
   end;

   //Clear
   stb_Message.Panels[0].Text := '';
   me_Comment.Clear;

   //?????? ????List?? ???? ????, Exit
   if pn_PatNo.Caption = '' then
   begin
      ShowMessage('?????? ?????? ???? ????????????.');
      exit;
   end;

   rbt_Gubun1.Checked := True;
   InsInterest('1',''); // ??????

end;

//???????????? - ????
procedure TMDP410F1.InsInterest(sFlag1,sFlag2:String);   //sFlag1=1:????,2:??????  sFlag2='':????,not null:????????
var
   RowNo, i : integer;
   sType1 : String;
begin
   me_Comment.Clear;

   //???????? ?????????? ???????? ComboBox?? Add
   Screen.Cursor := crHourglass;
   try
      //Create Class
      mdRschmt := HmdRschmt.Create;

      //????class Function CALL (?????????? List ????)

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

      // ???????? ????
      if RowNo = 0 then
      begin
         // 2002.02.20 ???????? ?????? ?????????? ????.
         {
         mdRschmt.Free;
         ShowMessage('?????? ???????? ????????. ???? ?????????? ????????????.');
         //???????????? Panel Visible
         pn_Group.Visible := True;
         ed_SetNm.Clear;
         ed_SetNm.SetFocus;
         Exit;
         }
      end
      else
      begin
         //select?? ?????? comboBox?? Add
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

   //???????????? Panel Visible
   if sFlag1 ='1' then
      rbt_Gubun1.Checked := True
   else if sFlag1 = '2' then
      rbt_Gubun2.Checked := True;
   
   pn_Interest.Visible := True;

   //???????? ???????? SELECT ???? display
   if sFlag2='' then // ????
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
      Showmessage('?? ?????? ???? ?????????? ????????.');
      Exit;
   end;

   stb_Message.Panels[0].Text := '';

   //Input Value Check..
   if Trim(ed_SetNm.Text) = '' then
   begin
      ShowMessage('???????? ????????????.');
      ed_SetNm.SetFocus;
      Exit;
   end;

   //???????? Insert
   Screen.Cursor := crHourglass;
   try
      //Create Class
      mdRschmt := HmdRschmt.Create;

      //Parameter Assign
      if lb_Gubun.Caption = '1' then
         MedDr  := md_UserId           //??????
      else
         MedDr  := md_DeptCd;

      SetNm  := Trim(ed_SetNm.Text); //??????????
      EditId := md_UserId;           //??????ID
      EditIp := G_USERIP;            //??????IP

      //????Class Function Call
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

   //???????????? Panel InVisible
   pn_Group.Visible := False;

   //?????????? List Add, ???????????? Panel Visible
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

   //???????? ???????? SELECT ???? display
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

      //????class Function CALL (????????????????)
      RowNo := mdRschdt.SelectRschdt(MedDr,SeqNo,PatNo);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdRschdt.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      // ???????? ???? ????, select?? ?????? Display
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
      Showmessage('?? ?????? ???? ?????????? ????????.');
      Exit;
   end;

   if Trim(combx_SetNm.Text) = '' then
   begin
      Showmessage('???????? ?????? ????????.');
      combx_SetNm.SetFocus;
      Exit;
   end;

   stb_Message.Panels[0].Text := '';

   //Input Value Check..
   if combx_SetNm.ItemIndex < 1 then
   begin
      ShowMessage('?????? ???????? ???? ????????????.');
      combx_SetNm.SetFocus;
      Exit;
   end;

   // ???????? ????
   Screen.Cursor := crHourglass;
   try
      //Create Class
      mdRschdt := HmdRschdt.Create;

      //Parameter Assign
      if rbt_Gubun1.Checked then
         MedDr    := md_UserId                               //??????
      else if rbt_Gubun2.Checked then
         MedDr    := md_DeptCd;                              //??????

      SetSeqno := combx_SetCd.Items[combx_SetNm.ItemIndex];//????????????
      PatNo    := pn_PatNo.Caption;          //????????
      if ugd_History.Cells[0, ugd_History.Row] = '????' then
         PatSect  := 'O'
      else if ugd_History.Cells[0, ugd_History.Row] = '????' then
         PatSect  := 'I'
      else if ugd_History.Cells[0, ugd_History.Row] = '????' then
         PatSect  := 'E';
         
      Remark   := me_Comment.Text;                         //????????
      EditId   := md_UserId;                               //??????ID
      EditIp   := G_USERIP;                                //??????IP

      //????Class Function Call
      Cnt := mdRschdt.InsertRschdt(MedDr,SetSeqno,PatNo,PatSect,Remark,EditId,EditIp);

      // SYSTEM ERROR
      if Cnt = -1 then
      begin
         mdRschdt.Free;
         ShowErrMsg;
         Exit;
      end;

      mdRschdt.Free;
      stb_Message.Panels[0].Text := '?????????? ??????????????.';
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

   // ?????? Assign
   PatNo  := pn_PatNo.Caption;
   Type1  := ed_TelNo1.Text;
   Type2  := ed_TelNo2.Text;
   Type3  := ed_TelNo3.Text;
   EditId := md_UserId;
   EditIp := G_USERIP;

   //Update ????.
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
      stb_Message.Panels[0].Text := '?????????? ??????????????';
   finally
     Screen.Cursor := crDefault;
   end;

   if pn_PatNo.Caption  = md_PatNo then
   begin
      md_TelNo1 := ed_TelNo1.Text;
      md_TelNo2 := ed_TelNo2.Text;
      md_TelNo3 := ed_TelNo3.Text;
   end;

   pn_TelNo.Caption   := ' (??)'+ed_TelNo1.Text + ' (HP)' + ed_TelNo3.Text;

end;

procedure TMDP410F1.pm_OrderPopup(Sender: TObject);
begin
   if Copy(Trim(ugd_Order.Cells[8,ugd_Order.Row]),1,1) = 'Y' then   // ???? ????????
      ExmCancel.Enabled := True
   else
      ExmCancel.Enabled := False;
end;

//PopupMenu - ????????????????
procedure TMDP410F1.ExmCancelClick(Sender: TObject);
begin
   bbt_ExmCancelClick(Sender);
end;

//PopupMenu - ????????????
procedure TMDP410F1.pm_DrugInfoClick(Sender: TObject);
begin
   if (ugd_Order.Cells[1,ugd_Order.Row] = '') or
      (Copy(ugd_Order.Cells[11,ugd_Order.Row],1,1) <> 'B') then
       Exit;

   //???????????? Form Create
   if MDO111F1 <> nil then
      MDO111F1.Close;
   MDO111F1 := TMDO111F1.Create(Application);

   //Default Value Assign
   MDO111F1.g_DrugCode := ugd_Order.Cells[10,ugd_Order.Row]; //????????

   MDO111F1.Position   := poScreenCenter;
   //???????????? Form View
   MDO111F1.ShowModal;
end;

//PopupMenu - ????????
procedure TMDP410F1.pm_PriceClick(Sender: TObject);
begin
   if (ugd_Order.Cells[10,Ugd_order.Row] = '') or
      (ugd_Order.Cells[10,Ugd_order.Row] = 'SPECIAL') then
       Exit;

   //?????????? ?????? ?????? ???????? Display --> ???????? Form Call
   if MDO111F8 <> nil then
      MDO111F8.Close;
   MDO111F8 := TMDO111F8.Create(Application);
   MDO111F8.Top  := pn_History.ClientOrigin.Y + 180;
   MDO111F8.Left := pn_History.ClientOrigin.X + 590;
   with ugd_Order do
   begin
      MDO111F8.g_OrdCd := Cells[10,Row];       //????????Assign
      if Cells[10,Row] = 'MESSAGE' then
           MDO111F8.g_OrdName := Cells[1,Row]  //Message?????? ????, Orddesc1 Assign
      else MDO111F8.g_OrdName := Cells[7,Row]; //??????Assign
   end;
   //???????? Form View
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

