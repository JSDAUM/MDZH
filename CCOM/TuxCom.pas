{===============================================================================
    Program ID : TuxCom.pas

    Spec       : TUXEDO ATMI/FML Function의 DELPHI 구현시
                 반복부분을 Module화하여 재정의한 UNIT.
                 Delphi에서 Tuxedo Service를 Call하는 여러 Steps를 공통화/
                 모듈화한 함수를 제공.

    Version    : 1.00

    Create     : 2001.02.15 신은석, 김현일

                 삼성SDS 통합의료정보 Package 개발팀.

    Modify     :
                  [2001.08.10 김정수]
                  - 오동작 : 서버쪽 FILSTAMP로의 설정이 이상하게 됨.
                              그래서 계속적으로 프로그램을 업데이트 하려고 함.
                  - 수정사항 : TIME + 1로 설정.
                  [2001.08.28 김정수]
                  - 윈도우 시스템 설정에 따라 각각 다른 위치에 파일 다운 받도록 수정.
                    함수 추가(SetDownDirectory, GetDirectory)
                  - 다운, 업 상황을 폼상의 TGauge 컴포넌트에 표시하기 위해 TNMFTP 컴포넌트를
                    상속받은 HcmNMFTP 클래스 생성. 동적 메시지 할당을 위한 함수 추가.
                  - FILEUPDATE.EXE를 먼저 다운받기 위해 서비스상에서 order by절 추가.
                  - FTP 응답코드를 분석하기 위한 함수 추가.(DecodeFtpReplyCode, FRCODE.ENV파일추가)
                  - ENV, INI, FLDS파일 다운은 아스키 모드로 전환.
                  [2002.08.30 박만웅]
                  - NMFTP를 IDFTP로 전환 20020830
                  [2002.08.13 이용언]
                  - 오동작 : Delphi 6.0 에서 컴파일시, GetFldVar & GetFldVar32 에서 서버에서
                    값을 받아 배열값으로 줄 때, 5.0에서와 달리 받아오는 값이 없을 경우,
                    배열선언에서 문제 발견
                  - 수정사상 : GetFldVar와 GetFldVar32 에서 배열 선언을 위해서 받아오는
                    레코드의 수를 설정하는 변수 Recordcount 변수가 0 일 경우 default 로
                    '1' 값을 가질 수 있도록 수정.
                  [2002.08.16 김정수]
                  - 윈도우 설치 디렉토리 검색중에서 폰트 디렉토리(Default :
                    C:\WINDOWS\FONTS)에 대한 고려가 제외되어 있음.
                    이를 위해 폰트디렉토리 검색을 추가함.
                  [2003.03.03 박영덕]
                  - Tmax에서의 대용량의 자료 처리를 위하여 서버에 SPUT을 신규로 작성하고
                    SGetFldVar 를 작성하고 수정함
===============================================================================}

unit TuxCom;

interface

uses Forms, Windows, Messages, SysUtils, Classes, Dialogs, WinSock, ComCtrls, FileCtrl,Gauges,
     Atmi,      // The Application to Transaction Monitor Interface
                // the BEA Tuxedo API
                // File : Atmi.pas
     Fml,       // The Field Manipulation Lanugage
                // File : Fml.pas
     Fml32,     // The Field Manipulation Lanugage
                // File : Fml32.pas
     TuxMsg,    // The Common Client, Tuxedo, Service Error Message Form
                // File : TuxMsgU1.pas
     SysMsg,    // The System Message Form
                // File : SysMsgU1.pas
     MsgCom,    // The Common Message Module
                // File : MsgCom.pas
     Registry,  // INIFile Manupulation Module
     Menus,     // MainMenu Component
     Graphics, Controls,
     VarCom,

     //NMFTP,     // NMFTP Module
     IdFTP,
     IdFTPCommon,
     IdComponent,

     TUXLOGINU

     ,Variants, StdCtrls//Tlabel 사용을 위한 것.

     ;

type

  HcmTuxMenu = class
     lLevel       :   Variant; {레벨}
     lSeqno       :   Variant; {순번}
     sMenuid      :   Variant; {메뉴ID}
     sMenuname    :   Variant; {메뉴명}
     sMenutype    :   Variant; {메뉴타입}
     sParentid    :   Variant; {상위메뉴ID}
     sApplyn      :   Variant; {적용여부}
     sSepyn       :   Variant; {구분자 여부}

     //메뉴조회(CM_MENUTREE_L)
     function List(grpid: String): Integer;
  end;

  HcmUpload = class
     sSvrip       :   Variant; {FTP_SVRIP}
     sHostname    :   Variant; {Hostname}
     sUserid      :   Variant; {FTP_USERID}
     sPasswd      :   Variant; {FTP_PASSWD}
     sDir         :   Variant; {FTP_DIR}

     //업로드정보조회(CM_UPLOADINFO_S)
     function uploadinfo: Integer;
     //Binary업로드정보조회(CM_BINUPLOAD_S)
     function binuploadinfo: Integer;
     //RCOPYCALL(CM_FILE_RCP)
     function rcopycall(HostName, RemoteFile, FTP_USERID: String): Integer;
  end;


//--park mw 20020830
//  HcmNMFTP = class(TNMFTP)
  HcmNMFTP = class(TIDFTP)
     private
     { Private declarations }
        //--park mw 20020830
        BytesToTransfer : LongWord;
     protected
     { Private declarations }
     public
     { Private declarations }
     //--park mw 20020830
     //procedure FTPPacketRecvd(Sender: TObject);
     //procedure FTPPacketSent(Sender: TObject);

     //--park mw 20020830
     procedure FTPWork(Sender: TObject; AWorkMode: TWorkMode;
       const AWorkCount: Integer);
     procedure FTPWorkBegin(Sender: TObject; AWorkMode: TWorkMode;
       const AWorkCountMax: Integer);
  end;


  DirectoryType = (_WINDOWS, _TEMP, _SYSTEM, _CURRENT);


//==============================================================================
//  TUXEDO Constants Setting Section.
//==============================================================================
const
     TPInitSize    = 512;           // tpInit Buffer Size
     FBufferSize   = 65532;         // FML Buffer MAX Size (64k)
     FBufferSize32 = 524256;        // FML32 Buffer MAX Size (512k)
     FBufferType   = 'FML';         // Buffer Type : FML
     FBufferType32 = 'FML32';       // Buffer Type : FML32
     TimeOut       = 10;            // 서비스지연 대기시간을 10초로 고정
     DefaultErrMsg = '전산실 담당자에게 문의하시고, 사용하시기 바랍니다.';
                                    // Default Error Message
     WM_MSGFORM    = WM_USER + 4;

     //시스템메시지 Part
     TF_Z115 = '의료정보 시스템 프로그램이 업데이트 되었습니다.'+Chr(13)+Chr(13)+
                '업데이트후에 재실행합니다.';

     function DecodeFtpReplyCode(iCodeParam: Integer): String;
     function SetDownDirectory(sDirParam: String):String;
     function GetDirectory(Dir: DirectoryType): string;


//==============================================================================
//  0.Functions to Call Tuxedo Services
//==============================================================================
function txSvcNXA(SvcName : String ;
                  InFld   : Array of string  ;
                  InData  : Array of Variant ;
                  OutFld  : Array of String  ;
                  OutAddr : Array of PVariant): LongInt;
          // 0.1 Call Tuxedo a Service in Non-XA mode
function txSvcXA (SvcName : String ;
                  InFld   : Array of string  ;
                  InData  : Array of Variant ;
                  OutFld  : Array of String  ;
                  OutAddr : Array of PVariant): LongInt;
          // 0.2 Call Tuxedo a Service in XA mode
function txSvc2PC(SvcName : String ;
                  InFld   : Array of string  ;
                  InData  : Array of Variant ;
                  OutFld  : Array of String  ;
                  OutAddr : Array of PVariant): LongInt;
          // 0.3 Call Tuxedo Services for 2-Phase-Commit mode
function txSvcNXA32(SvcName : String ;
                  InFld   : Array of string  ;
                  InData  : Array of Variant ;
                  OutFld  : Array of String  ;
                  OutAddr : Array of PVariant): LongInt;
          // 0.4 Call Tuxedo Services for FML32 Type Non-XA mode
function txSvcXA32 (SvcName : String ;
                  InFld   : Array of string  ;
                  InData  : Array of Variant ;
                  OutFld  : Array of String  ;
                  OutAddr : Array of PVariant): LongInt;
          // 0.5 Call Tuxedo a Service in FML32 Type XA mode
function txSvc2PC32(SvcName : String ;
                  InFld   : Array of string  ;
                  InData  : Array of Variant ;
                  OutFld  : Array of String  ;
                  OutAddr : Array of PVariant): LongInt;
          // 0.6 Call Tuxedo Services for FML32 Type 2-Phase-Commit mode

//==============================================================================
//  1.For a Task Related to Client membership
//==============================================================================
function txInit(EnvFilePath,EnvSectionName:String): Boolean;
          // 1.1 Have a client join an application. [Atmi.tpinit()]
procedure txTerm;
          // 1.2 Have a client leave an application. [Atmi.tpterm()]
function  GetIP:String;
          // 1.3 Client의 IP Address를 구하는 Module
function RRogin: Boolean;
          // 1.4 재차접속을 시도한다.
//==============================================================================
//  2.For a Task Related to Buffer management
//==============================================================================
function txAlloc  : Boolean;overload;

function txAlloc( i_num : Integer ) : Boolean;overload;
          // 2.1 Create a message buffer FML. [Atmi.tpalloc()] FML
function txAlloc32  : Boolean;overload;

function txAlloc32( i_num : Integer ) : Boolean;overload;

          // 2.2 Create a message buffer FML32. [Atmi.tpalloc()] FML32
procedure txFree;
          // 2.3 Free a message buffer. [Atmi.tpfree()] FML
procedure txFree32;
          // 2.4 Free a message buffer. [Atmi.tpfree()] FML32

//==============================================================================
//  3.FML Buffer Manipulation functions and procedures for Input.
//==============================================================================
procedure SetFldName(FldNameStr:String);
          // 3.1 FML Buffer Names Assign. FML
procedure SetFldName32(FldNameStr:String);
          // 3.2 FML32 Buffer Names Assign. FML32
function  GetFldName(FldString:String;FldIndex:Integer):String;
          // 3.3 ';'로 각각의 필드명을 구분하여 Index를 매김
procedure SetFldValue(OccurNo:Integer; const FldValue:Array of const);
          // 3.4 필드명과 대응하는 값으로 FML Buffer Assign.
procedure SetFldValue32(OccurNo:Integer; const FldValue:Array of const);
          // 3.5 필드명과 대응하는 값으로 FML32 Buffer Assign.
function  txFchg(FldName : String; ix : integer; FldValue : Variant) : Boolean;
          // 3.6 필드명과 대응하는 값으로 FML Buffer Assign.(for txSvcXXX )
function  txFchg32(FldName : String; ix : integer; FldValue : Variant) : Boolean;
          // 3.7 필드명과 대응하는 값으로 FML32 Buffer Assign.(for txSvcNXA32 )
//==============================================================================
//  4.For a Task Related to Request/Response communications.
//==============================================================================
function  txGetFMIS(ServiceName:String):Boolean;
          // 4.0 Get from Server non-transaction mode(TPNOTIME) FML --> 2003.05.27 BY 이창환
function  txGetF(ServiceName:String):Boolean;
          // 4.1 Get from Server non-transaction mode(NON_XA) FML
function  txGetNF(ServiceName:String):Boolean;
          // 4.1-1 NonForm
function  txGetF32(ServiceName:String):Boolean;
          // 4.2 Get from Server non-transaction mode(NON_XA) FML32
function  txGetFile(ServiceName:String; var Filename: String):Boolean;
          // 4.3.1 Get from Server non-transaction mode(NON_XA) FML32
function  txGetToFile(ServiceName:String; Mode, Dir, Filename: String):Boolean;
          // 4.3.2 Get from Server non-transaction mode(NON_XA) FML32
function  txPutF(ServiceName:String):Boolean;overload;
          // 4.4.1 Put to Server transaction mode(XA) FML
function  txPutF(ServiceName:String;lTimeout:LongInt):Boolean;overload;
          // 4.4.2 Put to Server transaction mode(XA) FML
function  txPutF32(ServiceName:String):Boolean;overload;
          // 4.5.1 Put to Server transaction mode(XA) FML32
function  txPutF32(ServiceName:String;lTimeout:LongInt):Boolean;overload;
          // 4.5.2 Put to Server transaction mode(XA) FML32
function  txCall(ServiceName:String):Boolean;overload;
          // 4.6.1 tpcall() transaction mode(XA) FML
function  txCall(ServiceName:String;lTimeout:LongInt):Boolean;overload;
          // 4.6.2 tpcall() transaction mode(XA) FML
function  txCall32(ServiceName:String):Boolean;overload;
          // 4.7.1 tpcall() transaction mode(XA) FML32
function  txCall32(ServiceName:String;lTimeout:LongInt):Boolean;overload;
          // 4.7.2 tpcall() transaction mode(XA) FML32
function  txTPCall(ServiceName:String):Boolean;
          // 4.8 Two Phase Commit용 tpcall FML
function  txTPCall32(ServiceName:String):Boolean;
          // 4.9 Two Phase Commit용 tpcall FML32
function  txGetFDll(ServiceName,DllName:String):Boolean;
          // 4.10 txGetF in Dll without Form (NON_XA) FML
function  txGetFDll32(ServiceName,DllName:String):Boolean;
          // 4.11 txGetF in Dll without Form (NON_XA) FML32
function  txPutFDll(ServiceName,DllName:String):Boolean;overload;
          // 4.12.1 txPutF in Dll without Form (XA) FML
function  txPutFDll(ServiceName,DllName:String;lTimeout:LongInt):Boolean;overload;
          // 4.12.2 txPutF in Dll without Form (XA) FML
function  txPutFDll32(ServiceName,DllName:String):Boolean;overload;
          // 4.13.1 txPutF in Dll without Form (XA) FML32
function  txPutFDll32(ServiceName,DllName:String;lTimeout:LongInt):Boolean;overload;
          // 4.13.2 txPutF in Dll without Form (XA) FML32

//==============================================================================
//  5.For a Task Related to Transaction management.
//==============================================================================
function  txBegin:Boolean;overload;
          // 5.1.1 Begin a transaction [Atmi.tpbegin()]
function  txBegin(lTimeout:LongInt):Boolean;overload;
          // 5.1.2 Begin a transaction [Atmi.tpbegin()]
function  txCommit:Boolean;
          // 5.2 Commit the current trasaction [Atmi.tpcommit()]
procedure txAbort;
          // 5.3 Roll back the current transaction [Atmi.tpabort()]

//==============================================================================
//  6.FML Buffer functions and procedures for Data Received From Server.
//==============================================================================
procedure GetFldVar(FldNameStr:String; var VariantValue:Variant);
          // 6.1 조회된 결과를 Variant형 변수에 Assign (Multi) FML

procedure SGetFldVar(FldNameStr:String; var VariantValue:Variant);

procedure GetFldVar32(FldNameStr:String; var VariantValue:Variant);
          // 6.2 조회된 결과를 Variant형 변수에 Assign (Multi) FML32
//function  GetStrVal(FieldName:String; OccrNo:Integer):String;
function  GetStrVal(Fieldid:Integer; OccrNo:Integer):String;                    // 2003.02.14
          // 6.3 조회된 결과를 String형 변수에 Assign (Single) FML
function  GetStrVal32(FieldName:String; OccrNo:Integer):String;
          // 6.4 조회된 결과를 String형 변수에 Assign (Single) FML32

          // GetStrVal과 같은기능 (TMAX API가 다름)
function  SGetStrVal(fld_id:integer; pos_ofs:pFLDPOS):String;
          // 6.X 조회된 결과를 Integer형 변수에 Assign (Single) FML   20030227
function  SGetIntVal(fld_id:integer; pos_ofs:pFLDPOS):Integer;

//function  GetIntVal(FieldName:String; OccrNo:Integer):Integer;
function  GetIntVal(Fieldid:Integer; OccrNo:Integer):Integer;                    // 2003.02.14

          // 6.5 조회된 결과를 Integer형 변수에 Assign (Single) FML
function  GetIntVal32(FieldName:String; OccrNo:Integer):Integer;
          // 6.6 조회된 결과를 Integer형 변수에 Assign (Single) FML32
//function  GetDblVal(FieldName:String; OccrNo:Integer):Double;
function  GetDblVal(Fieldid:Integer; OccrNo:Integer):Double;                    // 2003.02.14
          // 6.7 조회된 결과를 Double형 변수에 Assign (Single) FML
function  GetDblVal32(FieldName:String; OccrNo:Integer):Double;
          // 6.8 조회된 결과를 Double형 변수에 Assign (Single) FML32

function  SGetIntToS(Fieldid:Integer; pos_ofs:pFLDPOS):String;

//function  GetIntToS(FieldName:String; OccrNo:Integer):String;
function  GetIntToS(Fieldid:Integer; OccrNo:Integer):String;                    // 2003.02.14
          // 6.9 조회된 Integer형 결과를 String형 변수에 Assign (Single) FML
function  GetIntToS32(FieldName:String; OccrNo:Integer):String;
          // 6.10 조회된 Integer형 결과를 String형 변수에 Assign (Single) FML32
//function  GetDblToS(FieldName:String; OccrNo:Integer):String;
function GetDblToS(Fieldid:Integer; OccrNo:Integer):String;                     // 2002.02.14
          // 6.11 조회된 Double형 결과를 String형 변수에 Assign (Single) FML
function  GetDblToS32(FieldName:String; OccrNo:Integer):String;
          // 6.12 조회된 Double형 결과를 String형 변수에 Assign (Single) FML32
function  GetFldVarFile(LocalFile: String; Deli: String; VariantValue: Array of PVariant): LongInt; overload;
          // 6.13.1 조회된 결과를 Variant형 변수에 Assign (Multi) FML32
function  GetFldVarFile(LocalFile: String; Deli, LF: String; VariantValue: Array of PVariant): LongInt; overload;
          // 6.13.2 조회된 결과를 Variant형 변수에 Assign (Multi) FML32

//==============================================================================
//  7.Records Counting and Message Returning functions and procedures.
//==============================================================================
function  GetRecordCnt(FieldName:String):LongInt;
          // 7.1 조회된 Record수를 읽어 Return하는 function. FML
function  GetRecordCnt32(FieldName:String):LongInt;
          // 7.2 조회된 Record수를 읽어 Return하는 function. FML32
function  GetTxMsg:String;
          // 7.3 TUXEDO Service Message를 읽어 Return하는 function.
function  GetTxErrNo:Integer;
          // 7.4 Return Error No.
function  GetTxUrCode:Integer;
          // 7.5 Return tpurcode

//==============================================================================
//  8.For a Task Related to Event-based communication
//==============================================================================
procedure txSetUnSol;
          // 8.1 Set unsolicited message call-back [Atmi.tpsetunsol()]
procedure txSetUnSolNil;
          // 8.2 function Pointer를 nil로 setting.
function  txChkUnSol:Integer;
          // 8.3 Check the arrival of unsolicited message [Atmi.tpchkunsol()]
function  txBroadCast(MName,UName,CName,MsgStr:String):Integer;
          // 8.4 Send messages to several clients [Atmi.tpbroadcast()]
procedure txUnsolAct(MsgA:Pointer; len,flags:LongInt);export;stdcall;
          // 8.5 Broadcasting Call procedure.

//==============================================================================
//  9.Image Data functions and procedures.
//==============================================================================
procedure GetFldImg(FldNameStr:String; var ImgStream:TMemoryStream);
          // 9.1 Image Data Receiving procedure. FML
procedure GetFldImg32(FldNameStr:String; var ImgStream:TMemoryStream);
          // 9.2 Image Data Receiving procedure. FML32
