unit HSCOMMON;

interface

uses
  Windows,  Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs,  ComCtrls, StdCtrls, Grids, Printers, Imm;

//##############################################################################
procedure Delete(Sender:TStringGrid);
          //1.StringGrid 한줄 삭제후 위로 땡기기
procedure DeleteRow(Sender:TStringGrid;RowNo:Integer);
          //1-1.StringGrid RowNo Row삭제후 위로 땡기기
procedure InsertRow(Sender:TStringGrid;RowNo:Integer);
          //1-2.StringGrid RowNo 다음에 한줄 삽입
procedure ClearOne(Sender:TStringGrid; Row:Integer);
          //2.StringGrid 한줄만 빈상태로 바꾼다.
procedure ClearRecord(Sender:TStringGrid);
          //3.StringGrid 전체를 지우고 RowCount를 1로
procedure ClearGrid(Sender:TStringGrid);
          //4.StringGrid 전체를 지운다.
function  RemoveLFCR(Str:String):String;
          //5.Line Feed와 Carrage Return 문자를 String에서 제거한다.
procedure HeaderResize(var hc:THeaderControl; var sg:TStringGrid; Cols:Integer);
          //6.HeaderControl과 StringGrid의 Column Size를 조정한다.
procedure AlignCellByHdCtrl(Col,Row:Integer; var Rect:TRect; var hc:THeaderControl;
            var sg:TStringGrid);
          //7. 헤더콘트롤로 Grid Cell 좌우 정렬
procedure SetDateTimeNow;
          //8.Server Sysdate로 pc 시간을 맞춘다.       {공사중} 
function  ConvertLDate(DStr:String):String;
          //9.yyyymmdd hh24miss를 yyyy-mm-dd hh24:mi:ss로 변환
function  ConvertMDate(DStr:String):String;
          //10.yyyymmdd hh24mi를 yyyy-mm-dd hh24:mi로 변환
function  ConvertMMDate(DStr:String):String;
          //10-1.yyyymmddhh24mi를 yyyy-mm-dd hh24:mi로 변환
function  ConvertSDate(DStr:String):String;
          //11.yyyymmdd를 yyyy-mm-dd로 변환
function  ConvertHDate(DStr:String):String;
          //11-2.yyyymmdd를 yyyy년 mm월 dd일로 변환
function  InvertLDate(DStr:String):String;          
          //12.yyyy-mm-dd hh24:mi:ss를 yyyymmdd hh24miss로 변환
function  InvertMDate(DStr:String):String;          
          //13.yyyy-mm-dd hh24:mi를 yyyymmdd hh24mi로 변환
function  InvertSDate(DStr:String):String;
          //14.yyyy-mm-dd를 yyyymmdd로 변환
function  ConvertJDate(DStr:String):String;          
          //15.주민등록번호 앞자리를 yy-mm-dd로 변환
function  GetLongAge(BirthStr:String):String;
          //16.주민등록번호 앞자리로 나이 구하기 Result는 'XX년XX개월'
function  GetShortAge(BirthStr:String):String;
          //17.주민등록번호 앞자리로 나이 구하기 Result는 'yy/mm'
function  GetAge(BirthStr:String):String;
          //18.주민등록번호 앞자리로 나이 구하기 Result는 'yy'
function  GetSex(ResNo:String):String;
          //18-1.주민등록번호로 성별 구하기
function  ResNoCheck(ResNo:String):Boolean;
          //18-2.주민등록번호 Check
function  FindStr(Fstr:String;KeyStr:String):String;
          //19.문자열 처음부터 KeyStr이 나오기 직전까지를 잘라낸다.
function  FindRStr(Fstr:String;KeyStr:String):String;
          //19-2.문자열 처음부터 KeyStr까지를 잘라낸 나머지를 Return.          
function  FindFileName(Fstr:String):String;
          //20.확장명과 file path를 잘라낸 filename만을 반환.          
procedure GridSort(sGrid : TStringGrid; StartIdx, EndIdx,
                   SortIdx : Integer; Descending:Boolean);
          //21.Click한 HeaderControl의 Section값으로 StringGrid를 Sort한다.
procedure qsortGrid(sGrid : TStringGrid; StartIdx, EndIdx, SortIdx : Integer);
          //21-1. QuickSort
