unit MDC100U1;

interface

uses
  Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs, ComCtrls,
  StdCtrls, Buttons, Grids, ExtCtrls, Mask, WinTypes, WinProcs, MPlayer, IniFiles, UltraGrid, Imm,
  OleServer, Excel97, Printers, ComObj, SysUtils, Variants, StrUtils;
var
    ResultNO, ResultNm, ResultSexAge, ResultAdmDate, ResultMedDept,
    ResultChaDr, ResultGenDr, ResultTelNo, ResultAddress, ResultResno, ResultDenPatno : string;  // ���ϵǴ� ȯ�ڹ�ȣ, ȯ�ڸ�, ȯ�ڼ�������
    ResultHospNm, ResultHospType, ResultHospTypeCd : String; // (�߰�)
    ResultCon : Boolean;          // ��������
    ResultSms, ResultInfuse : string;   //�޽������ŵ��� ���� �߰�. KimDaeYong 2021-12-16

// 1.������ڵ� ��������
function GetMedDept(CdCombo, NmCombo:TComboBox):integer;

// 1.1 ���� ������ڵ� ��������
function GetSttDept(CdCombo, NmCombo:TComboBox):integer;

// 1.2 ��������� ���� ��������
function GetOpMedDept(CdCombo, NmCombo:TComboBox):integer;

//1.1.2 Ư���μ� �ڵ尡������.
function GetSpecDept(CdCombo, NmCombo:TComboBox):Integer;

// 2.�����ڵ� ��������
function GetWardNo(CdCombo, NmCombo:TComboBox):integer;

//�Ż��ƽǰ� �Ż�����ȯ�ڽ��� ���� ���� ��. 20140221. KYA.
function GetWardNo1(CdCombo, NmCombo:TComboBox):integer;

// 2-1.����ġ�����ڵ� ��������
function GetNowPos(CdCombo, NmCombo:TComboBox):integer;

//NICU�� NBR�� ���� ���� �ְ� ��. 20140221. KYA
function GetNowPos1(CdCombo, NmCombo:TComboBox):integer;

// 3.������ڵ� ��������
procedure GetUserId(SelType1,SelType2: string; CdCombo, NmCombo:TComboBox);

// 3.1������ڵ� ��������3, KimDaeYong 2014-01-28
procedure GetUserId3(SelType1,SelType2: string; CdCombo, NmCombo, LicCombo:TComboBox);

// 4.ȯ�ڸ�/ȯ�ڹ�ȣ�� �����ã��
function GetPatName(InputText,IdText, NmText: TWinControl):Boolean;

// 4.1 ����ȯ�ڸ�/ȯ�ڹ�ȣ�� �����ã��
function GetOpPatName(InputText,IdText, NmText: TWinControl):Boolean;

// 4.2 ȯ�ڸ�/ȯ�ڹ�ȣ�� �����ã��. �޽������ŵ��� �߰�. KimDaeYong 2021-12-16
function GetPatNameSms(InputText,IdText,NmText,SmsText,InfuseText: TWinControl): Boolean;

// 4.5 ȯ�ڸ�/ȯ�ڹ�ȣ�� �����ã��
function GetPatNameFlag(InputText,IdText, NmText, SexAge: TWinControl;sFlag:String):Boolean;

// 4.6 �Կ�(1)/���(2) ȯ�ڸ�/ȯ�ڹ�ȣ�� �����ã��
function GetAdmOutList(InputText,IdText, NmText, SexAge, MedDept,
                       AdmDate, ChaDr, GenDr, TelNo, Address : TWinControl;sFlag:String):Boolean;

// 4.7 ȯ�ڸ�/ȯ�ڹ�ȣ�� �����ã��
function GetPatNameFlag2(InputText,IdText, NmText, SexAge, Resno : TWinControl;sFlag:String):Boolean;

// 4.8 ġ����ȣ
function GetPatNameFlag3(InputText,IdText, NmText, SexAge, DenPatno: TWinControl;sFlag:String): Boolean;

// 5.����ڸ�/����ڹ�ȣ �����ã��
function GetUserName(DrNurse:String;InputText,IdText, NmText: TWinControl):Boolean;

// 6.HD / POD ���
function GetHdPodCnt(Gubun, AdmOpDate : string; sFromDate :TDate):string;

// 7.yyyymmddhh24miss�� yyyy-mm-dd hh24:mi�� ��ȯ
function  ConvertDDate(DTstr:String):String;

// 7-2.yyyymmddhh24miss�� yyyy-mm-dd hh24:mi:ss�� ��ȯ
function  ConvertDDate2(DTstr:String):String;

// 7-3.yyyymmddhh24miss�� yy-mm-dd hh24:mi�� ��ȯ
function  ConvertDDate3(DTstr:String):String;

// 8.yyyymmdd�� yyyy-mm-dd�� ��ȯ
function  ConvertSDate(DTstr:String):String;

// 8-1.hh24mi�� hh24:mi�� ��ȯ
function  ConvertDTime(DTstr:String):String;

// 8-2.yyyymmdd�� yyyy�� mm�� dd�Ϸ� ��ȯ
function  ConvertSDate2(DTstr:String):String;

// 9.yyyy-mm-dd hh24:mi:ss�� yyyymmddhh24miss�� ��ȯ
function  InvertLDate(DTstr:String):String;

// 10.yyyy-mm-dd�� yyyymmdd�� ��ȯ
function  InvertSDate(DTstr:String):String;

// 10-1.hh24:mi�� hh24mi�� ��ȯ
function  InvertLTime(DTstr:String):String;

// 11-1.������� �Һз��ڵ�,�� ��������
procedure GetComName(ComCd: string; CdCombo, NmCombo:TComboBox);

// 11-2.������� �Һз��ڵ�,�� ��������
procedure GetComName2(ComCd: string; TSL:TStringList);

// 11-3.������� �Һз��ڵ�,�� ��������
procedure GetComName3(ComCd1,ComCd2: string; CdCombo, NmCombo:TComboBox);

// 12. Line Feed�� Carrage Return ���ڸ� string���� ����.
function  RemoveLFCR(Str:String):String;

// 13. Tag�� 1 ��ȯ
procedure TagChange(Sender: TObject);

// 14. Tag�� 0�� ��ȯ
procedure TagClear(Sub_Form:TForm);

// 15. Tag�� 1�� ���翩�� check
function TagChgChk(Sub_Form:TForm):Boolean;

// 16. String ���� Ư�� ���� ����
function DelChar( const Str : String ; DelC : Char ) : String;

// 17. �׸����� NULL ���� üũ
function Is_Null_Record(Sender: TObject;Row:Integer):Boolean;

// 18. ������������ �Һз��ڵ�,�� ��������
procedure GetSDComName(ComCd: string; CdCombo, NmCombo:TComboBox);

// 19. �ѿ�Ű�� ����Ű�� ��ȯ
procedure EngKeyChg(Handle1:THandle);

// 20. ������ ��¥ ��������
function  dateEndOfMonth(D: TDateTime): TDateTime;

// 21. Exceló��
procedure ExcelSave(ExcelGrid:TUltraGrid;Title:String; Disp:Integer);

// 22.ó�����ó�ڵ� ��������
function GetOrderDpNo(CdCombo, NmCombo:TComboBox):integer;

// 23.����Ʈ�Ƿڰ��ڵ� ��������
function GetConslDpNo(CdCombo, NmCombo:TComboBox):integer;

// 24.����� ���� ��ȯ
function  ChgUserInfo(UserId: String): Boolean;

// 25.�ѱ��� �ѱ��ڷ� �ν��Ͽ� ���� ���̰� ���ϴ� �Լ�
function  HLength(str1:String):Integer;

// 26.������ ���� üũ.
function IsNotPrinterReady:Boolean;

// 27.����ȭ�� ���������� üũ.
procedure prCantDupExe(fmName:String);

// 28. üũ �޼���
procedure prInfMsg(sMsg: String); overload;

// 29.������ ȭ���� ���� ���̸� ���̱�.
procedure KillChartShow;

// 30. String���� Ư�� ���ڿ� ����
function DeleteStr(OrigStr,DelStr: String):String;

// 31. �����ڸ� �������� String�� �и�.
function SeperateData(OrgStr, sMark:string; iPos:integer):string;

// 32. ��ȣ������ �μ� ��ȸ
function GetNurseDt(CdCombo, NmCombo:TComboBox):integer;

// 33. ���ڿ� ó������ KeyStr�� ������ ���������� �߶󳽴�.
function  FindStr(Fstr:String;KeyStr:String):String;

// 34. ���ڿ� ó������ KeyStr������ �߶� �������� Return.
function  FindRStr(Fstr:String;KeyStr:String):String;

// 35. �ܺ� �����ڵ� List �������� (CCCOMCDT)
procedure GetCComCdList(Code1,Code2: String; CdCombo,NmCombo: TComboBox);

// 36. CheckBox.Checked Value�� ���� Insert value Return
function GetCheckedValue(cbxItem:TCheckBox):String;

// 37. Value ���� ���� CheckBox.Checked Value Set
function SetCheckedValue(sValue:String):Boolean;

// 38. Caution Check
function CautionSelect(Patno:String;Target:TControl):String;

// 39. ����ɻ翩�� Check
function CheckBckStat(PatNo,AdmDate:String; var vStatus:String):Boolean;

// 40. �Կ����� ȯ������ Check.
function CheckAdmPat(PatNo:String; var vPatSect:String):Boolean;

// 41. ����Ÿ��Ʋ
function LocateTitle(sLocate:String):String;

// 42. �ǻ纰 �ӻ󿬱���ȣ List �������� (SDLABMST)
procedure GetLabNoList(MedDept,MedDr: String; CdCombo: TComboBox);

// 43. Transaction ������ �˾Ƴ���.
// 1: Ʈ����ǻ���, 0: Ʈ����ǻ��°� �ƴ�, -1 : ����
function GetLevTRSC : Integer;

//44. ȭ�鿡���� Commit �� Trunsaction ����
function BeginTRSC : Boolean;

//45. ȭ�鿡���� Commit �� Rollback
procedure AbortTRSC;

//46. ȭ�鿡���� Commit �� Transaction ����(commit)
function EndTRSC : Boolean;

