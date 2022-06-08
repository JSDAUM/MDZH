unit CMsg;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Imm, ShellApi, stdctrls, comctrls;

const
    WM_USER_LOGOUT   = WM_USER + 999;

    // �ѱ� ���� ��� ����.
    procedure SetHangulMode(bModeParam: Boolean; HandleParam: THandle);
    // �Է��ʵ� Ư������ �Է¿��� �˻�.
    function CheckSpecialKeys(sKeyParam: Char): boolean;
    // �Է��ʵ� ���ڿ��� Ű �Է¿��� �˻�.
    function CheckNumKeys(sKeyParam: Char): boolean;
    // �Է��ʵ� ���� ���ĺ� ���� Ű �Է¿��� �˻�.
    function CheckCharKeys(sKeyParam: Char): boolean;
    // �Է��ʵ� ���� ���ĺ�, ���� ���� Ű �Է¿��� �˻�.
    function CheckCharNumKeys(sKeyParam: Char): boolean;
    // ����Ű �Է¿��� �˻�.
    function CheckSpaceKeys(sKeyParam: Char): boolean;
    // IP �Է� �˻�.
    function CheckIPKeys(sKeyParam: Char): boolean;

    //----- 2001.08.21
    // �ý��� - Local �ð� ����ȭ
    procedure SetLocalDateTimeFormat(sysdateFormat :String);
    // �ý��� - Local �ð� ����ȭ
    procedure SetLocalDateTime(sysdate :String);
    //----- 2001.08.21
    // ������ �뷮�� ���Ѵ�...
    function GetFileSize(sFileName:String): LongInt;

    // ���� ����.
    // bFlag : TRUE --> �����뿡 ������
    //       : FALSE --> �����뿡 ������ �ʰ� �ٷ� �����ϱ�
    function DeleteFileWithUndo(sFileName: String; bFlag: boolean): Boolean;
    // Ʈ�������� ������ ������ �������� Ʈ����� �����Ѵ�.
    // - tmpTreeView : ������ ������ Ʈ����
    // - tmpLevel    : ������ ������ �ε����� ����
    // - tmpString   : ������ ������ ��������
    // - bExpant     : ExpanedAll ���� ����.
    function MakeTreeView(tmpTreeView: TTreeView; tmpLevel, tmpString: Variant; bExpand: boolean; iCnt: Integer): Boolean;
    function MakeTreeViewRootflag(tmpTreeView: TTreeView; tmpTreeNode: TTreeNode; tmpString: Variant; bExpand: boolean; iCnt: Integer): Boolean;