procedure ShowSysErrMsg(DoShow:Integer; var stb_temp:TStatusBar);
          //22.표준 메세지.
function  IntToStrZRtNL(i:Integer):String;
          //23.IntToStr()에 0을 ''로 바꾸는 것 추가
function  StrToFltDef(ValStr:String):Double;
          //24.StrToFlt()에 숫자가 아닌 문자 들어오면 0. 으로
procedure HideAllForm;
          //25.화면상의 Main Form을 제외한 모든 Form의 Visible속성을 False로!!!
procedure ShowAllForm;
          //26.화면상의 Main Form을 제외한 모든 Form의 Visible속성을 True로!!!
procedure CloseAllForm;
          //26-1.화면상의 Main Form을 제외한 모든 Form Close!!!
procedure KillChartShow;
          //27.병상일지 조회 화면이 실행 중이면 죽이기.

//-------------------- 임상벙리 BarCode Reading ---------------------------
function Bar_Make_SpcNo(SpcNo:String):String;
         // 9자리로된 바코드를 10자리로 변환
function BloodBarCodeRead(BldNo:String):String;
         // 혈액 바코드를 12자리로 변환
//-------------------------------------------------------------------------

//-------------------- 임상벙리 결과관리 ----------------------------------
function LowHighCheck(RsltValue,LowValue,HighValue,MarkStr:String):String;
         // 검사결과/Panic Low-High Check
//-------------------------------------------------------------------------

function IsNotPrinterReady:Boolean;
         // 31.프린터 상태 체크
// EditBox의 입력모드를 고정
procedure SetHangeulMode(SetHangeul: Boolean; Handle: THandle);

// 병동을 가져오는 함수
function GetWardno(ComboBox: TComboBox): Boolean; overload;

// 진료과를 가져오는 함수
function GetDeptcd(ComboBox: TComboBox): Boolean;

// 병동스트링을 만드는 함수
function GetWardnoFormat(wardno, wardname: String): String;

// 병동코드를 가져오는 함수
function GetWardno(wardnostring: String): String; overload;

// 검사실을 가져오는 함수
function GetExamRoom(examtype: String; ComboBox: TComboBox): Boolean;

// Slipcode를 가져오는 함수
function GetSlipcd(ComboBox: TComboBox): Boolean;

//##############################################################################

implementation

uses
    TuxMsg, TuxCom, SRCLASS1, VarCom;

//1.한줄 삭제후 위로 땡기기
procedure Delete(Sender:TStringGrid);
var
    MV_Row, Col : Integer;
begin
    if (Sender.RowCount = 1) then
        ClearOne(Sender,Sender.Row)
    else begin
        for MV_Row := Sender.Row to Sender.RowCount-1 do
            for Col := 0 to Sender.ColCount-1 do
                Sender.Cells[Col,MV_Row] := Sender.Cells[Col,MV_Row+1];
        Sender.RowCount := Sender.RowCount - 1;
    end;
end;

//1-1.StringGrid RowNo Row삭제후 위로 땡기기
procedure DeleteRow(Sender:TStringGrid;RowNo:Integer);
var
    MV_Row, Col : Integer;
begin
    if (Sender.RowCount = 1) then
        ClearOne(Sender,RowNo)
    else begin
        for MV_Row := RowNo to Sender.RowCount-1 do
            for Col := 0 to Sender.ColCount-1 do
                Sender.Cells[Col,MV_Row] := Sender.Cells[Col,MV_Row+1];
        Sender.RowCount := Sender.RowCount - 1;
    end;
end;

//1-2.StringGrid RowNo 다음에 한줄 삽입
procedure InsertRow(Sender:TStringGrid;RowNo:Integer);
var
    MV_Row, Col : Integer;
begin
    for MV_Row := Sender.RowCount-1 downto RowNo+1 do
        for Col := 0 to Sender.ColCount-1 do
            Sender.Cells[Col,MV_Row+1] := Sender.Cells[Col,MV_Row];
    Sender.RowCount := Sender.RowCount + 1;
end;

//2.한줄만 빈상태로 바꾼다.
procedure ClearOne(Sender:TStringGrid; Row:Integer);
var
    Col : Integer;
