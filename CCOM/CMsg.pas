unit CMsg;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Imm, ShellApi, stdctrls, comctrls;

const
    WM_USER_LOGOUT   = WM_USER + 999;

    // 한글 영문 모드 설정.
    procedure SetHangulMode(bModeParam: Boolean; HandleParam: THandle);
    // 입력필드 특수문자 입력여부 검사.
    function CheckSpecialKeys(sKeyParam: Char): boolean;
    // 입력필드 숫자외의 키 입력여부 검사.
    function CheckNumKeys(sKeyParam: Char): boolean;
    // 입력필드 영어 알파벳 외의 키 입력여부 검사.
    function CheckCharKeys(sKeyParam: Char): boolean;
    // 입력필드 영어 알파벳, 숫자 외의 키 입력여부 검사.
    function CheckCharNumKeys(sKeyParam: Char): boolean;
    // 공백키 입력여부 검사.
    function CheckSpaceKeys(sKeyParam: Char): boolean;
    // IP 입력 검사.
    function CheckIPKeys(sKeyParam: Char): boolean;

    //----- 2001.08.21
    // 시스템 - Local 시간 동기화
    procedure SetLocalDateTimeFormat(sysdateFormat :String);
    // 시스템 - Local 시간 동기화
    procedure SetLocalDateTime(sysdate :String);
    //----- 2001.08.21
    // 파일의 용량을 구한다...
    function GetFileSize(sFileName:String): LongInt;

    // 파일 삭제.
    // bFlag : TRUE --> 휴지통에 버리기
    //       : FALSE --> 휴지통에 버리지 않고 바로 삭제하기
    function DeleteFileWithUndo(sFileName: String; bFlag: boolean): Boolean;
    // 트리형태의 구조를 가지는 정보들을 트리뷰로 구성한다.
    // - tmpTreeView : 정보를 구성할 트리뷰
    // - tmpLevel    : 구성될 정보의 인덱스별 레벨
    // - tmpString   : 구성될 정보의 실제내용
    // - bExpant     : ExpanedAll 여부 지정.
    function MakeTreeView(tmpTreeView: TTreeView; tmpLevel, tmpString: Variant; bExpand: boolean; iCnt: Integer): Boolean;
    function MakeTreeViewRootflag(tmpTreeView: TTreeView; tmpTreeNode: TTreeNode; tmpString: Variant; bExpand: boolean; iCnt: Integer): Boolean;



