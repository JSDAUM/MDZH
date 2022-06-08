{********************************************************************
CAB FDI procs
for Delphi 2.0,3.0,4.0,5.0,C++Builder 1.0,3.0,4.0
version 1.0 - rel. December 13, 1999

written by TMS Software
           copyright © 1996-1999
           Email : info@tmssoftware.com
           Web : http://www.tmssoftware.com

The source code is given as is. The author is not responsible
for any possible damage done due to the use of this code.
The component can be freely used in any application. The complete
source code remains property of the author and may not be distributed,
published, given or sold in any form as such. No parts of the source
code can be included in any other component or application without
written authorization of the author.
********************************************************************}

unit cabfdi;

{$DEFINE noDEBUG}

interface

uses
 wintypes;

const
    cabdll = 'cabinet.dll';

    FDIERROR_NONE = 0;
    FDIERROR_CABINET_NOT_FOUND = 1;
    FDIERROR_NOT_A_CABINET = 2;
    FDIERROR_UNKNOWN_CABINET_VERSION = 3;
    FDIERROR_CORRUPT_CABINET = 4;
    FDIERROR_ALLOC_FAIL = 5;
    FDIERROR_BAD_COMPR_TYPE = 6;
    FDIERROR_MDI_FAIL = 7;
    FDIERROR_TARGET_FILE = 8;
    FDIERROR_RESERVE_MISMATCH = 9;
    FDIERROR_WRONG_CABINET = 10;
    FDIERROR_USER_ABORT = 11;
    fdintCABINET_INFO = 0;              // General information about cabinet
    fdintPARTIAL_FILE = 1;              // First file in cabinet is continuation
    fdintCOPY_FILE = 2;                 // File to be copied
    fdintCLOSE_FILE_INFO = 3;           // close the file, set relevant info
    fdintNEXT_CABINET = 4;              // File continued to next cabinet
    fdintENUMERATE = 5;                 // Enumeration status


type
  perf = ^terf;
  terf = record
          erfOper,erfType:integer;
          fError:longbool;
         end;

  PFDICABINETINFO = ^TFDICABINETINFO;
  TFDICABINETINFO = record
        cbCabinet:longint;              // Total length of cabinet file
        cFolders:smallint;              // Count of folders in cabinet
        cFiles:smallint;                // Count of files in cabinet
        setID:smallint;                 // Cabinet set ID
        iCabinet:smallint;              // Cabinet number in set (0 based)
        fReserve:integer;               // TRUE => RESERVE present in cabinet
        hasprev:integer;                // TRUE => Cabinet is chained prev
        hasnext:integer;                // TRUE => Cabinet is chained next
       end;

  PFDINOTIFICATION = ^TFDINOTIFICATION;
  TFDINOTIFICATION = record
    cb:longint;
    psz1:pchar;
    psz2:pchar;
    psz3:pchar;                       // Points to a 256 character buffer
    pv:pointer;                       // Value for client
    hf:integer;
    date:smallint;
    time:smallint;
    attribs:smallint;
    setID:smallint;                   // Cabinet set ID
    iCabinet:smallint;                // Cabinet number (0-based)
    iFolder:smallint;                 // Folder number (0-based)
    FDIERROR:integer;
  end;



function CabExtract(cabfile,targetdir:string):integer;

implementation

uses
 sysutils;

var
 doExtract:boolean;
 doRelative:boolean;
 doExtractPath:string;

function DirectoryExists(const Name: string): Boolean;
var
  Code: Integer;
begin
  Code := GetFileAttributes(PChar(Name));
  Result := (Code <> -1) and (FILE_ATTRIBUTE_DIRECTORY and Code <> 0);
end;


function FdiNotification(fdint:integer; notif :PFDINOTIFICATION):integer; cdecl;
var
 FileTime:TFileTime;
 subdir:string;
begin
  result:=0;

  case fdint of
    fdintCABINET_INFO : begin
        {$IFDEF DEBUG}
        outputdebugstring('cabinet info');
        {$ENDIF}
        end;
    fdintPARTIAL_FILE : begin
        {$IFDEF DEBUG}
        outputdebugstring('partial file');
        {$ENDIF}
        end;
    fdintCOPY_FILE : begin

        {$IFDEF DEBUG}
        outputdebugstring('copy file');
        outputdebugstring(notif^.psz1);
        {$ENDIF}

        if doExtract then
         begin
          if doRelative then
           subdir:=extractfiledir(expandfilename(strpas(notif^.psz1)))
          else
           subdir:=doExtractPath+extractfiledir(strpas(notif^.psz1));

          if not DirectoryExists(subdir) then
             begin
              CreateDir(subdir);
             end;

          result:=_lcreat(pchar(doExtractPath+strpas(notif^.psz1)),0);
         end
        else
        result:=0; {skip}

      end;
    fdintCLOSE_FILE_INFO :
      begin
       {$IFDEF DEBUG}
       outputdebugstring('close file');
       {$ENDIF}
       if doExtract then
        begin
         DosDateTimeToFileTime(Word(notif^.Date), Word(notif^.Time), FileTime);
         SetFileTime(notif^.hf, nil, nil, @FileTime);
         _lclose(notif^.hf);
        end;

       Result:=1;
      end;
    fdintNEXT_CABINET :
      begin
       {$IFDEF DEBUG}
       outputdebugstring('next cabinet');
       {$ENDIF}
      end;
    fdintENUMERATE :
      begin
       {$IFDEF DEBUG}
       outputdebugstring('enumerate');
       {$ENDIF}
      end;
  end;
end;

