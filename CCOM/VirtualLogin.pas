unit VirtualLogin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, jpeg, StdCtrls, ComCtrls, Grids, UltraGrid, Buttons, OleCtrls,
  SHDocVw, Psock, NMHttp, Imm;

type
  TVirtualLoginF = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    ed_login_userid: TEdit;
    ed_login_password: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    ed_userid: TEdit;
    Label4: TLabel;
    ed_username: TEdit;
    Label5: TLabel;
    ed_deptcd: TEdit;
    ed_deptnm: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ed_grade: TEdit;
    ed_locate: TEdit;
    ed_locatenm: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    ed_wkareacd: TEdit;
    ed_jikjong: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    ed_jikgup: TEdit;
    ed_grpid: TEdit;
    ed_userip: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    ed_svrid: TEdit;
    ed_caption: TEdit;
    Panel4: TPanel;
    GroupBox2: TGroupBox;
    ugd_pgmlist: TUltraGrid;
    bbt_ok: TBitBtn;
    bbt_close: TBitBtn;
    Label17: TLabel;
    combx_serverid: TComboBox;
    ugd_usergrp: TUltraGrid;
    spbtn_login: TBitBtn;
    procedure ugd_pgmlistClick(Sender: TObject);
    procedure spbtn_loginClick(Sender: TObject);
    procedure combx_serveridChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbt_okClick(Sender: TObject);
    procedure ugd_pgmlistDblClick(Sender: TObject);
    procedure bbt_closeClick(Sender: TObject);
    procedure combx_serveridKeyPress(Sender: TObject; var Key: Char);
    procedure ed_login_useridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    function UserVal(userid, password: String): Boolean;
    function ListUserGrp(userid: String): Boolean;
    function GetUserInfo(userid, locate: String): Boolean;
    function SetPgmButton: Boolean;
    function CSTrim(TStr: String): String;
    procedure AppendSectionToEnvFile;
  end;

var
  VirtualLoginF: TVirtualLoginF;

const
   // 현재 사용자 상태가 '정상'이다.
   USERSTAT_OK = 0;
   // 비밀번호 변경요구...
   PASSWDCHGSIGN = 2500;
   PASSWDCHG_OK = PASSWDCHGSIGN + 10;

   // 다른곳에서 사용중일 경우...
   KILLDUPSIGN   = 11;

   
implementation

uses
   TuxCom, MsgCom, CMCLASS0, VarCom, CComFunc;

{$R *.DFM}

procedure TVirtualLoginF.ugd_pgmlistClick(Sender: TObject);
begin
   if (ugd_pgmlist.Cells[0, ugd_pgmlist.Row] <> '') then
   begin
      // 가짜로 사용자 로그인 수행. 개발및 테스트의 유용성을 위해...

      G_USERID   :=   ugd_pgmlist.Cells[2, ugd_pgmlist.Row];  //parameter 1
      G_USERNM   :=   ugd_pgmlist.Cells[3, ugd_pgmlist.Row];  //parameter 2
      G_DEPTCD   :=   ugd_pgmlist.Cells[4, ugd_pgmlist.Row];  //parameter 3
      G_DEPTNM   :=   ugd_pgmlist.Cells[5, ugd_pgmlist.Row];  //parameter 4
      G_GRADE    :=   ugd_pgmlist.Cells[6, ugd_pgmlist.Row];  //parameter 5
      G_LOCATE   :=   ugd_pgmlist.Cells[7, ugd_pgmlist.Row];  //parameter 6
      G_LOCATENM :=   ugd_pgmlist.Cells[8, ugd_pgmlist.Row];  //parameter 7
      G_WKAREACD :=   ugd_pgmlist.Cells[9, ugd_pgmlist.Row];  //parameter 8
      G_JIKJONG  :=   ugd_pgmlist.Cells[10, ugd_pgmlist.Row]; //parameter 9
      G_JIKGUP   :=   ugd_pgmlist.Cells[11, ugd_pgmlist.Row]; //parameter 10
      G_GRPID    :=   ugd_pgmlist.Cells[12, ugd_pgmlist.Row]; //parameter 11
      G_USERIP   :=   ugd_pgmlist.Cells[14, ugd_pgmlist.Row]; //parameter 13
      G_CAPTION  :=   ugd_pgmlist.Cells[1, ugd_pgmlist.Row]; //parameter 15
      combx_serveridChange(Sender);       // G_SVRID : parameter 16

      ed_userid.Text := G_USERID;
      ed_username.Text := G_USERNM;
      ed_deptcd.Text := G_DEPTCD;
      ed_deptnm.Text := G_DEPTNM;
      ed_grade.Text := G_GRADE;
      ed_locate.Text := G_LOCATE;
      ed_locatenm.Text := G_LOCATENM;
      ed_wkareacd.Text := G_WKAREACD;
      ed_jikjong.Text := G_JIKJONG;
      ed_jikgup.Text := G_JIKGUP;
      ed_grpid.Text := G_GRPID;
      ed_userip.Text := G_USERIP;
      ed_caption.Text := G_CAPTION;
      ed_svrid.Text := G_SVRID;

      bbt_ok.Enabled := True;
   end
   else
      bbt_ok.Enabled := True;

