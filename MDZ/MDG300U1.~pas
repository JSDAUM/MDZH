{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
unit MDG300U1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, Grids, UltraGrid, Menus, NumEdit, QRCtrls,
  TeEngine, Series, TeeProcs, Chart, Math, Variants;
  
type
  TMDG300F1 = class(TForm)
    pn_Header: TPanel;
    Panel4: TPanel;
    pn_PatName: TPanel;
    ed_PatNo: TEdit;
    pn_Ward: TPanel;
    stb_Message: TStatusBar;
    pn_PatInfo: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    pn_ResNo: TPanel;
    pn_SexAge: TPanel;
    pn_TelNo: TPanel;
    pn_Address: TPanel;
    pn_ZipCd: TPanel;
    pn_WardRoom: TPanel;
    pn_Insu: TPanel;
    pn_History: TPanel;
    Panel32: TPanel;
    pn_Title: TPanel;
    ugd_RecodKnd: TUltraGrid;
    ugd_PrintList: TUltraGrid;
    ugd_RecodDt: TUltraGrid;
    ugd_History: TUltraGrid;
    ugd_Temp: TUltraGrid;
    bbt_MdHSearch: TBitBtn;
    bbt_Print: TBitBtn;
    ugd_AllList: TUltraGrid;
    pn_birthdate: TPanel;
    ugd_List: TUltraGrid;
    char_VS: TChart;
    Panel69: TPanel;
    Label62: TLabel;
    Label60: TLabel;
    Label71: TLabel;
    ugd_PatList: TUltraGrid;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    combx_Room: TComboBox;
    combx_RoomCd: TComboBox;
    combx_MedDeptCd: TComboBox;
    combx_MedDept: TComboBox;
    combx_OutDeptCd: TComboBox;
    combx_OutDept: TComboBox;
    cboDeptCD: TComboBox;
    cboDept: TComboBox;
    combx_ConslDept1: TComboBox;
    combx_ConslDept2: TComboBox;
    combx_ConslDept3: TComboBox;
    combx_ErRsltCd: TComboBox;
    combx_ErRslt: TComboBox;
    combx_DiagKind: TComboBox;
    combx_DiagKindCd: TComboBox;
    combx_Intencd: TComboBox;
    combx_Inten: TComboBox;
    combx_Injury: TComboBox;
    combx_Injurycd: TComboBox;
    combx_return: TComboBox;
    combx_returncd: TComboBox;
    combx_transfer: TComboBox;
    combx_transfercd: TComboBox;
    combx_inbedcd: TComboBox;
    combx_inbed: TComboBox;
    combx_killcd: TComboBox;
    combx_kill: TComboBox;
    combx_kill2: TComboBox;
    combx_kill2cd: TComboBox;
    cbx_type_out_cd: TComboBox;
    cbx_type_out: TComboBox;
    combx_apath1: TComboBox;
    combx_apath: TComboBox;
    combx_apathcd1: TComboBox;
    combx_apathcd: TComboBox;
    cbx_type_in_cd: TComboBox;
    cbx_type_in: TComboBox;
    combx_dangsacd: TComboBox;
    combx_dangsa: TComboBox;
    combx_roomno: TComboBox;
    combx_Disease: TComboBox;
    cboHome: TComboBox;
    combx_Location: TComboBox;
    Combo_Num: TComboBox;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    lb_patno: TLabel;
    lb_meddate: TLabel;
    lb_dschdate: TLabel;
    lb_patgubun: TLabel;
    lb_meddept: TLabel;
    lb_chadr: TLabel;
    procedure ed_PatNoEnter(Sender: TObject);
    procedure ed_PatNoChange(Sender: TObject);
    procedure ed_PatNoKeyPress(Sender: TObject; var Key: Char);
    procedure ed_PatNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ugd_HistoryClick(Sender: TObject);
    procedure ugd_RecodKndClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbt_CloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bbt_MdHSearchClick(Sender: TObject);
    procedure bbt_PrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure shcbx_pro(shape : TQRShape; Check :String);
    procedure combx_RoomChange(Sender: TObject);


  private
    { Private declarations }
    procedure  UpdateRecord(sPK1, sPK2, sPK3, sPK4, sPK5, sRecgubuncd : string);
    procedure GetPatInfo;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);   //환자기본정보 조회 Procedure
    function strtoint_nvl(Check : String):Integer;
  public
    { Public declarations }
  g_UserDept : String;
  g_RecKind : String;

  end;

var
  MDG300F1: TMDG300F1;

implementation

uses
   CComFunc, VarCom, TuxCom,
   MDCLASS1, MDDLLCLASS, MDCLASS2, MDC100U1, MHCLASS1,
   MDS510U1_P01, MDO510U1_P02, MDP270U1_P01, MDO540U1_P01, MDO550U1_P01,
   MDO530U1_P01, MDS210U2_P01, MDN420U1_P01, MDF120U1_P01, MDF160U1_P02,
   MDF130U1_P01, MDF180U1_P01, MDN634U2_P01, MDN130U3_P01, SRA411UM_P01,
   MNW940P2, MNW921P3, MNW923P2, MNW924P2, MNW925P2,
   MNW922P2,
   MHE700U1_P01, MDN690U1_P01, SQN200U7_P1, MDN111U5_P01,
   SRA411UN_P01, SRA411UN_P02, MDN110U1_P02;

{$R *.dfm}

procedure TMDG300F1.ed_PatNoEnter(Sender: TObject);
begin
   ed_patno.Tag := 1;
end;

procedure TMDG300F1.ed_PatNoChange(Sender: TObject);
var
   i : Integer;
   TempCompnt : TComponent;
begin
   // Grid All Clear;
   for i := 0 to ComponentCount-1 do begin
      if (Components[i] is TUltraGrid) then begin
         TempCompnt := Components[i];
         Clear_Grid( TUltraGrid(TempCompnt), TUltraGrid(TempCompnt).ColCount);
      end;
   end;
   //Cleat Pat Info.
   pn_ResNo.caption   := '';
   pn_SexAge.Caption  := '';
   pn_TelNo.Caption   := '';

   pn_ZipCd.Caption   := '';
   pn_Address.Caption := '';
   pn_insu.Caption   := '';
   pn_wardroom.Caption   := '';   

   if ed_patno.Tag = 1 then begin
      pn_PatName.Caption := '';
      pn_Ward.Caption  := '';
   end;
   
   stb_Message.Panels[0].Text := '';
end;

procedure TMDG300F1.ed_PatNoKeyPress(Sender: TObject; var Key: Char);
begin
      if (Not (Key in ['0'..'9'
                       ,char(VK_LEFT),Char(VK_RIGHT)
                       ,Char(VK_BACK),Char(VK_DELETE)])) then
         Key := #0;

      ed_patno.MaxLength := 40; //13자 이상인 이름(예:영문이름)이 있음.KimDaeYong 2018-05-29
end;


procedure TMDG300F1.GetPatInfo;
var
   RowNo, i : Integer;
   PatName,PatNo,Cond : String;
begin
   // Display Field(s) Clear
   pn_ResNo.caption   := '';
   pn_SexAge.Caption  := '';
   pn_TelNo.Caption   := '';
   pn_ZipCd.Caption   := '';
   pn_Address.Caption := '';

   //환자기본정보 조회하여 Display
   Screen.Cursor := crHourglass;
   try
      //Create Class
      mdPatinf := HmdPatinf.Create;

      //Assign Input Parameter(s).
      Cond    := '3';              //조건:'3'=환자번호로 찾기
      PatNo   := ed_patno.Text; //환자번호
      PatName := '';               //환자명

      //공통Class Function Call (환자 List SELECT)
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
      pn_PatName.Caption    := mdPatinf.sPatName[i];                        //환자명
      ed_patno.Text   := mdPatinf.sPatNo[i];                        //환자번호
      pn_ResNo.caption   := mdPatinf.sResno1[i]+'-'+mdPatinf.sResno2[i]; //주민등록번호
      pn_SexAge.Caption  := mdPatinf.sSex[i]+'/'
                          + Trim(Calc_Age(Date,mdPatinf.sBirtDate[i]));  //성별+나이
      //폰번호에 '-'넣기. KimDaeYong 2020-06-17
      //pn_TelNo.Caption   := '(집)'+mdPatinf.sTelNo1[i]
      //                    + ' (HP)'+mdPatinf.sTelNo3[i];                 //전화번호
      pn_TelNo.Caption   := '(집)'+FormatTel(mdPatinf.sTelNo1[i])
                          + ' (HP)'+FormatTel(mdPatinf.sTelNo3[i]);                 //전화번호
      pn_ZipCd.Caption   := mdPatinf.sZipCd[i];                          //우편번호
      pn_Address.Caption := ' '+mdPatinf.sAddress[i];                    //주소
      pn_birthdate.Caption := mdPatinf.sBirtDate[i];                              //생년월일
      //
{      ed_ZipCd.Text   := mdPatinf.sZipcd[i];
      ed_Address.Text := ' '+mdPatinf.sAddress[i];}
      //

      mdPatinf.Free;
   finally
      Screen.Cursor := crDefault;
   end;
end;

procedure TMDG300F1.ugd_HistoryClick(Sender: TObject);
var
   RowNo, i : Integer;
   Type1, Type2, PatNo, Meddate : String;
begin

   //화면 Clear
   stb_Message.Panels[0].Text := '';
   Clear_Grid(ugd_RecodKnd,ugd_RecodKnd.ColCount);
   Clear_Grid(ugd_RecodDt,ugd_RecodDt.ColCount);

   //특정 입원일/진료일에  대한 기록지 작성내역을 조회하여 display
   Screen.Cursor := crHourGlass;
   try
      //Create Class
      mdrecodt := Hmdrecodt.Create;

      //Assign Input Parameter(s)..
      Type2   := '1';              //조회구분('1' -> 기록지 구분)
      PatNo   := ed_PatNo.Text;    //환자번호
      Meddate := InvertSdate(Copy(ugd_History.Cells[1,ugd_History.Row],1,10)); //입원일 or 진료일
      
      //공통Class Function Call (환자 기록지 작성내역 조회  Inquery[select])    md_recod_l1.pc / MD_A211NX
      RowNo := mdrecodt.ListPatRecord(Type2,PatNo,Meddate);

      //오류시 Message처리, Exit
      if (RowNo = -1) then
      begin
         mdrecodt.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      //자료건수=0인경우, Exit
      if (RowNo = 0) then
      begin
         mdrecodt.Free;
         //stb_Message.Panels[0].Text := '해당 자료가 한건도 존재하지 않습니다.';
         Exit;
      end;

      //Select된 Data를 Grid에 Display
      ugd_RecodKnd.RowCount := RowNo + 1;
      for i := 0 to RowNo-1 do
      begin
         ugd_RecodKnd.Cells[0,i+1] := trim(mdrecodt.sRecgubun[i]); // 기록지 종류
         ugd_RecodKnd.Cells[1,i+1] := trim(mdrecodt.sfrmgubuncd[i]); // 서식 코드
         //hidden
         ugd_RecodKnd.Cells[2,i+1] := Meddate; // 진료일 / 입원일
         ugd_RecodKnd.Cells[3,i+1] := trim(mdrecodt.sRecgubuncd[i]); // 기록지 종류코드
         //ShowMessage(mdrecodt.sRecgubun[i] + '|' + Meddate + '|' + mdrecodt.sRecgubuncd[i]);
      end;

      mdrecodt.Free;
   finally
      Screen.Cursor := crDefault;
   end;

   //첫번째 처방일자에 대한 처방내역 List SELECT하여 Dispaly
   if (ugd_RecodKnd.Cells[0,1] <> '') then
   begin
      ugd_RecodKnd.Row := 1;
      ugd_RecodKndClick(Nil);
   end;

   ugd_RecodKnd.Setfocus;
end;

procedure TMDG300F1.ugd_RecodKndClick(Sender: TObject);
var
   RowNo, i : Integer;
   RecGubunCd, PatNo, Meddate : String;

begin
   if (ugd_RecodKnd.Cells[3,ugd_RecodKnd.Row] = '') then
      Exit;

   //화면 Clear
   stb_Message.Panels[0].Text := '';
   Clear_Grid(ugd_RecodDt,ugd_RecodDt.ColCount);
   ugd_RecodDt.Title :=''; // ugd_title reset

   Clear_Grid(ugd_Temp,20);
   ugd_RecodDt.RowCount := 2;

   //특정 입원일/진료일에  대한 기록지 작성내역을 조회하여 display
   Screen.Cursor := crHourGlass;
   try
      //Create Class
      mdrecodt := Hmdrecodt.Create;

      //Assign Input Parameter(s)..
      PatNo      := ed_PatNo.text;                           //환자번호
      Meddate    := ugd_RecodKnd.Cells[2,ugd_RecodKnd.Row];  // 진료일자
      RecGubunCd := ugd_RecodKnd.Cells[3,ugd_RecodKnd.Row];  // 기록지 구분 코드 (해당 기록지 참조테이블)      

      g_RecKind  := RecGubunCd;  // 기록지 종류 입력
           
      //공통Class Function Call (수진이력에 대한 기록지 작성내역List SELECT)  md_recod_l2.pc
      RowNo := mdrecodt.ListRecordPk(g_RecKind,PatNo,Meddate);

      //오류시 Message처리, Exit
      if (RowNo = -1) then
      begin
         mdrecodt.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;

      //자료건수=0인경우, Exit
      if (RowNo = 0) then
      begin
         mdrecodt.Free;
         Exit;
      end;
      
      //Select된 Data를 Grid(ugd_Order)에 Display
      ugd_RecodDt.RowCount := RowNo + 1;
      for i := 0 to RowNo-1 do
      begin
         ugd_RecodDt.Cells[0,i+1] := mdrecodt.sPk1[i]; //
         ugd_RecodDt.Cells[1,i+1] := mdrecodt.sPk2[i]; //
         ugd_RecodDt.Cells[2,i+1] := mdrecodt.sPk3[i]; //
         ugd_RecodDt.Cells[3,i+1] := mdrecodt.sPk4[i]; //
         ugd_RecodDt.Cells[4,i+1] := mdrecodt.sPk5[i]; //
         ugd_RecodDt.Cells[5,i+1] := mdrecodt.sTemp1[i]; //
         ugd_RecodDt.Cells[6,i+1] := mdrecodt.sTemp2[i]; //
         ugd_RecodDt.Cells[7,i+1] := mdrecodt.sTemp3[i]; //
         ugd_RecodDt.Cells[8,i+1] := mdrecodt.sTemp4[i]; //
         ugd_RecodDt.Cells[9,i+1] := mdrecodt.sTemp5[i]; //
         
         ugd_RecodDt.title        := mdrecodt.sUgdtitle[i]; // 기록지 종류별 set up ugd_RecodDt.title
         //ShowMessage(mdrecodt.sRecgubun[i] + '|' + Meddate + '|' + mdrecodt.sRecgubuncd[i]);
      end;
      mdrecodt.Free;
      stb_Message.Panels[0].Text := IntToStr(RowNo)+'건의 자료가 조회되었습니다.';
   finally
      Screen.Cursor := crDefault;
   end;
end;
procedure TMDG300F1.FormShow(Sender: TObject);
var
   i : Integer;
begin

   //Controls 위치 지정
   pn_History.Top  := pn_Header.Height + pn_PatInfo.Height - 4;
   pn_History.Left := pn_Header.Left;

   //Grid Set
   ugd_History.SetColAlignment(0,taCenter); //진료구분
   for i :=0 to 4 do
   begin
     ugd_RecodDt.SetColAlignment(i,taCenter);   //처방시간
   end;

end;

procedure TMDG300F1.bbt_CloseClick(Sender: TObject);
begin
      self.close;
end;

procedure TMDG300F1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TMDG300F1.FormDestroy(Sender: TObject);
begin
    MDG300F1 := nil;
end;

procedure TMDG300F1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = VK_ESCAPE then
   begin
      bbt_CloseClick(Sender);
   end;
end;

procedure TMDG300F1.bbt_MdHSearchClick(Sender: TObject);
var
   RecTotNo, Cnt, RowNo, i : Integer;
   PatNo, Locate, VstDate: String;
   // ResultVal : Boolean;
begin
   // ResultVal : False;
   
   if (ed_patno.text = '') then
   begin
    ShowMessage('환자번호를 기입해주세요.');
    exit
   end;

   if pn_patname.Caption = '' then
   begin
    ShowMessage('환자가 선택되지 않았습니다.' + #13#10 +
                '환자를 선택해주세요!');
    exit;
   end;
   
   //화면 Clear
   
   stb_Message.Panels[0].Text := '';
   Clear_Grid(ugd_History,ugd_History.ColCount);
   Clear_Grid(ugd_RecodKnd,ugd_RecodKnd.ColCount);
   Clear_Grid(ugd_RecodDt,  ugd_RecodDt.ColCount);
   
   Cnt := 0;

   //자료가 선택된 경우, 선택된 조회구분에 따라 해당이력 Display
   if (pn_PatName.Caption <> '') then
   begin
     //환자에 대한 수진이력 Select 하여 Display
     Screen.Cursor := crHourGlass;
     try
        //Create Class
        mdrecott := Hmdrecott.Create;

        //Assign Input Parameter(s)..
        PatNo   := ed_patno.Text; //환자번호
        Locate  := 'EB1';         //예수병원
        VstDate := '20110101';    //재원년월일

        //공통Class Function Call (환자 수진/입원일자  List SELECT)
        RowNo := mdrecott.ListPatMedRecord(PatNo,Locate,VstDate);  // Service : md_pmedh_s1.pc / Server : MD_A211NX

        //오류시 Message처리, Exit
        if (RowNo = -1) then
        begin
           mdrecott.Free;
           ShowErrMsg(stb_Message);
           Exit;
        end;

        //자료건수=0인경우, Exit
        if (RowNo = 0) then
        begin
           mdrecott.Free;
           stb_Message.Panels[0].Text := '해당 자료가 한건도 존재하지 않습니다.';
           Exit;
        end;

        //Select된 Data를 Grid에 Display
        ugd_History.RowCount := RowNo + 1;


        mdrecodt := Hmdrecodt.Create;
                
        for i := 0 to RowNo-1 do
        begin

           // 기록지가 작성되지 않은 수진이력은 ugd_History에서 제외 //
            RecTotNo := mdrecodt.ListPatRecord('1',PatNo,mdrecott.sIndate[i]);
            {
            ShowMessage('Index  : '  + inttostr(i) + #13#10 +
                        'RecCnt : ' + inttostr(RecTotNo));
             }
             
          //기록지 조회 오류시 Message처리, Exit
          if (RecTotNo = -1) then
          begin
             mdrecodt.Free;
             ShowErrMsg(stb_Message);
             Exit;
          end;

          if (RecTotNo = 0) then Continue;

           // 기록지 조회건수가 1건 이상 RecTotNo>=1
          if (RecTotNo >= 1) then
          begin
                ugd_History.Cells[0,Cnt+1] := inttostr(Cnt+1);
                ugd_History.Cells[1,Cnt+1] := ConvertDDate(mdrecott.sIndate[i]);
             Inc(Cnt);
          end;

        end;

        mdrecodt.Free;
        if cnt <> 0 then ugd_History.RowCount := Cnt+1; // 필터링 된 데이터 + 1
        
        mdrecott.Free;
        stb_Message.Panels[0].Text := IntToStr(Cnt)+'건의 자료가 조회되었습니다.';
     finally
        Screen.Cursor := crDefault;
     end;
   end;
   
   if Cnt <> 0 then
   begin
     //진료일별로 Sorting
     QuickSortGrid(ugd_History,1,ugd_History.RowCount-1,1,True);
     ugd_History.Repaint;

     //수진일자별 처방내역 Display
     ugd_History.Row := 1;
     ugd_HistoryClick(Nil);
   end;
end;

procedure TMDG300F1.ed_PatNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
   get_Result_flag : Boolean;
   Cnt,i,RowNo : Integer;
   V, Code : LongInt;
   sEmpno, sJikjong, sDpcd : string; //2015인증평가&개인정보보호, KimDaeYong 2015-07-16
begin
   //Clear & Initialize
   stb_Message.Panels[0].Text := '';
   get_Result_flag := false;

   //Enter Key 입력시에만 처리
   if (Key <> 13) or (Trim(ed_patno.Text) = '') then Exit;

   // 환자명으로 대상자찾기 (Result=True:자료선택)
   ed_patno.Tag := 0;

   // 환자명/환자번호로 대상자찾기 (Result=True:자료선택)
   // 4.5 환자명/환자번호로 대상자찾기 ( InputText -> 찾고자 하는 id/이름넣은 콤포넌트명,
   //                                    InText -> id 콤포넌트명,  NmText -> 이름 콤포넌트명
   //                                    sFlag => 1 전체환자, 2 재원환자
   get_Result_flag := GetPatNameFlag(ed_patno,ed_patno,pn_PatName,pn_Ward,'1');

   if get_Result_flag then
   begin
    pn_Ward.Visible := false;
    //환자기본정보 조회하여 display
    GetPatInfo;
    bbt_MdHSearchClick(sender);
   end;

   ed_patno.Tag := 1;
end;

procedure TMDG300F1.bbt_PrintClick(Sender: TObject);
var
  i, i1,i2,iRow,RowNo, RowNo2, RowNo3, Currow, j, k, PregNo, itmp : Integer;
  dDate, dadmdate : Double;
  TmpFloat1, TmpFloat2, TmpFloat3, TmpFloat4 : Double;
  sInPatno,sPk2,sPk3,sPk4,sPk5 : String;
  sEpnp, sEpnprop, sChadr,
  sRsltcd31, sRsltRmk31, sRsltcd32, sRsltRmk33, sRsltCd34,
  sRsltCd35, sRsltCd36, sRsltCd37, sRsltCd38,
  sRsltCd41, sRsltCd42, sAcciType,
  sPathCd, sPathRmk, SConsStat, sDiesecd, sDiesermk, 
  sTemp1, sTemp2, sTemp3, sTemp4, sTemp5,
  sTemp6, sTemp7, sTemp8, sTemp9, sTemp10 : String;


begin
   if (ugd_RecodDt.Cells[0,ugd_RecodDt.Row] = '') then
   begin
        ShowMessage('해당 기록지 데이터가 없습니다. 기록지를 선택해주세요!');
        Exit;
   end;

   //프린터 체크
   if (IsNotPrinterReady) then
   begin
      ShowMessage('프린터가 제대로 설치되었는지 확인하시기 바랍니다.');
      Exit;
   end;

  // 기록지 스캔시 필수공통정보
  lb_patno.caption := '';
  lb_meddate.caption := '';
  lb_dschdate.caption := '';
  lb_patgubun.caption := '';
  lb_meddept.caption := '';
  lb_chadr.caption := '';

   //state bar Clear
   stb_Message.Panels[0].Text := '';
   
   ugd_AllList.Clear;
   ugd_List.Clear;
   ugd_PrintList.Clear;
   ugd_PatList.clear;
   ugd_temp.Clear;
   
   //기록지 구분코드 및 해당 테이블 PK들로  기록지용 데이터 조회
   Screen.Cursor := crHourGlass;
   try
      //Create Class
      mdrecodt := Hmdrecodt.Create;
      //기록지 구분코드 구분하여 기록지 입력사항을 Print.
     if (g_RecKind='MDOPRECT') then // 수술기록지  [1]
        begin
             sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
             sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 수술일자 'YYYYMMDD'
             sPk3     := ugd_RecodDt.Cells[2,ugd_RecodDt.Row]; // 수술순번 'SEQNO'
             RowNo := mdrecodt.ListRecordData(g_RecKind,sInPatno,sPk2,sPk3);
              //오류시 Message처리, Exit
              if (RowNo = -1) then
              begin
                 mdrecodt.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end
              else if (RowNo = 0) then
              begin
                 mdrecodt.Free;
                 ShowMessage('출력할  자료가 없습니다.');
                 Exit;
              end
              else
              begin
              if MDS510F1_P01 <> nil then MDS510F1_P01.Close;
                MDS510F1_P01 := TMDS510F1_P01.Create(nil);
                with MDS510F1_P01 do
                  begin
                      qlb_patno.Caption     := mdrecodt.O_sResult1[0];        //환자번호
                      qlb_SexAge.Caption    := mdrecodt.O_sResult2[0];        //성별/나이
                      qlb_patName.Caption   := mdrecodt.O_sResult3[0];        //환자이름
                      qlb_ResNo.Caption     := mdrecodt.O_sResult4[0];        // 주민번호 뒷자리 '*' 처리
                      qlb_Meddept.Caption   := mdrecodt.O_sResult5[0];        // 진료과
                      qlb_chadr.Caption := mdrecodt.O_sResult6[0];      // 주치의
                      qrl_ward.Caption  := mdrecodt.O_sResult7[0];      // 병동/병실번호
                      qrlb_OpDr1.Caption := mdrecodt.O_sResult8[0];     //집도의
                      qrlb_OpDr.Caption      := mdrecodt.O_sResult8[0]; //집도의
                      qrlb_OpDate.Caption    := mdrecodt.O_sResult9[0]; //수술일
                      qrlb_OpDr4.Caption     := mdrecodt.O_sResult29[0];//집도의1
                      qrlb_OpDr2.Caption     := mdrecodt.O_sResult10[0];//수석의1
                      qrlb_OpDr3.Caption     := mdrecodt.O_sResult11[0];//수석의2

                      qrlb_PreIcdNm.Caption  := mdrecodt.O_sResult12[0];               //수술전진단명
                      qrlb_PstIcdNm.Caption  := mdrecodt.O_sResult13[0];               //수술후진단명
                      qrlb_PstIcdNm2.Caption := mdrecodt.O_sResult30[0];              //수술후진단명2
                      qrlb_PstIcdNm3.Caption := mdrecodt.O_sResult31[0];              //수술후진단명3
                      qrlb_PstIcdNm4.Caption := mdrecodt.O_sResult32[0];              //수술후진단명4

                      qrlb_PreOpName.Caption := mdrecodt.O_sResult14[0];               //수술전수술명
                      qrlb_OpName.Caption    := mdrecodt.O_sResult15[0];               //수술후수술명
                      qrlb_OpName2.Caption   := mdrecodt.O_sResult16[0];               //수술후수술명2
                      qrlb_OpName3.Caption   := mdrecodt.O_sResult17[0];               //수술후수술명3
                      qrlb_OpName4.Caption   := mdrecodt.O_sResult18[0];               //수술후수술명4

                      qrlb_AnethNm.Caption  := mdrecodt.O_sResult19[0];    //마취종류

                      if mdrecodt.O_sResult20[0]= 'Y' then qrlb_TissY.Caption := '■'
                                                      else qrlb_TissN.Caption := '■';

                      if mdrecodt.O_sResult21[0]= 'Y' then qrlb_DrainY.Caption := '■'
                                                      else qrlb_DrainN.Caption := '■';

                      qrlb_Recid.Caption  := mdrecodt.O_sResult22[0];//기록자
                      qrlb_Recdate.Caption := mdrecodt.O_sResult23[0]; // 기록일자
                                                        //  HmdOprect.sFrecdate
                      qrlb_bloodrj.Caption := mdrecodt.O_sResult24[0];   // 수혈소실
                      qrl_blood.Caption := mdrecodt.O_sResult25[0];    // 수혈

                      if mdrecodt.O_sResult26[0] = 'Y' then qrl_sponY.Caption := '■'
                                                       else qrl_sponN.Caption := '■';

                      //2015인증평가, KimDaeYong 2015-02-06
                      qrlb_Opstm.Caption := mdrecodt.O_sResult27[0];  //수술시작일시
                      qrlb_Opetm.Caption := mdrecodt.O_sResult28[0];  //수술종료일시


                    if (mdrecodt.O_sResult34[0] = '') and (mdrecodt.O_sResult33[0] = '')then  // 관찰소견  x  수술절차 x  Ohjunsu 2022-03-21
                      begin
                          qrme_Data.Lines.Text := '';
                      end
                      else if (mdrecodt.O_sResult34[0] <> '') and (mdrecodt.O_sResult33[0] = '') then // 관찰소견 o   수술절차 x  Ohjunsu 2022-03-21
                      begin
                          qrme_Data.Lines.Text :=   '관찰소견및수술중특이사항'  + #13#10 + #13#10 + ' ' + mdrecodt.O_sResult34[0] + #13#10 + #13#10;
                      end
                      else if (mdrecodt.O_sResult34[0] = '') and (mdrecodt.O_sResult33[0] <> '') then // 관찰소견 x  수술절차 x  Ohjunsu 2022-03-21
                      begin
                          qrme_Data.Lines.Text :=   '수술절차' +  #13#10 + #13#10 + ' ' + mdrecodt.O_sResult33[0] + #13#10 + #13#10;
                      end
                      else // 관찰소견 o & 수술중 특이사항 o Ohjunsu 2022-03-21
                          qrme_Data.Lines.Text :=   '관찰소견및수술중특이사항'    + #13#10 + #13#10 + ' ' + mdrecodt.O_sResult34[0] + #13#10
                                                  + '수술절차' +  #13#10 + #13#10 + ' ' + mdrecodt.O_sResult33[0] + #13#10 + #13#10;
                  end;

                // 기록지 스캔시 필수공통정보
                lb_patno.caption := sInPatno;
                lb_meddate.caption := ugd_RecodDt.Cells[3,ugd_RecodDt.Row];
                lb_dschdate.caption := mdrecodt.O_sResult35[0];
                lb_patgubun.caption := mdrecodt.O_sResult36[0];
                lb_meddept.caption := mdrecodt.O_sResult5[0];
                lb_chadr.caption := mdrecodt.O_sResult37[0];

                MDS510F1_P01.qr_01.Print;
                //MDS510F1_P01.qr_01.Preview;
                MDS510F1_P01.Close;

                // G_USERID, G_USERIP
                UpdateRecord(sInPatno,sPk2,sPk3,'empty','empty' ,g_RecKind);

              end;
        end
     else if (g_RecKind='MDDCHSUT') then // 입퇴원요약기록지 [3]
        begin
             sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
             sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 입원일자 'YYYYMMDD'
             RowNo := mdrecodt.ListRecordData(g_RecKind,sInPatno,sPk2);

              //오류시 Message처리, Exit
              if (RowNo = -1) then
              begin
                 mdrecodt.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end
              else if (RowNo = 0) then
              begin
                 mdrecodt.Free;
                 ShowMessage('출력할  자료가 없습니다.');
                 Exit;
              end
              else
              begin
                MDO510F1_P02 := TMDO510F1_P02.Create(nil);
                MDO510F1_P02.PrinterSettings.Copies := 1;
                with MDO510F1_P02 do
                  begin
                     qlb_barcode.Caption := mdrecodt.O_sResult1[0];   // * 환자번호 *
                     qlb_patno.Caption   := mdrecodt.O_sResult2[0];   // 환자번호
                     qlb_patName.Caption := mdrecodt.O_sResult3[0];   // 환자이름
                     qlb_Meddept.Caption := mdrecodt.O_sResult4[0];   // 입원과
                     qlb_ResNo.Caption   := mdrecodt.O_sResult5[0];   // 주민등록번호
                     qlb_chadr.Caption   := mdrecodt.O_sResult6[0];   // 주치의
                     qlb_chadr1.Caption  := mdrecodt.O_sResult6[0];   // 주치의
                     qrl_ward.Caption    := mdrecodt.O_sResult7[0];   // 병동병실
                     qlb_InDate.Caption  := mdrecodt.O_sResult8[0];   // 입원일
                     qlb_OutDate.Caption := mdrecodt.O_sResult9[0];   // 퇴원일
                     qlb_Sex.Caption     := mdrecodt.O_sResult10[0];  // 성별
                     QRLabel9.Caption    := mdrecodt.O_sResult11[0];  // 퇴원과
                     QRLabel53.Caption   := mdrecodt.O_sResult12[0];  // 전과일
                     QRLabel52.Caption   := mdrecodt.O_sResult13[0];  // 전과
                     QRLabel54.Caption   := mdrecodt.O_sResult14[0];  // HD(재원일)
                     QRLabel55.Caption   := mdrecodt.O_sResult15[0];  // 직업
                     QRLabel56.Caption   := mdrecodt.O_sResult16[0];  // 보호자

                      case strtoint(mdrecodt.O_sResult17[0]) of  // 치료경과
                        1 : QRLabel26.Caption := '■완쾌';
                        2 : QRLabel27.Caption := '■경쾌';
                        3 : QRLabel28.Caption := '■호전안됨';
                        4 : QRLabel29.Caption := '■진단뿐';
                        5 : QRLabel30.Caption := '■가망없는퇴원';
                        6 : begin
                               QRLabel31.Caption := '■48시간이내사망';
                               QRLabel35.Caption := '■아니오';
                            end;
                        7 : begin
                               QRLabel32.Caption := '■48시간이후사망';
                               QRLabel35.Caption := '■아니오';
                            end;
                      end;

                      if (mdrecodt.O_sResult17[0] = '6') or (mdrecodt.O_sResult17[0] = '7') then  //치료경과 - 사망
                      begin
                          qlb_Dead.Enabled := True;
                      end;

                      case strtoint(mdrecodt.O_sResult18[0]) of // 퇴원형태
                        1 : QRLabel37.Caption := '■퇴원지시후';
                        2 : QRLabel38.Caption := '■자의퇴원';
                        3 : QRLabel39.Caption := '■전원';
                        4 : QRLabel58.Caption := '■탈원';
                      end;

                      if mdrecodt.O_sResult18[0] = '3' then    //퇴원형태-(전원) , sTrnHos
                          sTemp5 := '■예   □아니오'
                      else
                          sTemp5 := '□예   ■아니오';
                          
                      case strtoint(mdrecodt.O_sResult19[0]) of // 병원감염
                        1 : qrlb_InInfect1.Caption := '■수술후';
                        2 : qrlb_InInfect2.Caption := '■기타처치후';
                        3 : qrlb_InInfect3.Caption := '■비뇨기계';
                        4 : qrlb_InInfect4.Caption := '■호흡기계';
                        5 : qrlb_InInfect5.Caption := '■소화기계';
                        6 : qrlb_InInfect6.Caption := '■기타';
                      else
                            qrlb_InInfect7.Caption := '■없음'; // 병원감염 추가 2011.06.29 김송주
                      end;

                     qlb_GenDrNm.Caption   := mdrecodt.O_sResult20[0];  // 담당의
                     qlb_GenDrNm1.Caption  := mdrecodt.O_sResult20[0];  // 담당의
                     qrl_address.Caption   := mdrecodt.O_sResult21[0];  // 주  소
                     qrlb_telno.Caption    := mdrecodt.O_sResult22[0];  // 휴대전화
                     qlb_death.Caption     := mdrecodt.O_sResult23[0];  // 사인

                     qrme_Diag1.Lines.Clear;
                     qrme_Diag2.Lines.Clear;
                     qrme_Opnm.Lines.Clear;
                     qrme_Progress.Lines.Clear;
                     qrme_Data.Lines.Clear;

                     qrme_Diag1.lines.Text := mdrecodt.O_sResult24[0];  // 진단1
                     qrme_Diag2.lines.Text := mdrecodt.O_sResult25[0];  // 진단2
                     qrme_Opnm.Lines.Text  := mdrecodt.O_sResult26[0];  // 수술/시술/처치 일자 및 명
                     qrme_Progress.Lines.Text := mdrecodt.O_sResult27[0];  // 경과요약

                      if mdrecodt.O_sResult28[0] <> '' then // OPDFU
                      begin
                         QRLabel45.Caption := '■외래';
                         qlb_oprev.Caption := copy(trim(mdrecodt.O_sResult28[0]),pos('(',trim(mdrecodt.O_sResult28[0])),pos('(',trim(mdrecodt.O_sResult28[0]))+10);
                      end
                      else
                      begin
                         QRLabel44.Caption := '■없음';
                      end;

                      if mdrecodt.O_sResult29[0] = 'Y' then         //외래진료, sOpdyn1
                          sTemp1 := '■있음   □없음'
                      else if  mdrecodt.O_sResult29[0] = 'N' then
                          sTemp1 := '□있음   ■없음'
                      else
                          sTemp1 := '■있음   □없음' ;

                      if mdrecodt.O_sResult31[0] = 'Y' then         //재입원계획, sOpdyn3
                          sTemp3 := '■있음   □없음'
                      else if mdrecodt.O_sResult31[0] = 'N' then
                          sTemp3 := '□있음   ■없음'
                      else
                          sTemp3 := '□있음   ■없음';

                      if mdrecodt.O_sResult30[0] = 'Y' then         //가정간호, sOpdyn2
                          sTemp2 := '■해당   □해당무'
                      else if mdrecodt.O_sResult30[0] = 'N' then
                          sTemp2 := '□해당   ■해당무'
                      else
                          sTemp2 := '□해당   ■해당무';

                      if mdrecodt.O_sResult33[0] = 'Y' then                 // 추후관리교육(퇴원교육)
                          sTemp4 := '■유   □무'
                      else
                          sTemp4 := '□유   ■무';

                      if copy(mdrecodt.O_sResult45[0],1,10) >= '2019-09-01' then
                      begin
                          QRLabel49.Caption := '보건의료정보관리사 확인일:';
                          QRLabel51.Left := 210;   //확인일 위치 잡기
                      end
                      else
                      begin
                          QRLabel49.Caption := '의무기록사 확인일:';
                          QRLabel51.Left := 160;   //확인일 위치 잡기
                      end;

                      if mdrecodt.O_sResult47[0] = 'Y' then // DRG 여부 체크
                      begin
                      qlb_Drg.Enabled := True;
                      end;

                      if mdrecodt.O_sResult48[0] = '1' then // 응급실 경유여부 체크
                      begin
                       qlb_Admpath.Enabled := True;
                      end;

                      if mdrecodt.O_sResult18[0] = '3' then  // 퇴원형태가 "전원"인 경우. KimDaeYong 2015-01-30
                      begin
                          qrme_Data.Lines.Text := #13#10 + #13#10
                                                + '【입원사유(주소)】 '    + #13#10 + #13#10 + mdrecodt.O_sResult34[0] + #13#10 + #13#10
                                                + '【합병증/약물부작용및알러지】 '     + #13#10 + #13#10 + mdrecodt.O_sResult35[0] + #13#10 + #13#10
                                                + '【주요투약이력】 ' + #13#10 + #13#10 + mdrecodt.O_sResult36[0] + #13#10 + #13#10
                                                + '【퇴 원 처 방】 '  + #13#10 + #13#10 + mdrecodt.O_sResult37[0] + #13#10 + #13#10
                                                + '【주요검사소견】 ' + #13#10 + #13#10 + mdrecodt.O_sResult38[0] + #13#10 + #13#10
                                                + '【추 후 관 리 계 획】 ' + #13#10 + #13#10
                                                + '    [외래진료계획] ' + sTemp1 + '    [재입원계획] ' + sTemp3 + #13#10 + #13#10
                                                + mdrecodt.O_sResult28[0] + #13#10 + #13#10
                                                + '    [가정간호] ' + sTemp2 + #13#10 + #13#10
                                                + '    [전원] ' + sTemp5 + #13#10 + #13#10
                                                + '    [기관명/진료과/연락된담당자] ' + mdrecodt.O_sResult41[0] + #13#10 + #13#10
                                                + '    [전원사유] ' + mdrecodt.O_sResult42[0] + #13#10 + #13#10
                                                + '    [연속치료] ' + mdrecodt.O_sResult43[0] + #13#10 + #13#10
                                                + '    [전원요구] ' + mdrecodt.O_sResult39[0] + #13#10 + #13#10
                                                + '    [동승자] ' + mdrecodt.O_sResult40[0] + #13#10 + #13#10
                                                + '    [추후관리교육] ' + sTemp4 + #13#10 + #13#10
                                                + mdrecodt.O_sResult32[0] + #13#10 + #13#10
                                                + '【외래에서 확인할사항】 ' + #13#10 + #13#10 + mdrecodt.O_sResult44[0] + #13#10 + #13#10
                                                + '【작성일】 ' + mdrecodt.O_sResult45[0] + #13#10 + #13#10
                                                + '【작성자】 ' + mdrecodt.O_sResult46[0]
                                                ;
                      end
                      else
                      begin
                          qrme_Data.Lines.Text := #13#10 + #13#10
                                                + '【입원사유(주소)】 '    + #13#10 + #13#10 + mdrecodt.O_sResult34[0] + #13#10 + #13#10
                                                + '【합병증/약물부작용및알러지】 '     + #13#10 + #13#10 + mdrecodt.O_sResult35[0] + #13#10 + #13#10
                                                + '【주요투약이력】 ' + #13#10 + #13#10 + mdrecodt.O_sResult36[0] + #13#10 + #13#10
                                                + '【퇴 원 처 방】 '  + #13#10 + #13#10 + mdrecodt.O_sResult37[0] + #13#10 + #13#10
                                                + '【주요검사소견】 ' + #13#10 + #13#10 + mdrecodt.O_sResult38[0] + #13#10 + #13#10
                                                + '【추 후 관 리 계 획】 ' + #13#10 + #13#10
                                                + '    [외래진료계획] ' + sTemp1 + '    [재입원계획] ' + sTemp3 + #13#10 + #13#10
                                                + mdrecodt.O_sResult28[0] + #13#10 + #13#10
                                                + '    [가정간호] ' + sTemp2 + #13#10 + #13#10
                                                + '    [전원] ' + sTemp5 + #13#10 + #13#10
                                                + '    [추후관리교육] '  + sTemp4 + #13#10 + #13#10
                                                + mdrecodt.O_sResult32[0] + #13#10 + #13#10
                                                + '【외래에서 확인할사항】 ' + #13#10 + #13#10 + mdrecodt.O_sResult44[0] + #13#10 + #13#10
                                                + '【작성일】 ' + mdrecodt.O_sResult45[0] + #13#10 + #13#10
                                                + '【작성자】 ' + mdrecodt.O_sResult46[0]
                                                ;
                      end;

                  end;

                // 기록지 스캔시 필수공통정보
                lb_patno.caption := sInPatno;
                lb_meddate.caption := ugd_RecodDt.Cells[1,ugd_RecodDt.Row];
                lb_dschdate.caption := ugd_RecodDt.Cells[2,ugd_RecodDt.Row];
                lb_patgubun.caption := 'I';
                lb_meddept.caption := ugd_RecodDt.Cells[5,ugd_RecodDt.Row];
                lb_chadr.caption := ugd_RecodDt.Cells[4,ugd_RecodDt.Row];
                                  
                  //MDO510F1_P02.PreviewModal;
                  MDO510F1_P02.Print;
                  MDO510F1_P02.Free;
              end;
         end // initial begin 
     else if (g_RecKind='MDPGNOTT') then // 경과기록지(progress note) [4]
        begin
             CurRow := 0 ;
             sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
             sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 입원일자 'YYYYMMDD'

             RowNo := mdrecodt.ListRecordData(g_RecKind,sInPatno,sPk2);

              //오류시 Message처리, Exit
              if (RowNo = -1) then
              begin
                 mdrecodt.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end
              else if (RowNo = 0) then
              begin
                 mdrecodt.Free;
                 ShowMessage('출력할  자료가 없습니다.');
                 Exit;
              end
              else
              begin
                ugd_AllList.RowCount := RowNo + 1 ;
                for i:=0 to RowNo -1 do
                  begin
                     if (CurRow>=0) and (ugd_AllList.Cells[8, CurRow]<>mdrecodt.O_sResult7[i]) then  // compare previous to current date! 
                     begin
                        /// ShowMessage('CurRow : ' + inttostr(Currow) + ugd_AllList.Cells[8, CurRow] + ' / ' + mdrecodt.O_sResult7[i]);
                        ugd_AllList.RowCount := ugd_AllList.RowCount + 1;
                        ugd_AllList.Cells[1, CurRow+1] := ConvertSDate(mdrecodt.O_sResult7[i]);
                        ugd_AllList.Cells[11, CurRow+1] := 'DATE';
                        Inc(CurRow);
                     end;

                     ugd_AllList.Cells[0, CurRow+1] := Copy(ConvertSDate(mdrecodt.O_sResult7[i]),6,5) + ' ' + mdrecodt.O_sResult9[i]; // 기록일자, 시간
                     ugd_AllList.Cells[1, CurRow+1] := Trim(mdrecodt.O_sResult10[i]); // 경과기록
                     ugd_AllList.Cells[2, CurRow+1] := Trim(mdrecodt.O_sResult11[i]);//  기록의
                     ugd_AllList.Cells[3, CurRow+1] := Trim(mdrecodt.O_sResult8[i]); // 기록순번
                     ugd_AllList.Cells[6, CurRow+1] := Trim(mdrecodt.O_sResult10[i]); // 경과기록
                     ugd_AllList.Cells[7, CurRow+1] := Trim(mdrecodt.O_sResult13[i]); // 기록자ID
                     ugd_AllList.Cells[8, CurRow+1] := mdrecodt.O_sResult7[i];   // 기록일자
                     ugd_AllList.Cells[9, CurRow+1] := mdrecodt.O_sResult9[i];   // 기록시간
                     ugd_AllList.Cells[10,CurRow+1] := mdrecodt.O_sResult7[i];   // 기록일자
                     ugd_AllList.Cells[11,CurRow+1] := Trim(mdrecodt.O_sResult12[i]); // 기록자 근무 부서
                     ugd_AllList.Cells[12,CurRow+1] := Trim(mdrecodt.O_sResult11[i]);
                     Inc(CurRow);
                  end;
                        
                if MDP270F1_P01 <> nil then
                   MDP270F1_P01.Close;
                   
                  Application.CreateForm(TMDP270F1_P01, MDP270F1_P01);
                  MDP270F1_P01.strFromForm := 'MDG300F1'; // 경과기록지

                  with MDP270F1_P01 do
                    begin
                       qrlb_PatNo.Caption     := mdrecodt.O_sResult1[0];  // 환자번혼
                       qrlb_SexAge.Caption    := mdrecodt.O_sResult4[0];  // 성별/나이
                       qrlb_PatName.Caption   := mdrecodt.O_sResult2[0];  // 환자명
                       qrlb_ResNo  .Caption   := mdrecodt.O_sResult3[0];  // 주민등록번호
                       qrlb_DeptNm .Caption   := mdrecodt.O_sResult15[0]; // 진료과
                       qrlb_RoomNo .Caption   := mdrecodt.O_sResult6[0]; // 병동/ 병실
                       qrl_chadr.Caption      := mdrecodt.O_sResult5[0]; //주치의
                    end;

              //MDP270F1_P01.qr_Search.Print;

              // 기록지 스캔시 필수공통정보
              lb_patno.caption := sInPatno;
              lb_meddate.caption := ugd_RecodDt.Cells[1,ugd_RecodDt.Row];
              lb_dschdate.caption := mdrecodt.O_sResult17[0];
              lb_patgubun.caption := 'I';
              lb_meddept.caption := mdrecodt.O_sResult15[0];
              lb_chadr.caption := mdrecodt.O_sResult16[0];

              //MDP270F1_P01.qr_Search.Preview;
              MDP270F1_P01.qr_Search.Print;
              MDP270F1_P01.Close;

                // G_USERID, G_USERIP
                UpdateRecord(sInPatno,sPk2,'empty','empty','empty' ,g_RecKind);
                
              end;
        end
     else if (g_RecKind='MDREADMT') then // 재평가(1달) [5]
        begin
             //initialize input parameter
             sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
             sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 입원일자 'YYYYMMDD'
             sPk3     := ugd_RecodDt.Cells[2,ugd_RecodDt.Row]; // 순번

             //create class 
             mdrecodt :=  Hmdrecodt.Create;
             RowNo := mdrecodt.ListRecordData(g_RecKind,sInPatno,sPk2,sPk3);

              //오류시 Message처리, Exit
              if (RowNo = -1) then
              begin
                 mdrecodt.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end
              else if (RowNo = 0) then
              begin
                 mdrecodt.Free;
                 ShowMessage('출력할  자료가 없습니다.');
                 Exit;
              end;

              if MDO540F1_P01 <> nil then MDO540F1_P01.Close;
              MDO540F1_P01 := TMDO540F1_P01.Create(nil);

              with MDO540F1_P01 do
               begin
                  qrlb_Title.Caption    := mdrecodt.O_sResult15[0] + ' 재평가 기록';
                  qrlb_PatNo.Caption    := sInPatno;
                  qrlb_birtdate.Caption := ConvertSDate(pn_birthdate.Caption);
                  qrlb_patname.caption  := pn_PatName.Caption;
                  qrlb_Admdate.caption  := sPk2;
                  qrlb_wardroom.caption := mdrecodt.O_sResult17[0];
                  qrlb_Chadrnm.caption  := mdrecodt.O_sResult16[0];

                  qrme_Data.Lines.Text := #13#10 +
                                          '입원(전과)일시:' + ugd_RecodDt.Cells[5,ugd_RecodDt.Row] + '                    ' +
                                          '작성일시:' + mdrecodt.O_sResult1[0] + #13#10 + #13#10 +
                                          '■주관적 소견(S)】'     + #13#10 + #13#10 + mdrecodt.O_sResult2[0] + #13#10 + #13#10 +
                                          '■객관적 소견(O)】'    + #13#10 + #13#10 + mdrecodt.O_sResult3[0] + #13#10 + #13#10 +
                                          '■계통문진(R.O.S)】'    + #13#10 + #13#10 + mdrecodt.O_sResult4[0] + #13#10 + #13#10 +
                                          '■신체검진(P.Ex)】'    + #13#10 + #13#10 + mdrecodt.O_sResult5[0] + #13#10 + #13#10 +
                                          '■진단명(A)】'    + #13#10 + #13#10 + mdrecodt.O_sResult6[0] + #13#10 + #13#10 +
                                          '■진료계획(P)】'    + #13#10 + #13#10 + mdrecodt.O_sResult7[0] + #13#10 + #13#10 +
                                          '■치료목표】' + #13#10 +
                                          '         (Problem) : ' + mdrecodt.O_sResult8[0] + #13#10 +
                                          '         (CareGoal) : ' + mdrecodt.O_sResult9[0] + #13#10 +
                                          '         (목표일자) : ' + mdrecodt.O_sResult10[0] + #13#10#13#10 +
                                          '■퇴원계획】'    + #13#10 + #13#10 + mdrecodt.O_sResult11[0] + #13#10 + #13#10 +
                                          '■작성의사】'    + mdrecodt.O_sResult12[0]
                                          ;
               end;


              // 기록지 스캔시 필수공통정보
              lb_patno.caption := sInPatno;
              lb_meddate.caption := InvertSDate(sPk2);
              lb_dschdate.caption := mdrecodt.O_sResult18[0];
              lb_patgubun.caption := 'I';
              lb_meddept.caption := mdrecodt.O_sResult15[0];
              lb_chadr.caption := mdrecodt.O_sResult19[0];

                //MDO540F1_P01.QuickRep1.Preview;
                MDO540F1_P01.QuickRep1.Print;                
                MDO540F1_P01.Close;

                // G_USERID, G_USERIP
                UpdateRecord(sInPatno,sPk2,sPk3,'empty','empty' ,g_RecKind);

        end // 새로운 작업 시작
    else if (g_RecKind='MDEMNOTT') then // 응급센터진료기록 [6]
        begin
             //initialize input parameter
             sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
             sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 진료일자 'YYYYMMDD'
             sPk3     := ugd_RecodDt.Cells[2,ugd_RecodDt.Row]; // 진료시간 'YYYYMMDDHH24MISS'
             
             sPk4     := ugd_RecodDt.Cells[3,ugd_RecodDt.Row]; // 진료과
             sPk5     := ugd_RecodDt.Cells[4,ugd_RecodDt.Row]; // 진료의

             //create class 
             mdrecodt :=  Hmdrecodt.Create;
             RowNo := mdrecodt.ListRecordData(g_RecKind,sInPatno,sPk2,sPk3,sPk4,sPk5);

              //오류시 Message처리, Exit
              if (RowNo = -1) then
              begin
                 mdrecodt.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end
              else if (RowNo = 0) then
              begin
                 mdrecodt.Free;
                 ShowMessage('출력할  자료가 없습니다.');
                 Exit;
              end;

              if MDO550F1_P01 <> nil then MDO550F1_P01.Close;
              MDO550F1_P01 := TMDO550F1_P01.Create(nil);

              with MDO550F1_P01 do
               begin
                  qrlb_Title.Caption    := 'EM Note (' + mdrecodt.O_sResult1[0] + ')';
                  qrlb_PatNo.Caption    := mdrecodt.O_sResult2[0];
                  qrlb_patname.Caption  := mdrecodt.O_sResult3[0];
                  qrlb_birtdate.caption := mdrecodt.O_sResult4[0];
                  qrlb_Meddate.caption  := mdrecodt.O_sResult5[0];
                  qrlb_Meddrnm.caption  := mdrecodt.O_sResult6[0];

                  qrme_Data.Lines.Text := #13#10 +
                                          '도착일시:' + mdrecodt.O_sResult7[0] + '                    ' +
                                          '작성일시:' + mdrecodt.O_sResult8[0] + #13#10 + #13#10 +
                                          '■C.C】'     + #13#10 + #13#10 + mdrecodt.O_sResult9[0] + #13#10 + #13#10 +
                                          '■P.Ix】'    + #13#10 + #13#10 + mdrecodt.O_sResult10[0] + #13#10 + #13#10 +
                                          '■P.Hx】'    + #13#10 + #13#10 + mdrecodt.O_sResult11[0] + #13#10 + #13#10 +
                                          '■Family Hx.】'    + #13#10 + #13#10 + mdrecodt.O_sResult12[0] + #13#10 + #13#10 +
                                          '■Social Hx.】'    + #13#10 + #13#10 + mdrecodt.O_sResult13[0] + #13#10 + #13#10 +
                                          '■R.O.S】'    + #13#10 + #13#10 + mdrecodt.O_sResult14[0] + #13#10 + #13#10 +
                                          '■P.Ex】'    + #13#10 + #13#10 + mdrecodt.O_sResult15[0] + #13#10 + #13#10 +
                                          '■Impression】'    + #13#10 + #13#10 + mdrecodt.O_sResult16[0] + #13#10 + #13#10 +
                                          '■Plan】'    + #13#10 + #13#10 + mdrecodt.O_sResult17[0] + #13#10 + #13#10 +
                                          '■통합노트】'    + #13#10 + #13#10 + mdrecodt.O_sResult18[0] + #13#10 + #13#10 +
                                          '■작성의사】'    + mdrecodt.O_sResult19[0]
                                          ;
               end;

              // 기록지 스캔시 필수공통정보
              lb_patno.caption := sInPatno;
              lb_meddate.caption := sPk2;
              lb_dschdate.caption := '';
              lb_patgubun.caption := 'E';
              lb_meddept.caption := sPk4;
              lb_chadr.caption := sPk5;

            MDO550F1_P01.QuickRep1.Print;
            //MDO550F1_P01.QuickRep1.Preview;            
            MDO550F1_P01.Close;

              // G_USERID, G_USERIP
              UpdateRecord(sInPatno,sPk2,sPk3,sPk4,sPk5 ,g_RecKind);
              
        end
    else if (g_RecKind='MDADMNOT') then // 입원기록지 [2]
        begin
             //initialize input parameter
             sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
             sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 진료과
             sPk3     := ugd_RecodDt.Cells[2,ugd_RecodDt.Row]; // 입원일자 YYYYMMDD

             //create class
             mdrecodt :=  Hmdrecodt.Create;
             RowNo := mdrecodt.ListRecordData(g_RecKind,sInPatno,sPk2,sPk3);

              //오류시 Message처리, Exit
              if (RowNo = -1) then
              begin
                 mdrecodt.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end
              else if (RowNo = 0) then
              begin
                 mdrecodt.Free;
                 ShowMessage('출력할  자료가 없습니다.');
                 Exit;
              end;

              if MDO530F1_P01 <> nil then MDO530F1_P01.Close;
              MDO530F1_P01 := TMDO530F1_P01.Create(nil);

              if Trim(mdrecodt.O_sResult23[0]) <> '' then mdrecodt.O_sResult23[0] := '         (Problem1) : ' + mdrecodt.O_sResult23[0] + #13#10;
              if Trim(mdrecodt.O_sResult26[0]) <> '' then mdrecodt.O_sResult26[0] := '         (Problem2) : ' + mdrecodt.O_sResult26[0] + #13#10;
              if Trim(mdrecodt.O_sResult29[0]) <> '' then mdrecodt.O_sResult29[0] := '         (Problem3) : ' + mdrecodt.O_sResult29[0] + #13#10;
              if Trim(mdrecodt.O_sResult32[0]) <> '' then mdrecodt.O_sResult32[0] := '         (Problem4) : ' + mdrecodt.O_sResult32[0] + #13#10;
              if Trim(mdrecodt.O_sResult35[0]) <> '' then mdrecodt.O_sResult35[0] := '         (Problem5) : ' + mdrecodt.O_sResult35[0] + #13#10;

              if Trim(mdrecodt.O_sResult24[0]) <> '' then mdrecodt.O_sResult24[0] := '         (CareGoal1) : ' + mdrecodt.O_sResult24[0] + #13#10;
              if Trim(mdrecodt.O_sResult27[0]) <> '' then mdrecodt.O_sResult27[0] := '         (CareGoal2) : ' + mdrecodt.O_sResult27[0] + #13#10;
              if Trim(mdrecodt.O_sResult30[0]) <> '' then mdrecodt.O_sResult30[0] := '         (CareGoal3) : ' + mdrecodt.O_sResult30[0] + #13#10;
              if Trim(mdrecodt.O_sResult33[0]) <> '' then mdrecodt.O_sResult33[0] := '         (CareGoal4) : ' + mdrecodt.O_sResult33[0] + #13#10;
              if Trim(mdrecodt.O_sResult36[0]) <> '' then mdrecodt.O_sResult36[0] := '         (CareGoal5) : ' + mdrecodt.O_sResult36[0] + #13#10;

              if Trim(mdrecodt.O_sResult25[0]) <> '' then
                  mdrecodt.O_sResult25[0] := '         (목표일자1) : ' + mdrecodt.O_sResult25[0] + #13#10#13#10;
              if Trim(mdrecodt.O_sResult28[0]) <> '' then
                  mdrecodt.O_sResult28[0] := '         (목표일자2) : ' + mdrecodt.O_sResult28[0] + #13#10#13#10;
              if Trim(mdrecodt.O_sResult31[0]) <> '' then
                  mdrecodt.O_sResult31[0] := '         (목표일자3) : ' + mdrecodt.O_sResult31[0] + #13#10#13#10;
              if Trim(mdrecodt.O_sResult34[0]) <> '' then
                  mdrecodt.O_sResult34[0] := '         (목표일자4) : ' + mdrecodt.O_sResult34[0] + #13#10#13#10;
              if Trim(mdrecodt.O_sResult37[0]) <> '' then
                  mdrecodt.O_sResult37[0] := '         (목표일자5) : ' + mdrecodt.O_sResult37[0] + #13#10#13#10;

              with MDO530F1_P01 do
               begin
                  qrlb_Title.Caption    := mdrecodt.O_sResult1[0] + ' Admission Note';
                  qrlb_PatNo.Caption    := mdrecodt.O_sResult2[0];
                  qrlb_patname.Caption  := mdrecodt.O_sResult3[0];
                  qrlb_birtdate.caption := mdrecodt.O_sResult4[0];
                  qrlb_Admdate.caption  := mdrecodt.O_sResult5[0];
                  qrlb_wardroom.Caption := mdrecodt.O_sResult6[0];
                  qrlb_Chadrnm.caption  := mdrecodt.O_sResult7[0];

                  qrme_Data.Lines.Text := #13#10 +
                                          '입원일시:' + mdrecodt.O_sResult8[0] + '                    ' +
                                          '작성일시:' + mdrecodt.O_sResult9[0] + #13#10 + #13#10 +
                                          '■C.C】'     + #13#10 + #13#10 + mdrecodt.O_sResult10[0] + #13#10 + #13#10 +
                                          '■P.Ix】'    + #13#10 + #13#10 + mdrecodt.O_sResult11[0] + #13#10 + #13#10 +
                                          '■P.Hx】'    + #13#10 + #13#10 + mdrecodt.O_sResult12[0] + #13#10 + #13#10 +
                                          '■Family Hx.】'    + #13#10 + #13#10 + mdrecodt.O_sResult13[0] + #13#10 + #13#10 +
                                          '■Social Hx.】'    + #13#10 + #13#10 + mdrecodt.O_sResult14[0] + #13#10 + #13#10 +
                                          '■R.O.S】'    + #13#10 + #13#10 + mdrecodt.O_sResult15[0] + #13#10 + #13#10 +
                                          '■P.Ex】'    + #13#10 + #13#10 + mdrecodt.O_sResult16[0] + #13#10 + #13#10 +
                                          '■Impression】'    + #13#10 + #13#10 + mdrecodt.O_sResult17[0] + #13#10 + #13#10 +
                                          '■Care Plan】'    + #13#10 +
                                          '   【1. 진단 및 병리 검사 계획】'+ #13#10 + mdrecodt.O_sResult18[0] + #13#10 + #13#10 +
                                          '   【2. 영상 검사 계획】'    + #13#10 + #13#10 + mdrecodt.O_sResult19[0] + #13#10 + #13#10 +
                                          '   【3. 투약 및 통증 관리 계획】'    + #13#10 + #13#10 + mdrecodt.O_sResult20[0] + #13#10 + #13#10 +
                                          '   【4. 수술 및 내과적 치료 계획】'    + #13#10 + #13#10 + mdrecodt.O_sResult21[0] + #13#10 + #13#10 +
                                          '   【5. 상처 치료 계획】'    + #13#10 + #13#10 + mdrecodt.O_sResult22[0] + #13#10 + #13#10 +
                                          '■치료목표】' + #13#10 +
                                          mdrecodt.O_sResult23[0] +
                                          mdrecodt.O_sResult24[0] +
                                          mdrecodt.O_sResult25[0] +
                                          mdrecodt.O_sResult26[0] +
                                          mdrecodt.O_sResult27[0] +
                                          mdrecodt.O_sResult28[0] +
                                          mdrecodt.O_sResult29[0] +
                                          mdrecodt.O_sResult30[0] +
                                          mdrecodt.O_sResult31[0] +
                                          mdrecodt.O_sResult32[0] +
                                          mdrecodt.O_sResult33[0] +
                                          mdrecodt.O_sResult34[0] +
                                          mdrecodt.O_sResult35[0] +
                                          mdrecodt.O_sResult36[0] +
                                          mdrecodt.O_sResult37[0] +
                                          '■Discharge Plan】'    + #13#10 +
                                          '   【1. 퇴원 예정일】'    + #13#10 + #13#10 + mdrecodt.O_sResult38[0] + #13#10 + #13#10 +
                                          '   【2. 퇴원 계획】'    + #13#10 + #13#10 +
                                          '         (퇴원후 가는곳) : ' + mdrecodt.O_sResult39[0] + #13#10 +
                                          '         (퇴원 조건) : ' + mdrecodt.O_sResult40[0] + #13#10 +
                                          '         (유지 및 치료계획) : ' + mdrecodt.O_sResult41[0] + #13#10 +
                                          '         (FollowUp 계획) : ' + mdrecodt.O_sResult42[0]  + #13#10 + #13#10 +
                                          '■작성의사】'    + mdrecodt.O_sResult43[0]
                                          ;
               end;

                // 기록지 스캔시 필수공통정보
                lb_patno.caption := sInPatno;
                lb_meddate.caption := sPk3;
                lb_dschdate.caption := mdrecodt.O_sResult45[0];
                lb_patgubun.caption := 'I';
                lb_meddept.caption := sPk2;
                lb_chadr.caption := mdrecodt.O_sResult44[0];

            //MDO530F1_P01.QuickRep1.Print;
            //MDO530F1_P01.QuickRep1.Preview;
            MDO530F1_P01.Close;

             //G_USERID, G_USERIP
             UpdateRecord(sInPatno,sPk2,sPk3,'empty','empty' ,g_RecKind);
        end
    else if (g_RecKind='MDOPRPTT') then // 수술/마취 간호기록지 [11]
        begin
             //initialize input parameter
             sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
             sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 수술일자
             sPk3     := ugd_RecodDt.Cells[2,ugd_RecodDt.Row]; // 수술순번

             //create class 
             mdOprptt := HmdOprptt.Create;
             RowNo := mdOprptt.ListPatOp1('P',sInPatno,sPk2,'EB1',StrToInt(sPk3));

              //오류시 Message처리, Exit
              if (RowNo = -1) then
              begin
                 mdOprptt.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end
              else if (RowNo = 0) then
              begin
                 mdOprptt.Free;
                 ShowMessage('출력할  자료가 없습니다.');
                 Exit;
              end;

              MDS210F2_P01:= TMDS210F2_P01.Create(nil);
              MDS210F2_P01.PrinterSettings.Copies := 1;

              {
              with MDS210F1_P01 do // 수술간호기록지-1
               begin
               end;
              }
              with MDS210F2_P01 do // 수술간호기록지-2
               begin
                qlb_OPDate.Caption := mdOprptt.sOpdate[0];           // 수술일자
                qlb_PatNo.Caption := mdOprptt.sPatno[0];            // 환자번호
                qlb_PatName.Caption := mdOprptt.sPatnm[0];          // 환자명
                qlb_Sex.Caption :=  mdoprptt.sAge[0]; // 성별 / 나이
                qlb_Dept.Caption := mdOprptt.sMedDept[0];             // 진료과/진료부서
                if mdOprptt.sErYn[0] = 'Y' then                    // 응급여부
                   qlb_OPG1.Caption := ''
                else
                   qlb_OPG2.Caption := '';

                qlb_OPRoom.Caption := mdOprptt.sOpRoom[0];           // 수술실

                if mdOprptt.sWardno[0] <> '' then             // 병동번호          */
                   qlb_RoomNo.Caption := mdOprptt.sWardno[0] + '-' + mdOprptt.sRoomno[0]
                else
                   qlb_RoomNo.Caption := '';

                qlb_DiagBef.Caption := mdOprptt.sPreicdnm[0];          // 수술전 진단명
                qlb_DiagAft1.Caption := mdOprptt.sPsticdnm[0];         // 수술후 진단명
                qlb_OPBef.Caption := mdOprptt.sPreopnm[0];           // 예정수술명
                qlb_OPAft1.Caption := mdOprptt.sOpname[0];          // 수술명

                qlb_OPDr.Caption := mdOprptt.sOpdrnm[0];            // 집도의name
                
                if mdOprptt.sOpdrnm1[0] <> '' then             // 집도의1name
                   qlb_OPDr.Caption := qlb_OPDr.Caption + ',' + mdOprptt.sOpdrnm1[0];                
                if mdOprptt.sOpdrnm2[0] <> '' then             // 수석의1name
                   qlb_OPDr.Caption := qlb_OPDr.Caption + ',' + mdOprptt.sOpdrnm2[0];
                if mdOprptt.sOpdrnm3[0] <> '' then             // 수석의2name
                   qlb_OPDr.Caption := qlb_OPDr.Caption + ',' + mdOprptt.sOpdrnm3[0];

                qlb_SterNur.Caption := mdOprptt.sSternur1[0];         // 소독간호사1
                if trim(mdOprptt.sSternur2[0]) <> '' then             // 소독간호사2
                   qlb_SterNur.Caption := qlb_SterNur.Caption + ',' + mdOprptt.sSternur2[0];
                if trim(mdOprptt.sSternur3[0]) <> '' then             // 소독간호사3
                   qlb_SterNur.Caption := qlb_SterNur.Caption + ',' + mdOprptt.sSternur3[0];
                if trim(mdOprptt.sSternur4[0]) <> '' then             // 소독간호사4
                   qlb_SterNur.Caption := qlb_SterNur.Caption + ',' + mdOprptt.sSternur4[0];
                if trim(mdOprptt.sSternur5[0]) <> '' then             // 소독간호사5
                   qlb_SterNur.Caption := qlb_SterNur.Caption + ',' + mdOprptt.sSternur5[0];

                qlb_RoundNur.Caption := mdOprptt.sRoudnur1[0];        // 순회간호사1
                if trim(mdOprptt.sRoudnur2[0]) <> '' then             // 순회간호사2
                   qlb_RoundNur.Caption := qlb_RoundNur.Caption + ',' + mdOprptt.sRoudnur2[0];
                if trim(mdOprptt.sRoudnur3[0]) <> '' then             // 순회간호사3
                   qlb_RoundNur.Caption := qlb_RoundNur.Caption + ',' + mdOprptt.sRoudnur3[0];
                if trim(mdOprptt.sRoudnur4[0]) <> '' then             // 순회간호사4
                   qlb_RoundNur.Caption := qlb_RoundNur.Caption + ',' + mdOprptt.sRoudnur4[0];
                if trim(mdOprptt.sRoudnur5[0]) <> '' then             // 순회간호사5
                   qlb_RoundNur.Caption := qlb_RoundNur.Caption + ',' + mdOprptt.sRoudnur5[0];

                qlb_AnethDr.Caption := mdOprptt.sAnedrnm1[0];         // 마취의사name
                if trim(mdOprptt.sAnedrnm2[0]) <> '' then             // 마취의사2name
                   qlb_AnethDr.Caption := qlb_AnethDr.Caption + ',' + mdOprptt.sAnedrnm2[0];
                if trim(mdOprptt.sAnedrnm3[0]) <> '' then             // 마취의사3name
                   qlb_AnethDr.Caption := qlb_AnethDr.Caption + ',' + mdOprptt.sAnedrnm3[0];

                qlb_AnethNur.Caption := mdOprptt.sAnethnr1[0];        // 마취간호사1
                if trim(mdOprptt.sAnethnr2[0]) <> '' then             // 마취간호사2
                   qlb_AnethNur.Caption := qlb_AnethNur.Caption + ',' + mdOprptt.sAnethnr2[0];
                if trim(mdOprptt.sAnethnr3[0]) <> '' then             // 마취간호사3
                   qlb_AnethNur.Caption := qlb_AnethNur.Caption + ',' + mdOprptt.sAnethnr3[0];
                if trim(mdOprptt.sAnethnr4[0]) <> '' then             // 마취간호사4
                   qlb_AnethNur.Caption := qlb_AnethNur.Caption + ',' + mdOprptt.sAnethnr4[0];
                if trim(mdOprptt.sAnethnr5[0]) <> '' then             // 마취간호사5
                   qlb_AnethNur.Caption := qlb_AnethNur.Caption + ',' + mdOprptt.sAnethnr5[0];

                qlb_OPSTArv.Caption := mdOprptt.sOparvtm[0];         // 수술방도착시간
                qlb_OPArv.Caption := mdOprptt.sAnthstm[0];           // 마취시작시간
                qlb_OPStr.Caption := mdOprptt.sOpstm[0];           // 수술시작시간
                qlb_OPEnd.Caption := mdOprptt.sOpetm[0];           // 수술종료시간

                if mdOprptt.sOpphys1[0] <> 'Y' then                  // 수술체위1
                   qlb_OPPos1.Caption := '';
                if mdOprptt.sOpphys2[0] <> 'Y' then                  // 수술체위2
                   qlb_OPPos2.Caption := '';
                if mdOprptt.sOpphys3[0] <> 'Y' then                  // 수술체위3
                   qlb_OPPos3.Caption := '';
                if mdOprptt.sOpphys4[0] <> 'Y' then                  // 수술체위4
                   qlb_OPPos4.Caption := '';
                if mdOprptt.sOpphys5[0] <> 'Y' then                  // 수술체위5
                   qlb_OPPos5.Caption := '';
                if mdOprptt.sOpphys6[0] <> 'Y' then                  // 수술체위6
                   qlb_OPPos6.Caption := '';
                if mdOprptt.sOpphys7[0] <> 'Y' then                  // 수술체위7
                   qlb_OPPosEtc.Caption := '';
                if trim(mdOprptt.sOpphysnm[0]) = '' then              // 기타 수술체위명
                   qlb_OPPosNm.Caption := ''
                else
                   qlb_OPPosNm.Caption := '(' + trim(mdOprptt.sOpphysnm[0]) + ')';
                   
                if mdOprptt.sSkinpre1[0] <> 'Y' then                  // 피부소독1
                   qlb_OPSkin1.Caption := '';
                if mdOprptt.sSkinpre2[0] <> 'Y' then                  // 피부소독2
                   qlb_OPSkin2.Caption := '';
                if mdOprptt.sSkinpre3[0] <> 'Y' then                  // 피부소독3
                   qlb_OPSkin3.Caption := '';
                if mdOprptt.sSkinpre4[0] <> 'Y' then                  // 피부소독4
                   qlb_OPSkinEtc.Caption := '';
                if trim(mdOprptt.sSkinprem[0]) = '' then              // 기타 피부소독명
                   qlb_OPSkinNm.Caption := ''
                else
                   qlb_OPSkinNm.Caption := '(' + trim(mdOprptt.sSkinprem[0]) + ')';

                if mdOprptt.sSkinpre5[0] <> 'Y' then
                   qrl_OpSkin4.Caption := '';
                if mdOprptt.sSkinpre6[0] <> 'Y' then
                   qrl_OpSkin5.Caption := '';

                if mdOprptt.sPad[0] = '1' then
                begin
                   qrl_Pad2.Caption := '';
                   qrl_Pad3.Caption := '';
                end
                else if mdOprptt.sPad[0] = '2' then
                begin
                   qrl_Pad1.Caption := '';
                   qrl_Pad3.Caption := '';
                end
                else if mdOprptt.sPad[0] = '3' then
                begin
                   qrl_Pad1.Caption := '';
                   qrl_Pad2.Caption := '';
                end
                else
                begin
                   qrl_Pad1.Caption := '';
                   qrl_Pad2.Caption := '';
                   qrl_Pad3.Caption := '';           //jyleeweb 체크를 모두 없애주기 홍영란 선생님 요청
                end;

                qlb_AnethCd1.Caption := '';
                qlb_AnethCd2.Caption := '';
                qlb_AnethCd3.Caption := '';
                qlb_AnethCd4.Caption := '';
                qlb_AnethCd5.Caption := '';
                qlb_AnethCd6.Caption := '';
                
                case  StrToInt_nvl(mdOprptt.sAnethcd1[0]) of              // 주마취종류1
                  1: qlb_AnethCd1.Caption := '√';
                  2: qlb_AnethCd2.Caption := '√';
                  3: qlb_AnethCd3.Caption := '√';
                  4: qlb_AnethCd4.Caption := '√';
                  5: qlb_AnethCd5.Caption := '√';
                  6: qlb_AnethCd6.Caption := '√';
                end;
                qlb_Local1.Caption := '';
                qlb_Local2.Caption := '';
                qlb_LocalEtc.Caption := '';

                case  StrToInt_nvl(mdOprptt.sLocaldrg[0]) of              // 국소마취제
                  1: qlb_Local1.Caption := '√';
                  2: qlb_Local2.Caption := '√';
                  3: qlb_LocalEtc.Caption := '√';
                end;

                if trim(mdOprptt.sLocdrgnm[0]) = '' then              // 기타 국소마취제명
                   qlb_LocalNm.Caption := ''
                else
                   qlb_LocalNm.Caption := '(' + trim(mdOprptt.sLocdrgnm[0]) + ')';
                   
                if mdOprptt.sCntyn[0] = 'Y' then                   // 계수확인
                   qrl_CountN.Caption := ''
                else
                   qlb_CountYN.Caption  := '';

                qlb_Xray1Nur1.Caption := mdOprptt.sXraygz11[0];       // 1차확인자1
                qlb_Xray1Nur2.Caption := mdOprptt.sXraygz12[0];       // 1차확인자2
                qlb_Xray2Nur1.Caption := mdOprptt.sXraygz21[0];       // 2차확인자1
                qlb_Xray2Nur2.Caption := mdOprptt.sXraygz22[0];       // 2차확인자2
                qlb_Xray3Nur1.Caption := mdOprptt.sXraygz31[0];       // 3차확인자1
                qlb_Xray3Nur2.Caption := mdOprptt.sXraygz32[0];       // 3차확인자2
                qlb_Xray1Cnt.Caption  := mdOprptt.sXrgzqty1[0];       // XRAY거즈수량1
                qlb_Xray2Cnt.Caption  := mdOprptt.sXrgzqty2[0];       // XRAY거즈수량2
                qlb_Xray3Cnt.Caption  := mdOprptt.sXrgzqty3[0];       // XRAY거즈수량3
                if mdOprptt.sXraygzyn[0] <> 'Y' then                  // XRAY해당사항
                   qlb_Xray3Yn.Caption := '';

                qlb_Ring1Nur1.Caption := mdOprptt.sRinggz11[0];       // 1차확인자1
                qlb_Ring1Nur2.Caption := mdOprptt.sRinggz12[0];       // 1차확인자2
                qlb_Ring2Nur1.Caption := mdOprptt.sRinggz21[0];       // 2차확인자1
                qlb_Ring2Nur2.Caption := mdOprptt.sRinggz22[0];       // 2차확인자2
                qlb_Ring3Nur1.Caption := mdOprptt.sRinggz31[0];       // 3차확인자1
                qlb_Ring3Nur2.Caption := mdOprptt.sRinggz32[0];       // 3차확인자2
                qlb_Ring1Cnt.Caption  := mdOprptt.sRigzqty1[0];       // RING거즈수량1
                qlb_Ring2Cnt.Caption  := mdOprptt.sRigzqty2[0];       // RING거즈수량2
                qlb_Ring3Cnt.Caption  := mdOprptt.sRigzqty3[0];       // RING거즈수량3
                if mdOprptt.sRinggzyn[0] <> 'Y' then                  // RING해당사항
                   qlb_Ring3Yn.Caption := '';

                if mdOprptt.sNedlcon1[0] <> 'Y' then                  // 봉합침 1차확인
                   qlb_Pin1Yn.Caption := '';
                if mdOprptt.sNedlcon2[0] <> 'Y' then                  // 봉합침 2차확인
                   qlb_Pin2Yn.Caption := '';
                if mdOprptt.sNedlcon3[0] <> 'Y' then                  // 봉합침 3차확인
                   qlb_Pin3Yn.Caption := '';

                if mdOprptt.sInstcon1[0] <> 'Y' then                  // 기구 1차확인
                   qlb_Inst1Yn.Caption := '';
                if mdOprptt.sInstcon2[0] <> 'Y' then                  // 기구 2차확인
                   qlb_Inst2Yn.Caption := '';
                if mdOprptt.sInstcon3[0] <> 'Y' then                  // 기구 3차확인
                   qlb_Inst3Yn.Caption := '';

                qlb_Etc1Nm.Caption :=  mdOprptt.sEtcconnm[0];         // 기타확인항목
                if mdOprptt.sEtccon1[0] <> 'Y' then                  // 기타 1차확인
                   qlb_Etc1Yn.Caption := '';
                if mdOprptt.sEtccon2[0] <> 'Y' then                  // 기타 2차확인
                   qlb_Etc2Yn.Caption := '';
                if mdOprptt.sEtccon3[0] <> 'Y' then                  // 기타 3차확인
                   qlb_Etc3Yn.Caption := '';

                if mdOprptt.sSpcyn[0] = 'Y' then                   // 검체 확인
                   qrl_SpcN.Caption := ''
                else
                   qlb_SpcYN.Caption  := '';
                   
                qlb_SpcPart1.Caption := mdOprptt.sSpcpart1[0];       // 동결 부위
                qlb_SpcPart2.Caption := mdOprptt.sSpcpart2[0];       // 생검 부위
                qlb_SpcPart3.Caption := mdOprptt.sSpcpart3[0];       // 배양 부위
                qlb_SpcPart4.Caption := mdOprptt.sSpcpart4[0];       // 세포병리 부위
                qlb_SpcPart5.Caption := mdOprptt.sSpcpart5[0];       // 기타 부위
                
                qlb_SpcCnt1.Caption := mdOprptt.sSpcqty1[0];        // 동결 수량
                qlb_SpcCnt2.Caption := mdOprptt.sSpcqty2[0];        // 생검 수량
                qlb_SpcCnt3.Caption := mdOprptt.sSpcqty3[0];        // 배양 수량
                qlb_SpcCnt4.Caption := mdOprptt.sSpcqty4[0];        // 세포병리 수량
                qlb_SpcCnt5.Caption := mdOprptt.sSpcqty5[0];        // 기타 수량
                
                qlb_SpcUser1.Caption := mdOprptt.sSpcuser1[0];       // 동결 취급자
                qlb_SpcUser2.Caption := mdOprptt.sSpcuser2[0];       // 생검 취급자
                qlb_SpcUser3.Caption := mdOprptt.sSpcuser3[0];       // 배양 취급자
                qlb_SpcUser4.Caption := mdOprptt.sSpcuser4[0];       // 세포병리 취급자
                qlb_SpcUser5.Caption := mdOprptt.sSpcuser5[0];       // 기타 취급자

                if mdOprptt.sCautinf1[0] <> 'Y' then                 // Caution정보1
                   qlb_Cau1.Caption := '';
                if mdOprptt.sCautinf2[0] <> 'Y' then                 // Caution정보2
                   qlb_Cau2.Caption := '';
                if mdOprptt.sCautinf3[0] <> 'Y' then                 // Caution정보3
                   qlb_Cau3.Caption := '';
                if mdOprptt.sCautinf4[0] <> 'Y' then                 // Caution정보4
                   qlb_Cau4.Caption := '';
                if mdOprptt.sCautinf5[0] <> 'Y' then                 // Caution정보5
                   qlb_Cau5.Caption := '';
                if mdOprptt.sCautinf6[0] <> 'Y' then                 // Caution정보6
                   qlb_Cau6.Caption := '';
                if mdOprptt.sCautinf7[0] <> 'Y' then                 // Caution정보7
                   qlb_Cau7.Caption := '';
                if mdOprptt.sCautinf8[0] <> 'Y' then                 // Caution정보8
                   qlb_Cau8.Caption := '';
                if mdOprptt.sCautinf9[0] <> 'Y' then                 // Caution정보9
                   qlb_CauEtc.Caption := '';
                qrm_CauNm.Lines.Text := mdOprptt.sCautetc[0];       // 기타 Caution정보

                qlb_ComDept1.Caption := mdOprptt.sCombmed1[0];       // Combine 진료과1
                qlb_ComDept2.Caption := mdOprptt.sCombmed2[0];       // Combine 진료과2
                qlb_ComDr1.Caption := mdOprptt.sCombdr1[0];         // Combine 집도의1
                qlb_ComDr2.Caption := mdOprptt.sCombdr2[0];         // Combine 집도의2
                qlb_ComOp1.Caption := mdOprptt.sComopnm1[0];         // Combine 수술명1
                qlb_ComOp2.Caption := mdOprptt.sComopnm2[0];         // Combine 수술명2
                qrm_Remark1.Lines.Text := mdOprptt.sRemark1[0];     // 비고사항

                if mdOprptt.sImplantYn[0] = 'Y' then
                   qrlb_ImpN.Caption := ''
                else
                   qrlb_ImpY.Caption := '';

                qrlb_ImpKind1.Caption := mdOprptt.sImplantKind1[0];
                qrlb_ImpKind2.Caption := mdOprptt.sImplantKind2[0];
                qrlb_ImpKind3.Caption := mdOprptt.sImplantKind3[0];
                
                qrlb_Impmanu1.Caption := mdOprptt.sImplantManu1[0];
                qrlb_Impmanu2.Caption := mdOprptt.sImplantManu2[0];
                qrlb_Impmanu3.Caption := mdOprptt.sImplantManu3[0];

                qrlb_ImpEtc1.Caption  := mdOprptt.sImplantetc1[0];
                qrlb_ImpEtc2.Caption  := mdOprptt.sImplantetc2[0];
                qrlb_ImpEtc3.Caption  := mdOprptt.sImplantetc3[0];

                if mdOprptt.sDrainYn[0] = 'Y' then
                   qrlb_DrainN.Caption := ''
                else
                   qrlb_DrainY.Caption := '';

                qrlb_DrainKind1.Caption := mdOprptt.sdrainKind1[0];
                qrlb_DrainKind2.Caption := mdOprptt.sdrainKind2[0];
                qrlb_DrainKind3.Caption := mdOprptt.sdrainKind3[0];

                qrlb_Drainsize1.Caption := mdOprptt.sdrainsize1[0];
                qrlb_Drainsize2.Caption := mdOprptt.sdrainsize2[0];
                qrlb_Drainsize3.Caption := mdOprptt.sdrainsize3[0];

                qrlb_DrainCnt1.Caption  := mdOprptt.sdraincnt1[0];
                qrlb_DrainCnt2.Caption  := mdOprptt.sdraincnt2[0];
                qrlb_DrainCnt3.Caption  := mdOprptt.sdraincnt3[0];
                
                qrlb_DrainSite1.Caption := mdOprptt.sdrainsite1[0];
                qrlb_DrainSite2.Caption := mdOprptt.sdrainsite2[0];
                qrlb_DrainSite3.Caption := mdOprptt.sdrainsite3[0];

                if mdOprptt.sTournYn[0] = 'Y' then
                   qrlb_TournN.Caption  := ''
                else
                   qrlb_TournY.Caption  := '';

                qrlb_Armon1.Caption    := mdOprptt.sArmon1[0];
                qrlb_Armon2.Caption    := mdOprptt.sArmon2[0];
                qrlb_Armon3.Caption    := mdOprptt.sArmon3[0];
                
                qrlb_Armoff1.Caption   := mdOprptt.sArmoff1[0];
                qrlb_Armoff2.Caption   := mdOprptt.sArmoff2[0];
                qrlb_Armoff3.Caption   := mdOprptt.sArmoff3[0];

                qrlb_Armpressure1.Caption := mdOprptt.sArmpressure1[0];
                qrlb_Armpressure2.Caption := mdOprptt.sArmpressure2[0];
                qrlb_Armpressure3.Caption := mdOprptt.sArmpressure3[0];

                qrlb_Legon1.Caption    := mdOprptt.sLegon1[0];
                qrlb_Legon2.Caption    := mdOprptt.sLegon2[0];
                qrlb_Legon3.Caption    := mdOprptt.sLegon3[0];
                
                qrlb_Legoff1.Caption   := mdOprptt.sLegoff1[0];
                qrlb_Legoff2.Caption   := mdOprptt.sLegoff2[0];
                qrlb_Legoff3.Caption   := mdOprptt.sLegoff3[0];

                qrlb_Legpressure1.Caption := mdOprptt.sLegpressure1[0];
                qrlb_Legpressure2.Caption := mdOprptt.sLegpressure2[0];
                qrlb_Legpressure3.Caption := mdOprptt.sLegpressure3[0];

                if mdOprptt.sAddyn[0] = 'Y' then
                   qrlb_AddN.Caption := ''
                else
                   qrlb_AddY.Caption := '';

                qrlb_Add1.Caption  := mdOprptt.sAdd1[0];
                qrlb_Add2.Caption  := mdOprptt.sAdd2[0];
                qrlb_Add3.Caption  := mdOprptt.sAdd3[0];

                qrlb_AddContent1.Caption := mdOprptt.sAddContent1[0];
                qrlb_AddContent2.Caption := mdOprptt.sAddContent2[0];
                qrlb_AddContent3.Caption := mdOprptt.sAddContent3[0];

                qrlb_AddCnt1.Caption := mdOprptt.sAddCnt1[0];
                qrlb_AddCnt2.Caption := mdOprptt.sAddCnt2[0];
                qrlb_AddCnt3.Caption := mdOprptt.sAddCnt3[0];

                qrlb_AddSite1.Caption:= mdOprptt.sAddSite1[0];
                qrlb_AddSite2.Caption:= mdOprptt.sAddSite2[0];
                qrlb_AddSite3.Caption:= mdOprptt.sAddSite3[0];

                if mdOprptt.sConfyn[0] = 'Y' then
                   qlb_ConfN.Caption := ''
                else
                   qlb_ConfY.Caption := '';

                if mdOprptt.sDropyn[0] = 'Y' then
                   qlb_DropN.Caption := ''
                else
                   qlb_DropY.Caption := '';

                if mdOprptt.sReopyn[0] = 'Y' then
                   qlb_Reopyn.Caption := '√'
                else
                   qlb_Reopyn.Caption := '';

                // 2007.11.22 김송주 추가 봉합침, 기구
                qlb_Bong1Nur1.Caption := mdOprptt.sBong11[0];       // 1차확인자1
                qlb_Bong1Nur2.Caption := mdOprptt.sBong12[0];       // 1차확인자2
                qlb_Bong2Nur1.Caption := mdOprptt.sBong21[0];       // 2차확인자1
                qlb_Bong2Nur2.Caption := mdOprptt.sBong22[0];       // 2차확인자2
                qlb_Bong3Nur1.Caption := mdOprptt.sBong31[0];       // 3차확인자1
                qlb_Bong3Nur2.Caption := mdOprptt.sBong32[0];       // 3차확인자2

                qlb_Bong1Cnt.Caption  := mdOprptt.sBongqty1[0];       // 봉합침수량1
                qlb_Bong2Cnt.Caption  := mdOprptt.sBongqty2[0];       // 봉합침수량2
                qlb_Bong3Cnt.Caption  := mdOprptt.sBongqty3[0];       // 봉합침수량3
                if mdOprptt.sBongyn[0] <> 'Y' then                  // 봉합침해당사항
                   qlb_Bong3Yn.Caption := '';

                qlb_Tool1Nur1.Caption := mdOprptt.sTool11[0];       // 1차확인자1
                qlb_Tool1Nur2.Caption := mdOprptt.sTool12[0];       // 1차확인자2
                qlb_Tool2Nur1.Caption := mdOprptt.sTool21[0];       // 2차확인자1
                qlb_Tool2Nur2.Caption := mdOprptt.sTool22[0];       // 2차확인자2
                qlb_Tool3Nur1.Caption := mdOprptt.sTool31[0];       // 3차확인자1
                qlb_Tool3Nur2.Caption := mdOprptt.sTool32[0];       // 3차확인자2

                qlb_Tool1Cnt.Caption  := mdOprptt.sToolqty1[0];       // 도구수량1
                qlb_Tool2Cnt.Caption  := mdOprptt.sToolqty2[0];       // 도구수량2
                qlb_Tool3Cnt.Caption  := mdOprptt.sToolqty3[0];       // 도구수량3
                if mdOprptt.sToolyn[0] <> 'Y' then                  // 도구해당사항
                   qlb_Tool3Yn.Caption := '';

                if mdOprptt.sOpPreyn[0] = 'Y' then
                   qlb_OpPreN.Caption := ''
                else
                   qlb_OpPreY.Caption := '';

                if mdOprptt.sOpPostyn[0] = 'Y' then
                   qlb_OpPostN.Caption := ''
                else
                   qlb_OpPostY.Caption := '';

                qlb_preoptxt.Caption := mdOprptt.sOpPreTxt[0];
                qlb_postoptxt.Caption := mdOprptt.sOpPostTxt[0];

                qlb_opOut.Caption := mdOprptt.sAnthEtm[0];  // 마취종료(퇴실시각) 2013.06.04
                
                if mdOprptt.sOutArea[0] = '1' then          // 수술직후 퇴실장소
                   qrlb_outArea.Caption := '회복실'
                else if mdOprptt.sOutArea[0] = '2' then
                   qrlb_outArea.Caption := '병실'
                else if mdOprptt.sOutArea[0] = '3' then
                   qrlb_outArea.Caption := '중환자실'
                else if mdOprptt.sOutArea[0] = '4' then
                   qrlb_outArea.Caption := '검사실'
                else if mdOprptt.sOutArea[0] = '5' then
                   qrlb_outArea.Caption := '영안실'
                else if mdOprptt.sOutArea[0] = '9' then
                   qrlb_outArea.Caption := '기타'
                else
                   qrlb_outArea.Caption := '';

                //작성일시, 작성자 추가. kya. 20150805.
                qlb_edtdate.Caption := mdOprptt.sEdtdate[0];
                qlb_edtnurnm.Caption := mdOprptt.sEdtnurnm[0];

                //계수확인 4차추가.kya.20180515.
                qlb_Xray4Nur1.Caption := mdOprptt.sXraygz41[0];       // 4차확인자1
                qlb_Xray4Nur2.Caption := mdOprptt.sXraygz42[0];       // 4차확인자2
                qlb_Xray4Cnt.Caption  := mdOprptt.sXrgzqty4[0];       // XRAY거즈수량4

                qlb_Ring4Nur1.Caption := mdOprptt.sRinggz41[0];       // 4차확인자1
                qlb_Ring4Nur2.Caption := mdOprptt.sRinggz42[0];       // 4차확인자2
                qlb_Ring4Cnt.Caption  := mdOprptt.sRigzqty4[0];       // RING거즈수량4
                
                qlb_Bong4Nur1.Caption := mdOprptt.sBong41[0];       // 4차확인자1
                qlb_Bong4Nur2.Caption := mdOprptt.sBong42[0];       // 4차확인자2
                qlb_Bong4Cnt.Caption  := mdOprptt.sBongqty4[0];       // 봉합침수량4

                qlb_Tool4Nur1.Caption := mdOprptt.sTool41[0];       // 4차확인자1
                qlb_Tool4Nur2.Caption := mdOprptt.sTool42[0];       // 4차확인자2
                qlb_Tool4Cnt.Caption  := mdOprptt.sToolqty4[0];       // 도구수량4
               end;

              // 기록지 스캔시 필수공통정보            
              lb_patno.caption := sInPatno;
              lb_meddate.caption := ugd_RecodDt.Cells[4,ugd_RecodDt.Row];
              lb_dschdate.caption := ugd_RecodDt.Cells[5,ugd_RecodDt.Row];
              lb_patgubun.caption := ugd_RecodDt.Cells[6,ugd_RecodDt.Row];
              lb_meddept.caption := ugd_RecodDt.Cells[3,ugd_RecodDt.Row];
              lb_chadr.caption := ugd_RecodDt.Cells[7,ugd_RecodDt.Row];


            MDS210F2_P01.Print;
            //MDS210F2_P01.Preview;            
            MDS210F2_P01.Free;


            // G_USERID, G_USERIP
            UpdateRecord(sInPatno,sPk2,sPk3,'empty','empty' ,g_RecKind);
             
            mdOprptt.free;
        end
    else if (g_RecKind='MDNRRECT') then // 간호기록지 [12]
        begin
             CurRow := 0 ;
             
             sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
             sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 입원일자 'YYYYMMDD'
             sPk3     := ugd_RecodDt.Cells[2,ugd_RecodDt.Row]; // 퇴원일자 'YYYYMMDD'


             RowNo := mdrecodt.ListRecordData(g_RecKind,sInPatno,sPk2,sPk3);

              //오류시 Message처리, Exit
              if (RowNo = -1) then
              begin
                 mdrecodt.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end
              else if (RowNo = 0) then
              begin
                 mdrecodt.Free;
                 ShowMessage('출력할  자료가 없습니다.');
                 Exit;
              end
              else
              begin
                ugd_AllList.RowCount := RowNo + 1 ;
                for i:=0 to RowNo -1 do
                  begin
                     if (CurRow>=0) and (ugd_AllList.Cells[8, CurRow]<> mdrecodt.O_sResult8[i]) then  // compare previous actdate to current date! 
                     begin
                        //ShowMessage('CurRow : ' + inttostr(Currow) + ugd_AllList.Cells[8, CurRow] + ' / ' + mdrecodt.O_sResult7[i]);
                        ugd_AllList.RowCount := ugd_AllList.RowCount + 1;
                        ugd_AllList.Cells[1, CurRow+1] := ConvertSDate(mdrecodt.O_sResult8[i]);
                        ugd_AllList.Cells[11, CurRow+1] := 'DATE';
                        Inc(CurRow);
                     end;

                     ugd_AllList.Cells[0, CurRow+1] := Copy(ConvertSDate(mdrecodt.O_sResult8[i]),6,5) + ' ' + mdrecodt.O_sResult11[i];
                     ugd_AllList.Cells[1, CurRow+1] := (Trim(mdrecodt.O_sResult12[i]));
                     ugd_AllList.Cells[2, CurRow+1] := Trim(mdrecodt.O_sResult13[i]);// + '(' + Trim(mdNrrect.sDeptcd[i]) + ')';
                     ugd_AllList.Cells[3, CurRow+1] := Trim(mdrecodt.O_sResult10[i]);
                     ugd_AllList.Cells[6, CurRow+1] := Trim(mdrecodt.O_sResult12[i]);
                     ugd_AllList.Cells[7, CurRow+1] := Trim(mdrecodt.O_sResult15[i]);
                     ugd_AllList.Cells[8, CurRow+1] := mdrecodt.O_sResult8[i];
                     ugd_AllList.Cells[9, CurRow+1] := mdrecodt.O_sResult11[i];   // 시간
                     ugd_AllList.Cells[10,CurRow+1] := mdrecodt.O_sResult8[i];
                     ugd_AllList.Cells[11,CurRow+1] := Trim(mdrecodt.O_sResult14[i]);
                     ugd_AllList.Cells[12,CurRow+1] := Trim(mdrecodt.O_sResult13[i]);
                     Inc(CurRow);
                  end;
                        
                if MDN420F1_P01 <> nil then
                   MDN420F1_P01.Close;
                   
                  Application.CreateForm(TMDN420F1_P01, MDN420F1_P01);
                  MDN420F1_P01.strFromForm := 'MDF420F1';

                  with MDN420F1_P01 do
                    begin
                       qrlb_PatNo.Caption     := mdrecodt.O_sResult1[0];  // 환자번혼
                       qrlb_SexAge.Caption    := mdrecodt.O_sResult2[0];  // 성별/나이
                       qrlb_PatName.Caption   := mdrecodt.O_sResult3[0];  // 환자명
                       qrlb_ResNo  .Caption   := mdrecodt.O_sResult4[0];  // 주민등록번호
                       qrlb_DeptNm .Caption   := mdrecodt.O_sResult5[0]; // 진료과
                       qrlb_RoomNo .Caption   := mdrecodt.O_sResult7[0]; // 병동/ 병실
                       qrl_chadr.Caption      := mdrecodt.O_sResult6[0]; //주치의
                       QRLabel190.Caption     := 'PMC 82-N-5-28';
                    end;

              // 기록지 스캔시 필수공통정보
              lb_patno.caption := sInPatno;
              lb_meddate.caption := ugd_RecodDt.Cells[1,ugd_RecodDt.Row];
              lb_dschdate.caption := ugd_RecodDt.Cells[2,ugd_RecodDt.Row];
              lb_patgubun.caption := ugd_RecodDt.Cells[6,ugd_RecodDt.Row];
              lb_meddept.caption := ugd_RecodDt.Cells[5,ugd_RecodDt.Row];
              lb_chadr.caption := ugd_RecodDt.Cells[4,ugd_RecodDt.Row];
              
              MDN420F1_P01.qr_Search.Print;
              //MDN420F1_P01.qr_Search.Preview;
              MDN420F1_P01.Close;
              
                // G_USERID, G_USERIP
                UpdateRecord(sInPatno,sPk2,sPk3,'empty','empty' ,g_RecKind);
              end;
        end
    else if (g_RecKind='MDNERECT') then // 응급 간호기록지 [13]
        begin
             CurRow := 0 ;
             
             sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
             sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 입원일자 'YYYYMMDD'
             sPk3     := ugd_RecodDt.Cells[2,ugd_RecodDt.Row]; // 퇴원일자 'YYYYMMDD'

             //Create Class
             mdPatinf := HmdPatinf.Create;
             RowNo2 := mdPatInf.IPDLS_E1('1',sInPatno,'','EB1',''); // // md_ipdls_e1
             
             //오류시 Message처리, Exit
             if (RowNo2 = -1) then
             begin
                mdPatinf.Free;
                ShowErrMsg(stb_Message);
                Exit;
             end;
             //자료건수=0인경우, Exit
             if (RowNo2 = 0) then
              begin
                mdPatinf.Free;
                ShowMessage('조회된 자료가 없습니다!');
                exit;
              end;
                  
             RowNo := mdrecodt.ListRecordData(g_RecKind,sInPatno,sPk2,sPk3);

              //오류시 Message처리, Exit
              if (RowNo = -1) then
              begin
                 mdrecodt.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end
              else if (RowNo = 0) then
              begin
                 mdrecodt.Free;
                 ShowMessage('출력할  자료가 없습니다.');
                 Exit;
              end
              else
              begin
                ugd_AllList.RowCount := RowNo + 1 ;
                for i:=0 to RowNo -1 do
                  begin
                     if (CurRow>=0) and (ugd_AllList.Cells[8, CurRow]<> mdrecodt.O_sResult5[i]) then  // compare previous actdate to current date!
                     begin
                        //ShowMessage('CurRow : ' + inttostr(Currow) + ugd_AllList.Cells[5, CurRow] + ' / ' + mdrecodt.O_sResult7[i]);
                        ugd_AllList.RowCount := ugd_AllList.RowCount + 1;

                        ugd_AllList.Cells[1, CurRow+1] := ConvertSDate(mdrecodt.O_sResult5[i]);

                        dDate    := encodedate(strtoint(copy(Trim(mdrecodt.O_sResult5[i]),1,4)),
                                               strtoint(copy(Trim(mdrecodt.O_sResult5[i]),5,2)),
                                               strtoint(copy(Trim(mdrecodt.O_sResult5[i]),7,2)) );

                        if Trim(mdPatInf.sAdmDate[0]) = '' then //입원환자가 아닌 경우 버그 처리. KimDaeYong 2021-11-15
                        begin
                            ugd_AllList.Cells[1, CurRow+1]  := ConvertSDate(mdrecodt.O_sResult5[i]) + '('+ GetDayofWeek(dDate,'HF') +')'
                        end
                        else  //입원환자인경우...                          
                        begin
                            dadmdate := encodedate(strtoint(copy(Trim(mdPatinf.sAdmdate[0]),1,4)),
                                                   strtoint(copy(Trim(mdPatinf.sAdmdate[0]),5,2)),
                                                   strtoint(copy(Trim(mdPatinf.sAdmdate[0]),7,2)) );
                            ugd_AllList.Cells[1, CurRow+1]  := ConvertSDate(mdPatinf.sAdmdate[0]) + '('+ GetDayofWeek(dDate,'HF') +')   '+
                                                            'HD : ' + floattostr(dDate-dadmdate+1) +'일' ;
                        end;

                        ugd_AllList.Cells[11, CurRow+1] := 'DATE';
                        Inc(CurRow);
                     end;

                     ugd_AllList.Cells[0, CurRow+1] := Copy(ConvertSDate(mdrecodt.O_sResult5[i]),6,5) + ' ' + mdrecodt.O_sResult8[i];
                     ugd_AllList.Cells[1, CurRow+1] := ReplaceStr((Trim(mdrecodt.O_sResult9[i])),'&','＆');
                     ugd_AllList.Cells[2, CurRow+1] := Trim(mdrecodt.O_sResult10[i]);// + '(' + Trim(mdNrrect.sDeptcd[i]) + ')';
                     ugd_AllList.Cells[3, CurRow+1] := Trim(mdrecodt.O_sResult7[i]);
                     ugd_AllList.Cells[6, CurRow+1] := Trim(mdrecodt.O_sResult9[i]);
                     ugd_AllList.Cells[7, CurRow+1] := Trim(mdrecodt.O_sResult12[i]);
                     ugd_AllList.Cells[8, CurRow+1] := mdrecodt.O_sResult5[i];
                     ugd_AllList.Cells[9, CurRow+1] := mdrecodt.O_sResult8[i];   // 시간
                     ugd_AllList.Cells[10,CurRow+1] := mdrecodt.O_sResult5[i];
                     ugd_AllList.Cells[11,CurRow+1] := Trim(mdrecodt.O_sResult11[i]);
                     ugd_AllList.Cells[12,CurRow+1] := Trim(mdrecodt.O_sResult10[i]);
                     Inc(CurRow);
                  end;


                if MDN420F1_P01 <> nil then
                   MDN420F1_P01.Close;

                  Application.CreateForm(TMDN420F1_P01, MDN420F1_P01);
                  MDN420F1_P01.strFromForm := 'MDN430F2';

                  with MDN420F1_P01 do
                    begin
                       qrlb_PatNo.Caption     := ed_patno.text;
                       qrlb_SexAge.Caption    := pn_SexAge.Caption;
                       qrlb_PatName.Caption   := pn_PatName.Caption;
                       qrlb_ResNo  .Caption   := copy(pn_ResNo.Caption,1,8) + '******';
                       qrlb_DeptNm .Caption   := mdPatInf.sMedDept[0]; // 진료과
                       qrlb_RoomNo .Caption   := mdPatinf.sWardno1[0] + '/' + mdPatinf.sRoomno1[0]; // 병동/ 병실
                       qrl_chadr.Caption      := ugd_RecodDt.Cells[5,ugd_RecodDt.Row]; // 진료의
                    end;

              // 기록지 스캔시 필수공통정보

              lb_patno.caption := sInPatno;
              lb_meddate.caption := ugd_RecodDt.Cells[1,ugd_RecodDt.Row];
              lb_dschdate.caption := ugd_RecodDt.Cells[2,ugd_RecodDt.Row];
              lb_patgubun.caption := ugd_RecodDt.Cells[6,ugd_RecodDt.Row];
              lb_meddept.caption := ugd_RecodDt.Cells[3,ugd_RecodDt.Row];
              lb_chadr.caption := ugd_RecodDt.Cells[4,ugd_RecodDt.Row];

              MDN420F1_P01.qr_Search.Print;
              //MDN420F1_P01.qr_Search.Preview;
              MDN420F1_P01.Close;
              mdPatinf.Free;
              
                // G_USERID, G_USERIP
                UpdateRecord(sInPatno,sPk2,sPk3,'empty','empty' ,g_RecKind);
              end;
        end
     else if (g_RecKind='MDADINFT') then // 간호정보조사지(일반성인) [15] 
        begin

             sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
             sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 입원일자 'YYYYMMDD'

             //Create Class
             mdPatinf := HmdPatinf.Create;

              //공통Class Function Call (환자 List SELECT)
              RowNo2 := mdPatinf.ListPatbat('3',sInPatno,''); //조건:'3'=환자번호로 찾기

             // SYSTEM ERROR
              if RowNo2 = -1 then
              begin
                 mdPatinf.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end;

              // 조회건수 없음
              if RowNo2 = 0 then
              begin
                 mdPatinf.Free;
                 Exit;
              end;
              
              mdAdinfd := HmdAdinfd.Create ;

              //이력조회.20181015.kya.
              RowNo := mdAdinfd.SelADINFdll2(sInPatno,sPk2,''); // md_adinf_s2.pc  (환자번호, 입원일자,'')

              // SYSTEM ERROR
              if RowNo = -1 then
              begin
                 mdAdinfd.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end;

              // 조회건수 없음
              if RowNo = 0 then
              begin
                 mdAdinfd.Free;
                 Exit;
              end;

              mdInsamt := HmdInsamt.Create;
              RowNo3   := mdInsamt.ListUserInfo('Y','2',mdAdinfd.sRecnrs[0],'EB1'); // 간호사 이름 주세요!  // MD_INSAM_L2

              // SYSTEM ERROR
              if RowNo3 = -1 then
              begin
                 mdInsamt.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end;

              // 조회건수 없음
              if RowNo3 = 0 then
              begin
                 mdInsamt.Free;
                 Exit;
              end;
              
              if MNW921B3 <> nil then MNW921B3.Close;
              Application.CreateForm(TMNW921B3, MNW921B3);



              with MNW921B3 do
                begin
                   qrl_PatNo.Caption :=mdPatinf.sPatNo[0];
                   qrl_patname.Caption := mdPatinf.sPatName[0];
                   qrl_ci.Caption := mdPatinf.sResno1[0] + '-' + copy(mdPatinf.sResno2[0],1,1) + '******'; //주민번호 마킹 (ex 911211-1******)
                   qrl_sex.Caption := mdPatinf.sSex[0]+'/'+ Trim(Calc_Age(Date,mdPatinf.sBirtDate[0]));  //성별+나이
                   qrl_chadr.Caption := mdAdinfd.sChaDr[0]; //주치의
                   qrl_meddept.Caption := mdAdinfd.sMeddept[0]; // 진료과
                   qrl_ward.Caption := mdAdinfd.sWardno[0] + '-' + mdAdinfd.sRoomno[0];
                   qrl_admdate.Caption := ConvertSDate(sPk2);
                   qrl_Frecdate.Caption := mdAdinfd.sFrecdate[0];   //최초기록일시

                   // 간호사명
                   qrl_nurse.Caption := mdInsamt.sEmpNm[0];
                   QRLabel243.Caption := mdInsamt.sEmpNm[0];
                   QRLabel342.Caption := mdInsamt.sEmpNm[0];
                   
                   qrl_icd.Caption := mdAdinfd.sDiagcd[0];   // 상병명

                   case strtoint_nvl(Copy(mdAdinfd.sJob[0],1,2)) of  // 직업
                      1 : qrl_work.Caption := '회사원';
                      2 : qrl_work.Caption := '전문직';
                      3 : qrl_work.Caption := '주부';
                      4 : qrl_work.Caption := '학생';
                      5 : qrl_work.Caption := '군인';
                      6 : qrl_work.Caption := '무직';
                      7 : qrl_work.Caption := '자유업';
                      8 : qrl_work.Caption := copy(mdAdinfd.sJob[0],3,length(mdAdinfd.sJob[0]) - 2);
                      9 : qrl_work.Caption := '교사';
                     10 : qrl_work.Caption := '목회자';
                     11 : qrl_work.Caption := '상업';
                     12 : qrl_work.Caption := '기타';
                    else
                          qrl_work.Caption := '';
                    end;

                   case strtoint_nvl(mdAdinfd.sInfdnr[0]) of  // 정보제공자 
                      1 : qrl_inf.Caption := '환자';
                      2 : qrl_inf.Caption := '보호자';
                    else
                          qrl_inf.Caption := '';
                    end;

                   case strtoint_nvl(mdAdinfd.sChType[0]) of  // 종교
                      1 : qrl_ChType.Caption := '기독교';
                      2 : qrl_ChType.Caption := '천주교';
                      3 : qrl_ChType.Caption := '불교';
                      4 : qrl_ChType.Caption := '원불교';
                      5 : qrl_ChType.Caption := '무교';
                      6 : qrl_ChType.Caption := '천도교';
                    else
                          qrl_ChType.Caption := '';
                    end;

                   case strtoint_nvl(mdAdinfd.sEdudgr[0]) of  // 교육수준
                      1 : qrl_adu.Caption := '무학';
                      2 : qrl_adu.Caption := '초등졸';
                      3 : qrl_adu.Caption := '중졸';
                      4 : qrl_adu.Caption := '고졸';
                      5 : qrl_adu.Caption := '대졸';
                      6 : qrl_adu.Caption := '대학원졸';
                      7 : qrl_adu.Caption := '기타';
                    else
                          qrl_adu.Caption := '';
                    end;

                   qrl_telno1.Caption := mdAdinfd.sTelno1[0];
                   qrl_telno2.Caption := mdAdinfd.sTelno2[0];

                   case strtoint_nvl(mdAdinfd.sWedyn[0]) of  // 결혼여부 / 자녀수
                      1 : qrl_merr.Caption := '기혼';
                      2 : qrl_merr.Caption := '미혼';
                      3 : qrl_merr.Caption := '사별';
                      4 : qrl_merr.Caption := '기타';
                    else
                          qrl_merr.Caption := '';
                    end;

                   qrl_merr.Caption := qrl_merr.Caption + '/' + mdAdinfd.sChildcnt[0]; // 결혼여부, 자녀수


                    case strtoint_nvl(copy(mdAdinfd.sAdmpath[0],1,1)) of  // 입원경로
                      1 : qrl_admcou.Caption := '외래'+'(' + copy(mdAdinfd.sAdmpath[0],2,length(mdAdinfd.sAdmpath[0]) - 1) + ')';
                      2 : qrl_admcou.Caption := '응급'+'(' + copy(mdAdinfd.sAdmpath[0],2,length(mdAdinfd.sAdmpath[0]) - 1) + ')';
                      3 : qrl_admcou.Caption := copy(mdAdinfd.sAdmpath[0],2,length(mdAdinfd.sAdmpath[0]) - 1);
                    else
                          qrl_admcou.Caption := '';
                    end;

                    case strtoint_nvl(copy(mdAdinfd.sInmthd[0],1,1)) of  // 입원경로
                      1 : qrl_admmeth.Caption := '도보' + '(' +copy(mdAdinfd.sAdmpath[0],2,length(mdAdinfd.sAdmpath[0]) - 1)+ ')';
                      2 : qrl_admmeth.Caption := '휠체어' + '(' +copy(mdAdinfd.sAdmpath[0],2,length(mdAdinfd.sAdmpath[0]) - 1)+ ')';
                      3 : qrl_admmeth.Caption := '눕는차' + '(' +copy(mdAdinfd.sAdmpath[0],2,length(mdAdinfd.sAdmpath[0]) - 1)+ ')';
                      4 : qrl_admmeth.Caption := copy(mdAdinfd.sInmthd[0],2,length(mdAdinfd.sInmthd[0]) - 1);
                    else
                          qrl_admmeth.Caption := '';
                    end;


                     if mdAdinfd.sAlgyn[0] = '2' then
                     begin
                        qrs_argyn1.Brush.Color := clWhite;
                        qrs_argyn2.Brush.Color := clBlack;
                     end
                     else
                     if mdAdinfd.sAlgyn[0] = '1' then
                     begin
                        qrs_argyn1.Brush.Color := clBlack;
                        qrs_argyn2.Brush.Color := clWhite;
                     end
                     else
                     begin
                        qrs_argyn1.Brush.Color := clWhite;
                        qrs_argyn2.Brush.Color := clWhite;
                     end;
         
                   qrl_argdg.Caption := mdAdinfd.sAlgdg[0];
                   qrl_argfd.Caption := mdAdinfd.sAlgfd[0];
                   qrl_argetc.Caption := mdAdinfd.sAlgetc[0];

                   shcbx_pro(qrs_pthist1,copy(mdAdinfd.s1[0],1,1));
                   shcbx_pro(qrs_pthist2,copy(mdAdinfd.s1[0],2,1));
                   shcbx_pro(qrs_pthist3,copy(mdAdinfd.s1[0],3,1));
                   shcbx_pro(qrs_pthist4,copy(mdAdinfd.s1[0],4,1));
                   shcbx_pro(qrs_pthist5,copy(mdAdinfd.s1[0],5,1));
                   
                   qrl_pthist.Caption := copy(mdAdinfd.s1[0],6,55);

                   if strtoint_nvl(copy(mdAdinfd.sLstdrgst[0],1,1)) = 2 then
                   begin
                      qrs_dgstat1.Brush.Color := clWhite;
                      qrs_dgstat2.Brush.Color := clBlack;
                   end
                   else
                   if strtoint_nvl(copy(mdAdinfd.sLstdrgst[0],1,1)) = 1 then
                   begin
                      qrs_dgstat1.Brush.Color := clBlack;
                      qrs_dgstat2.Brush.Color := clWhite;
                   end
                   else
                   begin
                      qrs_dgstat1.Brush.Color := clWhite;
                      qrs_dgstat2.Brush.Color := clWhite;
                   end;
                   qrl_dgstat.Caption := copy(mdAdinfd.sLstdrgst[0],2,50);

                   shcbx_pro(qrs_famcase1,copy(mdAdinfd.s2[0],1,1));
                   shcbx_pro(qrs_famcase2,copy(mdAdinfd.s2[0],2,1));
                   shcbx_pro(qrs_famcase3,copy(mdAdinfd.s2[0],3,1));
                   shcbx_pro(qrs_famcase4,copy(mdAdinfd.s2[0],4,1));
                   shcbx_pro(qrs_famcase5,copy(mdAdinfd.s2[0],5,1));
                   shcbx_pro(qrs_famcase6,copy(mdAdinfd.s2[0],6,1));

                   qrl_famcase.Caption := Trim(copy(mdAdinfd.s2[0],7,55));
                   qrl_famrela.Caption := mdAdinfd.sfamrela[0];
         
                   if strtoint_nvl(copy(mdAdinfd.sOpstat[0],1,1)) = 2 then
                   begin
                      qrs_opyn2.Brush.Color := clBlack;
                   end
                   else
                   if strtoint_nvl(copy(mdAdinfd.sOpstat[0],1,1)) = 1 then
                   begin
                      qrs_opyn1.Brush.Color := clBlack;
                   end
                   else
                   begin
                      qrs_opyn1.Brush.Color := clWhite;
                      qrs_opyn2.Brush.Color := clWhite;
                   end;
         
                   qrl_opnm.Caption := copy(mdAdinfd.sOpstat[0],2,249);

                   case strtoint_nvl(copy(mdAdinfd.sPhist[0],1,1)) of  // 지남력-사람
                      1 : qrl_pshist1.Caption := '무';
                      2 : qrl_pshist1.Caption := '유';
                    else
                          qrl_pshist1.Caption := '';
                    end;
                   case strtoint_nvl(copy(mdAdinfd.sPhist[0],2,1)) of  // 지남력-장소
                      1 : qrl_pshist2.Caption := '무';
                      2 : qrl_pshist2.Caption := '유';
                    else
                          qrl_pshist2.Caption := '';
                    end;
                   case strtoint_nvl(copy(mdAdinfd.sPhist[0],3,1)) of  // 지남력-시간
                      1 : qrl_pshist3.Caption := '무';
                      2 : qrl_pshist3.Caption := '유';
                    else
                          qrl_pshist3.Caption := '';
                    end;

                   //의식상태.20150326. kya.
                   if mdAdinfd.sCondst[0] = '1' then
                   begin
                      qrs_condst1.Brush.Color := clBlack;
                   end
                   else
                   if mdAdinfd.sCondst[0] = '2'then
                   begin
                      qrs_condst2.Brush.Color := clBlack;
                   end
                   else
                   if mdAdinfd.sCondst[0] = '3' then
                   begin
                      qrs_condst3.Brush.Color := clBlack;
                   end
                   else
                   if mdAdinfd.sCondst[0] = '4' then
                   begin
                      qrs_condst4.Brush.Color := clBlack;
                   end;
         
                   //의사소통. 20150326. kya.
                   //qrl_concom.Caption := combx_concom.Text;
                   if mdAdinfd.sConcom[0] = '1' then
                   begin
                      qrs_concom1.Brush.Color := clBlack;
                   end
                   else
                   if mdAdinfd.sConcom[0] = '2' then
                   begin
                      qrs_concom2.Brush.Color := clBlack;
                   end
                   else
                   if mdAdinfd.sConcom[0] = '3' then
                   begin
                      qrs_concom3.Brush.Color := clBlack;
                   end;

                   shcbx_pro(qrs_feelst1,copy(mdAdinfd.s3[0],1,1));
                   shcbx_pro(qrs_feelst2,copy(mdAdinfd.s3[0],2,1));
                   shcbx_pro(qrs_feelst3,copy(mdAdinfd.s3[0],3,1));
                   shcbx_pro(qrs_feelst4,copy(mdAdinfd.s3[0],4,1));
                   shcbx_pro(qrs_feelst5,copy(mdAdinfd.s3[0],5,1));
                   shcbx_pro(qrs_feelst6,copy(mdAdinfd.s3[0],6,1));
                   shcbx_pro(qrs_feelst7,copy(mdAdinfd.s3[0],7,1));
                   shcbx_pro(qrs_feelst8,copy(mdAdinfd.s3[0],8,1));

                   shcbx_pro(qrs_circst1,copy(mdAdinfd.s4[0],1,1));
                   shcbx_pro(qrs_circst2,copy(mdAdinfd.s4[0],2,1));
                   shcbx_pro(qrs_circst3,copy(mdAdinfd.s4[0],3,1));
                   shcbx_pro(qrs_circst4,copy(mdAdinfd.s4[0],4,1));
                   shcbx_pro(qrs_circst5,copy(mdAdinfd.s4[0],5,1));
                   shcbx_pro(qrs_circst6,copy(mdAdinfd.s4[0],6,1));
                   shcbx_pro(qrs_circst7,copy(mdAdinfd.s4[0],7,1));
                   shcbx_pro(qrs_circst8,copy(mdAdinfd.s4[0],8,1));
                   shcbx_pro(qrs_circst9,copy(mdAdinfd.s4[0],9,1)); //순환기 유추가.20150430.kya.

                   shcbx_pro(qrs_respst1,copy(mdAdinfd.s5[0],1,1));
                   shcbx_pro(qrs_respst2,copy(mdAdinfd.s5[0],2,1));
                   shcbx_pro(qrs_respst3,copy(mdAdinfd.s5[0],3,1));
                   shcbx_pro(qrs_respst4,copy(mdAdinfd.s5[0],4,1));
                   shcbx_pro(qrs_respst5,copy(mdAdinfd.s5[0],5,1));
                   shcbx_pro(qrs_respst6,copy(mdAdinfd.s5[0],6,1));
                   shcbx_pro(qrs_respst7,copy(mdAdinfd.s5[0],7,1));
                   shcbx_pro(qrs_respst8,copy(mdAdinfd.s5[0],8,1));
                   shcbx_pro(qrs_respst9,copy(mdAdinfd.s5[0],9,1));   //호흡기 유추가.20150430.kya.

                   shcbx_pro(qrs_dietst1,copy(mdAdinfd.s6[0],1 ,1));
                   shcbx_pro(qrs_dietst2,copy(mdAdinfd.s6[0],2 ,1));
                   shcbx_pro(qrs_dietst3,copy(mdAdinfd.s6[0],3 ,1));
                   shcbx_pro(qrs_dietst4,copy(mdAdinfd.s6[0],4 ,1));
                   shcbx_pro(qrs_dietst5,copy(mdAdinfd.s6[0],5 ,1));
                   shcbx_pro(qrs_dietst6,copy(mdAdinfd.s6[0],6 ,1));
                   shcbx_pro(qrs_dietst7,copy(mdAdinfd.s6[0],7 ,1));
                   shcbx_pro(qrs_dietst8,copy(mdAdinfd.s6[0],8 ,1));
                   shcbx_pro(qrs_dietst9,copy(mdAdinfd.s6[0],9 ,1));
                   shcbx_pro(qrs_dietst10,copy(mdAdinfd.s6[0],10 ,1));
                   shcbx_pro(qrs_dietst11,copy(mdAdinfd.s6[0],11 ,1));
                   shcbx_pro(qrs_dietst12,copy(mdAdinfd.s6[0],12 ,1));  //소화기 유추가.20150430.kya.

                   shcbx_pro(qrs_pain1,copy(mdAdinfd.s8[0],1 ,1));
                   shcbx_pro(qrs_pain2,copy(mdAdinfd.s8[0],2 ,1));
                   shcbx_pro(qrs_pain3,copy(mdAdinfd.s8[0],3 ,1));
                   shcbx_pro(qrs_pain4,copy(mdAdinfd.s8[0],4 ,1));
                   shcbx_pro(qrs_pain5,copy(mdAdinfd.s8[0],5 ,1));
                   shcbx_pro(qrs_pain6,copy(mdAdinfd.s8[0],6 ,1));
                   shcbx_pro(qrs_pain7,copy(mdAdinfd.s8[0],7 ,1));
                   shcbx_pro(qrs_pain8,copy(mdAdinfd.s8[0],8 ,1));
                   shcbx_pro(qrs_pain9,copy(mdAdinfd.s8[0],9 ,1));
                   shcbx_pro(qrs_pain10,copy(mdAdinfd.s8[0],10 ,1));
                   shcbx_pro(qrs_pain11,copy(mdAdinfd.s8[0],11 ,1));
                   shcbx_pro(qrs_pain12,copy(mdAdinfd.s8[0],12 ,1));
                   shcbx_pro(qrs_pain13,copy(mdAdinfd.s8[0],13 ,1)); //통증 유추가. 20150430.kya.
         
                   shcbx_pro(qrs_palsy1,copy(mdAdinfd.s9[0],1 ,1));
                   shcbx_pro(qrs_palsy2,copy(mdAdinfd.s9[0],2 ,1));
                   shcbx_pro(qrs_palsy3,copy(mdAdinfd.s9[0],3 ,1));
                   shcbx_pro(qrs_palsy4,copy(mdAdinfd.s9[0],4 ,1));
                   shcbx_pro(qrs_palsy5,copy(mdAdinfd.s9[0],5 ,1));
                   shcbx_pro(qrs_palsy6,copy(mdAdinfd.s9[0],6 ,1));; //마비 유추가. 20150430.kya.

                   shcbx_pro(qrs_support1,copy(mdAdinfd.s10[0],1 ,1));
                   shcbx_pro(qrs_support2,copy(mdAdinfd.s10[0],2 ,1));
                   shcbx_pro(qrs_support3,copy(mdAdinfd.s10[0],3 ,1));
                   shcbx_pro(qrs_support4,copy(mdAdinfd.s10[0],4 ,1));
                   shcbx_pro(qrs_support5,copy(mdAdinfd.s10[0],5 ,1));
                   shcbx_pro(qrs_support7,copy(mdAdinfd.s10[0],7 ,1));
                   shcbx_pro(qrs_support8,copy(mdAdinfd.s10[0],8 ,1)); //보조기구 유추가. 20150430.kya.

                   //보조기구 추가. kya. 20150430.
                   if ((copy(mdAdinfd.s10[0],8 ,1)='N') or (copy(mdAdinfd.s10[0],8 ,1)='Y')) then
                   begin
                     shcbx_pro(qrs_support8 ,copy(mdAdinfd.s10[0],8 ,1));
                     qrl_support.Caption := copy(mdAdinfd.s10[0],9,length(mdAdinfd.s10[0]));
                   end
                   else
                   begin
                     qrl_support.Caption := copy(mdAdinfd.s10[0],8,length(mdAdinfd.s10[0]));
                   end;

                   shcbx_pro(qrs_skin1,copy(mdAdinfd.s11[0],1 ,1));
                   shcbx_pro(qrs_skin2,copy(mdAdinfd.s11[0],2 ,1));
                   shcbx_pro(qrs_skin3,copy(mdAdinfd.s11[0],3 ,1));
                   shcbx_pro(qrs_skin4,copy(mdAdinfd.s11[0],4 ,1));
                   shcbx_pro(qrs_skin5,copy(mdAdinfd.s11[0],5 ,1));
                   shcbx_pro(qrs_skin6,copy(mdAdinfd.s11[0],6 ,1));
                   shcbx_pro(qrs_skin7,copy(mdAdinfd.s11[0],7 ,1));
                   shcbx_pro(qrs_skin8,copy(mdAdinfd.s11[0],8 ,1));   //피부색깔 정상,비정상 추가. 20150430. kya.

                   shcbx_pro(qrs_eyest1,copy(mdAdinfd.s12[0],1 ,1));
                   shcbx_pro(qrs_eyest2,copy(mdAdinfd.s12[0],2 ,1));
                   shcbx_pro(qrs_eyest3,copy(mdAdinfd.s12[0],3 ,1));
                   shcbx_pro(qrs_eyest4,copy(mdAdinfd.s12[0],4 ,1));
                   shcbx_pro(qrs_eyest5,copy(mdAdinfd.s12[0],5 ,1));//시각 유,좌,우 추가. 20150430. kya.
                   shcbx_pro(qrs_eyest6,copy(mdAdinfd.s12[0],6 ,1));
                   shcbx_pro(qrs_eyest7,copy(mdAdinfd.s12[0],7 ,1));

                   shcbx_pro(qrs_earst1,copy(mdAdinfd.s13[0],1 ,1));
                   shcbx_pro(qrs_earst2,copy(mdAdinfd.s13[0],2 ,1));
                   shcbx_pro(qrs_earst3,copy(mdAdinfd.s13[0],3 ,1));
                   shcbx_pro(qrs_earst4,copy(mdAdinfd.s13[0],4 ,1));
                   shcbx_pro(qrs_earst5,copy(mdAdinfd.s13[0],5 ,1)); //청각 유,좌,우 추가. 20150430. kya.
                   shcbx_pro(qrs_earst6,copy(mdAdinfd.s13[0],6 ,1));
                   shcbx_pro(qrs_earst7,copy(mdAdinfd.s13[0],7 ,1));
                   shcbx_pro(qrs_earst8,copy(mdAdinfd.s13[0],8 ,1));

                   shcbx_pro(qrs_neost1,copy(mdAdinfd.s14[0],1 ,1));
                   shcbx_pro(qrs_neost2,copy(mdAdinfd.s14[0],2 ,1));
                   shcbx_pro(qrs_neost3,copy(mdAdinfd.s14[0],3 ,1));
                   shcbx_pro(qrs_neost4,copy(mdAdinfd.s14[0],4 ,1));
                   shcbx_pro(qrs_neost5,copy(mdAdinfd.s14[0],5 ,1));
                   shcbx_pro(qrs_neost6,copy(mdAdinfd.s14[0],6 ,1));
                   shcbx_pro(qrs_neost7,copy(mdAdinfd.s14[0],7 ,1));
                   
                   //부종 유추가. kya. 20150430.
                   if ((copy(mdAdinfd.s14[0],8 ,1)='N') or (copy(mdAdinfd.s14[0],8 ,1)='Y')) then
                   begin
                     shcbx_pro(qrs_neost8 ,copy(mdAdinfd.s14[0],8 ,1));
                     qrl_neost.Caption := Trim(copy(mdAdinfd.s14 [0],9 ,length(mdAdinfd.s14[0])));
                   end
                   else
                   begin
                      qrl_neost.Caption := Trim(copy(mdAdinfd.s14 [0],8 ,length(mdAdinfd.s14[0])));
                   end;

                   qrl_stool.Caption := Trim(mdAdinfd.sstool[0]);

                   if mdAdinfd.ssleep[0] = 'Y' then
                   begin
                      qrs_sleep2.brush.color := clBlack;
                   end
                   else
                   begin
                      qrs_sleep1.brush.color := clBlack;
                   end;

                   if mdAdinfd.ssleepdg[0] = 'Y' then
                   begin
                      qrs_sleepdg2.brush.color := clBlack;
                   end
                   else
                   begin
                      qrs_sleepdg1.brush.color := clBlack;
                   end;

                   qrl_drink.Caption := mdAdinfd.sDrink[0];


                   qrl_tabaco.Caption := mdAdinfd.sTabaco[0];      //흡연량
         
                   //급성심근경색증(흡연구분,금연교육) KimDaeYong 2008-06-12
                   if mdAdinfd.sTabacoflag[0] = '1' then      //흡연구분
                      qrs_Tabaco.brush.color := clBlack
                   else if mdAdinfd.sTabacoflag[0] = '2' then
                      qrs_noTabaco.brush.color := clBlack
                   else
                      qrs_pastTabaco.brush.color := clBlack;

                   if mdAdinfd.sEdutabaco[0] = 'Y' then       //금연교육
                      qrs_eduTabaco.brush.color := clBlack;

                   if mdAdinfd.sInedu1[0] = 'Y' then    //교육상태1
                      qrs_edu1.brush.color := clBlack;

                   if (strtoint_nvl(Copy(mdAdinfd.sInedu2[0], 1, 1)) = 1) then    //교육상태2
                   begin
                      qrs_edu2.brush.color := clBlack;
                      shcbx_pro(qrs_edu21,Copy(mdAdinfd.sInedu2[0], 2, 1));
                      shcbx_pro(qrs_edu22,Copy(mdAdinfd.sInedu2[0], 3, 1));
                      shcbx_pro(qrs_edu23,Copy(mdAdinfd.sInedu2[0], 4, 1));
                      shcbx_pro(qrs_edu24,Copy(mdAdinfd.sInedu2[0], 5, 1));
                      shcbx_pro(qrs_edu25,Copy(mdAdinfd.sInedu2[0], 6, 1));
                      shcbx_pro(qrs_edu26,Copy(mdAdinfd.sInedu2[0], 7, 1));
                      shcbx_pro(qrs_edu27,Copy(mdAdinfd.sInedu2[0], 8, 1));
                      shcbx_pro(qrs_edu28,Copy(mdAdinfd.sInedu2[0], 9, 1));
                      shcbx_pro(qrs_edu29,Copy(mdAdinfd.sInedu2[0], 10, 1));
                      shcbx_pro(qrs_edu30,Copy(mdAdinfd.sInedu2[0], 11, 1));
                      if length(mdAdinfd.sInedu2[0])=11 then shcbx_pro(qrs_edu311,'Y') else shcbx_pro(qrs_edu311,Copy(mdAdinfd.sInedu2[0], 12, 1));
                   end;

                   if copy(mdAdinfd.sInedu3[0], 1, 1) = '1' then   //교육상태3
                   begin
                       qrs_edu3.brush.color := clBlack;
                       shcbx_pro(qrs_edu31,Copy(mdAdinfd.sInedu3[0], 2, 1));
                       shcbx_pro(qrs_edu32,Copy(mdAdinfd.sInedu3[0], 3, 1));
                       shcbx_pro(qrs_edu33,Copy(mdAdinfd.sInedu3[0], 4, 1));
                       shcbx_pro(qrs_edu34,Copy(mdAdinfd.sInedu3[0], 5, 1));
                       shcbx_pro(qrs_edu35,Copy(mdAdinfd.sInedu3[0], 6, 1));
                       shcbx_pro(qrs_edu36,Copy(mdAdinfd.sInedu3[0], 7, 1));
                   end;

                   if Copy(mdAdinfd.sInedu4[0], 1, 1) = '1' then   //교육상태4
                   begin
                       qrs_edu4.brush.color := clBlack;
                       shcbx_pro(qrs_edu41,Copy(mdAdinfd.sInedu4[0], 2, 1));
                       shcbx_pro(qrs_edu42,Copy(mdAdinfd.sInedu4[0], 3, 1));
                   end;

                   shcbx_pro(qrs_edu5,mdAdinfd.sInedu5[0]);  //교육상태5
                   shcbx_pro(qrs_edu7,mdAdinfd.sInedu7[0]);  //교육상태7
                   shcbx_pro(qrs_edu8,mdAdinfd.sInedu8[0]);  //교육상태8
                   shcbx_pro(qrs_edu9,mdAdinfd.sInedu9[0]);  //교육상태9

                   qrme_AdmovDet.Lines.Clear;
                   qrme_AdmovDet.Lines.Add(mdAdinfd.sAdmreson[0]); //입원동기

                   qrl_addr.caption := mdPatinf.sAddress[0];

                   if copy(mdAdinfd.sAdmlast[0],1,1) = '2' then        // 입원력
                   begin
                      qrl_admlast.Caption := Trim(copy(mdAdinfd.sAdmlast[0],2 ,length(mdAdinfd.sAdmlast[0])));
                      qrs_admlast2.brush.color := clBlack;
                   end
                   else
                   if copy(mdAdinfd.sAdmlast[0],1,1) = '1' then
                   begin
                      qrl_admlast.Caption := '무';
                      qrs_admlast1.brush.color := clBlack;
                   end
                   else
                   begin
                      qrl_admlast.Caption := '';
                      qrs_admlast1.brush.color := clBlack;
                   end;

                   // 기형
                   shcbx_pro(qrs_deformt1,copy(mdAdinfd.sDeformt[0],1,1));
                   shcbx_pro(qrs_deformt2,copy(mdAdinfd.sDeformt[0],2,1));
                   // 대변
                   shcbx_pro(qrs_feceskd1,copy(mdAdinfd.sFeceskd[0],1,1));
                   shcbx_pro(qrs_feceskd2,copy(mdAdinfd.sFeceskd[0],2,1));
                   shcbx_pro(qrs_feceskd3,copy(mdAdinfd.sFeceskd[0],3,1));
                   shcbx_pro(qrs_feceskd4,copy(mdAdinfd.sFeceskd[0],4,1));
                   qrl_stool.Caption := Trim(mdAdinfd.sstool[0]);

                   // 소변
                   shcbx_pro(qrs_urinkd1,copy(mdAdinfd.sUrinkd[0],1,1));
                   shcbx_pro(qrs_urinkd2,copy(mdAdinfd.sUrinkd[0],2,1));
                   shcbx_pro(qrs_urinkd3,copy(mdAdinfd.sUrinkd[0],3,1));
                   shcbx_pro(qrs_urinkd4,copy(mdAdinfd.sUrinkd[0],4,1));
                   //소변 추가.20150430. kya.
                   if ((copy(mdAdinfd.sUrinkd[0],5,1)='N') or (copy(mdAdinfd.sUrinkd[0],5,1)='Y')) then
                   begin
                     shcbx_pro(qrs_urinkd5,copy(mdAdinfd.sUrinkd[0],5,1));
                     shcbx_pro(qrs_urinkd6,copy(mdAdinfd.sUrinkd[0],6,1));
                     shcbx_pro(qrs_urinkd7,copy(mdAdinfd.sUrinkd[0],7,1));
                     shcbx_pro(qrs_urinkd8,copy(mdAdinfd.sUrinkd[0],8,1));
                     shcbx_pro(qrs_urinkd9,copy(mdAdinfd.sUrinkd[0],9,1));
                     qrl_urineCnt.Caption := Trim(copy(mdAdinfd.sUrinkd[0],10 ,length(mdAdinfd.sUrinkd[0])));
                   end
                   else
                   begin
                     qrl_urineCnt.Caption := Trim(copy(mdAdinfd.sUrinkd[0],5 ,length(mdAdinfd.sUrinkd[0])));
                   end;
                        
                   //신경근육
                   shcbx_pro(qrs_nerves1,copy(mdAdinfd.sNerves[0],1,1));
                   shcbx_pro(qrs_nerves2,copy(mdAdinfd.sNerves[0],2,1));
                   shcbx_pro(qrs_nerves3,copy(mdAdinfd.sNerves[0],3,1));
                   //신경근육 무 추가.20150430. kya.
                   if ((copy(mdAdinfd.sNerves[0],4,1)='N') or (copy(mdAdinfd.sNerves[0],4,1)='Y')) then
                   begin
                     shcbx_pro(qrs_nerves4,copy(mdAdinfd.sNerves[0],4,1));
                     qrl_nerves.Caption := Trim(copy(mdAdinfd.sNerves[0],5 ,length(mdAdinfd.sNerves[0])));
                   end
                   else
                   begin
                     qrl_nerves.Caption := Trim(copy(mdAdinfd.sNerves[0],4 ,length(mdAdinfd.sNerves[0])));
                   end;

                   // 피부상태
                   shcbx_pro(qrs_skinst1,copy(mdAdinfd.sSkinst[0],1,1));
                   shcbx_pro(qrs_skinst2,copy(mdAdinfd.sSkinst[0],2,1));
                   shcbx_pro(qrs_skinst3,copy(mdAdinfd.sSkinst[0],3,1));
                   shcbx_pro(qrs_skinst4,copy(mdAdinfd.sSkinst[0],4,1));
                   shcbx_pro(qrs_skinst5,copy(mdAdinfd.sSkinst[0],5,1));
                   shcbx_pro(qrs_skinst6,copy(mdAdinfd.sSkinst[0],6,1));
                   shcbx_pro(qrs_skinst7,copy(mdAdinfd.sSkinst[0],7,1));
                   shcbx_pro(qrs_skinst8,copy(mdAdinfd.sSkinst[0],8,1));
                   shcbx_pro(qrs_skinst9,copy(mdAdinfd.sSkinst[0],9,1));
                   shcbx_pro(qrs_skinst10,copy(mdAdinfd.sSkinst[0],10,1));
                   shcbx_pro(qrs_skinst11,copy(mdAdinfd.sSkinst[0],11,1));
                   shcbx_pro(qrs_skinst12,copy(mdAdinfd.sSkinst[0],12,1));
                   shcbx_pro(qrs_skinst13,copy(mdAdinfd.sSkinst[0],13,1));
                   qrl_skinst.Caption := Trim(copy(mdAdinfd.sSkinst[0],14 ,length(mdAdinfd.sSkinst[0])));

                   case strtoint_nvl(mdAdinfd.sActivest[0]) of  // 활동상태
                      1 : qrl_Activest.Caption := '스스로 능동적 운동 가능';
                      2 : qrl_Activest.Caption := '부분적인 도움이나 보조기구 이용';
                      3 : qrl_Activest.Caption := '침상 내에서 부분적인 도움으로 수동적 운동';
                      4 : qrl_Activest.Caption := '부동상태에서 전적의존의 수동적 운동 혹은 체위변경';
                    else
                          qrl_Activest.Caption := '';
                    end;

                   qrl_sleeptm.Caption := mdAdinfd.sSleephr[0]; // 수면시간
                   qrl_bodytemp.Caption := mdAdinfd.sBodytemp[0];   // 체온
                   qrl_pulse.Caption    := mdAdinfd.sPulse[0];   // 맥박
                   ed_respcnt.Caption   := mdAdinfd.sRespcnt[0];   // 호흡
                   qrl_bldprehi.Caption := mdAdinfd.sBldprehi[0]+'/'+mdAdinfd.sBldprelo[0];   // 혈압
                   qrl_weight.Caption   := mdAdinfd.sWeight[0];   // 체중
                   qrl_height.Caption   := mdAdinfd.sHeight[0];   // 신장

                   case strtoint_nvl(mdAdinfd.sBldtype[0]) of  // 혈액형
                      1 : qrl_bldtype.Caption := 'A';
                      2 : qrl_bldtype.Caption := 'B';
                      3 : qrl_bldtype.Caption := 'AB';
                      4 : qrl_bldtype.Caption := 'O';
                    else
                          qrl_bldtype.Caption := '모름'
                    end;

                     if strtoint_nvl(mdAdinfd.sAppetite[0]) = 1 then       // 식욕
                     begin
                        qrs_eat1.Brush.Color := clBlack;
                     end
                     else
                     if strtoint_nvl(mdAdinfd.sAppetite[0]) = 2then
                     begin
                        qrs_eat2.Brush.Color := clBlack;
                     end
                     else
                     if strtoint_nvl(mdAdinfd.sAppetite[0]) = 3 then
                     begin
                        qrs_eat3.Brush.Color := clBlack;
                     end
                     else
                     begin
                        qrs_eat1.Brush.Color := clWhite;
                        qrs_eat2.Brush.Color := clWhite;
                        qrs_eat3.Brush.Color := clWhite;
                     end;

                     if strtoint_nvl(mdAdinfd.sWetchg[0]) = 1 then       // 식욕
                     begin
                        qrs_wetchg2.Brush.Color := clBlack;
                     end
                     else
                     if strtoint_nvl(mdAdinfd.sWetchg[0]) = 2 then
                     begin
                        qrs_wetchg3.Brush.Color := clBlack;
                     end
                     else
                     if strtoint_nvl(mdAdinfd.sWetchg[0]) = 3 then
                     begin
                        qrs_wetchg1.Brush.Color := clBlack;
                     end
                     else
                     begin
                        qrs_wetchg1.Brush.Color := clWhite;
                        qrs_wetchg2.Brush.Color := clWhite;
                        qrs_wetchg3.Brush.Color := clWhite;
                     end;

                     QRLabel243.Caption := mdInsamt.sEmpNm[0];

                   //==============간호정보조사지 출력물 추가, KimDaeYong 2011-07-05======================//
                   qrl_Frecdate.Caption := mdAdinfd.sFrecdate[0];   //최초기록일시

                   // 2011.02 인증 추가
                   if trim(mdAdinfd.sNation[0]) = '대한민국' then //국적
                      qrl_Nation.Caption := '대한민국'
                   else
                   begin
                      qrl_Nation.Caption := mdAdinfd.sNation[0];
                   end;

                   case strtoint_nvl(mdAdinfd.sRace[0]) of  // 인종
                      1 : qrl_Race.Caption := '황인종';
                      2 : qrl_Race.Caption := '백인종';
                      3 : qrl_Race.Caption := '흑인종';
                    else
                          qrl_Race.Caption := ''
                    end;
                   case strtoint_nvl(mdAdinfd.sPay[0]) of  //진료비지불능력
                      1 : qrl_Pay.Caption := '있음';
                      2 : qrl_Pay.Caption := '없음';
                    else
                          qrl_Pay.Caption := ''
                    end;
                   case strtoint_nvl(mdAdinfd.sBokji[0]) of  ////사회복지상담
                      1 : qrl_Bokji.Caption := '필요';
                      2 : qrl_Bokji.Caption := '불필요';
                    else
                          qrl_Bokji.Caption := ''
                    end;

                   case strtoint_nvl(mdAdinfd.sKnow[0]) of  //병인식여부
                      1 : qrl_Know.Caption := '있음';
                      2 : qrl_Know.Caption := '없음';
                    else
                          qrl_Know.Caption := ''
                    end;

                   qrl_Arganti.Caption := mdAdinfd.sArganti[0];    //알레르기 항생제

                   if strtoint_nvl(mdAdinfd.sDysphagia[0]) = 1 then qrs_dysphagia1.Brush.Color := clBlack;   //연하곤란
                   if strtoint_nvl(mdAdinfd.sDysphagia[0]) = 2 then qrs_dysphagia2.Brush.Color := clBlack;

                   case strtoint_nvl(mdAdinfd.sStress[0]) of  //대사적스트레스 정도
                      1 : qrl_Stress.Caption := '해당 사항 없음';
                      2 : qrl_Stress.Caption := '골반골절로 치료중인 자';
                      3 : qrl_Stress.Caption := '만성폐쇄성폐질환의 급성학화기 상태인자';
                      4 : qrl_Stress.Caption := '조절되지 않는 대량복수나 간성뇌증을 동반한 간경변증 환자';
                      5 : qrl_Stress.Caption := '항암화학요법을 위해 입원한 자';
                      6 : qrl_Stress.Caption := '경부나 흉부, 복부의 방사선 치료를 위해 입원한 자';
                      7 : qrl_Stress.Caption := '신 기능 부전으로 혈액투석이나 복막투석 치료중인 자';
                      8 : qrl_Stress.Caption := '개복 또는 개흉 수술 후 3일 이상 금식중인 자';
                      9 : qrl_Stress.Caption := '입원치료를 요하는 급성 뇌경색 환자';
                      10: qrl_Stress.Caption := '중증 폐렴으로 인해 산소공급을 요하여 침상안정이 필요한 자';
                      11: qrl_Stress.Caption := '중환자실에서 인공호흡기 치료를 요하는 자';                      
                    else
                          qrl_Stress.Caption := '' ;
                    end;

                   //환잔안전교육
                   shcbx_pro(qrs_Safeedu1,copy(mdAdinfd.sSafeEdu[0],1,1));    //낙상예방
                   shcbx_pro(qrs_Safeedu2,copy(mdAdinfd.sSafeEdu[0],2,1));    //욕창예방
                   shcbx_pro(qrs_Safeedu3,copy(mdAdinfd.sSafeEdu[0],3,1));    //고충처리접수방법
                   shcbx_pro(qrs_Safeedu4,copy(mdAdinfd.sSafeEdu[0],4,1));    //의료폐기물분리수거
                   shcbx_pro(qrs_Safeedu5,copy(mdAdinfd.sSafeEdu[0],5,1));    //환자권리장전
         
                   qrm_Etc.Lines.Text := mdAdinfd.sNreduetc[0];;   //기타교육사항
         
                   //5.초기퇴원계획
                   if strtoint_nvl(mdAdinfd.sOutEdu1[0]) = 1 then qrs_Outedu11.Brush.Color := clBlack;   //보호자거주유무
                   if strtoint_nvl(mdAdinfd.sOutEdu1[0]) = 2 then qrs_Outedu12.Brush.Color := clBlack;
                   if strtoint_nvl(mdAdinfd.sOutEdu2[0]) = 1 then qrs_Outedu21.Brush.Color := clBlack;   //간병인유무
                   if strtoint_nvl(mdAdinfd.sOutEdu2[0]) = 2 then qrs_Outedu22.Brush.Color := clBlack;

                   if mdAdinfd.sOutEdu3[0] = '1' then
                      qrs_Wait1.Brush.Color := clBlack
                   else if mdAdinfd.sOutEdu3[0] = '2' then
                      qrs_Wait2.Brush.Color := clBlack
                   else if mdAdinfd.sOutEdu3[0] = '3' then
                      qrs_Wait3.Brush.Color := clBlack
                   else if mdAdinfd.sOutEdu3[0] = '4' then
                      qrs_Wait4.Brush.Color := clBlack
                   else
                      qrs_Wait4.Brush.Color := clBlack;

                   qrl_Waitetc.Caption := copy(mdAdinfd.sOutEdu3[0],2,length(mdAdinfd.sOutEdu3[0]));

                   if mdAdinfd.sOutEdu4[0] = '1' then qrs_Outedu31.Brush.Color := clBlack;   //보호자연락
                   if mdAdinfd.sOutEdu4[0] = '2' then qrs_Outedu32.Brush.Color := clBlack;

                   if mdAdinfd.sOutedu5[0] = '0' then qrs_Daesang1.Brush.Color := clBlack;   //교육대상
                   if mdAdinfd.sOutedu5[0] = '1' then qrs_Daesang2.Brush.Color := clBlack;
                   if mdAdinfd.sOutedu5[0] = '2' then qrs_Daesang3.Brush.Color := clBlack;

                   //수혈거부여부.kya.20150326.
                   if mdAdinfd.sBloodyn[0] = '1' then
                   begin
                      qrs_bloody.Brush.Color := clBlack;
                   end
                   else
                   if mdAdinfd.sBloodyn[0] = '2'  then
                   begin
                      qrs_bloodN.Brush.Color := clBlack;
                   end;
         
                   //기타.kya.20150326.
                   qrl_Culturetc.Caption :=  mdAdinfd.sCultueretc[0];

                   //지참약.kya.20151203.
                   if mdAdinfd.sBring[0] = 'Y' then qrs_bringY.Brush.Color := clBlack
                                               else qrs_bringN.Brush.Color := clBlack;
              end;

              // 기록지 스캔시 필수공통정보
              lb_patno.caption := sInPatno;
              lb_meddate.caption := ugd_RecodDt.Cells[1,ugd_RecodDt.Row];
              lb_dschdate.caption := ugd_RecodDt.Cells[5,ugd_RecodDt.Row];
              lb_patgubun.caption := 'I';
              lb_meddept.caption := ugd_RecodDt.Cells[6,ugd_RecodDt.Row];
              lb_chadr.caption := ugd_RecodDt.Cells[7,ugd_RecodDt.Row];

              mdPatinf.Free;
              mdInsamt.Free;
              mdAdinfd.Free;

              MNW921B3.QuickRep1.Print;
              MNW921B3.QuickRep2.Print;

              {
              MNW921B3.QuickRep1.Preview;
              MNW921B3.QuickRep2.Preview;
              }
              
              MNW921B3.Close;

              // G_USERID, G_USERIP
              UpdateRecord(sInPatno,sPk2,'empty','empty','empty' ,g_RecKind);

        end
    else if (g_RecKind='MDOBINFT') then // 간호정보조사지(산모) [16]
        begin

             sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
             sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 입원일자 'YYYYMMDD'

              mdObinfd := HmdObinfd.Create ;

              //이력조회.20181015.kya.
              RowNo := mdObinfd.SelObinfdll2(sInPatno,sPk2,''); // md_adinf_s2.pc  (환자번호, 입원일자,'')

                      // SYSTEM ERROR
              if RowNo = -1 then
              begin
                 mdobinfd.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end;

              // 조회건수 없음
              if RowNo = 0 then
              begin
                 mdobinfd.Free;
                 Exit;
              end;

              mdInsamt := HmdInsamt.Create;
              RowNo3   := mdInsamt.ListUserInfo('Y','1',mdObinfd.sRecnrs[0],'EB1'); // 간호사 코드주세요!  // MD_INSAM_L2

              // SYSTEM ERROR
              if RowNo3 = -1 then
              begin
                 mdInsamt.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end;

              // 조회건수 없음
              if RowNo3 = 0 then
              begin
                 mdInsamt.Free;
                 Exit;
              end;
              
              if MNW940B2 <> nil then MNW940B2.Close;
              Application.CreateForm(TMNW940B2, MNW940B2);

              with MNW940B2 do
                begin
                   qrl_PatNo.Caption :=ed_PatNo.Text;
                   qrl_patname.Caption := pn_PatName.Caption;
                   qrl_ci.Caption := copy(pn_ResNo.Caption,1,8) + '******';
                   qrl_sex.Caption := pn_SexAge.Caption;
                   qrl_chadr.Caption := ugd_RecodDt.Cells[2,ugd_RecodDt.Row]; // 주치의
                   qrl_meddept.Caption := mdobinfd.sMeddept[0]; // 진료과
                   qrl_ward.Caption := mdobinfd.sWardno[0] + '-' + mdobinfd.sRoomno[0];
                   qrl_admdate.Caption := ConvertSDate(sPk2);
                   qrl_Frecdate.Caption := mdobinfd.sFrecdate[0];   //최초기록일시

                   // 간호사명
                   qrl_nurse.Caption := mdInsamt.sEmpNm[0];
                   QRLabel214.Caption := mdInsamt.sEmpNm[0];
                   QRLabel243.Caption := mdInsamt.sEmpNm[0];
                   
                   qrl_Hname.Caption  := mdObinfd.sHname[0];       //남편이름
                   qrl_Hbirthdate.Caption := mdObinfd.sHbirthdate[0];;  //남편생일
                   case strtoint_nvl(mdObinfd.sHbldtype[0]) of  // 남편혈액형
                      1 : qrl_Hbldtype.Caption := 'A';
                      2 : qrl_Hbldtype.Caption := 'B';
                      3 : qrl_Hbldtype.Caption := 'AB';
                      4 : qrl_Hbldtype.Caption := 'O';
                    else
                          qrl_Hbldtype.Caption := '모름'
                    end;

                   qrl_icd.Caption := mdobinfd.sIcdname[0];   // 상병명

                   case strtoint_nvl(Copy(mdobinfd.sJob[0],1,2)) of  // 직업
                      1 : qrl_work.Caption := '회사원';
                      2 : qrl_work.Caption := '전문직';
                      3 : qrl_work.Caption := '주부';
                      4 : qrl_work.Caption := '학생';
                      5 : qrl_work.Caption := '군인';
                      6 : qrl_work.Caption := '무직';
                      7 : qrl_work.Caption := '자유업';
                      8 : qrl_work.Caption := copy(mdobinfd.sJob[0],3,length(mdobinfd.sJob[0]) - 2);
                      9 : qrl_work.Caption := '교사';
                     10 : qrl_work.Caption := '목회자';
                     11 : qrl_work.Caption := '상업';
                     12 : qrl_work.Caption := '기타';
                    else
                          qrl_work.Caption := '';
                    end;

                   case strtoint_nvl(mdobinfd.sInpoffe[0]) of  // 정보제공자
                      1 : qrl_inf.Caption := '환자';
                      2 : qrl_inf.Caption := '보호자';
                    else
                          qrl_inf.Caption := '';
                    end;

                   case strtoint_nvl(mdobinfd.sReligion[0]) of  // 종교
                      1 : qrl_ChType.Caption := '기독교';
                      2 : qrl_ChType.Caption := '천주교';
                      3 : qrl_ChType.Caption := '불교';
                      4 : qrl_ChType.Caption := '원불교';
                      5 : qrl_ChType.Caption := '무교';
                      6 : qrl_ChType.Caption := '천도교';
                    else
                          qrl_ChType.Caption := '';
                    end;

                   case strtoint_nvl(mdobinfd.sEducat[0]) of  // 교육수준
                      1 : qrl_adu.Caption := '무학';
                      2 : qrl_adu.Caption := '초등졸';
                      3 : qrl_adu.Caption := '중졸';
                      4 : qrl_adu.Caption := '고졸';
                      5 : qrl_adu.Caption := '대졸';
                      6 : qrl_adu.Caption := '대학원졸';
                      7 : qrl_adu.Caption := '기타';
                    else
                          qrl_adu.Caption := '';
                    end;

                   qrl_telno1.Caption := mdobinfd.sTelno1[0];
                   qrl_telno2.Caption := mdobinfd.sTelno2[0];

                   case strtoint_nvl(mdobinfd.sMerry[0]) of  // 결혼여부 / 자녀수
                      1 : qrl_merr.Caption := '기혼';
                      2 : qrl_merr.Caption := '미혼';
                      3 : qrl_merr.Caption := '사별';
                      4 : qrl_merr.Caption := '기타';
                    else
                          qrl_merr.Caption := '';
                    end;

                   qrl_merr.Caption := qrl_merr.Caption + '/' + mdobinfd.sChild[0]; // 결혼여부, 자녀수


                    case strtoint_nvl(copy(mdobinfd.sAdmcou[0],1,1)) of  // 입원경로
                      1 : qrl_admcou.Caption := '외래'+'(' + copy(mdobinfd.sAdmcou[0],2,length(mdobinfd.sAdmcou[0]) - 1) + ')';
                      2 : qrl_admcou.Caption := '응급'+'(' + copy(mdobinfd.sAdmcou[0],2,length(mdobinfd.sAdmcou[0]) - 1) + ')';
                      3 : qrl_admcou.Caption := copy(mdobinfd.sAdmcou[0],2,length(mdobinfd.sAdmcou[0]) - 1);
                    else
                          qrl_admcou.Caption := '';
                    end;

                    case strtoint_nvl(copy(mdobinfd.sadmmeth[0],1,1)) of  // 입원경로
                      1 : qrl_admmeth.Caption := '도보' + '(' +copy(mdobinfd.sadmmeth[0],2,length(mdobinfd.sadmmeth[0]) - 1)+ ')';
                      2 : qrl_admmeth.Caption := '휠체어' + '(' +copy(mdobinfd.sadmmeth[0],2,length(mdobinfd.sadmmeth[0]) - 1)+ ')';
                      3 : qrl_admmeth.Caption := '눕는차' + '(' +copy(mdobinfd.sadmmeth[0],2,length(mdobinfd.sadmmeth[0]) - 1)+ ')';
                      4 : qrl_admmeth.Caption := copy(mdobinfd.sadmmeth[0],2,length(mdobinfd.sadmmeth[0]) - 1);
                    else
                          qrl_admmeth.Caption := '';
                    end;


                     if mdobinfd.sArgyn[0] = '2' then
                     begin
                        qrs_argyn1.Brush.Color := clWhite;
                        qrs_argyn2.Brush.Color := clBlack;
                     end
                     else
                     if mdobinfd.sArgyn[0] = '1' then
                     begin
                        qrs_argyn1.Brush.Color := clBlack;
                        qrs_argyn2.Brush.Color := clWhite;
                     end
                     else
                     begin
                        qrs_argyn1.Brush.Color := clWhite;
                        qrs_argyn2.Brush.Color := clWhite;
                     end;
         
                   qrl_argdg.Caption := mdobinfd.sArgdg[0];
                   qrl_argfd.Caption := mdobinfd.sArgfd[0];
                   qrl_argetc.Caption := mdobinfd.sArgetc[0];

                   shcbx_pro(qrs_pthist1,copy(mdobinfd.sPthist[0],1,1));
                   shcbx_pro(qrs_pthist2,copy(mdobinfd.sPthist[0],2,1));
                   shcbx_pro(qrs_pthist3,copy(mdobinfd.sPthist[0],3,1));
                   shcbx_pro(qrs_pthist4,copy(mdobinfd.sPthist[0],4,1));
                   shcbx_pro(qrs_pthist5,copy(mdobinfd.sPthist[0],5,1));
                   
                   qrl_pthist.Caption := copy(mdobinfd.sPthist[0],6,55);

                   if strtoint_nvl(copy(mdobinfd.sDgstat[0],1,1)) = 2 then
                   begin
                      qrs_dgstat1.Brush.Color := clWhite;
                      qrs_dgstat2.Brush.Color := clBlack;
                   end
                   else
                   if strtoint_nvl(copy(mdobinfd.sDgstat[0],1,1)) = 1 then
                   begin
                      qrs_dgstat1.Brush.Color := clBlack;
                      qrs_dgstat2.Brush.Color := clWhite;
                   end
                   else
                   begin
                      qrs_dgstat1.Brush.Color := clWhite;
                      qrs_dgstat2.Brush.Color := clWhite;
                   end;
                   qrl_dgstat.Caption := copy(mdobinfd.sDgstat[0],2,50);

                   shcbx_pro(qrs_famcase1,copy(mdobinfd.sFamcase[0],1,1));
                   shcbx_pro(qrs_famcase2,copy(mdobinfd.sFamcase[0],2,1));
                   shcbx_pro(qrs_famcase3,copy(mdobinfd.sFamcase[0],3,1));
                   shcbx_pro(qrs_famcase4,copy(mdobinfd.sFamcase[0],4,1));
                   shcbx_pro(qrs_famcase5,copy(mdobinfd.sFamcase[0],5,1));
                   shcbx_pro(qrs_famcase6,copy(mdobinfd.sFamcase[0],6,1));

                   qrl_famcase.Caption := Trim(copy(mdobinfd.sFamcase[0],7,55));
                   qrl_famrela.Caption := mdobinfd.sfamrela[0];

                   if strtoint_nvl(copy(mdobinfd.sopyn[0],1,1)) = 2 then
                   begin
                      qrs_opyn2.Brush.Color := clBlack;
                   end
                   else
                   if strtoint_nvl(copy(mdobinfd.sopyn[0],1,1)) = 1 then
                   begin
                      qrs_opyn1.Brush.Color := clBlack;
                   end
                   else
                   begin
                      qrs_opyn1.Brush.Color := clWhite;
                      qrs_opyn2.Brush.Color := clWhite;
                   end;         
                   qrl_opnm.Caption := copy(mdobinfd.sopyn[0],2,249);

                   case strtoint_nvl(copy(mdobinfd.sPshist[0],1,1)) of  // 지남력-사람
                      1 : qrl_pshist1.Caption := '무';
                      2 : qrl_pshist1.Caption := '유';
                    else
                          qrl_pshist1.Caption := '';
                    end;
                   case strtoint_nvl(copy(mdobinfd.sPshist[0],2,1)) of  // 지남력-장소
                      1 : qrl_pshist2.Caption := '무';
                      2 : qrl_pshist2.Caption := '유';
                    else
                          qrl_pshist2.Caption := '';
                    end;
                   case strtoint_nvl(copy(mdobinfd.sPshist[0],3,1)) of  // 지남력-시간
                      1 : qrl_pshist3.Caption := '무';
                      2 : qrl_pshist3.Caption := '유';
                    else
                          qrl_pshist3.Caption := '';
                    end;

                   //의식상태.20150326. kya.
                   if mdobinfd.sCondst[0] = '1' then
                   begin
                      qrl_condst.Caption := '명료'
                   end
                   else
                   if mdobinfd.sCondst[0] = '2'then
                   begin
                      qrl_condst.Caption := '혼돈'
                   end
                   else
                   if mdobinfd.sCondst[0] = '3' then
                   begin
                      qrl_condst.Caption := '반의식'
                   end
                   else
                   if mdobinfd.sCondst[0] = '4' then
                   begin
                      qrl_condst.Caption := '무의식'
                   end
                   else
                      qrl_condst.Caption := '';


                   //의사소통. 20150326. kya.
                   //qrl_concom.Caption := combx_concom.Text;
                   if mdobinfd.sConcom[0] = '1' then
                   begin
                      qrl_concom.caption := '원만'
                   end
                   else
                   if mdobinfd.sConcom[0] = '2' then
                   begin
                      qrl_concom.caption := '곤란'
                   end
                   else
                   if mdobinfd.sConcom[0] = '3' then
                   begin
                      qrl_concom.caption := '불가능'
                   end
                   else
                      qrl_concom.caption := '';

                   shcbx_pro(qrs_feelst1,copy(mdobinfd.sfeelst[0],1,1));
                   shcbx_pro(qrs_feelst2,copy(mdobinfd.sfeelst[0],2,1));
                   shcbx_pro(qrs_feelst3,copy(mdobinfd.sfeelst[0],3,1));
                   shcbx_pro(qrs_feelst4,copy(mdobinfd.sfeelst[0],4,1));
                   shcbx_pro(qrs_feelst5,copy(mdobinfd.sfeelst[0],5,1));
                   shcbx_pro(qrs_feelst6,copy(mdobinfd.sfeelst[0],6,1));
                   shcbx_pro(qrs_feelst7,copy(mdobinfd.sfeelst[0],7,1));
                   shcbx_pro(qrs_feelst8,copy(mdobinfd.sfeelst[0],8,1));

                   shcbx_pro(qrs_circst1,copy(mdobinfd.scircst[0],1,1));
                   shcbx_pro(qrs_circst2,copy(mdobinfd.scircst[0],2,1));
                   shcbx_pro(qrs_circst3,copy(mdobinfd.scircst[0],3,1));
                   shcbx_pro(qrs_circst4,copy(mdobinfd.scircst[0],4,1));
                   shcbx_pro(qrs_circst5,copy(mdobinfd.scircst[0],5,1));
                   shcbx_pro(qrs_circst6,copy(mdobinfd.scircst[0],6,1));
                   shcbx_pro(qrs_circst7,copy(mdobinfd.scircst[0],7,1));
                   shcbx_pro(qrs_circst8,copy(mdobinfd.scircst[0],8,1)); //순환기 유추가.20150430.kya.

                   shcbx_pro(qrs_respst1,copy(mdobinfd.srespst[0],1,1));
                   shcbx_pro(qrs_respst2,copy(mdobinfd.srespst[0],2,1));
                   shcbx_pro(qrs_respst3,copy(mdobinfd.srespst[0],3,1));
                   shcbx_pro(qrs_respst4,copy(mdobinfd.srespst[0],4,1));
                   shcbx_pro(qrs_respst5,copy(mdobinfd.srespst[0],5,1));
                   shcbx_pro(qrs_respst6,copy(mdobinfd.srespst[0],6,1));
                   shcbx_pro(qrs_respst7,copy(mdobinfd.srespst[0],7,1));
                   shcbx_pro(qrs_respst8,copy(mdobinfd.srespst[0],8,1));   //호흡기 유추가.20150430.kya.

                   shcbx_pro(qrs_dietst1,copy(mdobinfd.sDiest[0],1 ,1));
                   shcbx_pro(qrs_dietst2,copy(mdobinfd.sDiest[0],2 ,1));
                   shcbx_pro(qrs_dietst3,copy(mdobinfd.sDiest[0],3 ,1));
                   shcbx_pro(qrs_dietst4,copy(mdobinfd.sDiest[0],4 ,1));
                   shcbx_pro(qrs_dietst5,copy(mdobinfd.sDiest[0],5 ,1));
                   shcbx_pro(qrs_dietst6,copy(mdobinfd.sDiest[0],6 ,1));
                   shcbx_pro(qrs_dietst7,copy(mdobinfd.sDiest[0],7 ,1));
                   shcbx_pro(qrs_dietst8,copy(mdobinfd.sDiest[0],8 ,1));
                   shcbx_pro(qrs_dietst9,copy(mdobinfd.sDiest[0],9 ,1));
                   shcbx_pro(qrs_dietst10,copy(mdobinfd.sDiest[0],10 ,1));
                   shcbx_pro(qrs_dietst11,copy(mdobinfd.sDiest[0],11 ,1));  //소화기 유추가.20150430.kya.
                   
                   shcbx_pro(qrs_pain1,copy(mdobinfd.sPain[0],1 ,1));
                   shcbx_pro(qrs_pain2,copy(mdobinfd.sPain[0],2 ,1));
                   shcbx_pro(qrs_pain3,copy(mdobinfd.sPain[0],3 ,1));
                   shcbx_pro(qrs_pain4,copy(mdobinfd.sPain[0],4 ,1));
                   shcbx_pro(qrs_pain5,copy(mdobinfd.sPain[0],5 ,1));
                   shcbx_pro(qrs_pain6,copy(mdobinfd.sPain[0],6 ,1));
                   shcbx_pro(qrs_pain7,copy(mdobinfd.sPain[0],7 ,1));
                   shcbx_pro(qrs_pain8,copy(mdobinfd.sPain[0],8 ,1));
                   shcbx_pro(qrs_pain9,copy(mdobinfd.sPain[0],9 ,1));
                   shcbx_pro(qrs_pain10,copy(mdobinfd.sPain[0],10 ,1));
                   shcbx_pro(qrs_pain11,copy(mdobinfd.sPain[0],11 ,1));
                   shcbx_pro(qrs_pain12,copy(mdobinfd.sPain[0],12 ,1)); //통증 유추가. 20150430.kya.

                   shcbx_pro(qrs_palsy1,copy(mdobinfd.sPalsy[0],1 ,1));
                   shcbx_pro(qrs_palsy2,copy(mdobinfd.sPalsy[0],2 ,1));
                   shcbx_pro(qrs_palsy3,copy(mdobinfd.sPalsy[0],3 ,1));
                   shcbx_pro(qrs_palsy4,copy(mdobinfd.sPalsy[0],4 ,1));
                   shcbx_pro(qrs_palsy5,copy(mdobinfd.sPalsy[0],5 ,1));  //마비 유추가. 20150430.kya.

                   shcbx_pro(qrs_support1,copy(mdobinfd.sSupport[0],1 ,1));
                   shcbx_pro(qrs_support2,copy(mdobinfd.sSupport[0],2 ,1));
                   shcbx_pro(qrs_support3,copy(mdobinfd.sSupport[0],3 ,1));
                   shcbx_pro(qrs_support4,copy(mdobinfd.sSupport[0],4 ,1));
                   shcbx_pro(qrs_support5,copy(mdobinfd.sSupport[0],5 ,1));
                   shcbx_pro(qrs_support7,copy(mdobinfd.sSupport[0],6 ,1));                    
                   shcbx_pro(qrs_support7,copy(mdobinfd.sSupport[0],7 ,1)); //보조기구 유추가. 20150430.kya.
                   qrl_support.Caption :=  copy(mdObinfd.sSupport[0],8,length(mdObinfd.sSupport[0])-7);

                   shcbx_pro(qrs_skin1,copy(mdobinfd.sSkin[0],1 ,1));
                   shcbx_pro(qrs_skin2,copy(mdobinfd.sSkin[0],2 ,1));
                   shcbx_pro(qrs_skin3,copy(mdobinfd.sSkin[0],3 ,1));
                   shcbx_pro(qrs_skin4,copy(mdobinfd.sSkin[0],4 ,1));
                   shcbx_pro(qrs_skin5,copy(mdobinfd.sSkin[0],5 ,1));
                   shcbx_pro(qrs_skin6,copy(mdobinfd.sSkin[0],6 ,1));   //피부색깔 정상,비정상 추가. 20150430. kya.

                   shcbx_pro(qrs_eyest1,copy(mdobinfd.sEyest[0],1 ,1));
                   shcbx_pro(qrs_eyest2,copy(mdobinfd.sEyest[0],2 ,1));
                   shcbx_pro(qrs_eyest3,copy(mdobinfd.sEyest[0],3 ,1));
                   shcbx_pro(qrs_eyest4,copy(mdobinfd.sEyest[0],4 ,1));
                   qrl_eyest.Caption := copy(mdObinfd.sEyest[0],5,length(mdObinfd.sEyest[0])-4);

                   shcbx_pro(qrs_earst1,copy(mdobinfd.searst[0],1 ,1));
                   shcbx_pro(qrs_earst2,copy(mdobinfd.searst[0],2 ,1));
                   shcbx_pro(qrs_earst3,copy(mdobinfd.searst[0],3 ,1));
                   shcbx_pro(qrs_earst4,copy(mdobinfd.searst[0],4 ,1));
                   shcbx_pro(qrs_earst5,copy(mdobinfd.searst[0],5 ,1)); //청각 유,좌,우 추가. 20150430. kya.

                   shcbx_pro(qrs_neost1,copy(mdobinfd.sNeost[0],1 ,1));
                   shcbx_pro(qrs_neost2,copy(mdobinfd.sNeost[0],2 ,1));
                   shcbx_pro(qrs_neost3,copy(mdobinfd.sNeost[0],3 ,1));
                   shcbx_pro(qrs_neost4,copy(mdobinfd.sNeost[0],4 ,1));
                   shcbx_pro(qrs_neost5,copy(mdobinfd.sNeost[0],5 ,1));
                   shcbx_pro(qrs_neost6,copy(mdobinfd.sNeost[0],6 ,1));
                   shcbx_pro(qrs_neost7,copy(mdobinfd.sNeost[0],7 ,1));
                   qrl_neost.Caption  := copy(mdObinfd.sNeost[0],8,length(mdObinfd.sNeost[0])-7);

                     //산과정보
                     shcbx_pro(qrs_Preexam1,copy(mdObinfd.sPreexam[0],1,1));
                     shcbx_pro(qrs_Preexam2,copy(mdObinfd.sPreexam[0],2,1));

                     case strtoint_nvl(mdObinfd.sPreexamy[0]) of
                        1 : qrl_Preexam.Caption := '정기적';
                        2 : qrl_Preexam.Caption := '간헐적';
                      else
                            qrl_Preexam.Caption := '';
                      end;

                     shcbx_pro(qrs_Preexam3,copy(mdObinfd.sPreexam[0],3,1));
                     shcbx_pro(qrs_Preexam4,copy(mdObinfd.sPreexam[0],4,1));
                     qrl_Preexam1.Caption := mdObinfd.sPreexamo[0]; // 타병원
                     qrl_Preexam2.Caption := mdObinfd.sPreexamd[0]; // 최종진찰일
                     
                     qrl_Obhist1.Caption := mdObinfd.sObhist1[0]; // LMP
                     qrl_Obhist2.Caption := mdObinfd.sObhist2[0]; // EDC
                     qrl_Obhist3.Caption := mdObinfd.sObhist3[0]; // 임신주수
                     
                     shcbx_pro(qrs_Fasting1,copy(mdObinfd.sFasting[0],1,1));  // 금식여부
                     shcbx_pro(qrs_Fasting2,copy(mdObinfd.sFasting[0],2,1));
                     qrl_Fasting.Caption := copy(mdObinfd.sFasting[0],3,length(mdObinfd.sFasting[0])-2);

                     shcbx_pro(qrs_Show1,copy(mdObinfd.sShow[0],1,1));  // 이슬(show)
                     shcbx_pro(qrs_Show2,copy(mdObinfd.sShow[0],2,1));  // 
                     qrl_Show.Caption := copy(mdObinfd.sShow[0],3,length(mdObinfd.sShow[0])-2);

                     shcbx_pro(qrs_Rom1,copy(mdObinfd.sRom[0],1,1));  // 파수(rom)
                     shcbx_pro(qrs_Rom2,copy(mdObinfd.sRom[0],2,1));
                     qrl_Rom.Caption := copy(mdObinfd.sRom[0],3,length(mdObinfd.sRom[0])-2);
                     shcbx_pro(qrs_Obpain1,copy(mdObinfd.sObpain[0],1,1)); // 진통(pain)
                     shcbx_pro(qrs_Obpain2,copy(mdObinfd.sObpain[0],2,1));
                     qrl_Obpain.Caption := copy(mdObinfd.sObpain[0],3,length(mdObinfd.sObpain[0])-2);
                     shcbx_pro(qrs_Fhr1,copy(mdObinfd.sFhr[0],1,1));  // 태아심음(fhr)
                     shcbx_pro(qrs_Fhr2,copy(mdObinfd.sFhr[0],2,1));
                     qrl_Fhr.Caption := copy(mdObinfd.sFhr[0],3,length(mdObinfd.sFhr[0])-2);
                     qrl_Menache1.Caption := mdObinfd.sMenache1[0]; //초경
                     qrl_Menache2.Caption := mdObinfd.sMenache2[0];
                     qrl_Menache3.Caption := mdObinfd.sMenache3[0];
                     shcbx_pro(qrs_Mens1,copy(mdObinfd.sMens[0],1,1)); // 월경량
                     shcbx_pro(qrs_Mens2,copy(mdObinfd.sMens[0],2,1));
                     shcbx_pro(qrs_Mens3,copy(mdObinfd.sMens[0],3,1));
                     shcbx_pro(qrs_Menspain1,copy(mdObinfd.sMenspain[0],1,1)); //생리통
                     shcbx_pro(qrs_Menspain2,copy(mdObinfd.sMenspain[0],2,1));
                     shcbx_pro(qrs_Menspain3,copy(mdObinfd.sMenspain[0],3,1));
                     shcbx_pro(qrs_Daeha1,copy(mdObinfd.sDaeha[0],1,1)); // 대하
                     shcbx_pro(qrs_Daeha2,copy(mdObinfd.sDaeha[0],2,1));
                     shcbx_pro(qrs_Daeha3,copy(mdObinfd.sDaeha[0],3,1));
                     
                   if mdobinfd.ssleep[0] = 'Y' then
                   begin
                      qrs_sleep2.brush.color := clBlack;
                   end
                   else
                   begin
                      qrs_sleep1.brush.color := clBlack;
                   end;

                   if mdobinfd.ssleepdg[0] = 'Y' then
                   begin
                      qrs_sleepdg2.brush.color := clBlack;
                   end
                   else
                   begin
                      qrs_sleepdg1.brush.color := clBlack;
                   end;

                   qrl_drink.Caption := mdobinfd.sDrink[0];


                   qrl_tabaco.Caption := mdobinfd.sTabaco[0];      //흡연량
         
                   //급성심근경색증(흡연구분,금연교육) KimDaeYong 2008-06-12
                   if mdobinfd.sTabacoflag[0] = '1' then      //흡연구분
                      qrs_Tabaco.brush.color := clBlack
                   else if mdobinfd.sTabacoflag[0] = '2' then
                      qrs_noTabaco.brush.color := clBlack
                   else
                      qrs_pastTabaco.brush.color := clBlack;

                   if mdobinfd.sEdutabaco[0] = 'Y' then       //금연교육
                      qrs_eduTabaco.brush.color := clBlack;
                      
                  // 4. 입원시간호및 교육내용
                  shcbx_pro(qrs_edu1,copy(mdObinfd.sInedu[0],1,1));
                  if copy(mdObinfd.sInedu[0],2,1) ='1' then
                     qrs_edu2.brush.color := clblack
                  else
                     qrs_edu2.brush.color := clwhite;
                  shcbx_pro(qrs_edu21,copy(mdObinfd.sInedu[0],3,1));
                  shcbx_pro(qrs_edu22,copy(mdObinfd.sInedu[0],4,1));
                  shcbx_pro(qrs_edu23,copy(mdObinfd.sInedu[0],5,1));
                  shcbx_pro(qrs_edu24,copy(mdObinfd.sInedu[0],6,1));
                  shcbx_pro(qrs_edu25,copy(mdObinfd.sInedu[0],7,1));
                  shcbx_pro(qrs_edu26,copy(mdObinfd.sInedu[0],8,1));
                  shcbx_pro(qrs_edu27,copy(mdObinfd.sInedu[0],9,1));
                  shcbx_pro(qrs_edu28,copy(mdObinfd.sInedu[0],10,1));
                  shcbx_pro(qrs_edu29,copy(mdObinfd.sInedu[0],11,1));
                  shcbx_pro(qrs_edu30,copy(mdObinfd.sInedu[0],12,1));
                 if copy(mdObinfd.sInedu[0],13,1) ='1' then
                     qrs_edu3.brush.color := clblack
                  else
                     qrs_edu3.brush.color := clwhite;

                  shcbx_pro(qrs_edu31,copy(mdObinfd.sInedu[0],14,1));
                  shcbx_pro(qrs_edu32,copy(mdObinfd.sInedu[0],15,1));
                  shcbx_pro(qrs_edu33,copy(mdObinfd.sInedu[0],16,1));
                  shcbx_pro(qrs_edu34,copy(mdObinfd.sInedu[0],17,1));
                  shcbx_pro(qrs_edu35,copy(mdObinfd.sInedu[0],18,1));
                  shcbx_pro(qrs_edu36,copy(mdObinfd.sInedu[0],19,1));
                  
                  if copy(mdObinfd.sInedu[0],20,1) ='1' then
                     qrs_edu4.brush.color := clblack
                  else
                     qrs_edu4.brush.color := clwhite;
                     
                  shcbx_pro(qrs_edu41,copy(mdObinfd.sInedu[0],21,1));
                  shcbx_pro(qrs_edu42,copy(mdObinfd.sInedu[0],22,1));                  
                  shcbx_pro(qrs_edu5,copy(mdObinfd.sInedu[0],23,1));
                  shcbx_pro(qrs_edu7,copy(mdObinfd.sInedu[0],25,1));
                  shcbx_pro(qrs_edu8,copy(mdObinfd.sInedu[0],26,1));
                  shcbx_pro(qrs_edu9,copy(mdObinfd.sInedu[0],27,1));

                  //환잔안전교육
                  shcbx_pro(qrs_Safeedu1,copy(mdObinfd.sInedu[0],28,1));
                  shcbx_pro(qrs_Safeedu2,copy(mdObinfd.sInedu[0],29,1));
                  shcbx_pro(qrs_Safeedu3,copy(mdObinfd.sInedu[0],30,1));
                  shcbx_pro(qrs_Safeedu4,copy(mdObinfd.sInedu[0],31,1));
                  shcbx_pro(qrs_Safeedu5,copy(mdObinfd.sInedu[0],32,1));
                  shcbx_pro(qrs_edu311,copy(mdObinfd.sInedu[0],33,1));
                  
                   qrme_AdmovDet.Lines.Clear;
                   qrme_AdmovDet.Lines.Add(mdobinfd.sAdmreason[0]); //입원동기

                   qrl_addr.caption := pn_Address.caption;

                   if copy(mdobinfd.sAdmlast[0],1,1) = '2' then        // 입원력
                   begin
                      qrl_admlast.Caption := Trim(copy(mdobinfd.sAdmlast[0],2 ,length(mdobinfd.sAdmlast[0])));
                      qrs_admlast2.brush.color := clBlack;
                   end
                   else
                   if copy(mdobinfd.sAdmlast[0],1,1) = '1' then
                   begin
                      qrl_admlast.Caption := '무';
                      qrs_admlast1.brush.color := clBlack;
                   end
                   else
                   begin
                      qrl_admlast.Caption := '';
                      qrs_admlast1.brush.color := clBlack;
                   end;

                   // 기형
                   shcbx_pro(qrs_deformt1,copy(mdobinfd.sDeformt[0],1,1));
                   shcbx_pro(qrs_deformt2,copy(mdobinfd.sDeformt[0],2,1));
                   // 대변
                   shcbx_pro(qrs_feceskd1,copy(mdobinfd.sFeceskd[0],1,1));
                   shcbx_pro(qrs_feceskd2,copy(mdobinfd.sFeceskd[0],2,1));
                   shcbx_pro(qrs_feceskd3,copy(mdobinfd.sFeceskd[0],3,1));
                   shcbx_pro(qrs_feceskd4,copy(mdobinfd.sFeceskd[0],4,1));
                   qrl_stool.Caption := Trim(mdobinfd.sstool[0]);


                   // 소변
                   shcbx_pro(qrs_urinkd1,copy(mdObinfd.sUrinkd[0],1,1));
                   shcbx_pro(qrs_urinkd2,copy(mdObinfd.sUrinkd[0],2,1));
                   shcbx_pro(qrs_urinkd3,copy(mdObinfd.sUrinkd[0],3,1));
                   shcbx_pro(qrs_urinkd4,copy(mdObinfd.sUrinkd[0],4,1));
                   qrl_urineCnt.Caption := copy(mdObinfd.sUrinkd[0],5,length(mdObinfd.sUrinkd[0])-4);

                   // 소변
                   shcbx_pro(qrs_urinst1,copy(mdObinfd.sUrinst[0],1,1));
                   shcbx_pro(qrs_urinst2,copy(mdObinfd.sUrinst[0],2,1));
                   shcbx_pro(qrs_urinst3,copy(mdObinfd.sUrinst[0],3,1));
                   shcbx_pro(qrs_urinst4,copy(mdObinfd.sUrinst[0],4,1));
                   shcbx_pro(qrs_urinst5,copy(mdObinfd.sUrinst[0],5,1));
                   shcbx_pro(qrs_urinst6,copy(mdObinfd.sUrinst[0],6,1));
                   shcbx_pro(qrs_urinst7,copy(mdObinfd.sUrinst[0],7,1));
                   shcbx_pro(qrs_urinst8,copy(mdObinfd.sUrinst[0],8,1));

                   //신경근육
                   shcbx_pro(qrs_nerves1,copy(mdObinfd.sNerves[0],1,1));
                   shcbx_pro(qrs_nerves2,copy(mdObinfd.sNerves[0],2,1));
                   shcbx_pro(qrs_nerves3,copy(mdObinfd.sNerves[0],3,1));
                   qrl_nerves.Caption := copy(mdObinfd.sNerves[0],4,length(mdObinfd.sNerves[0])-3);

                   // 피부상태
                   shcbx_pro(qrs_skinst1,copy(mdObinfd.sSkinst[0],1,1));
                   shcbx_pro(qrs_skinst2,copy(mdObinfd.sSkinst[0],2,1));
                   shcbx_pro(qrs_skinst3,copy(mdObinfd.sSkinst[0],3,1));
                   shcbx_pro(qrs_skinst4,copy(mdObinfd.sSkinst[0],4,1));
                   shcbx_pro(qrs_skinst5,copy(mdObinfd.sSkinst[0],5,1));
                   shcbx_pro(qrs_skinst6,copy(mdObinfd.sSkinst[0],6,1));
                   shcbx_pro(qrs_skinst7,copy(mdObinfd.sSkinst[0],7,1));
                   shcbx_pro(qrs_skinst8,copy(mdObinfd.sSkinst[0],8,1));
                   shcbx_pro(qrs_skinst9,copy(mdObinfd.sSkinst[0],9,1));
                   shcbx_pro(qrs_skinst10,copy(mdObinfd.sSkinst[0],10,1));
                   shcbx_pro(qrs_skinst11,copy(mdObinfd.sSkinst[0],11,1));
                   shcbx_pro(qrs_skinst12,copy(mdObinfd.sSkinst[0],12,1));
                   shcbx_pro(qrs_skinst13,copy(mdObinfd.sSkinst[0],13,1));
                   qrl_skinst.Caption :=copy(mdObinfd.sNerves[0],14,length(mdObinfd.sNerves[0])-13);

                    qrl_birth.Caption := mdObinfd.sBirth[0]; // 출산력!
                    qrl_preWeight.Caption := mdObinfd.sPreweight[0];
                    qrl_postWeight.Caption :=mdObinfd.sPostweight[0];

                   case strtoint_nvl(mdobinfd.sActivest[0]) of  // 활동상태
                      1 : qrl_Activest.Caption := '스스로 능동적 운동 가능';
                      2 : qrl_Activest.Caption := '부분적인 도움이나 보조기구 이용';
                      3 : qrl_Activest.Caption := '침상 내에서 부분적인 도움으로 수동적 운동';
                      4 : qrl_Activest.Caption := '부동상태에서 전적의존의 수동적 운동 혹은 체위변경';
                    else
                          qrl_Activest.Caption := '';
                    end;

                   qrl_sleeptm.Caption := mdobinfd.sSleephr[0]; // 수면시간
                   qrl_bodytemp.Caption := mdobinfd.sBodytemp[0];   // 체온
                   qrl_pulse.Caption    := mdobinfd.sPulse[0];   // 맥박
                   ed_respcnt.Caption   := mdobinfd.sRespcnt[0];   // 호흡
                   qrl_bldprehi.Caption := mdobinfd.sBldprehi[0]+'/'+mdobinfd.sBldprelo[0];;   // 혈압
                   qrl_height.Caption   := mdobinfd.sHeight[0];   // 신장

                   case strtoint_nvl(mdobinfd.sBldtype[0]) of  // 혈액형
                      1 : qrl_bldtype.Caption := 'A';
                      2 : qrl_bldtype.Caption := 'B';
                      3 : qrl_bldtype.Caption := 'AB';
                      4 : qrl_bldtype.Caption := 'O';
                    else
                          qrl_bldtype.Caption := '모름'
                    end;

                     if strtoint_nvl(mdobinfd.sAppetite[0]) = 1 then       // 식욕
                     begin
                        qrs_eat1.Brush.Color := clBlack;
                     end
                     else
                     if strtoint_nvl(mdobinfd.sAppetite[0]) = 2then
                     begin
                        qrs_eat2.Brush.Color := clBlack;
                     end
                     else
                     if strtoint_nvl(mdobinfd.sAppetite[0]) = 3 then
                     begin
                        qrs_eat3.Brush.Color := clBlack;
                     end
                     else
                     begin
                        qrs_eat1.Brush.Color := clWhite;
                        qrs_eat2.Brush.Color := clWhite;
                        qrs_eat3.Brush.Color := clWhite;
                     end;

                     if strtoint_nvl(mdobinfd.sWetchg[0]) = 1 then       // 식욕
                     begin
                        qrs_wetchg2.Brush.Color := clBlack;
                     end
                     else
                     if strtoint_nvl(mdobinfd.sWetchg[0]) = 2 then
                     begin
                        qrs_wetchg3.Brush.Color := clBlack;
                     end
                     else
                     if strtoint_nvl(mdobinfd.sWetchg[0]) = 3 then
                     begin
                        qrs_wetchg1.Brush.Color := clBlack;
                     end
                     else
                     begin
                        qrs_wetchg1.Brush.Color := clWhite;
                        qrs_wetchg2.Brush.Color := clWhite;
                        qrs_wetchg3.Brush.Color := clWhite;
                     end;

                     QRLabel243.Caption := mdInsamt.sEmpNm[0];


                   //==============간호정보조사지 출력물 추가, KimDaeYong 2011-07-05======================//
                   qrl_Frecdate.Caption := mdobinfd.sFrecdate[0];   //최초기록일시

                   // 2011.02 인증 추가
                   if trim(mdobinfd.sNation[0]) = '대한민국' then //국적
                      qrl_Nation.Caption := '대한민국'
                   else
                   begin
                      qrl_Nation.Caption := mdobinfd.sNation[0];
                   end;

                   case strtoint_nvl(mdobinfd.sRace[0]) of  // 인종
                      1 : qrl_Race.Caption := '황인종';
                      2 : qrl_Race.Caption := '백인종';
                      3 : qrl_Race.Caption := '흑인종';
                    else
                          qrl_Race.Caption := ''
                    end;
                   case strtoint_nvl(mdobinfd.sPay[0]) of  //진료비지불능력
                      1 : qrl_Pay.Caption := '있음';
                      2 : qrl_Pay.Caption := '없음';
                    else
                          qrl_Pay.Caption := ''
                    end;
                   case strtoint_nvl(mdobinfd.sBokji[0]) of  ////사회복지상담
                      1 : qrl_Bokji.Caption := '필요';
                      2 : qrl_Bokji.Caption := '불필요';
                    else
                          qrl_Bokji.Caption := ''
                    end;
                   case strtoint_nvl(mdobinfd.sKnow[0]) of  //병인식여부
                      1 : qrl_Know.Caption := '있음';
                      2 : qrl_Know.Caption := '없음';
                    else
                          qrl_Know.Caption := ''
                    end;

                   qrl_Arganti.Caption := mdobinfd.sArganti[0];    //알레르기 항생제

                   if strtoint_nvl(mdobinfd.sDysphagia[0]) = 1 then qrs_dysphagia1.Brush.Color := clBlack;   //연하곤란
                   if strtoint_nvl(mdobinfd.sDysphagia[0]) = 2 then qrs_dysphagia2.Brush.Color := clBlack;

                   case strtoint_nvl(mdobinfd.sStress[0]) of  //대사적스트레스 정도
                      1 : qrl_Stress.Caption := '해당 사항 없음';
                      2 : qrl_Stress.Caption := '골반골절로 치료중인 자';
                      3 : qrl_Stress.Caption := '만성폐쇄성폐질환의 급성학화기 상태인자';
                      4 : qrl_Stress.Caption := '조절되지 않는 대량복수나 간성뇌증을 동반한 간경변증 환자';
                      5 : qrl_Stress.Caption := '항암화학요법을 위해 입원한 자';
                      6 : qrl_Stress.Caption := '경부나 흉부, 복부의 방사선 치료를 위해 입원한 자';
                      7 : qrl_Stress.Caption := '신 기능 부전으로 혈액투석이나 복막투석 치료중인 자';
                      8 : qrl_Stress.Caption := '개복 또는 개흉 수술 후 3일 이상 금식중인 자';
                      9 : qrl_Stress.Caption := '입원치료를 요하는 급성 뇌경색 환자';
                      10: qrl_Stress.Caption := '중증 폐렴으로 인해 산소공급을 요하여 침상안정이 필요한 자';
                      11: qrl_Stress.Caption := '중환자실에서 인공호흡기 치료를 요하는 자';                      
                    else
                          qrl_Stress.Caption := '' ;
                    end;
         
                   qrm_Etc.Lines.Text := mdObinfd.sIneduetc[0];   //기타교육사항
         
                   //5.초기퇴원계획
                   if strtoint_nvl(mdobinfd.sOutEdu1[0]) = 1 then qrs_Outedu11.Brush.Color := clBlack;   //보호자거주유무
                   if strtoint_nvl(mdobinfd.sOutEdu1[0]) = 2 then qrs_Outedu12.Brush.Color := clBlack;
                   if strtoint_nvl(mdobinfd.sOutEdu2[0]) = 1 then qrs_Outedu21.Brush.Color := clBlack;   //간병인유무
                   if strtoint_nvl(mdobinfd.sOutEdu2[0]) = 2 then qrs_Outedu22.Brush.Color := clBlack;

                   if mdobinfd.sOutEdu3[0] = '1' then
                      qrs_Wait1.Brush.Color := clBlack
                   else if mdobinfd.sOutEdu3[0] = '2' then
                      qrs_Wait2.Brush.Color := clBlack
                   else if mdobinfd.sOutEdu3[0] = '3' then
                      qrs_Wait3.Brush.Color := clBlack
                   else if mdobinfd.sOutEdu3[0] = '4' then
                      qrs_Wait4.Brush.Color := clBlack;

                   qrl_Waitetc.Caption := mdObinfd.sOutedu3etc[0];

                   if mdobinfd.sOutEdu4[0] = '1' then qrs_Outedu31.Brush.Color := clBlack;   //보호자연락
                   if mdobinfd.sOutEdu4[0] = '2' then qrs_Outedu32.Brush.Color := clBlack;

                   if mdObinfd.sOutedu5[0] = '0' then qrs_Daesang1.Brush.Color := clBlack;   //교육대상
                   if mdobinfd.sOutedu5[0] = '1' then qrs_Daesang2.Brush.Color := clBlack;
                   if mdobinfd.sOutedu5[0] = '2' then qrs_Daesang3.Brush.Color := clBlack;

                   //수혈거부여부.kya.20150326.
                   if mdobinfd.sBloodyn[0] = '1' then
                   begin
                      qrs_bloody.Brush.Color := clBlack;
                   end
                   else
                   if mdobinfd.sBloodyn[0] = '2'  then
                   begin
                      qrs_bloodN.Brush.Color := clBlack;
                   end;
         
                   //기타.kya.20150326.
                   qrl_Culturetc.Caption :=  mdobinfd.sCultueretc[0];

                   //지참약.kya.20151203.
                   if mdobinfd.sBring[0] = 'Y' then qrs_bringY.Brush.Color := clBlack
                                               else qrs_bringN.Brush.Color := clBlack;
              end;

              // 기록지 스캔시 필수공통정보
              lb_patno.caption := sInPatno;
              lb_meddate.caption := ugd_RecodDt.Cells[1,ugd_RecodDt.Row];
              lb_dschdate.caption := ugd_RecodDt.Cells[5,ugd_RecodDt.Row];
              lb_patgubun.caption := 'I';
              lb_meddept.caption := ugd_RecodDt.Cells[6,ugd_RecodDt.Row];
              lb_chadr.caption := ugd_RecodDt.Cells[4,ugd_RecodDt.Row];

              mdInsamt.Free;
              mdObinfd.Free;

              MNW940B2.QuickRep1.Print;
              MNW940B2.QuickRep2.Print;
              
              {
              MNW940B2.QuickRep1.Preview;
              MNW940B2.QuickRep2.Preview;
              }
              MNW940B2.Close;
              // G_USERID, G_USERIP
              UpdateRecord(sInPatno,sPk2,'empty','empty','empty' ,g_RecKind);
      end
    else if (g_RecKind='MDVITALT') then // V/S측정기록 [23]
        begin

                 sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
                 sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 입원일자 'YYYYMMDD'

                 // V/S측정기록지                 
                 RowNo := mdrecodt.ListRecordData(g_RecKind,sInPatno,sPk2);
                 
                // system error messae
                if RowNo = -1 then
                begin
                   ShowErrMsg(stb_Message);
                   mdrecodt.Free;
                   Exit;
                end
                else
                if RowNo = 0 then
                begin
                   stb_Message.Panels[0].text := '';
                   mdrecodt.Free;
                   Exit;
                end;
                
                    with ugd_allList do
                      begin
                         RowCount := RowNo;
                         for i:= 0 to RowNo - 1 do
                         begin
                            Cells[0,i] := mdrecodt.O_sResult1[i]; // 측정시간
                            Cells[1,i] := mdrecodt.O_sResult2[i];  //  체온
                            Cells[2,i] := mdrecodt.O_sResult3[i];  //  맥박    
                            Cells[3,i] := mdrecodt.O_sResult4[i];  //  호흡
                            Cells[4,i] := mdrecodt.O_sResult5[i];  // 수축기혈압
                            Cells[5,i] := mdrecodt.O_sResult6[i];  // 이완기혈압
                            Cells[6,i] := mdrecodt.O_sResult7[i];  // STOOL CNT
                            Cells[7,i] := mdrecodt.O_sResult8[i];  // STOOL STATE
                            Cells[8,i] := mdrecodt.O_sResult9[i];  // SAT 산소포화도
                            Cells[9,i] := mdrecodt.O_sResult10[i];  // Consciousness 의식상태 
                         end;
                      end;

                    if MDF120F1_P01 <> nil then MDF120F1_P01.Close;
                    Application.CreateForm(TMDF120F1_P01, MDF120F1_P01);

                    with MDF120F1_P01 do
                      begin
                         qrlb_PatNo.Caption :=ed_PatNo.Text;
                         qrlb_patname.Caption := pn_PatName.Caption;
                         qrl_ci.Caption := copy(pn_ResNo.Caption,1,8) + '******';
                         qrlb_sexage.Caption := pn_SexAge.Caption;
                         qrl_meddept.Caption := ugd_RecodDt.Cells[3,ugd_RecodDt.Row]; // 진료과
                         qrl_chadr.Caption := ugd_RecodDt.Cells[4,ugd_RecodDt.Row];   // 주치의
                         qrl_ward.Caption := ugd_RecodDt.Cells[6,ugd_RecodDt.Row];   // 병동/병실
                      end;


              // 기록지 스캔시 필수공통정보
              lb_patno.caption := sInPatno;
              lb_meddate.caption := ugd_RecodDt.Cells[1,ugd_RecodDt.Row];
              lb_dschdate.caption := ugd_RecodDt.Cells[2,ugd_RecodDt.Row];
              lb_patgubun.caption := ugd_RecodDt.Cells[5,ugd_RecodDt.Row];
              lb_meddept.caption := ugd_RecodDt.Cells[3,ugd_RecodDt.Row];
              lb_chadr.caption := ugd_RecodDt.Cells[4,ugd_RecodDt.Row];

             MDF120F1_P01.qr_Search.Print;
             MDF120F1_P01.Close;
             
              // G_USERID, G_USERIP
              UpdateRecord(sInPatno,sPk2,'empty','empty','empty' ,g_RecKind);
      end
    else if (g_RecKind='MDPDINFT') then // 간호정보기록지(소아) [17]
        begin

             sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
             sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 입원일자 'YYYYMMDD'

                 mdPdinfd := HmdPdinfd.Create ;
                 //이력조회.20181015.kya.
                 RowNo := mdPdinfd.SelPdinfdll2(sInPatno,sPk2,'');

                  // SYSTEM ERROR
                  if RowNo = -1 then
                  begin
                     mdPdinfd.Free;
                     ShowErrMsg(stb_Message);
                     Exit;
                  end;

                  // 조회건수 없음
                  if RowNo = 0 then
                  begin
                     stb_Message.Panels[0].text := '조회된 데이타가 없습니다.';
                     mdPdinfd.Free;
                     Exit;
                  end;

                    if MNW922S2 <> nil then MNW922S2.Close;
                    Application.CreateForm(TMNW922S2, MNW922S2);

                    with MNW922S2 do
                      begin
                         qrl_PatNo.Caption :=ed_PatNo.Text;
                         qrl_patname.Caption := pn_PatName.Caption;
                         qrl_ci.Caption := copy(pn_ResNo.Caption,1,8) + '******';
                         qrl_sex.Caption := pn_SexAge.Caption;
                         qrl_meddept.Caption := mdPdinfd.sMeddept[0]; // 진료과
                         qrl_chadr.Caption := mdPdinfd.sChadr[0];;   // 주치의
                         qrl_ward.Caption := ugd_RecodDt.Cells[4,ugd_RecodDt.Row];   // 병동병실
                         
                         qlb_edtnurnm1.Caption := mdPdinfd.sRecnrs[0]; // 작성간호사
                         QRLabel190.Caption := mdPdinfd.sRecnrs[0]; // 작성간호사
                         qrl_nurse.caption := mdPdinfd.sRecnrs[0]; // 작성간호사
                         qrl_admdate.caption := ConvertSDate(sPk2); // 입원일자
                    qrl_icd.Caption := mdPdinfd.sDiagname[0];   // 상병명

                   case strtoint_nvl(mdPdinfd.sInfdnr[0]) of  // 정보제공자
                      1 : qrl_inf.Caption := '환자';
                      2 : qrl_inf.Caption := '보호자';
                    else
                          qrl_inf.Caption := '';
                    end;

                   case strtoint_nvl(mdpdinfd.sChurch[0]) of  // 종교
                      1 : QRLabel284.Caption := '무교';
                      2 : QRLabel284.Caption := '기독교';
                      3 : QRLabel284.Caption := '카톨릭';
                      4 : QRLabel284.Caption := '불교';
                      5 : QRLabel284.Caption := '원불교';
                      6 : QRLabel284.Caption := '천도교';
                      7 : QRLabel284.Caption := '기타';                      
                    else
                          QRLabel284.Caption := '';
                    end;

                   qrl_telno1.Caption := mdpdinfd.sTelno1[0];
                   qrl_telno2.Caption := mdpdinfd.sTelno2[0];
                   qrl_telno3.Caption := mdpdinfd.sTelno3[0];
                   qrl_telno4.Caption := mdpdinfd.sTelno4[0];

                   shcbx_pro(qrl_Habit1,copy(mdPdinfd.sHabit[0],1 ,1));
                   shcbx_pro(qrl_Habit2,copy(mdPdinfd.sHabit[0],2 ,1));
                   qrl_Habit.Caption := Trim(copy(mdPdinfd.sHabit[0],3 ,length(mdPdinfd.sHabit[0])));
                  qrl_Hosptal.Caption := mdPdinfd.sHospital[0];

                    case strtoint_nvl(mdpdinfd.sRegf[0]) of  // 종교-부
                      1 : qrl_reg1.Caption := '무교';
                      2 : qrl_reg1.Caption := '기독교';
                      3 : qrl_reg1.Caption := '카톨릭';
                      4 : qrl_reg1.Caption := '불교';
                      5 : qrl_reg1.Caption := '원불교';
                      6 : qrl_reg1.Caption := '천도교';
                      7 : qrl_reg1.Caption := '기타';
                    else
                          qrl_reg1.Caption := '';
                    end;

                    case strtoint_nvl(mdpdinfd.sRegm[0]) of  // 종교-모
                      1 : qrl_reg2.Caption := '무교';
                      2 : qrl_reg2.Caption := '기독교';
                      3 : qrl_reg2.Caption := '카톨릭';
                      4 : qrl_reg2.Caption := '불교';
                      5 : qrl_reg2.Caption := '원불교';
                      6 : qrl_reg2.Caption := '천도교';
                      7 : qrl_reg2.Caption := '기타';
                    else
                          qrl_reg2.Caption := '';
                    end;
               
                    case strtoint_nvl(copy(mdpdinfd.sAdmpath[0],1,1)) of  // 입원경로
                      1 : qrl_admcou.Caption := '외래';
                      2 : qrl_admcou.Caption := '응급실';
                      3 : qrl_admcou.Caption := copy(mdpdinfd.sAdmpath[0],2,length(mdpdinfd.sAdmpath[0]) - 1);
                    else
                          qrl_admcou.Caption := '';
                    end;

                    case strtoint_nvl(copy(mdpdinfd.sadmmeth[0],1,1)) of  // 입원경로
                      1 : qrl_admmeth.Caption := '도보' ;
                      2 : qrl_admmeth.Caption := '휠체어';
                      3 : qrl_admmeth.Caption := '눕는차';
                      4 : qrl_admmeth.Caption := copy(mdpdinfd.sadmmeth[0],2,length(mdpdinfd.sadmmeth[0]) - 1);
                    else
                          qrl_admmeth.Caption := '';
                    end;


                     if mdpdinfd.sAlgyn[0] = '2' then
                     begin
                        qrs_argyn1.Brush.Color := clWhite;
                        qrs_argyn2.Brush.Color := clBlack;
                     end
                     else
                     if mdpdinfd.sAlgyn[0] = '1' then
                     begin
                        qrs_argyn1.Brush.Color := clBlack;
                        qrs_argyn2.Brush.Color := clWhite;
                     end
                     else
                     begin
                        qrs_argyn1.Brush.Color := clWhite;
                        qrs_argyn2.Brush.Color := clWhite;
                     end;
         
                   qrl_argdg.Caption := mdpdinfd.sArgdg[0];
                   qrl_arganti.Caption := mdpdinfd.sArganti[0];                   
                   qrl_argfd.Caption := mdpdinfd.sArgfg[0];
                   qrl_argetc.Caption := mdpdinfd.sArgetc[0];

                   shcbx_pro(qrs_pthist1,copy(mdpdinfd.sHxdzyn[0],1,1));
                   shcbx_pro(qrs_pthist2,copy(mdpdinfd.sHxdzyn[0],2,1));
                   qrl_pthist.Caption := Trim(copy(mdPdinfd.sHxdzyn[0],3,53));

                   if strtoint_nvl(copy(mdpdinfd.sLstdrgst[0],1,1)) = 2 then
                   begin
                      qrs_dgstat1.Brush.Color := clWhite;
                      qrs_dgstat2.Brush.Color := clBlack;
                   end
                   else
                   if strtoint_nvl(copy(mdpdinfd.sLstdrgst[0],1,1)) = 1 then
                   begin
                      qrs_dgstat1.Brush.Color := clBlack;
                      qrs_dgstat2.Brush.Color := clWhite;
                   end
                   else
                   begin
                      qrs_dgstat1.Brush.Color := clWhite;
                      qrs_dgstat2.Brush.Color := clWhite;
                   end;
                   qrl_dgstat.Caption := copy(mdpdinfd.sLstdrgst[0],2,50);

                   shcbx_pro(qrs_famcase1,copy(mdpdinfd.sFhxf[0],1,1));
                   shcbx_pro(qrs_famcase2,copy(mdpdinfd.sFhxf[0],2,1));
                   shcbx_pro(qrs_famcase3,copy(mdpdinfd.sFhxf[0],3,1));
                   shcbx_pro(qrs_famcase4,copy(mdpdinfd.sFhxf[0],4,1));
                   shcbx_pro(qrs_famcase5,copy(mdpdinfd.sFhxf[0],5,1));
                   shcbx_pro(qrs_famcase6,copy(mdpdinfd.sFhxf[0],6,1));
                   shcbx_pro(qrs_famcase7,copy(mdpdinfd.sFhxf[0],7,1));
                   qrl_famcase.Caption := Trim(copy(mdpdinfd.sFhxf[0],8,55));
                   qrl_famrela.Caption := mdpdinfd.sFhxetc[0];

                   if strtoint_nvl(copy(mdpdinfd.sopyn[0],1,1)) = 2 then
                   begin
                      qrs_opyn2.Brush.Color := clBlack;
                   end
                   else
                   if strtoint_nvl(copy(mdpdinfd.sopyn[0],1,1)) = 1 then
                   begin
                      qrs_opyn1.Brush.Color := clBlack;
                   end
                   else
                   begin
                      qrs_opyn1.Brush.Color := clWhite;
                      qrs_opyn2.Brush.Color := clWhite;
                   end;         
                   qrl_opnm.Caption := copy(mdpdinfd.sopyn[0],2,249);

                   case strtoint_nvl(copy(mdpdinfd.sPshist[0],1,1)) of  // 지남력-사람
                      1 : qrl_pshist1.Caption := '무';
                      2 : qrl_pshist1.Caption := '유';
                    else
                          qrl_pshist1.Caption := '';
                    end;
                   case strtoint_nvl(copy(mdpdinfd.sPshist[0],2,1)) of  // 지남력-장소
                      1 : qrl_pshist2.Caption := '무';
                      2 : qrl_pshist2.Caption := '유';
                    else
                          qrl_pshist2.Caption := '';
                    end;
                   case strtoint_nvl(copy(mdpdinfd.sPshist[0],3,1)) of  // 지남력-시간
                      1 : qrl_pshist3.Caption := '무';
                      2 : qrl_pshist3.Caption := '유';
                    else
                          qrl_pshist3.Caption := '';
                    end;

                   //의식상태.20150326. kya.
                   if mdpdinfd.sConsstat[0] = '1' then
                   begin
                      qrl_condst.Caption := '명료'
                   end
                   else
                   if mdpdinfd.sConsstat[0] = '2'then
                   begin
                      qrl_condst.Caption := '혼돈'
                   end
                   else
                   if mdpdinfd.sConsstat[0] = '3' then
                   begin
                      qrl_condst.Caption := '반의식'
                   end
                   else
                   if mdpdinfd.sConsstat[0] = '4' then
                   begin
                      qrl_condst.Caption := '무의식'
                   end
                   else
                      qrl_condst.Caption := '';
                   
         
                   //의사소통. 20150326. kya.
                   //qrl_concom.Caption := combx_concom.Text;
                   if mdpdinfd.sComm[0] = '1' then
                   begin
                      qrl_concom.caption := '원만'
                   end
                   else
                   if mdpdinfd.sComm[0] = '2' then
                   begin
                      qrl_concom.caption := '곤란'
                   end
                   else
                   if mdpdinfd.sComm[0] = '3' then
                   begin
                      qrl_concom.caption := '불가능'
                   end
                   else
                      qrl_concom.caption := '';

                   shcbx_pro(qrs_feelst1,copy(mdpdinfd.sFeelstat[0],1,1));
                   shcbx_pro(qrs_feelst2,copy(mdpdinfd.sFeelstat[0],2,1));
                   shcbx_pro(qrs_feelst3,copy(mdpdinfd.sFeelstat[0],3,1));
                   shcbx_pro(qrs_feelst4,copy(mdpdinfd.sFeelstat[0],4,1));
                   shcbx_pro(qrs_feelst5,copy(mdpdinfd.sFeelstat[0],5,1));
                   shcbx_pro(qrs_feelst6,copy(mdpdinfd.sFeelstat[0],6,1));

                   shcbx_pro(qrs_circst1,copy(mdpdinfd.scircst[0],1,1));
                   shcbx_pro(qrs_circst2,copy(mdpdinfd.scircst[0],2,1));
                   shcbx_pro(qrs_circst3,copy(mdpdinfd.scircst[0],3,1));
                   shcbx_pro(qrs_circst4,copy(mdpdinfd.scircst[0],4,1));
                   shcbx_pro(qrs_circst5,copy(mdpdinfd.scircst[0],5,1));
                   shcbx_pro(qrs_circst6,copy(mdpdinfd.scircst[0],6,1));
                   shcbx_pro(qrs_circst7,copy(mdpdinfd.scircst[0],7,1));
                   shcbx_pro(qrs_circst8,copy(mdpdinfd.scircst[0],8,1)); //순환기 유추가.20150430.kya.

                   shcbx_pro(qrs_respst1,copy(mdpdinfd.srespst[0],1,1));
                   shcbx_pro(qrs_respst2,copy(mdpdinfd.srespst[0],2,1));
                   shcbx_pro(qrs_respst3,copy(mdpdinfd.srespst[0],3,1));
                   shcbx_pro(qrs_respst4,copy(mdpdinfd.srespst[0],4,1));
                   shcbx_pro(qrs_respst5,copy(mdpdinfd.srespst[0],5,1));
                   shcbx_pro(qrs_respst6,copy(mdpdinfd.srespst[0],6,1));
                   shcbx_pro(qrs_respst7,copy(mdpdinfd.srespst[0],7,1));
                   shcbx_pro(qrs_respst8,copy(mdpdinfd.srespst[0],8,1));   //호흡기 유추가.20150430.kya.

                   shcbx_pro(qrs_bdietst1,copy(mdpdinfd.sDietst[0],1 ,1));
                   shcbx_pro(qrs_bdietst2,copy(mdpdinfd.sDietst[0],2 ,1));
                   shcbx_pro(qrs_bdietst3,copy(mdpdinfd.sDietst[0],3 ,1));
                   shcbx_pro(qrs_bdietst4,copy(mdpdinfd.sDietst[0],4 ,1));
                   shcbx_pro(qrs_bdietst5,copy(mdpdinfd.sDietst[0],5 ,1));
                   shcbx_pro(qrs_bdietst6,copy(mdpdinfd.sDietst[0],6 ,1));
                   shcbx_pro(qrs_bdietst7,copy(mdpdinfd.sDietst[0],7 ,1));
                   shcbx_pro(qrs_bdietst8,copy(mdpdinfd.sDietst[0],8 ,1));    //소화기 유추가.20150430.kya.

                   shcbx_pro(qrs_bpain1,copy(mdpdinfd.sPain[0],1 ,1));
                   shcbx_pro(qrs_bpain2,copy(mdpdinfd.sPain[0],2 ,1));
                   shcbx_pro(qrs_bpain3,copy(mdpdinfd.sPain[0],3 ,1));
                   shcbx_pro(qrs_bpain4,copy(mdpdinfd.sPain[0],4 ,1));
                   shcbx_pro(qrs_bpain5,copy(mdpdinfd.sPain[0],5 ,1));
                   shcbx_pro(qrs_bpain6,copy(mdpdinfd.sPain[0],6 ,1));
                   shcbx_pro(qrs_bpain7,copy(mdpdinfd.sPain[0],7 ,1));
                   qrl_bpain.Caption := copy(mdPdinfd.sPain[0],8,60);    //통증 유추가. 20150430.kya.

                   shcbx_pro(qrs_dental1,copy(mdPdinfd.sTeeth[0],1 ,1));
                   shcbx_pro(qrs_dental2,copy(mdPdinfd.sTeeth[0],2 ,1));
                   shcbx_pro(qrs_dental3,copy(mdPdinfd.sTeeth[0],3,1));
                   shcbx_pro(qrs_dental4,copy(mdPdinfd.sTeeth[0],4 ,1));
                   qrl_dental.Caption := copy(mdPdinfd.sTeeth[0],5,60);

                   shcbx_pro(qrs_bskin1,copy(mdpdinfd.sSkin[0],1 ,1));
                   shcbx_pro(qrs_bskin2,copy(mdpdinfd.sSkin[0],2 ,1));
                   shcbx_pro(qrs_bskin3,copy(mdpdinfd.sSkin[0],3 ,1));
                   shcbx_pro(qrs_bskin4,copy(mdpdinfd.sSkin[0],4 ,1));
                   shcbx_pro(qrs_bskin5,copy(mdpdinfd.sSkin[0],5 ,1));
                   shcbx_pro(qrs_bskin6,copy(mdpdinfd.sSkin[0],6 ,1));   //피부색깔 정상,비정상 추가. 20150430. kya.
                   qrl_bskin.Caption := copy(mdPdinfd.sSkin[0],7 ,61);

                   shcbx_pro(qrs_eyest1,copy(mdpdinfd.sGls[0],1 ,1));
                   shcbx_pro(qrs_eyest2,copy(mdpdinfd.sGls[0],2 ,1));
                   shcbx_pro(qrs_eyest3,copy(mdpdinfd.sGls[0],3 ,1));
                   shcbx_pro(qrs_eyest4,copy(mdpdinfd.sGls[0],4 ,1));

                   shcbx_pro(qrs_earst1,copy(mdpdinfd.sEarAid[0],1 ,1));
                   shcbx_pro(qrs_earst2,copy(mdpdinfd.sEarAid[0],2 ,1));
                   shcbx_pro(qrs_earst3,copy(mdpdinfd.sEarAid[0],3 ,1));
                   shcbx_pro(qrs_earst4,copy(mdpdinfd.sEarAid[0],4 ,1));
                   shcbx_pro(qrs_earst5,copy(mdpdinfd.sEarAid[0],5 ,1)); //청각 유,좌,우 추가. 20150430. kya.

                   shcbx_pro(qrs_neost1,copy(mdpdinfd.sNeotrc[0],1 ,1));
                   shcbx_pro(qrs_neost2,copy(mdpdinfd.sNeotrc[0],2 ,1));
                   shcbx_pro(qrs_neost3,copy(mdpdinfd.sNeotrc[0],3 ,1));
                   shcbx_pro(qrs_neost4,copy(mdpdinfd.sNeotrc[0],4 ,1));
                   shcbx_pro(qrs_neost5,copy(mdpdinfd.sNeotrc[0],5 ,1));
                   shcbx_pro(qrs_neost6,copy(mdpdinfd.sNeotrc[0],6 ,1));
                   shcbx_pro(qrs_neost7,copy(mdpdinfd.sNeotrc[0],7 ,1));
                   qrl_neost.Caption  := copy(mdPdinfd.sNeotrc[0],8 ,length(mdPdinfd.sNeotrc[0]));

                  // 4. 입원시간호및 교육내용
                  shcbx_pro(qrs_edu1,copy(mdpdinfd.sedu1[0],1,1));

                  shcbx_pro(qrs_edu2,copy(mdpdinfd.sedu2[0],1,1));                  
                  shcbx_pro(qrs_edu21,copy(mdpdinfd.sedu2[0],2,1));
                  shcbx_pro(qrs_edu22,copy(mdpdinfd.sedu2[0],3,1));
                  shcbx_pro(qrs_edu23,copy(mdpdinfd.sedu2[0],4,1));
                  shcbx_pro(qrs_edu24,copy(mdpdinfd.sedu2[0],5,1));
                  shcbx_pro(qrs_edu25,copy(mdpdinfd.sedu2[0],6,1));
                  shcbx_pro(qrs_edu26,copy(mdpdinfd.sedu2[0],7,1));
                  shcbx_pro(qrs_edu27,copy(mdpdinfd.sedu2[0],8,1));
                  shcbx_pro(qrs_edu28,copy(mdpdinfd.sedu2[0],9,1));
                  shcbx_pro(qrs_edu29,copy(mdpdinfd.sedu2[0],10,1));
                  shcbx_pro(qrs_edu30,copy(mdpdinfd.sedu2[0],11,1));
                  shcbx_pro(qrs_edu311,copy(mdpdinfd.sedu2[0],12,1));                  

                  shcbx_pro(qrs_edu3,copy(mdpdinfd.sedu3[0],1,1));
                  shcbx_pro(qrs_edu31,copy(mdpdinfd.sedu3[0],2,1));
                  shcbx_pro(qrs_edu32,copy(mdpdinfd.sedu3[0],3,1));
                  shcbx_pro(qrs_edu33,copy(mdpdinfd.sedu3[0],4,1));
                  shcbx_pro(qrs_edu34,copy(mdpdinfd.sedu3[0],5,1));
                  shcbx_pro(qrs_edu35,copy(mdpdinfd.sedu3[0],6,1));
                  shcbx_pro(qrs_edu36,copy(mdpdinfd.sedu3[0],7,1));

                  shcbx_pro(qrs_edu4,copy(mdpdinfd.sedu4[0],1,1));
                  shcbx_pro(qrs_edu5,copy(mdpdinfd.sedu5[0],1,1));
                  shcbx_pro(qrs_edu6,copy(mdpdinfd.sedu6[0],1,1));
                  shcbx_pro(qrs_edu7,copy(mdpdinfd.sedu7[0],1,1));
                  shcbx_pro(qrs_edu8,copy(mdpdinfd.sedu8[0],1,1));

                  //환잔안전교육
                  shcbx_pro(qrs_Safeedu1,copy(mdpdinfd.sSafeedu[0],1,1));
                  shcbx_pro(qrs_Safeedu2,copy(mdpdinfd.sSafeedu[0],2,1));
                  shcbx_pro(qrs_Safeedu3,copy(mdpdinfd.sSafeedu[0],3,1));
                  shcbx_pro(qrs_Safeedu4,copy(mdpdinfd.sSafeedu[0],4,1));
                  shcbx_pro(qrs_Safeedu5,copy(mdpdinfd.sSafeedu[0],5,1));
                  // 식사습관
                  shcbx_pro(qrs_meal1,copy(mdPdinfd.sMeal[0],1,1));
                  shcbx_pro(qrs_meal2,copy(mdPdinfd.sMeal[0],2,1));
                  shcbx_pro(qrs_meal3,copy(mdPdinfd.sMeal[0],3,1));
                  shcbx_pro(qrs_meal4,copy(mdPdinfd.sMeal[0],4,1));

                  // 입원력
                  shcbx_pro(qrl_IpHIsY,copy(mdpdinfd.sIphis[0],1,1));
                  shcbx_pro(qrl_IpHIsN,copy(mdpdinfd.sIphis[0],2,1));
                  qrl_IpHIs.Caption := Trim(copy(mdPdinfd.sIphis[0],3 ,length(mdPdinfd.sIphis[0])));
                  
                  qrlb_Frecdate.Caption := mdPdinfd.sFrecdate[0]; //최초기록일시, KimDaeYong 2011-06-09
                  qrl_juicdnm.Caption := mdPdinfd.sSymptom[0]; //주증상                  

                   // 대변
                   shcbx_pro(qrs_stoolknd1,copy(mdPdinfd.sFecchr[0],1,1));
                   shcbx_pro(qrs_stoolknd2,copy(mdPdinfd.sFecchr[0],2,1));
                   shcbx_pro(qrs_stoolknd3,copy(mdPdinfd.sFecchr[0],3,1));
                   shcbx_pro(qrs_stoolknd4,copy(mdPdinfd.sFecchr[0],4,1));
                   shcbx_pro(qrs_stoolknd5,copy(mdPdinfd.sFecchr[0],5,1));
                   qrl_stool.Caption := mdPdinfd.sFeccnt[0];

                   // 소변
                   qrl_urine.Caption := mdPdinfd.sUrcnt[0];
                   shcbx_pro(qrs_urineknd1,copy(mdpdinfd.sUrchr[0],1,1));
                   shcbx_pro(qrs_urineknd2,copy(mdpdinfd.sUrchr[0],2,1));
                   shcbx_pro(qrs_urineknd3,copy(mdpdinfd.sUrchr[0],3,1));
                   shcbx_pro(qrs_urineknd4,copy(mdpdinfd.sUrchr[0],4,1));
                   shcbx_pro(qrs_urineknd5,copy(mdpdinfd.sUrchr[0],5,1));
                   shcbx_pro(qrs_urineknd6,copy(mdpdinfd.sUrchr[0],6,1));
                   shcbx_pro(qrs_urineknd7,copy(mdpdinfd.sUrchr[0],7,1));                   

                   if strtoint_nvl(copy(mdPdinfd.sGihyung[0],1,1)) = 1 then
                   begin
                      qrs_gihyung1.Brush.Color := clBlack;
                      qrs_gihyung2.Brush.Color := clWhite;
                   end
                   else
                   if strtoint_nvl(copy(mdPdinfd.sGihyung[0],1,1)) = 2 then
                   begin
                      qrs_gihyung1.Brush.Color := clWhite;
                      qrs_gihyung2.Brush.Color := clBlack;
                   end
                   else
                   begin
                      qrs_gihyung1.Brush.Color := clWhite;
                      qrs_gihyung2.Brush.Color := clWhite;
                   end
                   ;

                   //분만형태 
                   shcbx_pro(qrs_bunform1,copy(mdPdinfd.sDelvtype[0],1,1));
                   shcbx_pro(qrs_bunform2,copy(mdPdinfd.sDelvtype[0],2,1));
                   shcbx_pro(qrs_bunform3,copy(mdPdinfd.sDelvtype[0],3,1));
                   qrl_bunform.Caption := copy(mdPdinfd.sDelvtype[0],4,51);

                  shcbx_pro(qrs_bungaejo1,copy(mdPdinfd.sborndc[0],1,1));
                  shcbx_pro(qrs_bungaejo2,copy(mdPdinfd.sborndc[0],2,1));
                  qrl_bungaejo.Caption := copy(mdPdinfd.sborndc[0],3,51);

                  qrl_bweight.Caption := mdPdinfd.sBornw[0];
                  qrl_aweight.Caption := mdPdinfd.sNoww[0];
                  
                   // 피부상태
                   shcbx_pro(qrl_skinst1,copy(mdPdinfd.sSkinst[0],1 ,1));
                   shcbx_pro(qrl_skinst2,copy(mdPdinfd.sSkinst[0],2 ,1));
                   qrl_skinst.Caption :=  Trim(copy(mdPdinfd.sSkinst[0],3 ,length(mdPdinfd.sSkinst[0])));


                   case strtoint_nvl(mdpdinfd.sActivest[0]) of  // 활동상태
                      1 : qrl_Activest.Caption := '자유로움';
                      2 : qrl_Activest.Caption := '자유롭지 못함';
                    else
                          qrl_Activest.Caption := '';
                    end;

                   qrl_therm.Caption := mdpdinfd.sBodytemp[0];   // 체온
                   qrl_hrtbt.Caption    := mdpdinfd.sHrtbt[0];   // 맥박
                   qrl_insp.Caption   := mdpdinfd.sResp[0];   // 호흡
                   qrl_bldpres.Caption := mdpdinfd.sBldpre[0];   // 혈압
                   qrl_height.Caption   := mdpdinfd.sHeight[0];   // 신장
                   qrl_startdd.Caption := mdpdinfd.sIndzfdt[0];   //최초발병일시

                   case strtoint_nvl(mdpdinfd.sBldtype[0]) of  // 혈액형
                      1 : qrl_bldtype.Caption := 'A';
                      2 : qrl_bldtype.Caption := 'B';
                      3 : qrl_bldtype.Caption := 'AB';
                      4 : qrl_bldtype.Caption := 'O';
                    else
                          qrl_bldtype.Caption := '모름'
                    end;

                     {3.건강관련정보}

                   case strtoint_nvl(mdpdinfd.sAppetite[0]) of  // 식욕
                      1 : qrl_Appetite.Caption := '양호';
                      2 : qrl_Appetite.Caption := '보통';
                      3 : qrl_Appetite.Caption := '불량';

                    else
                          qrl_Appetite.Caption := ''
                    end;

                   case strtoint_nvl(mdpdinfd.sWetchg[0]) of  // 체중변화
                      1 : qrl_Wetchg.Caption := '증가';
                      2 : qrl_Wetchg.Caption := '감소';
                      3 : qrl_Wetchg.Caption := '무';
                    else
                          qrl_Wetchg.Caption := ''
                    end;

                   case strtoint_nvl(mdpdinfd.sDysphagia[0]) of  // 연하곤란
                      1 : qrl_Dysphagia.Caption := '있음';
                      2 : qrl_Dysphagia.Caption := '없음';
                    else
                          qrl_Dysphagia.Caption := ''
                    end;

                     case strtoint_nvl(Copy(mdpdinfd.sJikupf[0],1,2)) of  // 직업-부
                      1 : qrl_Job1.Caption := '회사원';
                      2 : qrl_Job1.Caption := '전문직';
                      3 : qrl_Job1.Caption := '주부';
                      4 : qrl_Job1.Caption := '학생';
                      5 : qrl_Job1.Caption := '군인';
                      6 : qrl_Job1.Caption := '무직';
                      7 : qrl_Job1.Caption := '자유업';
                      8 : qrl_Job1.Caption := '교사';
                      9 : qrl_Job1.Caption := '공무원';
                     10 : qrl_Job1.Caption := '목회자';
                     11 : qrl_Job1.Caption := '상업';
                     12 : qrl_Job1.Caption := '기타';
                    else
                          qrl_Job1.Caption := '';
                    end;

                    case strtoint_nvl(Copy(mdpdinfd.sJikupm[0],1,2)) of  // 직업-모
                      1 : qrl_Job2.Caption := '회사원';
                      2 : qrl_Job2.Caption := '전문직';
                      3 : qrl_Job2.Caption := '주부';
                      4 : qrl_Job2.Caption := '학생';
                      5 : qrl_Job2.Caption := '군인';
                      6 : qrl_Job2.Caption := '무직';
                      7 : qrl_Job2.Caption := '자유업';
                      8 : qrl_Job2.Caption := '교사';
                      9 : qrl_Job2.Caption := '공무원';
                     10 : qrl_Job2.Caption := '목회자';
                     11 : qrl_Job2.Caption := '상업';
                     12 : qrl_Job2.Caption := '기타';
                    else
                          qrl_Job2.Caption := '';
                    end;
                   //==============간호정보조사지 출력물 추가, KimDaeYong 2011-07-05======================//

                   // 2011.02 인증 추가
                   if trim(mdpdinfd.sNation[0]) = '1' then //국적
                      qrl_Nation.Caption := '대한민국'
                   else
                   begin
                      qrl_Nation.Caption := mdpdinfd.sNationoth[0];
                   end;

                   case strtoint_nvl(mdpdinfd.sRace[0]) of  // 인종
                      1 : qrl_Race.Caption := '황인종';
                      2 : qrl_Race.Caption := '백인종';
                      3 : qrl_Race.Caption := '흑인종';
                    else
                          qrl_Race.Caption := ''
                    end;
                   case strtoint_nvl(mdpdinfd.sPay[0]) of  //진료비지불능력
                      1 : qrl_Pay.Caption := '있음';
                      2 : qrl_Pay.Caption := '없음';
                    else
                          qrl_Pay.Caption := ''
                    end;
                   case strtoint_nvl(mdpdinfd.sBokji[0]) of  ////사회복지상담
                      1 : qrl_Bokji.Caption := '필요';
                      2 : qrl_Bokji.Caption := '불필요';
                    else
                          qrl_Bokji.Caption := ''
                    end;

                   qrl_Arganti.Caption := mdpdinfd.sArganti[0];    //알레르기 항생제

                     //예방접종 관련정보
                     shcbx_pro(qrs_dpt1,copy(mdPdinfd.sdpt[0],1 ,1));
                     shcbx_pro(qrs_dpt2,copy(mdPdinfd.sdpt[0],2,1));
                     shcbx_pro(qrs_dpt3,copy(mdPdinfd.sdpt[0],3 ,1));
                     shcbx_pro(qrs_dpt4,copy(mdPdinfd.sdpt[0],4 ,1));
                     shcbx_pro(qrs_polio1,copy(mdPdinfd.spolio[0],1 ,1));
                     shcbx_pro(qrs_polio2,copy(mdPdinfd.spolio[0],2,1));
                     shcbx_pro(qrs_polio3,copy(mdPdinfd.spolio[0],3 ,1));
                     shcbx_pro(qrs_polio4,copy(mdPdinfd.spolio[0],4 ,1));
                     shcbx_pro(qrs_liver1,copy(mdPdinfd.sliver[0],1 ,1));
                     shcbx_pro(qrs_liver2,copy(mdPdinfd.sliver[0],2 ,1));
                     shcbx_pro(qrs_liver3,copy(mdPdinfd.sliver[0],3 ,1));
                     shcbx_pro(qrs_liver4,copy(mdPdinfd.sliver[0],4 ,1));

                     if mdPdinfd.sMeas[0] ='Y' then
                     begin
                        qrs_measl1.Brush.Color := clWhite;
                        qrs_measl2.Brush.Color := clBlack;
                     end
                     else
                     begin
                        qrs_measl1.Brush.Color := clBlack;
                        qrs_measl2.Brush.Color := clWhite;
                     end;

                     if mdPdinfd.sCheek[0] ='Y' then
                     begin
                        qrs_cheek1.Brush.Color := clWhite;
                        qrs_cheek2.Brush.Color := clBlack;
                     end
                     else
                     begin
                        qrs_cheek1.Brush.Color := clBlack;
                        qrs_cheek2.Brush.Color := clWhite;
                     end;

                     if mdPdinfd.sBcg[0] ='Y' then
                     begin
                        qrs_bcg1.Brush.Color := clWhite;
                        qrs_bcg2.Brush.Color := clBlack;
                     end
                     else
                     begin
                        qrs_bcg1.Brush.Color := clBlack;
                        qrs_bcg2.Brush.Color := clWhite;
                     end;

                    qrl_etc.Caption := mdPdinfd.setc[0];


                   case strtoint_nvl(mdpdinfd.sStress[0]) of  //대사적스트레스 정도
                      1 : qrl_Stress.Caption := '해당 사항 없음';
                      2 : qrl_Stress.Caption := '골반골절로 치료중인 자';
                      3 : qrl_Stress.Caption := '만성폐쇄성폐질환의 급성학화기 상태인자';
                      4 : qrl_Stress.Caption := '조절되지 않는 대량복수나 간성뇌증을 동반한 간경변증 환자';
                      5 : qrl_Stress.Caption := '항암화학요법을 위해 입원한 자';
                      6 : qrl_Stress.Caption := '경부나 흉부, 복부의 방사선 치료를 위해 입원한 자';
                      7 : qrl_Stress.Caption := '신 기능 부전으로 혈액투석이나 복막투석 치료중인 자';
                      8 : qrl_Stress.Caption := '개복 또는 개흉 수술 후 3일 이상 금식중인 자';
                      9 : qrl_Stress.Caption := '입원치료를 요하는 급성 뇌경색 환자';
                      10: qrl_Stress.Caption := '중증 폐렴으로 인해 산소공급을 요하여 침상안정이 필요한 자';
                      11: qrl_Stress.Caption := '중환자실에서 인공호흡기 치료를 요하는 자';                      
                    else
                          qrl_Stress.Caption := '' ;
                    end;
         
                   qrme_Eduoth.Lines.Text := mdPdinfd.sNreduetc[0];   //기타교육사항
         
                   //5.초기퇴원계획
                   if strtoint_nvl(mdpdinfd.sOutEdu1[0]) = 1 then qrs_Outedu11.Brush.Color := clBlack;   //보호자거주유무
                   if strtoint_nvl(mdpdinfd.sOutEdu1[0]) = 2 then qrs_Outedu12.Brush.Color := clBlack;
                   if strtoint_nvl(mdpdinfd.sOutEdu2[0]) = 1 then qrs_Outedu21.Brush.Color := clBlack;   //간병인유무
                   if strtoint_nvl(mdpdinfd.sOutEdu2[0]) = 2 then qrs_Outedu22.Brush.Color := clBlack;

                   if mdpdinfd.sOutEdu3[0] = '1' then
                      qrs_outedu31.Brush.Color := clBlack
                   else if mdpdinfd.sOutEdu3[0] = '2' then
                      qrs_outedu32.Brush.Color := clBlack
                   else if mdpdinfd.sOutEdu3[0] = '3' then
                      qrs_outedu33.Brush.Color := clBlack
                   else if mdpdinfd.sOutEdu3[0] = '4' then
                      qrs_outedu34.Brush.Color := clBlack;
                      
                   qrl_Outedu3oth.Caption := mdpdinfd.sOutedu3oth[0];

                   if mdpdinfd.sOutEdu4[0] = '1' then qrs_Outedu41.Brush.Color := clBlack;   //보호자연락
                   if mdpdinfd.sOutEdu4[0] = '2' then qrs_Outedu42.Brush.Color := clBlack;

                   if mdpdinfd.sOutedu5[0] = '0' then qrs_Outedu51.Brush.Color := clBlack;   //교육대상
                   if mdpdinfd.sOutedu5[0] = '1' then qrs_Outedu52.Brush.Color := clBlack;
                   if mdpdinfd.sOutedu5[0] = '2' then qrs_Outedu53.Brush.Color := clBlack;
                   if mdpdinfd.sOutedu5[0] = '' then qrs_Outedu51.Brush.Color := clBlack;   //교육대상                   

                   //수혈거부여부.kya.20150326.
                   if mdpdinfd.sBloodyn[0] = '1' then
                   begin
                      qrs_bloody.Brush.Color := clBlack;
                   end
                   else
                   if mdpdinfd.sBloodyn[0] = '2'  then
                   begin
                      qrs_bloodN.Brush.Color := clBlack;
                   end;
         
                   //기타.kya.20150326.
                   qrl_Culturetc.Caption :=  mdpdinfd.sCultueretc[0];

                   //지참약.kya.20151203.
                   if mdpdinfd.sBring[0] = 'Y' then qrs_bringY.Brush.Color := clBlack
                                               else qrs_bringN.Brush.Color := clBlack;
                 end; //with do end

              // 기록지 스캔시 필수공통정보
              lb_patno.caption := sInPatno;
              lb_meddate.caption := ugd_RecodDt.Cells[1,ugd_RecodDt.Row];
              lb_dschdate.caption := ugd_RecodDt.Cells[5,ugd_RecodDt.Row];
              lb_patgubun.caption := 'I';
              lb_meddept.caption := ugd_RecodDt.Cells[6,ugd_RecodDt.Row];
              lb_chadr.caption := ugd_RecodDt.Cells[7,ugd_RecodDt.Row];


             MNW922S2.qrp_1.Print;
             MNW922S2.QuickRep2.Print;
             mdpdinfd.Free;
             MNW922S2.Close;
             
             {
             MNW922S2.qrp_1.Preview;
             MNW922S2.QuickRep2.Preview;
             }
             
              // G_USERID, G_USERIP
              UpdateRecord(sInPatno,sPk2,'empty','empty','empty' ,g_RecKind);

      end
    else if (g_RecKind='MDPYINFT') then // 간호정보기록지-정신과 [18]
        begin

                 sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
                 sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 입원일자 'YYYYMMDD'

                  mdPyinfd := HmdPyinfd.Create;
                  RowNo    := mdPyinfd.SelectPyinftdll2(sInPatno, sPk2, '');
             
                  // SYSTEM ERROR
                  if RowNo = -1 then
                  begin
                     mdPyinfd.Free;
                     ShowErrMsg(stb_Message);
                     Exit;
                  end;

                  // 조회건수 없음
                  if RowNo = 0 then
                  begin
                     stb_Message.Panels[0].text := '조회된 데이타가 없습니다.';
                     mdPyinfd.Free;
                     Exit;
                  end;

                    if MNW923S2 <> nil then MNW923S2.Close;
                    Application.CreateForm(TMNW923S2, MNW923S2);

                    with MNW923S2 do
                      begin
                         qrl_PatNo.Caption :=ed_PatNo.Text;
                         qrl_patname.Caption := pn_PatName.Caption;
                         qrl_ci.Caption := copy(pn_ResNo.Caption,1,8) + '******';
                         qrl_sex.Caption := pn_SexAge.Caption;
                         qrl_meddept.Caption := mdPyinfd.sMedDept[0]; // 진료과
                         qrl_chadr.Caption := ugd_RecodDt.Cells[3,ugd_RecodDt.Row];   // 주치의
                         qrl_ward.Caption := ugd_RecodDt.Cells[4,ugd_RecodDt.Row];   // 병동/병실

                         
                 qrl_admdate.Caption := ConvertSDate(sPk2);
                 qrl_nurse.Caption :=  mdPyinfd.sRecNrs[0];

                    case strtoint_nvl(mdPyinfd.sInfDnr[0]) of  // 정보제공자
                      0 : qrl_inf.Caption := '본인';
                      1 : qrl_inf.Caption := '부';
                      2 : qrl_inf.Caption := '모';
                      3 : qrl_inf.Caption := '조부';
                      4 : qrl_inf.Caption := '조모';
                      5 : qrl_inf.Caption := '자녀';
                      6 : qrl_inf.Caption := '기타';
                    else
                          qrl_inf.Caption := '';
                    end;

                     //20150731.kya. 활력증후 추가.
                     qrl_bodytemp.Caption := mdPyinfd.sBodytemp[0];   // 체온
                     qrl_pulse.Caption    := mdPyinfd.sPulse[0];   // 맥박
                     ed_respcnt.Caption   := mdPyinfd.sRespcnt[0];   // 호흡
                     qrl_bldprehi.Caption := mdPyinfd.sBldprehi[0]+'/'+ mdPyinfd.sBldprelo[0];   // 혈압
                     qrl_weight.Caption   := mdPyinfd.sWeight[0];   // 체중
                     qrl_height.Caption   := mdPyinfd.sHeight[0];   // 신장

                     case strtoint_nvl(mdPyinfd.sBldtype[0]) of  // 혈액형
                        1 : qrl_bldtype.Caption := 'A';
                        2 : qrl_bldtype.Caption := 'B';
                        3 : qrl_bldtype.Caption := 'AB';
                        4 : qrl_bldtype.Caption := 'O';
                      else
                            qrl_bldtype.Caption := '모름'
                      end;

                     case strtoint_nvl(mdPyinfd.sAdmmeth[0]) of  // 입원방법
                        1 : qrs_admmeth1.Brush.Color := clBlack;
                        2 : qrs_admmeth2.Brush.Color := clBlack;
                        3 : qrs_admmeth3.Brush.Color := clBlack;
                        4 : qrs_admmeth4.Brush.Color := clBlack;
                        5 : qrs_admmeth5.Brush.Color := clBlack;
                        6 : qrs_admmeth6.Brush.Color := clBlack;
                      else
                            qrs_admmeth1.Brush.Color := clWhite;
                            qrs_admmeth2.Brush.Color := clWhite;
                            qrs_admmeth3.Brush.Color := clWhite;
                            qrs_admmeth4.Brush.Color := clWhite;
                            qrs_admmeth5.Brush.Color := clWhite;
                            qrs_admmeth6.Brush.Color := clWhite;
                      end;                      

                     if strtoint_nvl(Copy(mdPyinfd.sAdmPath[0],1,1)) = 1 then
                     begin
                        qrs_admpath1.Brush.Color := clBlack;
                        qrs_admpath2.Brush.Color := clWhite;
                        qrs_admpath3.Brush.Color := clWhite;
                        qrs_admpath4.Brush.Color := clWhite;
                        qrl_admpathetc.caption   := '';
                     end
                     else if strtoint_nvl(Copy(mdPyinfd.sAdmPath[0],1,1)) = 2  then
                     begin
                        qrs_admpath1.Brush.Color := clWhite;
                        qrs_admpath2.Brush.Color := clBlack;
                        qrs_admpath3.Brush.Color := clWhite;
                        qrs_admpath4.Brush.Color := clWhite;
                        qrl_admpathetc.caption   := '';
                     end
                     else if strtoint_nvl(Copy(mdPyinfd.sAdmPath[0],1,1)) = 3  then
                     begin
                        qrs_admpath1.Brush.Color := clWhite;
                        qrs_admpath2.Brush.Color := clWhite;
                        qrs_admpath3.Brush.Color := clBlack;
                        qrs_admpath4.Brush.Color := clWhite;
                        qrl_admpathetc.caption   := '';
                     end       
                     else if strtoint_nvl(Copy(mdPyinfd.sAdmPath[0],1,1)) = 4  then
                     begin
                        qrs_admpath1.Brush.Color := clWhite;
                        qrs_admpath2.Brush.Color := clWhite;
                        qrs_admpath3.Brush.Color := clWhite;
                        qrs_admpath4.Brush.Color := clBlack;
                        qrl_admpathetc.caption   := trim(Copy(mdPyinfd.sAdmPath[0],2,30));
                     end
                     else
                     begin
                        qrs_admpath1.Brush.Color := clWhite;
                        qrs_admpath2.Brush.Color := clWhite;
                        qrs_admpath3.Brush.Color := clWhite;
                        qrs_admpath4.Brush.Color := clWhite;
                        qrl_admpathetc.caption   := '';
                     end;
                     

                     if strtoint_nvl(Copy(mdPyinfd.sAdmWith[0],1,1)) = 1 then
                     begin
                        qrs_With1.Brush.Color := clBlack;
                        qrs_With2.Brush.Color := clWhite;
                        qrs_With3.Brush.Color := clWhite;
                        qrl_Withetc.Caption   := '';
                     end
                     else if strtoint_nvl(Copy(mdPyinfd.sAdmWith[0],1,1)) = 2 then
                     begin
                        qrs_With1.Brush.Color := clWhite;
                        qrs_With2.Brush.Color := clBlack;
                        qrs_With3.Brush.Color := clWhite;
                        qrl_Withetc.Caption   := '';
                     end
                     else if strtoint_nvl(Copy(mdPyinfd.sAdmWith[0],1,1)) = 3 then
                     begin
                        qrs_With1.Brush.Color := clWhite;
                        qrs_With2.Brush.Color := clWhite;
                        qrs_With3.Brush.Color := clBlack;
                        qrl_Withetc.Caption   := trim(Copy(mdPyinfd.sAdmWith[0],2,30));
                     end
                     else
                     begin
                        qrs_With1.Brush.Color := clWhite;
                        qrs_With2.Brush.Color := clwhite;
                        qrs_With3.Brush.Color := clWhite;
                        qrl_Withetc.Caption   := '';
                     end;

                   case strtoint_nvl(mdPyinfd.sWed[0]) of  // 결혼여부 / 자녀수
                      1 : qrl_merry.Caption := '기혼';
                      2 : qrl_merry.Caption := '미혼';
                      3 : qrl_merry.Caption := '사별';
                      4 : qrl_merry.Caption := '기타';
                    else
                          qrl_merry.Caption := '';
                    end;

                     qrl_Family.Caption := mdPyinfd.sFamily[0];
         
                    case strtoint_nvl(mdPyinfd.sReligion[0]) of  // 종교
                      1 : qrl_Religion.Caption := '무교';
                      2 : qrl_Religion.Caption := '기독교';
                      3 : qrl_Religion.Caption := '카톨릭';
                      4 : qrl_Religion.Caption := '불교';
                      5 : qrl_Religion.Caption := '원불교';
                      6 : qrl_Religion.Caption := '천도교';
                      7 : qrl_Religion.Caption := '기타';                      
                    else
                          qrl_Religion.Caption := '';
                    end;

                    strtoint_nvl(mdPyinfd.sEduDgr[0]);

                    case strtoint_nvl(mdPyinfd.sEduDgr[0]) of  // 교육수준
                      0 : qrl_edu.Caption := ' 한글해독불가';
                      1 : qrl_edu.Caption := '국졸이하';
                      2 : qrl_edu.Caption := '중졸';
                      3 : qrl_edu.Caption := '고졸';
                      4 : qrl_edu.Caption := '대졸';
                      5 : qrl_edu.Caption := '대학원이상';
                      6 : qrl_edu.Caption := '기타';
                    else
                          qrl_edu.Caption := '';
                    end;

                    case strtoint_nvl(Copy(mdPyinfd.sJob[0],1,1)) of  // 직업
                      1 : qrl_Job.Caption := '회사원';
                      2 : qrl_Job.Caption := '전문직';
                      3 : qrl_Job.Caption := '주부';
                      4 : qrl_Job.Caption := '학생';
                      5 : qrl_Job.Caption := '군인';
                      6 : qrl_Job.Caption := '무직';
                      7 : qrl_Job.Caption := '자유업';
                      8 : qrl_Job.Caption := copy(mdAdinfd.sJob[0],2,30);
                      9 : qrl_Job.Caption := '기타';
                    else
                          qrl_Job.Caption := '';
                    end;

                 qrl_Rich.Caption        :=mdPyinfd.sRich[0];
                 qrl_Sleep.Caption       :=mdPyinfd.sSleep[0];
                 qrl_meal.Caption        := mdPyinfd.sDiet[0];
                 qrl_Stool.Caption       := mdPyinfd.sFec[0];
                 qrl_Fav.Caption         :=  mdPyinfd.sFav[0];
                 qrl_Hobby.Caption       := mdPyinfd.sHobby[0];
                 qrl_Etc.Caption         := mdPyinfd.sEtc[0];         

                 qrme_InSmpt.Lines.Clear ;
                 qrme_InSmpt.Lines.Text  := mdPyinfd.sSymptoms[0];

                 qrme_View.Lines.Clear;
                 qrme_View.Lines.Text    :=  mdPyinfd.sFace[0];


                 if (Copy(mdPyinfd.sSpirit[0],1,1) = 'Y') then
                    qrs_pthist1.brush.color := clBlack
                 else
                    qrs_pthist1.brush.color := clWhite;

                 if (Copy(mdPyinfd.sSpirit[0],2,1) = 'Y') then
                    qrs_pthist2.brush.color := clBlack
                 else
                    qrs_pthist2.brush.color := clWhite;

                 if (Copy(mdPyinfd.sSpirit[0],3,1) = 'Y') then
                    qrs_pthist3.brush.color := clBlack
                 else
                    qrs_pthist3.brush.color := clWhite;

                 if (Copy(mdPyinfd.sSpirit[0],4,1) = 'Y') then
                 begin
                    qrs_pthist4.brush.color := clBlack;
                    qrl_pthist.Caption      := mdPyinfd.sSpiEtc[0];
                 end
                 else
                 begin
                    qrs_pthist4.brush.color := clWhite;
                    qrl_pthist.Caption      := '';
                 end;

                 if (Copy(mdPyinfd.sSpirit[0],5,1) = 'Y') then
                 begin
                    qrs_pthist5.brush.color := clBlack;
                    qrl_pthist.Caption      := '';
                 end;

                 if (Copy(mdPyinfd.sAtti[0],1,1)='Y') then
                    qrs_Atti1.brush.color := clBlack
                 else
                    qrs_Atti1.brush.color := clWhite;
            
                 if (Copy(mdPyinfd.sAtti[0],2,1)='Y') then
                    qrs_Atti2.brush.color := clBlack
                 else
                    qrs_Atti2.brush.color := clWhite;

                 if (Copy(mdPyinfd.sAtti[0],3,1)='Y') then
                    qrs_Atti3.brush.color := clBlack
                 else
                    qrs_Atti3.brush.color := clWhite;
            
                 if (Copy(mdPyinfd.sAtti[0],4,1)='Y') then
                    qrs_Atti4.brush.color := clBlack
                 else
                    qrs_Atti4.brush.color := clWhite;

                 if (Copy(mdPyinfd.sAtti[0],5,1)='Y') then
                    qrs_Atti5.brush.color := clBlack
                 else
                    qrs_Atti5.brush.color := clWhite;
                 if (Copy(mdPyinfd.sAtti[0],6,1)='Y') then
                    qrs_Atti6.brush.color := clBlack
                 else
                    qrs_Atti6.brush.color := clWhite;
            
                 if (Copy(mdPyinfd.sAtti[0],7,1)='Y') then
                    qrs_Atti7.brush.color := clBlack
                 else
                    qrs_Atti7.brush.color := clWhite;


                 if (Copy(mdPyinfd.sEmo[0],1,1) = 'Y') then
                    qrs_mind1.brush.color := clblack
                 else
                    qrs_mind1.brush.color := clwhite;

                 if (Copy(mdPyinfd.sEmo[0],2,1) = 'Y') then
                    qrs_mind2.brush.color := clblack
                 else
                    qrs_mind2.brush.color := clwhite;

                 if (Copy(mdPyinfd.sEmo[0],3,1) = 'Y') then
                    qrs_mind3.brush.color := clblack
                 else
                    qrs_mind3.brush.color := clwhite;

                 if (Copy(mdPyinfd.sEmo[0],4,1) = 'Y') then
                    qrs_mind4.brush.color := clblack
                 else
                    qrs_mind4.brush.color := clWhite;

                 if (Copy(mdPyinfd.sEmo[0],5,1) = 'Y') then
                    qrs_mind5.brush.color := clblack
                 else
                    qrs_mind5.brush.color := clWhite;

                 if (Copy(mdPyinfd.sEmo[0],6,1) = 'Y') then
                    qrs_mind6.brush.color := clblack
                 else
                    qrs_mind6.brush.color := clWhite;

                 if (Copy(mdPyinfd.sEmo[0],7,1) = 'Y') then
                    qrs_mind7.brush.color := clblack
                 else
                    qrs_mind7.brush.color := clWhite;

                 if (Copy(mdPyinfd.sEmo[0],8,1) = 'Y') then
                    qrs_mind8.brush.color := clblack
                 else
                    qrs_mind8.brush.color := clWhite;

                 if (Copy(mdPyinfd.sLang[0],1,1) = 'Y') then
                    qrs_talk1.brush.color := clblack
                 else
                    qrs_talk1.brush.color := clWhite;

                 if (Copy(mdPyinfd.sLang[0],2,1) = 'Y') then
                    qrs_talk2.brush.color := clblack
                 else
                    qrs_talk2.brush.color := clWhite;

                 if (Copy(mdPyinfd.sLang[0],3,1) = 'Y') then
                    qrs_talk3.brush.color := clblack
                 else
                    qrs_talk3.brush.color := clWhite;

                 if (Copy(mdPyinfd.sLang[0],4,1) = 'Y') then
                    qrs_talk4.brush.color := clblack
                 else
                    qrs_talk4.brush.color := clWhite;

                 if (Copy(mdPyinfd.sLang[0],5,1) = 'Y') then
                    qrs_talk5.brush.color := clblack
                 else
                    qrs_talk5.brush.color := clWhite;

                 if (Copy(mdPyinfd.sLang[0],6,1) = 'Y') then
                    qrs_talk6.brush.color := clblack
                 else
                    qrs_talk6.brush.color := clWhite;

                 if (Copy(mdPyinfd.sSens[0],1,1) = 'Y') then
                    qrs_Sense1.brush.color := clblack
                 else
                    qrs_Sense1.brush.color := clWhite;

                 if (Copy(mdPyinfd.sSens[0],2,1) = 'Y') then
                    qrs_Sense2.brush.color := clblack
                 else
                    qrs_Sense1.brush.color := clWhite;

                 if (Copy(mdPyinfd.sSens[0],3,1) = 'Y') then
                    qrs_Sense3.brush.color := clblack
                 else
                    qrs_Sense3.brush.color := clWhite;

                 if (Copy(mdPyinfd.sSens[0],4,1) = 'Y') then
                    qrs_Sense4.brush.color := clblack
                 else
                    qrs_Sense4.brush.color := clWhite;

                 if (Copy(mdPyinfd.sSens[0],5,1) = 'Y') then
                    qrs_Sense5.brush.color := clblack
                 else
                    qrs_Sense5.brush.color := clWhite;

                 if (Copy(mdPyinfd.sSens[0],6,1) = 'Y') then
                    qrs_Sense6.brush.color := clblack
                 else
                    qrs_Sense6.brush.color := clWhite;

                 if (Copy(mdPyinfd.sAcci[0],1,1) = 'Y') then
                    qrs_think1.brush.color := clblack
                 else
                    qrs_think1.brush.color := clWhite;

                 if (Copy(mdPyinfd.sAcci[0],2,1) = 'Y') then
                    qrs_think2.brush.color := clblack
                 else
                    qrs_think2.brush.color := clWhite;

                 if (Copy(mdPyinfd.sAcci[0],3,1) = 'Y') then
                    qrs_think3.brush.color := clblack
                 else
                    qrs_think1.brush.color := clWhite;

                 if (Copy(mdPyinfd.sAcci[0],4,1) = 'Y') then
                    qrs_think4.brush.color := clblack
                 else
                    qrs_think4.brush.color := clWhite;

                 if (Copy(mdPyinfd.sAcci[0],5,1) = 'Y') then
                    qrs_think5.brush.color := clblack
                 else
                    qrs_think5.brush.color := clWhite;

                 if (Copy(mdPyinfd.sAcci[0],6,1) = 'Y') then
                    qrs_think6.brush.color := clblack
                 else
                    qrs_think6.brush.color := clWhite;
                 if (Copy(mdPyinfd.sAcci[0],7,1) = 'Y') then
                 begin
                    qrs_think7.brush.color := clBlack;
                    qrl_think.Caption      := Copy(mdPyinfd.sAcci[0],8,Length(mdPyinfd.sAcci[0]));
                 end
                 else
                 begin
                    qrs_think7.brush.color := clWhite;
                    qrl_think.Caption      := '';
                 end;

                 if (Copy(mdPyinfd.sCons[0],1,1) = 'Y') then
                    qrs_sen1.brush.color := clblack
                 else
                    qrs_sen1.brush.color := clWhite;

                 if (Copy(mdPyinfd.sCons[0],2,1) = 'Y') then
                    qrs_sen2.brush.color := clblack
                 else
                    qrs_sen2.brush.color := clwhite;

                 if (Copy(mdPyinfd.sCons[0],3,1) = 'Y') then
                    qrs_sen3.brush.color := clblack
                 else
                    qrs_sen3.brush.color := clWhite;

                 if (Copy(mdPyinfd.sCons[0],4,1) = 'Y') then
                    qrs_sen4.brush.color := clblack
                 else
                    qrs_sen4.brush.color := clWhite;

                 if (Copy(mdPyinfd.sCons[0],5,1) = 'Y') then
                    qrs_sen5.brush.color := clblack
                 else
                    qrs_sen5.brush.color := clWhite;

                 if (Copy(mdPyinfd.sGn[0],1,1) = 'Y') then
                    qrs_pshist1.Brush.color := clBlack
                 else
                    qrs_pshist1.Brush.color := clWhite;

                 if (Copy(mdPyinfd.sGn[0],2,1) = 'Y') then
                    qrs_pshist2.Brush.color := clBlack
                 else
                    qrs_pshist2.Brush.color := clWhite;

                 if (Copy(mdPyinfd.sGn[0],3,1) = 'Y') then
                    qrs_pshist3.Brush.color := clBlack
                 else
                    qrs_pshist3.Brush.color := clWhite;

                 if (Copy(mdPyinfd.sGn[0],4,1) = 'Y') then
                    qrs_pshist4.Brush.color := clBlack
                 else
                    qrs_pshist4.Brush.color := clWhite;

                 if (Copy(mdPyinfd.sRem[0],1,1) = 'Y') then
                    qrs_mem1.Brush.Color := clblack
                 else
                    qrs_mem1.Brush.Color := clwhite;
                 if (Copy(mdPyinfd.sRem[0],2,1) = 'Y') then
                    qrs_mem2.Brush.Color := clblack
                 else
                    qrs_mem2.Brush.Color := clWhite;
                 if (Copy(mdPyinfd.sRem[0],3,1) = 'Y') then
                    qrs_mem3.Brush.Color := clblack
                 else
                    qrs_mem3.Brush.Color := clWhite;

                 if (Copy(mdPyinfd.sJud[0],1,1) = 'Y') then
                    qrs_decide1.Brush.Color := clBlack
                 else
                    qrs_decide1.Brush.Color := clWhite;
                 if (Copy(mdPyinfd.sJud[0],2,1) = 'Y') then
                    qrs_decide2.Brush.Color := clBlack
                 else
                    qrs_decide2.Brush.Color := clWhite;
                 if (Copy(mdPyinfd.sJud[0],3,1) = 'Y') then
                    qrs_decide3.Brush.Color := clBlack
                 else
                    qrs_decide3.Brush.Color := clWhite;
                 if (Copy(mdPyinfd.sJud[0],4,1) = 'Y') then
                    qrs_decide4.Brush.Color := clBlack
                 else
                    qrs_decide4.Brush.Color := clWhite;
                 if (Copy(mdPyinfd.sJud[0],5,1) = 'Y') then
                    qrs_decide5.Brush.Color := clBlack
                 else
                    qrs_decide5.Brush.Color := clWhite;
                 if (Copy(mdPyinfd.sJud[0],6,1) = 'Y') then
                    qrs_decide6.Brush.Color := clBlack
                 else
                    qrs_decide6.Brush.Color := clWhite;

                 qrl_icd.Caption := mdPyinfd.sIcd[0];
         
                 qrl_telno1.Caption := mdPyinfd.sTelno1[0];
                 qrl_telno2.Caption := mdPyinfd.sTelno2[0];
                 qrl_addr.caption := pn_Address.Caption;

                 if strtoint_nvl(mdPyinfd.sArgyn[0]) = 2 then
                 begin
                    qrs_argyn1.Brush.Color := clWhite;
                    qrs_argyn2.Brush.Color := clBlack;
                 end
                 else
                 if strtoint_nvl(mdPyinfd.sArgyn[0]) = 1 then
                 begin
                    qrs_argyn1.Brush.Color := clBlack;
                    qrs_argyn2.Brush.Color := clWhite;
                 end
                 else
                 begin
                    qrs_argyn1.Brush.Color := clWhite;
                    qrs_argyn2.Brush.Color := clWhite;
                 end;

                 qrl_argdg.Caption := mdPyinfd.sArgdg[0];
                 qrl_argfd.Caption := mdPyinfd.sArgfd[0];

                 shcbx_pro(qrs_pthist1_1,copy(mdPyinfd.sPthist[0],1,1));
                 shcbx_pro(qrs_pthist1_2,copy(mdPyinfd.sPthist[0],2,1));
                 shcbx_pro(qrs_pthist1_3,copy(mdPyinfd.sPthist[0],3,1));
                 shcbx_pro(qrs_pthist1_4,copy(mdPyinfd.sPthist[0],4,1));
                 shcbx_pro(qrs_pthist1_5,copy(mdPyinfd.sPthist[0],5,1));
                 shcbx_pro(qrs_pthist1_6,copy(mdPyinfd.sPthist[0],6,1));
                 qrl_pthist_1.Caption := Trim(copy(mdPyinfd.sPthist[0],7,55));

                 if strtoint_nvl(copy(mdPyinfd.sdgstat[0],1,1)) = 2 then
                 begin
                    qrs_dgstat1.Brush.Color := clWhite;
                    qrs_dgstat2.Brush.Color := clBlack;
                 end
                 else
                 if strtoint_nvl(copy(mdPyinfd.sdgstat[0],1,1)) = 1 then
                 begin
                    qrs_dgstat1.Brush.Color := clBlack;
                    qrs_dgstat2.Brush.Color := clWhite;
                 end
                 else
                 begin
                    qrs_dgstat1.Brush.Color := clWhite;
                    qrs_dgstat2.Brush.Color := clWhite;
                 end;

                 shcbx_pro(qrs_famcase1,copy(mdPyinfd.sFamcase[0],1,1));
                 shcbx_pro(qrs_famcase2,copy(mdPyinfd.sFamcase[0],2,1));
                 shcbx_pro(qrs_famcase3,copy(mdPyinfd.sFamcase[0],3,1));
                 shcbx_pro(qrs_famcase4,copy(mdPyinfd.sFamcase[0],4,1));
                 shcbx_pro(qrs_famcase5,copy(mdPyinfd.sFamcase[0],5,1));
                 shcbx_pro(qrs_famcase6,copy(mdPyinfd.sFamcase[0],6,1));
                 shcbx_pro(qrs_famcase7,copy(mdPyinfd.sFamcase[0],7,1));
                 qrl_famcase.Caption := Trim(copy(mdPyinfd.sFamcase[0],8,55));
                 qrl_famrela.Caption := mdPyinfd.sFamrela[0];
         
                 if strtoint_nvl(copy(mdPyinfd.sopyn[0],1,1)) = 2 then
                 begin
                    qrs_opyn1.Brush.Color := clWhite;
                    qrs_opyn2.Brush.Color := clBlack;
                 end
                 else
                 if strtoint_nvl(copy(mdPyinfd.sopyn[0],1,1)) = 1 then
                 begin
                    qrs_opyn1.Brush.Color := clBlack;
                    qrs_opyn2.Brush.Color := clWhite;
                 end
                 else
                 begin
                    qrs_opyn1.Brush.Color := clWhite;
                    qrs_opyn2.Brush.Color := clWhite;
                 end;
                 qrl_opnm.Caption := copy(mdPyinfd.sopyn[0],2,249);
         
                 shcbx_pro(qrs_circst1,copy(mdPyinfd.scircst[0],1,1));
                 shcbx_pro(qrs_circst2,copy(mdPyinfd.scircst[0],2,1));
                 shcbx_pro(qrs_circst3,copy(mdPyinfd.scircst[0],3,1));
                 shcbx_pro(qrs_circst4,copy(mdPyinfd.scircst[0],4,1));
                 shcbx_pro(qrs_circst5,copy(mdPyinfd.scircst[0],5,1));
                 shcbx_pro(qrs_circst6,copy(mdPyinfd.scircst[0],6,1));
                 shcbx_pro(qrs_circst7,copy(mdPyinfd.scircst[0],7,1));
                 shcbx_pro(qrs_circst8,copy(mdPyinfd.scircst[0],8,1));

                 shcbx_pro(qrs_respst1,copy(mdPyinfd.srespst[0],1,1));
                 shcbx_pro(qrs_respst2,copy(mdPyinfd.srespst[0],2,1));
                 shcbx_pro(qrs_respst3,copy(mdPyinfd.srespst[0],3,1));
                 shcbx_pro(qrs_respst4,copy(mdPyinfd.srespst[0],4,1));
                 shcbx_pro(qrs_respst5,copy(mdPyinfd.srespst[0],5,1));
                 shcbx_pro(qrs_respst6,copy(mdPyinfd.srespst[0],6,1));
                 shcbx_pro(qrs_respst7,copy(mdPyinfd.srespst[0],7,1));
                 shcbx_pro(qrs_respst8,copy(mdPyinfd.srespst[0],8,1));

                 shcbx_pro(qrs_dietst1,copy(mdPyinfd.sDietst[0],1 ,1));
                 shcbx_pro(qrs_dietst2,copy(mdPyinfd.sDietst[0],2 ,1));
                 shcbx_pro(qrs_dietst3,copy(mdPyinfd.sDietst[0],3 ,1));
                 shcbx_pro(qrs_dietst4,copy(mdPyinfd.sDietst[0],4 ,1));
                 shcbx_pro(qrs_dietst5,copy(mdPyinfd.sDietst[0],5 ,1));
                 shcbx_pro(qrs_dietst6,copy(mdPyinfd.sDietst[0],6 ,1));
                 shcbx_pro(qrs_dietst7,copy(mdPyinfd.sDietst[0],7 ,1));
                 shcbx_pro(qrs_dietst8,copy(mdPyinfd.sDietst[0],8 ,1));
                 shcbx_pro(qrs_dietst9,copy(mdPyinfd.sDietst[0],9 ,1));
                 shcbx_pro(qrs_dietst10,copy(mdPyinfd.sDietst[0],10 ,1));
                 shcbx_pro(qrs_dietst11,copy(mdPyinfd.sDietst[0],11 ,1));

                 shcbx_pro(qrs_sleep1,copy(mdPyinfd.ssleepst[0],1,1));
                 shcbx_pro(qrs_sleep2,copy(mdPyinfd.ssleepst[0],2,1));

                 shcbx_pro(qrs_sleepdg1,copy(mdPyinfd.ssleepdg[0],1,1));
                 shcbx_pro(qrs_sleepdg2,copy(mdPyinfd.ssleepdg[0],2,1));

                 qrl_drink.Caption := mdPyinfd.sDrink[0];
                 qrl_tabaco.Caption := mdPyinfd.sTabaco[0];

                 shcbx_pro(qrs_edu1 ,copy(mdPyinfd.sEdu1[0],1 ,1));

                 shcbx_pro(qrs_edu2 ,copy(mdPyinfd.sEdu2[0],1 ,1));
                 shcbx_pro(qrs_edu21,copy(mdPyinfd.sEdu2[0],2,1));
                 shcbx_pro(qrs_edu22,copy(mdPyinfd.sEdu2[0],3 ,1));
                 shcbx_pro(qrs_edu23,copy(mdPyinfd.sEdu2[0],4 ,1));
                 shcbx_pro(qrs_edu24,copy(mdPyinfd.sEdu2[0],5 ,1));
                 shcbx_pro(qrs_edu25,copy(mdPyinfd.sEdu2[0],6 ,1));
                 shcbx_pro(qrs_edu26,copy(mdPyinfd.sEdu2[0],7 ,1));
                 shcbx_pro(qrs_edu27,copy(mdPyinfd.sEdu2[0],8 ,1));
                 shcbx_pro(qrs_edu28,copy(mdPyinfd.sEdu2[0],9 ,1));
                 shcbx_pro(qrs_edu29,copy(mdPyinfd.sEdu2[0],10,1));
                 shcbx_pro(qrs_edu30,copy(mdPyinfd.sEdu2[0],11 ,1));
                 shcbx_pro(qrs_edu311,copy(mdPyinfd.sEdu2[0],12,1));

                 shcbx_pro(qrs_edu3 ,copy(mdPyinfd.sEdu3[0],1 ,1));
                 shcbx_pro(qrs_edu31,copy(mdPyinfd.sEdu3[0],2 ,1));
                 shcbx_pro(qrs_edu32,copy(mdPyinfd.sEdu3[0],3 ,1));
                 shcbx_pro(qrs_edu33,copy(mdPyinfd.sEdu3[0],4 ,1));
                 shcbx_pro(qrs_edu34,copy(mdPyinfd.sEdu3[0],5 ,1));
                 shcbx_pro(qrs_edu35,copy(mdPyinfd.sEdu3[0],6 ,1));
                 shcbx_pro(qrs_edu36,copy(mdPyinfd.sEdu3[0],7,1));

                 shcbx_pro(qrs_edu4, copy(mdPyinfd.sEdu4[0],1 ,1));
                 shcbx_pro(qrs_edu5, copy(mdPyinfd.sEdu5[0],1 ,1));
                 shcbx_pro(qrs_edu6, copy(mdPyinfd.sEdu6[0],1 ,1));
                 shcbx_pro(qrs_edu7, copy(mdPyinfd.sEdu7[0],1 ,1));
                 shcbx_pro(qrs_edu8, copy(mdPyinfd.sEdu8[0],1 ,1));

                 //==============2011인증평가, KimDaeYong 2011-07-16======================//
                 qrlb_Frecdate.Caption := mdPyinfd.sFrecdate[0]; //최초기록일시, KimDaeYong 2011-06-09

                 {1.일반정보}
                 if strtoint_nvl(mdPyinfd.sNation[0]) = 1 then qrl_Nation.Caption := '대한민국'
                                               else qrl_Nation.Caption := mdPyinfd.sNationoth[0];

                     case strtoint_nvl(mdpyinfd.sRace[0]) of  // 인종
                        1 : qrl_Race.Caption := '황인종';
                        2 : qrl_Race.Caption := '백인종';
                        3 : qrl_Race.Caption := '흑인종';
                      else
                            qrl_Race.Caption := ''
                      end;
                     case strtoint_nvl(mdpyinfd.sPay[0]) of  //진료비지불능력
                        1 : qrl_Pay.Caption := '있음';
                        2 : qrl_Pay.Caption := '없음';
                      else
                            qrl_Pay.Caption := ''
                      end;
                     case strtoint_nvl(mdpyinfd.sBokji[0]) of  ////사회복지상담
                        1 : qrl_Bokji.Caption := '필요';
                        2 : qrl_Bokji.Caption := '불필요';
                      else
                            qrl_Bokji.Caption := ''
                      end;
         
                     qrl_Telno3.Caption := mdPyinfd.sTelno3[0];
                     qrl_Telno4.Caption := mdPyinfd.sTelno4[0];
         
                     {2.입원관련정보}
                     qrl_Arganti.Caption := mdPyinfd.sArganti[0];
                     qrl_Argetc.Caption  := mdPyinfd.sArgetc[0];
                           
                     {3.건강관련정보}
                    case strtoint_nvl(mdPyinfd.sAppetite[0]) of  // 식욕
                      1 : qrl_Appetite.Caption := '양호';
                      2 : qrl_Appetite.Caption := '보통';
                      3 : qrl_Appetite.Caption := '불량';

                    else
                          qrl_Appetite.Caption := ''
                    end;

                   case strtoint_nvl(mdpyinfd.sWetchg[0]) of  // 체중변화
                      1 : qrl_Wetchg.Caption := '증가';
                      2 : qrl_Wetchg.Caption := '감소';
                      3 : qrl_Wetchg.Caption := '무';
                    else
                          qrl_Wetchg.Caption := ''
                    end;

                   case strtoint_nvl(mdpyinfd.sDysphagia[0]) of  // 연하곤란
                      1 : qrl_Dysphagia.Caption := '있음';
                      2 : qrl_Dysphagia.Caption := '없음'
                    else
                          qrl_Dysphagia.Caption := ''
                    end;

                     case strtoint_nvl(mdpyinfd.sStress[0]) of  //대사적스트레스 정도
                      1 : qrl_Stress.Caption := '해당 사항 없음';
                      2 : qrl_Stress.Caption := '골반골절로 치료중인 자';
                      3 : qrl_Stress.Caption := '만성폐쇄성폐질환의 급성학화기 상태인자';
                      4 : qrl_Stress.Caption := '조절되지 않는 대량복수나 간성뇌증을 동반한 간경변증 환자';
                      5 : qrl_Stress.Caption := '항암화학요법을 위해 입원한 자';
                      6 : qrl_Stress.Caption := '경부나 흉부, 복부의 방사선 치료를 위해 입원한 자';
                      7 : qrl_Stress.Caption := '신 기능 부전으로 혈액투석이나 복막투석 치료중인 자';
                      8 : qrl_Stress.Caption := '개복 또는 개흉 수술 후 3일 이상 금식중인 자';
                      9 : qrl_Stress.Caption := '입원치료를 요하는 급성 뇌경색 환자';
                      10: qrl_Stress.Caption := '중증 폐렴으로 인해 산소공급을 요하여 침상안정이 필요한 자';
                      11: qrl_Stress.Caption := '중환자실에서 인공호흡기 치료를 요하는 자';                      
                    else
                          qrl_Stress.Caption := '' ;
                    end;

         {4.입원간호교육}
         shcbx_pro(qrs_Safeedu1, copy(mdPyinfd.sSafeedu[0],1,1));
         shcbx_pro(qrs_Safeedu2, copy(mdPyinfd.sSafeedu[0],2,1));
         shcbx_pro(qrs_Safeedu3, copy(mdPyinfd.sSafeedu[0],3,1));
         shcbx_pro(qrs_Safeedu4, copy(mdPyinfd.sSafeedu[0],4,1));
         shcbx_pro(qrs_Safeedu5, copy(mdPyinfd.sSafeedu[0],5,1));
         qrme_Eduoth.Lines.Text := mdPyinfd.sEduoth[0];
         {5.초기퇴원계획}
         if strtoint_nvl(mdPyinfd.sOutedu1[0]) = 1 then qrs_Outedu11.Brush.Color := clBlack;   //보호자거주유무
         if strtoint_nvl(mdPyinfd.sOutedu1[0]) = 2 then qrs_Outedu12.Brush.Color := clBlack;
         
         if strtoint_nvl(mdPyinfd.sOutedu2[0]) = 1 then qrs_Outedu21.Brush.Color := clBlack;   //간병인유무
         if strtoint_nvl(mdPyinfd.sOutedu2[0]) = 2 then qrs_Outedu22.Brush.Color := clBlack;
         
         if mdPyinfd.sOutedu3[0]='1' then qrs_Outedu31.Brush.Color := clBlack;   //환자머무르는곳
         if mdPyinfd.sOutedu3[0]='2' then qrs_Outedu32.Brush.Color := clBlack;
         if mdPyinfd.sOutedu3[0]='3' then qrs_Outedu33.Brush.Color := clBlack;
         if mdPyinfd.sOutedu3[0]='4' then qrs_Outedu34.Brush.Color := clBlack;
         qrl_Outedu3oth.Caption := mdPyinfd.sOutedu3oth[0];
         
         if mdPyinfd.sOutedu4[0] = '1' then qrs_Outedu41.Brush.Color := clBlack;   //보호자연락
         if mdPyinfd.sOutedu4[0] = '2' then qrs_Outedu42.Brush.Color := clBlack;


         if mdPyinfd.sOutedu5[0] = '0' then qrs_Outedu51.Brush.Color := clBlack;      //교육대상 - 환자
         if mdPyinfd.sOutedu5[0] = '1' then qrs_Outedu52.Brush.Color := clBlack;
         if mdPyinfd.sOutedu5[0] = '2' then qrs_Outedu53.Brush.Color := clBlack;
         if mdPyinfd.sOutedu5[0] = '' then qrs_Outedu51.Brush.Color := clBlack;      //교육대상 - 환자

         
         //수혈거부여부.kya.20150326.
         if strtoint_nvl(mdPyinfd.sBloodyn[0]) = 1 then
         begin
            qrs_bloody.Brush.Color := clBlack;
            qrs_bloodN.Brush.Color := clWhite;
         end
         else
         if strtoint_nvl(mdPyinfd.sBloodyn[0]) = 2 then
         begin
            qrs_bloody.Brush.Color := clWhite;
            qrs_bloodN.Brush.Color := clBlack;
         end;
         
         //기타.kya.20150326.
         qrl_Culturetc.Caption :=  mdPyinfd.sCultueretc[0];
         QRLabel190.Caption := mdPyinfd.sRecnrs[0];
         QRLabel125.Caption := mdPyinfd.sRecnrs[0];
         //지참약.kya.20151203.

         if mdPyinfd.sBring[0] = 'Y' then qrs_bringY.Brush.Color := clBlack
                                     else qrs_bringN.Brush.Color := clBlack;

             end;

              // 기록지 스캔시 필수공통정보
              lb_patno.caption := sInPatno;
              lb_meddate.caption := ugd_RecodDt.Cells[1,ugd_RecodDt.Row];
              lb_dschdate.caption := ugd_RecodDt.Cells[5,ugd_RecodDt.Row];
              lb_patgubun.caption := 'I';
              lb_meddept.caption := ugd_RecodDt.Cells[6,ugd_RecodDt.Row];
              lb_chadr.caption := ugd_RecodDt.Cells[7,ugd_RecodDt.Row];

             mdPyinfd.Free;
             MNW923S2.qrp_1.Print;
             MNW923S2.QuickRep1.Print;

             {
             MNW923S2.qrp_1.Preview;
             MNW923S2.QuickRep1.Preview;
             }
             MNW923S2.Close;
             
              // G_USERID, G_USERIP
              UpdateRecord(sInPatno,sPk2,'empty','empty','empty' ,g_RecKind);

      end
    else if (g_RecKind='MDNBINFT') then // 간호정보기록지- 신생아 [20]
        begin

             sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
             sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 입원일자 'YYYYMMDD'

            mdAdinfd := HmdAdinfd.Create;
            //이력조회.20181015.kya.
            RowNo := mdAdinfd.SelMdnbinftdll(sInPatno, sPk2, '');  // md_nbinf_s1.pc

                 // SYSTEM ERROR
                if RowNo = -1 then
                begin
                   mdAdinfd.Free;
                   ShowErrMsg(stb_Message);
                   Exit;
                end;

                // 조회건수 없음
                if RowNo = 0 then
                begin
                   mdAdinfd.Free;
                end;

                if MNW924S2 <> nil then MNW924S2.Close;
                    Application.CreateForm(TMNW924S2, MNW924S2);
                    
              with MNW924S2 do
                  begin
                   qrl_PatNo.Caption :=ed_PatNo.Text;
                   qrl_patname.Caption := pn_PatName.Caption;
                   qrl_ci.Caption := copy(pn_ResNo.Caption,1,8) + '******';
                   qrl_sex.Caption := pn_SexAge.Caption;
                   qrl_meddept.Caption := mdAdinfd.sMedDept[0]; // 진료과
                   qrl_chadr.Caption := ugd_RecodDt.Cells[3,ugd_RecodDt.Row];   // 주치의
                   qrl_ward.Caption := ugd_RecodDt.Cells[4,ugd_RecodDt.Row];   // 병동/병실
                   qrlb_Frecdate.Caption := mdAdinfd.sFrecdate[0];  //최초기록일시, KimDaeYong 2011-07-14

                   qrlb_BornDateY.Caption := Copy(mdAdinfd.sDschDate[0],1,4);
                   qrlb_BornDateM.Caption := Copy(mdAdinfd.sDschDate[0],5,2);
                   qrlb_BornDateD.Caption := Copy(mdAdinfd.sDschDate[0],7,2);
                   qrlb_BornDateH.Caption := Copy(mdAdinfd.sDschDate[0],9,2) + ':' + Copy(mdAdinfd.sDschDate[0],11,2);

                   qrlb_AdmDateY.Caption := Copy(sPk2,1,4);
                   qrlb_AdmDateM.Caption := Copy(sPk2,5,2);
                   qrlb_AdmDateD.Caption := Copy(sPk2,7,2);
                   qrlb_AdmDateH.Caption := Copy(mdAdinfd.sSkncunYn[0],1,2) + ':' + Copy(mdAdinfd.sSkncunYn[0],3,2);

                   qrlb_Dgp.Caption := mdAdinfd.sInfDnr[0] + ' 주 ' + mdAdinfd.sTelNo[0];
                   qrlb_Weight.Caption := mdAdinfd.sAddress[0];

                   if mdAdinfd.sBldAbo[0] = 'M' then
                   begin
                      qrs_sexM.Brush.Color := clblack;
                      qrs_sexF.Brush.Color := clWhite;
                   end
                   else if mdAdinfd.sBldAbo[0] = 'F' then
                   begin
                      qrs_sexM.Brush.Color := clwhite;
                      qrs_sexF.Brush.Color := clblack;
                   end
                   else
                   begin
                      qrs_sexM.Brush.Color := clwhite;
                      qrs_sexF.Brush.Color := clWhite;
                   end;

                   if trim(mdAdinfd.sBldRh[0]) = 'C' then
                   begin
                      qrlb_DelType.Caption := 'C / S'
                   end
                   else
                      qrlb_DelType.Caption := mdAdinfd.sBldRh[0]+ ' / D';

                   qrlb_Apgar1.Caption  := mdAdinfd.sEdudGr[0];
                   qrlb_Apgar5.Caption  := mdAdinfd.sReligion[0];
                   qrlb_Parity.Caption  := mdAdinfd.sJob[0];

                   if copy(mdAdinfd.sHabdrkYn[0],1,1) = 'Y' then
                      qrs_DelMark1.Brush.Color := clBlack
                   else
                      qrs_DelMark1.Brush.Color := clwhite;

                   if copy(mdAdinfd.sHabdrkYn[0],2,1) = 'Y'  then
                      qrs_DelMark2.Brush.Color := clBlack
                   else
                      qrs_DelMark2.Brush.Color := clwhite;

                   if copy(mdAdinfd.sHabdrkYn[0],3,1) = 'Y' then
                      qrs_DelMark3.Brush.Color := clBlack
                   else
                      qrs_DelMark3.Brush.Color := clwhite;

                   if copy(mdAdinfd.sHabdrkYn[0],4,1) = 'Y' then
                      qrs_DelMark4.Brush.Color := clBlack
                   else
                      qrs_DelMark4.Brush.Color := clwhite;

                   if copy(mdAdinfd.sHabdrkYn[0],5,1) = 'Y' then
                      qrs_DelMark5.Brush.Color := clBlack
                   else
                      qrs_DelMark5.Brush.Color := clwhite;

                   if  copy(mdAdinfd.sHabdrkYn[0],6,1) = 'Y' then
                      qrs_DelMark6.Brush.Color := clBlack
                   else
                      qrs_DelMark6.Brush.Color := clwhite;

                   if copy(mdAdinfd.sHabdrkYn[0],7,1) = 'Y' then
                      qrs_DelMark7.Brush.Color := clBlack
                   else
                      qrs_DelMark7.Brush.Color := clwhite;

                   if copy(mdAdinfd.sHabdrkYn[0],8,1) = 'Y' then
                      qrs_DelMark8.Brush.Color := clBlack
                   else
                      qrs_DelMark8.Brush.Color := clwhite;

                   qrlb_DelMark11.Caption  := mdAdinfd.sHabdrkSp[0];
                   qrlb_DelMark22.Caption  := mdAdinfd.sHabdrkDg[0];
                   qrlb_DelMark33.Caption  := mdAdinfd.sHabdrkCt[0];
                   qrlb_DelMark55.Caption  := mdAdinfd.sHabdrkPd[0];
                   qrlb_DelMark66.Caption  := mdAdinfd.sHabsmkYn[0];

                   qrlb_icdname.Caption    := mdAdinfd.sDiagName[0];

                   qrme_Remark.Lines.Clear;
                   qrme_Remark.Lines.Add(mdAdinfd.sHabsmkDg[0]);

                   if mdAdinfd.sHabsmkPd[0] ='N' then
                      qrs_Hyn1.Brush.Color := clBlack
                   else
                      qrs_Hyn1.Brush.Color := clwhite;

                   if mdAdinfd.sHabsmkPd[0] ='Y' then
                      qrs_Hyn2.Brush.Color := clBlack
                   else
                      qrs_Hyn2.Brush.Color := clwhite;

                   if copy(mdAdinfd.sAdmPath[0],1,1) = 'Y' then
                      qrs_Stlcnt1.Brush.Color := clBlack
                   else
                      qrs_Stlcnt1.Brush.Color := clwhite;

                   if copy(mdAdinfd.sAdmPath[0],2,1) = 'Y' then
                      qrs_Stlcnt2.Brush.Color := clBlack
                   else
                      qrs_Stlcnt2.Brush.Color := clwhite;

                   if copy(mdAdinfd.sAdmPath[0],3,1) = 'Y' then
                      qrs_Stlcnt3.Brush.Color := clBlack
                   else
                      qrs_Stlcnt3.Brush.Color := clwhite;

                   if copy(mdAdinfd.sAdmPath[0],4,1) = 'Y' then
                      qrs_Stlcnt4.Brush.Color := clBlack
                   else
                      qrs_Stlcnt4.Brush.Color := clwhite;

                   if copy(mdAdinfd.sInMthd[0],1,1) = 'Y' then
                      qrs_stlcol1.Brush.Color := clBlack
                   else
                      qrs_stlcol1.Brush.Color := clwhite;

                   if copy(mdAdinfd.sInMthd[0],2,1) = 'Y' then
                      qrs_stlcol2.Brush.Color := clBlack
                   else
                      qrs_stlcol2.Brush.Color := clWhite;

                   if copy(mdAdinfd.sInMthd[0],3,1) = 'Y' then
                      qrs_stlcol3.Brush.Color := clBlack
                   else
                      qrs_stlcol3.Brush.Color := clWhite;

                   if copy(mdAdinfd.sInMthd[0],4,1) = 'Y' then
                      qrs_stlcol4.Brush.Color := clBlack
                   else
                      qrs_stlcol4.Brush.Color := clwhite;

                   if mdAdinfd.sSymptoms[0] = 'N' then
                      qrs_OxygenYn1.Brush.Color := clBlack
                   else
                      qrs_OxygenYn1.Brush.Color := clwhite;

                   if mdAdinfd.sSymptoms[0] = 'Y' then
                      qrs_OxygenYn2.Brush.Color := clBlack
                   else
                      qrs_OxygenYn2.Brush.Color := clwhite;

                   qrlb_Oxygen.Caption := mdAdinfd.sIndzfDt[0];

                   if mdAdinfd.sIndzlDt[0] = 'Y' then
                      qrs_TempKind1.Brush.Color := clBlack
                   else
                      qrs_TempKind1.Brush.Color := clwhite;


                   qrlb_BodyTemp.Caption := mdAdinfd.sAdmovDet[0];
                   qrlb_Hrtbt.Caption    := mdAdinfd.sHxdzYn[0];
                   qrlb_Resp.Caption     := mdAdinfd.sHxdzDt[0];
                   qrlb_Height.Caption   := mdAdinfd.sHxopYn[0];
                   qrlb_HeadSize.Caption := mdAdinfd.sHxopDt[0];
                   qrlb_ChstSize.Caption := mdAdinfd.sAlgYn[0];
                   qrlb_BodySize.Caption := mdAdinfd.sAlgFd[0];

                   if mdAdinfd.sAlgDg[0] = 'Y' then
                      qrs_LavelYn1.Brush.Color := clblack
                   else
                      qrs_LavelYn1.Brush.Color := clwhite;

                   if mdAdinfd.sAlgDg[0] = 'N' then
                      qrs_LavelYn2.Brush.Color := clblack
                   else
                      qrs_LavelYn2.Brush.Color := clwhite;

                   if mdAdinfd.sLstdrGst[0] = 'Y' then
                      qrs_EyeYn1.Brush.Color := clBlack
                   else
                      qrs_EyeYn1.Brush.Color := clwhite;

                   if mdAdinfd.sLstdrGst[0] = 'N' then
                      qrs_EyeYn2.Brush.Color := clBlack
                   else
                      qrs_EyeYn2.Brush.Color := clwhite;

                   if mdAdinfd.sAckYn[0] = 'Y' then
                      qrs_Vitamin.Brush.Color := clblack
                   else
                      qrs_Vitamin.Brush.Color := clwhite;

                   if mdAdinfd.sAckDt[0] = 'Y' then
                      qrs_Vaccine.Brush.Color := clblack
                   else
                      qrs_Vaccine.Brush.Color := clwhite;

                   qrlb_Hbct.Caption := mdAdinfd.sFhxfCd[0];

                   if copy(mdAdinfd.sFhxfDet[0],1,1) = 'Y' then
                      qrs_CryRate1.Brush.Color := clblack
                   else
                      qrs_CryRate1.Brush.Color := clwhite;

                   if copy(mdAdinfd.sFhxfDet[0],2,1) = 'Y'then
                      qrs_CryRate2.Brush.Color := clblack
                   else
                      qrs_CryRate2.Brush.Color := clwhite;

                   if copy(mdAdinfd.sFhxfDet[0],3,1) = 'Y' then
                      qrs_CryRate3.Brush.Color := clblack
                   else
                      qrs_CryRate3.Brush.Color := clwhite;

                   if copy(mdAdinfd.sFhxfDet[0],4,1) = 'Y' then
                      qrs_CryRate4.Brush.Color := clblack
                   else
                      qrs_CryRate4.Brush.Color := clwhite;


                   if copy(mdAdinfd.sFhxmCd[0],1,1) = 'Y' then
                      qrs_RespYn1.Brush.Color := clblack
                   else
                      qrs_RespYn1.Brush.Color := clWhite;

                   if copy(mdAdinfd.sFhxmCd[0],2,1) = 'Y'then
                      qrs_RespYn2.Brush.Color := clblack
                   else
                      qrs_RespYn2.Brush.Color := clWhite;

                   if copy(mdAdinfd.sFhxmCd[0],3,1) = 'Y' then
                      qrs_RespYn3.Brush.Color := clblack
                   else
                      qrs_RespYn3.Brush.Color := clWhite;

                   if copy(mdAdinfd.sFhxmCd[0],4,1) = 'Y' then
                      qrs_RespYn4.Brush.Color := clblack
                   else
                      qrs_RespYn4.Brush.Color := clWhite;

                   if copy(mdAdinfd.sFhxmCd[0],5,1)= 'Y' then
                      qrs_RespYn5.Brush.Color := clblack
                   else
                      qrs_RespYn5.Brush.Color := clWhite;

                   if copy(mdAdinfd.sFhxmCd[0],6,1) = 'Y' then
                      qrs_RespYn6.Brush.Color := clblack
                   else
                      qrs_RespYn6.Brush.Color := clWhite;

                   if copy(mdAdinfd.sFhxmCd[0],7,1) = 'Y' then
                      qrs_RespYn7.Brush.Color := clblack
                   else
                      qrs_RespYn7.Brush.Color := clWhite;

                   if copy(mdAdinfd.sFhxmCd[0],8,1) = 'Y' then
                      qrs_RespYn8.Brush.Color := clblack
                   else
                      qrs_RespYn8.Brush.Color := clWhite;

                   if copy(mdAdinfd.sFhxmCd[0],9,1) = 'Y' then
                      qrs_RespYn9.Brush.Color := clblack
                   else
                      qrs_RespYn9.Brush.Color := clWhite;

                   if copy(mdAdinfd.sFhxmCd[0],10,1) = 'Y' then
                      qrs_RespYn10.Brush.Color := clblack
                   else
                      qrs_RespYn10.Brush.Color := clWhite;

                   qrlb_RespETC.Caption := mdAdinfd.sFhxmDet[0];

                   if copy(mdAdinfd.sFhxbCd[0],1,1) = 'Y' then
                      qrs_CircYN1.Brush.Color := clblack
                   else
                      qrs_CircYN1.Brush.Color := clwhite;

                   if copy(mdAdinfd.sFhxbCd[0],2,1) = 'Y' then
                      qrs_CircYN2.Brush.Color := clblack
                   else
                      qrs_CircYN2.Brush.Color := clwhite;

                   if copy(mdAdinfd.sFhxbCd[0],3,1) = 'Y' then
                      qrs_CircYN3.Brush.Color := clblack
                   else
                      qrs_CircYN3.Brush.Color := clwhite;

                   if copy(mdAdinfd.sFhxbCd[0],4,1) = 'Y' then
                      qrs_CircYN4.Brush.Color := clblack
                   else
                      qrs_CircYN4.Brush.Color := clwhite;

                   if copy(mdAdinfd.sFhxbCd[0],5,1) = 'Y'  then
                      qrs_CircYN5.Brush.Color := clblack
                   else
                      qrs_CircYN5.Brush.Color := clwhite;

                   if copy(mdAdinfd.sFhxbCd[0],6,1) = 'Y' then
                      qrs_CircYN6.Brush.Color := clblack
                   else
                      qrs_CircYN6.Brush.Color := clwhite;

                   qrlb_CircETC.Caption := mdAdinfd.sFhxbDet[0];

                   if copy(mdAdinfd.sFhxEtc[0],1,1) = 'Y' then
                      qrs_SknunYN1.Brush.Color := clblack
                   else
                      qrs_SknunYN1.Brush.Color := clwhite;

                   if copy(mdAdinfd.sFhxEtc[0],2,1) = 'Y' then
                      qrs_SknunYN2.Brush.Color := clblack
                   else
                      qrs_SknunYN2.Brush.Color := clwhite;

                   if copy(mdAdinfd.sFhxEtc[0],3,1) = 'Y' then
                      qrs_SknunYN3.Brush.Color := clblack
                   else
                      qrs_SknunYN3.Brush.Color := clwhite;

                   if copy(mdAdinfd.sFhxEtc[0],4,1) = 'Y' then
                      qrs_SknunYN4.Brush.Color := clblack
                   else
                      qrs_SknunYN4.Brush.Color := clwhite;

                   if copy(mdAdinfd.sFhxEtc[0],5,1) = 'Y' then
                      qrs_SknunYN5.Brush.Color := clblack
                   else
                      qrs_SknunYN5.Brush.Color := clwhite;

                   if copy(mdAdinfd.sFhxEtc[0],6,1) = 'Y' then
                      qrs_SknunYN6.Brush.Color := clblack
                   else
                      qrs_SknunYN6.Brush.Color := clwhite;

                   if copy(mdAdinfd.sFhxEtc[0],7,1) = 'Y' then
                      qrs_SknunYN7.Brush.Color := clblack
                   else
                      qrs_SknunYN7.Brush.Color := clwhite;

                   if copy(mdAdinfd.sFhxEtc[0],8,1) = 'Y' then
                      qrs_SknunYN8.Brush.Color := clblack
                   else
                      qrs_SknunYN8.Brush.Color := clwhite;

                   if copy(mdAdinfd.sFhxEtc[0],9,1) = 'Y' then
                      qrs_SknunYN9.Brush.Color := clblack
                   else
                      qrs_SknunYN9.Brush.Color := clwhite;

                   if copy(mdAdinfd.sFhxEtc[0],10,1) = 'Y' then
                      qrs_SknunYN10.Brush.Color := clblack
                   else
                      qrs_SknunYN10.Brush.Color := clwhite;

                   if copy(mdAdinfd.sFhxEtc[0],11,1) = 'Y' then
                      qrs_SknunYN11.Brush.Color := clblack
                   else
                      qrs_SknunYN11.Brush.Color := clwhite;

                   qrlb_SknunST.Caption := mdAdinfd.sDfrmYn[0];

                   if copy(mdAdinfd.sPainYn[0],1,1) = 'Y' then
                      qrs_HeadAir1.Brush.Color := clblack
                   else
                      qrs_HeadAir1.Brush.Color := clwhite;

                   if copy(mdAdinfd.sPainYn[0],2,1) = 'Y' then
                      qrs_HeadAir2.Brush.Color := clblack
                   else
                      qrs_HeadAir2.Brush.Color := clwhite;

                   if copy(mdAdinfd.sPainYn[0],3,1) = 'Y' then
                      qrs_HeadAir3.Brush.Color := clblack
                   else
                      qrs_HeadAir3.Brush.Color := clwhite;

                   if copy(mdAdinfd.sPainYn[0],4,1) = 'Y'then
                      qrs_HeadAir4.Brush.Color := clblack
                   else
                      qrs_HeadAir4.Brush.Color := clwhite;

                   if copy(mdAdinfd.sDfrmDt[0],1,1) = 'Y' then
                      qrs_HeadFR1.Brush.Color := clblack
                   else
                      qrs_HeadFR1.Brush.Color := clwhite;

                   if copy(mdAdinfd.sDfrmDt[0],2,1) = 'Y' then
                      qrs_HeadFR2.Brush.Color := clblack
                   else
                      qrs_HeadFR2.Brush.Color := clwhite;

                   if copy(mdAdinfd.sDfrmDt[0],3,1) = 'Y' then
                      qrs_HeadFR3.Brush.Color := clblack
                   else
                      qrs_HeadFR3.Brush.Color := clwhite;


                   qrlb_HeadETC.caption := mdAdinfd.sPainPrt[0];
                   
                   if copy(mdAdinfd.sPainDt[0],1,1) = 'Y' then
                      qrs_FaceYN1.Brush.Color := clblack
                   else
                      qrs_FaceYN1.Brush.Color := clwhite;

                   if copy(mdAdinfd.sPainDt[0],2,1) = 'Y' then
                      qrs_FaceYN2.Brush.Color := clblack
                   else
                      qrs_FaceYN2.Brush.Color := clwhite;

                   if copy(mdAdinfd.sPainDt[0],3,1) = 'Y' then
                      qrs_FaceYN3.Brush.Color := clblack
                   else
                      qrs_FaceYN3.Brush.Color := clwhite;

                   if copy(mdAdinfd.sPainDt[0],4,1) = 'Y' then
                      qrs_FaceYN4.Brush.Color := clblack
                   else
                      qrs_FaceYN4.Brush.Color := clwhite;

                   if copy(mdAdinfd.sPainDt[0],5,1) = 'Y' then
                      qrs_FaceYN5.Brush.Color := clblack
                   else
                      qrs_FaceYN5.Brush.Color := clwhite;

                   if copy(mdAdinfd.sPainDt[0],6,1) = 'Y' then
                      qrs_FaceYN6.Brush.Color := clblack
                   else
                      qrs_FaceYN6.Brush.Color := clwhite;

                   qrlb_FaceETC.Caption  := mdAdinfd.sAppDt[0];
                   qrlb_NabelVS1.Caption := mdAdinfd.sWtYn[0];
                   qrlb_NabelVS2.Caption := mdAdinfd.sWtDt[0];

                   if mdAdinfd.sSlpTm[0] = 'Y' then
                      qrs_BloodYn1.Brush.Color := clblack
                   else
                      qrs_BloodYn1.Brush.Color := clwhite;

                   if mdAdinfd.sSlpTm[0] = 'N' Then
                      qrs_BloodYn2.Brush.Color := clblack
                   else
                      qrs_BloodYn2.Brush.Color := clwhite;

                   if copy(mdAdinfd.sSlpDso[0],1,1) = 'Y' then
                      qrs_UriYN1.Brush.Color := clblack
                   else
                      qrs_UriYN1.Brush.Color := clWhite;

                   if copy(mdAdinfd.sSlpDso[0],2,1) = 'Y' then
                      qrs_UriYN2.Brush.Color := clblack
                   else
                      qrs_UriYN2.Brush.Color := clWhite;

                   if copy(mdAdinfd.sSlpDso[0],3,1) = 'Y' then
                      qrs_UriYN3.Brush.Color := clblack
                   else
                      qrs_UriYN3.Brush.Color := clWhite;

                   if copy(mdAdinfd.sSlpDso[0],4,1) = 'Y' then
                      qrs_UriYN4.Brush.Color := clblack
                   else
                      qrs_UriYN4.Brush.Color := clWhite;

                   if copy(mdAdinfd.sSlpDso[0],5,1) = 'Y' then
                      qrs_UriYN5.Brush.Color := clblack
                   else
                      qrs_UriYN5.Brush.Color := clWhite;

                   if copy(mdAdinfd.sSlpDso[0],6,1) = 'Y'  then
                      qrs_UriYN6.Brush.Color := clblack
                   else
                      qrs_UriYN6.Brush.Color := clWhite;   

                   qrlb_UriETC.Caption := mdAdinfd.sSlpAd[0];

                   if copy(mdAdinfd.sSlpDso[0],1,1) = 'Y' then
                      qrs_LimYN1.Brush.Color := clblack
                   else
                      qrs_LimYN1.Brush.Color := clwhite;

                   if copy(mdAdinfd.sSlpDso[0],2,1) = 'Y' then
                      qrs_LimYN2.Brush.Color := clblack
                   else
                      qrs_LimYN2.Brush.Color := clwhite;

                   if copy(mdAdinfd.sSlpDso[0],3,1) = 'Y' then
                      qrs_LimYN3.Brush.Color := clblack
                   else
                      qrs_LimYN3.Brush.Color := clwhite;

                   if copy(mdAdinfd.sSlpDso[0],4,1) = 'Y' then
                      qrs_LimYN4.Brush.Color := clblack
                   else
                      qrs_LimYN4.Brush.Color := clwhite;

                   if copy(mdAdinfd.sSlpDso[0],5,1) = 'Y' then
                      qrs_LimYN5.Brush.Color := clblack
                   else
                      qrs_LimYN5.Brush.Color := clwhite;

                   qrlb_LimSt1.Caption := mdAdinfd.sFecCol[0];
                   qrlb_LimSt2.Caption := mdAdinfd.sFecChr[0];

                   if mdAdinfd.sFecChrdt[0] = 'L' then
                      qrs_LimYnLr1.Brush.Color := clblack
                   else
                      qrs_LimYnLr1.Brush.Color := clwhite;

                   if mdAdinfd.sFecChrdt[0] = 'R' then
                      qrs_LimYnLr2.Brush.Color := clblack
                   else
                      qrs_LimYnLr2.Brush.Color := clwhite;

                   if copy(mdAdinfd.sUrCnt[0],1,1) = 'Y' then
                      qrs_DiarEF1.Brush.Color := clblack
                   else
                      qrs_DiarEF1.Brush.Color := clwhite;

                   if copy(mdAdinfd.sUrCnt[0],2,1) = 'Y' then
                      qrs_DiarEF2.Brush.Color := clblack
                   else
                      qrs_DiarEF2.Brush.Color := clwhite;

                   if copy(mdAdinfd.sUrCnt[0],3,1) = 'Y' then
                      qrs_DiarEF3.Brush.Color := clblack
                   else
                      qrs_DiarEF3.Brush.Color := clwhite;

                   if copy(mdAdinfd.sUrCnt[0],4,1) = 'Y'then
                      qrs_DiarEF4.Brush.Color := clblack
                   else
                      qrs_DiarEF4.Brush.Color := clwhite;

                   if copy(mdAdinfd.sUrCnt[0],5,1) = 'Y' then
                      qrs_DiarEF5.Brush.Color := clblack
                   else
                      qrs_DiarEF5.Brush.Color := clwhite;

                   if mdAdinfd.sUrQnt[0] = 'L' then
                      qrs_DiarEfAs1.Brush.Color := clblack
                   else
                      qrs_DiarEfAs1.Brush.Color := clwhite;

                   if mdAdinfd.sUrQnt[0] = 'R' then
                      qrs_DiarEfAs2.Brush.Color := clblack
                   else
                      qrs_DiarEfAs2.Brush.Color := clwhite;

                   if copy(mdAdinfd.sUrCol[0],1,1) = 'Y' then
                      qrs_CatrEf1.Brush.Color := clblack
                   else
                      qrs_CatrEf1.Brush.Color := clwhite;

                   if copy(mdAdinfd.sUrCol[0],2,1) = 'Y'  then
                      qrs_CatrEf2.Brush.Color := clblack
                   else
                      qrs_CatrEf2.Brush.Color := clwhite;

                   if copy(mdAdinfd.sUrCol[0],3,1) = 'Y'  then
                      qrs_CatrEf3.Brush.Color := clblack
                   else
                      qrs_CatrEf3.Brush.Color := clwhite;

                   if copy(mdAdinfd.sUrCol[0],4,1) = 'Y'  then
                      qrs_CatrEf4.Brush.Color := clblack
                   else
                      qrs_CatrEf4.Brush.Color := clwhite;

                   if copy(mdAdinfd.sUrCol[0],5,1) = 'Y'  then
                      qrs_CatrEf5.Brush.Color := clblack
                   else
                      qrs_CatrEf5.Brush.Color := clwhite;

                   if mdAdinfd.sUrFlv[0] = 'L' then
                      qrs_CatrEfAs1.Brush.Color := clblack
                   else
                      qrs_CatrEfAs1.Brush.Color := clwhite;

                   if mdAdinfd.sUrFlv[0] = 'R' then
                      qrs_CatrEfAs2.Brush.Color := clblack
                   else
                      qrs_CatrEfAs2.Brush.Color := clwhite;

                   if copy(mdAdinfd.sUrChr[0],1,1) = 'Y' then
                      qrs_PumrEf1.Brush.Color := clblack
                   else
                      qrs_PumrEf1.Brush.Color := clwhite;

                   if copy(mdAdinfd.sUrChr[0],2,1) = 'Y'  then
                      qrs_PumrEf2.Brush.Color := clblack
                   else
                      qrs_PumrEf2.Brush.Color := clwhite;

                   if copy(mdAdinfd.sUrChr[0],3,1) = 'Y'  then
                      qrs_PumrEf3.Brush.Color := clblack
                   else
                      qrs_PumrEf3.Brush.Color := clwhite;

                   if copy(mdAdinfd.sUrChr[0],4,1) = 'Y' then
                      qrs_PumrEf4.Brush.Color := clblack
                   else
                      qrs_PumrEf4.Brush.Color := clwhite;

                   if copy(mdAdinfd.sSknunYn[0],1,1) = 'Y' then
                      qrs_LactrEf1.Brush.Color := clblack
                   else
                      qrs_LactrEf1.Brush.Color := clwhite;

                   if copy(mdAdinfd.sSknunYn[0],2,1) = 'Y' then
                      qrs_LactrEf2.Brush.Color := clblack
                   else
                      qrs_LactrEf2.Brush.Color := clwhite;

                   if copy(mdAdinfd.sSknunYn[0],3,1) = 'Y' then
                      qrs_LactrEf3.Brush.Color := clblack
                   else
                      qrs_LactrEf3.Brush.Color := clwhite;

                   if copy(mdAdinfd.sSknunYn[0],4,1) = 'Y' then
                      qrs_LactrEf4.Brush.Color := clblack
                   else
                      qrs_LactrEf4.Brush.Color := clwhite;

                   qrlb_Dfrmetc.Caption := mdAdinfd.sSknunPt[0];

                   qrlb_Nurse.Caption   := mdAdinfd.sSknunDg[0];
                   QRLabel190.Caption   := mdAdinfd.sSknunDg[0];
             
                   //초기퇴원계획/입원간호교육 KimDaeYong 2011-07-14
                   {4.초기퇴원계획}
                   //초기퇴원계획 사정
                   if strtoint_nvl(mdAdinfd.sPatstay[0]) = 1 then qrs_Patstay1.Brush.Color := clBlack;   //환자 머무르는곳
                   if strtoint_nvl(mdAdinfd.sPatstay[0]) = 2 then qrs_Patstay2.Brush.Color := clBlack;
                   if strtoint_nvl(mdAdinfd.sPatstay[0]) = 3 then qrs_Patstay3.Brush.Color := clBlack;
                   if strtoint_nvl(mdAdinfd.sDwell[0]) = 1 then qrs_Dwell1.Brush.Color := clBlack;       //보호자함께거주
                   if strtoint_nvl(mdAdinfd.sDwell[0]) = 2 then qrs_Dwell2.Brush.Color := clBlack;
                   if strtoint_nvl(mdAdinfd.sNursmen[0]) = 1 then qrs_Nursmen1.Brush.Color := clBlack;   //간호제공자
                   if strtoint_nvl(mdAdinfd.sNursmen[0]) = 2 then qrs_Nursmen2.Brush.Color := clBlack;
                   //퇴원계획
                   if copy(mdAdinfd.sEat[0],1,1) = 'Y' then qrs_Eat1.Brush.Color := clBlack;   //식이
                   if copy(mdAdinfd.sEat[0],2,1) = 'Y' then qrs_Eat2.Brush.Color := clBlack;
                   if copy(mdAdinfd.sEat[0],3,1) = 'Y' then qrs_Eat3.Brush.Color := clBlack;
                   if copy(mdAdinfd.sEat[0],4,1) = 'Y' then qrs_Eat4.Brush.Color := clBlack;
                   if copy(mdAdinfd.sEat[0],5,1) = 'Y' then qrs_Eat5.Brush.Color := clBlack;

                   qrlb_Eatoth.Caption := mdAdinfd.sEatoth[0];
             
                   if copy(mdAdinfd.sBath[0],1,1) = 'Y' then qrs_Bath1.Brush.Color := clBlack; //목욕
                   if copy(mdAdinfd.sBath[0],2,1) = 'Y' then qrs_Bath2.Brush.Color := clBlack;
                   if copy(mdAdinfd.sBath[0],3,1) = 'Y' then qrs_Bath3.Brush.Color := clBlack;
                   qrlb_Bathoth.Caption := mdAdinfd.sBathoth[0];
             
                   if mdAdinfd.sPrevyn[0] = 'Y' then qrs_Prevyn.Brush.Color := clBlack;       //예방접종
                   qrlb_Prevcont.Caption := mdAdinfd.sPrevcont[0];
                   if mdAdinfd.sWeightyn[0] = 'Y' then qrs_Weightyn.Brush.Color := clBlack;   //체중측정
                   qrlb_Weightcont.Caption := mdAdinfd.sWeightcont[0];
                   if mdAdinfd.sMouseyn[0] = 'Y' then qrs_Mouseyn.Brush.Color := clBlack;     //구강간호
                   qrlb_Mousecont.Caption := mdAdinfd.sMousecont[0];
                   if mdAdinfd.sSuckyn[0] = 'Y' then qrs_Suckyn.Brush.Color := clBlack;       //수유관리
                   qrlb_Suckcont.Caption := mdAdinfd.sSuckcont[0];
                   if mdAdinfd.sSkinyn[0] = 'Y' then qrs_Skinyn.Brush.Color := clBlack;       // 피부관리
                   qrlb_Skincont.Caption := mdAdinfd.sSkincont[0];
                   if mdAdinfd.sFeceyn[0] = 'Y' then qrs_Feceyn.Brush.Color := clBlack;       // 배변관리
                   qrlb_Fececont.Caption := mdAdinfd.sFececont[0];
                   if mdAdinfd.sTubeyn[0] = 'Y' then qrs_Tubeyn.Brush.Color := clBlack;       // 튜브관리
                   qrlb_Tubecont.Caption := mdAdinfd.sTubecont[0];
                   if mdAdinfd.sUmbilyn[0] = 'Y' then qrs_Umbilyn.Brush.Color := clBlack;     // 제대관리
                   qrlb_Umbilcont.Caption := mdAdinfd.sUmbilcont[0];
                   if mdAdinfd.sFluyn[0] = 'Y' then qrs_Fluyn.Brush.Color := clBlack;         // 감염예방
                   qrlb_Flucont.Caption := mdAdinfd.sFlucont[0];
                   if mdAdinfd.sAftyn[0] = 'Y' then qrs_Aftyn.Brush.Color := clBlack;         // 추후관리
                   qrlb_Aftcont.Caption := mdAdinfd.sAftcont[0];
                   if mdAdinfd.sOthyn[0] = 'Y' then qrs_Othyn.Brush.Color := clBlack;         // 기타관리
                   qrlb_Othcont.Caption := mdAdinfd.sOthcont[0];
             
                   if copy(mdAdinfd.sDismove[0],1,1) = 'Y' then qrs_Dismove1.Brush.Color := clBlack;   //퇴원시 이동방법
                   if copy(mdAdinfd.sDismove[0],2,1) = 'Y' then qrs_Dismove2.Brush.Color := clBlack;
                   if copy(mdAdinfd.sDismove[0],3,1) = 'Y' then qrs_Dismove3.Brush.Color := clBlack;

                   {5.입원시 간호 및 교육 내용}
                   if copy(mdAdinfd.sArticle[0],1,1) = 'Y' then qrs_Article1.Brush.Color := clBlack;   //준비물품
                   if copy(mdAdinfd.sArticle[0],2,1) = 'Y' then qrs_Article2.Brush.Color := clBlack;
                   if copy(mdAdinfd.sArticle[0],3,1) = 'Y' then qrs_Article3.Brush.Color := clBlack;
                   if copy(mdAdinfd.sMeet[0],1,1) = 'Y' then qrs_Meet1.Brush.Color := clBlack;         //면회안내
                   if copy(mdAdinfd.sMeet[0],2,1) = 'Y' then qrs_Meet2.Brush.Color := clBlack;
                   if copy(mdAdinfd.sMeet[0],3,1) = 'Y' then qrs_Meet3.Brush.Color := clBlack;
                   if copy(mdAdinfd.sConsult[0],1,1) = 'Y'  then qrs_Consult1.Brush.Color := clBlack;   //상담안내
                   if copy(mdAdinfd.sConsult[0],2,1) = 'Y'  then qrs_Consult2.Brush.Color := clBlack;
                   if copy(mdAdinfd.sConsult[0],3,1) = 'Y'  then qrs_Consult3.Brush.Color := clBlack;
                   if copy(mdAdinfd.sConsult[0],4,1) = 'Y'  then qrs_Consult4.Brush.Color := clBlack;
                   if mdAdinfd.sBrstmilk[0] = 'Y' then qrs_Brstmilk1.Brush.Color := clBlack; //모유관리
                   if copy(mdAdinfd.sDisprod[0],1,1) = 'Y' then qrs_Disprod1.Brush.Color := clBlack;   //퇴원준비물
                   if copy(mdAdinfd.sDisprod[0],2,1) = 'Y' then qrs_Disprod2.Brush.Color := clBlack;
                   if copy(mdAdinfd.sDisprod[0],3,1) = 'Y' then qrs_Disprod3.Brush.Color := clBlack;
                   if copy(mdAdinfd.sDisprod[0],4,1) = 'Y' then qrs_Disprod4.Brush.Color := clBlack;
                   if copy(mdAdinfd.sDispaper[0],1,1) = 'Y' then qrs_Dispaper1.Brush.Color := clBlack; //퇴원서류
                   if copy(mdAdinfd.sDispaper[0],2,1) = 'Y' then qrs_Dispaper2.Brush.Color := clBlack;
                   if copy(mdAdinfd.sDispaper[0],3,1) = 'Y' then qrs_Dispaper3.Brush.Color := clBlack;
                   if copy(mdAdinfd.sDispaper[0],4,1) = 'Y' then qrs_Dispaper4.Brush.Color := clBlack;
                   if mdAdinfd.sHosinfo[0] = 'Y' then qrs_Hosinfo1.Brush.Color := clBlack; //병원시설안내

                   //지참약.kya.20151203.
                   if mdAdinfd.sBring[0] = 'Y' then qrs_bringY.Brush.Color := clBlack
                                                else qrs_bringN.Brush.Color := clBlack;
                 end;

              // 기록지 스캔시 필수공통정보
              lb_patno.caption := sInPatno;
              lb_meddate.caption := ugd_RecodDt.Cells[1,ugd_RecodDt.Row];
              lb_dschdate.caption := ugd_RecodDt.Cells[6,ugd_RecodDt.Row];
              lb_patgubun.caption := 'I';
              lb_meddept.caption := ugd_RecodDt.Cells[2,ugd_RecodDt.Row];
              lb_chadr.caption := ugd_RecodDt.Cells[5,ugd_RecodDt.Row];
              

             MNW924S2.qrMNUPNIB2.Print;
             if strtoint(spk2) >=  strtoint('20110714') then MNW924S2.qrMNUPNIB3.Print;
               
             {
             MNW924S2.qrMNUPNIB2.Preview;
             // 초기퇴원계획/입원간호교육 탭이 2011-07-14 이후 만들어 짐 by  KimDaeYong
             if strtoint(spk2) >=  strtoint('20110714') then MNW924S2.qrMNUPNIB3.preview;;
             }
             MNW924S2.Close;
             mdAdinfd.Free;

              // G_USERID, G_USERIP
              UpdateRecord(sInPatno,sPk2,'empty','empty','empty' ,g_RecKind);
      end
    else if (g_RecKind='MDREINFT') then // 간호정보조사지(재활) [19]
        begin

             sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
             sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 입원일자 'YYYYMMDD'

              mdreinfd := Hmdreinfd.Create ;

              //이력조회.20181015.kya.
              RowNo := mdreinfd.SelReinfdll1(sInPatno,sPk2,''); // md_reinf_s1.pc

              // SYSTEM ERROR
              if RowNo = -1 then
              begin
                 mdreinfd.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end;

              // 조회자료없음
              if RowNo = 0 then
              begin
                 mdreinfd.Free;
                 Exit;
              end;              

              if MNW925B2 <> nil then MNW925B2.Close;
              Application.CreateForm(TMNW925B2, MNW925B2);

              with MNW925B2 do
                begin
                   qrl_PatNo.Caption :=ed_PatNo.Text;
                   qrl_patname.Caption := pn_PatName.Caption;
                   qrl_ci.Caption := copy(pn_ResNo.Caption,1,8) + '******';
                   qrl_sex.Caption := pn_SexAge.Caption;
                   qrl_meddept.Caption := mdreinfd.sMedDept[0]; // 진료과
                   qrl_chadr.Caption := ugd_RecodDt.Cells[3,ugd_RecodDt.Row];   // 주치의
                   qrl_ward.Caption := ugd_RecodDt.Cells[4,ugd_RecodDt.Row];   // 병동/병실
                   qrlb_Frecdate.Caption := mdreinfd.sFrecdate[0];  //최초기록일시, KimDaeYong 2011-07-14
                   qrl_admdate.Caption := ConvertSDate(sPk2); // 입원일자
                   qrl_addr.Caption := pn_Address.caption;

                   // 간호사명
                   qrl_nurse.Caption := ugd_RecodDt.Cells[2,ugd_RecodDt.Row];
                   QRLabel243.Caption := ugd_RecodDt.Cells[2,ugd_RecodDt.Row];
                   QRLabel240.Caption := ugd_RecodDt.Cells[2,ugd_RecodDt.Row];

                   qrl_icd.Caption := mdREinfd.sIcdname[0];   // 상병명

                   if Copy(mdREinfd.sJob[0],1,1) = '-' then
                       qrl_work.Caption := ''
                   else
                   begin
                     case strtoint_nvl(Copy(mdREinfd.sJob[0],1,1)) of  // 직업
                        1 : qrl_work.Caption := '회사원';
                        2 : qrl_work.Caption := '전문직';
                        3 : qrl_work.Caption := '주부';
                        4 : qrl_work.Caption := '학생';
                        5 : qrl_work.Caption := '군인';
                        6 : qrl_work.Caption := '무직';
                        7 : qrl_work.Caption := '자유업';
                        8 : qrl_work.Caption := copy(mdREinfd.sJob[0],2,length(mdREinfd.sJob[0]) - 1);
                        9 : qrl_work.Caption := '기타';
                      else
                            qrl_work.Caption := '';
                      end;
                   end;

                   case strtoint_nvl(mdREinfd.sInpoffe[0]) of  // 정보제공자 
                      1 : qrl_inf.Caption := '환자';
                      2 : qrl_inf.Caption := '보호자';
                    else
                          qrl_inf.Caption := '';
                    end;

                   case strtoint_nvl(mdREinfd.sChurch[0]) of  // 종교
                      1 : qrl_ChType.Caption := '기독교';
                      2 : qrl_ChType.Caption := '천주교';
                      3 : qrl_ChType.Caption := '불교';
                      4 : qrl_ChType.Caption := '원불교';
                      5 : qrl_ChType.Caption := '무교';
                      6 : qrl_ChType.Caption := '천도교';
                    else
                          qrl_ChType.Caption := '';
                    end;

                   case strtoint_nvl(mdREinfd.sEducat[0]) of  // 교육수준
                      1 : qrl_adu.Caption := '무학';
                      2 : qrl_adu.Caption := '초등졸';
                      3 : qrl_adu.Caption := '중졸';
                      4 : qrl_adu.Caption := '고졸';
                      5 : qrl_adu.Caption := '대졸';
                    else
                          qrl_adu.Caption := '';
                    end;

                   qrl_telno1.Caption := mdREinfd.sTelno1[0];
                   qrl_telno2.Caption := mdREinfd.sTelno2[0];
                   qrl_telno3.Caption := mdREinfd.sTelno3[0];
                   qrl_telno4.Caption := mdREinfd.sTelno4[0];                                      

                   case strtoint_nvl(mdREinfd.sMerry[0]) of  // 결혼여부 / 자녀수
                      1 : qrl_merr.Caption := '기혼';
                      2 : qrl_merr.Caption := '미혼';
                      3 : qrl_merr.Caption := '사별';
                      4 : qrl_merr.Caption := '기타';
                    else
                          qrl_merr.Caption := '';
                    end;

                   qrl_merr.Caption := qrl_merr.Caption + '/' + mdREinfd.sChild[0]; // 결혼여부, 자녀수


                    case strtoint_nvl(copy(mdREinfd.sAdmcou[0],1,1)) of  // 입원경로
                      1 : qrl_admcou.Caption := '외래'+'(' + copy(mdREinfd.sAdmcou[0],2,length(mdREinfd.sAdmcou[0]) - 1) + ')';
                      2 : qrl_admcou.Caption := '응급'+'(' + copy(mdREinfd.sAdmcou[0],2,length(mdREinfd.sAdmcou[0]) - 1) + ')';
                      3 : qrl_admcou.Caption := copy(mdREinfd.sAdmcou[0],2,length(mdREinfd.sAdmcou[0]) - 1);
                    else
                          qrl_admcou.Caption := '';
                    end;

                    case strtoint_nvl(copy(mdREinfd.sAdmmeth[0],1,1)) of  // 입원방법
                      1 : qrl_admmeth.Caption := '도보' + '(' +copy(mdREinfd.sAdmmeth[0],2,length(mdREinfd.sAdmmeth[0]) - 1)+ ')';
                      2 : qrl_admmeth.Caption := '휠체어' + '(' +copy(mdREinfd.sAdmmeth[0],2,length(mdREinfd.sAdmmeth[0]) - 1)+ ')';
                      3 : qrl_admmeth.Caption := '눕는차' + '(' +copy(mdREinfd.sAdmmeth[0],2,length(mdREinfd.sAdmmeth[0]) - 1)+ ')';
                      4 : qrl_admmeth.Caption := copy(mdREinfd.sAdmmeth[0],2,length(mdREinfd.sAdmmeth[0]) - 1);
                    else
                          qrl_admmeth.Caption := '';
                    end;


                     if mdREinfd.sArgyn[0] = '2' then
                     begin
                        qrs_argyn1.Brush.Color := clWhite;
                        qrs_argyn2.Brush.Color := clBlack;
                     end
                     else
                     if mdREinfd.sArgyn[0] = '1' then
                     begin
                        qrs_argyn1.Brush.Color := clBlack;
                        qrs_argyn2.Brush.Color := clWhite;
                     end
                     else
                     begin
                        qrs_argyn1.Brush.Color := clWhite;
                        qrs_argyn2.Brush.Color := clWhite;
                     end;
         
                   qrl_argdg.Caption := mdREinfd.sArgdg[0];
                   qrl_argfd.Caption := mdREinfd.sArgfd[0];
                   qrl_argetc.Caption := mdREinfd.sArgetc[0];

                   shcbx_pro(qrs_pthist1,copy(mdREinfd.sPthist[0],1,1));
                   shcbx_pro(qrs_pthist2,copy(mdREinfd.sPthist[0],2,1));
                   shcbx_pro(qrs_pthist3,copy(mdREinfd.sPthist[0],3,1));
                   shcbx_pro(qrs_pthist4,copy(mdREinfd.sPthist[0],4,1));
                   shcbx_pro(qrs_pthist5,copy(mdREinfd.sPthist[0],5,1));
                   
                   qrl_pthist.Caption := copy(mdREinfd.sPthist[0],6,55);

                   if strtoint_nvl(copy(mdREinfd.sDgstat[0],1,1)) = 2 then
                   begin
                      qrs_dgstat1.Brush.Color := clWhite;
                      qrs_dgstat2.Brush.Color := clBlack;
                   end
                   else
                   if strtoint_nvl(copy(mdREinfd.sDgstat[0],1,1)) = 1 then
                   begin
                      qrs_dgstat1.Brush.Color := clBlack;
                      qrs_dgstat2.Brush.Color := clWhite;
                   end
                   else
                   begin
                      qrs_dgstat1.Brush.Color := clWhite;
                      qrs_dgstat2.Brush.Color := clWhite;
                   end;
                   qrl_dgstat.Caption := copy(mdREinfd.sDgstat[0],2,50);

                   shcbx_pro(qrs_famcase1,copy(mdREinfd.sFamcase[0],1,1));
                   shcbx_pro(qrs_famcase2,copy(mdREinfd.sFamcase[0],2,1));
                   shcbx_pro(qrs_famcase3,copy(mdREinfd.sFamcase[0],3,1));
                   shcbx_pro(qrs_famcase4,copy(mdREinfd.sFamcase[0],4,1));
                   shcbx_pro(qrs_famcase5,copy(mdREinfd.sFamcase[0],5,1));
                   shcbx_pro(qrs_famcase6,copy(mdREinfd.sFamcase[0],6,1));

                   qrl_famcase.Caption := Trim(copy(mdREinfd.sFamcase[0],7,55));
                   qrl_famrela.Caption := mdREinfd.sfamrela[0];
         
                   if strtoint_nvl(copy(mdREinfd.sOpyn[0],1,1)) = 2 then
                   begin
                      qrs_opyn2.Brush.Color := clBlack;
                   end
                   else
                   if strtoint_nvl(copy(mdREinfd.sOpyn[0],1,1)) = 1 then
                   begin
                      qrs_opyn1.Brush.Color := clBlack;
                   end
                   else
                   begin
                      qrs_opyn1.Brush.Color := clWhite;
                      qrs_opyn2.Brush.Color := clWhite;
                   end;
         
                   qrl_opnm.Caption := copy(mdREinfd.sOpyn[0],2,249);

                   case strtoint_nvl(copy(mdREinfd.sPshist[0],1,1)) of  // 지남력-사람
                      2 : qrl_pshist1.Caption := '유';
                      1 : qrl_pshist1.Caption := '무';
                    else
                          qrl_pshist1.Caption := '';
                    end;
                   case strtoint_nvl(copy(mdREinfd.sPshist[0],2,1)) of  // 지남력-장소
                      2 : qrl_pshist2.Caption := '유';
                      1 : qrl_pshist2.Caption := '무';
                    else
                          qrl_pshist2.Caption := '';
                    end;
                   case strtoint_nvl(copy(mdREinfd.sPshist[0],3,1)) of  // 지남력-시간
                      2 : qrl_pshist3.Caption := '유';
                      1 : qrl_pshist3.Caption := '무';
                    else
                          qrl_pshist3.Caption := '';
                    end;

                   //의식상태.20150326. kya.
                   if mdREinfd.sCondst[0] = '1' then
                   begin
                      qrl_condst.Caption := '명료'
                   end
                   else
                   if mdREinfd.sCondst[0] = '2'then
                   begin
                      qrl_condst.Caption := '혼돈'
                   end
                   else
                   if mdREinfd.sCondst[0] = '3' then
                   begin
                      qrl_condst.Caption := '반의식'
                   end
                   else
                   if mdREinfd.sCondst[0] = '4' then
                   begin
                      qrl_condst.Caption := '무의식'
                   end
                   else
                      qrl_condst.Caption := '';


                   //의사소통. 20150326. kya.
                   //qrl_concom.Caption := combx_concom.Text;
                   if mdREinfd.sConcom[0] = '1' then
                   begin
                      qrl_concom.caption := '원만'
                   end
                   else
                   if mdREinfd.sConcom[0] = '2' then
                   begin
                      qrl_concom.caption := '곤란'
                   end
                   else
                   if mdREinfd.sConcom[0] = '3' then
                   begin
                      qrl_concom.caption := '불가능'
                   end
                   else
                      qrl_concom.caption := '';

                   shcbx_pro(qrs_feelst1,copy(mdREinfd.sFeelst[0],1,1));
                   shcbx_pro(qrs_feelst2,copy(mdREinfd.sFeelst[0],2,1));
                   shcbx_pro(qrs_feelst3,copy(mdREinfd.sFeelst[0],3,1));
                   shcbx_pro(qrs_feelst4,copy(mdREinfd.sFeelst[0],4,1));
                   shcbx_pro(qrs_feelst5,copy(mdREinfd.sFeelst[0],5,1));
                   shcbx_pro(qrs_feelst6,copy(mdREinfd.sFeelst[0],6,1));
                   shcbx_pro(qrs_feelst7,copy(mdREinfd.sFeelst[0],7,1));
                   shcbx_pro(qrs_feelst8,copy(mdREinfd.sFeelst[0],8,1));

                   shcbx_pro(qrs_circst1,copy(mdREinfd.sCircst[0],1,1));
                   shcbx_pro(qrs_circst2,copy(mdREinfd.sCircst[0],2,1));
                   shcbx_pro(qrs_circst3,copy(mdREinfd.sCircst[0],3,1));
                   shcbx_pro(qrs_circst4,copy(mdREinfd.sCircst[0],4,1));
                   shcbx_pro(qrs_circst5,copy(mdREinfd.sCircst[0],5,1));
                   shcbx_pro(qrs_circst6,copy(mdREinfd.sCircst[0],6,1));
                   shcbx_pro(qrs_circst7,copy(mdREinfd.sCircst[0],7,1));
                   shcbx_pro(qrs_circst8,copy(mdREinfd.sCircst[0],8,1));
                   shcbx_pro(qrs_circst9,copy(mdREinfd.sCircst[0],9,1)); //순환기 유추가.20150430.kya.

                   shcbx_pro(qrs_respst1,copy(mdREinfd.sRespst[0],1,1));
                   shcbx_pro(qrs_respst2,copy(mdREinfd.sRespst[0],2,1));
                   shcbx_pro(qrs_respst3,copy(mdREinfd.sRespst[0],3,1));
                   shcbx_pro(qrs_respst4,copy(mdREinfd.sRespst[0],4,1));
                   shcbx_pro(qrs_respst5,copy(mdREinfd.sRespst[0],5,1));
                   shcbx_pro(qrs_respst6,copy(mdREinfd.sRespst[0],6,1));
                   shcbx_pro(qrs_respst7,copy(mdREinfd.sRespst[0],7,1));
                   shcbx_pro(qrs_respst8,copy(mdREinfd.sRespst[0],8,1));
                   shcbx_pro(qrs_respst9,copy(mdREinfd.sRespst[0],9,1));   //호흡기 유추가.20150430.kya.

                   shcbx_pro(qrs_dietst1,copy(mdREinfd.sDietst[0],1 ,1));
                   shcbx_pro(qrs_dietst2,copy(mdREinfd.sDietst[0],2 ,1));
                   shcbx_pro(qrs_dietst3,copy(mdREinfd.sDietst[0],3 ,1));
                   shcbx_pro(qrs_dietst4,copy(mdREinfd.sDietst[0],4 ,1));
                   shcbx_pro(qrs_dietst5,copy(mdREinfd.sDietst[0],5 ,1));
                   shcbx_pro(qrs_dietst6,copy(mdREinfd.sDietst[0],6 ,1));
                   shcbx_pro(qrs_dietst7,copy(mdREinfd.sDietst[0],7 ,1));
                   shcbx_pro(qrs_dietst8,copy(mdREinfd.sDietst[0],8 ,1));
                   shcbx_pro(qrs_dietst9,copy(mdREinfd.sDietst[0],9 ,1));
                   shcbx_pro(qrs_dietst10,copy(mdREinfd.sDietst[0],10 ,1));
                   shcbx_pro(qrs_dietst11,copy(mdREinfd.sDietst[0],11 ,1));
                   shcbx_pro(qrs_dietst12,copy(mdREinfd.sDietst[0],12 ,1));  //소화기 유추가.20150430.kya.

                   shcbx_pro(qrs_pain1,copy(mdREinfd.sPain[0],1 ,1));
                   shcbx_pro(qrs_pain2,copy(mdREinfd.sPain[0],2 ,1));
                   shcbx_pro(qrs_pain3,copy(mdREinfd.sPain[0],3 ,1));
                   shcbx_pro(qrs_pain4,copy(mdREinfd.sPain[0],4 ,1));
                   shcbx_pro(qrs_pain5,copy(mdREinfd.sPain[0],5 ,1));
                   shcbx_pro(qrs_pain6,copy(mdREinfd.sPain[0],6 ,1));
                   shcbx_pro(qrs_pain7,copy(mdREinfd.sPain[0],7 ,1));
                   shcbx_pro(qrs_pain8,copy(mdREinfd.sPain[0],8 ,1));
                   shcbx_pro(qrs_pain9,copy(mdREinfd.sPain[0],9 ,1));
                   shcbx_pro(qrs_pain10,copy(mdREinfd.sPain[0],10 ,1));
                   shcbx_pro(qrs_pain11,copy(mdREinfd.sPain[0],11 ,1));
                   shcbx_pro(qrs_pain12,copy(mdREinfd.sPain[0],12 ,1));
                   shcbx_pro(qrs_pain13,copy(mdREinfd.sPain[0],13 ,1)); //통증 유추가. 20150430.kya.
         
                   shcbx_pro(qrs_support1,copy(mdREinfd.sSupport[0],1 ,1));
                   shcbx_pro(qrs_support2,copy(mdREinfd.sSupport[0],2 ,1));
                   shcbx_pro(qrs_support3,copy(mdREinfd.sSupport[0],3 ,1));
                   shcbx_pro(qrs_support4,copy(mdREinfd.sSupport[0],4 ,1));
                   shcbx_pro(qrs_support5,copy(mdREinfd.sSupport[0],5 ,1));
                   shcbx_pro(qrs_support6,copy(mdREinfd.sSupport[0],6 ,1));                   
                   shcbx_pro(qrs_support7,copy(mdREinfd.sSupport[0],7 ,1));
                   shcbx_pro(qrs_support8,copy(mdREinfd.sSupport[0],8 ,1)); //보조기구 유추가. 20150430.kya.

                   //보조기구 추가. kya. 20150430.
                   if ((copy(mdREinfd.sSupport[0],8 ,1)='N') or (copy(mdREinfd.sSupport[0],8 ,1)='Y')) then
                   begin
                     shcbx_pro(qrs_support8 ,copy(mdREinfd.sSupport[0],8 ,1));
                     qrl_support.Caption := copy(mdREinfd.sSupport[0],9,length(mdREinfd.sSupport[0]));
                   end
                   else
                   begin
                     qrl_support.Caption := copy(mdREinfd.sSupport[0],8,length(mdREinfd.sSupport[0]));
                   end;

                   shcbx_pro(qrs_skin1,copy(mdREinfd.sSkin[0],1 ,1));
                   shcbx_pro(qrs_skin2,copy(mdREinfd.sSkin[0],2 ,1));
                   shcbx_pro(qrs_skin3,copy(mdREinfd.sSkin[0],3 ,1));
                   shcbx_pro(qrs_skin4,copy(mdREinfd.sSkin[0],4 ,1));
                   shcbx_pro(qrs_skin5,copy(mdREinfd.sSkin[0],5 ,1));
                   shcbx_pro(qrs_skin6,copy(mdREinfd.sSkin[0],6 ,1));
                   shcbx_pro(qrs_skin7,copy(mdREinfd.sSkin[0],7 ,1));
                   shcbx_pro(qrs_skin8,copy(mdREinfd.sSkin[0],8 ,1));   //피부색깔 정상,비정상 추가. 20150430. kya.

                   shcbx_pro(qrs_eyest1,copy(mdREinfd.sEyest[0],1 ,1));
                   shcbx_pro(qrs_eyest2,copy(mdREinfd.sEyest[0],2 ,1));
                   shcbx_pro(qrs_eyest3,copy(mdREinfd.sEyest[0],3 ,1));
                   shcbx_pro(qrs_eyest4,copy(mdREinfd.sEyest[0],4 ,1));
                   shcbx_pro(qrs_eyest5,copy(mdREinfd.sEyest[0],5 ,1));//시각 유,좌,우 추가. 20150430. kya.
                   shcbx_pro(qrs_eyest6,copy(mdREinfd.sEyest[0],6 ,1));
                   shcbx_pro(qrs_eyest7,copy(mdREinfd.sEyest[0],7 ,1));

                   shcbx_pro(qrs_earst1,copy(mdREinfd.sEarst[0],1 ,1));
                   shcbx_pro(qrs_earst2,copy(mdREinfd.sEarst[0],2 ,1));
                   shcbx_pro(qrs_earst3,copy(mdREinfd.sEarst[0],3 ,1));
                   shcbx_pro(qrs_earst4,copy(mdREinfd.sEarst[0],4 ,1));
                   shcbx_pro(qrs_earst5,copy(mdREinfd.sEarst[0],5 ,1)); //청각 유,좌,우 추가. 20150430. kya.
                   shcbx_pro(qrs_earst6,copy(mdREinfd.sEarst[0],6 ,1));
                   shcbx_pro(qrs_earst7,copy(mdREinfd.sEarst[0],7 ,1));
                   shcbx_pro(qrs_earst8,copy(mdREinfd.sEarst[0],8 ,1));

                   shcbx_pro(qrs_neost1,copy(mdREinfd.sNeost[0],1 ,1));
                   shcbx_pro(qrs_neost2,copy(mdREinfd.sNeost[0],2 ,1));
                   shcbx_pro(qrs_neost3,copy(mdREinfd.sNeost[0],3 ,1));
                   shcbx_pro(qrs_neost4,copy(mdREinfd.sNeost[0],4 ,1));
                   shcbx_pro(qrs_neost5,copy(mdREinfd.sNeost[0],5 ,1));
                   shcbx_pro(qrs_neost6,copy(mdREinfd.sNeost[0],6 ,1));
                   shcbx_pro(qrs_neost7,copy(mdREinfd.sNeost[0],7 ,1));
                   
                   //부종 유추가. kya. 20150430.
                   if ((copy(mdREinfd.sNeost[0],8 ,1)='N') or (copy(mdREinfd.sNeost[0],8 ,1)='Y')) then
                   begin
                     shcbx_pro(qrs_neost8 ,copy(mdREinfd.sNeost[0],8 ,1));
                     qrl_neost.Caption := Trim(copy(mdREinfd.sNeost[0],9 ,length(mdREinfd.sNeost[0])));
                   end
                   else
                   begin
                      qrl_neost.Caption := Trim(copy(mdREinfd.sNeost [0],8 ,length(mdREinfd.sNeost[0])));
                   end;

                   qrl_stool.Caption := Trim(mdREinfd.sstool[0]);

                   if mdREinfd.ssleep[0] = 'Y' then
                   begin
                      qrs_sleep2.brush.color := clBlack;
                   end
                   else
                   begin
                      qrs_sleep1.brush.color := clBlack;
                   end;

                   if mdREinfd.ssleepdg[0] = 'Y' then
                   begin
                      qrs_sleepdg2.brush.color := clBlack;
                   end
                   else
                   begin
                      qrs_sleepdg1.brush.color := clBlack;
                   end;

                   qrl_drink.Caption := mdREinfd.sDrink[0];
                   qrl_tabaco.Caption := mdREinfd.sTabaco[0];      //흡연량

                   if mdREinfd.sIndeu1[0] = 'Y' then    //교육상태1
                      qrs_edu1.brush.color := clBlack;

                   if Copy(mdREinfd.sIndeu2[0], 1, 1) = 'Y' then    //교육상태2
                   begin
                      qrs_edu2.brush.color := clBlack;
                      shcbx_pro(qrs_edu21,Copy(mdREinfd.sIndeu2[0], 2, 1));
                      shcbx_pro(qrs_edu22,Copy(mdREinfd.sIndeu2[0], 3, 1));
                      shcbx_pro(qrs_edu23,Copy(mdREinfd.sIndeu2[0], 4, 1));
                      shcbx_pro(qrs_edu24,Copy(mdREinfd.sIndeu2[0], 5, 1));
                      shcbx_pro(qrs_edu25,Copy(mdREinfd.sIndeu2[0], 6, 1));
                      shcbx_pro(qrs_edu26,Copy(mdREinfd.sIndeu2[0], 7, 1));
                      shcbx_pro(qrs_edu27,Copy(mdREinfd.sIndeu2[0], 8, 1));
                      shcbx_pro(qrs_edu28,Copy(mdREinfd.sIndeu2[0], 9, 1));
                      shcbx_pro(qrs_edu29,Copy(mdREinfd.sIndeu2[0], 10, 1));
                      shcbx_pro(qrs_edu30,Copy(mdREinfd.sIndeu2[0], 11, 1));
                      shcbx_pro(qrs_edu311,Copy(mdREinfd.sIndeu2[0], 12, 1));
                   end;

                   if copy(mdREinfd.sIndeu3[0], 1, 1) = 'Y' then   //교육상태3
                   begin
                       qrs_edu3.brush.color := clBlack;
                       shcbx_pro(qrs_edu31,Copy(mdREinfd.sIndeu3[0], 2, 1));
                       shcbx_pro(qrs_edu32,Copy(mdREinfd.sIndeu3[0], 3, 1));
                       shcbx_pro(qrs_edu33,Copy(mdREinfd.sIndeu3[0], 4, 1));
                       shcbx_pro(qrs_edu34,Copy(mdREinfd.sIndeu3[0], 5, 1));
                       shcbx_pro(qrs_edu35,Copy(mdREinfd.sIndeu3[0], 6, 1));
                       shcbx_pro(qrs_edu36,Copy(mdREinfd.sIndeu3[0], 7, 1));
                   end;

                   if mdREinfd.sIndeu4[0] = 'Y' then   //교육상태4
                   begin
                       qrs_edu4.brush.color := clBlack;
                   end;

                   shcbx_pro(qrs_edu5,mdREinfd.sIndeu5[0]);  //교육상태5
                   shcbx_pro(qrs_edu6,mdREinfd.sIndeu6[0]);  //교육상태6
                   shcbx_pro(qrs_edu7,mdREinfd.sIndeu7[0]);  //교육상태7
                   shcbx_pro(qrs_edu8,mdREinfd.sIndeu8[0]);  //교육상태8

                   qrme_AdmovDet.Lines.Clear;
                   qrme_AdmovDet.Lines.Add(mdREinfd.sAdmreson[0]); //입원동기

                   // 대변
                   qrl_stool.Caption := Trim(mdREinfd.sStool[0]);

                   // 소변
                   shcbx_pro(qrs_urinst1,copy(mdREinfd.sUrinst[0],1,1));
                   shcbx_pro(qrs_urinst2,copy(mdREinfd.sUrinst[0],2,1));
                   shcbx_pro(qrs_urinst3,copy(mdREinfd.sUrinst[0],3,1));
                   shcbx_pro(qrs_urinst4,copy(mdREinfd.sUrinst[0],4,1));
                   shcbx_pro(qrs_urinst5,copy(mdREinfd.sUrinst[0],5,1));
                   shcbx_pro(qrs_urinst6,copy(mdREinfd.sUrinst[0],6,1));
                   shcbx_pro(qrs_urinst7,copy(mdREinfd.sUrinst[0],7,1));
                   shcbx_pro(qrs_urinst8,copy(mdREinfd.sUrinst[0],8,1));
                   shcbx_pro(qrs_urinst9,copy(mdREinfd.sUrinst[0],9,1));
                   qrs_urinst.Caption := copy(mdREinfd.sUrinst[0],10,length(mdREinfd.sUrinst[0])-9);

                   //신경근육 & 마비
                   shcbx_pro(qrs_nerves1,copy(mdREinfd.sNerves[0],1,1));
                   shcbx_pro(qrs_nerves2,copy(mdREinfd.sNerves[0],2,1));
                   shcbx_pro(qrs_nerves3,copy(mdREinfd.sNerves[0],3,1));
                   shcbx_pro(qrs_nerves4,copy(mdREinfd.sNerves[0],4,1));
                   shcbx_pro(qrs_nerves5,copy(mdREinfd.sNerves[0],5,1));
                   shcbx_pro(qrs_nerves6,copy(mdREinfd.sNerves[0],6,1));
                   shcbx_pro(qrs_nerves7,copy(mdREinfd.sNerves[0],7,1));
                   shcbx_pro(qrs_nerves8,copy(mdREinfd.sNerves[0],8,1));
                   shcbx_pro(qrs_nerves9,copy(mdREinfd.sNerves[0],9,1));
                   shcbx_pro(qrs_nerves10,copy(mdREinfd.sNerves[0],10,1));
                   shcbx_pro(qrs_nerves11,copy(mdREinfd.sNerves[0],11,1));
                   shcbx_pro(qrs_nerves12,copy(mdREinfd.sNerves[0],12,1));

                   qrl_bodytemp.Caption := mdREinfd.sBodytemp[0];   // 체온
                   qrl_pulse.Caption    := mdREinfd.sPulse[0];   // 맥박
                   ed_respcnt.Caption   := mdREinfd.sRespcnt[0];   // 호흡
                   qrl_bldprehi.Caption := mdREinfd.sBldprehi[0]+'/'+mdREinfd.sBldprelo[0];   // 혈압
                   qrl_weight.Caption   := mdREinfd.sWeight[0];   // 체중
                   qrl_height.Caption   := mdREinfd.sHeight[0];   // 신장

                   case strtoint_nvl(mdREinfd.sBldtype[0]) of  // 혈액형
                      1 : qrl_bldtype.Caption := 'A';
                      2 : qrl_bldtype.Caption := 'B';
                      3 : qrl_bldtype.Caption := 'AB';
                      4 : qrl_bldtype.Caption := 'O';
                    else
                          qrl_bldtype.Caption := '모름'
                    end;
                   case strtoint_nvl(mdREinfd.sAppetite[0]) of  // 식욕
                      1 : qrl_Appetite.Caption := '양호';
                      2 : qrl_Appetite.Caption := '보통';
                      3 : qrl_Appetite.Caption := '불량';

                    else
                          qrl_Appetite.Caption := ''
                    end;

                   case strtoint_nvl(mdREinfd.sWetchg[0]) of  // 체중변화
                      1 : qrl_Wetchg.Caption := '증가';
                      2 : qrl_Wetchg.Caption := '감소';
                      3 : qrl_Wetchg.Caption := '무';
                    else
                          qrl_Wetchg.Caption := ''
                    end;

                   case strtoint_nvl(mdREinfd.sDysphagia[0]) of  // 연하곤란
                      1 : qrl_Dysphagia.Caption := '있음';
                      2 : qrl_Dysphagia.Caption := '없음';
                    else
                          qrl_Dysphagia.Caption := ''
                    end;

                     shcbx_pro(qrs_bedsore1,copy(mdREinfd.sBedsore[0],1,1));    // 욕창
                     shcbx_pro(qrs_bedsore2,copy(mdREinfd.sBedsore[0],2,1));
                     shcbx_pro(qrs_bedsore3,copy(mdREinfd.sBedsore[0],3,1));
                     shcbx_pro(qrs_bedsore4,copy(mdREinfd.sBedsore[0],4,1));
                     shcbx_pro(qrs_bedsore5,copy(mdREinfd.sBedsore[0],5,1));
                     shcbx_pro(qrs_bedsore6,copy(mdREinfd.sBedsore[0],6,1));

                    case strtoint_nvl(copy(mdREinfd.sMotion[0],1,1)) of   // 돌아눕기
                      1 : qrl_Motion1.Caption := '독립적';
                      2 : qrl_Motion1.Caption := '의존적';
                    else
                          qrl_Motion1.Caption := '';
                    end;
                    case strtoint_nvl(copy(mdREinfd.sMotion[0],2,1)) of    // 일어나 앉기
                      1 : qrl_Motion2.Caption := '독립적';
                      2 : qrl_Motion2.Caption := '의존적';
                    else
                          qrl_Motion2.Caption := '';
                    end;
                    case strtoint_nvl(copy(mdREinfd.sMotion[0],3,1)) of    // 앉아서 균형잡기
                      1 : qrl_Motion3.Caption := '독립적';
                      2 : qrl_Motion3.Caption := '의존적';
                    else
                          qrl_Motion3.Caption := '';
                    end;
                    case strtoint_nvl(copy(mdREinfd.sMotion[0],4,1)) of   // 서서균형잡기
                      1 : qrl_Motion4.Caption := '독립적';
                      2 : qrl_Motion4.Caption := '의존적';
                    else
                          qrl_Motion4.Caption := '';
                    end;
                    case strtoint_nvl(copy(mdREinfd.sMotion[0],5,1)) of   // 이동
                      1 : qrl_Motion5.Caption := '독립적';
                      2 : qrl_Motion5.Caption := '의존적';
                    else
                          qrl_Motion5.Caption := '';
                    end;
                    case strtoint_nvl(copy(mdREinfd.sMotion[0],6,1)) of    // 걷기
                      1 : qrl_Motion6.Caption := '독립적';
                      2 : qrl_Motion6.Caption := '의존적';
                    else
                          qrl_Motion6.Caption := '';
                    end;

                    case strtoint_nvl(copy(mdREinfd.sDaymot[0],1,1)) of   // 식이
                      1 : qrl_Daymot1.Caption := '독립적';
                      2 : qrl_Daymot1.Caption := '의존적';
                    else
                          qrl_Daymot1.Caption := '';
                    end;

                     shcbx_pro(qrs_Daymot2,copy(mdREinfd.sDaymot[0],2,1));
                     shcbx_pro(qrs_Daymot3,copy(mdREinfd.sDaymot[0],3,1));
                     shcbx_pro(qrs_Daymot4,copy(mdREinfd.sDaymot[0],4,1));
                     
                    case strtoint_nvl(copy(mdREinfd.sDaymot[0],5,1)) of   // 몸단장
                      1 : qrl_Daymot5.Caption := '독립적';
                      2 : qrl_Daymot5.Caption := '의존적';
                    else
                          qrl_Daymot5.Caption := '';
                    end;
                    case strtoint_nvl(copy(mdREinfd.sDaymot[0],6,1)) of   // 옷입기-상의
                      1 : qrl_Daymot6.Caption := '독립적';
                      2 : qrl_Daymot6.Caption := '의존적';
                    else
                          qrl_Daymot6.Caption := '';
                    end;
                    case strtoint_nvl(copy(mdREinfd.sDaymot[0],7,1)) of   //  샴푸
                      1 : qrl_Daymot7.Caption := '독립적';
                      2 : qrl_Daymot7.Caption := '의존적';
                    else
                          qrl_Daymot7.Caption := '';
                    end;
                    case strtoint_nvl(copy(mdREinfd.sDaymot[0],8,1)) of   //   목욕
                      1 : qrl_Daymot8.Caption := '독립적';
                      2 : qrl_Daymot8.Caption := '의존적';
                    else
                          qrl_Daymot8.Caption := '';
                    end;
                    case strtoint_nvl(copy(mdREinfd.sDaymot[0],9,1)) of   // 배설관리
                      1 : qrl_Daymot9.Caption := '독립적';
                      2 : qrl_Daymot9.Caption := '의존적';
                    else
                          qrl_Daymot9.Caption := '';
                    end;
                    case strtoint_nvl(copy(mdREinfd.sDaymot[0],10,1)) of   //  옷입기-하의
                      1 : qrl_Daymot10.Caption := '독립적';
                      2 : qrl_Daymot10.Caption := '의존적';
                    else
                          qrl_Daymot10.Caption := '';
                    end;

                     shcbx_pro(qrs_Housestr1,copy(mdREinfd.sHousestr[0],1,1));
                     shcbx_pro(qrs_Housestr2,copy(mdREinfd.sHousestr[0],2,1));
                     shcbx_pro(qrs_Housestr3,copy(mdREinfd.sHousestr[0],3,1));
                     shcbx_pro(qrs_Housestr4,copy(mdREinfd.sHousestr[0],4,1));
                     shcbx_pro(qrs_Housestr5,copy(mdREinfd.sHousestr[0],5,1));
                     shcbx_pro(qrs_Housestr6,copy(mdREinfd.sHousestr[0],6,1));
                     shcbx_pro(qrs_Housestr7,copy(mdREinfd.sHousestr[0],7,1));

                   //==============간호정보조사지 출력물 추가, KimDaeYong 2011-07-05======================//

                   // 2011.02 인증 추가
                   if trim(mdREinfd.sNation[0]) = '1' then //국적
                      qrl_Nation.Caption := '대한민국'
                   else
                   begin
                      qrl_Nation.Caption := mdREinfd.sNation[0];
                   end;

                   case strtoint_nvl(mdREinfd.sRace[0]) of  // 인종
                      0 : qrl_Race.Caption := '황인종';
                      1 : qrl_Race.Caption := '백인종';
                      2 : qrl_Race.Caption := '흑인종';
                    else
                          qrl_Race.Caption := ''
                    end;
                   case strtoint_nvl(mdREinfd.sPay[0]) of  //진료비지불능력
                      1 : qrl_Pay.Caption := '있음';
                      2 : qrl_Pay.Caption := '없음';
                    else
                          qrl_Pay.Caption := ''
                    end;
                   case strtoint_nvl(mdREinfd.sBokji[0]) of  ////사회복지상담
                      1 : qrl_Bokji.Caption := '필요';
                      2 : qrl_Bokji.Caption := '불필요';
                    else
                          qrl_Bokji.Caption := ''
                    end;

                   qrl_Arganti.Caption := mdREinfd.sArganti[0];    //알레르기 항생제

                   case strtoint_nvl(mdREinfd.sStress[0]) of  //대사적스트레스 정도
                      1 : qrl_Stress.Caption := '해당 사항 없음';
                      2 : qrl_Stress.Caption := '골반골절로 치료중인 자';
                      3 : qrl_Stress.Caption := '만성폐쇄성폐질환의 급성학화기 상태인자';
                      4 : qrl_Stress.Caption := '조절되지 않는 대량복수나 간성뇌증을 동반한 간경변증 환자';
                      5 : qrl_Stress.Caption := '항암화학요법을 위해 입원한 자';
                      6 : qrl_Stress.Caption := '경부나 흉부, 복부의 방사선 치료를 위해 입원한 자';
                      7 : qrl_Stress.Caption := '신 기능 부전으로 혈액투석이나 복막투석 치료중인 자';
                      8 : qrl_Stress.Caption := '개복 또는 개흉 수술 후 3일 이상 금식중인 자';
                      9 : qrl_Stress.Caption := '입원치료를 요하는 급성 뇌경색 환자';
                      10: qrl_Stress.Caption := '중증 폐렴으로 인해 산소공급을 요하여 침상안정이 필요한 자';
                      11: qrl_Stress.Caption := '중환자실에서 인공호흡기 치료를 요하는 자';                      
                    else
                          qrl_Stress.Caption := '' ;
                    end;

                   //환잔안전교육
                   shcbx_pro(qrs_Safeedu1,copy(mdREinfd.sSafeEdu[0],1,1));    //낙상예방
                   shcbx_pro(qrs_Safeedu2,copy(mdREinfd.sSafeEdu[0],2,1));    //욕창예방
                   shcbx_pro(qrs_Safeedu3,copy(mdREinfd.sSafeEdu[0],3,1));    //고충처리접수방법
                   shcbx_pro(qrs_Safeedu4,copy(mdREinfd.sSafeEdu[0],4,1));    //의료폐기물분리수거
                   shcbx_pro(qrs_Safeedu5,copy(mdREinfd.sSafeEdu[0],5,1));    //환자권리장전
         
                   qrme_Eduoth.Lines.Text := mdREinfd.sEduoth[0];   //기타교육사항
         
                   //5.초기퇴원계획
                   if strtoint_nvl(mdREinfd.sOutEdu1[0]) = 1 then qrs_Outedu11.Brush.Color := clBlack;   //보호자거주유무
                   if strtoint_nvl(mdREinfd.sOutEdu1[0]) = 2 then qrs_Outedu12.Brush.Color := clBlack;

                   if strtoint_nvl(mdREinfd.sOutEdu2[0]) = 1 then qrs_Outedu21.Brush.Color := clBlack;   //간병인유무
                   if strtoint_nvl(mdREinfd.sOutEdu2[0]) = 2 then qrs_Outedu22.Brush.Color := clBlack;

                   if mdREinfd.sOutEdu3[0] = '1' then
                      qrs_Outedu31.Brush.Color := clBlack
                   else if mdREinfd.sOutEdu3[0] = '2' then
                      qrs_Outedu32.Brush.Color := clBlack
                   else if mdREinfd.sOutEdu3[0] = '3' then
                      qrs_Outedu33.Brush.Color := clBlack
                   else if mdREinfd.sOutEdu3[0] = '4' then
                      qrs_Outedu34.Brush.Color := clBlack;

                   qrl_Outedu3oth.Caption := mdREinfd.sOutedu3oth[0];

                   if mdREinfd.sOutEdu4[0] = '1' then qrs_Outedu41.Brush.Color := clBlack;   //보호자연락
                   if mdREinfd.sOutEdu4[0] = '2' then qrs_Outedu42.Brush.Color := clBlack;

                   if mdREinfd.sOutedu5[0] = '0' then qrs_Outedu51.Brush.Color := clBlack;   //교육대상
                   if mdREinfd.sOutedu5[0] = '1' then qrs_Outedu52.Brush.Color := clBlack;
                   if mdREinfd.sOutedu5[0] = '2' then qrs_Outedu53.Brush.Color := clBlack;
                   if mdREinfd.sOutedu5[0] = '' then qrs_Outedu51.Brush.Color := clBlack;   //교육대상 - 환자                   

                   //수혈거부여부.kya.20150326.
                   if mdREinfd.sBloodyn[0] = '1' then
                   begin
                      qrs_bloody.Brush.Color := clBlack;
                   end
                   else
                   if mdREinfd.sBloodyn[0] = '2'  then
                   begin
                      qrs_bloodN.Brush.Color := clBlack;
                   end;
         
                   //기타.kya.20150326.
                   qrl_Culturetc.Caption :=  mdREinfd.sCultueretc[0];

                   //지참약.kya.20151203.
                   if mdREinfd.sBring[0] = 'Y' then qrs_bringY.Brush.Color := clBlack
                                               else qrs_bringN.Brush.Color := clBlack;
              end;


              // 기록지 스캔시 필수공통정보
              lb_patno.caption := sInPatno;
              lb_meddate.caption := ugd_RecodDt.Cells[1,ugd_RecodDt.Row];
              lb_dschdate.caption := ugd_RecodDt.Cells[6,ugd_RecodDt.Row];
              lb_patgubun.caption := 'I';
              lb_meddept.caption := mdreinfd.sMedDept[0]; // 진료과
              lb_chadr.caption := ugd_RecodDt.Cells[5,ugd_RecodDt.Row];


              MNW925B2.QuickRep1.Print;
              MNW925B2.QuickRep2.Print;

              {
              MNW925B2.QuickRep1.Preview;
              MNW925B2.QuickRep2.Preview;
              }
              
              MNW925B2.Close;
              mdReinfd.Free;
              // G_USERID, G_USERIP
              UpdateRecord(sInPatno,sPk2,'empty','empty','empty' ,g_RecKind);
        end
    else if (g_RecKind='MDIOCHKT_BS') then // BS 측정기록 [25]
        begin

                 sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
                 sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 입원일자 'YYYYMMDD'
                 sPk3     := ugd_RecodDt.Cells[2,ugd_RecodDt.Row]; // 퇴원일자 'YYYYMMDD'

                  mdIochkt := HmdIochkt.Create;   // md_iochk_l1.pc
                  RowNo := mdIochkt.ListIOWeight('7',sInPatno,sPk2,sPk3,'');

                  // system error messae
                  if RowNo = -1 then
                  begin
                     ShowErrMsg(stb_Message);
                     mdIochkt.Free;
                     Exit;
                  end;

                  if RowNo = 0 then
                  begin
                     // 데이타 삭제
                     stb_Message.Panels[0].text := '조회된 데이타가 없습니다.';
                     mdIochkt.Free;
                     Exit;
                  end;

                  if MDF160F1_P02 <> nil then MDF160F1_P02.Close;
                     Application.CreateForm(TMDF160F1_P02, MDF160F1_P02);

                  sTemp1 := '';  // tempdate
      
                  k := 0;
                  i := 0;
                  while (k <= (RowNo - 1)) do
                  begin
                      if sTemp1 <> mdIochkt.sAdmDate[k] then
                      begin
                         sTemp1 := mdIochkt.sAdmDate[k];
                         Inc(i);
                         if (i > 1) then
                            ugd_AllList .RowCount := ugd_AllList.RowCount + 1;
                         ugd_AllList.Cells[0, i] := sTemp1;
                      end;

                      for j := 1 to 4 do
                      begin
                         if (k > (RowNo - 1)) or (sTemp1 <> mdIochkt.sAdmDate[k]) then
                            Break;

                         if (mdIochkt.sExecTime[k] > '00:00') and (mdIochkt.sExecTime[k] <= '07:30') then
                            Currow := 1
                         else if (mdIochkt.sExecTime[k] > '07:30') and (mdIochkt.sExecTime[k] <= '12:00') then
                            Currow := 2
                         else if (mdIochkt.sExecTime[k] > '12:00') and (mdIochkt.sExecTime[k] <= '17:30') then
                            Currow := 3
                         else if (mdIochkt.sExecTime[k] > '17:30') and (mdIochkt.sExecTime[k] <= '24:00') then
                            Currow := 4;

                         ugd_AllList.Cells[Currow, i]     := Format('%10s', [mdIochkt.iVolume1[k]]) + ' (' +
                                                           mdIochkt.sExecTime[k] + ')';
                         ugd_AllList.Cells[5, i]        := InvertSDate(mdIochkt.sAdmDate[k]);
                         ugd_AllList.Cells[Currow + 5, i] := mdIochkt.sInsuline[k]; // + inttostr(j) + inttostr(k);
                         Inc(k);
                      end; // for j end
                  end; // while end 측정일|측정1(00:00~07:30)|측정2(07:31~12;00)|측정3(12:01~17:30)|측정4(17:31~23:59)
             with MDF160F1_P02 do
               begin
                     TempCnt := ugd_AllList.RowCount - 1;
                     qrlb_Patno.Caption   := ed_PatNo.text;
                     qrlb_PatName.Caption := pn_PatName.Caption;
                     qrlb_sexage.Caption  := pn_SexAge.Caption;
                     qrl_ci.Caption       := copy(pn_ResNo.Caption,1,8) + '******';
                     qrl_ward.Caption     := ugd_RecodDt.Cells[5,ugd_RecodDt.Row];   // 병동/병실
                     qrl_meddept.Caption  := ugd_RecodDt.Cells[3,ugd_RecodDt.Row];   // 진료과
                     qrl_chadr.Caption    := ugd_RecodDt.Cells[4,ugd_RecodDt.Row];   // 주치의
                     qrlb_Term.Caption    := ConvertSDate(sPk2) + ' ~ ' + ConvertSDate(sPk3);

               end;

              // 기록지 스캔시 필수공통정보
              lb_patno.caption := sInPatno;
              lb_meddate.caption := ugd_RecodDt.Cells[1,ugd_RecodDt.Row];
              lb_dschdate.caption := ugd_RecodDt.Cells[2,ugd_RecodDt.Row];
              lb_patgubun.caption := 'I';
              lb_meddept.caption := ugd_RecodDt.Cells[3,ugd_RecodDt.Row];
              lb_chadr.caption := ugd_RecodDt.Cells[7,ugd_RecodDt.Row];

             MDF160F1_P02.qr_Search.Print;
             MDF160F1_P02.Close;

             mdIochkt.Free;
              // G_USERID, G_USERIP
              UpdateRecord(sInPatno,sPk2,'empty','empty','empty' ,g_RecKind);             
      end
    else if (g_RecKind='MDIOCHKT_IO') then // I/O 측정기록 [24]
        begin

                 sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
                 sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 입원일자 'YYYYMMDD'
                 sPk3     := ugd_RecodDt.Cells[2,ugd_RecodDt.Row]; // 퇴원일자 'YYYYMMDD'

                  mdIochkt := HmdIochkt.Create;
                  //(수정. 2002.12.26 이용언)  md_iochk_l1
                  RowNo := mdIochkt.ListIOWeight('P',sInPatno,sPk2,sPk3,'');

                  // system error messae
                  if RowNo = -1 then
                  begin
                     ShowErrMsg(stb_Message);
                     mdIochkt.Free;
                     Exit;
                  end
                  else
                     if RowNo = 0 then
                     begin
                        stb_Message.Panels[0].text := '';
                        mdIochkt.Free;
                        Exit;
                     end;

                  if MDF130F1_P01 <> nil then MDF130F1_P01.Close;
                     Application.CreateForm(TMDF130F1_P01, MDF130F1_P01);

                  with ugd_AllList do
                  begin
                     RowCount := 2;
                     Currow := 1;
                     sTemp10 := mdIochkt.sAdmDate[0];
                     i2 := 1;
                     sTemp9 := '';

                     for i:= 1 to RowNo do
                     begin
                        if sTemp9 <> ConvertSDate(mdIochkt.sExecdate[i-1]) then
                        begin
                           sTemp9 := ConvertSDate(mdIochkt.sExecdate[i-1]);
                           //(수정. 2002.12.26 이용언)
                           RowCount         := RowCount + 4;
                           Cells[0, Currow]   := ConvertSDate(mdIochkt.sExecdate[i-1]);
                           Cells[1, Currow]   := '1';
                           Cells[11, Currow]  := Cells[0, Currow];
                           Cells[1, Currow+1] := '2';
                           Cells[11, Currow+1]:= Cells[0, Currow];
                           Cells[1, Currow+2] := '3';
                           Cells[11, Currow+2]:= Cells[0, Currow];                   
                           Cells[1, Currow+3] := 'Total';
                           Cells[11, Currow+3]:= Cells[0, Currow];
                           Currow := Currow+4
                        end;
                     end;

                     Currow := 1;

                     for i:=1 to RowNo do
                     begin

                        if Cells[11, Currow] = ConvertSDate(mdIochkt.sExecdate[i-1]) then
                        begin
                           Rowno2 := StrToIntDef(mdIochkt.sChkCnt[i-1],0);

                           if (mdIochkt.sChkGrp[i-1]='0') or (mdIochkt.sChkGrp[i-1]='') then
                              Cells[2, Currow+(Rowno2-1)] := mdIochkt.iVolume1[i-1]
                           else
                              Cells[2, Currow+(Rowno2-1)] := mdIochkt.iVolume1[i-1] + '(' + mdIochkt.sChkGrp[i-1] + ')';    // Oral

                           Cells[16,Currow+(Rowno2-1)] := mdIochkt.iVolume1[i-1];
                           Cells[17,Currow+(Rowno2-1)] := mdIochkt.sChkGrp[i-1];

                           Cells[3, Currow+(Rowno2-1)] := mdIochkt.iVolume2[i-1];   // Parentcral
                           Cells[4, Currow+(Rowno2-1)] := mdIochkt.iVolume3[i-1];   // Blood

                           if Cells[16, Currow+(Rowno2-1)] = '' then
                              TmpFloat1 := 0
                           else
                              TmpFloat1 := StrToFloat(Cells[16, Currow+(Rowno2-1)]);

                           if Cells[3, Currow+(Rowno2-1)] = '' then
                              TmpFloat2 := 0
                           else
                              TmpFloat2 := StrToFloat(Cells[3, Currow+(Rowno2-1)]);

                           if Cells[4, Currow+(Rowno2-1)] = '' then
                              TmpFloat3 := 0
                           else
                              TmpFloat3 := StrToFloat(Cells[4, Currow+(Rowno2-1)]);

                           Cells[5, Currow+(Rowno2-1)] := FloatToStr(TmpFloat1 + TmpFloat2 + TmpFloat3);
                           Cells[7, Currow+(Rowno2-1)] := mdIochkt.iVolume4[i-1] + '(' + mdIochkt.sChkItem1[i-1] + ')';
                           Cells[12, Currow+(Rowno2-1)] := mdIochkt.iVolume4[i-1];
                           Cells[13, Currow+(Rowno2-1)] := mdIochkt.sChkItem1[i-1];

                           Cells[8, Currow+(Rowno2-1)] := mdIochkt.iVolume5[i-1];   // Suction

                           Cells[9, Currow+(Rowno2-1)] := mdIochkt.iVolume6[i-1] + '(' + mdIochkt.iWeight[i-1] + ')';   // Vomitus
                           Cells[18, Currow+(Rowno2-1)] := mdIochkt.iVolume6[i-1];
                           Cells[19, Currow+(Rowno2-1)] := mdIochkt.iWeight[i-1];

                           Cells[10, Currow+(Rowno2-1)] := mdIochkt.sChkItem3[i-1] + '(' + mdIochkt.sChkItem2[i-1] + ')';
                           Cells[14, Currow+(Rowno2-1)] := mdIochkt.sChkItem3[i-1];
                           Cells[15, Currow+(Rowno2-1)] := mdIochkt.sChkItem2[i-1];

                           if Cells[12, Currow+(Rowno2-1)] = '' then
                              TmpFloat1 := 0
                           else
                              TmpFloat1 := StrToFloat(Cells[12, Currow+(Rowno2-1)]);

                           if Cells[8, Currow+(Rowno2-1)] = '' then
                              TmpFloat2 := 0
                           else
                              TmpFloat2 := StrToFloat(Cells[8, Currow+(Rowno2-1)]);

                           if Cells[18, Currow+(Rowno2-1)] = '' then
                              TmpFloat3 := 0
                           else
                              TmpFloat3 := StrToFloat(Cells[18, Currow+(Rowno2-1)]);

                           if Cells[14, Currow+(Rowno2-1)] = '' then
                              TmpFloat4 := 0
                           else
                              TmpFloat4 := StrToFloat(Cells[14, Currow+(Rowno2-1)]);

                           Cells[6, Currow+(Rowno2-1)] := FloatToStr(TmpFloat1 + TmpFloat2 + TmpFloat3 + TmpFloat4);
                        end
                        else
                        begin
                           //(수정. 2002.12.26 이용언)
                           for k:=Currow to Currow + 2 do
                           begin
                              for j:=2 to 19 do
                              begin
                                 if (j = 2) then
                                 begin

                                 end
                                 else if (j = 7) or (j = 9) then
                                 begin
                                 end
                                 else if (j = 10) or (j = 11) then
                                 begin
                                 end
                                 else
                                 begin

                                    if Trim(Cells[j, Currow+3]) = '' then
                                       TmpFloat1 := 0
                                    else
                                       TmpFloat1 := StrToFloat(Cells[j, Currow+3]);

                                    if Trim(Cells[j, k]) = '' then
                                       TmpFloat2 := 0
                                    else
                                       TmpFloat2 := StrToFloat(Cells[j, k]);

                                    Cells[j, Currow+3] := FloatToStr(TmpFloat1 + TmpFloat2);

                                 end;
                              end;
                           end;

                           if (Cells[17, Currow+3]='0') or (Cells[17, Currow+3]='') then
                              Cells[2, Currow+3] := IntToStr(StrToIntDef(Cells[16, Currow+3],0))
                           else
                              Cells[2, Currow+3] := IntToStr(StrToIntDef(Cells[16, Currow+3],0)) + '('
                                                + IntToStr(StrToIntDef(Cells[17, Currow+3],0)) + ')';
                           Cells[7, Currow+3] := IntToStr(StrToIntDef(Cells[12, Currow+3],0)) + '('
                                             + IntToStr(StrToIntDef(Cells[13, Currow+3],0)) + ')';
                           Cells[9, Currow+3] := IntToStr(StrToIntDef(Cells[18, Currow+3],0)) + '('
                                             + IntToStr(StrToIntDef(Cells[19, Currow+3],0)) + ')';
                           Cells[10, Currow+3] := IntToStr(StrToIntDef(Cells[14, Currow+3],0)) + '('
                                              + IntToStr(StrToIntDef(Cells[15, Currow+3],0)) + ')';

                           Currow := Currow + 4;

                           Rowno2 := StrToIntDef(mdIochkt.sChkCnt[i-1],0);

                           if (mdIochkt.sChkGrp[i-1]='0') or (mdIochkt.sChkGrp[i-1]='') then
                              Cells[2, Currow+(Rowno2-1)] := mdIochkt.iVolume1[i-1]
                           else
                              Cells[2, Currow+(Rowno2-1)] := mdIochkt.iVolume1[i-1] + '(' + mdIochkt.sChkGrp[i-1] + ')';    // Oral

                           Cells[16,Currow+(Rowno2-1)] := mdIochkt.iVolume1[i-1];
                           Cells[17,Currow+(Rowno2-1)] := mdIochkt.sChkGrp[i-1];

                           Cells[3, Currow+(Rowno2-1)] := mdIochkt.iVolume2[i-1];   // Parentcral
                           Cells[4, Currow+(Rowno2-1)] := mdIochkt.iVolume3[i-1];   // Blood

                           if Cells[16, Currow+(Rowno2-1)] = '' then
                              TmpFloat1 := 0
                           else
                              TmpFloat1 := StrToFloat(Cells[16, Currow+(Rowno2-1)]);

                           if Cells[3, Currow+(Rowno2-1)] = '' then
                              TmpFloat2 := 0
                           else
                              TmpFloat2 := StrToFloat(Cells[3, Currow+(Rowno2-1)]);

                           if Cells[4, Currow+(Rowno2-1)] = '' then
                              TmpFloat3 := 0
                           else
                              TmpFloat3 := StrToFloat(Cells[4, Currow+(Rowno2-1)]);

                           Cells[5, Currow+(Rowno2-1)] := FloatToStr(TmpFloat1 + TmpFloat2 + TmpFloat3);
                           Cells[7, Currow+(Rowno2-1)] := mdIochkt.iVolume4[i-1] + '(' + mdIochkt.sChkItem1[i-1] + ')';
                           Cells[12, Currow+(Rowno2-1)] := mdIochkt.iVolume4[i-1];
                           Cells[13, Currow+(Rowno2-1)] := mdIochkt.sChkItem1[i-1];

                           Cells[8, Currow+(Rowno2-1)] := mdIochkt.iVolume5[i-1];   // Suction

                           Cells[9, Currow+(Rowno2-1)] := mdIochkt.iVolume6[i-1] + '(' + mdIochkt.iWeight[i-1] + ')';
                           Cells[18, Currow+(Rowno2-1)] := mdIochkt.iVolume6[i-1];
                           Cells[19, Currow+(Rowno2-1)] := mdIochkt.iWeight[i-1];


                           Cells[10, Currow+(Rowno2-1)] := mdIochkt.sChkItem3[i-1] + '(' + mdIochkt.sChkItem2[i-1] + ')';
                           Cells[14, Currow+(Rowno2-1)] := mdIochkt.sChkItem3[i-1];
                           Cells[15, Currow+(Rowno2-1)] := mdIochkt.sChkItem2[i-1];

                           if Cells[12, Currow+(Rowno2-1)] = '' then
                              TmpFloat1 := 0
                           else
                              TmpFloat1 := StrToFloat(Cells[12, Currow+(Rowno2-1)]);

                           if Cells[8, Currow+(Rowno2-1)] = '' then
                              TmpFloat2 := 0
                           else
                              TmpFloat2 := StrToFloat(Cells[8, Currow+(Rowno2-1)]);

                           if Cells[18, Currow+(Rowno2-1)] = '' then
                              TmpFloat3 := 0
                           else
                              TmpFloat3 := StrToFloat(Cells[18, Currow+(Rowno2-1)]);

                           if Cells[14, Currow+(Rowno2-1)] = '' then
                              TmpFloat4 := 0
                           else
                              TmpFloat4 := StrToFloat(Cells[14, Currow+(Rowno2-1)]);

                           Cells[6, Currow+(Rowno2-1)] := FloatToStr(TmpFloat1 + TmpFloat2 + TmpFloat3 + TmpFloat4);
                        end;
                     end;

                     RowCount := RowCount - 1 ;

                     //(수정. 2002.12.26 이용언)
                     for k:=Currow to Currow + 2 do
                     begin
                        for j:=2 to 19 do
                        begin
                           if (j = 2) then
                           begin
                           end
                           else if (j = 7) or (j = 9) then
                           begin
                           end
                           else if (j = 10) or (j = 11) then
                           begin
                           end
                           else
                           begin

                              if Trim(Cells[j, Currow+3]) = '' then
                                 TmpFloat1 := 0
                              else
                                 TmpFloat1 := StrToFloat(Cells[j, Currow+3]);

                              if Trim(Cells[j, k]) = '' then
                                 TmpFloat2 := 0
                              else
                                 TmpFloat2 := StrToFloat(Cells[j, k]);


                              Cells[j, Currow+3] := FloatToStr(TmpFloat1 + TmpFloat2);

                           end;
                        end;
                     end;

                     if (Cells[17, Currow+3]='0') or (Cells[17, Currow+3]='') then
                        Cells[2, Currow+3] := IntToStr(StrToIntDef(Cells[16, Currow+3],0))
                     else
                        Cells[2, Currow+3] := IntToStr(StrToIntDef(Cells[16, Currow+3],0)) + '('
                                          + IntToStr(StrToIntDef(Cells[17, Currow+3],0)) + ')';
                     Cells[7, Currow+3] := IntToStr(StrToIntDef(Cells[12, Currow+3],0)) + '('
                                       + IntToStr(StrToIntDef(Cells[13, Currow+3],0)) + ')';
                     Cells[9, Currow+3] := IntToStr(StrToIntDef(Cells[18, Currow+3],0)) + '('
                                       + IntToStr(StrToIntDef(Cells[19, Currow+3],0)) + ')';
                     Cells[10, Currow+3] := IntToStr(StrToIntDef(Cells[14, Currow+3],0)) + '('
                                        + IntToStr(StrToIntDef(Cells[15, Currow+3],0)) + ')';
                  end;

                  for i:=1 to ugd_AllList.RowCount-1 do
                  begin
                     for j:=0 to 10 do
                     begin

                        if (j<>8) then
                        begin
                           if ((ugd_AllList.Cells[j, i] = '0') or (ugd_AllList.Cells[j, i] = '0(0)')) then
                              ugd_AllList.Cells[j, i] := ''
                           else if (Copy(Trim(ugd_AllList.Cells[j, i]),1,2) = '0(') then
                              ugd_AllList.Cells[j, i] := Copy(Trim(ugd_AllList.Cells[j, i]),2,length(Trim(ugd_AllList.Cells[j, i]))-1);
                        end;
                     end;
                  end;

                   with MDF130F1_P01 do
                   begin
                         qrlb_Patno.Caption   := ed_PatNo.text;
                         qrlb_PatName.Caption := pn_PatName.Caption;
                         qrlb_sexage.Caption  := pn_SexAge.Caption;
                         qrl_ci.Caption       := copy(pn_ResNo.Caption,1,8) + '******';
                         qrl_ward.Caption     := ugd_RecodDt.Cells[5,ugd_RecodDt.Row];   // 병동/병실
                         qrl_meddept.Caption  := ugd_RecodDt.Cells[3,ugd_RecodDt.Row];   // 진료과
                         qrl_chadr.Caption    := ugd_RecodDt.Cells[4,ugd_RecodDt.Row];   // 주치의
                   end;

              // 기록지 스캔시 필수공통정보
              lb_patno.caption := sInPatno;
              lb_meddate.caption := ugd_RecodDt.Cells[1,ugd_RecodDt.Row];
              lb_dschdate.caption := ugd_RecodDt.Cells[2,ugd_RecodDt.Row];
              lb_patgubun.caption := ugd_RecodDt.Cells[6,ugd_RecodDt.Row];
              lb_meddept.caption := ugd_RecodDt.Cells[3,ugd_RecodDt.Row];
              lb_chadr.caption := ugd_RecodDt.Cells[7,ugd_RecodDt.Row];

             MDF130F1_P01.qr_IO.Print;
             MDF130F1_P01.Close;
             mdIochkt.Free;

              // G_USERID, G_USERIP
              UpdateRecord(sInPatno,sPk2,'empty','empty','empty' ,g_RecKind);             
      end
    else if (g_RecKind='MDIOCHKT_WE') then // 체중 측정기록 [26]
        begin

                 sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
                 sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 입원일자 'YYYYMMDD'
                 sPk3     := ugd_RecodDt.Cells[2,ugd_RecodDt.Row]; // 퇴원일자 'YYYYMMDD'

                  mdIochkt := HmdIochkt.Create;
                  //(수정. 2002.12.26 이용언)  md_iochk_l1
                  RowNo := mdIochkt.ListIOWeight('K',sInPatno,'',sPk2,sPk3);

                  // system error messae
                  if RowNo = -1 then
                  begin
                     ShowErrMsg(stb_Message);
                     mdIochkt.Free;
                     Exit;
                  end
                  else
                  if RowNo = 0 then
                  begin
                     stb_Message.Panels[0].text := '';
                     mdIochkt.Free;
                     Exit;
                  end;

                  if MDF180F1_P01 <> nil then MDF180F1_P01.Close;
                     Application.CreateForm(TMDF180F1_P01, MDF180F1_P01);

                  with ugd_AllList do
                  begin
                     RowCount := RowNo + 1;
                     for i:= 0 to RowNo - 1 do
                     begin
                        Cells[0,i+1] := mdIochkt.sExecTime[i];
                        Cells[1,i+1] := mdIochkt.iWeight[i];
                        Cells[2,i+1] := mdIochkt.sHeight[i];
                        Cells[3,i+1] := mdIochkt.sChkItem1[i];
                        Cells[4,i+1] := mdIochkt.sChkItem2[i];
                        Cells[5,i+1] := mdIochkt.sChkItem3[i];
                     end;
                  end;

                 RowNo2 := (ugd_AllList.RowCount-1) Div 2;
                 RowNo3 := (ugd_AllList.RowCount-1) Mod 2;
                 MDF180F1_P01.CircleCnt := RowNo2 + RowNo3;
                 //showmessage(inttostr(MDF180F1_P01.CircleCnt));
                 MDF180F1_P01.UgdCnt  := ugd_AllList.RowCount;
                                
                 with MDF180F1_P01 do
                 begin
                       qrlb_Patno.Caption   := ed_PatNo.text;
                       qrlb_PatName.Caption := pn_PatName.Caption;
                       qrlb_sexage.Caption  := pn_SexAge.Caption;
                       qrl_ci.Caption       := copy(pn_ResNo.Caption,1,8) + '******';
                       qrl_ward.Caption     := ugd_RecodDt.Cells[5,ugd_RecodDt.Row];   // 병동/병실
                       qrl_meddept.Caption  := ugd_RecodDt.Cells[3,ugd_RecodDt.Row];   // 진료과
                       qrl_chadr.Caption    := ugd_RecodDt.Cells[4,ugd_RecodDt.Row];   // 주치의

                 end;
              // 기록지 스캔시 필수공통정보
              lb_patno.caption := sInPatno;
              lb_meddate.caption := ugd_RecodDt.Cells[1,ugd_RecodDt.Row];
              lb_dschdate.caption := ugd_RecodDt.Cells[2,ugd_RecodDt.Row];
              lb_patgubun.caption := ugd_RecodDt.Cells[6,ugd_RecodDt.Row];
              lb_meddept.caption := ugd_RecodDt.Cells[3,ugd_RecodDt.Row];
              lb_chadr.caption := ugd_RecodDt.Cells[7,ugd_RecodDt.Row];
              
             MDF180F1_P01.qr_Search.Print;
             MDF180F1_P01.Close;
             mdIochkt.Free;
              // G_USERID, G_USERIP
              UpdateRecord(sInPatno,sPk2,'empty','empty','empty' ,g_RecKind);             
      end
    else if (g_RecKind='MDBDINFT') then // 신생아 분만기록지(산부인과-분만대장) [27]
        begin

                 sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
                 sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 입원일자 'YYYYMMDD'
                 sPk3     := ugd_RecodDt.Cells[2,ugd_RecodDt.Row]; // 퇴원일자 'YYYYMMDD'
                 
                mdBdinft := HmdBdinft.Create ;
                RowNo := mdBdinft.SelectBdinf(sInPatno,sPk2);

                  // system error messae
                  if RowNo = -1 then
                  begin
                     ShowErrMsg(stb_Message);
                     mdBdinft.Free;
                     Exit;
                  end;
                  
                  if RowNo = 0 then
                  begin
                     stb_Message.Panels[0].text := '';
                     mdBdinft.Free;
                     Exit;
                  end;

                  if MDN634F2_P01 <> nil then MDN634F2_P01.Close;
                     Application.CreateForm(TMDN634F2_P01, MDN634F2_P01);


                 with MDN634F2_P01 do
                 begin
                       qrlb_Patno.Caption   := ed_PatNo.text;
                       qrlb_PatName.Caption := pn_PatName.Caption;
                       qrlb_patsex.Caption  := pn_SexAge.Caption;
                       qrlb_citizen.Caption  := copy(pn_ResNo.Caption,1,8) + '******';
                       qrlb_meddept.Caption  := ugd_RecodDt.Cells[3,ugd_RecodDt.Row];   // 진료과
                       
                        qrlb_address.Caption := mdBdinft.sAddress[0];
                        qrlb_Admdate.Caption := ConvertSDate2(sPk2);

                        qrlb_Telno1.Caption  := mdBdinft.sTelno1[0];
                        qrlb_TelNo2.caption  := mdBdinft.sTelno2[0];
                        
                        qrlb_age.Caption     := mdBdinft.sage[0];

                        if mdBdinft.sMarryyn[0] = 'N' then
                           qrlb_marryyn2.Caption := ''
                        else
                           qrlb_marryyn1.Caption := '';
                           
                        qrlb_Bp.Caption       := Trim(mdBdinft.sBphigh[0] + '/' + mdBdinft.sBpLow[0]);
                        qrlb_Pulse.Caption    := Trim(mdBdinft.sPulse[0]);
                        qrlb_bt.Caption       := Trim(mdBdinft.sBodytemp[0]);
                        qrlb_fht.Caption      := Trim(mdBdinft.sfht[0]);

                        qrlb_religion.Caption := mdBdinft.sReligion[0]; // 산모종교
                        qrlb_Husrel.Caption := mdBdinft.sHusrel[0]; // 배우자 종교

                        if (Trim(mdbdinft.sDeltype[0]) = 'P-C') or (Trim(mdbdinft.sDeltype[0]) = 'R-C') then
                           qrlb_Deltype.Caption := mdbdinft.sDeltype[0] + ' / S'
                        else if (Trim(mdbdinft.sDeltype[0]) = 'V') then
                           qrlb_Deltype.Caption := mdBdinft.sDeltype[0] + ' BAC'
                        else
                           qrlb_Deltype.Caption := mdbdinft.sDeltype[0] + ' / D';

                           qrlb_Maturity.Caption :=  mdbdinft.sMaturity[0] + ' / D';

                        if copy(mdBdinft.sHxDz[0],1,1) = 'Y' then
                        begin
                           qrlb_dzh1.Caption := '';
                           qrlb_dzh2.Caption := '';
                           qrlb_dzh3.Caption := '';
                           qrlb_dzh4.Caption := '';
                           qrlb_dzh5.Caption := '';
                           qrlb_dzh6.Caption := '';
                           qrlb_dzh7.Caption := '';
                           qrlb_dzh8.Caption := '';
                           qrlb_dzh9.Caption := '';
                        end
                        else
                           qrlb_none.Caption := '';

                        if copy(mdBdinft.sHxDz[0],2,1) = 'N' then
                           qrlb_dzh1.Caption := '';
                        if copy(mdBdinft.sHxDz[0],3,1) = 'N' then
                           qrlb_dzh2.Caption := '';
                        if copy(mdBdinft.sHxDz[0],4,1) = 'N' then
                           qrlb_dzh3.Caption := '';
                        if copy(mdBdinft.sHxDz[0],5,1) = 'N' then
                           qrlb_dzh4.Caption := '';
                        if copy(mdBdinft.sHxDz[0],6,1) = 'N' then
                           qrlb_dzh5.Caption := '';
                        if copy(mdBdinft.sHxDz[0],7,1) = 'N' then
                           qrlb_dzh6.Caption := '';
                        if copy(mdBdinft.sHxDz[0],8,1) = 'N' then
                           qrlb_dzh7.Caption := '';
                        if copy(mdBdinft.sHxDz[0],9,1) = 'N' then
                           qrlb_dzh8.Caption := '';
                        if copy(mdBdinft.sHxDz[0],10,1) = 'N' then
                           qrlb_dzh9.Caption := '';

                        qrlb_prewgt.Caption  := mdBdinft.spreWgt[0];
                        qrlb_Aftwgt.Caption  := mdBdinft.sAfterwgt [0];
                        qrlb_Height.Caption  := mdBdinft.sHeight[0];
                        
                        qrlb_bldabo.Caption  := mdBdinft.sBldAbo[0];
                        qrlb_rh.Caption      := mdBdinft.sBldrh[0];
                        
                        qrlb_Husbld.Caption  := mdBdinft.sHusbldabo[0];
                        qrlb_Husrh.Caption   := mdBdinft.sHusbldrh[0];

                        //배우자성명
                        qrlb_husname.Caption  := mdBdinft.sHusname[0];

                        if mdBdinft.sLmpno[0] = 'Y' then
                           qrlb_Lmp.Caption     := ''
                        else
                           qrlb_Lmp.Caption     := convertsdate(mdBdinft.sLmp[0]);

                        if mdBdinft.sEdcNo[0] = 'Y' then
                           qrlb_edc.Caption     := ''
                        else
                           qrlb_edc.Caption     := convertsdate(mdBdinft.sEdc[0]);

                        qrlb_dgpwks.Caption  := mdBdinft.sDgpwks[0];
                        qrlb_dgpday.Caption  := mdBdinft.sDgpday[0];
                        qrlb_Full.Caption    := mdBdinft.sParityF[0];
                        qrlb_Pre.Caption     := mdBdinft.sParityP[0];
                        qrlb_Abort.Caption   := mdBdinft.sParityA[0];
                        qrlb_Lineb.Caption   := mdBdinft.sParityL[0];

                        if Trim(Copy(mdBdinft.sPrgsick[0],1,1)) = 'Y' then
                           qrlb_PrgSick1.Caption := '∨'
                        else
                           qrlb_PrgSick1.Caption := '';

                        if Trim(Copy(mdBdinft.sPrgsick[0],2,1)) = 'Y' then
                           qrlb_PrgSick2.Caption := '∨'
                        else
                           qrlb_PrgSick2.Caption := '';

                        if Trim(Copy(mdBdinft.sPrgsick[0],3,1)) = 'Y' then
                           qrlb_PrgSick3.Caption := '∨'
                        else
                           qrlb_PrgSick3.Caption := '';

                        if Trim(Copy(mdBdinft.sPrgsick[0],4,1)) = 'Y' then
                           qrlb_PrgSick4.Caption := '∨'
                        else
                           qrlb_PrgSick4.Caption := '';

                        if Trim(Copy(mdBdinft.sPrgsick[0],5,1)) = 'Y' then
                           qrlb_PrgSick5.Caption := '∨'
                        else
                           qrlb_PrgSick5.Caption := '';

                        if Trim(Copy(mdBdinft.sPrgsick[0],6,1)) = 'Y' then
                           qrlb_PrgSick6.Caption := '∨'
                        else
                           qrlb_PrgSick6.Caption := '';

                        qrlb_Prgsketc.caption:= mdBdinft.sPrgsketc[0];

                        if mdBdinft.sAmnioyn[0] = 'N' then
                           qrlb_Amnio2.Caption := ''
                        else
                           qrlb_amnio1.Caption := '';

                        if mdBdinft.sXrayyn[0] = 'N' then
                           qrlb_xray2.Caption  := ''
                        else
                           qrlb_xray1.Caption   := '';                           
                        qrlb_xray.Caption     := mdBdinft.sXrayst[0];
                        
                        if mdBdinft.sPrgdrgyn[0] = 'N' then
                           qrlb_prgdrg2.Caption := ''
                        else
                           qrlb_prgdrg1.Caption := '';
                        qrlb_prgdrg.Caption  := mdBdinft.sPrgdrgst[0];;

                        if  mdBdinft.sPrgsmkyn[0] = 'N' then
                           qrlb_prgsmk2.Caption := ''
                        else
                           qrlb_prgsmk1.Caption := '';
                        qrlb_prgsmk.Caption  := mdBdinft.sPrgsmkdg[0];
                        
                        if mdBdinft.sPrgdrkyn[0] = 'N'then
                           qrlb_prgdrk2.Caption := ''
                        else
                           qrlb_prgdrk1.Caption := '';
                        qrlb_prgdrk.Caption  :=  mdBdinft.sPrgdrkdg[0];
                        
                        if  mdBdinft.sAlgyn[0] = 'N' then
                           qrlb_Alg2.Caption := ''
                        else
                           qrlb_Alg1.Caption := '';
                           
                        qrlb_Alg.Caption  :=  mdBdinft.sAlginfo[0];

                        if mdBdinft.sDimthdyn[0] = 'N' then
                           qrlb_dimthd2.Caption := ''
                        else
                           qrlb_dimthd1.Caption := '';
                           
                        qrlb_dimthd.Caption  := mdBdinft.sdimthd[0];
                        
                        qrlb_etc.Caption     := mdbdinft.sOrsvtm[0];


                        if mdBdinft.sDewyn[0] = 'N'  then    //분만사항과 관련된 정보
                        begin
                           qrlb_dew1.Caption := '∨';
                           qrlb_dew2.Caption := '';                           
                        end
                        else
                        begin
                           qrlb_dew1.Caption := '';
                           qrlb_dew2.Caption := '∨';
                        end;
                        
                        if mdBdinft.sRomyn[0] = 'N'  then
                        begin
                           qrlb_Rom1.Caption := '∨';
                           qrlb_Rom2.Caption := '';
                        end
                        else
                        begin
                           qrlb_Rom1.Caption := '';
                           qrlb_Rom2.Caption := '∨';
                        end;

                        if mdBdinft.sPainyn[0] = 'N'  then
                        begin
                           qrlb_pain1.Caption := '∨';
                           qrlb_pain2.Caption := '';
                        end
                        else
                        begin
                           qrlb_pain1.Caption := '';
                           qrlb_pain2.Caption := '∨';
                        end;

                        qrlb_painper.Caption  :=  mdBdinft.sPainper[0];
                        
                        if mdBdinft.sInbornyn[0] = 'N'  then
                        begin
                           qrlb_inborn1.Caption := '∨';
                           qrlb_inborn2.Caption := '';
                        end
                        else
                        begin
                           qrlb_inborn1.Caption := '';
                           qrlb_inborn2.Caption := '∨';
                        end;

                        qrlb_inborn.Caption := mdBdinft.sInbornct[0];
                        qrlb_Borntime.Caption := ConvertDDate2(mdBdinft.sBorntime[0]);


                        if mdBdinft.sBabysex[0] = 'M' then
                           qrlb_babysex1.Caption :='∨'
                        else
                           qrlb_babysex1.Caption :='';
                           
                        // end; 여기서 end를 왜 쓰누! begin end; 를 쓰는것도 아닌데!


                        if mdBdinft.sBabysex[0] = 'F' then
                           MDN634F2_P01.qrlb_babysex2.Caption :='∨'
                        else
                           MDN634F2_P01.qrlb_babysex2.Caption :='';

                        
                        MDN634F2_P01.qrlb_babyWeight.Caption  := mdBdinft.sBabywgt[0];

                        if mdBdinft.sNeckyn[0] = 'N'then  // '무' 선택시
                        begin
                           MDN634F2_P01.qrlb_neck1.Caption    := '∨';
                           MDN634F2_P01.qrlb_necktype.Caption := '';
                           MDN634F2_P01.qrlb_neck.Caption     := '';
                        end
                        else
                        begin
                           MDN634F2_P01.qrlb_neck1.Caption    := '';
                           MDN634F2_P01.qrlb_necktype.Caption := '';
                           MDN634F2_P01.qrlb_neck.Caption     := '';
                        end;

                        if mdBdinft.sNeckyn[0] = 'Y' then  // '유' 선택시
                        begin
                           MDN634F2_P01.qrlb_neck2.Caption    := '∨';
                           MDN634F2_P01.qrlb_necktype.Caption := 'TYPE:';
                           MDN634F2_P01.qrlb_neck.Caption     := mdBdinft.sNeckType[0];
                        end
                        else
                        begin
                           MDN634F2_P01.qrlb_neck2.Caption    := '';
                           MDN634F2_P01.qrlb_necktype.Caption := '';
                           MDN634F2_P01.qrlb_neck.Caption     := '';
                        end;

                        if mdBdinft.sStlcolyn[0] = 'N' then
                        begin
                           MDN634F2_P01.qrlb_stlcol1.Caption := '∨';
                           MDN634F2_P01.qrlb_Type.Caption    := '';
                           MDN634F2_P01.qrlb_stlcol.Caption  := '';
                        end
                        else
                        begin
                           MDN634F2_P01.qrlb_stlcol1.Caption := '';
                           MDN634F2_P01.qrlb_Type.Caption    := '';
                           MDN634F2_P01.qrlb_stlcol.Caption  := '';
                        end;

                        if mdBdinft.sStlcolyn[0] = 'Y' then
                        begin
                           MDN634F2_P01.qrlb_stlcol2.Caption := '∨';
                           MDN634F2_P01.qrlb_Type.Caption := 'TYPE:';
                           MDN634F2_P01.qrlb_stlcol.Caption  := mdBdinft.sStlcol[0];
                        end
                        else
                        begin
                           MDN634F2_P01.qrlb_stlcol2.Caption := '';
                           MDN634F2_P01.qrlb_Type.Caption    := '';
                           MDN634F2_P01.qrlb_stlcol.Caption  := '';
                        end;


                        if mdBdinft.sReviveyn[0] = 'N' then
                           MDN634F2_P01.qrlb_revive1.Caption := '∨'
                        else
                           MDN634F2_P01.qrlb_revive1.Caption := '';

                        if mdBdinft.sReviveyn[0] = 'Y' then
                           MDN634F2_P01.qrlb_revive2.Caption := '∨'
                        else
                           MDN634F2_P01.qrlb_revive2.Caption := '';

                        if mdBdinft.sOxigenyn[0] = 'N' then
                           MDN634F2_P01.qrlb_oxigen1.Caption := '∨'
                        else
                           MDN634F2_P01.qrlb_oxigen1.Caption := '';

                        if mdBdinft.sOxigenyn[0] = 'Y' then
                           MDN634F2_P01.qrlb_oxigen2.Caption := '∨'
                        else
                           MDN634F2_P01.qrlb_oxigen2.Caption := '';

                        if  mdBdinft.sIntuyn[0]  = 'N' then
                        begin
                           MDN634F2_P01.qrlb_intu1.Caption   := '∨';
                           //qrlb_bodychk.Caption := '';
                        end
                        else
                        begin
                           MDN634F2_P01.qrlb_intu1.Caption   := '';
                           //qrlb_bodychk.Caption := '';
                        end;

                        if  mdBdinft.sIntuyn[0]  = 'Y' then
                        begin
                           MDN634F2_P01.qrlb_intu2.Caption   := '∨';
                        end
                        else
                        begin
                           MDN634F2_P01.qrlb_intu2.Caption   := '';
                        end;

                        MDN634F2_P01.qrlb_bodychk.Caption :=  mdBdinft.sbodychk[0];

                        if mdBdinft.sAdmarea[0] = 'NUR' then
                           MDN634F2_P01.qrlb_nur.Caption  := '∨'
                        else
                           MDN634F2_P01.qrlb_nur.Caption  := '';

                        if mdBdinft.sAdmarea[0] = 'NICU' then
                           MDN634F2_P01.qrlb_nicu.Caption := '∨'
                        else
                           MDN634F2_P01.qrlb_nicu.Caption := '';

                        if mdBdinft.sAdmarea[0] = 'PRI' then
                           MDN634F2_P01.qrlb_pri.Caption := '∨'
                        else
                           MDN634F2_P01.qrlb_pri.Caption := '';

                        if mdBdinft.sAdmarea[0] = 'ABORTION' then
                           MDN634F2_P01.qrlb_abortion.Caption := '∨'
                        else
                           MDN634F2_P01.qrlb_abortion.Caption := '';

                        MDN634F2_P01.qrlb_delvdr.Caption  := mdBdinft.sDelvDr[0];
                        MDN634F2_P01.qrlb_delvnur.Caption := mdBdinft.sDelvnur[0];

                       case strtoint_nvl(mdBdinft.sbabypls[0]) of  // 1분  심박
                          0 : MDN634F2_P01.qrlb_Apgar11.Caption := '없음';
                          1 : MDN634F2_P01.qrlb_Apgar11.Caption := '100/분이하';
                          2 : MDN634F2_P01.qrlb_Apgar11.Caption := '101/분이상';
                        end;
                        
                       case strtoint_nvl(mdBdinft.sbabymse[0]) of  // 1분  근긴장도
                          0 : MDN634F2_P01.qrlb_Apgar12.Caption := '늘어짐';
                          1 : MDN634F2_P01.qrlb_Apgar12.Caption := '사지를 약간 구부림';
                          2 : MDN634F2_P01.qrlb_Apgar12.Caption := '잘움직임';
                        end;
                        
                       case strtoint_nvl(mdBdinft.sbabyresp[0]) of  // 1분  호흡
                          0 : MDN634F2_P01.qrlb_Apgar13.Caption := '없음';
                          1 : MDN634F2_P01.qrlb_Apgar13.Caption := '느리고불규칙';
                          2 : MDN634F2_P01.qrlb_Apgar13.Caption := '잘울음';
                        end;
                        
                       case strtoint_nvl(mdBdinft.sbabycol[0]) of  // 1분  피부
                          0 : MDN634F2_P01.qrlb_Apgar14.Caption := '청색/창백';
                          1 : MDN634F2_P01.qrlb_Apgar14.Caption := '사지창백,몸은분홍';
                          2 : MDN634F2_P01.qrlb_Apgar14.Caption := '전신분홍';
                        end;
                        
                       case strtoint_nvl(mdBdinft.sbabyact[0]) of  // 1분 자극반응
                          0 : MDN634F2_P01.qrlb_Apgar15.Caption := '없음';
                          1 : MDN634F2_P01.qrlb_Apgar15.Caption := '얼굴을 찡그림';
                          2 : MDN634F2_P01.qrlb_Apgar15.Caption := '기침,재채기';
                        end;

                       case strtoint_nvl(mdBdinft.sbabypls5[0]) of  // 1분  심박
                          0 : MDN634F2_P01.qrlb_Apgar21.Caption := '없음';
                          1 : MDN634F2_P01.qrlb_Apgar21.Caption := '100/분이하';
                          2 : MDN634F2_P01.qrlb_Apgar21.Caption := '101/분이상';
                        end;
                        
                       case strtoint_nvl(mdBdinft.sbabymse5[0]) of  // 1분  근긴장도
                          0 : MDN634F2_P01.qrlb_Apgar22.Caption := '늘어짐';
                          1 : MDN634F2_P01.qrlb_Apgar22.Caption := '사지를 약간 구부림';
                          2 : MDN634F2_P01.qrlb_Apgar22.Caption := '잘움직임';
                        end;
                       case strtoint_nvl(mdBdinft.sbabyresp5[0]) of  // 1분  호흡
                          0 : MDN634F2_P01.qrlb_Apgar23.Caption := '없음';
                          1 : MDN634F2_P01.qrlb_Apgar23.Caption := '느리고불규칙';
                          2 : MDN634F2_P01.qrlb_Apgar23.Caption := '잘울음';
                        end;
                        
                       case strtoint_nvl(mdBdinft.sbabycol5[0]) of  // 1분  피부
                          0 : MDN634F2_P01.qrlb_Apgar24.Caption := '청색/창백';
                          1 : MDN634F2_P01.qrlb_Apgar24.Caption := '사지창백,몸은분홍';
                          2 : MDN634F2_P01.qrlb_Apgar24.Caption := '전신분홍';
                        end;
                        
                       case strtoint_nvl(mdBdinft.sbabyact5[0]) of  // 1분 자극반응
                          0 : MDN634F2_P01.qrlb_Apgar25.Caption := '없음';
                          1 : MDN634F2_P01.qrlb_Apgar25.Caption := '얼굴을 찡그림';
                          2 : MDN634F2_P01.qrlb_Apgar25.Caption := '기침,재채기';
                        end;

                        MDN634F2_P01.qrlb_babyscore.Caption  := Inttostr(Strtoint(mdBdinft.sbabypls[0])+
                                                             Strtoint(mdBdinft.sbabyresp[0])+
                                                             Strtoint(mdBdinft.sbabymse[0])+
                                                             Strtoint(mdBdinft.sbabyact[0])+
                                                             Strtoint(mdBdinft.sbabycol[0]));

                        MDN634F2_P01.qrlb_babyscore5.Caption := Inttostr(StrtointDef(mdBdinft.sbabypls5[0],0)+
                                                           StrtointDef(mdBdinft.sbabyresp5[0],0)+
                                                           StrtointDef(mdBdinft.sbabymse5[0],0)+
                                                           StrtointDef(mdBdinft.sbabyact5[0],0)+
                                                           StrtointDef(mdBdinft.sbabycol5[0],0));
                         MDN634F2_P01.qrlb_baby1.Caption   := '아기 1';
                  end;

              // 기록지 스캔시 필수공통정보
              lb_patno.caption := sInPatno;
              lb_meddate.caption := ugd_RecodDt.Cells[1,ugd_RecodDt.Row];
              lb_dschdate.caption := ugd_RecodDt.Cells[2,ugd_RecodDt.Row];
              lb_patgubun.caption := 'I';
              lb_meddept.caption := ugd_RecodDt.Cells[3,ugd_RecodDt.Row];
              lb_chadr.caption := ugd_RecodDt.Cells[6,ugd_RecodDt.Row];


             MDN634F2_P01.quickrep1.Print;
             MDN634F2_P01.Close;
             {
             MDN634F2_P01.quickrep1.Preview;
             }

             mdBdinft.Free;
              // G_USERID, G_USERIP
              UpdateRecord(sInPatno,sPk2,'empty','empty','empty' ,g_RecKind);                 
      end
    else if (g_RecKind='MDBLOODT') then // 수혈기록지 [21]
        begin
             //initialize input parameter
             sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
             sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 진료일자/입원일자 'YYYYMMDD'
             sPk3     := ugd_RecodDt.Cells[4,ugd_RecodDt.Row]; // 환자구분( I/O/E)
             sPk4     := ugd_RecodDt.Cells[7,ugd_RecodDt.Row]; // 진료부서

             //create class 
             mdrecodt :=  Hmdrecodt.Create;
             RowNo := mdrecodt.ListRecordData(g_RecKind,sInPatno,sPk2,sPk3,sPk4);

              // SYSTEM ERROR
              if RowNo = -1 then
              begin
                 mdBldort.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end;
              // 조회건수 없음
              if RowNo = 0 then
              begin
                 mdBldort.Free;
                 stb_Message.Panels[0].Text := '조회된 자료가 없습니다.';
                 Exit;
              end;

              if MDN690F1_P01 <> nil then MDN690F1_P01.Close;
              Application.CreateForm(TMDN690F1_P01, MDN690F1_P01);
              
              ugd_List.RowCount := RowNo + 1;

              for i := 0 to RowNo - 1 do
              begin
                 //(수정. 2002.11.26 이용언)
                 ugd_List.Cells[0,i+1]  := IntToStr(i+1);
                 ugd_List.Cells[1,i+1]  := mdrecodt.O_sResult4[i];  // 시행일자 S_CODE4
                 ugd_List.Cells[2,i+1]  := mdrecodt.O_sResult19[i];                // 처방명  S_CODE19
                 ugd_List.Cells[3,i+1]  := mdrecodt.O_sResult5[i];                 // 혈액번호    S_CODE5
                 ugd_List.Cells[4,i+1]  := mdrecodt.O_sResult22[i];                // 불출시각   S_CODE22
                 ugd_List.Cells[5,i+1]  := mdrecodt.O_sResult6[i];                // 혈액형(4 -> 5)  S_CODE6
                 ugd_List.Cells[6,i+1]  := mdrecodt.O_sResult7[i];                // 시작시간(5 -> 6)  S_CODE7
                 ugd_List.Cells[7,i+1]  := mdrecodt.O_sResult8[i];               // 수혈자1(시작)(6 -> 7) S_CODE8
                 ugd_List.Cells[8,i+1]  := mdrecodt.O_sResult9[i];               // 수혈자2(시작)(7 -> 8)  S_CODE9
                 ugd_List.Cells[9,i+1]  := RemoveLFCR(mdrecodt.O_sResult10[i]);     // 활력증후(시작)(8 -> 9)  S_CODE10
                 ugd_List.Cells[10,i+1] := RemoveLFCR(mdrecodt.O_sResult23[i]);     // 수혈후15분 활력징후(10) S_CODE23
                 ugd_List.Cells[11,i+1] := mdrecodt.O_sResult13[i];                // 종료시간(6 -> 9)(9 -> 10->13->11) S_CODE13
                 ugd_List.Cells[12,i+1] := mdrecodt.O_sResult8[i];               // 수혈자1(시작)(10 -> 11->12) S_CODE8
                 ugd_List.Cells[13,i+1] := mdrecodt.O_sResult9[i];               // 수혈자2(시작)(11 -> 12->13)  S_CODE9
                 ugd_List.Cells[14,i+1] := RemoveLFCR(mdrecodt.O_sResult16[i]);     // 활력증후(종료)(12 -> 13->14)  S_CODE16
                 ugd_List.Cells[15,i+1] := mdrecodt.O_sResult1[i];      // 처방일자 (9  -> 13)(13 -> 14->15) S_CODE1
                 ugd_List.Cells[16,i+1] := mdrecodt.O_sResult21[i];  //(22 -> 23 -> 15->16)  점점속도 추가  15번 S_CODE21

                 //수혈시간 추가.20160303.kya.
                 ugd_List.Cells[17,i+1] := RemoveLFCR(mdrecodt.O_sResult24[i]); // 수혈후30분 활력징후(10)  S_CODE24
                 ugd_List.Cells[18,i+1] := RemoveLFCR(mdrecodt.O_sResult25[i]); // 수혈후1시간 활력징후(10)         S_CODE25
                 ugd_List.Cells[19,i+1] := RemoveLFCR(mdrecodt.O_sResult26[i]); // 수혈후1시30분 활력징후(10)      S_CODE26
                 ugd_List.Cells[20,i+1] := RemoveLFCR(mdrecodt.O_sResult27[i]); // 수혈후2시간 활력징후(10)        S_CODE27
                 ugd_List.Cells[21,i+1] := RemoveLFCR(mdrecodt.O_sResult28[i]); // 수혈후2시30분 활력징후(10)     S_CODE28
                 ugd_List.Cells[22,i+1] := RemoveLFCR(mdrecodt.O_sResult29[i]); // 수혈후3시간 활력징후(10)        S_CODE29
                 ugd_List.Cells[23,i+1] := RemoveLFCR(mdrecodt.O_sResult30[i]); // 수혈후3시30분 활력징후(10)     S_CODE30
                 ugd_List.Cells[24,i+1] := RemoveLFCR(mdrecodt.O_sResult31[i]); // 수혈후4시간 활력징후(10)         S_CODE31

                 // 숨겨놓은 필드
                 ugd_List.Cells[25,i+1] := mdrecodt.O_sResult2[i];     // 처방순번 (10 -> 14)(14 -> 15 -> 16->25) S_CODE2
                 ugd_List.Cells[26,i+1] := mdrecodt.O_sResult3[i];      // 순번     (11 -> 15)(15 -> 16-> 17->26) S_CODE3
                 ugd_List.Cells[27,i+1] := mdrecodt.O_sResult11[i]; //(16 -> 17 -> 18->27) S_CODE11
                 ugd_List.Cells[28,i+1] := mdrecodt.O_sResult12[i]; //(17 -> 18 -> 19->28)  S_CODE12
                 ugd_List.Cells[29,i+1] := mdrecodt.O_sResult17[i]; //(18 -> 19 -> 20->29)  S_CODE17
                 ugd_List.Cells[30,i+1] := mdrecodt.O_sResult18[i]; //(19 -> 20 -> 21->30)  S_CODE18
                 ugd_List.Cells[31,i+1] := mdrecodt.O_sResult1[i];      // 처방일자 (13  -> 20)(20 -> 21-> 22->31) S_CODE1
                 ugd_List.Cells[32,i+1] := mdrecodt.O_sResult20[i]; //(21 -> 22 -> 23->32) S_CODE20

                 //수혈시간 추가.20160303.kya.
                 ugd_List.Cells[33,i+1] := mdrecodt.O_sResult32[i];  // S_CODE32
                 ugd_List.Cells[34,i+1] := mdrecodt.O_sResult33[i]; // S_CODE33
                 ugd_List.Cells[35,i+1] := mdrecodt.O_sResult34[i];   // S_CODE34
                 ugd_List.Cells[36,i+1] := mdrecodt.O_sResult35[i];  // S_CODE35
                 ugd_List.Cells[37,i+1] := mdrecodt.O_sResult36[i];    // S_CODE36
                 ugd_List.Cells[38,i+1] := mdrecodt.O_sResult37[i];              // S_CODE37
                 ugd_List.Cells[39,i+1] := mdrecodt.O_sResult38[i];                        // S_CODE38
                 ugd_List.Cells[40,i+1] := mdrecodt.O_sResult39[i];      // S_CODE39
                 ugd_List.Cells[41,i+1] := mdrecodt.O_sResult40[i];     // S_CODE40
                 ugd_List.Cells[42,i+1] := mdrecodt.O_sResult41[i];      // S_CODE41
                 ugd_List.Cells[43,i+1] := mdrecodt.O_sResult42[i];      // S_CODE42
                 ugd_List.Cells[44,i+1] := mdrecodt.O_sResult43[i];   // S_CODE43
                 ugd_List.Cells[45,i+1] := mdrecodt.O_sResult44[i];    // S_CODE44
                 ugd_List.Cells[46,i+1] := mdrecodt.O_sResult45[i];  // S_CODE45
                 ugd_List.Cells[47,i+1] := mdrecodt.O_sResult46[i];  // S_CODE46
                 ugd_List.Cells[48,i+1] := mdrecodt.O_sResult47[i];// S_CODE47
                 ugd_List.Cells[49,i+1] := mdrecodt.O_sResult57[i];// S_CODE57
                 ugd_List.Cells[50,i+1] := mdrecodt.O_sResult58[i];  // S_CODE58
                 ugd_List.Cells[51,i+1] := mdrecodt.O_sResult48[i]; // 48
                 ugd_List.Cells[52,i+1] := mdrecodt.O_sResult49[i]; // 49
                 ugd_List.Cells[53,i+1] := mdrecodt.O_sResult50[i]; // 50
                 ugd_List.Cells[54,i+1] := mdrecodt.O_sResult51[i]; // 51
                 ugd_List.Cells[55,i+1] := mdrecodt.O_sResult52[i]; // 52
                 ugd_List.Cells[56,i+1] := mdrecodt.O_sResult53[i]; // 53
                 ugd_List.Cells[57,i+1] := mdrecodt.O_sResult54[i]; // 54
                 ugd_List.Cells[58,i+1] := mdrecodt.O_sResult55[i]; // 55
                 ugd_List.Cells[59,i+1] := mdrecodt.O_sResult56[i]; // 56
              end;
             with  MDN690F1_P01 do
              begin
                 qrlb_PatNo.Caption    := ed_PatNo.text;
                 qrlb_PatName.Caption  := pn_PatName.Caption ;
                 qrlb_SexAge.Caption   :=  pn_sexage.Caption;
                 qrl_Ci.Caption        := copy(pn_ResNo.Caption,1,8) + '******';
                 qrlb_DeptNm.Caption   := ugd_RecodDt.Cells[7,ugd_RecodDt.Row]; // 진료부서
                 qrl_chadr.Caption     := ugd_RecodDt.Cells[6,ugd_RecodDt.Row]; // 진료의 / 주치의
                 qrlb_WardNo.caption   := ugd_RecodDt.Cells[3,ugd_RecodDt.Row]; // 병동/병실
               end;

              // 기록지 스캔시 필수공통정보
              lb_patno.caption := sInPatno;
              lb_meddate.caption := ugd_RecodDt.Cells[1,ugd_RecodDt.Row];
              lb_dschdate.caption := ugd_RecodDt.Cells[2,ugd_RecodDt.Row];
              lb_patgubun.caption := ugd_RecodDt.Cells[4,ugd_RecodDt.Row];
              lb_meddept.caption := ugd_RecodDt.Cells[7,ugd_RecodDt.Row];
              lb_chadr.caption := ugd_RecodDt.Cells[5,ugd_RecodDt.Row];


           MDN690F1_P01.CurrentIndex := 0;
           MDN690F1_P01.TempCnt := ugd_List.RowCount-1;           
           MDN690F1_P01.LastChk := 'N';
           MDN690F1_P01.FromFrm := 'MDG300F1';

           //MDN690F1_P01.qr_Search.Preview;           
           MDN690F1_P01.qr_Search.Print;
           MDN690F1_P01.Close;

              // G_USERID, G_USERIP
              UpdateRecord(sInPatno,sPk2,sPk3,sPk4,'empty' ,g_RecKind);           
       end
    else if (g_RecKind='MDERINFT') then // 응급간호정보조사지 [14]
        begin
               //initialize input parameter
               sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
               sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 진료일자/입원일자 'YYYYMMDD'
               sPk3     := ugd_RecodDt.Cells[2,ugd_RecodDt.Row]; // 진료시간
               sPk4     := ugd_RecodDt.Cells[3,ugd_RecodDt.Row]; // 진료과
               sPk5     := ugd_RecodDt.Cells[4,ugd_RecodDt.Row]; // 작성 간호사
               stemp1   := ugd_RecodDt.Cells[5,ugd_RecodDt.Row]; // 주치의


               //create class
              mdErinft := HmdErinft.Create; // md_erinf_s2.pc
              RowNo := mdErinft.SelOneErinf(sInPatno,sPk2,sPk3);
            
               GetWardNo(combx_RoomCd, combx_Room);             // 병동
               GetMedDept(combx_MedDeptCd, combx_MedDept);      //진료과
               GetMedDept(combx_OutDeptCd, combx_OutDept);      //진료과
               GetMedDept(cboDeptCD, cboDept);

               combx_ConslDept1.Clear;
               combx_ConslDept2.Clear;
               combx_ConslDept3.Clear;

               for i:=0 to combx_OutDeptCd.Items.Count-1 do
               begin
                  combx_ConslDept1.Items.Add(combx_OutDept.Items[i]);
                  combx_ConslDept2.Items.Add(combx_OutDept.Items[i]);
                  combx_ConslDept3.Items.Add(combx_OutDept.Items[i]);
               end;

               GetComName('204', combx_ErRsltCd, combx_ErRslt); // 퇴원형태(공통코드)
               GetComName('205', combx_DiagKindCd, combx_DiagKind); //질환분류(공통코드)

               GetComName('206', combx_Intencd, combx_Inten);          //추가정보 -  간호정보조사지 응급실 허원석
               GetComName('207', combx_Injurycd, combx_Injury);
               GetComName('208', combx_returncd, combx_return);
               GetComName('209', combx_transfercd, combx_transfer);


               GetComName('210', combx_inbedcd, combx_inbed);
               GetComName('211', combx_killcd, combx_kill);
               GetComName('211', combx_kill2cd, combx_kill2);
               GetComName('212', combx_dangsacd, combx_dangsa);
               GetComName('213', cbx_type_in_cd, cbx_type_in);   // 전원보낸 의료기관 종류 2010.01.27
               GetComName('214', cbx_type_out_cd, cbx_type_out); // 전원보낼 의료기관 종류 2010.01.27
               GetComName('215', combx_apathcd, combx_apath); //입원경로상세. 20151207.kya.
               GetComName('216', combx_apathcd1, combx_apath1); //입원경로상세. 20151207.kya.

                // SYSTEM ERROR
                if RowNo = -1 then
                begin
                   mdErinft.Free;
                   ShowErrMsg(stb_Message);
                   Exit;
                end;
                // 조회건수 없음
                if RowNo = 0 then
                begin
                   mdErinft.Free;
                   stb_Message.Panels[0].Text := '조회된 자료가 없습니다.';
                   Exit;
                end;

                if MDN130F3_P01 <> nil then MDN130F3_P01.Close;
                Application.CreateForm(TMDN130F3_P01, MDN130F3_P01);
              

               with MDN130F3_P01 do
                begin
                  qlb_PatNo.Caption    := ed_patno.text;   //환자번호
                  qlb_patName.Caption    := pn_PatName.Caption; //환자이름
                  qlb_SexAge.Caption      := pn_SexAge.caption;  //성별 나이

                   mdNktast := HmdNktast.Create;

                   rowno2 := mdNktast.NKTAS_L1('C','',sInPatno,ConvertSDate(sPk2),ConvertDDate2(sPk3),'');

                   if RowNo2 = -1 then
                   begin
                      mdNktast.Free;
                      Exit;
                   end;

                   case strtoint_nvl(mdNktast.sLvlcd[0]) of
                     1: qlb_ktaslevel.Caption := 'Level'+mdNktast.sLvlcd[0]; //중증도 레벨
                     2: qlb_ktaslevel.Caption := 'Level'+mdNktast.sLvlcd[0]; //중증도 레벨
                     3: qlb_ktaslevel.Caption := 'Level'+mdNktast.sLvlcd[0]; //중증도 레벨
                     4: qlb_ktaslevel.Caption := 'Level'+mdNktast.sLvlcd[0]; //중증도 레벨
                     5: qlb_ktaslevel.Caption := 'Level'+mdNktast.sLvlcd[0]; //중증도 레벨
                     8: qlb_ktaslevel.Caption := '기타';
                     9: qlb_ktaslevel.Caption := '미상';
                   else
                     qlb_ktaslevel.Caption := '';
                   end;

                   case strtoint_nvl(mdNktast.sKtascd4[0]) of
                     1: qlb_ktaslevel2.Caption := 'Level'+mdNktast.sKtascd4[0]; //중증도 레벨 2
                     2: qlb_ktaslevel2.Caption := 'Level'+mdNktast.sKtascd4[0]; //중증도 레벨 2
                     3: qlb_ktaslevel2.Caption := 'Level'+mdNktast.sKtascd4[0]; //중증도 레벨 2
                     4: qlb_ktaslevel2.Caption := 'Level'+mdNktast.sKtascd4[0]; //중증도 레벨 2
                     5: qlb_ktaslevel2.Caption := 'Level'+mdNktast.sKtascd4[0]; //중증도 레벨 2
                     8: qlb_ktaslevel2.Caption := '기타';
                     9: qlb_ktaslevel2.Caption := '미상';
                   else
                     qlb_ktaslevel2.Caption := '';                     
                   end;

                     qrl_ward.Caption := mdNktast.sAge[0];      //분류시간

                    if (mdErinft.sErfeeyn[0] <> '') then
                    begin
                       case strtoint_nvl(mdErinft.sErfeeyn[0]) of
                          01 : qlb_ErManage.Caption := ' 급성 의식장애';
                          02 : qlb_ErManage.Caption := ' 급성 신경학적 이상';
                          03 : qlb_ErManage.Caption := ' 구토, 의식장애 등의 증상이 있는 두부손상';
                          04 : qlb_ErManage.Caption := ' 심폐소생술이 필요한 증상';
                          05 : qlb_ErManage.Caption := ' 급성 호흡곤란';
                          06 : qlb_ErManage.Caption := ' 심장질환으로 인한 급성 흉통';
                          07 : qlb_ErManage.Caption := ' 심계항진(Palpitation)';
                          08 : qlb_ErManage.Caption := ' 박동이상 및 쇼크';
                          09 : qlb_ErManage.Caption := ' 심한 탈수';
                          10 : qlb_ErManage.Caption := ' 약물, 알코올 또는 기타 물질의 과다복용이나 중독';
                          11 : qlb_ErManage.Caption := ' 급성 대사장애(간부전, 신부전, 당뇨병 등)';
                          12 : qlb_ErManage.Caption := ' 화학물질에 의한 눈의 손상';
                          13 : qlb_ErManage.Caption := ' 급성 시력손실';
                          14 : qlb_ErManage.Caption := ' 개복술을 요하는 급성복증(복막염, 장폐색증 등)';
                          15 : qlb_ErManage.Caption := ' 광범위한 화상(18%이상 범위)';
                          16 : qlb_ErManage.Caption := ' 관통상, 개방성 골절';
                          17 : qlb_ErManage.Caption := ' 다발성 골절 또는 대퇴부, 척추 골절';
                          18 : qlb_ErManage.Caption := ' 사지를 절단할 우려가 있는 혈관손상';
                          19 : qlb_ErManage.Caption := ' 전신마취하에 응급수술을 요하는 증상';
                          20 : qlb_ErManage.Caption := ' 다발성 외상';
                          21 : qlb_ErManage.Caption := ' 계속되는 각혈';
                          22 : qlb_ErManage.Caption := ' 지혈이 안되는 출혈';
                          23 : qlb_ErManage.Caption := ' 급성 위장관 출혈';
                          24 : qlb_ErManage.Caption := ' 얼굴 부종을 동반한 알러지 반응';
                          25 : qlb_ErManage.Caption := ' 소아 경련선 장애';
                          26 : qlb_ErManage.Caption := ' 자신 또는 다른 사람을 해할 우려가 있는 정신장애';
                          27 : qlb_ErManage.Caption := ' 산부인과적 응급증상(분만 또는 성폭력으로 인하여 산부인과적 검사 또는 처치가 필요한 증상)';
                          28 : qlb_ErManage.Caption := ' 이물에 의한 응급증상(귀,눈,코,항문 등에 이물이 들어가 제거술이 필요한 환자)';
                          51 : qlb_ErManage.Caption := ' 응급증상으로 진행될 가능성이 있다고 판단되는 증상';
                          52 : qlb_ErManage.Caption := ' 의식장애, 난청,현훈';
                          53 : qlb_ErManage.Caption := ' 급성복증을 포함한 배의 전반적인 이상 증상(내과적인 진료만으로 진료과 종결될 수 있는 증상포함)';
                          54 : qlb_ErManage.Caption := ' 화상(부위에 관계없이 모든 화상을 포함)';
                          55 : qlb_ErManage.Caption := ' 38℃ 이상인 소아 고열(만8세미만, 야간/공휴일에 한함)';
                          56 : qlb_ErManage.Caption := ' 골절, 외상, 탈골, 기타 응급수술을 요하는 증상';
                          57 : qlb_ErManage.Caption := ' 호흡곤란, 과호흡';
                          58 : qlb_ErManage.Caption := ' 외상(절단, 손상, 상처, 염좌, 긴장, 동상, 교상, 자상, 좌상, 뇌진탕, 적출, 부식, 이물영향 등)';
                          59 : qlb_ErManage.Caption := ' 혈관손상';
                          60 : qlb_ErManage.Caption := ' 배뇨장애';
                       end;
                    end;

                  // CPR공유여부 추가
                  if mdErinft.sCprshare[0] = 'Y' then
                     sCprshare := '●'
                  else
                     sCprshare := '○';

                  //CPR여부
                  if (mdErinft.sCprYn[0] = 'Y') then
                     sCpr := '●'
                  else
                     sCpr := '○';

                  //응급수술여부
                  if (mdErinft.sEmopYn[0] = 'Y') then
                     sEmOpYn := '●'
                  else
                     sEmOpYn := '○';

                  //내원교육
                  //침상낙상방지
                  if (Copy(mdErinft.sEdustat[0],1,1)='Y') then
                     sEdustat1 := '●'
                  else
                     sEdustat1 := '○';

                   //보호자 1인 상주
                  if (Copy(mdErinft.sEdustat[0],2,1)='Y') then
                     sEdustat2 := '●'
                  else
                     sEdustat2 := '○';

                   //귀중품 관리 및 도난방지
                  if (Copy(mdErinft.sEdustat[0],3,1)='Y') then
                     sEdustat3 := '●'
                  else
                     sEdustat3 := '○';

                   //접수안내
                  if (Copy(mdErinft.sEdustat[0],4,1)='Y') then
                     sEdustat4 := '●'
                  else
                     sEdustat4 := '○';

                    mdNpregt := HmdNpregt.Create;  //md_npreg_s1.pc
                    i2 := mdNpregt.NPREG_S1('1',sInPatno,ConvertSDate(sPk2));

                     // SYSTEM ERROR
                    if i2 = -1 then
                    begin
                       mdNpregt.Free;
                       ShowErrMsg(stb_Message);
                       Exit;
                    end;

                    if i2 >0 then
                       sPregyn := '●'
                    else
                       sPregyn := '○';

                     mdNpregt.Free;

                    //응급구역대상
                  if  mdErinft.sWatchyn[0] = 'Y' then
                     sWatchyn := '●'
                  else
                     sWatchyn := '○';

                    //격리
                  if mdErinft.sIsolate[0] = 'Y' then
                     sIsolate := '●'
                  else
                     sIsolate := '○';

                    //음압
                  if mdErinft.sSound[0] = 'Y' then
                     sSound := '●'
                  else
                     sSound := '○';

                  //선별료 Y
                  if mdErinft.sSelectYn[0] = 'Y' then
                     sSelectY := '●'
                  else
                     sSelectY := '○';

                  //선별료 Y
                  if mdErinft.sSelectYn[0] = 'N' then
                     sSelectN := '●'
                  else
                     sSelectN := '○';                   

                   //퇴실처리
                  if (mdErinft.sOutyn[0]='Y') then
                     sOutyn := '●'
                  else
                     sOutyn := '○';

                   //추가정보
                   //안전벨트
                  if mdErinft.sBoho1[0] = 'Y' then
                     sBohol := '●'
                  else
                     sBohol := '○';

                   //아동용 좌석
                  if mdErinft.sBoho2[0] = 'Y' then
                     sBoho2 := '●'
                  else
                     sBoho2 := '○';

                   //전면에어백
                  if mdErinft.sBoho3[0] = 'Y' then
                     sBoho3 := '●'
                  else
                     sBoho3 := '○';

                   //측면에어백
                  if mdErinft.sBoho4[0] = 'Y' then
                     sBoho4 := '●'
                  else
                     sBoho4 := '○';

                   //무릎 및 관절 보호대
                  if mdErinft.sBoho6[0] = 'Y' then
                     sBoho6 := '●'
                  else
                     sBoho6 := '○';

                   //헬멧
                  if mdErinft.sBoho5[0] = 'Y' then
                     sBoho5 := '●'
                  else
                     sBoho5 := '○';

                   //전혀착용안함
                  if mdErinft.sBoho7[0] = 'Y' then
                     sBoho7 := '●'
                  else
                     sBoho7 := '○';

                   //비해당
                  if mdErinft.sBoho8[0] = 'Y' then
                     sBoho8 := '●'
                  else
                     sBoho8 := '○';

                   //미상
                  if mdErinft.sBoho9[0] = 'Y' then
                     sBoho9 := '●'
                  else
                     sBoho9 := '○';

                  //진료과
                  combx_MedDeptCd.ItemIndex := combx_MedDeptCd.Items.IndexOf(mdErinft.sStatDept[0]);
                  combx_MedDept.ItemIndex   := combx_MedDeptCd.ItemIndex;

                  //질환분류
                  combx_DiagKindCd.ItemIndex := combx_DiagKindCd.Items.IndexOf(mdErinft.sDiagKind[0]);
                  combx_DiagKind.ItemIndex   := combx_DiagKindCd.ItemIndex;

                  //의도성여부
                  combx_IntenCd.ItemIndex := combx_IntenCd.Items.IndexOf(mdErinft.sInten[0]);
                  combx_Inten.ItemIndex   := combx_IntenCd.ItemIndex;

                  //손상기전
                  combx_InjuryCd.ItemIndex := combx_InjuryCd.Items.IndexOf(mdErinft.sInjury[0]);
                  combx_Injury.ItemIndex   := combx_InjuryCd.ItemIndex;

                  //입원구분
                  combx_inbedcd.ItemIndex := combx_inbedcd.Items.IndexOf(mdErinft.sCommon[0]);
                  combx_inbed.ItemIndex   := combx_inbedcd.ItemIndex;

                  //전원사유
                  combx_transfercd.ItemIndex := combx_transfercd.Items.IndexOf(mdErinft.sCommon[0]);
                  combx_transfer.ItemIndex   := combx_transfercd.ItemIndex;

                  //사망구분
                  combx_killcd.ItemIndex := combx_killcd.Items.IndexOf(mdErinft.sCommon[0]);
                  combx_kill.ItemIndex   := combx_killcd.ItemIndex;

                  //사망구분2
                  combx_kill2cd.ItemIndex := combx_kill2cd.Items.IndexOf(mdErinft.sCommon[0]);
                  combx_kill2.ItemIndex   := combx_kill2cd.ItemIndex;

                  //귀가구분
                  combx_returncd.ItemIndex := combx_returncd.Items.IndexOf(mdErinft.sCommon[0]);
                  combx_return.ItemIndex   := combx_returncd.ItemIndex;

                  cboDeptCD.ItemIndex := cboDeptCD.Items.IndexOf(mdErinft.sStatDept[0]);
                  cboDept.ItemIndex   := cboDeptCD.ItemIndex;

                  //중증도
                  //combx_Disease.ItemIndex := combx_Disease.Items.IndexOf(mdErinft.sDisease[0]);

                //퇴원형태 문구
                if mdErinft.sErrslt[0] = '1' then // 1.입원 2.전원 3.외래 4.사망 5.--- 6.귀가 7.자퇴 8.기타
                  begin
                    combx_RoomCd.ItemIndex := combx_RoomCd.Items.IndexOf(mdErinft.sRsltrmk1[0]);
                    combx_Room.ItemIndex   := combx_RoomCd.ItemIndex;
                    combx_RoomChange(sender);
                    combx_roomno.ItemIndex := combx_Roomno.Items.IndexOf(mdErinft.sRsltrmk3[0]);

                   sDschreason := '【병 동】 : ' +  combx_Room.text + #13#10 + #13#10
                               +  '【병 실】 : ' +  combx_roomno.text + #13#10 + #13#10
                               +  '【입 원 구 분】 : ' + combx_inbed.text + #13#10 + #13#10
                               +  '【입 원 경 로】 : ' + combx_apath.text + #13#10 + #13#10
                               +  '【입 원 경 로】 : ' + mdErinft.sEtcRslt[0] + #13#10 + #13#10
                               ;
                  end
                else if  mdErinft.sErrslt[0] = '2' then //전원
                  begin
                     case strtoint_nvl(mdErinft.sMedrslt1[0]) of
                       1 : begin
                           sRsltcd31 := '입원실부족';
                           sRsltRmk31 := '';
                           end;
                       2 : begin
                           sRsltcd31 := '보호자의 요청';
                           sRsltRmk31 := '';
                           end;
                       3 : begin
                           sRsltcd31 := '기타';
                           sRsltRmk31 := mdErinft.sRsltrmk1[0];
                           end;
                     else
                        sRsltcd31 := '';
                        sRsltRmk31 := '';
                     end;

                     case strtoint_nvl(mdErinft.sMedrslt2[0]) of
                       1 : begin
                           sRsltcd32 := '일반차량';
                           sRsltRmk33 := '';
                           end;
                       2 : begin
                           sRsltcd32 := '본원구급차';
                           sRsltRmk33 := '';
                           end;
                       3 : begin
                           sRsltcd32 := '129';
                           sRsltRmk33 := '';
                           end;
                       4 : begin
                           sRsltcd32 := '기타';
                           sRsltRmk33 := mdErinft.sRsltrmk2[0];
                           end;                           
                     else
                        sRsltcd32 := '';
                        sRsltRmk33 := '';
                     end;

                     if (mdErinft.sMedRslt3[0]='1') then
                          sRsltCd34 := '무'
                     else
                          sRsltCd34 := '유';

                     if (mdErinft.sMedRslt4[0]='1') then                                         //검사기록 불러오기         20070913 추가요청
                          sRsltCd35 := '무'
                     else
                          sRsltCd35 := '유';

                     if (mdErinft.sMedRslt5[0]='1') then                                           //영상기록
                          sRsltCd36 := '무'
                     else
                          sRsltCd36 := '유';
                          
                     if (mdErinft.sMedRslt6[0]='1') then                                          //수용능력확인
                          sRsltCd37 := '직접확인'
                     else if (mdErinft.sMedRslt6[0]='2') then
                          sRsltCd37 := '정보센터'
                     else
                          sRsltCd37 := '무';

                     if (mdErinft.sMedRslt7[0]='1') then                                          //이송동의서
                          sRsltCd37 := '무'
                     else
                          sRsltCd37 := '유';
                     
                    sDschreason := '【전원사유1】 : ' + sRsltcd31 + '' + sRsltRmk31 + #13#10 + #13#10
                                +  '【전원사유2】 : ' + combx_transfer.text + #13#10 + #13#10
                                +  '【병 원】 : ' +  mdErinft.sRsltrmk3[0] + '' + '【결정시간】 : ' + mdErinft.sHomeDate[0]  + #13#10 + #13#10
                                +  '【의료기관종류】 : ' + cbx_type_out.text +  #13#10 + #13#10
                                +  '【전원수단】 : ' + sRsltcd32 + '' + sRsltRmk33  +  #13#10 + #13#10
                                +  '【소견서】 : ' + sRsltCd34 + '' +  '【검사기록】 : ' + sRsltCd35  + '' +  '【영상기록】 : ' + sRsltCd36  +  #13#10 + #13#10
                                +  '【수용능력확인】 : ' + sRsltCd37 + '' +  '【수용능력확인】 : ' +  sRsltCd38 +  #13#10 + #13#10
                                +  '【기타상세】 : ' + mdErinft.sEtcRslt[0] +  #13#10 + #13#10
                                ;
                  end
                else if  mdErinft.sErrslt[0] = '3' then //외래
                  begin
                     sDschreason := '';
                  end
                else if  mdErinft.sErrslt[0] = '4' then //사망
                  begin
                      if (mdErinft.sMedrslt1[0]='1') then
                         sRsltCd41 := '응급실사망'
                      else if (mdErinft.sMedrslt1[0]='2') then
                         sRsltCd41 := 'DOA'
                      else
                         sRsltCd41 := '';

                      if (mdErinft.sMedrslt2[0]='1') then
                         sRsltCd42 := '영안실이동'
                      else if (mdErinft.sMedrslt2[0]='2') then
                         sRsltCd42 := '사체귀가'
                      else if (mdErinft.sMedrslt2[0]='3') then
                         sRsltCd42 := '타원이송'
                      else
                         sRsltCd42 := '영안실이동';
                         
                     sDschreason := '【사망장소】 : ' + sRsltCd41 + #13#10 + #13#10
                                 +  '【사망후 이동장소】 : ' +  sRsltCd42 + #13#10 + #13#10
                                 +  '【사망구분】 : ' +  combx_kill.text  + #13#10 + #13#10
                                 +  '【기타상세】 : ' +  mdErinft.sEtcRslt[0] + #13#10 + #13#10
                                 ;
                  end
                else if  mdErinft.sErrslt[0] = '5' then //---
                  begin
                      sDschreason := '';
                  end
                else if  mdErinft.sErrslt[0] = '6' then //귀가
                  begin
                      cboHome.ItemIndex := StrToInt(mdErinft.sHomeYN[0]);
                      sDschreason :=  '【결정시간】 : ' +  mdErinft.sHomeDate[0] + #13#10 + #13#10
                                  +   '【귀 가 약】 : ' +  cboHome.text + #13#10 + #13#10
                                  +   '【귀가구분】 : ' +  combx_return.text + #13#10 + #13#10
                                  +   '【기타상세】 : ' +  mdErinft.sEtcRslt[0] + #13#10 + #13#10
                                  ;
                  end
                else if  mdErinft.sErrslt[0] = '7' then //자퇴
                  begin
                      case StrToInt(mdErinft.sLeavYN[0]) of
                        0 : stemp1 := '무';
                        1 : stemp1 := '유';
                      end;
                      
                      sDschreason :=  '【서 약 서】 : ' +  stemp1 + #13#10 + #13#10
                                  +   '【서 약 서】 : ' +  mdErinft.sSelfdsch[0] + #13#10 + #13#10;
                  end
                else if  mdErinft.sErrslt[0] = '8' then //기타
                  begin
                      sDschreason :=  '【기타사유】 : ' + mdErinft.sRsltrmk1[0] + #13#10 + #13#10;
                  end;

                case StrToInt_nvl(mdErinft.sLocation[0]) of
                    0: combx_Location.ItemIndex := combx_Location.Items.IndexOf('');
                    1: combx_Location.ItemIndex := combx_Location.Items.IndexOf('1구역');
                    2: combx_Location.ItemIndex := combx_Location.Items.IndexOf('2구역');
                    3: combx_Location.ItemIndex := combx_Location.Items.IndexOf('3구역');
                    4: combx_Location.ItemIndex := combx_Location.Items.IndexOf('4구역');
                    5: combx_Location.ItemIndex := combx_Location.Items.IndexOf('소아구역');
                    6: combx_Location.ItemIndex := combx_Location.Items.IndexOf('관찰실');
                    7: combx_Location.ItemIndex := combx_Location.Items.IndexOf('처치실');
                    8: combx_Location.ItemIndex := combx_Location.Items.IndexOf('일반격리실1');
                    9: combx_Location.ItemIndex := combx_Location.Items.IndexOf('일반격리실2');
                   10: combx_Location.ItemIndex := combx_Location.Items.IndexOf('음압격리실');
                   11: combx_Location.ItemIndex := combx_Location.Items.IndexOf('고압산소실');
                   12: combx_Location.ItemIndex := combx_Location.Items.IndexOf('5구역');
                   13: combx_Location.ItemIndex := combx_Location.Items.IndexOf('6구역');
                   14: combx_Location.ItemIndex := combx_Location.Items.IndexOf('7구역');
                   15: combx_Location.ItemIndex := combx_Location.Items.IndexOf('소아음압격리실');       //신설.20211224.kya.
                   16: combx_Location.ItemIndex := combx_Location.Items.IndexOf('소아일반격리실');       //신설.20211224.kya.
                   17: combx_Location.ItemIndex := combx_Location.Items.IndexOf('소아처치실');           //신설.20211224.kya.
                   18: combx_Location.ItemIndex := combx_Location.Items.IndexOf('소아중증응급환자구역'); //신설.20211224.kya.
                   19: combx_Location.ItemIndex := combx_Location.Items.IndexOf('소아응급환자진료구역'); //신설.20211224.kya.
               end;
                     case strtoint_nvl(mdErinft.sPathcd[0]) of
                       1 : begin
                           sPathCd := '자원';
                           sPathRmk := '';
                           end;
                       2 : begin
                           sPathCd := '전원';
                           sPathRmk := '';
                           end;
                       3 : begin
                           sPathCd := '외래';
                           sPathRmk := '';
                           end;
                       4 : begin
                           sPathCd := '기타';
                           sPathRmk := mdErinft.sPathrmk[0];
                           end;                           
                     else
                           sPathCd := '자원';
                           sPathRmk := '';
                     end;

                     case strtoint_nvl(mdErinft.sDieseCd[0]) of
                       0 : begin
                           sDiesecd := '';
                           sDiesermk := '';
                           end;
                       1 : begin
                           sDiesecd := '질병';
                           sDiesermk := '';
                           end;
                       2 : begin
                           sDiesecd := '외상';
                           sDiesermk := '';
                           end;
                       3 : begin
                           sDiesecd := '중독';
                           sDiesermk := '';
                           end;
                       4 : begin
                           sDiesecd := '기타';
                           sDiesermk := mdErinft.sDieseRmk[0];
                           end;
                       5 : begin
                           sDiesecd := '진료외';
                           sDiesermk := '';
                           end;                           
                     else
                           sDiesecd := '';
                           sDiesermk := '';
                     end;

                     //전원보낸 의료기관 종류
                      cbx_type_in_cd.ItemIndex := cbx_type_in_cd.Items.IndexOf(mdErinft.sInHosp[0]);
                      cbx_type_in.ItemIndex   := cbx_type_in_cd.ItemIndex;
                      //ed_inhospcd.Text := mdErinft.sInHospcd[0];


                      //전원보낼 의료기관 종류
                      cbx_type_out_cd.ItemIndex := cbx_type_out_cd.Items.IndexOf(mdErinft.sOutHosp[0]);
                      cbx_type_out.ItemIndex    := cbx_type_out_cd.ItemIndex;
                      //ed_outhospcd.Text := mdErinft.sOutHospcd[0];

                        case strtoint_nvl(mdErinft.sAccitype[0]) of
                          0: sAcciType := '미상';
                          1: sAccitype := '교통사고';
                          2: sAccitype := '폭행';
                          3: sAccitype := '낙상';
                          4: sAccitype := '화상';
                          5: sAccitype := '자상';
                          6: sAccitype := '중독';
                          7: sAccitype := '이물질';
                          8: sAccitype := '미상';
                          9: sAccitype := '기타';
                        else
                             sAccitype := '';
                        end;

                        if Trim(mdErinft.sConsstat[0]) = 'A' then
                           SConsStat := 'Alert'
                        else if Trim(mdErinft.sConsstat[0]) = 'V' then
                           SConsStat := 'Verbal'
                        else if Trim(mdErinft.sConsstat[0]) = 'P' then
                           SConsStat := 'Pain'
                        else if Trim(mdErinft.sConsstat[0]) = 'U' then
                           SConsStat := 'Unresponse';
              
                    qrme_Data.Lines.Clear;
                    // 여기서 invalid variant operation 이 발생했다?
                    qrme_Data.Lines.Text := '=======================================기 본 정 보======================================='    + #13#10 + #13#10
                                          + '【구 역】 : '  + combx_Location.Text + ' ' + mdErinft.sRoomnumber[0] +  '【 '+ sCprshare + ' CPR 공유여부】' + #13#10 + #13#10
                                          + '【도 착 시 간】 : '  + ConvertDDate2(sPk3) + '【 ' + sCpr + ' CPR 여부】' +  #13#10 + #13#10
                                          + '【진 료 시 간】 : '  + ConvertDDate2(mdErinft.sCareTime[0]) + ' 【 ' + sEmOpYn + '' +' 응급수술여부】' + #13#10 + #13#10
                                          + '【내 원 형 태】 : '  + sPathCd + ' ' + sPathRmk +#13#10 + #13#10
                                          + '【의료기관종류】: '  + cbx_type_in.Text + #13#10 + #13#10
                                          + '【내 원 수 단】: ' +  sPathCd + ' ' + sPathRmk + #13#10 + #13#10
                                          + '【환 자 상 태】 '  + #13#10 + #13#10
                                          + ' 의식상태 : ' + SConsStat + #13#10 + #13#10
                                          + ' 활력징후 : ' + '[혈압] : ' + mdErinft.sBldpress[0] + ' mm '+ ' [맥박] : ' +mdErinft.sPulse[0] + ' /분 ' + ' [호흡] : ' + mdErinft.sRespcnt[0] + ' /분 ' + ' [체온] : ' +  mdErinft.sBodytemp[0] + ' ℃ ' + ' [산소포화도] : ' +  mdErinft.sOxygen[0] + ' % ' + ' [체중] : ' + mdErinft.sWeight[0] + ' Kg' + #13#10 + #13#10
                                          + '【발병일자시간】 : ' + mdErinft.sWorkdate[0] + #13#10 + #13#10
                                          + '【주증상1】 : ' + mdErinft.sSymtom1[0] + ' ' + mdErinft.sSymseq1[0] + ' ' + mdErinft.sSymnm1[0] +  #13#10 + #13#10
                                          + '【증상2】 : ' + mdErinft.sSymtom2[0] + ' ' + mdErinft.sSymseq2[0] + ' ' + mdErinft.sSymnm2[0] +  #13#10 + #13#10
                                          + '【증상3】 : ' + mdErinft.sSymtom3[0] + ' ' + mdErinft.sSymseq3[0] + ' ' + mdErinft.sSymnm3[0] +  #13#10 + #13#10
                                          + '【증상】 : ' + mdErinft.sAppear[0] + #13#10 + #13#10
                                          + '【질병구분】 : ' + sDiesecd + ' ' + sDiesermk + #13#10 + #13#10
                                          + '【의도성여부】 : ' + combx_Inten.Text + #13#10 + #13#10
                                          + '【손상기전】 : ' + combx_Injury.Text + #13#10 + #13#10 + #13#10

                                          + '=======================================내 원 교 육======================================='    + #13#10 + #13#10
                                          + '【 ' + sEdustat1 + '' + ' 침상 낙상 방지】'  + '' + '【 ' + sEdustat2 + '' + ' 보호자 1인 상주】' + #13#10
                                          + '【 ' + sEdustat3 + '' + ' 귀중품 관리 및 도난방지】' + '【 ' + sEdustat4 + '' + ' 접수안내】'  + #13#10 + #13#10 + #13#10

                                          + '=======================================퇴 원 정 보======================================='    + #13#10 + #13#10
                                          + '【퇴원시간】 : ' + mdErinft.sOutdate[0] + '【퇴원결정시간】 : ' + mdErinft.sDecDate[0] + #13#10 + #13#10
                                          + '【질환분류】 : ' + combx_DiagKind.Text + '【진료과】 : ' + cboDept.Text + #13#10 + #13#10
                                          + '【퇴원형태】 : ' +  combx_ErRslt.Text + ' 【 ' + sPregyn + ' 임산부】' + #13#10 + #13#10
                                          +  sDschreason //퇴원형태 사유 다 다름
                                          + '【 ' + sIsolate + ' 격리】' + '' + '【 '+ sSound + ' 음압】' + #13#10 + #13#10
                                          + '【 ' + sWatchyn +  ' 응급구역대상】' + #13#10 + #13#10
                                          + '【 '  + ' 선별료' + '' + sSelectY + ' Y' + '' + sSelectN + ' N  】' + #13#10 + #13#10 + #13#10
                                          
                                          + '=======================================사 고 정 보======================================='  + #13#10 + #13#10
                                          + '【사고종류】 : ' + sAccitype + #13#10 + #13#10
                                          + '【비  고】 : ' + mdErinft.sAccidetl[0] + #13#10 + #13#10
                                          + '【발생일시】 : ' + mdErinft.sAcciDate[0] + #13#10 + #13#10
                                          + '【발생장소】 : ' + mdErinft.sAccisite[0] + #13#10 + #13#10
                                          + '【제보자】 : ' + mdErinft.sInfdnr[0] + #13#10 + #13#10  + #13#10

                                          + '=======================================기 타 정 보======================================='    + #13#10 + #13#10
                                          + '【1.긴급연락처】 : ' + mdErinft.sTelno1[0] + #13#10 + #13#10
                                          + '【2.긴급연락처】 : ' + mdErinft.sTelno2[0] + #13#10 + #13#10
                                          + '【3.긴급연락처】 : ' + mdErinft.sTelno3[0] + #13#10 + #13#10
                                          + '【▶작성간호사】 : ' + mdErinft.sRecNrs[0] + #13#10 + #13#10      // 작성간호사 수정!
                                          + '【 ' +  sOutyn + ' 퇴실처리 】' + #13#10 + #13#10 + #13#10
                                          
                                          + '=======================================추 가 정 보======================================='    + #13#10 + #13#10
                                          + '【교통사고담당자】 : ' + combx_dangsa.Text + #13#10 + #13#10
                                          + '【교통사고보호장구】' +  #13#10 + #13#10
                                          + sBohol + ' 안전밸트' + '  ' + sBoho2 + ' 이동용좌석'+   #13#10 + #13#10
                                          + sBoho3 + ' 전면에어백' + '  ' + sBoho4 + ' 측면에어백'+   #13#10 + #13#10
                                          + sBoho5 + ' 무릎및관절보호대' +  #13#10 + #13#10
                                          + sBoho6 + ' 헬맷' + '  ' + sBoho7 + ' 전혀착용않함'+   #13#10 + #13#10
                                          + sBoho8 + ' 비해당' + '  ' + sBoho9 + ' 미상'
                                          ;
                                          
                end;

              // 기록지 스캔시 필수공통정보
              lb_patno.caption := sInPatno;
              lb_meddate.caption := ugd_RecodDt.Cells[1,ugd_RecodDt.Row];
              lb_dschdate.caption := ugd_RecodDt.Cells[7,ugd_RecodDt.Row];;
              lb_patgubun.caption := ugd_RecodDt.Cells[6,ugd_RecodDt.Row];
              lb_meddept.caption := ugd_RecodDt.Cells[3,ugd_RecodDt.Row];
              lb_chadr.caption := ugd_RecodDt.Cells[5,ugd_RecodDt.Row];

           mdErinft.free;                
           mdNktast.free;
           MDN130F3_P01.qr_ermdninfo.print;
           MDN130F3_P01.Close;
       end
    else if (g_RecKind='SQNSTAPT') then // NST [7]
        begin
               //initialize input parameter  선생님..... ugd_RecodDt.Cells[1,ugd_RecodDt.Row], ugd_RecodDt.Cells[1,ugd_RecodDt.Row], ugd_RecodDt.Cells[1,ugd_RecodDt.Row] 실화입니까?
               sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
               sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 진료일자/입원일자 'YYYYMMDD'
               sPk3     := ugd_RecodDt.Cells[2,ugd_RecodDt.Row]; // ReqNo
               sPk4     := ugd_RecodDt.Cells[3,ugd_RecodDt.Row]; // AceNo
               sPk5     := ugd_RecodDt.Cells[4,ugd_RecodDt.Row]; // 의뢰일자

               // create 의뢰내역 class
              sqNstrqt := HsqNstrqt.Create;
              RowNo := sqNstrqt.Select2(sInPatno,sPk2,sPk3);

              // SYSTEM ERROR
              if RowNo = -1 then
              begin
                 sqNstrqt.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end;

              // 조회건수 없음
              if RowNo = 0 then
              begin
                 sqNstrqt.Free;
                 stb_Message.Panels[0].Text := '조회할 자료가 없습니다.';
                 Exit;
              end;


             // create 직종 별 코멘트 class
              sqNstapt := HsqNstapt.Create;
              RowNo3 := sqNstapt.SelectEval(sInPatno,sPk2,sPk3,sPk4);

              // SYSTEM ERROR
              if RowNo3 = -1 then
              begin
                 sqNstapt.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end;

              // 조회건수 없음
              if RowNo3 = 0 then
              begin
                 sqNstapt.Free;
                 stb_Message.Panels[0].Text := '조회할 자료가 없습니다.';
                 Exit;
              end;

              sqNstsgt := HsqNstsgt.Create;
              RowNo2 := sqNstsgt.SelectNurtInf(sInPatno,sPk2,sPk3,sPk4);

              // SYSTEM ERROR
              if RowNo2 = -1 then
              begin
                 sqNstsgt.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end;

              // 조회건수 없음
              if RowNo2 = 0 then
              begin
                 sqNstsgt.Free;
                 stb_Message.Panels[0].Text := '조회할 자료가 없습니다.';
              end;

              if SQN200F7_P1 <> nil then SQN200F7_P1.Close;
              Application.CreateForm(TSQN200F7_P1, SQN200F7_P1);


              with SQN200F7_P1 do
              begin
                 qrlb_patName.Caption := pn_PatName.Caption;
                 qrlb_PatNo.Caption := ed_PatNo.Text;
                 qrlb_sex.Caption := pn_SexAge.Caption;
                 qrlb_admdate.Caption := ConvertSDate2(sPk2);
                 qrlb_reqdate.Caption := ConvertSDate2(sPk5);

                 // 진료쪽 의뢰 체크사항..
                 if copy(sqNstrqt.sReqcause[0],1,1) = 'Y' then qrlb_req1.Caption := '[√]'
                                                           else qrlb_req1.Caption := '[  ]';
                 if copy(sqNstrqt.sReqcause[0],2,1) = 'Y' then qrlb_req2.Caption := '[√]'
                                                           else qrlb_req2.Caption := '[  ]';
                 if copy(sqNstrqt.sReqcause[0],3,1) = 'Y' then qrlb_req3.Caption := '[√]'
                                                           else qrlb_req3.Caption := '[  ]';
                 if copy(sqNstrqt.sReqcause[0],4,1) = 'Y' then qrlb_req4.Caption := '[√]'
                                                           else qrlb_req4.Caption := '[  ]';
                 if copy(sqNstrqt.sReqcause[0],5,1) = 'Y' then qrlb_req5.Caption := '[√]'
                                                           else qrlb_req5.Caption := '[  ]';
                 if copy(sqNstrqt.sReqcause[0],6,1) = 'Y' then qrlb_req6.Caption := '[√]'
                                                           else qrlb_req6.Caption := '[  ]';

                 // 의뢰내역
                 qrmm_request.Lines.Text := sqNstrqt.sReqcomm[0];

                 if Rowno2 > 0 then
                  begin
                   // 신체계측
                   qrlb_height.Caption := sqNstsgt.sHeight[0];
                   qrlb_nkg.Caption := sqNstsgt.sNweight[0];
                   qrlb_skg.Caption := sqNstsgt.sIbw[0];
                   qrlb_ibw.Caption := sqNstsgt.sIbwp[0];
                   qrlb_bmi.Caption := sqNstsgt.sBmi[0];

                   // 영양평가_SGA
                   qrlb_wdweek.Caption := sqNstsgt.sWdweek[0];
                   qrlb_wdpercent.Caption := sqNstsgt.sWdp[0];

                   if sqNstsgt.sWdstep[0] = '1' then qrlb_wdweek1.Caption := '[√]'
                                                else qrlb_wdweek1.Caption := '[  ]';
                   if sqNstsgt.sWdstep[0] = '2' then qrlb_wdweek2.Caption := '[√]'
                                                else qrlb_wdweek2.Caption := '[  ]';
                   if sqNstsgt.sWdstep[0] = '3' then qrlb_wdweek3.Caption := '[√]'
                                                else qrlb_wdweek3.Caption := '[  ]';
                   if sqNstsgt.sWdstep[0] = '4'then qrlb_wdweek4.Caption := '[√]'
                                               else qrlb_wdweek4.Caption := '[  ]';

                   qrlb_nweight.Caption := sqNstsgt.sNweight[0];
               
                   qrlb_sweight.Caption := sqNstsgt.sIbwp[0];
               
                   if sqNstsgt.sIbwp[0] <> '' then
                   begin
                     if (StrToFloat(sqNstsgt.sIbwp[0]) >= 85) then qrlb_wdp1.Caption := '[√]'
                                         else qrlb_wdp1.Caption := '[  ]';
                     if (StrToFloat(sqNstsgt.sIbwp[0]) >= 80) and (StrToFloat(sqNstsgt.sIbwp[0]) < 85) then qrlb_wdp2.Caption := '[√]'
                                         else qrlb_wdp2.Caption := '[  ]';
                     if (StrToFloat(sqNstsgt.sIbwp[0]) >= 70) and (StrToFloat(sqNstsgt.sIbwp[0]) < 80) then qrlb_wdp3.Caption := '[√]'
                                         else qrlb_wdp3.Caption := '[  ]';
                     if StrToFloat(sqNstsgt.sIbwp[0]) < 70 then qrlb_wdp4.Caption := '[√]'
                                         else qrlb_wdp4.Caption := '[  ]';
                   end;


                   qrlb_albumin.Caption := sqNstsgt.sAlbumin[0];
                   if sqNstsgt.sAlbumin[0] <> '' then
                   begin
                     if StrToFloat(sqNstsgt.sAlbumin[0]) > 3.2 then qrlb_albumin1.Caption := '[√]'
                                             else qrlb_albumin1.Caption := '[  ]';
                     if (StrToFloat(sqNstsgt.sAlbumin[0]) >= 2.8) and (StrToFloat(sqNstsgt.sAlbumin[0]) <= 3.2) then qrlb_albumin2.Caption := '[√]'
                                             else qrlb_albumin2.Caption := '[  ]';
                     if (StrToFloat(sqNstsgt.sAlbumin[0]) >= 2.1) and (StrToFloat(sqNstsgt.sAlbumin[0]) < 2.8) then qrlb_albumin3.Caption := '[√]'
                                             else qrlb_albumin3.Caption := '[  ]';
                     if StrToFloat(sqNstsgt.sAlbumin[0]) < 2.1 then qrlb_albumin4.Caption := '[√]'
                                             else qrlb_albumin4.Caption := '[  ]';
                   end;

                   if sqNstsgt.sTakestep[0] = '1' then qrlb_take1.Caption := '[√]'
                                        else qrlb_take1.Caption := '[  ]';
                   if sqNstsgt.sTakestep[0] = '2' then qrlb_take2.Caption := '[√]'
                                        else qrlb_take2.Caption := '[  ]';
                   if sqNstsgt.sTakestep[0] = '3'  then qrlb_take3.Caption := '[√]'
                                        else qrlb_take3.Caption := '[  ]';
                   if sqNstsgt.sTakestep[0] = '4'  then qrlb_take4.Caption := '[√]'
                                        else qrlb_take4.Caption := '[  ]';


                   if copy(sqNstsgt.sMealptype[0],1,1) = 'Y' then qrlb_eatp1.Caption := '[√]'
                                        else qrlb_eatp1.Caption := '[  ]';
                   if copy(sqNstsgt.sMealptype[0],2,1) = 'Y' then qrlb_eatp2.Caption := '[√]'
                                        else qrlb_eatp2.Caption := '[  ]';
                   if copy(sqNstsgt.sMealptype[0],3,1) = 'Y' then qrlb_eatp3.Caption := '[√]'
                                        else qrlb_eatp3.Caption := '[  ]';
                   if copy(sqNstsgt.sMealptype[0],4,1) = 'Y'  then qrlb_eatp4.Caption := '[√]'
                                        else qrlb_eatp4.Caption := '[  ]';
                   if copy(sqNstsgt.sMealptype[0],5,1) = 'Y' then qrlb_eatp5.Caption := '[√]'
                                        else qrlb_eatp5.Caption := '[  ]';
                   if copy(sqNstsgt.sMealptype[0],6,1) = 'Y' then qrlb_eatp6.Caption := '[√]'
                                        else qrlb_eatp6.Caption := '[  ]';

                   if sqNstsgt.sMealpstep[0] = '1' then qrlb_mealp1.Caption := '[√]'
                                         else qrlb_mealp1.Caption := '[  ]';
                   if sqNstsgt.sMealpstep[0] = '2' then qrlb_mealp2.Caption := '[√]'
                                         else qrlb_mealp2.Caption := '[  ]';
                   if sqNstsgt.sMealpstep[0] = '3'  then qrlb_mealp3.Caption := '[√]'
                                         else qrlb_mealp3.Caption := '[  ]';
                   if sqNstsgt.sMealpstep[0] = '4' then qrlb_mealp4.Caption := '[√]'
                                         else qrlb_mealp4.Caption := '[  ]';

                   if sqNstsgt.sBustep[0] = '1' then qrlb_bu1.Caption := '[√]'
                                      else qrlb_bu1.Caption := '[  ]';
                   if sqNstsgt.sBustep[0] = '2' then qrlb_bu2.Caption := '[√]'
                                      else qrlb_bu2.Caption := '[  ]';
                   if sqNstsgt.sBustep[0] = '3' then qrlb_bu3.Caption := '[√]'
                                      else qrlb_bu3.Caption := '[  ]';
                   if sqNstsgt.sBustep[0] = '4' then qrlb_bu4.Caption := '[√]'
                                      else qrlb_bu4.Caption := '[  ]';

                   if sqNstsgt.sBokstep[0] = '1' then qrlb_bok1.Caption := '[√]'
                                       else qrlb_bok1.Caption := '[  ]';
                   if sqNstsgt.sBokstep[0] = '2' then qrlb_bok2.Caption := '[√]'
                                       else qrlb_bok2.Caption := '[  ]';
                   if sqNstsgt.sBokstep[0] = '3' then qrlb_bok3.Caption := '[√]'
                                       else qrlb_bok3.Caption := '[  ]';
                   if sqNstsgt.sBokstep[0] = '4' then qrlb_bok4.Caption := '[√]'
                                       else qrlb_bok4.Caption := '[  ]';

                   if sqNstsgt.sPistep[0] = '1' then qrlb_pi1.Caption := '[√]'
                                      else qrlb_pi1.Caption := '[  ]';
                   if sqNstsgt.sPistep[0] = '2' then qrlb_pi2.Caption := '[√]'
                                      else qrlb_pi2.Caption := '[  ]';
                   if sqNstsgt.sPistep[0] = '3' then qrlb_pi3.Caption := '[√]'
                                      else qrlb_pi3.Caption := '[  ]';
                   if sqNstsgt.sPistep[0] = '4' then qrlb_pi4.Caption := '[√]'
                                      else qrlb_pi4.Caption := '[  ]';

                   if sqNstsgt.sGumstep[0] = '1' then qrlb_gum1.Caption := '[√]'
                                       else qrlb_gum1.Caption := '[  ]';
                   if sqNstsgt.sGumstep[0] = '2' then qrlb_gum2.Caption := '[√]'
                                       else qrlb_gum2.Caption := '[  ]';
                   if sqNstsgt.sGumstep[0] = '3' then qrlb_gum3.Caption := '[√]'
                                       else qrlb_gum3.Caption := '[  ]';
                   if sqNstsgt.sGumstep[0] = '4' then qrlb_gum4.Caption := '[√]'
                                       else qrlb_gum4.Caption := '[  ]';

                   // 영양상태
                   if copy(sqNstsgt.sNutstate[0],1,1) = 'Y' then qrlb_state1.Caption := '[√]'
                                      else qrlb_state1.Caption := '[  ]';
                   if copy(sqNstsgt.sNutstate[0],2,1) = 'Y'then qrlb_state2.Caption := '[√]'
                                      else qrlb_state2.Caption := '[  ]';
                   if copy(sqNstsgt.sNutstate[0],3,1) = 'Y' then qrlb_state3.Caption := '[√]'
                                      else qrlb_state3.Caption := '[  ]';
                   if copy(sqNstsgt.sNutstate[0],4,1) = 'Y' then qrlb_state4.Caption := '[√]'
                                      else qrlb_state4.Caption := '[  ]';
                   if copy(sqNstsgt.sNutstate[0],5,1) = 'Y' then qrlb_state5.Caption := '[√]'
                                      else qrlb_state5.Caption := '[  ]';
                   if copy(sqNstsgt.sNutstate[0],6,1) = 'Y' then qrlb_state6.Caption := '[√]'
                                      else qrlb_state6.Caption := '[  ]';
                   if copy(sqNstsgt.sNutstate[0],7,1) = 'Y' then qrlb_state7.Caption := '[√]'
                                      else qrlb_state7.Caption := '[  ]';
                   if copy(sqNstsgt.sNutstate[0],8,1) = 'Y' then qrlb_state8.Caption := '[√]'
                                      else qrlb_state8.Caption := '[  ]';
                   if copy(sqNstsgt.sNutstate[0],9,1) = 'Y' then qrlb_state9.Caption := '[√]'
                                      else qrlb_state9.Caption := '[  ]';

                   // 신체계측
                   qrlb_height.Caption := sqNstsgt.sHeight[0];
                   qrlb_nkg.Caption := sqNstsgt.sNweight[0];
                   qrlb_skg.Caption := sqNstsgt.sIbw[0];
                   qrlb_ibw.Caption := sqNstsgt.sIbwp[0];
                   qrlb_bmi.Caption := sqNstsgt.sBmi[0];

                     if sqNstsgt.scriweight[0] <> '' then // itmp combx_critia.ItemIndex
                        itmp := StrToInt(sqNstsgt.scriweight[0]);

                     if itmp = 0 then // stemp1 ed_nweightr.Text ed_qweight.Text ed_pweight.Text
                        stemp1 := sqNstsgt.sNweight[0]
                     else if itmp = 1 then
                        stemp1 := sqNstsgt.sIbw[0]
                     else if itmp = 2 then
                        stemp1 := FloatToStr(StrToFloat(sqNstsgt.sIbw[0]) + 0.25 * (StrToFloat(sqNstsgt.sNweight[0]) - StrToFloat(sqNstsgt.sIbw[0])));

                    if (trim(sqNstsgt.sHeight[0]) <> '') and (trim(sqNstsgt.sNweight[0]) <> '') and (trim(pn_SexAge.Caption) <> '') then //stemp2 fvalue
                    begin
                      TmpFloat1 := StrToFloat(sqNstsgt.sHeight[0]);
                      TmpFloat2 := StrToFloat(sqNstsgt.sNweight[0]);
                      TmpFloat3 := StrToFloat(trim(copy(pn_SexAge.Caption,3,2)));

                      if trim(copy(pn_SexAge.Caption,1,1)) = 'M' then TmpFloat4 := 66.4 + (13.7 * TmpFloat2) + (5.0 * TmpFloat1) - (6.8 * TmpFloat3)
                                                                 else TmpFloat4 := 655 + (9.6 * TmpFloat2) + (1.8 * TmpFloat1) - (4.7 * TmpFloat3);

                      sqNstsgt.sBee[0] := FloatToStr(TmpFloat4);
                    end;

                   // calcuate 2
                   if (trim(sqNstsgt.sAfactor[0]) <> '') and (trim(sqNstsgt.sIfactor[0]) <> '') and
                      (trim(sqNstsgt.sQfact1[0]) <> '') and (trim(sqNstsgt.sQfact2[0]) <> '') and
                      (trim(sqNstsgt.sPfact1[0]) <> '') and (trim(sqNstsgt.sPfact2[0]) <> '') and
                      (trim(sqNstsgt.sEnqcal[0]) <> '') and (trim(sqNstsgt.sEnpg[0]) <> '') and
                      (trim(sqNstsgt.sPnqcal[0]) <> '') and (trim(sqNstsgt.sPnpg[0]) <> '')
                   then
                   begin
                       //ed_hbcal.Text := FloatToStr(RoundTo((StrToFloat(sqNstsgt.sBee[0]) * StrToFloat(sqNstsgt.sAfactor[0]) * StrToFloat(sqNstsgt.sIfactor[0])),-2));

                       stemp3  := FloatToStr(RoundTo((StrToFloat(stemp1) * StrToFloat(sqNstsgt.sQfact2[0])),-2));
                       //stemp3 ed_qcal2.Text, ed_enqcal.Text, ed_pnqcal.Text ed_epnqcal.Text

                       stemp4   := FloatToStr(RoundTo((StrToFloat(stemp1) * StrToFloat(sqNstsgt.sPfact2[0])),-2));
                       //stemp4 ed_pg2.Text, ed_enprog.Text, ed_pnprog.Text ed_epnprog.Text

                       stemp5 := FloatToStr(RoundTo((StrToFloat(sqNstsgt.sEnqcal[0]) + StrToFloat(sqNstsgt.sPnqcal[0])),-2));
                       stemp6  := FloatToStr(RoundTo((StrToFloat(sqNstsgt.sEnpg[0])  + StrToFloat(sqNstsgt.sPnpg[0])),-2));

                       stemp7 := FloatToStr(Round(StrToFloat(sqNstsgt.sEnqcal[0]) / StrToFloat(stemp3) * 100));
                       stemp8 := FloatToStr(Round(StrToFloat(sqNstsgt.sPnqcal[0]) / StrToFloat(stemp3) * 100));

                       stemp9  := FloatToStr(Round(StrToFloat(sqNstsgt.sEnpg[0]) / StrToFloat(stemp4) * 100));
                       stemp10 := FloatToStr(Round(StrToFloat(sqNstsgt.sPnpg[0]) / StrToFloat(stemp4) * 100));

                       sEpnp := FloatToStr(StrToFloat(stemp7) + StrToFloat(stemp8));
                       sEpnprop := FloatToStr(StrToFloat(stemp9) + StrToFloat(stemp10));

                       // 영양요구량 (여기서 에러)
                       qrlb_qcal.Caption  := FloatToStr(RoundTo((StrToFloat(stemp1) * StrToFloat(sqNstsgt.sQfact1[0])),-2)) + '~' + stemp3 + 'kg';
                       qrlb_pg.Caption    := FloatToStr(RoundTo((StrToFloat(stemp1) * StrToFloat(sqNstsgt.sPfact1[0])),-2)) + '~' + stemp4 + 'g';
                   end;

                   qrlb_water.Caption := sqNstsgt.sWneed[0] + 'ml/day';
                   qrlb_wrtfeed.Caption := '현 섭취 열량 ' + stemp5 +
                                           'kcal, 필요 열량 ' + stemp3 +
                                           'kcal로 ' + sEpnp +
                                           '% / 현 섭취 단백질 ' + stemp6 +
                                           'g, 필요 단백질 ' + stemp4 +
                                           'g로 ' + sEpnprop + '%';
                 end;

                 // 치료계획
                 QRMemo1.Lines.Text := '◆ 평가자 : 의  사 ' + sqNstapt.sCmname[0] + '        평가일시 : ' + sqNstapt.sCmdate[0] + #10#13 + sqNstapt.sCmcomm[0] + #10#13 +#10#13 +
                                       '◆ 평가자 : 영양사 ' + sqNstapt.sCqname[0] + '        평가일시 : ' + sqNstapt.sCqdate[0] + #10#13 + sqNstapt.sCqcomm[0] + #10#13 +#10#13 +
                                       '◆ 평가자 : 약  사 ' + sqNstapt.sCdname[0] + '       평가일시 : ' + sqNstapt.sCddate[0] + #10#13 + sqNstapt.sCdcomm[0] + #10#13 +#10#13 +
                                       '◆ 평가자 : 간호사 ' + sqNstapt.sCnname[0] + '       평가일시 : ' + sqNstapt.sCndate[0] + #10#13 + sqNstapt.sCncomm[0];
                 // 모니터링
                 QRMemo2.Lines.Text := '◆ 평가자 : 의  사 ' + sqNstapt.sfmname[0] + '       평가일시 : ' + sqNstapt.sfmdate[0] + #10#13 + sqNstapt.sfmcomm[0] + #10#13 +#10#13 +
                                       '◆ 평가자 : 영양사 ' + sqNstapt.sfqname[0] + '       평가일시 : ' + sqNstapt.sfqdate[0] + #10#13 + sqNstapt.sfqcomm[0] + #10#13 +#10#13 +
                                       '◆ 평가자 : 약  사 ' + sqNstapt.sfdname[0] + '       평가일시 : ' + sqNstapt.sfddate[0] + #10#13 + sqNstapt.sfdcomm[0] + #10#13 +#10#13 +
                                       '◆ 평가자 : 간호사 ' + sqNstapt.sfnname[0] + '       평가일시 : ' + sqNstapt.sfndate[0] + #10#13 + sqNstapt.sfncomm[0];

                 // 종합평가
                 QRMemo3.Lines.Text := sqNstapt.sAptcomm[0];

             end;

            // 기록지 스캔시 필수공통정보
            lb_patno.caption := sInPatno;
            lb_meddate.caption := sPk2;
            lb_dschdate.caption := ugd_RecodDt.Cells[5,ugd_RecodDt.Row];
            lb_patgubun.caption := 'I';
            lb_meddept.caption := ugd_RecodDt.Cells[6,ugd_RecodDt.Row];
            lb_chadr.caption := ugd_RecodDt.Cells[7,ugd_RecodDt.Row];

            sqNstapt.free;
            sqNstsgt.Free;
            sqNstrqt.Free;

            //SQN200F7_P1.QuickRep1.Preview;
            SQN200F7_P1.QuickRep1.print;
            SQN200F7_P1.close;
          
            // G_USERID, G_USERIP
            UpdateRecord(sInPatno,sPk2,sPk3,sPk4,'empty' ,g_RecKind);

       end
    else if (g_RecKind='MDOBDEPT') then // 분만기록지 [9]
        begin
             //initialize input parameter
             sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
             sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 진료일자/입원일자 'YYYYMMDD'

             //create class
              mdObdept := HmdObdept.Create;
              RowNo := mdObdept.ListmdObdept(sInPatno, ConvertSDate(sPk2));

              // SYSTEM ERROR
              if RowNo = -1 then
              begin
                 mdObdept.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end;

              // 조회건수 없음
              if RowNo = 0 then
              begin
                 mdObdept.Free;
                 stb_Message.Panels[0].Text := '조회할 자료가 없습니다.';
                 Exit;
              end;

              if MDN111F5_P01 = nil then
              Application.CreateForm(TMDN111F5_P01, MDN111F5_P01);

              with MDN111F5_P01 do
                begin
                  qrl_patname.Caption   := pn_PatName.Caption ;
                  qrl_Hospno.Caption    := ed_PatNo.text;
                  qrl_age.Caption       := mdObdept.sAge[0];
                  qrl_admdate.Caption   := ConvertSDate(sPk2);

                  qrl_lmp.Caption       := ConvertSDate(mdObdept.sLmp[0]);


                 case strtoint_nvl(mdObdept.sPmp[0]) of  // 1분  피부
                         0 : qrl_pmp.Caption := '';
                         1 : qrl_pmp.Caption := 'regular';
                         2 : qrl_pmp.Caption := 'irregular';
                 end;

                  qrl_edc.Caption       := ConvertSDate(mdObdept.sEdc[0]);
                  qrl_gestwks.Caption   := mdObdept.sGestWks[0];
                  qrl_laborTm.Caption   := ConvertDDate(mdObdept.sLaborbgn[0]);

                  qrl_contract.Caption  := mdObdept.sContract[0];
                  qrl_interval.Caption  := mdObdept.sInterval[0];
                  qrl_duration.Caption  := mdObdept.sDuration[0];
                  qrl_charact.Caption   := mdObdept.sCharact[0];
                  qrl_fhr.Caption       := mdObdept.sFhr[0];

                  shcbx_pro(qrs_fhrshow1, copy(mdObdept.sFhrshow[0],1,1));
                  shcbx_pro(qrs_fhrshow2, copy(mdObdept.sFhrshow[0],2,1));
                  shcbx_pro(qrs_fhrbleed1, copy(mdObdept.sFhrbleed[0],1,1));
                  shcbx_pro(qrs_fhrbleed2, copy(mdObdept.sFhrbleed[0],2,1));
                  shcbx_pro(qrs_membranes1, copy(mdObdept.sMembrane[0],1,1));
                  shcbx_pro(qrs_membranes2, copy(mdObdept.sMembrane[0],2,1));

                  qrl_memdate.Caption   := ConvertDDate(mdObdept.sMemdate[0]);
                  
                  shcbx_pro(qrs_bldrh1, copy(mdObdept.sBldrh[0],1,1));
                  shcbx_pro(qrs_bldrh2, copy(mdObdept.sBldrh[0],2,1));

                  qrl_bldabo.Caption    := mdObdept.sBldabo[0];
                  qrl_xraydate.Caption  := ConvertSDate(mdObdept.sXraydate[0]);
                  qrl_xrayrslt.Caption  := mdObdept.sXrayrslt[0];
                  qrl_prewt.Caption     := mdObdept.sPrewtg[0];
                  
                  shcbx_pro(qrs_prenav1,copy(mdObdept.sPrenav[0],1,1));
                  shcbx_pro(qrs_prenav2, copy(mdObdept.sPrenav[0],2,1));
                  shcbx_pro(qrs_prenhyper1, copy(mdObdept.sPrehyper[0],1,1));
                  shcbx_pro(qrs_prenhyper2, copy(mdObdept.sPrehyper[0],2,1));
                  shcbx_pro(qrs_prenhache1, copy(mdObdept.sPrehache[0],1,1));
                  shcbx_pro(qrs_prenhache2, copy(mdObdept.sPrehache[0],2,1));
                  shcbx_pro(qrs_pren1, copy(mdObdept.sPreedema[0],1,1));
                  shcbx_pro(qrs_pren2, copy(mdObdept.sPreedema[0],2,1));
                  shcbx_pro(qrs_prenbleed1, copy(mdObdept.sPrebleed[0],1,1));
                  shcbx_pro(qrs_prenbleed2, copy(mdObdept.sPrebleed[0],2,1));
                  
                  qrm_othcomp.Lines.Clear;
                  qrm_othcomp.Lines.Add(mdObdept.sOthcomp[0]);
                  
                  qrl_pastpara.Caption   := mdObdept.sPastpara[0];
                  qrl_pastal.Caption     := mdObdept.sPastal[0];

                  shcbx_pro(qrs_pastherb1, copy(mdObdept.sPastherb[0],1,1));
                  shcbx_pro(qrs_pastherb2, copy(mdObdept.sPastherb[0],2,1));
                  shcbx_pro(qrs_pastiron1, copy(mdObdept.sPastiron[0],1,1));
                  shcbx_pro(qrs_pastiron2, copy(mdObdept.sPastiron[0],2,1));

                  qrl_menache.Caption    := mdObdept.sMenache[0];
                  qrl_marriage.Caption   := mdObdept.sMarriage[0];

                 case strtoint_nvl(mdObdept.sMenscycl[0]) of  //
                         0 : qrl_menscycl.Caption := '';
                         1 : qrl_menscycl.Caption := 'regular';
                         2 : qrl_menscycl.Caption := 'irregular';
                 end;

                  qrl_mensintv.Caption   := mdObdept.sMensintv[0];
                  qrl_mensdula.Caption   := mdObdept.sMensdula[0];
                  qrl_mensamt.Caption    := mdObdept.sMensamt[0];

                  qrm_surghis.Lines.Clear;
                  qrm_surghis.Lines.Add(mdObdept.sSurghis[0]);
                  qrm_fmhis.Lines.Clear;
                  qrm_fmhis.Lines.Add(mdObdept.sFmhis[0]);

                  qrl_weight.Caption     := mdObdept.sWeight[0];

                  shcbx_pro(qrs_bodytyp1, copy(mdObdept.sBodytyp[0],1,1));
                  shcbx_pro(qrs_bodytyp2, copy(mdObdept.sBodytyp[0],2,1));
                  shcbx_pro(qrs_bodytyp3, copy(mdObdept.sBodytyp[0],3,1));

                  qrl_head.Caption       := mdObdept.sHead[0];
                  qrl_ears.Caption       := mdObdept.sEars[0];
                  qrl_nosnthr.Caption    := mdObdept.sNosnthr[0];
                  qrl_mouth.Caption      := mdObdept.sMouth[0];
                  qrl_teeth.Caption      := mdObdept.sTeeth[0];

                  shcbx_pro(qrs_denture1, copy(mdObdept.sDenture[0],1,1));
                  shcbx_pro(qrs_denture2, copy(mdObdept.sDenture[0],2,1));

                  qrl_thyroid.Caption    := mdObdept.sThyroid[0];
                  qrl_breast.Caption     := mdObdept.sBreast[0];
                  qrl_nipple.Caption     := mdObdept.sNipple[0];
                  qrl_lung.Caption       := mdObdept.sLung[0];
                  qrl_heart.Caption      := mdObdept.sHeart[0];
                  qrl_abdomen.Caption    := mdObdept.sAbdomen[0];
                  qrl_bacnspn.Caption    := mdObdept.sBacnspn[0];
                  qrl_hof.Caption        := mdObdept.sHof[0];
                  qrl_present.Caption    := mdObdept.sPresent[0];
                  qrl_position.Caption   := mdObdept.sPosition[0];
                  qrl_fethfhr.Caption    := mdObdept.sFethfhr[0];
                  shcbx_pro(qrs_fetal1, copy(mdObdept.sFetaloc[0],1,1));
                  shcbx_pro(qrs_fetal2, copy(mdObdept.sFetaloc[0],2,1));
                  shcbx_pro(qrs_fetal3, copy(mdObdept.sFetaloc[0],3,1));
                  shcbx_pro(qrs_fetal4, copy(mdObdept.sFetaloc[0],4,1));
                  qrl_fetalimp1.Caption  := mdObdept.sFetalimp1[0];
                  qrl_fetalimp2.Caption  := mdObdept.sFetalimp2[0];
                  qrl_fetalimp3.Caption  := mdObdept.sFetalimp3[0];
                  qrl_fetalimp4.Caption  := mdObdept.sFetalimp4[0];
                  qrl_fetalimp5.Caption  := mdObdept.sFetalimp5[0];
                  //
                  qrl_bydr.Caption     := mdObdept.sBydr[0];
                  qrl_assistnr.Caption := mdObdept.sAssistnr[0];

                  qrl_patname.Caption   := pn_PatName.Caption;
                  QRLabel237.Caption    := pn_PatName.Caption;
                  qrl_Hospno.Caption    := ed_PatNo.Text;
                  QRLabel241.Caption    := ed_PatNo.Text;


                  qrl_delvdate.Caption := ConvertDDate(mdObdept.sDelvdate[0] )+' / '+
                                          ConvertDDate(mdObdept.sDelvdate2[0])+' / '+
                                          ConvertDDate(mdObdept.sDelvdate3[0]);

                  qrl_plcdelvt.Caption := ConvertDDate(mdObdept.sPlcdelvt[0]);

                  shcbx_pro(qrs_prepscrb1,copy(mdObdept.sPrepscrb[0],1,1));
                  shcbx_pro(qrs_prepscrb2,copy(mdObdept.sPrepscrb[0],2,1));
                  shcbx_pro(qrs_prepdrap1,copy(mdObdept.sPrepdrap[0],1,1));
                  shcbx_pro(qrs_prepdrap2,copy(mdObdept.sPrepdrap[0],2,1));
                  shcbx_pro(qrs_prepcath1,copy(mdObdept.sPrepcath[0],1,1));
                  shcbx_pro(qrs_prepcath2,copy(mdObdept.sPrepcath[0],2,1));

                  qrl_preppos.Caption := mdObdept.sPreppos[0];
                  qrl_prepstat.Caption := mdObdept.sPrepstat[0];
                  qrl_prepdila.Caption := mdObdept.sPrepdila[0];

                  shcbx_pro(qrs_anesth1,copy(mdObdept.sAnesth[0],1,1));
                  shcbx_pro(qrs_anesth2,copy(mdObdept.sAnesth[0],2,1));

                  qrl_anedr.Caption := mdObdept.sAnenur[0];

                  shcbx_pro(qrs_delvspon1,copy(mdObdept.sDelvspon[0],1,1));
                  shcbx_pro(qrs_delvspon2,copy(mdObdept.sDelvspon[0],2,1));

                  qrl_delvtxt.Caption := mdObdept.sDelvtxt[0];

                  shcbx_pro(qrs_plaspon1,copy(mdObdept.sPlaspon[0],1,1));
                  shcbx_pro(qrs_plaspon2,copy(mdObdept.sPlaspon[0],2,1));
                  qrl_placond.Caption := Trim(mdObdept.sPlatxt[0]);
                  qrl_bldloss.Caption := Trim(mdObdept.sPlacond[0]);

                  qrl_bldloss.Caption := mdObdept.sBldloss[0];
                  qrl_epst.Caption := mdObdept.sEpst[0];

                  qrl_lacerat.Caption := mdObdept.sLacerat[0];
                  qrm_reptpsut.Lines.Clear;
                  qrm_reptpsut.Lines.Add(mdObdept.sReptpsut[0]);

        //          qrl_reptpsut.Caption := ed_RetpSut.Text;
                  qrl_meddelv.Caption := mdObdept.sMeddelv[0];
                  qrl_pdelvfund.Caption := mdObdept.sPdelfun[0];
                  qrl_pdelvbp.Caption := mdObdept.sPdelvbp[0];
                  qrl_pdelvp.Caption := mdObdept.sPdelvp[0];

                  shcbx_pro(qrs_infantsx1,copy(mdObdept.sInfantsx[0],1,1));
                  shcbx_pro(qrs_infantsx1b,copy(mdObdept.sInfantsx2[0],1,1));
                  shcbx_pro(qrs_infantsx1c,copy(mdObdept.sInfantsx3[0],1,1));

                  shcbx_pro(qrs_infantsx2,copy(mdObdept.sInfantsx[0],2,1));
                  shcbx_pro(qrs_infantsx2b,copy(mdObdept.sInfantsx2[0],2,1));
                  shcbx_pro(qrs_infantsx2c,copy(mdObdept.sInfantsx3[0],2,1));

                  qr1_infantwt.Caption := mdObdept.sInfantwt[0];
                  qr1_infantwt2.Caption := mdObdept.sInfantwt2[0];
                  qr1_infantwt3.Caption := mdObdept.sInfantwt3[0];
                  qr1_infantabn.Caption := mdObdept.sInfntabn[0];
                  qr1_infantabn2.Caption := mdObdept.sInfntabn2[0];
                  qr1_infantabn3.Caption := mdObdept.sInfntabn3[0];

                  shcbx_pro(qrs_respir1,copy(mdObdept.sRespir[0],1,1));
                  shcbx_pro(qrs_respir1b,copy(mdObdept.sRespir2[0],1,1));
                  shcbx_pro(qrs_respir1c,copy(mdObdept.sRespir3[0],1,1));

                  shcbx_pro(qrs_respir2,copy(mdObdept.sRespir[0],2,1));
                  shcbx_pro(qrs_respir2b,copy(mdObdept.sRespir2[0],2,1));
                  shcbx_pro(qrs_respir2c,copy(mdObdept.sRespir3[0],2,1));

                  qrl_respiro2.Caption := mdObdept.sRespiro2[0];
                  qrl_respiro2b.Caption := mdObdept.sRespiro2b[0];
                  qrl_respiro2c.Caption := mdObdept.sRespiro2c[0];
                  shcbx_pro(qrs_imcarecd1,copy(mdObdept.sImcarecd[0],1,1));
                  shcbx_pro(qrs_imcarecd2,copy(mdObdept.sImcarecd[0],2,1));

                  //shcbx_pro(qrs_imcareye1,cbx_ImCareEyesM);cbx_ImCareEyesP
                  shcbx_pro(qrs_imcareye1,copy(mdObdept.sImcareye[0],1,1));
                  //shcbx_pro(qrs_imcareye2,cbx_InfantG);
                  shcbx_pro(qrs_imcareye2,copy(mdObdept.sImcareye[0],2,1));
                  shcbx_pro(qrs_imcarbph1,copy(mdObdept.sImcarbph[0],1,1));
                  shcbx_pro(qrs_imcarbph2,copy(mdObdept.sImcarbph[0],2,1));

                  qrl_hr1.Caption  := mdObdept.sApgar1[0];
                  qrl_re1.Caption  := mdObdept.sApgar2[0];
                  qrl_mt1.Caption  := mdObdept.sApgar3[0];
                  qrl_rcn1.Caption := mdObdept.sApgar4[0];
                  qrl_col1.Caption := mdObdept.sApgar5[0];
                  qrl_hr2.Caption  := mdObdept.sApgar6[0];
                  qrl_re2.Caption  := mdObdept.sApgar7[0];
                  qrl_mt2.Caption  := mdObdept.sApgar8[0];
                  qrl_rcn2.Caption := mdObdept.sApgar9[0];
                  qrl_col2.Caption := mdObdept.sApgar10[0];
                  qrl_to1.Caption  := mdObdept.sApgarm[0];
                  qrl_to2.Caption  := mdObdept.sApgarm2[0];

                  //Discharge Examination
                  qrl_discdate.Caption := ConvertDDate(mdObdept.sDiscdate[0]);
                  shcbx_pro(qrs_discuper1,copy(mdObdept.sDiscuper[0],1,1));
                  shcbx_pro(qrs_discuper2,copy(mdObdept.sDiscuper[0],2,1));
                  qrl_discomp1.Caption := mdObdept.sDisccomp1[0];
                  qrl_dsbreast.Caption := mdObdept.sDsbreast[0];
                  qrl_dsvipple.Caption := mdObdept.sDsnipple[0];

                  shcbx_pro(qrs_nursing1,copy(mdObdept.sNursing[0],1,1));
                  shcbx_pro(qrs_nursing2,copy(mdObdept.sNursing[0],2,1));
                  shcbx_pro(qrs_utinvol1,copy(mdObdept.sUtinvol[0],1,1));
                  shcbx_pro(qrs_utinvol2,copy(mdObdept.sUtinvol[0],2,1));

                  qrl_utinvlab.Caption := mdObdept.sUtinvlab[0];

                  shcbx_pro(qrs_lochiana1,copy(mdObdept.sLochiana[0],1,1));
                  shcbx_pro(qrs_lochiana2,copy(mdObdept.sLochiana[0],2,1));

                  qrl_lochiaab.Caption := mdObdept.sLochiaab[0];
                  qrl_condperi.Caption := mdObdept.sCondperi[0];
                  qrl_condepis.Caption := mdObdept.sCondepis[0];
                  qrl_discomp2.Caption := mdObdept.sDisccomp2[0];
                  qrl_remark.Caption := mdObdept.sRemark[0];
                  shcbx_pro(qrs_adfmyn1,copy(mdObdept.sAdfmyn[0],1,1));
                  shcbx_pro(qrs_adfmyn2,copy(mdObdept.sAdfmyn[0],2,1));
                  qrl_signdr.Caption := mdObdept.sSigndr[0];
                end;

              // 기록지 스캔시 필수공통정보
              lb_patno.caption := sInPatno;
              lb_meddate.caption := sPk2;
              lb_dschdate.caption := ugd_RecodDt.Cells[2,ugd_RecodDt.Row];
              lb_patgubun.caption := ugd_RecodDt.Cells[5,ugd_RecodDt.Row];
              lb_meddept.caption := ugd_RecodDt.Cells[3,ugd_RecodDt.Row];
              lb_chadr.caption := ugd_RecodDt.Cells[4,ugd_RecodDt.Row];

            mdObdept.Free;

            MDN111F5_P01.QuickRep1.Print;
            MDN111F5_P01.QuickRep2.Print;
            
            {
            MDN111F5_P01.QuickRep1.Preview;
            MDN111F5_P01.QuickRep2.Preview;
            }
            MDN111F5_P01.Close;

            // G_USERID, G_USERIP
            UpdateRecord(sInPatno,sPk2,'empty','empty','empty' ,g_RecKind);
       end
    else if (g_RecKind='MHHDRECT') then // 투석기록지 & 간호 [28]
        begin
             //initialize input parameter
             sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
             sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 진료일자/입원일자 'YYYYMMDD'
             sPk3     := ugd_RecodDt.Cells[2,ugd_RecodDt.Row]; // 처방일자 'YYYYMMDD'
             sPk4     := ugd_RecodDt.Cells[3,ugd_RecodDt.Row]; // 처방순번

             //create class
              mhHdrect := HmhHdrect.Create;
              RowNo := mhHdrect.Select1(sInPatno, spk2, sPk3, sPk4);

              if RowNo = -1 then
              begin
                  mhHdrect.Free;
                  ShowErrMsg(stb_Message);  //에러 메시지 보이기
                  Exit;
              end;

              // 조회건수 없음
              if RowNo = 0 then
              begin
                  mhHdrect.Free;
                  stb_Message.Panels[0].Text := '조회된 투석기록지 내용이 없습니다.';
                  Exit;
              end;

               //투약조회 SelectDruglist;
                mdIjdayt := HmdIjdayt.Create;
                RowNo2 := mdIjdayt.ListInjectOrd('W', sInPatno, sPk3);   // md_ijday_l2.pc

                // SYSTEM ERROR
                if RowNo2 = -1 then
                begin
                   mdIjdayt.Free;
                   //ShowErrMsg(stb_Message);
                   stb_Message.Panels[0].Text := '투약 자료 조회중 오류 발생';
                   //윗 투약이 없는 경우에 처치가 안나오는 문제 해결
                   Exit;
                end;

                // 조회건수 없음
                if RowNo2 = 0 then
                begin
                   mdIjdayt.Free;
                   stb_Message.Panels[0].Text := '조회된 투약 자료가 없습니다.';
                end;

                if RowNo2 > 0 then
                begin
                  with mdIjdayt do
                  begin
                      ugd_AllList.RowCount := RowNo2+1;
                      for i:=0 to RowNo2-1 do
                      begin
                          ugd_AllList.Cells[0, i+1] := IntToStr(i+1);
                          ugd_AllList.Cells[1,i+1]  := Copy(sOrdDate[i],5,2) +'-'+
                                                        Copy(sOrdDate[i],7,2) +' '+
                                                        sOrdTime[i];
                          ugd_AllList.Cells[2,i+1]  := Trim(sOrdDesc1[i] + sOrdDesc2[i]);
                          ugd_AllList.Cells[3,i+1]  := sOrdDr[i];
                          ugd_AllList.Cells[4,i+1]  := sExecDate[i];
                          ugd_AllList.Cells[5,i+1]  := sExecId[i];
                      end; //for(i)
                  end; //with
                  mdIjdayt.Free;
                end;
                
                  RowNo3 := RowNo2+1;

               //IN처치조회 추가. 동일 리스트에 추가. KimDaeYong 2017-11-23 SelectTrtlist;
                mdIjdayt := HmdIjdayt.Create;
                itmp := mdIjdayt.ListInjectOrd('U', sInPatno, sPk3);   // md_ijday_l2.pc

                // SYSTEM ERROR
                if itmp = -1 then
                begin
                   mdIjdayt.Free;
                   stb_Message.Panels[0].Text := '처치 자료 조회중 오류 발생';
                   Exit;
                end;

                // 조회건수 없음
                if itmp = 0 then
                begin
                   mdIjdayt.Free;
                   stb_Message.Panels[0].Text := '조회된 처치 자료가 없습니다.';
                end;

                if itmp > 0 then
                begin
                  ugd_AllList.RowCount := RowNo3 + itmp;
                  with mdIjdayt do
                     begin
                        k := 0;
                        for j:=0 to itmp-1 do
                        begin
                            if sMeddept[j] = 'IN' then  //IN만 리스트업..
                            begin
                                ugd_alllist.Cells[0, RowNo3+k] := IntToStr(RowNo3+k);
                                ugd_alllist.Cells[1, RowNo3+k]  := Copy(sOrdDate[j],5,2) +'-'+
                                                                                  Copy(sOrdDate[j],7,2) +' '+
                                                                                  sOrdTime[j];
                                ugd_alllist.Cells[2,RowNo3+k]  := Trim(sOrdDesc1[j] + sOrdDesc2[j]);
                                ugd_alllist.Cells[3,RowNo3+k]  := sOrdDr[j];
                                ugd_alllist.Cells[4,RowNo3+k]  := sExecDate[j];
                                ugd_alllist.Cells[5,RowNo3+k]  := sExecId[j];
                                Inc(k);
                            end;
                        end; //for(j)
                    end; //with
                end;


              if MHE700F1_P01 = nil then
              Application.CreateForm(TMHE700F1_P01, MHE700F1_P01);

              with MHE700F1_P01 do
                begin
                   //환자정보
                  qrlb_Patno.Caption := ed_PatNo.Text;        //qr_1
                  qrlb_Patname.Caption := pn_PatName.caption;
                  qrlb_Meddate.Caption := ConvertSDate(ugd_RecodDt.Cells[1,ugd_RecodDt.Row]); // 진료일자/입원일자 'YYYY-MM-DD'

                  qrlb_Patno1.Caption := ed_PatNo.Text;        //qr_2
                  qrlb_Patname.Caption := pn_PatName.caption;
                  qrlb_Meddate1.Caption := ConvertSDate(ugd_RecodDt.Cells[1,ugd_RecodDt.Row]); // 진료일자/입원일자 'YYYY-MM-DD'                  

                   //상단(환자구분,진료입원일자)
                   if ugd_RecodDt.Cells[5,ugd_RecodDt.Row] = 'O' then
                   begin
                       qrlb_Patsect.Caption := '외래';
                       qrlb_patsect1.Caption := '외래';
                   end
                   else if ugd_RecodDt.Cells[5,ugd_RecodDt.Row] = 'I' then
                   begin
                       qrlb_Patsect.Caption := '입원';
                       qrlb_Patsect1.Caption := '입원';
                   end
                   else if ugd_RecodDt.Cells[5,ugd_RecodDt.Row] = 'E' then
                   begin
                       qrlb_Patsect.Caption := '응급';
                       qrlb_Patsect1.Caption := '응급';                       
                   end;

                  with mhHdrect do
                   begin
                    //투석기록
                    //Caution
                    if copy(sCaution[0],1,1) = 'Y' then qrlb_CauA.Caption := '■' else qrlb_CauA.Caption := '';
                    if copy(sCaution[0],2,1) = 'Y' then qrlb_CauB.Caption := '■' else qrlb_CauB.Caption := '';
                    if copy(sCaution[0],3,1) = 'Y' then qrlb_CauC.Caption := '■' else qrlb_CauC.Caption := '';
                    if copy(sCaution[0],4,1) = 'Y' then qrlb_CauD.Caption := '■' else qrlb_CauD.Caption := '';
                    if copy(sCaution[0],5,1) = 'Y' then qrlb_CauEtc.Caption := '■' else qrlb_CauEtc.Caption := '';
                    qrlb_CauEtc1.Caption := sCauEtc[0];

                    //기록정보
                    qrlb_Recdate.Caption := ConvertDDate(sRecdate[0]);
                    qrlb_Recname.Caption := sRecname[0];

                    //투석일시,내원경로
                    qrlb_Begindate.Caption := ConvertDDate(sBegindate[0]);
                    qrlb_Enddate.Caption := ConvertDDate(sEnddate[0]);

                    qrlb_Visitpath.Caption := sVisitpath[0];

                    //투석VS
                    qrlb_VsBegin.Caption := sVsBegin[0];
                    qrlb_VsMiddle.Caption := sVsMiddle[0];
                    qrlb_VsEnd.Caption := sVsend[0];

                    qrlb_VsBgPls.Caption := sVsBgPls [0];    //투석전 맥박
                    qrlb_VsBgResp.Caption := sVsBgResp[0];    //투석전 호흡
                    qrlb_VsBgBld.Caption := sVsBgBld [0];    //투석전 혈압

                    qrlb_VsMdPls.Caption := sVsMdPls [0];    //투석중 맥박
                    qrlb_VsMdResp.Caption := sVsMdResp[0];    //투석중 호흡
                    qrlb_VsMdBld.Caption := sVsMdBld [0];    //투석중 혈압
                    
                    qrlb_VsEdPls.Caption := sVsEdPls [0];    //투석후 맥박
                    qrlb_VsEdResp.Caption := sVsEdResp[0];    //투석후 호흡
                    qrlb_VsEdBld.Caption := sVsEdBld [0];    //투석후 혈압

                    //투석VS일시
                    qrlb_VsBegindate.Caption := ConvertDDate(sVsBegindate[0]);
                    qrlb_VsMiddledate.Caption := ConvertDDate(sVsMiddledate[0]);
                    qrlb_VsEnddate.Caption := ConvertDDate(sVsEnddate[0]);

                    //체중
                    qrlb_Weight.Caption := sWeight[0];
                    qrlb_BefWeight.Caption := sBefWeight[0];
                    qrlb_UF.Caption := sUf[0];
                    qrlb_AftWeight.Caption := sAftWeight[0];

                    //혈류속도,항응고제,초기유지용량
                    qrlb_BldSpeed.Caption := sBldSpeed[0];
                    qrlb_Anticaog.Caption := sAnticaog[0];
                    qrlb_Capa1.Caption := sCapa1[0];
                    qrlb_Capa2.Caption := sCapa2[0];

                    //정맥압,투석액,투석종류,투석기종류
                    qrlb_Veinpres.Caption := sVeinpres[0];
                    qrlb_Liquid.Caption := sLiquid[0];
                    qrlb_Kind.Caption := sKind[0];
                    qrlb_EquipKind.Caption := sEquipKind[0];

                    //혈액투석통로
                    if copy(sPass[0],1,1) = 'Y' then qrlb_Pass1.Caption := '■' else qrlb_Pass1.Caption := '';
                    if copy(sPass[0],2,1) = 'Y' then qrlb_Pass2.Caption := '■' else qrlb_Pass2.Caption := '';
                    if copy(sPass[0],3,1) = 'Y' then qrlb_Pass3.Caption := '■' else qrlb_Pass3.Caption := '';
                    if copy(sPass[0],4,1) = 'Y' then qrlb_Pass4.Caption := '■' else qrlb_Pass4.Caption := '';
                    if copy(sPass[0],5,1) = 'Y' then qrlb_Pass5.Caption := '■' else qrlb_Pass5.Caption := '';

                    //투석간호
                    if copy(sM30[0],1,1) = 'Y' then qrlb_30M_1.Caption := '■' else qrlb_30M_1.Caption := '';       //30M
                    if copy(sM30[0],2,1) = 'Y' then qrlb_30M_2.Caption := '■' else qrlb_30M_2.Caption := '';
                    if copy(sM30[0],3,1) = 'Y' then qrlb_30M_3.Caption := '■' else qrlb_30M_3.Caption := '';
                    if copy(sM30[0],4,1) = 'Y' then qrlb_30M_4.Caption := '■' else qrlb_30M_4.Caption := '';
                    if copy(sH1[0],1,1) = 'Y' then qrlb_1H_1.Caption := '■' else qrlb_1H_1.Caption := '';          //1H
                    if copy(sH1[0],2,1) = 'Y' then qrlb_1H_2.Caption := '■' else qrlb_1H_2.Caption := '';
                    if copy(sH1[0],3,1) = 'Y' then qrlb_1H_3.Caption := '■' else qrlb_1H_3.Caption := '';
                    if copy(sH1[0],4,1) = 'Y' then qrlb_1H_4.Caption := '■' else qrlb_1H_4.Caption := '';
                    if copy(sH1M30[0],1,1) = 'Y' then qrlb_1H30M_1.Caption := '■' else qrlb_1H30M_1.Caption := '';   //1H30M
                    if copy(sH1M30[0],2,1) = 'Y' then qrlb_1H30M_2.Caption := '■' else qrlb_1H30M_2.Caption := '';
                    if copy(sH1M30[0],3,1) = 'Y' then qrlb_1H30M_3.Caption := '■' else qrlb_1H30M_3.Caption := '';
                    if copy(sH1M30[0],4,1) = 'Y' then qrlb_1H30M_4.Caption := '■' else qrlb_1H30M_4.Caption := '';
                    if copy(sH2[0],1,1) = 'Y' then qrlb_2H_1.Caption := '■' else qrlb_2H_1.Caption := '';            //2H
                    if copy(sH2[0],2,1) = 'Y' then qrlb_2H_2.Caption := '■' else qrlb_2H_2.Caption := '';
                    if copy(sH2[0],3,1) = 'Y' then qrlb_2H_3.Caption := '■' else qrlb_2H_3.Caption := '';
                    if copy(sH2[0],4,1) = 'Y' then qrlb_2H_4.Caption := '■' else qrlb_2H_4.Caption := '';
                    if copy(sH2M30[0],1,1) = 'Y' then qrlb_2H30M_1.Caption := '■' else qrlb_2H30M_1.Caption := '';   //2H30M
                    if copy(sH2M30[0],2,1) = 'Y' then qrlb_2H30M_2.Caption := '■' else qrlb_2H30M_2.Caption := '';
                    if copy(sH2M30[0],3,1) = 'Y' then qrlb_2H30M_3.Caption := '■' else qrlb_2H30M_3.Caption := '';
                    if copy(sH2M30[0],4,1) = 'Y' then qrlb_2H30M_4.Caption := '■' else qrlb_2H30M_4.Caption := '';
                    if copy(sH3[0],1,1) = 'Y'  then qrlb_3H_1.Caption := '■' else qrlb_3H_1.Caption := '';            //3H
                    if copy(sH3[0],2,1) = 'Y'  then qrlb_3H_2.Caption := '■' else qrlb_3H_2.Caption := '';
                    if copy(sH3[0],3,1) = 'Y'  then qrlb_3H_3.Caption := '■' else qrlb_3H_3.Caption := '';
                    if copy(sH3[0],4,1) = 'Y'  then qrlb_3H_4.Caption := '■' else qrlb_3H_4.Caption := '';
                    if copy(sH3M30[0],1,1) = 'Y' then qrlb_3H30M_1.Caption := '■' else qrlb_3H30M_1.Caption := '';   //3H30M
                    if copy(sH3M30[0],2,1) = 'Y' then qrlb_3H30M_2.Caption := '■' else qrlb_3H30M_2.Caption := '';
                    if copy(sH3M30[0],3,1) = 'Y' then qrlb_3H30M_3.Caption := '■' else qrlb_3H30M_3.Caption := '';
                    if copy(sH3M30[0],4,1) = 'Y' then qrlb_3H30M_4.Caption := '■' else qrlb_3H30M_4.Caption := '';

                    //욕창예방간호
                    if copy(sOpin[0],1,1) = 'Y' then qrlb_Opin1.Caption := '■' else qrlb_Opin1.Caption := '';
                    if copy(sOpin[0],2,1) = 'Y' then qrlb_Opin2.Caption := '■' else qrlb_Opin2.Caption := '';
                    if copy(sOpin[0],3,1) = 'Y' then qrlb_Opin3.Caption := '■' else qrlb_Opin3.Caption := '';

                    //낙상예방간호
                    if copy(sFall[0],1,1) = 'Y' then qrlb_Fall1.Caption := '■' else qrlb_Fall1.Caption := '';
                    if copy(sFall[0],2,1) = 'Y' then qrlb_Fall2.Caption := '■' else qrlb_Fall2.Caption := '';
                    if copy(sFall[0],3,1) = 'Y' then qrlb_Fall3.Caption := '■' else qrlb_Fall3.Caption := '';
                    if copy(sFall[0],4,1) = 'Y' then qrlb_Fall4.Caption := '■' else qrlb_Fall4.Caption := '';
                    if copy(sFall[0],5,1) = 'Y' then qrlb_Fall5.Caption := '■' else qrlb_Fall5.Caption := '';

                    //인계사항,특이사항
                    qrmm_TransText.Lines.Text := sTranstext[0];
                    qrmm_Remark.Lines.Text := sRemark[0];
                   end;
                end;

                // SelectNrreclist; 투석기록지 간호기록 - 투석기록지가 작성이 되도 투석 간호기록지가 작성이 안 될 수 있음
                i2 := mdrecodt.ListRecordData(g_RecKind,sInPatno,sPk2,sPk3,sPk4);
            
                // SYSTEM ERROR
                if i2 = -1 then
                begin
                   mdrecodt.Free;
                   //ShowErrMsg(stb_Message);
                   stb_Message.Panels[0].Text := '투석간호기록 자료 조회중 오류 발생';
                end;

                // 조회건수 없음
                if i2 = 0 then
                begin
                   mdrecodt.Free;
                   stb_Message.Panels[0].Text := '조회된 투석간호기록 자료가 없습니다.';
                end;

                if i2 >0 then
                begin
                  with mdrecodt do
                  begin
                      ugd_List.RowCount := i2+1;
                      for i:=0 to i2-1 do
                      begin
                          ugd_List.Cells[0, i+1] := IntToStr(i+1);
                          ugd_List.Cells[1,i+1]  := copy(O_sResult2[i],3,8) +' '+ copy(O_sResult3[i],1,2) +':'+ copy(O_sResult3[i],3,2);
                          ugd_List.Cells[2,i+1]  := O_sResult4[i];
                          ugd_List.Cells[3,i+1]  := O_sResult5[i];
                          //hidden
                          ugd_List.Cells[11,i+1]  := O_sResult1[i];
                          ugd_List.Cells[12,i+1]  := O_sResult2[i];
                          ugd_List.Cells[13,i+1]  := O_sResult3[i];
                    end; //for(i
                  end;
                end;

              // 기록지 스캔시 필수공통정보
              lb_patno.caption := sInPatno;
              lb_meddate.caption := ugd_RecodDt.Cells[1,ugd_RecodDt.Row];
              lb_dschdate.caption := ugd_RecodDt.Cells[4,ugd_RecodDt.Row];
              lb_patgubun.caption := ugd_RecodDt.Cells[5,ugd_RecodDt.Row];
              lb_meddept.caption := ugd_RecodDt.Cells[7,ugd_RecodDt.Row];
              lb_chadr.caption := ugd_RecodDt.Cells[6,ugd_RecodDt.Row];

            {
            MHE700F1_P01.qr_1.Preview;
            if i2 > 0 then MHE700F1_P01.qr_2.Preview;
            }
            ShowMessage(inttostr(i2));
            MHE700F1_P01.qr_1.Print;
            if i2 > 0 then MHE700F1_P01.qr_2.Print;
            MHE700F1_P01.Close;
            mhHdrect.Free;

              // G_USERID, G_USERIP
              UpdateRecord(sInPatno,sPk2,sPk3,sPk4,'empty' ,g_RecKind);             
       end
    else if (g_RecKind='SRSUVEYT') then // 검사 전 평가기록지 [10]
        begin             
             //initialize input parameter srsuveyt.SrsuveytSel
             sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
             sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 처방일자
             sPk3     := ugd_RecodDt.Cells[2,ugd_RecodDt.Row]; // 처방코드
             sPk4     := ugd_RecodDt.Cells[3,ugd_RecodDt.Row]; // 처방순번
             sPk5     := ugd_RecodDt.Cells[4,ugd_RecodDt.Row]; // 환자구분
             sTemp1   := ugd_RecodDt.Cells[5,ugd_RecodDt.Row]; // 병동/병실
             
             // 검사 전 평가기록지 SRSUVEYT
             RowNo := mdrecodt.ListRecordData(g_RecKind,sInPatno,sPk2,sPk3,sPk4);
                 
              // SYSTEM ERROR
              if RowNo = -1 then
              begin
                 mdrecodt.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end;

              // 조회건수 없음
              if RowNo = 0 then
              begin
                 mdrecodt.Free;
                 stb_Message.Panels[0].Text := '조회할 자료가 없습니다.';
                 Exit;
              end;

              if SRA411FM_P01 = nil then
              Application.CreateForm(TSRA411FM_P01, SRA411FM_P01);

              with SRA411FM_P01 do
                begin
                  qrlb_Patnm.Caption    := pn_PatName.Caption ;
                  qrlb_Patno.Caption    := ed_PatNo.text;
                  qrlb_SexAge.Caption   := pn_SexAge.caption;
                  qrlb_Wardno.Caption   := sTemp1;
                  qrlb_Meddept.Caption  := mdrecodt.O_sResult6[0];
                  qrlb_Diagnm.Caption := mdrecodt.O_sResult3[0];
                  
                  {1.환자확인 (팔찌)}
                  if copy(mdrecodt.O_sResult8[0],1,1) = 'Y' then
                  begin
                     Q_RadioButton1.Brush.Color := clBlack
                  end else begin
                     Q_RadioButton2.Brush.Color := clBlack
                  end;

                  {2.병력 - 왼쪽파트}
                  if copy(mdrecodt.O_sResult8[0],1,1) = 'A' then
                     Q_RadioButton3.Brush.Color := clBlack
                  else
                     Q_RadioButton3.Brush.Color := clWhite;
           
                  if copy(mdrecodt.O_sResult8[0],2,1) = 'B' then
                     Q_RadioButton4.Brush.Color := clBlack
                  else
                     Q_RadioButton4.Brush.Color := clWhite;

                  if copy(mdrecodt.O_sResult8[0],2,1) = 'C' then
                     Q_RadioButton5.Brush.Color := clBlack
                  else
                     Q_RadioButton5.Brush.Color := clWhite;

                  if copy(mdrecodt.O_sResult8[0],3,1) = 'A' then
                     Q_RadioButton6.Brush.Color := clBlack
                  else
                     Q_RadioButton6.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],3,1) = 'B' then
                     Q_RadioButton7.Brush.Color := clBlack
                  else
                     Q_RadioButton7.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],3,1) = 'C' then
                     Q_RadioButton8.Brush.Color := clBlack
                  else
                     Q_RadioButton8.Brush.Color := clWhite;
           
                  if copy(mdrecodt.O_sResult8[0],4,1) = 'A' then
                     Q_RadioButton9.Brush.Color := clBlack
                  else
                     Q_RadioButton9.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],4,1) = 'B' then
                     Q_RadioButton10.Brush.Color := clBlack
                  else
                     Q_RadioButton10.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],4,1) = 'C' then
                     Q_RadioButton11.Brush.Color := clBlack
                  else
                     Q_RadioButton11.Brush.Color := clWhite;

                  if copy(mdrecodt.O_sResult8[0],5,1) = 'A' then
                     Q_RadioButton12.Brush.Color := clBlack
                  else
                     Q_RadioButton12.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],5,1) = 'B' then
                     Q_RadioButton13.Brush.Color := clBlack
                  else
                     Q_RadioButton13.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],5,1) = 'C' then
                     Q_RadioButton14.Brush.Color := clBlack
                  else
                     Q_RadioButton14.Brush.Color := clWhite;

                  if copy(mdrecodt.O_sResult8[0],6,1) = 'A' then
                     Q_RadioButton24.Brush.Color := clBlack
                  else
                     Q_RadioButton24.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],6,1) = 'B' then
                     Q_RadioButton25.Brush.Color := clBlack
                  else
                     Q_RadioButton25.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],6,1) = 'C' then
                     Q_RadioButton26.Brush.Color := clBlack
                  else
                     Q_RadioButton26.Brush.Color := clWhite;

                  if copy(mdrecodt.O_sResult8[0],7,1) = 'A' then
                     Q_RadioButton21.Brush.Color := clBlack
                  else
                     Q_RadioButton21.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],7,1) = 'B' then
                     Q_RadioButton22.Brush.Color := clBlack
                  else
                     Q_RadioButton22.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],7,1) = 'C' then
                     Q_RadioButton23.Brush.Color := clBlack
                  else
                     Q_RadioButton23.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],8,1) = 'A' then
                     Q_RadioButton18.Brush.Color := clBlack
                  else
                     Q_RadioButton18.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],8,1) = 'B' then
                     Q_RadioButton19.Brush.Color := clBlack
                  else
                     Q_RadioButton19.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],8,1) = 'C' then
                     Q_RadioButton20.Brush.Color := clBlack
                  else
                     Q_RadioButton20.Brush.Color := clWhite;

                  if copy(mdrecodt.O_sResult8[0],9,1) = 'A' then
                     Q_RadioButton15.Brush.Color := clBlack
                  else
                     Q_RadioButton15.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],9,1) = 'B' then
                     Q_RadioButton16.Brush.Color := clBlack
                  else
                     Q_RadioButton16.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],9,1) = 'C' then
                     Q_RadioButton17.Brush.Color := clBlack
                  else
                     Q_RadioButton17.Brush.Color := clWhite;

                  {2.병력 - 오른쪽파트}
                  if copy(mdrecodt.O_sResult8[0],10,1) = 'A' then
                     Q_RadioButton27.Brush.Color := clBlack
                  else
                     Q_RadioButton27.Brush.Color := clWhite;
                  //
                  if copy(mdrecodt.O_sResult8[0],10,1) = 'B' then
                     Q_RadioButton28.Brush.Color := clBlack
                  else
                     Q_RadioButton28.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],10,1) = 'C' then
                     Q_RadioButton29.Brush.Color := clBlack
                  else
                     Q_RadioButton29.Brush.Color := clWhite;

                  if copy(mdrecodt.O_sResult8[0],11,1) = 'A' then
                     Q_RadioButton30.Brush.Color := clBlack
                  else
                     Q_RadioButton30.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],11,1) = 'B' then
                     Q_RadioButton31.Brush.Color := clBlack
                  else
                     Q_RadioButton31.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],11,1) = 'C' then
                     Q_RadioButton32.Brush.Color := clBlack
                  else
                     Q_RadioButton32.Brush.Color := clWhite;
           
                  if copy(mdrecodt.O_sResult8[0],12,1) = 'A' then
                     Q_RadioButton33.Brush.Color := clBlack
                  else
                     Q_RadioButton33.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],12,1) = 'B' then
                     Q_RadioButton34.Brush.Color := clBlack
                  else
                     Q_RadioButton34.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],12,1) = 'C' then
                     Q_RadioButton35.Brush.Color := clBlack
                  else
                     Q_RadioButton35.Brush.Color := clWhite;
           
                  if copy(mdrecodt.O_sResult8[0],13,1) = 'A' then
                     Q_RadioButton36.Brush.Color := clBlack
                  else
                     Q_RadioButton36.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],13,1) = 'B' then
                     Q_RadioButton37.Brush.Color := clBlack
                  else
                     Q_RadioButton37.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],13,1) = 'C' then
                     Q_RadioButton38.Brush.Color := clBlack
                  else
                     Q_RadioButton38.Brush.Color := clWhite;
           
                  if copy(mdrecodt.O_sResult8[0],14,1) = 'A' then
                     Q_RadioButton39.Brush.Color := clBlack
                  else
                     Q_RadioButton39.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],14,1) = 'B' then
                     Q_RadioButton40.Brush.Color := clBlack
                  else
                     Q_RadioButton40.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],14,1) = 'C' then
                     Q_RadioButton41.Brush.Color := clBlack
                  else
                     Q_RadioButton41.Brush.Color := clWhite;
           
                  if copy(mdrecodt.O_sResult8[0],15,1) = 'A' then
                     Q_RadioButton42.Brush.Color := clBlack
                  else
                     Q_RadioButton42.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],15,1) = 'B' then
                     Q_RadioButton43.Brush.Color := clBlack
                  else
                     Q_RadioButton43.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],15,1) = 'C' then
                     Q_RadioButton44.Brush.Color := clBlack
                  else
                     Q_RadioButton44.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],16,1) = 'A' then
                     Q_RadioButton45.Brush.Color := clBlack
                  else
                     Q_RadioButton45.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],16,1) = 'B' then
                     Q_RadioButton46.Brush.Color := clBlack
                  else
                     Q_RadioButton46.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],16,1) = 'C' then
                     Q_RadioButton47.Brush.Color := clBlack
                  else
                     Q_RadioButton47.Brush.Color := clWhite;

                  {3.환자상태평가 - 약물부작용 및 알레르기}
                  if copy(mdrecodt.O_sResult8[0],17,1) = 'Y' then
                     Q_rbt_allergyY.Brush.Color := clBlack
                  else Q_rbt_allergyN.Brush.Color := clBlack;

                  {3.환자상태평가 - 약제복용력}
                  if copy(mdrecodt.O_sResult12[0],1,1) = 'Y' then
                     Q_cbx_medhisN.Brush.Color := clBlack
                  else Q_cbx_medhisN.Brush.Color := clWhite;
        
                  //아스피린계
                  if copy(mdrecodt.O_sResult12[0],2,1) = 'Y' then
                     Q_cbx_medhisaspi.Brush.Color := clBlack
                  else Q_cbx_medhisaspi.Brush.Color := clWhite;

                  if copy(mdrecodt.O_sResult12[0],3,1) = 'Y' then
                     Q_rbt_medaspiY.Brush.Color := clBlack
                  else Q_rbt_medaspiN.Brush.Color := clBlack;

                  if copy(mdrecodt.O_sResult12[0],4,3) <> '' then
                    Q_ed_medaspi.Caption  := inttostr(strtoint(copy(mdrecodt.O_sResult12[0],4,3)));    


                  //와파린계
                  if copy(mdrecodt.O_sResult12[0],7,1) = 'Y' then
                     Q_cbx_medhiswapa.Brush.Color := clBlack
                  else Q_cbx_medhiswapa.Brush.Color := clWhite;

                  if copy(mdrecodt.O_sResult12[0],8,1) = 'Y' then
                     Q_rbt_medwapaY.Brush.Color := clBlack
                  else Q_rbt_medwapaN.Brush.Color := clBlack;

                  if copy(mdrecodt.O_sResult12[0],9,3) <> '' then
                   Q_ed_medwapa.Caption := inttostr(strtoint(copy(mdrecodt.O_sResult12[0],9,3)));

                  //공란계 약물
                  if copy(mdrecodt.O_sResult12[0],12,1) = 'Y' then
                     Q_cbx_medhisetc.Brush.Color := clBlack
                  else Q_cbx_medhisetc.Brush.Color := clWhite;

                  if copy(mdrecodt.O_sResult12[0],13,1) = 'Y' then
                     Q_rbt_medetcY.Brush.Color := clBlack
                  else Q_rbt_medetcN.Brush.Color := clBlack;

                  if copy(mdrecodt.O_sResult12[0],14,3) <> '' then
                            Q_ed_medetc.Caption := inttostr(strtoint(copy(mdrecodt.O_sResult12[0],14,3)));
                     
                  Q_ed_Etc.Caption := mdrecodt.O_sResult9[0];
                  Q_ed_allergy.caption := mdrecodt.O_sResult10[0];
                  Q_ed_medhisetc.caption := mdrecodt.O_sResult11[0];
        
                  {4.동의서}
                  if copy(mdrecodt.O_sResult8[0],18,1) = 'Y' then
                     Q_RadioButton48.Brush.Color := clBlack
                  else Q_RadioButton49.Brush.Color := clBlack;

                  {5.금식여부}
                  if copy(mdrecodt.O_sResult8[0],19,1) = 'Y' then
                     Q_RadioButton50.Brush.Color := clBlack
                  else Q_RadioButton51.Brush.Color := clBlack;

                  {6.기도 및 구강상태}
                  if copy(mdrecodt.O_sResult8[0],20,1) = 'Y' then
                     Q_CheckBox1.Brush.Color := clBlack
                  else Q_CheckBox1.Brush.Color := clWhite;

                  if copy(mdrecodt.O_sResult8[0],21,1) = 'Y' then
                     Q_CheckBox2.Brush.Color := clBlack
                  else Q_CheckBox2.Brush.Color := clWhite;

                  if copy(mdrecodt.O_sResult8[0],22,1) = 'Y' then
                     Q_CheckBox3.Brush.Color := clBlack
                  else Q_CheckBox3.Brush.Color := clWhite;
        
                  if copy(mdrecodt.O_sResult8[0],23,1) = 'Y' then
                     Q_CheckBox4.Brush.Color := clBlack
                  else Q_CheckBox4.Brush.Color := clWhite;

                  {7.대장 정결상태}
                  if copy(mdrecodt.O_sResult8[0],24,1) = 'A' then
                     Q_RadioButton52.Brush.Color := clBlack
                  else Q_RadioButton52.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],24,1) = 'B' then
                     Q_RadioButton53.Brush.Color := clBlack
                  else Q_RadioButton53.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],24,1) = 'C' then
                     Q_RadioButton54.Brush.Color := clBlack
                  else Q_RadioButton54.Brush.Color := clWhite;
                  if copy(mdrecodt.O_sResult8[0],24,1) = 'D' then
                     Q_RadioButton55.Brush.Color := clBlack
                  else Q_RadioButton55.Brush.Color := clWhite;

                  {8. 소지품 확인}
                  if copy(mdrecodt.O_sResult8[0],25,1) = 'Y' then
                     Q_RadioButton56.Brush.Color := clBlack
                  else Q_RadioButton57.Brush.Color := clBlack;

                  {9. 보호자 동반}
                  if copy(mdrecodt.O_sResult8[0],26,1) = 'Y' then
                     Q_RadioButton58.Brush.Color := clBlack
                  else Q_RadioButton59.Brush.Color := clBlack;

                  {10. 검사 전 상태}
                  if mdrecodt.O_sResult16[0] <> '' then
                  begin
                  Q_mskEstmdate.caption := copy(mdrecodt.O_sResult16[0],0,4) + '-'+ copy(mdrecodt.O_sResult16[0],5,2) + '-'+ copy(mdrecodt.O_sResult16[0],7,2)
                                            + ' ' + copy(mdrecodt.O_sResult16[0],9,2) + ':' + copy(mdrecodt.O_sResult16[0],11,2);
                  end;
                  Q_ed_bph.caption := mdrecodt.O_sResult17[0];
                  Q_ed_bpl.Caption := mdrecodt.O_sResult18[0];
                  Q_ed_pr.Caption := mdrecodt.O_sResult19[0];
                  Q_ed_rr.Caption := mdrecodt.O_sResult20[0];

                  {11.기타}
                  Q_mm_Etc.Caption := mdrecodt.O_sResult13[0];

                  {작성일시 + 평가자 }
                  // Q_mskRecdate1.Caption :=  copy(mdrecodt.O_sResult15[0],0,4) + '-'+ copy(mdrecodt.O_sResult15[0],5,2) + '-'+ copy(mdrecodt.O_sResult15[0],7,2) + ' ' + copy(mdrecodt.O_sResult15[0],9,2) + ':' + copy(mdrecodt.O_sResult15[0],11,2);

                  Q_ed_recid1.Caption := mdrecodt.O_sResult21[0];
                  Q_ed_cdrecid1.Caption := mdrecodt.O_sResult14[0];
              end;

              // 기록지 스캔시 필수공통정보
              label3.Caption := '처방일자';
              lb_patno.caption := sInPatno;
              lb_meddate.caption := InvertSDate(sPk2);
              lb_dschdate.caption := '';
              lb_patgubun.caption := mdrecodt.O_sResult1[0];
              lb_meddept.caption := mdrecodt.O_sResult6[0];
              lb_chadr.caption := '';

              //SRA411FM_P01.qr_1.Preview;
              SRA411FM_P01.qr_1.Print;              
              SRA411FM_P01.Close;

              // G_USERID, G_USERIP
              UpdateRecord(sInPatno,sPk2,sPk3,sPk4,'empty' ,g_RecKind);                   
       end
    else if (g_RecKind='SRSEDMST') then // 진정치료기록지 [8]
        begin
             
             //initialize input parameter srsuveyt.SrsuveytSel
             sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
             sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 재원/입원일자
             sPk3     := ugd_RecodDt.Cells[2,ugd_RecodDt.Row]; // MSTSEQNO
             sPk4     := ugd_RecodDt.Cells[3,ugd_RecodDt.Row]; // SUBSEQNO
             sPk5     := ugd_RecodDt.Cells[4,ugd_RecodDt.Row]; // 환자구분
             sTemp1   := ugd_RecodDt.Cells[5,ugd_RecodDt.Row]; // 병동/병실
             sTemp2   := ugd_RecodDt.Cells[6,ugd_RecodDt.Row]; // 진료과
             sTemp3   := ugd_RecodDt.Cells[7,ugd_RecodDt.Row]; // 검사명                         
             
             // 진정치료 기록지(SRSEDMOT, SRSEDRCT)
             RowNo := mdrecodt.ListRecordData(g_RecKind,sInPatno,sPk2,sPk3,sPk4);

              // SRSEDMOT  SYSTEM ERROR
              if RowNo = -1 then
              begin
                 mdrecodt.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end;

              // SRSEDMOT 조회건수 없음
              if RowNo = 0 then
              begin
                 mdrecodt.Free;
                 stb_Message.Panels[0].Text := '조회할 자료가 없습니다.';
                 Exit;
              end;

              //showmessage(inttostr(RowNo));
              
              if SRA411FN_P01 = nil then
              Application.CreateForm(TSRA411FN_P01, SRA411FN_P01);
              
              // 진정중 평가(투약정보) SRSEDMET
              srsedmet := HsrSedmet.create;
              with srsedmet do
                begin
                    sPatno   := sInPatno;
                    sMeddate := sPk2;
                    lMstseq  := sPk3;
                    lSubseq  := sPk4;
                end;
              i2 := srsedmet.ListMedication;
              if (i2 < 0) then
                begin
                   srsedmet.Free;
                   Exit;
                end;
                
              ugd_List.RowCount := i2 + 1 ;
              SRA411FN_P01.Cnt_ugd  := ugd_list.RowCount;

              for i:=0 to i2 -1 do
                begin
                   case strtoint(srsedmet.sMedtype[i]) of
                     0 : ugd_list.Cells[0, i+1] := 'Midazolam';
                     1 : ugd_list.Cells[0, i+1] := 'Pofol';
                     2 : ugd_list.Cells[0, i+1] := 'Mida+Pofol';
                     3 : ugd_list.Cells[0, i+1] := 'Lorazepam';
                     4 : ugd_list.Cells[0, i+1] := 'Diazepam';
                     5 : ugd_list.Cells[0, i+1] := 'Ketamine';
                     6 : ugd_list.Cells[0, i+1] := 'Pocral';
                     7 : ugd_list.Cells[0, i+1] := 'Flumazenil';
                     8 : ugd_list.Cells[0, i+1] := 'Naloxone';
                     9 : ugd_list.Cells[0, i+1] := 'Freefol';
                    10 : ugd_list.Cells[0, i+1] := 'Mida+Freefol';
                    11 : ugd_list.Cells[0, i+1] := 'Etomidates';
                   end;
                   
                   case strtoint(srsedmet.sUsetype[i]) of
                     0 : ugd_list.Cells[1, i+1] := 'V';
                     1 : ugd_list.Cells[1, i+1] := 'IM';
                     2 : ugd_list.Cells[1, i+1] := 'PO';
                   end;
                   
                   ugd_list.Cells[2, i+1] := convertddate3(srsedmet.sInjtm[i]);
                   ugd_list.Cells[3, i+1] := srsedmet.sInjcapa[i];
                   ugd_list.Cells[4, i+1] := convertddate3(srsedmet.sInjtm2[i]);
                   ugd_list.Cells[5, i+1] := srsedmet.sInjcapa2[i];
                   ugd_list.Cells[6, i+1] := convertddate3(srsedmet.sInjtm3[i]);
                   ugd_list.Cells[7, i+1] := srsedmet.sInjcapa3[i];
                   ugd_list.Cells[8, i+1] := srsedmet.sTotalcapa[i];
                   ugd_list.Cells[9, i+1] := srsedmet.sInjid[i];
                   ugd_list.Cells[10 ,i+1] := srsedmet.sDelcapa[i] + '/' + srsedmet.sWithid[i];
                end;

                 // 진정 전 평가
                 srSedevt := HsrSedevt.Create;
                 with srSedevt do
                   begin
                      sPatno   := sInPatno;
                      sMeddate := sPk2;
                      lMstseq  := strtoint(sPk3);
                      lSubseq  := strtoint(sPk4);
                   end;

                i1 := srSedevt.SelectEvaluation;

                if (i1 < 0) then
                begin
                   srSedevt.Free;
                   Exit;
                end;

                with SRA411FN_P01 do
                  begin
                    qrlb_Patno.Caption   := ed_Patno.Text;
                    qrlb_Patnm.Caption   := pn_PatName.Caption ;
                    qrlb_Wardno.Caption  := sTemp1;
                    qrlb_SexAGE.Caption  := pn_SexAge.caption;
                    qrlb_Resno.Caption   := copy(pn_ResNo.Caption,1,8) + '******';
                    qrlb_Meddept.Caption := sTemp2;
                    qrlb_Diagnm.Caption  := sTemp3;
                  
                    if (i1 > 0) then
                      begin
                         with srSedevt do
                         begin
                            qrlb_Weight.Caption := sWeight[0] + 'kg';
                          
                            case StrToInt(sConsci[0]) of
                              1 : qrlb_comma.Caption := 'Alert';
                              2 : qrlb_comma.Caption := 'Drowsy';
                              3 : qrlb_comma.Caption := 'Confusion';
                              4 : qrlb_comma.Caption := 'Stupor';
                              5 : qrlb_comma.Caption := 'Semi-coma';
                              6 : qrlb_comma.Caption := 'Coma';
                            end;
                      
                            if sAllergy[0] = 'Y' then qrs_AleY.Brush.color := clBlack
                            else qrs_AleN.Brush.color := clBlack;
                          
                            qrlb_Ale.Caption := sAllergytxt[0];                          
                          
                            if sMedhisnone[0] = 'Y' then   Qcbx_medhisN.Brush.color := clBlack;

                            if copy(sMedhisaspi[0],1,2) = 'YY' then
                            begin
                               qrs_asprin.Brush.color := clBlack;
                               qrs_asprinY.Brush.color := clBlack;
                               QaspiText.Caption := copy(sMedhisaspi[0],3,Length(sMedhisaspi[0]));
                            end
                            else if copy(sMedhisaspi[0],1,2) = 'YN' then
                            begin
                               qrs_asprin.Brush.color := clBlack;
                               qrs_asprinN.Brush.color := clBlack;
                            end;

                            if copy(sMedhiswapa[0],1,2) = 'YY' then
                            begin
                               qrs_wapa.Brush.color := clBlack;
                               qrs_wapaY.Brush.color := clBlack;
                               QwapaText.Caption := copy(sMedhiswapa[0],3,Length(sMedhiswapa[0]));
                            end
                            else if copy(sMedhiswapa[0],1,2) = 'YN' then
                            begin
                               qrs_wapa.Brush.color := clBlack;
                               qrs_wapaN.Brush.color := clBlack;
                            end;

                            if copy(sMedhisetc[0],1,2) = 'YY' then
                            begin
                               qrs_etc.Brush.color := clBlack;
                               Qetcname.Caption := sMedhisetctxt[0];
                               qrs_etcY.Brush.color := clBlack;
                               QetcText.Caption := copy(sMedhisetc[0],3,Length(sMedhisetc[0]));
                            end
                            else if copy(sMedhisetc[0],1,2) = 'YN' then
                            begin
                               qrs_etc.Brush.color := clBlack;
                               Qetcname.Caption := sMedhisetctxt[0];
                               qrs_etcN.Brush.color := clBlack;
                            end;

                          
                            if sSickhis[0] = 'Y' then
                            begin
                               QsickhisY.Brush.color := clBlack;
                               if sSickhis1[0] = 'Y' then
                                  Qhis1.Brush.color := clBlack;
                               if sSickhis2[0] = 'Y' then
                                  Qhis2.Brush.color := clBlack;
                               if sSickhis3[0] = 'Y' then
                                  Qhis3.Brush.color := clBlack;
                               if sSickhis4[0] = 'Y' then
                                  Qhis4.Brush.color := clBlack;
                               if sSickhis5[0] = 'Y' then
                                  Qhis5.Brush.color := clBlack;
                               if sSickhis6[0] = 'Y' then
                                  Qhis6.Brush.color := clBlack;
                               if sSickhis7[0] = 'Y' then
                                  Qhis7.Brush.color := clBlack;
                               if sSickhis8[0] = 'Y' then
                                  Qhis8.Brush.color := clBlack;
                               if sSickhis9[0] = 'Y' then
                                  Qhis9.Brush.color := clBlack;
                               if copy(sSickhisetc[0],1,1) = 'Y' then
                               begin
                                  Qhisetc.Brush.color := clBlack;
                                  Qed_sickhis.Caption := copy(sSickhisetc[0],2,Length(sSickhisetc[0]));
                               end;
                            end
                            else
                            begin
                               QsickhisN.Brush.color := clBlack;
                            end;

                            if sAgreement[0] = 'Y' then
                               QagreeY.Brush.color := clBlack
                            else
                               QagreeN.Brush.color := clBlack;

                            if sWithguard[0] = 'Y' then
                               QwithguardY.Brush.color := clBlack
                            else
                               QwithguardN.Brush.color := clBlack;

                            if sFastoff[0] = 'Y' then
                               QfastoffY.Brush.color := clBlack
                            else
                               QfastoffN.Brush.color := clBlack; 

                            if sMouthnone[0] = 'Y' then
                               Qmouthnone.Brush.color := clBlack
                            else
                               Qmouthnone.Brush.color := clWhite;

                            if sMouth1[0] = 'Y' then
                               Qmouth1.Brush.color := clBlack
                            else
                               Qmouth1.Brush.color := clWhite;

                            if sMouth2[0] ='Y' then
                               Qmouth2.Brush.color := clBlack
                            else
                               Qmouth2.Brush.color := clwhite;

                            if copy(sMouthetc[0],1,1) = 'Y' then
                            begin
                               Qmouthetc.Brush.color := clBlack;
                               Qed_mouthetc.Caption := copy(sMouthetc[0],2,Length(sMouthetc[0]));
                            end;

                            case strtoint(sIntclean[0]) of
                              1: QIntclean1.Brush.Color := clBlack;
                              2: QIntclean2.Brush.Color := clBlack;
                              3: QIntclean3.Brush.Color := clBlack;
                              4: QIntclean4.Brush.Color := clBlack;
                            end;
                            
                            Qstmdt.Caption := sEstmdate[0];

                            Qed_bph.Caption := sPostbph[0];

                            Qed_bpl.Caption := sPostbpl[0];

                            Qed_pr.Caption := sPostpr[0];

                            Qed_rr.Caption := sPostrr[0];

                            Qed_sao2.Caption := sPostsao2[0];   // 2015.10.15 간호부 요청....

                            QmskRecdate1.Caption := ConvertDDate(sEstmdate[0]);
                            
                            mdInsamt := HmdInsamt.Create;
                            RowNo3   := mdInsamt.ListUserInfo('Y','1',sRecid[0],'EB1'); // 간호사 코드주세요!  // MD_INSAM_L2
                            
                            // SYSTEM ERROR
                            if RowNo3 = -1 then
                            begin
                               mdInsamt.Free;
                               ShowErrMsg(stb_Message);
                               Exit;
                            end;

                            // 조회건수 없음
                            if RowNo3 = 0 then
                            begin
                               mdInsamt.Free;
                               Exit;
                            end;

                            Qed_cdrecid1.Caption := mdInsamt.sEmpNm[0]; // srsedevt.sRecid[0];
                            Qed_recid1.Caption := sRecid[0];
                            mdInsamt.Free;
                        end;
                     end;
                end;
              
              if SRA411FN_P02 = nil then
              Application.CreateForm(TSRA411FN_P02, SRA411FN_P02);

                ugd_AllList.RowCount := RowNo + 1 ;
                SRA411FN_P02.Cnt_ugd  := ugd_AllList.RowCount; // 진정중/후 환자상태기록
                               
              for i:=0 to RowNo -1 do
                begin
                   ugd_AllList.Cells[0, i+1] := ConvertDDate3(trim(mdrecodt.O_sResult1[i]));  // 시간
                   ugd_AllList.Cells[1, i+1] := Trim(mdrecodt.O_sResult2[i]);  // 상태
                   ugd_AllList.Cells[2, i+1] := Trim(mdrecodt.O_sResult3[i]);  // 점수
                   ugd_AllList.Cells[3, i+1] := Trim(mdrecodt.O_sResult4[i]);  // PR
                   ugd_AllList.Cells[4, i+1] := Trim(mdrecodt.O_sResult5[i]);  // RR
                   ugd_AllList.Cells[5, i+1] := Trim(mdrecodt.O_sResult6[i]);  // SAO2
                   ugd_AllList.Cells[6, i+1] := Trim(mdrecodt.O_sResult7[i]);  // 필요시 BP
                   ugd_AllList.Cells[7, i+1] := Trim(mdrecodt.O_sResult9[i]);  // 특이사항
                   ugd_AllList.Cells[8, i+1] := Trim(mdrecodt.O_sResult8[i]);  // 나상예방
                   ugd_AllList.Cells[9, i+1] := Trim(mdrecodt.O_sResult10[i]);  // 평가자명
                   ugd_AllList.Cells[10 ,i+1] := Trim(mdrecodt.O_sResult11[i]);  // 비고(진정중/후)
                end;

                 // 진정 후 평가(회복상태/퇴실시교육-외래환자)
                 srSedrct := HsrSedrct.Create;

                 with srSedrct do
                 begin
                    sPatno   := sInPatno;
                    sMeddate := sPk2;
                    lMstseq  := sPk3;
                    lSubseq  := sPk4;
                 end;

                    RowNo2 := srSedrct.SelectRecovery;

                    if (RowNo2 < 0) then
                    begin
                       ShowErrMsg(stb_Message);
                       srSedrct.Free;
                       Exit;
                    end;

              //showmessage(inttostr(RowNo2));

              if (srSedrct.sRecid[0] <> '') then
              begin
                mdInsamt := HmdInsamt.Create;
                RowNo3   := mdInsamt.ListUserInfo('Y','1',srSedrct.sRecid[0],'EB1'); // 간호사 코드주세요!  // MD_INSAM_L2

                // SYSTEM ERROR
                if RowNo3 = -1 then
                begin
                   mdInsamt.Free;
                   ShowErrMsg(stb_Message);
                   Exit;
                end;

                // 조회건수 없음
                if RowNo3 = 0 then
                begin
                   mdInsamt.Free;
                   Exit;
                end;
              end;

              with SRA411FN_P02 do
                begin
                  qrlb_Patno.Caption   := ed_Patno.Text;
                  qrlb_Patnm.Caption   := pn_PatName.Caption ;
                  qrlb_Wardno.Caption  := sTemp1;
                  qrlb_SexAGE.Caption  := pn_SexAge.caption;
                  qrlb_Resno.Caption   := copy(pn_ResNo.Caption,1,8) + '******';
                  qrlb_Meddept.Caption := sTemp2;
                  qrlb_Diagnm.Caption  := sTemp3;

                   case StrToInt(srSedrct.sState1[0]) of
                      2 : Qrbt_state11.Brush.color := clBlack;
                      1 : Qrbt_state12.Brush.color := clBlack;
                      0 : Qrbt_state13.Brush.color := clBlack;
                   end;

                   case StrToInt(srSedrct.sState2[0]) of
                      2 : Qrbt_state21.Brush.color := clBlack;
                      1 : Qrbt_state22.Brush.color := clBlack;
                      0 : Qrbt_state23.Brush.color := clBlack;
                   end;

                   case StrToInt(srSedrct.sState3[0]) of
                      2 : Qrbt_state31.Brush.color := clBlack;
                      1 : Qrbt_state32.Brush.color := clBlack;
                      0 : Qrbt_state33.Brush.color := clBlack;
                   end;

                   case StrToInt(srSedrct.sState4[0]) of
                      2 : Qrbt_state41.Brush.color := clBlack;
                      1 : Qrbt_state42.Brush.color := clBlack;
                      0 : Qrbt_state43.Brush.color := clBlack;
                   end;

                   case StrToInt(srSedrct.sState5[0]) of
                      2 : Qrbt_state51.Brush.color := clBlack;
                      1 : Qrbt_state52.Brush.color := clBlack;
                      0 : Qrbt_state53.Brush.color := clBlack;
                   end;

                  Qlb_total.Caption := srSedrct.sTotal[0];
                   
                  if srSedrct.sOutedu1[0] = 'Y'  then
                    Qcb_Allcheck.Brush.color := clBlack;

                  if copy(srSedrct.sOuteduetc[0],1,1) = 'Y' then
                  begin
                    Qcbx_eduetc.Brush.color := clBlack;
                    Qed_etc.Caption := '(' + copy(srSedrct.sOuteduetc[0],2,Length(srSedrct.sOuteduetc[0])) + ')';
                  end;

                 // 퇴실교육을 특이사항 저장용으로 변경
                   if copy(srSedrct.sOutedu5[0],1,1) = 'Y' then
                   begin
                      if Copy(srSedrct.sOutedu5[0],2,1) = '' then
                         stemp4 := '0'
                      else
                         stemp4 := Copy(srSedrct.sOutedu5[0],2,1);
                 
                      Qcbx_edu5.Brush.color := clBlack;

                      case StrToInt(stemp4) of
                        0 : Qcombx_multi.Caption := '대장내시경+위내시경';
                        1 : Qcombx_multi.Caption := '기타';                
                      end;
                      
                      Qed_multi.Caption := copy(srSedrct.sOuteduetc[0],3,Length(srSedrct.sOuteduetc[0]));
                   end
                   else
                   begin
                      Qcbx_edu5.Brush.color := clWhite;
                   end;
                   
                  if (srSedrct.sRecid[0] <> '') then
                    begin
                      QmskRecdate4.Caption := ConvertDDate2(srSedrct.sRecdate[0]);
                      Qed_recid4.Caption := mdInsamt.sEmpNm[0] // srSedrct.sRecid[0];
                    end
                    else
                    begin
                      QmskRecdate4.Caption := '';
                      Qed_recid4.Caption := '';
                    end;

              end;

              // 기록지 스캔시 필수공통정보
              lb_patno.caption := sInPatno;
              lb_meddate.caption := sPk2;
              lb_dschdate.caption := '';
              lb_patgubun.caption := ugd_RecodDt.Cells[4,ugd_RecodDt.Row];
              lb_meddept.caption := ugd_RecodDt.Cells[6,ugd_RecodDt.Row];
              lb_chadr.caption := '';

              mdInsamt.free;
              srSedrct.Free;
              srSedevt.free;
              srsedmet.Free;

              SRA411FN_P01.qr_1.Print;
              SRA411FN_P01.CLOSE;

              SRA411FN_P02.qr_1.Print;
              SRA411FN_P02.Close;

              // G_USERID, G_USERIP
              UpdateRecord(sInPatno,sPk2,sPk3,'empty','empty',g_RecKind);                
       end
    else if (g_RecKind='MDNRACTT') then // 투약 처치 기록 [22]
        begin             
             //initialize input parameter srsuveyt.SrsuveytSel
             sInPatno := ugd_RecodDt.Cells[0,ugd_RecodDt.Row]; // 환자번호
             sPk2     := ugd_RecodDt.Cells[1,ugd_RecodDt.Row]; // 처방일자
             sPk3     := ugd_RecodDt.Cells[2,ugd_RecodDt.Row]; // 진료과
             sPk4     := ugd_RecodDt.Cells[3,ugd_RecodDt.Row]; // 환자구분
             sPk5     := ugd_RecodDt.Cells[4,ugd_RecodDt.Row]; // 병동병실
             schadr   := ugd_RecodDt.Cells[5,ugd_RecodDt.Row]; // 주치의
             
              //Create Class
              mdOrderv := HmdOrderv.Create;

              //공통Class Function Call (처방일에 대한 처방내역List SELECT)  md_order_l8.pc //조회구분('3'=특정처방일에 대한 처방내역)
              RowNo := mdOrderv.DayOrderSelect('3',sInPatno,sPk2,sPk3,'EB1');

              // SYSTEM ERROR
              if RowNo = -1 then
              begin
                 mdOrderv.Free;
                 ShowErrMsg(stb_Message);
                 Exit;
              end;

              // 조회건수 없음
              if RowNo = 0 then
              begin
                 mdOrderv.Free;
                 stb_Message.Panels[0].Text := '조회할 자료가 없습니다.';
                 Exit;
              end;
              
               ugd_Temp.RowCount := RowNo +1;
               //Select된 Data를 Grid에 Display
               sTemp1 := '';
               sTemp2 := '';
               Currow := 1;  // ugd_temp.fixedrow = 1이여라..

               for i := 0 to RowNo-1 do
               begin
                  if ((mdOrderv.sOrdGrp[i] = 'D1') or  // 처치/재료 (간호사가 입력한 것은 제외)
                      (mdOrderv.sOrdGrp[i] = 'D2')) and
                      (mdOrderv.sUseSite[i] <> '') then
                       continue;

                  if (mdOrderv.sOrdGrpNm[i] <> sTemp1 ) or
                     (mdOrderv.sOrdType[i]  <> sTemp2 ) or
                     (mdOrderv.sOrdCd[i] = 'SPECIAL') then
                     ugd_Temp.Cells[0,Currow] := mdOrderv.sOrdGrpNm[i]; //구분(처방분류명)

                     if Trim(mdOrderv.sOrdDesc[i]) = '' then
                     begin
                        ugd_Temp.Cells[1,Currow] := Trim(format('%-44s',[Trim(mdOrderv.sOrdName[i])])+' '
                                                        + format('%-100s', [Trim(mdOrderv.sOrdDesc2[i])]));
                     end
                     else
                     begin
                        ugd_Temp.Cells[1,Currow] := Trim(format('%-44s',[Trim(mdOrderv.sOrdDesc[i])])+' '
                                                        + format('%-100s', [Trim(mdOrderv.sOrdDesc2[i])]));
                     end;

                  if (Copy(mdOrderv.sOrdGrp[i],1,1) = 'B') and  // 약처방일때 수행여부
                     (mdOrderv.sPrnyn[i] <> 'Y') then
                  begin
                     if mdOrderv.sNurStat[i] = 'A' then
                        ugd_Temp.Cells[2,Currow] := '실시'    //실행결과
                     else
                        ugd_Temp.Cells[2,Currow] := '';
                  end
                  else
                     ugd_Temp.Cells[2,Currow] := mdOrderv.sStatName[i];    //실행결과

                  //InVisible Cell(s)..
                  ugd_Temp.Cells[3,Currow]  := mdOrderv.sOrdDate[i];     // 처방일
                  ugd_Temp.Cells[4,Currow]  := mdOrderv.iOrdSeqno[i];    // 처방순번
                  ugd_Temp.Cells[5,Currow]  := mdOrderv.sOrdName[i];     // 처방명
                  ugd_Temp.Cells[6,Currow]  := mdOrderv.sOrdGrp[i];      // 처방분류(B1:경구,B2:주사,B3:외용)
                  ugd_Temp.Cells[7,Currow]  := mdOrderv.sPrnYn[i];       // PRN 여부
                  ugd_Temp.Cells[8,Currow]  := mdOrderv.sOrdGrpNm[i];    // 처방분류명
                  ugd_Temp.Cells[9,Currow]  := mdOrderv.sOrdDrNm[i];     // 처방의
                  ugd_Temp.Cells[10,Currow] := mdOrderv.sOrdTime2[i];    // 처방입력시간

                  if mdOrderv.sRcpStat[i] = 'Y' then                   // 수납여부
                     ugd_Temp.Cells[11,Currow] := ' Y'
                  else if mdOrderv.sRcpStat[i] = 'R' then
                     ugd_Temp.Cells[11,Currow] := '환불'
                  else
                     ugd_Temp.Cells[11,Currow] := '';

                  ugd_Temp.Cells[12,Currow] := mdOrderv.sPatSect[i];     // 환자유형(I:입원,O:외래,E:응급)
                  ugd_Temp.Cells[13,Currow] := mdOrderv.sDiscYn[i];      // DC 여부(X:취소,Y:DC)
                  ugd_Temp.Cells[14,Currow] := mdOrderv.sOrddesc1[i];
                  ugd_Temp.Cells[15,Currow] := mdOrderv.sDcDate[i];      // DC처방일자

                  sTemp1 := mdOrderv.sOrdGrpNm[i];
                  sTemp2 := mdOrderv.sOrdType[i];

                  Inc(Currow);
               end;

               if Currow < 2 then
                  ugd_Temp.RowCount := 2
               else
                  ugd_Temp.RowCount := Currow;

              ///////////////////////////////////////////////////////////////////////////////

                 ugd_PrintList.RowCount := 1;
                 k := 0;

                 for j := 1 to ugd_Temp.Rowcount - 1 do
                 begin

                    ugd_PrintList.Cells[0, k] := ugd_Temp.Cells[0, j];
                    ugd_PrintList.Cells[1, k] := ugd_Temp.Cells[1,j];
                    ugd_PrintList.Cells[2, k] := ugd_Temp.Cells[6,j];
                    ugd_PrintList.Cells[3, k] := sPk2; // 처방일
                    ugd_PrintList.Cells[4, k] := ugd_Temp.Cells[4,j];
                    ugd_PrintList.Cells[5, k] := ugd_Temp.Cells[2,j];

                    // 처방종류(≪정규≫, ≪추가≫)의 처방의, 처방시간 안나타나게 함.
                    if Copy(Trim(ugd_Temp.Cells[0,j]),1,2) = '≪' then
                    begin
                       ugd_PrintList.Cells[8, k] := '';
                       ugd_PrintList.Cells[9, k] := '';
                    end
                    else
                    begin
                       ugd_PrintList.Cells[8, k] := ugd_Temp.Cells[9,j];
                       ugd_PrintList.Cells[9, k] := ugd_Temp.Cells[10,j];
                    end;

                    ugd_PrintList.Cells[10, k] := Copy(ugd_Temp.cells[15,j],1,2) + ' '
                                                    + Copy(ugd_Temp.cells[15,j],3,1) + ' '
                                                    + Copy(ugd_Temp.cells[15,j],4,5);

                    ugd_PrintList.Cells[7, k] := 'Y';
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

               mdOrderv.free;

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

                          // md_order_ld
                          //공통Class Function Call (특정처방일에 대한 처방내역List SELECT) //조회구분( 참조테이블 MDNRACTT '6'=병동 / 응급간호ACTTING)
                          RowNo := mdOrderv.PreOrderSelect2('6',sInPatno,sPk2,ugd_PrintList.Cells[4,i]); // sPk2 처방일자, ugd_PrintList.Cells[4,i] 처방순번 

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

              if MDN110F1_P02 = nil then
              Application.CreateForm(TMDN110F1_P02, MDN110F1_P02);
              MDN110F1_P02.ugd_PrintList :=  ugd_PrintList;
              
              with MDN110F1_P02 do
                begin
                  qrlb_patname.Caption  := pn_PatName.Caption ;
                  qrlb_Patno.Caption    := ed_PatNo.text;
                  qrlb_Sa.Caption       := pn_SexAge.caption;
                  qrlb_roomno.Caption   := sPk5;
                  qrlb_Resno.Caption    := copy(pn_ResNo.Caption,1,8) + '******';
                  qrlb_deptname.Caption := sPk3;
                  qrlb_chadr.caption    := schadr;
                  if sPK4 <> 'I' then QRLabel2.caption := '재원일';
                  qrlb_AdmDate.Caption  := ugd_History.Cells[1,ugd_History.Row];
                  qrlb_orddate.caption  := convertsdate(sPK2);
                end;
                
              // 기록지 스캔시 필수공통정보
              lb_patno.caption := sInPatno;
              lb_meddate.caption := ugd_RecodKnd.Cells[2,ugd_RecodKnd.Row];
              lb_dschdate.caption := ugd_RecodDt.Cells[7,ugd_RecodDt.Row];
              lb_patgubun.caption := ugd_RecodDt.Cells[3,ugd_RecodDt.Row];
              lb_meddept.caption := ugd_RecodDt.Cells[2,ugd_RecodDt.Row];
              lb_chadr.caption := ugd_RecodDt.Cells[5,ugd_RecodDt.Row];

              //MDN110F1_P02.qr_Search.Preview;
              MDN110F1_P02.qr_Search.Print;
              MDN110F1_P02.Close;

              // G_USERID, G_USERIP
              UpdateRecord(sInPatno,sPk2,'empty','empty','empty' ,g_RecKind);
       end;             
      mdrecodt.Free;
   finally
      Screen.Cursor := crDefault;
   end;
end;

procedure TMDG300F1.shcbx_pro(shape: TQRShape; Check : String);
begin
   if (Check = 'Y') then
      shape.brush.color := clblack
   else
      shape.brush.color := clwhite;
end;

procedure TMDG300F1.FormCreate(Sender: TObject);
begin
   if not(TxInit('C:\UniHIS\Env\His.env','G_SVRID')) then
   begin
      txTerm;
      Close;
   end;
end;


function TMDG300F1.strtoint_nvl(Check: String): Integer;
begin
   if (Check = ' ') or (Trim(Check) = '') then
      Result := -1
   else
      Result := StrToInt(Check);
end;

procedure TMDG300F1.combx_RoomChange(Sender: TObject);
var
   rc, i1 : integer;
begin
   combx_RoomCd.ItemIndex := combx_Room.ItemIndex;
   if combx_RoomCd.Text = '' then
      exit;
   combx_roomno.Clear;
   // 리턴값 초기화
   Screen.Cursor  :=  crHourglass;
   try
      // 병동별 병실을 조회한다..
      adrmcdct := Hadrmcdct.Create;
      rc := adrmcdct.list(combx_RoomCd.Text);      // md_wdrmc_l1

      if (rc = -1 ) then
      begin
         adrmcdct.Free;
         ShowErrMsg(stb_Message);
         Exit;
      end;
      if (rc = 0)then
      begin
         adrmcdct.Free;
         stb_Message.Panels[0].Text := '조회된 자료가 없습니다.';
         Exit;
      end;
      combx_roomno.Clear;
      combx_roomno.Items.Add('');
      for i1 := 0 to rc-1 do
      begin
         combx_roomno.Items.Add(adrmcdct.v_room[i1]);
      end;
      adrmcdct.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;


procedure TMDG300F1.UpdateRecord(sPK1, sPK2, sPK3, sPK4, sPK5, sRecgubuncd : string);
var
  ii, iCnt, sql_rslt : integer;
begin
  ii := 0;
  iCnt := 1;
       mdrecodt.free;
       Screen.Cursor := crHourglass;
       try
         mdrecodt := Hmdrecodt.Create;


         mdrecodt.sPk1        := VarArrayCreate([0, iCnt-1],varVariant);
         mdrecodt.sPk2        := VarArrayCreate([0, iCnt-1],varVariant);
         mdrecodt.sPk3        := VarArrayCreate([0, iCnt-1],varVariant);
         mdrecodt.sPk4        := VarArrayCreate([0, iCnt-1],varVariant);
         mdrecodt.sPk5        := VarArrayCreate([0, iCnt-1],varVariant);
         mdrecodt.sRecgubuncd := VarArrayCreate([0, iCnt-1],varVariant);
         

         for ii:=0 to iCnt-1 do
         begin
            mdrecodt.sPk1[ii]           := sPK1;
            mdrecodt.sPk2[ii]           := sPK2;
            mdrecodt.sPk3[ii]           := sPK3;
            mdrecodt.sPk4[ii]           := sPK4;
            mdrecodt.sPk5[ii]           := sPK5;
            mdrecodt.sRecgubuncd[ii]    := sRecgubuncd;
         end;

         sql_rslt := mdrecodt.UpdateRecLCYN(iCnt);
         // showMessage('sql_result : ' + inttostr(sql_rslt));

         if sql_rslt <> 1 then
         begin
            ShowErrMsg(stb_Message);
            exit;
         end;

         // mdrecodt.Free; 주석처리한 이유 !! MDG300F1 bbt_print 완료 후 free하기 때문에!! 
       finally
         screen.Cursor  :=  crDefault;
       end;

end;

end.