begin
    for Col := 0 to Sender.ColCount-1 do
        Sender.Cells[Col,Row] := '';
end;

//3.StringGrid 전체를 지우고 rowcount를 1로.
procedure ClearRecord(Sender:TStringGrid);
begin
    ClearGrid(Sender);
    Sender.RowCount := 1;
end;

//4.StringGrid 전체를 지운다.
procedure ClearGrid(Sender:TStringGrid);
var
    u_col, u_row : Integer;
begin
    for u_row := 0 to Sender.RowCount-1 do
        for u_col := 0 to Sender.ColCount-1  do
            Sender.Cells[u_col,u_Row] := '';
end;

//5.Line Feed와 Carrage Return 문자를 string에서 제거한다.
function RemoveLFCR(Str:String):String;
var
    Key : Char;
    OutStr : String;
    i : Integer;
begin
    OutStr := '';
    for i := 1 to Length(Str) do begin
        Key := Str[i];
        if (Key = #13) or (Key = #10) then
           OutStr := OutStr + ' '
        else
           OutStr := OutStr + Key;
    end;
    result := OutStr;
end;

//6.StringGrid Column size를 조정한다.
procedure HeaderReSize(var hc:THeaderControl; var sg:TStringGrid; Cols:Integer);
var
    i, tmp : Integer;
begin
    tmp := 0;
    for i := 0 to Cols - 1 do begin
        sg.ColWidths[i] := hc.Sections[i].Width;
        tmp := tmp + hc.Sections[i].Width;
        if (tmp > hc.Width) then begin
            hc.Sections[i].Width := hc.Width - tmp + hc.Sections[i].Width;
            sg.ColWidths[i] := hc.Sections[i].Width;
            break;
        end;
    end;
    if (tmp < hc.Width) then begin
        hc.Sections[Cols-1].Width := hc.Sections[Cols-1].Width + hc.Width-tmp;
        sg.ColWidths[Cols-1] := hc.Sections[Cols-1].Width;
    end;
end;

//7. 헤더콘트롤로 Grid Cell 좌우 정렬
procedure AlignCellByHdCtrl(Col,Row:Integer; var Rect:TRect; var hc:THeaderControl;
  var sg:TStringGrid);
var
    StartPos_l, StartPos_t : Integer;
begin
    with sg.Canvas do begin
        FillRect(Rect);
        if ((Rect.Right-Rect.Left) < (TextWidth(sg.Cells[Col,Row]))) or
           (Col > hc.sections.Count - 1) then
            StartPos_l := Rect.Left + (TextWidth('l') div 2)
        else if (hc.Sections[Col].Alignment = taLeftJustify) then
            StartPos_l := Rect.Left + (TextWidth('l') div 2)
        else if (hc.Sections[Col].Alignment = taRightJustify) then
            StartPos_l := Rect.Right - TextWidth(sg.Cells[Col,Row])
                          - TextWidth('l') 
        else
            StartPos_l := Rect.Left + trunc(((Rect.Right - Rect.Left) -
                                              TextWidth(sg.Cells[Col,Row]))/2);
        StartPos_t := Rect.Top + trunc(((Rect.Bottom - Rect.Top) -
                                         TextHeight(sg.Cells[Col,Row]))/2);
        TextOut(StartPos_l,StartPos_t,sg.Cells[Col,Row]);
    end;
end;

//8.Server의 Sysdate로 pc시간을 맞춘다.
procedure SetDateTimeNow;
var
    DStr : String;
    SystemTime : TSystemTime;
begin
    SystemTime.wYear   := StrToIntDef(Copy(DStr,1,4),2000);
    SystemTime.wMonth  := StrToIntDef(Copy(DStr,5,2),1);
    SystemTime.wDay    := StrToIntDef(Copy(DStr,7,2),1);
    SystemTime.wHour   := StrToIntDef(Copy(DStr,10,2),0);
    SystemTime.wMinute := StrToIntDef(Copy(DStr,11,2),0);
    SystemTime.wSecond := StrToIntDef(Copy(DStr,13,2),0);
end;

//9.yyyymmdd hh24miss를 yyyy-mm-dd hh24:mi:ss로 변환
function ConvertLDate(DStr:String):String;
begin
    if (Length(DStr) >= 15) then
        Result := copy(DStr,1,4)+'-'+copy(DStr,5,2)+'-'+copy(DStr,7,2)+' '+
                  copy(DStr,10,2)+':'+copy(DStr,12,2)+':'+ copy(DStr,14,2)
    else
        Result := '';
end;              

//10.yyyymmdd hh24mi를 yyyy-mm-dd hh24:mi로 변환
function ConvertMDate(DStr:String):String;
begin
    if (Length(DStr) > 12) then
        Result := copy(DStr,1,4)+'-'+copy(DStr,5,2)+'-'+copy(DStr,7,2)+' '+
                  copy(DStr,10,2)+':'+copy(DStr,12,2)
    else
        Result := '';
end;

//10-1.yyyymmddhh24mi를 yyyy-mm-dd hh24:mi로 변환
function ConvertMMDate(DStr:String):String;
begin
    if (Length(DStr) > 11) then
        Result := copy(DStr,1,4)+'-'+copy(DStr,5,2)+'-'+copy(DStr,7,2)+' '+
                  copy(DStr,9,2)+':'+copy(DStr,11,2)
    else
        Result := '';    
end;

//11. yyyymmdd를 yyyy-mm-dd로 변환
function ConvertSDate(DStr:String):String;
begin
    if (Length(DStr) > 7) then
        Result := copy(DStr,1,4)+'-'+copy(DStr,5,2)+'-'+copy(DStr,7,2)
    else
        Result := '';
end;    

//11-2.yyyymmdd를 yyyy년 mm월 dd일로 변환
function  ConvertHDate(DStr:String):String;
begin
    if (Length(DStr) > 7) then 
        Result := copy(DStr,1,4)+'년 '+copy(DStr,5,2)+'월 '+copy(DStr,7,2) + '일'
    else
        Result := '';
end;

//12.yyyy-mm-dd hh24:mi:ss를 yyyymmdd hh24miss로 변환
function InvertLDate(DStr:String):String;
begin
    if (Length(DStr) > 18) then
        Result := copy(DStr,1,4)+copy(DStr,6,2)+copy(DStr,9,2)+' '+
                  copy(DStr,12,2)+copy(DStr,15,2)+copy(DStr,18,2)
    else
        Result := '';
end;

//13.yyyy-mm-dd hh24:mi를 yyyymmdd hh24mi로 변환
function InvertMDate(DStr:String):String;          
begin
    if (Length(DStr) > 15) then
        Result := copy(DStr,1,4)+copy(DStr,6,2)+copy(DStr,9,2)+' '+
                  copy(DStr,12,2)+copy(DStr,15,2)
    else
        Result := '';
end;

//14.yyyy-mm-dd를 yyyymmdd로 변환
function InvertSDate(DStr:String):String;
begin
    if (Length(DStr) > 9) then
        Result := copy(DStr,1,4)+ copy(DStr,6,2) + copy(DStr,9,2)
    else
        Result := '';
end;
        
//15.주민등록번호 앞자리를 yy-mm-dd로 변환
function ConvertJDate(DStr:String):String;
begin
    if (DStr = '') then
        Result := ''
    else
        Result := copy(DStr,1,2)+'-'+copy(DStr,3,2)+'-'+copy(DStr,5,2);
end;

//16.주민등록번호 앞자리로 나이 구하기 Return은 'XX년XX개월'
function GetlongAge(BirthStr:String):String;
var
    BirthYear, BirthMonth, ThisYear, ThisMonth : Integer;
    YearStr, MonStr : String;
begin
    if (BirthStr = '') then begin
        Result := '';
        exit;
    end;

    BirthYear  := StrToIntDef(Copy(BirthStr,1,2),0);
    BirthMonth := StrToIntDef(Copy(BirthStr,3,2),0);

    ThisYear := StrToInt(FormatDateTime('yy',now));
    if (BirthYear > ThisYear) then Inc(ThisYear,100);

    ThisMonth := StrToInt(FormatDateTime('mm',now));
    if (BirthMonth > ThisMonth) then Inc(ThisMonth,12);

    YearStr := IntToStr(ThisYear-BirthYear) + '년';
    MonStr  := intToStr(ThisMonth-BirthMonth) + '개월';

    Result := YearStr + MonStr;
end;

//17.주민등록번호 앞자리로 나이 구하기 Return은 'yy/mm'              
function GetShortAge(BirthStr:String):String;
var
    BirthYear, BirthMonth, ThisYear, ThisMonth : Integer;
    YearStr, MonStr : String;
begin
    if (BirthStr = '') then begin
        Result := '';
        exit;
    end;

    BirthYear  := StrToIntDef(Copy(BirthStr,1,2),0);
    BirthMonth := StrToIntDef(Copy(BirthStr,3,2),0);

    ThisYear := StrToInt(FormatDateTime('yy',now));
    if (BirthYear > ThisYear) then Inc(ThisYear,100);

    ThisMonth := StrToInt(FormatDateTime('mm',now));
    if (BirthMonth > ThisMonth) then Inc(ThisMonth,12);

    YearStr := IntToStr(ThisYear-BirthYear) + '/';
    MonStr  := intToStr(ThisMonth-BirthMonth);

    Result := YearStr + MonStr;
end;

//18.주민등록번호 앞자리로 나이 구하기 Return은 'yy'
function GetAge(BirthStr:String):String;
var
    BirthYear, BirthMonth, ThisYear, ThisMonth : Integer;
begin
    if (BirthStr = '') then begin
        Result := '';
        exit;
    end;

    BirthYear  := StrToIntDef(Copy(BirthStr,1,4),-1);
    BirthMonth := StrToIntDef(Copy(BirthStr,5,2),0);

    if (BirthYear < 0) then exit;
    if (BirthMonth < 1) or (BirthMonth > 12) then exit;

    ThisMonth := StrToInt(FormatDateTime('mm',now));
    if (BirthMonth > ThisMonth) then Inc(BirthYear);

    ThisYear := StrToInt(FormatDateTime('yyyy',now));
    if (BirthYear > ThisYear) then Inc(ThisYear,100);

    Result := IntToStr(ThisYear-BirthYear);
end;

//18-1.주민등록번호로 성별 구하기
function GetSex(ResNo:String):String;
var
    SexNo : Integer;
begin
    Result := '';
    if (Length(ResNo) = 14) then begin
        SexNo := StrToIntDef(Copy(ResNo,8,1),0);
        case SexNo of
          1,3 : Result := '남';
          2,4 : Result := '여';
        end;
    end;
end;

//18-2.주민등록번호 Check
function ResNoCheck(ResNo:String):Boolean;
var
    BirthYear, BirthMonth, BirthDay, SeqNo : Integer;
begin
    Result := False;

    if (Length(ResNo) < 13) then exit;

    BirthYear  := StrToIntDef(Copy(ResNo,1,2),-1);
    BirthMonth := StrToIntDef(Copy(ResNo,3,2),0);
    BirthDay   := StrToIntDef(Copy(ResNo,5,2),0);
    SeqNo      := StrToIntDef(Copy(ResNo,7,7),0);

    if (BirthYear < 0) then exit;
    if (BirthMonth < 1) or (BirthMonth > 12) then exit;
    if (BirthDay < 1) or (BirthDay > 31) then exit;
    if (SeqNo < 1000000) or (SeqNo > 5000000) then exit;

    Result := True;
end;

//19.문자열 처음부터 KeyStr이 나오기 직전까지를 잘라낸다.
function FindStr(Fstr:String;KeyStr:String):String;
var
    idx, Cnt : Integer;
begin
    Result := '';
    Cnt := Length(KeyStr);

    if (Length(FStr) = 0) or (Cnt = 0) or (Cnt > Length(FStr)) then Exit;

    for idx := Cnt + 1 to Length(FStr) do begin
        if (Copy(Fstr,(idx-cnt+1),cnt) = KeyStr) then begin
            Result := Copy(Fstr,1,idx - Cnt);
            Break;
        end;
    end;
end;

//19-2.문자열 마지막부터 KeyStr이 나오기 직전까지를 잘라낸다. 
function FindRStr(Fstr:String;KeyStr:String):String;
var
    idx, Cnt : Integer;
begin
    Result := '';
    Cnt := Length(KeyStr);

    if (Length(FStr) < 2) then exit;
    if (Cnt = 0) or (Cnt > Length(FStr)) then exit;

    for idx := Length(FStr) - Cnt downto Cnt do begin
        if (Copy(Fstr,idx,Cnt) = KeyStr) then begin
            Result := Copy(Fstr,idx+Cnt,Length(FStr)-idx-Cnt+1);
            exit;
        end;
    end;
end;

//20.확장명과 file path를 잘라낸 filename만을 반환.                        
function FindFileName(Fstr:String):String;
var
    Cnt, idx : Integer;
    temp : String;
begin
    temp := FindStr(Fstr,'.');
    Cnt := Length(temp);
    if (Cnt = 0) or (temp[Cnt] = '\')then begin
        Result := '';
        Exit;
    end;

    for idx := cnt downto 1 do
        if (temp[idx] = '\') then begin
            Result := copy(temp,idx+1,Length(temp)-idx);
            Exit;
        end;
end;

//21.Click한 HeaderControl의 Section값으로 StringGrid를 Sort한다.
procedure GridSort(sGrid:TStringGrid;StartIdx,EndIdx,SortIdx:Integer;Descending:Boolean);
var
    j : Word;
    SortGrid, TempGrid : TStringGrid;

    function UpString(Instring:String):String;
    var
        tel : byte;
        outstring : String;
    begin
        OutString := InString;
        for tel := 1 to Length(Instring) do
            OutString[tel] := upcase(OutString[tel]);
        UpString := OutString;
    end;
begin
    sortGrid := TStringGrid.Create(nil);
    sortGrid.RowCount := sGrid.RowCount;
    sortGrid.ColCount := 2;
    for j := StartIdx to EndIdx do begin
        sortGrid.Cells[0,j] := IntToStr(j);
        sortGrid.Cells[1,j] := sGrid.Cells[SortIdx,j];
    end;

    for j := StartIdx to EndIdx do
        SortGrid.Cells[1,j] := Uppercase(SortGrid.Cells[1,j]);

    qsortGrid(sortGrid,StartIdx,EndIdx,1);

    tempGrid := TStringGrid.Create(nil);
    tempGrid.RowCount := sGrid.RowCount;
    tempGrid.ColCount := sGrid.ColCount;

    for j := StartIdx to EndIdx do
        try
        tempGrid.rows[j] := sGrid.rows[StrToInt(sortGrid.Cells[0,j])];
        except on
            EConvertError do begin
                tempGrid.rows[j] := sGrid.rows[j];
            end;
        end;

    for j := StartIdx to EndIdx do
        sGrid.rows[j] := tempGrid.rows[j];

    sortGrid.Free;

    if (Descending) then begin
        for j := EndIdx downto StartIdx do
            sGrid.rows[EndIdx-j+StartIdx] := tempGrid.rows[j];
    end;
    tempGrid.Free
end;

//21-1. QuickSort
procedure qsortGrid(sGrid : TStringGrid; StartIdx, EndIdx, SortIdx : Integer);
var
    x, y : Word;
    temp : String;
    tempRow : TStringList;
    ind : Word;
    fields, i : Word;
begin
    tempRow := TStringList.Create;
    fields := sGrid.ColCount;
    if (StartIdx < EndIdx) then begin
        x := StartIdx;
        y := EndIdx;
        ind := (StartIdx+EndIdx) div 2;
        temp := sGrid.cells[SortIdx,ind];
        while x <= y do begin
            while sGrid.cells[SortIdx,x] < temp do
                Inc(x);
            while sGrid.cells[SortIdx,y] > temp do
                Dec(y);
            if (x <= y) then begin
                tempRow.Clear;
                for i := 0 to fields - 1 do
                    tempRow.Add(sGrid.cells[i,x]);
                if (sGrid.cells[SortIdx,y] <> sGrid.cells[SortIdx,x]) then begin
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

//22.표준 메세지함수
procedure ShowSysErrMsg(DoShow:Integer; var stb_temp:TStatusBar);
var
    TmpUrCode : Integer; // tpurcode를 받는 변수
begin

    TmpUrCode := GetTxUrCode; // tpurcode를 가져오는 TUXCOMMU Function

    case TmpUrCode of  // Sevice에서 보내준 Tpurcode 값으로 분기
      -1 : begin  // Detail MessageForm을 띄우고자 할 때
           stb_temp.Panels[0].text := '';
           if (TuxMsgf1 = nil) then
               TuxMsgf1 := TTuxMsgf1.Create(Application);
           TuxMsgf1.me_Detail.Lines.SetText(PChar(GetTxMsg));
           TuxMsgf1.ShowModal;
      end;
      0 : begin
          stb_temp.Panels[0].text := '';
          ShowMessage(GetTxMsg);
      end;
      1 : begin
          if (DoShow = 0) then begin
              stb_temp.Panels[0].text := '';
              ShowMessage(GetTxMsg);
          end
          else
              stb_temp.Panels[0].text := GetTxMsg;
      end
      else
          stb_temp.Panels[0].text := GetTxMsg;
    end;

end;

//23.IntToStr()에 0을 ''로 바꾸는 것 추가
function IntToStrZRtNL(i:Integer):String;
begin
    if (i = 0) then
        Result := ''
    else
        Result := IntToStr(i);
end;

//24.StrToFlt()에 숫자가 아닌 문자 들어오면 0. 으로
function StrToFltDef(ValStr:String):Double;
begin
    Result := 0;
    //공사중
end;

//25.화면상의 Main Form을 제외한 모든 Form의 Visible속성을 False로!!!
procedure HideAllForm;
var
    i : Integer;
begin
    for i := 0 to Screen.FormCount - 1 do
        if (Screen.Forms[i].FormStyle <> fsMDIForm) then
            Screen.Forms[i].visible := False;
end;

//26.화면상의 Main Form을 제외한 모든 Form의 Visible속성을 True로!!!
procedure ShowAllForm;
var
    i : Integer;
begin
    for i := Screen.FormCount - 1 downto 0 do
        if (Screen.Forms[i].FormStyle <> fsMDIForm) then
            Screen.Forms[i].visible := True;
end;

//26-1.화면상의 Main Form을 제외한 모든 Form Close!!!
procedure CloseAllForm;
var
    i : Integer;
begin
    for i := Screen.FormCount - 1 downto 0 do
        if (Screen.Forms[i].FormStyle <> fsMDIForm) then
            Screen.Forms[i].Close;
end;

//27.병상일지 조회 화면이 실행 중이면 죽이기.
procedure KillChartShow;
var
    WinHandle: THandle;
begin
    WinHandle := FindWindow(nil, 'MCC000F1 병상일지 조회');
    while WinHandle > 0 do begin
        SendMessage(WinHandle, WM_CLOSE, 0, 0);
        WinHandle := FindWindow(nil, 'MCC000F1 병상일지 조회');
    end;
end;

//-------------------- 검체 BarCode Reading ---------------------------

function Bar_Make_SpcNo(SpcNo:String):String;
var
    TempYear, ThisYear, YearStr1, YearStr2 : Integer;
    YearDigit : String;
begin
    Result := '';
    if (Length(SpcNo) <> 9) then exit;

    TempYear := StrToIntDef(Copy(SpcNo,1,1),0);
    ThisYear := StrToIntDef(FormatDateTime('yy',now),0);
    YearStr1 := ThisYear mod 10;
    YearStr2 := ThisYear div 10;
    if (TempYear > YearStr1) then begin
        if (YearStr2 = 0) then
            YearDigit := '9'
        else
            YearDigit := IntToStr(YearStr2 - 1);
    end
    else
        YearDigit := IntToStr(YearStr2);
    Result := YearDigit + SpcNo;
end;

//-------------------- 혈액 BarCode Reading ---------------------------

function BloodBarCodeRead(BldNo:String):String; 
var
    BldDigit : Integer;
begin
    Result := '';

    if (Length(BldNo) <> 10) then exit;

    BldDigit := StrToIntDef(BldNo,0);
    if (BldDigit = 0) then exit;

    Result := Copy(BldNo,1,2) + '-' + Copy(BldNo,3,2) + '-' + Copy(BldNo,5,6);
end;

//-------------------- 임상벙리 결과관리 ------------------------------
function LowHighCheck(RsltValue,LowValue,HighValue,MarkStr:String):String; 
var
    Rslt, High, Low : Double;
begin
    Result := '';
    try
        Rslt := StrToFloat(RsltValue);
        if (LowValue = '') then
            Low := Rslt
        else
            Low := StrToFloat(LowValue);
        if (HighValue = '') then
            High := Rslt
        else
            High := StrToFloat(HighValue);
        if ((Rslt > High) or (Rslt < Low)) then
            Result := MarkStr;  
    except
      exit; 
    end;
end;

// 31.프린터 상태 체크
function IsNotPrinterReady:Boolean;
var
    PrinterIdx : Integer;
begin
    Result := False;
    try
    PrinterIdx := Printer.PrinterIndex;
    Printer.PrinterIndex := PrinterIdx;
    except
        ShowMessage('프린터가 제대로 설치되었는지 확인하시기 바랍니다.');
        Result := True;
    end;
end;
//장재순
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

//병동을 가져오는 함수
function GetWardno(ComboBox: TComboBox): Boolean;
var
   ix, row: Integer;
begin
     Screen.Cursor := crHourGlass;

     WardInfo := HWardInfo.Create;

     row := WardInfo.WardList('2', G_LOCATE);

     if row < 0 then
     begin
          Result := False;
     end
     else
     begin
          ComboBox.Items.Clear;

          ComboBox.Items.Add('');

          for ix := 0 to row - 1 do
          begin
               ComboBox.Items.Add(GetWardnoFormat(WardInfo.sWardNo[ix], WardInfo.sWardName[ix]));
          end;

          Result := True;
     end;

     WardInfo.Free;

     Screen.Cursor := crDefault;
end;

// 진료과를 가져오는 함수
function GetDeptcd(ComboBox: TComboBox): Boolean;
var
   ix, row: Integer;
begin
     Screen.Cursor := crHourGlass;

     WardInfo := HWardInfo.Create;

     row := WardInfo.WardList('1', G_LOCATE);

     if row < 0 then
     begin
          Result := False;
     end
     else
     begin
          ComboBox.Items.Clear;

          ComboBox.Items.Add('');

          for ix := 0 to row - 1 do
          begin
               ComboBox.Items.Add(WardInfo.sWardNo[ix] + ' ' +WardInfo.sWardName[ix]);
          end;

          Result := True;
     end;

     WardInfo.Free;

     Screen.Cursor := crDefault;
end;

function GetWardnoFormat(wardno, wardname: String): String;
var
   spaceline: String;
begin
     spaceline := '          ';

     Result := wardno + Copy(spaceline, 1, 6 - Length(wardno)) + wardname;
end;

// 병동코드를 가져오는 함수
function GetWardno(wardnostring: String): String;
begin
     Result := Copy(wardnostring, 1, Pos(' ', wardnostring) - 1);
end;

//검사실을 가져오는 함수
function GetExamRoom(examtype: String; ComboBox: TComboBox): Boolean;
var
   ix, row: Integer;
begin
     Screen.Cursor := crHourGlass;

     srRoomCode := HsrRoomCode.Create;

     row := srRoomCode.RoomCodeList(examtype,'');

     if row < 0 then
     begin
          Result := False;
     end
     else
     begin
          ComboBox.Items.Clear;

          ComboBox.Items.Add('');

          for ix := 0 to row - 1 do
          begin
               ComboBox.Items.Add(GetWardnoFormat(srRoomCode.sRoomcode[ix], srRoomCode.sRoomname[ix]));
          end;

          Result := True;
     end;

     srRoomCode.Free;

     Screen.Cursor := crDefault;
end;

// Slipcode를 가져오는 함수
function GetSlipcd(ComboBox: TComboBox): Boolean;
var
   ix, row: Integer;
begin
     Screen.Cursor := crHourGlass;

     srExam := HsrExam.Create;

     row := srExam.GetSlipcd;

     if row < 0 then
     begin
          Result := False;
     end
     else
     begin
          Result := True;

          ComboBox.Items.Add('');

          for ix := 0 to row - 1 do
          begin
               ComboBox.Items.Add(srExam.sSlipcode[ix] + ' ' + srExam.sSlipname[ix]);
          end;

     end;

     srExam.Free;

     Screen.Cursor := crDefault;
end;

end.
