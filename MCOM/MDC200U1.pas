unit MDC200U1;

interface

uses
  Windows,  Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs,  ComCtrls, StdCtrls, Buttons, Grids,    ExtCtrls, Mask,
  WinTypes, WinProcs, MPlayer, IniFiles; 
//  Quickrpt, ODET3020, MMSystem, clipbrd , WinSpool;//, Async32;
const c_System_Error = '의료정보실로 연락하시기 바랍니다';    
const c_Date_Format = ' yyyy-mm-dd';

//1.한줄 삭제후 저장않함
procedure DELETE(Sender: TObject;Row:Integer);     

//2.한줄만 빈상태로 바꾼다.
procedure Clear_One(Sender: TObject;Row:Integer);  

//3.새로운 라인을 추가한다.
function New_Record(Sender: TStringGrid;Check_Col,Ins_Row : Integer) :integer;

//4.전체를 지운다.
procedure Clear_Record(Sender:TStringGrid);        

//5.한줄을 없애고 내용을 저장
procedure Cut_Record(Sender:TStringGrid;var TEMP_REC:TStringList);

//6.한줄의 내용을 저장 
procedure Copy_Record(Sender:TStringGrid;var TEMP_REC:TStringList);

//7.저장된 내용을 화면에 뿌린다.
procedure Paste_Record(Sender:TStringGrid;var TEMP_REC:TStringList);

//8.폰트를 지정된 상태로 바꾼다.
procedure Font_Set(Sender:TObject;FontDialog:TFontDialog);

//9.엔테라 오류를 확인한다.
//procedure RPC_ERROR(rpc_name:string;rows:Integer);

//10.StringGrid의 제목을 Setting한다.
procedure ALLDrawCell(Sender:TObject;Col,Row:Integer;Rect:TRect;State:TGridDrawState);

//11.빈공간을 0으로 채운다.
function  MakeZeroStr(temp_int:integer;len:integer):string;

//12.stringgrid에 맨 끝에 추가
procedure Append_Record(Sender:TStringGrid;var TEMP_REC:TStringList);

//13.생년월일로 나이 계산하는 함수 
function Calc_Age(i_birthdate:String):String;

//16.MessageBox를 보인다.
function MyMessageBox(Text, Caption: string; Flags: Longint): Integer;

//18.ComboBox에서 입력된 값을 CHECK한다.
function ComboBoxExit(Sender: TObject) :Integer;

//19.숫자만 입력받는 Edit Contirol 에서 입력된 값을 CHECK한다.
procedure NumberKeyPress(Sender: TObject; var Key: Char;Int_YN: Boolean );

//20.
function PADDING(Source:String; tot_cnt:Integer; Padding_Char, Direction :Char) :String;

//21.레포트를 출력한다.
//procedure QPRT_FUNC(Sender: TQuickREP);

//22.날짜를 생성한다.
function  MakeDate(DateStr:String;mx,dx:Integer) :TDateTime;

//23.Column일부 제외하고 Copy
procedure Copy_Record_Skip(Sender:TStringGrid;SkipCol1,SkipCol2 :integer;var TEMP_REC:TStringList);

//24.Column 일부 제외하고 Cut
procedure Cut_Record_Skip(Sender:TStringGrid;SkipCol1,SkipCol2 :integer;var TEMP_REC:TStringList);

//25. '0'추가
function ZeroPadding(InStr:String) :String;

//26. 바코드프린터 연결 확인
//!!function  Check_DT300(ComPort :TComm) : Boolean ;

//27.조건에 맞는 환자의   진료과를 넘겨준다.
function ReturnDept:string;

//28.조건에 맞는 사용자의 진료과를 넘겨준다.
function ReturnUSDept:string;

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// XBL_Only
procedure Calc_Age_XBL(i_birthdate:String; var Year,Month,PatType : String);

procedure Check_Limit(i_HighVal,i_LowVal,i_NormalYN,i_RsltUnit,i_RsltType,i_RsltVal:string; 
                      var o_limit,o_rslt,o_status:String);

function  Max(Old_Val, New_Val :Integer) :Integer;

//98.10.17 병동별 일괄 출력(XBLFRE03) 추가하면서 
function  NorColName( SexAge: String ) : String;

procedure myAlram;
              
//!!procedure BARCODE_PRINT;
//!!procedure BarPrint2(SpcId:String;PatName: String;Patno: String;
//!!                    SpcName: String;Tube: String;Meddept: String;
//!!                    Ward: String;Part: String;SpcQty: String);
//!!procedure hangle_conv(var hangle: string);
//!!procedure WriteRawStringToPrinter(PrinterName:String; S:String);

///////////////////////////////////////////////////////
function  Is_Null_Record(Sender: TObject;Row:Integer):Boolean;

function  kcMonthDays(nMonth,nYear :Integer):Integer;

function  kclsLeapYear(nYear:Integer):Boolean;
///////////////////////////////////////////////////////
//강북 99.02.09
procedure FormClear(Form: TComponent);

procedure msseage_box(stb: TSTATUSBAR ; r_c: longint);

procedure PanelClear2(Panel: TPanel);

procedure SGClear (sg: TStringGrid; cnt: Integer);

procedure SGClear1(sg: TStringGrid);

procedure SGClear2(sg: TStringGrid; cnt: Integer);

function  GetTextWidth(Handle: HFont; str: String): Integer;

function  MakeSpace(Handle: HFont; Width: Integer): String;

function  AlignedText(Handle: HFont; sText: String; iWidth: Integer; taType: TAlignment): String;

function  StrToInt_NVL(sNumber: String): Integer;

function  strtofloat_NVL(sNumber: String): real;


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

//99-1 Grid 선택표시 toggle
procedure ToggleClick(Sender: TStringGrid; X, Y: Integer;CheckCol,ShowCol: Integer;ShowChar : String);

//99-2 Paste의 변형으로 특정Row아래로 값Paste
procedure Insert_Record(Ins_Idx:Integer ;Sender:TStringGrid ; var TEMP_REC:TStringList);

//99-3 Grid내의 Key Column이용 중복여부 확인
function  Dup_Check(Sender:TStringGrid; Check_Str : String; Check_Col : Integer) : Boolean;

//99-5 DateTimePicker 대신 MaskEdit 사용시 일자Check하여 유효하지 못한 일자는 Def_Str로 변경
procedure MaskEditExit(Sender: TMaskEdit; Def_Str:String);

//99-6 한 Record내의 특정 필드값을 변경한다.
procedure Update_Record(Sender:TStringGrid; Upd_Row,Upd_Col :Integer ; Upd_Text : String);

///99-9 코드명 조회시 대/소문자관리
function Get_Search_Name(i_Key : String ) : String;

//99-10용량 
function Get_QTY( v_qty : String ) :String;

//99-11 날짜 Format정리 
procedure SetDateTimeFormat;

//99-12 시스템 - Local 시간 동기화
procedure SetDateTime(sysdate :String);

//----------------------------------------------------------------------MCC001T1

function IsDate(sDate: String): Boolean;

function IsTime(sTime: String): Boolean;

//------ Data Type Check
function IsAlpha(tEdit: TCustomEdit; i: Integer): Boolean;

//Panel위에 쓰인 각각의 Component Color를 반전
procedure PanelColor(Panel: TPanel; cColor: TColor);

//Panel위에 쓰인 각각의 Component 사용여부를 반전
procedure PanelEnable(Panel: TPanel; bTag: Boolean);

//----- 숫자 3자리씩 ','를 붙인다
function NumDataToEdit(eData:String): String;

//----- 숫자의 ','를 null로 바꾼다.
function ReplaceChar(sData: String): String;

procedure qsortGrid(sGrid : TStringGrid; StartIdx, EndIdx, SortIdx : Integer);

procedure QuickSortGrid(sGrid : TStringGrid; StartIdx, EndIdx, SortIdx : Integer;Descending:Boolean);

//----- Button Click시 Message 처리(삭제, 취소등의 확인 작업)
function ButtonMessage(MessageNo: Integer): Integer;

//----- Button Click후 Message 처리
function StatusMessage(MessageNo: Integer): String;

function MakePatNo(sPatNo: String): String;

procedure groupClear(gr: TGroupBox);

procedure groupEnable(gr: TGroupBox; bTag: Boolean);

function  AddZero(sText : string; iLen : Integer; sType : String):String;

implementation

//99-12 시스템 - Local 시간 동기화
procedure SetDateTime(sysdate :String);
var  lpSystemTime :TSystemTime;
     lpTimeZone  : TTimeZoneInformation;
     wDateTime    :TDateTime;
     yy,mm,dd, hh,mi,ss,ms  :Word;       
