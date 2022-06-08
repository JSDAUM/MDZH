unit CCM320U1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, AdvGrid, StdCtrls, ExtCtrls, Buttons, ComCtrls, Excels, ImgList,Variants,
  BaseGrid;

type
  TCCM220F1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    dtp_rsvtime: TDateTimePicker;
    bbt_select: TBitBtn;
    rg_1: TRadioGroup;
    Panel2: TPanel;
    bbt_close: TBitBtn;
    stb_1: TStatusBar;
    sgd_1: TAdvStringGrid;
    rg_2: TRadioGroup;
    bbt_deliv: TBitBtn;
    ImageList1: TImageList;
    ImageList2: TImageList;
    Label4: TLabel;
    red_detail: TRichEdit;
    bbt_execl: TBitBtn;
    AdvExcel1: TAdvExcel;
    bbt_print: TBitBtn;
    bbt_delete: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bbt_selectClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbt_closeClick(Sender: TObject);
    procedure sgd_1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgd_1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure sgd_1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bbt_delivClick(Sender: TObject);
    procedure rg_1Click(Sender: TObject);
    procedure dtp_rsvtimeCloseUp(Sender: TObject);
    procedure bbt_execlClick(Sender: TObject);
    procedure bbt_printClick(Sender: TObject);
    procedure bbt_deleteClick(Sender: TObject);
  private
    i_col,i_srow,i_erow : integer;
    g_telno, g_tm ,g_mess : string;
    { Private declarations }
  public
    g_userid,g_userip : string;
    { Public declarations }
  end;

var
  CCM220F1: TCCM220F1;

implementation

uses CComFunc, CQCLASS1,TuxCom, CCM220U2;


{$R *.DFM}

procedure TCCM220F1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := Cafree;
end;

procedure TCCM220F1.FormDestroy(Sender: TObject);
begin
   CCM220F1 := NIL;
end;

procedure TCCM220F1.bbt_selectClick(Sender: TObject);
var
   rc,i1,i2 : integer;
   sSugubun  : string;
begin
   for i1 := 1 to sgd_1.RowCount - 1 do
      for i2 := 0 to 20 do
         sgd_1.Cells[i2,i1] := '';
   if rg_1.ItemIndex = -1 then
   begin
      ShowMessage('본지사구분을 입력하세요!!!');
      exit;
   end;
   if rg_2.ItemIndex = -1 then
   begin
      ShowMessage('발송구분을 입력하세요!!!');
      exit;
   end;
   sgd_1.RowCount := 2;
   if rg_1.ItemIndex = 2 then
      sSugubun := ''
   else
      sSugubun := inttostr(rg_1.ItemIndex + 1);
   try
      ccsmssrt := Hccsmssrt.Create;  // cq_smssu_l1
      rc := ccsmssrt.sms_sufailselect(inttostr(rg_2.ItemIndex + 1), // 구분자 1 : 미전송/2:전송
                                      formatdatetime('yyyy-mm-dd',dtp_rsvtime.date),    // 예약일자
                                      sSugubun); // 본원구분 1: 본원,2:수원
      if rc < 0 then
      begin
         ShowErrMsg(stb_1);
         ccsmssrt.free;
         exit;
      end;
      if rc = 0 then
      begin
         ccsmssrt.free;
         exit;
      end;
      sgd_1.RowCount := rc + 1;
      for i1 := 0 to rc - 1 do
      begin
         sgd_1.Cells[1,i1+1] := AlignedText(Font.Handle,inttostr(i1 + 1),sgd_1.colWidths[0]-5,taRightJustify);
         sgd_1.Cells[2,i1+1] := ccsmssrt.v_Patno[i1];
         sgd_1.Cells[3,i1+1] := ccsmssrt.v_patname[i1];
         sgd_1.Cells[4,i1+1] := ccsmssrt.v_Resno[i1];
         sgd_1.Cells[5,i1+1] := ccsmssrt.v_sex[i1] +'/' + trim(ccsmssrt.v_age[i1]);
         sgd_1.Cells[6,i1+1] := ccsmssrt.v_Telno2[i1];
         sgd_1.Cells[7,i1+1] := ccsmssrt.v_result_desc[i1];
         sgd_1.Cells[8,i1+1] := ccsmssrt.v_Pkgcode[i1];
         sgd_1.Cells[9,i1+1] := ccsmssrt.v_custname[i1];
         sgd_1.Cells[10,i1+1] := 'N';
         sgd_1.Cells[11,i1+1] := ccsmssrt.v_Deliver_time[i1];
         sgd_1.Cells[12,i1+1] := ccsmssrt.v_Trans_flag[i1];
         sgd_1.Cells[13,i1+1] := ccsmssrt.v_Std_date[i1];
         sgd_1.Cells[14,i1+1] := ccsmssrt.v_Tran_code[i1];
         if (copy(ccsmssrt.v_Telno2[i1],1,3) = '011') or
            (copy(ccsmssrt.v_Telno2[i1],1,3) = '016') or
            (copy(ccsmssrt.v_Telno2[i1],1,3) = '017') or
            (copy(ccsmssrt.v_Telno2[i1],1,3) = '018') or
            (copy(ccsmssrt.v_Telno2[i1],1,3) = '019') then
         begin
            sgd_1.Cells[15,i1+1] := ccsmssrt.v_Telno2[i1];
         end;

      end;
   finally
      Screen.Cursor := crDefault;
   end;
