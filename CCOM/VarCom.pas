unit VarCom;

interface

uses
   ShellAPI, Windows, Sysutils, Dialogs;

   
var
    // Healthcare Information System Global Variables Setting

    G_DEPTNM   : String;       // 1.�μ��̸�
    G_DEPTCD   : String;       // 2.�μ��ڵ�
    G_USERNM   : String;       // 3.�����
    G_USERID   : String;       // 4.����ڵ�
    G_USERIP   : String;       // 5.���� IP
    G_GRADE    : String;       // 6.���ȵ��
    G_LOCATE   : String;       // 7.�����
    G_LOCATENM : String;       // 8.������
    G_WKAREACD : String;       // 9.�ٹ���
    G_JIKJONG  : String;       // 10.����
    G_JIKGUP   : String;       // 11.����
    G_JIKWE    : String;       // 12.����
    G_JIKMU    : String;       // 13.����
    G_JIKCHEK  : String;       // 14.��å
    G_GRPID    : String;       // 15.�޴��׷�ID
    G_CAPTION  : String;       // 16.���� ���α׷���
    G_SVRID    : String;       // 17.SERVER ID
                               // Ŭ���̾�Ʈ ���� ���α׷� ����� ����.
    G_CSPID    : DWORD;        // �ڽ��� �����Ų CS���α׷��� PID�� ����...
    G_PRTYN    : String;
    
     //(�߰�. 2002.12.09 �̿��) ����� ���� ���α׷� �α��� �ð�
    G_LOGTM    : String;
    G_MISDEPT  : String;
    
    //(�߰�. 2003.4.21 ������) default print check
    G_DEFPRINT : string;
    G_FAXPRINT : string;

    // �߰�. 2003.12.31 by cha...
    // �����Ͽ� ���� �����ڵ� �������� ( Fromdate)
    G_FROMDATE : String;

    function SetVarCom: Boolean;

implementation

function SetVarCom: Boolean;
begin
     Result := True;

     G_USERID   := ParamStr(1);
     G_USERNM   := ParamStr(2);
     G_DEPTCD   := ParamStr(3);
     G_DEPTNM   := ParamStr(4);
     G_GRADE    := ParamStr(5);
     G_LOCATE   := ParamStr(6);
     G_LOCATENM := ParamStr(7);
     G_WKAREACD := ParamStr(8);
     G_JIKJONG  := ParamStr(9);
     G_JIKGUP   := ParamStr(10);
     G_GRPID    := ParamStr(11);

     G_USERIP   := ParamStr(13);

     G_CAPTION  := ParamStr(15);
     G_SVRID    := ParamStr(16);

     // �ش� ���α׷��� ȣ���� CS.EXE ���μ��� ID
     G_CSPID    := StrToInt64Def(ParamStr(17),0);
     //(�߰�. 2002.12.09 �̿��) ����� ���� ���α׷� �α��� �ð�
     G_LOGTM    := ParamStr(18);
     G_MISDEPT  := ParamStr(19);

     // 2003.12.31 by cha..
//     G_FROMDATE := '20040101';
end;



end.