procedure SetFldImage(OccurNo:Integer;FldNameStr:String; ImgStream:TMemoryStream);
          // 9.3 Image Data Sending procedure. FML
procedure SetFldImage32(OccurNo:Integer;FldNameStr:String; ImgStream:TMemoryStream);
          // 9.4 Image Data Sending procedure. FML32

//==============================================================================
//  10.For a Task Related to Conversational communications.
//==============================================================================
function  txConnect(ServiceName:String):Boolean;
          // 10.1 Begin a conversation with a service [Atmi.tpconnect()]
function  txSend:Boolean;
          // 10.2 Send a message in a conversation [Atmi.tpsend()]
function  txRecv:Boolean;
          // 10.3 Receive a message in a conversation [Atmi.tprecv()]
procedure txDiscon;
          // 10.4 Abnormally terminate a conversation [Atmi.tpdiscon()]

//==============================================================================
//  11.For a Task Related to Error Messages and System Messages.
//==============================================================================
procedure ShowErrMsg; overload;
          //  11.1 Show Common Client, Tuxedo, Service Error Messages.
procedure ShowErrMsg(StatusBar: TStatusBar); overload;
          //  11.2 Show Common Client, Tuxedo, Service Error Messages.
procedure ShowSysMsg;
          //  11.3 Show System Messages.

//==============================================================================
//  12.Etc.
//==============================================================================
Function TstringsToArray(var vArr : Variant; sArr : Tstrings;
                            LowIx : integer; HighIx : integer)         : Variant;

//==============================================================================
//  13.FTP Module Part
//==============================================================================
//TUXFTP Instance Create
function InitFTP: Boolean;

//TUXFTP Instance Free
function FreeFTP: Boolean;

//TUXFTP Set FTP File Type ASCII
function SetASCIIFTP: Boolean;

//TUXFTP Set FTP File Type Binary
function SetBINFTP: Boolean;

//TUXFTP Connect Host with Server IP, USERID, PASSWORD
function ConnectFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD: String): Boolean;

//TUXFTP Disconnect Host
function DisconnectFTP: Boolean;

//TUXFTP File Download
function DownloadFTP(RemoteFile, LocalFile: String): Boolean;

//TUXFTP File Get
//--park mw 20020830
//function GetFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
//                     RemoteFile, LocalFile: String; FTP_MODE: Integer; FileErase: Boolean): Boolean;
function GetFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                     RemoteFile, LocalFile: String; FTP_MODE: TIdFTPTransferType; FileErase: Boolean): Boolean;

//TUXFTP ASCII File Get
function GetASCIIFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                     RemoteFile, LocalFile: String; FileErase: Boolean): Boolean;

//TUXFTP BINARY File Get
function GetBINFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                     RemoteFile, LocalFile: String; FileErase: Boolean): Boolean;

//TUXFTP File Upload
function UpFTP(LocalFile, RemoteFile: String): Boolean;

//TUXFTP File Get
//--park mw 20020830
//function PutFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
//                    LocalFile, RemoteFile: String; FTP_MODE: Integer): Boolean;
function PutFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                    LocalFile, RemoteFile: String; FTP_MODE: TIdFTPTransferType): Boolean;


//TUXFTP ASCII File Get
function PutASCIIFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                     LocalFile, RemoteFile: String): Boolean;

//TUXFTP BINARY File Get
function PutBINFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                   LocalFile, RemoteFile: String): Boolean;

//TUXFTP File Size Check
//--park mw 20020830
//function CheckFileSizeFTP(LocalFile: String; FTP_FILESIZE: LongInt; FTP_MODE: Integer): Boolean;
function CheckFileSizeFTP(LocalFile: String; FTP_FILESIZE: LongInt; FTP_MODE: TIdFTPTransferType): Boolean;

//TUXFTP Get RemoteFile Name
function GetLocalFileName(RemoteFile: String): String;

//TUXFTP Get RemoteFile Name
function GetFileName(LocalFile: String): String;

//TUXFTP Set LocalFile Date
function SetLocalFileDate(LocalFile, FTP_DATETIME: String): Boolean;

//TUXFTP Delete RemoteFile Date
function DeleteRemoteFile(RemoteFile: String): Boolean;

//TUXFTP Set FTP Env
function SetFTPEnv: Boolean;

//TUXFTP Decoder
Function DecodeString(S: String; LF : String) : String;

//TUXFTP txUpload
Function txUpload(LocalFile: String; var RemoteFile: String): Boolean; overload;

//TUXFTP txUpload
Function txUpload(LocalFile, Mode: String; var RemoteFile: String): Boolean; overload;

//TUXFTP txBinUpload
Function txBinUpload(LocalFile, Mode: String; var RemoteFile: String): Boolean;

//TUXFTP GetUploadInfo
function GetUploadInfo(var FTP_SVRIP, FTP_USERID, FTP_PASSWD, FTP_HOSTNAME, FTP_DIR: String): Boolean;

//TUXFTP GetBinUploadInfo
function GetBinUploadInfo(var FTP_SVRIP, FTP_USERID, FTP_PASSWD, FTP_HOSTNAME, FTP_DIR: String): Boolean;

//TUXFTP SendRCopyCall
function SendRCopyCall(HostName, RemoteFile, FTP_USERID: String): Boolean;

//==============================================================================
//  14.Menu Setting Module
//==============================================================================

//MainMenu Create
function CreateMainMenu: Boolean;

//Get Local MainMenu Componenet
function GetLocalMainMenu: TMainMenu;

//SetMainMenu
function SetMainMenu: Boolean;

//GetMainMenuData
function GetMainMenuData(LocalMenu: TMainMenu; grpid: String): Boolean;

//SetMenu
function SetMenu(LocalMenu, DataMenu: TMainMenu; Row: Integer): Boolean;

//MakeMenu
function MakeMenu(DataMenu: TMainMenu; Row: Integer): Boolean;

//MakeForm
function MakeForm(LocalMenu, DataMenu: TMainMenu; Row: Integer): Boolean;

//GetMenuItem
function GetMenuItem(menuid: String; MainMenu: TMainMenu): TMenuItem;

//GetMenuItemText
function GetMenuItemText(menuid: String; MenuItem: TMenuItem; var ResultItem: TMenuItem): TMenuItem;

//SetSystemFile Recent Setting
//function SetRecentSystem(sCompid, sFileid, sFiletime, sDir, sComptype: Variant;FTP_SVRIP, FTP_USERID, FTP_PASSWD: String): Boolean;
function SetRecentSystem(sCompid, sFileid, sFiletime, sDir, sComptype: Variant;FTP_SVRIP, FTP_USERID, FTP_PASSWD: String;lbFileName: TLabel;gaugeTransferStat: TGauge): Boolean;

//시스템에 맞는 DateTime Format으로 변환
function GetDateTimeString(FileDateTime: String): String;

//TUXFTP GetServerAddr, 김송주 2015-03-06
function GetServerAddr: String;

//==============================================================================
//  Global Variables Setting Section.
//==============================================================================
var
    TUXFTP       : HcmNMFTP;         // FTP Component
    transf       : Pointer;          // FML Buffer Pointer.
    strbuf       : Pointer;          // FML Buffer Pointer. (2003.02.17 박종엽)
    FldName      : String;           // Field Names Concated String.
    txMsg        : String;           // Service Message.
    UserStr      : String;           // UserID & UserName
    CltStr       : String;           // Client IP Address.
    FormStr      : String;           //
    ConnectID    : LongInt;          // Conversational Mode tpsend/tprecv ID
    Connected    : Boolean;          // Connection Success 여부
    revent       : LongInt;          // Conversational Mode parameter
    funcp        : TFarProc;         // function Pointer
    tpMessage    : PChar;            // Broadcast/Notify Message
    localdir     : String;           // FTP Local File Download Directory
    TuxMenu      : TMainMenu;        // MainMenu Controlled by Data
    cmTuxMenu    : HcmTuxMenu;       // Menu 관련 Class

    SvrStr       : String;           //서버IP가져오기

implementation
//==============================================================================
//  0.Functions to Call Tuxedo Services
//==============================================================================
//       0.1 Call Tuxedo a Service in Non-XA mode
function txSvcNXA(SvcName : String ;
                  InFld   : Array of string  ;
                  InData  : Array of Variant ;
                  OutFld  : Array of String  ;
                  OutAddr : Array of PVariant): LongInt;
var
   len  : LongInt;
   i, j : integer;
begin
     if not txAlloc then
     begin
          ShowMessageM(txMsg);
          Result := -101;                                 // -101 Alloc Error
          exit;
     end;

     result := 0;

     for i := 0 to High(InFld) do
     begin
          if not VarIsArray(InData[i]) then
          begin
               if not txFchg(InFld[i], 0, InData[i]) then
               begin
                    txFree;
                    ShowMessageM(txMsg);
                    result := -201;                           // -201 Fchg Error
                    exit;
               end;
          end
          else
          begin
               for j := VarArrayLowBound(InData[i],1) to VarArrayHighBound(InData[i],1) do
               begin
                    if not txFchg(InFld[i], j, InData[i][j]) then
                    begin
                         txFree;
                         ShowMessageM(txMsg);
                         Result := -201;                       // -201 Fchg Error
                         exit;
                    end;
               end;
          end;
     end;

     { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := paramStr(13);

     if (Screen.ActiveForm = nil) then
        FormStr := Application.MainForm.Name
     else
        FormStr := Screen.ActiveForm.Name;

     {Logging을 위해 TxGetF, TxPutF에 UserID, IP Address, ActiveForm Name 추가}
     txFChg('LOG_USERNAME', 0, UserStr);
     txFChg('LOG_CLTNAME' , 0, CltStr );
     txFChg('LOG_FORMNAME', 0, FormStr);

     if tpcall(PChar(SvcName), transf, 0, @transf, @len, 0) = -1 then
     begin
          if gettperrno <> TPESVCFAIL then
          begin
               Result := -1 * gettperrno - 900;
               txMsg := 'tpcall 오류발생, ' +
                        StrPas(tpstrerror(gettperrno)) + '(' + IntToStr(gettperrno) + ')';
               ShowMessageM(txMsg);
          end
          else
          begin
               Result := -1 ;
               txMsg  := 'Service 오류발생, ' + chr(10) +
                         StrPas(Fvals(transf, Fldid('STATLIN'), 0));
          end;
          txFree;
          exit;
     end;

     for j := 0 to High(OutFld) do
     begin
          GetFldVar(OutFld[j], OutAddr[j]^);
     end;

     if not high(OutFld) < 0 then
     begin
          Result := Foccur(Transf, Fldid(Pchar(OutFld[0])));
     end;

     txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));

     txFree;
end;

//       0.2 Call Tuxedo a Service in XA mode
function txSvcXA(SvcName : String ;
                 InFld   : Array of string  ;
                 InData  : Array of Variant ;
                 OutFld  : Array of String  ;
                 OutAddr : Array of PVariant): LongInt;
var
   len   : LongInt;
   i , j : integer;
begin
     if not txAlloc then
     begin
          ShowMessageM(txMsg);
          Result := -101;                                 // -101 Alloc Error
          exit;
     end;

     Result := 0;

     if (tpbegin(TimeOut, 0) = -1) then    //---------- XA -----------
     begin
          txMsg := 'tpbegin failed, ' +
                   StrPas(tpstrerror(gettperrno)) +
                   '(' + IntToStr(gettperrno) + ')' ;
          txFree;
          Result := -301;                                 // -301 Tpbegin Error
          ShowMessageM(txMsg);
          Exit;
     end;

     for i := 0 to High(InFld) do
     begin
          if not VarIsArray(InData[i]) then
          begin
               if not txFchg(InFld[i], 0, InData[i]) then
               begin
                    txAbort;                 //---------- XA -----------
                    txFree;
                    Result := -201;                          // -201 Fchg Error
                    ShowMessageM(txMsg);
                    exit;
               end;
          end
          else
          begin
               for j := VarArrayLowBound(InData[i],1) to VarArrayHighBound(InData[i],1) do
               begin
                    if not txFchg(InFld[i], j, InData[i][j]) then
                    begin
                         txAbort;               //---------- XA -----------
                         txFree;
                         Result := -201;
                         ShowMessageM(txMsg);                  // -201 Fchg Error
                         exit;
                    end;
               end;
          end;
     end;

     { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := paramStr(13);

     if (Screen.ActiveForm = nil) then
        FormStr := Application.MainForm.Name
     else
        FormStr := Screen.ActiveForm.Name;

     {Logging을 위해 TxGetF, TxPutF에 UserID, IP Address, ActiveForm Name 추가}
     txFChg('LOG_USERNAME', 0, UserStr);
     txFChg('LOG_CLTNAME' , 0, CltStr );
     txFChg('LOG_FORMNAME', 0, FormStr);

     if tpcall(PChar(SvcName), transf, 0, @transf, @len, 0) = -1 then
     begin
          if gettperrno <> TPESVCFAIL then
          begin
               Result := -1 * gettperrno - 900;
               txMsg := 'tpcall ' + MakeMsgStr(CF_B330, NF260, NF100) + chr(10) +
                        StrPas(tpstrerror(gettperrno)) +
                        '(' + IntToStr(gettperrno) + ')';
               ShowMessageM(txMsg);
          end
          else
          begin
               Result := -1 ;
               txMsg  := 'Service ' + MakeMsgStr(CF_B330, NF260, NF100) + chr(10) +
                         StrPas(Fvals(transf, Fldid('STATLIN'), 0));
               ShowErrMsg;
          end;

          txAbort;                      //---------- XA -----------
          txFree;
          exit;
     end;

     if (tpcommit(0) = -1) then          //---------- XA -----------
     begin
          txMsg := 'tpcommit failed, ' +
                   StrPas(tpstrerror(gettperrno)) +
                   '(' + IntToStr(gettperrno) + ')' ;
          txAbort;
          txFree;
          Result := -302;                               // -302 tpcommit Error
          ShowMessageM(txMsg);
          exit;
     end;

     for j := 0 to High(OutFld) do
     begin
          GetFldVar(OutFld[j], OutAddr[j]^);
     end;

     if not high(OutFld) < 0 then
     begin
          Result := Foccur(Transf, Fldid(Pchar(OutFld[0])));
     end;

     txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));

     txFree;
end;

//       0.3 Call Tuxedo Services for 2-Phase-Commit mode
function txSvc2PC(SvcName : String ;
                  InFld   : Array of string  ;
                  InData  : Array of Variant ;
                  OutFld  : Array of String  ;
                  OutAddr : Array of PVariant): LongInt;
var
   len   : LongInt;
   i , j : integer;
begin
     if not txAlloc then
     begin
          ShowMessageM(txMsg);
          Result := -101;                               // -101 Alloc Error
          exit;
     end;

     Result := 0;

     for i := 0 to High(InFld) do
     begin
          if not VarIsArray(InData[i]) then
          begin
               if not txFchg(InFld[i], 0, InData[i]) then
               begin
                    txAbort;                 //---------- XA -----------
                    txFree;
                    Result := -201;                         // -201 Fchg Error
                    ShowMessageM(txMsg);
                    exit;
               end;
          end
          else
          begin
               for j := VarArrayLowBound(InData[i],1) to VarArrayHighBound(InData[i],1) do
               begin
                    if not txFchg(InFld[i], j, InData[i][j]) then
                    begin
                         txAbort;               //---------- XA -----------
                         txFree;
                         Result := -201;                      // -201 Fchg Error
                         ShowMessageM(txMsg);
                         exit;
                    end;
               end;
          end;

     end;

     { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := paramStr(13);

     if (Screen.ActiveForm = nil) then
        FormStr := Application.MainForm.Name
     else
        FormStr := Screen.ActiveForm.Name;

     {Logging을 위해 TxGetF, TxPutF에 UserID, IP Address, ActiveForm Name 추가}
     txFChg('LOG_USERNAME', 0, UserStr);
     txFChg('LOG_CLTNAME' , 0, CltStr );
     txFChg('LOG_FORMNAME', 0, FormStr);

     if tpcall(PChar(SvcName), transf, 0, @transf, @len, 0) = -1 then
     begin
          if gettperrno <> TPESVCFAIL then
          begin
               Result := -1 * gettperrno - 900;
               txMsg := //'tpcall 오류발생, ' +
                        StrPas(tpstrerror(gettperrno)) +
                        '(' + IntToStr(gettperrno) + ')';
               ShowMessageM(txMsg);
          end
          else
          begin
               Result := -1 ;               // service error(ex: Oracle, user defined)
               txMsg  := //'Service 오류발생, ' + chr(10) +
                         StrPas(Fvals(transf, Fldid('STATLIN'), 0));
          end;

          txAbort;                      //---------- XA -----------
          txFree;
          exit;
     end;

     for j := 0 to High(OutFld) do
     begin
          GetFldVar(OutFld[j], OutAddr[j]^);
     end;

     if not high(OutFld) < 0 then
     begin
          Result := Foccur(Transf, Fldid(Pchar(OutFld[0])));
     end;

     txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));

     txFree;
end;

//       0.4 Call Tuxedo Services for FML32 Type Non-XA mode
function txSvcNXA32(SvcName : String ;
                  InFld   : Array of string  ;
                  InData  : Array of Variant ;
                  OutFld  : Array of String  ;
                  OutAddr : Array of PVariant): LongInt;
var
   len  : LongInt;
   i, j : integer;
