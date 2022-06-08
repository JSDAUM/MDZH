{********************************************************************
Extended filecontrol components
for Delphi 2.0, 3.0, 4.0, 5.0 & C++ Builder 1.0, 3.0, 4.0,5.0
version 1.2, June 2000

written by :
           TMS Software
           copyright © 1999-2000
           Email : info@tmssoftware.com
           Website : http://www.tmssoftware.com

The source code is given as is. The author is not responsible
for any possible damage done due to the use of this code.
The component can be freely used in any application. The source
code remains property of the writer and may not be distributed
freely as such.
********************************************************************}

{$I TMSDEFS.INC}

unit FlCtrlEx;

{$R-,T-,H+,X+}

interface

{$WARNINGS OFF}
uses Windows, Messages, SysUtils, Classes, Controls, Graphics, Forms,
  Menus, StdCtrls, FileCtrl, shellapi, commctrl;
{$WARNINGS ON}

type

 TFileListBoxEx = class(TFileListBox)
 private
  fImages:TImageList;
  fWinNT:boolean;
  procedure CNMeasureItem(var Message: TWMMeasureItem); message CN_MEASUREITEM;
 protected
  procedure ReadFileNames; override;
  procedure DrawItem(Index: Integer; Rect: TRect; State: TOwnerDrawState);  override;
 public
  constructor Create(AOwner: TComponent); override;
  destructor Destroy; override;
 end;

 TDirectoryListBoxEx = class(TDirectoryListBox)
 private
  fImages:TImageList;
  fDirOpen,fDirClosed:integer;
  fWinNT:boolean;
 protected
  procedure DrawItem(Index: Integer; Rect: TRect; State: TOwnerDrawState); override;
 public
  constructor Create(AOwner: TComponent); override;
  destructor Destroy; override;
 end;

 TDriveComboBoxEx = class(TDriveComboBox)
 private
  fImages:TImageList;
  fWinNT:boolean;
  procedure CNMeasureItem(var Message: TWMMeasureItem); message CN_MEASUREITEM;
 protected
  procedure DrawItem(Index: Integer; Rect: TRect; State: TOwnerDrawState); override;
  procedure BuildList; override;
 public
  constructor Create(AOwner: TComponent); override;
  destructor Destroy; override;
 end;


implementation

function IsWinNT:boolean;
var
 verinfo:TOSVersionInfo;
begin
 verinfo.dwOSVersionInfoSize:=sizeof(TOSVersionInfo);
 getversionex(verinfo);
 result:=(verinfo.dwPlatformId = VER_PLATFORM_WIN32_NT);
end;


constructor TFileListBoxEx.Create(AOwner: TComponent);
var
 SHFileInfo:TSHFileInfo;
begin
 inherited;
 {only working for Windows 95,98}
 fWinNT:=IsWinNT;
 if not fWinNT then
  begin
   fImages:=TImageList.CreateSize(16,16);
   fImages.ShareImages:=TRUE;
   fImages.Handle := ShGetFileInfo('*.*', 0, SHFileInfo,
                                   SizeOf(SHFileInfo), SHGFI_SMALLICON or SHGFI_SYSICONINDEX);
  end;
end;

destructor TFileListBoxEx.Destroy;
begin
 if not fWinNT then fImages.Free;
 inherited;
end;

procedure TFileListBoxEx.CNMeasureItem(var Message: TWMMeasureItem);
begin
  with Message.MeasureItemStruct^ do
  begin
    itemHeight := 17;
  end;
end;


procedure TFileListBoxEx.ReadFileNames;
var
  AttrIndex: TFileAttr;
  I: Integer;
  MaskPtr: PChar;
  Ptr: PChar;
  AttrWord: Word;
  FileInfo: TSearchRec;
  SaveCursor: TCursor;
  sfi : tshFileInfo;