//47. Multi Grid Excel ���� 
procedure MultiExcelSave(ExcelGrid1,ExcelGrid2,ExcelGrid3,ExcelGrid4:TUltraGrid;MainTitle,Title1,Title2,Title3,Title4:String; Disp:Integer);
//48. �������� �Ķ���� ó��
function SeperateInputStr(InputStr:String;Seperator:Char;Cnt:Integer):Variant;
//49. ���ڿ� ó������ KeyStr������ �߶� �������� Return.(���ڿ��� �տ��� ����)
function FindRRStr(Fstr:String;KeyStr:String):String;
// 50. String���� Ư�� ���ڿ��� �ٸ� ���ڿ��� ��ü
function ReplaceStr(TextStr,OrigStr,ChgStr: String):String;
// 51. ����̽� ������
procedure KillFormShow;
// 52. ó��� ������ ġ������ Display
function EditTeethInfo(teeUpRt,teeUpLt,teeDwLt,teeDwRt: String): String;

// 53. Ƚ���� �⺻��� ����
function GetDefaultMethCd(OrdGrp,Cnt:String): String;
// 53-1. Ƚ���� �⺻��� ����(�ֻ��B2). KimDaeYong 2017-04-25
function GetDefaultMethCd2(MethCd,Cnt:String): String;

// 54. Float Value Formatting (Ex. 0.6666666...==> '0.67')
function SetFloat(fValue:Double): String;

// 55. ���ϰ�������
function GetDayofWeek(Adate : TDatetime; Type1 : String): String;

//56. ����ȯ�� ���ó������ Check (APOPDLST.OutDate)
function CheckErOutDate(PatNo:String):Boolean;

//57. ����ȣ��� ��������.
function HnNameSelect(sDeptCd, sLocate : String):String;

//58.������ڵ� ��������2
procedure GetUserId2(SelType1,SelType2,Locate: string; CdCombo, NmCombo:TComboBox);

//59.���� ���
function GetWardGrade(CdCombo, NmCombo:TComboBox;sDeptCd:String):Integer;

//
// 40. �Կ����� ȯ������ Check.
function CheckAdmPat2(PatNo:String; var vPatSect:String):Boolean;

// 41. �Ѵ����� ���� �Ƿ����� �� ȸ���� ���� ���� üũ   20061128 �����
function CheckReferRtnDate(Patno:String):Boolean;

// METFORMIN/CREATININE üũ
function CheckMetformin(inPatno,inOrddate:String; var vsMetfdt, vsMetfnm, vsCreatdt, vsCreat, vsJoyngdt, vsJoyngnm:String):Boolean;

//(�߰�. 2003.04.04 �̿��)
procedure ExcelSaveNew(sgd1: TStringGrid; Title, Tabname: String; isNewBook: Boolean);

//(�߰�. 2003.04.07 �̿��) ȯ�ڱ⺻������ȸ New function
procedure CheckPatInfo(PatNO : String; var Address,TelNo1,Resno1,Resno2 : String);

//ȯ�ں������� ��������(�Ǻ�����,�ֹι�ȣ)
procedure CheckInsuInfo(PatNo, Pattype : String; var Insname,Insresno : String);

// CD/MT ��ȣ ��ȸ KIM SJ 2005.11.01 Add
function GetCdMtNumber(PatNo : String) : String;

// ������ڵ� ��������(����������)
function GetImMedDept(sUserId, sMedDate : String; CdCombo, NmCombo:TComboBox):integer;

// ������ڵ� ��������(����)
procedure GetImUserId(sType1,sType2: string; CdCombo, NmCombo:TComboBox);

procedure GridToExcel2(in_grid  : TStringGrid;
                          TitleStr : String;
                          Cnt      : Integer);overload;

   //UltraGrid�� ������ Excel���Ϸ� �����ϱ�(�����÷�, �����÷�����)
   // SNMODE : �迭[0] : 'S', 'N' : 'S'-> ���� ������ �÷��ε����� ����
   //                               'N'-> ���� ������ �÷��ε����� ����
   // ex) ['S', '1', '5', '10'] => 1, 5, 10 �� �÷��� ���� �������� ����
   //     ['N', '1', '5', '10'] => 1, 5, 10 �� �÷��� ���� �������� ����
   //     �÷��ε����� 0 ���� ������.
   procedure GridToExcel2(in_grid  : TStringGrid;
                          TitleStr : String;
                          Cnt      : Integer;
                          SNMode   : array of String);overload;

//String�� �������� ���� �ľ�
function bIsNumber(AStr : String) : Boolean;

//String���� 0..9 ���� ������ ���� ���� 2012.2.27 �����
function DeleteNumber(Const sStr : String) : String;

function GetHpType(InputHpnm,ResultHpNm, ResultHpType,ResultHpTypeCd: TWinControl):Boolean;

// DNR Check(�����Ƿ�). KimDaeYong 2019-05-24
function DnrSelect(Patno:String;Target:TControl):String;

//����ȣ�� '-' �ֱ�. KimDaeYong 2020-06-17
function  FormatTel(sStr: String): String;

//����üũ����Ʈ �ش� ����ó�濩�� üũ. KimDaeYong 2020-09-01
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

// 1.������ڵ� �������� ( CdCombo -> �ڵ尪�� ��� ComboBox
//                         NmCombo -> �ڵ���� ��� ComboBox
//                         return value -> ���� ����� code index value )
function GetMedDept(CdCombo, NmCombo:TComboBox):Integer;
var
   RowNo, i, j : integer;
begin
   // ���ϰ� �ʱ�ȭ
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
      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;
      // �ڵ� ó��
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
      // �ڵ�� ó��
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
   // ���ϰ� �ʱ�ȭ
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
      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;
      // �ڵ� ó��
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
      // �ڵ�� ó��
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

// 1.2 ����ȭ�� ����� ��������
function GetOpMedDept(CdCombo, NmCombo:TComboBox):Integer;
var
   RowNo, i, j : integer;
   sLocate : string;
begin
   sLocate := G_LOCATE;
{$IFDEF MDDLL}
   sLocate := 'EB1';
{$ENDIF}

   // ���ϰ� �ʱ�ȭ
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
      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;
      // �ڵ� ó��
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
      // �ڵ�� ó��
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

//1.1.2 Ư���μ� �ڵ尡������.
function GetSpecDept(CdCombo, NmCombo:TComboBox):Integer;
var
   RowNo, i, j : integer;
begin
   // ���ϰ� �ʱ�ȭ
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
      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;
      // �ڵ� ó��
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
      // �ڵ�� ó��
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

// 2.�����ڵ� �������� ( CdCombo -> �ڵ尪�� ��� ComboBox
//                       NmCombo -> �ڵ���� ��� ComboBox )
function GetWardNo(CdCombo, NmCombo:TComboBox):integer;
var
   RowNo, i, j : integer;
   sLocate : string;
begin
   // ���ϰ� �ʱ�ȭ
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

      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;

      // �ڵ� ó��
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

      // �ڵ�� ó��
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

//�Ż��ƽǰ� �Ż�����ȯ�ڽ��� ���� ���� ��. 20140221. KYA.
function GetWardNo1(CdCombo, NmCombo:TComboBox):integer;
var
   RowNo, i, j : integer;
begin
   // ���ϰ� �ʱ�ȭ
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

      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;

      // �ڵ� ó��
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

      // �ڵ�� ó��
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


// 2-1.����ġ�����ڵ� �������� ( CdCombo -> �ڵ尪�� ��� ComboBox
//                               NmCombo -> �ڵ���� ��� ComboBox )
function GetNowPos(CdCombo, NmCombo:TComboBox):integer;
var
   RowNo, i, j : integer;
begin
   // ���ϰ� �ʱ�ȭ
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

      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;

      // �ڵ� ó��
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

      // �ڵ�� ó��
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

//NICU�� NBR�� ���� ���� �ְ� ��. 20140221. KYA
function GetNowPos1(CdCombo, NmCombo:TComboBox):integer;
var
   RowNo, i, j : integer;
begin
   // ���ϰ� �ʱ�ȭ
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

      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;

      // �ڵ� ó��
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

      // �ڵ�� ó��
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


