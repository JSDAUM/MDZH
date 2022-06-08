unit MDC100U1;

interface

uses
  Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs, ComCtrls,
  StdCtrls, Buttons, Grids, ExtCtrls, Mask, WinTypes, WinProcs, MPlayer, IniFiles, UltraGrid, Imm,
  OleServer, Excel97, Printers, ComObj, SysUtils, Variants, StrUtils;
var
    ResultNO, ResultNm, ResultSexAge, ResultAdmDate, ResultMedDept,
    ResultChaDr, ResultGenDr, ResultTelNo, ResultAddress, ResultResno, ResultDenPatno : string;  // 리턴되는 환자번호, 환자명, 환자성별나이
    ResultHospNm, ResultHospType, ResultHospTypeCd : String; // (추가)
    ResultCon : Boolean;          // 리턴조건
    ResultSms, ResultInfuse : string;   //메시지수신동의 변수 추가. KimDaeYong 2021-12-16

// 1.진료과코드 가져오기
function GetMedDept(CdCombo, NmCombo:TComboBox):integer;

// 1.1 통계용 진료과코드 가져오기
function GetSttDept(CdCombo, NmCombo:TComboBox):integer;

// 1.2 수술진료과 순서 가져오기
function GetOpMedDept(CdCombo, NmCombo:TComboBox):integer;

//1.1.2 특수부서 코드가져오기.
function GetSpecDept(CdCombo, NmCombo:TComboBox):Integer;

// 2.병동코드 가져오기
function GetWardNo(CdCombo, NmCombo:TComboBox):integer;

//신생아실과 신생아중환자실은 같이 보게 함. 20140221. KYA.
function GetWardNo1(CdCombo, NmCombo:TComboBox):integer;

// 2-1.현위치병동코드 가져오기
function GetNowPos(CdCombo, NmCombo:TComboBox):integer;

//NICU와 NBR은 같이 볼수 있게 함. 20140221. KYA
function GetNowPos1(CdCombo, NmCombo:TComboBox):integer;

// 3.사용자코드 가져오기
procedure GetUserId(SelType1,SelType2: string; CdCombo, NmCombo:TComboBox);

// 3.1사용자코드 가져오기3, KimDaeYong 2014-01-28
procedure GetUserId3(SelType1,SelType2: string; CdCombo, NmCombo, LicCombo:TComboBox);

// 4.환자명/환자번호로 대상자찾기
function GetPatName(InputText,IdText, NmText: TWinControl):Boolean;

// 4.1 수술환자명/환자번호로 대상자찾기
function GetOpPatName(InputText,IdText, NmText: TWinControl):Boolean;

// 4.2 환자명/환자번호로 대상자찾기. 메시지수신동의 추가. KimDaeYong 2021-12-16
function GetPatNameSms(InputText,IdText,NmText,SmsText,InfuseText: TWinControl): Boolean;

// 4.5 환자명/환자번호로 대상자찾기
function GetPatNameFlag(InputText,IdText, NmText, SexAge: TWinControl;sFlag:String):Boolean;

// 4.6 입원(1)/퇴원(2) 환자명/환자번호로 대상자찾기
function GetAdmOutList(InputText,IdText, NmText, SexAge, MedDept,
                       AdmDate, ChaDr, GenDr, TelNo, Address : TWinControl;sFlag:String):Boolean;

// 4.7 환자명/환자번호로 대상자찾기
function GetPatNameFlag2(InputText,IdText, NmText, SexAge, Resno : TWinControl;sFlag:String):Boolean;

// 4.8 치과번호
function GetPatNameFlag3(InputText,IdText, NmText, SexAge, DenPatno: TWinControl;sFlag:String): Boolean;

// 5.사용자명/사용자번호 대상자찾기
function GetUserName(DrNurse:String;InputText,IdText, NmText: TWinControl):Boolean;

// 6.HD / POD 계산
function GetHdPodCnt(Gubun, AdmOpDate : string; sFromDate :TDate):string;

// 7.yyyymmddhh24miss를 yyyy-mm-dd hh24:mi로 변환
function  ConvertDDate(DTstr:String):String;

// 7-2.yyyymmddhh24miss를 yyyy-mm-dd hh24:mi:ss로 변환
function  ConvertDDate2(DTstr:String):String;

// 7-3.yyyymmddhh24miss를 yy-mm-dd hh24:mi로 변환
function  ConvertDDate3(DTstr:String):String;

// 8.yyyymmdd를 yyyy-mm-dd로 변환
function  ConvertSDate(DTstr:String):String;

// 8-1.hh24mi를 hh24:mi로 변환
function  ConvertDTime(DTstr:String):String;

// 8-2.yyyymmdd를 yyyy년 mm월 dd일로 변환
function  ConvertSDate2(DTstr:String):String;

// 9.yyyy-mm-dd hh24:mi:ss를 yyyymmddhh24miss로 변환
function  InvertLDate(DTstr:String):String;

// 10.yyyy-mm-dd를 yyyymmdd로 변환
function  InvertSDate(DTstr:String):String;

// 10-1.hh24:mi를 hh24mi로 변환
function  InvertLTime(DTstr:String):String;

// 11-1.진료공통 소분류코드,명 가져오기
procedure GetComName(ComCd: string; CdCombo, NmCombo:TComboBox);

// 11-2.진료공통 소분류코드,명 가져오기
procedure GetComName2(ComCd: string; TSL:TStringList);

// 11-3.진료공통 소분류코드,명 가져오기
procedure GetComName3(ComCd1,ComCd2: string; CdCombo, NmCombo:TComboBox);

// 12. Line Feed와 Carrage Return 문자를 string에서 제거.
function  RemoveLFCR(Str:String):String;

// 13. Tag값 1 변환
procedure TagChange(Sender: TObject);

// 14. Tag값 0로 변환
procedure TagClear(Sub_Form:TForm);

// 15. Tag값 1값 존재여부 check
function TagChgChk(Sub_Form:TForm):Boolean;

// 16. String 내의 특정 문자 삭제
function DelChar( const Str : String ; DelC : Char ) : String;

// 17. 그리드의 NULL 여부 체크
function Is_Null_Record(Sender: TObject;Row:Integer):Boolean;

// 18. 진료지원공통 소분류코드,명 가져오기
procedure GetSDComName(ComCd: string; CdCombo, NmCombo:TComboBox);

// 19. 한영키를 영문키로 변환
procedure EngKeyChg(Handle1:THandle);

// 20. 마지막 날짜 가져오기
function  dateEndOfMonth(D: TDateTime): TDateTime;

// 21. Excel처리
procedure ExcelSave(ExcelGrid:TUltraGrid;Title:String; Disp:Integer);

// 22.처방발행처코드 가져오기
function GetOrderDpNo(CdCombo, NmCombo:TComboBox):integer;

// 23.컨설트의뢰과코드 가져오기
function GetConslDpNo(CdCombo, NmCombo:TComboBox):integer;

// 24.사용자 정보 변환
function  ChgUserInfo(UserId: String): Boolean;

// 25.한글을 한글자로 인식하여 글자 길이값 구하는 함수
function  HLength(str1:String):Integer;

// 26.프린터 상태 체크.
function IsNotPrinterReady:Boolean;

// 27.실행화일 실행중인지 체크.
procedure prCantDupExe(fmName:String);

// 28. 체크 메세지
procedure prInfMsg(sMsg: String); overload;

// 29.제증명서 화면이 실행 중이면 죽이기.
procedure KillChartShow;

// 30. String내의 특정 문자열 삭제
function DeleteStr(OrigStr,DelStr: String):String;

// 31. 구분자를 기준으로 String만 분리.
function SeperateData(OrgStr, sMark:string; iPos:integer):string;

// 32. 간호행정용 부서 조회
function GetNurseDt(CdCombo, NmCombo:TComboBox):integer;

// 33. 문자열 처음부터 KeyStr이 나오기 직전까지를 잘라낸다.
function  FindStr(Fstr:String;KeyStr:String):String;

// 34. 문자열 처음부터 KeyStr까지를 잘라낸 나머지를 Return.
function  FindRStr(Fstr:String;KeyStr:String):String;

// 35. 외부 공통코드 List 가져오기 (CCCOMCDT)
procedure GetCComCdList(Code1,Code2: String; CdCombo,NmCombo: TComboBox);

// 36. CheckBox.Checked Value에 따라 Insert value Return
function GetCheckedValue(cbxItem:TCheckBox):String;

// 37. Value 값에 따라 CheckBox.Checked Value Set
function SetCheckedValue(sValue:String):Boolean;

// 38. Caution Check
function CautionSelect(Patno:String;Target:TControl):String;

// 39. 퇴원심사여부 Check
function CheckBckStat(PatNo,AdmDate:String; var vStatus:String):Boolean;

// 40. 입원중인 환자인지 Check.
function CheckAdmPat(PatNo:String; var vPatSect:String):Boolean;

// 41. 병원타이틀
function LocateTitle(sLocate:String):String;

// 42. 의사별 임상연구번호 List 가져오기 (SDLABMST)
procedure GetLabNoList(MedDept,MedDr: String; CdCombo: TComboBox);

// 43. Transaction 레벨을 알아낸다.
// 1: 트랜잭션상태, 0: 트랜잭션상태가 아님, -1 : 에러
function GetLevTRSC : Integer;

//44. 화면에서의 Commit 시 Trunsaction 시작
function BeginTRSC : Boolean;

//45. 화면에서의 Commit 시 Rollback
procedure AbortTRSC;

//46. 화면에서의 Commit 시 Transaction 종료(commit)
function EndTRSC : Boolean;

//47. Multi Grid Excel 생성 
procedure MultiExcelSave(ExcelGrid1,ExcelGrid2,ExcelGrid3,ExcelGrid4:TUltraGrid;MainTitle,Title1,Title2,Title3,Title4:String; Disp:Integer);
//48. 여러개의 파라미터 처리
function SeperateInputStr(InputStr:String;Seperator:Char;Cnt:Integer):Variant;
//49. 문자열 처음부터 KeyStr까지를 잘라낸 나머지를 Return.(문자열의 앞에서 부터)
function FindRRStr(Fstr:String;KeyStr:String):String;
// 50. String내의 특정 문자열을 다른 문자열로 대체
function ReplaceStr(TextStr,OrigStr,ChgStr: String):String;
// 51. 장기이식 끝내기
procedure KillFormShow;
// 52. 처방상세 편집시 치식정보 Display
function EditTeethInfo(teeUpRt,teeUpLt,teeDwLt,teeDwRt: String): String;

// 53. 횟수별 기본용법 지정
function GetDefaultMethCd(OrdGrp,Cnt:String): String;
// 53-1. 횟수별 기본용법 지정(주사약B2). KimDaeYong 2017-04-25
function GetDefaultMethCd2(MethCd,Cnt:String): String;

// 54. Float Value Formatting (Ex. 0.6666666...==> '0.67')
function SetFloat(fValue:Double): String;

// 55. 요일갖구오기
function GetDayofWeek(Adate : TDatetime; Type1 : String): String;

//56. 응급환자 퇴실처리여부 Check (APOPDLST.OutDate)
function CheckErOutDate(PatNo:String):Boolean;

//57. 수간호사명 가져오기.
function HnNameSelect(sDeptCd, sLocate : String):String;

//58.사용자코드 가져오기2
procedure GetUserId2(SelType1,SelType2,Locate: string; CdCombo, NmCombo:TComboBox);

//59.병실 등급
function GetWardGrade(CdCombo, NmCombo:TComboBox;sDeptCd:String):Integer;

//
// 40. 입원중인 환자인지 Check.
function CheckAdmPat2(PatNo:String; var vPatSect:String):Boolean;

// 41. 한달이전 리퍼 의뢰한자 중 회신일 존재 여부 체크   20061128 김송주
function CheckReferRtnDate(Patno:String):Boolean;

// METFORMIN/CREATININE 체크
function CheckMetformin(inPatno,inOrddate:String; var vsMetfdt, vsMetfnm, vsCreatdt, vsCreat, vsJoyngdt, vsJoyngnm:String):Boolean;

//(추가. 2003.04.04 이용언)
procedure ExcelSaveNew(sgd1: TStringGrid; Title, Tabname: String; isNewBook: Boolean);

//(추가. 2003.04.07 이용언) 환자기본정보조회 New function
procedure CheckPatInfo(PatNO : String; var Address,TelNo1,Resno1,Resno2 : String);

//환자보험정보 가져오기(피보험자,주민번호)
procedure CheckInsuInfo(PatNo, Pattype : String; var Insname,Insresno : String);

// CD/MT 번호 조회 KIM SJ 2005.11.01 Add
function GetCdMtNumber(PatNo : String) : String;

// 진료과코드 가져오기(내과전공의)
function GetImMedDept(sUserId, sMedDate : String; CdCombo, NmCombo:TComboBox):integer;

// 사용자코드 가져오기(내과)
procedure GetImUserId(sType1,sType2: string; CdCombo, NmCombo:TComboBox);

procedure GridToExcel2(in_grid  : TStringGrid;
                          TitleStr : String;
                          Cnt      : Integer);overload;

   //UltraGrid의 내용을 Excel파일로 저장하기(숫자컬럼, 문자컬럼지정)
   // SNMODE : 배열[0] : 'S', 'N' : 'S'-> 이후 나오는 컬럼인덱스가 문자
   //                               'N'-> 이후 나오는 컬럼인덱스가 숫자
   // ex) ['S', '1', '5', '10'] => 1, 5, 10 번 컬럼만 문자 나머지는 숫자
   //     ['N', '1', '5', '10'] => 1, 5, 10 번 컬럼만 숫자 나머지는 문자
   //     컬럼인덱스는 0 부터 시작함.
   procedure GridToExcel2(in_grid  : TStringGrid;
                          TitleStr : String;
                          Cnt      : Integer;
                          SNMode   : array of String);overload;

//String이 숫자인지 여부 파악
function bIsNumber(AStr : String) : Boolean;

//String에서 0..9 숫자 제외한 글자 추출 2012.2.27 김송주
function DeleteNumber(Const sStr : String) : String;

function GetHpType(InputHpnm,ResultHpNm, ResultHpType,ResultHpTypeCd: TWinControl):Boolean;

// DNR Check(연명의료). KimDaeYong 2019-05-24
function DnrSelect(Patno:String;Target:TControl):String;

//폰번호에 '-' 넣기. KimDaeYong 2020-06-17
function  FormatTel(sStr: String): String;

//수혈체크리스트 해당 수혈처방여부 체크. KimDaeYong 2020-09-01
function CheckBldord(inOrdcd:String):Boolean;

type
   pMyRec = ^TMyRec;
   TMyRec = record
   Set_Type_Cd :String;
   Set_No : String;
   Set_Nm : String;
   Folder_No : String;
   Folder_YN : String;
   Dis_Seq : String;
   DiagCd:String;
   DiagName:String;
end;

implementation

uses CCOMFUNC, MDCLASS1, MsgCom, TuxCom, VarCom, Atmi, MCC100U1, MCC100U2, MCC100U3, MCC100U4, MDCLASS2;

// 1.진료과코드 가져오기 ( CdCombo -> 코드값을 담는 ComboBox
//                         NmCombo -> 코드명값을 담는 ComboBox
//                         return value -> 현재 진료과 code index value )
function GetMedDept(CdCombo, NmCombo:TComboBox):Integer;
var
   RowNo, i, j : integer;
begin
   // 리턴값 초기화
   GetMedDept := -1;
   Screen.Cursor := crHourglass;
   try
      mdExCode := HmdExCode.Create;
//      RowNo    := mdExCode.SelDeptNm('1',G_LOCATE);
      RowNo    := mdExCode.SelDeptNm('1','EB1');
      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdExCode.Free;
         ShowErrMsg();
         Exit;
      end;
      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;
      // 코드 처리
      j := 0;
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
         begin
            Items.add(mdExCode.sDeptCd[i]);
            inc(j);
            if mdExCode.sDeptCd[i] = md_DeptCd then
               GetMedDept := j;
         end;
      end;
      // 코드명 처리
      with NmCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
            Items.add(mdExCode.sDeptNm[i]);
      end;
      mdExCode.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

function GetSttDept(CdCombo, NmCombo:TComboBox):Integer;
var
   RowNo, i, j : integer;
begin
   // 리턴값 초기화
   GetSttDept := -1;
   Screen.Cursor := crHourglass;
   try
      mdExCode := HmdExCode.Create;
//      RowNo    := mdExCode.SelDeptNm('1',G_LOCATE);
      RowNo    := mdExCode.SelDeptNm('A','EB1');
      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdExCode.Free;
         ShowErrMsg();
         Exit;
      end;
      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;
      // 코드 처리
      j := 0;
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
         begin
            Items.add(mdExCode.sDeptCd[i]);
            inc(j);
            if mdExCode.sDeptCd[i] = md_DeptCd then
               GetSttDept := j;
         end;
      end;
      // 코드명 처리
      with NmCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
            Items.add(mdExCode.sDeptNm[i]);
      end;
      mdExCode.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

// 1.2 수술화면 진료과 가져오기
function GetOpMedDept(CdCombo, NmCombo:TComboBox):Integer;
var
   RowNo, i, j : integer;
   sLocate : string;
begin
   sLocate := G_LOCATE;
{$IFDEF MDDLL}
   sLocate := 'EB1';
{$ENDIF}

   // 리턴값 초기화
   GetOpMedDept := -1;
   Screen.Cursor := crHourglass;
   try
      mdExCode := HmdExCode.Create;
      RowNo    := mdExCode.SelDeptNm('7',sLocate);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdExCode.Free;
         ShowErrMsg();
         Exit;
      end;
      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;
      // 코드 처리
      j := 0;
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
         begin
            Items.add(mdExCode.sDeptCd[i]);
            inc(j);
            if mdExCode.sDeptCd[i] = md_DeptCd then
               GetOpMedDept := j;
         end;
      end;
      // 코드명 처리
      with NmCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
            Items.add(mdExCode.sDeptNm[i]);
      end;
      mdExCode.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

//1.1.2 특수부서 코드가져오기.
function GetSpecDept(CdCombo, NmCombo:TComboBox):Integer;
var
   RowNo, i, j : integer;
begin
   // 리턴값 초기화
   GetSpecDept:= -1;
   Screen.Cursor := crHourglass;
   try
      mdExCode := HmdExCode.Create;
      RowNo    := mdExCode.SelDeptNm('8',G_LOCATE);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdExCode.Free;
         ShowErrMsg();
         Exit;
      end;
      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;
      // 코드 처리
      j := 0;
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
         begin
            Items.add(mdExCode.sDeptCd[i]);
            inc(j);
            if mdExCode.sDeptCd[i] = md_DeptCd then
               GetSpecDept:= j;
         end;
      end;
      // 코드명 처리
      with NmCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
            Items.add(mdExCode.sDeptNm[i]);
      end;
      mdExCode.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

// 2.병동코드 가져오기 ( CdCombo -> 코드값을 담는 ComboBox
//                       NmCombo -> 코드명값을 담는 ComboBox )
function GetWardNo(CdCombo, NmCombo:TComboBox):integer;
var
   RowNo, i, j : integer;
   sLocate : string;
begin
   // 리턴값 초기화
   GetWardNo := -1;
   Screen.Cursor := crHourglass;
   try
      {$IFDEF MDDLL}
      sLocate := 'EB1';
      {$ELSE}
      sLocate := G_LOCATE;
      {$ENDIF}

      mdExCode := HmdExCode.Create;
      RowNo    := mdExCode.SelDeptNm('2',sLocate);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdExCode.Free;
         ShowErrMsg();
         Exit;
      end;

      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;

      // 코드 처리
      j := 0;
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
         begin
            Items.add(mdExCode.sDeptCd[i]);
            inc(j);
             if mdExCode.sDeptCd[i] = md_DeptCd then
                GetWardNo := j;
         end;
      end;

      // 코드명 처리
      with NmCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdExCode.sDeptNm[i]);
      end;

      mdExCode.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

//신생아실과 신생아중환자실은 같이 보게 함. 20140221. KYA.
function GetWardNo1(CdCombo, NmCombo:TComboBox):integer;
var
   RowNo, i, j : integer;
begin
   // 리턴값 초기화
   GetWardNo1 := -1;
   Screen.Cursor := crHourglass;
   try
      mdExCode := HmdExCode.Create;
      RowNo    := mdExCode.SelDeptNm('E',G_LOCATE);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdExCode.Free;
         ShowErrMsg();
         Exit;
      end;

      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;

      // 코드 처리
      j := 0;
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
         begin
            Items.add(mdExCode.sDeptCd[i]);
            inc(j);
             if mdExCode.sDeptCd[i] = md_DeptCd then
                GetWardNo1 := j;
         end;
      end;

      // 코드명 처리
      with NmCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdExCode.sDeptNm[i]);
      end;

      mdExCode.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;


