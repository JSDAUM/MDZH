{*******************************************************************}
{ TWEBUPDATE component                                              }
{ for Delphi 3.0,4.0,5.0,6.0 - C++Builder 3,4,5                     }
{ version 1.4 - September 2001                                      }
{                                                                   }
{ written by                                                        }
{    TMS Software                                                   }
{    copyright ? 1998-2001                                          }
{    Email : info@tmssoftware.com                                   }
{    Web   : http://www.tmssoftware.com                             }
{                                                                   }
{ The source code is given as is. The author is not responsible     }
{ for any possible damage done due to the use of this code.         }
{ The component can be freely used in any application. The source   }
{ code remains property of the writer and may not be distributed    }
{ freely as such.                                                   }
{*******************************************************************}

unit WUpdate;

{$I TMSDEFS.INC}
{$R WUPDATE.RES}
{$R WUPDENG.RES}

interface

{$DEFINE noTMSDEBUG}

uses
  StdCtrls, Messages, Classes, SysUtils, WinInet, Windows, Forms, Registry,
  IniFiles, Dialogs, ShellApi, Controls, LZExpand, CabFdi, WuCRC32
  {$IFDEF DELPHI6_LVL}
  ,Variants
  {$ENDIF}
  ;

const
  {constants used for status}
  WebUpdateSuccess        = 0;
  WebUpdateAccessError    = 1;
  WebUpdateNotFound       = 2;
  WebUpdateInformation    = 3;
  WebUpdateNoNewVersion   = 4;
  WebUpdateNewVersion     = 5;
  WebUpdateHTTPStatus     = 6;
  WebUpdateHTMLDialog     = 7;
  WebUpdateCABError       = 8;
  WebUpdateSpawnFail      = 9;
  WebUpdateWrongSource    = 10;
  WebUpdateSignatureError = 11;
  WebUpdateWhatsNew       = 12;
  WebUpdateEUL            = 13;
  WebUpdateWhatsnewCancel = 14;
  WebUpdateEULACancel     = 15;
  WebUpdatePostConnectFail= 16;
  WebUpdatePostPostFail   = 17;
  WebUpdateUndefined      = $FF;

  {constants for errors}
  ErrControlFileNotFound  = 0;
  ErrUpdateFileNotFound   = 1;
  ErrUpdateFileZeroLen    = 2;
  ErrUpdateTargetEqual    = 3;
  ErrUpdateSignatureError = 4;
  ErrConnectError         = 5;
  ErrUndefined            = $FF;

  {$IFNDEF DELPHI4_LVL}
  INTERNET_CONNECTION_MODEM        =   $1;
  INTERNET_CONNECTION_LAN          =   $2;
  INTERNET_CONNECTION_PROXY        =   $4;
  INTERNET_CONNECTION_MODEM_BUSY   =   $8;
  INTERNET_RAS_INSTALLED           =   $10;
  INTERNET_CONNECTION_OFFLINE      =   $20;
  INTERNET_CONNECTION_CONFIGURED   =   $40;
  {$ENDIF}

type
  TWebUpdateEvent = procedure(Sender:TObject) of object;

  TWebUpdateFileProgress = procedure(Sender:TObject;filename:string;pos,size:longint) of object;
  TWebUpdateProgress = procedure(Sender:TObject;action:string) of object;
  TWebUpdateProgressCancel = procedure(Sender:TObject;var cancel:Boolean) of object;

  TWebUpdateFileDownloaded = procedure(Sender:TObject;filename:string) of object;

  TWebUpdateProcessPostResult = procedure(Sender:TObject;var AllowPostResult:Boolean) of object;

  TWebUpdateStatus = procedure(Sender:TObject;statusstr:string;statuscode,errcode:Integer) of object;
  TWebUpdateThreadDone = procedure(Sender:TObject) of object;
  TWebUpdateRestart = procedure(Sender:TObject;var allow:Boolean) of object;

  TWebUpdateCustomValidate = procedure(Sender:TObject;msg,param:string;var allow:Boolean) of object;
  TWebUpdateCustomProcess = procedure(Sender:TObject;msg,param:string) of object;

  TWebUpdateSetParams = procedure(Sender:TObject;var AppParams:string) of object;

  TWebUpdateFileVersionCheck = procedure(Sender: TObject;newversion,localversion:string;var IsNew:Boolean) of object;

  TWebUpdateConvertPrefix = procedure(Sender: TObject;var path: string) of object;

  TWebUpdateFileList = procedure(Sender: TObject;list:TStringList) of object;

  TWebUpdateConnect = (wucNoConnect,wucConnectPrompt,wucConnectSilent,wucConnectPromptHangup,wucConnectSilentHangup);

  TWebUpdateUpdate = (wuuPromptOnce,wuuPromptAll,wuuSilent);

  TWebUpdateType = (ftpUpdate,httpUpdate,fileUpdate);

  TWebUpdateTextDownloaded = procedure(Sender: TObject; Text: TStrings) of object;

  TLastURLEntry = class(TPersistent)
  private
    FSave: Boolean;
    FKey : string;
    FSection : string;
  public
  published
    property Save:Boolean read FSave write FSave;
    property Key:string read FKey write FKey;
    property Section:string read FSection write FSection;
  end;

  TPostUpdateInfo = class(TPersistent)
  private
    FServer:string;
    FAction:string;
    FData:string;
    FEnabled:Boolean;
    FPostResult:string;
  public
    property PostResult:string read fPostResult write fPostResult;
  published
    property Server:string read FServer write FServer;
    property Action:string read FAction write FAction;
    property Data:string read FData write FData;
    property Enabled:Boolean read FEnabled write FEnabled;
  end;

  TWebUpdate = class;

  TInetThread = class(TThread)
  private
    WebUpdate: TWebUpdate;
  protected
    procedure Execute; override;
  public
    constructor Create(AWebUpdate: TWebUpdate);
  end;

  TWebUpdateUtility = class(TComponent)
  end;

  TWebUpdate = class(TComponent)
  private
    FFTPDirectory: string;
    FFTPPassive: Boolean;
    FHost: string;
    FPassword: string;
    FSignature: string;
    FSignatureCheck: Boolean;
    FExtractCAB: Boolean;
    FApplyPatch: Boolean;
    FPort: Integer;
    FProxy: string;
    FProxyUserID: string;
    FProxyPassword: string;
    FUpdateConnect: TWebUpdateConnect;
    FUpdateType: TWebUpdateType;
    FUpdateUpdate: TWebUpdateUpdate;
    FURL: string;
    FUserID: string;
    FDateFormat: string;
    FTimeFormat: string;
    FDateSeparator: Char;
    FTimeSeparator: Char;
    FPostUpdateInfo: TPostUpdateInfo;
    FLastURLEntry: TLastURLEntry;
    FWebUpdateFileProgress: TWebUpdateFileProgress;
    FWebUpdateFileDownloaded: TWebUpdateFileDownloaded;
    FWebUpdateFileVersionCheck: TWebUpdateFileVersionCheck;
    FWebUpdateProgress: TWebUpdateProgress;
    FWebUpdateProgressCancel: TWebUpdateProgressCancel;
    FWebUpdateStatus: TWebUpdateStatus;
    FThreadUpdateDone: TWebUpdateThreadDone;
    FAppRestart: TWebUpdateRestart;
    FAppDoClose: TWebUpdateEvent;
    FCustomValidate: TWebUpdateCustomValidate;
    FCustomProcess: TWebUpdateCustomProcess;
    FProcessPostResult: TWebUpdateProcessPostResult;
    FFileList: TWebUpdateFileList;
    FThreaded: Boolean;
    FAppName: string;
    FAppComps: string;
    FAppCompsIncluded: Boolean;
    FAppClose: Boolean;
    FSilentRestart: Boolean;
    FConvertPrefix: TWebUpdateConvertPrefix;
    FSetAppParams: TWebUpdateSetParams;
    FFTPDirSet: Boolean;
    FOnDownloadedWhatsNew: TWebUpdateTextDownloaded;
    FOnDownloadedEULA: TWebUpdateTextDownloaded;
    FUseCRC32: Boolean;
    FUtility: TWebUpdateUtility;
  protected
    function ExpandPath(tgt:string):string;
    function URLtoFile(url:string):string;
    function FileGetFile(url,tgt:string;uncompress:Boolean):Boolean;
    procedure ThreadDone(Sender: TObject);
    function WhatsNewDialog(hfile:hinternet;s,caption,okbtn,cancelbtn:string):Integer; virtual;
    function EULADialog(hfile:hinternet;s,caption,okbtn,accept,noaccept:string):Integer; virtual;
    procedure DoStatus(id:Integer;param:string;statuscode,errorcode:Integer); virtual;
    procedure ExtractUpdateResource; virtual;
    procedure ExtractUtility; virtual;
    function CheckVersions(fvn,fvl:string;fvs,fvc:Integer):Boolean; virtual;
    procedure Notification(AComponent: TComponent; AOperation: TOperation); override;
  public
    procedure CustomProcess(fn:string); virtual;
    function URLGetFile(hfile:hinternet;url,tgt:string;uncompress:Boolean):Boolean;
    function MakeProxyUrl(url,proxyuser,proxypwd:string):string;
    procedure ShowHTMLDialog(s:string);
    procedure Error;
    constructor Create(aOwner:TComponent); override;
    destructor Destroy; override;
    procedure DoUpdate;
    procedure DoThreadUpdate;
    procedure DoPostUpdateInfo;
    procedure DoRestart;
    function Connected:Boolean;
    function ConnectionType:Integer;
    procedure HangUp;
    procedure URLPut(url:string);
    function URLGet:string;
    procedure UpdateDatePut(dt:TDateTime);
    function UpdateDateGet:TDateTime;
    procedure ConvertPrefix(const prefix:string; var s:string); virtual;
  published
    property ApplyPatch: Boolean read FApplyPatch write FApplyPatch;
    property DateFormat: string read FDateFormat write FDateFormat;
    property DateSeparator: Char read FDateSeparator write FDateSeparator;
    property ExtractCAB: Boolean read FExtractCAB write FExtractCAB;
    property FTPDirectory: string read FFTPDirectory write FFTPDirectory;
    property FTPPassive: Boolean read FFTPPassive write FFTPPassive;
    property Host: string read FHost write FHost;
    property LastURLEntry: TLastURLEntry read FLastURLEntry write FLastURLEntry;
    property Password: string read FPassword write FPassword;
    property Port: Integer read FPort write FPort;
    property PostUpdateInfo: TPostUpdateInfo read FPostUpdateInfo write FPostUpdateInfo;
    property Proxy: string read FProxy write FProxy;
    property ProxyUserID: string read FProxyUserID write FProxyUserID;
    property ProxyPassword: string read FProxyPassword write FProxyPassword;
    property Signature: string read FSignature write FSignature;
    property SignatureCheck: Boolean read FSignatureCheck write FSignatureCheck;
    property TimeFormat: string read FTimeFormat write FTimeFormat;
    property TimeSeparator: Char read FTimeSeparator write FTimeSeparator;
    property UpdateType: TWebUpdateType read FUpdateType write FUpdateType;
    property UpdateConnect: TWebUpdateConnect read FUpdateConnect write FUpdateConnect;
    property UpdateUpdate: TWebUpdateUpdate read FUpdateUpdate write FUpdateUpdate;
    property URL: string read FURL write FURL;
    property UserID:string read FUserID write FUserID;
    property UseCRC32: Boolean read FUseCRC32 write FUseCRC32;
    property Utility: TWebUpdateUtility read FUtility write FUtility;
    property OnFileProgress:TWebUpdateFileProgress read FWebUpdateFileProgress
      write FWebUpdateFileProgress;
    property OnFileDownloaded:TWebUpdateFileDownloaded read FWebUpdateFileDownloaded
      write FWebUpdateFileDownloaded;
    property OnFileVersionCheck:TWebUpdateFileVersionCheck read FWebUpdateFileVersionCheck
      write FWebUpdateFileVersionCheck;
    property OnProcessPostResult:TWebUpdateProcessPostResult read FProcessPostResult
      write FProcessPostResult;
    property OnProgress:TWebUpdateProgress read FWebUpdateProgress
      write FWebUpdateProgress;
    property OnProgressCancel:TWebUpdateProgressCancel read FWebUpdateProgressCancel
      write FWebUpdateProgressCancel;
    property OnStatus:TWebUpdateStatus read FWebUpdateStatus
      write FWebUpdateStatus;
    property OnThreadUpdateDone:TWebUpdateThreadDone read FThreadUpdateDone
      write FThreadUpdateDone;
    property OnAppRestart:TWebUpdateRestart read FAppRestart
      write FAppRestart;
    property OnAppDoClose:TWebUpdateEvent read FAppDoClose
      write FAppDoClose;
    property OnCustomValidate:TWebUpdateCustomValidate read FCustomValidate
      write FCustomValidate;
    property OnCustomProcess:TWebUpdateCustomProcess read FCustomProcess
      write FCustomProcess;
    property OnGetFileList:TWebUpdateFileList read FFileList
      write FFileList;
    property OnConvertPrefix:TWebUpdateConvertPrefix read FConvertPrefix
      write FConvertPrefix;
    property OnSetAppParams: TWebUpdateSetParams read FSetAppParams
      write FSetAppParams;
    property OnDownloadedWhatsNew: TWebUpdateTextDownloaded read FOnDownloadedWhatsNew
      write FOnDownloadedWhatsNew;
    property OnDownloadedEULA: TWebUpdateTextDownloaded read FOnDownloadedEULA
      write FOnDownloadedEULA;
  end;

const
  winetdll = 'wininet.dll';

{$IFNDEF DELPHI4_LVL}


{ Flags for InternetAutodial }
const
  INTERNET_AUTODIAL_FORCE_ONLINE          = 1;
  INTERNET_AUTODIAL_FORCE_UNATTENDED      = 2;
  INTERNET_AUTODIAL_FAILIFSECURITYCHECK   = 4;
  INTERNET_AUTODIAL_FLAGS_MASK = INTERNET_AUTODIAL_FORCE_ONLINE or
                                 INTERNET_AUTODIAL_FORCE_UNATTENDED or
                                 INTERNET_AUTODIAL_FAILIFSECURITYCHECK;

  INTERNET_OPTION_PROXY_USERNAME      = 43;
  INTERNET_OPTION_PROXY_PASSWORD      = 44;

  INTERNET_FLAG_PASSIVE = $08000000;  { used for FTP connections }

{$ENDIF}

implementation

{$IFDEF ISDELPHI}
uses
  ActiveX, urlmon, comobj;
{$ENDIF}

const
  READBUFFERSIZE = 4096;

type
  tfvi = record
    versionms:Integer;
    versionls:Integer;
  end;

{$IFDEF ISDELPHI}
  TShowHTMLDialogFn = function( const hwndParent : HWND; const pmk : IMoniker;
                                const pvarArgIn : Variant; const pchOptions : POleStr;
                                var pvarArgOut : Variant ):HResult stdcall;
{$ENDIF}

function ExecAndWait(sCommandLine: string): Boolean;
var
  tsi: TStartupInfo;
  tpi: TProcessInformation;
  dw: DWORD;
begin
  Result := False;
  FillChar(tsi, SizeOf(TStartupInfo), 0);
  tsi.cb := SizeOf(TStartupInfo);
  TSI.wShowWindow := SW_NORMAL;
  TSI.dwFlags := StartF_USESHOWWINDOW;

  if CreateProcess(nil, PChar(sCommandLine), nil, nil, False,
     NORMAL_PRIORITY_CLASS, nil, nil, tsi, tpi) then
  begin
    if WaitForSingleObject(tpi.hProcess, INFINITE) = WAIT_OBJECT_0 then
    begin
      if GetExitCodeProcess(tpi.hProcess, dw) then
      begin
        if dw = 0 then
        begin
          Result := True;
        end
        else
        begin
          SetLastError(dw + $2000);
        end;
      end;
    end;
    dw := GetLastError;
    CloseHandle(tpi.hProcess);
    CloseHandle(tpi.hThread);
    SetLastError(dw);
  end
  else
      dw := GetLastError;
end; 



function DirExists(const Name: string): Boolean;
var
  Code: Cardinal;
begin
  Code := GetFileAttributes(PChar(Name));
  Result := (Code <> $FFFFFFFF) and (FILE_ATTRIBUTE_DIRECTORY and Code <> 0);
end;

function CLFToLF(s:string):string;
begin
  while Pos('\n',s) > 0 do
  begin
    s := Copy(s,1,Pos('\n',s)-1)+#13+Copy(s,pos('\n',s)+2,Length(s));
  end;
  Result := s;
end;

function IPos(su,s:string):Integer;
begin
  Result := Pos(UpperCase(su),UpperCase(s));
end;

function StringToVersion(fvn:string):tfvi;
var
  hw,lw:word;
  e:Integer;
  sep:string;

begin
  Result.versionms := -1;
  Result.versionls := -1;

  sep := '';
  if Pos('.',fvn) > 0 then sep := '.';
  if Pos(',',fvn) > 0 then sep := ',';

  if Pos(sep,fvn) > 0 then
  begin
    Val(Copy(fvn,1,Pos(sep,fvn)-1),hw,e);
    system.Delete(fvn,1,Pos(sep,fvn));

    if (Pos(sep,fvn) > 0) and (e = 0) then
    begin
      Val(copy(fvn,1,pos(sep,fvn)-1),lw,e);
      Result.VersionMS := makelong(lw,hw);
      system.Delete(fvn,1,pos(sep,fvn));
      if (Pos(sep,fvn) > 0) and (e = 0) then
      begin
        Val(Copy(fvn,1,Pos(sep,fvn)-1),hw,e);
        system.Delete(fvn,1,pos(sep,fvn));
        Val(fvn,lw,e);
        if e = 0 then
          Result.VersionLS := makelong(lw,hw);
      end;
    end;
  end;
end;

function GetFileVersion(FileName: string):tfvi;
var
  FileHandle: dword;
  l: Integer;
  pvs: PVSFixedFileInfo;
  lptr: uint;
  querybuf: array[0..255] of Char;
  buf: PChar;
begin
  Result.VersionMS := -1;
  Result.VersionLS := -1;

  StrpCopy(querybuf,filename);
  l := GetFileVersionInfoSize(querybuf,filehandle);
  if l > 0 then
  begin
    GetMem(buf,l);
    GetFileVersionInfo(querybuf,filehandle,l,buf);
    if VerQueryValue(buf,'\',Pointer(pvs),lptr) then
    begin
      if pvs^.dwSignature = $FEEF04BD then
      begin
        Result.VersionMS := pvs^.dwFileVersionMS;
        Result.VersionLS := pvs^.dwFileVersionLS;
      end;
    end;
    FreeMem(buf);
  end;
end;


function DynaLink_InternetAutodial(dwFlags: DWORD; dwReserved: DWORD): BOOL;
var
  WininetDLL: THandle;
  Wininet_InternetAutodial:function(dwFlags: DWORD; dwReserved: DWORD): BOOL; stdcall;
begin
  Result := TRUE;
  WininetDLL := LoadLibrary(winetdll);
  if WininetDLL > 0 then
  begin
    @Wininet_InternetAutodial := GetProcAddress(Wininetdll,'InternetAutodial');
    if Assigned(Wininet_InternetAutodial) then
    begin
      Result := Wininet_InternetAutodial(dwFlags,dwReserved);
    end;
    FreeLibrary(WininetDLL);
  end;
end;

function DynaLink_InternetAutodialHangup(dwReserved: DWORD): BOOL;
var
  WininetDLL: THandle;
  Wininet_InternetAutodialHangup:function(dwReserved: DWORD): BOOL; stdcall;
begin
  Result := TRUE;
  WininetDLL := LoadLibrary(winetdll);
  if WininetDLL > 0 then
  begin
    @Wininet_InternetAutodialHangup := GetProcAddress(WininetDLL,'InternetAutodialHangup');
    if Assigned(Wininet_InternetAutodialHangup) then
    begin
      Result := Wininet_InternetAutodialHangup(dwReserved);
    end;
    FreeLibrary(WininetDLL);
  end;
end;

function DynaLink_InternetGetConnectedState(lpdwFlags: LPDWORD;dwReserved: DWORD): BOOL;
var
  WininetDLL: THandle;
  Wininet_InternetGetConnectedState:function(lpdwFlags: LPDWORD;dwReserved: DWORD): BOOL; stdcall;
begin
  Result := TRUE;
  WininetDLL := LoadLibrary(winetdll);
  if WininetDLL > 0 then
  begin
    @Wininet_InternetGetConnectedState := GetProcAddress(WininetDLL,'InternetGetConnectedState');
    if Assigned(Wininet_InternetGetConnectedState) then
    begin
      Result := Wininet_InternetGetConnectedState(lpdwFlags,dwReserved);
    end;
    FreeLibrary(WininetDLL);
  end;
end;

procedure HTMLDialog(s:string);
{$IFDEF ISDELPHI}
var
  ResURLStr : POleStr;
  pmk : IMoniker;
  InParam,OutParam: Variant;
  hInstHTML : THandle;
  ShowHTMLDialog: TShowHTMLDialogFn;
{$ENDIF}

begin
  {$IFDEF ISDELPHI}
  @ShowHTMLDialog := nil;

  hInstHTML := LoadLibrary('MSHTML.DLL');
  if hInstHTML = 0 then
    Exit;

  if hInstHTML > 0 then
    @ShowHTMLDialog := GetProcAddress(hInstHTML,'ShowHTMLDialog');

  if @ShowHTMLDialog = nil then
    Exit;

  ResURLStr := StringToOleStr(s);
  OleCheck(CreateURLMoniker(nil,ResURLStr,pmk));
  SysFreeString(ResURLStr);
  TVarData(InParam).VType := varOleStr;
  TVarData(InParam).VOleStr := StringToOleStr('');
  OleCheck(ShowHTMLDialog(0, pmk, InParam, nil, OutParam));
  InParam := Unassigned;
  OutParam := UnAssigned;
  FreeLibrary(hInstHTML);
  {$ENDIF}
end;

procedure TInetThread.Execute;
begin
  Synchronize(WebUpdate.DoUpdate);
end;

constructor TInetThread.Create(AWebUpdate: TWebUpdate);
begin
  WebUpdate := AWebUpdate;
  FreeOnTerminate := True;
  inherited Create(False);
end;


constructor TWebUpdate.Create(aOwner: TComponent);
begin
  inherited Create(aOwner);
  FLastURLEntry := TLastURLEntry.Create;
  FPostUpdateInfo := TPostUpdateInfo.Create;
  FLastURLEntry.Key := '';
  FPostUpdateInfo.Enabled := false;
  FPort := 21;
  FDateFormat := 'dd/mm/yyyy';
  FDateSeparator := '/';
  FTimeFormat := 'hh:nn';
  FTimeSeparator := ':';
  FThreaded := false;
  FAppClose := false;
  FAppName := '';
  FAppComps := '';
  FSignatureCheck := false;
  FSignature := 'WebUpdate';
  FSilentRestart := false;
  FFTPDirSet := False;
end;

destructor TWebUpdate.Destroy;
begin
  FLastURLEntry.Free;
  FPostUpdateInfo.Free;
  inherited Destroy;
end;

procedure TWebUpdate.Error;
var
  Errorcode: dword;
  dwIntError,dwLength: dword;
  buf: array[0..1024] of char;

begin
  ErrorCode := GetLastError;
  if ErrorCode <> 0 then
  begin
    FormatMessage(FORMAT_MESSAGE_FROM_HMODULE,
      pointer(GetModuleHandle(winetdll)),ErrorCode,0,buf,sizeof(buf),nil);

    if (ErrorCode = ERROR_INTERNET_EXTENDED_ERROR) then
    begin
      InternetGetLastResponseInfo(dwIntError,nil,dwLength);
      if dwLength > 0 then
      begin
        InternetGetLastResponseInfo(dwIntError,buf,dwLength);

        if Assigned(OnStatus) then
          OnStatus(Self,StrPas(buf),WebUpdateAccessError,dwIntError)
        else
          Messagedlg(StrPas(buf),mtError,[mbok],0);
      end
    end
    else
    begin
      if Assigned(OnStatus) then
        OnStatus(Self,StrPas(buf),WebUpdateAccessError,ErrorCode)
      else
        Messagedlg(StrPas(buf),mtError,[mbok],0);
    end;
  end;
end;

function GetSizeOfFile(fn:string):Integer;
var
  fh:thandle;
  hisize:Integer;

begin
  Result := 0;

  fh := CreateFile(pchar(fn),GENERIC_READ,FILE_SHARE_READ,nil,OPEN_EXISTING,
    FILE_ATTRIBUTE_NORMAL or FILE_FLAG_SEQUENTIAL_SCAN,0);

  if fh > 0 then
  begin
    Result := GetFileSize(fh,@hisize);
    CloseHandle(fh);
  end;
end;

function GetCheckSumOfFile(fn:string):Integer;
var
  fh: THandle;
  buf: array[0..READBUFFERSIZE-1] of Byte;
  NumRead,i : DWORD;
begin
  Result := -1;

  fh := CreateFile(pchar(fn),GENERIC_READ,FILE_SHARE_READ,nil,OPEN_EXISTING,
    FILE_ATTRIBUTE_NORMAL or FILE_FLAG_SEQUENTIAL_SCAN,0);

  if fh > 0 then
  begin
    repeat
      if ReadFile(fh,buf,READBUFFERSIZE,numread, nil) then
        for i := 1 to numread do
          Result := Result + buf[i-1]
      else NumRead := 0;

    until NumRead <> READBUFFERSIZE;
    CloseHandle(fh);
  end;
end;

function TWebUpdate.CheckVersions(fvn,fvl: string;fvs,fvc: Integer):Boolean;
var
  lfvi,nfvi: tfvi;
  lfs: Integer;

begin
  Result := True;

  if (fvn = '') and (fvs = 0) and (fvc = -1) then Exit;
  if (fvl = '') then Exit;

  Result := False;

  if fvc <> -1 then
  begin
    if FUseCRC32 then
      lfs := CRC32CheckSumOfFile(fvl)
    else
      lfs := GetCheckSumOfFile(fvl);

    Result := fvc <> lfs;
  end;

  if fvs > 0 then
  begin
    lfs := GetSizeOfFile(fvl);
    Result := (lfs <> fvs) and (lfs > 0);
    Exit;
  end;

  lfvi := GetFileVersion(fvl);
  nfvi := StringToVersion(fvn);

  if (nfvi.versionms = -1) or (nfvi.versionls = -1) then Exit;

  if (nfvi.versionms > lfvi.versionms) or
     ((nfvi.versionms = lfvi.versionms) and (nfvi.versionls > lfvi.versionls)) then
    Result := true;
end;

procedure ExpandFile(SrcName:string);
var
  rbuf: TOFSTRUCT;
  src,dst: Integer;
  dstname: array[0..MAX_PATH] of char;
begin
  src := lzOpenFile(PChar(SrcName),rbuf,OF_READ);
  if GetExpandedName(PChar(SrcName),dstname) = 1  then
  begin
    dst := lzopenfile(dstname,rbuf,OF_CREATE);
    lzCopy(src,dst);
    lzClose(dst);
  end;
  lzClose(src);
  DeleteFile(pchar(srcname));
end;

function AddBackslash(const s: string): string;
begin
  if (Length(s) >= 1) and (s[Length(s)]<>'\') then
    Result := s + '\'
  else
    Result := s;
end;

// Either remove a trailing backslash or add '.' as needed to get a directory
function RemoveBackslash(S: string): string;
begin
  s := AddBackslash(s);
  if (Length(s) > 3) and (s[2] = ':') then
    Delete(s,Length(s),1)
  else
    s := s + '.';
  Result := s
end;

function WinTempDir: string;
var
  buf: array[0..MAX_PATH] of Char;
begin
  GetTempPath(sizeof(buf),buf);
  Result := AddBackslash(StrPas(buf));
end;

procedure TWebUpdate.ConvertPrefix(const prefix:string; var s:string);
var
  buf: array[0..MAX_PATH] of Char;
  Reg: TRegistry;

begin
  if prefix = 'WIN' then
  begin
    GetWindowsDirectory(buf,sizeof(buf));
    s := RemoveBackSlash(strpas(buf));
  end
  else
    if prefix = 'APP' then
      s := RemoveBackslash(GetCurrentDir)
    else
      if prefix = 'TMP' then
        s := RemoveBackslash(WinTempDir)
          else
            if prefix = 'PF' then
            begin
              Reg := TRegistry.Create;
              try
                Reg.RootKey := HKEY_LOCAL_MACHINE;
                if Reg.OpenKey ('\Software\Microsoft\Windows\CurrentVersion', False) then
                  s :=RemoveBackSlash(Reg.ReadString('ProgramFilesDir'));

                Reg.CloseKey;
              finally
                Reg.Free
              end;
            end;

end;

function TWebUpdate.ExpandPath(tgt:string):string;
var
  i,prefixbegin: Integer;
  s: string;
begin
  {call event handler for custom macro expansion}
  if Assigned(FConvertPrefix) then
    FConvertPrefix(self,tgt);

  {look for prefix and call ConvertPrefix if found}
  prefixbegin := 0;
  i := 1;
  while i <= Length(tgt) do
  begin
    if (prefixbegin = 0) and (tgt[i] = '{') then
      prefixbegin := i
    else
      if (prefixbegin <> 0) and (tgt[i] = '}') then
      begin
        s := '';
        ConvertPrefix(UpperCase(copy(tgt,prefixbegin + 1,i - prefixbegin - 1)),s);
        if s <> '' then
        begin
          Delete(tgt,prefixbegin,i-prefixbegin+1);
          Insert(s,tgt,prefixbegin);
          i := prefixbegin - 1; //restart the loop at beginning of new changes
        end;
        prefixbegin := 0;
      end;
    Inc(i);
  end;
  Result := tgt;
end;

function TWebUpdate.URLtoFile(url:string):string;
begin
  while Pos('/',url) > 0 do
    Delete(url,1,Pos('/',url));

  while Pos('\',url) > 0 do
    Delete(url,1,Pos('\',url));

  Result := url;
end;

function TWebUpdate.MakeProxyUrl(url,proxyuser,proxypwd:string):string;
begin
  Result := url;
  if (Pos('HTTP://',Uppercase(url)) = 1) and (ProxyUser <> '') then
  begin
    Delete(url,1,7);
    Result := 'http://' + ProxyUser + ':' + ProxyPwd + '@' + url;
  end;
end;

// copy files over a LAN
function TWebUpdate.FileGetFile(url, tgt: string; uncompress:Boolean): Boolean;
const
  BlockSize = $4000;
type
  pBuf = ^tBuf;
  TBuf = array[1..BlockSize] of char;

var
  tmpname:array[0..MAX_PATH] of char;
  SourceSize: LongInt;
  source,target: tFileRec;
  numRead, numWritten: Integer;
  fbuf: pBuf;
  fsize: Integer;
  cancelled,dwnloaderror:Boolean;

begin
  Result := False;

  FSize := 0;

  // if source file and target file are identical raises an error
  if url = tgt then
  begin
    DoStatus(912,url,WebUpdateWrongSource,ErrUpdateTargetEqual);
    Exit;
  end;

  // tries to open the source file
  Source.Handle := FileOpen(url, fmOpenRead);
  if Source.Handle = -1 then
  begin
    DoStatus(913,url,WebUpdateNotFound,ErrUpdateFileNotFound);
    Exit;
  end;

  // compute how many block are needed
  SourceSize := FileSeek(Source.handle, 0, 2);

  if SourceSize = -1 then
  begin
    FileClose(Source.Handle);
    DoStatus(914,url,WebUpdateWrongSource,ErrUpdateFileZeroLen);
    Exit;
  end;

  // set the handle to the file beginning
  FileSeek(Source.Handle, 0, 0);

  // tries to create the target file

  GetTempFilename('.','WUPD',0,tmpname);

  Target.handle := FileCreate(strpas(tmpname));

  if Target.Handle < 0 then
  begin
    FileClose(Source.Handle);
    Exit;
  end;

  Cancelled := false;
  DwnloadError := false;

  New(FBuf);

  // copy block
  repeat
    // reading
    numRead := FileRead(Source.Handle, FBuf^, sizeOf(FBuf^));

    if numRead < 0 then
      begin
        FileClose(Source.Handle);
        FileClose(Target.handle);
        Dispose(FBuf);
        dwnloaderror := true;
        //if assigned(OnError) then OnError(self,errCopyReadFailure);
      end;

    // writing
    numWritten := FileWrite(Target.Handle, FBuf^, numRead);
    if numWritten < 0 then
      begin
        FileClose(Source.Handle);
        FileClose(Target.handle);
        dispose(FBuf);
        dwnloaderror := true;
        //if assigned(OnError) then OnError(self,errCopyWriteFailure);
      end;

    fsize := fsize + numWritten;

    if Assigned(OnFileProgress) then
      OnFileProgress(self,url,fsize,SourceSize);
    if Assigned(OnProgressCancel) then
      OnProgressCancel(self,cancelled);

    Application.ProcessMessages;

  until (numRead = 0) or (numRead <> numWritten) or (cancelled) or (dwnloaderror);

  FileClose(Source.Handle);
  FileClose(Target.handle);
  dispose(FBuf);

  // if Assigned(FOnCopyProgress) then FOnCopyProgress(Self, 100, 100);

  if cancelled or dwnloaderror then
    sysutils.DeleteFile(strpas(TmpName))
  else
  begin
    if FileExists(tgt) then
      sysutils.DeleteFile(tgt);
    sysutils.RenameFile(strpas(TmpName),tgt);
    Result := True;
  end;
end;


function TWebUpdate.URLGetFile(hfile:hinternet;url,tgt:string;uncompress:Boolean):Boolean;
var
  buf: array[0..READBUFFERSIZE-1] of char;
  tmpname: array[0..MAX_PATH] of char;
  bufsize: dword;
  lf: file;
  fn,furl: string;
  fsize: dword;
  hintfile,findfile: hinternet;
  lpdwlen,lpdwidx,lpdword: dword;
  s: string;
  cancelled,dwnloaderror: Boolean;
  {$IFNDEF DELPHI4_LVL}
  lpFindFileData:TWin32FindDataA;
  {$ELSE}
  lpFindFileData:_WIN32_FIND_DATAA;
  {$ENDIF}
begin
  Result := False;

  furl := url;

  DoStatus(915,furl,WebUpdateInformation,0);

  fn := UrlToFile(url);

  if FUpdateType = FileUpdate then
  begin
    if ExtractFileName(tgt) = '' then
      fn := tgt + fn
    else
      fn := tgt;

    if FileGetFile(PChar(url),PChar(fn),false) then
    begin
      CustomProcess(fn);
      if uncompress and (pos('.CAB',uppercase(fn))=0) then ExpandFile(fn);
      Result := True;
    end
    else
      Result := False;
    Exit;
  end;

  url := MakeProxyURL(url,FProxyUserID,FProxyPassword);

  {$IFDEF TMSDEBUG}
  outputdebugstring(pchar(url));
  {$ENDIF}

  if FUpdateType = FTPUpdate then
  begin
    if (FFTPDirectory <> '') and not FFTPDirSet then
    begin
      s := ExpandPath(FFTPDirectory);
      FtpSetCurrentDirectory(hfile,pchar(s));
      FFTPDirSet := True;
    end;

   {retrieve filesize}
   findfile := FtpFindFirstFile(hfile,pchar(fn),lpFindFileData,INTERNET_FLAG_RELOAD or INTERNET_FLAG_NO_CACHE_WRITE,0);

   if findfile <> nil then
     InternetCloseHandle(findfile);

   lpdword := lpFindFileData.nFileSizeLow;

   hintfile := FtpOpenFile(hfile,pchar(fn),GENERIC_READ,FTP_TRANSFER_TYPE_BINARY,0);

  end
  else
  begin
    hintfile := InternetOpenURL(hfile,PChar(url),nil,0,INTERNET_FLAG_RELOAD or INTERNET_FLAG_NO_CACHE_WRITE,0);
    lpdwlen := 4;
    lpdwidx := 0;

    if hintfile <> nil then
    begin
      HttpQueryInfo(hintfile,HTTP_QUERY_STATUS_CODE or HTTP_QUERY_FLAG_NUMBER ,@lpdword,lpdwlen,lpdwidx);

      if lpdword >= 300 then
      begin
        DoStatus(916,IntToStr(lpdword),WebUpdateHTTPStatus,lpdword);
        Exit;
      end;
    end;
  end;

  if hintfile = nil then
  begin
    DoStatus(917,furl,WebUpdateNotFound,ErrUpdateFileNotFound);
    {$IFDEF TMSDEBUG}
    outputdebugstring('could not open file');
    {$ENDIF}
    Exit;
  end;

  fn := tgt + URLtoFile(url);

  GetTempFilename('.','WUPD',0,tmpname);

  AssignFile(lf,tmpname);
  Rewrite(lf,1);

  bufsize := READBUFFERSIZE;

  if FUpdateType = HTTPUpdate then
  begin
    lpdword := 0;

    lpdwlen := 4;
    lpdwidx := 0;

    HttpQueryInfo(hintfile,HTTP_QUERY_CONTENT_LENGTH or HTTP_QUERY_FLAG_NUMBER ,@lpdword,lpdwlen,lpdwidx);
  end;

  FSize := 0;

  Cancelled := False;
  dwnloaderror := False;

  while (bufsize > 0) and not Cancelled do
  begin
    Application.ProcessMessages;
    if not InternetReadFile(hintfile,@buf,READBUFFERSIZE,bufsize) then
    begin
      dwnloaderror := True;
      Break;
    end;
    {$IFDEF TMSDEBUG}
    outputdebugstring(pchar('read from http = '+inttostr(bufsize)));
    {$ENDIF}
    if (bufsize > 0) and (bufsize <= READBUFFERSIZE) then
      Blockwrite(lf,buf,bufsize);

    FSize := FSize + bufsize;

    if Assigned(OnFileProgress) then
      OnFileProgress(self,fn,fsize,lpdword);

    if Assigned(OnProgressCancel) then
      OnProgressCancel(self,cancelled);

    if (bufsize > 0) then
      Result := True;
  end;

  InternetCloseHandle(hintfile);

  CloseFile(lf);

  if Cancelled or DwnloadError then
  begin
    sysutils.DeleteFile(strpas(tmpname))
  end
  else
  begin
    if FileExists(fn) then
      sysutils.DeleteFile(fn);
    SysUtils.RenameFile(strpas(tmpname),fn);
    CustomProcess(fn);
    if UnCompress and (UpperCase(ExtractFileExt(fn)) <> '.CAB') then
      ExpandFile(fn);
  end;
end;

procedure TWebUpdate.DoStatus(id:Integer;param:string;statuscode,errorcode:Integer);
var
  s: string;
begin
  if Assigned(OnStatus) then
  begin
    s := LoadStr(id);
    OnStatus(Self,Format(s,[param]),StatusCode,ErrorCode);
  end;
end;


procedure TWebUpdate.ThreadDone(Sender: TObject);
begin
  if Assigned(FThreadUpdateDone) then
    FThreadUpdateDone(self);
  FThreaded := False;
  if FAppClose then DoRestart;
end;

procedure TWebUpdate.DoPostUpdateInfo;
var
  hint,hconn,hreq: hinternet;
  hdr: string;
  accept: array[0..28] of char;
  buf: array[0..READBUFFERSIZE-1] of char;
  bufsize: dword;
  i: Integer;

begin
  hdr:='Content-Type: application/x-www-form-urlencoded';

  if FPostUpdateInfo.Server = '' then
    Exit;

  if FPostUpdateInfo.Action = '' then
    Exit;

  StrpCopy(accept,'text/*');

  hint := InternetOpen('TWebUpdate',INTERNET_OPEN_TYPE_PRECONFIG,nil,nil,0);

  hconn := InternetConnect(hint,pchar(FPostUpdateInfo.Server),INTERNET_DEFAULT_HTTP_PORT,nil,nil,INTERNET_SERVICE_HTTP,0,1);

  if hconn <> nil then
  begin
    hreq := HttpOpenRequest(hconn,'POST',pchar(FPostUpdateInfo.Action),nil,nil,nil,0,1);

    if hreq <> nil then
    begin
      FPostUpdateInfo.PostResult := '';

      if HttpSendRequest(hreq,pchar(hdr),length(hdr),pchar(FPostUpdateInfo.Data),length(FPostUpdateInfo.Data)) then
      begin
        bufsize := READBUFFERSIZE;
        while bufsize > 0 do
        begin
          Application.ProcessMessages;
          if not InternetReadFile(hreq,@buf,READBUFFERSIZE,bufsize) then
            Break;
          if (bufsize > 0) and (bufsize <= READBUFFERSIZE) then
            for i := 0 to bufsize - 1 do
              FPostUpdateInfo.PostResult := FPostUpdateInfo.PostResult + buf[i];
        end;
      end;
      InternetCloseHandle(hreq);
    end
    else
      DoStatus(952,'',WebUpdatePostPostFail,ErrConnectError);

    InternetCloseHandle(hconn);
  end
  else
    DoStatus(951,'',WebUpdatePostConnectFail,ErrConnectError);

  InternetCloseHandle(hint);
end;

function TWebUpdate.WhatsNewDialog(hfile:hinternet;s,caption,okbtn,cancelbtn:string):Integer;
var
  form: TForm;
  memo: TMemo;
  ok,cancel: TButton;
  sl: TStringList;
  fn: string;

begin
  Result := mrOk;

  if not URLGetFile(hfile,s,WinTempDir,false) then
    Exit;

  fn := WinTempDir + URLToFile(s);

  if Assigned(FOnDownloadedWhatsNew) then
  begin
    sl := TStringList.Create;
    sl.LoadFromFile(fn);
    DeleteFile(PChar(fn));
    FOnDownloadedWhatsNew(Self,sl);
    sl.Free;
    Exit;
  end;

  form := TForm.Create(Application);
  form.Position := poScreenCenter;

  form.Width := 400;
  form.Height := 400;
  form.Caption := Caption;
  form.BorderStyle := bsDialog;
  form.BorderIcons := [biSystemMenu];

  memo := TMemo.Create(form);
  memo.Parent := form;
  memo.Top := 10;
  memo.Left := 10;
  memo.Width := form.ClientRect.Right - 20;
  memo.Height := form.ClientRect.Bottom - 60;
  memo.Lines.Loadfromfile('.\whatsnew.txt');
  memo.Readonly := true;
  Deletefile('.\whatsnew.txt');

  ok := TButton.Create(form);
  ok.Parent := form;
  ok.Caption := okbtn;
  ok.Top := memo.Height + memo.Top + 10;
  ok.Left := memo.Width + memo.Left - ok.Width - ok.Width - 10;
  ok.TabOrder := 0;
  ok.ModalResult := mrOk;

  cancel := TButton.Create(form);
  cancel.Parent := form;
  cancel.Caption := cancelbtn;
  cancel.Top := memo.Height + memo.Top + 10;
  cancel.Left := memo.Width + memo.Left - ok.Width;
  cancel.ModalResult := mrCancel;
  cancel.TabOrder := 1;

  Result := form.ShowModal;
  form.Free;
end;


function TWebUpdate.EULADialog(hfile:hinternet;s,caption,okbtn,accept,noaccept:string):Integer;
var
  form: TForm;
  memo: TMemo;
  ok: TButton;
  r1,r2: TRadioButton;
  sl: TStringList;


begin
  Result := mrOK;
  if not URLGetFile(hfile,s,WinTempDir,false) then
    Exit;

  S := WinTempDir + URLToFile(s);

  if Assigned(FOnDownloadedEULA) then
  begin
    sl := TStringList.Create;
    sl.LoadFromFile(s);
    DeleteFile(PChar(s));
    FOnDownloadedEULA(Self,sl);
    sl.Free;
    Exit;
  end;

  form := TForm.Create(application);
  form.Position := poScreenCenter;

  form.Width := 400;
  form.Height := 400;
  form.Caption := Caption;
  form.BorderStyle := bsDialog;
  form.BorderIcons := [biSystemMenu];

  memo := TMemo.Create(form);
  memo.Parent := form;
  memo.Top := 10;
  memo.Left := 10;
  memo.Width := form.ClientRect.Right - 20;
  memo.Height := form.ClientRect.Bottom - 60;
  memo.Lines.LoadFromFile(s);
  memo.ReadOnly := True;
  Deletefile(PChar(s));

  ok := TButton.Create(form);
  ok.Parent := form;
  ok.Caption := okbtn;
  ok.Top := memo.Height + memo.Top + 10;
  ok.Left := memo.Width + memo.Left - ok.Width;
  ok.TabOrder := 0;
  ok.ModalResult := mrOk;

  r1 := TRadioButton.Create(form);
  r1.Parent := form;
  r1.Left:=10;
  r1.Top := memo.Height + memo.Top + 10;
  r1.Caption := Accept;
  r1.TabOrder := 1;

  r2 := TRadioButton.Create(form);
  r2.Parent := form;

  r2.Left := 20 + r1.Width;
  r2.Top := memo.Height + memo.Top + 10;
  r2.Caption := NoAccept;
  r2.TabOrder := 2;

  Result := form.ShowModal;

  if not r1.Checked then
    Result := mrCancel;

  form.Free;
end;

procedure TWebUpdate.DoThreadUpdate;
begin
  FThreaded := True;
  with TInetThread.Create(Self) do
    OnTerminate := ThreadDone;
end;

function ForceDirectories(Dir: string): boolean;
begin
  Result := True;
  if Length(Dir) = 0 then Exit;
  if Copy(Dir,Length(Dir),1) = '\' then
    SetLength(Dir, Length(Dir) - 1);
  if (Length(Dir) < 3) or DirExists(Dir) or (ExtractFilePath(Dir) = Dir) then
    Exit;
  Result := ForceDirectories(ExtractFilePath(Dir)) and CreateDir(Dir);
end;

procedure TWebUpdate.DoUpdate;
var
  hint: hinternet;
  hintconnect: hinternet;
  Dialed, CustomVal, UnCompress, SaveUpdate:Boolean;
  LastURL,FName,s,ExeName,AppParam: string;
  IniFile: TIniFile;
  dt,updatedt: TDateTime;
  dwReserved: DWord;
  i,j: Integer;
  updatemethod: TWebUpdateUpdate;
  fvl,fvn,fvc:string;
  fvs,fvi:Integer;
  oldfmt, tgt:string;
  oldsep: Char;
  lst: TStringList;
  ftpflag: Integer;
  IsNew: Boolean;

label cleanconnect;
label cleandialup;

begin
  dwReserved := 0;
  dialed := false;
  hint := nil;
  hintconnect := nil;
  IniFile := nil;
  saveupdate := False;
  updatedt := Now;
  fappcompsincluded := False;
  FFTPDirSet := False;

  lasturl := URLGet;
  if (lasturl='') then lasturl := fURL;
  lasturl := ExpandPath(lasturl);

  if FUpdateType <> FileUpdate then
  begin
    DoStatus(918,'',WebUpdateInformation,0);

    if not self.Connected and (FUpdateConnect = wucNoConnect) then
      Exit;

    if not self.Connected and (FUpdateConnect in [wucConnectPrompt,wucConnectPromptHangup]) then
    begin
      DoStatus(919,'',WebUpdateInformation,0);
      if not DynaLink_InternetAutodial(INTERNET_AUTODIAL_FORCE_ONLINE,dwReserved) then
        Exit;
      Dialed := True;
    end;

    if not self.Connected and (FUpdateConnect in [wucConnectSilent,wucConnectSilentHangup]) then
    begin
      DoStatus(920,'',WebUpdateInformation,0);
      if not DynaLink_InternetAutodial(INTERNET_AUTODIAL_FORCE_UNATTENDED,dwReserved) then
        Exit;
      Dialed := True;
    end;

    DoStatus(921,'',WebUpdateInformation,0);

    {ftp & http common code}
    if FProxy = '' then
      hint := InternetOpen('WebUpdate',INTERNET_OPEN_TYPE_PRECONFIG {or INTERNET_FLAG_ASYNC},nil,nil,0)
    else
      hint := InternetOpen('WebUpdate',INTERNET_OPEN_TYPE_PROXY {or INTERNET_FLAG_ASYNC},pchar(fProxy),nil,0);

{ Fails on NT ???????
   if (fProxyUserID <>'') then
    InternetSetOption(hint,INTERNET_OPTION_PROXY_USERNAME,pchar(fProxyUserID),length(fProxyUserID));
   if (fProxyPassword <>'') then
    InternetSetOption(hint,INTERNET_OPTION_PROXY_PASSWORD,pchar(fProxyPassword),length(fProxyPassword));
}

    if hint = nil then
    begin
      DoStatus(922,'',WebUpdateAccessError,0);
      goto CleanDialup;
    end;

    {handle connect different for FTP & HTTP}
    if FUpdateType = ftpUpdate then
    begin
      DoStatus(923,fHost,WebUpdateInformation,3);
      if FFTPPassive then
        ftpflag := INTERNET_FLAG_PASSIVE
      else
        ftpflag := 0;

      if (FUserID = '') or (FPassword = '') then
        hintconnect := InternetConnect(hint,pchar(FHost),FPort,nil,nil,INTERNET_SERVICE_FTP,ftpflag,0)
      else
        hintconnect := InternetConnect(hint,pchar(FHost),FPort,pchar(FUserID),pchar(FPassword),INTERNET_SERVICE_FTP,ftpflag,0);

      if hintconnect = nil then
        Self.Error;
    end
    else
      hintconnect := hint;

    if hintconnect = nil then
    begin
      {$IFDEF TMSDEBUG}
      outputdebugstring('could not connect');
      {$ENDIF}
      InternetCloseHandle(hint);

      DoStatus(924,fhost,WebUpdateAccessError,0);
      goto CleanDialup;
    end;
  end;

  if not URLGetFile(hintconnect,lasturl,wintempdir,false) then
  begin
    DoStatus(925,'',WebUpdateNotFound,ErrControlFileNotFound);
    goto CleanConnect;
  end;

  DoStatus(926,'',WebUpdateInformation,0);

  fname := URLtoFile(lasturl);

  IniFile := TIniFile.Create(wintempdir+fname);

  if FSignatureCheck then
  begin
    if FSignature <> IniFile.ReadString('update','signature','') then
    begin
      DoStatus(927,'',WebUpdateSignatureError,ErrUpdateSignatureError);
      goto CleanConnect;
    end;
  end;

  dt := EncodeDate(1980,1,1);

  // check for date based update
  s := IniFile.readstring('update','date','');
  if s <> '' then
  begin
    DoStatus(928,'',WebUpdateInformation,0);
    oldfmt := sysutils.ShortDateFormat;
    oldsep := sysutils.DateSeparator;
    try
      Sysutils.ShortDateFormat := FDateFormat;
      Sysutils.DateSeparator := FDateSeparator;
      dt := StrToDate(s);
    except
      s := '';
      SysUtils.ShortDateFormat := oldfmt;
      SysUtils.DateSeparator := oldsep;
    end;

    s := IniFile.readstring('update','time','');
    if s <> '' then
    begin
      oldfmt := SysUtils.ShortTimeFormat;
      oldsep := SysUtils.TimeSeparator;

      try
        Sysutils.ShortTimeFormat := FTimeFormat;
        Sysutils.TimeSeparator := FTimeSeparator;
        dt := dt + StrToTime(s);
      except
        s := '';
        SysUtils.ShortTimeFormat := oldfmt;
        SysUtils.TimeSeparator := oldsep;
      end;

    end;

    if Self.UpdateDateGet < dt then
    begin
      SaveUpdate := True;
      Updatedt := dt;
      DoStatus(929,DateToStr(dt),WebUpdateNewVersion,0);
    end
    else
    begin
      DoStatus(930,'',WebUpdateNoNewVersion,0);
      goto CleanConnect;
    end;
  end;

  if FPostUpdateInfo.Enabled then
  begin
    DoPostUpdateInfo;
    CustomVal := True;
    if Assigned(FProcessPostResult) then
      FProcessPostResult(Self,CustomVal);
    if not CustomVal then goto CleanConnect;
  end;

  // check for unconditional update
  if s = '' then
    s := IniFile.ReadString('update','unconditional','');

  // check for file version based update
  if s = '' then
  begin
    {$IFDEF TMSDEBUG}
    outputdebugstring('update date not found');
    {$ENDIF}
    fvn := IniFile.ReadString('update','newversion','');
    fvs := IniFile.ReadInteger('update','newsize',0);
    fvl := ExpandPath(IniFile.readstring('update','localversion',''));
    fvi := IniFile.ReadInteger('update','newchecksum',-1);

    if ((fvn<>'') or (fvs>0) or (fvi<>-1)) and (fvl<>'') then
    begin
      if (fvi<>-1) then
        DoStatus(931,'',WebUpdateInformation,0)
      else
        if (fvs>0) then
          DoStatus(932,'',WebUpdateInformation,0)
        else
          DoStatus(933,'',WebUpdateInformation,0);
    end;

    if not CheckVersions(fvn,fvl,fvs,fvi) then
    begin
      DoStatus(930,'',WebUpdateNoNewVersion,0);
      goto CleanConnect;
    end
    else
      DoStatus(929,fvn,WebUpdateNewVersion,0);
  end;

  if Assigned(FCustomValidate) then
  begin
    fvl := IniFile.ReadString('custom','validatemsg','');
    fvn := IniFile.ReadString('custom','validateparam','');
    CustomVal := True;
    FCustomValidate(self,fvl,fvn,customval);

    if not CustomVal then
      goto CleanConnect;
  end;

  if assigned(FCustomProcess) then
  begin
    fvl := IniFile.ReadString('custom','processmsg','');
    fvn := IniFile.ReadString('custom','processparam','');
    FCustomProcess(self,fvl,fvn);
  end;

  FAppClose := IniFile.ReadInteger('application','appupdate',0) = 1;

  FAppName := ExpandPath(IniFile.ReadString('application','appname',''));

  if FAppName = '' then
    FAppClose := False;

  appparam := '';
  exename := FAppName;

  if Pos(' ',FAppName) > 0 then
  begin
    exename := copy(FAppName,1,Pos(' ',FAppName)-1);
    appparam := copy(FAppName,Pos(' ',FAppName)+1,Length(FAppName));
  end;

  if Assigned(FSetAppParams) then
    FSetAppParams(Self,appparam);

  if appparam <> '' then
    FAppName := exename+' '+appparam;

  if pos(' ',FAppName) > 0 then
  begin
    FAppName := '"' + FAppName + '"';
  end;

  FAppComps := ExpandPath(IniFile.ReadString('application','appcomps',''));

  FSilentRestart := IniFile.ReadInteger('application','silentrestart',0)=1;

  s := CLFToLF(IniFile.ReadString('action','msg',''));
  if s <> '' then
  begin
    DoStatus(934,'',WebUpdateInformation,0);
    MessageDlg(s,mtinformation,[mbok],0);
  end;

  s := ExpandPath(IniFile.ReadString('action','htmldlg',''));
  if s <> '' then
  begin
    DoStatus(935,'',WebUpdateHTMLDialog,0);
    HTMLDialog(s);
  end;

  s := ExpandPath(IniFile.readstring('action','runbefore',''));
  if s <> '' then
  begin
    WinExec(pchar(s),sw_normal);
  end;

  s := CLFToLF(IniFile.ReadString('action','query',''));
  if s <> '' then
  begin
    DoStatus(936,'',WebUpdateInformation,0);
    if MessageDlg(s,mtinformation,[mbyes,mbno],0) = mrNo then
    begin
      FAppClose := False;
      goto CleanConnect;
    end;
  end;

  s := IniFile.ReadString('whatsnew','file','');
  if s <> '' then
   begin
     DoStatus(937,'',WebUpdateWhatsNew,0);

     if WhatsNewDialog(hintconnect,s,
                       IniFile.readstring('whatsnew','caption',''),
                       IniFile.readstring('whatsnew','okbtn','Ok'),
                       IniFile.readstring('whatsnew','cancelbtn','Cancel')) <> mrOK then
     begin
       DoStatus(938,'',WebUpdateWhatsNewCancel,0);
       FAppClose := False;
       goto CleanConnect;
     end;
  end;

  s := IniFile.ReadString('eula','file','');
  if s <> '' then
   begin
     DoStatus(939,'',WebUpdateEUL,0);

     if EULADialog(hintconnect,s,
                   IniFile.readstring('eula','caption',''),
                   IniFile.readstring('eula','okbtn','Ok'),
                   IniFile.readstring('eula','accept','I accept'),
                   IniFile.readstring('eula','notaccept','I do not accept'))<>mrOK then
     begin
       DoStatus(940,'',WebUpdateEULACancel,0);
       FAppClose := False;
       goto CleanConnect
     end;
  end;

  // now real update starts
  if SaveUpdate then
    Self.UpdateDatePut(updatedt);

  // extract the patcher utility  
  if Assigned(FUtility) and FApplyPatch then
    ExtractUtility;

  s := IniFile.readstring('action','updateURL','');
  if s <> '' then
  begin
    DoStatus(941,'',WebUpdateInformation,0);
    URLPut(s);
  end;

  s := ExpandPath(IniFile.readstring('action','showURL',''));
  if s <> '' then
  begin
    DoStatus(942,'',WebUpdateInformation,0);
    s := MakeProxyURL(s,fProxyUserID,fProxyPassword);
    Shellexecute( 0,'open',pchar(s),nil,nil,SW_SHOWDEFAULT);
  end;

  updatemethod := fUpdateUpdate;

  s := IniFile.ReadString('files','count','');
  if s <> '' then
  begin
    lst := TStringlist.Create;
    if Assigned(FFileList) then
    begin
      j := StrToInt(s);
      for i := 1 to j do
        lst.Add(IniFile.ReadString('file'+inttostr(i),'descr',''));
      FFileList(Self,lst);
    end;

    DoStatus(943,'',WebUpdateInformation,0);

    j := strtoint(s);

    for i := 1 to j do
    begin
      s := IniFile.ReadString('file'+inttostr(i),'url','');
      s := ExpandPath(s);

      if Assigned(FFileList) then
      begin
        fvn := lst.Strings[i - 1];
      end
      else
        fvn := 'ok';

      if (s <> '') and (fvn <> '') then
      begin
        fvn := IniFile.ReadString('file'+IntToStr(i),'newversion','');
        fvl := ExpandPath(IniFile.ReadString('file'+IntToStr(i),'localversion',''));
        fvs := IniFile.ReadInteger('file'+IntToStr(i),'newsize',0);
        fvc := IniFile.ReadString('file'+IntToStr(i),'customversion','');
        fvi := IniFile.ReadInteger('file'+IntToStr(i),'newchecksum',-1);

        tgt := AddBackslash(ExpandPath(IniFile.ReadString('file'+IntToStr(i),'targetdir','')));
        uncompress := IniFile.ReadInteger('file'+IntToStr(i),'compressed',0) = 1;

        // create directory if required
        if (tgt <> '') and not DirExists(tgt) then
          ForceDirectories(tgt);

        {$IFDEF TMSDEBUG}
        DoStatus(944,IntToStr(fvs)+'/'+IntToStr(fvi),WebUpdateInformation,0);
        {$ENDIF}

        if not CheckVersions(fvn,fvl,fvs,fvi) then
          Continue;

        IsNew := True;

        if Assigned(FWebUpdateFileVersionCheck) and (fvc <> '') then
          FWebUpdateFileVersionCheck(self,fvc,fvl,IsNew);

        if not IsNew then
          Continue;

        DoStatus(945,s,WebUpdateInformation,0);

        if (UpdateMethod = wuuSilent) or
           ((UpdateMethod = wuuPromptAll) and
            (MessageDlg(LoadStr(909) + UrlToFile(s),mtConfirmation,[mbYes,mbNo],0) = mrYes)) or
           ((UpdateMethod = wuuPromptOnce) and
            (MessageDlg(LoadStr(910),mtConfirmation,[mbYes,mbNo],0) = mrYes)) then
        begin
          {$IFDEF TMSDEBUG}
          outputdebugstring(pchar('download '+s));
          {$ENDIF}
          if not URLGetFile(hintconnect,s,tgt,uncompress) then
          begin
            DoStatus(946,s,WebUpdateNotFound,0);
            FAppclose := False;
          end
          else
          begin
            if (IPos(URLToFile(s),fappcomps) > 0) then
              FAppCompsIncluded := True;

            if (UpperCase(ExtractFileExt(UrlToFile(s))) = '.CAB') and
              FExtractCAB and
              not (IPos(URLToFile(s),FAppComps) > 0) then
            begin
              if CABExtract(tgt+urltofile(s),tgt)=-1 then
                DoStatus(947,tgt+urltofile(s),WebUpdateCABError,0)
              else
                DeleteFile(pchar(tgt+urltofile(s)));
            end;

            if (UpperCase(ExtractFileExt(UrlToFile(s))) = '.PAT') and
              FApplyPatch and (fvl <> '') and not (IPos(URLToFile(s),FAppComps) > 0) then
            begin
              ExecAndWait('patcher.exe ' + URLToFile(s) + ' ' + fvl);

              DeleteFile(PChar(tgt + URLToFile(s)));
            end;

          end;
          if UpdateMethod = wuuPromptOnce then
            UpdateMethod := wuuSilent;
        end
        else
        begin
          if UpdateMethod = wuuPromptOnce then
            Break;
        end;
      end;
    end;

    lst.Free;
  end;

  s := ExpandPath(IniFile.ReadString('action','runafter',''));
  if s <> '' then
  begin
    Winexec(PChar(s),sw_normal);
  end;

  DoStatus(948,'',WebUpdateInformation,0);

CleanConnect:

  if (fUpdateType<>fileUpdate) then
  begin
    if FUpdateType = ftpUpdate then
      InternetCloseHandle(hintconnect);


    InternetCloseHandle(hint);

CleanDialup:

    if Dialed and (FUpdateConnect in [wucConnectPromptHangup,wucConnectSilentHangup]) then
      DynaLink_InternetAutoDialHangup(dwReserved);

    DoStatus(949,'',WebUpdateInformation,0);
  end;

  if Assigned(IniFile) then
  begin
    IniFile.Free;
    SysUtils.DeleteFile(wintempdir+fname);
  end;

  if FAppClose and not FThreaded and FAppCompsIncluded then
    DoRestart;
end;

procedure TWebUpdate.DoRestart;
var
  proch: dword;
  allow: Boolean;
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
  StartErrorCode: dword;
  TmpBuf:array[0..1024] of char;

begin
  Allow := True;
  if Assigned(FAppRestart) then
    FAppRestart(Self,Allow)
  else
   if not FSilentRestart then
     Allow := MessageDlg(LoadStr(911),mtConfirmation,[mbYes,mbNo],0) = mrYes;

  if Allow then
  begin
    ExtractUpdateResource;

    proch := GetCurrentProcessID;

    FillChar(StartupInfo, Sizeof(StartupInfo), #0);
    StartupInfo.cb := Sizeof(StartupInfo);
    StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
    StartupInfo.wShowWindow := SW_SHOWNORMAL;

    if not CreateProcess(nil,
      pchar(wintempdir+'upd.exe '+inttostr(proch)+' '+fappname+' '+fappcomps),
      nil,
      nil,
      true,
      CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, { creation flags }
      nil,                    { pointer to new environment block }
      nil,                    { pointer to current directory name, PChar}
      StartupInfo,            { pointer to STARTUPINFO }
      ProcessInfo) then
    begin
      StartErrorCode := GetLastError;
      FormatMessage(FORMAT_MESSAGE_FROM_SYSTEM,
        nil,
        StartErrorCode,
        0,
        TmpBuf,
        SizeOf(TmpBuf),
        nil);

      DoStatus(950,strpas(TmpBuf),WebUpdateSpawnFail,StartErrorCode);
    end;

    if Assigned(FAppDoClose) then
      FAppDoClose(self) else application.Terminate;
  end;
end;


function TWebUpdate.URLGet: string;
var
  RegIniFile: TRegIniFile;
begin
  Result := '';
  if (FLastURLEntry.Key <> '') and
     (FLastURLEntry.Section <> '') and
     (FLastURLEntry.Save) then
  begin
    RegIniFile := TRegIniFile.Create(FLastURLEntry.key);
    Result := RegIniFile.ReadString(FLastURLEntry.Section,'LastURL','');
    RegIniFile.Free;
  end;
end;

procedure TWebUpdate.URLPut(url: string);
var
  RegIniFile:TRegIniFile;
begin
  if (FLastURLEntry.Key <> '') and
    (FLastURLEntry.Section <> '') and
    (FLastURLEntry.Save) then
  begin
    RegIniFile := TRegIniFile.Create(FLastURLEntry.key);
    RegIniFile.WriteString(fLastURLEntry.Section,'LastURL',url);
    RegIniFile.Free;
  end;
end;

function TWebUpdate.UpdateDateGet:TDateTime;
var
  RegIniFile: TRegIniFile;
  DateStr, TimeStr: string;
begin
  Result := EncodeDate(1980,1,1);

  if (FLastURLEntry.Key <> '') and
     (FLastURLEntry.Section <> '') then
  begin
    RegIniFile := TRegIniFile.Create(FLastURLEntry.key);
    DateStr := RegIniFile.ReadString(FLastURLEntry.Section,'LastDate','');
    TimeStr := RegIniFile.ReadString(FLastURLEntry.Section,'LastTime','');

    try
      if DateStr <> '' then
        Result := StrToDate(DateStr);

      if TimeStr <> '' then
        Result := Result + StrToTime(TimeStr);
    except
    end;
    RegIniFile.Free;
  end;
end;

procedure TWebUpdate.UpdateDatePut(dt: TDateTime);
var
  RegIniFile:TRegIniFile;
begin
  if (FLastURLEntry.Key<>'') and
     (FLastURLEntry.Section<>'') and
     (FLastURLEntry.Save) then
  begin
    RegIniFile := TRegIniFile.Create(FLastURLEntry.key);
    RegIniFile.WriteString(FLastURLEntry.Section,'LastDate',DateToStr(dt));
    if Frac(dt) <> 0 then
      RegIniFile.WriteString(FLastURLEntry.Section,'LastTime',TimeToStr(dt));
    RegIniFile.Free;
  end;
end;

function TWebUpdate.Connected:Boolean;
var
  dwFlags:dword;
  dwReserved:cardinal;
begin
  dwReserved:=0;
  Result := DynaLink_InternetGetConnectedState(@dwFlags,dwReserved);
end;

function TWebUpdate.ConnectionType:Integer;
var
  dwFlags: dword;
  dwReserved: cardinal;
begin
  dwReserved := 0;
  if DynaLink_InternetGetConnectedState(@dwFlags,dwReserved) then
    Result := dwFlags
  else
    Result := -1;
end;

procedure TWebUpdate.ExtractUpdateResource;
var
  reshandle: THandle;
  hglobal: THandle;
  ressize: dword;
  ptr: pointer;
  binfile: file of byte;
  srcname: string;
begin
  reshandle := FindResource(hinstance,'UPD',PChar(RT_RCDATA));
  hglobal := LoadResource(hinstance,reshandle);
  Ressize := SizeOfResource(hinstance,reshandle);
  ptr := LockResource(hglobal);

  Srcname := wintempdir + 'upd.ex_';
  AssignFile(binfile,srcname);
  Rewrite(binfile);
  Blockwrite(binfile,ptr^,ressize);
  Closefile(binfile);

  ExpandFile(srcname);
end;

procedure TWebUpdate.ExtractUtility;
var
  reshandle: THandle;
  hglobal: THandle;
  ressize: DWord;
  ptr: pointer;
  binfile: file of byte;
  srcname: string;
begin
  reshandle := FindResource(hinstance,'UTIL',PChar(RT_RCDATA));
  hglobal := LoadResource(hinstance,reshandle);
  Ressize := SizeOfResource(hinstance,reshandle);
  ptr := LockResource(hglobal);

  SrcName := GetCurrentDir + '\patcher.exe';
  AssignFile(binfile,SrcName);
  Rewrite(binfile);
  Blockwrite(binfile,ptr^,ressize);
  Closefile(binfile);
end;


procedure TWebUpdate.CustomProcess(fn: string);
begin
  if Assigned(FWebUpdateFileDownloaded) then
    FWebUpdateFileDownloaded(Self,fn);
end;

procedure TWebUpdate.ShowHTMLDialog(s:string);
begin
  HTMLDialog(s);
end;

procedure TWebUpdate.HangUp;
var
  dwReserved: DWord;
begin
  if Connected then
  begin
    dwReserved := 0;
    Dynalink_InternetAutoDialHangup(dwReserved);
  end;
end;

procedure TWebUpdate.Notification(AComponent: TComponent;
  AOperation: TOperation);
begin
  inherited;
  if (AOperation = opRemove) and (AComponent = FUtility) then
  begin
    FUtility := nil;
  end;
end;

end.