// 3.������ڵ� �������� ( SelType1,2 -> A,NULL:����ǻ�
//                                       B,�����:Ư������ ����ǻ�
//                                       L,�����:Ư������ ����ǻ�(����������),KimDaeYong 2014-02-19
//                                       C,�����:Ư������ ��ġ��
//                                       D,�����:Ư������ �����
//                                       E,NULL  :��� ��ȣ��
//                                       F,����  :������ ��ȣ��
//                                       G,�����:Ư������ �Ƿ���
//                                       H,�����:Ư������ ������
//                                       V,�����:���� �ܷ������ǻ�
//                                       U,�����:���� �ܷ������ǻ翡 �а�(����)�����ǹ�ȣ �߰� ��ȸ,����Ʈ���� ���, KimDaeYong 2014-09-18
//                         CdCombo -> �ڵ尪�� ��� ComboBox
//                         NmCombo -> �ڵ���� ��� ComboBox )
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
      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         CdCombo.Items.Clear;
         NmCombo.Items.Clear;
         mdInsamt.Free;
         Exit;
      end;
      // ����� ó��
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdInsamt.sEmpNo[i]);
      end;
      // ����ڸ� ó��
      with NmCombo do
      begin
         Items.Clear;
         Items.add('');
         //�а�(����)������ ����, �ܰ�/�Ҿư� �迭��.. KimDaeYong 2014-09-18
         if (SelType1 = 'U') and
            ((SelType2='SURG') or (SelType2='GSHBP') or (SelType2='GSCOL') or (SelType2='GSSTO') or (SelType2='GSBTH')) then     //�ܰ��а�
             //(SelType2='PED') or (SelType2='PENEU') or (SelType2='NEONA') or (SelType2='PDCAR') or (SelType2='PDARD')) then  //�Ҿư��а�
         begin
             for i := 0 to RowNo - 1 do
             begin
                 if (mdInsamt.sLcnNo[i] <> '') and (mdInsamt.sLcnCd[i] <> '') then
                    Items.add(mdInsamt.sEmpNm[i]+'-�а�������')
                 else
                    Items.add(mdInsamt.sEmpNm[i]);
             end;
         end
         else
         begin
             //���� �ڵ�
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
// 3.1������ڵ� ��������3 ( SelType1,2 -> A,NULL:����ǻ�
//                                       B,�����:Ư������ ����ǻ�
//                                       L,�����:Ư������ ����ǻ�(����������),KimDaeYong 2014-02-19
//                                       C,�����:Ư������ ��ġ��
//                                       D,�����:Ư������ �����
//                                       E,NULL  :��� ��ȣ��
//                                       F,����  :������ ��ȣ��
//                                       G,�����:Ư������ �Ƿ���
//                                       H,�����:Ư������ ������
//                                       V,�����:���� �ܷ������ǻ�
//                                       U,�����:���� �ܷ������ǻ翡 �а�(����)�����ǹ�ȣ �߰� ��ȸ,����Ʈ���� ���, KimDaeYong 2014-09-18
//                         CdCombo -> �ڵ尪�� ��� ComboBox
//                         NmCombo -> �ڵ���� ��� ComboBox
//                         LicCombo-> �����ȣ�� ��� ComboBox  )
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
      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         CdCombo.Items.Clear;
         NmCombo.Items.Clear;
         mdInsamt.Free;
         Exit;
      end;
      // ����� ó��
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdInsamt.sEmpNo[i]);
      end;
      // ����ڸ� ó��
      with NmCombo do
      begin
         Items.Clear;
         Items.add('');
         //�а�(����)������ ����, KimDaeYong 2014-09-18
         if SelType1 = 'U' then
         begin
             for i := 0 to RowNo - 1 do
             begin
                 if (mdInsamt.sLcnNo[i] <> '') and (mdInsamt.sLcnCd[i] <> '') then
                    Items.add(mdInsamt.sEmpNm[i]+'-�а�������')
                 else
                    Items.add(mdInsamt.sEmpNm[i]);
             end;
         end
         else
         begin
             //�����ڵ�
             for i := 0 to RowNo - 1 do
                 Items.add(mdInsamt.sEmpNm[i]);
         end;
      end;
      // �����ȣ ó��
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

