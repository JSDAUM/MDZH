unit VarCom;

interface

uses
   ShellAPI, Windows, Sysutils, Dialogs;

   
var
    // Healthcare Information System Global Variables Setting

    G_DEPTNM   : String;       // 1.부서이름
    G_DEPTCD   : String;       // 2.부서코드
    G_USERNM   : String;       // 3.사원명
    G_USERID   : String;       // 4.사원코드
    G_USERIP   : String;       // 5.접속 IP
    G_GRADE    : String;       // 6.보안등급
    G_LOCATE   : String;       // 7.사업장
    G_LOCATENM : String;       // 8.사업장명
    G_WKAREACD : String;       // 9.근무지
    G_JIKJONG  : String;       // 10.직종
    G_JIKGUP   : String;       // 11.직급
    G_JIKWE    : String;       // 12.직위
    G_JIKMU    : String;       // 13.직무
    G_JIKCHEK  : String;       // 14.직책
    G_GRPID    : String;       // 15.메뉴그룹ID
    G_CAPTION  : String;       // 16.실행 프로그램명
    G_SVRID    : String;       // 17.SERVER ID
                               // 클라이언트 개별 프로그램 실행시 전달.
    G_CSPID    : DWORD;        // 자신을 실행시킨 CS프로그램의 PID값 저장...
    G_PRTYN    : String;
    
     //(추가. 2002.12.09 이용언) 실행된 서브 프로그램 로그인 시간
    G_LOGTM    : String;
    G_MISDEPT  : String;
    
    //(추가. 2003.4.21 임한재) default print check
    G_DEFPRINT : string;
    G_FAXPRINT : string;

    // 추가. 2003.12.31 by cha...
    // 기준일에 따른 계정코드 가져오기 ( Fromdate)
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

     // 해당 프로그램을 호출한 CS.EXE 프로세스 ID
     G_CSPID    := StrToInt64Def(ParamStr(17),0);
     //(추가. 2002.12.09 이용언) 실행된 서브 프로그램 로그인 시간
     G_LOGTM    := ParamStr(18);
     G_MISDEPT  := ParamStr(19);

     // 2003.12.31 by cha..
//     G_FROMDATE := '20040101';
end;



end.