const
{$WARNINGS OFF}
   Attributes: array[TFileAttr] of Word = (faReadOnly, faHidden, faSysFile,
     faVolumeID, faDirectory, faArchive, 0);
{$WARNINGS ON}
begin
      { if no handle allocated yet, this call will force
        one to be allocated incorrectly (i.e. at the wrong time.
        In due time, one will be allocated appropriately.  }
  AttrWord := DDL_READWRITE;

  if HandleAllocated then
  begin
    { Set attribute flags based on values in FileType }
    for AttrIndex := ftReadOnly to ftArchive do
      if AttrIndex in FileType then
        AttrWord := AttrWord or Attributes[AttrIndex];

    ChDir(FDirectory); { go to the directory we want }
    Clear; { clear the list }

    I := 0;
    SaveCursor := Screen.Cursor;
    try
      MaskPtr := PChar(FMask);
      while MaskPtr <> nil do
      begin
        Ptr := StrScan (MaskPtr, ';');
        if Ptr <> nil then
          Ptr^ := #0;
        if FindFirst(MaskPtr, AttrWord, FileInfo) = 0 then
        begin
          repeat            { exclude normal files if ftNormal not set }
            if (ftNormal in FileType) or (FileInfo.Attr and AttrWord <> 0) then
              if FileInfo.Attr and faDirectory <> 0 then
              begin
                I := Items.Add(Format('[%s]',[FileInfo.Name]));
                if ShowGlyphs then
                  Items.Objects[I] := DirBMP;
              end
              else
              begin
                if not fWinNT then
                 begin
                  SHGetFileInfo(PChar(FileInfo.Name),FILE_ATTRIBUTE_NORMAL, SFI, SizeOf(TSHFileInfo), SHGFI_SYSICONINDEX  or SHGFI_SMALLICON or SHGFI_USEFILEATTRIBUTES);
                  I := Items.AddObject(FileInfo.Name,TObject( sfi.iIcon ));
                 end
                else
                 Items.AddObject(FileInfo.Name,nil);


              end;
            if I = 100 then
              Screen.Cursor := crHourGlass;
          until FindNext(FileInfo) <> 0;
          FindClose(FileInfo);
        end;
        if Ptr <> nil then
        begin
          Ptr^ := ';';
          Inc (Ptr);
        end;
        MaskPtr := Ptr;
      end;
    finally
      Screen.Cursor := SaveCursor;
    end;
    Change;
  end;

end;


procedure TFileListBoxEx.DrawItem(Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  offset: Integer;
  sfi : tshFileInfo;
  syshandle:thandle;

begin
  with Canvas do
  begin
    FillRect(Rect);
    offset:=17;

    if fWinNT then
     begin
      syshandle:=SHGetFileInfo(PChar(Items[Index]), FILE_ATTRIBUTE_NORMAL, SFI, SizeOf(TSHFileInfo), SHGFI_SYSICONINDEX  or SHGFI_SMALLICON or SHGFI_USEFILEATTRIBUTES);
      ImageList_Draw(syshandle,sfi.iIcon,canvas.handle,rect.left,rect.top, ILD_TRANSPARENT);
     end
    else
      ImageList_Draw(fImages.Handle,integer(Items.Objects[Index]),canvas.handle,rect.left,rect.top, ILD_TRANSPARENT);

    TextOut(Rect.Left + offset, Rect.Top, Items[Index])
  end;
end;

function DirLevel(const PathName: string): Integer;  { counts '\' in path }
var
  P: PChar;
begin
  Result := 0;
  P := AnsiStrScan(PChar(PathName), '\');
  while P <> nil do
  begin
    Inc(Result);
    Inc(P);
    P := AnsiStrScan(P, '\');
  end;
end;


procedure TDirectoryListBoxEx.DrawItem(Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
var
  Bitmap: TBitmap;
  bmpWidth: Integer;
  dirOffset: Integer;
  sfi : tshFileInfo;
  syshandle:thandle;

begin
  with Canvas do
  begin
    FillRect(Rect);
    bmpWidth  := 16;
    dirOffset := Index * 4 + 2;    {add 2 for spacing}

    Bitmap := TBitmap(Items.Objects[Index]);
    if Bitmap <> nil then
    begin
      if Bitmap = ClosedBMP then
        dirOffset := (DirLevel (Directory) + 1) * 4 + 2;
      bmpwidth:=16;
      if fWinNT then
       begin
        if Bitmap = ClosedBMP then
         syshandle:=ShGetFileInfo('*.*',FILE_ATTRIBUTE_DIRECTORY, sfi,
                         SizeOf(sfi), SHGFI_SMALLICON or SHGFI_SYSICONINDEX or SHGFI_USEFILEATTRIBUTES)
        else
         syshandle:=ShGetFileInfo('*.*',FILE_ATTRIBUTE_DIRECTORY, sfi,
                         SizeOf(sfi), SHGFI_SMALLICON or SHGFI_SYSICONINDEX or SHGFI_USEFILEATTRIBUTES or SHGFI_OPENICON);
        ImageList_Draw(syshandle,sfi.iIcon,canvas.handle,rect.left+diroffset,rect.top, ILD_TRANSPARENT);
       end
      else
       begin
        if Bitmap = ClosedBMP then
         ImageList_Draw(fImages.Handle,fDirclosed,canvas.handle,rect.left+diroffset,rect.top, ILD_TRANSPARENT)
        else
         ImageList_Draw(fImages.Handle,fDirOpen,canvas.handle,rect.left+diroffset,rect.top, ILD_TRANSPARENT);
       end;
    end;
    TextOut(Rect.Left + bmpWidth + dirOffset + 4, Rect.Top, DisplayCase(Items[Index]))
  end;
end;

constructor TDirectoryListBoxEx.Create(AOwner: TComponent);
var
 SHFileInfo:TSHFileInfo;
begin
 inherited;
 {only working for Windows 95,98}
 fWinNT:=IsWinNT;
 if not fWinNT then
  begin
   fImages:=TImageList.CreateSize(16,16);
   fImages.ShareImages:=TRUE;
   fImages.Handle := ShGetFileInfo('*.*', 0, SHFileInfo,
                                   SizeOf(SHFileInfo), SHGFI_SMALLICON or SHGFI_SYSICONINDEX);

   ShGetFileInfo('',FILE_ATTRIBUTE_DIRECTORY, SHFileInfo,
                  SizeOf(SHFileInfo), SHGFI_SMALLICON or SHGFI_SYSICONINDEX or SHGFI_USEFILEATTRIBUTES or SHGFI_OPENICON);
   fDirOpen:=shfileinfo.iIcon;
   ShGetFileInfo('',FILE_ATTRIBUTE_DIRECTORY, SHFileInfo,
                  SizeOf(SHFileInfo), SHGFI_SMALLICON or SHGFI_SYSICONINDEX or SHGFI_USEFILEATTRIBUTES );
   fDirClosed:=shfileinfo.iIcon;
  end;
end;

destructor TDirectoryListBoxEx.Destroy;
begin
 if not fWinNT then fImages.Free;
 inherited;
end;



procedure TDriveComboBoxEx.DrawItem(Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
var
  bmpWidth: Integer;
  syshandle:integer;
  sfi:TSHFileInfo;
  s:string;
begin

  with Canvas do
  begin
    FillRect(Rect);
    bmpWidth  := 16;

    {draw image}
    if fWinNT then
     begin
      s:=Items[Index];
      if pos(' ',s)>0 then delete(s,pos(' ',s),255);
      syshandle:=ShGetFileInfo(pchar(s+'\'),0, sfi,
                                     SizeOf(sfi), SHGFI_SMALLICON or SHGFI_SYSICONINDEX);
      ImageList_Draw(syshandle,sfi.iIcon,canvas.handle,rect.left,rect.top, ILD_TRANSPARENT);
     end
    else
     begin
      ImageList_Draw(fImages.handle,integer(Items.Objects[Index]),canvas.handle,rect.left,rect.top, ILD_TRANSPARENT);
     end;

    Rect.Left := Rect.Left + bmpWidth + 6;
    DrawText(Canvas.Handle, PChar(Items[Index]), -1, Rect,
             DT_SINGLELINE or DT_VCENTER or DT_NOPREFIX);
  end;
end;

procedure TDriveComboBoxEx.CNMeasureItem(var Message: TWMMeasureItem);
begin
  with Message.MeasureItemStruct^ do
  begin
    itemHeight := 16;
  end;
end;

function VolumeID(DriveChar: Char): string;
var
  OldErrorMode: Integer;
  NotUsed, VolFlags: DWORD;
  Buf: array [0..MAX_PATH] of Char;
begin
  OldErrorMode := SetErrorMode(SEM_FAILCRITICALERRORS);
  try
    Buf[0] := #$00;
    if GetVolumeInformation(PChar(DriveChar + ':\'), Buf, DWORD(sizeof(Buf)),
      nil, NotUsed, VolFlags, nil, 0) then
      SetString(Result, Buf, StrLen(Buf))
    else Result := '';
    if DriveChar < 'a' then
      Result := AnsiUpperCaseFileName(Result)
    else
      Result := AnsiLowerCaseFileName(Result);
    Result := Format('[%s]',[Result]);
  finally
    SetErrorMode(OldErrorMode);
  end;
end;

function NetworkVolume(DriveChar: Char): string;
var
  Buf: Array [0..MAX_PATH] of Char;
  DriveStr: array [0..3] of Char;
  BufferSize: DWORD;
begin
  BufferSize := sizeof(Buf);
  DriveStr[0] := UpCase(DriveChar);
  DriveStr[1] := ':';
  DriveStr[2] := #0;
  if WNetGetConnection(DriveStr, Buf, BufferSize) = WN_SUCCESS then
  begin
    SetString(Result, Buf, BufferSize);
    if DriveChar < 'a' then
      Result := AnsiUpperCaseFileName(Result)
    else
      Result := AnsiLowerCaseFileName(Result);
  end
  else
    Result := VolumeID(DriveChar);
end;


procedure TDriveComboBoxEx.BuildList;
var
  DriveNum: Integer;
  DriveChar: Char;
  DriveType: TDriveType;
  DriveBits: set of 0..25;
  sfi:TSHFileInfo;

  procedure AddDrive(const VolName: string; Obj: TObject);
  begin
    if not fWinNT then
      begin
       ShGetFileInfo(pchar(DriveChar+':\'),0, sfi,
                                     SizeOf(sfi), SHGFI_SMALLICON or SHGFI_SYSICONINDEX);
       Items.AddObject(Format('%s: %s',[DriveChar, VolName]), TObject(sfi.iIcon));
      end
    else

    Items.AddObject(Format('%s: %s',[DriveChar, VolName]), Obj);
  end;

begin
  { fill list }
  Clear;
  Integer(DriveBits) := GetLogicalDrives;
  for DriveNum := 0 to 25 do
  begin
    if not (DriveNum in DriveBits) then Continue;
    DriveChar := Char(DriveNum + Ord('a'));
    DriveType := TDriveType(GetDriveType(PChar(DriveChar + ':\')));
    if TextCase = tcUpperCase then
      DriveChar := Upcase(DriveChar);

    case DriveType of
      dtFloppy:   AddDrive('',FloppyBMP);
      dtFixed:    AddDrive(VolumeID(DriveChar), FixedBMP);
      dtNetwork:  AddDrive(NetworkVolume(DriveChar), NetworkBMP);
      dtCDROM:    AddDrive(VolumeID(DriveChar), CDROMBMP);
      dtRAM:      AddDrive(VolumeID(DriveChar), RAMBMP);
    end;
  end;
end;

constructor TDriveComboBoxEx.Create(AOwner: TComponent);
var
 SHFileInfo:TSHFileInfo;
begin
 inherited;
 {only working for Windows 95,98}
 fWinNT:=IsWinNT;
 if not fWinNT then
  begin
   fImages:=TImageList.CreateSize(16,16);
   fImages.ShareImages:=TRUE;
   fImages.Handle := ShGetFileInfo('*.*', 0, SHFileInfo,
                                   SizeOf(SHFileInfo), SHGFI_SMALLICON or SHGFI_SYSICONINDEX);
  end;
end;

destructor TDriveComboBoxEx.Destroy;
begin
 if not fWinNT then fImages.Free;
 inherited;
end;


end.