// 4.ȯ�ڸ�/ȯ�ڹ�ȣ�� �����ã�� ( InputText -> ã���� �ϴ� id/�̸����� ������Ʈ��,
//                                  InText -> id ������Ʈ��,  NmText -> �̸� ������Ʈ��
//                                  sFlag => 1 ��üȯ��, 2 ���ȯ��
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
      // ȯ�ڸ����� ã��
      if HLength(temp) < 2 then
      begin
         showmessage('ȯ�ڸ��� 2�����̻� �Է��ϼ���');
         (InputText as TWinControl).setfocus;
         exit;
      end;
      temp1 := '2';
      temp2 := '';
      temp3 := temp;
   end
   else
   begin
      // ȯ�ڹ�ȣ�� ã��
      if length(temp) < 4 then
      begin
         showmessage('��Ϲ�ȣ�� 4�����̻� �Է��ϼ���');
         (InputText as TWinControl).setfocus;
         exit;
      end
      else if (length(temp) > 3) and (length(temp) < 9) then
      begin
         temp := FormatFloat('00000000', StrToFloat(temp));
         WinControlSet(NmText, temp);
      end;

      {====OCS ���� ����ȯ�ڷ� ������. KimDaeYong 2017-11-13=============
      if (Copy(temp,1,1)='9') then
      begin
         Showmessage('����ȯ�ڴ� �����Ͻ� �� �����ϴ�.');
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
      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdPatinf.Free;
         ShowMessage('�ش� ȯ�ڴ� �������� �ʽ��ϴ�. ȯ�ڸ� �Ǵ� ��Ϲ�ȣ�� �ٽ��Է��Ͻʽÿ�.');
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
                  ugd_List.Cells[6,i+1] := mdPatinf.sDentno[i]; // ġ����ȣ ���̰� �ϰ� ġ����ȣ��� �պ���ȣ�� ��ü 2012.1.5 �����
               end;
               // ��ġ ������ ã��
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

// 4.1 ����ȯ�ڸ�/ȯ�ڹ�ȣ�� �����ã�� ( InputText -> ã���� �ϴ� id/�̸����� ������Ʈ��,
//                                        InText -> id ������Ʈ��,  NmText -> �̸� ������Ʈ��
//                                        sFlag => 1 ��üȯ��, 2 ���ȯ��
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
      // ȯ�ڸ����� ã��
      if HLength(temp) < 2 then
      begin
         showmessage('ȯ�ڸ��� 2�����̻� �Է��ϼ���');
         (InputText as TWinControl).setfocus;
         exit;
      end;
      temp1 := '7';       //2->7
      temp2 := '';
      temp3 := temp;
   end
   else
   begin
      // ȯ�ڹ�ȣ�� ã��
      if length(temp) < 4 then
      begin
         showmessage('��Ϲ�ȣ�� 4�����̻� �Է��ϼ���');
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
      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdPatinf.Free;
         ShowMessage('�ش� ȯ�ڴ� �������� �ʽ��ϴ�. ȯ�ڸ� �Ǵ� ��Ϲ�ȣ�� �ٽ��Է��Ͻʽÿ�.');
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
               ugd_OutPatList.Title   := 'ȯ�ڹ�ȣ|ȯ�ڸ�|Sex/Age|�ֱټ�����|�����';
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
               // ��ġ ������ ã��
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

// 4.2 ȯ�ڸ�/ȯ�ڹ�ȣ�� �����ã��. SMS���ŵ��� �߰� ( InputText -> ã���� �ϴ� id/�̸����� ������Ʈ��,
//                                                      InText -> id ������Ʈ��,  NmText -> �̸� ������Ʈ��
//                                                      SmsText,InfuseText -> �޽������ŵ��ǿ���  ������Ʈ��
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
      // ȯ�ڸ����� ã��
      if HLength(temp) < 2 then
      begin
         showmessage('ȯ�ڸ��� 2�����̻� �Է��ϼ���');
         (InputText as TWinControl).setfocus;
         exit;
      end;
      temp1 := '2';
      temp2 := '';
      temp3 := temp;
   end
   else
   begin
      // ȯ�ڹ�ȣ�� ã��
      if length(temp) < 4 then
      begin
         showmessage('��Ϲ�ȣ�� 4�����̻� �Է��ϼ���');
         (InputText as TWinControl).setfocus;
         exit;
      end
      else if (length(temp) > 3) and (length(temp) < 9) then
      begin
         temp := FormatFloat('00000000', StrToFloat(temp));
         WinControlSet(NmText, temp);
      end;

      {====OCS ���� ����ȯ�ڷ� ������. KimDaeYong 2017-11-13=============
      if (Copy(temp,1,1)='9') then
      begin
         Showmessage('����ȯ�ڴ� �����Ͻ� �� �����ϴ�.');
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
      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdPatinf.Free;
         ShowMessage('�ش� ȯ�ڴ� �������� �ʽ��ϴ�. ȯ�ڸ� �Ǵ� ��Ϲ�ȣ�� �ٽ��Է��Ͻʽÿ�.');
         WinControlSet(IdText, '');
         WinControlSet(NmText, '');
         WinControlSet(SmsText, '');    //SMSYN �߰�. KimDaeYong 2021-12-16
         WinControlSet(InfuseText, ''); //INFUSEYN �߰�. KimDaeYong 2021-12-16
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
                  ugd_List.Cells[6,i+1] := mdPatinf.sDentno[i]; // ġ����ȣ ���̰� �ϰ� ġ����ȣ��� �պ���ȣ�� ��ü 2012.1.5 �����
                  //hidden
                  ugd_List.Cells[7,i+1] := mdPatinf.sSmsyn[i];      //SMSYN. KimDaeYong 2021-12-16
                  ugd_List.Cells[8,i+1] := mdPatinf.sInfuseyna[i];  //INFUSEYNA. KimDaeYong 2021-12-16
               end;
               // ��ġ ������ ã��
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

// 4.5 ȯ�ڸ�/ȯ�ڹ�ȣ�� �����ã�� ( InputText -> ã���� �ϴ� id/�̸����� ������Ʈ��,
//                                  InText -> id ������Ʈ��,  NmText -> �̸� ������Ʈ��
//                                  sFlag => 1 ��üȯ��, 2 ���ȯ��
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
      // ȯ�ڸ����� ã��
      if HLength(temp) < 2 then
      begin
         showmessage('ȯ�ڸ��� 2�����̻� �Է��ϼ���');
         (InputText as TWinControl).setfocus;
         exit;
      end;
      temp1 := '2';
      temp2 := '';
      temp3 := temp;
   end
   else
   begin
      // ȯ�ڹ�ȣ�� ã��
      if length(temp) < 4 then
      begin
         showmessage('��Ϲ�ȣ�� 4�����̻� �Է��ϼ���');
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

   if (sFlag = '1') and (temp1 = '1') then         // ��üȯ�� ȯ�ڹ�ȣ��ã��
      temp1 := '1'
   else if (sFlag = '1') and (temp1 = '2') then    // ��üȯ�� ȯ�ڸ�����ã��
      temp1 := '2'
   else if (sFlag = '2') and (temp1 = '1') then    // ���ȯ�� ȯ�ڹ�ȣ�� ã��
      temp1 := '4'
   else if (sFlag = '2') and (temp1 = '2') then    // ���ȯ�� ȯ�ڸ����� ã��
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
      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdPatinf.Free;
         ShowMessage('�ش� ȯ�ڴ� �������� �ʽ��ϴ�. ȯ�ڸ� �Ǵ� ��Ϲ�ȣ�� �ٽ��Է��Ͻʽÿ�.');
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
               // ��ġ ������ ã��
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

// 4.6 �Կ�(1)/���(2) ȯ�ڸ�/ȯ�ڹ�ȣ�� �����ã�� ( InputText -> ã���� �ϴ� id/�̸����� ������Ʈ��,
//                                  InText -> id ������Ʈ��,  NmText -> �̸� ������Ʈ��
//                                  sFlag => 1 ��üȯ��, 2 ���ȯ��
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
      // ȯ�ڸ����� ã��
      if HLength(temp) < 2 then
      begin
         showmessage('ȯ�ڸ��� 2�����̻� �Է��ϼ���');
         (InputText as TWinControl).setfocus;
         exit;
      end;
      temp1 := '2';
      temp2 := '';
      temp3 := temp;
   end
   else
   begin
      // ȯ�ڹ�ȣ�� ã��
      if length(temp) < 4 then
      begin
         showmessage('��Ϲ�ȣ�� 4�����̻� �Է��ϼ���');
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

   if (sFlag='2') and (temp1 = '1') then          // ���ȯ�� ȯ�ڹ�ȣ�� ã��
      temp1 := '4'
   else if (sFlag='2') and  (temp1 = '2') then    // ���ȯ�� ȯ�ڸ����� ã��
      temp1 := '5'
   else if (sFlag='1') and (temp1 = '1') then     // ���ȯ�� ȯ�ڹ�ȣ�� ã��
      temp1 := '6'
   else if (sFlag='1') and  (temp1 = '2') then    // ���ȯ�� ȯ�ڸ����� ã��
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
         // ��ȸ�Ǽ� ����
         if RowNo = 0 then
         begin
            mdWrkLst.Free;
            if sFlag='2' then
            begin
               ShowMessage('�ش� ȯ�ڴ� �������� �ʽ��ϴ�. ȯ�ڸ� �Ǵ� ��Ϲ�ȣ�� �ٽ��Է��Ͻʽÿ�.');
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
               if sFlag = '1' then    // ���ȯ��
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
                     ugd_PatList.Cells[8,i+1] := mdWrkLst.sMemo1[i];  // ��ȭ��ȣ
                     ugd_PatList.Cells[9,i+1] := mdWrkLst.sMemo2[i];  // �ּ�

                  end;
               end
               else if sFlag = '2' then   // ���ȯ��.
               begin
                  ugd_PatList.Visible := False;
                  ugd_OutPatList.Top  := 3;
                  ugd_OutPatList.Left := 3;
                  ugd_OutPatList.Visible := True;
                  ugd_OutPatList.Title   := 'ȯ�ڹ�ȣ|ȯ�ڸ�|Sex/Age|�Կ�����|�����';
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
                     ugd_OutPatList.Cells[7,i+1] := mdWrkLst.sMemo1[i];   // ��ȭ��ȣ
                     ugd_OutPatList.Cells[8,i+1] := mdWrkLst.sMemo2[i];   // �ּ�
                  end;
               end;

               // ��ġ ������ ã��
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
// 4.7 ȯ�ڸ�/ȯ�ڹ�ȣ�� �����ã�� ( InputText -> ã���� �ϴ� id/�̸����� ������Ʈ��,
//                                  InText -> id ������Ʈ��,  NmText -> �̸� ������Ʈ��
//                                  sFlag => 1 ��üȯ��, 2 ���ȯ��
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
      // ȯ�ڸ����� ã��
      if HLength(temp) < 2 then
      begin
         showmessage('ȯ�ڸ��� 2�����̻� �Է��ϼ���');
         (InputText as TWinControl).setfocus;
         exit;
      end;
      temp1 := '2';
      temp2 := '';
      temp3 := temp;
   end
   else
   begin
      // ȯ�ڹ�ȣ�� ã��
      if length(temp) < 4 then
      begin
         showmessage('��Ϲ�ȣ�� 4�����̻� �Է��ϼ���');
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

   if (sFlag = '1') and (temp1 = '1') then         // ��üȯ�� ȯ�ڹ�ȣ��ã��
      temp1 := '1'
   else if (sFlag = '1') and (temp1 = '2') then    // ��üȯ�� ȯ�ڸ�����ã��
      temp1 := '2'
   else if (sFlag = '2') and (temp1 = '1') then    // ���ȯ�� ȯ�ڹ�ȣ�� ã��
      temp1 := '4'
   else if (sFlag = '2') and (temp1 = '2') then    // ���ȯ�� ȯ�ڸ����� ã��
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
      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdPatinf.Free;
         ShowMessage('�ش� ȯ�ڴ� �������� �ʽ��ϴ�. ȯ�ڸ� �Ǵ� ��Ϲ�ȣ�� �ٽ��Է��Ͻʽÿ�.');
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
               // ��ġ ������ ã��
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
//4.8 ġ����ȣ ��ȸ ����
// 4.5 ȯ�ڸ�/ȯ�ڹ�ȣ�� �����ã�� ( InputText -> ã���� �ϴ� id/�̸����� ������Ʈ��,
//                                  InText -> id ������Ʈ��,  NmText -> �̸� ������Ʈ��
//                                  sFlag => 1 ��üȯ��, 2 ���ȯ��
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
      // ȯ�ڸ����� ã��
      if HLength(temp) < 2 then
      begin
         showmessage('ȯ�ڸ��� 2�����̻� �Է��ϼ���');
         (InputText as TWinControl).setfocus;
         exit;
      end;
      temp1 := '2';
      temp2 := '';
      temp3 := temp;
   end
   else // code�� 0�̸� ȯ�ڹ�ȣ
   begin
      // ȯ�ڹ�ȣ�� ã��
      if length(temp) < 4 then
      begin
         showmessage('��Ϲ�ȣ�� 4�����̻� �Է��ϼ���');
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

   if (sFlag = '1') and (temp1 = '1') then         // ��üȯ�� ȯ�ڹ�ȣ��ã��
      temp1 := '1'
   else if (sFlag = '1') and (temp1 = '2') then    // ��üȯ�� ȯ�ڸ�����ã��
      temp1 := '2'
   else if (sFlag = '2') and (temp1 = '1') then    // ���ȯ�� ȯ�ڹ�ȣ�� ã��
      temp1 := '4'
   else if (sFlag = '2') and (temp1 = '2') then    // ���ȯ�� ȯ�ڸ����� ã��
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
      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdPatinf.Free;
         ShowMessage('�ش� ȯ�ڴ� �������� �ʽ��ϴ�. ȯ�ڸ� �Ǵ� ��Ϲ�ȣ�� �ٽ��Է��Ͻʽÿ�.');
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
                  //(�߰�. 2003.2.26 �̿��)
                  ugd_List.Cells[6,i+1] := mdPatinf.sDentno[i];
               end;
               // ��ġ ������ ã��
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

// 5.����ڸ�/����ڹ�ȣ�� �����ã�� ( DrNurse -> R:����ǻ�
//                                                 S:��ġ��
//                                                 T:�����
//                                                 N:��簣ȣ��
//                                      InputText -> ã���� �ϴ� id/�̸����� ������Ʈ��,
//                                      InText -> id ������Ʈ��,  NmText -> �̸� ������Ʈ��)
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
      // ȯ�ڸ����� ã��
      if HLength(temp) < 2 then
      begin
         showmessage('����ڸ��� 2�����̻� �Է��ϼ���');
         (InputText as TWinControl).setfocus;
         exit;
      end;
      temp1 := '2';
   end
   else
   begin
      // ȯ�ڹ�ȣ�� ã��
      if length(temp) < 4 then
      begin
         showmessage('����� 4�����̻� �Է��ϼ���');
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
      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdInsamt.Free;
         ShowMessage('�ش� ����ڴ� �������� �ʽ��ϴ�. ����ڸ� �Ǵ� ����� �ٽ��Է��Ͻʽÿ�.');
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
               if DrNurse = 'R' then // �ǻ�
               begin
                  ugd_PatList.Cells[4,0] := '�����ȣ';
                  ugd_PatList.Cells[5,0] := '�����ǹ�ȣ';
               end
               else if (DrNurse = 'N') or (DrNurse = 'X') then // ��ȣ��
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
               // ��ġ ������ ã��
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


// 6.HD / POD ���
// Gubun: 1-HD, 2-POD, AdmOpDate:�Կ���/������(YYYYMMDD), sFromDate: ������
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

// 7.yyyymmddhh24miss�� yyyy-mm-dd hh24:mi�� ��ȯ
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

// 7.2 yyyymmddhh24miss�� yyyy-mm-dd hh24:mi:ss�� ��ȯ
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

// 7.3 yyyymmddhh24miss�� yy-mm-dd hh24:mi�� ��ȯ
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


// 8.yyyymmdd�� yyyy-mm-dd�� ��ȯ
function  ConvertSDate(DTstr:String):String;
begin
    if (Trim(DTstr) = '') then
        Result := ''
    else
        Result := copy(Dtstr,1,4)+'-'+copy(Dtstr,5,2)+'-'+copy(Dtstr,7,2);
end;

// 8.yyyymmdd�� yyyy�� mm�� dd�Ϸ� ��ȯ
function  ConvertSDate2(DTstr:String):String;
begin
    if (Trim(DTstr) = '') then
        Result := ''
    else
        Result := copy(Dtstr,1,4)+'�� '+copy(Dtstr,5,2)+ '�� '+copy(Dtstr,7,2)+ '�� ';
end;


// 8-1.hh24mi�� hh24:mi�� ��ȯ
function  ConvertDTime(DTstr:String):String;
begin
    if (Trim(DTstr) = '') then
        Result := ''
    else
        Result := copy(Dtstr,1,2)+':'+copy(Dtstr,3,2);
end;

// 9.yyyy-mm-dd hh24:mi:ss�� yyyymmddhh24miss�� ��ȯ
function InvertLDate(Dtstr:String):String;
begin
    if (Trim(DTstr) = '') then begin
        Result := '';
        Exit;
    end;

    Result := copy(Dtstr,1,4)  + copy(Dtstr,6,2)  + copy(Dtstr,9,2)+
              copy(Dtstr,12,2) + copy(Dtstr,15,2) + copy(Dtstr,18,2);
end;

// 10.yyyy-mm-dd�� yyyymmdd�� ��ȯ
function InvertSDate(DTstr:String):String;
begin
    if (Trim(DTstr) = '') then begin
        Result := '';
        Exit;
    end;

    Result := copy(Dtstr,1,4) + copy(Dtstr,6,2) + copy(Dtstr,9,2);
end;

// 10-1.hh24:mi�� hh24mi�� ��ȯ
function  InvertLTime(DTstr:String):String;
begin
    if (Trim(DTstr) = '') then begin
        Result := '';
        Exit;
    end;

    Result := copy(Dtstr,1,2) + copy(Dtstr,4,2);
end;

// 11-1.������� �Һз��ڵ�,�� ��������  (ComCd   -> �����ڵ� ��з���
//                                        CdCombo -> �ڵ尪�� ��� ComboBox
//                                        NmCombo -> �ڵ���� ��� ComboBox )
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
      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdMcomct.Free;
         Exit;
      end;
      // �ڵ� ó��
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdMcomct.sComcd3[i]);
      end;

      // �ڵ�� ó��
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

// 11-2.������� �Һз��ڵ�,�� ��������  (ComCd   -> �����ڵ� ��з���
//                                        CdCombo -> �ڵ尪�� ��� ComboBox
//                                        NmCombo -> �ڵ���� ��� ComboBox )
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
      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         TSL.Clear;
         mdMcomct.Free;
         Exit;
      end;

      // �ڵ�� ó��
      for i := 0 to RowNo - 1 do
      begin
          TSL.Add(mdMcomct.sComcdnm3[i]);
      end;
      mdMcomct.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

// 11-3.������� �Һз��ڵ�,�� ��������  (ComCd1   -> �����ڵ� ��з���
//                                        ComCd2   -> �����ڵ� �ߺз���
//                                        CdCombo -> �ڵ尪�� ��� ComboBox
//                                        NmCombo -> �ڵ���� ��� ComboBox )
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
      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdMcomct.Free;
         Exit;
      end;
      // �ڵ� ó��
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdMcomct.sComcd3[i]);
      end;

      // �ڵ�� ó��
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