end;



//---------- 로그인
procedure TVirtualLoginF.spbtn_loginClick(Sender: TObject);
//var
//   cmDate : HcmDate;
//   tmpdate: TDateTime;
begin
   // 모래시계
   Screen.Cursor := crHourGlass;

   combx_serveridChange(Sender);

   if (not txInit('C:\UniHIS\ENV\HIS.ENV', G_SVRID)) then
   begin
      ShowMessage(CF_M100);
      txTerm;
   end
   else
   begin

       // 사용자 ID, PASSWORD를 이용, 로그인 시도...
       if UserVal(ed_login_userid.Text, ed_login_password.Text) then
       begin
          //----- 2001.08.21

          // 시스템 시간설정...
          // datetime 형식을 yyyy-MM-dd hh:mm:ss로 변경.
{          SetLocalDateTimeFormat('yyyy-MM-dd hh:mm:ss');
          // 구해진 서버의 시간으로 로컬의 시간을 변경.

          GetSysDate(tmpdate);

          SetLocalDateTime(FormatDateTime('yyyy-MM-dd hh:mm:ss',tmpdate));

          //----- 2001.08.21

}          // 로그인 성공시에 사용자에게 할당된 프로그램 목록을 구한다...
          if ListUserGrp(ed_userid.Text) then
          begin
             // COMMON그룹에 속한 화일들의 변경여부 체크.
             if GetUserInfo(ed_userid.Text, ed_locate.Text) then
             begin
                SetPgmButton;
                ugd_pgmlist.SetFocus;
             end;
          end;
       end;
   end;

   Screen.Cursor := crDefault;
end;


//==============================================
// 사용자가 사용 가능한 프로그램 목록을 구한다...
//==============================================
function TVirtualLoginF.ListUserGrp(userid: String): Boolean;
var
   row, ix: Integer;
begin
     Screen.Cursor := crHourGlass;

     cmUsergrp := HcmUsergrp.Create;

     row := cmUserGrp.List(userid,'1');

     ugd_usergrp.Clear;
     ugd_usergrp.RowCount := 1;

     // 오류시...
     if row < 0 then
     begin
          // 사용할 수 있는 프로그램 목록이 없습니다.
          // 전산실에 문의하십시오.
          ShowMessage(GetTxMsg);

          Result := False;
     end
     // 정상적으로 조회가 완료...
     // 조회된 결과를 화면상의 visible = false인 UltraGrid에 저장한다...
     else
     begin
          ugd_usergrp.RowCount := row + 1;

          for ix := 0 to row -1 do
          begin
               ugd_usergrp.Cells[0, ix] := cmUsergrp.sDeptcd[ix];
               ugd_usergrp.Cells[1, ix] := cmUsergrp.sDeptnm[ix];
               ugd_usergrp.Cells[2, ix] := cmUsergrp.sGrpid[ix];
               ugd_usergrp.Cells[3, ix] := cmUsergrp.sGrpname[ix];
               ugd_usergrp.Cells[4, ix] := cmUsergrp.sMastgrp[ix];
               ugd_usergrp.Cells[5, ix] := cmUsergrp.sUselevel[ix];
               ugd_usergrp.Cells[6, ix] := cmUsergrp.sCswbtype[ix];
               ugd_usergrp.Cells[12, ix] := cmusergrp.sSvrid[ix];
               ugd_usergrp.Cells[4, ix + 1] := 'COMMON';
          end;

          Result := True;
     end;

     cmUsergrp.Free;

     Screen.Cursor := crDefault;
end;



function TVirtualLoginF.UserVal(userid, password: String): Boolean;
var
   sTemp: String;
   ix, row: Integer;
   WarnMsg: String;