end;

procedure TCCM220F1.FormCreate(Sender: TObject);
begin
   sgd_1.Cells[1,0] := AlignedText(Font.Handle,'SEQ',sgd_1.colWidths[1],taCenter);
   sgd_1.Cells[2,0] := AlignedText(Font.Handle,'환자번호',sgd_1.colWidths[2],taCenter);
   sgd_1.Cells[3,0] := AlignedText(Font.Handle,'환자명',sgd_1.colWidths[3],taCenter);
   sgd_1.Cells[4,0] := AlignedText(Font.Handle,'주민번호',sgd_1.colWidths[4],taCenter);
   sgd_1.Cells[5,0] := AlignedText(Font.Handle,'SEX/AGE',sgd_1.colWidths[5],taCenter);
   sgd_1.Cells[6,0] := AlignedText(Font.Handle,'H.P번호',sgd_1.colWidths[6],taCenter);
   sgd_1.Cells[7,0] := AlignedText(Font.Handle,'전송결과',sgd_1.colWidths[7],taCenter);
   sgd_1.Cells[8,0] := AlignedText(Font.Handle,'패키지코드',sgd_1.colWidths[8],taCenter);
   sgd_1.Cells[9,0] := AlignedText(Font.Handle,'거래처명',sgd_1.colWidths[9],taCenter);
   dtp_rsvtime.date := date;
end;

procedure TCCM220F1.bbt_closeClick(Sender: TObject);
begin
   Close;
end;

procedure TCCM220F1.sgd_1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
   rt : TRect;
begin
   if ARow < 1 then exit;
   if sgd_1.Cells[10,ARow] = 'Y' then
   begin
      rt := sgd_1.CellRect(0,arow);
      imageList1.Draw(sgd_1.Canvas,rt.left + 2,rt.top + 1,0);
   end
   else
   if sgd_1.Cells[10,ARow] = 'N' then

   begin
      rt := sgd_1.CellRect(0,arow);
      imageList1.Draw(sgd_1.Canvas,rt.left + 2,rt.top + 1,1);
   end;
end;

procedure TCCM220F1.sgd_1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   sgd_1.MouseToCell(x,y,i_col,i_srow);
end;

procedure TCCM220F1.sgd_1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
   i1 : integer;