// 2-1.현위치병동코드 가져오기 ( CdCombo -> 코드값을 담는 ComboBox
//                               NmCombo -> 코드명값을 담는 ComboBox )
function GetNowPos(CdCombo, NmCombo:TComboBox):integer;
var
   RowNo, i, j : integer;
begin
   // 리턴값 초기화
   GetNowPos := -1;
   Screen.Cursor := crHourglass;
   try
      mdExCode := HmdExCode.Create;
      RowNo    := mdExCode.SelDeptNm('5',G_LOCATE);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdExCode.Free;
         ShowErrMsg();
         Exit;
      end;

      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;

      // 코드 처리
      j := 0;
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
         begin
            Items.add(mdExCode.sDeptCd[i]);
            inc(j);
             if mdExCode.sDeptCd[i] = md_DeptCd then
                GetNowPos := j;
         end;
      end;

      // 코드명 처리
      with NmCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdExCode.sDeptNm[i]);
      end;

      mdExCode.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

//NICU와 NBR은 같이 볼수 있게 함. 20140221. KYA
function GetNowPos1(CdCombo, NmCombo:TComboBox):integer;
var
   RowNo, i, j : integer;
begin
   // 리턴값 초기화
   GetNowPos1 := -1;
   Screen.Cursor := crHourglass;
   try
      mdExCode := HmdExCode.Create;
      RowNo    := mdExCode.SelDeptNm('E',G_LOCATE);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdExCode.Free;
         ShowErrMsg();
         Exit;
      end;

      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;

      // 코드 처리
      j := 0;
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
         begin
            Items.add(mdExCode.sDeptCd[i]);
            inc(j);
             if mdExCode.sDeptCd[i] = md_DeptCd then
                GetNowPos1 := j;
         end;
      end;

      // 코드명 처리
      with NmCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdExCode.sDeptNm[i]);
      end;

      mdExCode.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;


// 3.사용자코드 가져오기 ( SelType1,2 -> A,NULL:모든의사
//                                       B,진료과:특정과의 모든의사
//                                       L,진료과:특정과의 모든의사(퇴직자포함),KimDaeYong 2014-02-19
//                                       C,진료과:특정과의 주치의
//                                       D,진료과:특정과의 담당의
//                                       E,NULL  :모든 간호사
//                                       F,병동  :병동의 간호사
//                                       G,진료과:특정과의 의료기사
//                                       H,진료과:특정과의 지정의
//                                       V,진료과:금일 외래진료의사
//                                       U,진료과:금일 외래진료의사에 분과(세부)전문의번호 추가 조회,컨설트에서 사용, KimDaeYong 2014-09-18
//                         CdCombo -> 코드값을 담는 ComboBox
//                         NmCombo -> 코드명값을 담는 ComboBox )
procedure GetUserId(SelType1,SelType2: string; CdCombo, NmCombo:TComboBox);
var
   RowNo, i : integer;
   sLocate : string;
begin
   sLocate := G_LOCATE;
{$IFDEF MDDLL}
   sLocate := 'EB1';
{$ENDIF}

   Screen.Cursor := crHourglass;
   try
      mdInsamt := HmdInsamt.Create;
      RowNo    := mdInsamt.ListUserInfo(SelType1,'',SelType2,sLocate);
      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdInsamt.Free;
         ShowErrMsg();
         Exit;
      end;
      // 조회건수 없음
      if RowNo = 0 then
      begin
         CdCombo.Items.Clear;
         NmCombo.Items.Clear;
         mdInsamt.Free;
         Exit;
      end;
      // 사용자 처리
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdInsamt.sEmpNo[i]);
      end;
      // 사용자명 처리
      with NmCombo do
      begin
         Items.Clear;
         Items.add('');
         //분과(세부)전문의 여부, 외과/소아과 계열만.. KimDaeYong 2014-09-18
         if (SelType1 = 'U') and
            ((SelType2='SURG') or (SelType2='GSHBP') or (SelType2='GSCOL') or (SelType2='GSSTO') or (SelType2='GSBTH')) then     //외과분과
             //(SelType2='PED') or (SelType2='PENEU') or (SelType2='NEONA') or (SelType2='PDCAR') or (SelType2='PDARD')) then  //소아과분과
         begin
             for i := 0 to RowNo - 1 do
             begin
                 if (mdInsamt.sLcnNo[i] <> '') and (mdInsamt.sLcnCd[i] <> '') then
                    Items.add(mdInsamt.sEmpNm[i]+'-분과전문의')
                 else
                    Items.add(mdInsamt.sEmpNm[i]);
             end;
         end
         else
         begin
             //기존 코드
             for i := 0 to RowNo - 1 do
                 Items.add(mdInsamt.sEmpNm[i]);
         end;
      end;

      mdInsamt.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;


//KimDaeYong add, 2014-01-28
// 3.1사용자코드 가져오기3 ( SelType1,2 -> A,NULL:모든의사
//                                       B,진료과:특정과의 모든의사
//                                       L,진료과:특정과의 모든의사(퇴직자포함),KimDaeYong 2014-02-19
//                                       C,진료과:특정과의 주치의
//                                       D,진료과:특정과의 담당의
//                                       E,NULL  :모든 간호사
//                                       F,병동  :병동의 간호사
//                                       G,진료과:특정과의 의료기사
//                                       H,진료과:특정과의 지정의
//                                       V,진료과:금일 외래진료의사
//                                       U,진료과:금일 외래진료의사에 분과(세부)전문의번호 추가 조회,컨설트에서 사용, KimDaeYong 2014-09-18
//                         CdCombo -> 코드값을 담는 ComboBox
//                         NmCombo -> 코드명값을 담는 ComboBox
//                         LicCombo-> 면허번호를 담는 ComboBox  )
procedure GetUserId3(SelType1,SelType2: string; CdCombo, NmCombo, LicCombo:TComboBox);
var
   RowNo, i : integer;
begin
   Screen.Cursor := crHourglass;
   try
      mdInsamt := HmdInsamt.Create;
      RowNo    := mdInsamt.ListUserInfo(SelType1,'',SelType2,G_LOCATE);
      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdInsamt.Free;
         ShowErrMsg();
         Exit;
      end;
      // 조회건수 없음
      if RowNo = 0 then
      begin
         CdCombo.Items.Clear;
         NmCombo.Items.Clear;
         mdInsamt.Free;
         Exit;
      end;
      // 사용자 처리
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdInsamt.sEmpNo[i]);
      end;
      // 사용자명 처리
      with NmCombo do
      begin
         Items.Clear;
         Items.add('');
         //분과(세부)전문의 여부, KimDaeYong 2014-09-18
         if SelType1 = 'U' then
         begin
             for i := 0 to RowNo - 1 do
             begin
                 if (mdInsamt.sLcnNo[i] <> '') and (mdInsamt.sLcnCd[i] <> '') then
                    Items.add(mdInsamt.sEmpNm[i]+'-분과전문의')
                 else
                    Items.add(mdInsamt.sEmpNm[i]);
             end;
         end
         else
         begin
             //기존코드
             for i := 0 to RowNo - 1 do
                 Items.add(mdInsamt.sEmpNm[i]);
         end;
      end;
      // 면허번호 처리
      with LicCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdInsamt.sLicno[i]);
      end;
      mdInsamt.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

// 4.환자명/환자번호로 대상자찾기 ( InputText -> 찾고자 하는 id/이름넣은 콤포넌트명,
//                                  InText -> id 콤포넌트명,  NmText -> 이름 콤포넌트명
//                                  sFlag => 1 전체환자, 2 재원환자
function GetPatName(InputText,IdText, NmText: TWinControl): Boolean;
var
   RowNo, i, code : LongInt;
   temp, temp1, temp2, temp3 : String;
   Procedure WinControlSet(Control1 : TWinControl; Value9 : String);
   begin
      if (Control1 is TEdit) then
         (Control1 as TEdit).text := Value9
      else
         if (Control1 is TComboBox) then
            (Control1 as TComboBox).text := Value9
         else
            if (Control1 is TPanel) then
               (Control1 as TPanel).Caption := Value9;
   end;
begin
   GetPatName := False;
   if (InputText is TEdit) then
      temp := trim((InputText as TEdit).text)
   else
      if (InputText is TComboBox) then
         temp := trim((InputText as TComboBox).text)
      else
      begin
         (InputText as TWinControl).setfocus;
         exit;
      end;

   if  temp = '' then
       exit;
   Val(temp, I, Code);
   if Code <> 0 then
   begin
      // 환자명으로 찾기
      if HLength(temp) < 2 then
      begin
         showmessage('환자명을 2글자이상 입력하세요');
         (InputText as TWinControl).setfocus;
         exit;
      end;
      temp1 := '2';
      temp2 := '';
      temp3 := temp;
   end
   else
   begin
      // 환자번호로 찾기
      if length(temp) < 4 then
      begin
         showmessage('등록번호를 4글자이상 입력하세요');
         (InputText as TWinControl).setfocus;
         exit;
      end
      else if (length(temp) > 3) and (length(temp) < 9) then
      begin
         temp := FormatFloat('00000000', StrToFloat(temp));
         WinControlSet(NmText, temp);
      end;

      {====OCS 이전 검진환자로 추정됨. KimDaeYong 2017-11-13=============
      if (Copy(temp,1,1)='9') then
      begin
         Showmessage('검진환자는 선택하실 수 없습니다.');
         (InputText as TWinControl).setfocus;
         exit;
      end;
      ==================================================================}

      temp1 := '1';
      temp2 := temp;
      temp3 := '';
   end;

   Screen.Cursor := crHourglass;
   try
      mdPatinf := HmdPatinf.Create;
      RowNo    := mdPatinf.ListPatbat(temp1,temp2,temp3);
      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdPatinf.Free;
         ShowErrMsg();
         Exit;
      end;
      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdPatinf.Free;
         ShowMessage('해당 환자는 존재하지 않습니다. 환자명 또는 등록번호를 다시입력하십시오.');
         WinControlSet(IdText, '');
         WinControlSet(NmText, '');
         (InputText as TWinControl).setfocus;
         Exit;
      end;

      if RowNo > 1 then
      begin
         if MCC100F1 = nil then
         begin
            Application.CreateForm(TMCC100F1, MCC100F1);
            with MCC100F1 do
            begin
               ugd_List.Visible    := True;
               ugd_PatList.Visible := False;
               ugd_List.Top     := 3;
               ugd_List.Left    := 3;
               ugd_OutPatList.Visible := False;
               ugd_List.ColCount := 9;
               ugd_List.Clear;
               ugd_List.ColCount := 7;
               ugd_List.RowCount := RowNo + 1;
               ugd_List.ColWidths[4] := 0;
               for i := 0 to RowNo - 1 do
               begin
                  ugd_List.Cells[0,i+1] := mdPatinf.sPatNo[i];
                  ugd_List.Cells[1,i+1] := mdPatinf.sPatName[i];
                  ugd_List.Cells[2,i+1] := mdPatinf.sSex[i] + '/' + Trim(Calc_Age(Date,mdPatinf.sBirtDate[i]));
                  ugd_List.Cells[3,i+1] := mdPatinf.sResNo1[i] + '-' + mdPatinf.sResNo2[i];
                  ugd_List.Cells[5,i+1] := mdPatinf.sMeddept[i];
                  ugd_List.Cells[6,i+1] := mdPatinf.sDentno[i]; // 치과번호 보이게 하고 치과번호대신 합본번호로 대체 2012.1.5 김송주
               end;
               // 위치 포지션 찾기
               Left := (InputText as TWinControl).ClientOrigin.x;
               Top  := (InputText as TWinControl).ClientOrigin.y + (InputText as TWinControl).Height;
               if Left > 687 then
                  Left := (InputText as TWinControl).ClientOrigin.x + (InputText as TWinControl).Width - width;
               if Top > 570 then
                  Top := (InputText as TWinControl).ClientOrigin.y - Height;
               ShowModal;
               if ResultCon = True then
               begin
                  GetPatName := True;
                  WinControlSet(IdText, ResultNO);
                  WinControlSet(NmText, ResultNm);
               end
               else
                  (InputText as TWinControl).SetFocus;
            end;
         end
         else
            MCC100F1.BringToFront;
      end
      else
      begin
         GetPatName := True;
         WinControlSet(IdText, mdPatinf.sPatNo[0]);
         WinControlSet(NmText, mdPatinf.sPatName[0]);
      end;
      mdPatinf.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

// 4.1 수술환자명/환자번호로 대상자찾기 ( InputText -> 찾고자 하는 id/이름넣은 콤포넌트명,
//                                        InText -> id 콤포넌트명,  NmText -> 이름 콤포넌트명
//                                        sFlag => 1 전체환자, 2 재원환자
function GetOpPatName(InputText,IdText, NmText: TWinControl): Boolean;
var
   RowNo, i, code : LongInt;
   temp, temp1, temp2, temp3 : String;
   Procedure WinControlSet(Control1 : TWinControl; Value9 : String);
   begin
      if (Control1 is TEdit) then
         (Control1 as TEdit).text := Value9
      else if (Control1 is TComboBox) then
         (Control1 as TComboBox).text := Value9
      else if (Control1 is TPanel) then
         (Control1 as TPanel).Caption := Value9;
   end;
begin
   GetOpPatName := False;
   if (InputText is TEdit) then
      temp := trim((InputText as TEdit).text)
   else
      if (InputText is TComboBox) then
         temp := trim((InputText as TComboBox).text)
      else
      begin
         (InputText as TWinControl).setfocus;
         exit;
      end;

   if  temp = '' then
       exit;
   Val(temp, I, Code);
   if Code <> 0 then
   begin
      // 환자명으로 찾기
      if HLength(temp) < 2 then
      begin
         showmessage('환자명을 2글자이상 입력하세요');
         (InputText as TWinControl).setfocus;
         exit;
      end;
      temp1 := '7';       //2->7
      temp2 := '';
      temp3 := temp;
   end
   else
   begin
      // 환자번호로 찾기
      if length(temp) < 4 then
      begin
         showmessage('등록번호를 4글자이상 입력하세요');
         (InputText as TWinControl).setfocus;
         exit;
      end
      else if (length(temp) > 3) and (length(temp) < 9) then
      begin
         temp := FormatFloat('00000000', StrToFloat(temp));
         WinControlSet(NmText, temp);
      end;

      temp1 := '6';      // 1->6
      temp2 := temp;
      temp3 := '';
   end;

   Screen.Cursor := crHourglass;
   try
      mdPatinf := HmdPatinf.Create;
      RowNo    := mdPatinf.ListPatbat(temp1,temp2,temp3);
      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdPatinf.Free;
         ShowErrMsg();
         Exit;
      end;
      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdPatinf.Free;
         ShowMessage('해당 환자는 존재하지 않습니다. 환자명 또는 등록번호를 다시입력하십시오.');
         WinControlSet(IdText, '');
         WinControlSet(NmText, '');
         (InputText as TWinControl).setfocus;
         Exit;
      end;
      if RowNo > 1 then
      begin
         if MCC100F1 = nil then
         begin
            Application.CreateForm(TMCC100F1, MCC100F1);
            with MCC100F1 do
            begin
               ugd_OutPatList.Visible := True;
               ugd_OutPatList.Title   := '환자번호|환자명|Sex/Age|최근수술일|진료과';
               ugd_OutPatList.Top  := 3;
               ugd_OutPatList.Left := 3;
               ugd_PatList.Visible := False;
               ugd_OutPatList.ColCount := 9;
               ugd_OutPatList.Clear;
               ugd_OutPatList.ColCount := 5;
               ugd_OutPatList.RowCount := RowNo + 1;
               for i := 0 to RowNo - 1 do
               begin
                  ugd_OutPatList.Cells[0,i+1] := mdPatinf.sPatNo[i];
                  ugd_OutPatList.Cells[1,i+1] := mdPatinf.sPatName[i];
                  ugd_OutPatList.Cells[2,i+1] := mdPatinf.sSex[i] + '/' + Trim(Calc_Age(Date,mdPatinf.sBirtDate[i]));
                  ugd_OutPatList.Cells[3,i+1] := ConvertSDate(mdPatinf.sAdmdate[i]);
                  ugd_OutPatList.Cells[4,i+1] := mdPatinf.sMedDept[i];
                  ugd_OutPatList.Cells[5,i+1] := mdPatinf.sResNo1[i] + '-' + mdPatinf.sResNo2[i];

               end;
               // 위치 포지션 찾기
               Left := (InputText as TWinControl).ClientOrigin.x;
               Top  := (InputText as TWinControl).ClientOrigin.y + (InputText as TWinControl).Height;
               if Left > 687 then
                  Left := (InputText as TWinControl).ClientOrigin.x + (InputText as TWinControl).Width - width;
               if Top > 570 then
                  Top := (InputText as TWinControl).ClientOrigin.y - Height;
               ShowModal;
               if ResultCon = True then
               begin
                  GetOpPatName := True;
                  WinControlSet(IdText, ResultNO);
                  WinControlSet(NmText, ResultNm);
               end
               else
                  (InputText as TWinControl).SetFocus;
            end;
         end
         else
            MCC100F1.BringToFront;
      end
      else
      begin
         GetOpPatName := True;
         WinControlSet(IdText, mdPatinf.sPatNo[0]);
         WinControlSet(NmText, mdPatinf.sPatName[0]);
      end;
      mdPatinf.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

// 4.2 환자명/환자번호로 대상자찾기. SMS수신동의 추가 ( InputText -> 찾고자 하는 id/이름넣은 콤포넌트명,
//                                                      InText -> id 콤포넌트명,  NmText -> 이름 콤포넌트명
//                                                      SmsText,InfuseText -> 메시지수신동의여부  컴포넌트명
// KimDaeYong 2021-12-16
function GetPatNameSms(InputText,IdText,NmText,SmsText,InfuseText: TWinControl): Boolean;
var
   RowNo, i, code : LongInt;
   temp, temp1, temp2, temp3 : String;
   Procedure WinControlSet(Control1 : TWinControl; Value9 : String);
   begin
      if (Control1 is TEdit) then
         (Control1 as TEdit).text := Value9
      else
         if (Control1 is TComboBox) then
            (Control1 as TComboBox).text := Value9
         else
            if (Control1 is TPanel) then
               (Control1 as TPanel).Caption := Value9;
   end;
