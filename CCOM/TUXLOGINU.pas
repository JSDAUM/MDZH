unit TUXLOGINU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls, ComCtrls;

type
  HcmUser = class
     sUserid      :   Variant; {사용자ID}
     sUsername    :   Variant; {사용자명}
     sPassword    :   Variant; {비밀번호}
     sResno       :   Variant; {주민등록번호}
     sDeptcd      :   Variant; {소속부서코드}
     sDeptnm      :   Variant; {소속부서명}
     sStartdt     :   Variant; {유효시작일}
     sEnddt       :   Variant; {유효종료일}
     sLocate      :   Variant; {사업장코드}
     sLocatenm    :   Variant; {사업장명}
     lDefssion    :   Variant; {기본세션수}
     lUsession    :   Variant; {사용세션수}
     sUserstat    :   Variant; {사용자상태}
     sUserstnm    :   Variant; {사용자상태명}
     sDeldate     :   Variant; {사용만료일}
     sUseridio    :   Variant; {사용자ID I/O}
     sUsernameio  :   Variant; {사용자명 I/O}
     sDeptcdio    :   Variant; {부서코드 I/O}
     sDeptnmio    :   Variant; {부서명 I/O}
     sLocateio    :   Variant; {사업장 I/O}
     sLocatenmio  :   Variant; {사업장명 I/O}
     sJikjong     :   Variant; {직종코드}
     sJikgup      :   Variant; {직급코드}
     sLicno1      :   Variant; {일반면허번호}
     sLicno2      :   Variant; {전문면허번호}
     sWkareacd    :   Variant; {워크에어리어}
     sWarnmsg     :   Variant; {경고메시지}

     //사용자확인(CM_USER_VAL)
     function UserVal(userid, password: String; TryCnt: Integer): Integer;
  end;

  TTUXLOGINF = class(TForm)
    Image1: TImage;
    ed_passwd: TEdit;
    ed_userid: TEdit;
    btn_login: TButton;
    btn_close: TButton;
    StatusBar1: TStatusBar;
    procedure FormShow(Sender: TObject);
    procedure btn_closeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function  UserVal(userid, password: String; TryCnt: Integer): Boolean;
  end;

var
  TUXLOGINF: TTUXLOGINF;
  cmUser: HcmUser;

implementation

uses
    TuxCom, MsgCom, VarCom, CMsg, CComFunc, Variants;

{$R *.DFM}

//==============================================================================
// 사용자 ID, PASSWORD를 입력받고 사용자유효성 검사 시행...
//==============================================================================
function TTUXLOGINF.UserVal(userid, password: String; TryCnt: Integer): Boolean;
var
   sTemp: String;
   ix, row: Integer;
   WarnMsg: String;
begin
     
     Screen.Cursor := crHourGlass;

     if Not(txInit('C:\DEV\ENV\HIS.ENV',G_SVRID)) then
     begin
         txTerm;
         exit;
     end;
     
     cmUser := HcmUser.Create;

     row := cmUser.UserVal(userid, password, TryCnt);

     Result := False;
     if row < 0 then
     begin
          sTemp := GetTxMsg;
          ShowMessageM(sTemp);

          // 비밀번호가 다릅니다. 일 경우...
          if Pos('비밀번호', sTemp) > 0 then
          begin
               //ed_passwd.Clear;
               //ed_passwd.SetFocus;
          end
          // 등록되지 않은 사용자입니다.
          else if Pos('사용자', sTemp) > 0 then
          begin
               //ed_passwd.Clear;
               //ed_passwd.SetFocus;
          end;
     end
     // 사용자에게 비밀번호를 변경하라고 요청.
     // 사용자가 비밀번호를 제대로 수정한 경우에
     // 변경된 비밀번호를 이용해서 로그인.
     else if GetTxUrcode = 2500 then    //PASSWDCHGSIGN then
     begin
         ShowMessage('사용자 상태가 [비밀번호 수정필요]로 변경되었습니다.'+chr(13)+
                     '로그인 프로그램에서 비밀번호를 변경하시고 사용하시기 바랍니다.');
         txTerm;
     end
     // 다른곳에서 로그인되어 있는 상태.
     // 중복 로그인은 불허한다...
     else if GetTxUrcode = 11 then      //KILLDUPSIGN then
     begin
         ShowMessage(GetTxMsg);
         Result := True;
//         txTerm;
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
     end;

     cmUser.Free;
     Screen.Cursor := crDefault;
end;

procedure TTUXLOGINF.FormShow(Sender: TObject);
begin
    ed_passwd.SetFocus;
end;

//==============================================================================
// 사용자확인(CM_USER_VAL)
//==============================================================================
function HcmUser.UserVal(userid, password: String; TryCnt: Integer): Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_USERID1;S_CODE1;L_CNT1');
     SetFldValue(0,[userid,password,TryCnt]);
     if txGetF('CM_USER_VAL') then
     begin
          Result := GetRecordCnt('S_TEXT1');
          GetFldVar('S_TEXT1',   sWarnmsg);
          txFree;          
     end;

     txFree;
end;

procedure TTUXLOGINF.btn_closeClick(Sender: TObject);
var
    DataStruct: TCopyDataStruct;
    WParamData: TWParam;
begin
    //----------
    //---------- 2002.09.11. 김정수

    txTerm;

    // 로그인 프로그램에 HWND_BROADCAST 메시지를 전달한다.
    // GCSHANDLE에 저장된 CS.EXE의 프로세스 ID를 이용하여 해당 프로그램을
    // 호출한 CS.EXE의 핸들을 구하고 구해진 핸들값을 이용하여 WM_COPYDATA를
    // 보낸다...

    // HWND_BROADCAST 메시지를 보낸다.
    // 이때 매개변수로 현 사용자의 ID와 로그아웃 여부, 그리고 호출한 CS.EXE의 PID를 딸려 보낸다...

    // CF996 : '0' --> 프로그램 LOGOUT처리해야 할 경우
    // CF997 : '1' --> 프로그램 LOGOUT처리하지 않아도 되는 경우
    WParamData.sMsg   := G_USERID + '-' + CF996 + '>' + IntToStr(G_CSPID);
    DataStruct.dwData := WindowFromProcessID(G_CSPID);
    DataStruct.cbData := SizeOf(TWParam);
    DataStruct.lpData := @WParamData;

    // 메시지 Sending...
    SendMessage(WindowFromProcessID(G_CSPID), WM_COPYDATA, wParam(Application.Handle), lParam(@DataStruct));

    Close;
end;

end.

// eND oF sOURCE ===============================================================