begin
     yy := StrToInt(Copy(sysdate ,1,4));
     mm := StrToInt(Copy(sysdate ,5,2));
     dd := StrToInt(Copy(sysdate ,7,2));

     hh := StrToInt(Copy(sysdate ,9,2));
     mi := StrToInt(Copy(sysdate ,11,2));
     ss := StrToInt(Copy(sysdate ,13,2));

     wDateTime := EncodeDate(yy,mm,dd)+EncodeTime(hh,mi,ss,0);
     
     GetTimeZoneInformation(lpTimeZone);
     wDateTime := wDateTime + lpTimeZone.Bias/1440;

     DecodeDate(wDateTime,yy,mm,dd);
     DecodeTime(wDateTime,hh,mi,ss,ms);
   
     with  lpSystemTime do
     begin
          wYear       := yy;
          wMonth      := mm;
          wDay        := dd;
          wHour       := hh;
          wMinute     := mi;
          wSecond     := ss;
          wMilliSeconds := ms;
     end;
     SetSystemTime(lpSystemTime);
end;

//99-11 날짜 Format 정리
procedure SetDateTimeFormat;
var  
     DefaultLCID: LCID;
begin
     DefaultLCID     := GetThreadLocale;

     if DateSeparator   <> '-' then begin
        //SetLocaleInfo(DefaultLCID,LOCALE_SDATE,Pchar('-'));	
        DateSeparator := '-' ;
     end;
     
     if ShortDateFormat <>  'yyyy-MM-dd' then begin
        //SetLocaleInfo(DefaultLCID,LOCALE_SSHORTDATE,Pchar('yyyy-MM-dd' ));	
        ShortDateFormat :=  'yyyy-MM-dd' ;
     end;

     if LongDateFormat  <> 'yyyy''년'' M''월'' d''일''' then begin
        //SetLocaleInfo(DefaultLCID, LOCALE_SLONGDATE,Pchar('yyyy''년'' M''월'' d''일'''));	
        LongDateFormat := 'yyyy''년'' M''월'' d''일''';
     end;
     
     if TimeSeparator <> ':'   then begin
        //SetLocaleInfo(DefaultLCID, LOCALE_STIME, Pchar(':'));	
        TimeSeparator := ':';
     end;
     
     if TimeAMString <> '오전' then begin
        //SetLocaleInfo(DefaultLCID, LOCALE_S1159, Pchar('오전'));	
        TimeAMString := '오전' ;
     end;
           
     if TimePMString <> '오후' then begin
        //SetLocaleInfo(DefaultLCID, LOCALE_S2359, Pchar('오후'));	
        TimePMString := '오후';
     end;
     
     if GetLocaleStr(DefaultLCID, LOCALE_STIMEFORMAT, '') <> 'HH:mm:ss' then
     begin                                                     
          //SetLocaleInfo(DefaultLCID, LOCALE_STIMEFORMAT, Pchar('HH:mm:ss'));
          ShortTimeFormat := 'AMPM HH:mm';
          LongTimeFormat  := 'AMPM HH:mm:ss';
     end;
end;


//99-10용량 
function Get_QTY( v_qty : String ) :String;
begin
     if (Copy(v_qty,1,1)  =  '.' )then 
         result := '0'+ v_qty
     else
         result := v_qty;
end;             

//99-9                                                                                  어플리케이션의 중복실행 방지  
function Get_Search_Name(i_Key : String ) : String;
var  TempStr, RsltStr : String;
     i : integer;
begin                                 
     TempStr :=  i_Key ;
     
     RsltStr := UpperCase(TempStr[1]);
     for i := 2 to Length(TempStr) do
     begin
          if RsltStr[Length(RsltStr)] = ' ' then 
             RsltStr := RsltStr + UpperCase(TempStr[i])
          else
             RsltStr := RsltStr + TempStr[i];
     end;
     result := RsltStr;
end;

//99-6 한 Record내의 특정 필드값을 변경한다.
procedure Update_Record(Sender:TStringGrid; Upd_Row,Upd_Col :Integer ; Upd_Text : String);
var 
     i : Integer;
begin
     //유효범위내의 Column값을 변경하려는지 확인한다.
     if ( Upd_Col < 0 ) or  ( Upd_Col > Sender.ColCount - 1 ) then Exit;
     //대상 Row가 유효한지 Check
     for i := 0 to Sender.ColCount-1 do
         if Trim(Sender.Cells[i,Upd_Row]) <> '' then break;
     if  i = Sender.ColCount then exit;

     Sender.Cells[Upd_Col,Upd_Row] := Upd_Text;
end;

//99-5 DateTimePicker 대신 MaskEdit 사용시 일자Check하여 유효하지 못한 일자는 Def_Str로 변경
procedure  MaskEditExit(Sender: TMaskEdit; Def_Str:String);
var  
     yyyy,mm,dd : Integer;
     Input_Date : TDateTime;
begin
     if  ( Length (Trim(Sender.Text)) = 8) then // TMaskEdit(Sender).MaxLength ) then
     begin
          try 
             yyyy := StrToInt(Copy(Sender.Text,1,4));
             mm   := StrToInt(Copy(Sender.Text,5,2));
             dd   := StrToInt(Copy(Sender.Text,7,2));
             Input_Date := EncodeDate(yyyy,mm,dd);
             if ( Length (Trim(Def_Str)) = 8) then 
             begin
                  yyyy := StrToInt(Copy(Def_Str,1,4));
                  mm   := StrToInt(Copy(Def_Str,5,2));
                  dd   := StrToInt(Copy(Def_Str,7,2));
                  if  Input_Date < EncodeDate(yyyy,mm,dd) then
                      Sender.Text := Def_Str;
             end;                            
          except on EConvertError do
             Sender.Text := Def_Str;
          end;
     end
     else
     begin
          Sender.Text := Def_Str;
     end;
end;

//99-3 Grid내의 Key Column이용 중복여부 확인
function Dup_Check(Sender:TStringGrid; Check_Str : String; Check_Col : Integer) : Boolean;
var  
     i : integer;
begin
     for i := 0 to Sender.RowCount - 1 do
         if Sender.Cells[Check_Col,i] = Check_Str then Break;
         
     if  i < Sender.RowCount then result := True
                             else result := False;
end;

//99-2 Paste의 변형으로 특정Row아래로 값Paste
procedure Insert_Record(Ins_Idx:Integer ;Sender:TStringGrid ; var TEMP_REC:TStringList);
var  
     Shift_Row,i:integer;
begin
     //copy된 값이 있는지 확인한다.
     if TEMP_REC.count = 0 then exit;
     
     for i := 0 to TEMP_REC.count-1 do
         if trim(TEMP_REC[i]) <> '' then break;
         
     if  i = TEMP_REC.count then exit;

     //전체 Row수를 한개 늘린다.
     Sender.RowCount := Sender.RowCount + 1 ;
     // *** One Row Down  :Insert *** //
     for Shift_Row := Sender.RowCount - 1 downto Ins_Idx do
     begin
         for i := 0 to Sender.ColCount-1 do
             Sender.Cells[i,Shift_Row+1] := Sender.Cells[i,Shift_Row];
     end;

     // ** One Record Paste ** //
     for i := 0 to Sender.ColCount-1 do
         Sender.Cells[i,Ins_Idx] := TEMP_REC[i];
end;

//99-1 Grid 선택표시 toggle
procedure ToggleClick(Sender: TStringGrid; X, Y: Integer; CheckCol,ShowCol: Integer;ShowChar : String);
var 
     Col,Row :Integer;
begin
     Sender.MouseToCell(X, Y, Col, Row);
     
     if ( Col < 0 ) or ( Col > Sender.ColCount -1 ) or
        ( Row < 1 ) or ( Row > Sender.RowCount -1 ) then Exit;
     
     if Sender.Cells[CheckCol,Row]  <> '' then 
     begin
          if Sender.Cells[ShowCol,Row]  =  '' then
             Sender.Cells[ShowCol,Row]  := ShowChar   //; ☞★◆▶◈ □ ▣ △■      
          else 
             Sender.Cells[ShowCol,Row]  := '';
     end;
end;

function Is_Null_Record(Sender: TObject;Row:Integer):Boolean;
var  
     col : integer;
     Is_Null:Boolean;
begin
     Is_Null := True ;
     for col := 0 to TStringGrid(Sender).ColCount -1 do
         If TStringGrid(Sender).Cells[col,Row] <> '' then
             Is_Null := False ;
     result := Is_Null;
end;

function kclsLeapYear(nYear:Integer):Boolean;
begin
     Result := (nYear mod 4 = 0 ) and ( (nYear mod 100 <> 0) or (nYear mod 400 = 0) ) ;
end;