begin
   GetPatNameSms := False;
   if (InputText is TEdit) then
      temp := trim((InputText as TEdit).text)
   else
      if (InputText is TComboBox) then
         temp := trim((InputText as TComboBox).text)
      else
      begin
         (InputText as TWinControl).setfocus;
         exit;
      end;

   if  temp = '' then
       exit;
   Val(temp, I, Code);
   if Code <> 0 then
   begin
      // 환자명으로 찾기
      if HLength(temp) < 2 then
      begin
         showmessage('환자명을 2글자이상 입력하세요');
         (InputText as TWinControl).setfocus;
         exit;
      end;
      temp1 := '2';
      temp2 := '';
      temp3 := temp;
   end
   else
   begin
      // 환자번호로 찾기
      if length(temp) < 4 then
      begin
         showmessage('등록번호를 4글자이상 입력하세요');
         (InputText as TWinControl).setfocus;
         exit;
      end
      else if (length(temp) > 3) and (length(temp) < 9) then
      begin
         temp := FormatFloat('00000000', StrToFloat(temp));
         WinControlSet(NmText, temp);
      end;

      {====OCS 이전 검진환자로 추정됨. KimDaeYong 2017-11-13=============
      if (Copy(temp,1,1)='9') then
      begin
         Showmessage('검진환자는 선택하실 수 없습니다.');
         (InputText as TWinControl).setfocus;
         exit;
      end;
      ==================================================================}

      temp1 := '1';
      temp2 := temp;
      temp3 := '';
   end;

   Screen.Cursor := crHourglass;
   try
      mdPatinf := HmdPatinf.Create;
      RowNo    := mdPatinf.ListPatbat(temp1,temp2,temp3);
      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdPatinf.Free;
         ShowErrMsg();
         Exit;
      end;
      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdPatinf.Free;
         ShowMessage('해당 환자는 존재하지 않습니다. 환자명 또는 등록번호를 다시입력하십시오.');
         WinControlSet(IdText, '');
         WinControlSet(NmText, '');
         WinControlSet(SmsText, '');    //SMSYN 추가. KimDaeYong 2021-12-16
         WinControlSet(InfuseText, ''); //INFUSEYN 추가. KimDaeYong 2021-12-16
         (InputText as TWinControl).setfocus;
         Exit;
      end;

      if RowNo > 1 then
      begin
         if MCC100F1 = nil then
         begin
            Application.CreateForm(TMCC100F1, MCC100F1);
            with MCC100F1 do
            begin
               ugd_List.Visible    := True;
               ugd_PatList.Visible := False;
               ugd_List.Top     := 3;
               ugd_List.Left    := 3;
               ugd_OutPatList.Visible := False;
               ugd_List.ColCount := 9;
               ugd_List.Clear;
               ugd_List.ColCount := 7;
               ugd_List.RowCount := RowNo + 1;
               ugd_List.ColWidths[4] := 0;
               for i := 0 to RowNo - 1 do
               begin
                  ugd_List.Cells[0,i+1] := mdPatinf.sPatNo[i];
                  ugd_List.Cells[1,i+1] := mdPatinf.sPatName[i];
                  ugd_List.Cells[2,i+1] := mdPatinf.sSex[i] + '/' + Trim(Calc_Age(Date,mdPatinf.sBirtDate[i]));
                  ugd_List.Cells[3,i+1] := mdPatinf.sResNo1[i] + '-' + mdPatinf.sResNo2[i];
                  ugd_List.Cells[5,i+1] := mdPatinf.sMeddept[i];
                  ugd_List.Cells[6,i+1] := mdPatinf.sDentno[i]; // 치과번호 보이게 하고 치과번호대신 합본번호로 대체 2012.1.5 김송주
                  //hidden
                  ugd_List.Cells[7,i+1] := mdPatinf.sSmsyn[i];      //SMSYN. KimDaeYong 2021-12-16
                  ugd_List.Cells[8,i+1] := mdPatinf.sInfuseyna[i];  //INFUSEYNA. KimDaeYong 2021-12-16
               end;
               // 위치 포지션 찾기
               Left := (InputText as TWinControl).ClientOrigin.x;
               Top  := (InputText as TWinControl).ClientOrigin.y + (InputText as TWinControl).Height;
               if Left > 687 then
                  Left := (InputText as TWinControl).ClientOrigin.x + (InputText as TWinControl).Width - width;
               if Top > 570 then
                  Top := (InputText as TWinControl).ClientOrigin.y - Height;
               ShowModal;
               if ResultCon = True then
               begin
                  GetPatNameSms := True;
                  WinControlSet(IdText, ResultNO);
                  WinControlSet(NmText, ResultNm);
                  WinControlSet(SmsText, ResultSms);        //SMSYN. KimDaeYong 2021-12-16
                  WinControlSet(InfuseText, ResultInfuse);  //INFUSEYNA. KimDaeYong 2021-12-16
               end
               else
                  (InputText as TWinControl).SetFocus;
            end;
         end
         else
            MCC100F1.BringToFront;
      end
      else
      begin
         GetPatNameSms := True;
         WinControlSet(IdText, mdPatinf.sPatNo[0]);
         WinControlSet(NmText, mdPatinf.sPatName[0]);
         WinControlSet(SmsText, mdPatinf.sSmsyn[0]);        //SMSYN. KimDaeYong 2021-12-16
         WinControlSet(InfuseText, mdPatinf.sInfuseyna[0]); //INFUSEYNA. KimDaeYong 2021-12-16
      end;
      mdPatinf.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

// 4.5 환자명/환자번호로 대상자찾기 ( InputText -> 찾고자 하는 id/이름넣은 콤포넌트명,
//                                  InText -> id 콤포넌트명,  NmText -> 이름 콤포넌트명
//                                  sFlag => 1 전체환자, 2 재원환자
function GetPatNameFlag(InputText,IdText, NmText, SexAge: TWinControl;sFlag:String): Boolean;
var
   RowNo, i, code : LongInt;
   temp, temp1, temp2, temp3 : String;
   Procedure WinControlSetFlag(Control1 : TWinControl; Value9 : String);
   begin
      if (Control1 is TEdit) then
         (Control1 as TEdit).text := Value9
      else if (Control1 is TComboBox) then
         (Control1 as TComboBox).text := Value9
      else if (Control1 is TPanel) then
         (Control1 as TPanel).Caption := Value9;
   end;
begin
   GetPatNameFlag := False;
   if (InputText is TEdit) then
      temp := trim((InputText as TEdit).text)
   else
      if (InputText is TComboBox) then
         temp := trim((InputText as TComboBox).text)
      else
      begin
         (InputText as TWinControl).setfocus;
         exit;
      end;

   if  temp = '' then
       exit;
   Val(temp, I, Code);
   if Code <> 0 then
   begin
      // 환자명으로 찾기
      if HLength(temp) < 2 then
      begin
         showmessage('환자명을 2글자이상 입력하세요');
         (InputText as TWinControl).setfocus;
         exit;
      end;
      temp1 := '2';
      temp2 := '';
      temp3 := temp;
   end
   else
   begin
      // 환자번호로 찾기
      if length(temp) < 4 then
      begin
         showmessage('등록번호를 4글자이상 입력하세요');
         (InputText as TWinControl).setfocus;
         exit;
      end
      else if (length(temp) > 3) and (length(temp) < 9) then
      begin
         temp := FormatFloat('00000000', StrToFloat(temp));
         WinControlSetFlag(IdText, temp);
      end;

      temp1 := '1';
      temp2 := temp;
      temp3 := '';
   end;

   if (sFlag = '1') and (temp1 = '1') then         // 전체환자 환자번호로찾기
      temp1 := '1'
   else if (sFlag = '1') and (temp1 = '2') then    // 전체환자 환자명으로찾기
      temp1 := '2'
   else if (sFlag = '2') and (temp1 = '1') then    // 재원환자 환자번호로 찾기
      temp1 := '4'
   else if (sFlag = '2') and (temp1 = '2') then    // 재원환자 환자명으로 찾기
      temp1 := '5';

   Screen.Cursor := crHourglass;
   try
      mdPatinf := HmdPatinf.Create;
      RowNo    := mdPatinf.ListPatbat(temp1,temp2,temp3);
      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdPatinf.Free;
         ShowErrMsg();
         Exit;
      end;
      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdPatinf.Free;
         ShowMessage('해당 환자는 존재하지 않습니다. 환자명 또는 등록번호를 다시입력하십시오.');
         WinControlSetFlag(IdText, '');
         WinControlSetFlag(NmText, '');
         WinControlSetFlag(SexAge, '');
         (InputText as TWinControl).setfocus;
         Exit;
      end;
      if RowNo > 1 then
      begin
         if MCC100F1 = nil then
         begin
            Application.CreateForm(TMCC100F1, MCC100F1);
            with MCC100F1 do
            begin
               ugd_List.Visible := True;
               ugd_PatList.Visible := False;
               ugd_List.Top  := 3;
               ugd_List.Left := 3;
               ugd_OutPatList.Visible := False;
               ugd_List.ColCount := 9;
               ugd_List.Clear;
               ugd_List.ColCount := 6;
               ugd_List.RowCount := RowNo + 1;
               ugd_List.ColWidths[4] := 0;

               for i := 0 to RowNo - 1 do
               begin
                  ugd_List.Cells[0,i+1] := mdPatinf.sPatNo[i];
                  ugd_List.Cells[1,i+1] := mdPatinf.sPatName[i];
                  ugd_List.Cells[2,i+1] := mdPatinf.sSex[i] + '/' + Trim(Calc_Age(Date,mdPatinf.sBirtDate[i]));
                  ugd_List.Cells[3,i+1] := mdPatinf.sResNo1[i] + '-' + mdPatinf.sResNo2[i];
                  ugd_List.Cells[4,i+1] := mdPatinf.sAdmdate[i];
                  ugd_List.Cells[5,i+1] := mdPatinf.sMedDept[i];
               end;
               // 위치 포지션 찾기
               Left := (InputText as TWinControl).ClientOrigin.x;
               Top  := (InputText as TWinControl).ClientOrigin.y + (InputText as TWinControl).Height;
               if Left > 687 then
                  Left := (InputText as TWinControl).ClientOrigin.x + (InputText as TWinControl).Width - width;
               if Top > 570 then
                  Top := (InputText as TWinControl).ClientOrigin.y - Height;
               ShowModal;
               if ResultCon = True then
               begin
                  GetPatNameFlag := True;
                  WinControlSetFlag(IdText, ResultNO);
                  WinControlSetFlag(NmText, ResultNm);
                  WinControlSetFlag(SexAge, ResultSexAge);
               end
               else
                  (InputText as TWinControl).SetFocus;
            end;
         end
         else
            MCC100F1.BringToFront;
      end
      else
      begin
         GetPatNameFlag := True;
         WinControlSetFlag(IdText, mdPatinf.sPatNo[0]);
         WinControlSetFlag(NmText, mdPatinf.sPatName[0]);
         WinControlSetFlag(SexAge, mdPatinf.sSex[0] + '/' + Trim(Calc_Age(Date,mdPatinf.sBirtDate[0])));
      end;
      mdPatinf.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

// 4.6 입원(1)/퇴원(2) 환자명/환자번호로 대상자찾기 ( InputText -> 찾고자 하는 id/이름넣은 콤포넌트명,
//                                  InText -> id 콤포넌트명,  NmText -> 이름 콤포넌트명
//                                  sFlag => 1 전체환자, 2 재원환자
function GetAdmOutList(InputText,IdText, NmText, SexAge, MedDept, AdmDate,
                       ChaDr, GenDr, Telno, Address: TWinControl;sFlag:String): Boolean;
var
   RowNo, i, code : LongInt;
   temp, temp1, temp2, temp3 : String;
   Procedure WinControlSetFlag(Control1 : TWinControl; Value9 : String);
   begin
      if (Control1 is TEdit) then
         (Control1 as TEdit).text := Value9
      else
         if (Control1 is TComboBox) then
            (Control1 as TComboBox).text := Value9
         else
            if (Control1 is TPanel) then
               (Control1 as TPanel).Caption := Value9;
   end;
begin
   GetAdmOutList := False;
   if (InputText is TEdit) then
      temp := trim((InputText as TEdit).text)
   else
      if (InputText is TComboBox) then
         temp := trim((InputText as TComboBox).text)
      else
      begin
         (InputText as TWinControl).setfocus;
         exit;
      end;

   if  temp = '' then
       exit;
   Val(temp, I, Code);
   if Code <> 0 then
   begin
      // 환자명으로 찾기
      if HLength(temp) < 2 then
      begin
         showmessage('환자명을 2글자이상 입력하세요');
         (InputText as TWinControl).setfocus;
         exit;
      end;
      temp1 := '2';
      temp2 := '';
      temp3 := temp;
   end
   else
   begin
      // 환자번호로 찾기
      if length(temp) < 4 then
      begin
         showmessage('등록번호를 4글자이상 입력하세요');
         (InputText as TWinControl).setfocus;
         exit;
      end
      else if (length(temp) > 3) and (length(temp) < 9) then
      begin
         temp := FormatFloat('00000000', StrToFloat(temp));
         WinControlSetFlag(NmText, temp);
      end;

      temp1 := '1';
      temp2 := temp;
      temp3 := '';
   end;

   if (sFlag='2') and (temp1 = '1') then          // 퇴원환자 환자번호로 찾기
      temp1 := '4'
   else if (sFlag='2') and  (temp1 = '2') then    // 퇴원환자 환자명으로 찾기
      temp1 := '5'
   else if (sFlag='1') and (temp1 = '1') then     // 재원환자 환자번호로 찾기
      temp1 := '6'
   else if (sFlag='1') and  (temp1 = '2') then    // 재원환자 환자명으로 찾기
      temp1 := '7';

   Screen.Cursor := crHourglass;
   try
         mdWrkLst := HmdWrkLst.Create;
         RowNo := mdWrkLst.CheckList(temp1,temp2,temp3,'','');
         // SYSTEM ERROR
         if RowNo = -1 then
         begin
            mdWrkLst.Free;
            ShowErrMsg();
            Exit;
         end;
         // 조회건수 없음
         if RowNo = 0 then
         begin
            mdWrkLst.Free;
            if sFlag='2' then
            begin
               ShowMessage('해당 환자는 존재하지 않습니다. 환자명 또는 등록번호를 다시입력하십시오.');
               WinControlSetFlag(IdText, '');
               WinControlSetFlag(NmText, '');
               WinControlSetFlag(SexAge, '');
               WinControlSetFlag(MedDept, '');
               WinControlSetFlag(AdmDate, '');
               WinControlSetFlag(ChaDr, '');
               WinControlSetFlag(GenDr, '');
               WinControlSetFlag(TelNo, '');
               WinControlSetFlag(Address, '');
               (InputText as TWinControl).setfocus;
            end;
            Exit;
         end;

      if RowNo > 1 then
      begin
         if MCC100F1 = nil then
         begin
            Application.CreateForm(TMCC100F1, MCC100F1);
            with MCC100F1 do
            begin
               if sFlag = '1' then    // 재원환자
               begin
                  ugd_PatList.Visible := True;
                  ugd_PatList.Top  := 3;
                  ugd_PatList.Left := 3;
                  ugd_OutPatList.Visible := False;
                  ugd_PatList.ColCount := 10;
                  ugd_PatList.Clear;
                  ugd_PatList.ColCount := 4;
                  ugd_PatList.RowCount := RowNo + 1;
                  for i := 0 to RowNo - 1 do
                  begin
                     ugd_PatList.Cells[0,i+1] := mdWrkLst.sCode1[i];
                     ugd_PatList.Cells[1,i+1] := mdWrkLst.sCode2[i];
                     ugd_PatList.Cells[2,i+1] := mdWrkLst.sCode6[i] + '/' + Trim(Calc_Age(Date,mdWrkLst.sCode5[i]));
                     ugd_PatList.Cells[3,i+1] := mdWrkLst.sCode3[i] + '-' + mdWrkLst.sCode4[i];
                     ugd_PatList.Cells[4,i+1] := mdWrkLst.sCode7[i];
                     ugd_PatList.Cells[5,i+1] := mdWrkLst.sCode8[i];
                     ugd_PatList.Cells[6,i+1] := mdWrkLst.sCode9[i];
                     ugd_PatList.Cells[7,i+1] := mdWrkLst.sCode10[i];
                     ugd_PatList.Cells[8,i+1] := mdWrkLst.sMemo1[i];  // 전화번호
                     ugd_PatList.Cells[9,i+1] := mdWrkLst.sMemo2[i];  // 주소

                  end;
               end
               else if sFlag = '2' then   // 퇴원환자.
               begin
                  ugd_PatList.Visible := False;
                  ugd_OutPatList.Top  := 3;
                  ugd_OutPatList.Left := 3;
                  ugd_OutPatList.Visible := True;
                  ugd_OutPatList.Title   := '환자번호|환자명|Sex/Age|입원일자|진료과';
                  ugd_OutPatList.ColCount := 9;
                  ugd_OutPatList.Clear;
                  ugd_OutPatList.ColCount := 5;
                  ugd_OutPatList.RowCount := RowNo + 1;
                  for i := 0 to RowNo - 1 do
                  begin
                     ugd_OutPatList.Cells[0,i+1] := mdWrkLst.sCode1[i];
                     ugd_OutPatList.Cells[1,i+1] := mdWrkLst.sCode2[i];
                     ugd_OutPatList.Cells[2,i+1] := mdWrkLst.sCode6[i] + '/' + Trim(Calc_Age(Date,mdWrkLst.sCode5[i]));
                     ugd_OutPatList.Cells[3,i+1] := ConvertSDate(mdWrkLst.sCode7[i]);
                     ugd_OutPatList.Cells[4,i+1] := mdWrkLst.sCode8[i];
                     ugd_OutPatList.Cells[5,i+1] := mdWrkLst.sCode9[i];
                     ugd_OutPatList.Cells[6,i+1] := mdWrkLst.sCode10[i];
                     ugd_OutPatList.Cells[7,i+1] := mdWrkLst.sMemo1[i];   // 전화번호
                     ugd_OutPatList.Cells[8,i+1] := mdWrkLst.sMemo2[i];   // 주소
                  end;
               end;

               // 위치 포지션 찾기
               Left := (InputText as TWinControl).ClientOrigin.x;
               Top  := (InputText as TWinControl).ClientOrigin.y + (InputText as TWinControl).Height;
               if Left > 687 then
                  Left := (InputText as TWinControl).ClientOrigin.x + (InputText as TWinControl).Width - width;
               if Top > 570 then
                  Top := (InputText as TWinControl).ClientOrigin.y - Height;
               ShowModal;
               if ResultCon = True then
               begin
                  GetAdmOutList := True;
                  WinControlSetFlag(IdText,  ResultNO);
                  WinControlSetFlag(NmText,  ResultNm);
                  WinControlSetFlag(SexAge,  ResultSexAge);
                  WinControlSetFlag(MedDept, ResultMedDept);
                  WinControlSetFlag(AdmDate, ResultAdmDate);
                  WinControlSetFlag(ChaDr,   ResultChaDr);
                  WinControlSetFlag(GenDr,   ResultGenDr);
                  WinControlSetFlag(TelNo,   ResultTelNo);
                  WinControlSetFlag(Address, ResultAddress);
               end
               else
                  (InputText as TWinControl).SetFocus;
            end;
         end
         else
            MCC100F1.BringToFront;
      end
      else
      begin
         GetAdmOutList := True;
         WinControlSetFlag(IdText,  mdWrkLst.sCode1[0]);
         WinControlSetFlag(NmText,  mdWrkLst.sCode2[0]);
         WinControlSetFlag(SexAge,  mdWrkLst.sCode6[0] + '/' + Trim(Calc_Age(Date,mdWrkLst.sCode5[0])));
         WinControlSetFlag(MedDept, mdWrkLst.sCode8[0]);
         WinControlSetFlag(AdmDate, mdWrkLst.sCode7[0]);
         WinControlSetFlag(ChaDr,   mdWrkLst.sCode9[0]);
         WinControlSetFlag(GenDr,   mdWrkLst.sCode10[0]);
         WinControlSetFlag(TelNo,   mdWrkLst.sMemo1[0]);
         WinControlSetFlag(Address, mdWrkLst.sMemo2[0]);
      end;

      mdWrkLst.Free;
         
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

//
// 4.7 환자명/환자번호로 대상자찾기 ( InputText -> 찾고자 하는 id/이름넣은 콤포넌트명,
//                                  InText -> id 콤포넌트명,  NmText -> 이름 콤포넌트명
//                                  sFlag => 1 전체환자, 2 재원환자
function GetPatNameFlag2(InputText,IdText, NmText, SexAge, Resno : TWinControl;sFlag:String): Boolean;
var
   RowNo, i, code : LongInt;
   temp, temp1, temp2, temp3 : String;
   Procedure WinControlSetFlag(Control1 : TWinControl; Value9 : String);
   begin
      if (Control1 is TEdit) then
         (Control1 as TEdit).text := Value9
      else
         if (Control1 is TComboBox) then
            (Control1 as TComboBox).text := Value9
         else
            if (Control1 is TPanel) then
               (Control1 as TPanel).Caption := Value9;
   end;