begin
     Screen.Cursor := crHourGlass;

     cmUser := HcmUser.Create;

     row := cmUser.UserVal(userid, password, 1);

     if row < 0 then
     begin
          ed_login_password.Enabled := True;
          sTemp := GetTxMsg;
          ShowMessageM(sTemp);

          // 비밀번호가 다릅니다. 일 경우...
          if Pos('비밀번호', sTemp) > 0 then
          begin
               ed_login_password.Clear;
               ed_login_password.SetFocus;
          end
          // 등록되지 않은 사용자입니다.
          else if Pos('사용자', sTemp) > 0 then
          begin
               ed_login_password.Clear;
               ed_login_userid.SelectAll;
               ed_login_userid.SetFocus;
          end;

          Screen.Cursor := crDefault;
          Result := False;
     end
     // 사용자에게 비밀번호를 변경하라고 요청.
     // 사용자가 비밀번호를 제대로 수정한 경우에
     // 변경된 비밀번호를 이용해서 로그인.
     else if GetTxUrcode = PASSWDCHGSIGN then
     begin
         Screen.Cursor := crDefault;
         ShowMessage('비밀번호를 변경한 후에 사용하셔야 합니다.');
         // 비밀번호 변경창을 출력.
         // 비밀번호 수정 성공인 경우 변경된 비밀번호를 이용, 로그인 수행.
         // 현재 사용자 상태는 비밀번호 변경이 필요하다.
         cmUser.free;
         Result := False;
         Exit;
     end
     // 다른곳에서 로그인되어 있는 상태.
     // 중복 로그인은 불허한다...
     else if GetTxUrcode = KILLDUPSIGN then
     begin
         Screen.Cursor := crDefault;
         ShowMessage('딴데서 시방 쓰고 있습니다.');
         cmUser.free;
         Result := False;
         Exit;
     end
     // 제대로 로그인이 수행된 경우...
     // 경고용 메시지들을 출력한다.
     // 로그인 허용...
     else
     begin
          if row > 0 then
          begin
               for ix := 0 to row - 1 do
               begin
                    WarnMsg := WarnMsg + cmUser.sWarnmsg[ix];

                    if ix < (row - 1) then
                    begin
                         WarnMsg := WarnMsg + Chr(13) + Chr(13);
                    end;
               end;

               ShowMessageM(WarnMsg);
          end;

          Result := True;
          ed_userid.Text := ed_login_userid.Text;
          ed_userip.Text := GetIP;
          ed_locate.Text := '';
          ed_locatenm.Text := '';
     end;

     cmUser.Free;

     Screen.Cursor := crDefault;
     Result := True;
end;


//============================================
//============================================
function TVirtualLoginF.GetUserInfo(userid, locate: String): Boolean;
var
   row: Integer;
begin
     Screen.Cursor := crHourGlass;

     cmUser := HcmUser.Create;

     row := cmUser.Select(userid, locate);

     if row < 0 then
     begin
          Result := False;

          ed_deptcd.Text   := '';
          ed_deptnm.Text   := '';
          ed_userid.Text   := '';
          ed_username.Text := '';
          ed_userip.Text   := '';
          ed_locate.Text   := '';
          ed_locatenm.Text := '';
          ed_wkareacd.Text  := '';
          ed_jikjong.Text   := '';
          ed_jikgup.Text    := '';
     end
     else
     begin
          Result := True;

          ed_deptcd.Text   := cmUser.sDeptcd[0];
          ed_deptnm.Text   := cmUser.sDeptnm[0];
          ed_userid.Text   := cmUser.sUserid[0];

          ed_username.Text := cmUser.sUsername[0];
          ed_userip.Text   := GetIp;
          ed_locate.Text   := cmUser.sLocate[0];
          ed_locatenm.Text := cmUser.sLocatenm[0];
          ed_wkareacd.Text  := cmUser.sWkareacd[0];
          ed_jikjong.Text   := cmUser.sJikjong[0];
          ed_jikgup.Text    := cmUser.sJikgup[0];
     end;

     cmUser.Free;

     Screen.Cursor := crDefault;
end;


//============================================
// 프로그램 목록 패널에 조회된 프로그램 목록을 출력한다.
//============================================
function TVirtualLoginF.SetPgmButton: Boolean;
var
   // CmpCount : 마스터그룹이 COMMON이 아닌 컴포넌트의 갯수.
   ix, CmpCount: Integer;