const
    //Client Message Format List for System A
    CF110 = '단말기번호';
    CF112 = '메뉴';
    CF113 = '그룹ID';
    CF114 = '이동';
    CF115 = '화면';
    CF116 = '동일한';
    CF117 = '레벨';
    CF121 = '1';
    CF122 = '2';
    CF123 = '3';
    CF124 = '4';
    CF125 = '5';
    CF126 = '6';
    CF127 = '7';
    CF128 = '8';
    CF129 = '9';
    CF120 = '0';
    CF130 = '마스터그룹';
    CF131 = '프로그램타입';
    CF132 = '프로그램그룹';
    CF133 = '그룹ID';
    CF134 = '그룹명';
    CF135 = '메뉴타입';
    CF136 = '단위프로그램';
    CF137 = '프로그램ID';
    CF138 = '프로그램명';
    CF139 = '상위프로그램ID';
    CF140 = '상위프로그램명';
    CF141 = '팝업화면';
    CF142 = '사용자명';
    CF143 = '사용자ID';
    CF144 = '유효시작일';
    CF145 = '유효종료일';
    CF146 = '사용세션수';
    CF147 = '기본세션수';
    CF148 = '사용자상태';
    CF149 = 'IP ADDRESS';
    CF150 = '이전';
    CF151 = '이후';
    CF152 = '관리부서';
    CF153 = '관리자 ID';
    CF154 = '관리자명';
    CF155 = '단말기 번호';


    CF210 = '우편번호';
    CF211 = '시도';
    CF212 = '구군';
    CF213 = '읍면동';
    CF214 = '번지';
    CF215 = '지역구분';
    CF226 = '2자이상 ';
    CF227 = '4자이상 ';
    CF216 = '대분류 코드';
    CF217 = '소분류 코드';
    CF218 = ' 상세정보';
    CF219 = ' 신규등록';
    CF220 = '코드약어명';
    CF230 = '병원구분';
    CF231 = '보험요양기관기호';
    CF232 = '산재요양기관기호';
    CF233 = '병원명칭';
    CF234 = '대표자주민번호';
    CF235 = '팩스번호';
    CF236 = '병원정보';
    CF240 = '게시물';
    CF241 = '제목';
    CF242 = '내용';
    CF243 = '첨부화일';
    CF250 = '휴일구분';
    CF260 = '실행 화일';
    CF261 = 'DLL 화일';
    CF262 = '기타 화일';
    CF263 = '마스터그룹 ID';
    CF264 = '컴포넌트 ID';
    CF265 = '컴포넌트 타입';
    CF266 = '절대경로';
    CF267 = '컴포넌트 등록정보';
    CF268 = '보안옵션체크';
    CF269 = '보안옵션체크 등록정보';
    CF270 = '검사시점';
    CF271 = '검사항목';
    CF272 = '메시지';
    CF273 = '검사유형';
    CF274 = '경고가능';
    CF275 = '사용여부';
    CF276 = '전송';
    CF277 = '직종코드';
    CF278 = '직급코드';
    CF279 = '게시시작일';
    CF280 = '게시종료일';
    CF281 = '변경 비밀번호';
    CF282 = '변경 확인용 비밀번호';
    CF283 = '서버ID';

    CF190 = '버젼관리프로그램';

    CF996 = '0';    // 로그아웃될 필요가 있음.
    CF997 = '1';    // 로그아웃될 필요가 없음.

    CF998 = 'C:\WINDOWS\SYSTEM\';
    CF999 = 'C:\WINDOWS\';




    ugd_Largcd_Largcd       = 0;  // 대분류 코드
    ugd_Largcd_Cdabbrnm     = 1;  // 대분류 코드 약어명

    ugd_Comcddtl_Comcddtl   =  0;
    ugd_Comcddtl_Cdabbrnm   =  1;
    ugd_Comcddtl_Cdprtseq   =  2;

    CF_Z101 = '서버에 연결할 수 없습니다.';
    CF_Z102 = '프로그램을 종료합니다.';

    CF_Z110 = '$S에 $S를 붙일 수 없습니다.';
    CF_Z111 = '$S $S이(가) 이미 존재합니다.';
    CF_Z112 = '$S $S에만 $S를 붙일 수 있습니다.';
    CF_Z113 = '$S $S에서만 $S할 수 있습니다.';
    CF_Z114 = '조회한 프로그램그룹이 존재하지 않습니다.' + Chr(13) + Chr(13) +
              '프로그램그룹을 새로 등록하시겠습니까?';
    CF_Z115 = '$S이(가) $S보다 $S입니다.';
    CF_Z116 = '존재하지 않는 $S입니다.';
    CF_Z117 = '$S $S이(가) $S $S에 이미 존재합니다.';
    CF_Z118 = '1인당 프로그램 그룹 최대허용개수는 25개입니다.';
    CF_Z119 = '$S와(과) $S이(가) 일치하지 않습니다.';
    CF_Z120 = '프로그램그룹을(를) 정확히 선택[입력]하십시오.';
    CF_Z121 = '존재하는 그룹ID를 선택하시거나 신규로 작성할 프로그램 그룹ID를 입력하십시오..' + Chr(13) + Chr(13) +
              '신규 ID일 경우 2자이상 입력하십시오.' + Chr(13) + Chr(13) +
              '그리고 쉽게 알아볼 수 있도록 마스터 그룹 ID를 활용하십시오.' + Chr(13) + Chr(13) +
              '  예) CM 마스터 그룹 - CM1 프로그램 그룹';
    CF_Z122 = '검색조건에 %문자는 사용하실 수 없습니다.';
    CF_Z123 = '먼저 로그인 하십시오';
    CF_Z124 = '프로그램 업데이트 중에 오류가 발생했습니다.';
    CF_Z125 = '선택하신 디렉토리는 윈도우 디렉토리입니다.' + Chr(13) +
              '경로값은 C:\WINDOWS\로 변경되고 다운로드 받는 사용자의' +cHAR(13) +
              '시스템 설정에 따라 자동으로 변경됩니다.';
    CF_Z126 = '선택하신 디렉토리는 윈도우 시스템 디렉토리입니다.' + Chr(13) +
              '경로값은 C:\WINDOWS\SYSTEM\로 변경되고 다운로드 받는 사용자의' + Char(13) +
              '시스템 설정에 따라 자동으로 변경됩니다.';
    CF_Z127 = '비밀번호를 반드시 변경하여야 합니다.';
    CF_Z128 = '┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓'+  Chr(13) +
              '┃                     이 작업은 신중을 기해 주십시오.                         ┃'+  Chr(13) +
              '┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛'+  Chr(13) + Chr(13) +
              ' 비밀번호 초기화는 사용자의 비밀번호를 초기값으로 변경합니다.' +  Chr(13) +
              ' 초기값은 사용자ID와 동일합니다.' +  Chr(13) +
              ' 비밀번호가 초기화된 상태에서 사용자가 로그인을 할 경우 비밀번호' +  Chr(13) +
              ' 변경을 해야만 시스템을 사용할 수 있습니다.' +  Chr(13) + Chr(13) +
              ' 현 사용자의 비밀번호를 초기화 하시겠습니까?';

    CCMSG_ENV_FILE          = 'C:\UniHIS\ENV\HIS.ENV';
    CCMSG_LARGCD_LARGCD     = '0000';