begin
   GetPatNameFlag2 := False;
   if (InputText is TEdit) then
      temp := trim((InputText as TEdit).text)
   else
      if (InputText is TComboBox) then
         temp := trim((InputText as TComboBox).text)
      else
      begin
         (InputText as TWinControl).setfocus;
         exit;
      end;

   if  temp = '' then
       exit;
   Val(temp, I, Code);
   if Code <> 0 then
   begin
      // 환자명으로 찾기
      if HLength(temp) < 2 then
      begin
         showmessage('환자명을 2글자이상 입력하세요');
         (InputText as TWinControl).setfocus;
         exit;
      end;
      temp1 := '2';
      temp2 := '';
      temp3 := temp;
   end
   else
   begin
      // 환자번호로 찾기
      if length(temp) < 4 then
      begin
         showmessage('등록번호를 4글자이상 입력하세요');
         (InputText as TWinControl).setfocus;
         exit;
      end
      else if (length(temp) > 3) and (length(temp) < 9) then
      begin
         temp := FormatFloat('00000000', StrToFloat(temp));
         WinControlSetFlag(NmText, temp);
      end;

      temp1 := '1';
      temp2 := temp;
      temp3 := '';
   end;

   if (sFlag = '1') and (temp1 = '1') then         // 전체환자 환자번호로찾기
      temp1 := '1'
   else if (sFlag = '1') and (temp1 = '2') then    // 전체환자 환자명으로찾기
      temp1 := '2'
   else if (sFlag = '2') and (temp1 = '1') then    // 재원환자 환자번호로 찾기
      temp1 := '4'
   else if (sFlag = '2') and (temp1 = '2') then    // 재원환자 환자명으로 찾기
      temp1 := '5';

   Screen.Cursor := crHourglass;
   try
      mdPatinf := HmdPatinf.Create;
      RowNo    := mdPatinf.ListPatbat(temp1,temp2,temp3);
      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdPatinf.Free;
         ShowErrMsg();
         Exit;
      end;
      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdPatinf.Free;
         ShowMessage('해당 환자는 존재하지 않습니다. 환자명 또는 등록번호를 다시입력하십시오.');
         WinControlSetFlag(IdText, '');
         WinControlSetFlag(NmText, '');
         WinControlSetFlag(SexAge, '');
         //
         WinControlSetFlag(Resno, '');
         //
         (InputText as TWinControl).setfocus;
         Exit;
      end;
      if RowNo > 1 then
      begin
         if MCC100F1 = nil then
         begin
            Application.CreateForm(TMCC100F1, MCC100F1);
            with MCC100F1 do
            begin
               ugd_List.Visible := True;
               ugd_PatList.Visible := False;
               ugd_List.Top  := 3;
               ugd_List.Left := 3;
               ugd_OutPatList.Visible := False;
               ugd_List.ColCount := 11;
               ugd_List.Clear;
               //ugd_List.ColCount := 6;
               ugd_List.ColCount := 11;
               ugd_List.RowCount := RowNo + 1;
               ugd_List.ColWidths[4] := 0;

               for i := 0 to RowNo - 1 do
               begin
                  ugd_List.Cells[0,i+1] := mdPatinf.sPatNo[i];
                  ugd_List.Cells[1,i+1] := mdPatinf.sPatName[i];
                  ugd_List.Cells[2,i+1] := mdPatinf.sSex[i] + '/' + Trim(Calc_Age(Date,mdPatinf.sBirtDate[i]));
                  ugd_List.Cells[3,i+1] := mdPatinf.sResNo1[i] + '-' + mdPatinf.sResNo2[i];
                  ugd_List.Cells[4,i+1] := mdPatinf.sAdmdate[i];
                  ugd_List.Cells[5,i+1] := mdPatinf.sMedDept[i];
                  ugd_List.Cells[10,i+1] := mdPatinf.sResno1[i]+'-'+mdPatinf.sResno2[i];
               end;
               // 위치 포지션 찾기
               Left := (InputText as TWinControl).ClientOrigin.x;
               Top  := (InputText as TWinControl).ClientOrigin.y + (InputText as TWinControl).Height;
               if Left > 687 then
                  Left := (InputText as TWinControl).ClientOrigin.x + (InputText as TWinControl).Width - width;
               if Top > 570 then
                  Top := (InputText as TWinControl).ClientOrigin.y - Height;
               ShowModal;
               if ResultCon = True then
               begin
                  GetPatNameFlag2 := True;
                  WinControlSetFlag(IdText, ResultNO);
                  WinControlSetFlag(NmText, ResultNm);
                  WinControlSetFlag(SexAge, ResultSexAge);
                  WinControlSetFlag(Resno,  ResultResno);
               end
               else
                  (InputText as TWinControl).SetFocus;
            end;
         end
         else
            MCC100F1.BringToFront;
      end
      else
      begin
         GetPatNameFlag2 := True;
         WinControlSetFlag(IdText, mdPatinf.sPatNo[0]);
         WinControlSetFlag(NmText, mdPatinf.sPatName[0]);
         WinControlSetFlag(SexAge, mdPatinf.sSex[0] + '/' + Trim(Calc_Age(Date,mdPatinf.sBirtDate[0])));
         WinControlSetFlag(Resno, mdPatinf.sResno1[0]+'-'+mdPatinf.sResno2[0]);
      end;
      mdPatinf.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;
//
/////////
//4.8 치과번호 조회 서비스
// 4.5 환자명/환자번호로 대상자찾기 ( InputText -> 찾고자 하는 id/이름넣은 콤포넌트명,
//                                  InText -> id 콤포넌트명,  NmText -> 이름 콤포넌트명
//                                  sFlag => 1 전체환자, 2 재원환자
function GetPatNameFlag3(InputText,IdText, NmText, SexAge, DenPatno: TWinControl;sFlag:String): Boolean;
var
   RowNo, i, code : LongInt;
   temp, temp1, temp2, temp3 : String;
   Procedure WinControlSetFlag(Control1 : TWinControl; Value9 : String);
   begin
      if (Control1 is TEdit) then
         (Control1 as TEdit).text := Value9
      else
         if (Control1 is TComboBox) then
            (Control1 as TComboBox).text := Value9
         else
            if (Control1 is TPanel) then
               (Control1 as TPanel).Caption := Value9;
   end;
begin
   GetPatNameFlag3 := False;
   if (InputText is TEdit) then
      temp := trim((InputText as TEdit).text)
   else
      if (InputText is TComboBox) then
         temp := trim((InputText as TComboBox).text)
      else
      begin
         (InputText as TWinControl).setfocus;
         exit;
      end;

   if  temp = '' then
       exit;
   Val(temp, I, Code);
   if Code <> 0 then
   begin
      // 환자명으로 찾기
      if HLength(temp) < 2 then
      begin
         showmessage('환자명을 2글자이상 입력하세요');
         (InputText as TWinControl).setfocus;
         exit;
      end;
      temp1 := '2';
      temp2 := '';
      temp3 := temp;
   end
   else // code가 0이면 환자번호
   begin
      // 환자번호로 찾기
      if length(temp) < 4 then
      begin
         showmessage('등록번호를 4글자이상 입력하세요');
         (InputText as TWinControl).setfocus;
         exit;
      end
      else if (length(temp) > 3) and (length(temp) < 9) then
      begin
         temp := FormatFloat('00000000', StrToFloat(temp));
         WinControlSetFlag(NmText, temp);
      end;

      temp1 := '1';
      temp2 := temp;
      temp3 := '';
   end;

   if (sFlag = '1') and (temp1 = '1') then         // 전체환자 환자번호로찾기
      temp1 := '1'
   else if (sFlag = '1') and (temp1 = '2') then    // 전체환자 환자명으로찾기
      temp1 := '2'
   else if (sFlag = '2') and (temp1 = '1') then    // 재원환자 환자번호로 찾기
      temp1 := '4'
   else if (sFlag = '2') and (temp1 = '2') then    // 재원환자 환자명으로 찾기
      temp1 := '5'
   else if (sFlag = '3') then
      temp1 := '8';

   Screen.Cursor := crHourglass;
   try
      mdPatinf := HmdPatinf.Create;
      RowNo    := mdPatinf.ListPatbat(temp1,temp2,temp3);
      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdPatinf.Free;
         ShowErrMsg();
         Exit;
      end;
      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdPatinf.Free;
         ShowMessage('해당 환자는 존재하지 않습니다. 환자명 또는 등록번호를 다시입력하십시오.');
         WinControlSetFlag(IdText, '');
         WinControlSetFlag(NmText, '');
         WinControlSetFlag(SexAge, '');
         WinControlSetFlag(DenPatno, '');
         (InputText as TWinControl).setfocus;
         Exit;
      end;

      if RowNo > 1 then
      begin
         if MCC100F3 = nil then
         begin
            Application.CreateForm(TMCC100F3, MCC100F3);
            with MCC100F3 do
            begin
               ugd_List.Visible := True;
               ugd_PatList.Visible := False;
               ugd_List.Top  := 3;
               ugd_List.Left := 3;
               ugd_OutPatList.Visible := False;
               ugd_List.ColCount := 9;
               ugd_List.Clear;
               ugd_List.ColCount := 7;
               ugd_List.RowCount := RowNo + 1;
               ugd_List.ColWidths[4] := 0;

               for i := 0 to RowNo - 1 do
               begin
                  ugd_List.Cells[0,i+1] := mdPatinf.sPatNo[i];
                  ugd_List.Cells[1,i+1] := mdPatinf.sPatName[i];
                  ugd_List.Cells[2,i+1] := mdPatinf.sSex[i] + '/' + Trim(Calc_Age(Date,mdPatinf.sBirtDate[i]));
                  ugd_List.Cells[3,i+1] := mdPatinf.sResNo1[i] + '-' + mdPatinf.sResNo2[i];
                  ugd_List.Cells[4,i+1] := mdPatinf.sAdmdate[i];
                  ugd_List.Cells[5,i+1] := mdPatinf.sMedDept[i];
                  //(추가. 2003.2.26 이용언)
                  ugd_List.Cells[6,i+1] := mdPatinf.sDentno[i];
               end;
               // 위치 포지션 찾기
               Left := (InputText as TWinControl).ClientOrigin.x;
               Top  := (InputText as TWinControl).ClientOrigin.y + (InputText as TWinControl).Height;
               if Left > 687 then
                  Left := (InputText as TWinControl).ClientOrigin.x + (InputText as TWinControl).Width - width;
               if Top > 570 then
                  Top := (InputText as TWinControl).ClientOrigin.y - Height;
               ShowModal;
               if ResultCon = True then
               begin
                  GetPatNameFlag3 := True;
                  WinControlSetFlag(IdText, ResultNO);
                  WinControlSetFlag(NmText, ResultNm);
                  WinControlSetFlag(SexAge, ResultSexAge);
                  WinControlSetFlag(Denpatno, ResultDenPatno);
               end
               else
                  (InputText as TWinControl).SetFocus;
            end;
         end
         else
            MCC100F3.BringToFront;
      end
      else
      begin
         GetPatNameFlag3 := True;
         WinControlSetFlag(IdText, mdPatinf.sPatNo[0]);
         WinControlSetFlag(NmText, mdPatinf.sPatName[0]);
         WinControlSetFlag(SexAge, mdPatinf.sSex[0] + '/' + Trim(Calc_Age(Date,mdPatinf.sBirtDate[0])));
         WinControlSetFlag(Denpatno, mdPatinf.sDentno[0]);
      end;
      mdPatinf.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;
/////////

// 5.사용자명/사용자번호로 대상자찾기 ( DrNurse -> R:모든의사
//                                                 S:주치의
//                                                 T:담당의
//                                                 N:모든간호사
//                                      InputText -> 찾고자 하는 id/이름넣은 콤포넌트명,
//                                      InText -> id 콤포넌트명,  NmText -> 이름 콤포넌트명)
function GetUserName(DrNurse:String;InputText,IdText, NmText: TWinControl): Boolean;
var
   RowNo, i, code : LongInt;
   temp, temp1 : String;
   Procedure WinControlSet(Control1 : TWinControl; Value9 : String);
   begin
      if (Control1 is TEdit) then
         (Control1 as TEdit).text := Value9
      else if (Control1 is TComboBox) then
         (Control1 as TComboBox).text := Value9
      else if (Control1 is TPanel) then
         (Control1 as TPanel).Caption := Value9;
   end;
begin
   GetUserName := False;
   if (InputText is TEdit) then
      temp := trim((InputText as TEdit).text)
   else
      if (InputText is TComboBox) then
         temp := trim((InputText as TComboBox).text)
      else
      begin
         (InputText as TWinControl).setfocus;
         exit;
      end;

   if  temp = '' then
       exit;

   Val(temp, I, Code);

   if Code <> 0 then
   begin
      // 환자명으로 찾기
      if HLength(temp) < 2 then
      begin
         showmessage('사용자명을 2글자이상 입력하세요');
         (InputText as TWinControl).setfocus;
         exit;
      end;
      temp1 := '2';
   end
   else
   begin
      // 환자번호로 찾기
      if length(temp) < 4 then
      begin
         showmessage('사번을 4글자이상 입력하세요');
         (InputText as TWinControl).setfocus;
         exit;
      end;
      temp1 := '1';
   end;

   Screen.Cursor := crHourglass;
   try
      mdInsamt := HmdInsamt.Create;
      //RowNo    := mdInsamt.ListUserInfo(DrNurse,temp1,temp,G_LOCATE);
      RowNo    := mdInsamt.ListUserInfo(DrNurse,temp1,temp,'EB1');

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdInsamt.Free;
         ShowErrMsg();
         Exit;
      end;
      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdInsamt.Free;
         ShowMessage('해당 사용자는 존재하지 않습니다. 사용자명 또는 사번을 다시입력하십시오.');
         WinControlSet(IdText, '');
         WinControlSet(NmText, '');
         (InputText as TWinControl).setfocus;
         Exit;
      end;
      if RowNo > 1 then
      begin
         if MCC100F2 = nil then
         begin
            Application.CreateForm(TMCC100F2, MCC100F2);
            with MCC100F2 do
            begin
               if DrNurse = 'R' then // 의사
               begin
                  ugd_PatList.Cells[4,0] := '면허번호';
                  ugd_PatList.Cells[5,0] := '전문의번호';
               end
               else if (DrNurse = 'N') or (DrNurse = 'X') then // 간호사
               begin
                  ugd_PatList.Cells[4,0] := '';
                  ugd_PatList.Cells[5,0] := '';
               end;

               ugd_PatList.RowCount := RowNo + 1;
               for i := 0 to RowNo - 1 do
               begin
                  ugd_PatList.Cells[0,i+1] := mdInsamt.sEmpNo[i];
                  ugd_PatList.Cells[1,i+1] := mdInsamt.sEmpNm[i];
                  ugd_PatList.Cells[2,i+1] := mdInsamt.sComCdNm[i];
                  ugd_PatList.Cells[3,i+1] := mdInsamt.sDeptNm[i];
                  ugd_PatList.Cells[4,i+1] := mdInsamt.sLicNo[i];
                  ugd_PatList.Cells[5,i+1] := mdInsamt.sMajorNo[i];
               end;
               // 위치 포지션 찾기
               Left := (InputText as TWinControl).ClientOrigin.x;
               Top  := (InputText as TWinControl).ClientOrigin.y + (InputText as TWinControl).Height;
               if Left > 565 then
                  Left := (InputText as TWinControl).ClientOrigin.x + (InputText as TWinControl).Width - width;
               if Top > 570 then
                  Top := (InputText as TWinControl).ClientOrigin.y - Height;
               ShowModal;
               if ResultCon = True then
               begin
                  GetUserName := True;
                  WinControlSet(IdText, ResultNO);
                  WinControlSet(NmText, ResultNm);
               end
               else
                  (InputText as TWinControl).SetFocus;
            end;
         end
         else
            MCC100F2.BringToFront;
      end
      else
      begin
         GetUserName := True;
         WinControlSet(IdText, mdInsamt.sEmpNo[0]);
         WinControlSet(NmText, mdInsamt.sEmpNm[0]);
      end;
      mdInsamt.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;


// 6.HD / POD 계산
// Gubun: 1-HD, 2-POD, AdmOpDate:입원일/수술일(YYYYMMDD), sFromDate: 기준일
function GetHdPodCnt(Gubun, AdmOpDate : string; sFromDate:TDate):string;
var
   AdmOpDt : TDateTime;
begin
   Result := '';
   if (Trim(Gubun) = '') or (Trim(AdmOpDate) = '') then
      exit;

   try
      AdmOpDt  := EncodeDate(strToint(copy(AdmOpDate,1,4)),
                             strToint(copy(AdmOpDate,5,2)),
                             strToint(copy(AdmOpDate,7,2)));
      if Gubun = '1' then
         Result := floattostr(Trunc(sFromDate - AdmOpDt + 1))  // HD
      else if Gubun = '2' then
         Result := floattostr(Trunc(sFromDate - AdmOpDt));     // POD
   except
      Result := '';
   end;
end;

// 7.yyyymmddhh24miss를 yyyy-mm-dd hh24:mi로 변환
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

// 7.2 yyyymmddhh24miss를 yyyy-mm-dd hh24:mi:ss로 변환
function  ConvertDDate2(DTstr:String):String;
begin
    DTstr := Trim(DTstr);

    if (DTstr = '') then begin
        Result := '';
        Exit;
    end;

    if (length(DTstr) > 8) and (length(DTstr) < 14) then
        DTstr := DTstr + copy('000000',1,(14-length(DTstr)));

    Result := copy(Dtstr,1,4)+'-'+copy(Dtstr,5,2)+'-'+copy(Dtstr,7,2)+' '+
              copy(Dtstr,9,2)+':'+copy(Dtstr,11,2)+':'+copy(Dtstr,13,2);
end;

// 7.3 yyyymmddhh24miss를 yy-mm-dd hh24:mi로 변환
function  ConvertDDate3(DTstr:String):String;
begin
    DTstr := Trim(DTstr);

    if (DTstr = '') then begin
        Result := '';
        Exit;
    end;

    if (length(DTstr) > 8) and (length(DTstr) < 14) then
        DTstr := DTstr + copy('000000',1,(14-length(DTstr)));

    Result := copy(Dtstr,3,2)+'-'+copy(Dtstr,5,2)+'-'+copy(Dtstr,7,2)+' '+
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

// 8.yyyymmdd를 yyyy년 mm월 dd일로 변환
function  ConvertSDate2(DTstr:String):String;
begin
    if (Trim(DTstr) = '') then
        Result := ''
    else
        Result := copy(Dtstr,1,4)+'년 '+copy(Dtstr,5,2)+ '월 '+copy(Dtstr,7,2)+ '일 ';
end;


// 8-1.hh24mi를 hh24:mi로 변환
function  ConvertDTime(DTstr:String):String;
begin
    if (Trim(DTstr) = '') then
        Result := ''
    else
        Result := copy(Dtstr,1,2)+':'+copy(Dtstr,3,2);
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

// 10-1.hh24:mi를 hh24mi로 변환
function  InvertLTime(DTstr:String):String;
begin
    if (Trim(DTstr) = '') then begin
        Result := '';
        Exit;
    end;

    Result := copy(Dtstr,1,2) + copy(Dtstr,4,2);
end;

// 11-1.진료공통 소분류코드,명 가져오기  (ComCd   -> 공통코드 대분류값
//                                        CdCombo -> 코드값을 담는 ComboBox
//                                        NmCombo -> 코드명값을 담는 ComboBox )
procedure GetComName(ComCd: string; CdCombo, NmCombo:TComboBox);
var
   RowNo, i : integer;
begin
   Screen.Cursor := crHourglass;
   try
      mdMcomct := HmdMcomct.Create;
      RowNo    := mdMcomct.ListComCd('S',ComCd,'000','');
      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdMcomct.Free;
         ShowErrMsg();
         Exit;
      end;
      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdMcomct.Free;
         Exit;
      end;
      // 코드 처리
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdMcomct.sComcd3[i]);
      end;

      // 코드명 처리
      with NmCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdMcomct.sComcdnm3[i]);
      end;

      mdMcomct.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

// 11-2.진료공통 소분류코드,명 가져오기  (ComCd   -> 공통코드 대분류값
//                                        CdCombo -> 코드값을 담는 ComboBox
//                                        NmCombo -> 코드명값을 담는 ComboBox )
procedure GetComName2(ComCd: string;TSL:TStringList);
var
   RowNo, i : integer;
begin
   Screen.Cursor := crHourglass;
   try
      mdMcomct := HmdMcomct.Create;
      RowNo    := mdMcomct.ListComCd('S',ComCd,'000','');
      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdMcomct.Free;
         ShowErrMsg();
         Exit;
      end;
      // 조회건수 없음
      if RowNo = 0 then
      begin
         TSL.Clear;
         mdMcomct.Free;
         Exit;
      end;

      // 코드명 처리
      for i := 0 to RowNo - 1 do
      begin
          TSL.Add(mdMcomct.sComcdnm3[i]);
      end;
      mdMcomct.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

// 11-3.진료공통 소분류코드,명 가져오기  (ComCd1   -> 공통코드 대분류값
//                                        ComCd2   -> 공통코드 중분류값
//                                        CdCombo -> 코드값을 담는 ComboBox
//                                        NmCombo -> 코드명값을 담는 ComboBox )
procedure GetComName3(ComCd1,ComCd2: string; CdCombo, NmCombo:TComboBox);
var
   RowNo, i : integer;
begin
   Screen.Cursor := crHourglass;
   try
      mdMcomct := HmdMcomct.Create;
      RowNo    := mdMcomct.ListComCd('S',ComCd1,ComCd2,'');
      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdMcomct.Free;
         ShowErrMsg();
         Exit;
      end;
      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdMcomct.Free;
         Exit;
      end;
      // 코드 처리
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdMcomct.sComcd3[i]);
      end;

      // 코드명 처리
      with NmCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdMcomct.sComcdnm3[i]);
      end;

      mdMcomct.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