begin
   sgd_1.MouseToCell(x,y,i_col,i_erow);
   if i_erow < 1 then exit;
   if i_erow > sgd_1.RowCount - 1 then exit;
   if i_srow < 1 then exit;
   if i_srow > sgd_1.RowCount - 1 then exit;
   if rg_1.ItemIndex = -1 then exit;
   if i_erow < i_srow then
   begin
      for i1 := i_erow downto i_srow do
      begin
         if trim(sgd_1.Cells[6,i1]) = '' then continue;
         if (copy(trim(sgd_1.Cells[6,i1]),1,3) <> '011') and
            (copy(trim(sgd_1.Cells[6,i1]),1,3) <> '016') and
            (copy(trim(sgd_1.Cells[6,i1]),1,3) <> '017') and
            (copy(trim(sgd_1.Cells[6,i1]),1,3) <> '018') and
            (copy(trim(sgd_1.Cells[6,i1]),1,3) <> '019') then
            continue;
         if trim(sgd_1.Cells[10,i1]) = 'Y' then
            sgd_1.Cells[10,i1] := 'N'
         else
            sgd_1.Cells[10,i1] := 'Y';
      end;
   end
   else
   begin
      for i1 := i_srow to i_erow do
      begin
         if trim(sgd_1.Cells[6,i1]) = '' then continue;
         if (copy(trim(sgd_1.Cells[6,i1]),1,3) <> '011') and
            (copy(trim(sgd_1.Cells[6,i1]),1,3) <> '016') and
            (copy(trim(sgd_1.Cells[6,i1]),1,3) <> '017') and
            (copy(trim(sgd_1.Cells[6,i1]),1,3) <> '018') and
            (copy(trim(sgd_1.Cells[6,i1]),1,3) <> '019') then
            continue;         
         if trim(sgd_1.Cells[10,i1]) = 'Y' then
            sgd_1.Cells[10,i1] := 'N'
         else
            sgd_1.Cells[10,i1] := 'Y';
      end;
   end;
   sgd_1.Repaint;

end;

procedure TCCM220F1.bbt_delivClick(Sender: TObject);
var
   iRowcnt ,i1,rc : integer;
   s_tm ,s_messg : string;
 	v_patno   ,v_patname ,v_telno   ,v_messg  :  Variant;
begin


   iRowcnt := 0;
   for i1 := 1 to sgd_1.RowCount - 1 do
      if trim(sgd_1.Cells[10,i1]) = 'Y' then
         iRowcnt := iRowcnt + 1;
   if iRowcnt = 0 then
   begin
      ShowMessage('선택된 환자가 없습니다!!!!');
      exit;
   end;
   try
      ccsmssrt := Hccsmssrt.Create;
      ccsmssrt.v_Rsvcd    := VarArrayCreate([0,iRowcnt-1],varolestr);
      ccsmssrt.v_Userid   := VarArrayCreate([0,iRowcnt-1],varolestr);
      ccsmssrt.v_Userip   := VarArrayCreate([0,iRowcnt-1],varolestr);
      ccsmssrt.v_Tm       := VarArrayCreate([0,iRowcnt-1],varolestr);
      ccsmssrt.v_Hopedate := VarArrayCreate([0,iRowcnt-1],varolestr);
      ccsmssrt.v_Delidate := VarArrayCreate([0,iRowcnt-1],varolestr);
      ccsmssrt.v_Sender   := VarArrayCreate([0,iRowcnt-1],varolestr);
      ccsmssrt.v_Messg    := VarArrayCreate([0,iRowcnt-1],varolestr);
      ccsmssrt.v_Patno    := VarArrayCreate([0,iRowcnt-1],varolestr);
      ccsmssrt.v_Telno    := VarArrayCreate([0,iRowcnt-1],varolestr);
      ccsmssrt.v_Meddept  := VarArrayCreate([0,iRowcnt-1],varolestr);
      ccsmssrt.v_Meddr    := VarArrayCreate([0,iRowcnt-1],varolestr);
      ccsmssrt.v_Medtime  := VarArrayCreate([0,iRowcnt-1],varolestr);
      iRowcnt := 0;
      for i1 := 1 to sgd_1.RowCount - 1 do
         if trim(sgd_1.Cells[10,i1]) = 'Y' then
         begin
            ccsmssrt.v_patno[iRowcnt] := sgd_1.Cells[2,i1];
            ccsmssrt.v_telno[iRowcnt] := '017-332-7933';//sgd_1.Cells[6,i1];
            ccsmssrt.v_messg[iRowcnt] := sgd_1.Cells[3,i1] + '님 ' + formatdatetime('mm',dtp_rsvtime.date) +'/' +
                                          formatdatetime('dd',dtp_rsvtime.date) +'일'+ red_detail.Text + '문의:';
            ccsmssrt.v_Rsvcd     [iRowcnt] := '1';
            ccsmssrt.v_Userid    [iRowcnt] := g_userid;
            ccsmssrt.v_Userip    [iRowcnt] := G_userip;
            ccsmssrt.v_Tm        [iRowcnt] := '';
            ccsmssrt.v_Hopedate  [iRowcnt] := formatdatetime('yyyy-mm-dd',dtp_rsvtime.date);
            ccsmssrt.v_Delidate  [iRowcnt] := formatdatetime('yyyy-mm-dd',date);
            ccsmssrt.v_Sender    [iRowcnt] := g_telno;
            ccsmssrt.v_Meddept   [iRowcnt] := 'SU';
            ccsmssrt.v_Meddr     [iRowcnt] := '';
            ccsmssrt.v_Medtime   [iRowcnt] := '';
            iRowcnt := iRowcnt + 1;
         end;
      rc := ccsmssrt.sms_insert(iRowcnt);
      if rc < 0 then
      begin
         ShowErrMsg(stb_1);
         ccsmssrt.free;
         exit;
      end;
      ccsmssrt.free;
      ShowMessage('전송되었습니다!!!!');
      bbt_selectClick(sender);
   finally
      Screen.Cursor := crDefault;
   end;

