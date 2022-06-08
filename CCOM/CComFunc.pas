unit CComFunc;

interface

uses
  Windows,   Messages, SysUtils, Classes,  Graphics, Controls, Forms,
  Dialogs,   ComCtrls, StdCtrls, Buttons,  Grids,    ExtCtrls, Mask,
  {WinTypes,  WinProcs,} MPlayer,  IniFiles, FileCtrl, CheckLst, MsgCom,
  UltraGrid, Menus, Math, IMM, Variants;

type

  TMsgType = (msgOk, msgError, msgYesNo, msgYesNoCancel, msgRetryCancel);

  HcmDate = class
     sDateTime    :   Variant; {현재시간}

     //현재시간조회(CM_SYSDATE_S)
     function Sysdate: Integer;
  end;

  HcmLogin = Class
     sChktm : Variant;//(Login,Logout 시간)
     //(추가. 2002.12.09 이용언) 로그인정보 저장//(추가. 2002.12.09 이용언) 로그인정보 저장
     function LoginInfo(Gubun,userid,prgid, chktm,userip :String): Integer;
     
     //20131205 로그인 파라미터 추가
     function LoginInfo2(Gubun,userid,prgid,proid,userNm,deptNm, chktm,userip :String): Integer;
  end;

type
    TWParam = Record
        sMsg : String[20];
end;

type
    TPIDandHWND = record
        pID: DWORD;
        hWindow: THandle;
end;


var
   res         : Integer;

   // MDI Form을 Create한다.
   procedure MDICreate(InstanceClass : TComponentClass; var Reference);

   // MDI Form을 Create한다. showflag - 0 : ShowModal, 1 : Show, else : None
   procedure NormalCreate(InstanceClass : TComponentClass; var Reference; showflag : Integer);

   //01. StringGrid의 제목을 Setting한다.
   procedure ALLDrawCell(Sender : TObject; Col, Row : Integer; Rect : TRect; State : TGridDrawState);overload;

   //01. StringGrid의 제목을 Setting한다.(FontColor)
   procedure ALLDrawCell(Sender: TObject; Col, Row: Integer;  Rect: TRect; State: TGridDrawState; FColor: TColor);overload;

   //01. StringGrid의 Date를 정렬한다. Direction - Left,Center,Right
   procedure AlignCell(Sender:TObject;Col,Row:Integer;Rect:TRect;Direction : String; Num : Boolean);

   //03.한줄 삭제후 저장않함
   procedure DELETE(in_sgd: TStringGrid;Row:Integer);

   //04.한줄만 빈상태로 바꾼다.
   procedure Clear_One(in_sgd: TStringGrid;Row:Integer);

   //스트링 그리드 소트.
   procedure QuickSortGrid(sGrid : TStringGrid; StartIdx, EndIdx, SortIdx : Integer;Descending:Boolean);

   //05.새로운 라인을 추가한다.
   function New_Record(in_sgd: TStringGrid;Check_Col,Ins_Row : Integer) :Integer;

   //06.전체를 지운다.
   procedure Clear_Record(in_sgd: TStringGrid);

   //05.지정된 Columm에서 입력된 값과 같은 Index를 찾는다.
   function GetGridIndex(in_sgd: TStringGrid; Check_Col : Integer; in_str : String ) :Integer;

   //07. Variant Array의 지정한 자리에 빈칸을 하나 삽입한다.
   function InsertVariant(var in_var : Variant; idx : Integer; in_str : String ) : Boolean;

   //07. Variant Array의 마지막 자리에 빈칸을 하나 삽입한다.
   function AppendVariant(var in_var : Variant; in_str : String ) : Integer;

   //08. Variant Array의 지정한 자리의 값을 지운다.
   function DeleteVariant(var in_var : Variant; idx : Integer ) : Boolean;

   //09. 입력된 값과 같은 Variant Array의 Index를 구한다.
   function FindVarIndex(in_var : Variant; in_str : String; var out_idx : Integer ): Boolean;

   //10. 입력된 값과 같은 Variant Array의 Index Set을 구한다.
   function FindVarIdxset(in_var : Variant; in_str : String; var out_idxset : Variant ) : Boolean;

   //10. 입력된 범위 안에서 입력된 값과 같은 Variant Array의 Index Set을 구한다.
   function FindVarIdxsetInBound(in_var : Variant; in_idxset : Variant; in_str : String; var out_idxset : Variant ) : Boolean;

   //11. 입력된 값으로 시작하는 Variant Array의 Index Set을 구한다.
   function LikeVarIdxset(in_var : Variant; in_str : String; var out_idxset : Variant ) : Boolean;

   //11. 입력된 범위 안에서 입력된 값으로 시작하는 Variant Array의 Index Set을 구한다.
   function LikeVarIdxsetInBound(in_var : Variant; in_idxset : Variant; in_str : String; var out_idxset : Variant ) : Boolean;

   // 날짜타입이 맞는지 Check.
   function ChkDate(in_str : String) : Boolean;

   // Integer Type이 맞는지 Check.
   function ChkInteger(in_str : String) : Boolean;

   // Real Type이 맞는지 Check.
   function ChkReal(in_str : String) : Boolean;

   // 현재 시스템 날짜를 가져온다.
   function GetSysdate(var out_date : TDateTime) : Boolean;

   // 해당년월의 마지막 날짜를 가져온다.
   function GetDaysofMonth(in_year, in_month : string): Integer;

   // String을 DateTime Format으로 돌려준다.
   function CvtDate(var in_str : String) : Boolean;

   // 주민번호 체크
   function CitizenChk(ssno1:string;ssno2:string):boolean;

   // 나이계산...
   function Get_Age(AFromDate: TDate; AToDate: TDate ):Integer;

   procedure qsortGrid(sGrid : TStringGrid; StartIdx, EndIdx, SortIdx : Integer);

   //StringGrid Up...
   Procedure RowUp(Sender : TObject);

   //StringGrid Down...
   Procedure RowDown(Sender : TObject);

   // 화면변화에 맞춰서 그리드 Col Width 변화시키기.
   procedure ReSizeGridCol(in_sgd : TStringGrid; display_cnt : Integer);overload;

   // 화면변화에 맞춰서 그리드 Col Width 변화시키기.
   procedure ReSizeGridCol(in_sgd : TStringGrid; display_cnt : Integer; chg_col : Integer);overload;

   // Word Wrap이 True인 경우 그리드 RowHight 변화시키기.
   procedure ReSizeGridRow(in_ugd : TUltraGrid; ACol : Integer; ARow : Integer);overload;

   // Word Wrap이 True인 경우 그리드 RowHight 변화시키기.
   procedure ReSizeGridRow(in_ugd : TUltraGrid; Col1 : Integer; Col2 : Integer; ARow : Integer);overload;

   // Word Wrap이 True인 경우 그리드 RowHight 변화시키기.
   procedure ReSizeGridRow(in_ugd : TUltraGrid; Col1 : Integer; Col2 : Integer; Col3 : Integer; ARow : Integer);overload;

   // Word Wrap이 True인 경우 그리드 RowHight 변화시키기.
   procedure ReSizeGridRow(in_ugd : TUltraGrid; Col1 : Integer; Col2 : Integer; Col3 : Integer; Col4 : Integer; ARow : Integer);overload;

   // 진료전용
   // 1.나이 계산 (년,월,일)
   function Calc_Age(sFromDate:TDate;sBirthDate:String):String;

   // 1.1. 나이 계산2 (년,월,일) : 나이만.
   function Calc_AgeOnly(sFromDate:TDate;sBirthDate:String):Integer;

   // 1.2. 나이 계산3 : 한국식나이만(A:한국식만나이, B:한국식나이)
   function Calc_AgeSimple(sFlag:string;sFromDate:TDate;sBirthDate:String):Integer;

   // 2.그리드를 지운다 (숨겨진 컬럼까지 지운다)
   procedure Clear_Grid(TargetGrid: TObject; ColCnt: Integer);

   // 3.텍스트의 길이를 가져온다
   function GetTextWidth(Handle: HFont; str: String): Integer;

   // 4.나머지 부분을 빈칸으로 채운다
   function MakeSpace(Handle: HFont; Width: Integer): String;

   // 5.그리드 안에서 텍스트 정렬하기
   function AlignedText(Handle: HFont; sText: String; iWidth: Integer; taType: TAlignment): String;

   // 6.폼을 Close 할때 메뉴를 삭제한다.
   procedure DeleteMenu(sMainFormName, sSubFormName : TObject; sMenuName: String );

   // 7.yyyymmddhh24miss를 yyyy-mm-dd hh24:mi로 변환
   function  ConvertDDate(DTstr:String):String;

   // 8.yyyymmdd를 yyyy-mm-dd로 변환
   function  ConvertSDate(DTstr:String):String;

   // 9.yyyy-mm-dd hh24:mi:ss를 yyyymmddhh24miss로 변환
   function  InvertLDate(DTstr:String):String;

   // 10.yyyy-mm-dd를 yyyymmdd로 변환
   function  InvertSDate(DTstr:String):String;

   // Grid Cell의 색상을 설정한다.
   Procedure SetGridColor(grid : TStringgrid; Col : Integer; Row: Integer; Color_BG : TColor; Color_FONT : Tcolor);

   // Edit에 숫자만 입력하기
   function InputNum(in_Key : Char) : Char;

   // Edit에 정수만 입력하기
   function InputInt(in_Key : Char) : Char;

   // Edit에 실수만 입력하기
   function InputReal(in_Key : Char) : Char;

   // 지정한 자리에서 반올림.
   function RRound_pos(Amount : Real; Pos : Integer) : Real;

   // 지정한 자리에서 버림
   function RTrunc_pos(Amount : Real; Pos : Integer) : Real;

   // 지정한 자리에서 올림
   function RCeil_pos(Amount : Real; Pos : Integer) : Real;

   // 지정한 자리에서 반올림.
   function IRound_pos(Amount : Real; Pos : Integer) : Integer;

   // 지정한 자리에서 버림
   function ITrunc_pos(Amount : Real; Pos : Integer) : Integer;

   // 지정한 자리에서 올림
   function ICeil_pos(Amount : Real; Pos : Integer) : Integer;

   // EditBox의 입력모드를 고정
   procedure SetHangeulMode(SetHangeul: Boolean; Handle: THandle);

   function EnumWindowsProc(hWindow: HWND; var lParam: TPIDandHWND): Bool;stdcall;

   function WindowFromProcessID(pID: DWORD): HWND;

   //(추가. 2002.12.09 이용언) 로그인정보
   Function SaveLoginInfo(Gubun,Loginid,PrgId,Chktm,LoginIp : String):String;

   //20131205 KMS 로그인 관련 파라미터 추가
   Function SaveLoginInfo2(Gubun,Loginid,PrgId,ProId,userNm,deptNm,Chktm,LoginIp : String):String;

   // 추가 2004.04.22 선성우 디스크 볼륨명
   function GetDiskVolume(cDisk: char): string;

  // String 내의 특정 문자 삭제  gcom에서 추가
   function DelChar( const Str : String ; DelC : Char ) : String;

   // 오른쪽 Blank 채우기
   function RBSpace( ss: String; ii: Integer): String;

   // 환자번호 8자리로 앞에 0 채우기
   function FillPatno(ss: String): String;

   // 공통코드 중분류코드를 조회해서 콤보박스에 넣기
   procedure PutComboBox(sCode: String; var ss: TComboBox);

   // MessageType 으로 showmessage 생성
   function ShowMsg(Msg, Title : String; MsgType : TMsgType) : LongInt;

   // 비밀보호 요청체크
   function PubPscheck(sPatno: String):Boolean;

   // 2015인증평가, 권한관리3차(출력물관리) by 곽현, TBitBtn,  KimDaeYong 2015-10-14
   procedure CheckButton(sEmpno, sExeid, sFormid: string; var sBtnname : TBitBtn );

   // 2015인증평가, 권한관리3차(출력물관리) by 곽현, TSpeedButton, KimDaeYong 2015-10-14
   procedure CheckButton2(sEmpno, sExeid, sFormid: string; var sBtnname : TSpeedButton );

   // 2015인증평가, 권한관리3차(출력물관리Log) by 곽현, KimDaeYong 2015-10-14
   procedure Prtlog(sExeid, sFormid, sBtnname, sMeddept, sEmpno, sJikgun, sJikgup, sEditip : string);

   //청구소프트웨어암호화인증(접근기록관리) by 곽현.  KimDaeYong 2018-12-19
   function CheckAccess(sUserid, sUserip, sPrgid, sFormid, sJobtype: string): Boolean;