function kcMonthDays(nMonth,nYear :Integer):Integer;
const 
     DaysPerMonth : array[1..12] of Integer = (31,28,31,30,31,30,31,31,30,31,30,31);
begin
     Result := DaysPerMonth[nMonth];
     If (nMonth = 2) and kclsLeapYear(nYear) Then
         Inc(Result);
end;

//1.한줄 삭제후 저장않함
procedure DELETE(Sender: TObject;Row:Integer);
var 
     MV_Row,col:Integer;
begin
     if (TStringGrid(Sender).RowCount-1) =  TStringGrid(Sender).FixedRows  then
     begin
         Clear_One(Sender,Row);
         TStringGrid(Sender).Tag := 0;
         Exit;
     end
     else
     begin
         // *** One Row Up  :Delete *** //
         for MV_Row  := TStringGrid(Sender).Row to TStringGrid(Sender).RowCount-1 do
         begin
             for col := 0 to TStringGrid(Sender).ColCount-1  do
             TStringGrid(Sender).Cells[col,MV_Row] := TStringGrid(Sender).Cells[col,MV_Row+1];
         end;
         TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount - 1;
     end;
end;

//2.한줄만 빈상태로 바꾼다.
procedure Clear_One(Sender: TObject;Row:Integer);
var 
     col : integer;
begin
     for col := 0 to TStringGrid(Sender).ColCount -1 do
         TStringGrid(Sender).Cells[col,Row] := '';
end;

//3.Ins_Row아래에 새로운 라인을 추가한다.        
function New_Record(Sender: TStringGrid;Check_Col,Ins_Row : Integer) :integer;
var  
     Shift_Row,j:Integer;
begin
     //전체 record를 한개 늘린다.Ins_Row가 비어있지 않다면 Row수를 증가
     if Sender.Cells[Check_Col,Ins_Row] <> '' then
        Sender.RowCount := Sender.RowCount + 1 ;
     
     //
     if ( Sender.RowCount > 2 ) then
     begin
         // *** One Row Down  :Insert *** //
         for Shift_Row  := Sender.RowCount-2  downto  Ins_Row+1 do
         begin
              for j := 0 to Sender.ColCount-1  do
                  Sender.Cells[j,Shift_Row+1] := Sender.Cells[j,Shift_Row];
         end;
     end;
     
     // ** One Record Paste ** //
     for j := 0 to Sender.ColCount-1 do
         Sender.Cells[j,Ins_Row+1] := '';

     result := Ins_Row+1;
end;

//4.전체를 지운다.
procedure Clear_Record(Sender: TStringGrid);
var 
   u_row:Integer;
begin
   for u_row  := 0 to Sender.RowCount-1 do
       Sender.Rows[u_Row].Clear;
   Sender.RowCount := Sender.FixedRows + 1 ;
end;

//5.한줄을 없애고 내용을 저장
procedure Cut_Record(Sender: TStringGrid;var TEMP_REC:TStringList);
var 
     Selected_Row,Shift_Row,j:Integer;
begin
     Selected_Row := Sender.Row;
     
     if Selected_Row = 0 then exit;

     TEMP_REC.Clear;
     
     for j := 0 to Sender.ColCount-1 do
         TEMP_REC.Add( Sender.Cells[j,Selected_Row] );


     if Sender.RowCount = 2 then
     begin
         for j := 0 to Sender.ColCount-1 do
             Sender.Cells[j,1] := '';
         exit;
     end;

     for Shift_Row  := Selected_Row+1  to Sender.RowCount do
     begin
          for j := 0 to Sender.ColCount-1 do
              Sender.Cells[j,Shift_Row-1] := Sender.Cells[j,Shift_Row];
     end;
     
     Sender.RowCount := Sender.RowCount - 1 ;
end;

//6.한줄의 내용을 저장 
procedure Copy_Record(Sender:TStringGrid;var TEMP_REC:TStringList);
var 
     Selected_Row,j:Integer;
begin
     Selected_Row := Sender.Row;
     
     if Selected_Row = 0 then exit;

     TEMP_REC.Clear;

     for j := 0 to TStringGrid(Sender).ColCount-1 do
         TEMP_REC.Add( Sender.Cells[j,Selected_Row] );
end;

//7.저장된 내용을 화면에 뿌린다.
procedure Paste_Record(Sender:TStringGrid ; var TEMP_REC:TStringList);
var  
     Paste_IDX,Shift_Row,i:integer;
begin
     //copy된 값이 있는지 확인한다.
     if TEMP_REC.count = 0 then exit;
     //ShowMessage(IntToStr(TEMP_REC.count));

     //전체 Row수를 한개 늘린다.
     if Sender.Cells[1,Sender.Row] <> '' then
     begin
          Sender.RowCount := Sender.RowCount + 1 ;// Original
          Paste_IDX := Sender.Row+1;
     end     
     else
          Paste_IDX := Sender.Row;
       
     //Selected_RowNo := Sender.Row;
     //Selected_RowCt := Sender.RowCount;
     //Selected_ColCt := Sender.ColCount;

     // *** One Row Down  :Insert *** //
     for Shift_Row := Sender.RowCount - 1 downto  Paste_IDX do
     begin
          for i := 0 to Sender.ColCount - 1  do
              Sender.Cells[i,Shift_Row+1] :=  Sender.Cells[i,Shift_Row];
     end;
     
     // ** One Record Paste ** //
     for i := 0 to Sender.ColCount - 1 do
         Sender.Cells[i,Paste_IDX] := TEMP_REC[i];

     //Sender.Row := Sender.RowCount - 1 ;
     Sender.Row := Paste_IDX;
                  