// 12. Line Feed와 Carrage Return 문자를 string에서 제거.
function  RemoveLFCR(Str:String):String;
var
    key : char;
    OutStr : String;
    i : Integer;
begin
    OutStr := '';
    for i := 1 to Length(str) do begin
        key := str[i];
        if (key<>#13) and (key<>#10) then
           OutStr := OutStr + key
        else
           OutStr := TrimRight(OutStr) + ' ';  //수정부분..
    end;
    result := OutStr;
end;


// 13. Tag값 1 변환
procedure TagChange(Sender: TObject);
begin
   if Sender is TComponent then
     (Sender as TComponent).Tag := 1;
end;

// 14. Tag값 0로 변환
procedure TagClear(Sub_Form:TForm);
var
   i : LongInt;
begin
   if Sub_Form is TForm then
      with Sub_Form do
         for i := 0 to ComponentCount -1 do
            if components[i] is TComponent then
               (components[i] as TComponent).tag := 0;
end;

// 15. Tag값 1값 존재여부 check
function TagChgChk(Sub_Form:TForm):Boolean;
var
   i : LongInt;
begin
   TagChgChk := False;
   if Sub_Form is TForm then
      with Sub_Form do
         for i := 0 to ComponentCount -1 do
            if components[i] is TComponent then
               if (components[i] as TComponent).tag = 1 then
               begin
                  TagChgChk := True;
                  exit;
               end;
end;

// 16. String 내의 특정 문자 삭제
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

function Is_Null_Record(Sender: TObject;Row:Integer):Boolean;
var
     col : integer;
     Is_Null:Boolean;
begin
     Is_Null := True ;

     if sender.ClassType = TStringGrid then
     begin
        for col := 0 to (Sender as TStringGrid).ColCount -1 do
           If (Sender as TStringGrid).Cells[col,Row] <> '' then
              Is_Null := False ;
     end;
     if sender.ClassType = TUltraGrid then
     begin
        for col := 0 to (Sender as TUltraGrid).ColCount -1 do
           If (Sender as TUltraGrid).Cells[col,Row] <> '' then
              Is_Null := False ;
     end;
     result := Is_Null;
end;

// 18. 진료지원공통 소분류코드,명 가져오기
procedure GetSDComName(ComCd: string; CdCombo, NmCombo:TComboBox);
var
   RowNo, i : integer;
begin
   Screen.Cursor := crHourglass;
   try
      mdExCode := HmdExCode.Create;
      RowNo    := mdExCode.ListSDComNm(ComCd);
      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdExCode.Free;
         ShowErrMsg();
         Exit;
      end;
      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdExCode.Free;
         ShowMessage('조회할 자료가 없습니다.');
         Exit;
      end;
      // 코드 처리
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdExCode.sComCdDtl[i]);
      end;

      // 코드명 처리
      with NmCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdExCode.sComCdNm[i]);
      end;

      mdExCode.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

// 19. 한영키를 영문키로 변환
procedure EngKeyChg(Handle1:THandle);
var
 tMode : HIMC;
begin
   tMode := ImmGetContext(Handle1);
   ImmSetConversionStatus(tMode, IME_CMODE_ALPHANUMERIC,
                                 IME_CMODE_ALPHANUMERIC);
end;


function  dateEndOfMonth(D: TDateTime): TDateTime;
var
 Year, Month, Day: Word;
begin
 DecodeDate(D, Year, Month, Day);
 if Month = 12 then
 begin
   Inc(Year);
   Month := 1;
 end
 else
   Inc(Month);

 {월의 다음월의 시작일에서 1을 뺀다}
 Result := EncodeDate(Year, Month, 1) - 1;
end;

// 21. Excel처리   ( Dis => 0 : excel 표시
//                   Dis => 1 : excel 표시안함)
procedure ExcelSave(ExcelGrid:TUltraGrid;Title:String; Disp:Integer);
var
   ExcelAP1 : TExcelApplication;
   ExcelWS1 : TExcelWorksheet;
   ExcelWB1 : TExcelWorkbook;
   ExcelAP2 : Variant;
   SaveD1 : TSaveDialog;
   FName1 : String;
   i,j : LongInt;
   //range1 : Range;
   range1 : ExcelRange;