// 12. Line Feed�� Carrage Return ���ڸ� string���� ����.
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
           OutStr := TrimRight(OutStr) + ' ';  //�����κ�..
    end;
    result := OutStr;
end;


// 13. Tag�� 1 ��ȯ
procedure TagChange(Sender: TObject);
begin
   if Sender is TComponent then
     (Sender as TComponent).Tag := 1;
end;

// 14. Tag�� 0�� ��ȯ
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

// 15. Tag�� 1�� ���翩�� check
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

// 16. String ���� Ư�� ���� ����
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

// 18. ������������ �Һз��ڵ�,�� ��������
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
      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdExCode.Free;
         ShowMessage('��ȸ�� �ڷᰡ �����ϴ�.');
         Exit;
      end;
      // �ڵ� ó��
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdExCode.sComCdDtl[i]);
      end;

      // �ڵ�� ó��
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

// 19. �ѿ�Ű�� ����Ű�� ��ȯ
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

 {���� �������� �����Ͽ��� 1�� ����}
 Result := EncodeDate(Year, Month, 1) - 1;
end;

// 21. Exceló��   ( Dis => 0 : excel ǥ��
//                   Dis => 1 : excel ǥ�þ���)
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
   if Application.MessageBox('Excelȭ�Ϸ� �����Ͻðڽ��ϱ�?', 'Excel����', MB_OKCANCEL) <> IDOK then
      exit;
   if Disp = 1 then
   begin
      SaveD1 := TSaveDialog.Create(nil);
      SaveD1.InitialDir := 'C:\UniHIS';
      SaveD1.DefaultExt := 'xls';
      SaveD1.FileName := Title;
      SaveD1.Filter := '����ȭ��(*.xls)|*.xls|Ms';
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
         showmessage('Excel�� ã���� �����ϴ�.');
         ExcelAP1.Disconnect;
         FreeAndNil(ExcelWS1);
         FreeAndNil(ExcelWB1);
         FreeAndNil(ExcelAP1);
         exit;
      end;

      with EXcelWS1 do
      begin
         // Ÿ��Ʋ
         range1 := range[cells.item[3,2],cells.item[ExcelGrid.Colcount +3,ExcelGrid.RowCount+2]];
         Cells.Item[1,3] := Title;
         // ó�� Routine (grid�� ����)
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
      showmessage('Excelȭ�Ϸ� ����Ǿ����ϴ�.');
   end
   else
   begin
       try
          ExcelAP2 :=CreateOLEObject('Excel.Application');
          ExcelAP2.WorkBooks.add;
          ExcelAP2.visible := true;
          // ó�� Routine (grid�� ����)
          // Ÿ��Ʋ
          ExcelAP2.worksheets[1].cells[1,3] := Title;
          for i := 0 to ExcelGrid.RowCount - 1 do
          begin
             for j := 0 to ExcelGrid.ColCount - 1 do
             begin
                ExcelAP2.worksheets[1].cells[i + 3, j + 2] := '''' + string(ExcelGrid.Cells[j,i]);
             end;
          end;
          ExcelAP2.Range['A1',CHR(64+ ExcelGrid.RowCount+1)+IntToStr(i + 3)].select;
          ExcelAP2.Selection.Font.Name:='����ü';
          ExcelAP2.Selection.Font.Size:=10;
          ExcelAP2.selection.Columns.AutoFit;
          ExcelAP2.Range['A1','A1'].select;
       except
          Screen.Cursor := crDefault;
          ExcelAP2.Quit;
          showmessage('Excel�� ã���� �����ϴ�.');
          exit;
       end;
       Screen.Cursor := crDefault;
   end;
end;


// 22.ó�����ó�ڵ� ��������
function GetOrderDpNo(CdCombo, NmCombo:TComboBox): Integer;
var
   RowNo, i, j : integer;
begin
   // ���ϰ� �ʱ�ȭ
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

      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;

      // �ڵ� ó��
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

      // �ڵ�� ó��
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

// 23.����Ʈ�Ƿڰ��ڵ� ��������
function GetConslDpNo(CdCombo, NmCombo:TComboBox): Integer;
var
   RowNo, i, j : integer;
begin
   // ���ϰ� �ʱ�ȭ
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

      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;

      // �ڵ� ó��
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

      // �ڵ�� ó��
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
   // ���ϰ� �ʱ�ȭ
   ChgUserInfo := False;

   // LOG-IN�� ������� ������ ��ȸ�Ѵ�.
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

      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;

      md_UserId   := UserId;                  // �����ID
      md_UserNm   := mdExCode.sUserNm[0];     // ����ڸ�
      md_DeptCd   := mdExCode.sDeptCd[0];     // �ҼӺμ�
      md_DeptNm   := mdExCode.sDeptNm[0];     // �ҼӺμ���
      md_LicNo    := mdExCode.sLicNo[0];      // �����ȣ
      md_MajorNo  := mdExCode.sMajorNo[0];    // �����ǹ�ȣ
      md_JicJong  := mdExCode.sJicJong[0];    // ����(����ڱ��� HAA:�ǻ� HAB:��ȣ��  HAC : ���)
      md_JikGup   := mdExCode.sJikGup[0];     // ����
      md_JikGupNm := mdExCode.sJikGupNm[0];   // ���޸�
      if trim(mdExCode.sSort[0]) <> '' then
           md_Sort  := mdExCode.sSort[0]        // SET��ȸ����
      else md_Sort  := '1';
      if trim(mdExCode.sInscfmYn[0]) = 'Y' then
           md_InscfmYn := 'Y'                   // ó�������Ȯ�ο���
      else md_InscfmYn := '';
      if trim(mdExCode.sPatSel[0]) <> '' then
           md_PatSel := mdExCode.sPatSel[0]     // �Կ�ȯ�ڼ��ñ���
      else md_PatSel := '3';
      if trim(mdExCode.sNextScr[0]) <> '' then
           md_NextScr := mdExCode.sNextScr[0]   // ȯ�ڼ����� ����ȭ��
      else md_NextScr  := '1';
      if trim(mdExCode.sDiagSel[0]) <> '' then
           md_DiagSel := mdExCode.sDiagSel[0]   // ���ܸ������
      else md_DiagSel := '1';
      md_WardNo1  := mdExCode.sWardNo1 [0];   // �ٹ�����1 (�߰�)
      md_WardNo2  := mdExCode.sWardNo2 [0];   // �ٹ�����2 (�߰�)
      md_Days     := mdExCode.sDays    [0];   // ��ó��⺻�ϼ�
      md_Counts   := mdExCode.sCounts  [0];   // ��ó��⺻Ƚ��
      md_WkareaCd := mdExCode.sWkareaCd[0];   // �۾��� �ڵ�
      md_OrdFont  := mdExCode.sOrdFont [0];   // ó���Է�List Font
      md_PreFont  := mdExCode.sPreFont [0];   // ��ó��List Font
      md_SetFont  := mdExCode.sSetFont [0];   // Setó��List Font
      md_ConsltYn := mdExCode.sConsltYn[0];   // ����Ʈó�� Repeat ����
      md_WeightYn := mdExCode.sWeightYn[0];   // ȯ��ü�ߺ��뷮 ��� ����
      md_PatselYn := mdExCode.sPatselYn[0];   // ó�������� ȯ�ڼ��� ȭ������ �̵�
      md_PreOrdYn := mdExCode.sPreOrdYn[0];   // ��ó�� ���ĺ��̱� ����
      md_OutordYn := mdExCode.sOutordYn[0];   // ��ó�� �� �ܷ�ó�游 ���̱�
      md_Resltopt := mdExCode.sResltopt[0];   // �˻��� ��ȸ����
      md_Selmm    := mdExCode.sSelmm   [0];   // �˻��� �����Ⱓ
      md_Rsvselfg := mdExCode.sRsvselfg[0];   // ��������� ������Ȳ��ȸ����
      md_Refresh  := mdExCode.sRefresh [0];   // �ܷ�ȯ�� Refresh
      md_CellEdit := mdExCode.sCelledit[0];   // ó�漿�Է¸��
      md_OrdCopy  := mdExCode.sOrdcopy [0];   // ��ó���ڵ�����
      md_DrugPrt  := mdExCode.sDrugprt [0];   // ����ó�����ڵ�����
      md_OrgDept  := mdExCode.sOrgDept [0];   // ���ҼӰ�.
      md_OrgDept  := mdExCode.sOrgDept [0];   // ���ҼӰ�.
      md_drugunit := mdExCode.sdrugunit[0];   // �� ����
      md_Chart1   := mdExCode.sChart1  [0];   // N-��Ʈ �ɼ�1
      md_Chart2   := mdExCode.sChart2  [0];   // N-��Ʈ �ɼ�2

      mdExCode.Free;
      ChgUserInfo := True;
   finally
      Screen.Cursor := crDefault;
   end;
end;

// 25.�ѱ��� �ѱ��ڷ� �ν��Ͽ� ���� ���̰� ���ϴ� �Լ�
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

// 26.������ ���� üũ.
function IsNotPrinterReady:Boolean;
var
    PrinterIdx : Integer;
begin
    Result := False;
    try
        PrinterIdx := Printer.PrinterIndex;
    except
        ShowMessage('�����Ͱ� ����� ��ġ�Ǿ����� Ȯ���Ͻñ� �ٶ��ϴ�.');
        Result := True;
    end;
end;

// 27.����ȭ�� ���������� üũ.
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

// 28. üũ �޼���
procedure prInfMsg(sMsg: String); overload;
begin
//   MessageDlg(sMsg,mtInformation,[mbok],0);
end;

// 29.������ ȭ���� ���� ���̸� ���̱�.
procedure KillChartShow;
var
   WinHandle: THandle;
begin
     WinHandle := FindWindow(nil, 'MDP240F1 ������');
     while WinHandle > 0 do
     begin
       SendMessage(WinHandle, WM_CLOSE, 0, 0);
       WinHandle := FindWindow(nil, 'MDP240F1 ������');
     end;
end;

// 30. String���� Ư�� ���ڿ� ����
function DeleteStr(OrigStr,DelStr: String):String;
begin
   while Pos(DelStr, OrigStr) > 0 do
      System.Delete(OrigStr, Pos(DelStr, OrigStr), Length(DelStr));

   Result := OrigStr;
end;

// 31. �����ڸ� �������� String�� �и� (OrgStr=���ڿ�; sMark:������; iPos=������ String Index)
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

// 32.��ȣ������ �μ� �������� ( CdCombo -> �ڵ尪�� ��� ComboBox
//                               NmCombo -> �ڵ���� ��� ComboBox )
function GetNurseDt(CdCombo, NmCombo:TComboBox):integer;
var
   RowNo, i, j : integer;
begin
   // ���ϰ� �ʱ�ȭ
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

      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;

      // �ڵ� ó��
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

      // �ڵ�� ó��
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

// 33.���ڿ� ó������ KeyStr�� ������ ���������� �߶󳽴�.
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

// 34. ���ڿ� ó������ KeyStr������ �߶� �������� Return.
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

// 35. �ܺ� �����ڵ� List �������� (CCCOMCDT)
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

      //����Class Function Call (CCCOMCDT)
      RowNo := List_mdExCode.ListComCodeName(Code1,Code2);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         List_mdExCode.Free;
         ShowErrMsg;
         Exit;
      end;

      //Select�Ǽ� > 0�� ���
      if RowNo > 0 then
      begin
         //Select�� Data�� ComboBox�� Display
         CdCombo.Items.Add('');
         NmCombo.Items.Add('');
         for i := 0 to RowNo - 1 do
         begin
            CdCombo.Items.Add( List_mdExCode.sCode[i]     ); //�ڵ�
            NmCombo.Items.Add( List_mdExCode.sCodeName[i] ); //�ڵ��
         end;
         NmCombo.ItemIndex := 0;
         CdCombo.ItemIndex := 0;
      end;

      List_mdExCode.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

// 36. CheckBox.Checked Value�� ���� Insert value Return
function GetCheckedValue(cbxItem:TCheckBox):String;
begin
   if cbxItem.Checked then
        Result := 'Y'
   else Result := '';
end;

// 37. Value ���� ���� CheckBox.Checked Value Set
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

      // ��ȸ�Ǽ� ����
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
         // ������ ��� �������� �ʵ��� Exit �̷��� ��ϵǹǷ� �������� Ʋ���� 2005.11.15 ����� �߰�  ����
         if
            ((trim(mdCautnt.sHivYn   [0]) = 'N') and
             //(trim(mdCautnt.sVdrlYn  [0]) = 'N') and  //����������.������(�輱��)���ο�û. KimDaeYong 2019-10-23
             (trim(mdCautnt.sHbsagYn [0]) = 'N') and
             (trim(mdCautnt.sHcvYn   [0]) = 'N') and
             //(trim(mdCautnt.sVmOthrYn[0]) = 'N') and -- 2011.10.05 Caution Change....
             (trim(mdCautnt.sRadCont [0]) = 'N') and
             (trim(mdCautnt.sPeniciln[0]) = 'N') and
             (trim(mdCautnt.sTbYn    [0]) = 'N') and
             (trim(mdCautnt.sDiffYn  [0]) = 'N') and
             (trim(mdCautnt.sFunYn   [0]) = 'N') and
             //(trim(mdCautnt.sHbcYn   [0]) = 'N') and  //����������.������(�輱��)���ο�û. KimDaeYong 2019-10-23
             (trim(mdCautnt.sHAVYn   [0]) = 'N') and
             (trim(mdCautnt.sRotaYn  [0]) = 'N') and    //��Ÿ���̷��� �߰�, KimDaeYong 2015-01-05
             (trim(mdCautnt.sSuduYn  [0]) = 'N') and    //���� �߰�, KimDaeYong 2015-01-07
             (trim(mdCautnt.sHongYn  [0]) = 'N') and    //ȫ�� �߰�, KimDaeYong 2015-01-07
             (trim(mdCautnt.sOhmYn   [0]) = 'N') and    //�� �߰�, KimDaeYong 2015-01-07
             (trim(mdCautnt.sEeeYn   [0]) = 'N') and    //�� �߰�, KimDaeYong 2015-01-07
             (trim(mdCautnt.sJangtiYn[0]) = 'N') and    //��ƼǪ�� �߰�, KimDaeYong 2015-01-07
             (trim(mdCautnt.sEeejilYn[0]) = 'N') and    //���ռ����� �߰�, KimDaeYong 2015-01-07
             (trim(mdCautnt.sNewfluYn[0]) = 'N') and    //�����÷� �߰�, KimDaeYong 2015-01-07
             (trim(mdCautnt.sPungYn  [0]) = 'N') and    //ǳ�� �߰�, KimDaeYong 2015-01-07
             (trim(mdCautnt.sInfluYn [0]) = 'N') and    //��Ǯ�翣�� �߰�, KimDaeYong 2015-01-07
             (trim(mdCautnt.sVmRemark[0]) = '')  and
             (trim(mdCautnt.sOtherRmk[0]) = '')  and
             //(trim(mdCautnt.sInform  [0]) = '')  and  //����������.������(�輱��)���ο�û. KimDaeYong 2019-10-23
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
         // ������ ��� �������� �ʵ��� Exit �̷��� ��ϵǹǷ� �������� Ʋ���� 2005.11.15 ����� �߰�  ��

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

// 39. ����ɻ翩�� Check
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
      sType1 := '1';     //��ȸ����: '1'=����ɻ籸��Check
      sType2 := PatNo;   //ȯ�ڹ�ȣ
      sType3 := AdmDate; //�Կ�����
      sType4 := '';      //�߰�����

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
         ShowMessage('�Կ�ȯ�������� �������� �ʽ��ϴ�');
         Exit;
      end;

      //0:�������,1:�������Ȯ��,2:�ɻ���,3:�ɻ�Ϸ�,4:��꼭���,5:�����,6:���/�����Ϸ�
      vStatus := mdWrkLst.sCode1[0];
      mdWrkLst.Free;
      if      vStatus = '2' then sMessage := '[����ɻ簡 ������]��'
      else if vStatus = '3' then sMessage := '[����ɻ簡 �Ϸ�]��'
      else if vStatus = '4' then sMessage := '[�����꼭�� ���]��'
      else if vStatus = '5' then sMessage := '[�����]��'
      else if vStatus = '6' then sMessage := '[���/���� �Ϸ�]��';
      if (vStatus >= '2') then
         ShowMessage('�� '+sMessage+' ȯ���̹Ƿ�, ��� ��ϵ� �Է�/������ �� �����ϴ�.'+#13#10+#13#10+
                     '   �Է�/������ �ʿ��� ���, ���� �ǷẸ����� �����Ͽ� �ɻ縶�� ��Ҹ� �ؾ��մϴ�.');
   finally
      Screen.Cursor := crDefault;
   end;

   Result := True;
end;

// 40. �Կ����� ȯ������ Check.
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
      sType1 := '3';     //��ȸ����: '3'=�Կ�ȯ�ڿ���
      sType2 := PatNo;   //ȯ�ڹ�ȣ
      sType3 := '';      //�߰�����
      sType4 := '';      //�߰�����

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

      vPatSect := mdWrkLst.sCode1[0];  //'I'=�Կ����� ȯ��

      mdWrkLst.Free;
   finally
      Screen.Cursor := crDefault;
   end;
   Result := True;
end;

// 41. ����Ÿ��Ʋ
function LocateTitle(sLocate:String):String;
var
   RowNo : integer;
begin
   // ���ϰ� �ʱ�ȭ
   Result := '';

   // LOG-IN�� LOCATE�� ������ ��ȸ�Ѵ�.
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

      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;

      md_HosName     := mdExCode.sHosName[0];        // ������
      md_HosAddress  := mdExCode.sHosAddress[0];     // �����ּ�
      md_HosTel      := mdExCode.sHosTel[0];         // ���� ��ȭ��ȣ
      md_HosDr       := mdExCode.sHosDr[0];          // ������
      md_HosFax      := mdExCode.sHosFax[0];         // ���� �ѽ���ȣ
      md_InsurId     := mdExCode.sInsurId[0];         // ����� ��ȣ

      mdExCode.Free;
      Result := md_HosName;
   finally
      Screen.Cursor := crDefault;
   end;
end;


// 42. �ǻ纰 �ӻ󿬱���ȣ List �������� (SDLABMST)
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

      //����Class Function Call (SDLABMST)
      RowNo := List_mdExcode.ListLabNo(MedDept, MedDr);

      // SYSTEM ERROR
      if RowNo = -1 then
      begin
         List_mdExcode.Free;
         ShowErrMsg;
         Exit;
      end;

      //Select�Ǽ� > 0�� ���
      if RowNo > 0 then
      begin
         //Select�� Data�� ComboBox�� Display
         CdCombo.Items.Add('');
         for i := 0 to RowNo - 1 do
             CdCombo.Items.Add( Trim(List_mdExcode.sLabNo[i])); //�ӻ󿬱���ȣ
         CdCombo.ItemIndex := 0;
      end;

      List_mdExcode.Free;
   finally
      screen.Cursor  :=  crDefault;
   end;
end;

// ȭ�鿡���� Commit �� Trunsaction ����
function BeginTRSC : Boolean;
begin

   //Result := txBegin(600);
   Result := txBegin(1200);  // 2013.1.18 �����ʿ��� time �� ������� ��� �ִ°����� ���� 2��� �÷���.

end;
// ȭ�鿡���� Commit �� Rollback
procedure AbortTRSC;
begin
   txAbort;
end;

// ȭ�鿡���� Commit �� Transaction ����(commit)
function EndTRSC : Boolean;
begin
   Result := txCommit;
end;
// Transaction ������ �˾Ƴ���.
// 1: Ʈ����ǻ���, 0: Ʈ����ǻ��°� �ƴ�, -1 : ����
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
   if Application.MessageBox('Excelȭ�Ϸ� �����Ͻðڽ��ϱ�?', 'Excel����', MB_OKCANCEL) <> IDOK then
      exit;
   if Disp = 1 then
   begin
      SaveD1 := TSaveDialog.Create(nil);
      SaveD1.InitialDir := 'C:\UniHIS';
      SaveD1.DefaultExt := 'xls';
      SaveD1.FileName := MainTitle;
      SaveD1.Filter := '����ȭ��(*.xls)|*.xls|Ms';
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
         showmessage('Excel�� ã���� �����ϴ�.');
         ExcelAP1.Disconnect;

         FreeAndNil(ExcelWS1);
         FreeAndNil(ExcelWB1);
         FreeAndNil(ExcelAP1);
         exit;
      end;

      with EXcelWS1 do
      begin
         // Ÿ��Ʋ
         range1 := range[cells.item[3,2],cells.item[ExcelGrid1.Colcount+5,
                                                    ExcelGrid2.Rowcount+
                                                    ExcelGrid1.RowCount+
                                                    ExcelGrid3.RowCount+
                                                    ExcelGrid4.RowCount+
                                                    27]];

         range1.Font.name := '����ü';
         Range1.Font.Size:=10;

         Cells.Item[1,3] := Title1;
         //Name := MainTitle;
         // ó�� Routine (grid�� ����)
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
      showmessage('Excelȭ�Ϸ� ����Ǿ����ϴ�.');
   end
   else
   begin
       try
          ExcelAP2 :=CreateOLEObject('Excel.Application');
          ExcelAP2.WorkBooks.add;
          ExcelAP2.WorkSheet.add;
          ExcelAP2.visible := true;
          // ó�� Routine (grid�� ����)
          // Ÿ��Ʋ
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
          ExcelAP2.Selection.Font.Name:='����ü';
          ExcelAP2.Selection.Font.Size:=10;
          ExcelAP2.selection.Columns.AutoFit;
          //ExcelAP2.Range['A1','A1'].select;

          //Sheet 2
          ExcelAP2.WorkSheet.add;

          // ó�� Routine (grid�� ����)
          // Ÿ��Ʋ
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
          ExcelAP2.Selection.Font.Name:='����ü';
          ExcelAP2.Selection.Font.Size:=10;
          ExcelAP2.selection.Columns.AutoFit;
          //ExcelAP2.Range['A1','A1'].select;

           //Sheet 3
          ExcelAP2.WorkSheet.add;
          ExcelAP2.visible := true;
          // ó�� Routine (grid�� ����)
          // Ÿ��Ʋ
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
          ExcelAP2.Selection.Font.Name:='����ü';
          ExcelAP2.Selection.Font.Size:=10;
          ExcelAP2.selection.Columns.AutoFit;
          ExcelAP2.Range['A1','A1'].select;

           //Sheet 4
          ExcelAP2.WorkSheet.add;
          ExcelAP2.visible := true;
          // ó�� Routine (grid�� ����)
          // Ÿ��Ʋ
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
          ExcelAP2.Selection.Font.Name:='����ü';
          ExcelAP2.Selection.Font.Size:=10;
          ExcelAP2.selection.Columns.AutoFit;
          ExcelAP2.Range['A1','A1'].select;

       except
          Screen.Cursor := crDefault;
          ExcelAP2.Quit;
          showmessage('Excel�� ã���� �����ϴ�.');
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

// 49. ���ڿ� ó������ KeyStr������ �߶� �������� Return.(���ڿ��� �տ��� ����)
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
// 50. String���� Ư�� ���ڿ��� �ٸ� ���ڿ��� ��ü
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

// 51. ����̽� ������
procedure KillFormShow;
var
   WinHandle: THandle;
begin
     WinHandle := FindWindow(nil, 'MOP400F1 ����̽� ��');
     while WinHandle > 0 do
     begin
       SendMessage(WinHandle, WM_CLOSE, 0, 0);
       WinHandle := FindWindow(nil,'MOP400F1 ����̽� ��');
     end;
end;

// 52. ó��� ������ ġ������ Display
function EditTeethInfo(teeUpRt,teeUpLt,teeDwLt,teeDwRt: String): String;
var
   i : Integer;
   sTeeth, sDesc : String;
begin
   Result := '';
   sDesc := '';

   //(1)��� (2)�»� (3)���� (4)����
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

// 53. Ƚ���� �⺻��� ����
// �ֻ��(B2)�� ����� ��� ���ϰ� �Ʒ�(53-1) ������ ������. qps(������). KimDaeYong 2017-04-25
function GetDefaultMethCd(OrdGrp,Cnt:String): String;
begin
   //(1)������
   if (OrdGrp = 'B1') then
   begin
      {if      Cnt = '1' then Result := 'BC'  //1ȸ (��ħ����30��)
      else if Cnt = '2' then Result := 'BP'  //2ȸ (��ħ,�������30��)
      else if Cnt = '3' then Result := 'TP'  //3ȸ (����30��)
      else if Cnt = '4' then Result := 'QP'  //4ȸ (����30��,��ħ��)
      else if Cnt = '5' then Result := 'PD5' //5ȸ (AM7,11,PM3,7,11)
      else if Cnt = '6' then Result := 'Q4'  //6ȸ (4�ð�����)
      else                   Result := 'PD'; //��Ÿ(�ǻ����ô��)}
      if      Cnt = '1' then Result := 'DPB'  //1ȸ (��ħ����30��)
      else if Cnt = '2' then Result := 'BID'  //2ȸ (��ħ,�������30��)
      else if Cnt = '3' then Result := 'TID'  //3ȸ (����30��)
      else if Cnt = '4' then Result := 'QID'  //4ȸ (����30��,��ħ��)
      else if Cnt = '5' then Result := 'P5'  //5ȸ (AM7,11,PM3,7,11)
      //else if Cnt = '6' then Result := '10Q2H'  //6ȸ (4�ð�����)
      else                   Result := 'SIG'; //��Ÿ(�ǻ����ô��)
   end
   // (2)�ֻ�� 2011.09.10 ����� QI �� ��û(������)
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
      if      Cnt = '1' then Result := 'SDPB'  //1ȸ (��ħ����30��)
      else if Cnt = '2' then Result := 'SBID'  //2ȸ (��ħ,�������30��)
      else if Cnt = '3' then Result := 'STID'  //3ȸ (����30��)
      else                   Result := 'SSIG'; //��Ÿ(�ǻ����ô��)
   end;
end;


// 53-1. Ƚ���� �⺻��� ����(�ֻ��(B2)). QPS(������). KimDaeYong 2017-04-25
// ����ڵ� ��2�ָ�(IV,IM,SC)�� ���� ���õ� ������� ��Ī��Ŵ. �౹�������� ����ڵ���� ������.
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

// 55. ���ϰ�������
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
      days[1] := '�Ͽ���';
      days[2] := '������';
      days[3] := 'ȭ����';
      days[4] := '������';
      days[5] := '�����';
      days[6] := '�ݿ���';
      days[7] := '�����';
   end
   else if Type1 = 'HS' then
   begin
      days[1] := '��';
      days[2] := '��';
      days[3] := 'ȭ';
      days[4] := '��';
      days[5] := '��';
      days[6] := '��';
      days[7] := '��';
   end;

   Result := days[DayOfWeek(ADate)];
end;
//56. ����ȯ�� ���ó������ Check (APOPDLST.OutDate)
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
      sType2 := PatNo;   //ȯ�ڹ�ȣ
      sType3 := '';      //�߰�����
      sType4 := '';      //�߰�����
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
         Showmessage('�ش� ȯ���� ������ �������� �ʽ��ϴ�.' + #13#10 + #13#10 +
                     '�ٽ� ��ȸ�Ͻʽÿ�.');
         Result := False;
         Er_mdWrkLst.Free;
         Exit;
      end;

      if Trim(Er_mdWrkLst.sCode1[0]) = '' then
         Result := True
      else
      begin
         Showmessage('�̹� ����ó���� �Ϸ�Ǿ� ó�������� �����Ͻ� �� �����ϴ�.'+#13#10+#13#10+
                     'ó�������� ��ȸ�� [ȯ��������ȸ]�� �̿��Ͽ� �ֽʽÿ�.'+#13#10+#13#10+
                     'ȯ���� ó�������� �����Ͻ÷��� �������� �����Ͽ�'+#13#10+#13#10+
                     '�ش�ȯ�ڸ� [�����������] �����ֽʽÿ�.');
         Result := False;
      end;

      Er_mdWrkLst.Free;
   finally
      Screen.Cursor := crDefault;
   end;
end;

///����ȣ��� ��������.........
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
      Locate := sLocate;      //�����
      Deptcd := sDeptCd;         //������

      //����Class Function Call
      RowNo := mdExCode.SelectHnName(Locate,Deptcd);

      //������ Messageó��, Exit
      if (RowNo = -1) then
      begin
         mdExCode.Free;
//         ShowErrMsg(stb_Message);
         Exit;
      end;

      //�ڷ�Ǽ�=0�ΰ��, Exit
      if (RowNo = 0) then
      begin
         mdExCode.Free;
         Exit;
      end;

      //Select�� Data�� ȭ�� Field�� Display.
      i := 0;
      result := mdExCode.sUsernm[i];                 //����ȣ���

      //Destroy Class
      mdExCode.Free;
   finally
      Screen.Cursor := crDefault;
   end;
end;

// 58.������ڵ� ��������2
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
      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdInsamt.Free;
         Exit;
      end;
      // ����� ó��
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdInsamt.sEmpNo[i]);
      end;
      // ����ڸ� ó��
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

//59. ���ǵ��

function GetWardGrade(CdCombo, NmCombo:TComboBox;sDeptCd:string):Integer;
var
   RowNo, i, j : integer;
begin
   // ���ϰ� �ʱ�ȭ
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
      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdEmptyt.Free;
         Exit;
      end;
      // �ڵ� ó��
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
      // �ڵ�� ó��
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

//(�߰�. 2003.03.04 �̿��)
// 40. �Կ����� ȯ������ Check.
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
      //sType1 := '3';     //��ȸ����: '3'=�Կ�ȯ�ڿ���
      sType1 := '4';     //��ȸ����: '4'=�Կ�/�ܷ�ȯ�ڿ���
      sType2 := PatNo;   //ȯ�ڹ�ȣ
      sType3 := '';      //�߰�����
      sType4 := '';      //�߰�����

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

         vPatSect := mdWrkLst.sCode1[0];  //'I'=�Կ����� ȯ��

         mdWrkLst.Free;
      end;
   finally
      Screen.Cursor := crDefault;
   end;
   Result := True;
end;

//(�߰�. 2003.04.04 �̿��) Excelsave New!
procedure ExcelSaveNew(sgd1: TStringGrid; Title, Tabname: String;
  isNewBook: Boolean);
var
    XL, XLBook, XArr : Variant;
//    sBookname : String;           // WorkBook ������ ���� ����
    str: String;
    row, coldata, colidx : Integer;
    colidxname: String;
begin

    try
      XL := GetActiveOLEObject('Excel.Application');  // ������ Excel instance �������̽��� �޴´�
    except
        on E : EOleSysError do begin
            if (isNewBook) then begin
                try
                    XL := CreateOLEObject('Excel.Application');          //������ ����
                except
                    //MessageDlg('Excel�� ��ġ�Ǿ� ���� �ʽ��ϴ�.', MtWarning, [mbok], 0);
                    ShowMessage('Excel�� ��ġ�Ǿ� ���� �ʽ��ϴ�.');
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
// WorkBook ����
//------------------------------------------------------------------------------
    if VarIsEmpty(XL) = False then begin
        if (isNewBook) then begin
            XLBook := XL.WorkBooks.Add;
        end
        else begin
            if (XL.WorkBooks.Count = 0) then begin
                ShowMessage('WorkBook �� �������� �ʽ��ϴ�.');
            end
            else if (XL.WorkBooks.Count = 1) then begin
                XLBook := XL.WorkBooks[1];
{           // �̹� ������ �������϶� WorkBook�� �����ϱ� ���� ���.
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
        ShowMessage('Excel�� ������ �� �����ϴ�.');
    end;



//------------------------------------------------------------------------------
// �� ����Ÿ�� Excel�� ������
//------------------------------------------------------------------------------
    try

    if VarIsEmpty(XLBook) then begin
        //ShowMessage('WorkBook �� ���õ��� �ʾҽ��ϴ�.');
    end
    else begin
        //ShowMessage(XLBook.name);
        try
            //����Ÿ ó������
            XArr   := VarArrayCreate([1, sgd1.ColCount], VarVariant);

            XL.Visible := False;
            //
            if not (isNewBook) then begin
                XLBook.WorkSheets.Add;
            end;

            if (Tabname = '') then begin
                ShowMessage('Tab name�� �Է��ϼ���.');
                Exit;
            end;
            // Tab name�� �ߺ��� check�ϴ� ��ƾ
            for colidx := 1 to XLBook.WorkSheets.Count do begin
                if (XLBook.WorkSheets[colidx].name = Tabname) then begin
                    ShowMessage('Tab �̸� �ߺ�');
                    Exit;
                end;
            end;
            XLBook.WorkSheets[1].Name := Tabname;

            // ù°�ٿ� ��Ÿ�� �����͵�...
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

            // �׸����� �� ����Ÿ ó��...
            for row := 0 to sgd1.RowCount - 1 do begin

                coldata := 1;                                            // Data Array
                for colidx := 0 to sgd1.ColCount -1 do begin       // �׸��忡 ���̴� �÷��� ����
                    XArr[coldata] := sgd1.Cells[colidx, row];
                    inc(coldata);
                end;

                Try                                                 //���� ���� �ִ´�.
                    //
                    if ((sgd1.colcount-1) div 26) > 0 then begin
                        colidxname := CHR(64 + sgd1.colcount div 26) + CHR(64 + (sgd1.colcount mod 26));
                    end
                    else begin
                        colidxname := CHR(64 + sgd1.colcount);
                    end;

                    XL.Range['A' + IntToStr(row+1), colidxname + IntToStr(row+1)].Value := XArr;
                except
                    //MessageDlg('Excel�� ���� ���� �Ǿ����ϴ�. ', MtWarning, [mbok], 0);
                    ShowMessage('Excel�� ���� ���� �Ǿ����ϴ�. ');
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
            //�� ũ�� ����
            XL.Range['A1', colidxname + IntToStr(row)].Select;
            XL.Selection.Columns.AutoFit;
            /// ���׸���
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
            // Ÿ��Ʋ�� �� ä���
            XL.Range['A1', colidxname + '1'].Select;
            XL.Selection.Interior.ColorIndex := 36;
            XL.Selection.Interior.Pattern := 1;             //xlSolid
            // Ʋ����
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

//(�߰�. 2003.04.07 �̿��) ȯ�ڱ⺻������ȸ New function
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
//ȯ�ں������� ��������(�Ǻ�����,�ֹι�ȣ)
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

// CD/MT ��ȣ ��������   KIM SJ 2005.11.01 Add
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

// ������ڵ� ��������(����������) ( CdCombo -> �ڵ尪�� ��� ComboBox
//                         NmCombo -> �ڵ���� ��� ComboBox
//                         return value -> ���� ����� code index value )
function GetImMedDept(sUserId, sMedDate : String;  CdCombo, NmCombo:TComboBox):Integer;
var
   RowNo, i, j : integer;
begin
   // ���ϰ� �ʱ�ȭ
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
      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         mdExCode.Free;
         Exit;
      end;
      // �ڵ� ó��
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
      // �ڵ�� ó��
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

//�����(����)
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
      // ��ȸ�Ǽ� ����
      if RowNo = 0 then
      begin
         CdCombo.Items.Clear;
         NmCombo.Items.Clear;
         mdInsamt.Free;
         Exit;
      end;
      // ����� ó��
      with CdCombo do
      begin
         Items.Clear;
         Items.add('');
         for i := 0 to RowNo - 1 do
             Items.add(mdInsamt.sEmpNo[i]);
      end;
      // ����ڸ� ó��
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
            ShowMessage('Excel Program�� PC�� ��ġ�Ǿ� �ùٸ��� �����Ǵ��� Ȯ���Ͻʽÿ�.');
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
            ShowMessage('Excel Program�� PC�� ��ġ�Ǿ� �ùٸ��� �����Ǵ��� Ȯ���Ͻʽÿ�.');
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

   // ȸ�ż� �ۼ����� üũ ����� 2006.11.28


function CheckReferRtnDate(Patno:String):Boolean;
var
   RowNo, RowNo2 : integer;
begin
   // ���ϰ� �ʱ�ȭ
   CheckReferRtnDate := False;
   Screen.Cursor := crHourglass;
   try
      //Create Class
      mdRefert := HmdRefert.Create;

      //����Class Function Call (�����Ƿ� List SELECT)
      //RowNo := mdRefert.PatRefer(PatNo,Locate);
      RowNo := mdRefert.ListRefer('2',PatNo,'','','','');

      //������ Messageó��, Exit
      if (RowNo = -1) then
      begin
         mdRefert.Free;
         ShowErrMsg;
         Exit;
      end;

      //�ڷ�Ǽ�=0�ΰ��, Exit
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

      RowNo := srAcpordt.SelectAcpordt(inPatno,inOrddate,'M');  //���ῡ�� M�ѱ�. KimDaeYong 2018-01-04

      //������ Messageó��, Exit
      if (RowNo = -1) then
      begin
         srAcpordt.Free;
         ShowErrMsg;
         Exit;
      end;

      //�ڷ�Ǽ�=0�ΰ��, Exit
      if (RowNo = 0) then
      begin
         srAcpordt.Free;
         Exit;
      end;

      vsMetfdt  := srAcpordt.sMetfdt[0];
      vsMetfnm  := srAcpordt.sMetfnm[0];
      vsCreatdt := srAcpordt.sCreatdt[0];
      vsCreat   := srAcpordt.sCreat[0];
      //���������ۿ�����. KimDaeYong 2017-11-17
      vsJoyngdt := srAcpordt.sOrddate[0];   //������ ����(sOrddate�� ���� �Ἥ)
      vsJoyngnm := srAcpordt.sOrdname[0];   //������ ����(sOrdname�� ���� �Ἥ)

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

// DNR Check(�����Ƿ�). KimDaeYong 2019-05-24
Function DnrSelect(Patno:String;Target:TControl):String;
var
   RowNo, i  : LongInt;
   sFlag : string;
begin
   Target.Visible := False;

   Screen.Cursor := crHourglass;
   try
      mdDnrrgt := HmdDnrrgt.Create;
      RowNo := mdDnrrgt.List1('A',PatNo,'','','','');    //ȯ�ں� �����Ƿ� ��Ͽ��� üũ

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

//����ȣ�� '-'�ֱ�. KimDaeYong 2020-06-17
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

//����üũ����Ʈ �ش� ����ó�濩�� üũ
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

      //������ Messageó��, Exit
      if (RowNo = -1) then
      begin
         mdMcomct.Free;
         ShowErrMsg;
         Exit;
      end;

      //�ڷ�Ǽ�=0�ΰ��, Exit
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