{     /////////////////////////////////////////////////////////////////////
     //값이 존재하면서 맨위가 NULL값일때 NULL RECORD 제거
     //1.NULL이 아닌 위치를 찾는다.
     k := 0;
     for i := 1 to Selected_RowCt - 1 do
     begin
         k := k+1;
         if Sender.Cells[1,i] <> '' then  break;
     end;

     //2.for의 갯수를 구한다.
     count := Sender.RowCount - k;

     //3.맨위부터 채워넣는다.
     for p := 1  to count do
     begin
         for i := 0 to Sender.ColCount-1 do
             Sender.Cells[i,p] := Sender.Cells[i,k];
             k := k+1;
     end;

     //4.최종RowCount를 정한다.
     Sender.RowCount := count + 1;
     /////////////////////////////////////////////////////////////////////}
end;


//8.폰트를 지정된 상태로 바꾼다.
procedure Font_Set(Sender:TObject;FontDialog:TFontDialog); //Form Show시 호출되어 지정된 font style 적용
var 
     i :Integer;
begin
     for i := 0 to TForm(Sender).ComponentCount-1 do
     begin
          if (TForm(Sender).Components[i] is TEdit) then   //Forms, StdCtrls
             TEdit(TForm(Sender).Components[i]).Font := FontDialog.Font

          else if (TForm(Sender).Components[i] is TMaskEdit) then //Mask
             TMaskEdit(TForm(Sender).Components[i]).Font := FontDialog.Font

          else if (TForm(Sender).Components[i] is TStringGrid) then
             TStringGrid(TForm(Sender).Components[i]).Font := FontDialog.Font

          else if (TForm(Sender).Components[i] is TComboBox) then
             TComboBox(TForm(Sender).Components[i]).Font := FontDialog.Font;
     end;
end;

//9.엔테라 오류를 확인한다.
{procedure RPC_ERROR(rpc_name:string;rows:Integer);
var  msg :array [0..100] of char;
begin
    if (dce_error(msg) <> 0 )then
    begin
        MessageDlg('RPC ERROR('+rpc_name+')!! : '+msg + #13+ #13+
                    c_System_Error,
        mtInformation,[mbOk], 0);
        MessageBeep(30);
        Screen.Cursor := crDefault;
        exit;
    end;

    if rows < 0 then
    begin
        MessageDlg('DataBase Error('+rpc_name+') !!: '+IntToStr(rows)+ #13+ #13+
                    c_System_Error,
        mtInformation,[mbOk], 0);
        MessageBeep(30);
        Screen.Cursor := crDefault;
        exit;
    end;
end;
}

//10.StringGrid의 제목을 Setting한다.
procedure ALLDrawCell(Sender: TObject; Col, Row: Integer;  Rect: TRect; State: TGridDrawState);
var 
   StartPos_l,StartPos_t :Integer;
begin
     if Rect.Right > (Sender as TStringGrid).ClientWidth then
        Rect.Right := (Sender as TStringGrid).ClientWidth 
     else if ( Col = (Sender as TStringGrid).ColCount - 1 ) or
             ( (Sender as TStringGrid).ColWidths[Col + 1] < 1 ) then
        Rect.Right := (Sender as TStringGrid).ClientWidth;
             
     //   Rect.Right := Rect.Right ;
     (Sender as TStringGrid).ColWidths[Col] := Rect.Right - Rect.Left;
     
     if gdFixed in State then
     begin
          with (Sender as TStringGrid).Canvas do
          begin
               //if Row > 1 then
               
//               Font.Style := Font.Style +[fsBold];
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
               
               StartPos_l := Rect.Left +   +2;
               StartPos_t := Rect.Top + 2;
               TextOut(StartPos_l,StartPos_t,(Sender as TStringGrid).Cells[Col,Row]);
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


//11.빈공간을 0으로 채운다.
function MakeZeroStr(temp_int:integer;len:integer):string;
var
     i,k : integer;
     temp :string;
begin
     temp := '';
     k := length(IntToStr(temp_int));
     for i:=0 to len-k-1 do 
         temp := temp + '0';
     temp := temp + IntToStr(temp_int);
     result := temp;
end;


//12.저장된 내용을 화면에 뿌린다.
procedure Append_Record(Sender:TStringGrid ; var TEMP_REC:TStringList);
var  
     i:integer;
begin
     //copy된 값이 있는지 확인한다.
     if TEMP_REC.count = 0 then exit;

     //전체 Row수를 한개 늘린다.
     if not Is_Null_Record(Sender,TStringGrid(Sender).RowCount-1 ) then
        TStringGrid(Sender).RowCount := TStringGrid(Sender).RowCount + 1 ;

     TStringGrid(Sender).Row := TStringGrid(Sender).RowCount-1;
 
     // ** One Record Paste ** //
     for i := 0 to TStringGrid(Sender).ColCount-1 do
     begin
         TStringGrid(Sender).Cells[i,(TStringGrid(Sender).Row)] := TEMP_REC[i];
     end;
         
end;

//13.생년월일로 나이 계산하는 함수
{function Calc_Age(i_birthdate:String):String;
var Year,Month :Integer;
    v_Year,v_Month,v_Day: Word;
    i_Year,i_Month,i_Day: integer;
begin
     DecodeDate(Now, v_Year,v_Month, v_Day);
      
     i_Year  := StrToInt(Copy(i_birthdate,1,4));
     i_Month := StrToInt(Copy(i_birthdate,5,2));
     i_Day   := StrToInt(Copy(i_birthdate,7,2));

     Year := v_Year - i_Year;

     if ( i_Month > v_Month ) or
        ( ( i_Month = v_Month ) and ( i_Day > v_Day ) ) then 
     begin
         Dec(Year);         
         v_Month := v_Month + 12 ;
     end;
     
     if i_Day <= v_Day then Month := v_Month - i_Month 
     else                   Month := v_Month - i_Month - 1 ;
     
     Result := Format('%2s%-2s%2s%-4s', [IntToStr(Year),'년',IntToStr(Month),'개월']);
     
     if ( Year = 0 ) and ( Month = 0 ) then 
          Result := Format('%10s', [IntToStr( Trunc(EncodeDate(v_Year,v_Month, v_Day)) -Trunc(EncodeDate(i_Year,i_Month,i_Day)) ) + '일']);
end;    }

function Calc_Age(i_birthdate:String):String;
var  Year,Month,i_Year,i_Month,i_Day: integer;
     v_Year,v_Month,v_Day: Word;
//     s_Hosp_Gubn : String;
begin
     try
        DecodeDate(Now, v_Year,v_Month, v_Day);
         
        i_Year  := StrToInt(Copy(i_birthdate,1,4));
        i_Month := StrToInt(Copy(i_birthdate,5,2));
        i_Day   := StrToInt(Copy(i_birthdate,7,2));

        Year := v_Year - i_Year;

        if ( i_Month > v_Month ) or
           ( ( i_Month = v_Month ) and ( i_Day > v_Day ) ) then 
        begin
            Dec(Year);         
            v_Month := v_Month + 12 ;
        end;
     
        if i_Day <= v_Day then Month := v_Month - i_Month 
        else                   Month := v_Month - i_Month - 1 ;
     
        //!!if g_hsp_cl = ''  then s_Hosp_Gubn := g_hsp_cl_usr else s_Hosp_Gubn := g_hsp_cl;
     
        //!!if s_Hosp_Gubn = c_HOSP_ADLT then
        //!!    Result := Format('   %2s%-2s   ', [IntToStr(Year),'세'])
        //!!else
        //!!    Result := Format('%2s%-2s%2s%-4s', [IntToStr(Year),'세',IntToStr(Month),'개월']);
            
        // 3세이상은  '~세' 3세 미만은 '~세 ~개월' 1개월 미만은 '~일'
        if ( Year > 2 ) then 
            Result := Format(     '%2s%-2s       ', [IntToStr(Year),'세'])
        else
        begin
             if ( Year > 0 ) then 
                 //Result := Format('%2s%-2s%2s%-4s', [IntToStr(Year),'세',IntToStr(Month),'개월'])
                 Result := Format('%4s%2s%-4s', ['',IntToStr(Year*12+Month),'개월'])
             else if ( Year = 0 ) and ( Month = 0 ) then 
             begin
                 DecodeDate(Now, v_Year,v_Month, v_Day); // 00.01.01
                 Result := Format('%8s', [IntToStr( Trunc(EncodeDate(v_Year,v_Month, v_Day)) -
                                                    Trunc(EncodeDate(i_Year,i_Month,i_Day)) ) + '일'])
             end
             else
                 Result := Format('    %2s%-4s', [IntToStr(Month),'개월']);
        end;
     except on EConvertError do
        Result := '0';
     end;
end;    


function MyMessageBox(Text, Caption: string; Flags: Longint): Integer;
var  
     i_text,i_caption : Array[0..100] of char;
begin
     strpcopy(i_text,Text);
     strpcopy(i_caption,Caption);
     result := Application.MessageBox(i_text,i_caption,Flags);
end;

//18.ComboBox에서 입력된 값을 CHECK한다.
function ComboBoxExit(Sender: TObject) :Integer;
begin
     result := TComboBox(Sender).Items.IndexOf(TComboBox(Sender).Text);
     if (TComboBox(Sender).Items.IndexOf(TComboBox(Sender).Text) = -1 ) then
         TComboBox(Sender).Text := ''
     else
         TComboBox(Sender).ItemIndex := TComboBox(Sender).Items.IndexOf( TComboBox(Sender).Text ) ;
end;

//19.숫자만 입력받는 Edit Contirol 에서 입력된 값을 CHECK한다.
procedure NumberKeyPress(Sender: TObject; var Key: Char; Int_YN: Boolean );
begin
     if Int_YN  = True then
     begin
          if not ( (Key in ['0'..'9'])       or
                   (Key = Char(VK_ESCAPE))               or 
//                   (Key = '-')               or 
//                   (Key = Char(VK_RETURN))   or 
                   (Key = Char(VK_BACK)) ) then
             Key := #0;
//          try
//             if StrToInt(Key) = 0 then Key := #0; 
//          except on EConvertError do
//             Key := #0;
//          end;
     end
     else
     begin
          if not ( (Key in ['0'..'9'])       or
                   (Key = '.')               or 
//                   (Key = '-')               or 
//                   (Key = Char(VK_RETURN))   or 
                   (Key = Char(VK_BACK))     or 
                   (Key = Char(VK_DELETE)) ) then
          Key := #0;
//          try
//             if StrToFloat(Key) = 0 then Key := #0; 
//          except on EConvertError do
//             Key := #0;
//          end;
     end;
     {if ( Length(TEdit(Sender).Text) >= TEdit(Sender).MaxLength ) and
        ( not ( (Key = Char(VK_RETURN))   or 
                (Key = Char(VK_BACK)  )     or 
                (Key = Char(VK_DELETE)) )) then
        Key := #0;}
end;

//20.출력할 때 일정 길이의 String 만들어 쓰지, 뭐!
function PADDING(Source:String; tot_cnt:Integer; Padding_Char, Direction :Char) :String;
var  loop_cnt, i:Integer;
     temp:String;
begin
     temp := '';
     if tot_cnt <= Length(Source) then
        temp := Copy(Source,1,tot_cnt)
     else
     begin
         loop_cnt := tot_cnt - Length(Source);
         Case Direction of
              'L' :begin
                        for i := 1 to loop_cnt do
                            temp := temp +Padding_Char;
                        temp := temp +Source;
                   end;
              'R' :begin
                        temp := temp +Source;
                        for i := 1 to loop_cnt do
                            temp := temp +Padding_Char;
                   end;
              'C' :begin
                        for i := 1 to Trunc(loop_cnt/2) do
                            temp := temp +Padding_Char;
                        temp := temp +Source;
                        for i := Trunc(loop_cnt/2)+1 to loop_cnt do
                            temp := temp +Padding_Char;
                   end;
         end;
     end;
     result := temp;
end;

//21.레포트를 출력한다.
{procedure QPRT_FUNC(Sender: TQuickREP);
var ts_see : string;
    Ini :  TIniFile;
begin
    //Initial File을 읽어온다.
    Ini      := TIniFile.Create('c:\windows\wonmis.ini');
    ts_see   := Ini.ReadString('PRINT','PREVIEW','YES');
    Ini.Free;     
    
    //전처방보기 일 경우 화면에 처방을 보여준다.
    if ts_see = 'YES' then Sender.Preview
    else                   Sender.Print;

    //QREPORT를 MEMORY에서 지운다.
    Sender.Free;
end;
}

//22.날짜를 생성한다.
function  MakeDate(DateStr:String;mx,dx:Integer) :TDateTime;
var 
     yyyy,mm,dd :Word;
begin
     try 
        yyyy := StrToInt(Copy(DateStr,1,4));
        mm   := StrToInt(Copy(DateStr,mx,2));
        dd   := StrToInt(Copy(DateStr,dx,2));
        result := EncodeDate(yyyy,mm,dd);
     except on EConvertError do 
        //result := EncodeDate(2999,12,31);
        result := Date;    
     end;
end;


//23. 최대 2개의 Column을 제외하고 Copy.
procedure Copy_Record_Skip(Sender:TStringGrid;SkipCol1,SkipCol2 :integer;var TEMP_REC:TStringList);
var 
     Selected_Row,j:Integer;
begin
     Selected_Row := Sender.Row;
     
     if Selected_Row = 0 then exit;

     TEMP_REC.Clear;

     //ShowMessage(IntToStr(TStringGrid(Sender).ColCount));
     
     for j := 0 to TStringGrid(Sender).ColCount-1 do
         if (j <> SkipCol1) and (j <> SkipCol2) then 
            TEMP_REC.Add( Sender.Cells[j,Selected_Row] )
         else
            TEMP_REC.Add( '')  ;
end;

//24. 최대 2개의 Column을 제외하고 Cut.
procedure Cut_Record_Skip(Sender:TStringGrid;SkipCol1,SkipCol2 :integer;var TEMP_REC:TStringList);
var  
     Selected_Row,Shift_Row,j:Integer;
begin
     Selected_Row := Sender.Row;
     
     if Selected_Row = 0 then exit;

     TEMP_REC.Clear;
     
     for j := 0 to Sender.ColCount-1 do
         if (j <> SkipCol1) and (j <> SkipCol2) then 
            TEMP_REC.Add( Sender.Cells[j,Selected_Row] )
         else
            TEMP_REC.Add( '')  ;

     if Sender.RowCount = 2 then
     begin
         for j := 0 to Sender.ColCount-1 do
             Sender.Cells[j,1] := '';
         exit;
     end;

     for Shift_Row  := Selected_Row+1  to Sender.RowCount do
     begin
         for j := 0 to Sender.ColCount-1 do
             Sender.Cells[j,Shift_Row-1] := Sender.Cells[j,Shift_Row];
     end;
     
     Sender.RowCount := Sender.RowCount - 1 ;
end;

function ZeroPadding(InStr:String) :String;
begin
     if Copy(InStr,1,1) = '.' then    Result :='0'+ InStr
     else                             Result := InStr;
end;       

//생년월일로 나이 계산하는 함수
procedure Calc_Age_XBL(i_birthdate:String; var Year,Month,PatType : String);
var 
     yy,mm,i_Year,i_Month,i_Day: integer;
     v_Year,v_Month,v_Day: Word;
begin
     DecodeDate(Now, v_Year,v_Month, v_Day);
      
     i_Year  := StrToInt(Copy(i_birthdate,1,4));
     i_Month := StrToInt(Copy(i_birthdate,5,2));
     i_Day   := StrToInt(Copy(i_birthdate,7,2));

     yy := v_Year - i_Year;

     if ( i_Month > v_Month ) or
        ( ( i_Month = v_Month ) and ( i_Day > v_Day ) ) then 
     begin
         Dec(yy);         
         v_Month := v_Month + 12 ;
     end;
     
     if i_Day <= v_Day then mm := v_Month - i_Month 
     else                   mm := v_Month - i_Month - 1 ;

     Year  := IntToStr(yy);
     Month := IntToStr(mm);
     if yy < 14 then    PatType := 'C'
                else    PatType := '' ;
     
end;    

procedure Check_Limit(i_HighVal,i_LowVal,i_NormalYN,i_RsltUnit,i_RsltType,i_RsltVal:string; 
                      var o_limit,o_rslt,o_status:String);
var 
     rslt,high_val,low_val:string;
begin
     if  Copy(i_RsltVal,1,1) = '.' then rslt     := PADDING(i_RsltVal,Length(i_RsltVal)+1,'0','L')
                                   else rslt     := i_RsltVal;
     if  Copy(i_HighVal,1,1) = '.' then high_val := PADDING(i_HighVal,Length(i_HighVal)+1,'0','L')
                                   else high_val := i_HighVal;
     if  Copy(i_LowVal,1,1)  = '.' then low_val  := PADDING(i_LowVal,Length(i_LowVal)+1,'0','L')
                                   else low_val  := i_LowVal;

     if      i_NormalYN = 'H' then o_status :='▲' // ↑↓
     else if i_NormalYN = 'L' then o_status :='▼'
     else                          o_status :='';

     o_limit := Format('%12s %-1s %-12s %-10s', [low_val,'~',high_val,i_rsltunit]);
     o_rslt  := rslt;
end;

function Max(Old_Val, New_Val :Integer) :Integer;
begin
     if  Old_Val < New_Val then result := New_Val
                           else result := Old_Val;
end;

//남여소아구분
function NorColName( SexAge: String ) : String;
var
     agePos : integer;
     age    : String;
begin
     agePos := Pos('-', SexAge)-3;
     age := Copy(SexAge, 3, agePos);  // 나이부분만 Copy

     result := 'M';

     try
        // 남자인 경우
        if Copy(SexAge,1, 1) = 'M' then
        begin
             result := 'M';
             // 소아인 경우
             if StrToInt(age) < 14 then
                result := 'C';
        end
        // 여자인 경우
        else if Copy(SexAge,1, 1) = 'F' then
        begin
             result := 'F';
             if StrToInt(age) < 14 then
                result := 'C';
        end;
     except
        result := 'M';
     end;
end;

procedure myAlram;
var
     //delay , rate, highest, lowest : integer;
     freq: integer;
begin
     for freq := 0 to 20 do
         Messagebeep(MB_ICONEXCLAMATION);
end;

//!!procedure BARCODE_PRINT;
//!!var rt,i: integer;
//!!    abbr_rtn, qty_rtn, bar_rtn: integer;
//!!    o_spcid1: Variant;
//!!    o_spcid2: Variant;
//!!    o_sugacode: Variant;
//!!    o_meddept: Variant;
//!!    o_orddate: Variant;
//!!    o_spcqty: Variant;
//!!    o_rowid: Variant;
//!!    b_spcid: Variant;
//!!    b_examcode: Variant;
//!!    b_examabbr: Variant;
//!!    b_tubecode: Variant;
//!!    b_spcqty: Variant;
//!!    b_spcname: Variant;
//!!    b_meddept: Variant;
//!!    b_roomcode: Variant;
//!!    b_reqdept: Variant;
//!!    o_message: String;
//!!var Ini : TIniFile;
//!!begin
//!!    //////////////////////////////////////////////////////////////
//!!{    Ini      := TIniFile.Create('c:\windows\wonmis.ini');
//!!    BarPrinter_ini := Ini.ReadString('SLX','BARPRINTER','');
//!!    Ini.Free;     
//!!    if BarPrinter_ini = '' then
//!!    begin
//!!        ShowMessage('응급실에서 검사처방시 바코드출력이 필요한 경우'+chr(13)
//!!                    +chr(13)+'환경설정에서 바코드를 지정한후 '+chr(13)
//!!                    +chr(13)+'검사처방내림 Button을 다시 눌러주십시요.');
//!!        exit;    
//!!    end;    
//!!    //////////////////////////////////////////////////////////////
//!!   
//!!    // 검체번호생성(RPC CALL)
//!!    Screen.Cursor := crHourGlass;
//!!    res := slx_trs_make_spcno( 'N',MDOFMAIN.EditPATNO.Text,
//!! 	                            'E','BL1','BN1','Y',   
//!!                               FormatDateTime('yyyymmdd',Now)+'000000',
//!!                               FormatDateTime('yyyymmdd',Now)+'235959',
//!!	                            o_spcid1,  o_spcid2, o_sugacode, o_meddept,
//!!	                            o_orddate, o_spcqty, o_message);
//!!    if IsError(rt) then
//!!          showmessage(o_message)
//!!    else if res = 0 then
//!!          exit
//!!    else
//!!    begin 
//!!         // 정상적 검체번호 생성인 경우
//!!         for i := res-1 downto 0 do
//!!         begin
//!!              if i = 0 then break;
//!!
//!!              // 같은 검체번호이면
//!!              if CompareStr( VarToStr(o_spcid1[i]), VarToStr(o_spcid1[i-1])) = 0 then
//!!              begin
//!!                 o_spcqty[i-1] :=  IntToStr(StrToInt(VarToStr(o_spcqty[i-1]))
//!!                                   + StrToInt(VarToStr(o_spcqty[i])));
//!!
//!!                 // 동일 검체 채혈량 누적
//!!                 qty_rtn := slx_dta_spex_qty_update( VarToStr(o_spcqty[i-1]),
//!!                                                     VarToStr(o_spcid1[i-1]) );
//!!                 if qty_rtn < 0 then
//!!                    ShowMessage('체혈량 UPDATE 실패! Error NO: ' + IntToStr(qty_rtn));
//!!              end;
//!!         end;
//!!    end;
//!!
//!!    //바코드에 출력할 검체정보를 가져온다.
//!!    bar_rtn := slx_dta_bardata_select(MDOFMAIN.EditPATNO.Text,
//!!	            b_spcid,b_tubecode,b_spcqty,b_spcname,
//!!               b_meddept, b_roomcode, b_reqdept);
//!!
//!!    // 검체번호 해당 검사명 가져오는 루틴
//!!    for i := 0 to bar_rtn -1 do
//!!    abbr_rtn := slx_dta_bar_examabbr_select(b_spcid[i],b_examcode,b_examabbr);
//!!
//!!    ShowMessage('바코드를 출력합니다!');
//!!    for i := 0 to bar_rtn -1 do
//!!    begin
//!!        BarPrint2( b_spcid[i],MDOFMAIN.EditPATNAME.Text,
//!!                   MDOFMAIN.EditPATNO.Text,b_spcname[i],
//!!                   b_tubecode[i],b_meddept[i],b_reqdept[i],
//!!                   b_roomcode[i],b_spcqty[i]);
//!!    end;
//!!    Screen.Cursor := crDefault;
//!!    ShowMessage('바코드 출력이 완료되었습니다!');
//!!
//!!}
//!!end;
//!!
//!!procedure BarPrint2(SpcId:String;PatName: String;Patno: String;
//!!                    SpcName: String;Tube: String;Meddept: String;
//!!                    Ward: String;Part: String;SpcQty: String );
//!!var NameData,DeptInfo: string;
//!!var s_spcid1,s_spcId2,s_PatName:string;
//!!var s_PatNo,s_Deptdata,s_Part:string;
//!!var s_SpcName,s_Tube,s_SpcQty,s_Buff:string;
//!!begin
//!!    NameData := PatName;
//!!    DeptInfo := Meddept + '/' + Ward;
//!!    
//!!    hangle_conv(NameData);
//!!    hangle_conv(DeptInfo);
//!!
//!!    // 바코드
//!!    s_spcid1 := #27 + '%1' + #27 + 'H0510' + #27 + 'V0223' + 
//!!                #27 + 'B101060' +  '*' + SpcId + '*';
//!!    // 검체번호
//!!    s_spcId2 := #27 + '%0' +#27 + 'H0580' + #27 + 'V0050' + #27 + 'M'+ Spcid;
//!!    // 환자이름
//!!    s_PatName := #27 + '%0' +#27 + 'H0580' + #27 + 'V0070' + #27 +  NameData;
//!!    // 환자번호
//!!    s_PatNo  :=  #27 + '%0' +#27 + 'H0580' + #27 + 'V0090' + #27 + 'M'+ Patno;
//!!    s_Deptdata :=  #27 + '%0' +#27 + 'H0580' + #27 + 'V0110' + #27 + 'M'+ DeptInfo;
//!!    // 검사파트
//!!    s_Part := #27 + '%0' +#27 + 'H0580' + #27 + 'V0130' + #27 + 'M'+ Part;
//!!    // 검체이름
//!!    s_SpcName := #27 + '%0' +#27 + 'H0580' + #27 + 'V0150' + #27 + 'M'+ SpcName;
//!!    // 용기코드
//!!    s_Tube := #27 + '%0' +#27 + 'H0580' + #27 + 'V0170' + #27 + 'M'+ 'T:'+ Tube;
//!!    // 채혈량
//!!    s_SpcQty := #27 + '%0' +#27 + 'H0580' + #27 + 'V0190' + #27 + 'M'+ 'Q:' + SpcQty;
//!!    // 출력선택 필요
//!!    
//!!    // 프린트 시작
//!!    s_Buff := #27'A';
//!!
//!!    WriteRawStringToPrinter(BarPrinter_ini,  s_Buff);
//!!
//!!    // 검체 라벨 내용 출력
//!!    WriteRawStringToPrinter(BarPrinter_ini,s_spcid1);
//!!    WriteRawStringToPrinter(BarPrinter_ini,s_spcId2);
//!!    WriteRawStringToPrinter(BarPrinter_ini,s_PatName);
//!!    WriteRawStringToPrinter(BarPrinter_ini,s_PatNo);
//!!    WriteRawStringToPrinter(BarPrinter_ini,s_Deptdata);
//!!    WriteRawStringToPrinter(BarPrinter_ini,s_Part);
//!!    WriteRawStringToPrinter(BarPrinter_ini,s_SpcName);
//!!    WriteRawStringToPrinter(BarPrinter_ini,s_Tube);
//!!    WriteRawStringToPrinter(BarPrinter_ini,s_SpcQty);
//!!    WriteRawStringToPrinter(BarPrinter_ini,s_Buff);
//!!
//!!    // 한장 출력
//!!    s_Buff := #27'Q1';
//!!    WriteRawStringToPrinter(BarPrinter_ini,  s_Buff);
//!!
//!!    // 프린트 종료
//!!    s_Buff := #27'Z';
//!!    WriteRawStringToPrinter(BarPrinter_ini,  s_Buff);
//!!end;
//!!
//!!procedure hangle_conv(var hangle: string);
//!!var i: integer;
//!!    chr_cnt: integer;
//!!    esc, bar : Char;
//!!    pbar: string;
//!!    hangle11 : array[0..100] of Char;
//!!    cbar: string;
//!!begin
//!!    strpcopy(hangle11,hangle);
//!!    chr_cnt := length(hangle);
//!!    i := 0;
//!!    while i < chr_cnt  do
//!!    begin
//!!       bar := hangle11[i];
//!!
//!!       if (bar > #128) then
//!!       begin
//!!          inc(i);      // 명조: K2H  고딕: K1H
//!!          cbar := 'K2H' + Format('%02x', [ord(bar) - 128]) + 
//!!                  Format('%02x', [ord(hangle11[i])-128] );
//!!       end
//!!       else
//!!          cbar := Format('M%s', [bar]);
//!!
//!!       pbar := pbar + cbar;
//!!       inc(i);
//!!    end;
//!!    hangle := pbar;
//!!end;
//!!
//!!
//!!procedure WriteRawStringToPrinter(PrinterName:String; S:String);
//!!var
//!!   Handle:  integer; // THandle;
//!!   N: integer;  // double word
//!!   DocInfo1: TDocInfo1;
//!!begin
//!!   if not OpenPrinter(PChar(PrinterName), Handle, nil) then
//!!   begin
//!!      ShowMessage('error ' + IntToStr(GetLastError));
//!!      Exit;
//!!   end;
//!!
//!!   with DocInfo1 do
//!!   begin
//!!     pDocName := PChar('test doc');
//!!     pOutputFile := nil;
//!!     pDataType := 'RAW';
//!!   end;
//!!
//!!   StartDocPrinter(Handle, 1, @DocInfo1);
//!!   StartPagePrinter(Handle);
//!!   WritePrinter(Handle, PChar(S), Length(S), N);
//!!   EndPagePrinter(Handle);
//!!   EndDocPrinter(Handle);
//!!   ClosePrinter(Handle);
//!!end;
//!!
//!!function  Check_DT300(ComPort :TComm) : Boolean ;
//!!begin
//!!     result :=   False;
//!!     
//!!     ComPort.DeviceName := 'COM2' ;                            // COMPORT := cpCOM2;
//!!     try                                                     //COM PORT와 연결
//!!        ComPort.Open;                                          //if SerialPort1.OpenPort(cpCOM2) then
//!!     except                                                  //else begin
//!!        on E: ECommError do                                  //     showmessage('Couldn''t open port');
//!!          showmessage('바코드 연결에 이상있습니다. 전산정보팀으로 연락하십시요.');       //     exit;
//!!     end; 
//!!                                                        //end;
//!!     ComPort.SetDTRState(True);
//!!     ComPort.SetRTSState(true);
//!!     
//!!     result :=  ComPort.DSR ;
//!!
//!!     ComPort.Close;
//!!end;


function ReturnDept:string;
begin    
{    if (MDOFMAIN.LabelMEDDEPT_APOE.Caption = 'PB1') or
       (MDOFMAIN.LabelMEDDEPT_APOE.Caption = 'PB2') then
       result := 'PB1'
    else if (MDOFMAIN.LabelMEDDEPT_APOE.Caption = 'GYN') or
       (MDOFMAIN.LabelMEDDEPT_APOE.Caption = 'OBS') then
       result := 'GYN'
    else 
       result := MDOFMAIN.LabelMEDDEPT_APOE.Caption;
    
    if length(MDOFMAIN.ComboBoxORDSITE.Text) > 3 then
    result := copy(MDOFMAIN.ComboBoxORDSITE.Text,1,3);
}
end;

function ReturnUSDept:string;
begin    
{    if (MDOFMAIN.LabelMEDDEPT_USER.Caption = 'PB1') or
       (MDOFMAIN.LabelMEDDEPT_USER.Caption = 'PB2') then
       result := 'PB1'
    else if (MDOFMAIN.LabelMEDDEPT_USER.Caption = 'GYN') or
       (MDOFMAIN.LabelMEDDEPT_USER.Caption = 'OBS') then
       result := 'GYN'
    else 
       result := MDOFMAIN.LabelMEDDEPT_USER.Caption;
    
    if length(MDOFMAIN.ComboBoxORDSITE.Text) > 3 then
    result := copy(MDOFMAIN.ComboBoxORDSITE.Text,1,3);
}
end;
    
// 이부분은 form의 내용을 clear시키는 부분
procedure FormClear(Form: TComponent);
var
     i: Integer;
begin
     for i := 0 to Form.ComponentCount - 1 do
     begin
          if Form.Components[i].ClassType = TEdit then
             TEdit(Form.Components[i]).Text := ''
          else if Form.Components[i].ClassType = TMaskEdit then
             TMaskEdit(Form.Components[i]).Text := ''
          else if (Form.Components[i].ClassType = TPanel) and
                ((TPanel(Form.Components[i]).BevelInner = bvLowered) or
                (TPanel(Form.Components[i]).BevelOuter = bvLowered)) then
             TPanel(Form.Components[i]).Caption := ''
          else if Form.Components[i].ClassType = TRadioGroup then
             TRadioGroup(Form.Components[i]).itemindex := - 1
          else if Form.Components[i].Classtype = TMemo then
             TMemo(Form.Components[i]).text := ''
          else if Form.Components[i].Classtype = TCombobox then
             TCombobox(Form.Components[i]).Itemindex := -1
          else if Form.Components[i].Classtype = TRichEdit then
             TRichEdit(Form.Components[i]).text := '';
     end;
end;

procedure msseage_box(stb: TSTATUSBAR; r_c : longint);
begin
     if (r_c = 0) then
         stb.SimpleText := '해당하는 데이타가 없습니다!!'
     else
         if r_c < 0 then
            stb.SimpleText := 'ORACLE ERROR!!'+' ' + inttostr(r_c*(-1))
         else
            stb.SimpleText := inttostr(r_c) + ' 건 조회되었습니다';
end;

// 이부분은 panel의 내용들중 모든 component의 내용을 clear시킴
procedure PanelClear2(panel: TPanel);
var
     i: Integer;
begin
     for i := 0 to Panel.ControlCount - 1 do
     begin
          if Panel.Controls[i].ClassType = TEdit then
             TEdit(Panel.Controls[i]).Text := ''
          else if Panel.Controls[i].ClassType = TMaskEdit then
             TMaskEdit(Panel.Controls[i]).Text := ''
          else if (Panel.Controls[i].ClassType = TPanel) and
                (TPanel(Panel.Controls[i]).BevelInner = bvLowered) or
                (TPanel(Panel.Controls[i]).BevelOuter = bvLowered) then
             TPanel(Panel.Controls[i]).Caption := ''
          else if Panel.Controls[i].ClassType = TRadioGroup then
             TRadioGroup(Panel.Controls[i]).itemindex := - 1
          else if Panel.Controls[i].Classtype = TMemo then
             TMemo(Panel.Controls[i]).text := ''
          else if Panel.Controls[i].Classtype = TCombobox then
             TCombobox(Panel.Controls[i]).Itemindex := -1
          else if Panel.Controls[i].Classtype = Tcheckbox then
             TCheckbox(Panel.Controls[i]).checked := false
          else if Panel.Controls[i].Classtype = Trichedit then
             TRichedit(Panel.Controls[i]).Text := '';
     end;
end;
    

// 이부분은 stringgrid를 clear 시키는 procedure이다.
procedure SGClear(sg: TStringGrid; cnt: Integer);
var
     i,j : integer;
begin
     sg.RowCount := 2;
     for i:= 1 to cnt do
        for j := 0 to sg.ColCount - 1 do
           sg.cells[j,i] := '';
end;

procedure SGClear1(sg: TStringGrid);
var
     i,j : integer;
begin
     for i:= 0 to sg.RowCount - 1 do
         for j := 0 to sg.ColCount - 1 do
             sg.cells[j,i] := '';
     sg.RowCount := 1;
end;

procedure SGClear2(sg: TStringGrid; cnt: Integer);
var
     i,j : integer;
begin
     sg.RowCount := 2;
     for i:= 1 to sg.RowCount - 1  do
         for j := 0 to cnt do
             sg.cells[j,i] := '';
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


function AlignedText(Handle: HFont; sText: String; iWidth: Integer; taType: TAlignment): String;
begin
     sText := Trim(sText);

     case taType of
          taLeftJustify  : Result := sText;
          taCenter       : Result := MakeSpace(Handle, (iWidth - GetTextWidth(Handle, sText)) div 2) + sText;
          taRightJustify : Result := MakeSpace(Handle, iWidth - GetTextWidth(Handle, sText)) + sText;
     end;
end;

function StrToInt_NVL(sNumber: String): Integer;
begin
     if Trim(sNumber) = '' then
        Result := 0
     else
        Result := StrToInt(Trim(sNumber));
end;

function strtofloat_NVL(sNumber: String): real;
begin
     if Trim(sNumber) = '' then
        Result := 0
     else
        Result := StrTofloat(Trim(sNumber));
end;

//------ 날짜의 정당성 여부 Check
function IsDate(sDate: String): Boolean;
begin
     try
   	  if Length(sDate) = 8 then
	        sDate := Copy(sDate,1,4) + '-' + Copy(sDate,5,2) + '-' + Copy(sDate,7,2);
        StrToDate(sDate);
        Result := True;
     except on EConvertError do
        Result := False;
     end;
end;

//------ 시간의 정당성 여부 Check
function IsTime(sTime: String): Boolean;
begin
     Result := False;

     if (Length(Trim(sTime)) = 4) or (Length(Trim(sTime)) = 5) then
     begin
          if Length(sTime) = 4 then
             sTime := Copy(sTime,1,2) + ':' + Copy(sTime,3,2);
          try
             StrToTime(sTime);
             Result := True;
          except on EConvertError do
             Result := False;
          end;
     end
     else
          Result := False;;
end;

//------ Data Type Check
function IsAlpha(tEdit: TCustomEdit; i: Integer): Boolean;
const
     Alpha = ['A'..'Z', 'a'..'z'];
begin
     Result := True;

     if not(tEdit.Text[i] in Alpha) then
     begin
          MessageDlg ('Date Type이 맞지 않습니다. 지정한 위치의 Data가 문자인지 확인하십시오요 !',mtWarning,[mbOk], 0);
          tEdit.SelStart  := i - 1;
          tEdit.SelLength := 1;
          Result := False;
     end;
end;

//Panel위에 쓰인 각각의 Component Color를 반전
procedure PanelColor(Panel: TPanel; cColor: TColor);
var
     i: Integer;
begin
     for i := 0 to Panel.ControlCount - 1 do
     begin
          if Panel.Controls[i].ClassType = TEdit then
             TEdit(Panel.Controls[i]).Color := cColor
          else if Panel.Controls[i].ClassType = TMaskEdit then
             TMaskEdit(Panel.Controls[i]).Color := cColor
//!!          else if Panel.Controls[i].ClassType = TNumEdit then
//!!             TNumEdit(Panel.Controls[i]).Color := cColor
          else if Panel.Controls[i].ClassType = TMemo then
             TMemo(Panel.Controls[i]).Color := cColor
          else if Panel.Controls[i].ClassType = TRichEdit then
             TRichEdit(Panel.Controls[i]).Color := cColor
          else if Panel.Controls[i].ClassType = TComboBox then
             TComboBox(Panel.Controls[i]).Color := cColor;
     end;
end;

//Panel위에 쓰인 각각의 Component 사용여부를 반전
procedure PanelEnable(Panel: TPanel; bTag: Boolean);
var
     i: Integer;
begin
     for i := 0 to Panel.ControlCount - 1 do
     begin
          if Panel.Controls[i].ClassType = TEdit then
             TEdit(Panel.Controls[i]).Enabled := bTag
          else if Panel.Controls[i].ClassType = TMaskEdit then
             TMaskEdit(Panel.Controls[i]).Enabled := bTag
//!!          else if Panel.Controls[i].ClassType = TNumEdit then
//!!             TNumEdit(Panel.Controls[i]).Enabled := bTag
          else if Panel.Controls[i].ClassType = TMemo then
             TMemo(Panel.Controls[i]).Enabled := bTag
          else if Panel.Controls[i].ClassType = TRichEdit then
             TRichEdit(Panel.Controls[i]).Enabled := bTag
          else if Panel.Controls[i].ClassType = TComboBox then
             TComboBox(Panel.Controls[i]).Enabled := bTag
          else if Panel.Controls[i].ClassType = TRadioButton then
             TRadioButton(Panel.Controls[i]).Enabled := bTag
          else if Panel.Controls[i].ClassType = TCheckBox then
             TCheckBox(Panel.Controls[i]).Enabled := bTag
          else if Panel.Controls[i].ClassType = TBitBtn then
             TBitBtn(Panel.Controls[i]).Enabled := bTag;
     end;
end;


//----- 숫자 3자리씩 ','를 붙인다
function NumDataToEdit(eData:String): String;
var
     Dt1,Dt2,Dt3:  string ;
     i,Ln,Idx:     integer;
begin
     if trim(eData) = '' then
     begin
          Result := '0';
          exit;
     end;

     i   := 1;
     Dt1 := '';
     Dt2 := '';
     Dt3 := '';

     while i < length(eData) + 1 do
     begin
          if copy(eData,i,1) = '.' then
             break;

          dt3 := dt3 + copy(eData,i,1);
          i   := i   + 1;
     end;

     i   := 1;
     Idx := length(Dt3);
     while i < length(Dt3) + 1 do
     begin
          Ln := i mod 3;
          dt1 := copy(Dt3,Idx,1);
          if Ln = 0 then
          begin
               if (Idx-1 = 0) then
                   Dt2 := Dt1 + Dt2
               else if copy(Dt3,idx-1,1) = '-' then
                   Dt2 := Dt1 + Dt2
               else 
                   Dt2 := ',' + Dt1 + Dt2;
          end
          else 
               Dt2 := Dt1 + Dt2;

          i   := i   + 1;
          Idx := Idx - 1;
     end;
     Result := Dt2;
end;

//----- 숫자의 ','를 null로 바꾼다.
function ReplaceChar(sData: String): String;
var
     sStr : string;
     i,str_len: integer;
begin
     if trim(sData) = '' then
        Result := '0'
     else
     begin
          i := 1;
          str_len := length(sData) + 1;
          while i < str_len   do
          begin
             if copy(sData,i,1) <> ',' then
                sStr := sStr + copy(sData,i,1);
             i := i + 1;
          end;
          result := sStr;
     end;
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

procedure QuickSortGrid(sGrid : TStringGrid; StartIdx, EndIdx, SortIdx : Integer;Descending:Boolean);
var
      j : Word;
      sortGrid, tempGrid : TStringGrid;
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
         except on EConvertError do begin
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
     tempGrid.Free
end;

//----- Button Click시 Message 처리(삭제, 취소등의 확인 작업)
function ButtonMessage(MessageNo: Integer): Integer;
begin
	  case MessageNo of
          01 :  Result := MessageDlg('삭제하시겠습니까?',
                                 mtConfirmation, [mbYes, mbNo], 0);
          02 :  Result := MessageDlg('변경된 내용을 저장하고 종료하시겟습니까?',
                                 mtConfirmation, mbYesNoCancel,0);
     end;
end;

//----- Button Click후 Message 처리
function StatusMessage(MessageNo: Integer): String;
begin
	  case MessageNo of
          01 :  Result := '등록되었습니다 !';
          02 :  Result := '수정되었습니다 !';
          03 :  Result := '삭제되었습니다 !';
          04 :  Result := '수정된 내용이 없습니다 !';
     end;
end;

function MakePatNo(sPatNo: String): String;
begin
	  Result := FormatFloat('00000000', StrToInt(sPatNo));
end;

procedure groupClear(gr: TGroupBox);
var
     i: Integer;
begin
     for i := 0 to gr.ControlCount - 1 do
     begin
          if gr.Controls[i].ClassType = TEdit then
             TEdit(gr.Controls[i]).Text := ''
          else if gr.Controls[i].ClassType = TMaskEdit then
             TMaskEdit(gr.Controls[i]).Text := ''
          else if (gr.Controls[i].ClassType = TPanel) and
                (TPanel(gr.Controls[i]).Color = $00DADADA) then
             TPanel(gr.Controls[i]).Caption := ''
          else if gr.Controls[i].ClassType = TMemo then
             TMemo(gr.Controls[i]).Text := ''
          else if gr.Controls[i].ClassType = TRichEdit then
             TRichEdit(gr.Controls[i]).Text := ''
          else if gr.Controls[i].ClassType = TCheckBox then
             TCheckBox(gr.Controls[i]).Checked := False
          else if gr.Controls[i].ClassType = TRadioButton then
             TRadioButton(gr.Controls[i]).Checked := False;
     end;
end;

procedure groupEnable(gr: TGroupBox; bTag: Boolean);
var
     i: Integer;
begin
     for i := 0 to gr.ControlCount - 1 do
     begin
          if gr.Controls[i].ClassType = TEdit then
             TEdit(gr.Controls[i]).Enabled := bTag
          else if gr.Controls[i].ClassType = TMaskEdit then
             TMaskEdit(gr.Controls[i]).Enabled := bTag
          else if gr.Controls[i].ClassType = TMemo then
             TMemo(gr.Controls[i]).Enabled := bTag
          else if gr.Controls[i].ClassType = TRichEdit then
             TRichEdit(gr.Controls[i]).Enabled := bTag
          else if gr.Controls[i].ClassType = TComboBox then
             TComboBox(gr.Controls[i]).Enabled := bTag
          else if gr.Controls[i].ClassType = TRadioButton then
             TRadioButton(gr.Controls[i]).Enabled := bTag
          else if gr.Controls[i].ClassType = TCheckBox then
             TCheckBox(gr.Controls[i]).Enabled := bTag
          else if gr.Controls[i].ClassType = TBitBtn then
             TBitBtn(gr.Controls[i]).Enabled := bTag;
     end;
end;

function  AddZero(sText : string; iLen : Integer; sType : String):String;
var
     i, iRealLen : Integer;
begin
     iRealLen := Length(sText);
     if iRealLen < iLen then
        for i := 0 to iLen-iRealLen-1 do
        begin
             if sType = 'S' then 
                sText := sText + ' '
             else if sType = 'I' then  
                sText := '0' + sText;
        end;
     result := sText;
end;


end.

{ 특정 Column의 전체 값이 동일할 경우는 quicksort Call 하지 않는 logic 추가
procedure QuickSortGrid(sGrid : TStringGrid; StartIdx, EndIdx, SortIdx : Integer;Descending:Boolean);
var
   j ,te: Word;
   sortGrid, tempGrid : TStringGrid;
   b_CHG_YN : Boolean;
   s_TMP_STR : String;
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
   b_CHG_YN  := False;
   s_TMP_STR    := '';
   
   sortGrid := TStringGrid.Create(nil);
   sortGrid.RowCount := sGrid.RowCount;
   sortGrid.ColCount := 2;
   for j := StartIdx to EndIdx do
      begin
      sortGrid.Cells[0, j] := IntToStr(j);
      sortGrid.Cells[1, j] := sGrid.Cells[SortIdx, j];
      if ( j > StartIdx )  then
      begin
           if ( sGrid.Cells[SortIdx, j-1] <> sGrid.Cells[SortIdx, j] ) then 
           begin
                s_TMP_STR    := sGrid.Cells[SortIdx, j] ;
                b_CHG_YN     := True;
           end;
      end;
      end;
   if not b_CHG_YN then Exit;
   
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
   tempGrid.Free
end;
}