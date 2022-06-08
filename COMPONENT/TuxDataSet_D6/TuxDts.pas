unit TuxDts;
// ===========================================================================
//  tuxdts.dcu - tTuxDataSet : Tuxedo에서 받은 Data를 Custom Dataset에 넣어
//                             사용한다.
// ===========================================================================

interface

uses SysUtils, Windows, Classes, Dialogs, Forms, Controls, WinSock, Db,
     fml, atmi, fml32
    //,DsgnIntf
    ,DesignIntf
    ,DesignEditors
     ;



const
     TPInitSize    = 512;           // tpInit Buffer Size
     FBufferSize   = 65532;         // FML Buffer MAX Size (64k)
     FBufferSize32 = 524256;        // FML32 Buffer MAX Size (512k)

{ TConnectionStringProperty }
type
  TtxFileNameProperty = class(TStringProperty)
  public
    procedure Edit; override;
    function GetAttributes: TPropertyAttributes; override;
  end;

type
  ETuxDataSetError = class(Exception);

  PRecInfo = ^TRecInfo;
  TRecInfo = record
    Bookmark: Longint;
    BookmarkFlag: TBookmarkFlag;
  end;

type
  tDataFileHeader = record
    GenHeader: array[1..4] of Char;
    VersionNumber: Integer;
    RecordSize: Integer;
    RecordCount: Integer;
    NumberFields: Integer;
    FirstDeleted: Integer;
    LastDeleted: Integer;
    DeletedCount: Integer;
    StartData: Integer;
  end;

type
  pRecordHeader = ^tRecordHeader;
  tRecordHeader = record
    DeletedFlag: Integer;
  end;

type
  TTuxDataSetMode = (txNormal, txDebug);

type
  TBufferType = (txFML, txFML32);

type
  TTuxDataSet = class(TDataSet)
  protected
    FStream: TStream;                 // DataSet 배부 buffer
    FServiceName: string;             // Temporary Table의 Name
    fDataFileHeader: tDataFileHeader;
    // record data
    fRecordHeaderSize: Integer;       // The size of the record header
    FRecordCount,                     // current number of record
    FRecordSize,                      // the size of the actual data
    FRecordBufferSize,                // data + housekeeping (TRecInfo)
    FRecordInfoOffset,                // offset of RecInfo in record buffer
    FCurrentRecord,                   // current record (0 to FRecordCount - 1)
    BofCrack,                         // before the first record (crack)
    EofCrack: Integer;                // after the last record (crack)
    //Parameter
    FParams: TParams;
    // file header size
    FDataFileHeaderSize: Integer;
    // status
    FIsTableOpen: Boolean;
    // field offsets in record
    FFieldOffset: TList;
    //Enhancements
    fBufferType: TBufferType;
    fReadOnly: Boolean;
    fCallMode: TTuxDataSetMode;
    fBuffPath: string;
    fSetBuffer: Boolean;
    fCall: Boolean;
    fEnv: string;
    fTuxSrcFile: String;
//    fOutParams: TStrings;
  protected
    // TDataSet virtual abstract method
    function AllocRecordBuffer: PChar; override;
    procedure FreeRecordBuffer(var Buffer: PChar); override;
    procedure GetBookmarkData(Buffer: PChar;
      Data: Pointer); override;
    function GetBookmarkFlag(Buffer: PChar):
      TBookmarkFlag; override;
    function GetFieldData(Field: TField;
      Buffer: Pointer): Boolean; override;
    function GetRecord(Buffer: PChar; GetMode: TGetMode;
      DoCheck: Boolean): TGetResult; override;
    function GetRecordSize: Word; override;
    procedure InternalAddRecord(Buffer: Pointer;
      Append: Boolean); override;
    procedure InternalClose; override;
    procedure InternalDelete; override;
    procedure InternalFirst; override;
    procedure InternalGotoBookmark(
      Bookmark: Pointer); override;
    procedure InternalHandleException; override;
    procedure InternalInitFieldDefs; override;
    procedure InternalInitRecord(Buffer: PChar); override;
    procedure InternalLast; override;
    procedure InternalOpen; override;
    procedure InternalPost; override;
    procedure InternalSetToRecord(Buffer: PChar); override;
    function IsCursorOpen: Boolean; override;
    procedure SetBookmarkFlag(Buffer: PChar;
      Value: TBookmarkFlag); override;
    procedure SetBookmarkData(Buffer: PChar;
      Data: Pointer); override;
    procedure SetFieldData(Field: TField;
      Buffer: Pointer); override;

    // TDataSet virtual method (optional)
    function GetRecordCount: Integer; override;
    procedure SetRecNo(Value: Integer); override;
    function GetRecNo: Integer; override;
    procedure WriteHeader;
    procedure SetParamsList(Value: TParams);
    procedure fBufferCreate(inSetBuffer: Boolean);
    procedure fSetCall(inCall: Boolean);
    procedure es_TpErrMsg(a: Pointer; b: string);
//    procedure SetOutParams(Value: TStrings);
  private
    procedure _ReadRecord(Buffer: PChar; IntRecNum: Integer);
    procedure _WriteRecord(Buffer: PChar; IntRecNum: Integer);
    procedure _AppendRecord(Buffer: PChar);
    procedure _SwapRecords(Rec1, REc2: Integer);
    function _CompareRecords(SortFields: array of string; Rec1, Rec2: Integer): Integer;
    function GetIP:String;
    procedure fGetFileName (inFileName : string);
  public
    constructor Create(AOwner: tComponent); override;
    procedure CreateTable;
    procedure PackTable;
    procedure SortTable(SortFields: array of string);
    procedure UnsortTable;
    procedure CallTuxSvr;
    procedure SetTuxBuffer;
  published
    property ServiceName: string
      read FServiceName write FServiceName;
    property ReadOnly: Boolean read fReadOnly write fReadonly default False;
    property DataFileHeader: tDataFileHeader read fDataFileHeader;
    // redeclared data set properties
    property Params: TParams read FParams write SetParamsList;
    property CallMode: TTuxDataSetMode read fCallMode write fCallMode;
    property BufferPath: string read fBuffPath write fBuffPath;
    property BufferType: TBufferType read fBufferType write fBufferType;
//    property SetBuffer: Boolean read fSetBuffer write fBufferCreate;
    property Call: Boolean read fCall write fSetCall;
    property Env: string read fEnv write fEnv;