implementation


    
//=================================================
// 한글/영문 IME 설정.
//=================================================
procedure SetHangulMode(bModeParam: Boolean; HandleParam: THandle);
var
    tMode : HIMC;
begin
    tMode := ImmGetContext(HandleParam);

    if bModeParam then  // 한글모드로
        ImmSetConversionStatus(tMode, IME_CMODE_HANGEUL,
                                    IME_CMODE_HANGEUL)
    else                // 영문모드로
        ImmSetConversionStatus(tMode, IME_CMODE_ALPHANUMERIC,
                                    IME_CMODE_ALPHANUMERIC);
end;

//=================================================
// 입력필드 특수문자 입력여부 검사.
//=================================================
function CheckSpecialKeys(sKeyParam: Char): boolean;
begin
    Result := True;

    if (sKeyParam in ['`','~','!','@','#','$','%','^','&','*','(',')','_','+','=',
         '|','\','/','.',',']) then
        Result := False;
end;

//=================================================
// 입력필드 숫자외의 키 입력여부 검사.
//=================================================
function CheckNumKeys(sKeyParam: Char): boolean;
begin
    Result := True;

    if not (sKeyParam in ['0'..'9',#8]) then
        Result := False;
end;

//=================================================
// 입력필드 영어 알파벳 외의 키 입력여부 검사.
//=================================================
function CheckCharKeys(sKeyParam: Char): boolean;
begin
    Result := True;

    if not (sKeyParam in ['a'..'z','A'..'Z',#8]) then
        Result := False;
end;

//=================================================
// 입력필드 영어 알파벳, 숫자 외의 키 입력여부 검사.
//=================================================
function CheckCharNumKeys(sKeyParam: Char): boolean;
begin
    Result := True;

    if not (sKeyParam in ['a'..'z','A'..'Z','0'..'9',#8]) then
        Result := False;
end;

//=================================================
// 공백키 입력여부 검사.
//=================================================
function CheckSpaceKeys(sKeyParam: Char): boolean;
begin
    Result := True;

    if sKeyParam = ' ' then
        Result := False;
end;

//=================================================
// IP 입력 검사.
//=================================================
function CheckIPKeys(sKeyParam: Char): boolean;
begin
    Result := True;

    if not (sKeyParam in ['0'..'9','.',#8]) then
        Result := False;
end;

//=================================================
// Local datetime format
//=================================================
procedure SetLocalDateTimeFormat(sysdateFormat :String);
begin
    // 시스템의 DATETIME FORMAT을 변형한다...
    SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_SSHORTDATE,'yyyy-MM-dd');
    SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_SLONGDATE,Pchar('yyyy''년'' M''월'' d''일'''));
    SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_S1159, Pchar('오전'));
    SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_S2359, Pchar('오후'));
    SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_STIMEFORMAT, Pchar('HH:mm:ss'));

    // 프로그램 내부적으로 변형되지 않은 DATETIME FORMAT을 수정...
    // 이는 프로그램 실행이후에 변형된 내용의 경우 적용이 되지 않는 것을
    // 막기 위해서이다.
    DateSeparator := '-' ;
    ShortDateFormat :=  'yyyy-MM-dd' ;
    LongDateFormat := 'yyyy''년'' M''월'' d''일''';
    TimeSeparator := ':';
    TimeAMString := '오전' ;
    TimePMString := '오후';
    ShortTimeFormat := 'AMPM HH:mm';
    LongTimeFormat  := 'AMPM HH:mm:ss';
end;

//=================================================
// 시스템 - Local 시간 동기화
//=================================================
procedure SetLocalDateTime(sysdate :String);
var
    lpSystemTime :TSystemTime;
    lpTimeZone  : TTimeZoneInformation;
    wDateTime    :TDateTime;
    yy,mm,dd, hh,mi,ss,ms  :Word;
begin
    yy := StrToInt(Copy(sysdate ,1,4));
    mm := StrToInt(Copy(sysdate ,6,2));
    dd := StrToInt(Copy(sysdate ,9,2));

    hh := StrToInt(Copy(sysdate ,12,2));
    mi := StrToInt(Copy(sysdate ,15,2));
    ss := StrToInt(Copy(sysdate ,18,2));

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

    // 로컬의 시간을 서버측의 TIMESTAMP으로 동기화시킨다...
    SetSystemTime(lpSystemTime);
end;

//=================================================
// sFileName에 해당하는 파일의 크기를 반환한다...
//=================================================
function GetFileSize(sFileName:String): LongInt;
var
    SearchRec: TSearchRec;
begin
    Result := 0;

    if FindFirst(sFileName, faAnyFile, SearchRec) = 0 then
    begin
        Result:= SearchRec.Size;
    end;
end;

//=================================================
// 파일 삭제.
// bFlag : TRUE --> 휴지통에 버리기
//       : FALSE --> 휴지통에 버리지 않고 바로 삭제하기
//=================================================
function DeleteFileWithUndo(sFileName: String; bFlag: boolean): Boolean;
var
    fos : TSHFileOpStruct;
begin
    FillChar( fos, SizeOf( fos ), 0 );

    with fos do
    begin
        wFunc := FO_DELETE;
        pFrom := PChar( sFileName );

        // 휴지통에 버리기...
        if bFlag then
        begin
            fFlags := FOF_ALLOWUNDO
                        or FOF_NOCONFIRMATION
                        or FOF_SILENT;
        end
        // 휴지통에 버리지 않고 바로 삭제하기...
        else if not bFlag then
        begin
            fFlags := FOF_NOCONFIRMATION
                        or FOF_SILENT;
        end;
    end;

    Result := ( 0 = ShFileOperation( fos ) );
end;

//=================================================
// 트리형태의 구조를 가지는 정보들을 트리뷰로 구성한다.
// - tmpTreeView : 정보를 구성할 트리뷰
// - tmpLevel    : 구성될 정보의 인덱스별 레벨
// - tmpString   : 구성될 정보의 실제내용
// - bExpant     : ExpanedAll 여부 지정.
//=================================================
function MakeTreeView(tmpTreeView: TTreeView; tmpLevel, tmpString: Variant; bExpand: boolean; iCnt: Integer): Boolean;
var
    MyTreeNode1 : TTreeNode;
    MyTreeNode2,MyTreeNode3,MyTreeNode4,MyTreeNode5,MyTreeNode6 : TTreeNode;
    cnt,ix : Integer;
begin
    // 기존 조회된 내용을 클리어.
    tmpTreeView.Items.Clear;

//    MyTreeNode1 := tmpTreeView.Add(nil, '[부서 선택]');
    MyTreeNode1 := nil;

    ix := 0;

    while ix < iCnt do
    begin
        // 루트를 추가
        if Integer(tmpLevel[ix]) = 1 then
        begin
            MyTreeNode1 := tmpTreeView.Items.Add(MyTreeNode1, tmpString[ix]);

            MyTreeNode1.ImageIndex := 0;
            MyTreeNode1.SelectedIndex := 1;
        end
        // 자식노드 1 추가
        else if Integer(tmpLevel[ix]) = 2 then
        begin
            MyTreeNode2 := tmpTreeView.Items.AddChild(MyTreeNode1, tmpString[ix]);

            MyTreeNode2.ImageIndex := 0;
            MyTreeNode2.SelectedIndex   := 1;
        end
        // 자식노드 2 추가
        else if Integer(tmpLevel[ix]) = 3 then
        begin
            MyTreeNode3 := tmpTreeView.Items.AddChild(MyTreeNode2, tmpString[ix]);

            MyTreeNode3.ImageIndex := 0;
            MyTreeNode3.SelectedIndex   := 1;
        end
        // 자식노드 3 추가
        else if Integer(tmpLevel[ix]) = 4 then
        begin
            MyTreeNode4 := tmpTreeView.Items.AddChild(MyTreeNode3, tmpString[ix]);

            MyTreeNode4.ImageIndex := 0;
            MyTreeNode4.SelectedIndex   := 1;
        end
        // 자식노드 4 추가
        else if Integer(tmpLevel[ix]) = 5 then
        begin
            MyTreeNode5 := tmpTreeView.Items.AddChild(MyTreeNode4, tmpString[ix]);

            MyTreeNode5.ImageIndex := 0;
            MyTreeNode5.SelectedIndex   := 1;
        end
        // 자식노드 5 추가
        else if Integer(tmpLevel[ix]) = 6 then
        begin
            MyTreeNode6 := tmpTreeView.Items.AddChild(MyTreeNode5, tmpString[ix]);

            MyTreeNode6.ImageIndex := 0;
            MyTreeNode6.SelectedIndex   := 1;
        end;

        Inc(ix);
    end;



    if bExpand then
    begin
        tmpTreeView.FullExpand;
        Exit;
    end
    else
    begin
        tmpTreeView.FullCollapse;
        Exit;
    end;
end;


function MakeTreeViewRootflag(tmpTreeView: TTreeView; tmpTreeNode: TTreeNode; tmpString: Variant; bExpand: boolean; iCnt: Integer): Boolean;
var
    MyTreeNode1, MyTreeNode2 : TTreeNode;
    ix : Integer;
begin
    // 최상위 트리일 경우, 루트로 추가
    if tmpTreeNode = nil then
    begin
		MyTreeNode1 := nil;

	    for ix := 0 to iCnt - 1 do
	    begin
			MyTreeNode1 := tmpTreeView.Items.Add(MyTreeNode1, tmpString[ix]);

			MyTreeNode1.ImageIndex := 0;
			MyTreeNode1.SelectedIndex := 1;
		end;
    end
    // 그렇지 않은 경우 선택노드 tmpTreeNode의 하위노드로 추가한다...
    else
    begin
		MyTreeNode1 := tmpTreeNode;

	    for ix := 0 to iCnt - 1 do
	    begin
			MyTreeNode2 := tmpTreeView.Items.AddChild(MyTreeNode1, tmpString[ix]);

			MyTreeNode2.ImageIndex := 0;
			MyTreeNode2.SelectedIndex := 1;
		end;
    end;

{
    if bExpand then
    begin
        tmpTreeView.FullExpand;
        Exit;
    end
    else
    begin
        tmpTreeView.FullCollapse;
        Exit;
    end;
}
end;

end.