end;

procedure TCCM220F1.rg_1Click(Sender: TObject);
var
   v_hspcl ,v_messge,v_tm    ,v_telno  : Variant;
   rc : integer;
begin
   try
      Screen.Cursor := crHourGlass;
      ccsmsmgt := Hccsmsmgt.Create;
      rc := ccsmsmgt.sms_mesgsel('1',
                                inttostr(rg_1.ItemIndex + 1));
      if rc < 0 then
      begin
         ShowErrMsg();
         ccsmsmgt.free;
         exit;
      end;
      g_telno := ccsmsmgt.v_Telno[0];
      red_detail.Text := ccsmsmgt.v_Messge[0];
      g_tm := ccsmsmgt.v_Delivtm[0] + '00';
      ccsmsmgt.free;
      dtp_rsvtimeCloseUp(sender);
   finally
      Screen.Cursor := crDefault;
   end;
end;

procedure TCCM220F1.dtp_rsvtimeCloseUp(Sender: TObject);
var
   i1,i2 : integer;
begin
   for i1 := 1 to sgd_1.RowCount - 1 do
      for i2 := 0 to 20 do
         sgd_1.Cells[i2,i1] := '';
   sgd_1.RowCount := 2;
end;

procedure TCCM220F1.bbt_execlClick(Sender: TObject);
var
   i: LongInt;
begin
   AdvExcel1.Connect;
   if not AdvExcel1.Connected  then
   begin
      MessageDlg('Excel을 찾을수 없습니다.',mtError,[mbOk],0);
      Exit;
   end;
   try
      Screen.Cursor := crHourGlass;
      AdvExcel1.StartTable;
      AdvExcel1.NewSheet(Sheet,'');     // new sheet 를 한장더..
      AdvExcel1.PutStrAt(2, 1,'작성일시 : ' + formatdatetime('yyyy-mm-dd',date) + ' ' +
                                              formatdatetime('hh:nn',time));
      AdvExcel1.PutStrAt(3, 1,'본지사구분 : ' + rg_1.items[rg_1.ItemIndex]);
      AdvExcel1.PutStrAt(4, 1,'발송구분 : ' + rg_2.items[rg_2.ItemIndex]);
      with sgd_1 do
      begin
         for i := 0 to RowCount - 1 do
         begin
            AdvExcel1.PutStrAt(i+5, 1,Cells[ 1,i]);
            AdvExcel1.PutStrAt(i+5, 2,Cells[ 2,i]);
            AdvExcel1.PutStrAt(i+5, 3,Cells[ 3,i]);
            AdvExcel1.PutStrAt(i+5, 4,Cells[ 4,i]);
            AdvExcel1.PutStrAt(i+5, 5,Cells[ 5,i]);
            AdvExcel1.PutStrAt(i+5, 6,Cells[ 6,i]);
            AdvExcel1.PutStrAt(i+5, 7,Cells[ 7,i]);
            AdvExcel1.PutStrAt(i+5, 8,Cells[ 8,i]);
            AdvExcel1.PutStrAt(i+5, 9,Cells[ 9,i]);
         end;
      end;
   finally
      AdvExcel1.EndTable;
      AdvExcel1.Disconnect;
      Screen.Cursor := crDefault;
   end;