implementation

uses TuxCom, VarCom, CCCLASS1;

procedure PutComboBox(sCode: String; var ss: TComboBox);
var i, iRow: Integer;
begin
    ss.Items.Clear;
    CCcomcdt := TCCCOMCDT.Create;
    With CCcomcdt do try
        iRow := CCcomcdt.ccComcdtList(sCode, '', '', 0);
        if iRow > 0 then begin
            for i := 0 to iRow - 1 do
                ss.Items.Add( RBSpace(CCcomcdt.sCdabbrnm[i],50) + CCcomcdt.sComcddtl[i] );
            ss.ItemIndex := -1;
        end;
    finally CCcomcdt.Free; end;
end;

function FillPatno(ss: String): String;
var i, j: Integer;
begin
    Result := ss;
    if (Length(ss)>0) and (Length(ss)<8) then begin
      i := length(Result);
      if i < 8 then begin
         for j := 1 to 8 - i do
            Result := '0' + Result;
      end;
    end;
end;

function RBSpace( ss: String; ii: Integer): String;
var i: Integer;
begin
  Result := ss;
  if ii > length(ss) then
  for i := 1 to ii-Length(ss) do
      Result := Result + ' ';
end;

function DelChar( const Str : String ; DelC : Char ) : String;
var
  I, L : Integer;
begin
  L := Length(Str);
  result := '';

    for I := 1 to L  do begin
      if DelC <> '' then
      begin
        if Str[I] <> DelC then
          result := result + Str[I];
      end
      else
      begin
        if Str[I] in ['0'..'9'] then
          result := result + Str[I];
      end;
    end;
end;

function GetDiskVolume(cDisk: char): string;
var
 szVolumeName: array [0..255] of char;
 dwVolumeSerial: DWORD;
 dwMaxComponentLen: DWORD;
 szFileSystemName: array[0..255] of char;
 dwFileSystemFlag: DWORD;