//    property OutParams : TStrings read fOutParams write SetOutParams;
    property txSrcFile: String read fTuxSrcFile write fGetFileName;
    property Active;
    property Filtered;
    property FieldDefs;
    property BeforeOpen;
    property AfterOpen;
    property BeforeClose;
    property AfterClose;
    property BeforeInsert;
    property AfterInsert;
    property BeforeEdit;
    property AfterEdit;
    property BeforePost;
    property AfterPost;
    property BeforeCancel;
    property AfterCancel;
    property BeforeDelete;
    property AfterDelete;
    property BeforeScroll;
    property AfterScroll;
    property OnCalcFields;
    property OnDeleteError;
    property OnEditError;
    property OnFilterRecord;
    property OnNewRecord;
    property OnPostError;
  end;

procedure Register;

implementation

const
  dfhVersionNumber = 13;

type
  PBufArray = ^BufArray;
  BufArray = array[0..0] of Char;

type
  PBDescribField = ^TBDescribField;
  TBDescribField = packed record
    Name: array[0..27] of Char;
    DataType: TFieldType;
    DataSize: Integer;
    Size: Integer;
    Precision: Integer;
  end;

{procedure tTuxDataSet.SetOutParams(Value: TStrings);
begin
  OutParams.Assign(Value);
end;}

procedure tTuxDataSet.fGetFileName(inFileName : String);
var
  F: TextFile;
  S, S1: string;
  tmpParam: TParam;
  i: integer;
  ck_flag : Boolean;
begin
  if fTuxSrcFile = inFileName then exit;

  AssignFile(F, inFileName); { File selected in dialog box }
  FParams.Clear;
  FieldDefs.Clear;
  Reset(F);
  while not System.Eof(F) do
  begin
    Readln(F, S); { Read the first line out of the file }

    if Pos('(TPSVCINFO', S) > 0 then
    begin
       S1 := Trim(Copy(S,1,Pos('(TPSVCINFO', S)-1));
       FServiceName := S1;
    end;
    if Pos('GET (', S) > 0 then
    begin
       S1 := Copy(S,Pos('GET (', S)+5,Length(S));
       S1 := Trim(Copy(S1,0,Pos(',', S1)-1));
       ck_flag := True;
       for i:=0 to FParams.Count-1 do
         if FParams[i].Name = S1 then ck_flag := False;
       if ck_flag then
       begin
          tmpParam := TParam.Create(FParams,ptInput);
          tmpParam.Name := S1;
          tmpParam.ParamType := ptInput;
       end;
    end;
    if Pos('PUT (', S) > 0 then
    begin
       S1 := Copy(S,Pos('PUT (', S)+5,Length(S));
       S1 := Trim(Copy(S1,0,Pos(',', S1)-1));
       try
         FieldDefs.Add(S1, ftString, 20, False);
       except
       end;
    end;
  end;
  CloseFile(F);
  fTuxSrcFile := inFileName;

end;

function tTuxDataSet.GetIP:String;
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

procedure tTuxDataSet.fBufferCreate(inSetBuffer: Boolean);
begin
  if inSetBuffer then
    CreateTable;

  fSetBuffer := inSetBuffer;
end;

procedure tTuxDataSet.fSetCall(inCall: Boolean);
var
  tpinfop: pTPINIT;
  EnvFile, EnvGrp, UserStr, CltStr: string;
begin
  if(inCall <> fCall)and(inCall)then
  begin
   //  Set TUXEDO's env.
    EnvFile := Copy(fEnv, 1, Pos(';', fEnv) - 1);
    EnvGrp := Copy(fEnv, Pos(';', fEnv) + 1, Length(fEnv) - Pos(';', fEnv));
    if tuxreadenv(pChar(EnvFile), pChar(EnvGrp)) = -1 then
    begin
      ShowMessage('tuxreadenv failed');
      exit;
    end;

    tpinfop := tpalloc('TPINIT', nil, TPInitSize);
    if tpinfop = nil then
    begin
      ShowMessage('tpalloc for tpinit failed, ' + StrPas(tpstrerror(gettperrno)));
      exit;
    end;

    if ParamCount > 2 then
       UserStr := ParamStr(1) + ParamStr(2);

    // Client IP Address
    CltStr := GetIP;

//     strcopy(tpinfop^.usrname, 'tuxdts');
//     strcopy(tpinfop^.cltname, 'tuxdts');

     StrCopy(tpinfop.usrname,PChar(UserStr));
     StrCopy(tpinfop.cltname,PChar(CltStr));    // Client IP Address
     tpinfop.flags   := TPU_DIP;                // initialization flags
     tpinfop.data    := 0;                      // length of app specific data
     tpinfop.datalen := 0;                      // placeholder for app data
    if tpinit(tpinfop) = -1 then
    begin
      ShowMessage('tpinit failed, ' + StrPas(tpstrerror(gettperrno)));
      tpfree(tpinfop);
      exit;
    end;
    tpfree(tpinfop);

    CallTuxSvr;

    tpterm();
  end;

  if not inCall then
     Active := False;

  fCall := inCall;
end;

procedure tTuxDataSet.SetParamsList(Value: TParams);
begin
  FParams.AssignValues(Value);
end;

procedure tTuxDataSet.SetTuxBuffer;
begin
  CreateTable;
end;

procedure tTuxDataSet.CallTuxSvr;
var
  transf: Pointer; // for TUXEDO FML buffer
  len: LongInt;
  i, j, occu: integer;
  goNext: Boolean;
//홍석 수정
  UserStr : String;
  CltStr  : String;
  FormStr : String;
//홍석 수정
begin
  CreateTable;
  if not Active then Active := True;

  goNext := True;
  if fBufferType = txFML then
     transf := tpalloc('FML', nil, FBufferSize )
  else
     transf := tpalloc('FML32', nil, FBufferSize32 );

  if transf = nil then
  begin
    ShowMessage('tpalloc failed, ' + StrPas(tpstrerror(gettperrno)));
    exit;
  end;

  if fCallMode = txDebug then
    showmessage('FParams.Count->' + IntToStr(FParams.Count));

  for i := 0 to FParams.Count - 1 do
  begin
    if (fCallMode = txDebug) and goNext then
      if MessageDlg('param' + IntToStr(i + 1) + '->' + FParams.Items[i].Text,
        mtConfirmation, [mbYes, mbNo], 0) = mrNo then goNext := False;

    if fBufferType = txFML then
    begin
     if (UserStr = '') then
        UserStr := ParamStr(1) + ParamStr(2);
     if (CltStr = '') then
        CltStr := paramStr(3);

     if (Screen.ActiveForm = nil) then
        FormStr := Application.MainForm.Name
     else
        FormStr := Screen.ActiveForm.Name;