const
    //Client Message Format List for System A
    CF110 = '�ܸ����ȣ';
    CF112 = '�޴�';
    CF113 = '�׷�ID';
    CF114 = '�̵�';
    CF115 = 'ȭ��';
    CF116 = '������';
    CF117 = '����';
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
    CF130 = '�����ͱ׷�';
    CF131 = '���α׷�Ÿ��';
    CF132 = '���α׷��׷�';
    CF133 = '�׷�ID';
    CF134 = '�׷��';
    CF135 = '�޴�Ÿ��';
    CF136 = '�������α׷�';
    CF137 = '���α׷�ID';
    CF138 = '���α׷���';
    CF139 = '�������α׷�ID';
    CF140 = '�������α׷���';
    CF141 = '�˾�ȭ��';
    CF142 = '����ڸ�';
    CF143 = '�����ID';
    CF144 = '��ȿ������';
    CF145 = '��ȿ������';
    CF146 = '��뼼�Ǽ�';
    CF147 = '�⺻���Ǽ�';
    CF148 = '����ڻ���';
    CF149 = 'IP ADDRESS';
    CF150 = '����';
    CF151 = '����';
    CF152 = '�����μ�';
    CF153 = '������ ID';
    CF154 = '�����ڸ�';
    CF155 = '�ܸ��� ��ȣ';


    CF210 = '������ȣ';
    CF211 = '�õ�';
    CF212 = '����';
    CF213 = '���鵿';
    CF214 = '����';
    CF215 = '��������';
    CF226 = '2���̻� ';
    CF227 = '4���̻� ';
    CF216 = '��з� �ڵ�';
    CF217 = '�Һз� �ڵ�';
    CF218 = ' ������';
    CF219 = ' �űԵ��';
    CF220 = '�ڵ����';
    CF230 = '��������';
    CF231 = '����������ȣ';
    CF232 = '����������ȣ';
    CF233 = '������Ī';
    CF234 = '��ǥ���ֹι�ȣ';
    CF235 = '�ѽ���ȣ';
    CF236 = '��������';
    CF240 = '�Խù�';
    CF241 = '����';
    CF242 = '����';
    CF243 = '÷��ȭ��';
    CF250 = '���ϱ���';
    CF260 = '���� ȭ��';
    CF261 = 'DLL ȭ��';
    CF262 = '��Ÿ ȭ��';
    CF263 = '�����ͱ׷� ID';
    CF264 = '������Ʈ ID';
    CF265 = '������Ʈ Ÿ��';
    CF266 = '������';
    CF267 = '������Ʈ �������';
    CF268 = '���ȿɼ�üũ';
    CF269 = '���ȿɼ�üũ �������';
    CF270 = '�˻����';
    CF271 = '�˻��׸�';
    CF272 = '�޽���';
    CF273 = '�˻�����';
    CF274 = '�������';
    CF275 = '��뿩��';
    CF276 = '����';
    CF277 = '�����ڵ�';
    CF278 = '�����ڵ�';
    CF279 = '�Խý�����';
    CF280 = '�Խ�������';
    CF281 = '���� ��й�ȣ';
    CF282 = '���� Ȯ�ο� ��й�ȣ';
    CF283 = '����ID';

    CF190 = '�����������α׷�';

    CF996 = '0';    // �α׾ƿ��� �ʿ䰡 ����.
    CF997 = '1';    // �α׾ƿ��� �ʿ䰡 ����.

    CF998 = 'C:\WINDOWS\SYSTEM\';
    CF999 = 'C:\WINDOWS\';




    ugd_Largcd_Largcd       = 0;  // ��з� �ڵ�
    ugd_Largcd_Cdabbrnm     = 1;  // ��з� �ڵ� ����

    ugd_Comcddtl_Comcddtl   =  0;
    ugd_Comcddtl_Cdabbrnm   =  1;
    ugd_Comcddtl_Cdprtseq   =  2;

    CF_Z101 = '������ ������ �� �����ϴ�.';
    CF_Z102 = '���α׷��� �����մϴ�.';

    CF_Z110 = '$S�� $S�� ���� �� �����ϴ�.';
    CF_Z111 = '$S $S��(��) �̹� �����մϴ�.';
    CF_Z112 = '$S $S���� $S�� ���� �� �ֽ��ϴ�.';
    CF_Z113 = '$S $S������ $S�� �� �ֽ��ϴ�.';
    CF_Z114 = '��ȸ�� ���α׷��׷��� �������� �ʽ��ϴ�.' + Chr(13) + Chr(13) +
              '���α׷��׷��� ���� ����Ͻðڽ��ϱ�?';
    CF_Z115 = '$S��(��) $S���� $S�Դϴ�.';
    CF_Z116 = '�������� �ʴ� $S�Դϴ�.';
    CF_Z117 = '$S $S��(��) $S $S�� �̹� �����մϴ�.';
    CF_Z118 = '1�δ� ���α׷� �׷� �ִ���밳���� 25���Դϴ�.';
    CF_Z119 = '$S��(��) $S��(��) ��ġ���� �ʽ��ϴ�.';
    CF_Z120 = '���α׷��׷���(��) ��Ȯ�� ����[�Է�]�Ͻʽÿ�.';
    CF_Z121 = '�����ϴ� �׷�ID�� �����Ͻðų� �űԷ� �ۼ��� ���α׷� �׷�ID�� �Է��Ͻʽÿ�..' + Chr(13) + Chr(13) +
              '�ű� ID�� ��� 2���̻� �Է��Ͻʽÿ�.' + Chr(13) + Chr(13) +
              '�׸��� ���� �˾ƺ� �� �ֵ��� ������ �׷� ID�� Ȱ���Ͻʽÿ�.' + Chr(13) + Chr(13) +
              '  ��) CM ������ �׷� - CM1 ���α׷� �׷�';
    CF_Z122 = '�˻����ǿ� %���ڴ� ����Ͻ� �� �����ϴ�.';
    CF_Z123 = '���� �α��� �Ͻʽÿ�';
    CF_Z124 = '���α׷� ������Ʈ �߿� ������ �߻��߽��ϴ�.';
    CF_Z125 = '�����Ͻ� ���丮�� ������ ���丮�Դϴ�.' + Chr(13) +
              '��ΰ��� C:\WINDOWS\�� ����ǰ� �ٿ�ε� �޴� �������' +cHAR(13) +
              '�ý��� ������ ���� �ڵ����� ����˴ϴ�.';
    CF_Z126 = '�����Ͻ� ���丮�� ������ �ý��� ���丮�Դϴ�.' + Chr(13) +
              '��ΰ��� C:\WINDOWS\SYSTEM\�� ����ǰ� �ٿ�ε� �޴� �������' + Char(13) +
              '�ý��� ������ ���� �ڵ����� ����˴ϴ�.';
    CF_Z127 = '��й�ȣ�� �ݵ�� �����Ͽ��� �մϴ�.';
    CF_Z128 = '����������������������������������������������������������������'+  Chr(13) +
              '��                     �� �۾��� ������ ���� �ֽʽÿ�.                         ��'+  Chr(13) +
              '����������������������������������������������������������������'+  Chr(13) + Chr(13) +
              ' ��й�ȣ �ʱ�ȭ�� ������� ��й�ȣ�� �ʱⰪ���� �����մϴ�.' +  Chr(13) +
              ' �ʱⰪ�� �����ID�� �����մϴ�.' +  Chr(13) +
              ' ��й�ȣ�� �ʱ�ȭ�� ���¿��� ����ڰ� �α����� �� ��� ��й�ȣ' +  Chr(13) +
              ' ������ �ؾ߸� �ý����� ����� �� �ֽ��ϴ�.' +  Chr(13) + Chr(13) +
              ' �� ������� ��й�ȣ�� �ʱ�ȭ �Ͻðڽ��ϱ�?';

    CCMSG_ENV_FILE          = 'C:\UniHIS\ENV\HIS.ENV';
    CCMSG_LARGCD_LARGCD     = '0000';