begin
   if Application.MessageBox('Excel화일로 저장하시겠습니까?', 'Excel저장', MB_OKCANCEL) <> IDOK then
      exit;
   if Disp = 1 then
   begin
      SaveD1 := TSaveDialog.Create(nil);
      SaveD1.InitialDir := 'C:\UniHIS';
      SaveD1.DefaultExt := 'xls';
      SaveD1.FileName := Title;
      SaveD1.Filter := '엑셀화일(*.xls)|*.xls|Ms';
      if SaveD1.Execute = False then
      begin
         FreeAndNil(SaveD1);
         exit;
      end
      else
         FName1 := SaveD1.FileName;
      FreeAndNil(SaveD1);
   end;

   Screen.Cursor := crHourglass;
   if Disp = 1 then
   begin
      try
         ExcelAP1 := TExcelApplication.Create(nil);
         ExcelWB1 := TExcelWorkbook.Create(nil);
         ExcelWS1 := TExcelWorksheet.Create(nil);

         ExcelAP1.Connect;
         ExcelAP1.Workbooks.Add(xlWBATWorksheet,0);
         ExcelWB1.ConnectTo(ExcelAP1.Workbooks.Item[1]);
         EXcelWS1.ConnectTo(ExcelAP1.Sheets[1] as _Worksheet);
      except
         Screen.Cursor := crDefault;
         showmessage('Excel을 찾을수 없습니다.');
         ExcelAP1.Disconnect;
         FreeAndNil(ExcelWS1);
         FreeAndNil(ExcelWB1);
         FreeAndNil(ExcelAP1);
         exit;
      end;

      with EXcelWS1 do
      begin
         // 타이틀
         range1 := range[cells.item[3,2],cells.item[ExcelGrid.Colcount +3,ExcelGrid.RowCount+2]];
         Cells.Item[1,3] := Title;
         // 처리 Routine (grid로 받음)
         for i := 0 to ExcelGrid.RowCount - 1 do
            for j := 0 to ExcelGrid.Colcount - 1 do
                Cells.Item[i + 3, j + 2] := string(ExcelGrid.Cells[j,i]);
         if FileExists(FName1) then
         begin
            DeleteFile(FName1);
         end;
         range1.Columns.AutoFit;
         SaveAs(FName1);
      end;
      ExcelAP1.Disconnect;
      ExcelAP1.Quit;
      FreeAndNil(ExcelWS1);
      FreeAndNil(ExcelWB1);
      FreeAndNil(ExcelAP1);
      Screen.Cursor := crDefault;
      showmessage('Excel화일로 저장되었습니다.');
   end
   else
   begin
       try
          ExcelAP2 :=CreateOLEObject('Excel.Application');
          ExcelAP2.WorkBooks.add;
          ExcelAP2.visible := true;
          // 처리 Routine (grid로 받음)
          // 타이틀
          ExcelAP2.worksheets[1].cells[1,3] := Title;
          for i := 0 to ExcelGrid.RowCount - 1 do
          begin
             for j := 0 to ExcelGrid.ColCount - 1 do
             begin
                ExcelAP2.worksheets[1].cells[i + 3, j + 2] := '''' + string(ExcelGrid.Cells[j,i]);
             end;
          end;
          ExcelAP2.Range['A1',CHR(64+ ExcelGrid.RowCount+1)+IntToStr(i + 3)].select;
          ExcelAP2.Selection.Font.Name:='굴림체';
          ExcelAP2.Selection.Font.Size:=10;
          ExcelAP2.selection.Columns.AutoFit;
          ExcelAP2.Range['A1','A1'].select;
       except
          Screen.Cursor := crDefault;
          ExcelAP2.Quit;
          showmessage('Excel을 찾을수 없습니다.');
          exit;
       end;
       Screen.Cursor := crDefault;
   end;
end;


// 22.처방발행처코드 가져오기
function GetOrderDpNo(CdCombo, NmCombo:TComboBox): Integer;
var
   RowNo, i, j : integer;
begin
   // 리턴값 초기화
   GetOrderDpNo := -1;
   Screen.Cursor := crHourglass;
   try
      mdExCode := HmdExCode.Create;
      RowNo    := mdExCode.SelDeptNm('3',G_LOCATE);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdExCode.Free;
         ShowErrMsg();
         Exit;
      end;

      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;

      // 코드 처리
      j := 0;
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
         begin
            Items.add(mdExCode.sDeptCd[i]);
            Inc(j);
             if mdExCode.sDeptCd[i] = md_DeptCd then
                GetOrderDpNo := j;
         end;
      end;

      // 코드명 처리
      with NmCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdExCode.sDeptNm[i]);
      end;

      mdExCode.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

// 23.컨설트의뢰과코드 가져오기
function GetConslDpNo(CdCombo, NmCombo:TComboBox): Integer;
var
   RowNo, i, j : integer;
begin
   // 리턴값 초기화
   GetConslDpNo := -1;
   Screen.Cursor := crHourglass;
   try
      mdExCode := HmdExCode.Create;
      RowNo    := mdExCode.SelDeptNm('4',G_LOCATE);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdExCode.Free;
         ShowErrMsg();
         Exit;
      end;

      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;

      // 코드 처리
      j := 0;
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
         begin
            Items.add(mdExCode.sDeptCd[i]);
            Inc(j);
             if mdExCode.sDeptCd[i] = md_DeptCd then
                GetConslDpNo := j;
         end;
      end;

      // 코드명 처리
      with NmCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdExCode.sDeptNm[i]);
      end;

      mdExCode.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

function  ChgUserInfo(UserId: String): Boolean;
var
   RowNo : integer;
begin
   // 리턴값 초기화
   ChgUserInfo := False;

   // LOG-IN한 사용자의 정보를 조회한다.
   Screen.Cursor := crHourglass;
   try
      mdExCode := HmdExCode.Create;
      RowNo    := mdExCode.UserInform(UserId,G_LOCATE);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdExCode.Free;
         ShowErrMsg();
         Exit;
      end;

      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;

      md_UserId   := UserId;                  // 사용자ID
      md_UserNm   := mdExCode.sUserNm[0];     // 사용자명
      md_DeptCd   := mdExCode.sDeptCd[0];     // 소속부서
      md_DeptNm   := mdExCode.sDeptNm[0];     // 소속부서명
      md_LicNo    := mdExCode.sLicNo[0];      // 면허번호
      md_MajorNo  := mdExCode.sMajorNo[0];    // 전문의번호
      md_JicJong  := mdExCode.sJicJong[0];    // 직종(사용자구분 HAA:의사 HAB:간호사  HAC : 기사)
      md_JikGup   := mdExCode.sJikGup[0];     // 직급
      md_JikGupNm := mdExCode.sJikGupNm[0];   // 직급명
      if trim(mdExCode.sSort[0]) <> '' then
           md_Sort  := mdExCode.sSort[0]        // SET조회순서
      else md_Sort  := '1';
      if trim(mdExCode.sInscfmYn[0]) = 'Y' then
           md_InscfmYn := 'Y'                   // 처방저장시확인여부
      else md_InscfmYn := '';
      if trim(mdExCode.sPatSel[0]) <> '' then
           md_PatSel := mdExCode.sPatSel[0]     // 입원환자선택기준
      else md_PatSel := '3';
      if trim(mdExCode.sNextScr[0]) <> '' then
           md_NextScr := mdExCode.sNextScr[0]   // 환자선택후 다음화면
      else md_NextScr  := '1';
      if trim(mdExCode.sDiagSel[0]) <> '' then
           md_DiagSel := mdExCode.sDiagSel[0]   // 진단명사용기준
      else md_DiagSel := '1';
      md_WardNo1  := mdExCode.sWardNo1 [0];   // 근무병동1 (추가)
      md_WardNo2  := mdExCode.sWardNo2 [0];   // 근무병동2 (추가)
      md_Days     := mdExCode.sDays    [0];   // 약처방기본일수
      md_Counts   := mdExCode.sCounts  [0];   // 약처방기본횟수
      md_WkareaCd := mdExCode.sWkareaCd[0];   // 작업장 코드
      md_OrdFont  := mdExCode.sOrdFont [0];   // 처방입력List Font
      md_PreFont  := mdExCode.sPreFont [0];   // 전처방List Font
      md_SetFont  := mdExCode.sSetFont [0];   // Set처방List Font
      md_ConsltYn := mdExCode.sConsltYn[0];   // 컨설트처방 Repeat 여부
      md_WeightYn := mdExCode.sWeightYn[0];   // 환자체중별용량 사용 여부
      md_PatselYn := mdExCode.sPatselYn[0];   // 처방종료후 환자선택 화면으로 이동
      md_PreOrdYn := mdExCode.sPreOrdYn[0];   // 전처방 펼쳐보이기 여부
      md_OutordYn := mdExCode.sOutordYn[0];   // 전처방 중 외래처방만 보이기
      md_Resltopt := mdExCode.sResltopt[0];   // 검사결과 조회기준
      md_Selmm    := mdExCode.sSelmm   [0];   // 검사결과 조히기간
      md_Rsvselfg := mdExCode.sRsvselfg[0];   // 재진예약시 예약현황조회기준
      md_Refresh  := mdExCode.sRefresh [0];   // 외래환자 Refresh
      md_CellEdit := mdExCode.sCelledit[0];   // 처방셀입력모드
      md_OrdCopy  := mdExCode.sOrdcopy [0];   // 전처방자동복사
      md_DrugPrt  := mdExCode.sDrugprt [0];   // 마약처방전자동복사
      md_OrgDept  := mdExCode.sOrgDept [0];   // 원소속과.
      md_OrgDept  := mdExCode.sOrgDept [0];   // 원소속과.
      md_drugunit := mdExCode.sdrugunit[0];   // 약 단위
      md_Chart1   := mdExCode.sChart1  [0];   // N-차트 옵션1
      md_Chart2   := mdExCode.sChart2  [0];   // N-차트 옵션2

      mdExCode.Free;
      ChgUserInfo := True;
   finally
      Screen.Cursor := crDefault;
   end;
end;

// 25.한글을 한글자로 인식하여 글자 길이값 구하는 함수
function  HLength(str1:String):Integer;
var
   i,j : LongInt;
begin
   i := 1;   j := 0;
   while Length(str1) >= i do
   begin

      if (ByteType(str1,i) = mbSingleByte) then
         Inc(i)
      else
         i := i + 2;
      Inc(j);
   end;
   HLength := j;
end;

// 26.프린터 상태 체크.
function IsNotPrinterReady:Boolean;
var
    PrinterIdx : Integer;
begin
    Result := False;
    try
        PrinterIdx := Printer.PrinterIndex;
    except
        ShowMessage('프린터가 제대로 설치되었는지 확인하시기 바랍니다.');
        Result := True;
    end;
end;

// 27.실행화일 실행중인지 체크.
procedure prCantDupExe(fmName:String);
begin
   CreateMutex(nil,false,PChar(fmName));
   if GetLastError = ERROR_ALREADY_EXISTS then
   begin
      SendMessage(HWND_BROADCAST, RegisterWindowMessage(PChar(fmName)),0,0);
      prInfMsg('Program is already running!!');
      Halt(0);
   end;
   Application.Initialize;
   Application.ShowMainForm:= True;
   ShowWindow(application.Handle, SW_RESTORE);
end;

// 28. 체크 메세지
procedure prInfMsg(sMsg: String); overload;
begin
//   MessageDlg(sMsg,mtInformation,[mbok],0);
end;

// 29.제증명서 화면이 실행 중이면 죽이기.
procedure KillChartShow;
var
   WinHandle: THandle;
begin
     WinHandle := FindWindow(nil, 'MDP240F1 제증명서');
     while WinHandle > 0 do
     begin
       SendMessage(WinHandle, WM_CLOSE, 0, 0);
       WinHandle := FindWindow(nil, 'MDP240F1 제증명서');
     end;
end;

// 30. String내의 특정 문자열 삭제
function DeleteStr(OrigStr,DelStr: String):String;
begin
   while Pos(DelStr, OrigStr) > 0 do
      System.Delete(OrigStr, Pos(DelStr, OrigStr), Length(DelStr));

   Result := OrigStr;
end;

// 31. 구분자를 기준으로 String만 분리 (OrgStr=문자열; sMark:구분자; iPos=추출할 String Index)
function SeperateData(OrgStr, sMark:string; iPos:integer):string;
begin
  OrgStr := OrgStr + sMark;
  while ( iPos > 0 ) do
  begin
    Result := Trim( Copy(OrgStr, 1, Pos(sMark, OrgStr) - 1));
    System.Delete(OrgStr, 1, Pos(sMark, OrgStr));
    Dec(iPos);
  end;
end;

// 32.간호행정용 부서 가져오기 ( CdCombo -> 코드값을 담는 ComboBox
//                               NmCombo -> 코드명값을 담는 ComboBox )
function GetNurseDt(CdCombo, NmCombo:TComboBox):integer;
var
   RowNo, i, j : integer;
begin
   // 리턴값 초기화
   GetNurseDt := -1;
   Screen.Cursor := crHourglass;
   try
      mdExCode := HmdExCode.Create;
      RowNo    := mdExCode.SelDeptNm('6',G_LOCATE);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdExCode.Free;
         ShowErrMsg();
         Exit;
      end;

      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;

      // 코드 처리
      j := 0;
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
         begin
            Items.add(mdExCode.sDeptCd[i]);
            inc(j);
             if mdExCode.sDeptCd[i] = G_DEPTCD then
                GetNurseDt := j;
         end;
      end;

      // 코드명 처리
      with NmCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdExCode.sDeptNm[i]);
      end;

      mdExCode.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

// 33.문자열 처음부터 KeyStr이 나오기 직전까지를 잘라낸다.
function  FindStr(Fstr:String;KeyStr:String):String;
var
    Cnt,idx : Integer;
    ResultStr: String;
begin
    ResultStr := '';
    Cnt := Length(FStr);
    if (Cnt = 0) then begin
        Result := '';
        Exit;
    end;

    for idx := 1 to cnt do begin
        if (FStr[idx] = KeyStr) then begin
              Result := ResultStr;
              Exit;
        end
        else begin
            ResultStr := ResultStr + FStr[idx];
        end;
    end;
end;

// 34. 문자열 처음부터 KeyStr까지를 잘라낸 나머지를 Return.
function FindRStr(Fstr:String;KeyStr:String):String;
var
    idx, Cnt : Integer;
begin
    Result := '';
    Cnt := Length(KeyStr);

    if (Length(FStr) < 2) then Exit;
    if (Cnt = 0) or (Cnt > Length(FStr)) then Exit;

    for idx := Length(FStr) - Cnt downto Cnt do begin
        if (Copy(Fstr,idx,Cnt) = KeyStr) then begin
            Result := Copy(Fstr,idx+Cnt,Length(FStr)-idx-Cnt+1);
            exit;
        end;
    end;
end;

// 35. 외부 공통코드 List 가져오기 (CCCOMCDT)
procedure GetCComCdList(Code1,Code2: String; CdCombo,NmCombo: TComboBox);
var
   RowNo, i : integer;
   List_mdExCode : HmdExCode;
begin
   CdCombo.Items.Clear;
   NmCombo.Items.Clear;

   Screen.Cursor := crHourglass;
   try
      //Create Class
      List_mdExCode := HmdExCode.Create;

      //공통Class Function Call (CCCOMCDT)
      RowNo := List_mdExCode.ListComCodeName(Code1,Code2);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         List_mdExCode.Free;
         ShowErrMsg;
         Exit;
      end;

      //Select건수 > 0인 경우
      if RowNo > 0 then
      begin
         //Select된 Data를 ComboBox에 Display
         CdCombo.Items.Add('');
         NmCombo.Items.Add('');
         for i := 0 to RowNo - 1 do
         begin
            CdCombo.Items.Add( List_mdExCode.sCode[i]     ); //코드
            NmCombo.Items.Add( List_mdExCode.sCodeName[i] ); //코드명
         end;
         NmCombo.ItemIndex := 0;
         CdCombo.ItemIndex := 0;
      end;

      List_mdExCode.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

// 36. CheckBox.Checked Value에 따라 Insert value Return
function GetCheckedValue(cbxItem:TCheckBox):String;
begin
   if cbxItem.Checked then
        Result := 'Y'
   else Result := '';
end;

// 37. Value 값에 따라 CheckBox.Checked Value Set
function SetCheckedValue(sValue:String):Boolean;
begin
   if sValue = 'Y' then
        Result := True
   else Result := False;
end;

{// 38. Caution Check
function CautionSelect(Patno:String;Target:TBitBtn):String;
var
   RowNo  : LongInt;
   sPatNo,Inform : string;
begin
   Target.Caption := 'Caution';
   Target.Enabled := False;

   sPatNo := Patno;

   Screen.Cursor := crHourglass;
   try
      mdCautnt := HmdCautnt.Create;
      RowNo := mdCautnt.SelCaution(sPatNo);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdCautnt.Free;
         ShowErrMsg;
         Exit;
      end;

      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdCautnt.Free;
         Target.Caption := 'Caution';
         Target.Enabled := False;
         Exit;
      end;

      if Rowno = 1 then
      begin
         Inform := trim(mdCautnt.sInform[0]);
         Target.Enabled := True;

         if Inform <> '' then Target.Caption := '['+ Inform +']'
         else Target.Caption := 'Caution';
      end;
      mdCautnt.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;
}
// 38. Caution Check
Function CautionSelect(Patno:String;Target:TControl):String;
var
   RowNo  : LongInt;
   sPatNo,Inform : string;
begin
   if      (Target is TButton) then
           (Target as TButton).Caption := 'Caution'
   else if (Target is TSpeedButton) then
           (Target as TSpeedButton).Caption := 'Caution'
   else if (Target is TLabel)  then
           (Target as TLabel).Caption := 'Caution';
   Target.Enabled := False;

   Screen.Cursor := crHourglass;
   try
      mdCautnt := HmdCautnt.Create;
      sPatNo := Patno;
      RowNo := mdCautnt.SelCaution(sPatNo);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdCautnt.Free;
         ShowErrMsg;
         Exit;
      end;

      if RowNo > 0 then
      begin
         // 해제된 경우 깜박이지 않도록 Exit 이력이 기록되므로 이전과는 틀려짐 2005.11.15 김송주 추가  시작
         if
            ((trim(mdCautnt.sHivYn   [0]) = 'N') and
             //(trim(mdCautnt.sVdrlYn  [0]) = 'N') and  //깜빡임제거.감염실(김선우)구두요청. KimDaeYong 2019-10-23
             (trim(mdCautnt.sHbsagYn [0]) = 'N') and
             (trim(mdCautnt.sHcvYn   [0]) = 'N') and
             //(trim(mdCautnt.sVmOthrYn[0]) = 'N') and -- 2011.10.05 Caution Change....
             (trim(mdCautnt.sRadCont [0]) = 'N') and
             (trim(mdCautnt.sPeniciln[0]) = 'N') and
             (trim(mdCautnt.sTbYn    [0]) = 'N') and
             (trim(mdCautnt.sDiffYn  [0]) = 'N') and
             (trim(mdCautnt.sFunYn   [0]) = 'N') and
             //(trim(mdCautnt.sHbcYn   [0]) = 'N') and  //깜빡임제거.감염실(김선우)구두요청. KimDaeYong 2019-10-23
             (trim(mdCautnt.sHAVYn   [0]) = 'N') and
             (trim(mdCautnt.sRotaYn  [0]) = 'N') and    //로타바이러스 추가, KimDaeYong 2015-01-05
             (trim(mdCautnt.sSuduYn  [0]) = 'N') and    //수두 추가, KimDaeYong 2015-01-07
             (trim(mdCautnt.sHongYn  [0]) = 'N') and    //홍역 추가, KimDaeYong 2015-01-07
             (trim(mdCautnt.sOhmYn   [0]) = 'N') and    //옴 추가, KimDaeYong 2015-01-07
             (trim(mdCautnt.sEeeYn   [0]) = 'N') and    //이 추가, KimDaeYong 2015-01-07
             (trim(mdCautnt.sJangtiYn[0]) = 'N') and    //장티푸스 추가, KimDaeYong 2015-01-07
             (trim(mdCautnt.sEeejilYn[0]) = 'N') and    //세균성이질 추가, KimDaeYong 2015-01-07
             (trim(mdCautnt.sNewfluYn[0]) = 'N') and    //신종플루 추가, KimDaeYong 2015-01-07
             (trim(mdCautnt.sPungYn  [0]) = 'N') and    //풍진 추가, KimDaeYong 2015-01-07
             (trim(mdCautnt.sInfluYn [0]) = 'N') and    //인풀루엔자 추가, KimDaeYong 2015-01-07
             (trim(mdCautnt.sVmRemark[0]) = '')  and
             (trim(mdCautnt.sOtherRmk[0]) = '')  and
             //(trim(mdCautnt.sInform  [0]) = '')  and  //깜빡임제거.감염실(김선우)구두요청. KimDaeYong 2019-10-23
             (trim(mdCautnt.sDrugAlgy[0]) = '')  and
             //KimDaeYong 2015-12-17
             (trim(mdCautnt.sNewinfecyn[0]) = 'N') and
             (trim(mdCautnt.sBetcyn  [0]) = 'N') and
             (trim(mdCautnt.sCreyn   [0]) = 'N') and
             (trim(mdCautnt.sVrsayn  [0]) = 'N') and
             (trim(mdCautnt.sCjdyn   [0]) = 'N') and
             (trim(mdCautnt.sCetcyn  [0]) = 'N') and
             (trim(mdCautnt.sMumpsyn [0]) = 'N') and
             (trim(mdCautnt.sPeryn   [0]) = 'N') and
             (trim(mdCautnt.sMenyn   [0]) = 'N') and
             (trim(mdCautnt.sDetcyn  [0]) = 'N') and
             //KimDaeYong 2018-02-06
             (trim(mdCautnt.sMrpayn  [0]) = 'N') and
             (trim(mdCautnt.sCpeyn   [0]) = 'N') and
             (trim(mdCautnt.sCpetcyn [0]) = 'N') and

             ((trim(mdCautnt.sMrsaYn  [0]) = 'C') or (trim(mdCautnt.sMrsaYn [0]) = 'N')) and
             ((trim(mdCautnt.sVreYn   [0]) = 'C') or (trim(mdCautnt.sVreYn  [0]) = 'N')) and
             ((trim(mdCautnt.sAfbYn   [0]) = 'C') or (trim(mdCautnt.sAfbYn  [0]) = 'N')))
         then
         begin
             mdCautnt.Free;
             Exit;
         end;
         // 해제된 경우 깜박이지 않도록 Exit 이력이 기록되므로 이전과는 틀려짐 2005.11.15 김송주 추가  끝

         if Trim(mdCautnt.sInform[0]) <> '' then
              Inform := 'Caution['+ Trim(mdCautnt.sInform[0]) +']'
         else Inform := 'Caution';

         if      (Target is TButton) then
                 (Target as TButton).Caption := Inform
         else if (Target is TSpeedButton) then
                 (Target as TSpeedButton).Caption := Inform
         else if (Target is TLabel) then
                 (Target as TLabel).Caption := Inform;

         Target.Enabled := True;
      end;

      mdCautnt.Free;
   finally
      screen.Cursor := crDefault;
   end;
end;

// 39. 퇴원심사여부 Check
function CheckBckStat(PatNo,AdmDate:String; var vStatus:String):Boolean;
var
   RowNo : Integer;
   sType1, sType2, sType3, sType4, sMessage : String;
begin
   Result := False;
   vStatus:= '';

   Screen.Cursor := crHourGlass;
   try
      //create class
      mdWrkLst := HmdWrkLst.Create;

      //Input Params Assign
      sType1 := '1';     //조회구분: '1'=보험심사구분Check
      sType2 := PatNo;   //환자번호
      sType3 := AdmDate; //입원일자
      sType4 := '';      //추가조건

      //Tuxedo Service Call
      RowNo := mdWrkLst.SelBckStat(sType1,sType2,sType3,sType4);

      //System Error
      if (RowNo = -1) then
      begin
         mdWrkLst.Free;
         ShowErrMsg;
         Exit;
      end;

      if (RowNo = 0) then
      begin
         mdWrkLst.Free;
         ShowMessage('입원환자정보가 존재하지 않습니다');
         Exit;
      end;

      //0:퇴원지시,1:퇴원지시확인,2:심사중,3:심사완료,4:계산서출력,5:가퇴원,6:퇴원/수납완료
      vStatus := mdWrkLst.sCode1[0];
      mdWrkLst.Free;
      if      vStatus = '2' then sMessage := '[퇴원심사가 진행중]인'
      else if vStatus = '3' then sMessage := '[퇴원심사가 완료]된'
      else if vStatus = '4' then sMessage := '[퇴원계산서가 출력]된'
      else if vStatus = '5' then sMessage := '[가퇴원]된'
      else if vStatus = '6' then sMessage := '[퇴원/수납 완료]된';
      if (vStatus >= '2') then
         ShowMessage('※ '+sMessage+' 환자이므로, 어떠한 기록도 입력/수정할 수 없습니다.'+#13#10+#13#10+
                     '   입력/수정이 필요한 경우, 먼저 의료보험과에 연락하여 심사마감 취소를 해야합니다.');
   finally
      Screen.Cursor := crDefault;
   end;

   Result := True;
end;

// 40. 입원중인 환자인지 Check.
function CheckAdmPat(PatNo:String; var vPatSect:String):Boolean;
var
   RowNo : Integer;
   sType1, sType2, sType3, sType4 : String;
begin
   Result := False;

   Screen.Cursor := crHourGlass;
   try
      //create class
      mdWrkLst := HmdWrkLst.Create;

      //Input Params Assign
      sType1 := '3';     //조회구분: '3'=입원환자여부
      sType2 := PatNo;   //환자번호
      sType3 := '';      //추가조건
      sType4 := '';      //추가조건

      //Tuxedo Service Call
      RowNo := mdWrkLst.SelBckStat(sType1,sType2,sType3,sType4);                

      //System Error
      if (RowNo = -1) then
      begin
         mdWrkLst.Free;
         ShowErrMsg;
         Exit;
      end;

      //System Error
      if (RowNo = 0) then
      begin
         mdWrkLst.Free;
         Exit;
      end;

      vPatSect := mdWrkLst.sCode1[0];  //'I'=입원중인 환자

      mdWrkLst.Free;
   finally
      Screen.Cursor := crDefault;
   end;
   Result := True;
end;

// 41. 병원타이틀
function LocateTitle(sLocate:String):String;
var
   RowNo : integer;
begin
   // 리턴값 초기화
   Result := '';

   // LOG-IN한 LOCATE의 정보를 조회한다.
   Screen.Cursor := crHourglass;
   try
      mdExCode := HmdExCode.Create;
      RowNo    := mdExCode.HosInform(sLocate);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdExCode.Free;
         ShowErrMsg();
//         ShowSysMsg;
         Exit;
      end;

      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;

      md_HosName     := mdExCode.sHosName[0];        // 병원명
      md_HosAddress  := mdExCode.sHosAddress[0];     // 병원주소
      md_HosTel      := mdExCode.sHosTel[0];         // 병원 전화번호
      md_HosDr       := mdExCode.sHosDr[0];          // 병원장
      md_HosFax      := mdExCode.sHosFax[0];         // 병원 팩스번호
      md_InsurId     := mdExCode.sInsurId[0];         // 요양기관 번호

      mdExCode.Free;
      Result := md_HosName;
   finally
      Screen.Cursor := crDefault;
   end;
end;


// 42. 의사별 임상연구번호 List 가져오기 (SDLABMST)
procedure GetLabNoList(MedDept,MedDr: String; CdCombo: TComboBox);
var
   RowNo, i : integer;
   List_mdExcode : HmdExcode;
begin
   CdCombo.Items.Clear;

   Screen.Cursor := crHourglass;
   try
      //Create Class
      List_mdExcode := HmdExcode.Create;

      //공통Class Function Call (SDLABMST)
      RowNo := List_mdExcode.ListLabNo(MedDept, MedDr);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         List_mdExcode.Free;
         ShowErrMsg;
         Exit;
      end;

      //Select건수 > 0인 경우
      if RowNo > 0 then
      begin
         //Select된 Data를 ComboBox에 Display
         CdCombo.Items.Add('');
         for i := 0 to RowNo - 1 do
             CdCombo.Items.Add( Trim(List_mdExcode.sLabNo[i])); //임상연구번호
         CdCombo.ItemIndex := 0;
      end;

      List_mdExcode.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

// 화면에서의 Commit 시 Trunsaction 시작
function BeginTRSC : Boolean;
begin

   //Result := txBegin(600);
   Result := txBegin(1200);  // 2013.1.18 원무쪽에서 time 이 길어지는 경우 있는것으로 추측 2배로 늘려줌.

end;
// 화면에서의 Commit 시 Rollback
procedure AbortTRSC;
begin
   txAbort;
end;

// 화면에서의 Commit 시 Transaction 종료(commit)
function EndTRSC : Boolean;
begin
   Result := txCommit;
end;
// Transaction 레벨을 알아낸다.
// 1: 트랜잭션상태, 0: 트랜잭션상태가 아님, -1 : 에러
function GetLevTRSC : Integer;
begin
  Result := tpgetlev();
end;
procedure MultiExcelSave(ExcelGrid1,ExcelGrid2,ExcelGrid3,ExcelGrid4:TUltraGrid;
                         MainTitle,Title1,Title2,Title3,Title4:String; Disp:Integer);
var
   ExcelAP1 : TExcelApplication;
   ExcelWS1 : TExcelWorksheet;
   ExcelWS2 : TExcelWorksheet;
   ExcelWS3 : TExcelWorksheet;
   ExcelWS4 : TExcelWorksheet;
   ExcelWB1 : TExcelWorkbook;
   ExcelAP2 : Variant;
   SaveD1 : TSaveDialog;
   FName1 : String;
   i,j,k,cnt1,cnt2,cnt3: LongInt;
   //range1 : Range;
   range1 : ExcelRange;
begin
   if Application.MessageBox('Excel화일로 저장하시겠습니까?', 'Excel저장', MB_OKCANCEL) <> IDOK then
      exit;
   if Disp = 1 then
   begin
      SaveD1 := TSaveDialog.Create(nil);
      SaveD1.InitialDir := 'C:\UniHIS';
      SaveD1.DefaultExt := 'xls';
      SaveD1.FileName := MainTitle;
      SaveD1.Filter := '엑셀화일(*.xls)|*.xls|Ms';
      if SaveD1.Execute = False then
      begin
         FreeAndNil(SaveD1);
         exit;
      end
      else
         FName1 := SaveD1.FileName;
      FreeAndNil(SaveD1);
   end;

   Screen.Cursor := crHourglass;
   if Disp = 1 then
   begin
      try
         ExcelAP1 := TExcelApplication.Create(nil);
         ExcelWB1 := TExcelWorkbook.Create(nil);
         ExcelWS1 := TExcelWorksheet.Create(nil);

         ExcelAP1.Connect;
         ExcelAP1.Workbooks.Add(xlWBATWorksheet,0);
         ExcelWB1.ConnectTo(ExcelAP1.Workbooks.Item[1]);
         EXcelWS1.ConnectTo(ExcelAP1.Worksheets[1] as _Worksheet);

     except
         Screen.Cursor := crDefault;
         showmessage('Excel을 찾을수 없습니다.');
         ExcelAP1.Disconnect;

         FreeAndNil(ExcelWS1);
         FreeAndNil(ExcelWB1);
         FreeAndNil(ExcelAP1);
         exit;
      end;

      with EXcelWS1 do
      begin
         // 타이틀
         range1 := range[cells.item[3,2],cells.item[ExcelGrid1.Colcount+5,
                                                    ExcelGrid2.Rowcount+
                                                    ExcelGrid1.RowCount+
                                                    ExcelGrid3.RowCount+
                                                    ExcelGrid4.RowCount+
                                                    27]];

         range1.Font.name := '굴림체';
         Range1.Font.Size:=10;

         Cells.Item[1,3] := Title1;
         //Name := MainTitle;
         // 처리 Routine (grid로 받음)
         for i := 0 to ExcelGrid1.RowCount - 1 do
            for j := 0 to ExcelGrid1.Colcount - 1 do
                Cells.Item[i + 3, j + 2] := string(ExcelGrid1.Cells[j,i]);
         cnt1 := i+5;
         Cells.Item[cnt1,3] := Title2;
         for i := 0 to ExcelGrid2.RowCount - 1 do
            for j := 0 to ExcelGrid2.Colcount - 1 do
                Cells.Item[i +cnt1+ 3, j + 2] := string(ExcelGrid2.Cells[j,i]);
         cnt2 := cnt1+i+5;
         Cells.Item[cnt2,3] := Title3;
         for i := 0 to ExcelGrid3.RowCount - 1 do
            for j := 0 to ExcelGrid3.Colcount - 1 do
                Cells.Item[i +cnt2+ 3, j + 2] := string(ExcelGrid3.Cells[j,i]);
         cnt3 := cnt2+i+5;
         Cells.Item[cnt3,3] := Title4;
         for i := 0 to ExcelGrid4.RowCount - 1 do
            for j := 0 to ExcelGrid4.Colcount - 1 do
                Cells.Item[i+cnt3+ 3, j + 2] := string(ExcelGrid4.Cells[j,i]);

         if FileExists(FName1) then
         begin
            DeleteFile(FName1);
         end;
         range1.Columns.AutoFit;
         SaveAs(FName1);
      end;

      ExcelAP1.Disconnect;
      ExcelAP1.Quit;
      FreeAndNil(ExcelWS1);
      FreeAndNil(ExcelWB1);
      FreeAndNil(ExcelAP1);
      Screen.Cursor := crDefault;
      showmessage('Excel화일로 저장되었습니다.');
   end
   else
   begin
       try
          ExcelAP2 :=CreateOLEObject('Excel.Application');
          ExcelAP2.WorkBooks.add;
          ExcelAP2.WorkSheet.add;
          ExcelAP2.visible := true;
          // 처리 Routine (grid로 받음)
          // 타이틀
          ExcelAP2.worksheets[1].cells[1,3] := Title1;
          ExcelAP2.worksheets[1].name := Title1;

          for i := 0 to ExcelGrid1.RowCount - 1 do
          begin
             for j := 0 to ExcelGrid1.ColCount - 1 do
             begin
                ExcelAP2.worksheets[1].cells[i + 3, j + 2] := '''' + string(ExcelGrid1.Cells[j,i]);
             end;
          end;
          ExcelAP2.Range['A1',CHR(64+ ExcelGrid1.RowCount+1)+IntToStr(i + 3)].select;
          ExcelAP2.Selection.Font.Name:='굴림체';
          ExcelAP2.Selection.Font.Size:=10;
          ExcelAP2.selection.Columns.AutoFit;
          //ExcelAP2.Range['A1','A1'].select;

          //Sheet 2
          ExcelAP2.WorkSheet.add;

          // 처리 Routine (grid로 받음)
          // 타이틀
          ExcelAP2.worksheets[2].cells[1,3] := Title2;
          ExcelAP2.worksheets[2].name       := Title2;
          for i := 0 to ExcelGrid2.RowCount - 1 do
          begin
             for j := 0 to ExcelGrid2.ColCount - 1 do
             begin
                ExcelAP2.worksheets[2].cells[i + 3, j + 2] := '''' + string(ExcelGrid2.Cells[j,i]);
             end;
          end;
          ExcelAP2.Range['A1',CHR(64+ ExcelGrid2.RowCount+1)+IntToStr(i + 3)].select;
          ExcelAP2.Selection.Font.Name:='굴림체';
          ExcelAP2.Selection.Font.Size:=10;
          ExcelAP2.selection.Columns.AutoFit;
          //ExcelAP2.Range['A1','A1'].select;

           //Sheet 3
          ExcelAP2.WorkSheet.add;
          ExcelAP2.visible := true;
          // 처리 Routine (grid로 받음)
          // 타이틀
          ExcelAP2.worksheets[3].cells[1,3] := Title3;
          ExcelAP2.worksheets[3].name := Title3;
          for i := 0 to ExcelGrid3.RowCount - 1 do
          begin
             for j := 0 to ExcelGrid3.ColCount - 1 do
             begin
                ExcelAP2.worksheets[3].cells[i + 3, j + 2] := '''' + string(ExcelGrid3.Cells[j,i]);
             end;
          end;
          ExcelAP2.Range['A1',CHR(64+ ExcelGrid3.RowCount+1)+IntToStr(i + 3)].select;
          ExcelAP2.Selection.Font.Name:='굴림체';
          ExcelAP2.Selection.Font.Size:=10;
          ExcelAP2.selection.Columns.AutoFit;
          ExcelAP2.Range['A1','A1'].select;

           //Sheet 4
          ExcelAP2.WorkSheet.add;
          ExcelAP2.visible := true;
          // 처리 Routine (grid로 받음)
          // 타이틀
          ExcelAP2.worksheets[4].cells[1,3] := Title4;
          ExcelAP2.worksheets[4].name := Title4;

          for i := 0 to ExcelGrid4.RowCount - 1 do
          begin
             for j := 0 to ExcelGrid4.ColCount - 1 do
             begin
                ExcelAP2.worksheets[4].cells[i + 3, j + 2] := '''' + string(ExcelGrid4.Cells[j,i]);
             end;
          end;
          ExcelAP2.Range['A1',CHR(64+ ExcelGrid4.RowCount+1)+IntToStr(i + 3)].select;
          ExcelAP2.Selection.Font.Name:='굴림체';
          ExcelAP2.Selection.Font.Size:=10;
          ExcelAP2.selection.Columns.AutoFit;
          ExcelAP2.Range['A1','A1'].select;

       except
          Screen.Cursor := crDefault;
          ExcelAP2.Quit;
          showmessage('Excel을 찾을수 없습니다.');
          exit;
       end;
       Screen.Cursor := crDefault;
   end;
end;
function SeperateInputStr(InputStr:String;Seperator:Char;Cnt:Integer):Variant;
var Strings : Variant;
    tmp_string :String;
begin
   Strings := VarArrayCreate([0,Cnt],varVariant);

   if findRRStr(InputStr,seperator) <>'' then
   begin
       Strings[0] := FindStr(InputStr,seperator);
       Strings[1] := findRRStr(InputStr,seperator);
       tmp_String := Strings[1];
       if findRRStr(tmp_String,seperator) <>'' then
       begin
          Strings[1] := FindStr(tmp_String,seperator);
          Strings[2] := findRRStr(tmp_String,seperator);
          tmp_String := Strings[2];
          if findRRStr(tmp_String,seperator) <>'' then
          begin
             Strings[2] := FindStr(tmp_String,seperator);
             Strings[3] := findRRStr(tmp_String,seperator);
          end
          else
          begin
             Strings[3] := '';
          end;
       end
       else begin
         Strings[2] := '';
         Strings[3] := '';
       end;
    end
    else
    begin
       Strings[0] := InputStr;
       Strings[1] := '';
       Strings[2] := '';
       Strings[3] := '';
     end;
   Result := Strings;
end;

// 49. 문자열 처음부터 KeyStr까지를 잘라낸 나머지를 Return.(문자열의 앞에서 부터)
function FindRRStr(Fstr:String;KeyStr:String):String;
var
    idx, Cnt : Integer;
begin
    Result := '';
    Cnt := Length(KeyStr);

    if (Length(FStr) < 2) then Exit;
    if (Cnt = 0) or (Cnt > Length(FStr)) then Exit;
    for idx := 0 to Length(FStr)-Cnt do begin
        if (Copy(Fstr,idx,Cnt) = KeyStr) then begin
            Result := Copy(Fstr,idx+Cnt,Length(FStr)-idx-Cnt+1);
            exit;
        end;
    end;
end;
// 50. String내의 특정 문자열을 다른 문자열로 대체
function ReplaceStr(TextStr,OrigStr,ChgStr: String):String;
var
   iPos : Integer;
begin
   while Pos(OrigStr, TextStr) > 0 do
   begin
      iPos := Pos(OrigStr, TextStr);
      System.Delete(TextStr,iPos,Length(OrigStr));
      System.Insert(ChgStr, TextStr, iPos);
   end;

   Result := TextStr;
end;

// 51. 장기이식 끝내기
procedure KillFormShow;
var
   WinHandle: THandle;
begin
     WinHandle := FindWindow(nil, 'MOP400F1 장기이식 상세');
     while WinHandle > 0 do
     begin
       SendMessage(WinHandle, WM_CLOSE, 0, 0);
       WinHandle := FindWindow(nil,'MOP400F1 장기이식 상세');
     end;
end;

// 52. 처방상세 편집시 치식정보 Display
function EditTeethInfo(teeUpRt,teeUpLt,teeDwLt,teeDwRt: String): String;
var
   i : Integer;
   sTeeth, sDesc : String;
begin
   Result := '';
   sDesc := '';

   //(1)우상 (2)좌상 (3)좌하 (4)우하
   sTeeth := teeUpRt + teeUpLt + teeDwLt + teeDwRt;
   if sTeeth <> '' then
      for i := 1 to 32 do
      begin
         if sTeeth[i] <> ' ' then    //Ex)  <15,14,2B,38,43,42>
         begin
            if sDesc <> '' then  sDesc := sDesc + ',';
            if      ( 1<=i) and (i<= 8) then sDesc := sDesc + '1' + sTeeth[i]
            else if ( 9<=i) and (i<=16) then sDesc := sDesc + '2' + sTeeth[i]
            else if (17<=i) and (i<=24) then sDesc := sDesc + '3' + sTeeth[i]
            else if (25<=i) and (i<=32) then sDesc := sDesc + '4' + sTeeth[i];
         end;
      end;

   Result := sDesc;
end;

// 53. 횟수별 기본용법 지정
// 주사약(B2)은 여기거 사용 안하고 아래(53-1) 별도로 구성함. qps(이지숙). KimDaeYong 2017-04-25
function GetDefaultMethCd(OrdGrp,Cnt:String): String;
begin
   //(1)내복약
   if (OrdGrp = 'B1') then
   begin
      {if      Cnt = '1' then Result := 'BC'  //1회 (아침식후30분)
      else if Cnt = '2' then Result := 'BP'  //2회 (아침,저녁식후30분)
      else if Cnt = '3' then Result := 'TP'  //3회 (식후30분)
      else if Cnt = '4' then Result := 'QP'  //4회 (식후30분,취침전)
      else if Cnt = '5' then Result := 'PD5' //5회 (AM7,11,PM3,7,11)
      else if Cnt = '6' then Result := 'Q4'  //6회 (4시간마다)
      else                   Result := 'PD'; //기타(의사지시대로)}
      if      Cnt = '1' then Result := 'DPB'  //1회 (아침식후30분)
      else if Cnt = '2' then Result := 'BID'  //2회 (아침,저녁식후30분)
      else if Cnt = '3' then Result := 'TID'  //3회 (식후30분)
      else if Cnt = '4' then Result := 'QID'  //4회 (식후30분,취침전)
      else if Cnt = '5' then Result := 'P5'  //5회 (AM7,11,PM3,7,11)
      //else if Cnt = '6' then Result := '10Q2H'  //6회 (4시간마다)
      else                   Result := 'SIG'; //기타(의사지시대로)
   end
   // (2)주사약 2011.09.10 김송주 QI 실 요청(이지숙)
   else if (OrdGrp ='B2') then
   begin
      if      Cnt = '1' then Result := 'IV24H'
      else if Cnt = '2' then Result := 'IV12H'
      else if Cnt = '3' then Result := 'IV8H'
      else if Cnt = '4' then Result := 'IV6H'
      else                   Result := 'IV';
   end
   else if (OrdGrp ='B5') then
   begin
      if      Cnt = '1' then Result := 'SDPB'  //1회 (아침식후30분)
      else if Cnt = '2' then Result := 'SBID'  //2회 (아침,저녁식후30분)
      else if Cnt = '3' then Result := 'STID'  //3회 (식후30분)
      else                   Result := 'SSIG'; //기타(의사지시대로)
   end;
end;


// 53-1. 횟수별 기본용법 지정(주사약(B2)). QPS(이지숙). KimDaeYong 2017-04-25
// 용법코드 앞2주리(IV,IM,SC)에 따라서 관련된 용법으로 매칭시킴. 약국마스터의 용법코드관리 참고함.
function GetDefaultMethCd2(MethCd,Cnt:String): String;
begin
    if MethCd = 'IV' then
    begin
        if      Cnt = '1'  then Result := 'IV24H'
        else if Cnt = '2'  then Result := 'IV12H'
        else if Cnt = '3'  then Result := 'IV8H'
        else if Cnt = '4'  then Result := 'IV6H'
        else if Cnt = '6'  then Result := 'IV4H'
        else if Cnt = '12' then Result := 'IV2H'
        else                    Result := 'IV';
    end
    else if MethCd = 'IM' then
    begin
        if      Cnt = '2'  then Result := 'IM12H'
        else if Cnt = '3'  then Result := 'IM8H'
        else if Cnt = '4'  then Result := 'IM6H'
        else if Cnt = '6'  then Result := 'IM4H'
        else                    Result := 'IM';
    end
    else if MethCd = 'SC' then
    begin
        if      Cnt = '2'  then Result := 'SC12H'
        else                    Result := 'SC';
    end;
end;

// 54. Float Value Formatting (Ex. 0.6666666...==> '0.67')
function SetFloat(fValue:Double): String;
var
   sVal, sFormat, sFrac : String;
   BaseValue, fFrac : Double;
begin
   fFrac := Frac(fValue);                      //0.666666
   sFrac := FormatFloat('0.0#########',fFrac); //'0.666666'
   sFrac := Copy(sFrac,3,8);                   //'666666'

   if Length(sFrac) <= 5 then
   begin
      sVal := FormatFloat('#0.#####',fValue);
   end
   else
   begin
      sFormat := '#0.#';
      sVal := '0';
      BaseValue := 1;
      while sVal = '0' do
      begin
         BaseValue := BaseValue / 10;   //0.1
         sFormat := sFormat + '#';      //'#0.##'
         if (fFrac >= BaseValue) then
         begin
            sVal := FormatFloat(sFormat,fValue); //'0.67'
            Break;
         end;
         sVal := '0';
      end;
   end;

   Result := sVal;
end;

// 55. 요일갖구오기
function GetDayofWeek(Adate : TDatetime; Type1 : String): String;
var
  days: array[1..7] of string;
begin
   if Type1 = 'EF' then
   begin
      days[1] := 'Sunday';
      days[2] := 'Monday';
      days[3] := 'Tuesday';
      days[4] := 'Wednesday';
      days[5] := 'Thursday';
      days[6] := 'Friday';
      days[7] := 'Saturday';
   end
   else if Type1 = 'ES' then
   begin
      days[1] := 'SUN';
      days[2] := 'MON';
      days[3] := 'TUE';
      days[4] := 'WED';
      days[5] := 'THU';
      days[6] := 'FRI';
      days[7] := 'SAT';
   end
   else if Type1 = 'HF' then
   begin
      days[1] := '일요일';
      days[2] := '월요일';
      days[3] := '화요일';
      days[4] := '수요일';
      days[5] := '목요일';
      days[6] := '금요일';
      days[7] := '토요일';
   end
   else if Type1 = 'HS' then
   begin
      days[1] := '일';
      days[2] := '월';
      days[3] := '화';
      days[4] := '수';
      days[5] := '목';
      days[6] := '금';
      days[7] := '토';
   end;

   Result := days[DayOfWeek(ADate)];
end;
//56. 응급환자 퇴실처리여부 Check (APOPDLST.OutDate)
function CheckErOutDate(PatNo:String):Boolean;
var
   RowNo : Integer;
   sType1, sType2, sType3, sType4, sType5 : String;
   Er_mdWrkLst : HmdWrkLst;
begin
   Result := False;

   Screen.Cursor := crHourGlass;
   try
      //create class
      Er_mdWrkLst := HmdWrkLst.Create;

      //Input Params Assign
      sType1 := 'D';
      sType2 := PatNo;   //환자번호
      sType3 := '';      //추가조건
      sType4 := '';      //추가조건
      sType5 := '';
      //Tuxedo Service Call
      RowNo := Er_mdWrkLst.CheckList2(sType1,sType2,sType3,sType4,sType5);

      //System Error
      if (RowNo = -1) then
      begin
         Er_mdWrkLst.Free;
         ShowErrMsg;
         Exit;
      end;

      //System Error
      if (RowNo = 0) then
      begin
         Showmessage('해당 환자의 정보가 존재하지 않습니다.' + #13#10 + #13#10 +
                     '다시 조회하십시오.');
         Result := False;
         Er_mdWrkLst.Free;
         Exit;
      end;

      if Trim(Er_mdWrkLst.sCode1[0]) = '' then
         Result := True
      else
      begin
         Showmessage('이미 수납처리가 완료되어 처방정보를 수정하실 수 없습니다.'+#13#10+#13#10+
                     '처방정보의 조회는 [환자정보조회]를 이용하여 주십시오.'+#13#10+#13#10+
                     '환자의 처방정보를 수정하시려면 원무과에 연락하여'+#13#10+#13#10+
                     '해당환자를 [수납필증취소] 시켜주십시오.');
         Result := False;
      end;

      Er_mdWrkLst.Free;
   finally
      Screen.Cursor := crDefault;
   end;
end;

///수간호사명 가져오기.........
function HnNameSelect(sDeptCd,sLocate:String):String;
var
   Locate, Deptcd : String;
   RowNo,i : Integer;
begin
   Screen.Cursor := crHourGlass;
   try
      //Create Class
      mdExCode := HmdExCode.Create;

      //Assign Input Param(s)..
      Locate := sLocate;      //사업장
      Deptcd := sDeptCd;         //수술실

      //공통Class Function Call
      RowNo := mdExCode.SelectHnName(Locate,Deptcd);

      //오류시 Message처리, Exit
      if (RowNo = -1) then
      begin
         mdExCode.Free;
//         ShowErrMsg(stb_Message);
         Exit;
      end;

      //자료건수=0인경우, Exit
      if (RowNo = 0) then
      begin
         mdExCode.Free;
         Exit;
      end;

      //Select된 Data를 화면 Field에 Display.
      i := 0;
      result := mdExCode.sUsernm[i];                 //수간호사명

      //Destroy Class
      mdExCode.Free;
   finally
      Screen.Cursor := crDefault;
   end;
end;

// 58.사용자코드 가져오기2
procedure GetUserId2(SelType1,SelType2,Locate: string; CdCombo, NmCombo:TComboBox);
var
   RowNo, i : integer;
begin
   Screen.Cursor := crHourglass;
   try
      mdInsamt := HmdInsamt.Create;
      RowNo    := mdInsamt.ListUserInfo(SelType1,'',SelType2,Locate);
      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdInsamt.Free;
         ShowErrMsg();
         Exit;
      end;
      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdInsamt.Free;
         Exit;
      end;
      // 사용자 처리
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdInsamt.sEmpNo[i]);
      end;
      // 사용자명 처리
      with NmCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdInsamt.sEmpNm[i]);
      end;
      mdInsamt.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

//59. 병실등급

function GetWardGrade(CdCombo, NmCombo:TComboBox;sDeptCd:string):Integer;
var
   RowNo, i, j : integer;
begin
   // 리턴값 초기화
   GetWardGrade := -1;
   Screen.Cursor := crHourglass;
   try
      mdEmptyt := HmdEmptyt.Create;
      RowNo    := mdEmptyt.GetWardGrade('1','','','','','','');

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdEmptyt.Free;
         ShowErrMsg();
         Exit;
      end;
      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdEmptyt.Free;
         Exit;
      end;
      // 코드 처리
      j := 0;
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
         begin
            Items.add(mdEmptyt.sCode1[i]);
            inc(j);
            if mdEmptyt.sCode1[i] = sDeptCd then
               GetWardGrade := j;
         end;
      end;
      // 코드명 처리
      with NmCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
            Items.add(mdEmptyt.sCode2[i]);
      end;
      mdEmptyt.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

//(추가. 2003.03.04 이용언)
// 40. 입원중인 환자인지 Check.
function CheckAdmPat2(PatNo:String; var vPatSect:String):Boolean;
var
   RowNo : Integer;
   sType1, sType2, sType3, sType4 : String;
begin
   Result := False;

   Screen.Cursor := crHourGlass;
   try
      //create class
      mdWrkLst := HmdWrkLst.Create;

      //Input Params Assign
      //sType1 := '3';     //조회구분: '3'=입원환자여부
      sType1 := '4';     //조회구분: '4'=입원/외래환자여부
      sType2 := PatNo;   //환자번호
      sType3 := '';      //추가조건
      sType4 := '';      //추가조건

      //Tuxedo Service Call
      RowNo := mdWrkLst.SelBckStat(sType1,sType2,sType3,sType4);

      //System Error
      if (RowNo = -1) then
      begin
         mdWrkLst.Free;
         ShowErrMsg;
         Exit;
      end;

      //System Error
      if (RowNo = 0) then
      begin
         vPatSect := 'O';
         mdWrkLst.Free;
      end;

      if (RowNo > 0) then
      begin

         vPatSect := mdWrkLst.sCode1[0];  //'I'=입원중인 환자

         mdWrkLst.Free;
      end;
   finally
      Screen.Cursor := crDefault;
   end;
   Result := True;
end;

//(추가. 2003.04.04 이용언) Excelsave New!
procedure ExcelSaveNew(sgd1: TStringGrid; Title, Tabname: String;
  isNewBook: Boolean);
var
    XL, XLBook, XArr : Variant;
//    sBookname : String;           // WorkBook 선택을 위한 변수
    str: String;
    row, coldata, colidx : Integer;
    colidxname: String;
begin

    try
      XL := GetActiveOLEObject('Excel.Application');  // 기존의 Excel instance 인터페이스를 받는다
    except
        on E : EOleSysError do begin
            if (isNewBook) then begin
                try
                    XL := CreateOLEObject('Excel.Application');          //엑셀을 실행
                except
                    //MessageDlg('Excel이 설치되어 있지 않습니다.', MtWarning, [mbok], 0);
                    ShowMessage('Excel이 설치되어 있지 않습니다.');
                    Exit;
                end;
            end
            else begin
                ShowMessage('Excel is not running...');
                Exit;
            end;
        end;
    end;
//------------------------------------------------------------------------------
// WorkBook 선택
//------------------------------------------------------------------------------
    if VarIsEmpty(XL) = False then begin
        if (isNewBook) then begin
            XLBook := XL.WorkBooks.Add;
        end
        else begin
            if (XL.WorkBooks.Count = 0) then begin
                ShowMessage('WorkBook 이 존재하지 않습니다.');
            end
            else if (XL.WorkBooks.Count = 1) then begin
                XLBook := XL.WorkBooks[1];
{           // 이미 엑셀이 실행중일때 WorkBook을 선택하기 위해 사용.
            end
            else if (XL.WorkBooks.Count > 1) then begin
                sBookname := getBookName(XL);
                if (sBookname <> '') then begin
                    XLBook := XL.WorkBooks[sBookname];
                end;
}
            end;
        end;
    end
    else begin
        ShowMessage('Excel을 실행할 수 없습니다.');
    end;



//------------------------------------------------------------------------------
// 실 데이타를 Excel로 보내기
//------------------------------------------------------------------------------
    try

    if VarIsEmpty(XLBook) then begin
        //ShowMessage('WorkBook 이 선택되지 않았습니다.');
    end
    else begin
        //ShowMessage(XLBook.name);
        try
            //데이타 처리변수
            XArr   := VarArrayCreate([1, sgd1.ColCount], VarVariant);

            XL.Visible := False;
            //
            if not (isNewBook) then begin
                XLBook.WorkSheets.Add;
            end;

            if (Tabname = '') then begin
                ShowMessage('Tab name을 입력하세요.');
                Exit;
            end;
            // Tab name의 중복을 check하는 루틴
            for colidx := 1 to XLBook.WorkSheets.Count do begin
                if (XLBook.WorkSheets[colidx].name = Tabname) then begin
                    ShowMessage('Tab 이름 중복');
                    Exit;
                end;
            end;
            XLBook.WorkSheets[1].Name := Tabname;

            // 첫째줄에 나타날 데이터들...
            coldata := 1;
            //for colidx := 0 to sgd1.ColCount - 1 do begin
            while Length(title) > 0 do begin
                str := Trim(Copy(title, 1, Pos('@', title)-1));
                title := Trim(Copy(title, Pos('@', title)+1, Length(title)-Pos('@', title)));
                if (str = '') then begin
                    XArr[coldata] := title;
                    title := '';
                end
                else begin
                    XArr[coldata] := str;
                end;
                Inc(coldata);
            end;

            if ((sgd1.colcount-1) div 26) > 0 then begin
                colidxname := CHR(64 + sgd1.colcount div 26) + CHR(64 + (sgd1.colcount mod 26));
            end
            else begin
                colidxname := CHR(64 + sgd1.colcount);
            end;

            XL.Range['A1', colidxname + '1'].Value := XArr;

            // 그리드의 실 데이타 처리...
            for row := 0 to sgd1.RowCount - 1 do begin

                coldata := 1;                                            // Data Array
                for colidx := 0 to sgd1.ColCount -1 do begin       // 그리드에 보이는 컬럼만 추출
                    XArr[coldata] := sgd1.Cells[colidx, row];
                    inc(coldata);
                end;

                Try                                                 //셀에 값을 넣는다.
                    //
                    if ((sgd1.colcount-1) div 26) > 0 then begin
                        colidxname := CHR(64 + sgd1.colcount div 26) + CHR(64 + (sgd1.colcount mod 26));
                    end
                    else begin
                        colidxname := CHR(64 + sgd1.colcount);
                    end;

                    XL.Range['A' + IntToStr(row+1), colidxname + IntToStr(row+1)].Value := XArr;
                except
                    //MessageDlg('Excel이 강제 종료 되었습니다. ', MtWarning, [mbok], 0);
                    ShowMessage('Excel이 강제 종료 되었습니다. ');
                    Exit;
                end;
            end;
        except
            on E : EOleException do begin
                ShowMessage(E.Message);
                Exit;
            end;
        end;
        try
            if ((sgd1.colcount-1) div 26) > 0 then begin
                colidxname := CHR(64 + sgd1.colcount div 26) + CHR(64 + (sgd1.colcount mod 26));
            end
            else begin
                colidxname := CHR(64 + sgd1.colcount);
            end;
            //셀 크기 조정
            XL.Range['A1', colidxname + IntToStr(row)].Select;
            XL.Selection.Columns.AutoFit;
            /// 선그리기
            XL.Range['A1', colidxname + IntToStr(row)].Select;
            XL.Selection.Borders[7].LineStyle := 1;         //xlEdgeLeft, xlContinous
            XL.Selection.Borders[7].Weight := 2;            //xlThin
            XL.Selection.Borders[7].ColorIndex := -4105;    //xlAutomatic
            XL.Selection.Borders[8].LineStyle := 1;         //xlEdgeTop
            XL.Selection.Borders[8].Weight := 2;
            XL.Selection.Borders[8].ColorIndex := -4105;
            XL.Selection.Borders[10].LineStyle := 1;        //xlEdgeRight
            XL.Selection.Borders[10].Weight := 2;
            XL.Selection.Borders[10].ColorIndex := -4105;
            XL.Selection.Borders[9].LineStyle := 1;         //xlEdgeBottom
            XL.Selection.Borders[9].Weight := 2;
            XL.Selection.Borders[9].ColorIndex := -4105;
            XL.Selection.Borders[11].LineStyle := 1;        //xlInsideVertical
            XL.Selection.Borders[11].Weight := 2;
            XL.Selection.Borders[11].ColorIndex := -4105;
            XL.Selection.Borders[12].LineStyle := 1;        //xlInsideHorizontal
            XL.Selection.Borders[12].Weight := 2;
            XL.Selection.Borders[12].ColorIndex := -4105;
            // 타이틀에 색 채우기
            XL.Range['A1', colidxname + '1'].Select;
            XL.Selection.Interior.ColorIndex := 36;
            XL.Selection.Interior.Pattern := 1;             //xlSolid
            // 틀고정
            XL.Range['A2', 'A2'].Select;
            XL.ActiveWindow.FreezePanes := True;
            XL.Visible := True;
        except
            on E : EOleError do begin
                ShowMessage(E.Message);
            end;
        end;
    end;

    finally
        XArr := UnAssigned;
        XLBook := UnAssigned;
        XL := UnAssigned;
    end;
end;
//

//(추가. 2003.04.07 이용언) 환자기본정보조회 New function
procedure CheckPatInfo(PatNO : String; var Address,TelNo1,Resno1,Resno2 : String);
var
   Row : Integer;
begin
   mdPatInf := HmdPatInf.Create;

   Row := mdPatInf.BasicInfo(PatNo);

   if Row = -1 then
   begin
      mdPatInf.Free;
      ShowErrMsg;
      Exit;
   end;

   if Row = 0 then
   begin
      mdPatInf.free;

      Address := '';
      TelNo1  := '';
      ResNO1  := '';
      ResNo2  := '';

      Exit;
   end;

   if Row = 1 then
   begin
      Address := mdPatInf.sAddress[0];
      TelNo1  := mdPatInf.sTelno1[0];
      ResNO1  := mdPatInf.sResNO1[0];
      ResNO2  := mdPatInf.sResNO2[0];

      mdPatInf.Free;
   end;
end;
//환자보험정보 가져오기(피보험자,주민번호)
procedure CheckInsuInfo(PatNo, Pattype : String; var Insname,Insresno : String);
var
   Row : Integer;
begin
   apinsurt := Hapinsurt.Create;

   Row := apinsurt.GetInsuInfo(PatNo,Pattype);

   if Row = -1 then
   begin
      apinsurt.Free;
      ShowErrMsg;
      Exit;
   end;

   if Row = 0 then
   begin
      apinsurt.free;

      Insname  := '';
      Insresno := '';

      Exit;
   end;

   if Row = 1 then
   begin
      Insname  := apinsurt.sInsname[0];
      Insresno := apinsurt.sInsresno[0];

      apinsurt.Free;
   end;
end;

// CD/MT 번호 가져오기   KIM SJ 2005.11.01 Add
function GetCdMtNumber(PatNo : String):String;
var
   Row : Integer;
begin
   sicdchrt := Hsicdchrt.Create;

   Row := sicdchrt.cdchrtSelect(PatNo);
   if Row = -1 then
   begin
      sicdchrt.Free;
      ShowErrMsg;
      Exit;
   end;

   if Row = 0 then
   begin
      sicdchrt.free;

      Result := '';

      Exit;
   end;

   if Row >= 1 then
   begin
      result  := sicdchrt.sCdno[0];
      sicdchrt.Free;
   end;
end;

// 진료과코드 가져오기(내과전공의) ( CdCombo -> 코드값을 담는 ComboBox
//                         NmCombo -> 코드명값을 담는 ComboBox
//                         return value -> 현재 진료과 code index value )
function GetImMedDept(sUserId, sMedDate : String;  CdCombo, NmCombo:TComboBox):Integer;
var
   RowNo, i, j : integer;
begin
   // 리턴값 초기화
   GetImMedDept := -1;
   Screen.Cursor := crHourglass;
   try
      mdExCode := HmdExCode.Create;
//      RowNo    := mdExCode.SelDeptNm('1',G_LOCATE);
      RowNo    := mdExCode.SelImDeptNm(sUserId,sMedDate);
      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdExCode.Free;
         ShowErrMsg();
         Exit;
      end;
      // 조회건수 없음
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;
      // 코드 처리
      j := 0;
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
         begin
            Items.add(mdExCode.sDeptCd[i]);
            inc(j);
            if mdExCode.sDeptCd[i] = md_DeptCd then
               GetImMedDept := j;
         end;
      end;
      // 코드명 처리
      with NmCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
            Items.add(mdExCode.sDeptNm[i]);
      end;
      mdExCode.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

//사용자(내과)
procedure GetImUserId(sType1,sType2: string; CdCombo, NmCombo:TComboBox);
var
   RowNo, i : integer;
begin
   Screen.Cursor := crHourglass;
   try
      mdInsamt := HmdInsamt.Create;
      RowNo    := mdInsamt.ListImUserInfo(sType1,sType2);
      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdInsamt.Free;
         ShowErrMsg();
         Exit;
      end;
      // 조회건수 없음
      if RowNo = 0 then
      begin
         CdCombo.Items.Clear;
         NmCombo.Items.Clear;
         mdInsamt.Free;
         Exit;
      end;
      // 사용자 처리
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdInsamt.sEmpNo[i]);
      end;
      // 사용자명 처리
      with NmCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdInsamt.sEmpNm[i]);
      end;
      mdInsamt.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

procedure GridToExcel2(in_grid  : TStringGrid;
                       TitleStr : String;
                       Cnt      : Integer);overload;
var i, j        : integer;
    XLS         : Variant;
    Sheet       : Variant;
    old_Form    : THandle;
    mReturn     : TModalResult;
begin
    Screen.Cursor := crHourGlass;

    old_Form := Screen.ActiveForm.Handle;

    try
    ////////////////////////////////////////////////////////////////////////
        try

        XLS := CreateOLEObject('Excel.Application');

        except
            ShowMessage('Excel Program이 PC에 설치되어 올바르게 구동되는지 확인하십시오.');
            Screen.Cursor := crDefault;
            exit;
        end;

    XLS.Workbooks.Add;
    XLS.Workbooks[1].WorkSheets[1].name := TitleStr;
    Sheet := XLS.Workbooks[1].WorkSheets[TitleStr];

    Sheet.Cells[1,1] := TitleStr;

    for j := 0 to Cnt-1 do
    for i := 0 to in_grid.RowCount-1 do
    Sheet.Cells[i+2,j+1] := '''' + in_grid.Cells[j,i];

    Sheet.Columns.AutoFit;

    XLS.ActiveSheet.PageSetup.LeftMargin   := 36;
    XLS.ActiveSheet.PageSetup.RightMargin  := 36;
    XLS.ActiveSheet.PageSetup.TopMargin    := 36;
    XLS.ActiveSheet.PageSetup.BottomMargin := 36;

    XLS.ActiveSheet.PageSetup.PrintTitleRows   := '$1:$1';
    XLS.ActiveSheet.PageSetup.PrintGridLines   := 1;
    XLS.ActiveSheet.PageSetup.Orientation      := 1;

    XLS.Visible := True;
    Screen.Cursor := crDefault;

    finally
    Screen.Cursor := crDefault;
    end;