//홍석 수정
       {Logging을 위해 TxGetF, TxPutF에 UserID, IP Address, ActiveForm Name 추가}
       FChg(transf,Fldid(pChar('LOG_USERNAME')), 0, pChar(UserStr),0);
       FChg(transf,Fldid(pChar('LOG_CLTNAME')),  0, pChar(CltStr),0);
       FChg(transf,Fldid(pChar('LOG_FORMNAME')), 0, pChar(FormStr),0);
//홍석 수정
       if Fchg(transf, Fldid(pChar(FParams.Items[i].Name)), 0, PChar(FParams.Items[i].Text), 0) = -1 then
       begin
         ShowMessage('Fchg failed, ' + StrPas(Fstrerror(getFerror)) + chr(13)
                       + '''' +FParams.Items[i].Name + '''');
         tpfree(transf);
       end;
    end
    else
    begin
//홍석 수정
       {Logging을 위해 TxGetF, TxPutF에 UserID, IP Address, ActiveForm Name 추가}
       FChg32(transf,Fldid32(pChar('LOG_USERNAME')), 0, pChar(UserStr),0);
       FChg32(transf,Fldid32(pChar('LOG_CLTNAME')),  0, pChar(CltStr),0);
       FChg32(transf,Fldid32(pChar('LOG_FORMNAME')), 0, pChar(FormStr),0);
//홍석 수정
       if Fchg32(transf, Fldid32(pChar(FParams.Items[i].Name)), 0, PChar(FParams.Items[i].Text), 0) = -1 then
       begin
         ShowMessage('Fchg32 failed, ' + StrPas(Fstrerror(getFerror)) + chr(13)
                       + '''' +FParams.Items[i].Name + '''');
         tpfree(transf);
       end;
    end;
  end;

  if tpcall(pChar(FServiceName), transf, 0, @transf, @len, 0) = -1 then
  begin
    es_TpErrMsg(transf, FServiceName);
    tpfree(transf);
    exit;
  end;


  if FieldCount > 0 then
  begin
    if fBufferType = txFML then
       occu := Foccur(transf, Fldid(pChar(FieldDefs[0].Name)))
    else
       occu := Foccur32(transf, Fldid32(pChar(FieldDefs[0].Name)));
    if fCallMode = txDebug then
    begin
      showmessage('gettpurcode->' + IntToStr(gettpurcode));
      showmessage('occu->' + IntToStr(occu));
      if fBufferType = txFML then
         showmessage('Fldid:FLD' + IntToStr(FParams.Count + 1) + '->' + IntToStr(Fldid(pChar(FieldDefs[0].Name))))
      else
         showmessage('Fldid32:FLD' + IntToStr(FParams.Count + 1) + '->' + IntToStr(Fldid32(pChar(FieldDefs[0].Name))));
    end;
//   for i:=0 to gettpurcode-1 do
    for i := 0 to occu - 1 do
    begin
      Append;
      for j := 0 to FieldCount - 1 do
      begin
        if fBufferType = txFML then
           Fields.Fields[j].AsString := StrPas(Fvals(transf, Fldid(pChar(FieldDefs[j].Name)), i))
        else
           Fields.Fields[j].AsString := StrPas(Fvals32(transf, Fldid32(pChar(FieldDefs[j].Name)), i));
      end;
    end;
    if (State = dsInsert) or (State = dsEdit) then Post;
  end;

  tpfree(transf);

end;

procedure tTuxDataSet.es_TpErrMsg(a: Pointer; b: string);
begin
  if gettperrno <> TPESVCFAIL then
    ShowMessage('tpcall 오류발생' + chr(10)
      + '다음 내용을 전산담당자에게 통보하세요!' + chr(10)
      + '서비스명: ' + b + chr(10)
      + '오류내용: ' + StrPas(tpstrerror(gettperrno)))
  else if fBufferType = txFML then
    ShowMessage('tpcall 오류발생' + chr(10)
      + '다음 내용을 전산담당자에게 통보하세요!' + chr(10)
      + '서비스명: ' + b + chr(10)
      + '오류내용: ' + StrPas(Fvals(a, Fldid('STATLIN'), 0)))
  else
    ShowMessage('tpcall 오류발생' + chr(10)
      + '다음 내용을 전산담당자에게 통보하세요!' + chr(10)
      + '서비스명: ' + b + chr(10)
      + '오류내용: ' + StrPas(Fvals32(a, Fldid32('STATLIN'), 0)));
end;

// ****************************************************************************
// Low Level Routines for accessing an internal record

// ____________________________________________________________________________
// tTuxDataSet._ReadRecord

procedure tTuxDataSet._ReadRecord(Buffer: PChar; IntRecNum: Integer);
  {-Read a record based on the internal record number (absolute)}
begin
  FStream.Position := FDataFileHeader.StartData + (FRecordSize * IntRecNum);
  FStream.ReadBuffer(Buffer^, FRecordSize);
end;

// ____________________________________________________________________________
// tTuxDataSet._WriteRecord

procedure tTuxDataSet._WriteRecord(Buffer: PChar; IntRecNum: Integer);
  {-Write a record based on the internal record number (absolute)}
begin
  FStream.Position := FDataFileHeader.StartData + (FRecordSize * IntRecNum);
  FStream.WriteBuffer(Buffer^, FRecordSize);
end;

// ____________________________________________________________________________
// tTuxDataSet._AppendRecord

procedure tTuxDataSet._AppendRecord(Buffer: PChar);
begin
  FStream.Seek(0, soFromEnd);
  FStream.WriteBuffer(Buffer^, FRecordSize);
end;

/////////////////////////////////////////////////
////// Part I:
////// Initialization, opening, and closing
/////////////////////////////////////////////////

// ____________________________________________________________________________
// tTuxDataSet.InternalOpen
// I: open the table/file

procedure tTuxDataSet.InternalOpen;
begin
  // check if the file exists
  if not FileExists(fBuffPath + FServiceName) then
    raise eTuxDataSetError.Create('Open: Service Buffer file not found');

  // create a stream for the file
  if fReadOnly then
    fStream := tFileStream.Create(fBuffPath + fServiceName, fmOpenRead + fmShareDenyWrite)
  else
    FStream := TFileStream.Create(fBuffPath + FServiceName, fmOpenReadWrite + fmShareExclusive);
  fStream.ReadBuffer(fDataFileHeader, FDataFileHeaderSize);
  if fDataFileHeader.GenHeader <> 'BDS' + ^Z then
    raise ETuxDataSetError.Create('Not a binary data set file.');
  if fDataFileHeader.VersionNumber <> dfhVersionNumber then
    raise ETuxDataSetError.Create('Invalid data file version.');

  // initialize the field definitions
  // (another virtual abstract method of TDataSet)
  InternalInitFieldDefs;

  // if there are no persistent field objects,
  // create the fields dynamically
  if DefaultFields then
    CreateFields;
  // connect the TField objects with the actual fields
  BindFields(True);

  // get the number of records and check size
  fRecordCount := fDataFileHeader.RecordCount;
  if (fRecordCount > 0) and
    (fDataFileHeader.RecordSize <> fRecordSize) then
    raise eTuxDataSetError.Create('Internal open: File record size mismatch.');

  if (fDataFileHeader.StartData + (fRecordCount + fDataFileHeader.DeletedCount) * fRecordSize) <> fStream.Size then
    raise eTuxDataSetError.Create('Internal open: Invalid record size.' + ^M +
      'StartData   : ' + IntToSTr(fDataFileHeader.StartData) + ^M +
      'fRecordCount: ' + IntToStr(fRecordCount) + ^M +
      'fRecordSize : ' + IntToStr(fRecordSize) + ^M +
      'fStream.SIze: ' + IntToStr(fStream.Size));

  // sets cracks and record position
  BofCrack := -1;
  EofCrack := FRecordCount;
  FCurrentRecord := BofCrack;

  FRecordInfoOffset := FRecordSize;
  FRecordBufferSize := FRecordSize + sizeof(TRecInfo);

  // set the bookmark size
  BookmarkSize := sizeOf(Integer);

  // everything OK: table is now open
  FIsTableOpen := True;

  // ShowMessage ('InternalOpen: RecCount: ' + IntToStr (FRecordCount));
end;

// ____________________________________________________________________________
// tTuxDataSet.InternalInitFieldDefs
// I: define the fields

procedure tTuxDataSet.InternalInitFieldDefs;
var
  Il: Integer;
  DescribF: TBDescribField;
  TmpFieldOffset: Integer;
  IX: Integer;
begin
  FFieldOffset := TList.Create;
  FieldDefs.Clear;
{  try
    for IX := FieldDefs.Count - 1 downto 0 do
      if Assigned(FieldDefs.Items[IX]) then
        FieldDefs.Items[IX].Free;
  except
    // GPF HERE!
    //  FieldDefs.Clear -GENERATES A GPF!
  end;
}
  FStream.Seek(fDataFileHeaderSize, soFromBeginning);
  Assert(fDataFileHeader.NumberFields > 0, 'Invalid number of fields.');

  TmpFieldOffset := fRecordHeaderSize;
  if (fDataFileHeader.NumberFields > 0) then
  begin
    for Il := 0 to fDataFileHeader.NumberFields - 1 do
    begin
      FStream.Read(DescribF, SizeOf(DescribF));
      TFieldDef.Create(FieldDefs, DescribF.Name, DescribF.DataType,
        DescribF.Size, False, Il + 1);
      FFieldOffset.Add(Pointer(TmpFieldOffset));
      Inc(tmpFieldOffset, DescribF.DataSize);
    end;
    fRecordSize := tmpFieldOffset;
  end;
end;

// ____________________________________________________________________________
// tTuxDataSet.InternalClose
// I: close the table/file

procedure tTuxDataSet.InternalClose;
begin
  // if required, save updated header
  if (fDataFileHeader.RecordCount <> fRecordCount) or
    (fDataFileHeader.RecordSize = 0) then
  begin
    fDataFileHeader.RecordSize := fRecordSize;
    fDataFileHeader.RecordCount := fRecordCount;
    WriteHeader;
  end;
  // free the internal list field offsets
  if Assigned(FFieldOffset) then
    FFieldOffset.Free;

  // disconnet field objects
  BindFields(False);
  // destroy field object (if not persistent)
  if DefaultFields then
    DestroyFields;

  // close the file
  FIsTableOpen := False;
  FStream.Free;
end;

// ____________________________________________________________________________
// tTuxDataSet.IsCursorOpen
// I: is table open

function tTuxDataSet.IsCursorOpen: Boolean;
begin
  Result := FIsTableOpen;
end;

// ____________________________________________________________________________
// tTuxDataSet.WriteHeader

procedure tTuxDataSet.WriteHeader;
begin
  Assert(FStream <> nil, 'fStream=Nil');
  FSTream.Seek(0, soFromBeginning);
  FStream.WriteBuffer(fDataFileHeader, fDataFileHeaderSize);
end;

// ____________________________________________________________________________
// tTuxDataSet.Create

constructor tTuxDataSet.Create(AOwner: tComponent);
begin
  inherited create(aOwner);
  fDataFileHeaderSize := SizeOf(tDataFileHeader);
  fRecordHeaderSize := SizeOf(tRecordHeader);
  FParams := TParams.Create(Self);
//  fOutParams := TStrings.Create;
  fBuffPath := '../tmp/';
end;

// ____________________________________________________________________________
// tTuxDataSet.CreateTable
// I: Create a new table/file

procedure tTuxDataSet.CreateTable;
var
  Ix: Integer;
  DescribF: TBDescribField;
  Offs: Integer;
begin
  CheckInactive;
  //  InternalInitFieldDefs;
  // create the new file
{  if FileExists (FServiceName) and
    (MessageDlg ('File ' + FServiceName +
      ' already exists. OK to override?',
      mtConfirmation, [mbYes, mbNo], 0) = mrNo) then
    Exit;
}
  if FieldDefs.Count = 0 then
  begin
    for Ix := 0 to FieldCount - 1 do
    begin
      with Fields[Ix] do
      begin
        if FieldKind = fkData then
          FieldDefs.Add(FieldName, DataType, Size, Required);
      end;
    end;
  end;
  FStream := TFileStream.Create(fBuffPath + FServiceName,
    fmCreate or fmShareExclusive);
  try
    FillChar(fDataFileHeader, fDataFileHeaderSize, 0);
    fDataFileHeader.GenHeader := 'BDS' + ^Z;
    fDataFileHeader.VersionNumber := dfhVersionNumber;
    fDataFileHeader.RecordSize := 0; // filled later
    fDataFileheader.RecordCount := 0; // empty
    fDataFileHeader.NumberFields := FieldDefs.Count;
    fDataFileHeader.LastDeleted := -1;
    fDataFileHeader.FirstDeleted := -1;
    fDataFileHeader.DeletedCount := 0;
    fDataFileHeader.StartData := -1;
    WriteHeader;
    Offs := fRecordHeaderSize;
    for Ix := 0 to FieldDefs.Count - 1 do
    begin
      with FieldDefs.Items[Ix] do
      begin
        FillChar(DescribF, SizeOf(DescribF), #0);
        DescribF.DataType := DataType;
        StrCopy(DescribF.Name, PChar(FieldDefs.Items[Ix].Name));
        DescribF.Size := Size;
        DescribF.Precision := Precision;
        case DataType of
          ftString:
            DescribF.DataSize := Size + SizeOf(INteger);
          ftBoolean, ftSmallInt, ftWord:
            DescribF.DataSize := 2;
          ftInteger, ftDate, ftTime:
            DescribF.DataSize := 4;
          ftFloat, ftCurrency, ftDateTime:
              //DescribF.DataSize:= Fields[Ix].DataSize; //8;
            DescribF.DataSize := 8;
        else
          raise ETuxDataSetError.Create(
            'InitFieldsDefs: Unsupported field type');
        end;
        Inc(Offs, DescribF.DataSIze);
          //INC(fDataFileHeader.NumberFields);
        FStream.Write(DescribF, SizeOf(DescribF));
      end;
    end;
    fDataFileHeader.StartData := FStream.Position;
    fDataFileHeader.RecordSize := Offs;
    FRecordSize := Offs;
    WriteHeader;
  finally
    // close the file
    fStream.Free;
  end;
end;

// ____________________________________________________________________________
// tTuxDataSet.PackTable
//Enhancement: Remove all deleted items from the table.

procedure tTuxDataSet.PackTable;
var
  NewStream, OldStream: tStream;
  PC: PChar;
  Ix: Integer;
  DescribF: TBDescribField;
  NewDataFileHeader: tDataFileHeader;
  DataBuffer: Pointer;
  FullServiceName: string;
begin
  OldStream := nil;
  NewStream := nil;
  CheckInactive;
//  if Active then
//    raise eTuxDataSetError.Create ('Dataset must be closed before packing.');
  if fServiceName = '' then
    raise ETuxDataSetError.Create('Table name not specified.');
  if not FileExists(fBuffPath + FServiceName) then
    raise ETuxDataSetError.Create('Buffer Table ' + fServiceName + ' does not exist.');

  FullServiceName := fBuffPath + FServiceName;
  PC := @FullServiceName[1];
  CopyFile(PChar(PC), PChar(PC + ',old' + #0), False);
  // create the new file
  if FieldDefs.Count = 0 then
  begin
    for Ix := 0 to FieldCount - 1 do
    begin
      with Fields[Ix] do
      begin
        if FieldKind = fkData then
          FieldDefs.Add(FieldName, DataType, Size, Required);
      end;
    end;
  end;
  try
    NewStream := TFileStream.Create(fBuffPath + FServiceName + ',new',
      fmCreate or fmShareExclusive);
    OldStream := tFileStream.Create(fBuffPath + fServiceName + ',old',
      fmOpenRead or fmShareExclusive);
    OldStream.ReadBuffer(NewDataFileHeader, fDataFileHeaderSize);
    NewDataFileHeader.DeletedCount := 0;
    NewDataFileHeader.LastDeleted := -1;
    NewDataFileHeader.FirstDeleted := -1;
    NewStream.WriteBuffer(NewDataFileHeader, fDataFileHeaderSize);
    for IX := 0 to NewDataFileHeader.NumberFields - 1 do
    begin
      OldStream.Read(DescribF, SizeOf(DescribF));
      NewStream.Write(DescribF, SizeOf(DescribF));
    end;
    GetMem(DataBuffer, NewDataFileHeader.RecordSize);
    repeat
      IX := OldStream.Read(DataBuffer^, NewDataFileHeader.RecordSize);
      if (IX = NewDataFileHeader.REcordSize) and (pRecordHeader(DataBuffer)^.DeletedFlag = 0) then
        NewStream.WRite(DataBuffer^, NewDataFileHeader.RecordSize);
    until IX <> NewDataFileHeader.RecordSize;
    FreeMem(DataBuffer, NewDataFileHeader.RecordSize);
  finally
    // close the file
    NewStream.Free;
    OldStream.Free;
  end;
  CopyFile(PChar(PC + ',new' + #0), PChar(PC), False);
  DeleteFile(Pchar(PC + ',new' + #0));
  DeleteFile(Pchar(PC + ',old' + #0));
end;

// ____________________________________________________________________________
// tTuxDataSet._SwapRecords
// Enhancement: Quick swap of two records.  Used primarily for sorting.

procedure tTuxDataSet._SwapRecords(Rec1, REc2: Integer);
var
  Buffer1, Buffer2: PChar;
  Bookmark1, BOokmark2: TBookmarkFlag;
begin
  Rec1 := Rec1 - 1;
  Rec2 := Rec2 - 1;
  if Rec1 < 0 then Exit;
  if Rec2 < 0 then Exit;
  Buffer1 := AllocRecordBuffer;
  Buffer2 := AllocRecordBuffer;
  _ReadRecord(Buffer1, Rec1);
  _ReadRecord(Buffer2, Rec2);
  Bookmark1 := GetBookmarkFlag(Buffer1);
  Bookmark2 := GetBookmarkFlag(Buffer2);
  SetBookmarkFlag(Buffer1, Bookmark2);
  SetBookmarkFlag(Buffer2, Bookmark1);
  _WriteRecord(Buffer1, Rec2);
  _WriteRecord(Buffer2, Rec1);
  StrDispose(Buffer1);
  StrDispose(Buffer2);
end;

// ____________________________________________________________________________
// tTuxDataSet._CompareRecords
// Compare two records.  Returns -1 if REC1 < REC2, 0 if REC1 = REC2, or
// 1 if REC1 > REC2.

function tTuxDataSet._CompareRecords(SortFields: array of string; Rec1, Rec2: Integer): Integer; far;
{-Compare the records Rec1, Rec2 and return -1 if Rec1 < Rec2, 0 if Rec1 = Rec2,
  1 if Rec1 > Rec2 }
var
  IX: Integer;

  function CompareHelper(KeyId: string; Rec1, Rec2: Integer): Integer;
  var
    SKey1, SKey2: string;
    IKey1, IKey2: Integer;
    fKey1, fKey2: Double;
    dKey1, dKey2: tDateTime;
    CompareType: tFieldType;
    KeyField: tField;
  begin
    KeyField := FieldByName(KeyID);
    CompareType := KeyField.DataType;
    case CompareType of
      ftFloat,
        ftCurrency,
        ftBCD:
        begin
          _ReadRecord(ActiveBuffer, Rec1 - 1);
          fKey1 := KeyField.AsFloat;
          _ReadRecord(ActiveBuffer, Rec2 - 1);
          fKey2 := KeyField.AsFloat;
          if fKey1 < fKey2 then
            Result := -1
          else
            if fKey1 > fKey2 then
              Result := 1
            else
              Result := 0;
        end;
      ftSmallInt,
        ftInteger,
        ftWord:
        begin
          _ReadRecord(ActiveBuffer, Rec1 - 1);
          IKey1 := KeyField.AsInteger;
          _ReadRecord(ActiveBuffer, Rec2 - 1);
          IKey2 := KeyField.AsInteger;
          if IKey1 < IKey2 then
            Result := -1
          else
            if IKey1 > IKey2 then
              Result := 1
            else
              Result := 0;
        end;
      ftDate,
        ftTime,
        ftDateTime:
        begin
          _ReadRecord(ActiveBuffer, Rec1 - 1);
          dKey1 := KeyField.AsDateTime;
          _ReadRecord(ActiveBuffer, Rec2 - 1);
          dKey2 := KeyField.AsDateTime;
          if dKey1 < dKey2 then
            Result := -1
          else
            if dKey1 > dKey2 then
              Result := 1
            else
              Result := 0;
        end;
    else
      begin
        _ReadRecord(ActiveBuffer, Rec1 - 1);
        SKey1 := KeyField.AsString;
        _ReadRecord(ActiveBuffer, Rec2 - 1);
        SKey2 := KeyField.AsString;
        if SKey1 < SKey2 then
          Result := -1
        else
          if SKey1 > SKey2 then
            Result := 1
          else
            Result := 0;
      end;
    end;
  end;

begin
  IX := 0;
  repeat // Loop through all available sortfields until not equal or no more sort fiels.
    Result := CompareHelper(SortFields[IX], Rec1, Rec2);
    Inc(IX);
  until (Result <> 0) or (IX > High(SortFields));
end;


// ____________________________________________________________________________
// tTuxDataSet.SortTable
// Enhancement: Sort the table by the fields passed.

procedure tTuxDataSet.SortTable(SortFields: array of string);

  { This is the main sorting routine. It is passed the number of elements and the
    two callback routines. The first routine is the function that will perform
    the comparison between two elements. The second routine is the procedure that
    will swap two elements if necessary }// Source: UNDU #8

  procedure QSort(uNElem: Integer);
  { uNElem - number of elements to sort }

    procedure qSortHelp(pivotP: Integer; nElem: word);
    label
      TailRecursion,
        qBreak;
    var
      leftP, rightP, pivotEnd, pivotTemp, leftTemp: word;
      lNum: Integer;
      retval: integer;
    begin
      TailRecursion:
        if (nElem <= 2) then
      begin
        if (nElem = 2) then

        begin
          rightP := pivotP + 1;
          if (_CompareRecords(SortFields, pivotP, rightP) > 0) then
            _SwapRecords(pivotP, rightP);
        end;
        exit;
      end;
      rightP := (nElem - 1) + pivotP;
      leftP := (nElem shr 1) + pivotP;
        { sort pivot, left, and right elements for "median of 3" }
      if (_CompareRecords(SortFields, leftP, rightP) > 0) then _SwapRecords(leftP, rightP);
      if (_CompareRecords(SortFields, leftP, pivotP) > 0) then _SwapRecords(leftP, pivotP)

      else if (_CompareRecords(SortFields, pivotP, rightP) > 0) then _SwapRecords(pivotP, rightP);
      if (nElem = 3) then
      begin
        _SwapRecords(pivotP, leftP);
        exit;
      end;
        { now for the classic Horae algorithm }
      pivotEnd := pivotP + 1;
      leftP := pivotEnd;
      repeat
        retval := _CompareRecords(SortFields, leftP, pivotP);
        while (retval <= 0) do
        begin
          if (retval = 0) then
          begin
            _SwapRecords(LeftP, PivotEnd);
            Inc(PivotEnd);
          end;
          if (leftP < rightP) then
            Inc(leftP)
          else
            goto qBreak;
          retval := _CompareRecords(SortFields, leftP, pivotP);
        end; {while}
        while (leftP < rightP) do
        begin

          retval := _CompareRecords(SortFields, pivotP, rightP);
          if (retval < 0) then
            Dec(rightP)
          else
          begin
            _SwapRecords(leftP, rightP);
            if (retval <> 0) then
            begin
              Inc(leftP);
              Dec(rightP);
            end;
            break;
          end;
        end; {while}

      until (leftP >= rightP);
      qBreak:
        if (_CompareRecords(SortFields, leftP, pivotP) <= 0) then Inc(leftP);
      leftTemp := leftP - 1;
      pivotTemp := pivotP;
      while ((pivotTemp < pivotEnd) and (leftTemp >= pivotEnd)) do
      begin
        _SwapRecords(pivotTemp, leftTemp);
        Inc(pivotTemp);
        Dec(leftTemp);
      end; {while}
      lNum := (leftP - pivotEnd);
      nElem := ((nElem + pivotP) - leftP);

      if (nElem < lNum) then
      begin
        qSortHelp(leftP, nElem);
        nElem := lNum;
      end
      else
      begin
        qSortHelp(pivotP, lNum);
        pivotP := leftP;
      end;
      goto TailRecursion;
    end; {qSortHelp }

  begin
    if (uNElem < 2) then exit; { nothing to sort }
    qSortHelp(1, uNElem);
  end; { QSort }


begin
  CheckActive;
  if fReadOnly then
    raise eTuxDataSetError.Create('Dataset must be opened for read/write to perform sort.');
//  if fDataFileHeader.DeletedCount > 0 then
//    BEGIN
//      Close;
//      PackTable;
//      Open;
//    END;
  QSort(FRecordCount + fDataFileHeader.DeletedCount);
  First;
end;

// ____________________________________________________________________________
// tTuxDataSet.UnsortTable
// Used to help test the sort routine.  Attempts to generate a random
// dispersment of the records in the dataset.

procedure tTuxDataSet.UnsortTable;
var
  IX: Integer;
begin
  First;
  Randomize;
  for IX := 0 to RecordCOunt do
  begin
    _SwapRecords(IX, Random(RecordCount + 1));
  end;
  First;
end;

////////////////////////////////////////
////// Part II:
////// Bookmarks management and movement
////////////////////////////////////////

// ____________________________________________________________________________
// tTuxDataSet.InternalGotoBookmark
// II: set the requested bookmark as current record

procedure tTuxDataSet.InternalGotoBookmark(Bookmark: Pointer);
var
  ReqBookmark: Integer;
begin
  ReqBookmark := PInteger(Bookmark)^;
//  ShowMessage ('InternalGotoBookmark: ' +
//    IntToStr (ReqBookmark));
  if (ReqBookmark >= 0) and (ReqBookmark < FRecordCount + fDataFileHeader.DeletedCount) then
    FCurrentRecord := ReqBookmark
  else
    raise eTuxDataSetError.Create('Bookmark ' +
      IntToStr(ReqBookmark) + ' not found');
end;

// ____________________________________________________________________________
// tTuxDataSet.InternalSetToRecord
// II: same as above (but passes a buffer)

procedure tTuxDataSet.InternalSetToRecord(Buffer: PChar);
var
  ReqBookmark: Integer;
begin
//  ShowMessage ('InternalSetToRecord');
  ReqBookmark := PRecInfo(Buffer + FRecordInfoOffset).Bookmark;
  InternalGotoBookmark(@ReqBookmark);
end;

// ____________________________________________________________________________
// tTuxDataSet.GetBookmarkFlag
// II: retrieve bookmarks flags from buffer

function tTuxDataSet.GetBookmarkFlag(
  Buffer: PChar): TBookmarkFlag;
begin
//  ShowMessage ('GetBookmarkFlag');
  Result := PRecInfo(Buffer + FRecordInfoOffset).BookmarkFlag;
end;

// ____________________________________________________________________________
// tTuxDataSet.SetBookmarkFlag
// II: change the bookmark flags in the buffer

procedure tTuxDataSet.SetBookmarkFlag(Buffer: PChar;
  Value: TBookmarkFlag);
begin
//  ShowMessage ('SetBookmarkFlag');
  PRecInfo(Buffer + FRecordInfoOffset).BookmarkFlag := Value;
end;

// ____________________________________________________________________________
// tTuxDataSet.GetBookmarkData
// II: read the bookmark data from record buffer

procedure tTuxDataSet.GetBookmarkData(
  Buffer: PChar; Data: Pointer);
begin
//  ShowMessage ('GetBookmarkData: ' + IntToStr (PRecInfo(Buffer + FRecordInfoOffset).Bookmark));
  PInteger(Data)^ :=
    PRecInfo(Buffer + FRecordInfoOffset).Bookmark;
end;

// ____________________________________________________________________________
// tTuxDataSet.SetBookmarkData
// II: set the bookmark data in the buffer

procedure tTuxDataSet.SetBookmarkData(
  Buffer: PChar; Data: Pointer);
begin
//  ShowMessage ('SetBookmarkData: ' + IntToStr (PInteger(Data)^));
  PRecInfo(Buffer + FRecordInfoOffset).Bookmark :=
    PInteger(Data)^;
end;

// ____________________________________________________________________________
// tTuxDataSet.InternalFirst
// II: Go to a special position before the first record

procedure tTuxDataSet.InternalFirst;
begin
  FCurrentRecord := BofCrack;
end;

// ____________________________________________________________________________
// tTuxDataSet.InternalLast
// II: Go to a special position after the last record

procedure tTuxDataSet.InternalLast;
begin
  EofCrack := FRecordCount + fDataFileHeader.DeletedCount;
  FCurrentRecord := EofCrack;
end;

// ____________________________________________________________________________
// tTuxDataSet.GetRecordCount
// II (optional): Record count

function tTuxDataSet.GetRecordCount: Longint;
begin
  CheckActive;
  Result := FRecordCount;
end;

// ____________________________________________________________________________
// tTuxDataSet.GetRecNo
// II (optional): Get the number of the current record

function tTuxDataSet.GetRecNo: Longint;
begin
  UpdateCursorPos;
  if FCurrentRecord < 0 then
    Result := 1
  else
    Result := FCurrentRecord + 1;
end;

// ____________________________________________________________________________
// tTuxDataSet.SetRecNo
// II (optional): Move to the given record number

procedure tTuxDataSet.SetRecNo(Value: Integer);
begin
  CheckBrowseMode;
  if (Value > 1) and (Value <= FRecordCount) then
  begin
    FCurrentRecord := Value - 1;
    Resync([]);
  end;
end;

//////////////////////////////////////////
////// Part III:
////// Record buffers and field management
//////////////////////////////////////////

// ____________________________________________________________________________
// tTuxDataSet.GetRecordSize
/// III: Determine the size of each record buffer in memory

function tTuxDataSet.GetRecordSize: Word;
begin
  Result := FRecordSize; // data only
end;

// ____________________________________________________________________________
// tTuxDataSet.AllocRecordBuffer
/// III: Allocate a buffer for the record

function tTuxDataSet.AllocRecordBuffer: PChar;
begin
  Result := StrAlloc(FRecordBufferSize);
end;

// ____________________________________________________________________________
// tTuxDataSet.InternalInitRecord
// III: Initialize the record (set to zero)

procedure tTuxDataSet.InternalInitRecord(Buffer: PChar);
begin
  FillChar(Buffer^, FRecordBufferSize, 0);
end;

// ____________________________________________________________________________
// tTuxDataSet.FreeRecordBuffer
// III: Free the buffer

procedure tTuxDataSet.FreeRecordBuffer(var Buffer: PChar);
begin
  StrDispose(Buffer);
end;

// ____________________________________________________________________________
// tTuxDataSet.GetRecord
// III: Retrieve data for current, previous, or next record
// (eventually moving to it) and return the status

function tTuxDataSet.GetRecord(Buffer: PChar;
  GetMode: TGetMode; DoCheck: Boolean): TGetResult;
var
  Acceptable: Boolean;
begin
  result := grOk;
  Acceptable := False;
  if FRecordCount < 1 then
    Result := grEOF
  else
    repeat
      begin
        case GetMode of
          gmCurrent:
            begin
            // ShowMessage ('GetRecord Current');
              if (FCurrentRecord >= FRecordCount + fDataFileHeader.DeletedCount) or
                (FCurrentRecord < 0) then
                Result := grError;
            end;
          gmNext:
            begin
              if (fCurrentRecord < (fRecordCount + fDataFileHeader.DeletedCount) - 1) then
                Inc(FCurrentRecord)
              else
                Result := grEOF;
            end;
          gmPrior:
            begin
              if (fCurrentRecord > 0) then
                Dec(fCurrentRecord)
              else
                Result := grBOF;
            end;
        end;
      // fill record data area of buffer
        if Result = grOK then
        begin
          _ReadRecord(Buffer, fCurrentRecord);
        {FStream.Position := FDataFileHeader.StartData +
          FRecordSize * FCurrentRecord;
        FStream.ReadBuffer (Buffer^, FRecordSize);}
          ClearCalcFields(Buffer);
          GetCalcFields(Buffer);
          with PRecInfo(Buffer + FRecordInfoOffset)^ do
          begin
            BookmarkFlag := bfCurrent;
            Bookmark := FCurrentRecord;
          end;
        end
        else
          if (Result = grError) and DoCheck then
            raise eTuxDataSetError.Create(
              'GetRecord: Invalid record');
        Acceptable := pRecordHeader(Buffer)^.DeletedFlag = 0;
        if (GetMode = gmCurrent) and not Acceptable then Result := grError;
      end;
    until (Result <> grOK) or Acceptable;
end;

// ____________________________________________________________________________
// tTuxDataSet.InternalPost
// III: Write the current data to the file

procedure tTuxDataSet.InternalPost;
begin
  CheckActive;
  if State = dsEdit then
  begin
    // replace data with new data
    {FStream.Position := FDataFileHeader.StartData + (FRecordSize * FCurrentRecord);
    FStream.WriteBuffer (ActiveBuffer^, FRecordSize);}
    _WriteRecord(ActiveBuffer, fCurrentRecord);
  end
  else
  begin
    // always append
    InternalLast;
    {FStream.Seek (0, soFromEnd);
    FStream.WriteBuffer (ActiveBuffer^, FRecordSize);}
    _AppendRecord(ActiveBuffer);
    Inc(FRecordCount);
  end;
end;

// ____________________________________________________________________________
// tTuxDataSet.InternalAddRecord
// III: Add the current data to the file

procedure tTuxDataSet.InternalAddRecord(
  Buffer: Pointer; Append: Boolean);
begin
  // always append
  InternalLast;
  // add record at the end of the file
  {FStream.Seek (0, soFromEnd);}
  pRecordHeader(ActiveBuffer)^.DeletedFlag := 0;
  _AppendRecord(ActiveBuffer);
  {FStream.WriteBuffer (ActiveBuffer^, FRecordSize);}
  Inc(FRecordCount);
end;

// ____________________________________________________________________________
// tTuxDataSet.InternalDelete
// III: Delete the current record

procedure tTuxDataSet.InternalDelete;
begin
  CheckActive;
  // not supported in this version
{  raise eTuxDataSetError.Create (
    'Delete: Operation not supported');}
  pRecordHeader(ActiveBuffer)^.DeletedFlag := fDataFileHeader.LastDeleted;
  _WriteRecord(ActiveBuffer, fCurrentRecord);
  {FStream.Position := FDataFileHeader.StartData + (FRecordSize * FCurrentRecord);
  FStream.WriteBuffer (ActiveBuffer^, FRecordSize);}
  fDataFileHeader.LastDeleted := GetRecNo;
  Inc(fDataFileHeader.DeletedCount);
  Dec(fRecordCount);
  fDataFileHeader.RecordCount := fRecordCount;
  WriteHeader;
  Resync([]);
end;

// ____________________________________________________________________________
// tTuxDataSet.GetFieldData
// III: Move data from record buffer to field

function tTuxDataSet.GetFieldData(
  Field: TField; Buffer: Pointer): Boolean;
var
  FieldOffset: Integer;
  Ptr: Pointer;
begin
  Result := False;
  if not IsEmpty and (Field.FieldNo > 0) then
  begin
    FieldOffset := Integer(
      FFieldOffset[Field.FieldNo - 1]);
    Ptr := ActiveBuffer;
//    Inc (Ptr, FieldOffset);
    if Assigned(Buffer) then
      Move(pBufArray(Ptr)^[FieldOffset], Buffer^, Field.DataSize)
    else
      if Field.DataType = ftBoolean then
        Move(pBufArray(Ptr)^[FieldOffset], Buffer, 2)
      else
        ShowMessage('very bad error in get field data');
    Result := True;
  end;
end;

// ____________________________________________________________________________
// tTuxDataSet.SetFieldData
// III: Move data from field to record buffer

procedure tTuxDataSet.SetFieldData(Field: TField; Buffer: Pointer);
var
  FieldOffset: Integer;
  Ptr: Pointer;
begin
  if Field.FieldNo >= 0 then
  begin
    FieldOffset := Integer(
      FFieldOffset[Field.FieldNo - 1]);
    Ptr := ActiveBuffer;
//    Inc (Ptr, FieldOffset);
    if Assigned(Buffer) then
      Move(Buffer^, pBufArray(Ptr)^[FieldOffset], Field.DataSize)
    else
      if Field.DataType = ftBoolean then
        Move(Buffer, pBufArray(Ptr)^[FieldOffset], 2)
      else
        ShowMessage('very bad error in setfield data');
    DataEvent(deFieldChange, Longint(Field));
  end;
end;

// ____________________________________________________________________________
// tTuxDataSet.InternalHandleException
// default exception handling

procedure tTuxDataSet.InternalHandleException;
begin
  // standard exception handling
  Application.HandleException(Self);
end;

procedure TtxFilenameProperty.Edit;
var
  txFileOpen: TOpenDialog;
begin
  txFileOpen := TOpenDialog.Create(Application);
  txFileOpen.Filename := GetValue;
  txFileOpen.Filter := '*.*';
  txFileOpen.Options := txFileOpen.Options + [ofShowHelp, ofPathMustExist,
    ofFileMustExist];
  try
    if txFileOpen.Execute then SetValue(txFileOpen.Filename);
  finally
    txFileOpen.Free;
  end;
end;

function TtxFilenameProperty.GetAttributes: TPropertyAttributes;
begin
  Result := [paDialog, paRevertable];
end;

procedure Register;
begin
  RegisterPropertyEditor(TypeInfo(string), TTuxDataSet, 'txSrcFile', TtxFilenameProperty);
  RegisterComponents('Tux61', [TTuxDataSet]);
end;

end.