function StdFdiOpen (pszFile : PChar; pmode : Integer): Integer; cdecl;
begin
  {$IFDEF DEBUG}
  outputdebugstring('open call');
  {$ENDIF}
  Result:=_lopen(pszFile, pmode);
end;

function StdFdiRead (hf : Integer; memory : pointer; cb : integer) : integer; cdecl;
begin
  {$IFDEF DEBUG}
  outputdebugstring('read call');
  {$ENDIF}
  Result:=_lread(hf,memory,cb);
end;

function StdFdiWrite (hf : Integer; memory : pointer; cb : integer) : integer; cdecl;
begin
  {$IFDEF DEBUG}
  outputdebugstring('write call');
  {$ENDIF}
  Result:=_lwrite(hf, memory, cb);
end;

function StdFdiClose (hf : Integer) : Integer; cdecl;
begin
  {$IFDEF DEBUG}
  outputdebugstring('close call');
  {$ENDIF}
  Result:=_lclose(hf);
end;

function StdFdiSeek (hf : Integer; dist : Longint; seektype : Integer) : Longint; cdecl;
begin
  {$IFDEF DEBUG}
  outputdebugstring('seek call');
  {$ENDIF}
  Result:=_llseek(hf, dist, seektype);
end;

function StdFdiAlloc (cb : longint) : pointer; cdecl;
{$IFDEF DEBUG}
var
 i:integer;
{$ENDIF} 
begin
 GetMem(Result, cb);
 {$IFDEF DEBUG}
 i:=integer(result);
 outputdebugstring(pchar('alloc call '+format('%x : %d',[i,cb])));
 {$ENDIF}
end;

function StdFdiFree (memory : pointer) : Pointer; cdecl;
{$IFDEF DEBUG}
var
 i:integer;
{$ENDIF}
begin
  {$IFDEF DEBUG}
  i:=integer(memory);
  outputdebugstring(pchar('free call '+format('%x',[i])));
  {$ENDIF}
  FreeMem(memory);
  Result:=nil;
end;

function CabExtract(cabfile,targetdir:string):integer;
var
 hfdi:thandle;
 hf:integer;
 IsCab:bool;
 cabinetDLL:THandle;
 cablib:thandle;
 cabname,cabpath:string;
 erf:terf;
 FDICABINETINFO:TFDICABINETINFO;

 _FDICreate:function(pfnalloc,pfnfree,pfnopen,pfnread,pfnwrite,
                     pfnclose,pfnseek:pointer;
                     cpuType:integer;PERF:perf): thandle; cdecl;
 _FDIDestroy:function(hfdi:thandle): bool; cdecl;
 _FDIIsCabinet:function(hfdi:thandle; hf:integer;PFDIINFO:PFDICABINETINFO):bool; cdecl;
 _FDICopy:function(hfdi:thandle;pszCabinet,pszCabPath:pchar;flags:integer;
                   pfnfdin,pfnfdid:pointer;pvUser:pointer) : bool; cdecl;

begin
 result:=-1;

 hf:=_lopen(pchar(cabfile),OF_READ);
 if (hf<>integer(HFILE_ERROR)) then _lclose(hf) else exit;

 cablib:=LoadLibrary('cabinet.dll');
 if (cablib=0) then exit;

 cabinetdll:=GetModuleHandle('cabinet.dll');

 if (CabinetDLL>0) then
  begin
   @_FDICreate:=GetProcAddress(CabinetDLL,'FDICreate');
   @_FDIIsCabinet:=GetProcAddress(CabinetDLL,'FDIIsCabinet');
   @_FDICopy:=GetProcAddress(CabinetDLL,'FDICopy');
   @_FDIDestroy:=GetProcAddress(CabinetDLL,'FDIDestroy');

   doExtractPath:=targetdir;

   hfdi:=_FDICreate(@StdFdiAlloc,@StdFdiFree,
                    @StdFdiOpen,@StdFdiRead,@StdFdiWrite,@StdFdiClose,@StdFdiSeek,1,@erf);

   {$IFDEF DEBUG}
   outputdebugstring(pchar(cabfile));
   {$ENDIF}

   hf:=_lopen(pchar(cabfile),OF_READ);
   IsCab:=_FDIIsCabinet(hfdi,hf,@FDICABINETINFO);
   _lclose(hf);

   if IsCab then
    begin
     {$IFDEF DEBUG}
     outputdebugstring(pchar('cabinet size = '+inttostr(FDICABINETINFO.cbCabinet)));
     outputdebugstring(pchar('cabinet folders = '+inttostr(FDICABINETINFO.cFolders)));
     outputdebugstring(pchar('cabinet files = '+inttostr(FDICABINETINFO.cFolders)));
     {$ENDIF}

     doExtract:=true;
     doRelative:=targetdir='';

     cabname:=extractfilename(cabfile);
     cabpath:=extractfiledir(expandfilename(cabfile))+'\';

     {$IFDEF DEBUG}
     outputdebugstring(pchar(cabname));
     outputdebugstring(pchar(cabpath));
     {$ENDIF}

     if _FDICopy(hfdi,pchar(cabname),pchar(cabpath),0,@FdiNotification,nil,nil) then
      result:=0 else result:=-1;
   end;


   {$IFDEF DEBUG}
   if _FDIDestroy(hfdi) then
     begin
      result:=0;
      outputdebugstring(' destroy ok ')
     end
   else
     begin
      result:=-1;
      outputdebugstring('destroy fail');
     end;
   {$ELSE}
   if _FDIDestroy(hfdi) and (result=0) then result:=0 else result:=-1;
   {$ENDIF}
   
  end
 else result:=-1;

 FreeLibrary(cablib);
end;




end.