end;

procedure GridToExcel2(in_grid : TStringGrid;
                      TitleStr : String;
                      Cnt      : Integer;
                      SNMode   : array of String);overload;
var i, j, k  : integer;
    XLS      : Variant;
    Sheet    : Variant;
    old_Form : THandle;
    aFlag    : array of String;
    mReturn  : TModalResult;
begin

    Screen.Cursor := crHourGlass;

    old_Form := Screen.ActiveForm.Handle;

    try
    ////////////////////////////////////////////////////////////////////////
        try

        XLS := CreateOLEObject('Excel.Application');

        except
            ShowMessage('Excel Program이 PC에 설치되어 올바르게 구동되는지 확인하십시오.');
            Screen.Cursor := crDefault;
            exit;
        end;

    XLS.Workbooks.Add;
    XLS.Workbooks[1].WorkSheets[1].name := TitleStr;
    Sheet := XLS.Workbooks[1].WorkSheets[TitleStr];

    Sheet.Cells[1,1] := TitleStr;

    SetLength(aFlag, Cnt);

    j := 1;

    for i := 0 to Cnt -1 do
    begin
      if SNMode[j] = IntToStr(i) then
      begin
         if SNMode[0] = 'S' then
         begin
            aFlag[i] := '''';
         end
         else
         begin
            aFlag[i] := '';
         end;
         Inc(j);
      end
      else
      begin
         if SNMode[0] = 'S' then
         begin
            aFlag[i] := '';
         end
         else
         begin
            aFlag[i] := '''';
         end;
      end;
    end;

    for j := 0 to Cnt-1 do
    begin
      for i := 0 to in_grid.RowCount-1 do
      begin
         Sheet.Cells[i+2,j+1] := aFlag[j] + in_grid.Cells[j,i];
      end;
    end;

    //Sheet.Columns.AutoFit;

    XLS.ActiveSheet.PageSetup.LeftMargin   := 36;
    XLS.ActiveSheet.PageSetup.RightMargin  := 36;
    XLS.ActiveSheet.PageSetup.TopMargin    := 36;
    XLS.ActiveSheet.PageSetup.BottomMargin := 36;

    XLS.ActiveSheet.PageSetup.PrintTitleRows   := '$1:$1';
    XLS.ActiveSheet.PageSetup.PrintGridLines   := 1;
    XLS.ActiveSheet.PageSetup.Orientation      := 1;

    XLS.Visible := True;
    Screen.Cursor := crDefault;

    finally
    Screen.Cursor := crDefault;
    end;

