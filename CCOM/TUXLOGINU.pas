unit TUXLOGINU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, ExtCtrls, ComCtrls;

type
  HcmUser = class
     sUserid      :   Variant; {�����ID}
     sUsername    :   Variant; {����ڸ�}
     sPassword    :   Variant; {��й�ȣ}
     sResno       :   Variant; {�ֹε�Ϲ�ȣ}
     sDeptcd      :   Variant; {�ҼӺμ��ڵ�}
     sDeptnm      :   Variant; {�ҼӺμ���}
     sStartdt     :   Variant; {��ȿ������}
     sEnddt       :   Variant; {��ȿ������}
     sLocate      :   Variant; {������ڵ�}
     sLocatenm    :   Variant; {������}
     lDefssion    :   Variant; {�⺻���Ǽ�}
     lUsession    :   Variant; {��뼼�Ǽ�}
     sUserstat    :   Variant; {����ڻ���}
     sUserstnm    :   Variant; {����ڻ��¸�}
     sDeldate     :   Variant; {��븸����}
     sUseridio    :   Variant; {�����ID I/O}
     sUsernameio  :   Variant; {����ڸ� I/O}
     sDeptcdio    :   Variant; {�μ��ڵ� I/O}
     sDeptnmio    :   Variant; {�μ��� I/O}
     sLocateio    :   Variant; {����� I/O}
     sLocatenmio  :   Variant; {������ I/O}
     sJikjong     :   Variant; {�����ڵ�}
     sJikgup      :   Variant; {�����ڵ�}
     sLicno1      :   Variant; {�Ϲݸ����ȣ}
     sLicno2      :   Variant; {���������ȣ}
     sWkareacd    :   Variant; {��ũ�����}
     sWarnmsg     :   Variant; {���޽���}

     //�����Ȯ��(CM_USER_VAL)
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
// ����� ID, PASSWORD�� �Է¹ް� �������ȿ�� �˻� ����...
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

          // ��й�ȣ�� �ٸ��ϴ�. �� ���...
          if Pos('��й�ȣ', sTemp) > 0 then
          begin
               //ed_passwd.Clear;
               //ed_passwd.SetFocus;
          end
          // ��ϵ��� ���� ������Դϴ�.
          else if Pos('�����', sTemp) > 0 then
          begin
               //ed_passwd.Clear;
               //ed_passwd.SetFocus;
          end;
     end
     // ����ڿ��� ��й�ȣ�� �����϶�� ��û.
     // ����ڰ� ��й�ȣ�� ����� ������ ��쿡
     // ����� ��й�ȣ�� �̿��ؼ� �α���.
     else if GetTxUrcode = 2500 then    //PASSWDCHGSIGN then
     begin
         ShowMessage('����� ���°� [��й�ȣ �����ʿ�]�� ����Ǿ����ϴ�.'+chr(13)+
                     '�α��� ���α׷����� ��й�ȣ�� �����Ͻð� ����Ͻñ� �ٶ��ϴ�.');
         txTerm;
     end
     // �ٸ������� �α��εǾ� �ִ� ����.
     // �ߺ� �α����� �����Ѵ�...
     else if GetTxUrcode = 11 then      //KILLDUPSIGN then
     begin
         ShowMessage(GetTxMsg);
         Result := True;
//         txTerm;
     end
     // ����� �α����� ����� ���...
     // ���� �޽������� ����Ѵ�.
     // �α��� ���...
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
// �����Ȯ��(CM_USER_VAL)
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
    //---------- 2002.09.11. ������

    txTerm;

    // �α��� ���α׷��� HWND_BROADCAST �޽����� �����Ѵ�.
    // GCSHANDLE�� ����� CS.EXE�� ���μ��� ID�� �̿��Ͽ� �ش� ���α׷���
    // ȣ���� CS.EXE�� �ڵ��� ���ϰ� ������ �ڵ鰪�� �̿��Ͽ� WM_COPYDATA��
    // ������...

    // HWND_BROADCAST �޽����� ������.
    // �̶� �Ű������� �� ������� ID�� �α׾ƿ� ����, �׸��� ȣ���� CS.EXE�� PID�� ���� ������...

    // CF996 : '0' --> ���α׷� LOGOUTó���ؾ� �� ���
    // CF997 : '1' --> ���α׷� LOGOUTó������ �ʾƵ� �Ǵ� ���
    WParamData.sMsg   := G_USERID + '-' + CF996 + '>' + IntToStr(G_CSPID);
    DataStruct.dwData := WindowFromProcessID(G_CSPID);
    DataStruct.cbData := SizeOf(TWParam);
    DataStruct.lpData := @WParamData;

    // �޽��� Sending...
    SendMessage(WindowFromProcessID(G_CSPID), WM_COPYDATA, wParam(Application.Handle), lParam(@DataStruct));

    Close;
end;

end.

// eND oF sOURCE ===============================================================