begin
     if not txAlloc32 then
     begin
          ShowMessageM(txMsg);
          Result := -101;                                 // -101 Alloc Error
          exit;
     end;

     result := 0;

     for i := 0 to High(InFld) do
     begin
          if not VarIsArray(InData[i]) then
          begin
               if not txFchg32(InFld[i], 0, InData[i]) then
               begin
                    txFree32;
                    ShowMessageM(txMsg);
                    result := -201;                           // -201 Fchg Error
                    exit;
               end;
          end
          else
          begin
               for j := VarArrayLowBound(InData[i],1) to VarArrayHighBound(InData[i],1) do
               begin
                    if not txFchg32(InFld[i], j, InData[i][j]) then
                    begin
                         txFree32;
                         ShowMessageM(txMsg);
                         Result := -201;                       // -201 Fchg Error
                         exit;
                    end;
               end;
          end;
     end;

     { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := paramStr(13);

     if (Screen.ActiveForm = nil) then
        FormStr := Application.MainForm.Name
     else
        FormStr := Screen.ActiveForm.Name;

     {Logging을 위해 TxGetF, TxPutF에 UserID, IP Address, ActiveForm Name 추가}
     txFChg32('LOG_USERNAME', 0, UserStr);
     txFChg32('LOG_CLTNAME' , 0, CltStr );
     txFChg32('LOG_FORMNAME', 0, FormStr);

     if tpcall(PChar(SvcName), transf, 0, @transf, @len, 0) = -1 then
     begin
          if gettperrno <> TPESVCFAIL then
          begin
               Result := -1 * gettperrno - 900;
               txMsg := 'tpcall 오류발생, ' +
                        StrPas(tpstrerror(gettperrno)) + '(' + IntToStr(gettperrno) + ')';
               ShowMessageM(txMsg);
          end
          else
          begin
               Result := -1 ;
               txMsg  := 'Service 오류발생, ' + chr(10) +
                         StrPas(Fvals32(transf, Fldid32('STATLIN'), 0));
          end;
          txFree32;
          exit;
     end;

     for j := 0 to High(OutFld) do
     begin
          GetFldVar32(OutFld[j], OutAddr[j]^);
     end;

     if not high(OutFld) < 0 then
     begin
          Result := Foccur32(Transf, Fldid32(Pchar(OutFld[0])));
     end;

     txMsg := StrPas(Fvals32(transf, Fldid32('STATLIN'), 0));

     txFree32;
end;

//       0.5 Call Tuxedo a Service in FML32 Type XA mode
function txSvcXA32(SvcName : String ;
                 InFld   : Array of string  ;
                 InData  : Array of Variant ;
                 OutFld  : Array of String  ;
                 OutAddr : Array of PVariant): LongInt;
var
   len   : LongInt;
   i , j : integer;
begin
     if not txAlloc32 then
     begin
          ShowMessageM(txMsg);
          Result := -101;                                 // -101 Alloc Error
          exit;
     end;

     Result := 0;

     if (tpbegin(TimeOut, 0) = -1) then    //---------- XA -----------
     begin
          txMsg := 'tpbegin failed, ' +
                   StrPas(tpstrerror(gettperrno)) +
                   '(' + IntToStr(gettperrno) + ')' ;
          txFree32;
          Result := -301;                                 // -301 Tpbegin Error
          ShowMessageM(txMsg);
          Exit;
     end;

     for i := 0 to High(InFld) do
     begin
          if not VarIsArray(InData[i]) then
          begin
               if not txFchg32(InFld[i], 0, InData[i]) then
               begin
                    txAbort;                 //---------- XA -----------
                    txFree32;
                    Result := -201;                          // -201 Fchg Error
                    ShowMessageM(txMsg);
                    exit;
               end;
          end
          else
          begin
               for j := VarArrayLowBound(InData[i],1) to VarArrayHighBound(InData[i],1) do
               begin
                    if not txFchg32(InFld[i], j, InData[i][j]) then
                    begin
                         txAbort;               //---------- XA -----------
                         txFree32;
                         Result := -201;
                         ShowMessageM(txMsg);                  // -201 Fchg Error
                         exit;
                    end;
               end;
          end;
     end;

     { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := paramStr(13);

     if (Screen.ActiveForm = nil) then
        FormStr := Application.MainForm.Name
     else
        FormStr := Screen.ActiveForm.Name;

     {Logging을 위해 TxGetF, TxPutF에 UserID, IP Address, ActiveForm Name 추가}
     txFChg32('LOG_USERNAME', 0, UserStr);
     txFChg32('LOG_CLTNAME' , 0, CltStr );
     txFChg32('LOG_FORMNAME', 0, FormStr);

     if tpcall(PChar(SvcName), transf, 0, @transf, @len, 0) = -1 then
     begin
          if gettperrno <> TPESVCFAIL then
          begin
               Result := -1 * gettperrno - 900;
               txMsg := 'tpcall 오류발생, ' + chr(10) +
                        StrPas(tpstrerror(gettperrno)) +
                        '(' + IntToStr(gettperrno) + ')';
               ShowMessageM(txMsg);
          end
          else
          begin
               Result := -1 ;
               txMsg  := 'Service 오류발생, ' + chr(10) +
                         StrPas(Fvals(transf, Fldid('STATLIN'), 0));
          end;

          txAbort;                      //---------- XA -----------
          txFree32;
          exit;
     end;

     if (tpcommit(0) = -1) then          //---------- XA -----------
     begin
          txMsg := 'tpcommit failed, ' +
                   StrPas(tpstrerror(gettperrno)) +
                   '(' + IntToStr(gettperrno) + ')' ;
          txAbort;
          txFree32;
          Result := -302;                               // -302 tpcommit Error
          ShowMessageM(txMsg);
          exit;
     end;

     for j := 0 to High(OutFld) do
     begin
          GetFldVar32(OutFld[j], OutAddr[j]^);
     end;

     if not high(OutFld) < 0 then
     begin
          Result := Foccur32(Transf, Fldid32(Pchar(OutFld[0])));
     end;

     txMsg := StrPas(Fvals32(transf, Fldid32('STATLIN'), 0));

     txFree32;
end;

//       0.6 Call Tuxedo Services for FML32 Type 2-Phase-Commit mode
function txSvc2PC32(SvcName : String ;
                  InFld   : Array of string  ;
                  InData  : Array of Variant ;
                  OutFld  : Array of String  ;
                  OutAddr : Array of PVariant): LongInt;
var
   len   : LongInt;
   i , j : integer;
begin
     if not txAlloc32 then
     begin
          ShowMessageM(txMsg);
          Result := -101;                               // -101 Alloc Error
          exit;
     end;

     Result := 0;

     for i := 0 to High(InFld) do
     begin
          if not VarIsArray(InData[i]) then
          begin
               if not txFchg32(InFld[i], 0, InData[i]) then
               begin
                    txAbort;                 //---------- XA -----------
                    txFree32;
                    Result := -201;                         // -201 Fchg Error
                    ShowMessageM(txMsg);
                    exit;
               end;
          end
          else
          begin
               for j := VarArrayLowBound(InData[i],1) to VarArrayHighBound(InData[i],1) do
               begin
                    if not txFchg32(InFld[i], j, InData[i][j]) then
                    begin
                         txAbort;               //---------- XA -----------
                         txFree32;
                         Result := -201;                      // -201 Fchg Error
                         ShowMessageM(txMsg);
                         exit;
                    end;
               end;
          end;

     end;

     { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := paramStr(13);

     if (Screen.ActiveForm = nil) then
        FormStr := Application.MainForm.Name
     else
        FormStr := Screen.ActiveForm.Name;

     {Logging을 위해 TxGetF, TxPutF에 UserID, IP Address, ActiveForm Name 추가}
     txFChg32('LOG_USERNAME', 0, UserStr);
     txFChg32('LOG_CLTNAME' , 0, CltStr );
     txFChg32('LOG_FORMNAME', 0, FormStr);

     if tpcall(PChar(SvcName), transf, 0, @transf, @len, 0) = -1 then
     begin
          if gettperrno <> TPESVCFAIL then
          begin
               Result := -1 * gettperrno - 900;
               txMsg := 'tpcall 오류발생, ' +
                        StrPas(tpstrerror(gettperrno)) +
                        '(' + IntToStr(gettperrno) + ')';
               ShowMessageM(txMsg);
          end
          else
          begin
               Result := -1 ;               // service error(ex: Oracle, user defined)
               txMsg  := 'Service 오류발생, ' + chr(10) +
                         StrPas(Fvals(transf, Fldid('STATLIN'), 0));
          end;

          txAbort;                      //---------- XA -----------
          txFree32;
          exit;
     end;

     for j := 0 to High(OutFld) do
     begin
          GetFldVar32(OutFld[j], OutAddr[j]^);
     end;

     if not high(OutFld) < 0 then
     begin
          Result := Foccur32(Transf, Fldid32(Pchar(OutFld[0])));
     end;

     txMsg := StrPas(Fvals32(transf, Fldid32('STATLIN'), 0));

     txFree32;
end;

//==============================================================================
//  1.For a Task Related to Client membership.
//==============================================================================

// 1.1 Have a client join an application.
function TxInit(EnvFilePath,EnvSectionName:String): Boolean;
          // EnvFilePath : Client 환경 File의 절대 경로
          // EnvSectionName : Delphi 프로젝트별 환경 구분 Section명
var
    tpinfop : pTPINIT;
begin
     Result := True;

     if (tuxreadenv(PChar(EnvFilePath), PChar(G_SVRID)) = -1) then
     begin
          ShowMessageM('환경 화일이 지워졌거나 손상되었습니다.' +
                      #13#10 + #13#10 + '전산실 담당자에게 문의하시기 바랍니다.');
          Result := False;
          Exit;
     end;

     // TPINIT Record Allocation
     tpinfop := tpalloc('TPINIT', nil, TPInitSize);

     if (ParamStr(1) <> '') then
     begin
          // UserID and UserName Received from Connection Program.
          UserStr := ParamStr(1) + ParamStr(2);
     end;

     // Client IP Address
     CltStr := GetIP;

     // Parameters Assign
     StrCopy(tpinfop.usrname,PChar(UserStr));
     StrCopy(tpinfop.cltname,PChar(CltStr));    // Client IP Address
     tpinfop.flags   := TPU_DIP;                // initialization flags
     tpinfop.data    := 0;                      // length of app specific data
     tpinfop.datalen := 0;                      // placeholder for app data

     // Check The TPINIT Interface Structure Pointer
     if (tpinfop = nil) then
     begin
          ShowMessageM('tpalloc failed, ' + StrPas(tpstrerror(gettperrno)));
          Result := False;
          Exit;
     end;

     // TPINIT Process
     if (tpinit(tpinfop) = -1) then
     begin
          ShowMessageM('tpinit failed, ' + StrPas(tpstrerror(gettperrno)));
          tpfree(tpinfop);
          Result := False;
          exit;
     end;

     // TPFREE The TPINIT Interface Structure Pointer
     tpfree(tpinfop);

     // Sets the method for handling unsolicited message
     txSetUnSol;

     Result := SetFTPEnv;
end;

// 1.2 Have a client leave an application [Atmi.tpterm()]
procedure TxTerm;
begin
     tpterm();
end;

// 1.3 Client의 IP Address를 구하는 Module
function GetIP:String;
var
   HostName : PChar;
   pHostEnt_ : PHostEnt;
   wVersionRequested : WORD;
   wsaData : TWSADATA;
   szAddr : String;
begin
     Result := '';
     wVersionRequested := MAKEWORD(1, 1);
     HostName := nil;
     if (WSAStartup(wVersionRequested, wsaData) <> 0) then exit;
     try
        HostName := AllocMem(255);
        if (Winsock.gethostname(Hostname, 255) <> 0) then exit;
        pHostEnt_  := Winsock.gethostbyname(HostName);
        if (pHostEnt_ = nil) then exit;
        szAddr := IntToStr(Ord((pHostEnt_^.h_addr_list^)^)) + '.';
        szAddr := szAddr + IntToStr(Ord((pHostEnt_^.h_addr_list^ +1)^)) + '.';
        szAddr := szAddr + IntToStr(Ord((pHostEnt_^.h_addr_list^ +2)^)) + '.';
        szAddr := szAddr + IntToStr(Ord((pHostEnt_^.h_addr_list^ +3)^));
        Result := szAddr;
     finally
            if (HostName <> nil) then FreeMem(HostName);
     end;
end;

// 1.4 재차접속을 시도한다.
function RRogin: Boolean;
var
    login, isclose : boolean;
    trycnt: Integer;
begin
     txTerm;
     txInit('C:\uniHIS\env\his.env',G_SVRID);
     trycnt := 1;
     login := False;
     isclose := False;
     while not login do begin
         if (TUXLOGINF = nil) then begin
             TUXLOGINF := TTUXLOGINF.Create(Application);
         end;
         TUXLOGINF.ed_userid.Text := G_USERID;
         TUXLOGINF.ed_passwd.Text := '';
         if (TUXLOGINF.ShowModal = mrOK) then begin
             login := TUXLOGINF.UserVal(TUXLOGINF.ed_userid.Text, TUXLOGINF.ed_passwd.Text, trycnt);
             Inc(trycnt);
         end
         else begin
             isclose := True;
             break;
         end;
     end;
     TUXLOGINF.Close;
     if isclose then begin
         Result := False;
         Application.Terminate;

     end;

     if Not(txInit('C:\uniHIS\env\his.env',G_SVRID)) then
     begin
         txTerm;
     end;

     Result := True;
end;

//==============================================================================
//  2.For a Task Related to buffer management.
//==============================================================================

// 2.1 Create a message buffer FML [Atmi.tpalloc()]
Function txAlloc : Boolean;overload;
begin
     Result := true;

     transf := tpalloc(FBufferType, nil, FBufferSize);

     Finit(transf,Fsizeof(transf));

     txMsg := DefaultErrMsg;   // Message 초기화

     if (transf = nil) then
     begin
          txMsg := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := false;
     end;
     // 2003.02.17 박종엽 (String buffer 를 cover 하기 위해 ) -- DB Varchar2 Max = 4000
     strbuf := tpalloc('STRING', nil, 4096);

     if (strbuf = nil) then
     begin
          txMsg := 'strbuf tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := false;
     end;

end;

Function txAlloc ( i_num : Integer ) : Boolean;overload;
begin
     Result := true;

     transf := tpalloc(FBufferType, nil, FBufferSize*i_num);

     Finit(transf,Fsizeof(transf));

     txMsg := DefaultErrMsg;   // Message 초기화

     if (transf = nil) then
     begin
          txMsg := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := false;
     end;
     // 2003.02.17 박종엽 (String buffer 를 cover 하기 위해 ) -- DB Varchar2 Max = 4000
     strbuf := tpalloc('STRING', nil, 4096);

     if (strbuf = nil) then
     begin
          txMsg := 'strbuf tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := false;
     end;

end;

// 2.2 Create a message buffer FML32 [Atmi.tpalloc()]
Function txAlloc32 : Boolean;overload;
begin
     Result := true;

     transf := tpalloc(FBufferType32, nil, FBufferSize32);

     Finit32(transf,Fsizeof32(transf));

     txMsg := DefaultErrMsg;   // Message 초기화

     if (transf = nil) then
     begin
          txMsg := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := false;
     end;
     // 2003.02.17 박종엽 (String buffer 를 cover 하기 위해 ) -- DB Varchar2 Max = 4000
     strbuf := tpalloc('STRING', nil, 4096);

     if (strbuf = nil) then
     begin
          txMsg := 'strbuf tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := false;
     end;
end;

Function txAlloc32 ( i_num : Integer ) : Boolean;overload;
begin
     Result := true;

     transf := tpalloc(FBufferType32, nil, FBufferSize32*i_num);

     Finit32(transf,Fsizeof32(transf));

     txMsg := DefaultErrMsg;   // Message 초기화

     if (transf = nil) then
     begin
          txMsg := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := false;
     end;
     // 2003.02.17 박종엽 (String buffer 를 cover 하기 위해 ) -- DB Varchar2 Max = 4000
     strbuf := tpalloc('STRING', nil, 4096);

     if (strbuf = nil) then
     begin
          txMsg := 'strbuf tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := false;
     end;
end;

// 2.3 Free a message buffer [Atmi.tpfree()] FML
procedure txFree;
begin
     //tpfree(Nil);
     tpfree(transf);
    // 2003.02.17 박종엽 (Stirng buffer를 cover)
    if strbuf <> nil then
        tpfree(strbuf);
end;

// 2.4 Free a message buffer [Atmi.tpfree()] FML32
procedure txFree32;
begin
     //tpfree(Nil);
     tpfree(transf);
    // 2003.02.17 박종엽 (Stirng buffer를 cover)
    if strbuf <> nil then
        tpfree(strbuf);
end;

//==============================================================================
//  3.FML Buffer Manipulation functions and procedures for Input.
//==============================================================================

// 3.1 FML Buffer Names Assign.
procedure SetFldName(FldNameStr:String);
begin
     FldName := FldNameStr;   // 필드명 문자열을 전역변수에 Assign
end;

// 3.2 FML32 Buffer Names Assign.
procedure SetFldName32(FldNameStr:String);
begin
     FldName := FldNameStr;   // 필드명 문자열을 전역변수에 Assign
end;

// 3.3 ';'로 각각의 필드명을 구분하여 Index를 매김
function GetFldName(FldString:String; FldIndex:Integer):String;
var
   Cnt, idx : Integer;
   ResultStr : String;
begin
     Result := '';
     ResultStr := '';
     idx := 0;
     if (FldString[Length(FldString)] <> ';') then
          FldString := FldString + ';';
     for Cnt := 1 to Length(FldString) do
     begin
          Case FldString[Cnt] of
               ';' :  begin
                           if (idx = FldIndex) then
                           begin
                                Result := ResultStr;
                                exit;
                           end;
                           ResultStr := '';
                           inc(idx);
                      end
                      else
                      begin
                           ResultStr := ResultStr + FldString[Cnt];
                      end;
          end;
     end;
end;

// 3.4 필드명과 대응하는 값으로 FML Buffer Assgn.
procedure SetFldValue(OccurNo:Integer; const FldValue: Array of const);
var
    Cnt, IntValue : Integer;
    StrValue, FieldName : String;
    DblValue : Double;
begin
     if (transf = nil) then exit;

     for Cnt := Low(FldValue) to High(FldValue) do
     begin
          FieldName := GetFldName(FldName,Cnt);

          with FldValue[Cnt] do
          begin
               Case vType Of
                    vtInteger :    begin
                                        IntValue  := VInteger;
                                        FChg(Transf, Fldid(PChar(FieldName)), OccurNo, @IntValue, 0);
                                   end;

                    vtExtended :   begin
                                        DblValue  := VExtended^;
                                        FChg(Transf, FldId(PChar(FieldName)), OccurNo, @DBlValue, 0);
                                   end;

                    vtString :     begin
                                        StrValue  := VString^;
                                        FChg(Transf, Fldid(PChar(FieldName)), OccurNo, PChar(StrValue),
                                        Length(StrValue));
                                   end;

                    vtChar :       begin
                                        StrValue  := VChar;
                                        FChg(Transf, Fldid(PChar(FieldName)), OccurNo, PChar(StrValue),
                                        Length(StrValue));
                                   end;

                    vtPChar :      begin
                                        StrValue  := VString^;
                                        FChg(Transf, Fldid(PChar(FieldName)), OccurNo, PChar(StrValue),
                                        Length(StrValue));
                                   end;

                    vtAnsiString : begin
                                        StrValue  := String(VAnsiString);
                                        FChg(Transf, Fldid(PChar(FieldName)), OccurNo, PChar(StrValue),
                                        Length(StrValue));
                                   end;
                    vtVariant    : begin
                                        StrValue  := String(VVariant^);
                                        FChg(Transf, Fldid(PChar(FieldName)), OccurNo, PChar(StrValue),
                                        Length(StrValue));
                                   end;
               end;
          end;
     end;
end;

// 3.5 필드명과 대응하는 값으로 FML32 Buffer Assgn.
procedure SetFldValue32(OccurNo:Integer; const FldValue:Array of const);
var
    Cnt, IntValue : Integer;
    StrValue, FieldName : String;
    DblValue : Double;
begin
     if (transf = nil) then exit;

     for Cnt := Low(FldValue) to High(FldValue) do
     begin
          FieldName := GetFldName(FldName,Cnt);

          with FldValue[Cnt] do
          begin
               Case vType Of
                    vtInteger :    begin
                                        IntValue  := VInteger;
                                        FChg32(Transf, Fldid32(PChar(FieldName)), OccurNo, @IntValue, 0);
                                   end;

                    vtExtended :   begin
                                        DblValue  := VExtended^;
                                        FChg32(Transf, FldId32(PChar(FieldName)), OccurNo, @DBlValue, 0);
                                   end;

                    vtString :     begin
                                        StrValue  := VString^;
                                        FChg32(Transf, Fldid32(PChar(FieldName)), OccurNo, PChar(StrValue),
                                        Length(StrValue));
                                   end;

                    vtChar :       begin
                                        StrValue  := VChar;
                                        FChg32(Transf, Fldid32(PChar(FieldName)), OccurNo, PChar(StrValue),
                                        Length(StrValue));
                                   end;

                    vtPChar :      begin
                                        StrValue  := VString^;
                                        FChg32(Transf, Fldid32(PChar(FieldName)), OccurNo, PChar(StrValue),
                                        Length(StrValue));
                                   end;

                    vtAnsiString : begin
                                        StrValue  := String(VAnsiString);
                                        FChg32(Transf, Fldid32(PChar(FieldName)), OccurNo, PChar(StrValue),
                                        Length(StrValue));
                                   end;
                    vtVariant    : begin
                                        StrValue  := String(VVariant^);
                                        FChg32(Transf, Fldid32(PChar(FieldName)), OccurNo, PChar(StrValue),
                                        Length(StrValue));
                                   end;
               end;
          end;
     end;
end;

// 3.6 필드명과 대응하는 값으로 FML Buffer Assgn.
function txFchg(FldName : String; ix : integer; FldValue : Variant) : Boolean;
var
   f_pointer : Pointer;
   f_long    : integer;
   f_string  : string;
   i_tmp     : Integer;
begin
     f_pointer := nil;
     case VarType(FldValue) of
         varInteger :
                     begin
                          f_long    := FldValue;
                          f_pointer := @f_long;
                     end;
{
        varSingle  :
                    begin
                    end;
}
{
        varDouble  :
                    begin
                    end;
}
{
        varCurrency:
                    begin
                    end;
        varDate    :
                    begin
                    end;
}
        varOleStr  :
                    begin
                         f_string  := FldValue;
                         f_pointer := Pchar(f_string);
                    end;
{
        varDispatc :
                    begin
                    end;
        varError   :
                    begin
                    end;
        varBoolean :
                    begin
                    end;
}
        varVariant :
                    begin
                         f_string  := FldValue;
                         f_pointer := Pchar(f_string);
                    end;
{
        varUnknown :
                    begin
                    end;
        varByte    :
                    begin
                    end;
        varStrArg  :
                    begin
                    end;
}
        varString  :
                    begin
                         f_string  := FldValue;
                         f_pointer := Pchar(f_string);
                    end;
{
        varAny     :
                    begin
                    end;
}
          else
          begin
               txMsg := 'Fchg failed, ' +
                        '지원되지 않는 형식의 변수가 사용되었습니다.(' +
                        IntToStr(VarType(FldValue)) + ')';
               Result := False;
               exit;
          end;
     end;

     i_tmp := FChg(Transf, FldId(PChar(FldName)), ix, f_pointer, 0);

     if i_tmp = -1 then
     begin
          txMsg := 'Fchg failed, ' + 'fml buffer에 기록하지 못했습니다.' +
                   chr(10) + 'Field ID를 확인하십시요.(' + FldName + ')';
          Result := False;
          exit;
     end;

     Result := true;
end;

// 3.7 필드명과 대응하는 값으로 FML Buffer Assgn.
function txFchg32(FldName : String; ix : integer; FldValue : Variant) : Boolean;
var
   f_pointer : Pointer;
   f_long    : integer;
   f_string  : string;
   i_tmp     : Integer;
begin
     f_pointer := nil;
     case VarType(FldValue) of
         varInteger :
                     begin
                          f_long    := FldValue;
                          f_pointer := @f_long;
                     end;
{
        varSingle  :
                    begin
                    end;
}
{
        varDouble  :
                    begin
                    end;
}
{
        varCurrency:
                    begin
                    end;
        varDate    :
                    begin
                    end;
}
        varOleStr  :
                    begin
                         f_string  := FldValue;
                         f_pointer := Pchar(f_string);
                    end;
{
        varDispatc :
                    begin
                    end;
        varError   :
                    begin
                    end;
        varBoolean :
                    begin
                    end;
}
        varVariant :
                    begin
                         f_string  := FldValue;
                         f_pointer := Pchar(f_string);
                    end;
{
        varUnknown :
                    begin
                    end;
        varByte    :
                    begin
                    end;
        varStrArg  :
                    begin
                    end;
}
        varString  :
                    begin
                         f_string  := FldValue;
                         f_pointer := Pchar(f_string);
                    end;
{
        varAny     :
                    begin
                    end;
}
          else
          begin
               txMsg := 'Fchg failed, ' +
                        '지원되지 않는 형식의 변수가 사용되었습니다.(' +
                        IntToStr(VarType(FldValue)) + ')';
               Result := False;
               exit;
          end;
     end;

     i_tmp := FChg32(Transf, FldId(PChar(FldName)), ix, f_pointer, 0);

     if i_tmp = -1 then
     begin
          txMsg := 'Fchg32 failed, ' + 'fml buffer에 기록하지 못했습니다.' +
                   chr(10) + 'Field ID를 확인하십시요.(' + FldName + ')';
          Result := False;
          exit;
     end;

     Result := true;
end;

//==============================================================================
//  4.For a Task Related to Transaction management
//==============================================================================
{function txGetFMIS(ServiceName:String):Boolean;
var
   len : LongInt;
   FormStr : String;
begin
     if (transf = nil) then
     begin
          txMsg := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := False;
          Exit;
     end;

     // 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address 
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := paramStr(13);

     if (Screen.ActiveForm = nil) then
        FormStr := Application.MainForm.Name
     else
        FormStr := Screen.ActiveForm.Name;

     //Logging을 위해 TxGetF, TxPutF에 UserID, IP Address, ActiveForm Name 추가
     FChg(Transf, Fldid(PChar('LOG_USERNAME')),0,PChar(UserStr),Length(UserStr));
     FChg(Transf, Fldid(PChar('LOG_CLTNAME')),0,PChar(CltStr),Length(CltStr));
     FChg(Transf, Fldid(PChar('LOG_FORMNAME')),0,PChar(FormStr),Length(FormStr));

     if (tpcall(PChar(ServiceName), transf, 0, @transf, @len, TPNOTIME) = -1) then
     begin
          txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
          txFree;
          Result := False;
          Exit;
     end;

     txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
     Result := True;
end;}

// 4.1 Get from Server non-transaction mode (NON-XA) FML
function txGetF(ServiceName:String):Boolean;
var
   len : LongInt;
   FormStr : String;
begin
     if (transf = nil) then
     begin
          txMsg  := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := False;
          Exit;
     end;

     { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := paramStr(13);

     if (Screen.ActiveForm = nil) then
        FormStr := Application.MainForm.Name
     else
        FormStr := Screen.ActiveForm.Name;

     {Logging을 위해 TxGetF, TxPutF에 UserID, IP Address, ActiveForm Name 추가}
     FChg(Transf, Fldid(PChar('LOG_USERNAME')),0,PChar(UserStr),Length(UserStr));
     FChg(Transf, Fldid(PChar('LOG_CLTNAME')),0,PChar(CltStr),Length(CltStr));
     FChg(Transf, Fldid(PChar('LOG_FORMNAME')),0,PChar(FormStr),Length(FormStr));

     if (tpcall(PChar(ServiceName), transf, 0, @transf, @len, TPNOTRAN) = -1) then
     begin
          txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
          txFree;
          Result := False;
          Exit;
     end;

     txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
     Result := True;
end;

// 4.1-1 Get from Server non-transaction mode (NON-XA) FML
function txGetNF(ServiceName:String):Boolean;
var
   len : LongInt;
   FormStr : String;
begin
     if (transf = nil) then
     begin
          txMsg  := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := False;
          Exit;
     end;

     { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := paramStr(13);
     {
     if (Screen.ActiveForm = nil) then
        FormStr := Application.MainForm.Name
     else
        FormStr := Screen.ActiveForm.Name;
     }
     {Logging을 위해 TxGetF, TxPutF에 UserID, IP Address, ActiveForm Name 추가}
     FChg(Transf, Fldid(PChar('LOG_USERNAME')),0,PChar(UserStr),Length(UserStr));
     FChg(Transf, Fldid(PChar('LOG_CLTNAME')),0,PChar(CltStr),Length(CltStr));
     //FChg(Transf, Fldid(PChar('LOG_FORMNAME')),0,PChar(FormStr),Length(FormStr));

     if (tpcall(PChar(ServiceName), transf, 0, @transf, @len, TPNOTRAN) = -1) then
     begin
          txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
          txFree;
          Result := False;
          Exit;
     end;

     txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
     Result := True;
end;

// 4.2 Get from Server non-transaction mode (NON-XA) FML32
function txGetF32(ServiceName:String):Boolean;
var
   len : LongInt;
   FormStr : String;
begin
     if (transf = nil) then
     begin
          txMsg := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := False;
          Exit;
     end;

     { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := paramStr(13);

     if (Screen.ActiveForm = nil) then
        FormStr := Application.MainForm.Name
     else
        FormStr := Screen.ActiveForm.Name;

     {Logging을 위해 TxGetF, TxPutF에 UserID, IP Address, ActiveForm Name 추가}
     FChg32(Transf, Fldid32(PChar('LOG_USERNAME')),0,PChar(UserStr),Length(UserStr));
     FChg32(Transf, Fldid32(PChar('LOG_CLTNAME')),0,PChar(CltStr),Length(CltStr));
     FChg32(Transf, Fldid32(PChar('LOG_FORMNAME')),0,PChar(FormStr),Length(FormStr));

     if (tpcall(PChar(ServiceName), transf, 0, @transf, @len, TPNOTRAN) = -1) then
     begin
          txMsg := StrPas(Fvals32(transf, Fldid32('STATLIN'), 0));
          txFree;
          Result := False;
          Exit;
     end;

     txMsg := StrPas(Fvals32(transf, Fldid32('STATLIN'), 0));
     Result := True;
end;

// 4.3.1 Get from Server non-transaction mode (NON-XA) FTP
function txGetFile(ServiceName: String; var Filename: String): Boolean;
var
   len          : LongInt;
   FormStr      : String;
   ftp_svrip    : String;           // FTP_SVRIP    : FTP SERVER IP
   ftp_userid   : String;           // FTP_USERID   : FTP USERID
   ftp_passwd   : String;           // FTP_PASSWD   : FTP PASSWORD
   ftp_fileid   : String;           // FTP_FILEID   : FTP FILEID
   ftp_filesize : LongInt;          // FTP_FILESIZE : FTP FILESIZE
begin
   if (transf = nil) then
   begin
      txMsg := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
      Result := False;
      Exit;
   end;

   { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
   if (UserStr = '') then
      UserStr := ParamStr(1) + ParamStr(2);
   if (CltStr = '') then
      CltStr := paramStr(13);

   if (Screen.ActiveForm = nil) then
      FormStr := Application.MainForm.Name
   else
      FormStr := Screen.ActiveForm.Name;

   {Logging을 위해 TxGetF, TxPutF에 UserID, IP Address, ActiveForm Name 추가}
   FChg(Transf, Fldid(PChar('LOG_USERNAME')),0,PChar(UserStr),Length(UserStr));
   FChg(Transf, Fldid(PChar('LOG_CLTNAME')),0,PChar(CltStr),Length(CltStr));
   FChg(Transf, Fldid(PChar('LOG_FORMNAME')),0,PChar(FormStr),Length(FormStr));

   if (tpcall(PChar(ServiceName), transf, 0, @transf, @len, TPNOTRAN) = -1) then
   begin
      txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
      txFree;
      Result := False;
      Exit;
   end;

   txMsg        := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
   ftp_svrip    := StrPas(Fvals(transf, Fldid('FTP_SVRIP'), 0));
   ftp_userid   := StrPas(Fvals(transf, Fldid('FTP_USERID'), 0));
   ftp_passwd   := StrPas(Fvals(transf, Fldid('FTP_PASSWD'), 0));
   ftp_fileid   := StrPas(Fvals(transf, Fldid('FTP_FILEID'), 0));
   ftp_filesize := Fvall(transf, Fldid('FTP_FILESIZE'), 0);
   Filename     := GetLocalFileName(ftp_fileid);

   ForceDirectories(LocalDir);

   if not(GetASCIIFTP(ftp_svrip, ftp_userid, ftp_passwd, ftp_fileid, Filename, True)) then
   begin
      Result := False;
      Exit;
   end;
{
   if not(CheckFileSizeFTP(Filename, ftp_filesize, MODE_ASCII)) then
   begin
        Result := False;
        Exit;
   end;
}
   Result := True;
end;

// 4.3.2 Get from Server non-transaction mode (NON-XA) FTP
function txGetToFile(ServiceName: String; Mode, Dir, Filename: String): Boolean;
var
   len          : LongInt;
   FormStr      : String;
   ftp_svrip    : String;           // FTP_SVRIP    : FTP SERVER IP
   ftp_userid   : String;           // FTP_USERID   : FTP USERID
   ftp_passwd   : String;           // FTP_PASSWD   : FTP PASSWORD
   ftp_fileid   : String;           // FTP_FILEID   : FTP FILEID
   ftp_filesize : LongInt;          // FTP_FILESIZE : FTP FILESIZE
begin
   if (transf = nil) then
   begin
      txMsg := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
      Result := False;
      Exit;
   end;

   { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
   if (UserStr = '') then
      UserStr := ParamStr(1) + ParamStr(2);
   if (CltStr = '') then
      CltStr := paramStr(13);

   if (Screen.ActiveForm = nil) then
      FormStr := Application.MainForm.Name
   else
      FormStr := Screen.ActiveForm.Name;

   {Logging을 위해 TxGetF, TxPutF에 UserID, IP Address, ActiveForm Name 추가}
   FChg(Transf, Fldid(PChar('LOG_USERNAME')),0,PChar(UserStr),Length(UserStr));
   FChg(Transf, Fldid(PChar('LOG_CLTNAME')),0,PChar(CltStr),Length(CltStr));
   FChg(Transf, Fldid(PChar('LOG_FORMNAME')),0,PChar(FormStr),Length(FormStr));

   if (tpcall(PChar(ServiceName), transf, 0, @transf, @len, TPNOTRAN) = -1) then
   begin
      txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
      txFree;
      Result := False;
      Exit;
   end;

   txMsg        := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
   ftp_svrip    := StrPas(Fvals(transf, Fldid('FTP_SVRIP'), 0));
   ftp_userid   := StrPas(Fvals(transf, Fldid('FTP_USERID'), 0));
   ftp_passwd   := StrPas(Fvals(transf, Fldid('FTP_PASSWD'), 0));
   ftp_fileid   := StrPas(Fvals(transf, Fldid('FTP_FILEID'), 0));
   ftp_filesize := Fvall(transf, Fldid('FTP_FILESIZE'), 0);

   ForceDirectories(Dir);

   if Mode = 'ASCII' then
   begin
      if not(GetASCIIFTP(ftp_svrip, ftp_userid, ftp_passwd, ftp_fileid, Dir + Filename, True)) then
      begin
         Result := False;
         Exit;
      end;
   end
   else if Mode = 'BIN' then
   begin
      if not(GetBINFTP(ftp_svrip, ftp_userid, ftp_passwd, ftp_fileid, Dir + Filename, True)) then
      begin
         Result := False;
         Exit;
      end;
   end;

{
   if not(CheckFileSizeFTP(Filename, ftp_filesize, MODE_ASCII)) then
   begin
      Result := False;
      Exit;
   end;
}
   Result := True;
end;

// 4.4.1 Put to Server Transaction mode(XA) FML
function txPutF(ServiceName:String):Boolean;
begin
     Result := txCall(ServiceName);
end;

// 4.4.2 Put to Server Transaction mode(XA) FML
function txPutF(ServiceName:String;lTimeout:LongInt):Boolean;
begin
     Result := txCall(ServiceName,lTimeout);
end;

// 4.5.1 Put to Server Transaction mode(XA) FML32
function txPutF32(ServiceName:String):Boolean;
begin
     Result := txCall32(ServiceName);
end;

// 4.5.2 Put to Server Transaction mode(XA) FML32
function txPutF32(ServiceName:String;lTimeout:LongInt):Boolean;
begin
     Result := txCall32(ServiceName,lTimeout);
end;

// 4.6.1 tpcall() transaction mode(XA) FML
function txCall(ServiceName:String):Boolean; // tpcall transaction(XA) mode
var
   len : LongInt;
   FormStr : String;
begin
     if (transf = nil) then
     begin
          txMsg := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := False;
          Exit;
     end;

     if (tpbegin(TimeOut, 0) = -1) then
     begin
          txMsg := 'tpbegin failed, ' + StrPas(tpstrerror(gettperrno));
          txFree;
          Result := False;
          Exit;
     end;

     { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := paramStr(13);

     if (Screen.ActiveForm = nil) then
        FormStr := Application.MainForm.Name
     else
        FormStr := Screen.ActiveForm.Name;

     {Logging을 위해 TxGetF, TxPutF에 UserID, IP Address, ActiveForm Name 추가}
     FChg(Transf, Fldid(PChar('LOG_USERNAME')),0,PChar(UserStr),Length(UserStr));
     FChg(Transf, Fldid(PChar('LOG_CLTNAME')),0,PChar(CltStr),Length(CltStr));
     FChg(Transf, Fldid(PChar('LOG_FORMNAME')),0,PChar(FormStr),Length(FormStr));

     if (tpcall(PChar(ServiceName), transf, 0, @transf, @len, 0) = -1) then
     begin
          txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
          txAbort;
          txFree;
          Result := False;
          Exit;
     end;

     if (tpcommit(0) = -1) then
     begin
          showmessage('error');
          txMsg := 'tpcommit failed, ' + StrPas(tpstrerror(gettperrno));
          txAbort;
          txFree;
          Result := False;
          exit;
     end;

     txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
     Result := True;
end;

// 4.6.2 tpcall() transaction mode(XA) FML
function txCall(ServiceName:String;lTimeout:LongInt):Boolean; // tpcall transaction(XA) mode
var
   len : LongInt;
   FormStr : String;
begin
     if (transf = nil) then
     begin
          txMsg := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := False;
          Exit;
     end;

     if (tpbegin(lTimeOut, 0) = -1) then
     begin
          txMsg := 'tpbegin failed, ' + StrPas(tpstrerror(gettperrno));
          txFree;
          Result := False;
          Exit;
     end;

     { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := paramStr(13);

     if (Screen.ActiveForm = nil) then
        FormStr := Application.MainForm.Name
     else
        FormStr := Screen.ActiveForm.Name;

     {Logging을 위해 TxGetF, TxPutF에 UserID, IP Address, ActiveForm Name 추가}
     FChg(Transf, Fldid(PChar('LOG_USERNAME')),0,PChar(UserStr),Length(UserStr));
     FChg(Transf, Fldid(PChar('LOG_CLTNAME')),0,PChar(CltStr),Length(CltStr));
     FChg(Transf, Fldid(PChar('LOG_FORMNAME')),0,PChar(FormStr),Length(FormStr));

     if (tpcall(PChar(ServiceName), transf, 0, @transf, @len, 0) = -1) then
     begin
          txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
          txAbort;
          txFree;
          Result := False;
          Exit;
     end;

     if (tpcommit(0) = -1) then
     begin
          txMsg := 'tpcommit failed, ' + StrPas(tpstrerror(gettperrno));
          txAbort;
          txFree;
          Result := False;
          exit;
     end;

     txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
     Result := True;
end;

// 4.7.1 tpcall() transaction mode(XA) FML
function txCall32(ServiceName:String):Boolean; // tpcall transaction(XA) mode
var
   len : LongInt;
   FormStr : String;
begin
     if (transf = nil) then
     begin
          txMsg := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := False;
          Exit;
     end;

     if (tpbegin(TimeOut, 0) = -1) then
     begin
          txMsg := 'tpbegin failed, ' + StrPas(tpstrerror(gettperrno));
          txFree;
          Result := False;
          Exit;
     end;

     { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := paramStr(13);

     if (Screen.ActiveForm = nil) then
        FormStr := Application.MainForm.Name
     else
        FormStr := Screen.ActiveForm.Name;

     {Logging을 위해 TxGetF, TxPutF에 UserID, IP Address, ActiveForm Name 추가}
     FChg32(Transf, Fldid32(PChar('LOG_USERNAME')),0,PChar(UserStr),Length(UserStr));
     FChg32(Transf, Fldid32(PChar('LOG_CLTNAME')),0,PChar(CltStr),Length(CltStr));
     FChg32(Transf, Fldid32(PChar('LOG_FORMNAME')),0,PChar(FormStr),Length(FormStr));

     if (tpcall(PChar(ServiceName), transf, 0, @transf, @len, 0) = -1) then
     begin
          txMsg := StrPas(Fvals32(transf, Fldid32('STATLIN'), 0));
          txAbort;
          txFree;
          Result := False;
          Exit;
     end;

     if (tpcommit(0) = -1) then
     begin
          txMsg := 'tpcommit failed, ' + StrPas(tpstrerror(gettperrno));
          txAbort;
          txFree;
          Result := False;
          exit;
     end;

     txMsg := StrPas(Fvals32(transf, Fldid32('STATLIN'), 0));
     Result := True;
end;

// 4.7.2 tpcall() transaction mode(XA) FML
function txCall32(ServiceName:String;lTimeout:LongInt):Boolean; // tpcall transaction(XA) mode
var
   len : LongInt;
   FormStr : String;
begin
     if (transf = nil) then
     begin
          txMsg := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := False;
          Exit;
     end;

     if (tpbegin(lTimeOut, 0) = -1) then
     begin
          txMsg := 'tpbegin failed, ' + StrPas(tpstrerror(gettperrno));
          txFree;
          Result := False;
          Exit;
     end;

     { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := paramStr(13);

     if (Screen.ActiveForm = nil) then
        FormStr := Application.MainForm.Name
     else
        FormStr := Screen.ActiveForm.Name;

     {Logging을 위해 TxGetF, TxPutF에 UserID, IP Address, ActiveForm Name 추가}
     FChg32(Transf, Fldid32(PChar('LOG_USERNAME')),0,PChar(UserStr),Length(UserStr));
     FChg32(Transf, Fldid32(PChar('LOG_CLTNAME')),0,PChar(CltStr),Length(CltStr));
     FChg32(Transf, Fldid32(PChar('LOG_FORMNAME')),0,PChar(FormStr),Length(FormStr));

     if (tpcall(PChar(ServiceName), transf, 0, @transf, @len, 0) = -1) then
     begin
          txMsg := StrPas(Fvals32(transf, Fldid32('STATLIN'), 0));
          txAbort;
          txFree;
          Result := False;
          Exit;
     end;

     if (tpcommit(0) = -1) then
     begin
          txMsg := 'tpcommit failed, ' + StrPas(tpstrerror(gettperrno));
          txAbort;
          txFree;
          Result := False;
          exit;
     end;

     txMsg := StrPas(Fvals32(transf, Fldid32('STATLIN'), 0));
     Result := True;
end;

// 4.8 Two Phase Commit용 tpcall FML
function txTPCall(ServiceName:String):Boolean; // tpcall with No tpbegin/tpCommit
var
   len : LongInt;
   FormStr : String;
begin
     if (transf = nil) then
     begin
          txMsg := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := False;
          Exit;
     end;

     { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := paramStr(13);

     if (Screen.ActiveForm = nil) then
        FormStr := Application.MainForm.Name
     else
        FormStr := Screen.ActiveForm.Name;

     {Logging을 위해 TxGetF, TxPutF에 UserID, IP Address, ActiveForm Name 추가}
     FChg(Transf, Fldid(PChar('LOG_USERNAME')),0,PChar(UserStr),Length(UserStr));
     FChg(Transf, Fldid(PChar('LOG_CLTNAME')),0,PChar(CltStr),Length(CltStr));
     FChg(Transf, Fldid(PChar('LOG_FORMNAME')),0,PChar(FormStr),Length(FormStr));

     if (tpcall(PChar(ServiceName), transf, 0, @transf, @len, 0) = -1) then
     begin
          txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
          txFree;
          Result := False;
          Exit;
     end;

     txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
     Result := True;
end;

// 4.9 Two Phase Commit용 tpcall FML32
function txTPCall32(ServiceName:String):Boolean; // tpcall with No tpbegin/tpCommit
var
   len : LongInt;
   FormStr : String;
begin
     if (transf = nil) then
     begin
          txMsg := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := False;
          Exit;
     end;

     { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := paramStr(13);

     if (Screen.ActiveForm = nil) then
        FormStr := Application.MainForm.Name
     else
        FormStr := Screen.ActiveForm.Name;

     {Logging을 위해 TxGetF, TxPutF에 UserID, IP Address, ActiveForm Name 추가}
     FChg32(Transf, Fldid32(PChar('LOG_USERNAME')),0,PChar(UserStr),Length(UserStr));
     FChg32(Transf, Fldid32(PChar('LOG_CLTNAME')),0,PChar(CltStr),Length(CltStr));
     FChg32(Transf, Fldid32(PChar('LOG_FORMNAME')),0,PChar(FormStr),Length(FormStr));

     if (tpcall(PChar(ServiceName), transf, 0, @transf, @len, 0) = -1) then
     begin
          txMsg := StrPas(Fvals32(transf, Fldid32('STATLIN'), 0));
          txFree;
          Result := False;
          Exit;
     end;

     txMsg := StrPas(Fvals32(transf, Fldid32('STATLIN'), 0));
     Result := True;
end;

// 4.10 txGetF in Dll without Form (NON XA) FML
function txGetFDll(ServiceName,DllName:String):Boolean; // tpcall transaction(NON-XA) mode
var
   len : LongInt;
begin
     if (transf = nil) then
     begin
          txMsg := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := False;
          exit;
     end;

     { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := paramStr(13);

     FChg(Transf, Fldid(PChar('LOG_USERNAME')),0,PChar(UserStr),Length(UserStr));
     FChg(Transf, Fldid(PChar('LOG_CLTNAME')),0,PChar(CltStr),Length(CltStr));
     FChg(Transf, Fldid(PChar('LOG_FORMNAME')),0,PChar(DllName),Length(DllName));

     if (tpcall(PChar(ServiceName), transf, 0, @transf, @len, TPNOTRAN) = -1) then
     begin
          txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
          txFree;
          Result := False;
          exit;
     end;

     txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
     Result := True;
end;

// 4.11 txGetF in Dll without Form (NON XA) FML32
function txGetFDll32(ServiceName,DllName:String):Boolean; // tpcall transaction(NON-XA) mode
var
   len : LongInt;
begin
     if (transf = nil) then
     begin
          txMsg := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := False;
          exit;
     end;

     { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := paramStr(13);

     FChg32(Transf, Fldid32(PChar('LOG_USERNAME')),0,PChar(UserStr),Length(UserStr));
     FChg32(Transf, Fldid32(PChar('LOG_CLTNAME')),0,PChar(CltStr),Length(CltStr));
     FChg32(Transf, Fldid32(PChar('LOG_FORMNAME')),0,PChar(DllName),Length(DllName));

     if (tpcall(PChar(ServiceName), transf, 0, @transf, @len, TPNOTRAN) = -1) then
     begin
          txMsg := StrPas(Fvals32(transf, Fldid32('STATLIN'), 0));
          txFree;
          Result := False;
          exit;
     end;

     txMsg := StrPas(Fvals32(transf, Fldid32('STATLIN'), 0));
     Result := True;
end;

// 4.12.1 txPutF in Dll without Form (XA) FML
function txPutFDll(ServiceName,DllName:String):Boolean;
var
   len : LongInt;
begin
     if (transf = nil) then
     begin
          txMsg := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := False;
          Exit;
     end;

     if (tpbegin(TimeOut, 0) = -1) then
     begin
          txMsg := 'tpbegin failed, ' + StrPas(tpstrerror(gettperrno));
          txFree;
          Result := False;
          Exit;
     end;

     { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := GetIp;

     FChg(Transf, Fldid(PChar('LOG_USERNAME')),0,PChar(UserStr),Length(UserStr));
     FChg(Transf, Fldid(PChar('LOG_CLTNAME')),0,PChar(CltStr),Length(CltStr));
     FChg(Transf, Fldid(PChar('LOG_FORMNAME')),0,PChar(DllName),Length(DllName));

     if (tpcall(PChar(ServiceName), transf, 0, @transf, @len, 0) = -1) then
     begin
          txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
          txAbort;
          txFree;
          Result := False;
          Exit;
     end;

     if (tpcommit(0) = -1) then
     begin
          txMsg := 'tpcommit failed, ' + StrPas(tpstrerror(gettperrno));
          txAbort;
          txFree;
          Result := False;
          exit;
     end;

     txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
     Result := True;
end;

// 4.12.2 txPutF in Dll without Form (XA) FML
function txPutFDll(ServiceName,DllName:String;lTimeout:LongInt):Boolean;
var
   len : LongInt;
begin
     if (transf = nil) then
     begin
          txMsg := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := False;
          Exit;
     end;

     if (tpbegin(lTimeOut, 0) = -1) then
     begin
          txMsg := 'tpbegin failed, ' + StrPas(tpstrerror(gettperrno));
          txFree;
          Result := False;
          Exit;
     end;

     { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := GetIp;

     FChg(Transf, Fldid(PChar('LOG_USERNAME')),0,PChar(UserStr),Length(UserStr));
     FChg(Transf, Fldid(PChar('LOG_CLTNAME')),0,PChar(CltStr),Length(CltStr));
     FChg(Transf, Fldid(PChar('LOG_FORMNAME')),0,PChar(DllName),Length(DllName));

     if (tpcall(PChar(ServiceName), transf, 0, @transf, @len, 0) = -1) then
     begin
          txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
          txAbort;
          txFree;
          Result := False;
          Exit;
     end;

     if (tpcommit(0) = -1) then
     begin
          txMsg := 'tpcommit failed, ' + StrPas(tpstrerror(gettperrno));
          txAbort;
          txFree;
          Result := False;
          exit;
     end;

     txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
     Result := True;
end;

// 4.13.1 txPutF in Dll without Form (XA) FML32
function txPutFDll32(ServiceName,DllName:String):Boolean;
var
   len : LongInt;
begin
     if (transf = nil) then
     begin
          txMsg := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := False;
          Exit;
     end;

     if (tpbegin(TimeOut, 0) = -1) then
     begin
          txMsg := 'tpbegin failed, ' + StrPas(tpstrerror(gettperrno));
          txFree;
          Result := False;
          Exit;
     end;

     { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := GetIp;

     FChg32(Transf, Fldid32(PChar('LOG_USERNAME')),0,PChar(UserStr),Length(UserStr));
     FChg32(Transf, Fldid32(PChar('LOG_CLTNAME')),0,PChar(CltStr),Length(CltStr));
     FChg32(Transf, Fldid32(PChar('LOG_FORMNAME')),0,PChar(DllName),Length(DllName));

     if (tpcall(PChar(ServiceName), transf, 0, @transf, @len, 0) = -1) then
     begin
          txMsg := StrPas(Fvals32(transf, Fldid32('STATLIN'), 0));
          txAbort;
          txFree;
          Result := False;
          Exit;
     end;

     if (tpcommit(0) = -1) then
     begin
          txMsg := 'tpcommit failed, ' + StrPas(tpstrerror(gettperrno));
          txAbort;
          txFree;
          Result := False;
          exit;
     end;

     txMsg := StrPas(Fvals32(transf, Fldid32('STATLIN'), 0));
     Result := True;
end;

// 4.13.2 txPutF in Dll without Form (XA) FML32
function txPutFDll32(ServiceName,DllName:String;lTimeout:LongInt):Boolean;
var
   len : LongInt;
begin
     if (transf = nil) then
     begin
          txMsg := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := False;
          Exit;
     end;

     if (tpbegin(lTimeOut, 0) = -1) then
     begin
          txMsg := 'tpbegin failed, ' + StrPas(tpstrerror(gettperrno));
          txFree;
          Result := False;
          Exit;
     end;

     { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := GetIp;

     FChg32(Transf, Fldid32(PChar('LOG_USERNAME')),0,PChar(UserStr),Length(UserStr));
     FChg32(Transf, Fldid32(PChar('LOG_CLTNAME')),0,PChar(CltStr),Length(CltStr));
     FChg32(Transf, Fldid32(PChar('LOG_FORMNAME')),0,PChar(DllName),Length(DllName));

     if (tpcall(PChar(ServiceName), transf, 0, @transf, @len, 0) = -1) then
     begin
          txMsg := StrPas(Fvals32(transf, Fldid32('STATLIN'), 0));
          txAbort;
          txFree;
          Result := False;
          Exit;
     end;

     if (tpcommit(0) = -1) then
     begin
          txMsg := 'tpcommit failed, ' + StrPas(tpstrerror(gettperrno));
          txAbort;
          txFree;
          Result := False;
          exit;
     end;

     txMsg := StrPas(Fvals32(transf, Fldid32('STATLIN'), 0));
     Result := True;
end;

//==============================================================================
//  5.For a Task Related to Transaction management
//==============================================================================

// 5.1.1 Begin a transaction [Atmi.tpbegin()]
function txBegin:Boolean;
begin
     if (tpbegin(TimeOut, 0) = -1) then
     begin
          txMsg := 'tpbegin failed, ' + StrPas(tpstrerror(gettperrno));
          txFree;
          Result := False;
     end
     else
          Result := True;
end;

// 5.1.2 Begin a transaction [Atmi.tpbegin()]
function txBegin(lTimeout:LongInt):Boolean;
begin
     if (tpbegin(lTimeOut, 0) = -1) then
     begin
          txMsg := 'tpbegin failed, ' + StrPas(tpstrerror(gettperrno));
          txFree;
          Result := False;
     end
     else
          Result := True;
end;

// 5.2 Commit the current transaction [Atmi.tpcommit()]
function txCommit:Boolean; // tpCommit if AutoCommit = False
begin
     if (tpcommit(0) = -1) then
     begin
          txMsg := 'tpCommit failed : ' + StrPas(tpstrerror(gettperrno));
          txAbort;
          txFree;
          Result := False;
     end
     else
          Result := True;
end;

// 5.3 Roll back the current transaction [Atmi.tpabort()]
procedure txAbort;
begin
     tpabort(0);
end;

//==============================================================================
//  6.FML Buffer functions and procedures for Data Received from Server.
//==============================================================================

// 6.1 조회된 결과를 Variant형 변수에 Assign (Multi)
{procedure GetFldVar(FldNameStr:String; var VariantValue:Variant);
var
   i, RecordCount : LongInt;
   f_type         : Integer;
begin
     RecordCount := GetRecordCnt(FldNameStr);

     if  RecordCount = 0 then
     RecordCount := 1;

     VariantValue := VarArrayCreate([0,RecordCount-1], varVariant);

     f_type := FldType(Fldid(PChar(FldNameStr)));

     case f_type of
          FLD_SHORT, FLD_LONG :
          for i := 0 to RecordCount - 1 do
              VariantValue[i] := GetIntToS(FldNameStr, i);
          FLD_FLOAT, FLD_DOUBLE :
          for i := 0 to RecordCount - 1 do
              VariantValue[i] := GetDblToS(FldNameStr, i);
          FLD_CHAR,FLD_STRING,FLD_CARRAY :
          for i := 0 to RecordCount - 1 do
              VariantValue[i] := GetStrVal(FldNameStr, i);
     end;
end;     }
// Field String을 For loop 전에 가져와서 직접 넣어줌. // 2003.02.14
procedure GetFldVar(FldNameStr:String; var VariantValue:Variant);
var
   i, RecordCount : LongInt;
   f_type         : Integer;
   f_fldid        : Integer;
begin
     RecordCount := GetRecordCnt(FldNameStr);

     if  RecordCount = 0 then
     RecordCount := 1;

     f_fldid := Fldid(PChar(FldNameStr));

     VariantValue := VarArrayCreate([0,RecordCount-1], varVariant);

     f_type := FldType(Fldid(PChar(FldNameStr)));

     case f_type of
          FLD_SHORT, FLD_LONG :
          for i := 0 to RecordCount - 1 do
              VariantValue[i] := GetIntToS(f_fldid, i);
          FLD_FLOAT, FLD_DOUBLE :
          for i := 0 to RecordCount - 1 do
              VariantValue[i] := GetDblToS(f_fldid, i);
          FLD_CHAR,FLD_STRING,FLD_CARRAY :
          for i := 0 to RecordCount - 1 do
              VariantValue[i] := GetStrVal(f_fldid, i);
     end;
end;

// 6.2 조회된 결과를 Variant형 변수에 Assign (Multi) FML32
procedure GetFldVar32(FldNameStr:String; var VariantValue:Variant);
var
   i, RecordCount : LongInt;
   f_type         : Integer;
begin
     RecordCount := GetRecordCnt32(FldNameStr);

     if  RecordCount = 0 then
     RecordCount := 1;

     VariantValue := VarArrayCreate([0,RecordCount-1], varVariant);

     f_type := FldType32(Fldid32(PChar(FldNameStr)));

     case f_type of
          FLD_SHORT, FLD_LONG :
          for i := 0 to RecordCount - 1 do
              VariantValue[i] := GetIntToS32(FldNameStr, i);
          FLD_FLOAT, FLD_DOUBLE :
          for i := 0 to RecordCount - 1 do
              VariantValue[i] := GetDblToS32(FldNameStr, i);
          FLD_CHAR,FLD_STRING,FLD_CARRAY :
          for i := 0 to RecordCount - 1 do
              VariantValue[i] := GetStrVal32(FldNameStr, i);
     end;
end;

// 6.3 조회된 결과를 String 형 변수에 Assign (Single)
{function GetStrVal(FieldName:String; OccrNo:Integer):String;
begin
     Result := Fvals(Transf, Fldid(PChar(FieldName)), OccrNo);
end;}
function GetStrVal(Fieldid:Integer; OccrNo:Integer):String;
begin
     Result := Fvals(Transf, Fieldid, OccrNo);
end; //20030227

// GetStrVal과 같은기능 (TMAX API가 다름)
function SGetStrVal(fld_id:integer; pos_ofs:pFLDPOS):String;
var
    //len   : LongInt; // 20030303
    len   : Integer;
begin
    fbgetf(Transf, fld_id, strbuf, @len, pos_ofs);
    Result := strpas(strbuf);
end;

// 6.4 조회된 결과를 String 형 변수에 Assign (Single)
function GetStrVal32(FieldName:String; OccrNo:Integer):String;
begin
        Result := Fvals32(Transf, Fldid32(PChar(FieldName)), OccrNo)
end;

// 6.5 조회된 결과를 Integer형 변수에 Assign (Single)
{function GetIntVal(FieldName:String; OccrNo:Integer):Integer;
begin
     Result := Fvall(Transf, Fldid(PChar(FieldName)), OccrNo);
end;}
function GetIntVal(Fieldid:Integer; OccrNo:Integer):Integer;                    // 2003.02.14
begin
     Result := Fvall(Transf, Fieldid, OccrNo);
end; //20030227

// GetIntVal과 같은기능 (TMAX API가 다름)     20030227
function SGetIntVal(fld_id:integer; pos_ofs:pFLDPOS):Integer;
var
    len   : LongInt;
    val   : Integer;
begin
    fbgetf(Transf, fld_id, @val, @len, pos_ofs);
    Result := val;
end;
// 6.6 조회된 결과를 Integer형 변수에 Assign (Single)
function GetIntVal32(FieldName:String; OccrNo:Integer):Integer;
begin
     Result := Fvall32(Transf, Fldid32(PChar(FieldName)), OccrNo)
end;

// 6.7 조회된 결과를 Double형 변수에 Assign (Single)
{function GetDblVal(FieldName:String; OccrNo:Integer):Double;
var
   len : LongInt;
   ResultVal : Double;
   i_tmp     : Integer;
begin
   ResultVal := 0;
   Len := 0;

   i_tmp := Fget(transf, Fldid(PChar(FieldName)), OccrNo, @ResultVal, @Len);

   if i_tmp = -1 then
   begin
        Result := -1;
        txMsg := FStrError(getFerror);
   end
   else
        Result := ResultVal;
end;    }
function GetDblVal(Fieldid:Integer; OccrNo:Integer):Double;                     // 2003.02.14
var
   len : LongInt;
   ResultVal : Double;
   i_tmp     : Integer;
begin
   ResultVal := 0;
   Len := 0;

   i_tmp := Fget(transf, Fieldid, OccrNo, @ResultVal, @Len);

   if i_tmp = -1 then
   begin
        Result := -1;
        txMsg := FStrError(getFerror);
   end
   else
        Result := ResultVal;
end;

// 6.8 조회된 결과를 Double형 변수에 Assign (Single)
function GetDblVal32(FieldName:String; OccrNo:Integer):Double;
var
   len : LongInt;
   ResultVal : Double;
   i_tmp     : Integer;
begin
   ResultVal := 0;
   Len := 0;

   i_tmp := Fget32(transf, Fldid32(PChar(FieldName)), OccrNo, @ResultVal, @Len);

   if i_tmp = -1 then
   begin
        Result := -1;
        txMsg := FStrError32(getFerror);
   end
   else
        Result := ResultVal;
end;

// 6.9 조회된 Integer형 결과를 String형 변수에 Assign (Single)
{function GetIntToS(FieldName:String; OccrNo:Integer):String;
begin
     Result := IntToStr(GetIntVal(FieldName,OccrNo));
end;}
function GetIntToS(Fieldid:Integer; OccrNo:Integer):String;
begin
     Result := IntToStr(GetIntVal(Fieldid,OccrNo));
end; //20030227

function SGetIntToS(Fieldid:Integer; pos_ofs:pFLDPOS):String;
begin
     Result := IntToStr(SGetIntVal(Fieldid,pos_ofs));
end;

// 6.10 조회된 Integer형 결과를 String형 변수에 Assign (Single)
function GetIntToS32(FieldName:String; OccrNo:Integer):String;
begin
     Result := IntToStr(GetIntVal32(FieldName,OccrNo));
end;

// 6.11 조회된 Double형 결과를 String형 변수에 Assign (Single)
function GetDblToS(Fieldid:Integer; OccrNo:Integer):String;                     // 2002.02.14
begin
     Result := FloatToStr(GetDblVal(Fieldid,OccrNo));
end;

// 6.12 조회된 Double형 결과를 String형 변수에 Assign (Single)
function GetDblToS32(FieldName:String; OccrNo:Integer):String;
begin
     Result := FloatToStr(GetDblVal32(FieldName,OccrNo));
end;

//%%%%
// 6.13.1 Download된 File로부터 Variant형 변수에 Assign (Multi) FTP
function GetFldVarFile(LocalFile: String; Deli: String; VariantValue: Array of PVariant): LongInt;
var
   S: String;
   i, j: Integer;
   F : TextFile;
   tmpLine, tmpStr : String;
begin
     Result := -1;

     for i := 0 to High(VariantValue) do
  	    VariantValue[i]^ := VarArrayCreate([0,0], varVariant);

     AssignFile(F, LocalFile);

     Reset(F);

     //(수정. 2003.2.7 이용언)
     //if Eof(F) then Exit;
     if Eof(F) then
     begin
      CloseFile(F);
      DeleteFile(LocalFile);
      exit;
     end;

     j := 0;

     while not Eof(F) do
     begin
          Readln(F, S);
          i := 0;
          tmpLine := S;
          while pos(Deli, tmpLine) <> 0 do
          begin
               tmpStr  := Copy(tmpLine,1,pos(deli,tmpLine)-1);
               tmpLine := Copy(tmpLine,pos(deli,tmpLine)+length(deli),length(tmpLine));
               VarArrayRedim(VariantValue[i]^, VarArrayHighBound(VariantValue[i]^,1) + 1 );
               VariantValue[i]^[j] := tmpStr;
               inc(i);
          end;
          VarArrayRedim(VariantValue[i]^, VarArrayHighBound(VariantValue[i]^,1) + 1 );
          VariantValue[i]^[j] := tmpLine;
          inc(j);
     end;

     CloseFile(F);

     DeleteFile(LocalFile);

     Result := j;
end;

// GetFldVar와 같은기능 (TMAX API가 다름)
// String과 Integer 만 처리했음.                2003.02.17 박종엽
procedure SGetFldVar(FldNameStr:String; var VariantValue:Variant);
var
   i, RecordCount : LongInt;
   f_type         : Integer;
   f_fldid        : Integer;
   pos_ofs        : integer;
begin
     RecordCount := GetRecordCnt(FldNameStr);
     
     if RecordCount =  0 then
      ReCordCount := 1;
      
     f_fldid := Fldid(PChar(FldNameStr));

     VariantValue := VarArrayCreate([0,RecordCount-1], varVariant);

     f_type := FldType(Fldid(PChar(FldNameStr)));

     pos_ofs := 0;
     case f_type of
          FLD_SHORT, FLD_LONG :
          for i := 0 to RecordCount - 1 do
              VariantValue[i] := SGetIntToS(f_fldid, @pos_ofs);
          FLD_FLOAT, FLD_DOUBLE :
          for i := 0 to RecordCount - 1 do
              VariantValue[i] := GetDblToS(f_fldid, i);
          FLD_CHAR,FLD_STRING,FLD_CARRAY :
          for i := 0 to RecordCount - 1 do
              VariantValue[i] := SGetStrVal(f_fldid, @pos_ofs);     // <-- 이부분이 다름
     end;
end;

// 6.13.2 Download된 File로부터 Variant형 변수에 Assign (Multi) FTP
function GetFldVarFile(LocalFile: String; Deli, LF: String;VariantValue: Array of PVariant): LongInt;
var
   S: String;
   i, j : Integer;
   F : TextFile;
   tmpLine, tmpStr : String;

begin
     Result := -1;

     for i := 0 to High(VariantValue) do
  	    VariantValue[i]^ := VarArrayCreate([0,0], varVariant);

     AssignFile(F, LocalFile);

     Reset(F);

     //(수정. 2003.2.7 이용언)
     //if Eof(F) then exit;
     if Eof(F) then
     begin
      CloseFile(F);
      DeleteFile(LocalFile);
      Exit;
     end;

     j := 0;

     while not Eof(F) do
     begin
          Readln(F, S);

          i := 0;
          tmpLine := S;
          while pos(deli, tmpLine) <> 0 do
          begin
               tmpStr  := Copy(tmpLine,1,pos(deli,tmpLine)-1);
               tmpLine := Copy(tmpLine,pos(deli,tmpLine)+length(deli),length(tmpLine));
               VarArrayRedim(VariantValue[i]^, VarArrayHighBound(VariantValue[i]^,1) + 1 );
               VariantValue[i]^[j] := DecodeString(tmpStr, LF);
               inc(i);
          end;
          VarArrayRedim(VariantValue[i]^, VarArrayHighBound(VariantValue[i]^,1) + 1 );
          VariantValue[i]^[j] := DecodeString(tmpLine,LF);
          inc(j);
     end;

     CloseFile(F);

     DeleteFile(LocalFile);

     Result := j;
end;

//==============================================================================
//  7.Records Counting and Message Returning functions and procedures.
//==============================================================================

// 7.1 조회된 Record수를 읽어 Return하는 function. FML
function GetRecordCnt(FieldName:String):LongInt;
begin
     Result := Foccur(Transf, Fldid(PChar(FieldName)));
end;

// 7.2 조회된 Record수를 읽어 Return하는 function. FML32
function GetRecordCnt32(FieldName:String):LongInt;
begin
     Result := Foccur32(Transf, Fldid32(PChar(FieldName)));
end;

// 7.3 TUXEDO Service Message를 읽어 Return하는 function.
function GetTxMsg:String;
begin
     Result := txMsg;
     if (TxMsg = '') then Result := DefaultErrMsg;
end;

// 7.4 Return Error No.
function GetTxErrNo:Integer;
begin
     Result := gettperrno;
end;

// 7.5 Return tpurcode.
function GetTxUrcode:Integer;
begin
     Result := gettpurcode;
end;

//==============================================================================
//  8.For a Task Related to Event-based communication
//==============================================================================

// 8.1 Set unsolicited message call-back [Atmi.tpsetunsol()]
procedure txSetUnSol;
begin
     funcp := @txUnsolAct;

     if (tpsetunsol(funcp) = TPUNSOLERR) then
     begin
          txMsg := 'tpsetunsol fail, ' + StrPas(tpstrerror(gettperrno));
          txTerm;
     end;
end;

// 8.2 function Pointer를 nil로 Setting.
procedure txSetUnSolNil;
begin
     tpsetunsol(nil);
end;

// 8.3 Check the arrival of unsolicited messages [Atmi.tpchkunsol()]
function txChkUnSol:Integer;
begin
     Result := tpchkunsol;
end;

// 8.4 Send messages to several clients [Atmi.tpbroadcast()]
function txBroadCast(MName,UName,CName,MsgStr:String):Integer;
var
   MsgP : Pointer;
begin
     MsgP := tpalloc('STRING', Nil, 128);

     if (MsgP = nil) then
     begin
          ShowMessageM('tpalloc failed in Broadcast, ' + StrPas(tpstrerror(gettperrno)));
          tpfree(MsgP);
          Result := -1;
          Exit;
     end;

     strcopy(MsgP,PChar(MsgStr));

     Result := tpbroadcast(PChar(MName),PChar(UName),PChar(CName),MsgP,0,TPNOTIME);
     tpfree(MsgP);
end;

// 8.5 Broadcasting Call procedure.
procedure txUnsolAct(MsgA:Pointer; len,flags:LongInt);
var
   FormStr: String;
begin
     tpMessage := MsgA;
     FormStr := Application.MainForm.Name;
     PostMessage(FindWindow(PChar('T' + FormStr), nil), WM_MSGFORM, 0, 0);
end;

//==============================================================================
//  9.Image Data functions and procedures.
//==============================================================================

// 9.1 Image Data Receiving procedure.
procedure GetFldImg(FldNameStr:String; var ImgStream:TMemoryStream);
var
   tSize : Integer;
   str : PChar;
begin
     tSize := 0;
     GetMem(Str, 65532);

     if (Fget(transf, Fldid(PChar(FldNameStr)), 0, str, @tSize) = -1) then
        txMsg := 'fget failed, ' + StrPas(Fstrerror(GetFerror))
     else
     begin
          ImgStream.Write(Str[0],tSize);
          ImgStream.position := 0;
     end;

     FreeMem(str);
end;

// 9.2 Image Data Receiving procedure.
procedure GetFldImg32(FldNameStr:String; var ImgStream:TMemoryStream);
var
   tSize : Integer;
   str : PChar;
begin
     tSize := 0;
     GetMem(Str, 65532);

     if (Fget32(transf, Fldid32(PChar(FldNameStr)), 0, str, @tSize) = -1) then
        txMsg := 'fget failed, ' + StrPas(Fstrerror(GetFerror))
     else
     begin
          ImgStream.Write(Str[0],tSize);
          ImgStream.position := 0;
     end;

     FreeMem(str);
end;

// 9.3 Image Data Sending procedure. FML
procedure SetFldImage(OccurNo:Integer;FldNameStr:String; ImgStream:TMemoryStream);
begin
     if (transf <> nil) then
        FChg(Transf,Fldid(PChar(FldNameStr)),OccurNo,ImgStream.Memory,
             ImgStream.Size);
end;

// 9.4 Image Data Sending procedure. FML32
procedure SetFldImage32(OccurNo:Integer;FldNameStr:String; ImgStream:TMemoryStream);
begin
     if (transf <> nil) then
        FChg32(Transf,Fldid32(PChar(FldNameStr)),OccurNo,ImgStream.Memory,
             ImgStream.Size);
end;

//==============================================================================
//  10.Conversational Mode functions and procedures.
//==============================================================================

// 10.1 Begin a conversation with a service [Atmi.tpconnect()]
function txConnect(ServiceName:String):Boolean;
begin
     ConnectID := -1;

     if (transf = nil) then
     begin
          txMsg := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := False;
          Exit;
     end;

     ConnectID := tpconnect(PChar(ServiceName),nil,0,TPSENDONLY);

     if (ConnectID = -1) then
     begin
          txMsg := 'tpconnect error, ' + StrPas(tpstrerror(gettperrno));
          txFree;
          Result := False;
          Connected := False;
          exit;
     end;

     Connected := True;
     Result := True;
end;

// 10.2 Send a message in a conversation [Atmi.tpsend()]
function txSend:Boolean;
begin
     if not(Connected) then
     begin
          Result := False;
          exit;
     end;

     if (tpsend(ConnectID,transf,0,TPRECVONLY,@revent) = -1) then
     begin
          txMsg := 'tpsend error, ' + StrPas(tpstrerror(gettperrno));
          tpdiscon(ConnectID);
          txFree;
          Connected := False;
          Result := False;
          exit;
     end;

     Result := True;
end;

// 10.3 Receive a message in a conversation [Atmi.tprecv()]
function txRecv:Boolean;
var
   len : LongInt;
begin
     if not(Connected) then
     begin
          Result := False;
          exit;
     end;

     tprecv(ConnectID,@transf,@len,TPNOCHANGE,@revent);

     if ((gettperrno = TPEEVENT) and (revent <> TPEV_SENDONLY) and
        (revent <> TPEV_SVCSUCC)) then
     begin
          txMsg := 'tprecv error, ' + StrPas(tpstrerror(gettperrno));
          tpdiscon(ConnectID);
          txFree;
          Result := False;
          exit;
     end;

     Result := True;
end;

// 10.4 Abnormally terminate a conversation [Atmi.tpdiscon()]
procedure txDiscon;
begin
     tpdiscon(ConnectID);
end;

//==============================================================================
//  11.For a Task Related to Error Messages and System Messages.
//==============================================================================
//  11.1 Show Common Client, Tuxedo, Service Error Messages.
procedure ShowErrMsg; overload;
var
   i : integer;
   s : string;
   t : string;
begin
     if GetTxUrCode = -1 then
     begin
          if TuxMsgf1 = nil then
             TuxMsgf1 := TTuxMsgf1.Create(Application);

          s := '';
          t := '';

          for i := 1 to length(txMsg) do
          begin
               t := copy(txMsg,i,1);
               if (t = CHR(10)) or (i = length(txMsg)) THEN
               begin
                    TuxMsgf1.me_detail.lines.add(s);
                    s := '';
               end;
               if t < ' ' then t := '';
                  s := s + t;
          end;

          TuxMsgf1.Show;
     end
     else if GetTxUrCode = 1 then
     begin
                ShowMessage(GetTxMsg);
     end
     else if GetTxUrCode = 0 then
     begin
          if (Screen.ActiveForm = nil) then
          begin
               for i := 0 to Application.MainForm.ControlCount -1 do
               begin
                    if Application.MainForm.Controls[i] is TStatusBar then
                    begin
                         with Application.MainForm.Controls[i] as TStatusBar do
                         begin
                              Panels[0].Text := GetTxMsg;
                         end;
                    end;
               end;
          end
          else
          begin
               for i := 0 to Screen.ActiveForm.ControlCount -1 do
               begin
                    if Screen.ActiveForm.Controls[i] is TStatusBar then
                    begin
                         with Screen.ActiveForm.Controls[i] as TStatusBar do
                         begin
                              Panels[0].Text := GetTxMsg;
                         end;
                    end;
               end;

//               Screen.ActiveForm.Name;
          end;
     end;
end;

//  11.2 Show Common Client, Tuxedo, Service Error Messages.
procedure ShowErrMsg(StatusBar: TStatusBar); overload;
var
   i : integer;
   s : string;
   t : string;
begin
     if GetTxUrCode = -1 then
     begin
          if TuxMsgf1 = nil then
             TuxMsgf1 := TTuxMsgf1.Create(Application);

          s := '';
          t := '';

          for i := 1 to length(txMsg) do
          begin
               t := copy(txMsg,i,1);
               if (t = CHR(10)) or (i = length(txMsg)) THEN
               begin
                    TuxMsgf1.me_detail.lines.add(s);
                    s := '';
               end;
               if t < ' ' then t := '';
                  s := s + t;
          end;

          TuxMsgf1.Show;
     end
     else if GetTxUrCode = 1 then
     begin
          ShowMessage(GetTxMsg);
     end
     else if GetTxUrCode = 0 then
     begin
          StatusBar.Panels[0].Text := GetTxMsg;
     end;
end;

//  11.3 Show System Messages.
procedure ShowSysMsg;
begin
     if SysMsgf1 = nil then
         SysMsgf1 := TSysMsgf1.Create(Application);
     SysMsgf1.Show;
end;

//==============================================================================
//  12.ETC
//==============================================================================

Function TstringsToArray(var vArr : Variant; sArr : Tstrings;
                         LowIx : integer; HighIx : integer) : Variant;
var i : integer;
begin
   vArr := VarArrayCreate([lowIx,highIx], VarOleStr);
   For i := LowIx to HighIx do
   begin
      vArr[i] := sArr.Strings[i];
   end;
   Result := vArr;
end;

//-------------------------------------------------
// 현재 다운받고 있는 상황을 표시.(다운로드 정도)
//-------------------------------------------------
//--park mw 20020830
{procedure HcmNMFTP.FTPPacketRecvd(Sender: TObject);
var
   i : Integer;
   Gauge_Comp : TComponent;
   ApplMainForm : TForm;
begin

   // 현재 ActiveForm내에 TGauge 컴포넌트가 존재하는지 검사.
   // 만약 존재하면 해당 컴포넌트에 다운로드 정도를 표시.
   // 존재하지 않은 경우엔 아무일도 하지 않는다...
   if (Screen.ActiveForm = nil) then
   begin
      for i := 0 to Application.MainForm.ComponentCount -1 do
      begin
         if Application.MainForm.Components[i] is TGauge then
         begin
            with Application.MainForm.Components[i] as TGauge do
            begin
               Progress := TUXFTP.BytesRecvd * 100 div TUXFTP.BytesTotal;
            end;
         end;
      end;
   end
   else
   begin
      for i := 0 to Screen.ActiveForm.ComponentCount -1 do
      begin
         if Screen.ActiveForm.Components[i] is TGauge then
         begin
            with Screen.ActiveForm.Components[i] as TGauge do
            begin
               Progress := TUXFTP.BytesRecvd * 100 div TUXFTP.BytesTotal;
            end;

         end;
      end;
   end;
end;
}

//-------------------------------------------------
// 현재 업로드 하고 있는 상황을 표시.(업로드 정도)
//-------------------------------------------------
//--park mw 20020830
{procedure HcmNMFTP.FTPPacketSent(Sender: TObject);
var
   i : Integer;
begin

   // 현재 ActiveForm내에 TGauge 컴포넌트가 존재하는지 검사.
   // 만약 존재하면 해당 컴포넌트에 업로드 정도를 표시.
   // 존재하지 않은 경우엔 아무일도 하지 않는다...
   if (Screen.ActiveForm = nil) then
   begin
      for i := 0 to Application.MainForm.ComponentCount -1 do
      begin
         if Application.MainForm.Components[i] is TGauge then
         begin
            with Application.MainForm.Components[i] as TGauge do
            begin
               Progress := TUXFTP.BytesSent * 100 div TUXFTP.BytesTotal;
            end;
         end;
      end;
   end
   else
   begin
      for i := 0 to Screen.ActiveForm.ComponentCount -1 do
      begin
         if Screen.ActiveForm.Components[i] is TGauge then
         begin
            with Screen.ActiveForm.Components[i] as TGauge do
            begin
               Progress := TUXFTP.BytesSent * 100 div TUXFTP.BytesTotal;
            end;

         end;
      end;
   end;
end;
}

//--park mw 20020830
procedure HcmNMFTP.FTPWork(Sender: TObject; AWorkMode: TWorkMode;
       const AWorkCount: Integer);
var
   i : Integer;
   Gauge_Comp : TComponent;
   ApplMainForm : TForm;
begin
   // 현재 ActiveForm내에 TGauge 컴포넌트가 존재하는지 검사.
   // 만약 존재하면 해당 컴포넌트에 업/다운로드 정도를 표시.
   // 존재하지 않은 경우엔 아무일도 하지 않는다...
   if (Screen.ActiveForm = nil) then
   begin
      for i := 0 to Application.MainForm.ComponentCount -1 do
      begin
         if  (Application.MainForm.Components[i] is TGauge)
          and(trim(Application.MainForm.Components[i].Name) = 'FTPGauge') then
         begin
            with Application.MainForm.Components[i] as TGauge do
            begin
               Progress := AWorkCount;
            end;
         end;
      end;
   end
   else
   begin
      for i := 0 to Screen.ActiveForm.ComponentCount -1 do
      begin
         if  (Screen.ActiveForm.Components[i] is TGauge)
          and(trim(Application.MainForm.Components[i].Name) = 'FTPGauge') then
         begin
            with Screen.ActiveForm.Components[i] as TGauge do
            begin
               Progress := AWorkCount;
            end;

         end;
      end;
   end;
end;

//--park mw 20020830
procedure HcmNMFTP.FTPWorkBegin(Sender: TObject; AWorkMode: TWorkMode;
       const AWorkCountMax: Integer);
var
   i : Integer;
   Gauge_Comp : TComponent;
   ApplMainForm : TForm;
begin
   // 현재 ActiveForm내에 TGauge 컴포넌트가 존재하는지 검사.
   // 만약 존재하면 해당 컴포넌트에 업/다운로드 정도를 표시.
   // 존재하지 않은 경우엔 아무일도 하지 않는다...
   if (Screen.ActiveForm = nil) then
   begin
      for i := 0 to Application.MainForm.ComponentCount -1 do
      begin
         if  (Application.MainForm.Components[i] is TGauge)
          and(trim(Application.MainForm.Components[i].Name) = 'FTPGauge') then
         begin
            with Application.MainForm.Components[i] as TGauge do
            begin
               if AWorkCountMax > 0 then
                  MaxValue := AWorkCountMax
               else
                  MaxValue := BytesToTransfer;
            end;
         end;
      end;
   end
   else
   begin
      for i := 0 to Screen.ActiveForm.ComponentCount -1 do
      begin
         if  (Screen.ActiveForm.Components[i] is TGauge)
          and(trim(Application.MainForm.Components[i].Name) = 'FTPGauge') then
         begin
            with Screen.ActiveForm.Components[i] as TGauge do
            begin
               if AWorkCountMax > 0 then
                  MaxValue := AWorkCountMax
               else
                  MaxValue := BytesToTransfer;
            end;
         end;
      end;
   end;
end;


//-------------------------------------------------
//-------------------------------------------------
//TUXFTP Instance Create
function InitFTP: Boolean;
begin
     try
        TUXFTP := HcmNMFTP.Create(Application);

{
        // 김정수 20010824-------------------------
        TUXFTP.OnPacketRecvd := TUXFTP.FTPPacketRecvd;
        TUXFTP.OnPacketSent := TUXFTP.FTPPacketSent;
        // 김정수 20010824-------------------------
}
        //--park mw 20020830
        TUXFTP.OnWork      := TUXFTP.FTPWork;
        TUXFTP.OnWorkBegin := TUXFTP.FTPWorkBegin;

     except
           Result := False;
           Exit;
     end;

     Result := True;
end;

//TUXFTP Instance Free
function FreeFTP: Boolean;
begin
     try
        FreeAndNil(TUXFTP);
     except
           Result := False;
           Exit;
     end;

     Result := True;
end;

//TUXFTP Set FTP File Type ASCII
function SetASCIIFTP: Boolean;
begin
     try
        //--park mw 20020830
        //TUXFTP.Mode(MODE_ASCII);
        TUXFTP.TransferType := ftASCII;
     except
           Result := False;
           Exit;
     end;

     Result := True;
end;

//TUXFTP Set FTP File Type Binary
function SetBINFTP: Boolean;
begin
     try
        //--park mw 20020830
        //TUXFTP.Mode(MODE_BYTE);
        TUXFTP.TransferType := ftBinary;
     except
           Result := False;
           Exit;
     end;

     Result := True;
end;

//TUXFTP Connect Host with Server IP, USERID, PASSWORD
function ConnectFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD: String): Boolean;
begin
     try
        TUXFTP.Host := FTP_SVRIP;
        //--park mw 20020830
        //TUXFTP.UserID := FTP_USERID;
        //TUXFTP.User := FTP_USERID;
        TUXFTP.UserName := FTP_USERID;
        TUXFTP.Password := FTP_PASSWD;
        TUXFTP.Connect;
     except
           Result := False;
           Exit;
     end;

     Result := True;
end;

//TUXFTP Disconnect Host
function DisconnectFTP: Boolean;
begin
     try
        TUXFTP.Disconnect;
     except
           Result := False;
           Exit;
     end;

     Result := True;
end;

//TUXFTP File Download
function DownloadFTP(RemoteFile, LocalFile: String): Boolean;
begin
     try
        //--park mw 20020830
        TUXFTP.BytesToTransfer := TUXFTP.Size(RemoteFile);
        //TUXFTP.Download(RemoteFile, LocalFile);
        TUXFTP.Get(RemoteFile, LocalFile, True);
     except
           Result := False;
           Exit;
     end;

     Result := True;
end;

//TUXFTP File Get
//--park mw 20020830
//function GetFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
//                     RemoteFile, LocalFile: String; FTP_MODE: Integer; FileErase: Boolean): Boolean;
function GetFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                     RemoteFile, LocalFile: String; FTP_MODE: TIdFTPTransferType; FileErase: Boolean): Boolean;
begin
//-----------     if (TUXFTP <> nil) then
//-----------     begin
//-----------         Exit;
//-----------     end;

     if Not(InitFTP) then
     begin
          ShowMessageM('FTP Instance Creation failed');
          Result := False;
          Exit;
     end;

     if Not(ConnectFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD)) then
     begin
          ShowMessageM('FTP Connection failed');
          Result := False;
          Exit;
     end;

     //--park mw 20020830
     //if FTP_MODE = MODE_ASCII then
     if FTP_MODE = ftASCII then
     begin
          if Not(SetASCIIFTP) then
          begin
               ShowMessageM('FTP ASCII MODE CHANGE failed');
               //(추가. 2003.2.7 이용언)
               if UpperCase(Copy(RemoteFile,Length(RemoteFile)-2,3)) = 'LIS' then
               begin
                  DeleteRemoteFile(RemoteFile);
               end;
               //
               Result := False;
               Exit;
          end;
     end
     //--park mw 20020830
     //else if FTP_MODE = MODE_BYTE then
     else if FTP_MODE = ftBinary then
     begin
          if Not(SetBINFTP) then
          begin
               ShowMessageM('FTP BINARY MODE CHANGE failed');
               //(추가. 2003.2.7 이용언)
               if UpperCase(Copy(RemoteFile,Length(RemoteFile)-2,3)) = 'LIS' then
               begin
                  DeleteRemoteFile(RemoteFile);
               end;
               //
               Result := False;
               Exit;
          end;
     end;

     // 파일 다운받기 오류시...
     if Not(DownloadFTP(RemoteFile, LocalFile)) then
     begin
          //--park mw 20020830
          //if FTP_MODE = MODE_ASCII then
          if FTP_MODE = ftASCII then
          begin
               Dialogs.MessageDlg('FTP ASCII File Download failed :' + Chr(13) +
//                        DecodeFtpReplyCode(TUXFTP.ReplyNumber), Dialogs.mtError, [Dialogs.mbOk], 0);
                        //TUXFTP.CmdResult, Dialogs.mtError, [Dialogs.mbOk], 0);
                        TUXFTP.LastCmdResult.Text.Text, Dialogs.mtError, [Dialogs.mbOk], 0);
          end
          //--park mw 20020830
          //else if FTP_MODE = MODE_BYTE then
          else if FTP_MODE = ftBinary then
          begin
               Dialogs.MessageDlg('FTP BINARY File Download failed :' + Chr(13) +
//                        DecodeFtpReplyCode(TUXFTP.ReplyNumber), Dialogs.mtError, [Dialogs.mbOk], 0);
                        //TUXFTP.CmdResult, Dialogs.mtError, [Dialogs.mbOk], 0);
                        TUXFTP.LastCmdResult.Text.Text, Dialogs.mtError, [Dialogs.mbOk], 0);
          end;
          //(추가. 2003.2.7 이용언)
          if UpperCase(Copy(RemoteFile,Length(RemoteFile)-2,3)) = 'LIS' then
          begin
             DeleteRemoteFile(RemoteFile);
          end;
          //
          Result := False;
          Exit;
     end;

     if FileErase then
     begin
          if Not(DeleteRemoteFile(RemoteFile)) then
          begin
               Result := False;
               Exit;
          end;
     end;

     if Not(DisconnectFTP) then
     begin
          ShowMessageM('FTP Disconnection failed');
          Result := False;
          Exit;
     end;

     if Not(FreeFTP) then
     begin
          ShowMessageM('FTP Instance Free failed');
          Result := False;
          Exit;
     end;

     Result := True;
end;

//------------------------------
// FTP 응답코드의 내용을 출력.
//------------------------------
function DecodeFtpReplyCode(iCodeParam: Integer): String;
var
   tmpString : String;
   iLineNum : Integer;
   ix : Integer;
   Fp : TextFile;
   Line : String;
   chk : Integer;
begin
   tmpString := 'FTP_REPLY_' + IntToStr(iCodeParam);

   try
      chk := -1;
      AssignFile(Fp, 'C:\uniHIS\EXE\FRCODE.ENV');
      Reset(fp);

      While not Eof(fp) do
      begin
         Readln(fp, Line);
         Line := UpperCase(Line);

         if Pos(tmpString, Line) = 0 then
            Continue
         else
         begin
            chk := 1;
            break;
         end;
      end;

      if (chk = 1) then
      begin
         Readln(fp, Line);
         iLineNum := StrToInt(Line);

         for ix := 1 to  iLineNum do
         begin
            Readln(fp, Line);

            if ix = 1 then
               Result := Line
            else
               Result := Result + Chr(13) + Line;
         end;
      end
      else
         CloseFile(fp);

   except
      Result := '알수 없는 오류가 발생했습니다.';
   end;
end;



//TUXFTP ASCII File Get
function GetASCIIFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                     RemoteFile, LocalFile: String; FileErase: Boolean): Boolean;
begin
     //--park mw 20020830
     //Result := GetFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD, RemoteFile, LocalFile, MODE_ASCII, FileErase);
     Result := GetFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD, RemoteFile, LocalFile, ftASCII, FileErase);
end;

//TUXFTP BINARY File Get
function GetBINFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                     RemoteFile, LocalFile: String; FileErase: Boolean): Boolean;
begin
     //--park mw 20020830
     //Result := GetFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD, RemoteFile, LocalFile, MODE_BYTE, FileErase);
     Result := GetFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD, RemoteFile, LocalFile, ftBinary, FileErase);
end;

//TUXFTP File Upload
function UpFTP(LocalFile, RemoteFile: String): Boolean;
var
   FBIN: file of Byte;
begin
     AssignFile(FBIN, LocalFile);
     Reset(FBIN);

     try
        //--park mw 20020830
        TUXFTP.BytesToTransfer := FileSize(FBIN);
        //TUXFTP.Upload(LocalFile, RemoteFile);
        TUXFTP.Put(LocalFile, RemoteFile);
        CloseFile(FBIN);
     except
        Result := False;
        CloseFile(FBIN);
        Exit;
     end;

     Result := True;
end;

//TUXFTP File PutFileFTP
//--park mw 20020830
//function PutFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
//                    LocalFile, RemoteFile: String; FTP_MODE: Integer): Boolean;
function PutFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                    LocalFile, RemoteFile: String; FTP_MODE: TIdFTPTransferType): Boolean;
begin
     if Not(InitFTP) then
     begin
          ShowMessageM('FTP Instance Creation failed');
          Result := False;
          Exit;
     end;

     if Not(ConnectFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD)) then
     begin
          ShowMessageM('FTP Connection failed');
          Result := False;
          Exit;
     end;

     //--park mw 20020830
     //if FTP_MODE = MODE_ASCII then
     if FTP_MODE = ftASCII then
     begin
          if Not(SetASCIIFTP) then
          begin
               ShowMessageM('FTP ASCII MODE CHANGE failed');
               Result := False;
               Exit;
          end;
     end
     //--park mw 20020830
     //else if FTP_MODE = MODE_BYTE then
     else if FTP_MODE = ftBinary then
     begin
          if Not(SetBINFTP) then
          begin
               ShowMessageM('FTP BINARY MODE CHANGE failed');
               Result := False;
               Exit;
          end;
     end;

     if Not(UpFTP(LocalFile, RemoteFile)) then
     begin
          //--park mw 20020830
          //if FTP_MODE = MODE_ASCII then
          if FTP_MODE = ftASCII then
          begin
               ShowMessageM('FTP ASCII File Upload failed');
          end
          //--park mw 20020830
          //else if FTP_MODE = MODE_BYTE then
          else if FTP_MODE = ftBinary then
          begin
               ShowMessageM('FTP BINARY File Upload failed');
          end;
          Result := False;
          Exit;
     end;

     //--park mw 20020830
     //TUXFTP.DoCommand('SITE CHMOD 755 ' + RemoteFile);
     TUXFTP.SendCmd('SITE CHMOD 755 ' + RemoteFile);

     if Not(DisconnectFTP) then
     begin
          ShowMessageM('FTP Disconnection failed');
          Result := False;
          Exit;
     end;

     if Not(FreeFTP) then
     begin
          ShowMessageM('FTP Instance Free failed');
          Result := False;
          Exit;
     end;

     Result := True;
end;

//TUXFTP ASCII File Get
function PutASCIIFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                     LocalFile, RemoteFile: String): Boolean;
begin
     //--park mw 20020830
     //Result := PutFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD, LocalFile, RemoteFile, MODE_ASCII);
     Result := PutFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD, LocalFile, RemoteFile, ftASCII);
end;

//TUXFTP BINARY File Get
function PutBINFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                     LocalFile, RemoteFile: String): Boolean;
begin
     //--park mw 20020830
     //Result := PutFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD, LocalFile, RemoteFile, MODE_BYTE);
     Result := PutFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD, LocalFile, RemoteFile, ftBinary);
end;

//TUXFTP File Size Check
//--park mw 20020830
//function CheckFileSizeFTP(LocalFile: String; FTP_FILESIZE: LongInt; FTP_MODE: Integer): Boolean;
function CheckFileSizeFTP(LocalFile: String; FTP_FILESIZE: LongInt; FTP_MODE: TIdFTPTransferType): Boolean;
var
   FBIN: file of Byte;
   FASCII: TextFile;
   size, FLine : Longint;
   S: String;
begin
     AssignFile(FBIN, LocalFile);

     Reset(FBIN);

     size := FileSize(FBIN);

     CloseFile(FBIN);

     //--park mw 20020830
     //if FTP_MODE = MODE_ASCII then
     if FTP_MODE = ftASCII then
     begin
          AssignFile(FASCII, LocalFile);

          Reset(FASCII);

          FLine := 0;

          while not(EOF(FASCII)) do
          begin
               Readln(FASCII, S);
               FLine := FLine + 1;
          end;

          FTP_FILESIZE := FTP_FILESIZE + FLine;

          CloseFile(FASCII);
     end;

     if ftp_filesize = size then
     begin
          Result := True;
     end
     else
     begin
          Result := False;
     end;
end;

//TUXFTP Get RemoteFile Name
function GetLocalFileName(RemoteFile: String): String;
var
   ix: Integer;
   TmpFile: String;
begin
     TmpFile := '';

     for ix := Length(RemoteFile) downto 1 do
     begin
          if RemoteFile[ix] = '/' then Break;

          TmpFile := RemoteFile[ix] + TmpFile;
     end;

     Result := LOCALDIR + TmpFile;
end;


function GetFileName(LocalFile: String): String;
var
   ix: Integer;
   TmpFile: String;
begin
     TmpFile := '';

     for ix := Length(LocalFile) downto 1 do
     begin
          if LocalFile[ix] = Chr(Ord('\')) then Break;

          TmpFile := LocalFile[ix] + TmpFile;
     end;

     Result := TmpFile;
end;

//TUXFTP Set LocalFile Date 'yyyy-mm-dd hh:mi:ss'
function SetLocalFileDate(LocalFile, FTP_DATETIME: String): Boolean;
var
   FileHandle: Integer;
begin
   //-------------------------------------------------
   // 김정수 변경.
   // 오동작 : 서버쪽 FILSTAMP로의 설정이 이상하게 됨.
   // 수정사항 : TIME + 1로 설정...
   //-------------------------------------------------

     Result := True;

     try
        FileHandle := FileOpen(LocalFile, fmOpenReadWrite);
        FileSetDate(FileHandle, DateTimeToFileDate(StrToDateTime(FTP_DATETIME))+1);
        FileClose(FileHandle);
     except
           Result := False;
     end;
end;

//TUXFTP Delete RemoteFile Date
function DeleteRemoteFile(RemoteFile: String): Boolean;
begin
     try
        //2003.05.27 조건 추가 'LIS' file이면 삭제 by 이창환//
        if UpperCase(Copy(RemoteFile,Length(RemoteFile)-2,3)) = 'LIS' then
           TUXFTP.Delete(RemoteFile);
     except
           Result := False;
     end;

     Result := True;
end;

//TUXFTP Set FTP Env
function SetFTPEnv: Boolean;
var
   FIniFile: TRegIniFile;
begin
     Result := True;

     try
        FIniFile := TRegIniFile.Create('C:\uniHIS\ENV\FTP.ENV');
        LocalDir := FIniFile.ReadString('FTP', 'LOCALDIR', 'C:\uniHIS\TEMP\SPOOL\');
        FIniFile.Free;
     except
           Result := True;
     end;
end;

//TUXFTP Decoder
Function DecodeString(S: String;LF : String): String;
var
    i, p : Integer;
begin
    while (Pos(LF, S) > 0) do
    begin
        p := pos(LF,S);
        S[p] := CHR(13);
        S[p+1] := CHR(10);
    end;
    result := S;
end;

//TUXFTP txUpload ASCII File
Function txUpload(LocalFile: String; var RemoteFile: String): Boolean; overload;
var
   FTP_SVRIP, FTP_USERID, FTP_PASSWD, FTP_HOSTNAME, FTP_DIR: String;
begin
     if GetUploadInfo(FTP_SVRIP, FTP_USERID, FTP_PASSWD, FTP_HOSTNAME, FTP_DIR) then
     begin
          //--park mw 20020830
          //if PutFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD, LocalFile, FTP_DIR + '/' + GetFileName(LocalFile), Mode_ASCII) then
          if PutFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD, LocalFile, FTP_DIR + '/' + GetFileName(LocalFile), ftASCII) then
          begin
               if Not(SendRCopyCall(FTP_HOSTNAME, FTP_DIR + '/' + GetFileName(LocalFile), FTP_USERID)) then
               begin
                    Result := False;
                    Exit;
               end;
          end
          else
          begin
               Result := False;
               Exit;
          end;
     end
     else
     begin
          Result := False;
          Exit;
     end;

     RemoteFile := FTP_DIR + '/' + GetFileName(LocalFile);

     Result := True;
end;

//TUXFTP txUpload ASCII, BIN File
Function txUpload(LocalFile, Mode: String; var RemoteFile: String): Boolean;
var
   FTP_SVRIP, FTP_USERID, FTP_PASSWD, FTP_HOSTNAME, FTP_DIR: String;
   //--park mw 20020830
   //FTP_MODE: Integer;
   FTP_MODE : TIdFTPTransferType;
begin
     if Mode = 'BIN' then
     begin
          //FTP_MODE := MODE_BYTE;
          FTP_MODE := ftBinary;
     end
     else if Mode = 'ASCII' then
     begin
          //FTP_MODE := MODE_ASCII;
          FTP_MODE := ftASCII;
     end;

     if GetUploadInfo(FTP_SVRIP, FTP_USERID, FTP_PASSWD, FTP_HOSTNAME, FTP_DIR) then
     begin
          if PutFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD, LocalFile, FTP_DIR + '/' + GetFileName(LocalFile), FTP_MODE) then
          begin
               if Not(SendRCopyCall(FTP_HOSTNAME, FTP_DIR + '/' + GetFileName(LocalFile), FTP_USERID)) then
               begin
                    Result := False;
                    Exit;
               end;
          end
          else
          begin
               Result := False;
               Exit;
          end;
     end
     else
     begin
          Result := False;
          Exit;
     end;

     RemoteFile := FTP_DIR + '/' + GetFileName(LocalFile);

     Result := True;
end;

Function txBinUpload(LocalFile, Mode: String; var RemoteFile: String): Boolean;
var
   FTP_SVRIP, FTP_USERID, FTP_PASSWD, FTP_HOSTNAME, FTP_DIR: String;
   //--park mw 20020830
   //FTP_MODE: Integer;
   FTP_MODE : TIdFTPTransferType;
begin
     if Mode = 'BIN' then
     begin
          //FTP_MODE := MODE_BYTE;
          FTP_MODE := ftBinary;
     end
     else if Mode = 'ASCII' then
     begin
          //FTP_MODE := MODE_ASCII;
          FTP_MODE := ftASCII;
     end;

     if GetBinUploadInfo(FTP_SVRIP, FTP_USERID, FTP_PASSWD, FTP_HOSTNAME, FTP_DIR) then
     begin
          if PutFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD, LocalFile, FTP_DIR + '/' + GetFileName(LocalFile), FTP_MODE) then
          begin
               if Not(SendRCopyCall(FTP_HOSTNAME, FTP_DIR + '/' + GetFileName(LocalFile), FTP_USERID)) then
               begin
                    Result := False;
                    Exit;
               end;
          end
          else
          begin
               Result := False;
               Exit;
          end;
     end
     else
     begin
          Result := False;
          Exit;
     end;

     RemoteFile := FTP_DIR + '/' + GetFileName(LocalFile);

     Result := True;
end;

//TUXFTP GetUploadInfo
function GetUploadInfo(var FTP_SVRIP, FTP_USERID, FTP_PASSWD, FTP_HOSTNAME, FTP_DIR: String): Boolean;
var
   cmUpload: HcmUpload;
   ix, row: Integer;
begin
     Screen.Cursor := crHourGlass;

     cmUpload := HcmUpload.Create;

     row := cmUpload.uploadinfo;

     if row < 0 then
     begin
          Result := False;
     end
     else
     begin
          FTP_SVRIP    := cmUpload.sSvrip[0];
          FTP_USERID   := cmUpload.sUserid[0];
          FTP_PASSWD   := cmUpload.sPasswd[0];
          FTP_HOSTNAME := cmUpload.sHostname[0];
          FTP_DIR      := cmUpload.sDir[0];

          Result := True;
     end;

     cmUpload.Free;

     Screen.Cursor := crDefault;
end;

//TUXFTP GetUploadInfo
function GetBinUploadInfo(var FTP_SVRIP, FTP_USERID, FTP_PASSWD, FTP_HOSTNAME, FTP_DIR: String): Boolean;
var
   cmUpload: HcmUpload;
   ix, row: Integer;
begin
     Screen.Cursor := crHourGlass;

     cmUpload := HcmUpload.Create;

     row := cmUpload.binuploadinfo;

     if row < 0 then
     begin
          Result := False;
     end
     else
     begin
          FTP_SVRIP    := cmUpload.sSvrip[0];
          FTP_USERID   := cmUpload.sUserid[0];
          FTP_PASSWD   := cmUpload.sPasswd[0];
          FTP_HOSTNAME := cmUpload.sHostname[0];
          FTP_DIR      := cmUpload.sDir[0];

          Result := True;
     end;

     cmUpload.Free;

     Screen.Cursor := crDefault;
end;

//TUXFTP SendRCopyCall
function SendRCopyCall(HostName, RemoteFile, FTP_USERID: String): Boolean;
var
   cmUpload: HcmUpload;
   row: Integer;
begin
     Screen.Cursor := crHourGlass;

     cmUpload := HcmUpload.Create;

     row := cmUpload.rcopycall(HostName, RemoteFile, FTP_USERID);

     if row < 0 then
     begin
          Result := False;
     end
     else
     begin
          Result := True;
     end;

     cmUpload.Free;

     Screen.Cursor := crDefault;
end;

//==============================================================================
//  14.Menu Setting Module
//==============================================================================

//MainMenu Create
function CreateMainMenu: Boolean;
begin
     try
        Result  := True;
        TuxMenu := TMainMenu.Create(Application);
        TuxMenu.Name := 'TuxMenu';
        TuxMenu.AutoHotkeys := maManual;

     except
           Result := False;
     end;
end;

//Get Local MainMenu Componenet
function GetLocalMainMenu: TMainMenu;
var
   ix: Integer;
begin
     Result := nil;

     for ix := 0 to Application.MainForm.ComponentCount - 1 do
     begin
          if Application.MainForm.Components[ix].ClassName = 'TMainMenu' then
          begin
               Result := TMainMenu(Application.MainForm.Components[ix]);
               Exit;
          end;
     end;
end;

//SetMainMenu
function SetMainMenu: Boolean;
var
   LocalMenu: TMainMenu;
begin
     LocalMenu := GetLocalMainMenu;

     if LocalMenu = nil then
     begin
          Result := False;
          Exit;
     end;

     if not(CreateMainMenu) then
     begin
          Result := False;
          Exit;
     end;

     if not(GetMainMenuData(LocalMenu, G_GRPID)) then
     begin
          Result := False;
     end;

     Application.MainForm.Menu := TuxMenu;
end;

//GetMainMenuData
function GetMainMenuData(LocalMenu: TMainMenu; grpid: String): Boolean;
var
   row, ix: Integer;
begin
     Result := False;

     Screen.Cursor := crHourGlass;

     cmTuxMenu := HcmTuxMenu.Create;

     row := cmTuxMenu.List(grpid);

     if row < 0 then
     begin
//          ShowErrMsg;

          Result := False;
     end
     else
     begin
          SetMenu(LocalMenu, TuxMenu, row);
     end;

     cmTuxMenu.Free;

     Screen.Cursor := crDefault;
end;

function SetMenu(LocalMenu, DataMenu: TMainMenu; Row: Integer): Boolean;
var
   ix: Integer;
begin
     Result := True;

     for ix := 0 to Row - 1 do
     begin
          if String(cmTuxMenu.sMenutype[ix]) = 'M' then
          begin
               if not(MakeMenu(DataMenu, ix)) then
               begin
                    Result := False;
                    Exit;
               end;
          end
          else if String(cmTuxMenu.sMenutype[ix]) = 'F' then
          begin
               if not(MakeForm(LocalMenu, DataMenu, ix)) then
               begin
                    Result := False;
                    Exit;
               end;
          end;

          // 정수가 추가............
          // 구분자(Separator를 메뉴에 생성...)
          if String(cmTuxMenu.sSepyn[ix]) = 'Y' then
          begin
               if not(MakeMenu(DataMenu, ix)) then
               begin
                    Result := False;
                    Exit;
               end;
          end;
     end;
end;

//------------------------------------------------
// 구분자일 경우 하나를 더 만들고 두번째 생성된 메뉴를
// visible = false;로 설정한다.
//------------------------------------------------
function MakeMenu(DataMenu: TMainMenu; Row: Integer): Boolean;
var
   MenuItem, ParentMenuItem: TMenuItem;
begin
     try
        Result := True;

        MenuItem := TMenuItem.Create(Application);
        // 자동으로 마지막에 위치하거나 연속된 두개이상의 sepqartor를
        // 제거하지 않도록 설정한다...
        MenuItem.AutoLineReduction := maManual;

        // 구분자일 경우
        if cmTuxMenu.sSepyn[Row] = 'Y' then
        begin
            MenuItem.Name := String(cmTuxMenu.sMenuid[Row] + IntToStr(Row));
            MenuItem.Caption := '-';
        end
        else
        begin
            MenuItem.Caption := String(cmTuxMenu.sMenuname[Row]);
            MenuItem.Name := String(cmTuxMenu.sMenuid[Row]);
        end;

        if Integer(cmTuxMenu.lLevel[Row]) = 1 then
        begin
             DataMenu.Items.Add(MenuItem);
        end
        else if Integer(cmTuxMenu.lLevel[Row]) > 1 then
        begin
             ParentMenuItem := GetMenuItem(String(cmTuxMenu.sParentid[Row]), DataMenu);

             if ParentMenuItem <> nil then
             begin
                  ParentMenuItem.Add(MenuItem);
             end;
        end;
     except
           Result := False;
     end;
end;

function MakeForm(LocalMenu, DataMenu: TMainMenu; Row: Integer): Boolean;
var
   LocalMenuItem, LocalParentMenuItem, DataParentMenuItem: TMenuItem;
begin
     LocalMenuItem := nil;

     LocalParentMenuItem := nil;

     DataParentMenuItem := nil;

     try
        Result := True;

        LocalMenuItem := GetMenuItem(String(cmTuxMenu.sMenuid[Row]), LocalMenu);

        if LocalMenuItem = nil then
        begin
             Result := False;

             Exit;
        end;

        LocalParentMenuItem := GetMenuItem(String(cmTuxMenu.sParentid[Row]), LocalMenu);

        if LocalParentMenuItem = nil then
        begin
             Result := False;

             Exit;
        end;

        DataParentMenuItem := GetMenuItem(String(cmTuxMenu.sParentid[Row]), DataMenu);

        if DataParentMenuItem = nil then
        begin
             Result := False;

             Exit;
        end;

        LocalMenuItem.Parent.Remove(LocalMenuItem);

        if Integer(cmTuxMenu.lLevel[Row]) = 1 then
        begin
             DataMenu.Items.Add(LocalMenuItem);
        end
        else
        begin
             DataParentMenuItem.Add(LocalMenuItem);
        end;

     except
           Result := False;
     end;
end;

function GetMenuItem(menuid: String; MainMenu: TMainMenu): TMenuItem;
var
   MenuItem, ResultItem: TMenuItem;
begin
     MenuItem := MainMenu.Items;

     GetMenuItemText(menuid, MenuItem, ResultItem);

     Result := ResultItem;
end;

function GetMenuItemText(menuid: String; MenuItem: TMenuItem; var ResultItem: TMenuItem): TMenuItem;
var
   ix: Integer;
begin
     if MenuItem.Name = menuid then
     begin
          ResultItem := MenuItem;
          Exit;
     end;

     if MenuItem.Count > 0 then
     begin
          for ix := 0 to MenuItem.Count - 1 do
          begin
               GetMenuItemText(menuid, MenuItem[ix], ResultItem);

          end;
     end
     else
     begin
          Exit;
     end;
end;

//SetSystemFile Recent Setting
//function SetRecentSystem(sCompid, sFileid, sFiletime, sDir, sComptype: Variant;FTP_SVRIP, FTP_USERID, FTP_PASSWD: String): Boolean;
function SetRecentSystem(sCompid, sFileid, sFiletime, sDir, sComptype: Variant;FTP_SVRIP, FTP_USERID, FTP_PASSWD: String;lbFileName: TLabel;gaugeTransferStat: TGauge): Boolean;
var
   ix: Integer;
begin
     Result := True;

     for ix := 0 to VarArrayHighBound(sFileid,1) do
     begin
          try
             // 현재 변경중인 화일을 표시.
             lbFileName.Caption := sCompid[ix];
             gaugeTransferStat.Progress := 0;
             sDir[ix] := SetDownDirectory(sDir[ix]);

             Application.ProcessMessages;

             ForceDirectories(sDir[ix]);

             // CS.EXE의 변경여부 확인...
             if sComptype[ix] = 'A' then
             begin
                  if FileDateToDateTime(FileAge(sDir[ix] + sCompid[ix])) < StrToDateTime(GetDateTimeString(sFiletime[ix])) then
                  begin
                       // 의료정보 시스템 프로그램이 업데이트 되었습니다.
                       // 업데이트후에 재실행 합니다.
                       ShowMessageM(TF_Z115);
                       Result := False;
                       Exit;
                  end;
             end
             else if (sComptype[ix] = 'E')
                     and ((Pos('ENV', UpperCase(sCompid[ix])) > 0)
                     or (Pos('FLDS', UpperCase(sCompid[ix])) > 0)
                     or (Pos('INI', UpperCase(sCompid[ix])) > 0)) then
             begin
                  // 그외 COMMON그룹 항목을 모두 다운 받는다. HIS.ENV HIS.FLDS FTP.ENV
                  GetASCIIFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD, sFileid[ix], sDir[ix] + sCompid[ix], False);
                  SetLocalFileDate(sDir[ix] + sCompid[ix], GetDateTimeString(sFiletime[ix]));
             end
             else
             begin
                  if FileDateToDateTime(FileAge(sDir[ix] + sCompid[ix])) < StrToDateTime(GetDateTimeString(sFiletime[ix])) then
                  begin
                     GetBINFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD, sFileid[ix], sDir[ix] + sCompid[ix], False);
                     SetLocalFileDate(sDir[ix] + sCompid[ix], GetDateTimeString(sFiletime[ix]));
                  end;
             end;
          except
                GetBINFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD, sFileid[ix], sDir[ix] + sCompid[ix], False);
                SetLocalFileDate(sDir[ix] + sCompid[ix], GetDateTimeString(sFiletime[ix]));
          end;
     end;
end;



//============================================================
// 사용자 시스템에 맞는 다운로드 디렉토리를 구한다.
//============================================================
function SetDownDirectory(sDirParam: String):String;
var
   sTemp : STring;
begin
  { // 윈도우 설치 디렉토리.
   if sDirParam = 'C:\WINDOWS\' then
      sTemp := GetDirectory(_WINDOWS)
   // 윈도우 시스템 디렉토리.
   else if sDirParam = 'C:\WINDOWS\SYSTEM\' then
      sTemp := GetDirectory(_SYSTEM)
   // 기타 디렉토리.
   else
      sTemp := sDirParam;

   if sTemp[Length(sTemp)] <> '\' then
      sTemp := sTemp + '\';

   Result := sTemp; }
   //------------------
   // 일반화 - 윈도우 설치 디렉토리.
   if sDirParam = 'WINDOWS' then
      sTemp := GetDirectory(_WINDOWS)
   //------------------
   // 일반화 - 윈도우 시스템 디렉토리.
   else if sDirParam = 'SYSTEM' then
      sTemp := GetDirectory(_SYSTEM)
   //------------------
   // 일반화 - 윈도우 FONT 디렉토리.
   else if sDirParam = 'FONT' then
      sTemp := GetDirectory(_WINDOWS) + '\FONTS\'

   //------------------
   // 윈도우 설치 디렉토리.
   else if sDirParam = 'C:\WINDOWS\' then
      sTemp := GetDirectory(_WINDOWS)
   //------------------
   // 윈도우 시스템 디렉토리.
   else if sDirParam = 'C:\WINDOWS\SYSTEM\' then
      sTemp := GetDirectory(_SYSTEM)
   //------------------
   // 윈도우 폰트 디렉토리.
   else if sDirParam = 'C:\WINDOWS\FONTS\' then
      sTemp := GetDirectory(_WINDOWS) + '\FONTS\'
   //------------------
   // 기타 디렉토리.
   else
      sTemp := sDirParam;

   if sTemp[Length(sTemp)] <> '\' then
      sTemp := sTemp + '\';

   Result := sTemp;
end;

//============================================================
// 윈도우, 시스템, 임시, 현재 디렉토리를 구한다.
//============================================================
function GetDirectory(Dir: DirectoryType): string;
var
 Path: array [0..260] of Char;
begin
 case Dir of
   _WINDOWS: GetWindowsDirectory(Path, Sizeof(Path));
   _SYSTEM : GetSystemDirectory(Path, Sizeof(Path));
   _TEMP   : GetTempPath(Sizeof(Path), Path);
   _CURRENT: GetCurrentDirectory(Sizeof(Path), Path);
 end;
 Result := StrPas(Path);
end;



//시스템에 맞는 DateTime Format으로 변환
function GetDateTimeString(FileDateTime: String): String;
begin
     Result := Copy(FileDateTime, 1, 4) + '-' + Copy(FileDateTime, 5, 2) + '-' + Copy(FileDateTime, 7, 2) + ' ' + Copy(FileDateTime, 9, 2) + ':' + Copy(FileDateTime, 11, 2) + ':' + Copy(FileDateTime, 13, 2);
end;

//메뉴조회
function HcmTuxMenu.List(grpid: String): Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_ID1');
     SetFldValue(0,[grpid]);
     if txGetF('CM_MENUTREE_L') then
     begin
          Result := GetRecordCnt('L_NO1');
          GetFldVar('L_NO1',       lLevel);
          GetFldVar('L_SEQNO1',    lSeqno);
          GetFldVar('S_ID1',       sMenuid);
          GetFldVar('S_NAME1',     sMenuname);
          GetFldVar('S_TYPE1',     sMenutype);
          GetFldVar('S_ID2',       sParentid);
          GetFldVar('S_YN1',       sApplyn);
          GetFldVar('S_YN2',       sSepyn);
          txFree;
     end;
end;

function HcmUpload.uploadinfo: Integer;
begin
     Result := -1;
     txAlloc;
     if txGetF('CM_UPLOADINFO_S') then
     begin
          Result := GetRecordCnt('FTP_SVRIP');
          GetFldVar('FTP_SVRIP',   sSvrip);
          GetFldVar('S_HOSTNAME',  sHostname);
          GetFldVar('FTP_USERID',  sUserid);
          GetFldVar('FTP_PASSWD',  sPasswd);
          GetFldVar('FTP_FILEID',  sDir);
          txFree;
     end;
end;

function HcmUpload.binuploadinfo: Integer;
begin
     Result := -1;
     txAlloc;
     if txGetF('CM_BINUPLOAD_S') then
     begin
          Result := GetRecordCnt('FTP_SVRIP');
          GetFldVar('FTP_SVRIP',   sSvrip);
          GetFldVar('S_HOSTNAME',  sHostname);
          GetFldVar('FTP_USERID',  sUserid);
          GetFldVar('FTP_PASSWD',  sPasswd);
          GetFldVar('FTP_FILEID',  sDir);
          txFree;
     end;
end;

function HcmUpload.rcopycall(HostName, RemoteFile, FTP_USERID: String): Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_HOSTNAME;S_FILENAME;FTP_USERID');
     SetFldValue(0,[HostName,RemoteFile,FTP_USERID]);
     if txGetF('CM_FILE_RCP') then
     begin
          Result := 1;
          txFree;
     end;
end;

// 2003.05.27 추가 tpcall에서 TPNOTIME 사용 by 이창환
function txGetFMIS(ServiceName:String):Boolean;
var
   len : LongInt;
   FormStr : String;
begin
     if (transf = nil) then
     begin
          txMsg := 'tpalloc failed, ' + StrPas(tpstrerror(gettperrno));
          Result := False;
          Exit;
     end;

     { 접속프로그램으로부터 전달받은 UserID 와 UserName, IP Address }
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := paramStr(13);

     if (Screen.ActiveForm = nil) then
        FormStr := Application.MainForm.Name
     else
        FormStr := Screen.ActiveForm.Name;

     {Logging을 위해 TxGetF, TxPutF에 UserID, IP Address, ActiveForm Name 추가}
     FChg(Transf, Fldid(PChar('LOG_USERNAME')),0,PChar(UserStr),Length(UserStr));
     FChg(Transf, Fldid(PChar('LOG_CLTNAME')),0,PChar(CltStr),Length(CltStr));
     FChg(Transf, Fldid(PChar('LOG_FORMNAME')),0,PChar(FormStr),Length(FormStr));

     if (tpcall(PChar(ServiceName), transf, 0, @transf, @len, TPNOTIME) = -1) then
     begin
          txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
          txAbort;
          txFree;
          Result := False;
          Exit;
     end;

     txMsg := StrPas(Fvals(transf, Fldid('STATLIN'), 0));
     Result := True;
end;

//TUXFTP GetServerAddr, 김송주 2015-03-06
function GetServerAddr: String;
begin
     Result := '';

     SvrStr := tuxgetenv('TMAX_HOST_ADDR');
     Result := SvrStr;
end;

end.