begin
   Result := True;
   CmpCount := 0;

   Screen.Cursor := crHourGlass;

   // 제목표시줄 설정.
   Caption := '고대의료원 의료정보시스템 - ' + CSTrim(ed_deptnm.Text) + ' '
               + CSTrim(ed_username.Text) + ' ' + CSTrim(ed_userip.Text)
               + ' ' + CSTrim(ed_locatenm.Text);

   ugd_pgmlist.RowCount := ugd_pgmlist.FixedRows + ugd_usergrp.RowCount - 1;
   
   for ix := 0 to ugd_usergrp.RowCount - 2 do
   begin
      // CS.EXE, COMMON그룹이 아닌 경우의 목록만 나열...
      if (Trim(ugd_usergrp.Cells[4, ix]) <> 'COMMON') and (Trim(ugd_usergrp.Cells[6, ix]) = 'C')
         and (Trim(ugd_usergrp.Cells[4, ix]) <> 'CS1') then
      begin
         Inc(CmpCount);

         ugd_pgmlist.Cells[0, CmpCount] := ugd_usergrp.Cells[1, ix];
         ugd_pgmlist.Cells[1, CmpCount] := ugd_usergrp.Cells[3, ix];

         if Trim(ugd_usergrp.Cells[6, ix]) = 'C' then
         begin
            ugd_pgmlist.Cells[2, CmpCount] := CSTrim(ed_userid.Text);          //parameter 1
            ugd_pgmlist.Cells[3, CmpCount] := CSTrim(ed_username.Text);        //parameter 2
            ugd_pgmlist.Cells[4, CmpCount] := CSTrim(ugd_usergrp.Cells[0, ix]); //parameter 3
            ugd_pgmlist.Cells[5, CmpCount] := CSTrim(ugd_usergrp.Cells[1, ix]); //parameter 4
            ugd_pgmlist.Cells[6, CmpCount] := CSTrim(ugd_usergrp.Cells[5, ix]); //parameter 5
            ugd_pgmlist.Cells[7, CmpCount] := CSTrim(ed_locate.Text);          //parameter 6
            ugd_pgmlist.Cells[8, CmpCount] := CSTrim(ed_locatenm.Text);        //parameter 7
            ugd_pgmlist.Cells[9, CmpCount] := CSTrim(ed_wkareacd.Text);         //parameter 8
            ugd_pgmlist.Cells[10, CmpCount] := CSTrim(ed_jikjong.Text);          //parameter 9
            ugd_pgmlist.Cells[11, CmpCount] := CSTrim(ed_jikgup.Text);           //parameter 10
            ugd_pgmlist.Cells[12, CmpCount] := CSTrim(ugd_usergrp.Cells[2, ix]); //parameter 11
            ugd_pgmlist.Cells[13, CmpCount] := '_ ';                                   //parameter 12
            ugd_pgmlist.Cells[14, CmpCount] := CSTrim(ed_userip.Text);          //parameter 13
            ugd_pgmlist.Cells[15, CmpCount] := CSTrim(ugd_usergrp.Cells[4, ix]);        //parameter 14
         end;
      end;
   end;

   Screen.Cursor := crDefault;
end;


function TVirtualLoginF.CSTrim(TStr: String): String;
var
   ix: Integer;
   TmpStr: String;
begin
     TmpStr := '';

     for ix := 1 to Length(TStr) do
     begin
          if TStr[ix] = ' ' then Continue;
          TmpStr := TmpStr + TStr[ix];
     end;

     Result := TmpStr;
end;


procedure TVirtualLoginF.combx_serveridChange(Sender: TObject);
begin
   if combx_serverid.ItemIndex = 0 then
      G_SVRID := '01'
   else if combx_serverid.ItemIndex = 1 then
      G_SVRID := '02'
   else if combx_serverid.ItemIndex = 2 then
      G_SVRID := '03';
end;


procedure TVirtualLoginF.FormCreate(Sender: TObject);
begin
   combx_serverid.ItemIndex := 2;   // 11번 서버

   AppendSectionToEnvFile;
end;


procedure TVirtualLoginF.bbt_okClick(Sender: TObject);
begin
   ModalResult := mrOk;
end;

procedure TVirtualLoginF.AppendSectionToEnvFile;
var
   Fp : TextFile;
   Line : String[255];
   chk : Integer;
begin
   chk := 0;
   AssignFile(Fp, 'C:\UniHIS\ENV\HIS.ENV');
   Reset(fp);
   begin
      While not Eof(fp) do
      begin
         Readln(fp, Line);
         UpperCase(Line);

         if (Pos('[03]', Line) = 0) and (chk <> 20) then
         begin
            chk := 10;
            continue;
         end
         else if (Pos('10.1.2.21', Line) = 0)  and (chk = 10) then
         begin
            chk := 20;
            continue;
         end
         else
         begin
            chk := -1;
            break;
         end;
      end;

      if (chk <> -1) then
      begin
         if (chk = 10) then
         begin
            Append(fp);
            Writeln(fp, '');
            Writeln(fp, '[03]');
            Writeln(fp, 'WSNADDR=//10.1.2.21:2500');
            CloseFile(fp);
         end
         else if (chk = 20) then
         begin
            Append(fp);
            Writeln(fp, 'WSNADDR=//10.1.2.21:2500');
            CloseFile(fp);
         end
      end
      else
         CloseFile(fp);
   end;
end;

procedure TVirtualLoginF.ugd_pgmlistDblClick(Sender: TObject);
begin
    bbt_okClick(Sender);
end;

procedure TVirtualLoginF.bbt_closeClick(Sender: TObject);
begin
    close;
end;

procedure TVirtualLoginF.combx_serveridKeyPress(Sender: TObject;
  var Key: Char);
begin
    if Key = #13 then
        spbtn_login.OnClick(Sender);
end;

procedure TVirtualLoginF.ed_login_useridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if Key = VK_RETURN then
        spbtn_loginClick(Sender);
end;

end.