end;

procedure TCCM220F1.bbt_printClick(Sender: TObject);
begin
   if CCM220F2 = NIL then
      CCM220F2 := TCCM220F2.Create(Application);
   CCM220F2.qrl_inkbn.Caption := rg_1.items[rg_1.ItemIndex];
   CCM220F2.qrl_gubun.Caption := '('+rg_2.items[rg_2.ItemIndex]+')';
   CCM220F2.qrl_rsvdate.Caption := formatdatetime('yyyy-mm-dd',dtp_rsvtime.date);
   CCM220F2.qrp_1.preview;
   CCM220F2.Close;
end;

procedure TCCM220F1.bbt_deleteClick(Sender: TObject);
var
   s_messg : string;
	v_patno ,v_stddate  ,v_trancode : Variant;
   rc,i1,i2,i_rowcnt: integer;
begin
   if messagedlg('삭제하시겟습니까?'
                 ,mtInformation,[mbYes,mbNo],0) <> mrYes then
      exit;
   i_rowcnt := 0;
   for i1 := 1 to sgd_1.RowCount - 1 do
      if (trim(sgd_1.Cells[10,i1]) = 'Y') and (trim(sgd_1.Cells[12,i1]) = '' ) then
         i_rowcnt := i_rowcnt + 1;
   if i_rowcnt = 0 then
   begin
      ShowMessage('삭제할 내역이 없습니다!!!');
      exit;
   end;
   try
      Screen.cursor := crHourGlass;
      ccsmssrt := Hccsmssrt.Create;
      ccsmssrt.v_Std_date   := VarArrayCreate([0,i_rowcnt-1],varolestr);
      ccsmssrt.v_Tran_code  := VarArrayCreate([0,i_rowcnt-1],varolestr);
      ccsmssrt.v_Patno      := VarArrayCreate([0,i_rowcnt-1],varolestr);
      ccsmssrt.v_Hopedate   := VarArrayCreate([0,i_rowcnt-1],varolestr);
      i_rowcnt := 0;
      for i1 := 1 to sgd_1.RowCount - 1 do
         if (trim(sgd_1.Cells[10,i1]) = 'Y') and (trim(sgd_1.Cells[12,i1]) = '' ) then
         begin
            ccsmssrt.v_Std_date [i_rowcnt] := trim(sgd_1.Cells[13,i1]);
            ccsmssrt.v_Tran_code[i_rowcnt] := trim(sgd_1.Cells[14,i1]);
            ccsmssrt.v_Patno    [i_rowcnt] := trim(sgd_1.Cells[2,i1]);
            ccsmssrt.v_Hopedate [i_rowcnt] := formatdatetime('yyyy-mm-dd',dtp_rsvtime.date);
            i_rowcnt := i_rowcnt + 1;
         end;
      rc := ccsmssrt.sms_sufaildelete(i_rowcnt); //cq_smssu_d1
      if rc < 0 then
      begin
         ShowErrMsg(stb_1);
         ccsmssrt.free;
         exit;
      end;
      ccsmssrt.Free;
      ShowMessage(inttostr(i_rowcnt) + '건이 삭제되었습니다!!!');
      bbt_selectClick(sender);
   finally
      Screen.Cursor := crDefault;
   end;
end;

end.