begin
 GetVolumeInformation(PChar(cDisk + ':\'), szVolumeName, 256,
                      @dwVolumeSerial, dwMaxComponentLen, dwFileSystemFlag,
                      szFileSystemName, 256);
 Result := szVolumeName;
end;

//Form을 Create한다.
procedure MDICreate(InstanceClass: TComponentClass; var Reference);
begin
   if ( TForm(Reference) = nil ) then
   begin
      Application.CreateForm(InstanceClass,Reference);
   end
   else
   begin
      TForm(Reference).Show;
      if ( TForm(Reference).WindowState = wsMinimized ) then
      begin
         TForm(Reference).WindowState := wsNormal;
      end;
   end;
end;

// MDI Form을 Create한다. showflag - 0 : ShowModal, 1 : Show, else : None
procedure NormalCreate(InstanceClass: TComponentClass; var Reference; showflag : Integer);
begin
   if ( TForm(Reference) = nil ) then
   begin
      Application.CreateForm(InstanceClass,Reference);
   end;

   if ( showflag = 0 ) then
   begin
      if ( TForm(Reference).WindowState = wsMinimized ) then
      begin
         TForm(Reference).WindowState := wsNormal;
      end;
      TForm(Reference).ShowModal;
   end
   else if ( showflag = 1 ) then
   begin
      if ( TForm(Reference).WindowState = wsMinimized ) then
      begin
         TForm(Reference).WindowState := wsNormal;
      end;
      TForm(Reference).Show;
   end;
end;

// StringGrid의 제목을 Setting한다.
procedure ALLDrawCell(Sender: TObject; Col, Row: Integer;  Rect: TRect; State: TGridDrawState);
var
   StartPos_l :Integer;
   StartPos_t :Integer;
begin
   if Rect.Right > (Sender as TStringGrid).ClientWidth then
      Rect.Right := (Sender as TStringGrid).ClientWidth
   else if ( Col = (Sender as TStringGrid).ColCount - 1 ) or
           ( (Sender as TStringGrid).ColWidths[Col + 1] < 1 ) then
      Rect.Right := (Sender as TStringGrid).ClientWidth;

   (Sender as TStringGrid).ColWidths[Col] := Rect.Right - Rect.Left;

   if gdFixed in State then
   begin
      with (Sender as TStringGrid).Canvas do
      begin
         //if Row > 1 then

         Font.Style := Font.Style +[fsBold];
         FillRect(Rect);
         StartPos_l := Rect.Left + trunc(( (Rect.Right - Rect.Left)-
                                            TextWidth((Sender as TStringGrid).Cells[Col,Row]) )/2);
         StartPos_t := Rect.Top + trunc(( (Rect.Bottom - Rect.Top)-
                                            TextHeight((Sender as TStringGrid).Cells[Col,Row]) )/2);
         TextOut(StartPos_l,StartPos_t,(Sender as TStringGrid).Cells[Col,Row]);
      end;
   end
   else if gdSelected	in State then//if ( Row = (Sender as TStringGrid).Row ) then
   begin
      with (Sender as TStringGrid).Canvas do
      begin
         Brush.Color := $00FDEDDF;//$00F5EFDA;
         Font.Color  := clNavy;//clBlue;
         FillRect(Rect);

         StartPos_l := Rect.Left + 2;
         StartPos_t := Rect.Top + 2;
         TextOut(StartPos_l,StartPos_t,(Sender as TStringGrid).Cells[Col,Row]);

         if (Sender as TStringGrid).GridLineWidth = 0 then
         begin
            Pen.Color  := clSilver;//$00C8350B;
            MoveTo(Rect.Right-1 , Rect.Top);
            LineTo(Rect.Right-1 , Rect.Bottom);
            if Row = (Sender as TStringGrid).RowCount-1 then
            begin
               MoveTo(Rect.Left-1 , Rect.Bottom-1);
               LineTo(Rect.Right-1 , Rect.Bottom-1);
            end;
         end;

      end;
   end
   else if (Sender as TStringGrid).GridLineWidth = 0 then
   begin
      with (Sender as TStringGrid).Canvas do
      begin
         Pen.Color  := clSilver;
         Pen.Style  := psSolid;
         MoveTo(Rect.Right-1 , Rect.Top);
         LineTo(Rect.Right-1 , Rect.Bottom);
         if Row = (Sender as TStringGrid).RowCount-1 then
         begin
            MoveTo(Rect.Left-1 , Rect.Bottom-1);
            LineTo(Rect.Right-1 , Rect.Bottom-1);
         end;
      end;
   end;
end;

// StringGrid의 제목을 Setting한다.(FontColor)
procedure ALLDrawCell(Sender: TObject; Col, Row: Integer;  Rect: TRect; State: TGridDrawState; FColor: TColor);
var
   StartPos_l :Integer;
   StartPos_t :Integer;
begin
   if Rect.Right > (Sender as TStringGrid).ClientWidth then
      Rect.Right := (Sender as TStringGrid).ClientWidth
   else if ( Col = (Sender as TStringGrid).ColCount - 1 ) or
           ( (Sender as TStringGrid).ColWidths[Col + 1] < 1 ) then
      Rect.Right := (Sender as TStringGrid).ClientWidth;

   (Sender as TStringGrid).ColWidths[Col] := Rect.Right - Rect.Left;

   if gdFixed in State then
   begin
      with (Sender as TStringGrid).Canvas do
      begin
         //if Row > 1 then

         Font.Style := Font.Style +[fsBold];
         FillRect(Rect);
         StartPos_l := Rect.Left + trunc(( (Rect.Right - Rect.Left)-
                                            TextWidth((Sender as TStringGrid).Cells[Col,Row]) )/2);
         StartPos_t := Rect.Top + trunc(( (Rect.Bottom - Rect.Top)-
                                            TextHeight((Sender as TStringGrid).Cells[Col,Row]) )/2);
         TextOut(StartPos_l,StartPos_t,(Sender as TStringGrid).Cells[Col,Row]);
      end;
   end
   else if gdSelected in State then//if ( Row = (Sender as TStringGrid).Row ) then
   begin
      with (Sender as TStringGrid).Canvas do
      begin
         Brush.Color := $00FDEDDF;//$00F5EFDA;
         Font.Color  := clNavy;//clBlue;
         FillRect(Rect);

         if (Sender as TStringGrid).GridLineWidth = 0 then
         begin
            Pen.Color  := clSilver;//$00C8350B;
            MoveTo(Rect.Right-1 , Rect.Top);
            LineTo(Rect.Right-1 , Rect.Bottom);
            if Row = (Sender as TStringGrid).RowCount-1 then
            begin
               MoveTo(Rect.Left-1 , Rect.Bottom-1);
               LineTo(Rect.Right-1 , Rect.Bottom-1);
            end;
         end;

         StartPos_l := Rect.Left + 2;
         StartPos_t := Rect.Top + 2;
         TextOut(StartPos_l,StartPos_t,(Sender as TStringGrid).Cells[Col,Row]);
      end;
   end
   else if (Sender as TStringGrid).GridLineWidth = 0 then
   begin
      with (Sender as TStringGrid).Canvas do
      begin
         Font.Color := FColor;
         Pen.Color  := clSilver;
         Pen.Style  := psSolid;
         MoveTo(Rect.Right-1 , Rect.Top);
         LineTo(Rect.Right-1 , Rect.Bottom);
         if Row = (Sender as TStringGrid).RowCount-1 then
         begin
            MoveTo(Rect.Left-1 , Rect.Bottom-1);
            LineTo(Rect.Right-1 , Rect.Bottom-1);
         end;
      end;
   end;
end;

// StringGrid의 내용을 정렬한다.
procedure AlignCell(Sender:TObject;Col,Row:Integer;Rect:TRect;Direction : String; Num : Boolean);
var
   StartPos_l : Integer;
   StartPos_t : Integer;
   DataInCell : String;
begin
   if Rect.Right > (Sender as TStringGrid).ClientWidth then
      Rect.Right := (Sender as TStringGrid).ClientWidth
   else if ( Col = (Sender as TStringGrid).ColCount - 1 ) or
           ( (Sender as TStringGrid).ColWidths[Col + 1] < 1 ) then
      Rect.Right := (Sender as TStringGrid).ClientWidth;

   (Sender as TStringGrid).ColWidths[Col] := Rect.Right - Rect.Left;
   DataInCell := (Sender as TStringGrid).Cells[Col,Row];

   if ( UpperCase(Direction) = 'CENTER' ) then
   begin
      with (Sender as TStringGrid).Canvas do
      begin
         FillRect(Rect);
         if (Sender as TStringGrid).GridLineWidth = 0 then
         begin
            Pen.Color  := clSilver;//$00C8350B;
            MoveTo(Rect.Right-1 , Rect.Top);
            LineTo(Rect.Right-1 , Rect.Bottom);
            if Row = (Sender as TStringGrid).RowCount-1 then
            begin
               MoveTo(Rect.Left-1 , Rect.Bottom-1);
               LineTo(Rect.Right-1 , Rect.Bottom-1);
            end;
         end;
         StartPos_l := Rect.Left + trunc(( (Rect.Right - Rect.Left)-
                                            TextWidth(DataInCell) )/2);
         StartPos_t := Rect.Top + trunc(( (Rect.Bottom - Rect.Top)-
                                            TextHeight(DataInCell) )/2);
         TextOut(StartPos_l,StartPos_t,DataInCell);
      end;
   end
   else if ( UpperCase(Direction) = 'LEFT' ) then
   begin
      with (Sender as TStringGrid).Canvas do
      begin
         FillRect(Rect);
         if (Sender as TStringGrid).GridLineWidth = 0 then
         begin
            Pen.Color  := clSilver;//$00C8350B;
            MoveTo(Rect.Right-1 , Rect.Top);
            LineTo(Rect.Right-1 , Rect.Bottom);
            if Row = (Sender as TStringGrid).RowCount-1 then
            begin
               MoveTo(Rect.Left-1 , Rect.Bottom-1);
               LineTo(Rect.Right-1 , Rect.Bottom-1);
            end;
         end;
         StartPos_l := Rect.Left +2;
         StartPos_t := Rect.Top + 2;
         TextOut(StartPos_l,StartPos_t,DataInCell);
      end;
   end
   else if ( UpperCase(Direction) = 'RIGHT' ) then
   begin
      with (Sender as TStringGrid).Canvas do
      begin
         FillRect(Rect);
         if ( Num ) and
            ( ChkReal(DataInCell) ) then
         begin
            DataInCell := FormatFloat('#,##0.###',StrToFloat(DataInCell));
         end;
         if (Sender as TStringGrid).GridLineWidth = 0 then
         begin
            Pen.Color  := clSilver;//$00C8350B;
            MoveTo(Rect.Right-1 , Rect.Top);
            LineTo(Rect.Right-1 , Rect.Bottom);
            if Row = (Sender as TStringGrid).RowCount-1 then
            begin
               MoveTo(Rect.Left-1 , Rect.Bottom-1);
               LineTo(Rect.Right-1 , Rect.Bottom-1);
            end;
         end;
         StartPos_l := Rect.Right - TextWidth(DataInCell) - 2;
         StartPos_t := Rect.Top + 2;
         TextOut(StartPos_l,StartPos_t,DataInCell);
      end;
   end;
end;

//03.한줄 삭제후 저장않함
procedure DELETE(in_sgd: TStringGrid; Row:Integer);
var
     MV_Row,col:Integer;
begin
     if (in_sgd.RowCount-1) =  in_sgd.FixedRows  then
     begin
         Clear_One(in_sgd,Row);
         in_sgd.Tag := 0;
         Exit;
     end
     else
     begin
         // *** One Row Up  :Delete *** //
         for MV_Row  := Row to in_sgd.RowCount-1 do
         begin
             for col := 0 to in_sgd.ColCount-1  do
             in_sgd.Cells[col,MV_Row] := in_sgd.Cells[col,MV_Row+1];
         end;
         in_sgd.RowCount := in_sgd.RowCount - 1;
     end;
end;

//04.한줄만 빈상태로 바꾼다.
procedure Clear_One(in_sgd: TStringGrid;Row:Integer);
var
     col : integer;
begin
     for col := 0 to in_sgd.ColCount -1 do
         in_sgd.Cells[col,Row] := '';
end;

//05.Ins_Row아래에 새로운 라인을 추가한다.
function New_Record(in_sgd: TStringGrid;Check_Col,Ins_Row : Integer) :integer;
var  
   Shift_Row,j:Integer;
begin
   result := -1;

   //전체 record를 한개 늘린다.Ins_Row가 비어있지 않다면 Row수를 증가
   if in_sgd.Cells[Check_Col,Ins_Row] <> '' then
   begin
      in_sgd.RowCount := in_sgd.RowCount + 1 ;
   end
   else
   begin
      result := Ins_Row;
      Exit;
   end;

   //
   if ( in_sgd.RowCount > 2 ) then
   begin
       // *** One Row Down  :Insert *** //
       for Shift_Row  := in_sgd.RowCount-2  downto  Ins_Row+1 do
       begin
            for j := 0 to in_sgd.ColCount-1  do
                in_sgd.Cells[j,Shift_Row+1] := in_sgd.Cells[j,Shift_Row];
       end;
   end;

   // ** One Record Paste ** //
   for j := 0 to in_sgd.ColCount-1 do
       in_sgd.Cells[j,Ins_Row+1] := '';

   result := Ins_Row+1;
end;

//06.전체를 지운다.
procedure Clear_Record(in_sgd: TStringGrid);
var
   u_row:Integer;
begin
   for u_row  := in_sgd.FixedRows to in_sgd.RowCount-1 do
       in_sgd.Rows[u_Row].Clear;
   in_sgd.RowCount := in_sgd.FixedRows + 1 ;
end;

//05.지정된 Columm에서 입력된 값과 같은 Index를 찾는다.
function GetGridIndex(in_sgd: TStringGrid; Check_Col : Integer; in_str : String ) :Integer;
var
   i   : Integer;
   cnt : Integer;
begin
   result := -1;
   
   cnt := in_sgd.RowCount;

   for i := in_sgd.FixedRows to cnt - 1 do
   begin
      if ( UpperCase(in_sgd.Cells[Check_Col,i]) = UpperCase(in_str) ) then
      begin
         result := i;
         Exit;
      end;
   end;
end;

function InsertVariant(var in_var : Variant; idx : Integer; in_str : String ) : Boolean;
var
   i   : Integer;
   cnt : Integer;
begin
   result := False;

   cnt := VarArrayHighBound(in_var,1);

   if ( idx > cnt ) then
   begin
      ShowMessageM('입력할 수 없습니다.');
      Exit;
   end;

   VarArrayRedim(in_var,cnt + 1 );

   for i := cnt - 1  downto idx do
   begin
      in_var[i+1] := in_var[i];
   end;

   in_var[idx] := in_str;

   result := True;
end;

function AppendVariant(var in_var : Variant; in_str : String ) : Integer;
var
   cnt     : Integer;
   tmp_str : String;
begin
   if ( VarIsArray(in_var) ) then
   begin
      cnt := VarArrayHighBound(in_var,1);
      VarArrayRedim(in_var,cnt + 1 );
      in_var[cnt+1] := in_str;
      result := cnt+1;
   end
   else
   begin
      if ( VarIsEmpty(in_var) ) or
         ( VarIsNull(in_var) ) then
      begin
         in_var    := VarArrayCreate([0,0],varVariant);
         in_var[0] := in_str;
         result    := 0;
      end
      else
      begin
         tmp_str   := VarToStr(in_var);
         in_var    := VarArrayCreate([0,1],varVariant);
         in_var[0] := tmp_str;
         in_var[1] := in_str;
         result    := 1;
      end;
   end;
end;

function DeleteVariant(var in_var : Variant; idx : Integer ) : Boolean;
var
   i : Integer;
   cnt : Integer;
begin
   try
      result := False;
      cnt := VarArrayHighBound(in_var,1);
      if ( idx > cnt ) then
      begin
         ShowMessageM('삭제할 수 없습니다.');
         Exit;
      end;

      for i := idx  to cnt - 1 do
      begin
         in_var[i] := in_var[i+1];
      end;
      in_var[cnt] := '';

      VarArrayRedim(in_var,cnt - 1);
      result := True;
   except
      result := False;
      ShowMessageM('삭제할 수 없습니다');
   end;
end;

function FindVarIndex(in_var : Variant; in_str : String; var out_idx : Integer ): Boolean;
var
   i : Integer;
   cnt : Integer;
begin
   result := False;

   cnt := VarArrayHighBound(in_var,1);

   for i := 0  to cnt do
   begin
      if ( UpperCase(in_var[i]) = UpperCase(in_str) ) then
      begin
         out_idx := i;
         result := True;
         Exit;
      end;
   end;
end;

function FindVarIdxset(in_var : Variant; in_str : String; var out_idxset : Variant ) : Boolean;
var
   i   : Integer;
   cnt : Integer;
   idx : Integer;
begin
   result := False;

   cnt := VarArrayHighBound(in_var,1);
   idx := -1;
   out_idxset := VarArrayCreate([0,0],VarVariant);

   for i := 0  to cnt do
   begin
      if ( UpperCase(in_var[i]) = UpperCase(in_str) ) then
      begin
         inc(idx);
         VarArrayRedim(out_idxset,idx);
         out_idxset[idx] := IntToStr(i);
      end;
   end;

   if ( idx >= 0 ) then
   begin
      result := True;
   end;
end;

function FindVarIdxsetInBound(in_var : Variant; in_idxset : Variant; in_str : String; var out_idxset : Variant ) : Boolean;
var
   i   : Integer;
   cnt : Integer;
   idx : Integer;
begin
   result := False;

   cnt := VarArrayHighBound(in_idxset,1);
   idx := -1;
   out_idxset := VarArrayCreate([0,0],VarVariant);

   for i := 0  to cnt do
   begin
      if ( UpperCase(in_var[StrToInt(in_idxset[i])]) = UpperCase(in_str) ) then
      begin
         inc(idx);
         VarArrayRedim(out_idxset,idx);
         out_idxset[idx] := in_idxset[i];
      end;
   end;

   if ( idx >= 0 ) then
   begin
      result := True;
   end;
end;

function LikeVarIdxset(in_var : Variant; in_str : String; var out_idxset : Variant ) : Boolean;
var
   i   : Integer;
   cnt : Integer;
   len : Integer;
   idx : Integer;
begin
   result := False;
   cnt := VarArrayHighBound(in_var,1);
   len := Length(in_str);
   idx := -1;
   out_idxset := VarArrayCreate([0,0],VarVariant);

   for i := 0  to cnt do
   begin
      if ( UpperCase(Copy(in_var[i],1,len)) = UpperCase(in_str) ) then
      begin
         inc(idx);
         VarArrayRedim(out_idxset,idx);
         out_idxset[idx] := IntToStr(i);
      end;
   end;

   if ( idx >= 0 ) then
   begin
      result := True;
   end;
end;

function LikeVarIdxsetInBound(in_var : Variant; in_idxset : Variant; in_str : String; var out_idxset : Variant ) : Boolean;
var
   i   : Integer;
   cnt : Integer;
   len : Integer;
   idx : Integer;
begin
   result := False;
   cnt := VarArrayHighBound(in_idxset,1);
   len := Length(in_str);
   idx := -1;
   out_idxset := VarArrayCreate([0,0],VarVariant);

   for i := 0  to cnt do
   begin
      if ( UpperCase(Copy(in_var[StrToInt(in_idxset[i])],1,len)) = UpperCase(in_str) ) then
      begin
         inc(idx);
         VarArrayRedim(out_idxset,idx);
         out_idxset[idx] := in_idxset[i];
      end;
   end;

   if ( idx >= 0 ) then
   begin
      result := True;
   end;
end;

// 날짜타입이 맞는지 Check.
function ChkDate(in_str : String) : Boolean;
var
   chk_date : TDateTime;
begin
   result   := False;
   try
      chk_date := StrToDateTimeDef(in_str,StrToDateTime('1900-01-01'));
      Result := chk_date <> StrToDateTime('1900-01-01');
   except
      result   := False;
   end;
end;

// Integer Type이 맞는지 Check.
function ChkInteger(in_str : String) : Boolean;
var
   chk_int : Integer;
begin
   try
      chk_int := StrToInt(in_str);
      result  := True;
   except
      result  := False;
   end;
end;

// Real Type이 맞는지 Check.
function ChkReal(in_str : String) : Boolean;
var
   chk_real : Real;
begin
   try
      chk_real := StrToFloat(in_str);
      result   := True;
   except
      result   := False;
   end;
end;

// 현재 시스템 날짜를 가져온다.
function GetSysdate(var out_date : TDateTime) : Boolean;
var
   cmDate: HcmDate;
   row: Integer;
begin
   result := False;
   // 나중에 서버에서 가져오는 서비스호출로 바꿔야 함.

   cmDate := HcmDate.Create;

   row := cmDate.Sysdate;

   if row < 0 then
   begin
        Result := False;

        Exit;
   end
   else
   begin
        out_date := StrToDateTime(cmDate.sDateTime[0]);

        Result := True;
   end;

   cmDate.Free;
end;

//
function GetDaysofMonth(in_year, in_month : string): Integer;
var
  w_year, w_month, w_day : Word;
  Dt_temp : TDateTime;
begin
   Result := -1;

   try
      w_year  := StrtoInt(in_year);
      w_month := StrtoInt(in_month);

      //해당년월의첫째날
      Dt_temp := EncodeDate(w_year, w_month, 1);
      //한달뒤의 첫날에서 하루전 = 마지막날
      Dt_temp := IncMonth(Dt_temp, 1)-1;

      DecodeDate(Dt_temp, w_year, w_month, w_day);

      Result := Integer(w_day);
   except

   end;
end;
//

//현재시간조회(CC_SYSDATE_S)
function HcmDate.Sysdate: Integer;
begin
     Result := -1;
     txAlloc;
     if txGetF('CC_SYSDATE_S') then
     begin
          Result := GetRecordCnt('S_DATETIME1');
          GetFldVar('S_DATETIME1', sDateTime);
          txFree;
     end;
end;

// String을 DateTime Format으로 돌려준다.
function CvtDate(var in_str : String) : Boolean;
var
   len      : Integer;
   sysdate  : TDateTime;
   tmp_str  : String;
   days     : Integer;
   date_str : String;
begin
   result  := False;
   tmp_str := Trim(in_str);
   len     := Length(tmp_str);

   if not ( GetSysdate(sysdate) ) then
   begin
      Exit;
   end;

   if ( UpperCase(Copy(tmp_str,1,1)) = 'T' ) then
   begin
      if ( len > 1 ) then
      begin
         if not ( ChkInteger(Copy(tmp_str,3,len-2)) ) then
         begin
            Exit;
         end;

         if ( Copy(tmp_str,2,1) = '-' ) then
         begin
            days    := StrToInt(Copy(tmp_str,3,len-2));
            sysdate := sysdate - days;
            in_str  := DateToStr(sysdate);
            result  := True;
            Exit;
         end
         else if ( Copy(tmp_str,2,1) = '+' ) then
         begin
            days    := StrToInt(Copy(tmp_str,3,len-2));
            sysdate := sysdate + days;
            in_str  := DateToStr(sysdate);
            result  := True;
            Exit;
         end
         else
         begin
            Exit;
         end;
      end
      else
      begin
         in_str  := DateToStr(sysdate);
         result  := True;
         Exit;
      end;
   end
   else
   begin
      case len of
          2 : begin
                 date_str := Copy(DateToStr(sysdate),1,8)+tmp_str;
                 if ( ChkDate(date_str) ) then
                 begin
                    in_str := date_str;
                    result := True;
                    Exit;
                 end
                 else
                 begin
                    Exit;
                 end;
              end;
          4 : begin
                 date_str := Copy(DateToStr(sysdate),1,5)+Copy(tmp_str,1,2)+'-'+Copy(tmp_str,3,2);
                 if ( ChkDate(date_str) ) then
                 begin
                    in_str := date_str;
                    result := True;
                    Exit;
                 end
                 else
                 begin
                    Exit;
                 end;
              end;
          5 : begin
                 if ( ChkInteger(Copy(tmp_str,3,1)) ) then
                 begin
                    Exit;
                 end;

                 date_str := Copy(DateToStr(sysdate),1,5)+Copy(tmp_str,1,2)+'-'+Copy(tmp_str,4,2);
                 if ( ChkDate(date_str) ) then
                 begin
                    in_str := date_str;
                    result := True;
                    Exit;
                 end
                 else
                 begin
                    Exit;
                 end;
              end;
          6 : begin
                 date_str := Copy(DateToStr(sysdate),1,2)+Copy(tmp_str,1,2)+'-'+Copy(tmp_str,3,2)+'-'+Copy(tmp_str,5,2);
                 if ( ChkDate(date_str) ) then
                 begin
                    in_str := date_str;
                    result := True;
                    Exit;
                 end
                 else
                 begin
                    Exit;
                 end;
              end;
          8 : begin
                 date_str := Copy(tmp_str,1,4)+'-'+Copy(tmp_str,5,2)+'-'+Copy(tmp_str,7,2);
                 if ( ChkDate(date_str) ) then
                 begin
                    in_str := date_str;
                    result := True;
                    Exit;
                 end;

                 if ( ChkInteger(Copy(tmp_str,3,1)) ) then
                 begin
                    Exit;
                 end;

                 if ( ChkInteger(Copy(tmp_str,6,1)) ) then
                 begin
                    Exit;
                 end;

                 date_str := Copy(DateToStr(sysdate),1,2)+Copy(tmp_str,1,2)+'-'+Copy(tmp_str,4,2)+'-'+Copy(tmp_str,7,2);
                 if ( ChkDate(date_str) ) then
                 begin
                    in_str := date_str;
                    result := True;
                    Exit;
                 end
                 else
                 begin
                    Exit;
                 end;
              end;
         10 : begin
                 date_str := Copy(tmp_str,1,4)+'-'+Copy(tmp_str,6,2)+'-'+Copy(tmp_str,9,2);
                 if ( ChkDate(date_str) ) then
                 begin
                    in_str := date_str;
                    result := True;
                    Exit;
                 end
                 else
                 begin
                    Exit;
                 end;
              end;
      end;
   end;
end;

function CitizenChk(ssno1:string;ssno2:string):boolean;
var
//	DateStr   : String;
//    YearStr   : String;
//	BirthYear : Byte;
	tval      : Integer;
	tval2     : Integer;
    tmp_date  : TDateTime;
begin
   if ( Copy(ssno2,1,1) = '1' ) or
      ( Copy(ssno2,1,1) = '2' ) or
      ( Copy(ssno2,1,1) = '5' ) or
      ( Copy(ssno2,1,1) = '6' ) then
   begin
      try
         tmp_date := StrToDate('19'+Copy(ssno1,1,2)+'-'+Copy(ssno1,3,2)+'-'+Copy(ssno1,5,2));
      except
         MakeMsg(CF_D720,D_RESNO,NF300);
         result := False;
         Exit;
      end;
   end
   else if ( Copy(ssno2,1,1) = '3' ) or
           ( Copy(ssno2,1,1) = '4' ) then
   begin
      try
         tmp_date := StrToDate('20'+Copy(ssno1,1,2)+'-'+Copy(ssno1,3,2)+'-'+Copy(ssno1,5,2));
      except
         MakeMsg(CF_D720,D_RESNO,NF300);
         result := False;
         Exit;
      end;
   end
   else
   begin
      MakeMsg(CF_D720,D_RESNO,NF300);
      result := False;
      Exit;
   end;

	tval  := StrToInt(ssno1[1])*2 + StrToInt(ssno1[2])*3 + StrToInt(ssno1[3])*4
			   + StrToInt(ssno1[4])*5 + StrToInt(ssno1[5])*6 + StrToInt(ssno1[6])*7
			   + StrToInt(ssno2[1])*8+ StrToInt(ssno2[2])*9 + StrToInt(ssno2[3])*2
			   + StrToInt(ssno2[4])*3 + StrToInt(ssno2[5])*4 + StrToInt(ssno2[6])*5;

	tval2 := 11 - (tval mod 11);

   if (tval2 = 10) then
      tval2 := 0;

   if (tval2 = 11) then
      tval2 := 1;

   if ( (ssno2 = '1000000') or (ssno2 = '2000000') or (ssno2 = '3000000') or (ssno2 = '4000000') ) then
   begin
	   Result :=True;
      Exit;
   end;

	if (StrToInt(ssno2[7])=tval2) and  (ssno2[1] in ['1','2','3','4']) then
   begin
		Result :=True;
   end
   else
   begin
      MakeMsg(CF_D720,D_RESNO,NF300);
      result := False;
   end;
end;

function Get_Age(AFromDate: TDate; AToDate: TDate ):Integer;
var from_year,from_month,from_day,to_year,to_month,to_day : Word;
    age : integer;
begin
    DecodeDate(AFromDate, from_year,from_month,from_day);
    DecodeDate(AToDate, to_year,to_month,to_day);

    if (AFromDate > AToDate) then
    begin
       result := -1;
       exit;
    end;

    if (from_year = to_year) then 
    begin
       result := 0;
       exit;
    end;   
   
    age := to_year - from_year - 1;
    if (from_month = to_month)then
    begin
       if (from_day <= to_day) then inc(age);
    end
    else if(from_month < to_month) then  inc(age);

    result := age;

end;

procedure QuickSortGrid(sGrid : TStringGrid; StartIdx, EndIdx, SortIdx : Integer;Descending:Boolean);
var
//   j ,te: Word;
   j: Word;
   sortGrid, tempGrid : TStringGrid;
   tempColCount : Integer;
   tempColWidth : Integer;

   function UpString(Instring : string) : string;
   var
      tel : byte;
      outstring : string;
   begin
      OutString := InString;
      for tel := 1 to length(Instring) do
         OutString[tel] := upcase(OutString[tel]);
      UpString := OutString;
   end;

begin
   tempColCount := sGrid.ColCount;
   tempColWidth := sGrid.ColWidths[tempColCount-1] ;

   sGrid.ColCount := 100;
   sortGrid := TStringGrid.Create(nil);
   sortGrid.RowCount := sGrid.RowCount;
   sortGrid.ColCount := 2;
   for j := StartIdx to EndIdx do
      begin
        sortGrid.Cells[0, j] := IntToStr(j);
        sortGrid.Cells[1, j] := sGrid.Cells[SortIdx, j];
      end;

   for j := StartIdx to EndIdx do
       SortGrid.Cells[1, j] := Uppercase(SortGrid.Cells[1, j]);

   qsortGrid(sortGrid, StartIdx, EndIdx, 1);

   tempGrid := TStringGrid.Create(nil);
   tempGrid.RowCount := sGrid.RowCount;
   tempGrid.ColCount := sGrid.ColCount;

   for j := StartIdx to EndIdx do
      try
      tempGrid.rows[j] :=sGrid.rows[StrToInt(sortGrid.Cells[0,j])];
      except on
         EConvertError do begin
            tempGrid.rows[j] :=sGrid.rows[j];
         end;
      end;


   for j := StartIdx to EndIdx do
      sGrid.rows[j] := tempGrid.rows[j];

   sortGrid.Free;

   if Descending then
      begin
      for j := EndIdx downto StartIdx do
         sGrid.rows[EndIdx-j+StartIdx] := tempGrid.rows[j];
      end;
   tempGrid.Free;
   sGrid.ColWidths[tempColCount-1] := tempColWidth;
   sGrid.ColCount := tempColCount;
end;

procedure qsortGrid(sGrid : TStringGrid; StartIdx, EndIdx, SortIdx : Integer);
var
   x, y : Word;
   temp: string;
   tempRow : TStringList;
   ind : Word;
   fields, i : Word;
begin
    tempRow :=TStringList.Create;
    fields := sGrid.ColCount;
    if StartIdx < EndIdx then
       begin
       x:= StartIdx;
       y:= EndIdx;
       ind := (StartIdx+EndIdx) div 2;
       temp := sGrid.cells[SortIdx, ind];
       while x <= y do
          begin
          while sGrid.cells[SortIdx, x] < temp do
             Inc(x);
          while sGrid.cells[SortIdx, y] > temp do
             Dec(y);
          if x <= y then
             begin
             tempRow.Clear;
             if (sGrid.cells[SortIdx, y] <> sGrid.cells[SortIdx, x]) then
                begin
                for i := 0 to fields - 1 do
                   tempRow.Add(sGrid.cells[i, x]);
                   sGrid.rows[x] := sGrid.rows[y];
                for i := 0 to fields - 1 do
                   sGrid.cells[i, y] := tempRow.Strings[i];
             end;
             Inc(x);
             Dec(y);
             end;
          end;
       tempRow.Free;
       qsortGrid(sGrid, StartIdx, y, SortIdx);
       qsortGrid(sGrid, x, EndIdx, SortIdx);
       end;
end;

//StringGrid Up...
Procedure RowUp(Sender : TObject);
var
  RCount,i : integer;
begin
  if TStringGrid(Sender).Row > 0 then
  begin
    TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount+1;
    RCount := TStringGrid(Sender).RowCount;
    for i  := 0 to TStringGrid(Sender).ColCount -1 do
    begin
      TStringGrid(Sender).Cells[i,RCount-1] := TStringGrid(Sender).Cells[i,TStringGrid(Sender).Row-1];
      TStringGrid(Sender).Cells[i,TStringGrid(Sender).Row-1] := TStringGrid(Sender).Cells[i,TStringGrid(Sender).Row];
      TStringGrid(Sender).Cells[i,TStringGrid(Sender).Row]   := TStringGrid(Sender).Cells[i,RCount-1];
    end;
    TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount -1 ;
    TStringGrid(Sender).Row      := TStringGrid(Sender).Row-1 ;
  end;
end;

//StringGrid Down...
Procedure RowDown(Sender : TObject);
var
  RCount,i : integer;
begin
  if (TStringGrid(Sender).Row < TStringGrid(Sender).RowCount-1) then
  begin
    TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount+1;
    RCount := TStringGrid(Sender).RowCount;
    for i  := 0 to TStringGrid(Sender).ColCount -1 do
    begin
      TStringGrid(Sender).Cells[i,RCount-1] := TStringGrid(Sender).Cells[i,TStringGrid(Sender).Row+1];
      TStringGrid(Sender).Cells[i,TStringGrid(Sender).Row+1] := TStringGrid(Sender).Cells[i,TStringGrid(Sender).Row];
      TStringGrid(Sender).Cells[i,TStringGrid(Sender).Row]   := TStringGrid(Sender).Cells[i,RCount-1];
    end;
    TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount -1 ;
    TStringGrid(Sender).Row      := TStringGrid(Sender).Row+1 ;
  end;
end;

// 화면변화에 맞춰서 그리드 Col Width 변화시키기.
// in_sgd : Grid, display_cnt : 화면에 보이는 Column 갯수
// 마지막 Column의 Width를 변화시킨다.
// 주의 : display_cnt는 Column의 Index가 아니라 Count입니다.
procedure ReSizeGridCol(in_sgd : TStringGrid; display_cnt : Integer);overload;
var
   wid    : Integer;
   ii     : Integer;
begin
   wid    := in_sgd.ClientWidth;

   for ii := 0 to display_cnt - 1 do
   begin
      wid := wid - in_sgd.ColWidths[ii];
   end;

   in_sgd.ColWidths[display_cnt - 1] := in_sgd.ColWidths[display_cnt - 1] + wid;
end;

// 화면변화에 맞춰서 그리드 Col Width 변화시키기.
// in_sgd : Grid, display_cnt : 화면에 보이는 Column 갯수, chg_col : 변화시킬 Column Index
// 주의 : display_cnt는 Column의 Index가 아니라 Count입니다. chg_col은 Index이구여...
procedure ReSizeGridCol(in_sgd : TStringGrid; display_cnt : Integer; chg_col : Integer);overload;
var
   wid    : Integer;
   ii     : Integer;
begin
   wid    := in_sgd.ClientWidth;

   for ii := 0 to display_cnt - 1 do
   begin
      wid := wid - in_sgd.ColWidths[ii];
   end;

   in_sgd.ColWidths[chg_col] := in_sgd.ColWidths[chg_col] + wid;
end;



// 진료전용
// 나이계산하기 (년, 개월, 일)
function Calc_Age(sFromDate:TDate;sBirthDate:String):String;
var
   Year,Month           : integer;
   i_Year,i_Month,i_Day : Word;
   v_Year,v_Month,v_Day : Word;
begin
   try
      DecodeDate(sFromDate, v_Year,v_Month,v_Day);
      //DecodeDate(sBirthDate, i_Year, i_Month, i_Day);
      i_Year  := StrToInt(copy(sBirthDate,1,4));
      i_Month := StrToInt(copy(sBirthDate,5,2));
      i_Day   := StrToInt(copy(sBirthDate,7,2));

        Year := v_Year - i_Year;

        if ( i_Month > v_Month ) or
           ( ( i_Month = v_Month ) and ( i_Day > v_Day ) ) then
        begin
            Dec(Year);
            v_Month := v_Month + 12 ;
        end;

        if i_Day <= v_Day then Month := v_Month - i_Month
        else                   Month := v_Month - i_Month - 1 ;

        // 15세이상은  '~세' 3세 미만은 '~세 ~개월' 1개월 미만은 '~일'
        if ( Year > 14 ) then
        begin
            Result := Format(     '%2s%-2s       ', [IntToStr(Year),'세']);
        end
        else
        begin
             if ( Year > 2 ) then
             begin
                //Result := Format('%2s%-2s%2s%-4s', [IntToStr(Year),'세',IntToStr(Month),'개월'])
                Result := Format('%2s%-1s%2s%-1s', [IntToStr(Year),'Y',IntToStr(Month),'M'])
             end
             else if ( Year > 0 ) and ( Year <= 2 ) then
             begin
                Result := Format('%4s%2s%-4s', ['',IntToStr(Year*12+Month),'개월']);
             end
             else if ( Year = 0 ) and (( Month = 0 ) or ( Month = 1 ) or ( Month = 2 )) then
             begin
                 DecodeDate(Now, v_Year,v_Month, v_Day); // 00.01.01
                 Result := Format('%8s', [IntToStr( Trunc(EncodeDate(v_Year,v_Month, v_Day)) -
                                                    Trunc(EncodeDate(i_Year,i_Month,i_Day)) + 1 ) + '일']);
             end
             else
             begin
                 Result := Format('    %2s%-4s', [IntToStr(Month),'개월']);
             end;
        end;
     except on EConvertError do
        Result := '0';
     end;
end;

//나이계산
//일령까지 계산해서 Year만 리턴
function Calc_AgeOnly(sFromDate:TDate;sBirthDate:String):Integer;
var
   Year,Month           : integer;
   i_Year,i_Month,i_Day : Word;
   v_Year,v_Month,v_Day : Word;
begin
   try
      DecodeDate(sFromDate, v_Year,v_Month,v_Day);
      //DecodeDate(sBirthDate, i_Year, i_Month, i_Day);
      i_Year  := StrToInt(copy(sBirthDate,1,4));
      i_Month := StrToInt(copy(sBirthDate,5,2));
      i_Day   := StrToInt(copy(sBirthDate,7,2));

      Year := v_Year - i_Year;

      if ( i_Month > v_Month ) or
         ( ( i_Month = v_Month ) and ( i_Day > v_Day ) ) then
      begin
          Dec(Year);
      end;

      Result := Year;
   except on EConvertError do
      Result := 0;
   end;
end;

//나이계산(단순)
//sFlag: A(한국식만나이:연도-생년), B(한국식나이:연도-생년+1)
function Calc_AgeSimple(sFlag:string;sFromDate:TDate;sBirthDate:String):Integer;
var
   Year,Month           : integer;
   i_Year,i_Month,i_Day : Word;
   v_Year,v_Month,v_Day : Word;
begin
   try
      DecodeDate(sFromDate, v_Year,v_Month,v_Day);
      //DecodeDate(sBirthDate, i_Year, i_Month, i_Day);
      i_Year  := StrToInt(copy(sBirthDate,1,4));
      i_Month := StrToInt(copy(sBirthDate,5,2));
      i_Day   := StrToInt(copy(sBirthDate,7,2));

      if sFlag = 'A' then
          Year := v_Year - i_Year
      else
          Year := v_Year - i_Year + 1;

      Result := Year;
   except on EConvertError do
      Result := 0;
   end;
end;


// 그리드를 지운다 (숨겨진 컬럼까지 지운다)
procedure Clear_Grid(TargetGrid: TObject; ColCnt: Integer);
var
  i, j : Integer;
begin
  if TargetGrid.ClassType = TStringGrid then
  begin
     if (TargetGrid as TStringGrid).FixedRows > 0 then
     begin
        for j := 0 to (TargetGrid as TStringGrid).RowCount - (TargetGrid as TStringGrid).FixedRows - 1 do
           for i := 0 to Colcnt - 1 do
              (TargetGrid as TStringGrid).Cells[i,(TargetGrid as TStringGrid).FixedRows+j] := '';
        (TargetGrid as TStringGrid).RowCount := (TargetGrid as TStringGrid).FixedRows + 1;
     end
     else
     begin
        for j := 0 to (TargetGrid as TStringGrid).RowCount - 1 do
           for i := 0 to Colcnt - 1 do
              (TargetGrid as TStringGrid).Cells[i,j] := '';
        (TargetGrid as TStringGrid).RowCount := 1;
     end;
  end
  else if TargetGrid.ClassType = TUltraGrid then
  begin
     if (TargetGrid as TUltraGrid).FixedRows > 0 then
     begin
        for j := 0 to (TargetGrid as TUltraGrid).RowCount - (TargetGrid as TUltraGrid).FixedRows - 1 do
           for i := 0 to Colcnt - 1 do
              (TargetGrid as TUltraGrid).Cells[i,(TargetGrid as TUltraGrid).FixedRows+j] := '';
        (TargetGrid as TUltraGrid).RowCount := (TargetGrid as TUltraGrid).FixedRows + 1;
     end
     else
     begin
        for j := 0 to (TargetGrid as TUltraGrid).RowCount - 1 do
           for i := 0 to Colcnt - 1 do
              (TargetGrid as TUltraGrid).Cells[i,j] := '';
        (TargetGrid as TUltraGrid).RowCount := 1;
     end;
  end;
end;

function GetTextWidth(Handle: HFont; str: String): Integer;
var
     DC: HDC;
     SaveFont: HFont;
     TextSize: TSize;
begin
     DC := GetDC(0);
     SaveFont := SelectObject(DC, Handle);
     GetTextExtentPoint32(DC, PChar(str), Length(str), TextSize);
     SelectObject(DC, SaveFont);
     ReleaseDC(0, DC);

     Result := TextSize.cx;
end;

function MakeSpace(Handle: HFont; Width: Integer): String; 
var
     SpaceWidth: Integer;
     i, cnt: Integer;
begin
     Result := '';
     SpaceWidth := GetTextWidth(Handle, ' ');

     cnt := (Width div SpaceWidth) - 1;
     for i := 0 to cnt do
         Result := Result + ' ';
end;


// 그리드 안에서 텍스트 정렬하기
function AlignedText(Handle: HFont; sText: String; iWidth: Integer; taType: TAlignment): String;
begin
     sText := Trim(sText);

     case taType of
          taLeftJustify  : Result := sText;
          taCenter       : Result := MakeSpace(Handle, (iWidth - GetTextWidth(Handle, sText)) div 2) + sText;
          taRightJustify : Result := MakeSpace(Handle, iWidth - GetTextWidth(Handle, sText)) + sText;
     end;
end;

// 폼을 close 할때 생성한 메뉴를 삭제한다.
procedure DeleteMenu(sMainFormName, sSubFormName : TObject; sMenuName: String );
var
   sMainMenu, DelItem : TMenuItem;
   i, j : Integer;
begin
   // 메인메뉴를 찾는다.
   for i := 0 to (sMainFormName as TForm).ComponentCount - 1 do
   begin
      if (sMainFormName as TForm).Components[i].Name = sMenuName then
      begin
         sMainMenu := ((sMainFormName as TForm).Components[i]) as TMenuItem;

         // Close 된 폼의 Caption 을 이용하여 메뉴를 지운다.
         for j := 0 to (((sMainFormName as TForm).Components[i]) as TMenuItem).Count - 1 do
         begin
            if (((sMainFormName as TForm).Components[i]) as TMenuItem).Items[j].Caption = (sSubFormName as TForm).Caption then
               DelItem := (((sMainFormName as TForm).Components[i]) as TMenuItem).Items[j];
         end;
         (((sMainFormName as TForm).Components[i]) as TMenuItem).Delete((((sMainFormName as TForm).Components[i]) as TMenuItem).IndexOf(DelItem));

         break;
      end;
   end;
end;

// 7.yyyymmddhh24miss를 yyyy-mm-dd hh24:mi:ss로 변환
function  ConvertDDate(DTstr:String):String;
begin
    DTstr := Trim(DTstr);

    if (DTstr = '') then begin
        Result := '';
        Exit;
    end;

    if (length(DTstr) > 8) and (length(DTstr) < 14) then
        DTstr := DTstr + copy('000000',1,(14-length(DTstr)));

    Result := copy(Dtstr,1,4)+'-'+copy(Dtstr,5,2)+'-'+copy(Dtstr,7,2)+' '+
              copy(Dtstr,9,2)+':'+copy(Dtstr,11,2);
end;

// 8.yyyymmdd를 yyyy-mm-dd로 변환
function  ConvertSDate(DTstr:String):String;
begin
    if (Trim(DTstr) = '') then
        Result := ''
    else
        Result := copy(Dtstr,1,4)+'-'+copy(Dtstr,5,2)+'-'+copy(Dtstr,7,2);
end;

// 9.yyyy-mm-dd hh24:mi:ss를 yyyymmddhh24miss로 변환
function InvertLDate(Dtstr:String):String;
begin
    if (Trim(DTstr) = '') then begin
        Result := '';
        Exit;
    end;

    Result := copy(Dtstr,1,4)  + copy(Dtstr,6,2)  + copy(Dtstr,9,2)+
              copy(Dtstr,12,2) + copy(Dtstr,15,2) + copy(Dtstr,18,2);
end;

// 10.yyyy-mm-dd를 yyyymmdd로 변환
function InvertSDate(DTstr:String):String;
begin
    if (Trim(DTstr) = '') then begin
        Result := '';
        Exit;
    end;

    Result := copy(Dtstr,1,4) + copy(Dtstr,6,2) + copy(Dtstr,9,2);
end;

// Grid Cell의 색상을 설정한다.
Procedure SetGridColor(grid : TStringgrid; Col : Integer; Row: Integer; Color_BG : TColor; Color_FONT : Tcolor);
var
  StartPos_l, StartPos_t : Integer;
  Rect : TRect;
begin
   Rect := grid.CellRect(col, row);

   with grid.Canvas do begin
      Brush.color := Color_BG;
      Font.Color := Color_FONT;
      FillRect(Rect);
      StartPos_l := Rect.Left ;// + trunc(((Rect.Right - Rect.Left)-
      StartPos_t := Rect.Top  ; //+ trunc(((Rect.Bottom - Rect.Top)-
      TextOut(StartPos_l,StartPos_t,(grid.Cells[Col,Row]));
   end;
end;

function InputNum(in_Key : Char) : Char;
begin
   result := in_Key;
   if ( in_Key = #8 ) or
      ( in_Key = #13 ) or
      ( in_Key = #27 ) then
   begin
      Exit;
   end;

   if (( in_Key > '9' ) or
      ( in_Key < '0' )) and
      ( in_Key <> '.') then
   begin
      result := #0;
   end;
end;

function InputInt(in_Key : Char) : Char;
begin
   result := in_Key;
   if ( in_Key = #8 ) or
      ( in_Key = #13 ) or
      ( in_Key = #27 ) then
   begin
      Exit;
   end;

   if not(in_Key in ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '-']) then
   begin
      result := #0;
   end;
end;

function InputReal(in_Key : Char) : Char;
begin
   result := in_Key;
   if ( in_Key = #8 ) or
      ( in_Key = #13 ) or
      ( in_Key = #27 ) then
   begin
      Exit;
   end;

   if not(in_Key in ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '-', '.']) then
   begin
      result := #0;
   end;
end;

// Word Wrap이 True인 경우 그리드 RowHight 변화시키기.
procedure ReSizeGridRow(in_ugd : TUltraGrid; ACol : Integer; ARow : Integer);overload;
var
   d_height    : Integer;
   f_height    : Integer;
   col_width  : Integer;
   txt_width  : Integer;
   row_height : Integer;
   i          : Integer;
begin
   if ( in_ugd.Wrap ) then
   begin
      d_height   := in_ugd.DefaultRowHeight;
      f_height   := in_ugd.Canvas.TextHeight(in_ugd.Cells[ACol,ARow]);
      col_width  := in_ugd.ColWidths[ACol];
      row_height := in_ugd.RowHeights[ARow];
      txt_width  := in_ugd.Canvas.TextWidth(in_ugd.Cells[ACol,ARow]);

      if ( txt_width = 0 ) then
      begin
         i := 0;
      end
      else
      begin
         i := ICeil_Pos(txt_width/col_width,0) - 1;
      end;

      if ( row_height <> (d_height + (i*f_height)) ) then
      begin
         in_ugd.RowHeights[ARow] := (d_height + (i*f_height));
      end;
   end;
end;

// Word Wrap이 True인 경우 그리드 RowHight 변화시키기.
procedure ReSizeGridRow(in_ugd : TUltraGrid; Col1 : Integer; Col2 : Integer; ARow : Integer);overload;
var
   d_height   : Integer;
   row_height : Integer;
   f_height   : Integer;

   col_width1 : Integer;
   txt_width1 : Integer;

   col_width2 : Integer;
   txt_width2 : Integer;

   i1         : Integer;
   i2         : Integer;
   i          : Integer;
begin
   if ( in_ugd.Wrap ) then
   begin
      d_height   := in_ugd.DefaultRowHeight;
      row_height := in_ugd.RowHeights[ARow];
      f_height   := in_ugd.Canvas.TextHeight(in_ugd.Cells[Col1,ARow]);

      col_width1 := in_ugd.ColWidths[Col1];
      txt_width1 := in_ugd.Canvas.TextWidth(in_ugd.Cells[Col1,ARow]);

      col_width2 := in_ugd.ColWidths[Col2];
      txt_width2 := in_ugd.Canvas.TextWidth(in_ugd.Cells[Col2,ARow]);

      if ( txt_width1 = 0 ) then
      begin
         i1 := 0;
      end
      else
      begin
         i1 := ICeil_Pos(txt_width1/col_width1,0) - 1;
      end;

      if ( txt_width2 = 0 ) then
      begin
         i2 := 0;
      end
      else
      begin
         i2 := ICeil_Pos(txt_width2/col_width2,0) - 1;
      end;

      i := Max(i1,i2);

      if ( row_height <> (d_height + (i*f_height)) ) then
      begin
         in_ugd.RowHeights[ARow] := (d_height + (i*f_height));
      end;
   end;
end;

// Word Wrap이 True인 경우 그리드 RowHight 변화시키기.
procedure ReSizeGridRow(in_ugd : TUltraGrid; Col1 : Integer; Col2 : Integer; Col3 : Integer; ARow : Integer);overload;
var
   d_height   : Integer;
   row_height : Integer;
   f_height   : Integer;

   col_width1 : Integer;
   txt_width1 : Integer;

   col_width2 : Integer;
   txt_width2 : Integer;

   col_width3 : Integer;
   txt_width3 : Integer;

   i1         : Integer;
   i2         : Integer;
   i3         : Integer;
   i          : Integer;
begin
   if ( in_ugd.Wrap ) then
   begin
      d_height   := in_ugd.DefaultRowHeight;
      row_height := in_ugd.RowHeights[ARow];
      f_height   := in_ugd.Canvas.TextHeight(in_ugd.Cells[Col1,ARow]);

      col_width1 := in_ugd.ColWidths[Col1];
      txt_width1 := in_ugd.Canvas.TextWidth(in_ugd.Cells[Col1,ARow]);

      col_width2 := in_ugd.ColWidths[Col2];
      txt_width2 := in_ugd.Canvas.TextWidth(in_ugd.Cells[Col2,ARow]);

      col_width3 := in_ugd.ColWidths[Col3];
      txt_width3 := in_ugd.Canvas.TextWidth(in_ugd.Cells[Col3,ARow]);

      if ( txt_width1 = 0 ) then
      begin
         i1 := 0;
      end
      else
      begin
         i1 := ICeil_Pos(txt_width1/col_width1,0) - 1;
      end;

      if ( txt_width2 = 0 ) then
      begin
         i2 := 0;
      end
      else
      begin
         i2 := ICeil_Pos(txt_width2/col_width2,0) - 1;
      end;

      if ( txt_width3 = 0 ) then
      begin
         i3 := 0;
      end
      else
      begin
         i3 := ICeil_Pos(txt_width3/col_width3,0) - 1;
      end;

      i := Max(i3,Max(i1,i2));

      if ( row_height <> (d_height + (i*f_height)) ) then
      begin
         in_ugd.RowHeights[ARow] := (d_height + (i*f_height));
      end;
   end;
end;

// Word Wrap이 True인 경우 그리드 RowHight 변화시키기.
procedure ReSizeGridRow(in_ugd : TUltraGrid; Col1 : Integer; Col2 : Integer; Col3 : Integer; Col4 : Integer; ARow : Integer);overload;
var
   d_height   : Integer;
   row_height : Integer;
   f_height   : Integer;

   col_width1 : Integer;
   txt_width1 : Integer;

   col_width2 : Integer;
   txt_width2 : Integer;

   col_width3 : Integer;
   txt_width3 : Integer;

   col_width4 : Integer;
   txt_width4 : Integer;

   i1         : Integer;
   i2         : Integer;
   i3         : Integer;
   i4         : Integer;
   i          : Integer;
begin
   if ( in_ugd.Wrap ) then
   begin
      d_height   := in_ugd.DefaultRowHeight;
      row_height := in_ugd.RowHeights[ARow];
      f_height   := in_ugd.Canvas.TextHeight(in_ugd.Cells[Col1,ARow]);

      col_width1 := in_ugd.ColWidths[Col1];
      txt_width1 := in_ugd.Canvas.TextWidth(in_ugd.Cells[Col1,ARow]);

      col_width2 := in_ugd.ColWidths[Col2];
      txt_width2 := in_ugd.Canvas.TextWidth(in_ugd.Cells[Col2,ARow]);

      col_width3 := in_ugd.ColWidths[Col3];
      txt_width3 := in_ugd.Canvas.TextWidth(in_ugd.Cells[Col3,ARow]);

      col_width4 := in_ugd.ColWidths[Col4];
      txt_width4 := in_ugd.Canvas.TextWidth(in_ugd.Cells[Col4,ARow]);

      if ( txt_width1 = 0 ) then
      begin
         i1 := 0;
      end
      else
      begin
         i1 := ICeil_Pos(txt_width1/col_width1,0) - 1;
      end;

      if ( txt_width2 = 0 ) then
      begin
         i2 := 0;
      end
      else
      begin
         i2 := ICeil_Pos(txt_width2/col_width2,0) - 1;
      end;

      if ( txt_width3 = 0 ) then
      begin
         i3 := 0;
      end
      else
      begin
         i3 := ICeil_Pos(txt_width3/col_width3,0) - 1;
      end;

      if ( txt_width4 = 0 ) then
      begin
         i4 := 0;
      end
      else
      begin
         i4 := ICeil_Pos(txt_width4/col_width4,0) - 1;
      end;

      i := Max(i4,Max(i3,Max(i1,i2)));

      if ( row_height <> (d_height + (i*f_height)) ) then
      begin
         in_ugd.RowHeights[ARow] := (d_height + (i*f_height));
      end;
   end;
end;

function RRound_pos(Amount : Real; Pos : Integer) : Real;
var
//   i, j : Integer;
   j : Integer;
   aamount : Real48;
begin
   result := 0;

   if ( Amount >= 0 ) then
   begin
     j := 1;
   end
   else
   begin
      j := -1;
   end;

   aamount := Abs(amount);
   aamount := (aamount * Power(10,Pos));

   if ( aamount - trunc(aamount) = 0.5 ) then
   begin
      aamount := aamount + 0.1;
   end;

   aamount := Round(aamount);
   aamount := (aamount/Power(10,Pos));

   result := aamount*j;
end;

function RTrunc_pos(Amount : Real; Pos : Integer) : Real;
var
//   i, j : Integer;
   j : Integer;
   aamount : Real;
begin
   result := 0;

   if ( Amount >= 0 ) then
   begin
      j := 1;
   end
   else
   begin
      j := -1;
   end;

   aamount := Abs(amount);
   aamount := (aamount * Power(10,Pos));
   aamount := Trunc(aamount);
   aamount := (aamount/Power(10,Pos));

   result := aamount*j;
end;

function RCeil_pos(Amount : Real; Pos : Integer) : Real;
var
//   i, j : Integer;
   j : Integer;
   aamount : Real;
begin
   result := 0;

   if ( Amount >= 0 ) then
   begin
      j := 1;
   end
   else
   begin
      j := -1;
   end;

   aamount := Abs(amount);
   aamount := (aamount * Power(10,Pos));
   aamount := Ceil(aamount);
   aamount := (aamount/Power(10,Pos));

   result := aamount*j;
end;

function IRound_pos(Amount : Real; Pos : Integer) : Integer;
var
//   i, j    : Integer;
   j    : Integer;
   aamount : Real48;
   amt     : Integer;
begin
   result := 0;

   if ( Pos < 0 ) then Exit;

   if ( Amount >= 0 ) then
   begin
     j := 1;
   end
   else
   begin
      j := -1;
   end;

   aamount := Abs(amount);
   aamount := (aamount / Power(10,Pos));

   if ( aamount - trunc(aamount) = 0.5 ) then
   begin
      aamount := aamount + 0.1;
   end;

   amt := Round(aamount);
   amt := (amt * Round(Power(10,Pos)));

   result := amt*j;
end;

function ITrunc_pos(Amount : Real; Pos : Integer) : Integer;
var
   j    : Integer;
   aamount : Real;
   amt     : Integer;
begin
   result := 0;

   if ( Pos < 0 ) then Exit;

   if ( Amount >= 0 ) then
   begin
      j := 1;
   end
   else
   begin
      j := -1;
   end;

   aamount := Abs(amount);
   aamount := (aamount / Power(10,Pos));
   amt := Trunc(aamount);
   amt := (amt * Round(Power(10,Pos)));

   result := amt*j;
end;

function ICeil_pos(Amount : Real; Pos : Integer) : Integer;
var
   j    : Integer;
   aamount : Real;
   amt     : Integer;
begin
   result := 0;

   if ( Pos < 0 ) then Exit;
   
   if ( Amount >= 0 ) then
   begin
      j := 1;
   end
   else
   begin
      j := -1;
   end;

   aamount := Abs(amount);
   aamount := (aamount / Power(10,Pos));
   amt     := Ceil(aamount);
   amt     := (amt * Round(Power(10,Pos)));

   result := amt*j;
end;

procedure SetHangeulMode(SetHangeul: Boolean; Handle: THandle);
var
   tMode: HIMC;
begin
   tMode := ImmGetContext(Handle);
   if SetHangeul then
      ImmSetConversionStatus(tMode, IME_CMODE_HANGEUL,
                                     IME_CMODE_HANGEUL)
   else
      ImmSetConversionStatus(tMode, IME_CMODE_ALPHANUMERIC,
                                     IME_CMODE_ALPHANUMERIC);
end;


function EnumWindowsProc(hWindow: HWND; var lParam: TPIDandHWND): Bool;stdcall;
var
    pID: DWORD;
begin
    GetWindowThreadProcessID(hWindow, @pID);

    if lParam.pID = pID Then
    begin
        lParam.hWindow := hWindow;
        Result := False;
    end
    else
        result := true;
end;

function WindowFromProcessID(pID: DWORD): HWND;
var
    Param: TPIDandHWND;
begin
    Param.pID     := pID;
    Param.hWindow := 0;

    EnumWindows(@EnumWindowsProc, integer(@Param));

    result := Param.hWindow;
end;

//(추가. 2002.12.09 이용언) 로그인정보 저장//(추가. 2002.12.09 이용언) 로그인정보 저장
function HcmLogin.LoginInfo(Gubun,userid,prgid, chktm,userip :String): Integer;
begin
   Result := -1;

   txAlloc;

   SetFldName('S_TYPE1;S_EDITID;S_TYPE2;S_TYPE3;S_EDITIP');
   SetFldValue(0,[Gubun,userid,prgid, chktm, userip]);

   if (txPutF('CM_LOGSV_I1')) then
   begin
      GetFldVar('S_STRING1', sChktm);

      Result := GetRecordCnt('S_STRING1');

      txFree;
   end;
end;

function SaveLoginInfo(Gubun,Loginid, PrgId, Chktm, Loginip : String):String;
var
   Row : integer;
   cmLogin : HcmLogin;
begin
   Result := '';
   cmLogin := HcmLogin.create;

   Row := cmLogin.LoginInfo(Gubun,Loginid,Prgid,chktm,Loginip);

   if Row <> 1 then
   begin
      cmLogin.Free;
      //ShowMessage('로그인정보저장중 에러가 발생했습니다.');
      Exit;
   end;

   G_LOGTM := '';
   Result := cmLogin.sChktm[0];
   cmLogin.Free;
end;

//20131205 KMS 로그인 관련 파라미터 추가
function SaveLoginInfo2(Gubun,Loginid, PrgId, ProId,userNm,deptNm,Chktm, Loginip : String):String;
var
   Row : integer;
   cmLogin : HcmLogin;
begin
   Result := '';
   cmLogin := HcmLogin.create;

   Row := cmLogin.LoginInfo2(Gubun,Loginid,Prgid,ProId,userNm,deptNm,chktm,Loginip);

   if Row <> 1 then
   begin
      cmLogin.Free;
      //ShowMessage('로그인정보저장중 에러가 발생했습니다.');
      Exit;
   end;

   G_LOGTM := '';
   Result := cmLogin.sChktm[0];
   cmLogin.Free;
end;

//20131205 KMS 로그인 관련 파라미터 추가
function HcmLogin.LoginInfo2(Gubun,userid,prgid,proid,userNm,deptNm, chktm,userip :String): Integer;
begin
   Result := -1;

   txAlloc;

   SetFldName('S_TYPE1;S_EDITID;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_EDITIP');
   SetFldValue(0,[Gubun,userid,prgid, chktm,proid,userNm,deptNm, userip]);

   if (txPutF('CM_LOGSV_I1')) then
   begin
      GetFldVar('S_STRING1', sChktm);

      Result := GetRecordCnt('S_STRING1');

      txFree;
   end;
end;

function ShowMsg(Msg, Title : String; MsgType : TMsgType) : LongInt;
begin
  Result := -1;

  Result := -1;
  case MsgType of
    msgOk :
      result := messageBoxA(0, PChar(Msg), PChar(Title), MB_OK + MB_ICONINFORMATION);
    msgError :
      result := messageBoxA(0, PChar(Msg), PChar(Title), MB_OK + MB_ICONERROR);
    msgYesNo :
      result := messageBox(0, PChar(Msg), PChar(Title), MB_YESNO + MB_ICONQUESTION);
    msgYesNoCancel :
      result := messageBox(0, PChar(Msg), PChar(Title), MB_YESNOCANCEL + MB_ICONQUESTION);
    msgRetryCancel :
      result := messageBox(0, PChar(Msg), PChar(Title), MB_RETRYCANCEL + MB_ICONQUESTION);
  end;
end;

function PubPscheck(sPatno: String):Boolean;
var
 iRcnt : integer;
begin
  Result := False;
  if sPatno <> '' then
  begin
    appatbat        := Happatbat.Create;
    appatbat.sPatno := sPatno;
    appatbat.sFlag  := '1';

    iRcnt := appatbat.patba_s3;
    if iRcnt > 0 then
    begin
      if appatbat.sPscheck[0] ='Y' then
        Result := True;
        {
        ShowMsg('                           <진료정보 비밀유지 요청>'
                + #13
                + #13
                + #13
                + '이 기록은 환자의 요청에 의해 개인 인적사항을 포함한 의무기록 전체에 대하여'
                + #13
                + #13
                + '비밀보호를 요청한 상태입니다.'
                + #13
                + #13
                + #13
                + #13
                + '그러므로 의료법과 관계법령에서 특별히 정해진 경우가 아닌 한, 환자 본인을 제외'
                + #13
                + #13
                + '한 어느 누구에게도 환자의 인적사항 및 의무기록 내용에 대한 열람 및 사본발행을'
                + #13
                + #13
                + '하여서는 안됩니다'
                ,'Notice',msgError);
        }
    end;
  end;
  appatbat.Free;
end;

// 2015인증평가, 권한관리3차(출력물관리) by 곽현, TBitBtn, KimDaeYong 2015-10-14
procedure CheckButton(sEmpno, sExeid, sFormid: string; var sBtnname : TBitBtn);
var
    RowNo, i : integer;
var
   irow : Integer;
begin
    Screen.Cursor := crHourGlass;
    ccbtnckt := Hccbtnckt.Create;
    try
        ccbtnckt.sType1 := sEmpno;
        ccbtnckt.sType2 := sExeid;
        ccbtnckt.sType3 := sFormid;
        ccbtnckt.sType4 := sBtnname.Name;

        RowNo := ccbtnckt.listccbtnckt1;

        if RowNo <= 0 then
        begin
            if RowNo = -1 then
            begin
                Showmessage('출력권한 조회중 에러 발생');
                exit;
            end;
            exit;
        end;
        if ccbtnckt.sCheck2[0] = 'OK' then
        begin

            sBtnname.Enabled := true;
        end
        else
            sBtnname.Enabled := false;
    finally
      ccbtnckt.Free;
      Screen.Cursor := crDefault;
    end;
end;


// 2015인증평가, 권한관리3차(출력물관리) by 곽현, TSpeedButton,  KimDaeYong 2015-10-14
procedure CheckButton2(sEmpno, sExeid, sFormid: string; var sBtnname : TSpeedButton);
var
    RowNo, i : integer;
var
   irow : Integer;
begin
    Screen.Cursor := crHourGlass;
    ccbtnckt := Hccbtnckt.Create;
    try
        ccbtnckt.sType1 := sEmpno;
        ccbtnckt.sType2 := sExeid;
        ccbtnckt.sType3 := sFormid;
        ccbtnckt.sType4 := sBtnname.Name;

        RowNo := ccbtnckt.listccbtnckt1;

        if RowNo <= 0 then
        begin
            if RowNo = -1 then
            begin
                Showmessage('출력권한 조회중 에러 발생');
                exit;
            end;
            exit;
        end;
        if ccbtnckt.sCheck2[0] = 'OK' then
        begin

            sBtnname.Enabled := true;
        end
        else
            sBtnname.Enabled := false;
    finally
      ccbtnckt.Free;
      Screen.Cursor := crDefault;
    end;
end;

// 2015인증평가, 권한관리3차(출력물관리Log) by 곽현, KimDaeYong 2015-10-14
procedure Prtlog(sExeid, sFormid, sBtnname, sMeddept, sEmpno, sJikgun, sJikgup, sEditip : string);
var
    irow, RowNo, i : integer;
begin
    Screen.Cursor := crHourGlass;
    ccprtckt := Hccprtckt.Create;
    try
        ccprtckt.sType1 := sExeid;
        ccprtckt.sType2 := sFormid;
        ccprtckt.sType3 := sBtnname;
        ccprtckt.sType4 := sMeddept;
        ccprtckt.sType5 := sEmpno;
        ccprtckt.sType6 := sJikgun;
        ccprtckt.sType7 := sJikgup;
        ccprtckt.sType8 := sEditip;

        RowNo := ccprtckt.InsertCcprtckt1;

        if RowNo < 0 then
        begin
            Showmessage('출력로그 입력 중 에러 발생');
            exit;
        end;
    finally
      ccprtckt.Free;
      Screen.Cursor := crDefault;
    end;
end;

//청구소프트웨어암호화인증(접근기록관리) by 곽현.  KimDaeYong 2018-12-19
function CheckAccess(sUserid, sUserip, sPrgid, sFormid, sJobtype: string): Boolean;
var
    RowNo : integer;
begin
    Screen.Cursor := crHourGlass;
    ccaccest := Hccaccest.Create;
    try
        ccaccest.sType1 := sUserid;
        ccaccest.sType2 := sUserip;
        ccaccest.sType3 := sPrgid;
        ccaccest.sType4 := sFormid;
        ccaccest.sType5 := sJobtype;

        RowNo := ccaccest.InsCcaccest;
        if RowNo < 0 then
        begin
            Showmessage('접속기록 입력중 오류');
            result := False;
            exit;
        end;
        result   := True;
    finally
      ccaccest.Free;
      Screen.Cursor := crDefault;
    end;
end;


end.