implementation


    
//=================================================
// �ѱ�/���� IME ����.
//=================================================
procedure SetHangulMode(bModeParam: Boolean; HandleParam: THandle);
var
    tMode : HIMC;
begin
    tMode := ImmGetContext(HandleParam);

    if bModeParam then  // �ѱ۸���
        ImmSetConversionStatus(tMode, IME_CMODE_HANGEUL,
                                    IME_CMODE_HANGEUL)
    else                // ��������
        ImmSetConversionStatus(tMode, IME_CMODE_ALPHANUMERIC,
                                    IME_CMODE_ALPHANUMERIC);
end;

//=================================================
// �Է��ʵ� Ư������ �Է¿��� �˻�.
//=================================================
function CheckSpecialKeys(sKeyParam: Char): boolean;
begin
    Result := True;

    if (sKeyParam in ['`','~','!','@','#','$','%','^','&','*','(',')','_','+','=',
         '|','\','/','.',',']) then
        Result := False;
end;

//=================================================
// �Է��ʵ� ���ڿ��� Ű �Է¿��� �˻�.
//=================================================
function CheckNumKeys(sKeyParam: Char): boolean;
begin
    Result := True;

    if not (sKeyParam in ['0'..'9',#8]) then
        Result := False;
end;

//=================================================
// �Է��ʵ� ���� ���ĺ� ���� Ű �Է¿��� �˻�.
//=================================================
function CheckCharKeys(sKeyParam: Char): boolean;
begin
    Result := True;

    if not (sKeyParam in ['a'..'z','A'..'Z',#8]) then
        Result := False;
end;

//=================================================
// �Է��ʵ� ���� ���ĺ�, ���� ���� Ű �Է¿��� �˻�.
//=================================================
function CheckCharNumKeys(sKeyParam: Char): boolean;
begin
    Result := True;

    if not (sKeyParam in ['a'..'z','A'..'Z','0'..'9',#8]) then
        Result := False;
end;

//=================================================
// ����Ű �Է¿��� �˻�.
//=================================================
function CheckSpaceKeys(sKeyParam: Char): boolean;
begin
    Result := True;

    if sKeyParam = ' ' then
        Result := False;
end;

//=================================================
// IP �Է� �˻�.
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
    // �ý����� DATETIME FORMAT�� �����Ѵ�...
    SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_SSHORTDATE,'yyyy-MM-dd');
    SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_SLONGDATE,Pchar('yyyy''��'' M''��'' d''��'''));
    SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_S1159, Pchar('����'));
    SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_S2359, Pchar('����'));
    SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_STIMEFORMAT, Pchar('HH:mm:ss'));

    // ���α׷� ���������� �������� ���� DATETIME FORMAT�� ����...
    // �̴� ���α׷� �������Ŀ� ������ ������ ��� ������ ���� �ʴ� ����
    // ���� ���ؼ��̴�.
    DateSeparator := '-' ;
    ShortDateFormat :=  'yyyy-MM-dd' ;
    LongDateFormat := 'yyyy''��'' M''��'' d''��''';
    TimeSeparator := ':';
    TimeAMString := '����' ;
    TimePMString := '����';
    ShortTimeFormat := 'AMPM HH:mm';
    LongTimeFormat  := 'AMPM HH:mm:ss';
end;

//=================================================
// �ý��� - Local �ð� ����ȭ
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

    // ������ �ð��� �������� TIMESTAMP���� ����ȭ��Ų��...
    SetSystemTime(lpSystemTime);
end;

//=================================================
// sFileName�� �ش��ϴ� ������ ũ�⸦ ��ȯ�Ѵ�...
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
// ���� ����.
// bFlag : TRUE --> �����뿡 ������
//       : FALSE --> �����뿡 ������ �ʰ� �ٷ� �����ϱ�
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

        // �����뿡 ������...
        if bFlag then
        begin
            fFlags := FOF_ALLOWUNDO
                        or FOF_NOCONFIRMATION
                        or FOF_SILENT;
        end
        // �����뿡 ������ �ʰ� �ٷ� �����ϱ�...
        else if not bFlag then
        begin
            fFlags := FOF_NOCONFIRMATION
                        or FOF_SILENT;
        end;
    end;

    Result := ( 0 = ShFileOperation( fos ) );
end;

//=================================================
// Ʈ�������� ������ ������ �������� Ʈ����� �����Ѵ�.
// - tmpTreeView : ������ ������ Ʈ����
// - tmpLevel    : ������ ������ �ε����� ����
// - tmpString   : ������ ������ ��������
// - bExpant     : ExpanedAll ���� ����.
//=================================================
function MakeTreeView(tmpTreeView: TTreeView; tmpLevel, tmpString: Variant; bExpand: boolean; iCnt: Integer): Boolean;
var
    MyTreeNode1 : TTreeNode;
    MyTreeNode2,MyTreeNode3,MyTreeNode4,MyTreeNode5,MyTreeNode6 : TTreeNode;
    cnt,ix : Integer;
begin
    // ���� ��ȸ�� ������ Ŭ����.
    tmpTreeView.Items.Clear;

//    MyTreeNode1 := tmpTreeView.Add(nil, '[�μ� ����]');
    MyTreeNode1 := nil;

    ix := 0;

    while ix < iCnt do
    begin
        // ��Ʈ�� �߰�
        if Integer(tmpLevel[ix]) = 1 then
        begin
            MyTreeNode1 := tmpTreeView.Items.Add(MyTreeNode1, tmpString[ix]);

            MyTreeNode1.ImageIndex := 0;
            MyTreeNode1.SelectedIndex := 1;
        end
        // �ڽĳ�� 1 �߰�
        else if Integer(tmpLevel[ix]) = 2 then
        begin
            MyTreeNode2 := tmpTreeView.Items.AddChild(MyTreeNode1, tmpString[ix]);

            MyTreeNode2.ImageIndex := 0;
            MyTreeNode2.SelectedIndex   := 1;
        end
        // �ڽĳ�� 2 �߰�
        else if Integer(tmpLevel[ix]) = 3 then
        begin
            MyTreeNode3 := tmpTreeView.Items.AddChild(MyTreeNode2, tmpString[ix]);

            MyTreeNode3.ImageIndex := 0;
            MyTreeNode3.SelectedIndex   := 1;
        end
        // �ڽĳ�� 3 �߰�
        else if Integer(tmpLevel[ix]) = 4 then
        begin
            MyTreeNode4 := tmpTreeView.Items.AddChild(MyTreeNode3, tmpString[ix]);

            MyTreeNode4.ImageIndex := 0;
            MyTreeNode4.SelectedIndex   := 1;
        end
        // �ڽĳ�� 4 �߰�
        else if Integer(tmpLevel[ix]) = 5 then
        begin
            MyTreeNode5 := tmpTreeView.Items.AddChild(MyTreeNode4, tmpString[ix]);

            MyTreeNode5.ImageIndex := 0;
            MyTreeNode5.SelectedIndex   := 1;
        end
        // �ڽĳ�� 5 �߰�
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
    // �ֻ��� Ʈ���� ���, ��Ʈ�� �߰�
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
    // �׷��� ���� ��� ���ó�� tmpTreeNode�� �������� �߰��Ѵ�...
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