end;

   // 회신서 작성여부 체크 김송주 2006.11.28


function CheckReferRtnDate(Patno:String):Boolean;
var
   RowNo, RowNo2 : integer;
begin
   // 리턴값 초기화
   CheckReferRtnDate := False;
   Screen.Cursor := crHourglass;
   try
      //Create Class
      mdRefert := HmdRefert.Create;

      //공통Class Function Call (진료의뢰 List SELECT)
      //RowNo := mdRefert.PatRefer(PatNo,Locate);
      RowNo := mdRefert.ListRefer('2',PatNo,'','','','');

      //오류시 Message처리, Exit
      if (RowNo = -1) then
      begin
         mdRefert.Free;
         ShowErrMsg;
         Exit;
      end;

      //자료건수=0인경우, Exit
      if (RowNo = 0) then
      begin
         CheckReferRtnDate := False;
         mdRefert.Free;
         Exit;
      end
      else
      begin
         RowNo2 := mdRefert.ListRefer('3',Patno,'','','','');
         if (trim(mdRefert.sRtndate[0]) <> '0') then
         CheckReferRtnDate := True;
      end;

      mdRefert.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;

end;

function bIsNumber(AStr : String) : Boolean;
var
   i_Num : Extended;
begin
   try
      i_Num := StrToFloat(AStr);
      result := True;
   except
      result := False;
   end;
end;

function CheckMetformin(inPatno,inOrddate:String; var vsMetfdt, vsMetfnm, vsCreatdt, vsCreat, vsJoyngdt, vsJoyngnm:String):Boolean;
var
   RowNo : Integer;
begin
   Result := False;
   Screen.Cursor := crHourGlass;
   try
      srAcpordt := HsrAcpordt.Create;

      RowNo := srAcpordt.SelectAcpordt(inPatno,inOrddate,'M');  //진료에선 M넘김. KimDaeYong 2018-01-04

      //오류시 Message처리, Exit
      if (RowNo = -1) then
      begin
         srAcpordt.Free;
         ShowErrMsg;
         Exit;
      end;

      //자료건수=0인경우, Exit
      if (RowNo = 0) then
      begin
         srAcpordt.Free;
         Exit;
      end;

      vsMetfdt  := srAcpordt.sMetfdt[0];
      vsMetfnm  := srAcpordt.sMetfnm[0];
      vsCreatdt := srAcpordt.sCreatdt[0];
      vsCreat   := srAcpordt.sCreat[0];
      //조영제부작용정보. KimDaeYong 2017-11-17
      vsJoyngdt := srAcpordt.sOrddate[0];   //변수명 변경(sOrddate는 많이 써서)
      vsJoyngnm := srAcpordt.sOrdname[0];   //변수명 변경(sOrdname은 많이 써서)

      srAcpordt.Free;

      Result := True;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

function DeleteNumber(Const sStr : String) : String;
var
  I, L : Integer;
begin
  L := Length(sStr);
  result := '';

  for I := 1 to L  do
    if not (sStr[I] in ['0'..'9']) then
      result := result + sStr[I];
end;

function GetHpType(InputHpnm,ResultHpNm, ResultHpType, ResultHpTypeCd: TWinControl):Boolean;
var
   RowNo, i, code : LongInt;
   temp, temp1, temp2, temp3 : String;
   Procedure WinControlSet(Control1 : TWinControl; Value9 : String);
   begin
      if (Control1 is TEdit) then
         (Control1 as TEdit).text := Value9
      else
         if (Control1 is TComboBox) then
            (Control1 as TComboBox).text := Value9
         else
            if (Control1 is TPanel) then
               (Control1 as TPanel).Caption := Value9;
   end;
begin
   GetHpType := False;
   if (InputHpnm is TEdit) then
      temp := trim((InputHpnm as TEdit).text)
   else
      if (InputHpnm is TComboBox) then
         temp := trim((InputHpnm as TComboBox).text)
      else
      begin
         (InputHpnm as TWinControl).setfocus;
         exit;
      end;

   if  temp = '' then
       exit;

   Screen.Cursor := crHourglass;
   try
      mdHosptt := HmdHosptt.Create;
      RowNo := mdHosptt.ListHospital(temp);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdHosptt.Free;
         ShowErrMsg();
         Exit;
      end;

      if RowNo > 1 then
      begin
         if MCC100F4 = nil then
         begin
            Application.CreateForm(TMCC100F4, MCC100F4);
            with MCC100F4 do
            begin
               ugd_List.Visible    := True;
               ugd_List.Top     := 3;
               ugd_List.Left    := 3;
               ugd_List.Clear;
               ugd_List.ColCount := 3;
               ugd_List.RowCount := RowNo + 1;
               for i := 0 to RowNo - 1 do
               begin
                  ugd_List.Cells[0,i+1] := mdHosptt.sHospName[i];
                  ugd_List.Cells[1,i+1] := mdHosptt.sHospType[i];
                  ugd_List.Cells[2,i+1] := mdHosptt.sHospAddr[i];
                  // hidden
                  ugd_List.Cells[3,i+1] := mdHosptt.sHospCd[i];
               end;

               Left := (InputHpnm as TWinControl).ClientOrigin.x;
               Top  := (InputHpnm as TWinControl).ClientOrigin.y + (InputHpnm as TWinControl).Height;
               
               ShowModal;
               if ResultCon = True then
               begin
                  GetHpType := True;
                  WinControlSet(ResultHpNm, ResultHospNm);
                  WinControlSet(ResultHpType, ResultHospType);
                  WinControlSet(ResultHpTypeCd, ResultHospTypeCd);
               end
               else
                  (InputHpnm as TWinControl).SetFocus;
            end
         end
         else
            MCC100F4.BringToFront;
      end
      else if RowNo=1 then
      begin
         GetHpType := True;
         WinControlSet(ResultHpNm, mdHosptt.sHospName[0]);
         WinControlSet(ResultHpType, mdHosptt.sHospType[0]);
         WinControlSet(ResultHpTypeCd, mdHosptt.sHospCd[0]);         
      end
      else
         GetHpType := False;

      mdHosptt.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;

end;

// DNR Check(연명의료). KimDaeYong 2019-05-24
Function DnrSelect(Patno:String;Target:TControl):String;
var
   RowNo, i  : LongInt;
   sFlag : string;
begin
   Target.Visible := False;

   Screen.Cursor := crHourglass;
   try
      mdDnrrgt := HmdDnrrgt.Create;
      RowNo := mdDnrrgt.List1('A',PatNo,'','','','');    //환자별 연명의료 등록여부 체크

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         mdDnrrgt.Free;
         ShowErrMsg;
         Exit;
      end;

      sFlag := 'N';

      if RowNo > 0 then
      begin
          for i:=0 to RowNo-1 do
          begin
              if mdDnrrgt.sCancyn[i] = '' then sFlag := 'Y';
              break;
          end;

         if sFlag = 'Y' then Target.Visible := True;
      end;

      mdDnrrgt.Free;
   finally
      screen.Cursor := crDefault;
   end;
end;

//폰번호에 '-'넣기. KimDaeYong 2020-06-17
function FormatTel(sStr: String): String;
var i: Integer;
begin
   Result := sStr;
   sStr   := '';
   for i := 1 to Length(Result) do
     if StrToIntDef(Result[i],-1)>-1 then
        sStr := sStr + Result[i];
   if Length(sStr)>4 then begin
      if (LeftStr(sStr,2)='02') and (Length(sStr)>6) then
         Result := LeftStr(sStr, 2) + '-' +
                   copy(sStr,3,Length(sStr)-6) + '-' +
                   RightStr(sStr, 4)
      else if Length(sStr)>7 then
         Result := LeftStr(sStr, 3) + '-' +
                   copy(sStr,4,Length(sStr)-7) + '-' +
                   RightStr(sStr, 4)
      else
         Result := LeftStr(sStr, Length(sStr)-4) + '-' +
                   RightStr(sStr,4);
   end;
end;

//수혈체크리스트 해당 수혈처방여부 체크
//KimDaeYong 2020-09-01
function CheckBldord(inOrdcd:String):Boolean;
var
   RowNo : Integer;
begin
   Result := False;

   Screen.Cursor := crHourGlass;
   try
      mdMcomct := HmdMcomct.Create;

      RowNo := mdMcomct.ListComCd('C','933','',inOrdcd);

      //오류시 Message처리, Exit
      if (RowNo = -1) then
      begin
         mdMcomct.Free;
         ShowErrMsg;
         Exit;
      end;

      //자료건수=0인경우, Exit
      if (RowNo = 0) then
      begin
         mdMcomct.Free;
         Exit;
      end;

      mdMcomct.Free;

      Result := True;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

end.
