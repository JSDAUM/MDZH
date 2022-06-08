//==============================================================================
//
//==============================================================================
unit SRCLASS0;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Grids,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, IniFiles, TuxCom, WinSpool, Printers, Variants;

type
    // ����ں� ����Ű�� �ǵ���� �������� Ŭ����...
    // 2002.05.30. ������.
    HsrShorct = class
      sUserID      : Variant; // ����� ID
      sUserName    : Variant; // ����ڸ�
      sRsltText    : Variant; // �ǵ�����
      sShortCut    : Variant; // ����Ű
      sSrhCode     : Variant; // �˻��� �ڵ�
      sExamtype    : Variant; // �˻�����
      sEditid      : Variant; // ������
      sEditName    : Variant; // �����ڸ�
      sEditIP    : Variant; // ������IP
      sEditDate    : Variant; // ������

      // ����Ű - �ǵ���� ���� ��ȸ
      function Select(UserId, ShortCut, ExamType, Locate: String) : Integer;
      // ����Ű - �ǵ���� ���� �Է�
      function Insert(UserId, ShortCut, ExamType, RsltText, Editid, Editip: String) : Integer;
      // ����Ű - �ǵ���� ���� ����
      function Modify(UserId, ShortCut, ExamType, RsltText, Editid, Editip: String) : Integer;
      // ����Ű - �ǵ���� ���� ����
      function Delete(UserId, ShortCut, ExamType: String) : Integer;
    end;


    

    HcmDept2 = class
      sDeptnm      :   Variant; {�μ���}
      sDeptcd      :   Variant; {�μ��ڵ�}
      sLocate      :   Variant; {������ڵ�}
      sLocatenm    :   Variant; {������}
      sDeptnmio    :   Variant; {�μ���io}
      sDeptcdio    :   Variant; {�μ��ڵ�io}
      sLocateio    :   Variant; {������ڵ�io}
      sLocatenmio  :   Variant; {������io}
      sCodename    :   Variant; {�ڵ��}
      sCode        :   Variant; {�ڵ�}
      sWkareacd    :   Variant; {��ũ�����}
      sWkareacdio  :   Variant; {��ũ�����io}

      //�μ���ȸ(CM_DEPT_L)
      function Select(deptnm, deptcd, locate: String): Integer;
      //�μ���ȸ -- 2003.2.28 �̰�ȭ
      function Select1(deptnm, deptcd, locate: String): Integer;

    end;

    //��� Class
    HsrStat = class
      sEqipcode : Variant;      // ����ڵ�
      sEqipname : Variant;      // ����
      sExecid   : Variant;      // �˻���
      sExecname : Variant;      // �˻��ڸ�
      sExamcode : Variant;      // �˻��׸��ڵ�
      sExamname : Variant;      // �˻��׸��
      sDrugCode : Variant;      // ��� ��ǰ �ڵ�
      sDrugName : Variant;      // ��� ��ǰ��
      lWPcnt    : Variant;      // ���� ȯ�ڼ�
      lWEcnt    : Variant;      // ���� �ǽü�
      lOPcnt    : Variant;      // �ܷ� ȯ�ڼ�
      lOEcnt    : Variant;      // �ܷ� �ǽü�

      sDate1    : Variant;      // 1�����
      sDate2    : Variant;      // 2�����
      sDate3    : Variant;      // 3�����
      sDate4    : Variant;      // 4�����
      sDate5    : Variant;      // 5�����
      sDate6    : Variant;      // 6�����
      sDate7    : Variant;      // 7�����
      sDate8    : Variant;      // 8�����
      sDate9    : Variant;      // 9�����
      sDate10   : Variant;      // 10�����
      sDate11   : Variant;      // 11�����
      sDate12   : Variant;      // 12�����

      sDate1_I    : Variant;      // 1�����
      sDate2_I    : Variant;      // 2�����
      sDate3_I    : Variant;      // 3�����
      sDate4_I    : Variant;      // 4�����
      sDate5_I    : Variant;      // 5�����
      sDate6_I    : Variant;      // 6�����
      sDate7_I    : Variant;      // 7�����
      sDate8_I    : Variant;      // 8�����
      sDate9_I    : Variant;      // 9�����
      sDate10_I   : Variant;      // 10�����
      sDate11_I   : Variant;      // 11�����
      sDate12_I   : Variant;      // 12�����

      sDate1_O    : Variant;      // 1�����
      sDate2_O    : Variant;      // 2�����
      sDate3_O    : Variant;      // 3�����
      sDate4_O    : Variant;      // 4�����
      sDate5_O    : Variant;      // 5�����
      sDate6_O    : Variant;      // 6�����
      sDate7_O    : Variant;      // 7�����
      sDate8_O    : Variant;      // 8�����
      sDate9_O    : Variant;      // 9�����
      sDate10_O   : Variant;      // 10�����
      sDate11_O   : Variant;      // 11�����
      sDate12_O   : Variant;      // 12�����

      sSlipChg  : Variant;      // SLIP����...

      sReaddr   : Variant;      // �ǵ���
      sReadname : Variant;      // �ǵ��Ǹ�
      //2003.11.19 �̰�ȭ �߰�
      sReadid   : Variant;      //�ǵ��Ǿ��̵�


      //2003.3.12 �̰�ȭ�߰���. -- ��缱 �����
      ordcode   : Variant;
      ordname   : Variant;
      OutCount  : Variant;
      InCount   : Variant;
      AllCount  : Variant;
      CountAvg  : Variant;

      //2003.5.15 �̰�ȭ�߰� -- �������
      slipname  : Variant;    //slip��
      examname  : Variant;    //�˻��
      out0      : Variant;    //����
      out1      : Variant;    //���հ���
      out1u     : Variant;    //HEC���հ���
      out1g     : Variant;    //HEC�Ϲݰ���
      out51     : Variant;    //��ȯ�⳻��
      out52     : Variant;    //���к񳻰�
      out53     : Variant;    //��ȭ�⳻��
      out54     : Variant;    //���峻��
      out55     : Variant;    //����.���׳���
      out56     : Variant;    //����Ƽ������
      out57     : Variant;    //����
      out58     : Variant;    //��������
      out59     : Variant;    //ȣ��⳻��
      out3      : Variant;    //�ܰ�
      out4      : Variant;    //��οܰ�
      out5      : Variant;    //����ΰ�
      out6      : Variant;    //�Ҿư�
      out7      : Variant;    //�����ܰ�
      out8      : Variant;    //�Ű�ܰ�
      out9      : Variant;    //�����ܰ�
      out10     : Variant;    //���Ű�
      out11     : Variant;    //�Ȱ�
      out12     : Variant;    //�Ǻΰ�
      out13     : Variant;    //�̺����İ�
      out14     : Variant;    //�񴢱��
      out15     : Variant;    //���޽�
      out16     : Variant;    //�Ű��
      out17     : Variant;    //�������а�
      out18     : Variant;    //ġ��
      out19     : Variant;    //�˻��Ƿ�
      out77     : Variant;    //��缱��
      out88     : Variant;    //�Ϲݰ�����
      out89     : Variant;    //����Ŭ����
      out90     : Variant;    //�����������а�
      out91     : Variant;    //��Ȱ���а�
      out92     : Variant;    //��������            2021.03.18. �쳲�� �߰�
      out93     : Variant;    //���氩�������ܰ�  2021.03.18. �쳲�� �߰�
      out94     : Variant;    //�����׹��ܰ�        2021.03.18. �쳲�� �߰�
      out95     : Variant;    //������ܰ�          2021.03.18. �쳲�� �߰�
      out96     : Variant;    //������������      2021.03.18. �쳲�� �߰�
      out97     : Variant;    //�����̽Ŀܰ�        2021.03.18. �쳲�� �߰�
      out98     : Variant;    //���������ܰ�        2021.03.18. �쳲�� �߰�
      out99     : Variant;    //�����ܰ�            2021.03.18. �쳲�� �߰�
      out20     : Variant;    //����ü
      sUCount   : Variant;  //��������
      sGCount   : Variant;  //�ϰǼ���
      sOCount   : Variant;  //�ܷ�����
      sICount   : Variant;  //��������
      sTotal    : Variant;  //�հ�
      sType     : Variant;  //����

      lcnt1     : Variant;
      lcnt2     : Variant;
      lcnt3     : Variant;
      lcnt4     : Variant;
      lcnt5     : Variant;
      lcnt6     : Variant;
      lcnt7     : Variant;
      lcnt8     : Variant;
      lcnt9     : Variant;
      lcnt10     : Variant;
      lcnt11     : Variant;
      lcnt12     : Variant;
      lcnt13     : Variant;
      lcnt14     : Variant;
      lcnt15     : Variant;
      lcnt16     : Variant;
      lcnt17     : Variant;
      lcnt18     : Variant;
      lcnt19     : Variant;
      lcnt20     : Variant;
      lcnt21     : Variant;
      lcnt22     : Variant;
      lcnt23     : Variant;
      lcnt24     : Variant;
      lcnt25     : Variant;
      lcnt26     : Variant;
      lcnt27     : Variant;
      lcnt28     : Variant;
      lcnt29     : Variant;
      lcnt30     : Variant;
      lcnt31     : Variant;
      lcnt32     : Variant;

      sGubun    : Variant;  //��缱���2��, KimDaeYong 2013-07-04
      

      //������
      function eqipcnt(Fromdate,Todate,Roomcode,Examtype: String): Integer;
      //�˻������
      function eusercnt(Fromdate,Todate,Roomcode,Examtype,Stype: String): Integer;
      //�˻����
      function examcnt(Fromdate,Todate,Roomcode,Examtype: String): Integer;
      function examcnt2(Todate,Roomcode,Examtype: String): Integer;
      //�˻����� - �˻��׸� �˻翬���
      function examstat(Fromdate,Todate,Roomcode,Examtype: String): Integer;
      // �˻翬��� - �˻��� / �˻��׸� �˻翬���
      function examstat4(Fromdate,Todate,Roomcode,Examtype: String): Integer;
      //�˻�����2
      function examstat5(Fromdate,Todate,Roomcode,Examtype: String): Integer;

      function examstat2(Fromdate,Todate,Roomcode,Examtype,ExceptRR: String): Integer;
      function examstat3(Fromdate,Todate,Roomcode,Examtype,ExceptRR: String): Integer;
      function statflag(Fromdate,Todate,Roomcode,Examtype,Readdr,Readdr2,StatFlag,Statflag2,Agetype: String): Integer;
      function examstat22(Fromdate,Todate,Roomcode,Examtype,ExceptRR: String): Integer;
      //�ʸ������
      function filmstat(Fromdate,Todate,Roomcode,Examtype: String): Integer;
      //��ǰ�� �����
      function drugstat(Fromdate, Todate, Roomcode, Examtype, Locate: String):Integer;
      //����������
      function deptstat(Fromdate,Todate, Roomcode,Examtype,Locate: String): Integer;
      //�����ǵ� ���
      function ReadStatPerMonth(Fromdate, Examtype, Locate: String):Integer;
      function ReadStatPerMonth2(Fromdate, Todate, Examtype, Locate: String):Integer;
      function ReadStatPerMonth3(Fromdate, Todate, Examtype, Locate: String):Integer;
      //2003.11.19 �̰�ȭ -- �������ǵ����
      function ReadStatPerMonth4(Fromdate, Todate, Examtype, Locate: String):Integer;

      // ���ð�� ���
      function S01Stat(Fromdate, Todate, Examtype: String):Integer;
      function S01Stat2(Gubun,Fromdate, Todate, RoomCode, Clndvcode ,Eqipcode: String):Integer;
      //�⺰�ǵ� ���
      function ReadStatPerYear(Fromdate, Todate, Examtype, Locate: String):Integer;

      //2003.3.12 �̰�ȭ -- �����
      function JutongSel(Fromdate, Todate, Examtype: String): Integer;

      //2003.5.15 �̰�ȭ -- �������
      //function Depttong(Fromdate, Todate, Examtype, Gubun, Flag: String): Integer;
      function Depttong(Fromdate, Todate, Examtype, Gubun, Gubun2 : String): Integer;


    end;
    
    // ���ſ���ȯ�ڵ�� class
    //fff
    HsrOrderv = class         // class ��
      sPatNo    : Variant;     // ȯ�ڹ�ȣ
      sPatName  : Variant;     // ȯ�ڸ�
      sResNo    : Variant;     // �ֹε�Ϲ�ȣ
      sOrdDate  : Variant;     // ó������
      sExamName : Variant;     // �˻��׸��
      sRoomCode : Variant;     // �˻���ڵ�
      sExamStat : Variant;     // �˻����� Status
      sRsvDate  : Variant;     // �����Ͻ�
      sMedDept  : Variant;     // �����
      sOrdDrNm  : Variant;     // ó���ǻ��
      iOrdSeqNo : Variant;     // ó�����
      sExamCode : Variant;     // �˻��׸�
      sOrdDr    : Variant;     // ó���ǻ�

      function PatPastExamList(FromDate, ToDate, Examtype, RoomCode: String): Integer;
      function PatPastExamDelete(PatNo,OrdDate,UserId,Examtype:String;OrdSeqNo:Integer):Integer;

      function InsertPastOrdList(PatNo,ExamCode,OrderDate,DeptCd,DrCd,RoomCode,RsvDate,RcpYn,UserId,Examtype,StudyYn:String):Integer;
    end;

    // �˻�� class
    HsrRoomCode = class         // class ��
      sRoomCode : Variant;      // �˻���ڵ�
      sRoomName : Variant;      // �˻�Ǹ�
      sExamtype : Variant;      // �˻�з�
      sExecYN   : Variant;      // �ܸ������
      sRsvType  : Variant;      // �˻�Ǹ�
      sChifTech : Variant;      // ��� ��缱�� ID
      sChifName : Variant;      // ��� ��缱���
      sTelNo    : Variant;      // ����ó
      sDeptcode : Variant;      // �˻�Ǻμ��ڵ�
      sDeptname : Variant;      // �˻�Ǻμ���
      sErroomcd : Variant;      // ���ް˻��
      sErdept   : Variant;      // �������а�
      sDeldate  : Variant;      // ��������(��뿩��), KimDaeYong 2013-01-15

      function RoomCodeList(Examtype,Rsvtype: String): Integer;
      function RoomCodeFullList(RoomCode,RoomName,Examtype,Locate, ScrRoom:String):Integer;
      function RoomCodeInsert(RoomCode,RoomName,Examtype,ExecYn,RsvType,Roomdept,ChifTech,TelNo,Erroomcd,Erdept,EditId:String):Integer;
      function RoomCodeUpdate(RoomCode,RoomName,Examtype,ExecYn,RsvType,Roomdept,ChifTech,TelNo,Erroomcd,Erdept,EditId:String):Integer;
      function RoomCodeUpdate2(RoomCode, sUseyn, Examtype:String):Integer;   //��뿩��, KimDaeYong 2013-01-15
      function RoomCodeDelete(RoomCode,Examtype:String):Integer;
    end;

    // ��� class
    HsrEquipmentCode = class         // class ��
      sExamType      : Variant;      // �˻�з�
      sEquipmentCode : Variant;      // ����ڵ�
      sEquipmentName : Variant;      // ����
      sRoomCode      : Variant;      // �˻���ڵ�
      sChifTech      : Variant;      // ��� ��缱�� ID
      sChifName      : Variant;      // ��� ��缱���
      sTelNo         : Variant;      // ����ó

      function EquipmentCodeList(ExamType,RoomCode:String):Integer;
//      function EquipmentCodeInsert(ExamType,EquipmentCode,EquipmentName,RoomCode,ChifTech,TelNo:String):Integer;
      function EquipmentCodeInsert(sEqipcode,sEqipname,sRoomcode,sExamtype,sChiftech,sTelno,sEditid: String): Integer;

      function EquipmentCodeUpdate(sEqipcode,sEqipname,sRoomcode,sExamtype,sChiftech,sTelno,sEditid: String): Integer;
      function EquipmentCodeDelete(sEqipcode,sExamtype,sRoomcode: String): Integer;
    end;

    // �˻��׸� class
    HsrExamCode = class         // class��
      sExamCode : Variant;      // �˻��׸��ڵ�
      sExamName : Variant;      // �˻��׸��
      sRgrpCode : Variant;      // �ǵ�Group�ڵ�
      sSlipCode : Variant;      // Slip�ڵ�
      sRoomCode : Variant;      // �˻���ڵ�
      sNormcode : Variant;      // Normal �ǵ�����ڵ�
      sRsvexmyn    : Variant;      // ����˻翩��
      sPortYN   : Variant;      // Portable����
      sERYN     : Variant;      // ���޽ǰ˻翩��
      sOPYN     : Variant;      // ������˻翩��
      sComments : Variant;      // Ư�����
      tAppldate : Variant;      // ������ (��Ȯ��)
      tEnddate  : Variant;      // ������ (��Ȯ��)
      sOrdYN    : Variant;      // ó�氡�ɿ���
      sMedrsvyn : Variant;      // ��������࿩��
      sReadyn   : Variant;      // �ǵ��ʼ�����
      sSpcyn    : Variant;      // Ư������
      sSpcdr    : Variant;      // Ư���ǻ�ID
      sEqipcode : Variant;      // ����ڵ�

      sSugagrp  : Variant;    //�����з���ȣ
      sExamtype : Variant;    //�˻�з�
      sOrdtxtyn : Variant;    //�ӻ�Ұ��ʼ�����
      sExmtxtyn : Variant;    //�ӻ�Ұ��ʼ�����
      sEditid   : Variant;    //������
      sEditip   : Variant;    //������IP
      tEditdate : Variant;    //��������
      tDeldate  : Variant;    //��������
      sExecnt   : Variant;    //�⺻�ǽðǼ�


      iPriceIns : Variant;      // �Ǻ�����
      iPriceGen : Variant;      // �Ϲݼ���

      sSignData   : Variant;            //SONGLIM_THOMA �߰�  (����� ���������� �߰� 2006.12.27)
      sSerialNo    : Variant;
      sSubjectDN   : Variant;



      sPatno    : Variant;
      sPatname  : Variant;
      sOrddate  : Variant;
      sPatsect  : Variant;
      sOrddr    : Variant;
      sOrddrName: Variant;
      sCopycode : Variant;
      sCopyname : Variant;
      sWardno   : Variant;
      sRoomno   : Variant;
      sRcpstat  : Variant;
      sExecdate : Variant;
      lOrdseqno : Variant;
      lQty      : Variant;
      sMeddept  : Variant;
      sResno    : Variant;
      sLstdate  : Variant;
      sMatcode  : Variant;
      sMatname  : Variant;
      sMatqty   : Variant;
      sCopyqty  : Variant;
      sChartYn  : Variant;
      sDispseq  : Variant;
      sRsvPntYn : Variant;
      sRsvCare  : Variant;
      sPatGuide : Variant;
      sPatGuideCd: Variant;
      sStat    : Variant;
      sStatCd    : Variant;
      Rcpstat  : Variant;

      //2003.2.20 �̰�ȭ�߰� -- �������,����
      sBirtdate : Variant;
      sSex      : Variant;

       //2003.2.28 �����߰�
      sReaddate : Variant; //�ǵ�����

      //TAT, KimDaeYong 2011-08-18
      sExectat  : Variant;  //�ǽ�TAT
      sRepttat  : variant;  //����TAT

      //��缱���(��), KimDaeYong 2013-07-01
      sStat2    : Variant;
      sStatCd2  : Variant;

      sFastyn   : Variant;
      sProtectyn: Variant;

      function ExamCodeList(Examtype,ExamCode,ExamName,SortKey:String):Integer;
      function ExamCodeListFtp(Examtype,ExamName,ExamCode:String):Integer;
      function ExamCodeUpdate(Examcode,Slipcode,Ordyn,Rsvexmyn,Medrsvyn,Spcyn,Spcdr,Portyn,Eryn,Opyn,Readyn,Ordtxtyn,Exmtxtyn,Roomcode,Eqipcode,Rgrpcode,Normcode,Comments,Editid,ChartYn,RsvPntYn,RsvCare,PatGuide,Stat,ExamName,Stat2 : String;Execnt,Dispseq: Integer;sFastyn,sProtectyn:String):Integer;
      function ExamCodeGrouping(Cnt:Integer):Integer;

      //2003.3 ���ռ���
      function CopyList(Fromdate, Todate, Patno, Copycode, ExamType: String): Integer;

      function CopyMat(Fromdate, Todate, Patno, Copycode: String): Integer;
      function CopySum(Fromdate, Todate, Patno, Copycode: String): Integer;
      function CopyCnt(Fromdate, Todate, Patno, Copycode: String): Integer;
      function CopyOrder(Patno,Orddate,Flag: String; Ordseqno: Integer): Integer;
      function CopyctList(Examtype: String): Integer;
      function BarcodeSel(Frompatno, Topatno, Fromdate, Todate: String): Integer;
      // ó���׸� ������ȸ
      function GetPrice(OrdCd: String):Integer;

      // 2003.02.28 �����߰�
      function BatchReadList(FromDate, ToDate, ExamType, Slipcd, sType, Patsect, PatNo, sDateType : String) : Integer;
      // 2003.02.28 �����߰�
      function BatchReadSave(ReadDr1, ReadDr2, CfmDr:String;Cnt:Integer):Integer;
      // 2003.03.02 �����߰�
      function BatchReadCfmSave(ReadDr1, ReadDr2, CfmDr:String;Cnt:Integer):Integer;
      //2004.1.2  �̰�ȭ�߰� -- �غκ��� colldate update�ϱ� ����.
      function SpexmUpdate(Cnt:Integer):Integer;
      //2008.07.08 ����� �߰� -- �ڵ� normal �ǵ� Ȯ��
      function BatchNormalCfmSave(Cnt:Integer):Integer;
      //TAT, KimDaeYong 2011.08.18
      function ListTAT(inFromdate, inTodate, inExamcode, inPatsect : string):Integer;


    end;

    // �ǵ�������� class
    HsrRsltCode = class
      sExamtype : Variant;      // �˻�з�
      sRsltCode : Variant;      // �ǵ���������ڵ�
      sRsltText : Variant;      // �ǵ��������
      sRsltKwd  : Variant;      // �ǵ�������� Keyword
      sSrhcode  : Variant;      // �˻����ڵ�
      sSrhname  : Variant;      // �˻����
      sLastrslt : Variant;      // ��п���
      sKeyword  : Variant;      // Keyword

      function RsltKwdList(Examtype,UserID,RsltCode,Keyword:String):Integer;
      //2003.4.10 �̰�ȭ -- �ǵ�������ü�׸�������
      function RsltKwdListAll(Examtype,UserID,RsltCode,Keyword:String):Integer;

      function RsltTextSelect(Examtype,RsltCode:String):Integer;

      //2003.3.18 �̰�ȭ -- �Ұ�,��кι����ΰ���(��ȸ)
      function RsltTextSelect1(Examtype,RsltCode:String):Integer;

      //2003.4.10 �̰�ȭ -- �����ǵ�������ȸ (�Ұ�,���)
      function PRsltTextSelect(Examtype,RsltCode,Userid:String):Integer;

      function RsltCodeInsert(sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,sEditid: String): Integer;
      //2003.3.18 �̰�ȭ -- �Ұ�,��кι����ΰ��� (�Է�)
      function RsltCodeInsert1(sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,sEditid,sLastrslt: String): Integer;

      //2003.4.10 �̰�ȭ -- �����ǵ��Ұ�,����Է�
      function PRsltCodeInsert(sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,sEditid,sLastrslt: String): Integer;

      function RsltCodeUpdate(sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,sEditid: String): Integer;
      //2003.3.18 �̰�ȭ -- �Ұ�,��кι����ΰ���(����)
      function RsltCodeUpdate1(sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,sEditid,sLastrslt: String): Integer;

      //2003.4.10 �̰�ȭ -- ���� �Ұ�,��кι� ����
      function PRsltCodeUpdate(sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,sEditid,sLastrslt: String): Integer;

      function RsltCodeDelete(Examtype,RsltCode:String):Integer;
      //2003.4.12 �̰�ȭ -- �����ǵ�����׸� ����
      function PRsltCodeDelete(Examtype,RsltCode,sUserid:string):Integer;
    end;

    // �˻��� class
    HsrSearchCd = class
      sSrchCode : Variant;      // �˻��ڵ�
      sSrchName : Variant;      // �˻���
      function SearchCodeList(SrchCode,ExamType:String):Integer;
      function SearchCodeInsert(SrchCode,SrchName,UserID,ExamType:String):Integer;
      function SearchCodeUpdate(SrchCode,SrchName,UserID,ExamType:String):Integer;
      function SearchCodeDelete(SrchCode,ExamType:String):Integer;
    end;

    // �Ҹ���� class
    HsrMatCode = class          // class ��
      sMatCode  : Variant;      // �Ҹ�����ڵ�
      sMatName  : Variant;      // �Ҹ�����
      sExamCode : Variant;      // �˻��׸��ڵ�
      sUnit     : Variant;      // ����
      iMatQty   : Variant;      // �Ҹ�
      iAge      : Variant;      // ����
      iDayCnt   : Variant;      // �����ϼ�
      sAgeunit  : Variant;      // ���̴���
      lNormQty  : Variant;
      lAddQty   : Variant;
      lReexQty  : Variant;
      lAdjQty   : Variant;
      lExeCnt   : Variant;
      lExePCnt  : Variant;
      lRexeCnt  : Variant;
      lRexePCnt : Variant;
      lDataCnt  : Variant;
      sChkdate  : Variant;
      sChkyn    : Variant;
      sRoomcode : Variant;
      sRoomname : Variant;
      sEditid   : Variant;
      sEditName : Variant;
      sMaleYn   : Variant;      // ���� ����
      tFromdate : Variant;      // ���� ���� ������
      tTodate   : Variant;      // ���� ���� ������
      lDispseq  : Variant;      // ȭ�� ��¼���
      lEqualCode: Variant;
      tEditdate : Variant;      // ��������
      sComment  : Variant;
      sDataCnt  : Variant;

      sInsintyp : Variant;      //2016.11.11.�ֱٿ��߰�

      lDeldate  : Variant;      // ��������     2004.11.30 ����

      lcnt1     : Variant;
      lcnt2     : Variant;
      lcnt3     : Variant;
      lcnt4     : Variant;
      lcnt5     : Variant;
      lcnt6     : Variant;
      lcnt7     : Variant;
      lcnt8     : Variant;
      lcnt9     : Variant;
      lcnt10     : Variant;
      lcnt11     : Variant;
      lcnt12     : Variant;
      lcnt13     : Variant;
      lcnt14     : Variant;
      lcnt15     : Variant;
      lcnt16     : Variant;
      lcnt17     : Variant;
      lcnt18     : Variant;
      lcnt19     : Variant;
      lcnt20     : Variant;
      lcnt21     : Variant;
      lcnt22     : Variant;
      lcnt23     : Variant;
      lcnt24     : Variant;
      lcnt25     : Variant;
      lcnt26     : Variant;
      lcnt27     : Variant;
      lcnt28     : Variant;
      lcnt29     : Variant;
      lcnt30     : Variant;
      lcnt31     : Variant;
      lcnt32     : Variant;



      // ������������ �̷� ���� ��ȸ.
      function MatAdjHistoryList(Execdate,Roomcode,Matcode:String): Integer;

      function MatCodeList(MatCode,MatName,ExamType:String):Integer;
      function MatCodeList2(MatCode,MatName,ExamType:String):Integer;
      function MatCodeList3(MatCode:String):Integer;
      function MatCodeList4(MatCode,ExamType:String):Integer;
      function MatCodeInsert(MatCode,MatName,ExamType,iUnit,UserID:String;Dispseq:Integer):Integer;
      function MatCodeUpdate(MatCode,MatName,ExamType,iUnit,UserID:String;Dispseq:Integer):Integer;
      function MatCodeDelete(MatCode,ExamType:String):Integer;
      function ExamMatList(ExamCode,Examtype:String):Integer;
      function ExamMatList2(ExamCode,MaleYn:String;DayCnt:Integer):Integer;
      function ExamMatDelete(ExamCode,MatCode,Examtype:String;DayCnt:Integer;FromDate,Todate:String):Integer;
      function ExamMatInsert(ExamCode,MatCode,Examtype,UserID,UserIP,AgeUnit,MatQty,MaleYn:String;DayCnt,Age:Integer;FromDate,Todate: String):Integer;
      function ExamMatUpdate(ExamCode,MatCode,Examtype,UserID,UserIP,AgeUnit,MatQty,MaleYn:String;DayCnt,Age:Integer;FromDate,Todate: String):Integer;
      function DayMatList(ExecDate,RoomCode: String): Integer;
      function DayMatCnt(ExecDate,Examtype: String): Integer;
      function MatAdjUpdate(ExecDate,RoomCode,MatCode,userid,userip,ADJQTY,Comments,sFlag: String): Integer;
      function DayMatM(ExecDate,Examtype,userid,userip: String): Integer;
      function DayMatD(ExecDate,Examtype,userid,userip: String): Integer;
      function MatChk(Chkdate,Examtype: String): Integer;
      function MatChkM(Chkdate,Examtype,Roomcode,Chkyn,USERID: String): Integer;

      function MonMatList(ExecDate,RoomCode,Examtype: String): Integer;    // 2005.02.26 ����
      function YearMatList(ExecDate,RoomCode,Examtype: String): Integer;    // 2005.02.26 ����
    end;

    // Schedule Type class
    HsrScheduleCode = class
      sSchdType : Variant;      // ������ Ÿ��
      sExamType : Variant;      // �˻�з�
      sSchdTime : Variant;      // �ð���
      iSchdMon  : Variant;      // ������ ���� ����
      iSchdTue  : Variant;      // ȭ���� ���� ����
      iSchdWed  : Variant;      // ������ ���� ����
      iSchdThu  : Variant;      // ����� ���� ����
      iSchdFri  : Variant;      // �ݿ��� ���� ����
      iSchdSat  : Variant;      // ����� ���� ����
      iSchdSun  : Variant;      // �Ͽ��� ���� ����
      function ScheduleCodeList(Examtype:String):Integer;
      function ScheduleCodeSelect(SchdType,Examtype:String):Integer;
      function ScheduleCodeInsert(UserID:String) {(SchdType,Examtype,SchdTime:String;SchdMon,SchdTue,
                   SchdWed,SchdThu,SchdFri,SchdSat,SchdSun:Integer) } :Integer;
      function ScheduleCodeUpdate(SchdType,Examtype,SchdTime:String;SchdMon,SchdTue,
                   SchdWed,SchdThu,SchdFri,SchdSat,SchdSun:Integer):Integer;
      function ScheduleCodeDelete(SchdType,SchdTime,Examtype:String):Integer;
    end;

    // Schedule class
    HsrSchedule = class
      sRoomCode : Variant;      // �˻���ڵ�
      sRsvDate  : Variant;      // �����Ͻ�
      iRsvTot   : Variant;      // ��������
      iRsvCnt   : Variant;      // �����ο�
      sExamType : Variant;
      sRemark   : Variant;

      sFromdate : Variant;
      sTodate   : Variant;
      sReason   : Variant;
      sGubun    : Variant;

      function ScheduleMake(RoomCode,RsvDate,SchdType,ExamType:String):Integer;
      function MonthScheduleList(RoomCode,RsvDate:String):Integer;
      function DayScheduleList(RoomCode,RsvDate:String):Integer;
      function ScheduleInsert(RoomCode,RsvDate:String;RsvTot:Integer):Integer;

      function SchcmtList(fDate,tDate,Roomcode,ExamType:String):Integer;

      // single update
      function ScheduleUpdate(RoomCode,RsvDate:String;RsvTot:Integer):Integer;
      // multi update
      function ScheduleUpdate2(RoomCode:String;RsvTot:Integer):Integer;
      function ScheduleDelete(RoomCode,RsvDate:String):Integer;
      function SchcmtInsert(Cnt:Integer):Integer;
      //2003.2.14 �̰�ȭ -- ���������� ����
      function MonSchDel(RoomCode,RsvDate:String):Integer;
      //2003.3.5 ����-- ������Ÿ�� �Է�
      function RsvSchIns(RoomCode,RsvDate:String;RsvCnt : Integer):Integer;

      function DroffSel(iDrid,iMeddate:String):Integer;
    end;

    // ȯ������ class
    HPatInfo = class
      sPatNo    : Variant;     // ȯ�ڹ�ȣ
      sPatName  : Variant;     // ȯ�ڸ�

      sPatNameEng : Variant;   // ���� ȯ�ڸ�. ��缱 �������̽��� ���� �߰�.
                               // 2002.03.21. ������
      sSex      : Variant;     // ����
      sResNo    : Variant;     // �ֹι�ȣ
      sResNo1   : Variant;     // �ֹι�ȣ(���ڸ�)
      sResNo2   : Variant;     // �ֹι�ȣ(���ڸ�)
      sBirth    : Variant;     // �������(yyyymmdd)
      sMedDept  : Variant;     // �����
      sWardno   : Variant;     // ����
      sPkgName  : Variant;     // �Ű��׸�
      sTelno1   : Variant;     // ����ó1
      sTelno2   : Variant;     // ����ó2
      sPatIO    : Variant;     // �ܷ��Կ�
      sPattype  : Variant;     // ȯ������
      sPattypenm: Variant;     // ȯ��������
      sAdmdate  : Variant;     //
      sDschdate : Variant;     // ����ȯ�������

      sLastdate : Variant;     // �ֱٳ�����
      sBckstat  : Variant;     // ����ɻ� �÷���
      sRoomno   : Variant;     // ����ȯ�� ����

      // 2003.1.2 �̰�ȭ �߰���.
      sOrdcode  : Variant;     // ó���ڵ�
      sOrdname  : Variant;     // ó���
      sCharnm   : Variant;     // ó���ǻ��
      sOrddate  : Variant;     // ó������
      sRcpstat  : Variant;     // ��������
      sExamroom : Variant;     // �˻��
      sOrdseqno : Variant;     // ó�����

      // 2003.2.7 �̰�ȭ�߰�
      sComments  : Variant;    // comment

      // 2003.2.21 �̰�ȭ�߰�
      sPatsect   : Variant;

      // 2007.05.14 ����� �߰� (���� ��û���� �������� �߰�)
      sTypecd    : Variant;
      sTypecdnm  : Variant;

      //KimDaeYong add
      sNaksang   : Variant;
      //color�۾�, KimDaeYong 2011-05-19
      sDiagcd    : Variant;
      sMetfdt    : Variant;
      sMetfnm    : Variant;
      sCreatdt   : Variant;
      sCreat     : Variant;
      sCreatpatno    : Variant;
      sCreatpatname  : Variant;

      //2021.06.16. �쳲�� �߰� (ct �˻� �� �˻� �� �ֻ� ��ȸ ��� �߰�)
      sTrdate     : Variant;
      sTrpatno    : Variant;
      sTrpatname  : Variant;
      sTrmirname  : Variant;
      sTrbonname  : Variant;
      sTrcolname  : Variant;
      sTrrosname  : Variant;


      // ���ó �ڵ�, ����� 2015.07.01(���������Ľ�.������ ��û���� �߰�)
      sCustcd    : Variant;
      //2022.02.21. �쳲�� �߰�. (its ������ Ȯ���� ���� ���ǹ�ȣ�� �߰��� �ҷ���)
      sPassport  : Variant;



      sFstdate   : Variant;
      sExecdate  : Variant;
      //sOrdcode   : Variant;
      sPretrt    : Variant;
      //sOrdname   : Variant;

      // ȯ�� ��� ��ȸ...
      function PatInfoList(KeyStr:String):Integer;
      function PatInfoListPerPatsect(KeyStr,Patsect:String):Integer;

      //2003.6.5 �̰�ȭ -- �ֹι�ȣ�� ��ȸ
      function PatInfoResno(Flag, Resno1, Resno2:String):Integer;

      function PatInfoList2(patno:String):Integer;
      function AcpOrdList(OrdDate,PatSect,Examtype,RoomCd,SelType:String):Integer;
      function PhyOrdList(OrdDate,Flag:String):Integer;
      function PattypeSel(Patno, Orddate, Patsect: String; Ordseqno: Integer): Integer;
      // 2003.1.2 �̰�ȭ ==>  ó�����ں� ȯ���ϰ�����
      function AcpPatOrderList(frOrdDate,toOrdDate,Examtype,RoomCd,Gubun:String):Integer;
      //2003.7.10 �̰�ȭ -- ȯ������ġ����
      function PatWardno(patno:String): Integer;
      function PatInfoNaksang(inPatno:String):Integer;   //����, KimDaeYong 2011-05-04
      function AcpOrdSelect(inPatno, inOrddate:String):Integer;     //color�۾�, KimDaeYong 2011-05-25
      function AcpOrdSelect2(inOrddate:String):Integer;     //WooNamKyu 2021-06-02

    end;

    // ����� ���� class
    HUserInfo = class
      sUserID   : Variant;     // ����� ID
      sUserName : Variant;     // ����ڸ�
      sDeptName : Variant;     // �μ���
      sDeptnm   : Variant;
      sDeptcd   : Variant;
      sGrpid    : Variant;
      sGrpname  : Variant;
      sMastGrpid: Variant;
      sUselevel : Variant;
      sCswbtype : Variant;
      sOptcol1  : Variant;
      sOptcol2  : Variant;
      sOptcol3  : Variant;
      sTypename : Variant;
      sFilmyn   : Variant;
      sBaryn    : Variant;
      sProcyn   : Variant;
      sNamecdyn : Variant;
      sAcptyn   : Variant;
      sDocrsvyn : Variant;
      sFilmsave : Variant;
      sChartyn  : Variant;
      sDatayn   : Variant;

      function UserInfoList(KeyStr:String):Integer;
      function GetLocalValue(userid: String):Integer;
      function GetOptionValue(examtype:String):Integer;
      function GetUserVal(userid,password:String): Integer;
      function GetDept(deptcd,locate:String):Integer;
      // �ϸ��� ������ ���� ����� ��� ��ȸ
      function GetRightList(userid,password:String):Integer;
    end;

    // ���� class
    HWardInfo = class
      sWardNo   : Variant;     // ���ǹ�ȣ
      sWardName : Variant;     // ���Ǹ�
      function WardList(seltype, locate: String):Integer;
      //2003.3.10 �̰�ȭ -- �ʸ������ǿ��� ����� �μ��ڵ�(����,�����)
      function RadPList(deptcd, locate: String):Integer;
    end;

    // �Ű� Class
    HsrPkg = class             // class ��
      sPkgCode  : Variant;     // �Ű��׸��ڵ�
      sPkgName  : Variant;     // �Ű��׸��
      sRcpDate  : Variant;     // �Ű�����
      sAmPmType : Variant;     // ����/���� ����
      sBlngCode : Variant;     // �Ҽ�ó�ڵ�
      sBlngName : Variant;     // �Ҽ�ó��
      iRcpCnt   : Variant;     // �Ű��ο�
      function OrdPkgList(OrdDate,ExamType:String):Integer;
      function ExePkgList(ExecDate,ExamType:String):Integer;
      function ScheduleList(RcpDate:String):Integer;
    end;

    // �˻�Ǻ� ����׸�� ��ȸ
    HsrWait = class
      sWaitCount : Variant;
      function RoomWaitCount(Roomcode:String):integer;
    end;

    // �˻� class
    HsrExam = class
      sPatNo    : Variant;     // ȯ�ڹ�ȣ
      sPatName  : Variant;     // ȯ�ڸ�
      sSex      : Variant;     // ����
//    sResNo    : Variant;     // �ֹε�Ϲ�ȣ
      sResNo1   : Variant;     // �ֹε�Ϲ�ȣ
      sResNo2   : Variant;     // �ֹε�Ϲ�ȣ
      sPatSect  : Variant;     // ȯ�ڱ���
      sOrdDate  : Variant;     // ó������
      sOrdTime  : Variant;     // ó��ð�
      sHopeDate : Variant;     // �˻��������
      sRsvDate  : Variant;     // �����Ͻ�
      sAcptDate : Variant;     // �����Ͻ�
      sExecDate : Variant;     // �ǽ��Ͻ�
      sReadDate : Variant;     // �ǵ��Ͻ�
      sCfmDate  : Variant;     // Ȯ���Ͻ�
      sChgDate  : Variant;     // Ȯ�μ����Ͻ�
      sAdmDate  : Variant;     // ���������Ͻ�
      sRcpDate  : Variant;     // �Ű������Ͻ�
      sOutDate  : Variant;     // �����Ͻ�
      sFstDate  : Variant;     // �����Կ��Ͻ�
      sLstDate  : Variant;     // �ֱ��Կ��Ͻ�
//      sTrnsDate : Variant;     // �ļ�/�����Ͻ�
      sExamCode : Variant;     // �˻��׸�
      sExamName : Variant;     // �˻��׸��
      sRgrpCode : Variant;     // GROUP �ڵ�
      sPkgCode  : Variant;     // �Ű��׸�
      sPkgName  : Variant;     // �Ű��׸��
      sRsltCode : Variant;     // �ǵ���������ڵ�
      sRsltText : Variant;     // �ǵ��������
      sExamStat : Variant;     // �˻����� Status
      sAccNo    : Variant;

//999
      sExamStatnm : Variant;     // �˻����� Status��


      sRcpYN    : Variant;     // ��������
      sRoomCode : Variant;     // �˻���ڵ�
      sRoomChg  : Variant;     // ����˻���ڵ�
      sRoomName : Variant;     // �˻�Ǹ�
      sEqipcode : Variant;     // �˻�����ڵ�
      sMedDept  : Variant;     // �����
      sWardNo   : Variant;     // ����
      sOrdSite  : Variant;     // ó��߻���
      sOutDept  : Variant;     // ����μ�

      sOrdDr    : Variant;     // ó���ǻ�
      sOrdDrNm  : Variant;     // ó���ǻ��
      sChaDr    : Variant;     // ��ġ�ǻ�
      sChaDrNm  : Variant;     // ��ġ�ǻ��

      sReadDr   : Variant;     // �ǵ��ǻ�
      sReadDrNm : Variant;     // �ǵ��ǻ��
      sCfmDr    : Variant;     // Ȯ���ǻ�
      sCfmDrNm  : Variant;     // Ȯ���ǻ��
      iOrdSeqNo : Variant;     // ó�����
      iFilmNo   : Variant;     // �Ű˰��Լ���
      sExamTech : Variant;     // �˻������
      sExTechNm : Variant;     // �˻�������
      sExamDr   : Variant;     // �˻�����ǻ�
      sExamDrNm : Variant;     // �˻�����ǻ��
      sReadDr1  : Variant;     // ���ǵ��ǻ�
      sRdDr1Nm  : Variant;     // ���ǵ��ǻ��
      sReadDr2  : Variant;     // ���ǵ��ǻ�
      sRdDr2Nm  : Variant;     // ���ǵ��ǻ��

      sReadDr4  : Variant;     // �ǵ��ǻ� 4
      sRdDr4Nm  : Variant;     // �ǵ��ǻ� 4�� ��

      sExamCnt  : Variant;     // ��˿���
      sNormYn   : Variant;     // ���󿩺�
      sComments : Variant;     // Ư�����
      iExecCnt  : Variant;     // �ǽðǼ�
      iCfmCnt   : Variant;     // ����Ǽ�
      iNormYCnt : Variant;     // ����Ǽ�
      iNormNCnt : Variant;     // ������Ǽ�
      sFstPat   : Variant;     // ����/����/�ļ�/����
      sExecYn   : Variant;     // �˻�� �ܸ�� ����
      sRsvType  : Variant;     // ��������
      sSOrdYN   : Variant;     // 2�� Order ����
      iSOrdCnt  : Variant;     // 2�� Order ����

      sAcrcdYn  : Variant;     // ACR CODE ��뿩��. ��缱 = 'Y' ��Ÿ Ư���˻�� 'N'
      sSiteCode : Variant;     // ����ڵ� - ��缱 ACR �ڵ� ����
      sSrchCode : Variant;     // �˻��ڵ� - ��缱�� ���, �����ڵ�� ���.
      sSrchName : Variant;     // �˻��� �ڵ��
      sSiteName : Variant;     // ����

      sErYn     : Variant;     // ���޿���
      sPortYn   : Variant;     // PortYn����
      sReexwdt  : Variant;     //repeat ���� ��¥
      sReexdate : Variant;     //repeat �ǽ� ��¥
      sRoomNo   : Variant;
      sWriterid : Variant;     // ����
      sWriternm : Variant;     // ����

      sDiagCode : Variant;
      sDiagname : Variant;
      sOrdtext  : Variant;
      sOrdrmk   : Variant;
      sExamtext : Variant;

      sCasteNm  : Variant;
      sForceNm  : Variant;
      sSolgerNo : Variant;

      iReadseq  : Variant;
      sNormCode : Variant;

      iSrchCnt  : Variant;
      sInterest : Variant;

      iIntCaseCnt: Variant;
      sIntDrId  : Variant;
      sIntDrNm  : Variant;
      icount    : Variant;

      sSlipcode : Variant;
      sSlipname : Variant;

      sBirth    : Variant;
      sOrdName  : Variant;
      sDrName1  : Variant;
      sDrName2  : Variant;
      sDrName3  : Variant;
      sDrName4  : Variant;
      sComment  : Variant;
      sTelno    : Variant;
      sAddress  : Variant;


      lOrdseqno : Variant;

      sSaveid   : Variant;

      sPhoneno1 : Variant;
      sPhoneno2 : Variant;

      sExecid   : Variant;
      sExecnm   : Variant;

      sCancelRsvDate  : Variant;     // �����Ͻ�(������ҽ� ������ �Ѱ��� ����)
      iDayCnt   : Variant;
      sExamtype : Variant;

      sBirdate  : Variant;      //�������
      sRemark   : Variant;      //

      sOrdkindnm: Variant;      // ó������
      sExecidname: Variant;
      sReaddr1name: Variant;
      sReaddr2name: Variant;
      sCfmdrname: Variant;
      sSordcnt  : Variant;
      sOrddrname: Variant;
      sDschdate : Variant;
      sRepemark : Variant;
      sSrhcode  : Variant;
      sSrhname  : Variant;
      sImpldate : Variant;
      sCompany  : Variant;
      sPhysic   : Variant;
      sPhysicnm : Variant;
      sGenetype : Variant;
      sGenmodel : Variant;
      sLeada    : Variant;
      sLeadv    : Variant;
      sLeadtav  : Variant;
      sLeadtvv  : Variant;
      sLeadtams : Variant;
      sLeadtvms : Variant;
      sWaveap   : Variant;
      sWavear   : Variant;
      sImpea    : Variant;
      sImpev    : Variant;
      sNextfudt : Variant;
      sTelno1   : Variant;
      sTelno2   : Variant;
      sTelno3   : Variant;
      sIndicate : Variant;

      //
      sRecdate  : Variant;
      sPacetype : Variant;
      sPacerate : Variant;
      sOutputav : Variant;
      sOutputam : Variant;
      sOutputvv : Variant;
      sOutputvm : Variant;
      sSensitia : Variant;
      sSensitiv : Variant;
      sAvdelay  : Variant;
      sOthers   : Variant;
      sThreshav : Variant;
      sThresham : Variant;
      sThreshvv : Variant;
      sThreshvm : Variant;
      sMagrate  : Variant;

      sFudate   : Variant;
      sEpsddate : Variant;
      sEpsdtype : Variant;
      sAvgcl    : Variant;
      sDuration : Variant;
      sTherapy  : Variant;
      sEnergy   : Variant;
      sChrgtime : Variant;
      sBattvolt : Variant;
      sPosttxrh : Variant;
      sNotes    : Variant;
      sPatsite  : Variant;
      sGuardNum : Variant;

      sProcstat : Variant;

      //2003.3.25 �̰�ȭ�߰�
      sLastrslt : Variant;

      //2002.12.5 �̰�ȭ�߰�
      sOpdate   : Variant;  // ��������
      sOpcode   : Variant;  // �����ڵ�
      sOpname   : Variant;  // ������
      sReopyn   : Variant;  // ���������
      sOpstm    : Variant;  // �������۽ð�
      sEtimttm  : Variant;  // ��������ҿ�ð�
      sCombinyn : Variant;  // Combin��������
      sOproom   : Variant;  // ������
      sOpdr     : Variant;  // ������

      //2003.4.1 �̰�ȭ �߰� -- �ǽ�����,Ű,������
      sExectime : Variant;
      sWeight   : Variant;
      sHeight   : Variant;

      // ���� �߰� 2003.1.21
      sRsvCare  : Variant;  // ����� ���ǻ���
      sRsvPntYn : Variant;  // ������ ��¿���

      // 2003.02.26 ���� �߰�
      sExecName : Variant;  // �ǽ��� �̸�
      sBxYn     : Variant;  // Bx ����
      sCloYn    : Variant;  //CLO ����
      sMedicine : Variant;  // ��ǰ��ġ(Midazolam��뷮)
      sMedicine2: Variant;  // ��ǰ��ġ(Pofol��뷮)
      sReMedicine : Variant;  // ��ǰ��ġ(Midazolam��ⷮ)
      sReMedicine2: Variant;  // ��ǰ��ġ(Pofol��ⷮ)

      // 2003.4.19 �̰�ȭ -- �ӻ�Ұ�
      sOrddesc  : Variant;

      //2003.6.20 �̰�ȭ -- �뷮
      sQty      : Variant;

      //2003.12.16 �̰�ȭ
      sEditid   : Variant;
      sEditip   : Variant;
      sEditdate : Variant;
      sCnt      : Variant;
      sDcyn     : Variant;

      sSignData   : Variant;            //SONGLIM_THOMA �߰�
      sSerialNo    : Variant;
      sSubjectDN   : Variant;

      sSpcdryn     : Variant;       //�������Ῡ��, 2008-10-01 KimDaeYong
//      sAccno       : Variant;       //ACCNO�߰�, KimDaeYong 2008-11-10

      //color�۾�, KimDaeYong 2011-05-19
      sDiagcd    : Variant;
      sCompyn    : Variant;
      sBowel     : Variant;
      sCecumyn   : Variant;
      sAntconvyn : Variant;        //2021.05.06.�쳲�� �߰� (������ ��뿩��)

      sSpcrddryn : Variant;        // �����ǵ�����, 2013.12.20 �����
      sSisulyn   : Variant;        // �ü��˻����뿩��, 2015.4.14 �����

      //�������, KimSongJu
      sMedicine3  : Variant;       // ����Ż ��뷮, 2016.01.11
      sReMedicine3: Variant;       // ����Ż ��ⷮ, 2016.01.11

      //�������, �ֱٿ�
      sMedicine4  : Variant;       // ������ ��뷮, 2016.07.22
      sReMedicine4: Variant;       // ������ ��ⷮ, 2016.07.22

      //sChadr      : Variant;
      sChadrname  : Variant;

      //2003.02.26 ���� �߰���
      function CArmExecute(sType,PatNo,OrdDate,ExecId :String;OrdSeqNo:Integer):Integer;


      // �̰�ȭ ���� 2002.12.9 --> �˻籸���׸� �߰� (�Ϲ�,Ư��,CT,MRI,SONO,Angio)
      function ExamOrderList(FromDate,ToDate,PatSect,RoomCode,Examtype,Option,OptionMobile,CurrentLoc,Examchk1,Examchk2,Examchk3,Examchk4,Examchk5,Examchk6,Examchk7:String):Integer;
      function RsvPatList(RsvDate,ExamType,RoomCd:String):Integer;
      function TargetDataList(PatNo,ExamType:String):Integer;
      function RsvAcpList(RoomCode,FromDate,ToDate,Flag,Examtype,Meddept,Wardno,Patno,Examcode,Patsect:String):Integer;
      function ExamRsltSelect(PatNo,Orddate:String;Ordseqno:Integer):Integer;
      function ExamRsltSearch(FromDate,ToDate,SiteCode,SrchCode,ExamType,Flag:String):Integer;
      function ExamHistoryList(PatNo,ExamType:String):Integer;
      function PhyExamOrdList(FromDate,ToDate,PkgCode,ExamType,SortKey:String):Integer;
      function PhyExamHisList(PatNo,ExamType:String):Integer;
      function PhyExamRsltSel(PatNo,OrdDate:String;OrdSeqNo:Integer):Integer;
      function FilmStatusCheck(PatNo,ExamType:String):Integer;
      function PatTreadList(Examtype, Patno, Orddate, FLAG: String; OrdSeqNo:Integer): Integer;
      // 2003.2.25 �̰�ȭ -- �������� �ǵ��Է¸���Ʈ��ȸ
      function PatTreadList1(Examtype, Patno, Orddate, FLAG: String; OrdSeqNo:Integer): Integer;
      // 2003.3.19 �̰�ȭ -- �������� �ǵ��Է¸���Ʈ��ȸ(�˻籸�к��� ��ȸ)
      function PatTreadList2(Examtype, Patno, Orddate, FLAG, Examcode: String; OrdSeqNo:Integer): Integer;
      // 2003.3.26 �̰�ȭ -- ȯ�ڰ˻纰�� �ǵ�������ȸ
      function PatTreadList3(Examtype, Patno, Orddate, FLAG, Examcode: String; OrdSeqNo:Integer): Integer;
      // 2004.4.17 �̰�ȭ -- �Ϲ�+Ư���˻縸 �ڷ���ȸ
      function PatTreadList4(Examtype, Patno, Orddate, FLAG, Examcode: String; OrdSeqNo:Integer): Integer;
      // 2004.4.18 �̰�ȭ -- �ǵ�����ٿ�ε�
      function PatTreadList5(Examtype, Frdate, Todate, Orddate, FLAG, Examcode: String; OrdSeqNo:Integer): Integer;


      function PatCfmList(Examtype, Patno, Orddate: String; OrdSeqNo:Integer): Integer;
      // 2003.2.28 �̰�ȭ -- ��������
      function PatCfmList1(Examtype, Patno, Orddate: String; OrdSeqNo:Integer): Integer;
      // 2003.3.25 �̰�ȭ -- �Ұ�,��� �����Ͽ� ó��
      function PatCfmList2(Examtype, Patno, Orddate, Examcode: String; OrdSeqNo:Integer): Integer;
      // 2003.4.17 �̰�ȭ -- �ǵ����ڷ��� �Ϲ�+Ư���˻縸��ȸ
      function PatCfmList3(Examtype, Patno, Orddate, Examcode: String; OrdSeqNo:Integer): Integer;

      // 2003.4.1 �̰�ȭ -- ȯ�ں� Ű, ������ ��������
      function PatHWlst(Patno: String): Integer;

      function PatExamList(Examtype, Patno, Orddate, Su, Scrroom : String; OrdSeqNo:Integer): Integer;
      // mdexmort.procstat = 'A' �� ����....-.-?
      function UpdateRsvDatePre(Patno: String): Integer;

      // ���� �� ������ �Ϸ��� �׸��� dc���θ� üũ�Ѵ�..
      function DCCheckPre(DataCnt:Integer): Integer;

      function PastExamList(Examtype, Patno: String): Integer;
      function PastExamSel(Patno, Orddate: String; OrdSeqNo:Integer): Integer;
      function GetExamInfo(Patno, Orddate: String; OrdSeqNo: Integer): Integer;
      function UpdateExamtext(Patno, Orddate: String; OrdSeqNo: Integer; Userid,Examtext : String): Integer;

      // ���κ��� ���ܹ�缱���� ���, �˻�Ư����� ����...��
      // ȯ���� ó������ ������ ��缱�� �˻��׸� ���ؼ�
      // �����ϰ� �ݿ��ȴ�...
      function UpdateExamtextGR(Patno, Orddate: String; OrdSeqNo: Integer; Userid,Examtext : String): Integer;

      function WaitList(AcptDate,Examtype:string):integer;
      function WaitPatList(AcptDate,RoomCode:string):integer;
      function WaitPatListUpdate(DataCnt: Integer):integer;
      function GetSlipcd: Integer;
      function GetSlipcd2(slipcd: String): Integer;
      // interesting case��ȸ
      function ListIntrs(Fromdate, Todate, ReadDr: String): Integer;
      // ��� interesting case��� ��ȸ...�־��� �Ⱓ����...
      function ListIntrs2(Fromdate, Todate, ReadDr, Examtype: String): Integer;

      function SelIntrs(Userid, Orddate, Patno: String; Ordseqno: Integer): Integer;
      function UpdIntrs(PatNo, OrdDate, Comment, Userid, Userip: String; OrdSeqNo: Integer): Integer;
      function InsIntrs(PatNo, OrdDate, Comment, Userid, Userip, Examtype: String; OrdSeqNo: Integer): Integer;
      function DelIntrs(PatNo, OrdDate, Userid: String; OrdSeqNo: Integer): Integer;

      //2003.12.18 �̰�ȭ -- ��Ź�˻� DCó��
      function Dcordproc(Userid:String;Cnt:Integer):Integer;

      //2004.1.6  �̰�ȭ -- �ʸ����� DCó��
      function Dcordproc1(Userid:String;Cnt:Integer):Integer;


      function SaveFilm(PatNo, OrdDate, Userid: String; OrdSeqNo: Integer): Integer;
      function SelSrch(Patno, Orddate, Examtype: String; Ordseqno: Integer): Integer;
      function ImpldtSel(Patno, Fromdate, Todate, Impltype, Fudate: String): Integer;
      function ImpldtIns(Patno, Impltype, Impldate, Indication, Company, Genetype, Nextfudt, Physician, Genmodel, Leada, Leadv, Leadtav, Leadtams, Leadtvv, Leadtvms, Waveap, Wavear, Impea, Impev, Editid, Editip: String): Integer;
      function ImpldtUpd(Patno, Impltype, Impldate, Indication, Company, Genetype, Nextfudt, Physician, Genmodel, Leada, Leadv, Leadtav, Leadtams, Leadtvv, Leadtvms, Waveap, Wavear, Impea, Impev, Editid, Editip: String): Integer;
      function ImpldtDel(Patno, Impltype, Impldate: String): Integer;
      function PacedtSel(Patno, Impltype, Impldate: String): Integer;
      function PacedtIns(Patno, Impldate, Impltype, Recdate, Pacetype, Pacerate, Outputav, Outputam, Outputvv, Outputvm, Sensitia, Sensitiv, Avdelay, Others, Threshav, Thresham,Threshvv,Threshvm, Waveap, Wavear, Impea, Impev, Remark, Magrate, Nextfudt, Editid, Editip: String): Integer;
      function PacedtUpd(Patno, Impldate, Impltype, Recdate, Pacetype, Pacerate, Outputav, Outputam, Outputvv, Outputvm, Sensitia, Sensitiv, Avdelay, Others, Threshav, Thresham,Threshvv,Threshvm, Waveap, Wavear, Impea, Impev, Remark, Magrate, Nextfudt, Editid, Editip: String): Integer;
      function PacedtDel(Patno, Impldate, Impltype, Recdate: String): Integer;
      function EpsddtSel(Patno, Impldate, Fromdate, Todate: String): Integer;
      function EpsddtIns(Patno, Impldate, Fudate, Epsddate, Epsdtype, Avgcl, Duration, Therapy, Energy, Chrgtime, Battvolt, Posttxrh, Notes, Editid, Editip: String): Integer;
      function EpsddtUpd(Patno, Impldate, Fudate, Epsddate, Epsdtype, Avgcl, Duration, Therapy, Energy, Chrgtime, Battvolt, Posttxrh, Notes, Editid, Editip: String): Integer;
      function EpsddtDel(Patno, Impldate, Fudate, Epsddate: String): Integer;
      function PastExamSave(Patno,sOrddate,sOrdseq,sExamcode,sResultTxt,sCfmdr,sReadDr1,sReadDr2,sFlag,sWriterid: String): Integer;
      //2002.11.27 �̰�ȭ �߰��� -- ���ǰ˻�
      function ExamIfsel(Frdate,Todate,Ipatsect1,Ipatsect2,Ichkcode1,Ichkcode2,Ichkcode3,Examtype: String):Integer;
      //2003.11.13 �̰�ȭ �߰��� -- Modality�� ��ȸ
      function ExamModality(Frdate,Todate,Examtype,Modality: String):Integer;
      //2002.12.4 �̰�ȭ �߰���  -- �索��Ŭ���п��� �����consult������ȸ
      function consultsel(Frdate,Todate: String):Integer;


      //2003.4.2 �̰�ȭ �߰� -- �������ҽ� ���Ӱ˻� ��ȸ
      //2003.10.29 �̰�ȭ ���� -- examcd5�߰���
      function Contisel(Frdate, Todate, examtype, examcd1, examcd2, examcd3, examcd4, examcd5: String):Integer;
      //2003.12.16 �̰�ȭ -- DCó����ȸȭ�鿡�� ��ȸ
      function Dcsel(Patno, Frdate, Todate, examtype , gubun: String):Integer;
      //2003.2.24 -- examtype�߰�
      function Portablesel(Frdate,Todate,examtype: String):Integer;
      //2002.12.5 �̰�ȭ �߰���
      function OplstIfsel(Frdate, Todate, Itype: String):Integer;
      //2003.6.16 �̰�ȭ -- �������� �þ���ȸ
      function PatParmsel(Patno, examtype : String): Integer;
      // 2015.9.17 �����
      function UpdateExamdate(Patno, Orddate, Date1,Date2, Patsect, Userid,Userip : String; OrdSeqNo: Integer): Integer;

    end;

    // �˻翹�� class
    HsrReserve = class(HsrExam)
      //2003.4.14 �̰�ȭ
      sOrdtime: Variant;
      //2003.4.21 �̰�ȭ -- remark���ٷ�
      sRemark_rep: Variant;

      //������һ���, KimDaeYong 2011-11-15
      sRsvcncont  : Variant;

      function ReserveDataUpdate(Cnt:Integer):Integer;
      function ReserveDataUpdate1(Cnt:Integer):Integer;
      function ReserveDataUpdateCheck(Cnt:Integer):Boolean;

      function WardOrdListToReserve(OrdDate_from,Orddate_to,WardNo,ExamType, Roomcode,ExceptExecuted:String):Integer;
      function ReserveHistoryList(FromDate,ToDate,RoomCode,ExamCode,Examtype,Examstat:String):Integer;
      // ���������� �׸�
      function ReserveHistorycCount(Rsvdate,RoomCode,ExamCode,Examtype:String):Integer;

      function RepeatExec(Patno,Orddate,RoomCode,Flag:string;OrdSeqNo:Integer):Integer;
      function RepeatUpdate(OrdSeqNo:integer;PatNo,OrdDate,RoomCode,RsvDate,Flag,Remark:string):Integer;
    end;

    // �˻����� class
    HsrAccept = class(HsrExam)
      function AcceptDataUpdate(Cnt:Integer; Userid: String):Integer;
      function AcceptExecDataUpdate(Cnt: Integer; Userid, REPEMARK,NIGHTYN,MAINOP,REOPYN,Medicine3,Remedicine3,Medicine4,Remedicine4: String):Integer;
      function AcceptExecDataUpdate13(Cnt: Integer; Userid: String):Integer;
      //2003.2.18 �̰�ȭ : Ư���˻�(����,�ǽõ���ó��) �ϰ�,��������
      function AcceptExecDataUpdate2(Cnt: Integer; Userid, REPEMARK,NIGHTYN,MAINOP,REOPYN,Medicine3,Remedicine3,Medicine4,Remedicine4: String):Integer;
      //�ϰ�����
      function AcceptDataUpdate2(Cnt:Integer; Userid, Jobtype: String):Integer;
      //2003.2.17 �̰�ȭ : ��������
      function AcceptDataUpdate3(Cnt:Integer; Userid: String):Integer;



    end;

    // �Ű����� class
    HsrPhyAcpt = Class(HsrAccept)
      function TAcptPhyList(PatNo,ExamType:String):Integer;
      function TAcptCPDataList(OrdDate,PkgCode,SortKey:String):Integer;
      function AcptCPDataList(OrdDate,PkgCode:String):Integer;
      function AcptPhyInsert(Cnt:Integer):Integer;
      function AcptPhyDelete(PatNo,OrdDate:String;OrdSeqNo:Integer):Integer;
      function AcptCPUpdate(PatNo,OrdDate,ExamStat:String;OrdSeqNo,
        FilmNo:Integer):Integer;
    end;

    // �˻�ǽ� class
    HsrExecute = class(HsrExam)
      sMatCode  : Variant;      // �Ҹ�����ڵ�
      sMatName  : Variant;      // �Ҹ�����
      sChargeYn : Variant;      // Charge����
      sDeptName : Variant;      // �������
      sUnit     : Variant;      // ����
      iMatSeqNo : variant;      // �߰��Ҹ���� ����
      iMatQty   : Variant;      // �Ҹ�
      iAdjQty   : Variant;      // ������
      iWCnt     : Variant;      // ���� �ǽð˻�Ǽ�
      iOCnt     : Variant;      // �ܷ� �ǽð˻�Ǽ�
      iGCnt     : Variant;      // �Ű� �ǽð˻�Ǽ�
      iWPCnt    : Variant;      // ���� �ǽ�ȯ�ڼ�
      iOPCnt    : Variant;      // �ܷ� �ǽ�ȯ�ڼ�
      iGPCnt    : Variant;      // �Ű� �ǽ�ȯ�ڼ�
      iExeCnt   : Variant;      // �� �ǽðǼ�
      iCnt01    : Variant;      // 1�� �ǽðǼ�
      iCnt02    : Variant;      // 2�� �ǽðǼ�
      iCnt03    : Variant;      // 3�� �ǽðǼ�
      iCnt04    : Variant;      // 4�� �ǽðǼ�
      iCnt05    : Variant;      // 5�� �ǽðǼ�
      iCnt06    : Variant;      // 6�� �ǽðǼ�
      iCnt07    : Variant;      // 7�� �ǽðǼ�
      iCnt08    : Variant;      // 8�� �ǽðǼ�
      iCnt09    : Variant;      // 9�� �ǽðǼ�
      iCnt10    : Variant;      // 10�� �ǽðǼ�
      iCnt11    : Variant;      // 11�� �ǽðǼ�
      iCnt12    : Variant;      // 12�� �ǽðǼ�
      sInstype  : Variant;      // �޿�����
      sAddtype  : Variant;      // �߰���ᱸ��
      iDayCnt   : Variant;      // ��¥ī��Ʈ
      sBirdate  : Variant;      // �������
      lNormqty  : Variant;      // �⺻�Ҹ�
      lAddqty   : Variant;      // �߰��Ҹ�
      lReexqty  : Variant;      // ����Ʈ�Ҹ�
      lTotalqty : Variant;      // ��ü�Ҹ�
      sMedtime  : Variant;      // �����Ͻ�
      sUsername : Variant;      // ����ڸ�
      sOrddept  : Variant;      // �Ƿڰ�
      sPatsite  : Variant;      // Patsite
      sAcptdate : Variant;      // ��������
      sGuardNum : Variant;      // ����Ʈ ���. �索������ ��� ȯ�� ��ȣ�ڼ� ����.
      sPatsect  : Variant;
      sSex      : Variant;
      sRoomCd   : Variant;
      sMedseqno : Variant;
      sBxyn     : Variant;
      sModality : Variant;      // 2003.9.25 �̰�ȭ �߰�
      sWaitExe  : Variant;      // 2006.12.15 ����� �Կ����ð�(�ǽ�-����)
      sWaitExe2 : Variant;      // 2006.12.15 ����� �Կ����Ⱓ(�ǽ�-���)
      sWaitCfm  : Variant;      // 2006.12.15 ����� ����ҿ�ð�(����-�ǽ�)
      sAccno    : Variant;      // 2008-11-11 KimDaeYong, ACCNO�߰�
      sClndvcode: Variant;      // 2011-09-20 KimDaeYong, ���ð漼ô���ڵ�
      sMeddate  : Variant;      // 2012-04-06 KimDaeYong, ��������
      sSpcdryn  : Variant;      // 2014.02.06 ���ÿ���
      sInsintyp : Variant;
      sExecAge  : Variant;
      sExecname : Variant;


      sReaddr2nm  : Variant;       // �ǵ��� 2, 2019.02.28.�ֱٿ�
      sReaddr3nm  : Variant;       // �ǵ��� 3, 2019.02.28.�ֱٿ�

      
      function ExecuteDataList(AcptDate,RoomCode,Patno,Examtype:String):Integer;
      //2003.1.17 �̰�ȭ
      function ExecuteDataList2(AcptDate,RoomCode,Patno,Examtype:String):Integer;
      function ExecuteDataUpdate(Examtype,PatNo,OrdDate,ExamTech,Eqipcode,Nightyn,Mainop,Reopyn,Editid:String;OrdSeqNo:Integer):Integer;
      // �索���ǿ� ġ��ǽ�
      function ExecuteDataUpdate13(Examtype,PatNo,OrdDate,ExamTech,Eqipcode,Nightyn,Mainop,Reopyn,sGuarnum,Editid:String;OrdSeqNo:Integer):Integer;
      function VideoTapeNumUpdate(PatNo,OrdDate,sNumber:String;OrdSeqNo:Integer):Integer;
      // ��缱�� ���Ϻ��� ���� ġ��ǽ�
      function ExecuteDataUpdateEqualPosition(Examtype,USERID,Equipcode,NIGHTYN,MAINOP,REOPYN,REPEMARK,MEDSEQNO,CLNDVCODE:String; SelCnt:Integer):Integer;
      // ��缱�� ���Ϻ��� ���� ġ��ǽ� : 2003.2.18 �̰�ȭ (�ϰ�,��������)
      function ExecuteDataUpdateEqualPosition2(Examtype,USERID,Equipcode,NIGHTYN,MAINOP,REOPYN,REPEMARK,MEDSEQNO,CLNDVCODE:String; SelCnt:Integer):Integer;

      // �ش� �׸���� �������θ� üũ�Ѵ�...
      function CheckRcpstat(SelCnt:Integer):Integer;

      function ExecuteDataDelete(Examtype,PatNo,OrdDate,ExamTech,Eqipcode,Editid:String;OrdSeqNo:Integer):Integer;
      //2003.2.27 �̰�ȭ -- �������� �˻�ǽ����
      function ExecuteDataDelete1(Examtype,PatNo,OrdDate,ExamTech,Eqipcode,Editid,Patsect:String;OrdSeqNo:Integer):Integer;

      function ExecAcptDataDelete(Examtype,PatNo,OrdDate,ExamTech,Eqipcode:String;OrdSeqNo:Integer):Integer;

      //2003.3.5 �̰�ȭ -- �������� ����,�˻����
      function ExecAcptDataDelete1(Examtype,PatNo,OrdDate,ExamTech,Eqipcode,Patsect:String;OrdSeqNo:Integer):Integer;
      function ExecuteList(FromDate,ToDate,RoomCode,Meddept,Wardno,Patno,Examcode,Examtype:String):Integer;
      //2003.9.25 �̰�ȭ -- PACS �˻�������� modality������ �����
      function ExecuteList7(FromDate,ToDate,RoomCode,Meddept,Wardno,Patno,Examcode,Examtype:String):Integer;

      function ExecuteList2(FromDate,ToDate,RoomCode,Meddept,Wardno,Patno,Examcode,Examtype:String):Integer;
      function ExecuteList3(FromDate,ToDate,RoomCode,Meddept,Wardno,Patno,Examcode,Examtype,Sortkey,Drug,Sex:String):Integer;
      function ExecuteList4(FromDate,ToDate,RoomCode,Meddept,Wardno,Patno,Examcode,Examtype,Sortkey,Drug,Sex:String):Integer;
      function ExecuteList13(FromDate,ToDate,RoomCode,Meddept,Wardno,Patno,Examcode,Examtype:String):Integer;
      // 2006.12.14 ����� - QI �� �˻�Ǻ� ȯ�� ��ȸ Meddept�� Patsite�� �����ؼ� �����.
      function ExecuteList8(Fromdate,Todate,RoomCode,PatSect,Wardno,Patno,Examcode,Examtype,Redocid:String):Integer;

      function MedExecList(ExecDate,PatSect,MedDept,ExamType:String):Integer;
      function MonCntList(MonStr,ExamType:String):Integer;
      function RoomTotList(FromDate,ToDate,ExamType:String):Integer;
      function RoomMedList(FromDate,ToDate,RoomCode:String):Integer;
      function ExamCntList(FromDate,ToDate,RoomCode:String):Integer;
      function ExamMedList(FromDate,ToDate,ExamCode:String):Integer;
      function MatCntList(FromDate,ToDate,ExamType:String):Integer;
      function PortCntList(FromDate,ToDate,ExamType:String):Integer;
      function YearCntList(YearStr,ExamType:String):Integer;
      function ExeCntMake(ExecDate,UserID,ExamType:String):Integer;
      function MatQtyAdjust(ExecDate,MatCode,ExamType,UserID:String;AdjQty:Integer):Integer;
      function SecondOrderList(PatNo,OrdDate,PatSect,ExamType:String;OrdSeqNo:Integer):Integer;
      function SecondOrderInsert(Cnt:Integer;UserID:String):Integer;
      function SecondOrderUpdate(OrdSeqNo,MatSeqNo:Integer;MatQty,PatNo,OrdDate,PatSect,
        MatCode,ChargeYn,Instype,UserID,Remark:String):Integer;
      function SecondOrderDelete(OrdSeqNo,MatSeqNo:Integer;PatNo,OrdDate,PatSect,MatCode,Addtype:String):Integer;
      function SecondExamList(FromDate,ToDate,RoomCode,Examtype:String):Integer;
      function RoomSndList(FromDate,ToDate,RoomCode,Examtype:String):Integer;
      function PortableList(OrdDate:String):Integer;
      function RepeatList(ExecDate,RoomCode:string):Integer;
      function RepeatSelect(FromDate, ToDate, RoomCode,Flag,PatNo: string): Integer;
      // 2003.2.25 �̰�ȭ�߰� -- ��������
      function RepeatSelect1(FromDate, ToDate, RoomCode,Flag,PatNo: string): Integer;
      function Opdrsv(Rsvdate, Examtype, Deptyn, Sortkey: String): Integer;

    end;

    // �ǵ� class
    HsrReadFilm = class(HsrExam)
      sFlag      : Variant;
      iReadSeq   : Variant;     // �ǵ�����
      sBirthDate : Variant;
      iPrtcnt    : Variant;
      sWriterNm  : Variant;
      sMeddate   : Variant;

      //2003.1.21 �̰�ȭ
      sOrdDate : Variant;
      iOrdSeqNo: Variant;
      sExamCode: Variant;
      sExecDate: Variant;
      sReadDate: Variant;
      sCfmDate : Variant;
      sResult  : Variant;
      sComment : Variant;
      sEditId  : Variant;
      sEditIp  : Variant;
      sEditDate: Variant;

      //2003.5.9 �̰�ȭ
      sLastrslt: Variant;

      //2003.6.18 �̰�ȭ
      sChadrNm : Variant;

      //2003.8.7  �̰�ȭ
      sCfmdr     : Variant;
      sCfmdrnm   : Variant;
      sReaddr1   : Variant;
      sReaddr1nm : Variant;
      sReaddr2   : Variant;
      sReaddr2nm : Variant;
      sRslttext  : Variant;
      sPatsect   : variant;

      //2009.4.15  KimDaeYong
      sReadyn    : Variant;
      sInsyn     : Variant;
      //2010.03.26 KimDaeYong
      sRsvdate   : Variant;
      //2015.1.30 KimSongJu
      sModality  : Variant;
      sUserid    : Variant;
      sUsername  : Variant;
      sDeptnm    : Variant;
      sStartdt   : Variant;
      sEnddt     : Variant;
      sAge       : Variant;
      sStatflag  : Variant;
      sStatflag2 : Variant;
      sNMeddept  : Variant;


      function ReadFilmList(PatNo,ExamType:String):Integer;
      // 2003.1.21 �̰�ȭ -- ���ǵ��ڷ���ȸ
      function PreReadInfo(IPatno, IOrdcode:String):Integer;
      //2003.7.31 �̰�ȭ  -- HP�������ڷ���ȸ
      function PreReadInfo2(IPatno, IOrdcode:String):Integer;

      function ConfirmNeedList(Examtype,ReadDr1:String):Integer;
      //2003.8.7 �̰�ȭ -- ���� �ǵ�Ȯ���ڷ���ȸ
      function ConfirmNeedList1(Examtype,ReadDr1:String):Integer;

      function ConfirmChangeList(ExecDate,PatNo,ReadDr1:String):Integer;
      function NotReadList(FromDate,ToDate,ExamType,SortKey,Roomcode:String):Integer;
      // SONGLIM_THOMA ����
      function ReadDataUpdate(ReadDr1,ReadDr2,ReadDr3,RsltText,Userid,Repemark,BoneDensity,ReadDr4,BxYn,CloYn,
                              Medicine,Medicine2,ReMedicine,ReMedicine2,sCompyn,sBowel,sCecumyn,sSpcRdDrYn:String;
                              Cnt:Integer;xSignData,xSerialNo,xSubjectDN,Medicine3,ReMedicine3,Medicine4,ReMedicine4,sAntconvyn:String):Integer;
      // 2003.2.26 �̰�ȭ -- �˻������� (��������)
      function ReadDataUpdate1(ReadDr1,ReadDr2,ReadDr3,RsltText,Userid,Repemark,BoneDensity,ReadDr4,BxYn,CloYn,
                               Medicine,Medicine2,ReMedicine,ReMedicine2,sCompyn,sBowel,sCecumyn,sSpcRdDrYn:String;
                               Cnt:Integer;xSignData,xSerialNo,xSubjectDN,Medicine3,ReMedicine3,Medicine4,ReMedicine4,sAntconvyn:String):Integer;
      // 2003.3.21 �̰�ȭ -- �˻������ (��������)
      function ReadDataUpdate2(Cnt:Integer):Integer;
      //2003.3.24 �̰�ȭ -- ������ �ǵ�������� (�Ұ�,��кι����� �����Ͽ� ����)
      function ReadDataUpdate3(ReadDr1,ReadDr2,ReadDr3,RsltText,Userid,Repemark,BoneDensity,Writerid,Lastrslt:String;Cnt:Integer):Integer;
      //2003.3.24 �̰�ȭ -- �ǵ�������� (�Ұ�,��кι����� �����Ͽ� ����)
      function ReadDataUpdate4(ReadDr1,ReadDr2,ReadDr3,RsltText,Userid,Repemark,BoneDensity,Writerid,Lastrslt:String;Cnt:Integer):Integer;
      // 2003.7.8 �̰�ȭ -- ������ü�� �ǵ����ڼ������� �˻������� (��������)
      function ReadDataUpdate6(ReadDr1,ReadDr2,ReadDr3,RsltText,Userid,Repemark,BoneDensity,ReadDr4,BxYn,CloYn,Medicine,Readdate:String;Cnt:Integer;xSignData,xSerialNo,xSubjectDN:String):Integer;


      function ConfirmDataUpdate(Readdr1,Readdr2,Readdr4,CfmDr,RsltText,Userid:String;Cnt:Integer):Integer;
      //2003.2.27 �̰�ȭ -- �ǵ�Ȯ��(��������)
      function ConfirmDataUpdate1(Readdr1,Readdr2,Readdr4,CfmDr,RsltText,Userid,BxYn,Medicine:String;Cnt:Integer):Integer;
      //2003.3.24 �̰�ȭ -- �ǵ�Ȯ��(��������) �ǵ��Ұ߰� ��кι��� �����Ͽ� ó��
      function ConfirmDataUpdate2(Readdr1,Readdr2,Writerid,CfmDr,RsltText,Userid,Lastrslt,Trslt:String;Cnt:Integer):Integer;
      //2003.7.16 �̰�ȭ -- �ǵ�Ȯ��(��������) ������ü�� whole body bone scan �ǵ��� 3���̳���ó��
      function ConfirmDataUpdate3(Readdr1,Readdr2,Readdr4,CfmDr,RsltText,Userid,BxYn,Medicine,Cfmdate:String;Cnt:Integer):Integer;


      function ConfirmChangeUpdate(CfmDr,RsltText,ChngResn,Userid:String;Cnt:Integer):Integer;
      // �ǵ�Ȯ�� ����2 - �ǵ��ǵ� ����...
      function ConfirmChangeUpdate2(Readdr1,Readdr2,Readdr4,CfmDr,RsltText,ChngResn,Userid:String;Cnt:Integer;xSignData,xSerialNo,xSubjectDN:String):Integer;
      // 2003.2.28 �̰�ȭ -- �ǵ�����(��������)
      function ConfirmChangeUpdate3(Readdr1,Readdr2,Readdr4,CfmDr,RsltText,ChngResn,Userid:String;Cnt:Integer;xSignData,xSerialNo,xSubjectDN:String):Integer;
      // 2003.4.15 �̰�ȭ -- �ǵ�Ȯ�μ���(���,�Ұߺκ� �����Ͽ�ó����)
      function ConfirmChangeUpdate5(Readdr1,Readdr2,Writeid,CfmDr,RsltText,Lastrslt,Trslt,ChngResn,Userid:String;Cnt:Integer):Integer;
      // 2002.12.10 �̰�ȭ ���� --> �˻��׸�, �ǵ�Ȯ���Ͻ��߰�
      function RsltPrntPatList(PatNo,CfmDate,CfmDate_to,Meddept,Patsect,Wardno,PrtFlag,Examtype,PrtUser,Readdr,Examchk1,Examchk2,Examchk3,Examchk4,Examchk5,Examchk6,Examchk7:String):Integer;
      //2003.7.15 �̰�ȭ �߰� --> RsltPrntPatList FTP�� �޴� �κ��� �����Ͽ��߰���.
      function RsltPrntPatList1(PatNo,CfmDate,CfmDate_to,Meddept,Patsect,Wardno,PrtFlag,Examtype,PrtUser,Readdr,Examchk1,Examchk2,
                                Examchk3,Examchk4,Examchk5,Examchk6,Examchk7,DateFlag,Statflag,Statflag2,Readdr2:String):Integer;
      Function SrchcodeInsert(Userid:String):Integer;
      Function GetIntCase(Patno, Orddate : String ; Ordseqno : Integer): Integer;
      function ChkInterest(Patno, Readdr : String): Integer;

      function GetSrchCode(Patno, Orddate : String ; Ordseqno : Integer): Integer;
      function GetSrchCode2(Patno, Orddate : String ; Ordseqno : Integer): Integer;

      function UpdatePrt(Prtuser: String; DataCnt: Integer): Integer;
      function DelRead(DataCnt: Integer;userid: String): Integer;
      // 2003.2.28 �̰�ȭ -- �ǵ�����(��������)
      function DelRead1(DataCnt: Integer;userid: String): Integer;
      // 2002.12.16 �̰�ȭ �߰�
      function NReadSelect(FromDate,ToDate,ExamType,SortKey,Meddept,Patsect,Examchk1,Examchk2,Examchk3,Examchk4,Examchk5,Examchk6,Examchk7:String):Integer;
      function List2(inEmpno, inEmpname : string) : integer;
    end;

    // �Ű��ǵ� class
    HsrPhyRead = class(HsrReadFilm)
      function TReadDataList(ExecDate,PatNo,ExamType:String):Integer;
      function TCfmDataList(ReadDr:String):Integer;
      function TCfmChgDataList(ExecDate,PatNo,ReadDR:String):Integer;
      function ReadCPDataList(ExecDate,PkgCode:String):Integer;
      function TReadCPDataList(ExecDate,PkgCode,SortKey:String):Integer;
      function NotReadList(ExecDate,PkgCode,ExamType:String):Integer;
      function ReadUpdate(ReadDate,ReadDr,Flag:String;Cnt:Integer):Integer;
      function CfmUpdate(CfmDr,RsltText,Userid:String;Cnt:Integer):Integer;
      function CfmChgUpdate(ChgDate:String;Cnt:Integer):Integer;
      function CfmCPUpdate(ExecDate,PkgCode,ReadDr,CfmDate:String;ReadCnt
        :Integer):Integer;
    end;

    // �ʸ� class
    HsrFilm = class
      sPatNo    : Variant;     // ȯ�ڹ�ȣ
      sPatName  : Variant;     // ȯ�ڸ�
      sSolgerNo : Variant;     // ����
      sCasteNm  : Variant;     // ���
      sSex      : Variant;     // ����
      sResNo    : Variant;     // �ֹε�Ϲ�ȣ
      sForceNm  : Variant;     // ���Ҽ�
      sPatType  : Variant;     // ȯ�ڱ���
      sFstDate  : Variant;     // �����Կ��Ͻ�
      sLstDate  : Variant;     // �ֱ��Կ��Ͻ�
      sFilmType : Variant;     // �ʸ�����
      sOutDate  : Variant;     // �����Ͻ�
      sOutDept  : Variant;     // ����μ��ڵ�
      sOutDeptNm: Variant;     // ����μ���    - ������ �߰�. 2001.11.19
      sOutID    : Variant;     // ������
      sOutName  : Variant;     // ������ ����
      sDeptName : Variant;     // �������
      sReqID    : Variant;     // ��û�ǻ�
      sReqName  : Variant;     // ��û�ǻ� ����
      sUseType  : Variant;     // �뵵
      sRtnWDate : Variant;     // �ݳ�������
      sRtnDate  : Variant;     // �ݳ��Ͻ�
      sTelNo    : Variant;     // ����ó
      iFoutCnt  : Variant;     // ����Ǽ�
      iFrtnCnt  : Variant;     // �ݳ��Ǽ�
      iFilmNo   : Variant;     // �ܺ��ʸ� ��Ϲ�ȣ
      iSeqNo    : Variant;     // �ܺ��ʸ� ���Լ���
      sHosName  : Variant;     // �ܺ��ʸ� �Կ� ������
      sInDate   : Variant;     // �ܺ��ʸ� ��������
      sComments : Variant;     // �ܺ��ʸ� ���� Ư�����
//      sTrnsDate : Variant;    // �ļ�/�����Ͻ�
      sReqDate  : Variant;     // ��û�Ͻ�
      sReqWDate : Variant;     // ���������
      sCurLoc   : variant;     // ����ġ
      sStat     : Variant;     // ����
      sTel1     : Variant;     // ��ȭ��ȣ1
      sTel2     : Variant;     // ��ȭ��ȣ2
      sExamType : Variant;     // �˻�з�  �����
      //555
      sTypeName : Variant;     // �˻�з���  �����
      sMeddept  : Variant;     // �����
      sDr1      : Variant;     // �����ǹ�ȣ
      sDrname1  : Variant;     // �����Ǹ�
      lSeqno    : Variant;     // �ʸ���ȣ
      sTypecode : Variant;     // �ʸ�����뵵�ڵ�
      sAcptdate : Variant;     // ��������
      sReqidname: Variant;
      sOutregid : Variant;
      sOutregidname: Variant;
      sSuyn     : Variant;      //�����ʸ����Կ���
      sUsetypenm: Variant;
      sRtnregidName  : Variant; //����ݳ�����ڸ�
      sFilmKind : Variant;      //�ʸ��з�
      sFilmName : Variant;      //�ʸ��̸�
      sSeqNo : Variant;         //����
      sFilmTypeCd : Variant;    //�ʸ��з��ڵ�
      sMeddate : Variant;       //��������

      //2003.9.23 �̰�ȭ
      sOrdname : Variant;       //ó���
      sModality: Variant;       //Modality
      sExecdate: Variant;       //�ǽ��Ͻ� 2003.10.28 �̰�ȭ �߰���.

      sBarcodeYn : Variant;     //���ڵ� ��¿��� �������� �缮�� �߰�(2004.12.02)
      sDeptCd    : Variant;     //�μ��ڵ� �������� �缮�� �߰�(2004.12.02)
      sReqdept   : Variant;     //��û�μ� �������� �缮�� �߰�(2004.12.06)
      sReqDeptnm : Variant;     //��û�μ��̸� �������� �缮�� �߰�(2004.12.06)
      sReqUsername : Variant;   //��û���̸� �������� �缮�� �߰�(2004.12.06)
      sReqidate  : Variant;     //��û�Ͻ� �������� �缮�� �߰�(2004.12.06)
      sOuttype   : Variant;     //���ⱸ�� �������� �缮�� �߰�(2004.12.06)
      sCount     : Variant;     //����Ÿ �� �������� �缮�� �߰�(2005.01.09)

      //����� 555
      function FilmTypeCheck():Integer;
      function FilmMasterCreation(spatno,sexamtype,slstdate,sfstdate,sTelno1,sTelno2,sSuyn:String): Integer;
      //�����
      function FilmOutCheck(PatNo,ExamType:String):Integer;
      // �������� 2004.11.27 ���� �ʸ� ���� ��û�� ���(�ڵ����)
      function FilmOutCheck2(PatNo,sFromDate:String):Integer;
      function FilmOutInsert(PatNo,OutDept,OutID,ReqID,UseType,RtnWDate,
                             TelNo,OutDate,ExamType:String):Integer;
      //�����
      function FilmOutUpdate(PatNo,ExamType,ReqDate,OutRegid:String;SeqNo:Integer):Integer;
      //�����
      function FilmOutDelete(PatNo,ExamType,ReqDate,UserId:String;SeqNo:Integer):Integer;

      function FilmOutList(OutDate,OutDept,ExamType:String):Integer;
      //�����
      function FilmRtnList(PatNo,OutDate,OutDept,ExamType:String):Integer;

      //2003.4.30 �̰�ȭ -- �ʸ���û�ǿ� ���Ͽ� ����,�ݳ��� �̷������ ���� �׸� ���Ͽ� ����ó��
      //function SelectAllOutUpdate(PatNo,ExamType,ReqDate,Outdept,OutRegid:String;SeqNo,Cnt:Integer):Integer;
      function SelectAllOutUpdate(Outdept,OutRegid:String;Cnt:Integer):Integer;

      // 2003.4.29 �̰�ȭ -- �ʸ���û��ȸ
      function FilmReqList(ReqDate,MedDept,ExamType:String):Integer;


      //function FilmRtnDel(Patno,ExamType,ReqDate:String;Seqno:Integer):Integer;
      //2003.3.11 �̰�ȭ
      function FilmRtnDel(Patno,ExamType,ReqDate,Rtnid:String;Seqno:Integer):Integer;

      function FilmReturnUpdate(PatNo,ExamType,UserId, ReqDate, SeqNo:String):Integer;
      function FilmNotReturnList(FromDate,ToDate,OutDept,ExamType:String):Integer;
      function FilmMasterSelect(PatNo,ExamType:String):Integer;
      function FilmHistoryList(PatNo,ExamType:String):Integer;
      function FilmOutQuery(FromDate,Todate,ExamType:String):Integer;
      function OutFilmMasterSelect(PatNo:String):Integer;
      function OutFilmDetailSelect(FilmNo:Integer):Integer;
      function OutFilmQuery(FromDate,Todate,Flag:String):Integer;
      function OutFilmMtInsert(PatNo,MedDept,FilmType,HosName:String):Integer;
      function OutFilmDtInsert(FilmNo:Integer):Integer;
      function OutFilmDtUpdate(FilmNo,SeqNo:Integer;OutDate,Comments:String):Integer;
      //--�����û���� �����
      //function ReqFilmList(PatNo:String):Integer;
      function ReqFilmList1(Patno,OutDate,MedDept, ExamType:String):Integer;

      function ReqFilmList2(PatNo,ExamType:String):Integer;

      function ReqFilmList3(OutDate,ExamType:String):Integer;
      function ReqFilmList4(OutDate,MedDept,ExamType:String):Integer;

      function FilmReqInsert(PatNo,ExamType,ReqDate,OutDept,ReqID,
                             UseType,RtnWDate,TelNo,UserID:String):Integer;
      function FilmReqDelete(PatNo,ExamType,ReqDate,ReqId:String;SeqNo:Integer):Integer;
      function FilmErOutInsert(PatNo,ExamType,ReqDate,OutDept,ReqID,
                               UseType,RtnWDate,TelNo,OutregID,UserID:String):Integer;
      function TelUpdate(PatNo, ExamType, sTel1, sTel2:String):Integer;
      function MakeAutoFilm(Reqdate, Examtype: String): Integer;
      function ListAutoFilm(Reqdate, Examtype, Meddept: String): Integer;
      function DelAutoFilm(lSeqno: Integer; Reqdate, Examtype, Meddept: String): Integer;
      function SelFilmType(Largcd: String): Integer;
      function UnitFilmList(PatNo,Fromdate,Todate,Examtype,Outdept: String): Integer;
      function UnitFilmSel(Patno,Acptdate,Examtype: String): Integer;
      function UnitFilmIns(Patno,Examtype,Acptdate,Outdept,Regid,Outregid,Userid,Userip,FilmType: String): Integer;
      function UnitFrtnUpd(Patno,Examtype,Acptdate,Userid,Userip: String; Seqno: Integer): Integer;
      function UnitFrtnDel(Patno,Examtype,Acptdate,Userid,Userip: String; Seqno: Integer): Integer;

      //2003.9.19  �̰�ȭ -- �ܷ����ฮ��Ʈ��ȸ
      function Medirsvlist(Frdate, Todate: String): Integer;
      //2003.10.28 �̰�ȭ -- �ܷ��������ں� �ǵ���󸮽�Ʈ
      function Medirsvlist1
      (Frdate, Todate: String): Integer;

      // �������� 2004.12.04 �缮�� �ʸ� ���ڵ� ��� üũ(�ڵ����)
      function FilmBarCheck(PatNo:String):Integer;
      //�������� �缮�� 2004.12.04 �߰�
      //�ʸ������̷��� READYN�� ��� üũ
      function FilmReadCheck(PatNo,Reqid,ReqDate:String):Integer;
      //�������� �缮�� 2004.12.04 �߰�
      //�ʸ������̷��� READYN�� ��� üũ
      function FilmOutCheck3(fromDate,reqdept,reqid,patno:String):Integer;
      //�ʸ������̷��� ����ġ ��ȸ �������� �缮�� 2004.12.17 �߰�
      function FilmOutCheck4(patno,reqdate,isSeqno:String):Integer;
      //�ʸ������û�� �μ��� ����� ��ȸ �������� �缮�� 2005.01.03 �߰�
      function FilmOutCheck5(patno:String):Integer;

      //�ʸ������û�� �μ��� ����� ��ȸ �������� �缮�� 2005.01.09 �߰�
      function FilmOutCheck6(PatNo,ExamType:String):Integer;

      //�ʸ����� ��ȸ �������� �缮�� 2005.01.09 �߰�
      function FilmOutCheck7(PatNo,ExamType:String):Integer;


    end;

    // Consult Class
    HsrConsult = Class         // Class ��
      sPatNo    : Variant;     // ȯ�ڹ�ȣ
      sPatName  : Variant;     // ����
      sAdmDate  : Variant;     // �Կ�����
      sCasteNm  : Variant;     // ���
      sTitle    : Variant;     // �Ƿ�����
      sMeddept  : Variant;     // �����
      sOrdDr    : Variant;     // �Ƿ��ǻ� ���
      sOrdDrNm  : Variant;     // �Ƿ��ǻ��
      sHopeDate : Variant;     // ����Ͻ�
      sCallYN   : Variant;     // ��������
      sReqTX    : Variant;     // �Ƿڳ���
      sRestDate : Variant;     // �ǽ���
      sRestTX   : Variant;     // �ǽó���
      sFinishYn : Variant;     // ������
      iSeqNo    : Variant;     // ����
      iOrdSeqNo : Variant;     // �Ƿڼ���
      function ConsultWReqList(UserID,Gubun:String):Integer;
      function ConsultOReqList(Meddept:String):Integer;
      function ConsultRsltUpdate(PatNo,AdmDate,ExecDate,ExecDept,OrdDr,DrCaste,
        RsltTx,SignYn:String;SeqNo,OrdSeqNo:Integer):Integer;
      function UpdateConrqt(PatNo,ReqDate,ConhDept,ReqTx,ConhDr,RestTx,
        FinishYn:String;SeqNo:Integer):Integer;
    end;

    //�ǵ��� �ڵ����
    HsrRedoct = Class
      sDocCode    : Variant;     //�ǵ��� �ڵ�
      sUserId     : Variant;     //����� ��ȣ
      sComment    : Variant;     //Ư�����
      sUserName   : Variant;     //����� �̸�
      sSpcDrYn    : Variant;     //�����ǵ��� ���� 2013.12.20 ������߰�
      function RedoctSel(DocCode, Examtype: string):Integer;
      function RedoctList(DocCode, Userid, Username, Examtype: String): Integer;
      function RedoctDelete(DocCode, Examtype: string):Integer;
      function RedoctUpdate(DocCode, Examtype, Comment:string):Integer;
      function RedoctInsert(DocCode, UserId, Examtype, Comment:string):Integer;
    end;


    // �����ڵ�(ACR �ڵ�)����
    HsrAcrcdt = Class
      sAcrCode    : Variant;     // ���� �ڵ�
      sAcrName    : Variant;     // ���ܸ�
      sUseYn      : Variant;     // ��뿩��

      function AcrcodeSel(Acrcode: string):Integer;
      function AcrcodeList(Acrcode,Flag,SiteCode: String): Integer;
      function AcrcodeDelete(Acrcode: string):Integer;
      function AcrcodeUpdate(AcrCode, AcrName, UseYn:string):Integer;
      function AcrcodeInsert(AcrCode, AcrName, UseYn:string):Integer;
    end;

    // ����ڵ� ����
    HsrSitect = Class
      sSiteCode   : Variant;     // ��� �ڵ�
      sSiteName   : Variant;     // ����
      sUseYn      : Variant;     // ��뿩��

      function SitecodeSel(SiteCode: string):Integer;
      function SitecodeList(SiteCode,SiteName: String): Integer;
      function SitecodeDelete(SiteCode: string):Integer;
      function SitecodeUpdate(SiteCode,SiteName,UseYn:string):Integer;
      function SitecodeInsert(SiteCode,SiteName,UseYn:string):Integer;
    end;



    // �����ڵ� ����
    HsrCodect = Class
      sCode      : Variant;     // ��з� / �ߺз� �ڵ�
      sCodeName  : Variant;     // �ڵ��
      sUseYn     : Variant;     // ��뿩��

      function CodectSel(Code1,Code2: string):Integer;
      function CodectList(Code1,Code2: String): Integer;
      function CodectDelete(Code1,Code2: string):Integer;
      function CodectUpdate(Code1,Code2,CodeName,UseYn:string):Integer;
      function CodectInsert(Code1,Code2,Name,UseYn:string):Integer;
    end;



   /////////////////////////////////////////////
   // ��ü�� �˻� ó�� ��ȸ (20010904 : ������)
   /////////////////////////////////////////////
   Hmdexmort = class
      sPatno      : Variant; {}
      tOrddate    : Variant; {}
      sOrdseqno   : Variant; {}
      tMeddate    : Variant; {}
      sPatsect    : Variant; {}
      sPatsite    : Variant; {}
      sOrdgrp     : Variant; {}
      sSlipcd     : Variant; {�������� copy 1,1 �ڸ�}
      sOrdtype    : Variant; {}
      sOrdkind    : Variant; {}
      sDiscyn     : Variant; {}
      sEryn       : Variant; {}
      sPreactyn   : Variant; {}
      sMeddept    : Variant; {}
      sChadr      : Variant; {}
      sOrddr      : Variant; {}
      sOrdcd      : Variant; {}
      sPrnyn      : Variant; {}
      sDiagcd     : Variant; {}
      sDiagname   : Variant; {}
      tOorddate   : Variant; {}
      lOordseq    : Variant; {}
      sOldpttp    : Variant; {}
      sInstype    : Variant; {}
      lQty        : Variant; {}
      sPortyn     : Variant; {}
      sFcryn      : Variant; {}
      sDruginyn   : Variant; {}
      lIsoqty     : Variant; {}
      sSpccode1   : Variant; {}
      sSpccode2   : Variant; {}
      sSpcid1     : Variant; {}
      sSpcid2     : Variant; {}
      sHoperoom   : Variant; {}
      tHopedate   : Variant; {}
      sNurstat    : Variant; {}
      sHopedr     : Variant; {}
      sRcpstat    : Variant; {}
      sProcstat   : Variant; {}
      tColldate   : Variant; {}
      tRsvdate    : Variant; {}
      tAcptdate   : Variant; {}
      tExecdate   : Variant; {}
      tRsltindt   : Variant; {}
      tReaddate   : Variant; {}
      sReaddr     : Variant; {}
      tRsltdate   : Variant; {}
      sCofmdr     : Variant; {}
      sWardno     : Variant; {}
      sRoomno     : Variant; {}
      sOrdsite    : Variant; {}
      sRemark     : Variant; {}
      sOrddesc1   : Variant; {}
      sOrddesc2   : Variant; {}
      sEditid     : Variant; {}
      sEditip     : Variant; {}
      tEditdate   : Variant; {}
      tOrdtime    : Variant; {}

      sExamname   : Variant; {}
      sTubecod1   : Variant; {}
      sTubecod2   : Variant; {}
      sPatname    : Variant; {}

      sDeptnm	   : Variant; {}
      sUsername   : Variant; {}
      sSpcdr      : Variant; {}
      sCount      : Variant; {}
      sCount2     : Variant; {}

      tRcpdate	   : Variant; {}
      sRemarkyn	: Variant; {}
      sOrdtime	   : Variant; {}
      sWardroomno : Variant; {����/����}
      sRoomname   : Variant; {�˻�Ǹ�}
      sSlipnm     : Variant; {�˻�Ǹ�}
      sSliptype   : Variant; {��ü������ �ӻ����� ü�� ���� }
      sSpcname1   : Variant; //2003.03.05 �����߰�

      //ó��������ȸ
      function Ord_info(in_flag,in_patno,in_meddept,in_date,in_locate: String) : Integer;

     //2003.03.05 �����߰�
       //�غκ���(�ܷ��˻�ǿ�)ó��
     function Pathology(in_patno: String): Integer;
   end;

    /////////////////////////////////////////////
    // �˻�þ��뷮��ȸ class
    /////////////////////////////////////////////
    HsrDrugUse = class         // class��
      sExecdate  : Variant;     // �˻��Ͻ�
      sPatno     : Variant;     // ȯ�ڹ�ȣ
      sPatname   : Variant;     // ȯ���̸�
      sExamcode  : Variant;     // �˻��׸��ڵ�
      sExamname  : Variant;     // �˻��׸��̸�
      sDrugcode  : Variant;     // ��ǰ�ڵ�
      sDrugname  : Variant;     // ��ǰ��
      sUseqty    : Variant;     // ��뷮
      sUnit      : Variant;     // ����
      sOrddr     : Variant;     // ó����
      sOrddrname : Variant;     // �ǻ��

      function DrugUseListFtp(Fromdate,Todate,DrugCode,Flag,Examcode:String):Integer;
    end;

    ///////////////////////////////////////////////////////////////
    // ��ǰ��� ��ȸ (2001.09.13 ������)
    ///////////////////////////////////////////////////////////////
    type HsrDgcdmt = class
        sDrugcode  : Variant;       { ��ǰ�ڵ� }
        sDrugname  : Variant;       { ��ǰ�� }
        sDostype   : Variant;
        sDostypenm : Variant;

        function List10(Drugcode,Drugname,Igrdname,Efccodel,Efccodem,Efccodes:String):Integer;
    end;

    ///////////////////////////////////////////////////////////////
    // �����Ƿڳ��� ��ȸ (2001.09.15 ������) - ���ῡ�� �����.
    ///////////////////////////////////////////////////////////////
    HsrOpreqt = class
     sPatNo	    : Variant;  // ȯ�ڹ�ȣ
     sSex       : Variant;  // ����
     sBirtDate  : Variant;  // �������
     sOpDate	 : Variant;  // ����(����)����
     iOpSeqno	 : Variant;  // ����(����)����
     sPatSect	 : Variant;  // ȯ�ڱ���
     sMedDept	 : Variant;  // �����
     sErYn  	 : Variant;  // ���޿���
     sReopYn    : Variant;  // ���������
     sOpSTm     : Variant;  // �������۽ð�
     sEstimtTm	 : Variant;  // ��������ð�
     sDiagCd	 : Variant;  // �����ڵ�(ICD-10)
     sDiagName	 : Variant;  // ���ܸ�
     sCombinYn	 : Variant;  // Combine��������
     sOpRoom	 : Variant;  // ������
     sOpName	 : Variant;  // ������
     sOpCode	 : Variant;  // �����ڵ�
     sOpCode2	 : Variant;  // �����ڵ�2
     sOpCode3	 : Variant;  // �����ڵ�3
     sOpDr  	 : Variant;  // ������
     sOpDr2 	 : Variant;  // ������-ASSISTANT
     sOpDr3 	 : Variant;  // ������-ASSISTANT2
     sCon1Dr	 : Variant;  // ����1������
     sCon1Dr2	 : Variant;  // ����1������-ASSISTANT
     sCon1Dr3	 : Variant;  // ����1������-ASSISTANT2
     sCon2Dr	 : Variant;  // ����2������
     sCon2Dr2	 : Variant;  // ����2������-ASSISTANT
     sCon2Dr3	 : Variant;  // ����2������-ASSISTANT2
     sAnspcYn	 : Variant;  // �����������Ῡ��
     sAnethCd	 : Variant;  // ������
     sAnethDr	 : Variant;  // �����ǻ�
     sAnethdrNm : Variant;  // �����ǻ� ��
     sCarmYn	 : Variant;  // C-ARM ����
     sGarmYn	 : Variant;  // G-ARM ����
     sEndoYn	 : Variant;  // ENDOSCOPE ����
     sSonoYn	 : Variant;  // SONO����
     sLasErYn	 : Variant;  // LASER����
     sOpPhys	 : Variant;  // ����ü��
     sRemark	 : Variant;  // Ư�����
     sConDept1	 : Variant;  // ������1
     sConDept2	 : Variant;  // ������2
     sConOpcd1	 : Variant;  // ���������ڵ�1
     sConOpcd2	 : Variant;  // ���������ڵ�2
     sCofmYn	 : Variant;  // Ȯ�ο���
     sCofmDr	 : Variant;  // Ȯ����ID
     sCofmDate	 : Variant;  // Ȯ������
     sCancelYn	 : Variant;  // ������ҿ���
     sCancelId	 : Variant;  // ���������
     sCancelDt	 : Variant;  // ���������
     sCanclRsn	 : Variant;  // ������һ���
     sWardNo	 : Variant;  // ������ȣ
     sRoomNo	 : Variant;  // ���ǹ�ȣ
     sEditId	 : Variant;  // ������ ID
     sEditIp	 : Variant;  // ������ IP
     sEditDate	 : Variant;  // �����Ͻ�
     sDeptNm	 : Variant;  // �������
     sOpdrNm	 : Variant;  // �����Ǹ�
     sCofm  	 : Variant;  // ��Ȳ
     sPatNm	    : Variant;  // ȯ�ڸ�
     sAge       : Variant;  // ����,����
     sComcdnm3  : Variant;  // �����ڵ��
     sCaution   : Variant;  // Ư�̻���
     sOpDate1	 : Variant;  // ���� ����(����)����
     sOpStat    : Variant;  // ����Status
     sOpcd2name : Variant;  // �����ڵ��2
     sOpcd3name : Variant;  // �����ڵ��3
     sOpcn1cdnm : Variant;  // ���������ڵ��1
     sOpcn2cdnm : Variant;  // ���������ڵ��2
     function ListOpEq(sType1,sType2,sType3,sType4,sType5,sType6,sType7:String;icnt:Integer):Integer;
    end;

    ///////////////////////////////////////////////////////////////////////////
    // ����� ��ȸ�� ���� ����ý��ۿ��� �����(2001.09.15 ������)
    ///////////////////////////////////////////////////////////////////////////
    HsrExCode = class
     sType1	    : Variant;  // �˻�����1
     sType2	    : Variant;  // �˻�����2
     // ���������
     sUserId	 : Variant;  // �����ID
     sUserNm	 : Variant;  // ����ڸ�
     sDeptCd	 : Variant;  // �ҼӺμ�
     sDeptNm	 : Variant;  // �ҼӺμ���
     sLicNo	 : Variant;  // �ǻ�����ȣ
     sMajorNo	 : Variant;  // �����ǹ�ȣ
     sJikGup	 : Variant;  // ����(�ǻ籸�� 11:STAFF 22:������Ʈ 33:����)
     sJicJong	 : Variant;  // ����(����ڱ��� 11:�ǻ� 22:��ȣ��)
     sWardNo1    : Variant;  // ���ٹ����� 1
     sWardNo2    : Variant;  // ���ٹ����� 2
     sSort	 : Variant;  // Set ��ȸ����
     sInscfmYn	 : Variant;  // ó������� Ȯ�ο���
     sPatSel	 : Variant;  // ����ȯ�� ���ñ���
     sNextScr	 : Variant;  // ����ȯ�� ������ ����ȭ��
     sDiagSel	 : Variant;  // ���ܸ�(���� or �ѱ�)
     sCode      : Variant;  // ���ڵ�
     sEngName   : Variant;  // �󺴿�����
     sKorName   : Variant;  // ���ѱ۸�
     sLargCd    : Variant;  // ��з��ڵ�
     sMiddCd    : Variant;  // �ߺз��ڵ�
     sSmalCd    : Variant;  // �Һз��ڵ�
     sCodeName  : Variant;  // �з��ڵ��
     ilevel     : Variant;  // level
     sRsvdate   : Variant;  // ��������
     sExecdate  : Variant;  // �ǽ�����
     sGendrnm   : Variant;  // �ǽ���
     iSeqno     : Variant;  // ����
     sPnottext  : Variant;  // ������
     iCount1    : Variant;  // ��� Ƚ��
     sMethodcd  : Variant;  // ���
     sAbbr      : Variant;  // ��� ���
     sDgijtype  : Variant;  // ��� ���
     sInfegrd   : Variant;  // ICD ������
     sCond      : Variant;  // ������
     sComCdDtl  : Variant;  // �������� �ڵ�
     sComCdNm   : Variant;  // �������� �ڵ尪
     sJikGupNm  : Variant;  // ���޸�
     sSpeedBtn  : Variant;  // ���ǵ��ư
     sReturnYn  : Variant;  // ȯ�ҿ���
     sCount1    : Variant;  // ��� Ƚ��
     sUseDay    : Variant;  // ó�� �ϼ�
     sDayQty    : Variant;  // 1�Ͽ뷮
     sMaxDay    : Variant;  // �ִ������ϼ�
     sOrdYn     : Variant;  // ó�氡�ɿ���
     sMethod    : Variant;  // ���/�뷮
     sDisease   : Variant;  // ������
     sInsInfo   : Variant;  // ��������
     sProdCode  : Variant;  // ����ڵ�
     sProdName  : Variant;  // ����

     sPatNo     : Variant;  // ȯ�ڹ�ȣ
     sPatName   : Variant;  // ȯ�ڸ�
     sResNo1    : Variant;  // �ֹι�ȣ1
     sResNo2    : Variant;  // �ֹι�ȣ2
     sBirtDate  : Variant;  // �������
     sSex       : Variant;  // ����
     sTelNo1    : Variant;  // ��ȭ��ȣ1
     sTelNo2    : Variant;  // ��ȭ��ȣ2
     sTelNo3    : Variant;  // �ڵ���
     sZipCd     : Variant;  // �����ȣ
     sAddress   : Variant;  // �ּ�

     // ����� �� �����ڵ� ��ȸ
     function SelDeptNm(sType1,sType2:string):Integer;
     // �����ڵ�(��ü) List ��ȸ
     function ListComCodeName(Code1:String):Integer;
    end;

    ///////////////////////////////////////////////////////////////////////////
    // ����� ��ȸ�� ���� ����ý��ۿ��� �����(2001.09.15 ������)
    ///////////////////////////////////////////////////////////////////////////
    HsrInsamt = class
     sEmpNo      : Variant;  // ���ι�ȣ
     sEmpNm      : Variant;  // ����
     sComCdNm    : Variant;  // ���޸�
     sDeptCd     : Variant;  // �����/�����ڵ�
     sDeptNm     : Variant;  // �����/������
     sLicNo      : Variant;  // �����ȣ
     sMajorNo    : Variant;  // �����ǹ�ȣ

     function ListUserInfo(sType1,sType2,sType3,sType4:String):Integer;
    end;




    ///////////////////////////////////////////////////////////////////////////
    // ���� �����ڵ� ��ȸ�� ���� ����ý��ۿ��� �����(2001.09.15 ������)
    ///////////////////////////////////////////////////////////////////////////
    HsrMcomct = class
	  sComCd1	 : Variant;  // �����ڵ�1
	  sComCd2	 : Variant;  // �����ڵ�2
	  sComCd3	 : Variant;  //	�����ڵ�3
	  sComCdnm1	 : Variant;  //	�����ڵ��1
	  sComCdnm2	 : Variant;  //	�����ڵ��2
	  sComCdnm3	 : Variant;  //	�����ڵ��3
	  sCItem01	 : Variant;  //	�����׸�01
	  sCItem02	 : Variant;  //	�����׸�02
	  sCItem03	 : Variant;  //	�����׸�03
	  sCItem04	 : Variant;  //	�����׸�04
	  sCItem05	 : Variant;  //	�����׸�05
	  iCItem06	 : Variant;  //	�����׸�06
	  iCItem07	 : Variant;  //	�����׸�07
	  iCItem08	 : Variant;  //	�����׸�08
	  iCItem09	 : Variant;  //	�����׸�09
	  iCItem10	 : Variant;  //	�����׸�10
	  sCItem11	 : Variant;  //	�����׸�11
	  sCItem12	 : Variant;  //	�����׸�12
	  iDispSeq	 : Variant;  //	��������
	  sDelDate	 : Variant;  //	����Ÿ Expired Date
	  sEditId	 : Variant;  //	������ ID
	  sEditIp	 : Variant;  //	������ IP
	  sEditDate	 : Variant;  //	�����Ͻ�

     function ListComCd(sType,Comcd1,Comcd2,Comcd3:String):Integer;
    end;

   HsdStatis = class
      sGrid      : TStringGrid;
      sorddate   : Variant;
      spatno     : Variant;
      spatname   : Variant;
      sdosno     : Variant;
      smeddept   : Variant;
      soiflag    : Variant;
      suseridnm  : Variant;
      sdrugcode  : Variant;
      sdrugname  : Variant;
      sbottqty   : Variant;
      sbottunit  : Variant;
      scount1    : Variant;
      sdosday    : Variant;
      stotqty    : Variant;
      sgrpnam    : Variant;
      spharmname : Variant;
      sdeptcd    : Variant;

      function List5(fromdate,todate,meddept,drugcode,drugkind,drugtype,dostype,acqtype,oiflag:String):Integer;
   end;

   // CCHOLYDT ���̺� ��ȸ. - ������ ��ȸ.
   HsrHolidt = class
   {
      HOLYDAY	NOT NULL	DATE
      HOLYDTNM		VARCHAR2(20)
      HOLYTYPE		VARCHAR2(1)
      MUSEYN		VARCHAR2(1)
      SUSEYN		VARCHAR2(1)
      AUSEYN		VARCHAR2(1)
      GUSEYN		VARCHAR2(1)
      SPDIETYN		VARCHAR2(1)
      EDITID		VARCHAR2(20)
      EDITIP		VARCHAR2(20)
      EDITDATE		DATE
      DELDATE		DATE
   }

      sHoliday   : Variant;
      sHolidtnm  : Variant;
      sHolitype  : Variant;

      function HolidayList(YearMonth:String):Integer;
   end;

   // �ܷ����೻��(����)
   HmdOpdlst = class
    sPatNo       : Variant;  // ȯ�ڹ�ȣ
    sMedDate     : Variant;  // ��������
    sMedDept     : Variant;  // �����
    sDeptNm      : Variant;  // �������
    sMedDr       : Variant;  // �����ǻ�
    sMedTime     : Variant;  // ���Ό��ð�
    sOrdDate     : Variant;  // ó������/�����û����
    sDiagName    : Variant;  // ���ܸ�
    iStayNo      : Variant;  // ���������
    sRsvType     : Variant;  // ���౸��
    sRsvTypeCd   : Variant;  // ���౸���ڵ�
    sRsvcfmYn    : Variant;  // ����Ȯ��
    sPatType     : Variant;  // ȯ������
    sTypeCd      : Variant;  // ��������
    sSpcdrYn     : Variant;  // �����ǻ翩��
    sFstmedTy    : Variant;  // ����������
    sMedrcpYn    : Variant;  // �������������
    sRcpYn       : Variant;  // ��������
    sMedYn       : Variant;  // ��������
    sMedchgId    : Variant;  // �������μ�����
    sErDate      : Variant;  // ���޽ǵ����ð�
    sOeFlag      : Variant;  // �ܷ����޿���
    sOiFlag      : Variant;  // �ܷ�/�Կ�����
    sHdsFlag     : Variant;  // �ΰ�������������
    sRejtDate    : Variant;  // ����Ͻ�
    sFstinpId    : Variant;  // �����Է���
    tFstTime     : Variant;  // �����Է½ð�
    iRcpSeq      : Variant;  // ��������
    sAdmDate     : Variant;  // ��������/��������/�Կ�����
    sRemark      : Variant;  // ���
    sPatName     : Variant;  // ȯ�ڸ�
    sSex         : Variant;  // ����
    sBirtDate    : Variant;  // �������
    sMedDrNm     : Variant;  // ������Name
    sOtherYn     : Variant;  // Ÿ�����࿩��
    sChartYn     : Variant;  // �Կ���Ʈ���⿩��
    sFilmYn      : Variant;  // �ʸ������������
    sTelNo1      : Variant;  // ȯ����ȭ��ȣ1
    sTelNo2      : Variant;  // ȯ����ȭ��ȣ2
    sTelNo3      : Variant;  // ȯ����ȭ��ȣ3
    sGenDr       : Variant;  // ������
    sFollow      : Variant;  // Followup ����
    sPatcls      : Variant;  //ȯ�ڱ���
    sGubn        : Variant;  //ȯ�ڱ��и�
    sEditId      : Variant;  // ������ID
    sEditIp      : Variant;  // �����ܸ�IP

     //����ȭ�� ȯ�ڹ�ȣ�Է�
     function SelectPat(PatNo:String):Integer;
    end;

    //�˻�������(����)  2003.02.23 ���� ����
    Hsu2examt = class
      sPatno    :Variant;       // ȯ�ڹ�ȣ
      sPatname  :Variant;       // ȯ�ڸ�
      sResno1   :Variant;       // �ֹι�ȣ1
      sResno2   :Variant;       // �ֹι�ȣ2
      sPkgcode  :Variant;       // pkgcode
      sOrdname  :Variant;       // order��
      sResvdate :Variant;       // pkg��������
      sExamdate :Variant;       // �˻翹������
      sOthercode:Variant;       // �˻��ڵ�
      sRoomcd   :Variant;       // �˻��


     function UpdateExam(sType1, sType2, sPatNo, sOrdDate, sOrdSeqNo, sOrdCode, sSpcCode : String) : Integer;

     //2003.6.5 �̰�ȭ -- ���հ����˻� ȯ�ں� ��������
     function MediPatnoSel(Patno, Examtype: String): Integer;
     function MediDateSel(ExamDate, Examtype:String): Integer;

    end;

 /////////////////////////////////////////////////////////////
  // ���������� ���� �߰��κ� SONGLIM_THOMA
  /////////////////////////////////////////////////////////////
  HsrCertUsr = class
     sUserid      :   Variant; {����������}
     sSignCert    :   Variant; {����������}
     sSignPriKey  :   Variant; {���簳��Ű}
     sChange_Tm   :   Variant; {��ȣ��������}
     sCertPW      :   Variant; {����Ű��ȣ}
     sResNo       :   Variant; {�ֹι�ȣ}

     //����� ���������� ��ȸ()
     function CertSearch(Userid: String): Integer;
  end;

  HsrCertInj = class
     sUserid      :   Variant; {����������}
     sSerialNo    :   Variant; {����������}
     sSubjectDn  :   Variant; {���簳��Ű}
     sSignCert   :   Variant; {��ȣ��������}

     //����� ���������� ��ȸ()
     function CertSearch(Userid,SerialNo,SubjectDN: String): Integer;
  end;
  ///////////////////////////////////////////////////////////////////


  //��ȯ�ڵ��ȯ��, KimDaeYong 2010-08-24
  HmdCancrt = class
     sLeavedtCnt      :   Variant; {��ȯ�ڵ���������� ���� �ϼ�}
     sLeavedate       :   Variant; {��ȯ�ڵ����������}

     //��ȯ�ڵ��ȯ�� ��ȸ
     function Select1(sPatno: String): Integer;
  end;


  //���������ۿ����, KimDaeYong 2011-02-16
  HsrAdvmst = class
     sPatno           :   Variant;
     sPatname         :   Variant;
     sOrddate         :   Variant;
     sOrdseqno        :   Variant;
     sMeddept         :   Variant;
     sWardno          :   Variant;
     sRoomno          :   Variant;
     sExamcode        :   Variant;
     sOrdname         :   Variant;
     sExamtype        :   Variant;
     sRoomcode        :   Variant;
     sExecdate        :   Variant;
     sAdvcode         :   Variant;
     sKeyword         :   Variant;
     sAdvcont         :   Variant;
     sEditid          :   Variant;
     sEditip          :   Variant;

     function List1(inFromdate, inTodate, inAdvcode, inPatno, inExamtype : String): Integer;
     function List2(inPatno : String): Integer;
     function Update1(inFlag : String): Integer;
  end;

  //���������ۿ��ڵ����, KimDaeYong 2011-02-21
  HsrAdvcdt = class
     sAdvcode         :   Variant;
     sKeyword         :   Variant;
     sAdvcont         :   Variant;
     sEditid          :   Variant;
     sEditip          :   Variant;

     function List1(inAdvcode, inKeyword : String): Integer;
     function Update1(inFlag, inAdvcode, inKeyword, inAdvcont, inEditid, inEditip : String): Integer;
  end;

  //SMS�ǻ���������, KimDaeYong 2011-03-03
  HsrSmsdrt = class
     sDrid         :   Variant;
     sDrnm         :   Variant;
     sDeptcd       :   Variant;
     sDeptnm       :   Variant;
     sTelno        :   Variant;
     sRemark       :   Variant;
     sEditid       :   Variant;
     sEditip       :   Variant;

     function List1(inDrid, inDeptcd : String): Integer;
     function Update1(inFlag, inDrid, inDeptcd, inTelno, inRemark, inEditid, inEditip : String): Integer;
  end;

  //SMS�޽����ڵ����, KimDaeYong 2011-03-03
  HsrSmsmgt = class
     sMsgcode      :   Variant;
     sKeyword      :   Variant;
     sMsg          :   Variant;
     sEditid       :   Variant;
     sEditip       :   Variant;

     function List1(inMsgcode, inKeyword : String): Integer;
     function Update1(inFlag, inMsgcode, inKeyword, inMsg, inEditid, inEditip : String): Integer;
  end;

  //SMS���۳���, KimDaeYong 2011-03-03
  HsrSmssdt = class
     sPatno        :   Variant;
     sPatname      :   Variant;
     sOrddate      :   Variant;
     sOrdseqno     :   Variant;
     sSendseq      :   Variant;
     sMeddept      :   Variant;
     sWardno       :   Variant;
     sRoomno       :   Variant;
     sExamcode     :   Variant;
     sOrdname      :   Variant;
     sExamtype     :   Variant;
     sRoomcode     :   Variant;
     sExecdate     :   Variant;
     sSendid       :   Variant;
     sSendname     :   Variant;
     sSendtel      :   Variant;
     sRcvid        :   Variant;
     sRcvname      :   Variant;
     sRcvtel       :   Variant;
     sMsgcode      :   Variant;
     sMrcode       :   Variant;
     sKeyword      :   Variant;
     sMessage      :   Variant;
     sSenddate     :   Variant;
     sMrkeyword    :   Variant;
     sAdvcode      :   Variant;
     sAdvkeyword   :   Variant;
     sRecvdate     :   Variant;
     sEditid       :   Variant;
     sEditip       :   Variant;

     function List1(inFlag, inFromdate, inTodate, inMsgcode, inMrcode, inPatno, inExamtype, inAdvcode : String): Integer;
     function Insert1 : Integer;
  end;

  //SMS�߰������ڵ����, KimDaeYong 2011-03-11
  HsrSmsmrt = class
     sMrcode       :   Variant;
     sKeyword      :   Variant;
     sMrcont       :   Variant;
     sEditid       :   Variant;
     sEditip       :   Variant;

     function List1(inMrcode, inKeyword : String): Integer;
     function Update1(inFlag, inMrcode, inKeyword, inMrcont, inEditid, inEditip : String): Integer;
  end;

  //��ô�����, KimDaeYong 2011-09-19
  HsrClndvt = class
     sClndvcode    :   Variant;
     sClndvname    :   Variant;
     sRemark       :   Variant;
     sExamtype     :   Variant;
     sEditid       :   Variant;
     sEditip       :   Variant;

     function List1(inClndvcode, inClndvname, inExamtype : String): Integer;
     function Update1(inFlag, inClndvcode, inClndvname, inRemark, inExamtype, inEditid, inEditip : String): Integer;
  end;


  //����ġ��, KimDaeYong 2011-07-20
  HsrSdtcrt = class
     //SRSDTCRT
     sPatno         :   Variant;
     sSdtdate       :   Variant;
     sExamtype      :   Variant;
     sWardno		:   Variant;  
     sRoomno        :   Variant;  
     sSex           :   Variant;  
     sAge			:   Variant;  
     sResno         :   Variant;  
     sMeddept       :   Variant;  
     sDiagcd        :   Variant;  
     sDiagnm        :   Variant;  
     sWeight        :   Variant;  
     sBphigh		:   Variant;  
     sBplow         :   Variant;
     sHrr           :   Variant;  
     sRr            :   Variant;  
     sSdtxpyn       :   Variant;  
     sSdtxpcont     :   Variant;  
     sSdtrpyn		:   Variant;  
     sSdtrpcont     :   Variant;  
     sFastyn        :   Variant;  
     sFastcont      :   Variant;  
     sAlgyn         :   Variant;  
     sAlgcont       :   Variant;  
     sDrugyn		:   Variant;  
     sDrugcont      :   Variant;  
     sBrthyn        :   Variant;  
     sBrthcont      :   Variant;  
     sDraccyn       :   Variant;  
     sDracccont     :   Variant;  
     sMtnyn			:   Variant;  
     sMtncont       :   Variant;  
     sSingulyn      :   Variant;  
     sSingulcont    :   Variant;  
     sSdtplan       :   Variant;  
     sSdtdrg        :   Variant;  
     sSdtdrgtm		:   Variant;
     sSdtdrggbn     :   Variant;
     sSdtdrgoth     :   Variant;  
     sPryn          :   Variant;  
     sPrcont        :   Variant;  
     sRryn          :   Variant;
     sRrcont        :   Variant;  
     sBpyn			:   Variant;  
     sBphigh1       :   Variant;  
     sBplow1        :   Variant;  
     sSkinyn        :   Variant;  
     sSkincont      :   Variant;  
     sActyn         :   Variant;  
     sActcont		:   Variant;  
     sDschtm        :   Variant;  
     sRamscl        :   Variant;  
     sAppid         :   Variant;  
     sDscheduyn     :   Variant;  
                    
     //SRSDTMNT
     sMontm		    :   Variant;
     sOxy           :   Variant;
     sPr            :   Variant;
     sRespcnt       :   Variant;
     sDrug          :   Variant;

     sEditid        :   Variant;
     sEditip        :   Variant;

     function Select1(inPatno, inSdtdate, inExamtype : String): Integer;
     function List1(inPatno, inSdtdate, inExamtype : String): Integer;
     function Insert1(inFlag : String): Integer;
     function Delete1(inPatno, inSdtdate, inExamtype : String): Integer;
  end;

  // ȯ�� Caution, mdclass1���� �����ؿ�
  // KimDaeYong 2011-09-21
    HmdCautnt = class
     sPatNo	    : Variant;  // ȯ�ڹ�ȣ
     sHivYn	    : Variant;  // Viral Marker HIV����
     sVdrlYn	 : Variant;  // Viral Marker VDRL����
     sHbsagYn	 : Variant;  // Viral Marker HBsAg����
     sHcvYn	    : Variant;  // Viral Marker Anti-HCV����
     sVmOthrYn	 : Variant;  // Viral Marker ��Ÿ����
     sVmRemark	 : Variant;  // Viral Marker ��Ÿ�Ұ�
     sRadCont	 : Variant;  // RADIO Contrast ����
     sPeniciln	 : Variant;  // PENICILLINE ����
     sDrugAlgy	 : Variant;  // Drug Allergy����
     sOtherRmk  : Variant;  // ��Ÿ Ư�̼Ұ�
     sFstDate	 : Variant;  // ���ʵ������
     sFstEmpNo	 : Variant;  // �����Է���ID
     sFstEmpNm	 : Variant;  // �����Է���NAME
     sMrsaYn    : Variant;  // Mrsa ����
     sVreYn     : Variant;  // Vre ����
     sAfbYn     : Variant;  // Afb ����
     sTbYn      : Variant;  // Tb ����
     sDiffYn    : Variant;  // Diff ����
     sFunYn     : Variant;  // Fungus ����
     sInform    : Variant;  // ��������
     sEditId	 : Variant;  // ������ ID
     sEditIp	 : Variant;  // ������ IP
     sEditDate	 : Variant;  // �����Ͻ�
     //�߰�. 2002.11.18 �̿��
     sHbcYn     : Variant;
     sHAVYn     : Variant;
     sSeq       : Variant;  //ȯ�ں� �Է¼���, daelongii add, 2005-10-13
     sDschDate  : Variant;  //�������, daelongii add, 2005-10-17
     //�߰� 2009.01.21 �����
     sRotaYn    : Variant;
     sOhmYn     : Variant;
     sEeeYn     : Variant;
     sJangtiYn  : Variant;
     sEeejilYn  : Variant;
     sSuduYn    : Variant;
     sHongYn    : Variant;
     sPungYn    : Variant;
     sNewFluYn     : Variant;  // �����÷� �߰� 2010.05.12 �����
     sInFluYn   : Variant;  // ���÷翣�� �߰� 2014.02.26 KimDaeYong
     //KimDaeYong 2015-12-17
     sNewinfecyn  : Variant;
  	  sNewinfecstr : Variant;
	  sBetcyn   	  : Variant;
	  sBetcstr	  : Variant;
	  sCreyn  	  : Variant;
	  sVrsayn	  : Variant;
	  sCjdyn		  : Variant;
	  sCetcyn	  : Variant;
	  sCetcstr 	  : Variant;
	  sMumpsyn 	  : Variant;
	  sPeryn	  	  : Variant;
	  sMenyn 	  : Variant;
     sDetcyn	  : Variant;
	  sDetcstr 	  : Variant;
    sRepdate 	  : Variant;
    //KimDaeYong 2018-02-01
     Cancrmk      : Variant;
     sMrpayn      : Variant;
     sCpeyn       : Variant;
     sCpetcyn     : Variant;
     sCpetcstr    : Variant;

     // ȯ��Caution���� ��ȸ
     function SelCaution(PatNo:String):Integer;
     // ȯ�� caution ���� ���
     //function RegCaution(Type1, PatNo, HivYn, VdrlYn, HbsagYn, HcvYn, VmothrYn,
     //                    Vmremark, RadCont, Peniciln, DrugAlgy, OtherRmk,
     //                    FstEmpNo, EditId, EditIp, Inform, MrsaYn, VreYn,
     //                    AfbYn, TbYn, DiffYn, FunYn, HbcYn, HAVYn, Seq : String):Integer;
    end;


    // ���ð�ó��Ȯ��
    // KimDaeYong 2012-04-25
    HmdScopyt = class
       sMhchk1	: Variant;
       sMhchk2	: Variant;
       sMhchk3	: Variant;
       sMhchk4	: Variant;
       sMhchk5	: Variant;
       sDhchk1	: Variant;
       sDhchk2	: Variant;
       sDhchk3	: Variant;
       sDhchk4	: Variant;
       sDhchk5	: Variant;
       sColaddyn: Variant;
       sColchk1	: Variant;
       sColchk2	: Variant;
       sColchk3	: Variant;
       sColfchk1: Variant;
       sColfchk2: Variant;

       // ȯ��Caution���� ��ȸ
       function Select1(inPatno, inOrddate:String):Integer;
    end;


    // ��û�������(ENT)
    // KimDaeYong 2012-06-22
    HsrHeardt = class
       sPatno           : Variant;
       sExecdate        : Variant;
       sOrddate         : Variant;
       sOrdseqno        : Variant;
       sExamcode        : Variant;
       sCalmthd         : Variant;

       sR_Sugery        : Variant;
       sR_Bone_125      : Variant;
       sR_Bone_250      : Variant;
       sR_Bone_500      : Variant;
       sR_Bone_1000     : Variant;
       sR_Bone_2000     : Variant;
       sR_Bone_3000     : Variant;
       sR_Bone_4000     : Variant;
       sR_Bone_8000     : Variant;
       sR_Bone_Avcbs    : Variant;
       sL_Sugery        : Variant;
       sL_Bone_125      : Variant;
       sL_Bone_250      : Variant;
       sL_Bone_500      : Variant;
       sL_Bone_1000     : Variant;
       sL_Bone_2000     : Variant;
       sL_Bone_3000     : Variant;
       sL_Bone_4000     : Variant;
       sL_Bone_8000     : Variant;
       sL_Bone_Avcbs    : Variant;

       sR_Air_125       : Variant;
       sR_Air_250       : Variant;
       sR_Air_500       : Variant;
       sR_Air_1000      : Variant;
       sR_Air_2000      : Variant;
       sR_Air_3000      : Variant;
       sR_Air_4000      : Variant;
       sR_Air_8000      : Variant;
       sR_Air_Avcbs     : Variant;
       sL_Air_125       : Variant;
       sL_Air_250       : Variant;
       sL_Air_500       : Variant;
       sL_Air_1000      : Variant;
       sL_Air_2000      : Variant;
       sL_Air_3000      : Variant;
       sL_Air_4000      : Variant;
       sL_Air_8000      : Variant;
       sL_Air_Avcbs     : Variant;

       sR_Spch_Srt      : Variant;
       sR_Spch_Pbs1     : Variant;
       sR_Spch_Pbs2     : Variant;
       sR_Spch_Dr       : Variant;
       sR_Spch_Sa       : Variant;
       sL_Spch_Srt      : Variant;
       sL_Spch_Pbs1     : Variant;
       sL_Spch_Pbs2     : Variant;
       sL_Spch_Dr       : Variant;
       sL_Spch_Sa       : Variant;

       sEditid          : Variant;
       sEditip          : Variant;


       function List1(inFromdate, inTodate, inPatno : String):Integer;
       function Insert1(inFlag : String):Integer;
       function Delete1(inPatno, inExecdate : String):Integer;
    end;


    // ���ٰ˻��Ƿڼ�
    // KimDaeYong 2013-03-27
    Hsrtbrptt = class
       sPatno       : Variant;
       sOrddate     : Variant;
       sOrdseqno    : Variant;
       sReqdate     : Variant;
       sSpcchk      : Variant;
       sSpcoth      : Variant;
       sExamchk     : Variant;
       sWardnm      : Variant;
       sDeptnm      : Variant;
       sAddr        : Variant;
       sEditid      : Variant;
       sEditip      : Variant;

       function Select1(inPatno, inOrddate, inOrdseqno, inWardno, inMeddept : String):Integer;
       function Insert1(inPatno, inOrddate, inOrdseqno,
                        inReqdate, inSpcchk, inSpcoth,
                        inExamchk, inEditid, inEditip : String):Integer;
       //function Delete1(inPatno, inExecdate : String):Integer;
    end;

    //����ġ��(�ű�)_������, KimSongJu 2015.4
    HsrSedmst = class
       sPatno        : Variant;
       //sIndate       : Variant;
       sMeddate      : Variant;
       lMstseq       : Variant;
       sOrddate      : Variant; // �߰�
       sOrdseqno     : Variant; // �߰�
       sPatsect      : Variant; // �߰�
       sExamcd       : Variant;
       sMeddept      : Variant;
       sPatname      : Variant;
       sSex          : Variant;
       sAge          : Variant;
       sWardno       : Variant;
       sRoomno       : Variant;
       sExamname     : Variant;
       sUpIndate     : Variant;
       sOrdtime      : Variant;

       sPreOrddate   : Variant;
       sPreOrdseqno  : Variant;
       sPrePatsect   : Variant; // 2015.11.06 �߰�.
       sPreMeddate   : Variant; // 2015.11.10 �߰�
       
       sEditid       : Variant;
       sEditip       : Variant;

       function InsUpPatinfo:Integer;
       function SelectPatinfo:Integer;
       function SelectPatinfo2:Integer;
       function ListPatinfo:Integer;
       function UpdateOrder:Integer;
    end;

    //����ġ��(�ű�)_�������򰡱��, KimSongJu 2015.4
    HsrSedevt = class
       sPatno        : Variant;
       //sIndate       : Variant;
       sMeddate      : Variant;
       //sExamcd       : Variant;
       lMstseq       : Variant;
       lSubseq       : Variant;
       sWeight       : Variant;
       sConsci       : Variant;
       sAllergy      : Variant;
       sAllergytxt   : Variant;
       sMedhisnone   : Variant;
       sMedhisaspi   : Variant;
       sMedhiswapa   : Variant;
       sMedhisetc    : Variant;
       sMedhisetctxt : Variant;
       sSickhis      : Variant;
       sSickhis1     : Variant;
       sSickhis2     : Variant;
       sSickhis3     : Variant;
       sSickhis4     : Variant;
       sSickhis5     : Variant;
       sSickhis6     : Variant;
       sSickhis7     : Variant;
       sSickhis8     : Variant;
       sSickhis9     : Variant;
       sSickhisetc   : Variant;
       sAgreement    : Variant;
       sWithguard    : Variant;
       sFastoff      : Variant;
       sMouthnone    : Variant;
       sMouth1       : Variant;
       sMouth2       : Variant;
       sMouthetc     : Variant;
       sEstmdate     : Variant;
       sPostbph      : Variant;
       sPostbpl      : Variant;
       sPostpr       : Variant;
       sPostrr       : Variant;
       sPostsao2     : Variant;
       sFalldown1    : Variant;
       sFalldown2    : Variant;
       sFalldown3    : Variant;
       sFalldown4    : Variant;
       sFalldown5    : Variant;
       sFalldown6    : Variant;
       sRecdate      : Variant;
       sUpIndate     : Variant;
       sRecid        : Variant;
       sEditid       : Variant;
       sEditip       : Variant;

       sIntclean     : Variant;

       function InsUpEvaluation:Integer;
       function SelectEvaluation:Integer;


    end;

    //����ġ��(�ű�)_������ȯ�ڱ��, KimSongJu 2015.4
    HsrSedmot = class
       sPatno        : Variant;
       //sIndate       : Variant;
       sMeddate      : Variant;
       //sExamcd       : Variant;
       lMstseq       : Variant;
       lSubseq       : Variant;
       sMotype       : Variant;
       lRowseq       : Variant;
       sMondate      : Variant;
       sMonstate     : Variant;
       sMonscore     : Variant;
       sPr           : Variant;
       sRr           : Variant;
       sSao2         : Variant;
       sBp           : Variant;
       sEtctxt       : Variant;
       sRecdate      : Variant;
       sRecid        : Variant;
       sEditid       : Variant;
       sEditip       : Variant;
       sRecname      : Variant;
       sFallPrv      : Variant;

       function InsUpMonitor:Integer;
       function SelectMonitor:Integer;
       function ListMonitor:Integer;
    end;

    //����ġ��(�ű�)_������������, KimSongJu 2015.4
    HsrSedmet = class
       sPatno        : Variant;
       //sIndate       : Variant;
       sMeddate      : Variant;
       //sExamcd       : Variant;
       lMstseq       : Variant;
       lSubseq       : Variant;
       lRowseq       : Variant;
       sMedtype      : Variant;
       sUsetype      : Variant;
       sInjtm        : Variant;
       sInjcapa      : Variant;
       sInjtm2       : Variant;
       sInjcapa2     : Variant;
       sInjtm3       : Variant;
       sInjcapa3     : Variant;
       sTotalcapa    : Variant;
       sInjid        : Variant;
       sDelcapa      : Variant;
       sWithid       : Variant;
       sEditid       : Variant;
       sEditip       : Variant;

       function InsUpMedication:Integer;
       function SelectMedication:Integer;
       function ListMedication:Integer;
    end;

    //����ġ��(�ű�)_������ȸ�����¹���Ǳ���, KimSongJu 2015.4
    HsrSedrct = class
       sPatno        : Variant;
       //sIndate       : Variant;  // ����  2015.8.25
       sMeddate      : Variant;    // �߰�  2015.8.25
       //sExamcd       : Variant;  // ����  2015.8.25
       lMstseq       : Variant;
       lSubseq       : Variant;
       sState1       : Variant;
       sState2       : Variant;
       sState3       : Variant;
       sState4       : Variant;
       sState5       : Variant;
       sTotal        : Variant;
       sOutedu1      : Variant;
       sOutedu2      : Variant;
       sOutedu3      : Variant;
       sOutedu4      : Variant;
       sOutedu5      : Variant;
       sOuteduetc    : Variant;
       sEditid       : Variant;
       sEditip       : Variant;

       sRecdate      : Variant; // �߰� 2015.9.8
       sRecid        : Variant; // �߰� 2015.9.8
       sOutedu6      : Variant;
       function InsUpRecovery:Integer;
       function SelectRecovery:Integer;
    end;

    HsrSedmgt = class
       sPatno        : Variant;
       sOrddate      : Variant;
       sMeddate      : Variant;
       sOrdseqno     : Variant;
       sOrdtime      : Variant;
       sExamcd       : Variant;
       sExamname     : Variant;
       sPatsect      : Variant;
       sRegyn        : Variant;
       sEditid       : Variant;
       sEditip       : Variant;

       function InsertMgt:Integer;
       function SelectMgt:Integer;
       function ListMgt:Integer; // orddate ���
       function ListMgt2:Integer;// meddate ���  2015.9.2 ����� �߰� -> ȯ�ڹ�ȣ�θ� 2015.11.06
       function UpdateMgt:Integer;
    end;


    Hsrsuveyt = class
       sPatno     : Variant;
       sOrddate   : Variant;
       sOrdcd     : Variant;
       sOrdseqno  : Variant;
       sAcptdate  : Variant;
       sGubun     : Variant;
       sOigubun   : Variant;
       sMeddept   : Variant;
       sWardno    : Variant;
       sRoomno    : Variant;
       sChklist   : Variant;
       sDigegita  : Variant;
       sAlergy    : Variant;
       sMedihist  : Variant;
       sMediabort : Variant;
       sEtcetera  : Variant;
       sEditid    : Variant;
       sEditdate  : Variant;
       sEditip    : Variant;
       IsGubun    : Variant;

       sEstmdate     : Variant;
       sPostbph      : Variant;
       sPostbpl      : Variant;
       sPostpr       : Variant;
       sPostrr       : Variant;
       

       //function InsertMgt:Integer;
       function SrsuveytSel :Integer;
       function SrsuveytIns(IsGubun    ,IsOigubun  ,IsPatno    ,IsOrdcd    ,IsOrdseqno ,IsOrddate  ,IsMeddept  ,
                            IsAcptdate ,IsWardno   ,IsRoomno   ,IsChklist  ,IsDigegita ,IsAlergy   ,IsMedihist ,
                            IsMediabort,IsEtcetera ,IsEditid   ,IsEditip   ,IsEditdate ,sEstmdate  ,sPostbph  ,
                            sPostbpl   ,sPostpr    ,sPostrr     : string) :Integer;
       //function ListMgt:Integer; // orddate ���
       //function ListMgt2:Integer;// meddate ���  2015.9.2 ����� �߰� -> ȯ�ڹ�ȣ�θ� 2015.11.06
       //function UpdateMgt:Integer;
    end;

       //�����Ƿ����. KimDaeYong 2019-05-21
   HmdDnrrgt = class
     sPatno        : Variant;
     sPatname      : Variant;
     sRgtdate      : Variant;
     sJugdyn       : Variant;
     sJugddate     : Variant;
     sJugdid       : Variant;
     sJugdname     : Variant;
     sConfyn       : Variant;
     sConfdate     : Variant;
     sConfid       : Variant;
     sConfname     : Variant;
     sExecyn       : Variant;
     sExecdate     : Variant;
     sExecid       : Variant;
     sExecname     : Variant;
     sGovmyn       : Variant;
     sGovmdate     : Variant;
     sGovmid       : Variant;
     sGovmname     : Variant;
     sExeccont     : Variant;
     sExecoth      : Variant;
     sRemark       : Variant;
     sCancyn       : Variant;
     sCancdate     : Variant;
     sCancid       : Variant;
     sCancname     : Variant;
     sEditid       : Variant;
     sEditip       : Variant;

    //function List1(inFlag, inPatno, inRgtdate : string):Integer;
    function List1(inFlag, inPatno, inRgtdate, inFromdate, inTodate, inGubun: string):Integer;
    function Insert1(inFlag, inEditid, inEditip : string):Integer;
   end;
   // �����ڵ� ����
    Hsrpacsot = Class
      sPatno    : Variant;
      sPatname  : Variant;
      sExamcode : Variant;
      sMeddept  : Variant;
      sOrddate  : Variant;
      sExecdate : Variant;
      sReqdate  : Variant;
      sRptdate  : Variant;
      sDays     : Variant;
      sRsvdate  : Variant;

      function OutreadSel(Fdate,Tdate: string):Integer;
    end;

    // �˻��� checklist ��ȸ 2021.06.18. �쳲�� �߰�
    Hsrbefchk = Class
      sChecklst   : Variant;
      inFlag      : Variant;
      inPatno     : Variant;
      inOrddate   : Variant;
      inOrdseqno  : Variant;
      inExamcode  : Variant;
      inChklist   : Variant;
      inPatsect   : Variant;
      inFchkdate  : Variant;
      inFchkid    : Variant;
      inFchkip    : Variant;

      function BefchkSel1(inPatno,inOrddate,inOrdseqno,inExamcode: string):Integer;
      function BefchkIns1(inFlag, inPatno, inOrddate,inOrdseqno, inExamcode, inChklist, inPatsect, inFchkdate, inFchkid, inFchkip  : string) : integer;
    end;

   /////////////////////////////////////////////////////////////////////////////
    procedure ShowPatInfoList(KeyStr:String; e_Patno:TEdit; p_patname,p_regno,p_sex,p_birth,p_telno1,p_telno2:TPanel);overload;
    procedure ShowPatInfoList(KeyStr:String; e_Patno:TEdit; p_patname,p_regno,p_sex,p_birth,p_telno1,p_telno2,p_wardno,p_roomno,p_passport:TPanel);overload;
              // ȯ������ LIST POP-UP
    procedure ShowUserInfoList(KeyStr:String; e1:TEdit; p2,p3:TPanel);
              // ��������� LIST POP-UP
    procedure AppendMedDeptList(Combx_meddept:TComboBox);
              // �޺��ڽ��� ����� �ڵ� �ҷ�����
   /////////////////////////////////////////////////////////////////////////////
    procedure ShowIntCase(grid : TStringgrid; Patno, Orddate, Ordseqno: String);
    procedure ShowSrchCode(grid : TStringgrid; Patno, Orddate, Ordseqno: String);

    procedure proto_GetFldVar(FldNameStr:String; var VariantValue:Variant);
    procedure pr_GetFldVar(var VariantValue:Variant ; FldNameStr:Variant);
    procedure U_PrinterChange(PRT_Name:String);
    procedure SetDefaultPrinter( ADevice : PChar  );
    // DNR Check(�����Ƿ�). KimDaeYong 2019-05-24
    function DnrSelect(Patno:String;Target:TControl):String;
var
    srStat         : HsrStat;         // ��谴srMatCode
    srOrderv       : HsrOrderv;       // ���ᰴü
    PatInfo        : HPatInfo;        // ȯ������ ��ü
    UserInfo       : HUserInfo;       // ��������� ��ü
    WardInfo       : HWardInfo;       // ���� ��ü
    srRoomCode     : HsrRoomCode;     // �˻�� ��ü
    srEquipmentCode:HsrEquipmentCode; // ���ü
    srExamCode     : HsrExamCode;     // �˻��׸� ��ü
    srRsltCode     : HsrRsltCode;     // �ǵ�����ڵ� ��ü
    srSearchCd     : HsrSearchCd;     // �˻��� ��ü
    srMatCode      : HsrMatCode;      // �Ҹ���� ��ü
    srScheduleCode : HsrScheduleCode; // ������Ÿ�� ��ü
    srSchedule     : HsrSchedule;     // ������ ��ü
    srPkg          : HsrPkg;          // �Ű��׸� ��ü
    srExam         : HsrExam;         // �˻� ��ü
    srReserve      : HsrReserve;      // �˻翹�� ��ü
    srAccept       : HsrAccept;       // �˻����� ��ü
    srPhyAcpt      : HsrPhyAcpt;      // �Ű����� ��ü
    srExecute      : HsrExecute;      // �˻�ǽ� ��ü
    srReadFilm     : HsrReadFilm;     // �ǵ� ��ü
    srPhyread      : HsrPhyRead;      // �Ű��ǵ� ��ü
    srFilm         : HsrFilm;         // �ʸ� ��ü
    srConsult      : HsrConsult;      // ����� ��ü
    srRedoct       : HsrRedoct;       // �ǵ��� �ڵ�
    MessageStr     : String;          // System Message
    mdexmort       : Hmdexmort;       // ������ ü�� �˻� ó����ȸ
    srDrugUse      : HsrDrugUse;      // �˻�þ��뷮 ��ȸ
    srDgcdmt       : HsrDgcdmt;       // ��ǰ�����ȸ
    srOpreqt       : HsrOpreqt;       // ����������ȹǥ ��ȸ
    srExCode       : HsrExCode;       // ����������ȹǥ ��ȸ�� ���(���ῡ�� ������)
    srInsamt       : HsrInsamt;       // ����������ȹǥ ��ȸ�� ���(���ῡ�� ������)
    srMcomct       : HsrMcomct;       // ����������ȹǥ ��ȸ�� ���(���ῡ�� ������)
    sdStatis       : HsdStatis;
    mdOpdlst       : HmdOpdlst;
    srHolidt       : HsrHolidt;       // �������� ������ ��� ��ȸ


    srSitect       : HsrSitect;       // ����ڵ� ����...
    srAcrcdt       : HsrAcrcdt;       // �����ڵ� ����...
    srCodect       : HsrCodect;       // �����ڵ� ������...
    cmDept2        : HcmDept2;
    srShorct       : HsrShorct;       // ����ں� �ǵ���� ���� ����Ű �Ҵ�...
    su2examt       : Hsu2examt;       //2003.02.23 ���� �߰�

    srCertUsr : HsrCertUsr;                                     //SONGLIM_THOMA
    srCertInj : HsrCertInj;                                      //SONGLIM_THOMA

    srWait    : HSrWait;

    mdCancrt  : HmdCancrt;            //�ϵ��ȯ��, KimDaeYong 2010-08-24
    srAdvmst  : HsrAdvmst;            //���������ۿ����, KimDaeYong 2011-02-16
    srAdvcdt  : HsrAdvcdt;            //���������ۿ��ڵ����, KimDaeYong 2011-02-21

    srSmsdrt  : HsrSmsdrt;            //SMS�ǻ���������, KimDaeYong 2011-03-03
    srSmsmgt  : HsrSmsmgt;            //SMS�޽����ڵ����, KimDaeYong 2011-03-03
    srSmssdt  : HsrSmssdt;            //SMS���۳���, KimDaeYong 2011-03-03
    srSmsmrt  : HsrSmsmrt;            //SMS�߰������ڵ����, KimDaeYong 2011-03-11
    srSdtcrt  : HsrSdtcrt;            //����ġ��, KimDaeYong 2011-07-20
    srClndvt  : HsrClndvt;            //��ô�����, KimDaeYong 2011-09-19
    mdScopyt  : HmdScopyt;            //���ð�ó��Ȯ��, KimDaeYong 2012-04-25
    srHeardt  : HsrHeardt;            //��û�������, KimDaeYohng 2012-06-25
    srTbrptt  : HsrTbrptt;            //���ٰ˻��Ƿڼ�, KimDaeYohng 2012-03-27
    
    srSedmst  : HsrSedmst;            //����ġ��(�ű�)_������, KimSongJu 2015.4
    srSedevt  : HsrSedevt;            //����ġ��(�ű�)_�������򰡱��, KimSongJu 2015.4
    srSedmot  : HsrSedmot;            //����ġ��(�ű�)_������ȯ�ڱ��, KimSongJu 2015.4
    srSedmet  : HsrSedmet;            //����ġ��(�ű�)_������������, KimSongJu 2015.4
    srSedrct  : HsrSedrct;            //����ġ��(�ű�)_������ȸ�����¹���Ǳ���, KimSongJu 2015.4
    srSedmgt  : HsrSedmgt;            //����ġ��(�ű�)_����ġ���ϸ�����, KimSongJu 2015.8
    srsuveyt  : Hsrsuveyt;
    mdDnrrgt  : HmdDnrrgt;  //�����Ƿ����. KimDaeYong 2019-05-21
    srpacsot  : Hsrpacsot;
    srbefchk  : Hsrbefchk;  // �˻� �� üũ����Ʈ 2021.06.18. �쳲�� �߰�


    { ȯ������ Global Variable }
    gPatNo    : String;
    gPatName  : String;
    gResNo    : String;
    gSex      : String;
    gBirth    : String;
    gTelno1   : String;
    gTelno2   : String;
    gAdmdate  : String;
    gDschdate : String;

    gWardno   : String;
    gRoomno   : String;

    gPattype  : String;
    gTypecd   : String;
    gCustcd   : String;

    gPassport : String; // ���ǹ�ȣ����. 2022.02.21. �쳲�� �߰�.

    { ��������� Global Variable }
    gUserID   : String;
    gUserName : String;
    gDeptName : String;

implementation


//==============================================================================
//
//==============================================================================
function HsrStat.eqipcnt(Fromdate,Todate,Roomcode,Examtype: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROM1;S_TO1;S_CODE1;S_TYPE1');
    SetFldValue(0,[Fromdate,Todate,Roomcode,Examtype]);
    if txGetF('SR_EQIPCNT_L') then
    begin
       Result := GetRecordCnt('S_CODE1');

       GetFldVar('S_CODE1' , sEqipcode);
       GetFldVar('S_NAME1' , sEqipname);
       GetFldVar('L_CNT1'  , lWPcnt);
       GetFldVar('L_CNT2'  , lWEcnt);
       GetFldVar('L_CNT3'  , lOPcnt);
       GetFldVar('L_CNT4'  , lOEcnt);

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;

end;

//==============================================================================
//
//==============================================================================
function HsrStat.eusercnt(Fromdate,Todate,Roomcode,Examtype,Stype: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROM1;S_TO1;S_CODE1;S_TYPE1;S_TYPE2;S_FLAG9');
    SetFldValue(0,[Fromdate,Todate,Roomcode,Examtype,Stype,'EB1']);
    if txGetF('SR_EUSERCNT_L') then
    begin
       Result := GetRecordCnt('S_USERID1');

       GetFldVar('S_USERID1' , sExecid);
       GetFldVar('S_USERNAME1' , sExecname);
       GetFldVar('L_CNT1'  , lWPcnt);
       GetFldVar('L_CNT2'  , lWEcnt);
       GetFldVar('L_CNT3'  , lOPcnt);
       GetFldVar('L_CNT4'  , lOEcnt);
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;

end;

//==============================================================================
// �˻���� ��ȸ - �˻纰 ����
//==============================================================================
function HsrStat.examcnt(Fromdate,Todate,Roomcode,Examtype: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROM1;S_TO1;S_CODE1;S_TYPE1');
    SetFldValue(0,[Fromdate,Todate,Roomcode,Examtype]);
    if txGetF('SR_EXAMCNT_L') then  // sr_examcnt_l.pc
    begin
       Result := GetRecordCnt('S_CODE1');

       GetFldVar('S_CODE1' , sExamcode);
       GetFldVar('S_NAME1' , sExamname);
       GetFldVar('L_CNT2'  , lWEcnt);
       GetFldVar('L_CNT4'  , lOEcnt);

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;

end;

//==============================================================================
// �˻���� ��ȸ - �˻籸�к� ����      2005.02.23 ����
//==============================================================================
function HsrStat.examcnt2(Todate,Roomcode,Examtype: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_TODATE;S_CODE1;S_TYPE1');
    SetFldValue(0,[Todate,Roomcode,Examtype]);
    if txGetF('SR_EXAMSTAT_L5') then  // sr_examstat_l5.pc
    begin
       Result := GetRecordCnt('S_CODE1');

       GetFldVar('S_CODE1'  , sExamcode);
       GetFldVar('S_NAME1'  , sExamname);
       GetFldVar('S_STRING1'   , lcnt1);
       GetFldVar('S_STRING2'   , lcnt2);
       GetFldVar('S_STRING3'   , lcnt3);
       GetFldVar('S_STRING4'   , lcnt4);
       GetFldVar('S_STRING5'   , lcnt5);
       GetFldVar('S_STRING6'   , lcnt6);
       GetFldVar('S_STRING7'   , lcnt7);
       GetFldVar('S_STRING8'   , lcnt8);
       GetFldVar('S_STRING9'   , lcnt9);
       GetFldVar('S_STRING10'  , lcnt10);
       GetFldVar('S_STRING10'  , lcnt11);
       GetFldVar('S_STRING12'  , lcnt12);
       GetFldVar('S_STRING13'  , lcnt13);
       GetFldVar('S_STRING14'  , lcnt14);
       GetFldVar('S_STRING15'  , lcnt15);
       GetFldVar('S_STRING16'  , lcnt16);
       GetFldVar('S_STRING17'  , lcnt17);
       GetFldVar('S_STRING18'  , lcnt18);
       GetFldVar('S_STRING19'  , lcnt19);
       GetFldVar('S_STRING20'  , lcnt20);
       GetFldVar('S_STRING21'  , lcnt21);
       GetFldVar('S_STRING22'  , lcnt22);
       GetFldVar('S_STRING23'  , lcnt23);
       GetFldVar('S_STRING24'  , lcnt24);
       GetFldVar('S_STRING25'  , lcnt25);
       GetFldVar('S_STRING26'  , lcnt26);
       GetFldVar('S_STRING27'  , lcnt27);
       GetFldVar('S_STRING28'  , lcnt28);
       GetFldVar('S_STRING29'  , lcnt29);
       GetFldVar('S_STRING30'  , lcnt30);
       GetFldVar('S_STRING31'  , lcnt31);
       GetFldVar('S_STRING32'  , lcnt32);

       txFree;
    end;

    MessageStr := GetTxMsg;
end;

//==============================================================================
// �˻��׸� �˻翬��� - none ��缱...
//==============================================================================
function HsrStat.examstat(Fromdate,Todate,Roomcode,Examtype: String): Integer;
var
   LocalFile: String;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROMDATE;S_TODATE;S_CODE1;S_TYPE1');
    SetFldValue(0,[Fromdate,Todate,Roomcode,Examtype]);
    if txGetFile('SR_EXAMSTAT_L',LocalFile) then      // sr_examstat_l.pc
    begin
        Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                              [@sExamcode,
                               @sExamname,
                               @sDate3,
                               @sDate4,
                               @sDate5,
                               @sDate6,
                               @sDate7,
                               @sDate8,
                               @sDate9,
                               @sDate10,
                               @sDate11,
                               @sDate12,
                               @sDate1,
                               @sDate2]);
    
       txFree;
    end;

    MessageStr := GetTxMsg;
end;

//==============================================================================
// �˻��� - �˻��׸� �˻翬���
// 2002.05.27. ������. - none ��缱...
//==============================================================================
function HsrStat.examstat4(Fromdate, Todate, Roomcode,
  Examtype: String): Integer;
var
   LocalFile: String;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROMDATE;S_TODATE;S_CODE1;S_TYPE1;S_TYPE2');
    SetFldValue(0,[Fromdate,Todate,Roomcode,Examtype,'A']);
    if txGetFile('SR_EXAMSTAT_L4',LocalFile) then
    begin
        Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                              [@sExecname,
                               @sExamcode,
                               @sExamname,
                               @sDate3,
                               @sDate4,
                               @sDate5,
                               @sDate6,
                               @sDate7,
                               @sDate8,
                               @sDate9,
                               @sDate10,
                               @sDate11,
                               @sDate12,
                               @sDate1,
                               @sDate2]);
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

function HsrStat.examstat5(Fromdate, Todate, Roomcode,
  Examtype: String): Integer;
var
   LocalFile: String;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROMDATE;S_TODATE;S_CODE1;S_TYPE1;S_TYPE2');
    SetFldValue(0,[Fromdate,Todate,Roomcode,Examtype,'B']);
    if txGetFile('SR_EXAMSTAT_L4',LocalFile) then
    begin
        Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                              [@sExecname,
                               @sExamcode,
                               @sExamname,
                               @sDate3,
                               @sDate4,
                               @sDate5,
                               @sDate6,
                               @sDate7,
                               @sDate8,
                               @sDate9,
                               @sDate10,
                               @sDate11,
                               @sDate12,
                               @sDate1,
                               @sDate2]);
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �˻�з��� �˻翬���
//==============================================================================
function HsrStat.examstat2(Fromdate,Todate,Roomcode,Examtype,ExceptRR: String): Integer;
var
   LocalFile: String;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_FROMDATE;S_TODATE;S_CODE1;S_TYPE1;S_YN1');
     SetFldValue(0,[Fromdate,Todate,Roomcode,Examtype,ExceptRR]);
     if txGetFile('SR_EXAMSTAT_L2',LocalFile) then  // sr_examstat_l2.pc
     begin
        Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                            [@sExamcode
                            ,@sExamname
                  			,@sDate3_I	  , @sDate3_O
                  			,@sDate4_I    , @sDate4_O
                  			,@sDate5_I    , @sDate5_O
                  			,@sDate6_I    , @sDate6_O
                  			,@sDate7_I    , @sDate7_O
                  			,@sDate8_I    , @sDate8_O
                  			,@sDate9_I    , @sDate9_O
                  			,@sDate10_I   , @sDate10_O
                  			,@sDate11_I   , @sDate11_O
                  			,@sDate12_I   , @sDate12_O
                  			,@sDate1_I    , @sDate1_O
                  			,@sDate2_I    , @sDate2_O
                            ,@sSlipChg]);
     
        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
// �˻�з��� �˻翬���1
//==============================================================================
function HsrStat.examstat3(Fromdate,Todate,Roomcode,Examtype,ExceptRR: String): Integer;
var
    LocalFile: String;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROMDATE;S_TODATE;S_CODE1;S_TYPE1;S_YN1');
    SetFldValue(0,[Fromdate,Todate,Roomcode,Examtype,ExceptRR]);

    if txGetFile('SR_EXAMSTAT_L3',LocalFile) then    // sr_examstat_l3.pc
    begin
        Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                              [@sExamcode,
                               @sExamname,
                               @sDate3,
                               @sDate4,
                               @sDate5,
                               @sDate6,
                               @sDate7,
                               @sDate8,
                               @sDate9,
                               @sDate10,
                               @sDate11,
                               @sDate12,
                               @sDate1,
                               @sDate2]);
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �˻�з��� �˻翬���1
//==============================================================================
function HsrStat.statflag(Fromdate,Todate,Roomcode,Examtype,Readdr,Readdr2,StatFlag,Statflag2,Agetype: String): Integer;
var
    LocalFile: String;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROMDATE;S_TODATE;S_CODE1;S_TYPE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6');
    SetFldValue(0,[Fromdate,Todate,Roomcode,Examtype,Readdr,Readdr2,StatFlag,Statflag2,Agetype]);

    if txGetFile('SR_STATFLAG_L',LocalFile) then    // sr_statflag_l.pc
    begin
        Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                              [@sGubun,
                               @sExamcode,
                               @sExamname,
                               @sDate1,
                               @sDate2,
                               @sDate3,
                               @sDate4,
                               @sDate5,
                               @sDate6,
                               @sDate7,
                               @sDate8,
                               @sDate9,
                               @sDate10,
                               @sDate11,
                               @sDate12]);
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �˻�з��� �˻翬���2
//==============================================================================
function HsrStat.examstat22(Fromdate,Todate,Roomcode,Examtype,ExceptRR: String): Integer;
var
   LocalFile: String;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_FROMDATE;S_TODATE;S_CODE1;S_TYPE1;S_YN1');
     SetFldValue(0,[Fromdate,Todate,Roomcode,Examtype,ExceptRR]);
     if txGetFile('SR_EXAMSTAT_L22',LocalFile) then  // sr_examstat_l22.pc
     begin
        Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                            [@sExamcode
                            ,@sExamname
                  			,@sDate3_I	  , @sDate3_O
                  			,@sDate4_I    , @sDate4_O
                  			,@sDate5_I    , @sDate5_O
                  			,@sDate6_I    , @sDate6_O
                  			,@sDate7_I    , @sDate7_O
                  			,@sDate8_I    , @sDate8_O
                  			,@sDate9_I    , @sDate9_O
                  			,@sDate10_I   , @sDate10_O
                  			,@sDate11_I   , @sDate11_O
                  			,@sDate12_I   , @sDate12_O
                  			,@sDate1_I    , @sDate1_O
                  			,@sDate2_I    , @sDate2_O]);
     
        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
// ����ʸ��� �˻� �����
//==============================================================================
function HsrStat.filmstat(Fromdate,Todate,Roomcode,Examtype: String): Integer;
var
   LocalFile: String;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_FROMDATE;S_TODATE;S_CODE1;S_TYPE1;S_FLAG9');
     SetFldValue(0,[Fromdate,Todate,Roomcode,Examtype,'EB1']);
     if txGetFile('SR_FILMSTAT_L',LocalFile) then
     begin
        Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                              [@sExamcode,
                               @sExamname,
                               @sDate3,
                               @sDate4,
                               @sDate5,
                               @sDate6,
                               @sDate7,
                               @sDate8,
                               @sDate9,
                               @sDate10,
                               @sDate11,
                               @sDate12,
                               @sDate1,
                               @sDate2]);
     
        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;



//==============================================================================
// ��ǰ�� �˻� �����
//==============================================================================
function HsrStat.drugstat(Fromdate, Todate, Roomcode, Examtype,
  Locate: String): Integer;
var
    LocalFile: String;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROMDATE;S_TODATE;S_CODE1;S_TYPE1;S_FLAG9');
    SetFldValue(0,[Fromdate,Todate,Roomcode,Examtype,'EB1']);
    if txGetFile('SR_DRUGSTAT_L2',LocalFile) then
    begin
        Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                             [@sDrugcode,
                              @sDrugname,
                              @sDate3,
                              @sDate4,
                              @sDate5,
                              @sDate6,
                              @sDate7,
                              @sDate8,
                              @sDate9,
                              @sDate10,
                              @sDate11,
                              @sDate12,
                              @sDate1,
                              @sDate2]);
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;




//==============================================================================
// ������� �˻� �����
//==============================================================================
function HsrStat.deptstat(Fromdate,Todate,Roomcode,Examtype,Locate: String): Integer;
var
   LocalFile: String;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_FROMDATE;S_TODATE;S_CODE1;S_TYPE1;S_CODE2');
     SetFldValue(0,[Fromdate,Todate,Roomcode,Examtype,Locate]);
     if txGetFile('SR_DEPTSTAT_L',LocalFile) then    // sr_deptstat_l.pc
     begin
        Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                              [@sExamcode,
                               @sExamname,
                               @sDate3,
                               @sDate4,
                               @sDate5,
                               @sDate6,
                               @sDate7,
                               @sDate8,
                               @sDate9,
                               @sDate10,
                               @sDate11,
                               @sDate12,
                               @sDate1,
                               @sDate2]);

        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
// ��ǰ�� �˻� �����
//==============================================================================
{
function HsrStat.deptstat(Fromdate,Todate,Roomcode,Examtype,Locate: String): Integer;
var
   LocalFile: String;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_FROMDATE;S_TODATE;S_CODE1;S_TYPE1;S_CODE2');
     SetFldValue(0,[Fromdate,Todate,Roomcode,Examtype,Locate]);
     if txGetFile('SR_DRUGSTAT_L',LocalFile) then
     begin
        Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                              [@sExamcode,
                               @sExamname,
                               @sDate3,
                               @sDate4,
                               @sDate5,
                               @sDate6,
                               @sDate7,
                               @sDate8,
                               @sDate9,
                               @sDate10,
                               @sDate11,
                               @sDate12,
                               @sDate1,
                               @sDate2]);
     
        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;
}



//==============================================================================
// �ǵ��Ǻ�, ����, �˻��׸�, ȯ�ڱ��к� �ǵ��Ǽ�...
//==============================================================================
function HsrStat.ReadStatPerMonth(Fromdate, Examtype, Locate: String):Integer;
var
    LocalFile: String;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROMDATE;S_CODE1;S_CODE2');
    SetFldValue(0,[Fromdate,Examtype,Locate]);

    if txGetFile('SR_REDSTAT_L1',LocalFile) then
    begin
        Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                             [@sReadname,
                              @sExamcode,
                              @sExamname,
                              @lWPcnt,
                              @lWEcnt,
                              @lOPcnt,
                              @lOEcnt]);
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �ǵ��Ǻ�, ����, �˻��׸�, ȯ�ڱ��к� �ǵ��Ǽ�...
//==============================================================================
function HsrStat.ReadStatPerMonth2(Fromdate, Todate, Examtype, Locate: String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROMDATE;S_TODATE;S_CODE1;S_CODE2');
    SetFldValue(0,[Fromdate,Todate,Examtype,Locate]);

    if txGetF('SR_REDSTAT_L3') then
    begin
        Result := GetRecordCnt('S_STRING1');
		GetFldVar('S_STRING1',  sReadname);

		GetFldVar('L_CNT1',     sDate1);
		GetFldVar('L_CNT2',     sDate1_I);
		GetFldVar('L_CNT3',     sDate1_O);
		GetFldVar('L_CNT4',     sDate2);
		GetFldVar('L_CNT5',     sDate2_I);
		GetFldVar('L_CNT6',     sDate2_O);
		GetFldVar('L_CNT7',     sDate3);
		GetFldVar('L_CNT8',     sDate3_I);
		GetFldVar('L_CNT9',     sDate3_O);
		GetFldVar('L_CNT10',    sDate4);
		GetFldVar('L_CNT11',    sDate4_I);
		GetFldVar('L_CNT12',    sDate4_O);
		GetFldVar('L_CNT13',    sDate5);
		GetFldVar('L_CNT14',    sDate5_I);
		GetFldVar('L_CNT15',    sDate5_O);
		GetFldVar('L_CNT16',    sDate6);
		GetFldVar('L_CNT17',    sDate6_I);
		GetFldVar('L_CNT18',    sDate6_O);
		GetFldVar('L_CNT19',    sDate7);
		GetFldVar('L_CNT20',    sDate7_I);
		GetFldVar('L_CNT21',    sDate7_O);

		GetFldVar('L_CNT22',    sDate8);
		GetFldVar('L_CNT23',    sDate8_I);
		GetFldVar('L_CNT24',    sDate8_O);
		GetFldVar('L_CNT25',    sDate9);
		GetFldVar('L_CNT26',    sDate9_I);
		GetFldVar('L_CNT27',    sDate9_O);
		GetFldVar('L_CNT28',    sDate10);
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �ǵ��Ǻ� ������ �Է°Ǽ�...
//==============================================================================
function HsrStat.ReadStatPerMonth3(Fromdate, Todate, Examtype,
  Locate: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROMDATE;S_TODATE;S_CODE1;S_CODE2');
    SetFldValue(0,[Fromdate,Todate,Examtype,Locate]);

    if txGetF('SR_REDSTAT_L4') then
    begin
        Result := GetRecordCnt('S_STRING1');
		GetFldVar('S_STRING1',  sReadname);

		GetFldVar('L_CNT1',     sDate1);
		GetFldVar('L_CNT2',     sDate1_I);
		GetFldVar('L_CNT4',     sDate2);
		GetFldVar('L_CNT5',     sDate2_I);
		GetFldVar('L_CNT7',     sDate3);
		GetFldVar('L_CNT8',     sDate3_I);
		GetFldVar('L_CNT10',    sDate4);
		GetFldVar('L_CNT11',    sDate4_I);
		GetFldVar('L_CNT13',    sDate5);
		GetFldVar('L_CNT14',    sDate5_I);
		GetFldVar('L_CNT16',    sDate6);
		GetFldVar('L_CNT17',    sDate6_I);
		GetFldVar('L_CNT19',    sDate7);
		GetFldVar('L_CNT20',    sDate7_I);

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
// 2003.11.19 �̰�ȭ -- ������ �ǵ����
//==============================================================================
function HsrStat.ReadStatPerMonth4(Fromdate, Todate, Examtype, Locate: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROMDATE;S_TODATE;S_CODE1;S_CODE2');
    SetFldValue(0,[Fromdate,Todate,Examtype,Locate]);

    if txGetF('SR_REDSTAT_L5') then        // sr_redstat_l5.pc
    begin
        Result := GetRecordCnt('S_STRING1');
  		  GetFldVar('S_STRING1',  sReadid);
                  GetFldVar('S_STRING2',  sReadname);
		  GetFldVar('L_CNT1',     sDate1);    //RG
		  GetFldVar('L_CNT2',     sDate2);    //RA
		  GetFldVar('L_CNT3',     sDate3);    //RF
		  GetFldVar('L_CNT4',     sDate4);    //RC
		  GetFldVar('L_CNT5',     sDate5);    //RM
		  GetFldVar('L_CNT6',     sDate6);    //RS
		  GetFldVar('L_CNT7',     sDate7);    //RR
                  GetFldVar('L_CNT8',     sDate8);    //RI

       txFree;
    end;

    MessageStr := GetTxMsg;
end;




//==============================================================================
// ���ð�� ���...
//==============================================================================
function HsrStat.S01Stat(Fromdate, Todate, Examtype: String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROMDATE;S_TODATE;S_CODE1');
    SetFldValue(0,[Fromdate,Todate,Examtype]);

    if txGetF('SR_S01STAT_L') then
    begin
        Result := GetRecordCnt('S_STRING1');
		GetFldVar('S_STRING1',  sReadname);

		GetFldVar('L_CNT1',     sDate1);
		GetFldVar('L_CNT2',     sDate1_I);
		GetFldVar('L_CNT3',     sDate1_O);
		GetFldVar('L_CNT4',     sDate2);
		GetFldVar('L_CNT5',     sDate2_I);
		GetFldVar('L_CNT6',     sDate2_O);
		GetFldVar('L_CNT7',     sDate3);
		GetFldVar('L_CNT8',     sDate3_I);
		GetFldVar('L_CNT9',     sDate3_O);
		GetFldVar('L_CNT10',    sDate4);
		GetFldVar('L_CNT11',    sDate4_I);
		GetFldVar('L_CNT12',    sDate4_O);
		GetFldVar('L_CNT13',    sDate5);
		GetFldVar('L_CNT14',    sDate5_I);
		GetFldVar('L_CNT15',    sDate5_O);
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ���ð�� ���2...
//==============================================================================
function HsrStat.S01Stat2(Gubun,Fromdate, Todate, RoomCode,Clndvcode,Eqipcode: String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE2;S_FROMDATE;S_TODATE;S_CODE1;S_CODE3;S_CODE4');
    SetFldValue(0,[Gubun,Fromdate,Todate,RoomCode,Clndvcode,Eqipcode]);

    if txGetF('SR_S01STAT_L2') then
    begin
        Result := GetRecordCnt('S_STRING1');
		GetFldVar('S_STRING1', sExamCode);
		GetFldVar('S_STRING2', sExamName);
		GetFldVar('S_STRING3', sUCount	);
		GetFldVar('S_STRING4', sGCount	);
		GetFldVar('S_STRING5', sOCount	); 
		GetFldVar('S_STRING6', sICount	);
		GetFldVar('S_STRING7', sTotal	);
    GetFldVar('S_STRING8', sType	);

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;




//==============================================================================
// �ǵ��Ǻ�, �⵵��, �˻��׸� �ǵ��Ǽ�...
//==============================================================================
function HsrStat.ReadStatPerYear(Fromdate, Todate, Examtype, Locate: String):Integer;
//var
//    LocalFile: String;
begin
    Result := -1;
    txAlloc;

    SetFldName('S_FROMDATE;S_TODATE;S_CODE1;S_CODE2');
    SetFldValue(0,[Fromdate,Todate,Examtype,Locate]);

    if txGetF('SR_REDSTAT_L2') then
    begin
        Result := GetRecordCnt('S_STRING1');
		GetFldVar('S_STRING1',  sReadname);
		GetFldVar('L_CNT3',     sDate3);
		GetFldVar('L_CNT4',     sDate4);
		GetFldVar('L_CNT5',     sDate5);
		GetFldVar('L_CNT6',     sDate6);
		GetFldVar('L_CNT7',     sDate7);
		GetFldVar('L_CNT8',     sDate8);
		GetFldVar('L_CNT9',     sDate9);
		GetFldVar('L_CNT10',    sDate10);
		GetFldVar('L_CNT11',    sDate11);
		GetFldVar('L_CNT12',    sDate12);
		GetFldVar('L_CNT1',     sDate1);
		GetFldVar('L_CNT2',     sDate2);

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//2003.3.12 �̰�ȭ -- �����
//==============================================================================
function HsrStat.JutongSel(Fromdate, Todate, Examtype: String): Integer;
begin
    Result := -1;
    txAlloc;

    SetFldName('S_DATE1;S_DATE2;S_CODE1');
    SetFldValue(0,[Fromdate,Todate,Examtype]);

    if txGetF('SR_JUTON_L1') then
    begin
       GetFldVar('S_STRING1',  ordcode);
       GetFldVar('S_STRING2',  ordname);
       GetFldVar('S_STRING3',  OutCount);
       GetFldVar('S_STRING4',  InCount);
       GetFldVar('S_STRING5',  AllCount);
       GetFldVar('S_STRING6',  CountAvg);

       Result := GetRecordCnt('S_STRING6');

       txFree;
    end;

    MessageStr := GetTxMsg;
end;


//==============================================================================
//2003.5.15 �̰�ȭ -- �������
//==============================================================================
function HsrStat.Depttong(Fromdate, Todate, Examtype, Gubun, Gubun2 : String): Integer;
begin

    Result := -1;
    txAlloc;
{
    SetFldName('S_DATE1;S_DATE2;S_CODE1;S_CODE2;S_TYPE1');
    SetFldValue(0,[Fromdate,Todate,Examtype,Gubun, Flag]);
}
    SetFldName('S_DATE1;S_DATE2;S_CODE1;S_CODE2;S_CODE3');
    SetFldValue(0,[Fromdate,Todate,Examtype,Gubun,Gubun2]);

    if txGetF('SR_DEPTON_L1') then    // sr_depton_l1.pc
    begin
       GetFldVar('S_STRING1'  ,  out0 );
       GetFldVar('S_STRING2'  ,  slipname);
       GetFldVar('S_STRING3'  ,  examname);
       GetFldVar('L_CNT4'  ,  out1u);   //HEC����
       GetFldVar('L_CNT36' ,  out1g);   //HEC�ϰ�
       GetFldVar('L_CNT5'  ,  out51);
       GetFldVar('L_CNT6'  ,  out52);
       GetFldVar('L_CNT7'  ,  out53);
       GetFldVar('L_CNT8'  ,  out54);
       GetFldVar('L_CNT9'  ,  out55);
       GetFldVar('L_CNT10' ,  out56);
       GetFldVar('L_CNT11' ,  out57);
       GetFldVar('L_CNT12' ,  out58);
       GetFldVar('L_CNT37' ,  out59);   //IP�߰�, KimDaeYong 2012-05-15
       GetFldVar('L_CNT13' ,  out3 );
       GetFldVar('L_CNT14' ,  out4 );
       GetFldVar('L_CNT15' ,  out5 );
       GetFldVar('L_CNT16' ,  out6 );
       GetFldVar('L_CNT17' ,  out7 );
       GetFldVar('L_CNT18' ,  out8 );
       GetFldVar('L_CNT19' ,  out9 );
       GetFldVar('L_CNT20' ,  out10);
       GetFldVar('L_CNT21' ,  out11);
       GetFldVar('L_CNT22' ,  out12);
       GetFldVar('L_CNT23' ,  out13);
       GetFldVar('L_CNT24' ,  out14);
       GetFldVar('L_CNT25' ,  out15);
       GetFldVar('L_CNT26' ,  out16);
       GetFldVar('L_CNT27' ,  out17);
       GetFldVar('L_CNT28' ,  out18);
       GetFldVar('L_CNT29' ,  out19);
       GetFldVar('L_CNT30' ,  out77);
       GetFldVar('L_CNT31' ,  out88);
       GetFldVar('L_CNT32' ,  out89);
       GetFldVar('L_CNT33' ,  out90);
       GetFldVar('L_CNT34' ,  out91);
       GetFldVar('L_CNT35' ,  out92); //2021.03.18. �쳲�� �߰�
       GetFldVar('L_CNT36' ,  out93); //2021.03.18. �쳲�� �߰�
       GetFldVar('L_CNT37' ,  out94); //2021.03.18. �쳲�� �߰�
       GetFldVar('L_CNT38' ,  out95); //2021.03.18. �쳲�� �߰�
       GetFldVar('L_CNT39' ,  out96); //2021.03.18. �쳲�� �߰�
       GetFldVar('L_CNT40' ,  out97); //2021.03.18. �쳲�� �߰�
       GetFldVar('L_CNT41' ,  out98); //2021.03.18. �쳲�� �߰�
       GetFldVar('L_CNT42' ,  out99); //2021.03.18. �쳲�� �߰�
       GetFldVar('L_CNT43' ,  out20);

       Result := GetRecordCnt('S_STRING2');

       txFree;
    end;
       {
       GetFldVar('S_STRING1'  ,  out0 );
       GetFldVar('S_STRING2'  ,  slipname);
       GetFldVar('S_STRING3'  ,  examname);
       GetFldVar('S_STRING4'  ,  out1 );
       GetFldVar('S_STRING5'  ,  out51);
       GetFldVar('S_STRING6'  ,  out52);
       GetFldVar('S_STRING7'  ,  out53);
       GetFldVar('S_STRING8'  ,  out54);
       GetFldVar('S_STRING9'  ,  out55);
       GetFldVar('S_STRING10' ,  out56);
       GetFldVar('S_STRING11' ,  out57);
       GetFldVar('S_STRING12' ,  out58);
       GetFldVar('S_STRING13' ,  out3 );
       GetFldVar('S_STRING14' ,  out4 );
       GetFldVar('S_STRING15' ,  out5 );
       GetFldVar('S_STRING16' ,  out6 );
       GetFldVar('S_STRING17' ,  out7 );
       GetFldVar('S_STRING18' ,  out8 );
       GetFldVar('S_STRING19' ,  out9 );
       GetFldVar('S_STRING20' ,  out10);
       GetFldVar('S_STRING21' ,  out11);
       GetFldVar('S_STRING22' ,  out12);
       GetFldVar('S_STRING23' ,  out13);
       GetFldVar('S_STRING24' ,  out14);
       GetFldVar('S_STRING25' ,  out15);
       GetFldVar('S_STRING26' ,  out16);
       GetFldVar('S_STRING27' ,  out17);
       GetFldVar('S_STRING28' ,  out18);
       GetFldVar('S_STRING29' ,  out19);
       GetFldVar('S_STRING30' ,  out77);
       GetFldVar('S_STRING31' ,  out88);
       GetFldVar('S_STRING32' ,  out89);
       GetFldVar('S_STRING33' ,  out90);
       GetFldVar('S_STRING34' ,  out91);
       GetFldVar('S_STRING35' ,  out92); //2021.03.18. �쳲�� �߰�.
       GetFldVar('S_STRING36' ,  out93); //2021.03.18. �쳲�� �߰�.
       GetFldVar('S_STRING37' ,  out94); //2021.03.18. �쳲�� �߰�.
       GetFldVar('S_STRING38' ,  out95); //2021.03.18. �쳲�� �߰�.
       GetFldVar('S_STRING39' ,  out96); //2021.03.18. �쳲�� �߰�.
       GetFldVar('S_STRING40' ,  out97); //2021.03.18. �쳲�� �߰�.
       GetFldVar('S_STRING41' ,  out98); //2021.03.18. �쳲�� �߰�.
       GetFldVar('S_STRING42' ,  out99); //2021.03.18. �쳲�� �߰�.
       GetFldVar('S_STRING43' ,  out20);
       }

    MessageStr := GetTxMsg;

end;



//fff
///////////////////////////////////////////////////////////////////////////////
//      ���ſ���ȯ�ڵ�� class(HsrOrderv) Member Method                      //
///////////////////////////////////////////////////////////////////////////////
//==============================================================================
//
//==============================================================================
function HsrOrderv.PatPastExamList(FromDate, ToDate, Examtype, RoomCode: String): Integer;
begin
    Result := -1;
    txAlloc; //Pointer�� �޾ƿ�.
    SetFldName('S_FROM1;S_TO1;S_TYPE1;S_CODE1;S_FLAG9');
    SetFldValue(0,[FromDate,ToDate,Examtype,RoomCode,'EB1']);

    if (txGetF('SR_PASTORDER_L')) then   // sr_pastorder_l.pc
    begin //Tuxedo Service Call
        GetFldVar('S_PATNO'    ,sPatNo);     // ȯ�ڹ�ȣ
        GetFldVar('S_PATNAME'  ,sPatName);   // ȯ�ڸ�
        GetFldVar('S_RESNO'    ,sResNo);     // �ֹε�Ϲ�ȣ
        GetFldVar('S_ORDDATE'  ,sOrdDate);   // ó������
        GetFldVar('S_NAME1'    ,sExamName);  // �˻��׸��
        //GetFldVar('S_CODE1'    ,sRoomCode);  // �˻���ڵ�
        GetFldVar('S_STAT1'    ,sExamStat);  // �˻����� Status
        GetFldVar('S_RSVDATE'  ,sRsvDate);   // �����Ͻ�
        GetFldVar('S_MEDDEPT'  ,sMedDept);   // �����
        GetFldVar('S_DRNAME1'  ,sOrdDrNm);   // ó���ǻ��
        GetFldVar('L_SEQNO1'   ,iOrdSeqNo);  // ó�����
        GetFldVar('S_ORDCODE'  ,sExamCode);  // �˻��׸�
        GetFldVar('S_DR1'      ,sOrdDr);     // ó���ǻ�
        Result := GetRecordCnt('S_PATNO'); //Service�� �����ϰ� FML Buffer�� PUT�� Record��

      txFree;
   end;

   //txFree;
end;

//==============================================================================
//
//==============================================================================
function HsrOrderv.PatPastExamDelete(PatNo,OrdDate,UserId,Examtype:String;OrdSeqNo:Integer):Integer;
begin
    Result := -1;

    //Pointer�� �޾ƿ�.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_PATNO;S_ORDDATE;L_SEQNO1;S_EDITID;S_EDITIP;S_TYPE1');
    SetFldValue(0,[PatNo,OrdDate,OrdSeqNo,G_USERID,GetIP,Examtype]);

    //Tuxedo Service Call
    if (txPutF('SR_PASTORDER_D')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
end;

//==============================================================================
// ���� ����ȯ�� ���...
//==============================================================================
function HsrOrderv.InsertPastOrdList(PatNo,ExamCode,OrderDate,DeptCd,DrCd,RoomCode,RsvDate,RcpYn,UserId,Examtype,StudyYn:String):Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_PATNO;S_ORDDATE;S_ORDCODE;S_CODE1;S_RSVDATE;S_MEDDEPT;S_DR1;S_YN1;S_EDITID;S_EDITIP;S_TYPE1;S_YN2');
     SetFldValue(0,[PatNo,OrderDate,ExamCode,RoomCode,RsvDate,DeptCd,DrCd,RcpYn,G_USERID,GetIP,Examtype,StudyYn]);
     if (txPutF('SR_PASTORDER_I')) then
     begin
          Result := 1;
     
        txFree;
     end;

     //txFree;
end;

//==============================================================================
// ȯ������ LIST POP-UP
//==============================================================================
procedure ShowPatInfoList(KeyStr:String; e_Patno:TEdit; p_patname,p_regno,p_sex,p_birth,p_telno1,p_telno2,p_wardno,p_roomno,p_passport:TPanel);
begin
    gPatno := '';
    gPatName := '';
    gResNo := '';
    gSex := '';
    gBirth := '';
    gTelno1 := '';
    gTelno2 := '';
    gWardno := '';
    gRoomno := '';
    gPassport := '';

    // ȯ������ ��ȭ���� ����...
    if (PATINFOF = nil) then
        PATINFOF := TPATINFOF.Create(Application);

    // ǥ�õ� ��ġ ����...
    PATINFOF.Top := e_patno.ClientOrigin.y + e_patno.Height;
    PATINFOF.Left := e_patno.Left + Screen.ActiveForm.Left + 5;
    PATINFOF.ed_keystr.text := KeyStr;

    if (KeyStr <> '') then PATINFOF.SelectPatInfo;

    if (PATINFOF.sgd_patinfo.rowcount = 1) and
       (PATINFOF.sgd_patinfo.cells[0,0] <> '') then
    begin
        PATINFOF.ChoicePatInfo;
        PATINFOF.Close;
    end
    else if (KeyStr = '') or (PATINFOF.sgd_patinfo.cells[0,0] <> '') then
        PATINFOF.ShowModal;

    e_patno.text      := gPatNo;
    p_patname.caption := gPatName;
    p_regno.caption   := gResNo;
    p_sex.Caption     := gSex;
    p_birth.Caption   := gBirth;


    p_wardno.Caption  := Trim(gWardno);


    p_telno1.Caption  := trim(gTelno1);
    p_telno2.Caption  := trim(gTelno2);

    if p_wardno.Caption = '�ܷ�' then
    begin
      p_roomno.Caption := '';
    end
    else if p_wardno.Caption = '���޽�' then
    begin
      case strtoint(Trim(gRoomno)) of
         1  : begin
                p_roomno.Caption := '1����';
              end;
         2  : begin
                p_roomno.Caption := '2����';
              end;
         3  : begin
                p_roomno.Caption := '3����';
              end;
         4  : begin
                p_roomno.Caption := '4����';
              end;
         5  : begin
                p_roomno.Caption := '�ҾƱ���';
              end;
         6  : begin
                p_roomno.Caption := '������';
              end;
         7  : begin
                p_roomno.Caption := 'óġ��';
              end;
         8  : begin
                p_roomno.Caption := '�ݸ�1';
              end;
         9  : begin
                p_roomno.Caption := '�ݸ�2';
              end;
         10 : begin
                p_roomno.Caption := '���аݸ�';
              end;
         11 : begin
                p_roomno.Caption := '��л��';
              end;
         12 : begin
                p_roomno.Caption := '5����';
              end;
         13 : begin
                p_roomno.Caption := '6����';
              end;
         14 : begin
                p_roomno.Caption := '7����';
              end;
      end;

    end
    else
      p_roomno.Caption  := Trim(gRoomno);

      p_passport.Caption := gPassport;
end;

/////////////////////////////////////////////////////////////////////////////
//       ȯ������ LIST POP-UP                                              //
/////////////////////////////////////////////////////////////////////////////

//==============================================================================
//
//==============================================================================
procedure ShowPatInfoList(KeyStr:String; e_Patno:TEdit; p_patname,p_regno,p_sex,p_birth,p_telno1,p_telno2:TPanel);
begin
    if (PATINFOF = nil) then
        PATINFOF := TPATINFOF.Create(Application);

        PATINFOF.Show;

        exit;

    PATINFOF.Top := e_patno.ClientOrigin.y + e_patno.Height;
    PATINFOF.Left := e_patno.Left + Screen.ActiveForm.Left + 5;
    PATINFOF.ed_keystr.text := KeyStr;

    if (KeyStr <> '') then PATINFOF.SelectPatInfo;
    if (PATINFOF.sgd_patinfo.rowcount = 1) and
       (PATINFOF.sgd_patinfo.cells[0,0] <> '') then
    begin
        PATINFOF.ChoicePatInfo;
        PATINFOF.Close;
    end
    else if (KeyStr = '') or (PATINFOF.sgd_patinfo.cells[0,0] <> '') then
        PATINFOF.ShowModal;

    e_patno.text      := gPatNo;
    p_patname.caption := gPatName;
    p_regno.caption   := gResNo;
    p_sex.Caption     := gSex;
    p_birth.Caption   := gBirth;

    p_telno1.Caption  := trim(gTelno1);
    p_telno2.Caption  := trim(gTelno2);


end;

/////////////////////////////////////////////////////////////////////////////
//       ��������� LIST POP-UP                                            //
/////////////////////////////////////////////////////////////////////////////

//==============================================================================
//
//==============================================================================
procedure ShowUserInfoList(KeyStr:String; e1:TEdit; p2,p3:TPanel);
begin
    if (USRINFOF = nil) then
        USRINFOF := TUSRINFOF.Create(Application);
    SRAMAINF.FormCenterize(USRINFOF);
    USRINFOF.ed_keystr.text := KeyStr;

    if (KeyStr <> '') then USRINFOF.SelectUserInfo;
    if (USRINFOF.sgd_userinfo.rowcount = 1) and
       (USRINFOF.sgd_userinfo.cells[0,0] <> '') then
    begin
        USRINFOF.ChoiceUserInfo;
        USRINFOF.Close;
    end
    else if (KeyStr = '') or (USRINFOF.sgd_userinfo.RowCount > 1) then
        USRINFOF.ShowModal;

    e1.text    := gUserID;
    p2.caption := gUserName;
    p3.caption := gDeptName;
end;

/////////////////////////////////////////////////////////////////////////////
//        �޺��ڽ��� ������ڵ� �ҷ�����                                   //
/////////////////////////////////////////////////////////////////////////////

//==============================================================================
//
//==============================================================================
procedure AppendMedDeptList(Combx_meddept:TComboBox);
//\\\var
//\\\    i, ItemCnt : Integer;
begin
    if (Combx_meddept = nil) then exit;

    Combx_meddept.Items.Clear;
{
    txAlloc;
    if (txGetF('AD_SEL_DGDPTC')) then begin // ����ü�� ����
        ItemCnt := GetRecordCnt('MEDDEPT');

        for i := 0 to ItemCnt-1 do
            Combx_meddept.Items.Add(GetStrVal('MEDDEPT',i) + ' ' +
                                    GetStrVal('DEPTKRNM',i));
    
       txFree;
    end;
    //txFree;
}
    Combx_meddept.Items.Add('');
    Combx_meddept.Items.Add('GS �Ϲݿܰ�');
    Combx_meddept.Items.Add('OS �����ܰ�');
    Combx_meddept.Items.Add('CS ��οܰ�');

end;

///////////////////////////////////////////////////////////////////////////////
//      �˻�� class(HsrRoomCode) Member Method                              //
///////////////////////////////////////////////////////////////////////////////

//==============================================================================
//
//==============================================================================
function HsrRoomCode.RoomCodeList(Examtype,Rsvtype: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_TYPE1;S_TYPE2;S_FLAG9');
    SetFldValue(0,[Examtype,Rsvtype,'EB1']);

    if txGetF('SR_ROOMCT_L2') then // sr_roomct_l2.pc
    begin
       Result := GetRecordCnt('S_CODE1');

       GetFldVar('S_CODE1'    , sRoomcode);
       GetFldVar('S_NAME1'    , sRoomname);
       GetFldVar('S_YN1'      , sExecYn);
       GetFldVar('S_TYPE1'    , sRsvType);
       GetFldVar('S_USERID1'  , sChifTech);
       GetFldVar('S_USERNAME1', sChifName);
       GetFldVar('S_TELNO'    , sTelNo);

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//0. ����....
//1. KimDaeYong 2009-06-29
//  - �߾ӿ��࿡�� �˻�� ��ȣ�ô� ���� ������ ����ؾ� �ϹǷ� ScrRoom�μ� �߰�
//  - �˻����ȸ������ ����ϸ� �ٸ� �κп��� Call�ô� ''ó����
//==============================================================================
function HsrRoomCode.RoomCodeFullList(RoomCode, RoomName, Examtype, Locate, ScrRoom:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_NAME1;S_TYPE1;S_CODE2;S_CODE3');
    SetFldValue(0,[RoomCode,RoomName,Examtype,Locate, ScrRoom]);

    if (txGetF('SR_ROOMCT_L1')) then     // sr_roomct_l1.pc
    begin
        GetFldVar('S_CODE1'    , sRoomCode);
        GetFldVar('S_NAME1'    , sRoomName);
        GetFldVar('S_YN1'      , sExecYn);
        GetFldVar('S_TYPE1'    , sRsvType);
        GetFldVar('S_CODE2'    , sDeptcode);
        GetFldVar('S_NAME2'    , sDeptname);
        GetFldVar('S_USERID1'  , sChifTech);
        GetFldVar('S_USERNAME1', sChifName);
        GetFldVar('S_TELNO'    , sTelNo);
        GetFldVar('S_CODE3'    , sErroomcd);
        GetFldVar('S_CODE4'    , sErdept);
        GetFldVar('S_CODE5'    , sDeldate); //��뿩��, KimDaeYong 2013-01-15

        Result := GetRecordCnt('S_CODE1');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrRoomCode.RoomCodeInsert(RoomCode,RoomName,Examtype,ExecYn,RsvType,Roomdept,ChifTech,
  TelNo,Erroomcd,Erdept,EditId:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_NAME1;S_TYPE1;S_YN1;S_TYPE2;S_CODE2;S_USERID1;S_TELNO;S_CODE3;S_CODE4;S_EDITID');
    SetFldValue(0,[RoomCode,RoomName,Examtype,ExecYn,RsvType,Roomdept,ChifTech,TelNo,Erroomcd,Erdept,G_USERID]);

    if (txPutF('SR_ROOMCT_I1')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrRoomCode.RoomCodeUpdate(RoomCode,RoomName,Examtype,ExecYn,RsvType,Roomdept,ChifTech,TelNo,Erroomcd,Erdept,EditId:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_NAME1;S_TYPE1;S_YN1;S_TYPE2;S_CODE2;S_USERID1;S_TELNO;S_CODE3;S_CODE4;S_EDITID');
    SetFldValue(0,[RoomCode,RoomName,Examtype,ExecYn,RsvType,Roomdept,ChifTech,TelNo,Erroomcd,Erdept,G_USERID]);

    if (txPutF('SR_ROOMCT_U1')) then
    begin
        Result := 1;
        //txFree;
    
       txFree;
    end;

    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrRoomCode.RoomCodeDelete(RoomCode,Examtype:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_TYPE1');
    SetFldValue(0,[RoomCode,Examtype]);

    if (txPutF('SR_ROOMCT_D1')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//��뿩��, KimDaeYong 2013-01-15
//==============================================================================
function HsrRoomCode.RoomCodeUpdate2(RoomCode, sUseyn, Examtype:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_CODE2;S_TYPE1');
    SetFldValue(0,[RoomCode, sUseyn, Examtype]);

    if (txPutF('SR_ROOMCT_U2')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

///////////////////////////////////////////////////////////////////////////////
//      ��� class(HsrEquipmentCode) Member Method                              //
///////////////////////////////////////////////////////////////////////////////

//==============================================================================
// �˻���� ��ȸ
//==============================================================================
function HsrEquipmentCode.EquipmentCodeList(ExamType,RoomCode:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_TYPE1;S_CODE1;S_FLAG9');
    SetFldValue(0,[ExamType,RoomCode,'EB1']);

    if (txGetF('SR_EQUICT_L1')) then
    begin
   	    GetFldVar('S_CODE2'     , sEquipmentCode  );
	    GetFldVar('S_NAME1'     , sEquipmentName  );
	    GetFldVar('S_CODE3'     , sRoomCode       );
	    GetFldVar('S_USERID1'   , sChifTech       );
	    GetFldVar('S_USERNAME1' , sChifName       );
	    GetFldVar('S_TELNO'     , sTelNo          );
        Result := GetRecordCnt('S_CODE2');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
//
//==============================================================================
function HsrEquipmentCode.EquipmentCodeInsert(sEqipcode,sEqipname,sRoomcode,sExamtype,sChiftech,sTelno,sEditid: String): Integer;

begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_NAME1;S_CODE2;S_TYPE1;S_USERID1;S_TELNO;S_EDITID');
    SetFldValue(0,[sEqipcode,sEqipname,sRoomcode,sExamtype,sChiftech,sTelno,G_USERID]);

    if (txPutF('SR_EQUICT_I1')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrEquipmentCode.EquipmentCodeUpdate(sEqipcode,sEqipname,sRoomcode,sExamtype,sChiftech,sTelno,sEditid: String): Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_NAME1;S_CODE2;S_TYPE1;S_USERID1;S_TELNO;S_EDITID');
    SetFldValue(0,[sEqipcode,sEqipname,sRoomcode,sExamtype,sChiftech,sTelno,G_USERID]);

    if txPutF('SR_EQUICT_U1') then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

///////////////////////////////////////////////////////////////////////////////
//      �˻��׸� class(HsrExamCode) Member Method                            //
///////////////////////////////////////////////////////////////////////////////

//==============================================================================
//
//==============================================================================
function HsrExamCode.ExamCodeList(Examtype,ExamCode,ExamName,SortKey:string):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_CODE2;S_CODE3;S_TYPE1');
    SetFldValue(0,[ExamCode,SortKey,ExamName,Examtype]);

    if (txGetF('SR_EXAMCV_L1')) then
    begin
        Result := GetRecordCnt('S_CODE1');
        GetFldVar('S_CODE1'    , sExamcode  );
        GetFldVar('S_NAME1'    , sExamname  );
	GetFldVar('S_CODE4'    , sSlipcode  );
    	GetFldVar('S_TYPE1'    , sExamtype  );
	GetFldVar('S_YN1'      , sOrdyn     );
    	GetFldVar('S_YN9'      , sRsvexmyn  );  // sRsvexmyn
	GetFldVar('S_YN5'      , sMedrsvyn );  // sDeptrsvyn
    	GetFldVar('S_YN8'      , sSpcyn     );  // sSpcyn
	GetFldVar('S_DR1'      , sSpcdr     );  //sSpcdr
    	GetFldVar('S_YN7'      , sPortyn    );
	GetFldVar('S_YN6'      , sEryn      );
    	GetFldVar('S_YN2'      , sOpyn      );
        GetFldVar('S_YN4'      , sReadyn    );  //sReadyn
    	GetFldVar('S_YN3'      , sOrdtxtyn  );
	GetFldVar('S_CODE8'    , sRoomcode  );
    	GetFldVar('S_CODE5'    , sEqipcode  );  //sEquipcode
	GetFldVar('S_CODE7'    , sRgrpcode  );
    	GetFldVar('S_CODE6'    , sNormcode  );  //sNormcode
	GetFldVar('S_TEXT1'    , sComments  );  //sExamtext
    	GetFldVar('S_DATE1'    , tAppldate  );  //tAppldate
	GetFldVar('S_EDITID'   , sEditid    );
    	GetFldVar('S_EDITIP'   , sEditip    );
	GetFldVar('S_EDITDATE' , tEditdate  );
     	GetFldVar('S_DATE2'    , tDeldate   );
	GetFldVar('S_DATE3'    , tEnddate   );  //tEnddate
            
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �˻��׸� �Ҹ���� �ڵ� ��ȸ
//==============================================================================
function HsrExamCode.ExamCodeListFtp(Examtype,ExamName,ExamCode:string):Integer;
var
    LocalFile : string;
begin
      Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_NAME1;S_TYPE1');
    SetFldValue(0,[ExamCode,ExamName,Examtype]);

    if (txGetFile('SR_EXAMCV_LF2',LocalFile)) then // sr_examcv_lf2.pc
    begin
        Result := GetFldVarFile(LocalFile, '!@', '#$',
                              [@sExamcode,
                               @sExamname,
                               @sSlipcode,
                               @sExamtype,
                               @sOrdyn   ,
                               @sRsvexmyn,
                               @sMedrsvyn,
                               @sSpcyn   ,
                               @sSpcdr   ,
                               @sPortyn  ,
                               @sEryn    ,
                               @sOpyn    ,
                               @sReadyn  ,
                               @sOrdtxtyn,
                               @sExmtxtyn,
                               @sRoomcode,
                               @sEqipcode,
                               @sRgrpcode,
                               @sNormcode,
                               @sComments,
                               @tAppldate,
                               @sEditid  ,
                               @sEditip  ,
                               @tEditdate,
                               @tDeldate ,
                               @tEnddate,
                               @sExecnt,
                               @sChartYn,
                               @sDispseq,
                               @sRsvPntYn,
                               @sRsvCare,
                               @sPatGuide,
                               @sPatGuideCd,
                               @sStat,
                               @sStatCd,
                               @sStat2,
                               @sStatCd2,
                               @sFastyn,
                               @sProtectyn
                               ]);

    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �˻��׸� �ڵ� ���� ����...
//==============================================================================
function HsrExamCode.ExamCodeUpdate(Examcode,Slipcode,Ordyn,Rsvexmyn,Medrsvyn,Spcyn,Spcdr,Portyn,Eryn,Opyn,Readyn,Ordtxtyn,Exmtxtyn,Roomcode,Eqipcode,
                                    Rgrpcode,Normcode,Comments,Editid,ChartYn,RsvPntYn,RsvCare,PatGuide,Stat,ExamName,Stat2: String;Execnt,Dispseq: Integer; sFastyn,sProtectyn:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_CODE4;S_YN1;S_YN9;S_YN5;S_YN8;S_DR1;S_YN7;S_YN6;S_YN2;S_YN4;S_YN3;S_YN10;S_CODE8;S_CODE5;S_CODE7;S_CODE6;S_TEXT1;S_EDITID;' +
               'L_CNT1;S_YN11;L_CNT2;S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6;S_STRING7;S_STRING8');
    SetFldValue(0,[Examcode,Slipcode,Ordyn,Rsvexmyn,Medrsvyn,Spcyn,Spcdr,Portyn,Eryn,Opyn,Readyn,Ordtxtyn,Exmtxtyn,Roomcode,Eqipcode,Rgrpcode,Normcode,
                   Comments,G_USERID,Execnt,ChartYn,Integer(Dispseq),RsvPntYn,RsvCare,PatGuide,ExamName,Stat,Stat2,sFastyn,sProtectyn]);

    if (txPutF('SR_EXAMCV_U1')) then     // sr_examcv_u1.pc
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;
//==============================================================================
//
//==============================================================================
function HsrExamCode.ExamCodeGrouping(Cnt:Integer):Integer;
var
    i : Integer;
begin
    Result := -1;
    txAlloc;

    SetFldName('S_ORDCODE;S_CODE1;S_EDITID');

    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[string(sExamCode[i]),string(sRgrpCode[i]),string(G_USERID)]);
    end;

    if (txPutF('SR_EXAMRGRP_U1')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �ʸ����� �Ƿ� ��� ��ȸ.
// 2003.2.20 �̰�ȭ -- �������(Birtdate) , ����(sex) �߰�
// 2003.3 ���ռ��� -- examtype�߰�
//==============================================================================
function HsrExamCode.CopyList(Fromdate, Todate, Patno, Copycode, ExamType: String): Integer;
var
   LocalFile: String;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_FROM1;S_TO1;S_PATNO;S_CODE1;S_FLAG9;S_TYPE1');
     SetFldValue(0,[Fromdate,Todate,Patno,Copycode,'EB1',ExamType]);

     if (txGetFile('SR_COPYORDER_L',LocalFile)) then  //sr_copyorder_l.pc
     begin
        Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                              [@sPatno    ,
                               @sPatname  ,
                               @sOrddate  ,
                               @sPatsect  ,
                               @sOrddr    ,
                               @sOrddrName,
                               @sCopycode ,
                               @sCopyname ,
                               @sMeddept  ,
                               @sWardno   ,
                               @sRoomno   ,
                               @sRcpstat  ,
                               @sExecdate ,
                               @sBirtdate ,
                               @sSex      ,
                               @lOrdseqno ,
                               @lQty]);  // , //]
                               //@sResno]);
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExamCode.CopyMat(Fromdate, Todate, Patno, Copycode: String): Integer;
var
   LocalFile: String;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_FROM1;S_TO1;S_PATNO;S_CODE1;S_FLAG9');
     SetFldValue(0,[Fromdate,Todate,Patno,Copycode,'EB1']);

     if (txGetFile('SR_COPYMAT_L',LocalFile)) then
     begin
        Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                              [@sPatno    ,
                               @sPatname  ,
                               @sOrddate  ,
                               @sPatsect  ,
                               @sOrddr    ,
                               @sOrddrName,
                               @sCopycode ,
                               @sCopyname ,
                               @sMeddept  ,
                               @sWardno   ,
                               @sRoomno   ,
                               @sRcpstat  ,
                               @sExecdate ,
                               @sMatcode  ,
                               @sMatname  ,
                               @sMatqty   ,
                               @lOrdseqno ,
                               @lQty]);
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExamCode.CopySum(Fromdate, Todate, Patno, Copycode: String): Integer;
var
   LocalFile: String;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_FROM1;S_TO1;S_PATNO;S_CODE1;S_FLAG9');
     SetFldValue(0,[Fromdate,Todate,Patno,Copycode,'EB1']);

     if (txGetFile('SR_COPYSUM_L',LocalFile)) then
     begin
        Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                               [@sMatcode  ,
                               @sMatname  ,
                               @sMatqty]);
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExamCode.CopyCnt(Fromdate, Todate, Patno, Copycode: String): Integer;
var
   LocalFile: String;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_FROM1;S_TO1;S_PATNO;S_CODE1');
     SetFldValue(0,[Fromdate,Todate,Patno,Copycode]);

     if (txGetFile('SR_COPYCNT_L',LocalFile)) then
     begin
        Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                               [@sCopycode  ,
                                @sCopyname  ,
                                @sCopyqty]);
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ����ǽ� �� ���� ���
//==============================================================================
function HsrExamCode.CopyOrder(Patno, Orddate, Flag: String; Ordseqno: Integer):Integer;
//\\\var
//\\\    i : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_ORDDATE;S_FLAG1;L_SEQNO1');
    SetFldValue(0,[Patno,Orddate,Flag,Ordseqno]);

    if (txPutF('SR_COPYORDER_U')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExamCode.CopyctList(Examtype:string):Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_TYPE1');
     SetFldValue(0,[Examtype]);

     if (txGetF('SR_COPYCT_L')) then  // sr_copyct_l.pc
     begin
          Result := GetRecordCnt('S_CODE1');
          GetFldVar('S_CODE1',sCopycode);
          GetFldVar('S_NAME1',sCopyname);
          //txFree;
     
        txFree;
     end;
     MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExamCode.BarcodeSel(Frompatno, Topatno, Fromdate, Todate: String):Integer;
var
    LocalFile: String;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROM1;S_TO1;S_FROMDATE;S_TODATE');
    SetFldValue(0,[Frompatno,Topatno,Fromdate,Todate]);

    if (txGetFile('SR_BARCODE_L',LocalFile)) then
    begin
        Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                              [@sPatno,
                               @sPatname,
                               @sResno]);
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ó���ڵ� ������ȸ
//==============================================================================
function HsrExamCode.GetPrice(OrdCd: String): Integer;
begin
    Result := -1;

    //Pointer�� �޾ƿ�.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_TYPE1');
    SetFldValue(0,[OrdCd] );

    //Tuxedo Service Call
    if (txGetF('MD_ORDRC_S2')) then
    begin
        GetFldVar('D_DOUBLE1', iPriceIns );  // �Ǻ�����
        GetFldVar('D_DOUBLE2', iPriceGen );  // �Ϲݼ���

        //��ȸ�Ǽ� return
        Result := GetRecordCnt('D_DOUBLE1');
        //txFree;
    
       txFree;
    end;
end;





///////////////////////////////////////////////////////////////////////////////
//      �ǵ����� class(HsrRsltCode) Member Method                            //
///////////////////////////////////////////////////////////////////////////////

//==============================================================================
//
//==============================================================================
function HsrRsltCode.RsltKwdList(Examtype,UserID,RsltCode,Keyword:string):Integer;
begin
//Sortkey �̹ݿ�. �� 1000Records������ ������ �� �ִ�.

    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_TYPE1;S_USERID1;S_TEXT1');
    SetFldValue(0,[RsltCode,Examtype,UserID,KeyWord]);

    if (txGetF('SR_RSLTCT_L1')) then    // sr_rsltct_l1.pc
    begin
       GetFldVar('S_CODE1',sRsltCode);
       GetFldVar('S_TEXT1',sRsltKwd);
       GetFldVar('S_CODE2',sSrhcode);
       GetFldVar('S_TEXT2',sSrhname);
       Result := GetRecordCnt('S_CODE1');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
//   2003.4.10 �̰�ȭ -- �ǵ�������ü�׸� ��������
//==============================================================================
function HsrRsltCode.RsltKwdListAll(Examtype,UserID,RsltCode,Keyword:string):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_TYPE1;S_USERID1;S_TEXT1');
    SetFldValue(0,[RsltCode,Examtype,UserID,KeyWord]);

    if (txGetF('SR_RSLTCT_L2')) then
    begin
       GetFldVar('S_CODE1',sRsltCode);
       GetFldVar('S_TEXT1',sRsltKwd) ;
       GetFldVar('S_CODE2',sSrhcode) ;
       GetFldVar('S_TEXT2',sSrhname) ;
       GetFldVar('S_TEXT3',sRslttext);
       GetFldVar('S_TEXT4',sLastrslt);

       Result := GetRecordCnt('S_CODE1');

       txFree;
    end;

    MessageStr := GetTxMsg;
end;



//==============================================================================
//
//==============================================================================
function HsrRsltCode.RsltTextSelect(Examtype,RsltCode:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_TYPE1');
    SetFldValue(0,[RsltCode,Examtype]);

    if (txGetF('SR_RSLTCT_S1')) then   // sr_rsltct_s1.pc
    begin
        Result := GetRecordCnt('S_TEXT1');
        GetFldVar('S_TEXT1',sRsltText);

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//  2003.3.18 �̰�ȭ -- ��缱�� (�Ұ�,��кι�����ó��)
//==============================================================================
function HsrRsltCode.RsltTextSelect1(Examtype,RsltCode:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_TYPE1');
    SetFldValue(0,[RsltCode,Examtype]);

    if (txGetF('SR_RSLTCT_S2')) then
    begin
        Result := GetRecordCnt('S_TEXT1');
        GetFldVar('S_TEXT1',sRsltText);
        GetFldVar('S_TEXT2',sLastrslt);

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
//  2003.4.10 �̰�ȭ -- �����ǵ����� ��ȸ (�Ұ�,��кι�����ó��)
//==============================================================================
function HsrRsltCode.PRsltTextSelect(Examtype,RsltCode,Userid:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_TYPE1;S_USERID1');
    SetFldValue(0,[RsltCode,Examtype,Userid]);

    if (txGetF('SR_RSLTPT_S1')) then
    begin
        Result := GetRecordCnt('S_TEXT1');
        GetFldVar('S_TEXT1',sRsltText);
        GetFldVar('S_TEXT2',sLastrslt);
        GetFldVar('S_TEXT3',sRsltcode);
        GetFldVar('S_TEXT4',sKeyword);

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;




//==============================================================================
//
//==============================================================================
function HsrRsltCode.RsltCodeInsert(sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,sEditid: String): Integer;
begin
    Result := -1;
    txAlloc;
   SetFldName('S_CODE1;S_TYPE1;S_USERID1;S_TEXT1;S_TEXT2;S_CODE2;S_EDITID');
   SetFldValue(0,[sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,G_USERID]);

   if txPutF('SR_RSLTCT_I1') then
   begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//  2003.3.18 �̰�ȭ -- �ǵ���������Է�(�Ұ�,���)
//==============================================================================
function HsrRsltCode.RsltCodeInsert1(sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,sEditid,sLastrslt: String): Integer;
begin
    Result := -1;
    txAlloc;
   SetFldName('S_CODE1;S_TYPE1;S_USERID1;S_TEXT1;S_TEXT2;S_CODE2;S_EDITID;S_TEXT3');
   SetFldValue(0,[sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,G_USERID,sLastrslt]);

   if txPutF('SR_RSLTCT_I2') then
   begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
//  2003.4.10 �̰�ȭ -- �����ǵ���������Է�(�Ұ�,���)
//==============================================================================
function HsrRsltCode.PRsltCodeInsert(sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,sEditid,sLastrslt: String): Integer;
begin
    Result := -1;
    txAlloc;
   SetFldName('S_CODE1;S_TYPE1;S_USERID1;S_TEXT1;S_TEXT2;S_CODE2;S_EDITID;S_TEXT3');
   SetFldValue(0,[sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,G_USERID,sLastrslt]);

   if txPutF('SR_RSLTPT_I1') then
   begin
        Result := 1;

       txFree;
    end;

    MessageStr := GetTxMsg;
end;


//==============================================================================
//
//==============================================================================
function HsrRsltCode.RsltCodeUpdate(sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,sEditid: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_TYPE1;S_USERID1;S_TEXT1;S_TEXT2;S_CODE2;S_EDITID');
    SetFldValue(0,[sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,G_USERID]);

    if (txPutF('SR_RSLTCT_U1')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// 2003.3.18 �̰�ȭ -- �ǵ���������(�Ұ�,���)
//==============================================================================
function HsrRsltCode.RsltCodeUpdate1(sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,sEditid,sLastrslt: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_TYPE1;S_USERID1;S_TEXT1;S_TEXT2;S_CODE2;S_EDITID;S_TEXT3');
    SetFldValue(0,[sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,G_USERID,sLastrslt]);

    if (txPutF('SR_RSLTCT_U2')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
// 2003.4.10 �̰�ȭ -- �����ǵ���������(�Ұ�,���)
//==============================================================================
function HsrRsltCode.PRsltCodeUpdate(sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,sEditid,sLastrslt: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_TYPE1;S_USERID1;S_TEXT1;S_TEXT2;S_CODE2;S_EDITID;S_TEXT3');
    SetFldValue(0,[sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,G_USERID,sLastrslt]);

    if (txPutF('SR_RSLTPT_U1')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;



//==============================================================================
//
//==============================================================================
function HsrRsltCode.RsltCodeDelete(Examtype,RsltCode:string):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_TYPE1;S_CODE1');
    SetFldValue(0,[Examtype,RsltCode]);

    if (txPutF('SR_RSLTCT_D1')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
//  2003.4.12 �̰�ȭ -- �����ǵ�����׸� ����
//==============================================================================
function HsrRsltCode.PRsltCodeDelete(Examtype,RsltCode,sUserid:string):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_TYPE1;S_CODE1;S_CODE2');
    SetFldValue(0,[Examtype,RsltCode,sUserid]);

    if (txPutF('SR_RSLTPT_D1')) then
    begin
        Result := 1;

       txFree;
    end;

    MessageStr := GetTxMsg;
end;


///////////////////////////////////////////////////////////////////////////////
//      �˻��� class(HsrSearchCd) Member Method                              //
///////////////////////////////////////////////////////////////////////////////

//==============================================================================
//
//==============================================================================
function HsrSearchCd.SearchCodeList(SrchCode,ExamType:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_TYPE1');
    SetFldValue(0,[SrchCode,ExamType]);

    if (txGetF('SR_SRCHCT_L1')) then
    begin
        GetFldVar('S_CODE1', sSrchCode);
        GetFldVar('S_NAME1', sSrchName);
        Result := GetRecordCnt('S_CODE1');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrSearchCd.SearchCodeInsert(SrchCode,SrchName,UserID,ExamType:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_NAME1;S_USERID1;S_TYPE1');
    SetFldValue(0,[SrchCode,SrchName,UserID,ExamType]);

    if (txPutF('SR_SRCHCT_I1')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrSearchCd.SearchCodeUpdate(SrchCode,SrchName,UserID,ExamType:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_NAME1;S_USERID1;S_TYPE1');
    SetFldValue(0,[SrchCode,SrchName,UserID,ExamType]);

    if (txPutF('SR_SRCHCT_U1')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

///////////////////////////////////////////////////////////////////////////////
//      �Ҹ���� class(HsrMatCode) Member Method                             //
///////////////////////////////////////////////////////////////////////////////


//==============================================================================
// �������� ���� �̷����̺� ��ȸ.
//==============================================================================
function HsrMatCode.MatAdjHistoryList(Execdate, Roomcode,
  Matcode: String): Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_DATE1;S_CODE1;S_CODE2;S_CODE3');
    SetFldValue(0,[Execdate,Roomcode,Matcode,'EB1']);

    if (txGetF('SR_MATHIS_L1')) then
    begin
        GetFldVar('S_QTY1',    lAdjQty);
        GetFldVar('S_NAME1',   sEditName);
        GetFldVar('S_DATE1',   tEditdate);
        GetFldVar('S_TEXT1',   sComment);

        Result := GetRecordCnt('S_QTY1');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
// �Ҹ���� �׸� ��ȸ
//==============================================================================
function HsrMatCode.MatCodeList(MatCode,MatName,ExamType:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_NAME1;S_TYPE1');
    SetFldValue(0,[MatCode,MatName,ExamType]);

    if (txGetF('SR_MATCCT_L1')) then
    begin
        GetFldVar('S_CODE1',   sMatCode);
        GetFldVar('S_NAME1',   sMatName);
        GetFldVar('S_TEXT1',   sUnit);
        GetFldVar('L_QTY1',    iMatqty);
        GetFldVar('S_CODE2',   sInsintyp);
        Result := GetRecordCnt('S_CODE1');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �Ҹ���� �׸� ��ȸ2-�Ҹ���� �ڵ���� ȭ�鿡�� ȣ��.
//==============================================================================
function HsrMatCode.MatCodeList2(MatCode,MatName,ExamType:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_NAME1;S_TYPE1');
    SetFldValue(0,[MatCode,MatName,ExamType]);

    if (txGetF('SR_MATCCT_L2')) then    // sr_matcct_l2.pc
    begin
        GetFldVar('S_CODE1',   sMatCode);
        GetFldVar('S_NAME1',   sMatName);
        GetFldVar('S_TEXT1',   sUnit);
        GetFldVar('L_QTY1',    iMatqty);
        GetFldVar('S_DATE1',   tFromdate);
        GetFldVar('S_DATE2',   tTodate);
        GetFldVar('L_NO1',     lDispseq);
        GetFldVar('L_NO2',     lEqualCode);
        GetFldVar('S_STRING1',   lDeldate);

        Result := GetRecordCnt('S_CODE1');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ADPRICST�� ��ϵǾ� �ִ� �׸���ȸ.
//==============================================================================
function HsrMatCode.MatCodeList4(MatCode, Examtype:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_TYPE1');
    SetFldValue(0,[MatCode, Examtype]);

    if (txGetF('SR_MATCCT_L4')) then
    begin
        GetFldVar('S_CODE2',   sDataCnt);
        Result := GetRecordCnt('S_CODE2');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;
//==============================================================================
// �����ϱ� ���� üũ��ȸ
//==============================================================================
function HsrMatCode.MatCodeList3(MatCode:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_CODE1');
    SetFldValue(0,[MatCode]);

    if (txGetF('SR_MATCCT_L3')) then
    begin
        GetFldVar('S_CODE1',   sMatCode);
        GetFldVar('S_NAME1',   sMatName);
        GetFldVar('S_TEXT1',   sUnit);

        Result := GetRecordCnt('S_CODE1');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �Ҹ�����ڵ� ���� - �߰� �Է�
//==============================================================================
function HsrMatCode.MatCodeInsert(MatCode,MatName,ExamType,iUnit,UserID:String;Dispseq:Integer):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_NAME1;S_TYPE1;S_TEXT1;S_EDITID;L_NO1');
    SetFldValue(0,[MatCode,MatName,ExamType,iUnit,G_USERID,Integer(Dispseq)]);

    if (txPutF('SR_MATCCT_I1')) then   // sr_matcct_i1.pc
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �Ҹ�����ڵ� ���� - ����
//==============================================================================
function HsrMatCode.MatCodeUpdate(MatCode,MatName,ExamType,iUnit,UserID:String;Dispseq:Integer):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_NAME1;S_TYPE1;S_TEXT1;S_EDITID;L_NO1');
    SetFldValue(0,[MatCode,MatName,ExamType,iUnit,G_USERID,Integer(Dispseq)]);

    if (txPutF('SR_MATCCT_U1')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �˻��׸� �Ҹ���� �ڵ� ��ȸ...
//==============================================================================
function HsrMatCode.ExamMatList(ExamCode, Examtype:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_ORDCODE;S_TYPE1');
    SetFldValue(0,[ExamCode,Examtype]);

    if (txGetF('SR_EXMATT_L')) then
    begin
        GetFldVar('S_CODE1', sMatCode);
        GetFldVar('S_NAME1', sMatName);
        GetFldVar('S_NAME2', sUnit);
        GetFldVar('S_QTY1' , iMatQty);
        GetFldVar('L_CNT1' , iDayCnt);
        GetFldVar('L_CNT2' , iAge);
        GetFldVar('S_FLAG1', sAgeUnit);
        GetFldVar('S_YN1'  , sMaleYn);
        GetFldVar('S_DATE1', tFromdate);
        GetFldVar('S_DATE2', tTodate);

        Result := GetRecordCnt('S_CODE1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �˻��׸� �Ҹ���� ��� ��ȸ.
//==============================================================================
function HsrMatCode.ExamMatList2(ExamCode,MaleYn:String;DayCnt:Integer):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_ORDCODE;L_CNT1;S_YN1');
    SetFldValue(0,[ExamCode,DayCnt,MaleYn]);

    if (txGetF('SR_DAYCNTMAT_L')) then
    begin
        GetFldVar('S_CODE1', sMatCode);
        GetFldVar('S_NAME1', sMatName);
        GetFldVar('S_NAME2', sUnit);
        GetFldVar('S_QTY1' , iMatQty);
        GetFldVar('L_CNT1' , iAge);
        GetFldVar('L_CNT2' , iDayCnt);
        GetFldVar('S_FLAG1', sAgeUnit);
        GetFldVar('S_CODE2', sInsintyp);
        Result := GetRecordCnt('S_CODE1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �˻��׸� �Ҹ���� �ڵ� ����
//==============================================================================
function HsrMatCode.ExamMatDelete(ExamCode,MatCode,Examtype:String;DayCnt:Integer;
            FromDate,ToDate:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_ORDCODE;S_CODE1;S_TYPE1;L_CNT1;S_DATE1;S_DATE2');
    SetFldValue(0,[ExamCode,MatCode,Examtype,DayCnt,FromDate,ToDate]);

    if (txPutF('SR_EXMATT_D')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �˻��׸� �Ҹ���� �ڵ� ���
//==============================================================================
function HsrMatCode.ExamMatInsert(ExamCode,MatCode,Examtype,UserID,UserIP,AgeUnit,MatQty,MaleYn:String;DayCnt,Age:Integer;
            FromDate,Todate: String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_ORDCODE;S_CODE1;S_TYPE1;S_EDITID;S_EDITIP;S_QTY1;L_CNT1;L_CNT2;S_FLAG1;S_YN1;S_DATE1;S_DATE2');
    SetFldValue(0,[ExamCode,MatCode,Examtype,G_USERID,UserIP,MatQty,DayCnt,Age,AgeUnit,MaleYn,FromDate,Todate]);

    if (txPutF('SR_EXMATT_I')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �˻��׸� �Ҹ���� �ڵ� ����
//==============================================================================
function HsrMatCode.ExamMatUpdate(ExamCode,MatCode,Examtype,UserID,UserIP,AgeUnit,MatQty,MaleYn:String;DayCnt,Age:Integer;
            FromDate,Todate: String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_ORDCODE;S_CODE1;S_TYPE1;S_EDITID;S_EDITIP;S_QTY1;L_CNT1;L_CNT2;S_FLAG1;S_YN1;S_DATE1;S_DATE2');
    SetFldValue(0,[ExamCode,MatCode,Examtype,G_USERID,UserIP,MatQty,DayCnt,Age,AgeUnit,MaleYn,FromDate,Todate]);

    if (txPutF('SR_EXMATT_U')) then
    begin
        Result := 1;
        txFree;
    end
    else
        Result := GetTxUrCode;

    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrMatCode.DayMatList(ExecDate,RoomCode: String): Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_EXECDATE;S_CODE1');
    SetFldValue(0,[ExecDate,RoomCode]);

    if (txGetF('SR_DAYMAT_L')) then  // sr_daymat_l.pc
    begin
        GetFldVar('S_CODE1', sMatCode);
        GetFldVar('S_NAME1', sMatName);
        GetFldVar('S_NAME2', sUnit);
        GetFldVar('S_QTY1' , lNormQty);
        GetFldVar('S_QTY2' , lAddQty);
        GetFldVar('S_QTY3' , lReexQty);
        GetFldVar('S_QTY4' , lAdjQty);
        GetFldVar('L_CNT1' , lExeCnt);
        GetFldVar('L_CNT2' , lExePCnt);
        GetFldVar('L_CNT3' , lRexeCnt);
        GetFldVar('L_CNT4' , lRexePCnt);
        Result := GetRecordCnt('S_CODE1');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

// 2005.02.26 ����   --  ���ϼҸ���� ���� ����
function HsrMatCode.MonMatList(ExecDate,RoomCode,Examtype: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_TODATE;S_CODE1;S_TYPE1');
    SetFldValue(0,[ExecDate,Roomcode,Examtype]);
    if txGetF('SR_MONMAT_L') then  // sr_monmat_l.pc
    begin
       Result := GetRecordCnt('S_CODE1');

       GetFldVar('S_CODE1'  , sMatCode);
       GetFldVar('S_NAME1'  , sMatName);
       GetFldVar('S_STRING1'   , lcnt1);
       GetFldVar('S_STRING2'   , lcnt2);
       GetFldVar('S_STRING3'   , lcnt3);
       GetFldVar('S_STRING4'   , lcnt4);
       GetFldVar('S_STRING5'   , lcnt5);
       GetFldVar('S_STRING6'   , lcnt6);
       GetFldVar('S_STRING7'   , lcnt7);
       GetFldVar('S_STRING8'   , lcnt8);
       GetFldVar('S_STRING9'   , lcnt9);
       GetFldVar('S_STRING10'  , lcnt10);
       GetFldVar('S_STRING10'  , lcnt11);
       GetFldVar('S_STRING12'  , lcnt12);
       GetFldVar('S_STRING13'  , lcnt13);
       GetFldVar('S_STRING14'  , lcnt14);
       GetFldVar('S_STRING15'  , lcnt15);
       GetFldVar('S_STRING16'  , lcnt16);
       GetFldVar('S_STRING17'  , lcnt17);
       GetFldVar('S_STRING18'  , lcnt18);
       GetFldVar('S_STRING19'  , lcnt19);
       GetFldVar('S_STRING20'  , lcnt20);
       GetFldVar('S_STRING21'  , lcnt21);
       GetFldVar('S_STRING22'  , lcnt22);
       GetFldVar('S_STRING23'  , lcnt23);
       GetFldVar('S_STRING24'  , lcnt24);
       GetFldVar('S_STRING25'  , lcnt25);
       GetFldVar('S_STRING26'  , lcnt26);
       GetFldVar('S_STRING27'  , lcnt27);
       GetFldVar('S_STRING28'  , lcnt28);
       GetFldVar('S_STRING29'  , lcnt29);
       GetFldVar('S_STRING30'  , lcnt30);
       GetFldVar('S_STRING31'  , lcnt31);
       GetFldVar('S_STRING32'  , lcnt32);

       txFree;
    end;

    MessageStr := GetTxMsg;
end;

// 2005.02.26 ����   --  ���ϼҸ���� ���� ����
function HsrMatCode.YearMatList(ExecDate,RoomCode,Examtype: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_TODATE;S_CODE1;S_TYPE1');
    SetFldValue(0,[ExecDate,Roomcode,Examtype]);
    if txGetF('SR_YEAMAT_L') then  // sr_yeamat_l.pc
    begin
       Result := GetRecordCnt('S_CODE1');

       GetFldVar('S_CODE1'  , sMatCode);
       GetFldVar('S_NAME1'  , sMatName);
       GetFldVar('S_STRING1'   , lcnt1);
       GetFldVar('S_STRING2'   , lcnt2);
       GetFldVar('S_STRING3'   , lcnt3);
       GetFldVar('S_STRING4'   , lcnt4);
       GetFldVar('S_STRING5'   , lcnt5);
       GetFldVar('S_STRING6'   , lcnt6);
       GetFldVar('S_STRING7'   , lcnt7);
       GetFldVar('S_STRING8'   , lcnt8);
       GetFldVar('S_STRING9'   , lcnt9);
       GetFldVar('S_STRING10'  , lcnt10);
       GetFldVar('S_STRING10'  , lcnt11);
       GetFldVar('S_STRING12'  , lcnt12);
       GetFldVar('S_STRING13'  , lcnt13);

       txFree;
    end;

    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrMatCode.DayMatCnt(ExecDate,Examtype: String): Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_EXECDATE;S_TYPE1');
    SetFldValue(0,[ExecDate,Examtype]);

    if (txGetF('SR_DAYMAT_C')) then      //sr_daymat_c.pc
    begin
        GetFldVar('L_CNT1' , lDataCnt);
        Result := GetRecordCnt('L_CNT1');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �������� �Է�
//==============================================================================
function HsrMatCode.MatAdjUpdate(ExecDate,RoomCode,MatCode,userid,userip,ADJQTY,Comments,sFlag: String): Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_EXECDATE;S_CODE1;S_CODE2;S_EDITID;S_EDITIP;S_QTY1;S_STRING1;S_STRING2;S_YN1');
    SetFldValue(0,[ExecDate,RoomCode,MatCode,G_USERID,userip,ADJQTY,'EB1',Comments,sFlag]);

    if (txPutF('SR_MATADJ_U')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �ϸ���
//==============================================================================
function HsrMatCode.DayMatM(ExecDate,Examtype,userid,userip: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_EXECDATE;S_TYPE1;S_EDITID;S_EDITIP;S_STRING1');
    SetFldValue(0,[ExecDate,Examtype,G_USERID,userip,'EB1']);

    if (txPutF('SR_DAYMAT_M')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �ϸ��� ���
//==============================================================================
function HsrMatCode.DayMatD(ExecDate,Examtype,userid,userip: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_EXECDATE;S_TYPE1;S_EDITID;S_EDITIP;S_STRING1');
    SetFldValue(0,[ExecDate,Examtype,G_USERID,userip,'EB1']);

    if (txPutF('SR_DAYMAT_D')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrMatCode.MatChk(Chkdate, Examtype: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_DATE1;S_TYPE1;S_FLAG9');
    SetFldValue(0,[Chkdate,Examtype,'EB1']);

    if (txGetF('SR_MATCHK_L')) then
    begin
        Result := GetRecordCnt('S_DATE1');
        GetFldVar('S_DATE1', sChkdate);
        GetFldVar('S_CODE1', sRoomcode);
        GetFldVar('S_NAME1', sRoomname);
        GetFldVar('S_YN1',   sChkyn);
        GetFldVar('S_EDITID',sEditid);
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrMatCode.MatChkM(Chkdate, Examtype, Roomcode, Chkyn, USERID: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_DATE1;S_TYPE1;S_CODE1;S_YN1;S_EDITID');
    SetFldValue(0,[Chkdate,Examtype,Roomcode,Chkyn,G_USERID]);

    if (txPutF('SR_MATCHK_U')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

///////////////////////////////////////////////////////////////////////////////
//      ������ Ÿ�� class(HsrscheduleCode) Member Method                     //
///////////////////////////////////////////////////////////////////////////////

//==============================================================================
//
//==============================================================================
function HsrScheduleCode.ScheduleCodeList(Examtype:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_TYPE1');
    SetFldValue(0,[ExamType]);

    if (txGetF('SR_SCHDCT_L1')) then
    begin
       GetFldVar('S_TYPE2',sSchdType);
       Result := GetRecordCnt('S_TYPE2');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrScheduleCode.ScheduleCodeSelect(SchdType,Examtype:String):Integer;
var
//\\\    i : Integer;
//\\\    tm_type : TTime;
    LocalFile : string;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_TYPE1;S_TYPE2');
    SetFldValue(0,[SchdType,Examtype]);
    if (txGetFile('SR_SCHDCT_S1',LocalFile)) then
    begin
        Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                                [@sSchdTime,
                                @iSchdMon,
                                @iSchdTue,
                                @iSchdWed,
                                @iSchdThu,
                                @iSchdFri,
                                @iSchdSat,
                                @iSchdSun]);
    end;

    //txFree;
    MessageStr := GetTxMsg;

{
    Result := 0;

    tm_type := StrToTime('07:30');

    for i := 0 to 15 do
    begin
        inc(Result);
        tm_type := tm_type + (1/48);
        if FormatDateTime('HHNN', tm_type ) = '1200' then
            tm_type := tm_type + (2*(1/48));
        pr_GetFldVar(sSchdTime, FormatDateTime('HHNN', tm_type ));
        pr_GetFldVar(iSchdMon , '0');
        pr_GetFldVar(iSchdTue , '0');
        pr_GetFldVar(iSchdWed , '0');
        pr_GetFldVar(iSchdThu , '0');
        pr_GetFldVar(iSchdFri , '0');
        pr_GetFldVar(iSchdSat , '0');
        pr_GetFldVar(iSchdSun , '0');
    end;

    if SchdType = 'SONO' then
    begin
        iSchdMon[4] := '2'; iSchdMon[10] := '2';
        iSchdTue[4] := '2'; iSchdTue[10] := '2';
        iSchdWed[4] := '0'; iSchdWed[10] := '0';
        iSchdThu[4] := '2'; iSchdThu[10] := '2';
        iSchdFri[4] := '2'; iSchdFri[10] := '2';
    end
    else if SchdType = 'CT' then
    begin
        iSchdMon[2] := '3'; iSchdMon[8] := '3'; iSchdMon[12] := '3';
        iSchdTue[2] := '0'; iSchdTue[8] := '0'; iSchdTue[12] := '0';
        iSchdWed[2] := '3'; iSchdWed[8] := '3'; iSchdWed[12] := '3';
        iSchdThu[2] := '0'; iSchdThu[8] := '0'; iSchdThu[12] := '0';
        iSchdFri[2] := '3'; iSchdFri[8] := '3'; iSchdFri[12] := '2';
    end
    else if SchdType = 'MRI' then
    begin
        iSchdMon[4] := '3'; iSchdMon[8] := '3'; iSchdMon[12] := '3';
        iSchdTue[4] := '0'; iSchdTue[8] := '0'; iSchdTue[12] := '0';
        iSchdWed[4] := '3'; iSchdWed[8] := '3'; iSchdWed[12] := '3';
        iSchdThu[4] := '0'; iSchdThu[8] := '0'; iSchdThu[12] := '0';
        iSchdFri[4] := '3'; iSchdFri[8] := '3'; iSchdFri[12] := '2';
    end
    else
    begin
        for i := 0 to 15 do
        begin
            iSchdMon[i] := '1';
            iSchdTue[i] := '1';
            iSchdWed[i] := '1';
            iSchdThu[i] := '1';
            iSchdFri[i] := '1';
        end;
    end;


    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';
}
end;

//==============================================================================
//
//==============================================================================
function HsrScheduleCode.ScheduleCodeInsert(UserID:String) {(SchdType,Examtype,SchdTime:String;SchdMon,SchdTue,
    SchdWed,SchdThu,SchdFri,SchdSat,SchdSun:Integer) } :Integer;


var i : Integer;
begin

    Result := -1;
    txAlloc;
{
    SetFldName('S_TYPE1;S_TYPE2;S_TIME1;L_CNT1;L_CNT2;L_CNT3;L_CNT4;L_CNT5;L_CNT6;L_CNT7');
    SetFldValue(0,[SchdType,Examtype,SchdTime,SchdMon,SchdTue,SchdWed,SchdThu,
                SchdFri,SchdSat,SchdSun]);
}
    SetFldName('S_TYPE1');
    for i := 0 to VarArrayHighBound(sSchdType,1) do
        SetFldValue(i,[string(sSchdType[i])]);

    SetFldName('S_TYPE2');
    for i := 0 to VarArrayHighBound(sExamtype,1) do
        SetFldValue(i,[string(sExamtype[i])]);

    SetFldName('S_TIME1');
    for i := 0 to VarArrayHighBound(sSchdTime,1) do
        SetFldValue(i,[string(sSchdTime[i])]);

    SetFldName('L_CNT1');
    for i := 0 to VarArrayHighBound(iSchdMon,1) do
        SetFldValue(i,[integer(iSchdMon[i])]);

    SetFldName('L_CNT2');
    for i := 0 to VarArrayHighBound(iSchdTue,1) do
        SetFldValue(i,[integer(iSchdTue[i])]);

    SetFldName('L_CNT3');
    for i := 0 to VarArrayHighBound(iSchdWed,1) do
        SetFldValue(i,[integer(iSchdWed[i])]);

    SetFldName('L_CNT4');
    for i := 0 to VarArrayHighBound(iSchdThu,1) do
        SetFldValue(i,[integer(iSchdThu[i])]);

    SetFldName('L_CNT5');
    for i := 0 to VarArrayHighBound(iSchdFri,1) do
        SetFldValue(i,[integer(iSchdFri[i])]);

    SetFldName('L_CNT6');
    for i := 0 to VarArrayHighBound(iSchdSat,1) do
        SetFldValue(i,[integer(iSchdSat[i])]);

    SetFldName('L_CNT7');
    for i := 0 to VarArrayHighBound(iSchdSun,1) do
        SetFldValue(i,[integer(iSchdSun[i])]);


    //����� ? S_EDITID�� ��� ERROR�� ���⶧��
    SetFldName('S_EDITID');
    SetFldValue(0,[G_USERID]);

    if (txPutF('SR_SCHDCT_I1')) then  // sr_schdct_i1.pc
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrScheduleCode.ScheduleCodeUpdate(SchdType,Examtype,SchdTime:String;SchdMon,SchdTue,
    SchdWed,SchdThu,SchdFri,SchdSat,SchdSun:Integer):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_TYPE1;S_TYPE2;S_TIME1;L_CNT1;L_CNT2;L_CNT3;L_CNT4;L_CNT5;L_CNT6;L_CNT7');
    SetFldValue(0,[SchdType,Examtype,SchdTime,SchdMon,SchdTue,SchdWed,SchdThu,
                SchdFri,SchdSat,SchdSun]);

    if (txPutF('SR_SCHDCT_U1')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrScheduleCode.ScheduleCodeDelete(SchdType,SchdTime,Examtype:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_TYPE1;S_TIME1;S_TYPE2');
    SetFldValue(0,[SchdType,SchdTime,Examtype]);

    if (txPutF('SR_SCHDCT_D1')) then      // sr_schdct_d1.pc
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;




///////////////////////////////////////////////////////////////////////////////
//      ������ class(HsrSchedule) Member Method                              //
///////////////////////////////////////////////////////////////////////////////

//==============================================================================
// �˻��-���� ������ �ۼ�...
//==============================================================================
function HsrSchedule.ScheduleMake(RoomCode,RsvDate,SchdType,ExamType:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_DATE1;S_TYPE1;S_TYPE2');
    SetFldValue(0,[RoomCode,RsvDate,SchdType,ExamType]);

    if (txPutF('SR_SCHDDT_I1')) then  // sr_schddt_i1.pc
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrSchedule.MonthScheduleList(RoomCode,RsvDate:String):Integer;
//\\\var
//\\\    i : Integer;
//\\\    fr_year, fr_month, fr_day : word;
//\\\    to_year, to_month, to_day   : word;
//\\\    fr_date, to_date            : TDateTime;
//\\\    wod : integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_DATE1');
    SetFldValue(0,[RoomCode,RsvDate]);

    if (txGetF('SR_SCHDDT_L1')) then
    begin
       GetFldVar('S_RSVDATE',sRsvDate);
       GetFldVar('L_CNT1',iRsvTot);
       GetFldVar('L_CNT2',iRsvCnt);
       Result := GetRecordCnt('S_RSVDATE');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;

{
    result := 0;

    fr_date := StrToDate(Copy(RsvDate,1,4) + '-' + Copy(RsvDate,5,2) + '-' + '01');
    to_date := IncMonth(fr_date, 1) -1;

    DecodeDate(fr_Date, fr_year, fr_month, fr_day);
    DecodeDate(to_Date, to_year, to_month, to_day);

    for i := fr_day to to_day do
    begin
        inc(result);

        wod := DayOfWeek(EncodeDate(fr_year, fr_month, i)) -1 ;

        if  RoomCode = 'RU' then
        begin
            if wod in [1,2,4,5] then
            begin
                pr_GetFldVar(sRsvDate,IntToStr(i));
                pr_GetFldVar(iRsvTot ,'4');
                pr_GetFldVar(iRsvCnt ,'0');
            end
            else
            begin
                pr_GetFldVar(sRsvDate,IntToStr(i));
                pr_GetFldVar(iRsvTot ,'0');
                pr_GetFldVar(iRsvCnt ,'0');
            end;
        end
        else if  RoomCode = 'RT' then
        begin
            if wod in [1,3,5] then
            begin
                pr_GetFldVar(sRsvDate,IntToStr(i));
                pr_GetFldVar(iRsvTot ,'9');
                pr_GetFldVar(iRsvCnt ,'0');
            end
            else
            begin
                pr_GetFldVar(sRsvDate,IntToStr(i));
                pr_GetFldVar(iRsvTot ,'0');
                pr_GetFldVar(iRsvCnt ,'0');
            end;
        end
        else if  RoomCode = 'RM' then
        begin
            if wod in [1,3,5] then
            begin
                pr_GetFldVar(sRsvDate,IntToStr(i));
                pr_GetFldVar(iRsvTot ,'9');
                pr_GetFldVar(iRsvCnt ,'0');
            end
            else
            begin
                pr_GetFldVar(sRsvDate,IntToStr(i));
                pr_GetFldVar(iRsvTot ,'0');
                pr_GetFldVar(iRsvCnt ,'0');
            end;
        end
        else
        begin
            if wod in [1,2,3,4,5] then
            begin
                pr_GetFldVar(sRsvDate,IntToStr(i));
                pr_GetFldVar(iRsvTot ,'16');
                pr_GetFldVar(iRsvCnt ,'0');
            end
            else
            begin
                pr_GetFldVar(sRsvDate,IntToStr(i));
                pr_GetFldVar(iRsvTot ,'0');
                pr_GetFldVar(iRsvCnt ,'0');
            end;
        end;
    end;

    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';
}
end;

//==============================================================================
//
//==============================================================================
function HsrSchedule.DayScheduleList(RoomCode,RsvDate:String):Integer;
//\\\var
//\\\    i   : integer;
//\\\    wod : word;
//\\\    tm_type : TTime;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_DATE1');
    SetFldValue(0,[RoomCode,RsvDate]);

    if (txGetF('SR_SCHDDT_L2')) then    // sr_schddt_l2.pc
    begin
       GetFldVar('S_RSVDATE',sRsvDate);
       GetFldVar('L_CNT1', iRsvTot  );
       GetFldVar('L_CNT2', iRsvCnt  );
       Result := GetRecordCnt('S_RSVDATE');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
{
    Result := 0;

    tm_type := StrToTime('07:30');

    for i := 0 to 15 do
    begin
        inc(Result);
        tm_type := tm_type + (1/48);
        if FormatDateTime('HHNN', tm_type ) = '1200' then
            tm_type := tm_type + (2*(1/48));
        pr_GetFldVar(sRsvDate, FormatDateTime('HHNN', tm_type ));
        pr_GetFldVar(iRsvTot , '');
        pr_GetFldVar(iRsvCnt , '');
    end;

    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';


    wod := DayOfWeek(strtodate(copy(RsvDate,1,4) + '-' + copy(RsvDate,5,2) + '-' + copy(RsvDate,7,2))) - 1;

    if RoomCode = 'RU' then
    begin
        if not (wod in [1,2,4,5]) then exit;
        iRsvTot[4] := '2'; iRsvCnt[4] := '0';
        iRsvTot[10]:= '2'; iRsvCnt[10]:= '0';
    end
    else if RoomCode = 'RT' then
    begin
        if not (wod in [1,3,5]) then exit;
        iRsvTot[2] := '3'; iRsvCnt[2] := '0';
        iRsvTot[8] := '3'; iRsvCnt[8] := '0';
        iRsvTot[12]:= '3'; iRsvCnt[12]:= '0';
    end
    else if RoomCode = 'RM' then
    begin
        if not (wod in [1,3,5]) then exit;
        iRsvTot[4] := '3'; iRsvCnt[4] := '0';
        iRsvTot[8] := '3'; iRsvCnt[8] := '0';
        iRsvTot[12]:= '3'; iRsvCnt[12]:= '0';
    end
    else
    begin
        if not (wod in [1,2,3,4,5]) then exit;
        for i := 0 to 15 do
        begin
            iRsvTot[i] := '1'; iRsvCnt[i] := '0';
        end;
    end;
}
end;

//==============================================================================
//
//==============================================================================
function HsrSchedule.ScheduleInsert(RoomCode,RsvDate:String;
  RsvTot:Integer):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('ROOMCODE;RSVDATE;RSVTOT');
    SetFldValue(0,[RoomCode,RsvDate,RsvTot]);
    if (txPutF('SR_MONSCHD_INS')) then begin
        Result := 1;
        //txFree;

       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 1;
    MessageStr := '���������� ����Ͽ����ϴ�';
end;

//==============================================================================
// �� �ð��뺰 �˻翹�� ���� ����... SINGLE SELECT
//==============================================================================
function HsrSchedule.ScheduleUpdate(RoomCode,RsvDate:String;
  RsvTot:Integer):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('L_CNT1;S_CODE1;S_RSVDATE');
    SetFldValue(0,[RsvTot,RoomCode,RsvDate]);

    if (txPutF('SR_SCHDDT_U1')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �� �ð��뺰 �˻翹�� ���� ����...MULTI SELECT
//==============================================================================
function HsrSchedule.ScheduleUpdate2(RoomCode:String; RsvTot:Integer):Integer;
var
    ix : Integer;
begin
{
      sRoomCode : Variant;      // �˻���ڵ�
      sRsvDate  : Variant;      // �����Ͻ�
      iRsvTot   : Variant;      // ��������
}
    Result := -1;
    txAlloc;

    SetFldName('L_CNT1;S_CODE1;S_RSVDATE');

    for ix := 0 to VarArrayHighBound(sRsvDate,1) do
    begin
        SetFldValue(ix,[RsvTot,RoomCode,sRsvDate[ix]]);
    end;

    if (txPutF('SR_SCHDDT_U1')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;




//==============================================================================
//
//==============================================================================
function HsrSchedule.ScheduleDelete(RoomCode,RsvDate:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('ROOMCODE;RSVDATE');
    SetFldValue(0,[RoomCode,RsvDate]);
    if (txPutF('SR_MONSCHD_DEL')) then begin
        Result := 1;
        //txFree;

       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 1;
    MessageStr := '���������� �����Ͽ����ϴ�';
end;


//==============================================================================
//  2003.2.14 �̰�ȭ -- �������������
//  2003.2.23 �̰�ȭ ����
//==============================================================================
function HsrSchedule.MonSchDel(RoomCode,RsvDate:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_DATE1');
    SetFldValue(0,[RoomCode,RsvDate]);
    if (txPutF('SR_SCHDT_D1')) then   //DEL')) then
    begin
       Result := 1;

       txFree;
    end;

    MessageStr := GetTxMsg;

    //Result := 1;
    //MessageStr := '���������� �����Ͽ����ϴ�';

end;


//==============================================================================
// �� �˻�� ��������
//==============================================================================
function  HsrSchedule.SchcmtInsert(Cnt:Integer):Integer;
var
    i : Integer;
begin

   Result := -1;
   txAlloc;

   SetFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6');
   for i := 0 to Cnt - 1 do
    begin
      SetFldValue(i,[String(sRoomCode[i]),String(sExamType[i]),String(sRsvDate[i]),
                     String(sRemark[i]), G_USERID, G_USERIP]);
    end;

   if txPutF('SR_SCHCMT_I') then
   begin
      Result := 1;
      //txFree;
   
      txFree;
   end;

end;
//==============================================================================
//                         ������ȸ
//==============================================================================
function  HsrSchedule.SchcmtList(fDate,tDate,Roomcode,ExamType:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4;');
    SetFldValue(0,[fDate,tDate,Roomcode,ExamType]);

    if (txGetF('SR_SCHCMT_L')) then
    begin
       GetFldVar('S_NAME1',sRsvDate);
       GetFldVar('S_NAME2',sRemark);
       Result := GetRecordCnt('S_NAME1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;
///////////////////////////////////////////////////////////////////////////////
//      ȯ������ class(HPatInfo) Member Method                               //
///////////////////////////////////////////////////////////////////////////////

//==============================================================================
// ȯ�ڸ�� ��ȸ...
//==============================================================================
function HPatInfo.PatInfoList(KeyStr:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO');    // ȯ�ڹ�ȣ,ȯ�ڸ� / ��ü, ����, �ܷ�
    SetFldValue(0,[KeyStr]);

    if (txGetF('S0_PATINFO_L')) then
    begin
        GetFldVar('S_PATNO',   sPatNo);
        GetFldVar('S_PATNAME', sPatName);
        GetFldVar('S_NAME1',   sPatNameEng);
        GetFldVar('S_RESNO',   sResNo);
        GetFldVar('S_BIRTH',   sBirth);
        GetFldVar('S_SEX'  ,   sSex);
        GetFldVar('S_NO1'  ,   sTelno1);
        GetFldVar('S_NO2'  ,   sTelno2);
        GetFldVar('S_DATE1'  , sAdmdate);
        GetFldVar('S_DATE2'  , sDschdate);
        GetFldVar('S_DATE3'  , sLastdate);
        GetFldVar('S_WARDNO' , sWardno);
        GetFldVar('S_MEDDEPT', sMeddept);
        GetFldVar('S_ROOMNO',  sRoomno);

        Result := GetRecordCnt('S_PATNO');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
// ȯ�ڸ�� ��ȸ...
//==============================================================================
function HPatInfo.PatInfoListPerPatsect(KeyStr,Patsect:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_PATSECT');
    SetFldValue(0,[KeyStr,Patsect]);
    if (txGetF('S0_PATINFO_L3')) then    // s0_patinfo_l3.pc
    begin
      GetFldVar('S_PATNO',   sPatNo);
      GetFldVar('S_PATNAME', sPatName);
      GetFldVar('S_NAME1',   sPatNameEng);
      GetFldVar('S_RESNO',   sResNo);
      GetFldVar('S_BIRTH',   sBirth);
      GetFldVar('S_SEX'  ,   sSex);
      GetFldVar('S_NO1'  ,   sTelno1);
      GetFldVar('S_NO2'  ,   sTelno2);
      GetFldVar('S_DATE1'  , sAdmdate);
      GetFldVar('S_DATE2'  , sDschdate);

      GetFldVar('S_DATE3'  , sLastdate);
      GetFldVar('S_WARDNO' , sWardno);
      GetFldVar('S_ROOMNO' , sRoomno);
      GetFldVar('S_MEDDEPT', sMedDept);

      GetFldVar('S_STRING1', sPattype);
      GetFldVar('S_STRING2', sTypecd);
      GetFldVar('S_STRING3', sCustcd);
      //2022.02.21. �쳲�� �߰�
      GetFldVar('S_STRING4', sPassport);

      Result := GetRecordCnt('S_PATNO');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;



//==============================================================================
//
//==============================================================================
function HPatInfo.PatInfoList2(patno: String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO');
    SetFldValue(0,[patno]);
    if (txGetF('SR_PATINFO_L1')) then
    begin
        GetFldVar('S_YN1'  ,   sPatio);
        Result := GetRecordCnt('S_YN1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//  2003.6.5 �̰�ȭ -- �ֹι�ȣ�� ȯ����ȸ
//==============================================================================
function HPatInfo.PatInfoResno(Flag, Resno1, Resno2: String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_STRING1;S_STRING2');
    SetFldValue(0,[Flag, Resno1, Resno2]);
    if (txGetF('SR_PATINFO_L5')) then
    begin
        GetFldVar('S_PATNO',   sPatNo);
        GetFldVar('S_PATNAME', sPatName);
        GetFldVar('S_NAME1',   sPatNameEng);
        GetFldVar('S_RESNO',   sResNo);
        GetFldVar('S_BIRTH',   sBirth);
        GetFldVar('S_SEX'  ,   sSex);
        GetFldVar('S_NO1'  ,   sTelno1);
        GetFldVar('S_NO2'  ,   sTelno2);
        GetFldVar('S_DATE1'  , sAdmdate);
        GetFldVar('S_DATE2'  , sDschdate);

        GetFldVar('S_DATE3'  , sLastdate);
        GetFldVar('S_WARDNO' , sWardno);
        GetFldVar('S_ROOMNO' , sRoomno);
        GetFldVar('S_MEDDEPT', sMedDept);

        // 2015.07.01 ����� ���������� ��û
        GetFldVar('S_STRING1', sPattype);
        GetFldVar('S_STRING2', sTypecd);
        GetFldVar('S_STRING3', sCustcd);
        //2022.02.21. �쳲�� �߰�
        GetFldVar('S_STRING4', sPassport);

        Result := GetRecordCnt('S_PATNO');

       txFree;
    end;

    MessageStr := GetTxMsg;
end;

//==============================================================================
//  ����, KimDaeYong 2011-05-04
//
//==============================================================================
function HPatInfo.PatInfoNaksang(inPatno: String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_TYPE1');
    SetFldValue(0,[inPatno]);
    if (txGetF('SR_PATINFO_S1')) then
    begin
        GetFldVar('S_STRING1',   sNaksang);

        Result := GetRecordCnt('S_STRING1');

       txFree;
    end;

    MessageStr := GetTxMsg;
end;

//==============================================================================
// SRA211F2 - ����� ��� ��ȸ.
//==============================================================================
function HPatInfo.AcpOrdList(OrdDate,PatSect,Examtype,RoomCd,SelType:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_ORDDATE;S_PATSECT;S_TYPE1;S_CODE1;S_CODE2');
    SetFldValue(0,[OrdDate,PatSect,Examtype,RoomCd,SelType]);

    if (txGetF('SR_ACPORD_L1')) then       // sr_acpord_l1.pc
    begin
        GetFldVar('S_PATNO',   sPatNo);
        GetFldVar('S_PATNAME', sPatName);
        GetFldVar('S_MEDDEPT', sMedDept);
        GetFldVar('S_WARDNO' , sWardno);
        GetFldVar('S_IDNUM1' , sResNo1);
        GetFldVar('S_IDNUM2' , sResNo2);
        //COLOR�۾�, KimDaeYong 2011-05-25
        GetFldVar('S_STRING1', sDiagcd );

        Result := GetRecordCnt('S_PATNO');
       txFree;
    end;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// SRA211F2 - ����� ��� ��ȸ�� color�۾��� Metformin, Creatinine ��ȸ
// KimDaeYong 2011-05-25
//==============================================================================
function HPatInfo.AcpOrdSelect(inPatno, inOrddate:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_CODE2');
    SetFldValue(0,[inPatno, inOrddate]);

    if (txGetF('SR_ACPORD_S1')) then       // sr_acpord_s1.pc
    begin
        GetFldVar('S_STRING1', sMetfdt );
        GetFldVar('S_STRING2', sMetfnm );
        GetFldVar('S_STRING3', sCreatdt);
        GetFldVar('S_STRING4', sCreat  );

        GetFldVar('S_STRING5', sFstdate  );
        GetFldVar('S_STRING6', sExecdate  );
        GetFldVar('S_STRING7', sOrdcode  );
        GetFldVar('S_STRING8', sPretrt  );
        GetFldVar('S_STRING9', sOrdname  );

        Result := GetRecordCnt('S_STRING1');

       txFree;
    end;
    MessageStr := GetTxMsg;
end;
//==============================================================================
// SRA218F2 - ct�˻�� ȯ��  Creatinine, �ֻ�ó�� ��ȸ
// WooNamKyu 2021-06-02
//==============================================================================
function HPatInfo.AcpOrdSelect2(inOrddate:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1');
    SetFldValue(0,[inOrddate]);

    if (txGetF('SR_ACPORD_S2')) then       // sr_acpord_s2.pc
    begin
        GetFldVar('S_STRING1', sCreatdt     );
        GetFldVar('S_STRING2', sCreatpatno  );
        GetFldVar('S_STRING3', sCreatpatname);
        GetFldVar('S_STRING4', sCreat       );

        GetFldVar('S_STRING5' , sTrdate   );
        GetFldVar('S_STRING6' , sTrpatno  );
        GetFldVar('S_STRING7' , sTrpatname);
        GetFldVar('S_STRING8' , sTrmirname);
        GetFldVar('S_STRING9' , sTrbonname);
        GetFldVar('S_STRING10', sTrcolname);
        GetFldVar('S_STRING11', sTrrosname);


        Result := GetRecordCnt('S_STRING1');

       txFree;
    end;
    MessageStr := GetTxMsg;
end;


//==============================================================================
// 2003.1.2 �̰�ȭ
// -- SRA214F1 �ϰ������� ��� ��ȸ (����ȯ��)
// 2003.2.14 �̰�ȭ���� -- gubun�߰� ó����,������ ���Ǻ��� ��ȸ
//==============================================================================
function HPatInfo.AcpPatOrderList(frOrdDate,toOrdDate,Examtype,RoomCd,Gubun:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROM1;S_TO1;S_TYPE1;S_CODE1;S_CODE2');
    SetFldValue(0,[frOrdDate,toOrdDate,Examtype,RoomCd,gubun]);

    if (txGetF('SR_ACPORD_L2')) then
    begin
        GetFldVar('S_PATNO'   , sPatNo);
        GetFldVar('S_PATNAME' , sPatName);
        GetFldVar('S_MEDDEPT' , sMedDept);
        GetFldVar('S_WARDNO'  , sWardno);
        GetFldVar('S_IDNUM1'  , sResNo1);
        GetFldVar('S_IDNUM2'  , sResNo2);
        GetFldVar('S_ORDCODE' , sOrdcode);
        GetFldVar('S_ORDNAME' , sOrdname);
        GetFldVar('S_DR1'     , sCharnm );
        GetFldVar('S_ORDDATE' , sOrddate);
        GetFldVar('S_TYPE2'   , sRcpstat);
        GetFldVar('S_CODE2'   , sExamroom);
        GetFldVar('L_SEQNO1'  , sOrdseqno);

        GetFldVar('S_STRING1' , sComments);
        GetFldVar('S_STRING2' , sSex     );
        GetFldVar('S_STRING3' , sResNo   );
        GetFldVar('S_STRING4' , sBirth   );
        GetFldVar('S_STRING5' , sPatsect );


        Result := GetRecordCnt('S_PATNO');
       txFree;
    end;
    MessageStr := GetTxMsg;
end;


//==============================================================================
// 2003.7.10  �̰�ȭ
// -- ���ȯ�� ����ġ����
//==============================================================================
function HPatInfo.PatWardno(Patno:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO');
    SetFldValue(0,[Patno]);

    if (txGetF('SR_CURPAT_L1')) then
    begin
        GetFldVar('S_STRING1'  , sWardno);
        GetFldVar('S_STRING2'  , sRoomno);

        Result := GetRecordCnt('S_STRING1');
       txFree;
    end;
    MessageStr := GetTxMsg;
end;



//==============================================================================
//
//==============================================================================
function HPatInfo.PhyOrdList(OrdDate,Flag:String):Integer;
begin

{
    Result := -1;
    txAlloc;
    SetFldName('ORDDATE;FLAG');
    SetFldValue(0,[OrdDate,Flag]);
    if (txGetF('SR_ACPGORD_LIST')) then begin
        proto_GetFldVar('PATNO',   sPatNo);
        proto_GetFldVar('PATNAME', sPatName);
        proto_GetFldVar('SOLGERNO',sSolgerNo);
        proto_GetFldVar('CASTENM', sCasteNm);
        proto_GetFldVar('FORCENM', sForceNm);
        proto_GetFldVar('MEDDEPT', sMedDept);
        proto_GetFldVar('RESNO',   sResNo);
        proto_GetFldVar('PKGNAME', sPkgName);
        Result := GetRecordCnt('PATNO');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}

    result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';
end;

//==============================================================================
//
//==============================================================================
function HPatInfo.PattypeSel(Patno, Orddate, Patsect: String; Ordseqno: Integer):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_ORDDATE;S_PATSECT;L_SEQNO1');
    SetFldValue(0,[Patno,Orddate,Patsect,Ordseqno]);

    if (txGetF('SR_PATTYPE_L')) then
    begin
        Result := GetRecordCnt('S_CODE1');
        GetFldVar('S_CODE1', sPattype);
        GetFldVar('S_NAME1', sPattypenm);
        GetFldVar('S_CODE2', sTypecd);    // 2007.05.14 ����� �߰� ��������
        GetFldVar('S_NAME2', sTypecdnm);  // 2007.05.14 ����� �߰� ��������
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
//      ��������� class(HUserInfo) Member Method                            //
//==============================================================================
function HUserInfo.UserInfoList(KeyStr:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_USERID1;S_FLAG9');
    SetFldValue(0,[KeyStr,'EB1']);

    if (txGetF('SR_USERNAME_L')) then
    begin
        Result := GetRecordCnt('S_USERNAME1');

        GetFldVar('S_USERID1',   sUserID);
        GetFldVar('S_USERNAME1', sUserName);
        GetFldVar('S_MEDDEPT',   sDeptName);

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HUserInfo.GetLocalValue(userid:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_USERID1');
    SetFldValue(0,[userid]);

    if (txGetF('CM_USERGRP_L')) then     //cm_usergrp_l1.pc
    begin
        Result := GetRecordCnt('S_NAME2');
        GetFldVar('S_NAME2',  sDeptnm);
        GetFldVar('S_CODE1',  sDeptcd);
        GetFldVar('S_ID1',    sGrpid);
        GetFldVar('S_NAME1',  sGrpname);
        GetFldVar('S_ID2',    sMastGrpid);
        GetFldVar('S_NO1',    sUselevel);
        GetFldVar('S_TYPE1',  sCswbtype);
        GetFldVar('S_NUMVAL1',sOptcol1);
        GetFldVar('S_NUMVAL2',sOptcol2);
        GetFldVar('S_NUMVAL3',sOptcol3);
     
        txFree;
     end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HUserInfo.GetOptionValue(examtype:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_TYPE1');
    SetFldValue(0,[examtype]);

    if (txGetF('SR_EXAMTYPE_S')) then    //sr_examtype_s.pc
    begin
        Result := GetRecordCnt('S_NAME1');
        GetFldVar('S_NAME1', sTypename);
        GetFldVar('S_YN1',   sFilmyn);
        GetFldVar('S_YN2',   sBaryn);
        GetFldVar('S_YN3',   sProcyn);
        GetFldVar('S_YN4',   sNamecdyn);
        GetFldVar('S_YN5',   sAcptyn);
        GetFldVar('S_YN6',   sDocrsvyn);
        GetFldVar('S_YN8',   sChartyn);
        GetFldVar('S_YN9',   sDatayn);
        GetFldVar('S_TYPE2', sFilmsave);

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HUserInfo.GetUserVal(userid,password:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_USERID1;S_CODE1;S_FLAG9');
    SetFldValue(0,[userid,password,'EB1']);

    if (txGetF('SR_USER_S')) then
    begin
        Result := GetRecordCnt('S_USERNAME1');
        GetFldVar('S_USERNAME1', sUsername);
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HUserInfo.GetDept(deptcd,locate:String):Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_CODE1;S_CODE2');
     SetFldValue(0,[deptcd,locate]);

     if (txGetF('SR_DEPT_L')) then
     begin
          Result := GetRecordCnt('S_CODE2');
          GetFldVar('S_CODE2', sDeptcd);
          GetFldVar('S_NAME2', sDeptnm);

        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;


function HUserInfo.GetRightList(userid,password:String):Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4');
     SetFldValue(0,[G_GRPID,'EB1',userid,password]);

     if (txGetF('SR_RIGHT_L')) then
     begin
          Result := GetRecordCnt('S_USERID1');
          GetFldVar('S_USERID1',    sUserid);
          GetFldVar('S_USERNAME1',  sUsername);
          GetFldVar('S_STRING1',    sDeptnm);
          GetFldVar('S_NO1',        sUselevel);

        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
//      ���� class(HWardInfo) Member Method                                  //
//==============================================================================
function HWardInfo.WardList(seltype, locate: String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_TYPE1;S_TYPE2');
    SetFldValue(0,[seltype,locate]);

    if (txGetF('SR_DEPTC_L1')) then
    begin
        Result := GetRecordCnt('S_CODE1');
        GetFldVar('S_CODE1',   sWardNo);
        GetFldVar('S_CODE2',   sWardName);

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;



//==============================================================================
// 2003.3.10 �̰�ȭ -- �ʸ������ǿ��� ����ϴ� �μ��ڵ�
//==============================================================================
function HWardInfo.RadPList(deptcd, locate: String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_CODE2');
    SetFldValue(0,[deptcd,locate]);

    if (txGetF('SR_DEPT_L5')) then
    begin
        Result := GetRecordCnt('S_CODE3');
        GetFldVar('S_CODE3',   sWardNo);
        GetFldVar('S_NAME3',   sWardName);

       txFree;
    end;

    MessageStr := GetTxMsg;
end;


/////////////////////////////////////////////////////////////////////////////
//      �Ű� Class(HsrPkg)                                                 //
/////////////////////////////////////////////////////////////////////////////

//==============================================================================
//
//==============================================================================
function HsrPkg.OrdPkgList(OrdDate,ExamType:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('ORDDATE;S_TYPE');
    SetFldValue(0,[OrdDate,ExamType]);
    if (txGetF('SR_ORDPKG_LIST')) then begin
        proto_GetFldVar('PKGCODE', sPkgCode);
        proto_GetFldVar('PKGNAME', sPkgName);
        Result := GetRecordCnt('PKGCODE');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';

end;

//==============================================================================
//
//==============================================================================
function HsrPkg.ExePkgList(ExecDate,ExamType:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('EXECDATE;S_TYPE');
    SetFldValue(0,[ExecDate,ExamType]);
    if (txGetF('SR_EXEPKG_LIST')) then begin
        proto_GetFldVar('PKGCODE', sPkgCode);
        proto_GetFldVar('PKGNAME', sPkgName);
        Result := GetRecordCnt('PKGCODE');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';

end;

//==============================================================================
//
//==============================================================================
function HsrPkg.ScheduleList(RcpDate:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('RCPDATE');
    SetFldValue(0,[RcpDate]);
    if (txGetF('SG_SCHDDT_LIST')) then begin
        proto_GetFldVar('RCPDATE', sRcpDate);
        proto_GetFldVar('AMPMTYPE',sAmPmType);
        proto_GetFldVar('PKGCODE', sPkgCode);
        proto_GetFldVar('PKGNAME', sPkgName);
        proto_GetFldVar('BLNGCODE',sBlngCode);
        proto_GetFldVar('BLNGNAME',sBlngName);
        proto_GetFldVar('RCPCNT',  iRcpCnt);
        Result := GetRecordCnt('RCPDATE');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';
end;

///////////////////////////////////////////////////////////////////////////////
//      �˻� class(HsrExam) Member Method                                    //
///////////////////////////////////////////////////////////////////////////////

//==============================================================================
// �˻��Ƿ� ���� ��ȸ.
// - ���� : 2002.03.03. ������.
//          ���� File�� �̿��� ��ȸ���� FMF32�� �̿��ϵ��� ����. <-- �ӵ��� �ʹ� ������...
// - ���� : 2002.12.9   �̰�ȭ
//          �˻籸���׸� �߰� (�Ϲ�,Ư��,CT,MRI,SONO,Angio)
//==============================================================================
function HsrExam.ExamOrderList(FromDate,ToDate,PatSect,RoomCode,Examtype,Option,OptionMobile,CurrentLoc,Examchk1,Examchk2,Examchk3,Examchk4,Examchk5,Examchk6,Examchk7:String):Integer;

begin
    Result := -1;
    txAlloc32;
    SetFldName32('S_FROM1;S_TO1;S_PATSECT;S_CODE1;S_TYPE1;S_TYPE2;S_FLAG9;S_FLAG10;S_YN1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE6;S_CODE7;S_CODE8');
    SetFldValue32(0,[FromDate,ToDate,PatSect,RoomCode,Examtype,Option,'EB1',OptionMobile,CurrentLoc,Examchk1,Examchk2,Examchk3,Examchk4,Examchk5,Examchk6,Examchk7]);

    if (txGetF32('SR_EXMORD_L1')) then    // sr_exmord_l1.pc
    begin
        Result := GetRecordCnt32('S_ORDDATE');

        GetFldVar32('S_ORDDATE' 	,sOrdDate	);
        GetFldVar32('S_TIME1'		,sOrdTime	);
        GetFldVar32('S_MEDDEPT'		,sMedDept	);
        GetFldVar32('S_WARDNO'		,sWardNo	);
        GetFldVar32('S_PATNO'		,sPatNo		);
        GetFldVar32('S_PATNAME'		,sPatName	);
        GetFldVar32('S_DR1'   		,sOrdDr		);
        GetFldVar32('S_DRNAME1'		,sOrdDrNm	);
        GetFldVar32('S_CODE2'		,sExamCode	);
        GetFldVar32('S_NAME2'		,sExamName	);
        GetFldVar32('S_STAT1'		,sExamStat	);
        GetFldVar32('S_NAME3'		,sExamStatnm    );
        GetFldVar32('S_TEXT1'		,sComments	);
        GetFldVar32('S_YN1'   		,sErYn		);
        GetFldVar32('S_YN2'   		,sPortYn	);
        GetFldVar32('L_SEQNO1'		,iOrdSeqNo	);
        GetFldVar32('S_CODE3'		,sRoomcode	);
        GetFldVar32('S_DIAGNAME'	,sDiagname	);
        GetFldVar32('S_ORDTEXT'		,sOrdtext	);
        GetFldVar32('S_ROOMNO'		,sRoomno	);
        GetFldVar32('S_BIRTH'		,sBirdate	);
        GetFldVar32('S_SEX'   		,sSex		);
        GetFldVar32('S_YN3'   		,sRcpyn		);
        GetFldVar32('S_DATE1'		,sDschdate	);
        GetFldVar32('S_PATSECT'		,sPatsect	);

       txFree32;
    end;

    //txFree32;
//    MessageStr := GetTxMsg;
{
var
    LocalFile : String;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROM1;S_TO1;S_PATSECT;S_CODE1;S_TYPE1;S_TYPE2;S_FLAG9');
    SetFldValue(0,[FromDate,ToDate,PatSect,RoomCode,Examtype,Option,'EB1']);

    if (txGetFile('SR_EXMORD_L1',LocalFile)) then
    begin
         Result := GetFldVarFile(LocalFile, '!@', '#$',
                 [@sOrdDate,
                  @sOrdTime,
                  @sMedDept,
                  @sWardNo,
                  @sPatNo,
                  @sPatName,
                  @sOrdDr,
                  @sOrdDrNm,
                  @sExamCode,
                  @sExamName,
                  @sExamStat,
                  @sExamStatnm,
                  @sComments,
                  @sErYn,
                  @sPortYn,
                  @iOrdSeqNo,
                  @sRoomcode,
                  @sDiagname,
                  @sOrdtext,
                  @sRoomno,
                  @sBirdate,
                  @sSex]);
    end;

    //txFree;
    MessageStr := GetTxMsg;
}
end;

//==============================================================================
// ���� ������ ��� ��ȸ
//==============================================================================
function HsrExam.RsvPatList(RsvDate,ExamType,RoomCd:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_FROM1;S_TO1;S_TYPE1;S_CODE1');
    SetFldValue(0,[RsvDate,RsvDate,ExamType,RoomCd]);

    if (txGetF('SR_RSVPAT_L1')) then      //sr_rsvpat_l1.pc
    begin
        GetFldVar('S_PATNO',   sPatNo);
        GetFldVar('S_RSVDATE', sRsvDate);
        GetFldVar('S_CODE1',   sRoomCode);
        GetFldVar('S_PATNAME', sPatName);
        GetFldVar('S_IDNUM1',  sResno1);
        GetFldVar('S_IDNUM2',  sResno2);
        GetFldVar('S_WARDNO',  sWardno);
        //COLOR�۾�, KimDaeYong 2011-05-19
        GetFldVar('S_STRING1', sDiagcd );

        Result := GetRecordCnt('S_PATNO');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.TargetDataList(PatNo,ExamType:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('PATNO;S_TYPE');
    SetFldValue(0,[PatNo,ExamType]);

    if (txGetF('SR_TRSVACP_LIST')) then
    begin
        proto_GetFldVar('ORDDATE', sOrdDate);
        proto_GetFldVar('ORDSEQNO',iOrdSeqNo);
        proto_GetFldVar('EXAMSTAT',sExamStat);
        proto_GetFldVar('EXAMCODE',sExamCode);
        proto_GetFldVar('EXAMNAME',sExamName);
        proto_GetFldVar('ROOMCODE',sRoomCode);
        proto_GetFldVar('HOPEDATE',sHopeDate);
        proto_GetFldVar('RSVDATE', sRsvDate);
        proto_GetFldVar('ACPTDATE',sAcptDate);
        proto_GetFldVar('MEDDEPT', sMedDept);
        proto_GetFldVar('WARDNO',  sWardNo);
        proto_GetFldVar('ORDDR',   sOrdDr);
        proto_GetFldVar('EMPNAME1',sOrdDrNm);
        proto_GetFldVar('RCPYN',   sRcpYN);
        proto_GetFldVar('EXAMTECH',sExamTech);
        proto_GetFldVar('COMMENTS',sComments);
        proto_GetFldVar('S_YN',    sExecYn);
        proto_GetFldVar('S_TYPE',  sRsvType);
        proto_GetFldVar('ERYN',    sErYn);
        proto_GetFldVar('PORTYN',  sPortYn);
        Result := GetRecordCnt('ORDDATE');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ������Ȳ ���
// ���� : 2002.12.9 �̰�ȭ
// SR_RSVACPT_L1 -> SR_RSPRT_L1�� ����
//==============================================================================
function HsrExam.RsvAcpList(RoomCode,FromDate,ToDate,Flag,Examtype,Meddept,Wardno,Patno,Examcode,Patsect:String):Integer;
var
    LocalFile : string;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_FROMDATE;S_TODATE;S_FLAG1;S_TYPE1;S_MEDDEPT;S_WARDNO;S_PATNO;S_CODE2;S_FLAG9;S_FLAG10');
    SetFldValue(0,[RoomCode,FromDate,ToDate,Flag,examtype,Meddept,Wardno,Patno,Examcode,'EB1',Patsect]);

    if (txGetFile('SR_RSPRT_L1',LocalFile)) then
    begin
        Result := GetFldVarFile(LocalFile, '!@', '#$',
                               [@iOrdseqno,
                                @sRsvDate,
                                @sPatNo,
                                @sPatName,
                                @sSex,
                                @sBirdate,
                                @sExamCode,
                                @sExamName,
                                @sRoomcode,
                                @sOrdDate,
                                @sMedDept,
                                @sWardNo,
                                @sRoomNo,
                                @sOrdDr,
                                @sOrdDrNm,
                                @sRemark,
                                @sDiagname,
                                @sOrdText,
                                @sPatsect,
                                @sExamtext,
                                @sRcpYn,
                                @sPhoneno1,
                                @sPhoneno2]);
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.ExamRsltSelect(PatNo,Orddate:String;OrdSeqNo:integer):Integer;
var
   tmpdate:TDateTime;
begin
     GetSysDate(tmpdate);
{
    Result := -1;
    txAlloc;
    SetFldName('PATNO;ORDDATE;ORDSEQNO');
    SetFldValue(0,[PatNo,OrdDate,OrdSeqNo]);
    if (txGetF('SR_EXAMRSLT_SEL')) then begin
        proto_GetFldVar('RSLTTEXT',sRsltText);
        Result := GetRecordCnt('RSLTTEXT');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    result := 0;

    inc(Result);

        pr_GetFldVar(sRsltText,
                     formatdatetime('YYYY-MM-DD HH:NN',tmpdate)  +
                     '����Կ� Lateral Lt ' + chr(13) + chr(10) +
                     '' + chr(13) + chr(10) +
                     '�����Դϴ�.'
                    );

    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';
end;

//==============================================================================
// �˻��� �ڵ带 �̿��� �ǵ���� �˻�.
// - ��缱�� : sitecode, srchcode(=acrcode), Flag : Y
// - ��Ÿ Ư���˻� : sitecode = '', srchcode, Flag : N
//==============================================================================
function HsrExam.ExamRsltSearch(FromDate,ToDate,SiteCode,SrchCode,ExamType,Flag:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROM1;S_TO1;S_CODE1;S_CODE2;S_TYPE1;S_YN1;S_CODE3');
    SetFldValue(0,[FromDate,ToDate,SiteCode,SrchCode,ExamType,Flag,'EB1']);

    if (txGetF('SR_RSLTSRCH_L1')) then    // sr_rsltsrch_l1.pc
    begin
        GetFldVar('S_CODE1'   , sSitecode);
        GetFldVar('S_CODE2'   , sSrchcode);
        GetFldVar('S_NAME1'   , sSrchname);
        
        GetFldVar('L_SEQNO1'  , iOrdSeqNo);
        GetFldVar('S_EXECDATE', sExecDate);
        GetFldVar('S_ORDCODE' , sExamCode);
        GetFldVar('S_ORDNAME' , sExamName);
        GetFldVar('S_PATNO'   , sPatNo);
        GetFldVar('S_READDATE', sReadDate);
        GetFldVar('S_CFMDATE' , sCfmDate);
        GetFldVar('S_ORDDATE' , sOrdDate);
        GetFldVar('S_MEDDEPT' , sMedDept);
        GetFldVar('S_PATNAME' , sPatName);

        GetFldVar('S_NAME2'   , sCfmdr);
        GetFldVar('S_NAME3'   , sReaddr1);
        GetFldVar('S_NAME4'   , sReaddr2);
        Result := GetRecordCnt('S_EXECDATE');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.ExamHistoryList(PatNo,ExamType:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1');
    SetFldValue(0,[PatNo,ExamType]);

    if (txGetF('SR_EXAMHIST_L1')) then
    begin
        GetFldVar('S_ORDDATE'   ,sOrdDate);
        GetFldVar('L_SEQNO1'    ,iOrdSeqno);
        GetFldVar('S_ORDCODE'   ,sExamCode);
        GetFldVar('S_ORDNAME'   ,sExamName);
        GetFldVar('S_ROOMNO'    ,sRoomCode);
        GetFldVar('S_RSVDATE'   ,sRsvDate);
        GetFldVar('S_ACPTDATE'  ,sAcptDate);
        GetFldVar('S_EXECDATE'  ,sExecDate);
        GetFldVar('S_DATE1'     ,sReadDate);
        GetFldVar('S_DATE2'     ,sCfmDate);
        GetFldVar('S_DATE3'     ,sChgDate);
        GetFldVar('S_MEDDEPT'   ,sMedDept);
        GetFldVar('S_WARDNO'    ,sWardNo);
        GetFldVar('S_DR1'       ,sOrdDr);
        GetFldVar('S_DRNAME1'   ,sOrdDrNm);
        GetFldVar('S_DR2'       ,sReadDr1);
        GetFldVar('S_DRNAME2'   ,sRdDr1Nm);
        GetFldVar('S_YN1'       ,sComments);
        GetFldVar('S_TEXT1'     ,sSOrdYn);
        GetFldVar('S_YN2'       ,sErYn);
        GetFldVar('S_YN3'       ,sPortYn);
        GetFldVar('S_DATE4'     ,sFstDate);      //*
        GetFldVar('S_DATE5'     ,sLstDate);      //*
        GetFldVar('S_DATE6'     ,sOutDate);      //*
        GetFldVar('S_CODE1'     ,sOutDept);      //*
        Result := GetRecordCnt('S_ORDDATE');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
//
//==============================================================================
function HsrExam.PhyExamOrdList(FromDate,ToDate,PkgCode,ExamType,SortKey:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('FROMDATE;TODATE;PKGCODE;S_TYPE;SORTKEY');
    SetFldValue(0,[FromDate,ToDate,PkgCode,ExamType,SortKey]);
    if (txGetF('SR_GORD_LIST')) then begin
        proto_GetFldVar('EXAMSTAT',sExamStat);
        proto_GetFldVar('ORDDATE', sOrdDate);
        proto_GetFldVar('PATNO',   sPatNo);
        proto_GetFldVar('PATNAME', sPatName);
        proto_GetFldVar('SOLGERNO',sSolgerNo);
        proto_GetFldVar('FORCENM', sForceNm);
        proto_GetFldVar('CASTENM', sCasteNm);
        proto_GetFldVar('RESNO',   sResNo);
        proto_GetFldVar('EXAMCODE',sExamCode);
        proto_GetFldVar('EXAMNAME',sExamName);
        proto_GetFldVar('EXAMCNT', sExamCnt);
        proto_GetFldVar('ADMDATE', sAdmDate);
        proto_GetFldVar('MEDDEPT', sMedDept);
        proto_GetFldVar('ORDDR',   sOrdDr);
        proto_GetFldVar('EMPNAME', sOrdDrNm);
        proto_GetFldVar('ACPTDATE',sAcptDate);
        proto_GetFldVar('DETAIL',  sComments);
        Result := GetRecordCnt('PATNO');
        //txFree;

       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';

end;

//==============================================================================
//
//==============================================================================
function HsrExam.PhyExamHisList(PatNo,ExamType:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('PATNO;S_TYPE');
    SetFldValue(0,[PatNo,ExamType]);
    if (txGetF('SR_GEXAMHS_LIST')) then begin
        proto_GetFldVar('ORDDATE', sOrdDate);
        proto_GetFldVar('ORDSEQNO',iOrdSeqno);
        proto_GetFldVar('EXAMCODE',sExamCode);
        proto_GetFldVar('EXAMNAME',sExamName);
        proto_GetFldVar('EXAMCNT', sExamCnt);
        proto_GetFldVar('ACPTDATE',sAcptDate);
        proto_GetFldVar('EXECDATE',sExecDate);
        proto_GetFldVar('READDATE',sReadDate);
        proto_GetFldVar('CFMDATE', sCfmDate);
        proto_GetFldVar('CHGDATE', sChgDate);
        proto_GetFldVar('READDR1', sReadDr1);
        proto_GetFldVar('EMPNAME1',sRdDr1Nm);
        proto_GetFldVar('ADMDATE', sAdmDate);
        proto_GetFldVar('MEDDEPT', sMedDept);
        proto_GetFldVar('ORDDR',   sOrdDr);
        proto_GetFldVar('EMPNAME2',sOrdDrNm);
        proto_GetFldVar('NORMYN',  sNormYn);
        proto_GetFldVar('DETAIL',  sComments);
        proto_GetFldVar('SORDYN',  sSOrdYn);
        Result := GetRecordCnt('ORDDATE');
        //txFree;

       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';

end;

//==============================================================================
//
//==============================================================================
function HsrExam.PhyExamRsltSel(PatNo,Orddate:String;Ordseqno:Integer):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('PATNO;ORDDATE;ORDSEQNO');
    SetFldValue(0,[PatNo,Orddate,Ordseqno]);
    if (txGetF('SR_GEXAMRSL_SEL')) then begin
        proto_GetFldVar('RSLTTEXT',sRsltText);
        Result := GetRecordCnt('RSLTTEXT');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';

end;

//==============================================================================
//
//==============================================================================
function HsrExam.FilmStatusCheck(PatNo,ExamType:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1');
    SetFldValue(0,[PatNo,ExamType]);

    if (txGetF('SR_FILMMT_S1')) then
    begin
        GetFldVar('S_FLAG1'  ,  sFstPat);
        Result := GetRecordCnt('S_FLAG1');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

///////////////////////////////////////////////////////////////////////////////
//      �˻翹�� class(HsrReserve) Member Method                             //
///////////////////////////////////////////////////////////////////////////////

//==============================================================================
//
//==============================================================================
function HsrReserve.ReserveDataUpdate(Cnt:Integer):Integer;
//\\\var
//\\\    i : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_CODE1;S_RSVDATE;S_EDITID;S_PATSECT;S_MEDDEPT;S_DR1;S_DATE1;S_TYPE1;S_TYPE2;S_TYPE3;S_STRING1');

    SetFldValue(0,[Integer(iOrdSeqNo[0]), String(sPatNo[0]),
                       String(sOrdDate[0]),   String(sRoomCode[0]),
                       String(sRsvDate[0]),   String(sExamTech[0]),
                       String(sPatsect[0]),   String(sMedDept[0]),
                       String(sOrdDr[0]) ,    String(sCancelRsvDate[0]),
                       String(sExamtype[0]),  String(sProcstat[0]),
                       String(sExamcode),     String(sRsvcncont)]);  //������һ���, KimDaeYong 2011-11-15


{        ShowMessage('sPatNo[0]:'+sPatNo[0]+ chr(13) +
                    'sOrdDate[0]:'+sOrdDate[0]+ chr(13) +
                    'iOrdSeqNo[0]:'+inttostr(iOrdSeqNo[0])+ chr(13) +
                    'sRsvDate[0]:'+sRsvDate[0]+ chr(13) +
                    'sRoomCode[0]:'+sRoomCode[0]+ chr(13) +
                    'sExamTech[0]:'+sExamTech[0]+ chr(13) +
                    'sPatsect[0]:'+sPatsect[0]+ chr(13) +
                    'sMedDept[0]:'+sMedDept[0]+ chr(13) +
                    'sOrdDr[0]:'+sOrdDr[0]+ chr(13) +
                    'sCancelRsvDate[0]:'+sCancelRsvDate[0] );
}
    if (txPutF('SR_RSV_U')) then        // c
    begin
        // MDEXMORT.PROCSTAT�� �Է��� �� �ȵǴ� ��찡 ��Ȥ �߻���.
        // �̸� ���� �ٽ��ѹ� ���񽺸� Ÿ�� ���� ����� �Էµ��� ���� ��쿡
        // ����� �Է��ϰ� �Ѵ�.

        //txFree;

        Result := 1;
{
        if not ReserveDataUpdateCheck(Cnt) then
        begin
            Result := -1;
        
           txFree;
        end;
}    end
    else
        //txFree;

    MessageStr := GetTxMsg;
end;


//==============================================================================
// 2003.2.20 �̰�ȭ :  ����,�ϰ� ����
//==============================================================================
function HsrReserve.ReserveDataUpdate1(Cnt:Integer):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_CODE1;S_RSVDATE;S_EDITID;S_PATSECT;S_MEDDEPT;S_DR1;S_DATE1;S_TYPE1;S_TYPE2;S_CODE2;S_STRING1');

    SetFldValue(0,[Integer(iOrdSeqNo[0]),     String(sPatNo[0]),
                       String(sOrdDate[0]),   String(sRoomCode[0]),
                       String(sRsvDate[0]),   String(sExamTech[0]),
                       String(sPatsect[0]),   String(sMedDept[0]),
                       String(sOrdDr[0]) ,    String(sCancelRsvDate[0]),
                       String(sExamtype[0]),  String(sProcstat[0]),
                       String(sPatsect[0]),   String(sRsvcncont)]);  //������һ���, KimDaeYong 2011-11-15

    if (txPutF('SR_RSV_U1')) then   // sr_rsv_u1.pc
    begin
        // MDEXMORT.PROCSTAT�� �Է��� �� �ȵǴ� ��찡 ��Ȥ �߻���.
        // �̸� ���� �ٽ��ѹ� ���񽺸� Ÿ�� ���� ����� �Էµ��� ���� ��쿡
        // ����� �Է��ϰ� �Ѵ�.

        //txFree;

        Result := 1;
    end
    else
        //txFree;

    MessageStr := GetTxMsg;
end;



//==============================================================================
//
//==============================================================================
function HsrReserve.ReserveDataUpdateCheck(Cnt:Integer):Boolean;
//\\\var
//\\\    i : Integer;
begin
    Result := false;
    txAlloc;
    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_CODE1;S_RSVDATE;S_EDITID;S_PATSECT;S_MEDDEPT;S_DR1;S_DATE1;S_TYPE1');
    SetFldValue(0,[Integer(iOrdSeqNo[0]), String(sPatNo[0]),
                       String(sOrdDate[0]),   String(sRoomCode[0]),
                       String(sRsvDate[0]),   String(sExamTech[0]),
                       String(sPatsect[0]),   String(sMedDept[0]),
                       String(sOrdDr[0]) ,    String(sCancelRsvDate[0]),
                       String(sExamtype[0])]);


{
        ShowMessage('sPatNo[0]:'+sPatNo[0]+ chr(13) +
                    'sOrdDate[0]:'+sOrdDate[0]+ chr(13) +
                    'iOrdSeqNo[0]:'+inttostr(iOrdSeqNo[0])+ chr(13) +
                    'sRsvDate[0]:'+sRsvDate[0]+ chr(13) +
                    'sRoomCode[0]:'+sRoomCode[0]+ chr(13) +
                    'sExamTech[0]:'+sExamTech[0]+ chr(13) +
                    'sPatsect[0]:'+sPatsect[0]+ chr(13) +
                    'sMedDept[0]:'+sMedDept[0]+ chr(13) +
                    'sOrdDr[0]:'+sOrdDr[0]+ chr(13) +
                    'sCancelRsvDate[0]:'+sCancelRsvDate[0] );
}
    if (txPutF('SR_RSV_U10')) then
    begin
        Result := true;
    
       txFree;
    end;

    //txFree;
end;



//==============================================================================
//
//==============================================================================
function HsrReserve.RepeatExec(Patno, Orddate, RoomCode,Flag: string;OrdSeqNo:Integer): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_ORDDATE;S_CODE1;S_FLAG1;L_SEQNO1');
    SetFldValue(0,[PatNo,OrdDate,RoomCode,Flag,OrdSeqNo]);

    if (txPutF('SR_REPEAT_U1')) then
    begin
        GetFldVar('S_DATETIME1', sReexdate);
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrReserve.RepeatUpdate(OrdSeqNo: integer; PatNo, OrdDate,
  RoomCode, RsvDate,Flag,Remark: string): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_CODE1;S_RSVDATE;S_FLAG1;S_TEXT1');
    SetFldValue(0,[OrdSeqNo,PatNo,OrdDate,RoomCode,RsvDate,Flag,Remark]);

    if (txPutF('SR_REPEAT_U')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �����˻��� �Ƿڳ��� ��ȸ...
//==============================================================================
function HsrReserve.WardOrdListToReserve(OrdDate_from,Orddate_to,WardNo,ExamType,Roomcode,ExceptExecuted:String):Integer;
begin
    Result := -1;
    txAlloc32;
    SetFldName32('S_FROMDATE;S_TODATE;S_WARDNO;S_TYPE1;S_CODE1;S_FLAG9;S_YN1');
    SetFldValue32(0,[OrdDate_from,OrdDate_to,WardNo,ExamType,Roomcode,'EB1',ExceptExecuted]);

    if (txGetF32('SR_TWRSV_L')) then
    begin
        GetFldVar32('L_SEQNO1'  , iOrdSeqNo);
        GetFldVar32('S_WARDNO'  , sWardNo);
        GetFldVar32('S_MEDDEPT' , sMedDept);
        GetFldVar32('S_PATNO'   , sPatNo);
        GetFldVar32('S_PATNAME' , sPatName);
        GetFldVar32('S_ORDDATE' , sOrddate);
        GetFldVar32('S_SEX'     , sSex);
        GetFldVar32('S_IDNUM1'  , sResNo1);
        GetFldVar32('S_IDNUM2'  , sResNo2);
        GetFldVar32('S_STAT1'   , sExamStat);
        GetFldVar32('S_ORDCODE' , sExamCode);
        GetFldVar32('S_ORDNAME' , sExamName);
        GetFldVar32('S_CODE1'   , sRoomCode);
        GetFldVar32('S_RSVDATE' , sRsvDate);
        GetFldVar32('S_DATE1'   , sHopeDate);

        GetFldVar32('S_DR1'     , sOrddr);
        GetFldVar32('S_DRNAME1' , sOrdDrNm);
	    GetFldVar32('S_DR2'     , sChadr);
        GetFldVar32('S_DRNAME2' , sChaDrNm);

        GetFldVar32('S_TEXT1'   , sComments);
        GetFldVar32('S_TYPE2'   , sRsvType);
        GetFldVar32('S_YN1'     , sErYn);
        GetFldVar32('S_YN2'     , sPortYn);
        GetFldVar32('S_BIRTH'   , sBirth);
        GetFldVar32('S_DATE2'   , sOrdtime);
        GetFldVar32('S_TEXT2'   , sRemark_rep);

        //2003.4.30 �̰�ȭ�߰� -- ���ܸ�
        GetFldVar32('S_DIAGNAME', sDiagname);

        GetFldVar32('S_TEXT3'   , sSpcdryn); //�������Ῡ��, 2008-10-02 KimDaeYong
        GetFldVar32('S_TEXT4'   , sRoomno);  //����, 2009-01-05 KimDaeYong


        Result := GetRecordCnt32('S_PATNO');

       txFree32;
    end;

    //txFree32;
//    MessageStr := GetTxMsg;
end;

//==============================================================================
// ������Ȳ ��ȸ.
// 2003.2.25 �̰�ȭ -- examtext�߰���.
//==============================================================================
function HsrReserve.ReserveHistoryList(FromDate,ToDate,RoomCode,ExamCode,Examtype ,Examstat:String)
  :Integer;
//var
//    LocalFile: String;
begin
    Result := -1;
    txAlloc32;
    SetFldName32('S_FROM1;S_TO1;S_CODE1;S_ORDCODE;S_TYPE1;S_TYPE2');
    SetFldValue32(0,[FromDate,ToDate,RoomCode,ExamCode,Examtype, Examstat]);

    if (txGetF32('SR_RSVHIS_L1')) then    // sr_rsvhis_l1.pc
    begin
        GetFldVar32('S_ORDDATE',	sRsvdate	);
        GetFldVar32('S_PATNO',		sPatno	    );
        GetFldVar32('S_PATNAME',	sPatname    );
        GetFldVar32('S_SEX',	    sSex        );
        GetFldVar32('S_BIRTH',	    sBirth      );
        GetFldVar32('S_RESNO',	    sResno1     );

        GetFldVar32('S_ORDNAME',	sExamname   );
        GetFldVar32('S_CODE1',		sRoomcode   );
        GetFldVar32('S_DATE1',		sOrddate    );
        GetFldVar32('L_SEQNO1',		lOrdseqno   );
        GetFldVar32('S_CODE2',		sPatSite    );
        GetFldVar32('S_MEDDEPT',	sMeddept    );
        GetFldVar32('S_WARDNO',		sWardno     );
        GetFldVar32('S_ROOMNO',		sRoomno     );
        GetFldVar32('S_CODE3',		sPhoneno1   );
        GetFldVar32('S_CODE4',		sPhoneno2   );
        GetFldVar32('S_CODE5',		sRcpYN      );
        GetFldVar32('S_TEXT1',		sExamtext   );
        GetFldVar32('S_TEXT2',		sExamstat   );
        GetFldVar32('S_TEXT3',		sComments   );

        GetFldVar32('S_USERNAME1',	sOrddr      );
        GetFldVar32('S_TEXT4',		sSpcdryn    );  //�������Ῡ��, KimDaeYong 2013-05-24

        Result := GetRecordCnt32('S_CODE1');

       txFree32;
    end;

    //txFree32;
//    MessageStr := GetTxMsg;

{
    Result := -1;
    txAlloc;
    SetFldName('S_FROM1;S_TO1;S_CODE1;S_ORDCODE;S_TYPE1');
    SetFldValue(0,[FromDate,ToDate,RoomCode,ExamCode,Examtype]);

    if (txGetFile('SR_RSVHIS_L1',LocalFile)) then
    begin
        Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                               [@sRsvdate,
                                @sPatno,
                                @sPatname,
                                @sExamname,
                                @sRoomcode,
                                @sOrddate,
                                @lOrdseqno,
                                @sPatSite,
                                @sMeddept,
                                @sWardno,
                                @sRoomno,
                                @sPhoneno1,
                                @sPhoneno2,
                                @sRcpYN,
                                @sExamtext]);
    end;

    //txFree;
    MessageStr := GetTxMsg;
}
end;

//==============================================================================
// ���������� �˻��׸� �˻�Ǽ� Count
//==============================================================================
function HsrReserve.ReserveHistorycCount(Rsvdate, RoomCode,
  ExamCode, Examtype: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_DATE1;S_CODE1;S_ORDCODE;S_TYPE1');
    SetFldValue(0,[Rsvdate,RoomCode,ExamCode,Examtype]);

    if (txGetF('SR_RSVHIS_L2')) then          //sr_rsvhis_l2.pc
    begin
        GetFldVar('S_ORDCODE' , sExamCode);
        GetFldVar('S_ORDNAME' , sExamName);
        GetFldVar('L_NO1'     , icount);
        Result := GetRecordCnt('S_ORDCODE');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;






///////////////////////////////////////////////////////////////////////////////
//      �˻����� class(HsrAccept) Member Method                              //
///////////////////////////////////////////////////////////////////////////////

//==============================================================================
//  2003.9.19 �̰�ȭ -- slipcd�߰���.
//==============================================================================
function HsrAccept.AcceptDataUpdate(Cnt: Integer; Userid: String):Integer;
var
   i : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_ACPTDATE;S_CODE1;S_EDITID;S_CODE3;');

    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]), String(sPatNo[i]), String(sOrdDate[i]),
                        String(sAcptdate[i]), String(sRoomCode[i]), G_USERID, String(sSlipcode[i])]);
    end;

    if (txPutF('SR_ACPT_U')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// 2003.2.17  �̰�ȭ : ����,�ϰ� ��������
// 2003.9.16  �̰�ȭ : slipcode�߰���.
//==============================================================================
function HsrAccept.AcceptDataUpdate3(Cnt: Integer; Userid: String):Integer;
var
   i : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_ACPTDATE;S_CODE1;S_EDITID;S_CODE2;S_CODE3');

    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]), String(sPatNo[i]), String(sOrdDate[i]),
                        String(sAcptdate[i]), String(sRoomCode[i]), G_USERID, String(sPatsect[i]), String(sSlipcode[i])]);
    end;

    if (txPutF('SR_ACPT_U2')) then  // sr_acpt_u2.pc
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;




//==============================================================================
// 2003.2.7  �̰�ȭ : �ϰ����� �׽�Ʈ
// 2003.2.21 -- Modify : �Ϲ�,���� üũ�ι� �߰�
//==============================================================================
function HsrAccept.AcceptDataUpdate2(Cnt: Integer; Userid, jobtype: String):Integer;
var
   i : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_ACPTDATE;S_CODE1;S_EDITID;S_EDITIP;L_NO1;S_TYPE1;S_TYPE2');

    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]), String(sPatNo[i]), String(sOrdDate[i]),
                        String(sAcptdate[i]), String(sRoomCode[i]), G_USERID, GetIp,
                        Integer(Cnt), jobtype, String(sPatsect[i])]);
    end;

    if (txPutF('SR_ACPT_U1')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//  2003.9.16 �̰�ȭ -- slipcd�߰���
//==============================================================================
function HsrAccept.AcceptExecDataUpdate(Cnt: Integer; Userid, REPEMARK,NIGHTYN,MAINOP,REOPYN,Medicine3,Remedicine3,Medicine4,Remedicine4: String):Integer;
var
   i : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_ACPTDATE;S_CODE1;S_TYPE1;S_CODE2;S_USERID1;S_EDITID;S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_CODE4;S_STRING5;S_STRING6;S_STRING7;S_STRING8');

    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]), String(sPatNo[i]), String(sOrdDate[i]),
                        String(sAcptdate[i]), String(sRoomCode[i]), String(sExamtype[i]),
                        String(sEqipcode[i]), String(sExecid[i]), G_USERID, REPEMARK,
                        NIGHTYN,MAINOP,REOPYN, String(sSlipcode[i]),Medicine3,Remedicine3,Medicine4,Remedicine4 ]);
    end;

    if (txPutF('SR_ACPTEXEC_U')) then   // sr_acptexec_u.pc
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

// �索������ ��� ȯ�ں�ȣ�ڼ��� �߰�.
//==============================================================================
//
//==============================================================================
function HsrAccept.AcceptExecDataUpdate13(Cnt: Integer; Userid: String):Integer;
var
   i : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_ACPTDATE;S_CODE1;S_TYPE1;S_CODE2;S_USERID1;S_EDITID;S_NUMVAL1');

    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]), String(sPatNo[i]), String(sOrdDate[i]),
                        String(sAcptdate[i]), String(sRoomCode[i]), String(sExamtype[i]),
                        String(sEqipcode[i]), String(sExecid[i]), G_USERID, String(sGuardNum[i])] );
    end;

    if (txPutF('SR_ACPTEXEC_U13')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//  2003.2.18 �̰�ȭ : Ư���˻� (�˻�����,�ǽ� ���ÿ� ó��) ����,�ϰ�����
//  2003.9.16 �̰�ȭ : slipcd�߰�
//==============================================================================
function HsrAccept.AcceptExecDataUpdate2(Cnt: Integer; Userid, REPEMARK,NIGHTYN,MAINOP,REOPYN,Medicine3,Remedicine3,Medicine4,Remedicine4: String):Integer;
var
   i : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_ACPTDATE;S_CODE1;S_TYPE1;S_CODE2;S_USERID1;S_EDITID;S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_CODE3;S_CODE4;S_STRING5;S_STRING6;S_STRING7;S_STRING8');

    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]), String(sPatNo[i]), String(sOrdDate[i]),
                        String(sAcptdate[i]), String(sRoomCode[i]), String(sExamtype[i]),
                        String(sEqipcode[i]), String(sExecid[i]), G_USERID, REPEMARK,NIGHTYN,MAINOP,REOPYN, String(sPatsect[i]), String(sSlipcode[i]),Medicine3,Remedicine3,Medicine4,Remedicine4]);
    end;

    if (txPutF('SR_ACPTEXEC_U2')) then  // sr_acptexec_u2.pc
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;



/////////////////////////////////////////////////////////////////////////////
//      �Ű��Կ� ���� Class(HsrPhyAcpt)                                    //
/////////////////////////////////////////////////////////////////////////////

//==============================================================================
//
//==============================================================================
function HsrPhyAcpt.TAcptPhyList(PatNo,ExamType:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('PATNO;S_TYPE');
    SetFldValue(0,[PatNo,ExamType]);
    if (txGetF('SR_TGACPT_LIST')) then begin
        proto_GetFldVar('ORDDATE', sOrdDate);
        proto_GetFldVar('ORDSEQNO',iOrdSeqNo);
        proto_GetFldVar('EXAMCODE',sExamCode);
        proto_GetFldVar('EXAMNAME',sExamName);
        proto_GetFldVar('MEDDEPT', sMedDept);
        proto_GetFldVar('ORDDR',   sOrdDr);
        proto_GetFldVar('EMPNAME', sOrdDrNm);
        proto_GetFldVar('ADMDATE', sRcpDate);
        proto_GetFldVar('PKGCODE', sPkgCode);
        proto_GetFldVar('EXAMSTAT',sExamStat);
        proto_GetFldVar('EXAMCNT', sExamCnt);
        proto_GetFldVar('ACPTDATE',sAcptDate);
        proto_GetFldVar('ROOMCODE',sRoomCode);
        proto_GetFldVar('CHIFTECH',sExamTech);
        proto_GetFldVar('DETAIL',  sComments);
        Result := GetRecordCnt('ORDDATE');
        //txFree;

       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';

end;

//==============================================================================
//
//==============================================================================
function HsrPhyAcpt.TAcptCPDataList(OrdDate,PkgCode,SortKey:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('ORDDATE;PKGCODE;SORTKEY');
    SetFldValue(0,[OrdDate,PkgCode,SortKey]);
    if (txGetF('SR_TGCPORD_LIST')) then begin
        proto_GetFldVar('PATNO',   sPatNo);
        proto_GetFldVar('PATNAME', sPatName);
        proto_GetFldVar('SOLGERNO',sSolgerNo);
        proto_GetFldVar('CASTENM', sCasteNm);
        proto_GetFldVar('FORCENM', sForceNm);
        proto_GetFldVar('RESNO',   sResNo);
        proto_GetFldVar('ORDSEQNO',iOrdSeqNo);
        proto_GetFldVar('EXAMCODE',sExamCode);
        proto_GetFldVar('MEDDEPT', sMedDept);
        proto_GetFldVar('ORDDR',   sOrdDr);
        proto_GetFldVar('ADMDATE', sRcpDate);
        proto_GetFldVar('EXAMSTAT',sExamStat);
        proto_GetFldVar('EXAMCNT', sExamCnt);
        proto_GetFldVar('ROOMCODE',sRoomCode);
        proto_GetFldVar('CHIFTECH',sExamTech);
        Result := GetRecordCnt('PATNO');
        //txFree;

       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';

end;

//==============================================================================
//
//==============================================================================
function HsrPhyAcpt.AcptCPDataList(OrdDate,PkgCode:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('ORDDATE;PKGCODE');
    SetFldValue(0,[OrdDate,PkgCode]);
    if (txGetF('SR_GCPACPT_LIST')) then begin
        proto_GetFldVar('PATNO',   sPatNo);
        proto_GetFldVar('PATNAME', sPatName);
        proto_GetFldVar('SOLGERNO',sSolgerNo);
        proto_GetFldVar('CASTENM', sCasteNm);
        proto_GetFldVar('FORCENM', sForceNm);
        proto_GetFldVar('RESNO',   sResNo);
        proto_GetFldVar('L_CNT',   iFilmNo);
        proto_GetFldVar('ORDSEQNO',iOrdSeqNo);
        proto_GetFldVar('EXECDATE',sExecDate);
        proto_GetFldVar('EXAMSTAT',sExamStat);
        Result := GetRecordCnt('PATNO');
        //txFree;

       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';

end;

//==============================================================================
//
//==============================================================================
function HsrPhyAcpt.AcptPhyInsert(Cnt:Integer):Integer;
//\\\var
//\\\    i : Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('EXAMSTAT;PATNO;ORDDATE;ORDSEQNO;L_CNT;EXAMCODE;ADMDATE;PKGCODE;'
               + 'EXAMCNT;ROOMCODE;EXAMTECH;MEDDEPT;ORDDR;DETAIL');
    for i := 0 to Cnt - 1 do begin
        SetFldValue(i,[String(sExamStat[i]),String(sPatNo[i]),
                       String(sOrdDate[i]), Integer(iOrdSeqNo[i]),
                       Integer(iFilmNo[i]), String(sExamCode[i]),
                       String(sRcpDate[i]), String(sPkgCode[i]),
                       String(sExamCnt[i]), String(sRoomCode[i]),
                       String(sExamTech[i]),String(sMedDept[i]),
                       String(sOrdDr[i]),'']);
    end;
    if (txPutF('SR_GACPTDT_INS')) then begin
        Result := 1;
        //txFree;

       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 1;
    MessageStr := '���������� ����Ͽ����ϴ�';
end;

//==============================================================================
//
//==============================================================================
function HsrPhyAcpt.AcptPhyDelete(PatNo,OrdDate:String;OrdSeqNo:Integer):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('PATNO;ORDDATE;ORDSEQNO');
    SetFldValue(0,[PatNo,OrdDate,OrdSeqNo]);
    if (txPutF('SR_GACPTDT_DEL')) then begin
        Result := 1;
        //txFree;

       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 1;
    MessageStr := '���������� �����Ͽ����ϴ�';
end;

//==============================================================================
//
//==============================================================================
function HsrPhyAcpt.AcptCPUpdate(PatNo,OrdDate,ExamStat:String;OrdSeqNo,
  FilmNo:Integer):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('PATNO;ORDDATE;EXAMSTAT;ORDSEQNO;L_CNT');
    SetFldValue(0,[PatNo,OrdDate,ExamStat,OrdSeqNo,FilmNo]);
    if (txPutF('SR_GACPTDT_UP')) then begin
        Result := 1;
        //txFree;

       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 1;
    MessageStr := '���������� �����Ͽ����ϴ�';
end;

///////////////////////////////////////////////////////////////////////////////
//      �˻�ǽ� class(HsrExecute) Member Method                             //
///////////////////////////////////////////////////////////////////////////////

//==============================================================================
// �˻�ǽ� ����� ��� ��ȸ..
// - 2002.03.11. ������. FML16 --> FML32�� ����.
//==============================================================================
function HsrExecute.ExecuteDataList(AcptDate,RoomCode,Patno,Examtype:String):Integer;
begin

    Result := -1;
    txAlloc32;
    SetFldName32('S_CODE1;S_ACPTDATE;S_PATNO;S_TYPE1;S_FLAG9');
    SetFldValue32(0,[RoomCode,AcptDate,Patno,Examtype,'EB1']);

    if (txGetF32('SR_EXECWAIT_L1')) then
    begin
        GetFldVar32('S_PATNO'   , sPatNo);
        GetFldVar32('S_ACPTDATE', sAcptDate);
        GetFldVar32('S_RSVDATE' , sRsvDate);
        GetFldVar32('S_ORDDATE' , sOrdDate);
        GetFldVar32('L_SEQNO1'  , iOrdSeqNo);
        GetFldVar32('S_ORDCODE' , sExamCode);
        GetFldVar32('S_ORDNAME' , sExamName);
        GetFldVar32('S_CODE1'   , sRoomcode);
        GetFldVar32('S_MEDDEPT' , sMedDept);
        GetFldVar32('S_WARDNO'  , sWardNo);
        GetFldVar32('S_DR1'     , sOrdDr);
        GetFldVar32('S_DRNAME1' , sOrdDrNm);
        GetFldVar32('S_NAME1'   , sDiagname);
        GetFldVar32('S_TEXT1'   , sOrdtext);
        GetFldVar32('S_TEXT2'   , sOrdrmk);
        GetFldVar32('S_TEXT3'   , sExamtext);
        GetFldVar32('S_PATNAME' , sPatName);
        GetFldVar32('S_FLAG1'   , sSex);
        GetFldVar32('S_IDNUM1'  , sResNo1);
        GetFldVar32('S_IDNUM2'  , sResno2);
        GetFldVar32('S_YN1'     , sErYn);
        GetFldVar32('S_YN2'     , sPortYn);
        GetFldVar32('S_CODE2'   , sEqipcode);
        GetFldVar32('S_DATE2'   , sDschdate);
        GetFldVar32('S_TEXT2'   , sPatsite);
        GetFldVar32('S_NUMVAL1' , sGuardNum);
        GetFldVar32('S_DATE3'   , sMeddate);
        GetFldVar32('S_CODE3'   , sPatsect);

        Result := GetRecordCnt32('S_PATNO');

       txFree32;
    end;

    //txFree32;
//    MessageStr := GetTxMsg;
end;


//==============================================================================
// �˻�ǽ� ����� ��� ��ȸ..
// - 2003.2.17 �̰�ȭ : ����,�ϰ� ����� ����
//==============================================================================
function HsrExecute.ExecuteDataList2(AcptDate,RoomCode,Patno,Examtype:String):Integer;
begin
    Result := -1;
    txAlloc32;
    SetFldName32('S_CODE1;S_ACPTDATE;S_PATNO;S_TYPE1;S_FLAG9');
    SetFldValue32(0,[RoomCode,AcptDate,Patno,Examtype,'EB1']);

    if (txGetF32('SR_EXECWAIT_L2')) then
    begin
        GetFldVar32('S_PATNO'   , sPatNo);
        GetFldVar32('S_ACPTDATE', sAcptDate);
        GetFldVar32('S_RSVDATE' , sRsvDate);
        GetFldVar32('S_ORDDATE' , sOrdDate);
        GetFldVar32('L_SEQNO1'  , iOrdSeqNo);
        GetFldVar32('S_ORDCODE' , sExamCode);
        GetFldVar32('S_ORDNAME' , sExamName);
        GetFldVar32('S_CODE1'   , sRoomcode);
        GetFldVar32('S_MEDDEPT' , sMedDept);
        GetFldVar32('S_WARDNO'  , sWardNo);
        GetFldVar32('S_DR1'     , sOrdDr);
        GetFldVar32('S_DRNAME1' , sOrdDrNm);
        GetFldVar32('S_NAME1'   , sDiagname);
        GetFldVar32('S_TEXT1'   , sOrdtext);
        GetFldVar32('S_TEXT2'   , sOrdrmk);
        GetFldVar32('S_TEXT3'   , sExamtext);
        GetFldVar32('S_PATNAME' , sPatName);
        GetFldVar32('S_FLAG1'   , sSex);
        GetFldVar32('S_IDNUM1'  , sResNo1);
        GetFldVar32('S_IDNUM2'  , sResno2);
        GetFldVar32('S_YN1'     , sErYn);
        GetFldVar32('S_YN2'     , sPortYn);
        GetFldVar32('S_CODE2'   , sEqipcode);
        GetFldVar32('S_DATE2'   , sDschdate);
        GetFldVar32('S_TEXT2'   , sPatsite);
        GetFldVar32('S_NUMVAL1' , sGuardNum);
        GetFldVar32('S_DATE3'   , sMeddate);
        GetFldVar32('S_CODE3'   , sPatsect);

        Result := GetRecordCnt32('S_PATNO');

       txFree32;
    end;
end;


//==============================================================================
// �˻�ǽ�
//==============================================================================
function HsrExecute.ExecuteDataUpdate(Examtype,PatNo,OrdDate,ExamTech,Eqipcode,Nightyn,Mainop,Reopyn,Editid:String;OrdSeqNo:Integer):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_TYPE1;S_PATNO;S_ORDDATE;S_EDITID;S_CODE1;S_YN1;S_YN2;S_YN;S_EDITID;S_EDITIP');
    SetFldValue(0,[OrdSeqNo,Examtype,PatNo,OrdDate,ExamTech,EqipCode,Nightyn,Mainop,Reopyn,Editid,GetIP]);

    if (txPutF('SR_EXEC_U')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �索���ǿ� ġ��ǽ�
//==============================================================================
function HsrExecute.ExecuteDataUpdate13(Examtype,PatNo,OrdDate,ExamTech,Eqipcode,Nightyn,Mainop,Reopyn,sGuarnum,Editid:String;OrdSeqNo:Integer):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_TYPE1;S_PATNO;S_ORDDATE;S_EDITID;S_CODE1;S_YN1;S_YN2;S_YN3;S_NUMVAL1;S_EDITID;S_EDITIP');
    SetFldValue(0,[OrdSeqNo,Examtype,PatNo,OrdDate,ExamTech,EqipCode,Nightyn,Mainop,Reopyn,sGuarnum,Editid,GetIP]);

    if (txPutF('SR_EXEC_U2')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;

end;

//==============================================================================
// VIDEO / TAPE NUMBER ���� - ��������, ������ �˻��
//==============================================================================
function HsrExecute.VideoTapeNumUpdate(PatNo,OrdDate,sNumber:String;OrdSeqNo:Integer):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_NUMVAL1;S_EDITID;S_EDITIP');
    SetFldValue(0,[OrdSeqNo,PatNo,OrdDate,sNumber,G_USERID,G_USERIP]);

    if (txPutF('SR_EXEC_U4')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;

end;

//(Examtype,USERID,Equipcode,NIGHTYN,MAINOP,REOPYN:String; SelCnt:Integer);
//Examtype,PatNo,OrdDate,ExamTech,Eqipcode,Nightyn,Mainop,Reopyn:String;OrdSeqNo:Integer):Integer;


//==============================================================================
// ��缱�� ���Ϻ��� �����Կ� �ǽ�
//==============================================================================
function HsrExecute.ExecuteDataUpdateEqualPosition(Examtype,USERID,Equipcode,NIGHTYN,MAINOP,REOPYN,REPEMARK,MEDSEQNO,CLNDVCODE:String; SelCnt:Integer):Integer;
var
    i : integer;
begin
    Result := -1;
    txAlloc;

    for i := 0 to SelCnt-1 do
    begin
        SetFldName('L_SEQNO1;S_TYPE1;S_PATNO;S_ORDDATE;S_EDITID;S_CODE1;S_YN1;S_YN2;S_YN3;S_STRING1;S_STRING2;S_STRING3');
        SetFldValue(i,[Integer(iOrdSeqNo[i]),Examtype,sPatNo[i],sOrdDate[i],USERID,EquipCode,NIGHTYN,MAINOP,REOPYN,REPEMARK,sMedseqno[i],CLNDVCODE]);
    end;

    if (txPutF('SR_EXEC_U3')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ��缱�� ���Ϻ��� �����Կ� �ǽ�
// 2003.2.18 �̰�ȭ : ����,�ϰ�����
//==============================================================================
function HsrExecute.ExecuteDataUpdateEqualPosition2(Examtype,USERID,Equipcode,NIGHTYN,MAINOP,REOPYN,REPEMARK,MEDSEQNO,CLNDVCODE:String; SelCnt:Integer):Integer;
var
    i : integer;
begin
    Result := -1;
    txAlloc;

    for i := 0 to SelCnt-1 do
    begin
        SetFldName('L_SEQNO1;S_TYPE1;S_PATNO;S_ORDDATE;S_EDITID;S_CODE1;S_YN1;S_YN2;S_YN3;S_STRING1;S_STRING2;S_CODE2;S_STRING3');
        SetFldValue(i,[Integer(iOrdSeqNo[i]),Examtype,sPatNo[i],sOrdDate[i],USERID,EquipCode,NIGHTYN,MAINOP,REOPYN,REPEMARK,sMedseqno[i],sPatsect[i],CLNDVCODE]);
    end;

    if (txPutF('SR_EXEC_U5')) then    // sr_exec_u5.pc
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ȯ�ڰ˻� �������� üũ...
//==============================================================================
function HsrExecute.CheckRcpstat(SelCnt:Integer):Integer;
var
    i : integer;
begin
    Result := -1;
    txAlloc;

    for i := 0 to SelCnt-1 do
    begin
        SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE');
        SetFldValue(i,[Integer(iOrdSeqNo[i]),sPatNo[i],sOrdDate[i]]);
    end;

{
		PUT (S_PATNO,		iy, sPatno		[ix]);
		PUT (S_PATNAME,		iy, sPatname	[ix]);
		PUT (S_ORDDATE,		iy, tOrddate	[ix]);
		PUT (S_STRING1,		iy, sOrddesc	[ix]);
		PUT (S_YN1,			iy, sRcpstat	[ix]);
}
    if (txGetF('SR_RCPCHK_L')) then    // sr_rcpchk_l.pc
    begin
        Result := GetRecordCnt('S_PATNO');

        GetFldVar('S_PATNO',      sPatNo);
        GetFldVar('S_PATNAME',    sPatName);
        GetFldVar('S_ORDDATE',    sOrddate);
        GetFldVar('S_STRING1',    sExamname);
        GetFldVar('S_YN1',        sRcpYn);
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
// �˻�ǽ� ���...
//==============================================================================
function HsrExecute.ExecuteDataDelete(Examtype,PatNo,OrdDate,ExamTech,Eqipcode,Editid:String;OrdSeqNo:Integer):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_TYPE1;S_PATNO;S_ORDDATE;S_EDITID;S_CODE1;S_EDITID;S_EDITIP');
    SetFldValue(0,[OrdSeqNo,Examtype,PatNo,OrdDate,ExamTech,EqipCode,Editid,GetIP]);

    if (txPutF('SR_EXEC_D')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
// �˻�ǽ� ���...
// 2003.2.27 �̰�ȭ -- ��������
//==============================================================================
function HsrExecute.ExecuteDataDelete1(Examtype,PatNo,OrdDate,ExamTech,Eqipcode,Editid,Patsect:String;OrdSeqNo:Integer):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_TYPE1;S_PATNO;S_ORDDATE;S_EDITID;S_CODE1;S_EDITID;S_EDITIP;S_CODE1');
    SetFldValue(0,[OrdSeqNo,Examtype,PatNo,OrdDate,ExamTech,EqipCode,Editid,GetIP,Patsect]);

    if (txPutF('SR_EXEC_D1')) then    // sr_exec_d1.pc
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ����/�ǽ� ���ÿ� ���.
//==============================================================================
function HsrExecute.ExecAcptDataDelete(Examtype,PatNo,OrdDate,ExamTech,Eqipcode:String;OrdSeqNo:Integer):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_TYPE1;S_PATNO;S_ORDDATE;S_EDITID;S_CODE1');
    SetFldValue(0,[OrdSeqNo,Examtype,PatNo,OrdDate,ExamTech,EqipCode]);

    if (txPutF('SR_EXECACPT_D')) then    // sr_execacpt_d.pc
    begin
        Result := 1;
        //txFree;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �˻�ǽ��� ��� ��ȸ.
// 2003.1.22 �̰�ȭ ����: medseqno�߰���.
//==============================================================================
function HsrExecute.ExecuteList(FromDate,ToDate,RoomCode,Meddept,Wardno,Patno,Examcode,Examtype:String):Integer;
//\\\var
//\\\   d_tmp : TDateTime;
begin
    Result := -1;
    txAlloc32;
    SetFldName32('S_FROM1;S_TO1;S_CODE1;S_FLAG9;S_STRING1;S_STRING2');
    SetFldValue32(0,[FromDate,ToDate,RoomCode,'EB1',PatNo,Examtype]);

    if (txGetF32('SR_EXECDONE_L1')) then      //sr_execdone_l1.pc
    begin
        GetFldVar32('S_PATNO',      sPatNo);
        GetFldVar32('S_ORDDATE',    sOrdDate);
        GetFldVar32('L_SEQNO1',	    iOrdSeqNo);
        GetFldVar32('S_STAT1',	    sExamStat);
        GetFldVar32('S_ORDCODE',    sExamCode);
        GetFldVar32('S_ORDNAME',    sExamName);
        GetFldVar32('S_CODE2',	    sEqipcode);
        GetFldVar32('S_RSVDATE',    sRsvDate);
        GetFldVar32('S_EXECDATE',   sExecDate);
        GetFldVar32('S_USERID1',    sExamTech);
        GetFldVar32('S_USERNAME1',  sExTechNm);
        GetFldVar32('L_CNT1',  	    iSOrdCnt);
        GetFldVar32('S_MEDDEPT',    sMedDept);
        GetFldVar32('S_WARDNO',     sWardNo);
        GetFldVar32('S_DR1',   	    sOrdDr);
        GetFldVar32('S_DRNAME1',    sOrdDrNm);
        GetFldVar32('S_PATNAME',    sPatName);
        GetFldVar32('S_IDNUM1',     sResNo1);
        GetFldVar32('S_IDNUM2',     sResNo2);
        GetFldVar32('S_YN1',   	    sErYn);
        GetFldVar32('S_YN2',  	    sPortYn);
        GetFldVar32('S_DATETIME1',  sReexdate);
        GetFldVar32('S_DATETIME2',  sReexwdt);
        GetFldVar32('L_CNT2'     ,  iDayCnt);
        GetFldVar32('S_NUMVAL1'  ,  sGuardNum);
        GetFldVar32('S_STAT2'  ,    sPatsect);
        GetFldVar32('S_SEX'    ,    sSex);
        GetFldVar32('S_STRING1',    sRoomCd);
        GetFldVar32('S_STRING2',    sMedseqno);
        GetFldVar32('S_STRING3',    sBxyn);
        GetFldVar32('S_STRING4',    sClndvcode);    //���ð漼ô���ڵ�, KimDaeYong 2011-09-20
        GetFldVar32('S_STRING5',    sMeddate);      //��������, KimDaeYong 2012-04-06
        GetFldVar32('S_STRING6',    sSpcdryn);

        Result := GetRecordCnt32('S_PATNO');

       txFree32;
    end;

    //txFree32;
    MessageStr := GetTxMsg;
end;


//==================================================================================
// �˻�ǽ��� ��� ��ȸ.
// 2003.9.25 �̰�ȭ �߰� : PACS�����ؼ� �˻�Ǵ�� modality������ ��ȸ�����ϵ�����.
//==================================================================================
function HsrExecute.ExecuteList7(FromDate,ToDate,RoomCode,Meddept,Wardno,Patno,Examcode,Examtype:String):Integer;
//\\\var
//\\\   d_tmp : TDateTime;
begin
    Result := -1;
    txAlloc32;
    SetFldName32('S_FROM1;S_TO1;S_CODE1;S_FLAG9;S_STRING1;S_STRING2');
    SetFldValue32(0,[FromDate,ToDate,RoomCode,'EB1',PatNo,Examtype]);

    if (txGetF32('SR_EXECDONE_L7')) then      //sr_execdone_l7.pc
    begin
        GetFldVar32('S_PATNO',      sPatNo);
        GetFldVar32('S_ORDDATE',    sOrdDate);
        GetFldVar32('L_SEQNO1',	    iOrdSeqNo);
        GetFldVar32('S_STAT1',	    sExamStat);
        GetFldVar32('S_ORDCODE',    sExamCode);
        GetFldVar32('S_ORDNAME',    sExamName);
        GetFldVar32('S_CODE2',	    sEqipcode);
        GetFldVar32('S_RSVDATE',    sRsvDate);
        GetFldVar32('S_EXECDATE',   sExecDate);
        GetFldVar32('S_USERID1',    sExamTech);
        GetFldVar32('S_USERNAME1',  sExTechNm);
        GetFldVar32('L_CNT1',  	    iSOrdCnt);
        GetFldVar32('S_MEDDEPT',    sMedDept);
        GetFldVar32('S_WARDNO',     sWardNo);
        GetFldVar32('S_DR1',   	    sOrdDr);
        GetFldVar32('S_DRNAME1',    sOrdDrNm);
        GetFldVar32('S_PATNAME',    sPatName);
        GetFldVar32('S_IDNUM1',     sResNo1);
        GetFldVar32('S_IDNUM2',     sResNo2);
        GetFldVar32('S_YN1',   	    sErYn);
        GetFldVar32('S_YN2',  	    sPortYn);
        GetFldVar32('S_DATETIME1',  sReexdate);
        GetFldVar32('S_DATETIME2',  sReexwdt);
        GetFldVar32('L_CNT2'     ,  iDayCnt);
        GetFldVar32('S_NUMVAL1'  ,  sGuardNum);
        GetFldVar32('S_STAT2'  ,    sPatsect);
        GetFldVar32('S_SEX'    ,    sSex);
        GetFldVar32('S_STRING1',    sRoomCd);
        GetFldVar32('S_STRING2',    sMedseqno);
        GetFldVar32('S_STRING3',    sModality);
        GetFldVar32('S_STRING4',    sAccno);

        Result := GetRecordCnt32('S_PATNO');

       txFree32;
    end;

    //txFree32;
    MessageStr := GetTxMsg;
end;




//==============================================================================
// �˻�ǽ� ��Ȳ ���... : �ǽð˻��
//==============================================================================
function HsrExecute.ExecuteList2(FromDate,ToDate,RoomCode,Meddept,Wardno,Patno,Examcode,Examtype:String):Integer;
var
//\\\    d_tmp : TDateTime;
    LocalFile: String;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROM1;S_TO1;S_CODE1;S_CODE2;S_CODE3;S_PATNO;S_CODE4;S_TYPE1;S_FLAG9');
    SetFldValue(0,[FromDate,ToDate,RoomCode,Meddept,Wardno,Patno,Examcode,Examtype,'EB1']);

    if (txGetFile('SR_EXECDONE_L2',LocalFile)) then            //sr_execdone_l2.pc
    begin
        Result := GetFldVarFile(LocalFile, '!@', '#$',
                                [@iOrdseqno,
                                 @iSOrdCnt,
                                 @iDayCnt,
                                 @sPatno,
                                 @sOrdDate,
                                 @sExamStat,
                                 @sExamcode,
                                 @sExamname,
                                 @sEqipcode,
                                 @sRsvDate,
                                 @sExecDate,
                                 @sExamTech,
                                 @sExTechNm,
                                 @sMedDept,
                                 @sWardno,
                                 @sOrddr,
                                 @sOrdDrNm,
                                 @sPatName,
                                 @sResNo1,
                                 @sResNo2,
                                 @sErYn,
                                 @sPortyn,
                                 @sReexdate,
                                 @sReexwdt,
                                 @sRoomcode,
                                 @sDiagname,
                                 @sOrdtext,
                                 @sOrdrmk,
                                 @sRoomno,
                                 @sBirdate,
                                 @sSex,
                                 @sRepemark]);
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
// �˻�ǽ� ��Ȳ ��� : �Ҹ���� ����Ʈ��
//==============================================================================
function HsrExecute.ExecuteList3(FromDate,ToDate,RoomCode,Meddept,Wardno,Patno,Examcode,Examtype,Sortkey,Drug,Sex:String):Integer;
var
//\\\    d_tmp : TDateTime;
    LocalFile: String;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROM1;S_TO1;S_CODE1;S_CODE2;S_CODE3;S_PATNO;S_CODE4;S_TYPE1;S_CODE5;S_CODE6;S_FLAG9;S_YN1');
    SetFldValue(0,[FromDate,ToDate,RoomCode,Meddept,Wardno,Patno,Examcode,Examtype,Sortkey,Drug,'EB1',Sex]);

    if (txGetFile('SR_EXECDONE_L3',LocalFile)) then
    begin
//         Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
         Result := GetFldVarFile(LocalFile, '!@', '#$',
                                [@iOrdseqno,
                                 @iSOrdCnt,
                                 @iDayCnt,
                                 @sPatno,
                                 @sOrdDate,
                                 @sExamStat,
                                 @sExamcode,
                                 @sExamname,
                                 @sEqipcode,
                                 @sRsvDate,
                                 @sExecDate,
                                 @sExamTech,
                                 @sExTechNm,
                                 @sMedDept,
                                 @sWardno,
                                 @sOrddr,
                                 @sOrdDrNm,
                                 @sPatName,
                                 @sResNo1,
                                 @sResNo2,
                                 @sErYn,
                                 @sPortyn,
                                 @sReexdate,
                                 @sReexwdt,
                                 @sRoomcode,
                                 @sDiagname,
                                 @sOrdtext,
                                 @sOrdrmk,
                                 @sRoomno,
                                 @sBirdate,
                                 @sSex,
                                 @sMatcode,
                                 @sMatname,
                                 @lNormqty,
                                 @lAddqty,
                                 @lReexqty,
                                 @lTotalqty,
                                 @sUnit]);
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
// �˻�ǽ� ��Ȳ �Ѱ�.
//==============================================================================
function HsrExecute.ExecuteList4(FromDate,ToDate,RoomCode,Meddept,Wardno,Patno,Examcode,Examtype,Sortkey,Drug,Sex:String):Integer;
var
//\\\    d_tmp : TDateTime;
    LocalFile: String;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROM1;S_TO1;S_CODE1;S_CODE2;S_CODE3;S_PATNO;S_CODE4;S_TYPE1;S_CODE5;S_CODE6;S_FLAG9;S_YN1');
    SetFldValue(0,[FromDate,ToDate,RoomCode,Meddept,Wardno,Patno,Examcode,Examtype,Sortkey,Drug,'EB1',Sex]);

    if (txGetFile('SR_EXECDONE_L4',LocalFile)) then
    begin
         Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                                [@sMatcode,
                                 @sMatname,
                                 @lNormqty,
                                 @lAddqty,
                                 @lReexqty,
                                 @lTotalqty,
                                 @sUnit]);
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
// �˻�ǽ� ��Ȳ ���... : QI��
//==============================================================================
function HsrExecute.ExecuteList8(FromDate,ToDate,RoomCode,PatSect,Wardno,Patno,Examcode,Examtype,Redocid:String):Integer;
var
//\\\    d_tmp : TDateTime;
    LocalFile: String;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROM1;S_TO1;S_CODE1;S_CODE2;S_CODE3;S_PATNO;S_CODE4;S_TYPE1;S_FLAG9;S_CODE5');
    SetFldValue(0,[FromDate,ToDate,RoomCode,PatSect,Wardno,Patno,Examcode,Examtype,'EB1',Redocid]);

    if (txGetFile('SR_EXECDONE_L8',LocalFile)) then
    begin
        Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                                [@sPatno,
                                 @sPatname,
                                 @sExecAge,
                                 @sExamName,
                                 @sMeddept,
                                 @sOrdDr,
                                 @sOrdDrNm,
                                 @sOrdDate,
                                 @sHopeDate,
                                 @sAcptdate,
                                 @sExecDate,
                                 @sCfmDate,
                                 @sCfmDr,
                                 @sCfmDrNm,
                                 @sWaitExe,
                                 @sWaitExe2,
                                 @sWaitCfm,
                                 @sExecname,
                                 @sReaddr2nm,
                                 @sReaddr3nm]);
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExecute.MedExecList(ExecDate,PatSect,MedDept,ExamType:String):Integer;
var
//\\\   d_tmp : TDateTime;
   LocalFile: String;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_FROM1;S_TO1;S_PATSECT;S_MEDDEPT;S_TYPE1;S_FLAG9');
     SetFldValue(0,[ExecDate,ExecDate,PatSect,MedDept,ExamType,'EB1']);
     if (txGetFile('SR_MEDEXEC_L1',LocalFile)) then
     begin
          Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                                 [@iOrdseqno,
                                  @sMeddept,
                                  @sRoomcode,
                                  @sExecDate,
                                  @sPatNo,
                                  @sPatName,
                                  @sExamcode,
                                  @sExamName,
                                  @sExecid,
                                  @sExTechNm,
                                  @sWardNo,
                                  @sRoomNo,
                                  @sOrdDate,
                                  @sOrdDr,
                                  @sOrdDrNm,
                                  @sPortYn,
                                  @sEryn]);
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExecute.MonCntList(MonStr,ExamType:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('EXECDATE;S_TYPE');
    SetFldValue(0,[MonStr,ExamType]);

    if (txGetF('SR_MONCNT_LIST')) then
    begin
        proto_GetFldVar('EXECDATE',sExecDate);
        proto_GetFldVar('CNT01',   iExeCnt);
        Result := GetRecordCnt('EXECDATE');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExecute.RoomTotList(FromDate,ToDate,ExamType:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('FROMDATE;TODATE;S_TYPE');
    SetFldValue(0,[FromDate,ToDate,ExamType]);
    if (txGetF('SR_ROOMTOT_LIST')) then begin
        proto_GetFldVar('ROOMCODE',sRoomCode);
        proto_GetFldVar('ROOMNAME',sRoomName);
        proto_GetFldVar('L_CNT10', iOPCnt);
        proto_GetFldVar('L_CNT11', iOCnt);
        proto_GetFldVar('L_CNT20', iWPCnt);
        proto_GetFldVar('L_CNT21', iWCnt);
        proto_GetFldVar('L_CNT30', iGPCnt);
        proto_GetFldVar('L_CNT31', iGCnt);
        Result := GetRecordCnt('ROOMCODE');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';
end;

//==============================================================================
//
//==============================================================================
function HsrExecute.RoomMedList(FromDate,ToDate,RoomCode:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('FROMDATE;TODATE;ROOMCODE');
    SetFldValue(0,[FromDate,ToDate,RoomCode]);
    if (txGetF('SR_ROOMMED_LIST')) then begin
        proto_GetFldVar('MEDDEPT', sMedDept);
        proto_GetFldVar('DEPTNAME',sDeptName);
        proto_GetFldVar('L_CNT10', iOPCnt);
        proto_GetFldVar('L_CNT11', iOCnt);
        proto_GetFldVar('L_CNT20', iWPCnt);
        proto_GetFldVar('L_CNT21', iWCnt);
        proto_GetFldVar('L_CNT30', iGPCnt);
        proto_GetFldVar('L_CNT31', iGCnt);
        Result := GetRecordCnt('MEDDEPT');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';
end;

//==============================================================================
//
//==============================================================================
function HsrExecute.ExamMedList(FromDate,ToDate,ExamCode:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('FROMDATE;TODATE;EXAMCODE');
    SetFldValue(0,[FromDate,ToDate,ExamCode]);
    if (txGetF('SR_EXAMMED_LIST')) then begin
        proto_GetFldVar('MEDDEPT', sMedDept);
        proto_GetFldVar('DEPTNAME',sDeptName);
        proto_GetFldVar('L_CNT11', iOCnt);
        proto_GetFldVar('L_CNT21', iWCnt);
        proto_GetFldVar('L_CNT31', iGCnt);
        Result := GetRecordCnt('MEDDEPT');
        //txFree;

       txFree;
    end;
    MessageStr := GetTxMsg;
}
    result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';
end;

//==============================================================================
//
//==============================================================================
function HsrExecute.ExamCntList(FromDate,ToDate,RoomCode:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('FROMDATE;TODATE;ROOMCODE');
    SetFldValue(0,[FromDate,ToDate,RoomCode]);
    if (txGetF('SR_EXECNT_LIST')) then begin
        proto_GetFldVar('EXAMCODE',sExamCode);
        proto_GetFldVar('EXAMNAME',sExamName);
        proto_GetFldVar('WCNT',    iWCnt);
        proto_GetFldVar('OCNT',    iOCnt);
        proto_GetFldVar('GCNT',    iGCnt);
        Result := GetRecordCnt('EXAMCODE');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
end;
}
    result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';
end;

//==============================================================================
//
//==============================================================================
function HsrExecute.MatCntList(FromDate,ToDate,ExamType:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('FROMDATE;TODATE;S_TYPE');
    SetFldValue(0,[FromDate,ToDate,ExamType]);
    if (txGetF('SR_MATCNT_LIST')) then begin
        proto_GetFldVar('MATCODE',sMatCode);
        proto_GetFldVar('MATNAME',sMatName);
        proto_GetFldVar('AQTY',   iMatQty);
        proto_GetFldVar('ADJQTY', iAdjQty);
        proto_GetFldVar('UNIT',   sUnit);
        Result := GetRecordCnt('MATCODE');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';
end;

//==============================================================================
//
//==============================================================================
function HsrExecute.PortCntList(FromDate,ToDate,ExamType:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('FROMDATE;TODATE;S_TYPE');
    SetFldValue(0,[FromDate,ToDate,ExamType]);
    if (txGetF('SR_PORTCNT_LIST')) then begin
        proto_GetFldVar('ROOMCODE',sRoomCode);
        proto_GetFldVar('ROOMNAME',sRoomName);
        proto_GetFldVar('L_CNT10', iOPCnt);
        proto_GetFldVar('L_CNT11', iOCnt);
        proto_GetFldVar('L_CNT20', iWPCnt);
        proto_GetFldVar('L_CNT21', iWCnt);
        Result := GetRecordCnt('ROOMCODE');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';

end;

//==============================================================================
//
//==============================================================================
function HsrExecute.YearCntList(YearStr,ExamType:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('EXECDATE;S_TYPE');
    SetFldValue(0,[YearStr,ExamType]);
    if (txGetF('SR_YEARCNT_LIST')) then begin
        proto_GetFldVar('EXAMCODE',sExamCode);
        proto_GetFldVar('EXAMNAME',sExamName);
        proto_GetFldVar('CNT01',   iCnt01);
        proto_GetFldVar('CNT02',   iCnt02);
        proto_GetFldVar('CNT03',   iCnt03);
        proto_GetFldVar('CNT04',   iCnt04);
        proto_GetFldVar('CNT05',   iCnt05);
        proto_GetFldVar('CNT06',   iCnt06);
        proto_GetFldVar('CNT07',   iCnt07);
        proto_GetFldVar('CNT08',   iCnt08);
        proto_GetFldVar('CNT09',   iCnt09);
        proto_GetFldVar('CNT10',   iCnt10);
        proto_GetFldVar('CNT11',   iCnt11);
        proto_GetFldVar('CNT12',   iCnt12);
        Result := GetRecordCnt('EXAMCODE');
        //txFree;

       txFree;
    end;
    MessageStr := GetTxMsg;
}
    result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';
end;

//==============================================================================
//
//==============================================================================
function HsrExecute.ExeCntMake(ExecDate,UserID,ExamType:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('EXECDATE;USERID;S_TYPE');
    SetFldValue(0,[ExecDate,UserID,ExamType]);
    if (txPutF('SR_EXECNT_MAKE')) then begin
        Result := 1;
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 1;
    MessageStr := '���������� ����Ͽ����ϴ�';
end;

//==============================================================================
//
//==============================================================================
function HsrExecute.MatQtyAdjust(ExecDate,MatCode,ExamType,UserID:String;AdjQty:
  Integer):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('EXECDATE;MATCODE;S_TYPE;USERID;ADJQTY');
    SetFldValue(0,[ExecDate,MatCode,ExamType,UserID,AdjQty]);
    if (txPutF('SR_MATQTY_UP')) then begin
        Result := 1;
        //txFree;

       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 1;
    MessageStr := '���������� ����Ͽ����ϴ�';
end;

//==============================================================================
//
//==============================================================================
{function HsrExecute.SecondOrderList(PatNo,OrdDate,PatSect,ExamType:String;OrdSeqNo:Integer):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_PATSECT;S_TYPE1');
    SetFldValue(0,[OrdSeqNo,PatNo,OrdDate,PatSect,ExamType]);
    if (txGetF('SR_SNDMAT_L1')) then begin
        GetFldVar('S_CODE1',sMatCode);
        GetFldVar('S_NAME1',sMatName);
        GetFldVar('L_SEQNO2',iMatSeqNo);
        GetFldVar('L_QTY1',  iMatQty);
        GetFldVar('S_YN1',  sChargeYn);
        GetFldVar('S_YN2',  sRcpYn);
        GetFldVar('S_RCPDATE',  sRcpDate);
        Result := GetRecordCnt('S_CODE1');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
end;
}
//==============================================================================
//
//==============================================================================
function HsrExecute.SecondOrderList(PatNo,OrdDate,PatSect,ExamType:String;OrdSeqNo:Integer):Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_PATSECT;S_TYPE1');
     SetFldValue(0,[OrdSeqNo,PatNo,OrdDate,PatSect,ExamType]);

     if (txGetF('SR_SNDMAT_L1')) then     //sr_sndmat_l1.pc
     begin
          GetFldVar('S_CODE1',   sMatCode);
          GetFldVar('S_NAME1',   sMatName);
          GetFldVar('L_SEQNO2',  iMatSeqNo);
          GetFldVar('S_QTY1',    iMatQty);
          GetFldVar('S_YN1',     sChargeYn);
          GetFldVar('S_YN2',     sRcpYn);
          GetFldVar('S_RCPDATE', sRcpDate);
          GetFldVar('S_TYPE1',   sInstype);
          GetFldVar('S_TEXT1',   sRemark);
          GetFldVar('S_CODE3',   sInsintyp);
          Result := GetRecordCnt('S_CODE1');
     
        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
// �߰��Ҹ���� ���.
//==============================================================================
function HsrExecute.SecondOrderInsert(Cnt:Integer;UserID:String):Integer;
var
    i : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_PATSECT;S_CODE2;S_EXECDATE;S_CODE3;S_TYPE2;S_EDITID;S_TEXT1;S_TYPE3;S_TEXT2');
    SetFldValue(0,[Integer(iOrdSeqNo[0]),String(sPatNo[0]),
                   String(sOrdDate[0]),String(sPatSect[0]),
                   String(sExamCode[0]),String(sExecDate[0]),
                   String(sRoomcode[0]),String(sAddtype[0]),
                   G_USERID,String(sRemark[0]),String(sExamtype[0]),'EB1']);
    SetFldName('S_QTY1;S_CODE1;S_YN1;S_TYPE1');

    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[String(iMatQty[i]),String(sMatCode[i]),
                       String(sChargeYn[i]),String(sInstype[i])]);
    end;
    if (txPutF('SR_SNDMAT_I')) then     //sr_sndmat_i.pc
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExecute.SecondOrderUpdate(OrdSeqNo,MatSeqNo:Integer;MatQty,PatNo,OrdDate,
  PatSect,MatCode,ChargeYn,Instype,UserID,Remark:String):Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('L_SEQNO1;L_SEQNO2;S_QTY1;S_PATNO;S_ORDDATE;S_PATSECT;S_CODE1;S_YN1;S_TYPE1;S_EDITID;S_TEXT1');
     SetFldValue(0,[OrdSeqNo,MatSeqNo,MatQty,PatNo,OrdDate,PatSect,MatCode,ChargeYn,Instype,G_USERID,Remark]);

     if (txPutF('SR_SNDMAT_U')) then
     begin
         Result := 1;
     
        txFree;
     end;
     MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExecute.SecondOrderDelete(OrdSeqNo,MatSeqNo:Integer;PatNo,OrdDate,PatSect,MatCode,Addtype:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;L_SEQNO2;S_PATNO;S_ORDDATE;S_PATSECT;S_CODE1;S_CODE2');
    SetFldValue(0,[OrdSeqNo,MatSeqNo,PatNo,OrdDate,PatSect,MatCode,Addtype]);

    if (txPutF('SR_SNDMAT_D')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExecute.SecondExamList(FromDate,ToDate,RoomCode,Examtype:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROM1;S_TO1;S_CODE1;S_TYPE1;S_FLAG9');
    SetFldValue(0,[FromDate,ToDate,RoomCode,Examtype,'EB1']);

    if (txGetF('SR_SNDMAT_L2')) then
    begin
        GetFldVar('L_SEQNO1'   , iOrdSeqNo);
        GetFldVar('S_PATNO'    , sPatNo);
        GetFldVar('S_ORDDATE'  , sOrdDate);
        GetFldVar('S_PATSECT'  , sPatSect);
        GetFldVar('S_ORDCODE'  , sExamCode);
        GetFldVar('S_ORDNAME'  , sExamName);
        GetFldVar('S_USERID1'  , sExamTech);
        GetFldVar('S_USERNAME1', sExTechNm);
        GetFldVar('S_MEDDEPT'  , sMedDept);
        GetFldVar('S_WARDNO'   , sWardNo);
        GetFldVar('S_DR1'      , sOrdDr);
        GetFldVar('S_DRNAME1'  , sOrdDrNm);
        GetFldVar('S_PATNAME'  , sPatName);
        Result := GetRecordCnt('S_PATNO');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExecute.RoomSndList(FromDate,ToDate,RoomCode,Examtype:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROM1;S_TO1;S_CODE1;S_TYPE1');
    SetFldValue(0,[FromDate,ToDate,RoomCode,Examtype]);

    if (txGetF('SR_SNDMAT_L3')) then
    begin
        GetFldVar('S_QTY1' , iMatQty);
        GetFldVar('S_CODE1', sMatCode);
        GetFldVar('S_NAME1', sMatName);
        GetFldVar('S_TEXT1', sUnit);
        Result := GetRecordCnt('S_CODE1');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExecute.PortableList(OrdDate:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('ORDDATE');
    SetFldValue(0,[OrdDate]);
    if (txGetF('SR_PORT_LIST')) then begin
        proto_GetFldVar('PATNO',   sPatNo);
        proto_GetFldVar('EXAMSTAT',sExamStat);
        proto_GetFldVar('EXECDATE',sExecDate);
        proto_GetFldVar('HOPEDATE',sHopeDate);
        proto_GetFldVar('ORDSEQNO',iOrdSeqNo);
        proto_GetFldVar('EXAMCODE',sExamCode);
        proto_GetFldVar('EXAMNAME',sExamName);
        proto_GetFldVar('CHIFTECH',sExamTech);
        proto_GetFldVar('MEDDEPT', sMedDept);
        proto_GetFldVar('WARDNO',  sWardNo);
        proto_GetFldVar('ORDDR',   sOrdDr);
        proto_GetFldVar('EMPNAME', sOrdDrNm);
        proto_GetFldVar('ERYN',    sErYn);
        proto_GetFldVar('SORDYN',  sSOrdYn);
        proto_GetFldVar('COMMENTS',sComments);
        proto_GetFldVar('PATNAME', sPatName);
        proto_GetFldVar('SOLGERNO',sSolgerNo);
        proto_GetFldVar('CASTENM', sCasteNm);
        proto_GetFldVar('SEX',     sSex);
        proto_GetFldVar('RESNO',   sResNo);
        proto_GetFldVar('FORCENM', sForceNm);
        Result := GetRecordCnt('PATNO');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    result := 0;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.WaitList(AcptDate, Examtype: string): integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_ACPTDATE;S_TYPE1');
    SetFldValue(0,[AcptDate,Examtype]);

    if txGetF('SR_WAIT_LIST_L') then
    begin
       GetFldVar('S_CODE1'    , sRoomcode);
       GetFldVar('S_NAME1'    , sRoomname);
       GetFldVar('L_LONG1'    , icount);
       Result := GetRecordCnt('S_CODE1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.WaitPatList(AcptDate, RoomCode: string): integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_ACPTDATE;S_CODE1');
    SetFldValue(0,[AcptDate,RoomCode]);

    if txGetF('SR_WAIT_LIST_S') then
    begin
       GetFldVar('S_PATNO'    , sPatNo);
       GetFldVar('S_PATNAME'  , sPatName);
       GetFldVar('S_CODE1'    , sExamcode);
       GetFldVar('S_NAME1'    , sExamname);
       GetFldVar('S_ORDDATE'  , sOrddate);
       GetFldVar('L_CNT1'     , lOrdseqno);
       Result := GetRecordCnt('S_PATNO');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.WaitPatListUpdate(DataCnt: Integer): integer;
var
   ix: Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_ORDDATE;S_CODE1;S_CODE2;S_ACPTDATE;L_SEQNO1');

    for ix := 0 to DataCnt - 1 do
    begin
         SetFldValue(ix,[String(sPatNo[ix]),String(sOrddate[ix]),String(sRoomCode[ix]),String(sRoomChg[ix]),String(sAcptDate[ix]),Integer(lOrdseqno[ix])]);
    end;
    if (txPutF('SR_WAIT_LIST_U')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// interesting case��ȸ
// Ư���Ⱓ, Ư�� �ǵ��ǰ� 1, 2�� �ǵ��ǿ� ���Ե� ��츸 ��ȸ...
//==============================================================================
function HsrExam.ListIntrs(Fromdate, Todate, ReadDr: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROMDATE;S_TODATE;S_DR1');
    SetFldValue(0,[Fromdate,Todate,ReadDr]);

    if (txGetF('SR_INTRS_L')) then
    begin
        Result := GetRecordCnt('S_PATNO');
        GetFldVar('S_PATNO',   sPatNo);
        GetFldVar('S_PATNAME', sPatName);
        GetFldVar('S_RESNO',   sResNo1);
        GetFldVar('S_BIRTH',   sBirth);
        GetFldVar('S_SEX',     sSex);
        GetFldVar('S_ORDDATE', sOrdDate);
        GetFldVar('L_SEQNO1',  lOrdseqno);
        GetFldVar('S_ORDNAME', sOrdName);
        GetFldVar('S_EXECDATE',sExecDate);
        GetFldVar('S_READDATE',sReadDate);
        GetFldVar('S_CFMDATE', sCfmDate);
        GetFldVar('S_DRNAME1', sDrName1);
        GetFldVar('S_DRNAME2', sDrName2);
        GetFldVar('S_DRNAME3', sDrName3);
        GetFldVar('S_MEDDEPT', sMedDept);
        GetFldVar('S_WARDNO',  sWardNo);
        GetFldVar('S_DRNAME4', sDrName4);
        GetFldVar('S_TEXT1',   sComment);
        GetFldVar32('S_TEXT2', sTelno);
        GetFldVar32('S_TEXT3', sAddress);
        GetFldVar32('S_TEXT4', sDiagname);
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// interesting case��ȸ
// Ư���Ⱓ, ��� interesting case ��ȸ...
//==============================================================================
function HsrExam.ListIntrs2(Fromdate, Todate, ReadDr, Examtype: String): Integer;
begin
    Result := -1;
    txAlloc32;
    SetFldName32('S_FROMDATE;S_TODATE;S_DR1;S_FLAG1');
    SetFldValue32(0,[Fromdate,Todate,ReadDr,Examtype]);

    if (txGetF32('SR_INTRS_L2')) then
    begin
        Result := GetRecordCnt32('S_PATNO');
        GetFldVar32('S_PATNO',   sPatNo);
        GetFldVar32('S_PATNAME', sPatName);
        GetFldVar32('S_RESNO',   sResNo1);
        GetFldVar32('S_BIRTH',   sBirth);
        GetFldVar32('S_SEX',     sSex);
        GetFldVar32('S_ORDDATE', sOrdDate);
        GetFldVar32('L_SEQNO1',  lOrdseqno);
        GetFldVar32('S_ORDNAME', sOrdName);
        GetFldVar32('S_EXECDATE',sExecDate);
        GetFldVar32('S_READDATE',sReadDate);
        GetFldVar32('S_CFMDATE', sCfmDate);
        GetFldVar32('S_DRNAME1', sDrName1);
        GetFldVar32('S_DRNAME2', sDrName2);
        GetFldVar32('S_DRNAME3', sDrName3);
        GetFldVar32('S_MEDDEPT', sMedDept);
        GetFldVar32('S_WARDNO',  sWardNo);
        GetFldVar32('S_DRNAME4', sDrName4);
        GetFldVar32('S_TEXT1',   sComment);
        GetFldVar32('S_TEXT2',   sTelno);
        GetFldVar32('S_TEXT3',   sAddress);
        GetFldVar32('S_TEXT4',   sDiagname);

        txFree32;

        MessageStr := IntToStr(Result) + '���� �ڷᰡ ��ȸ�Ǿ����ϴ�.';
    end
    else
        MessageStr := '������ �߻��߽��ϴ�.';

    //txFree32;
end;



//==============================================================================
//
//==============================================================================
function HsrExam.SelIntrs(Userid, Orddate, Patno: String; Ordseqno: Integer): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_DR1;S_ORDDATE;S_PATNO;L_CNT1');
    SetFldValue(0,[Userid,Orddate,Patno,Ordseqno]);

    if (txGetF('SR_INTRS_S')) then
    begin
        Result := GetRecordCnt('S_PATNO');
        GetFldVar('S_PATNO',   sPatNo);
        GetFldVar('S_PATNAME', sPatName);
        GetFldVar('S_RESNO',   sResNo1);
        GetFldVar('S_BIRTH',   sBirth);
        GetFldVar('S_SEX',     sSex);
        GetFldVar('S_ORDDATE', sOrdDate);
        GetFldVar('L_SEQNO1',  lOrdseqno);
        GetFldVar('S_ORDNAME', sOrdName);
        GetFldVar('S_EXECDATE',sExecDate);
        GetFldVar('S_READDATE',sReadDate);
        GetFldVar('S_CFMDATE', sCfmDate);
        GetFldVar('S_DRNAME1', sDrName1);
        GetFldVar('S_DRNAME2', sDrName2);
        GetFldVar('S_DRNAME3', sDrName3);
        GetFldVar('S_MEDDEPT', sMedDept);
        GetFldVar('S_WARDNO',  sWardNo);
        GetFldVar('S_DRNAME4', sDrName4);
        GetFldVar('S_TEXT1',   sComment);

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
// 2003.12.18 �̰�ȭ -- ��Ź�˻�ó�� DCó��
//==============================================================================
function HsrExam.Dcordproc(Userid:String;Cnt:Integer):Integer;
var
    i : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_EDITID;S_EDITIP');
    SetFldValue(0,[G_USERID,GetIP]);

    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_ORDCODE');
    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]),String(sPatNo[i]),String(sOrdDate[i]), String(sExamcode[i])]);
    end;

    if (txPutF('SR_DCORD_U1')) then begin
        Result := 1;

       txFree;
    end;

    MessageStr := GetTxMsg;
end;


//==============================================================================
// 2004.1.6 �̰�ȭ -- �ʸ�����ó�� DCó��
//==============================================================================
function HsrExam.Dcordproc1(Userid:String;Cnt:Integer):Integer;
var
    i : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_EDITID;S_EDITIP');
    SetFldValue(0,[G_USERID,GetIP]);

    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_ORDCODE');
    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]),String(sPatNo[i]),String(sOrdDate[i]), String(sExamcode[i])]);
    end;

    if (txPutF('SR_DCORD_U2')) then begin
        Result := 1;

       txFree;
    end;

    MessageStr := GetTxMsg;
end;



//==============================================================================
//
//==============================================================================
function HsrExam.UpdIntrs(PatNo, OrdDate, Comment, Userid, Userip: String; OrdSeqNo: Integer): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_ORDDATE;S_TEXT1;S_DR1;S_EDITIP;L_SEQNO1');
    SetFldValue(0,[PatNo,OrdDate,Comment,Userid,Userip,OrdSeqno]);

    if (txPutF('SR_INTRS_U')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.InsIntrs(PatNo, OrdDate, Comment, Userid, Userip, Examtype: String; OrdSeqNo: Integer): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_ORDDATE;S_TEXT1;S_DR1;S_EDITIP;L_SEQNO1;S_FLAG1');
    SetFldValue(0,[PatNo,OrdDate,Comment,Userid,Userip,OrdSeqno,Examtype]);
    if (txPutF('SR_INTRS_I')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.DelIntrs(PatNo, OrdDate, Userid: String; OrdSeqNo: Integer): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_ORDDATE;S_DR1;L_SEQNO1');
    SetFldValue(0,[PatNo,OrdDate,Userid,OrdSeqno]);

    if (txPutF('SR_INTRS_D')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.SaveFilm(PatNo, OrdDate, Userid: String; OrdSeqNo: Integer): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_ORDDATE;S_USERID1;L_SEQNO1');
    SetFldValue(0,[PatNo,OrdDate,Userid,OrdSeqno]);

    if (txPutF('SR_SAVE_U')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �˻����ڵ� ��� ��ȸ.
//==============================================================================
function HsrExam.SelSrch(PatNo, OrdDate, Examtype: String; OrdSeqNo: Integer): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_ORDDATE;S_TYPE1;L_SEQNO1');
    SetFldValue(0,[PatNo,OrdDate,Examtype,OrdSeqno]);

    if (txGetF('SR_EXAMST_L')) then
    begin
        Result := GetRecordCnt('S_CODE1');
        GetFldVar('S_CODE1',	sSrhcode);
        GetFldVar('S_NAME1',	sSrhname);
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.ImpldtSel(PatNo, Fromdate, Todate, Impltype, Fudate: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_FROMDATE;S_TODATE;S_TYPE1;S_FLAG9;S_DATE1');
    SetFldValue(0,[PatNo,Fromdate,Todate,Impltype,'EB1',Fudate]);

    if (txGetF('SR_IMPLDT_L')) then
    begin
        Result := GetRecordCnt('S_PATNO');
        GetFldVar('S_PATNO',     sPatno);
        GetFldVar('S_PATNAME',   sPatname);
        GetFldVar('S_DATE1',     sImpldate);
        GetFldVar('S_CODE2',     sCompany);
        GetFldVar('S_USERID1',   sPhysic);
        GetFldVar('S_USERNAME1', sPhysicnm);
        GetFldVar('S_TYPE1',     sGenetype);
        GetFldVar('S_CODE3',     sGenmodel);
        GetFldVar('S_CODE4',     sLeada);
        GetFldVar('S_CODE5',     sLeadv);
        GetFldVar('S_CODE6',     sLeadtav);
        GetFldVar('S_CODE7',     sLeadtvv);
        GetFldVar('S_CODE13',    sLeadtams);
        GetFldVar('S_CODE14',    sLeadtvms);
        GetFldVar('S_CODE8',     sWaveap);
        GetFldVar('S_CODE9',     sWavear);
        GetFldVar('S_CODE10',    sImpea);
        GetFldVar('S_CODE11',    sImpev);
        GetFldVar('S_DATE2',     sNextfudt);
        GetFldVar('S_CODE12',    sRemark);
        GetFldVar('S_NO1',       sTelno1);
        GetFldVar('S_NO2',       sTelno2);
        GetFldVar('S_NO3',       sTelno3);
        GetFldVar('S_TEXT1',     sIndicate);
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.ImpldtIns(Patno, Impltype, Impldate, Indication, Company,
                           Genetype, Nextfudt, Physician, Genmodel,
                           Leada, Leadv, Leadtav, Leadtams, Leadtvv, Leadtvms,
                           Waveap, Wavear, Impea, Impev, Editid, Editip: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;S_DATE1;S_TEXT1;S_CODE1;' +
                'S_TYPE2;S_DATE2;S_USERID1;S_CODE2;' +
                'S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7;S_CODE8;' +
                'S_CODE9;S_CODE10;S_CODE11;S_CODE12;S_EDITID;S_EDITIP');
    SetFldValue(0,[Patno, Impltype, Impldate, Indication, Company,
                    Genetype, Nextfudt, Physician, Genmodel,
                    Leada, Leadv, Leadtav, Leadtams, Leadtvv, Leadtvms,
                    Waveap, Wavear, Impea, Impev, G_USERID, G_USERIP]);
    if (txPutF('SR_IMPLDT_I')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.ImpldtUpd(Patno, Impltype, Impldate, Indication, Company,
                           Genetype, Nextfudt, Physician, Genmodel,
                           Leada, Leadv, Leadtav, Leadtams, Leadtvv, Leadtvms,
                           Waveap, Wavear, Impea, Impev, Editid, Editip: String): Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_PATNO;S_TYPE1;S_DATE1;S_TEXT1;S_CODE1;' +
                'S_TYPE2;S_DATE2;S_USERID1;S_CODE2;' +
                'S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7;S_CODE8;' +
                'S_CODE9;S_CODE10;S_CODE11;S_CODE12;S_EDITID;S_EDITIP');
     SetFldValue(0,[Patno, Impltype, Impldate, Indication, Company,
                    Genetype, Nextfudt, Physician, Genmodel,
                    Leada, Leadv, Leadtav, Leadtams, Leadtvv, Leadtvms,
                    Waveap, Wavear, Impea, Impev, G_USERID, G_USERIP]);

     if (txPutF('SR_IMPLDT_U')) then
     begin
          Result := 1;
     
        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.ImpldtDel(Patno, Impltype, Impldate: String): Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_PATNO;S_TYPE1;S_DATE1');
     SetFldValue(0,[Patno, Impltype, Impldate]);

     if (txPutF('SR_IMPLDT_D')) then
     begin
          Result := 1;
     
        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.PacedtSel(PatNo, Impltype, Impldate: String): Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_PATNO;S_DATE1;S_TYPE1');
     SetFldValue(0,[PatNo,Impldate,Impltype]);

     if (txGetF('SR_PACEDT_L')) then
     begin
          Result := GetRecordCnt('S_DATE3');
          GetFldVar('S_DATE3',   sRecdate );
          GetFldVar('S_CODE1',   sPacetype);
          GetFldVar('S_CODE2',   sPacerate);
          GetFldVar('S_CODE3',   sOutputav);
          GetFldVar('S_CODE4',   sOutputam);
          GetFldVar('S_CODE5',   sOutputvv);
          GetFldVar('S_CODE6',   sOutputvm);
          GetFldVar('S_CODE7',   sSensitia);
          GetFldVar('S_CODE8',   sSensitiv);
          GetFldVar('S_CODE9',   sAvdelay );
          GetFldVar('S_TEXT1',   sOthers  );
          GetFldVar('S_CODE10',  sThreshav);
          GetFldVar('S_CODE11',  sThresham);
          GetFldVar('S_CODE12',  sThreshvv);
          GetFldVar('S_CODE13',  sThreshvm);
          GetFldVar('S_CODE14',  sWaveap  );
          GetFldVar('S_CODE15',  sWavear  );
          GetFldVar('S_CODE16',  sImpea   );
          GetFldVar('S_CODE17',  sImpev   );
          GetFldVar('S_TEXT2',   sRemark  );
          GetFldVar('S_CODE18',  sMagrate );
          GetFldVar('S_DATE4',   sNextfudt);

        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.PacedtIns(Patno, Impldate, Impltype,
                           Recdate, Pacetype, Pacerate, Outputav, Outputam,
                           Outputvv, Outputvm, Sensitia, Sensitiv, Avdelay,
                           Others, Threshav, Thresham,Threshvv,Threshvm,
                           Waveap, Wavear, Impea, Impev, Remark,
                           Magrate, Nextfudt, Editid, Editip: String): Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_PATNO;S_DATE1;S_TYPE1;'+
                'S_DATE2;S_TYPE2;S_CODE1;S_CODE2;S_CODE3;'+
                'S_CODE4;S_CODE5;S_CODE6;S_CODE7;S_CODE8;'+
                'S_TEXT1;S_CODE9;S_CODE10;S_CODE11;S_CODE12;'+
                'S_CODE13;S_CODE14;S_CODE15;S_CODE16;S_TEXT2;'+
                'S_CODE17;S_DATE3;S_EDITID;S_EDITIP');
     SetFldValue(0,[Patno, Impldate, Impltype,
                    Recdate, Pacetype, Pacerate, Outputav, Outputam,
                    Outputvv, Outputvm, Sensitia, Sensitiv, Avdelay,
                    Others, Threshav, Thresham,Threshvv,Threshvm,
                    Waveap, Wavear, Impea, Impev, Remark,
                    Magrate, Nextfudt, G_USERID, G_USERIP]);

     if (txPutF('SR_PACEDT_I')) then
     begin
          Result := 1;
     
        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.PacedtUpd(Patno, Impldate, Impltype,
                           Recdate, Pacetype, Pacerate, Outputav, Outputam,
                           Outputvv, Outputvm, Sensitia, Sensitiv, Avdelay,
                           Others, Threshav, Thresham,Threshvv,Threshvm,
                           Waveap, Wavear, Impea, Impev, Remark,
                           Magrate, Nextfudt, Editid, Editip: String): Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_PATNO;S_DATE1;S_TYPE1;' +
                'S_DATE2;S_TYPE2;S_CODE1;S_CODE2;S_CODE3;' +
                'S_CODE4;S_CODE5;S_CODE6;S_CODE7;S_CODE8;' +
                'S_TEXT1;S_CODE9;S_CODE10;S_CODE11;S_CODE12;' +
                'S_CODE13;S_CODE14;S_CODE15;S_CODE16;S_TEXT2;' +
                'S_CODE17;S_DATE3;S_EDITID;S_EDITIP');
     SetFldValue(0,[Patno, Impldate, Impltype,
                    Recdate, Pacetype, Pacerate, Outputav, Outputam,
                    Outputvv, Outputvm, Sensitia, Sensitiv, Avdelay,
                    Others, Threshav, Thresham,Threshvv,Threshvm,
                    Waveap, Wavear, Impea, Impev, Remark,
                    Magrate, Nextfudt, G_USERID, G_USERIP]);

     if (txPutF('SR_PACEDT_U')) then
     begin
          Result := 1;
     
        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.PacedtDel(Patno, Impldate, Impltype, Recdate: String): Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_PATNO;S_DATE1;S_TYPE1;S_DATE2;');
     SetFldValue(0,[Patno, Impldate, Impltype, Recdate]);

     if (txPutF('SR_PACEDT_D')) then
     begin
          Result := 1;
     
        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.EpsddtSel(PatNo, Impldate, Fromdate, Todate: String): Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_PATNO;S_DATE1;S_DATE2;S_DATE3');
     SetFldValue(0,[PatNo, Impldate, Fromdate, Todate]);

     if (txGetF('SR_EPSDDT_L')) then
     begin
          Result := GetRecordCnt('S_DATE4');
          GetFldVar('S_DATE4',   sFudate  );
          GetFldVar('S_DATE5',   sEpsddate);
          GetFldVar('S_CODE1',   sEpsdtype);
          GetFldVar('S_CODE2',   sAvgcl   );
          GetFldVar('S_CODE3',   sDuration);
          GetFldVar('S_CODE4',   sTherapy );
          GetFldVar('S_CODE5',   sEnergy  );
          GetFldVar('S_CODE6',   sChrgtime);
          GetFldVar('S_CODE7',   sBattvolt);
          GetFldVar('S_CODE8',   sPosttxrh);
          GetFldVar('S_CODE9',   sNotes   );
     
        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
// Episode Data �ű��Է�...
//==============================================================================
function HsrExam.EpsddtIns(Patno, Impldate, Fudate, Epsddate,
                           Epsdtype, Avgcl, Duration, Therapy,
                           Energy, Chrgtime, Battvolt, Posttxrh,
                           Notes, Editid, Editip: String): Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_PATNO;S_DATE1;S_DATE2;S_DATE3;S_CODE1;' +
                'S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;' +
                'S_CODE7;S_CODE8;S_CODE9;S_EDITID;S_EDITIP');
     SetFldValue(0,[Patno, Impldate, Fudate, Epsddate,
                    Epsdtype, Avgcl, Duration, Therapy,
                    Energy, Chrgtime, Battvolt, Posttxrh,
                    Notes, G_USERID, G_USERIP]);

     if (txPutF('SR_EPSDDT_I')) then
     begin
          Result := 1;
     
        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.EpsddtUpd(Patno, Impldate, Fudate, Epsddate,
                           Epsdtype, Avgcl, Duration, Therapy,
                           Energy, Chrgtime, Battvolt, Posttxrh,
                           Notes, Editid, Editip: String): Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_PATNO;S_DATE1;S_DATE2;S_DATE3;S_CODE1;' +
                'S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;' +
                'S_CODE7;S_CODE8;S_CODE9;S_EDITID;S_EDITIP');
     SetFldValue(0,[Patno, Impldate, Fudate, Epsddate,
                    Epsdtype, Avgcl, Duration, Therapy,
                    Energy, Chrgtime, Battvolt, Posttxrh,
                    Notes, G_USERID, G_USERIP]);

     if (txPutF('SR_EPSDDT_U')) then
     begin
          Result := 1;
     
        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.EpsddtDel(Patno, Impldate, Fudate, Epsddate: String): Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_PATNO;S_DATE1;S_DATE2;S_DATE3');
     SetFldValue(0,[Patno, Impldate, Fudate, Epsddate]);

     if (txPutF('SR_EPSDDT_D')) then
     begin
          Result := 1;
     
        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.GetSlipcd: integer;
begin
     Result := -1;
     txAlloc;

     if (txGetF('SR_SLIPCD_L')) then
     begin
          Result := GetRecordCnt('S_CODE1');
          GetFldVar('S_CODE1',	sSlipCode);
          GetFldVar('S_NAME1',	sSlipName);
     
        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.GetSlipcd2(slipcd: String): integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_CODE1');
     SetFldValue(0,[slipcd]);

     if (txGetF('SR_SLIPCD_L2')) then
     begin
          Result := GetRecordCnt('S_CODE1');
          GetFldVar('S_CODE1',	sSlipCode);
          GetFldVar('S_NAME1',	sSlipName);
     
        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.PastExamSave(Patno,sOrddate,sOrdseq,sExamcode,sResultTxt,sCfmdr,sReadDr1,sReadDr2,sFlag,sWriterid: String): Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_PATNO;S_ORDDATE;S_CODE1;S_CODE2;S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_EDITID;S_EDITIP;S_FLAG1;S_STRING5');
     SetFldValue(0,[Patno,sOrddate,sOrdseq,sExamcode,sResultTxt,sCfmDr,sReadDr1,sReadDr2,G_USERID,G_USERIP,sFlag,G_USERID]);

     if (txPutF('SR_PASTEXAM_U')) then
     begin
          Result := 1;

        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==================================================================================================
// 2002.11.27 �̰�ȭ �߰� --> ���ǰ˻� : ó�����ں�(from~to),ȯ��������(�Կ�/�ܷ�), �˻籸�к� ��ȸ
//==================================================================================================
function HsrExam.ExamIfsel(Frdate, Todate,Ipatsect1,Ipatsect2,Ichkcode1,Ichkcode2,Ichkcode3,Examtype: String):Integer;

begin
   Result := -1;
   txAlloc;
   SetFldName('S_DATE1;S_DATE2;S_CODE4;S_CODE5;S_CODE1;S_CODE2;S_CODE3;S_CODE6');
   SetFldValue(0,[FrDate,ToDate,Ipatsect1,Ipatsect2,Ichkcode1,Ichkcode2,Ichkcode3, Examtype]);  //Iusefilm]);
   if (txPutF('SR_IFCHK_L1')) then
   begin
        GetFldVar('S_PATNO'   ,	sPatNo   );
        GetFldVar('S_PATNAME' ,	sPatname );
        GetFldVar('S_ORDDATE' ,	sOrddate );
        GetFldVar('S_NO1'     ,	iOrdseqno);
        GetFldVar('S_SEX'     ,	sSex     );
        GetFldVar('S_RESNO'   ,	sBirth   );
        GetFldVar('S_ORDCODE' ,	sExamcode);
        GetFldVar('S_NAME1'   , sExamName);
        GetFldVar('S_MEDDEPT' , sMeddept );
        GetFldVar('S_WARDNO'  , sWardno  );
        GetFldVar('S_EXECDATE', sExecdate);
        GetFldVar('S_DATE3'   , sOutdate );
        GetFldVar('S_NAME2'   , sOrddrnm );
        GetFldVar('S_PATSECT' , sPatsect );
        GetFldVar('S_CODE1'   , sRoomCode);

        Result := GetRecordCnt('S_PATNO');
     txFree;
   end;

   MessageStr := GetTxMsg;
end;


//==================================================================================================
// 2003.11.13 �̰�ȭ �߰� --> Modality���˻�
//==================================================================================================
function HsrExam.ExamModality(Frdate, Todate, Examtype, Modality: String):Integer;

begin
   Result := -1;
   txAlloc;
   SetFldName('S_DATE1;S_DATE2;S_CODE1;S_CODE2');
   SetFldValue(0,[FrDate,ToDate,Modality,Examtype]);
   if (txPutF('SR_MODAL_L1')) then     // sr_modal_l1.pc
   begin
        GetFldVar('S_PATNO'   ,	sPatNo   );
        GetFldVar('S_PATNAME' ,	sPatname );
        GetFldVar('S_ORDDATE' ,	sOrddate );
        GetFldVar('S_NO1'     ,	iOrdseqno);
        GetFldVar('S_SEX'     ,	sSex     );
        GetFldVar('S_RESNO'   ,	sBirth   );
        GetFldVar('S_ORDCODE' ,	sExamcode);
        GetFldVar('S_NAME1'   , sExamName);
        GetFldVar('S_MEDDEPT' , sMeddept );
        GetFldVar('S_WARDNO'  , sWardno  );
        GetFldVar('S_EXECDATE', sExecdate);
        GetFldVar('S_NAME2'   , sOrddrnm );
        GetFldVar('S_PATSECT' , sPatsect );

        Result := GetRecordCnt('S_PATNO');
     txFree;
   end;

   MessageStr := GetTxMsg;
end;



//==================================================================================================
// 2002.12.4 �̰�ȭ �߰� --> �索��Ŭ���� ����� consult��ȸ  ó�����ں�(from~to) �����̰�ȣ���û
//==================================================================================================
function HsrExam.consultsel(Frdate, Todate: String):Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_DATE1;S_DATE2');
   SetFldValue(0,[FrDate,ToDate]);
   if (txPutF('SR_CONSL_L1')) then
   begin
        GetFldVar('S_PATNO'   ,	sPatNo   );
        GetFldVar('S_PATNAME' ,	sPatname );
        GetFldVar('S_ORDDATE' ,	sOrddate );
        GetFldVar('S_NO1'     ,	iOrdseqno);
        GetFldVar('S_SEX'     ,	sSex     );
        GetFldVar('S_RESNO'   ,	sBirth   );
        GetFldVar('S_ORDCODE' ,	sExamcode);
        GetFldVar('S_NAME1'   , sExamName);
        GetFldVar('S_MEDDEPT' , sMeddept );
        GetFldVar('S_WARDNO'  , sWardno  );
        GetFldVar('S_ADMDATE' , sAdmdate );
        GetFldVar('S_EXECDATE', sExecdate);
        GetFldVar('S_DR1'     , sOrddrnm );
        GetFldVar('S_PATSECT' , sPatsect );

        Result := GetRecordCnt('S_PATNO');
     txFree;
   end;

   MessageStr := GetTxMsg;
end;


//==============================================================================
// 2003.4.2 �̰�ȭ �߰� --> �������ҽ� ���Ӱ˻� ��ȸ
//==============================================================================
function HsrExam.Contisel(Frdate, Todate, examtype, examcd1, examcd2, examcd3, examcd4, examcd5: String):Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_DATE1;S_DATE2;S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6');
   SetFldValue(0,[Frdate, Todate, examtype, examcd1, examcd2, examcd3, examcd4, examcd5]);
   if (txPutF('SR_CONTI_L1')) then
   begin
        GetFldVar('S_PATNO'   ,	sPatNo   );
        GetFldVar('S_PATNAME' ,	sPatname );
        GetFldVar('S_ORDDATE' ,	sOrddate );
        GetFldVar('S_NO1'     ,	iOrdseqno);
        GetFldVar('S_SEX'     ,	sSex     );
        GetFldVar('S_RESNO'   ,	sBirdate );
        GetFldVar('S_ORDCODE' ,	sExamcode);
        GetFldVar('S_NAME1'   , sExamName);
        GetFldVar('S_MEDDEPT' , sMeddept );
        GetFldVar('S_WARDNO'  , sWardno  );
        GetFldVar('S_ADMDATE' , sAdmdate  );
        GetFldVar('S_DATE3'   , sHopedate );
        GetFldVar('S_ACPTDATE', sAcptdate );
        GetFldVar('S_EXECDATE', sExecdate );
        GetFldVar('S_RSVDATE' , sRsvdate  );
        GetFldVar('S_READDATE', sReaddate );
        GetFldVar('S_CFMDATE' , sCfmdate  );
        GetFldVar('S_CODE2'   , sRoomno   );
        GETFldVar('S_TEXT1'   , scomments );
        GETFldVar('S_DR1'     , sOrddrnm  );

        Result := GetRecordCnt('S_PATNO');
     txFree;
   end;

   MessageStr := GetTxMsg;
end;


//==============================================================================
// 2003.12.16 �̰�ȭ -- ó����ȸ(DCó���� ȭ�鿡�� select)
//==============================================================================
function HsrExam.Dcsel(Patno, Frdate, Todate, examtype , gubun: String): Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_PATNO;S_DATE1;S_DATE2;S_CODE1;S_CODE2');
   SetFldValue(0,[Patno, Frdate, Todate, examtype, gubun]);
   if (txPutF('SR_DCORD_L1')) then
   begin
         GetFldVar('S_PATNO'    ,    sPatNo   );
	 GetFldVar('S_PATNAME'  ,    sPatname );
         GetFldVar('S_ORDDATE'  ,    sOrddate );
	 GetFldVar('S_NO1'      ,    iOrdseqno);
         GetFldVar('S_SEX'      ,    sSex     );
         GetFldVar('S_RESNO'    ,    sBirth   );
         GetFldVar('S_ORDCODE'  ,    sExamcode);
         GetFldVar('S_NAME1'    ,    sExamName  );
         GetFldVar('S_MEDDEPT'  ,    sMeddept );
         GetFldVar('S_WARDNO'   ,    sWardno);
	 GetFldVar('S_EXECDATE' ,    sExecdate);
         GetFldVar('S_TEXT1'    ,    sComments);
	 GetFldVar('S_EDITID'   ,    sEditid  );
	 GetFldVar('S_EDITIP'   ,    sEditip  );
	 GetFldVar('S_EDITDATE' ,    sEditdate);
	 GetFldVar('S_DR1'      ,    sOrddr   );
	 GetFldVar('S_NAME2'    ,    sOrddrnm );
         GetFldVar('S_STRING3'  ,    sCnt     );
	 GetFldVar('S_STRING1'  ,    sRcpyn   );
	 GetFldVar('S_STRING2'  ,    sDcyn    );
         GetFldVar('S_STRING4'  ,    sProcstat);

     Result := GetRecordCnt('S_PATNO');
     txFree;
   end;

   MessageStr := GetTxMsg;

end;


//==============================================================================
// 2002.11.28 �̰�ȭ �߰� --> ó�����ں�(from~to) Portable�˻���ȸ
// 2003.2.24  �̰�ȭ���� -- examtype,ó���� �߰���.
//==============================================================================
function HsrExam.Portablesel(Frdate, Todate, examtype: String):Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_DATE1;S_DATE2;S_CODE1');
   SetFldValue(0,[Frdate, Todate, examtype]);
   if (txPutF('SR_PORTA_L1')) then
   begin
        GetFldVar('S_PATNO'   ,	sPatNo   );
        GetFldVar('S_PATNAME' ,	sPatname );
        GetFldVar('S_ORDDATE' ,	sOrddate );
        GetFldVar('S_NO1'     ,	iOrdseqno);
        GetFldVar('S_SEX'     ,	sSex     );
        GetFldVar('S_RESNO'   ,	sBirdate );
        GetFldVar('S_ORDCODE' ,	sExamcode);
        GetFldVar('S_NAME1'   , sExamName);
        GetFldVar('S_MEDDEPT' , sMeddept );
        GetFldVar('S_WARDNO'  , sWardno  );
        GetFldVar('S_ADMDATE' , sAdmdate  );
        GetFldVar('S_DATE3'   , sHopedate );
        GetFldVar('S_ACPTDATE', sAcptdate );
        GetFldVar('S_EXECDATE', sExecdate );
        GetFldVar('S_RSVDATE' , sRsvdate  );
        GetFldVar('S_READDATE', sReaddate );
        GetFldVar('S_CFMDATE' , sCfmdate  );
        GetFldVar('S_CODE2'   , sRoomno   );
        GETFldVar('S_TEXT1'   , scomments );
        GETFldVar('S_DR1'     , sOrddrnm  );

        Result := GetRecordCnt('S_PATNO');
     txFree;
   end;

   MessageStr := GetTxMsg;
end;

//==============================================================================
// 2002.12.5 �̰�ȭ �߰� --> ó�����ں�(from~to) C-Arm, Intra op, Post op �˻���ȸ
// Itype => 1: C-Arm  2: Intra op  3: Post op
// 2003.02.26 ���� ����
//==============================================================================
function HsrExam.OplstIfsel(Frdate, Todate, Itype: String):Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_DATE1;S_DATE2;S_TYPE1');
   SetFldValue(0,[Frdate, Todate, Itype]);

   if (txPutF('SR_OPLST_L1')) then
   begin
        GetFldVar('S_PATNO'  ,sPatno);
        GetFldVar('S_PATNAME',sPatname);
        GetFldVar('S_DATE3'  ,sOpdate);
        GetFldVar('S_SEX'    ,sSex);
        GetFldVar('S_RESNO'  ,sBirth);
        GetFldVar('S_CODE1'  ,sOpcode);
        GetFldVar('S_NAME1'  ,sOpname);
        GetFldVar('S_MEDDEPT',sMeddept);
        GetFldVar('S_WARDNO' ,sWardno);
        GetFldVar('S_ROOMNO' ,sRoomno);
        GetFldVar('S_ADMDATE',sAdmdate);
        GetFldVar('S_YN1'    ,sErYn);
        GetFldVar('S_PATSECT',sPatsect);
        GetFldVar('S_YN2'    ,sReopyn);
        GetFldVar('S_DATE4'  ,sOpstm);
        GetFldVar('S_DATE5'  ,sEtimttm);
        GetFldVar('S_CODE2'  ,sDiagCode);
        GetFldVar('S_NAME2'  ,sDiagname);
        GetFldVar('S_YN3'    ,sCombinyn);
        GetFldVar('S_CODE3'  ,sOproom);
        GetFldVar('S_DR1'    ,sOpdr);
        GetFldVar('S_TEXT1'  ,sComments);
        GetFldVar('S_DATE6'  ,sOrddate);
        GetFldVar('S_CODE4'  ,sExamCode);
        GetFldVar('S_NAME3'  ,sExamName);
        GetFldVar('S_DRNAME1',sChadrnm  );
        GetFldVar('S_DRNAME2',sOrdDrNm  );
        GetFldVar('L_SEQNO1' ,iOrdSeqNo );
        GetFldVar('S_STRING1',sExecDate );
        GetFldVar('S_STRING2',sExecName );
        GetFldVar('S_DATE8'  ,sAcptDate );

        Result := GetRecordCnt('S_PATNO');
     txFree;
   end;

   MessageStr := GetTxMsg;

end;

//==============================================================================
// 2003.6.16 �̰�ȭ -- �������� �þ���ȸ ȭ��
//==============================================================================
function HsrExam.PatParmsel(Patno, examtype : String):Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_PATNO;S_CODE1');
   SetFldValue(0,[Patno,examtype]);

   if (txPutF('SR_PATPARM_L1')) then
   begin
        GetFldVar('S_PATNAME'  , sPatname);
        GetFldVar('S_ORDDATE'  , sOrddate);
        GetFldVar('S_NO1'      , iOrdseqno);
        GetFldVar('S_ORDCODE'  , sExamCode);
        GetFldVar('S_NAME1'    , sExamName);
        GetFldVar('S_MEDDEPT'  , sMeddept);
        GetFldVar('S_STRING1'  , sRcpYN);
        GetFldVar('S_STRING2'  , sQty);

        Result := GetRecordCnt('S_PATNAME');
     txFree;
   end;

   MessageStr := GetTxMsg;

end;

function HsrExam.UpdateExamdate(Patno, Orddate, Date1,Date2, Patsect, Userid,Userip : String; OrdSeqNo: Integer):Integer;
begin
   Result := -1;
   txAlloc;

   SetFldName('S_PATNO;S_ORDDATE;S_STRING1;S_STRING2;S_STRING3;S_EDITID;S_EDITIP;L_SEQNO1');
   SetFldValue(0,[Patno,Orddate,Date1,Date2,Patsect,Userid,Userip,OrdSeqNo]);

   if (txPutF('SR_EXAMDATE_U1')) then
   begin
      Result := 1;
      txFree;
   end;

   MessageStr := GetTxMsg;
end;


//==============================================================================
//
//==============================================================================
function HsrExecute.RepeatList(ExecDate, RoomCode:string): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_EXECDATE;S_CODE1;S_FLAG9');
    SetFldValue(0,[ExecDate,RoomCode,'EB1']);

    if (txGetF('SR_REPEAT_L1')) then
    begin
        GetFldVar('S_PATNO',	sPatNo);
        GetFldVar('S_ORDDATE',	sOrdDate);
        GetFldVar('L_SEQNO1',	iOrdSeqNo);
        GetFldVar('S_ORDNAME',	sExamName);
        GetFldVar('S_CODE2',	sEqipcode);
        GetFldVar('S_EXECDATE',	sExecDate);
        GetFldVar('S_USERNAME1',sExTechNm);
        GetFldVar('L_CNT1',  	iSOrdCnt);
        GetFldVar('S_PATNAME', 	sPatName);
        GetFldVar('S_YN1',   	sErYn);
        GetFldVar('S_YN2',  	sPortYn);
        GetFldVar('S_DATETIME1',sReexwdt);

        Result := GetRecordCnt('S_PATNO');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// REPEAT ��ȸ(from - to �Ⱓ����ȸ)
//==============================================================================
function HsrExecute.RepeatSelect(FromDate, ToDate,
  RoomCode,Flag,PatNo: string): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROM1;S_TO1;S_CODE1;S_FLAG1;S_FLAG9;S_PATNO');
    SetFldValue(0,[FromDate,ToDate,RoomCode,Flag,'EB1',PatNo]);

    if (txGetF('SR_REPEAT_L2')) then
    begin
        GetFldVar('S_PATNO',	sPatNo);
        GetFldVar('S_ORDDATE',	sOrdDate);
        GetFldVar('L_SEQNO1',	iOrdSeqNo);
        GetFldVar('S_ORDNAME',	sExamName);
        GetFldVar('S_CODE2',	sEqipcode);
        GetFldVar('S_EXECDATE',	sExecDate);
        GetFldVar('S_USERNAME1',sExTechNm);
        GetFldVar('L_CNT1',  	iSOrdCnt);
        GetFldVar('S_PATNAME', 	sPatName);
        GetFldVar('S_BIRTH', 	sBirth);
        GetFldVar('S_YN1',   	sErYn);
        GetFldVar('S_YN2',  	sPortYn);
        GetFldVar('S_DATETIME1',sReexwdt);
        GetFldVar('S_DATETIME2',sReexdate);
        GetFldVar('S_ORDCODE',	sExamCode);
        GetFldVar('S_TEXT1',    sRemark);
        GetFldVar('L_CNT2',     iDaycnt);
        GetFldVar('S_STRING1',  sSex);
        GetFldVar('S_CODE10',   sRoomCode);
        GetFldVar('S_PATSECT',  sPatSect);
        GetFldVar('S_DATE1',    sDschdate);
        GetFldVar('S_MEDDEPT',  sMeddept);

        Result := GetRecordCnt('S_PATNO');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
// REPEAT ��ȸ(from - to �Ⱓ����ȸ)
// 2003.2.25 �̰�ȭ -- ��������
//==============================================================================
function HsrExecute.RepeatSelect1(FromDate, ToDate, RoomCode,Flag,PatNo: string): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROM1;S_TO1;S_CODE1;S_FLAG1;S_FLAG9;S_PATNO');
    SetFldValue(0,[FromDate,ToDate,RoomCode,Flag,'EB1',PatNo]);

    if (txGetF('SR_REPEAT_L3')) then
    begin
        GetFldVar('S_PATNO',	sPatNo);
        GetFldVar('S_ORDDATE',	sOrdDate);
        GetFldVar('L_SEQNO1',	iOrdSeqNo);
        GetFldVar('S_ORDNAME',	sExamName);
        GetFldVar('S_CODE2',	sEqipcode);
        GetFldVar('S_EXECDATE',	sExecDate);
        GetFldVar('S_USERNAME1',sExTechNm);
        GetFldVar('L_CNT1',  	iSOrdCnt);
        GetFldVar('S_PATNAME', 	sPatName);
        GetFldVar('S_BIRTH', 	sBirth);
        GetFldVar('S_YN1',   	sErYn);
        GetFldVar('S_YN2',  	sPortYn);
        GetFldVar('S_DATETIME1',sReexwdt);
        GetFldVar('S_DATETIME2',sReexdate);
        GetFldVar('S_ORDCODE',	sExamCode);
        GetFldVar('S_TEXT1',    sRemark);
        GetFldVar('L_CNT2',     iDaycnt);
        GetFldVar('S_STRING1',  sSex);
        GetFldVar('S_CODE10',   sRoomCode);
        GetFldVar('S_PATSECT',  sPatSect);
        GetFldVar('S_DATE1',    sDschdate);
        GetFldVar('S_MEDDEPT',  sMeddept);

        Result := GetRecordCnt('S_PATNO');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;



//==============================================================================
//
//==============================================================================
function HsrExecute.Opdrsv(Rsvdate, Examtype, Deptyn, Sortkey: String): Integer;
var
    LocalFile: String;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_RSVDATE;S_TYPE1;S_YN1;S_CODE1');
    SetFldValue(0,[Rsvdate,Examtype,Deptyn,Sortkey]);

    if (txGetFile('SR_OPDRSV_L',LocalFile)) then
    begin
         Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
				[@sPatno,
				 @sPatname,
				 @sMeddept,
				 @sMedtime,
				 @sUsername,
				 @sOutdept,
				 @sOutdate,
				 @sOrddept,
				 @sOrddate,
				 @sExecdate,
				 @sOrdname,
				 @sReaddate,
				 @sDschdate,
                                 @sRsvtype]);
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

///////////////////////////////////////////////////////////////////////////////
//      �ǵ� class(HsrReadFilm) Member Method                                //
///////////////////////////////////////////////////////////////////////////////

//==============================================================================
//
//==============================================================================
function HsrReadFilm.ReadFilmList(PatNo,ExamType:String):Integer;
var
   tmpdate:TDateTime;
begin
     GetSysDate(tmpdate);
{
    Result := -1;
    txAlloc;
    SetFldName('PATNO;S_TYPE');
    SetFldValue(0,[PatNo,ExamType]);
    if (txGetF('SR_TREAD_LIST')) then begin
        proto_GetFldVar('PATNAME', sPatName);
        proto_GetFldVar('SOLGERNO',sSolgerNo);
        proto_GetFldVar('CASTENM', sCasteNm);
        proto_GetFldVar('RESNO',   sResNo);
        proto_GetFldVar('FORCENM', sForceNm);
        proto_GetFldVar('SEX',     sSex);
        proto_GetFldVar('ORDDATE', sOrdDate);
        proto_GetFldVar('EXECDATE',sExecDate);
        proto_GetFldVar('CFMDATE', sCfmDate);
        proto_GetFldVar('ORDSEQNO',iOrdSeqNo);
        proto_GetFldVar('L_SEQNO', iReadSeq);
        proto_GetFldVar('RGRPCODE',sRgrpCode);
        proto_GetFldVar('RSLTCODE',sRsltCode);
        proto_GetFldVar('EXAMCODE',sExamCode);
        proto_GetFldVar('EXAMNAME',sExamName);
        proto_GetFldVar('EXAMSTAT',sExamStat);
        proto_GetFldVar('READDATE',sReadDate);
        proto_GetFldVar('READDR1', sReadDr1);
        proto_GetFldVar('EMPNAME1',sRdDr1Nm);
        proto_GetFldVar('MEDDEPT', sMedDept);
        proto_GetFldVar('WARDNO',  sWardNo);
        proto_GetFldVar('ORDDR',   sOrdDr);
        proto_GetFldVar('EMPNAME2',sOrdDrNm);
        proto_GetFldVar('COMMENTS',sComments);
        proto_GetFldVar('S_CODE'  ,sSrchCode);
        proto_GetFldVar('ERYN',    sErYn);
        proto_GetFldVar('PORTYN',  sPortYn);
        Result := GetRecordCnt('ORDDATE');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 0;
end;

//==============================================================================
// 2003.1.21 �̰�ȭ : ���ǵ������ҷ�����
// 2003.7.23 �̰�ȭ : ����׸��߰�
//==============================================================================
function HsrReadFilm.PreReadInfo(IPatno, IOrdcode:String):Integer;
begin
   Result := -1;
    txAlloc32;
    SetFldName32('S_CODE1;S_CODE2');
    SetFldValue32(0,[Ipatno, IOrdcode]);

    if (txGetF32('SR_PREAD_L1')) then
    begin
        GetFldVar32('S_ORDDATE'   ,  sOrdDate );
        GetFldVar32('L_NO1'       ,  iOrdSeqNo);
        GetFldVar32('S_ORDCODE'   ,  sExamCode);
        GetFldVar32('S_EXECDATE'  ,  sExecDate);
        GetFldVar32('S_READDATE'  ,  sReadDate);
        GetFldVar32('S_CFMDATE'   ,  sCfmDate );
        GetFldVar32('S_STRING1'   ,  sResult  );
        GetFldVar32('S_TEXT1'     ,  sComment );
        GetFldVar32('S_EDITID'    ,  sEditId  );
        GetFldVar32('S_EDITIP'    ,  sEditIp  );
        GetFldVar32('S_EDITDATE'  ,  sEditDate);
        GetFldVar32('S_STRING2'   ,  sLastrslt);

        Result := GetRecordCnt32('S_ORDDATE');

        txFree32;
    end;

end;



//==============================================================================
// 2003.7.31 �̰�ȭ : ���ǵ������ҷ����� -- ����ó��(HP���ڷ��������ڷ���ȸ)
//==============================================================================
function HsrReadFilm.PreReadInfo2(IPatno, IOrdcode:String):Integer;
begin
   Result := -1;
    txAlloc32;
    SetFldName32('S_CODE1;S_CODE2');
    SetFldValue32(0,[Ipatno, IOrdcode]);

    if (txGetF32('SR_PREAD_L2')) then
    begin
        GetFldVar32('S_ORDDATE'   ,  sOrdDate );
        GetFldVar32('L_NO1'       ,  iOrdSeqNo);
        GetFldVar32('S_ORDCODE'   ,  sExamCode);
        GetFldVar32('S_EXECDATE'  ,  sExecDate);
        GetFldVar32('S_READDATE'  ,  sReadDate);
        GetFldVar32('S_CFMDATE'   ,  sCfmDate );
        GetFldVar32('S_STRING1'   ,  sResult  );
        GetFldVar32('S_TEXT1'     ,  sComment );
        GetFldVar32('S_EDITID'    ,  sEditId  );
        GetFldVar32('S_EDITIP'    ,  sEditIp  );
        GetFldVar32('S_EDITDATE'  ,  sEditDate);

        Result := GetRecordCnt32('S_ORDDATE');

        txFree32;
    end;

end;



//==============================================================================
// �ǵ�Ȯ�� ����� ��ȸ.
//==============================================================================
function HsrReadFilm.ConfirmNeedList(Examtype,ReadDr1:String):Integer;
//var
//   LocalFile : String;
begin

    Result := -1;
    txAlloc32;
    SetFldName32('S_DR1;S_TYPE1;S_FLAG9');
    SetFldValue32(0,[ReadDr1,Examtype,'EB1']);

    if (txGetF32('SR_TCFM_L')) then   // sr_tcfm_l.pc
    begin
        GetFldVar32('S_PATNO'     ,  sPatNo);
        GetFldVar32('S_PATNAME'   ,  sPatName);
        GetFldVar32('S_ORDDATE'   ,  sOrdDate);
        GetFldVar32('L_SEQNO1'    ,  iOrdSeqNo);
        GetFldVar32('L_SEQNO2'    ,  iReadSeq);
        GetFldVar32('S_CODE2'     ,  sRsltCode);
        GetFldVar32('S_ORDCODE'   ,  sExamCode);
        GetFldVar32('S_ORDNAME'   ,  sExamName);
        GetFldVar32('S_STAT1'     ,  sExamStat);
        GetFldVar32('S_EXECDATE'  ,  sExecDate);
        GetFldVar32('S_READDATE'  ,  sReadDate);
        GetFldVar32('S_MEDDEPT'   ,  sMedDept);
        GetFldVar32('S_WARDNO'    ,  sWardNo);
        GetFldVar32('S_DR2'       ,  sOrdDr);
        GetFldVar32('S_DRNAME2'   ,  sOrdDrNm);
        GetFldVar32('S_USERID2'   ,  sSaveid);

        GetFldVar32('S_TEXT1'     ,  sRepemark);
        GetFldVar32('S_TEXT2'     ,  sPatsect);

        GetFldVar32('S_TEXT3'     ,  sReaddr1nm);
        GetFldVar32('S_TEXT4'     ,  sModality);

        Result := GetRecordCnt32('S_ORDDATE');
    
       txFree32;
    end;

{+++++++++++++++ 2002.03.11. ������...FTP��뿡�� FML32�� ����...
    if (txGetFile('SR_TCFM_L', LocalFile)) then
    begin
       Result := GetFldVarFile(LocalFile, '!@', '#$',
                               [@sPatno,
                                @sPatName,
                                @sOrdDate,
                                @iOrdSeqNo,
                                @iReadSeq,
                                @sRsltCode,
                                @sExamCode,
                                @sExamName,
                                @sExamStat,
                                @sExecDate,
                                @sReadDate,
                                @sMedDept,
                                @sWardNo,
                                @sOrdDr,
                                @sOrdDrNm,
                                @sSaveid]);
    end;
+++++++++++++++++}
    //txFree32;
end;


//==============================================================================
// 2003.8.7 �̰�ȭ -- �ǵ�Ȯ�� ����� ��ȸ.(��������)
//==============================================================================
function HsrReadFilm.ConfirmNeedList1(Examtype,ReadDr1:String):Integer;
//var
//   LocalFile : String;
begin

    Result := -1;
    txAlloc32;
    SetFldName32('S_DR1;S_TYPE1;S_FLAG9');
    SetFldValue32(0,[ReadDr1,Examtype,'EB1']);

    if (txGetF32('SR_TCFM_L1')) then
    begin
        GetFldVar32('S_PATNO'     ,  sPatNo   );
        GetFldVar32('S_PATNAME'   ,  sPatName );
        GetFldVar32('S_ORDDATE'   ,  sOrdDate );
        GetFldVar32('L_SEQNO1'    ,  iOrdSeqNo);
        GetFldVar32('L_SEQNO2'    ,  iReadSeq );
        GetFldVar32('S_CODE2'     ,  sRsltCode);
        GetFldVar32('S_ORDCODE'   ,  sExamCode);
        GetFldVar32('S_ORDNAME'   ,  sExamName);
        GetFldVar32('S_STAT1'     ,  sExamStat);
        GetFldVar32('S_EXECDATE'  ,  sExecDate);
        GetFldVar32('S_READDATE'  ,  sReadDate);
        GetFldVar32('S_MEDDEPT'   ,  sMedDept );
        GetFldVar32('S_WARDNO'    ,  sWardNo  );
        GetFldVar32('S_DR2'       ,  sOrdDr   );
        GetFldVar32('S_DRNAME2'   ,  sOrdDrNm );
        GetFldVar32('S_USERID2'   ,  sSaveid  );
        GetFldVar32('S_TEXT1'     ,  sRepemark);

        //2003.8.7 �̰�ȭ �߰�
        GetFldVar32('S_STRING1'   ,   sCfmdr   );
        GetFldVar32('S_STRING2'   ,   sCfmdrnm );
        GetFldVar32('S_STRING3'   ,   sReaddr1 );
        GetFldVar32('S_STRING4'   ,   sReaddr1nm);
        GetFldVar32('S_STRING5'   ,   sReaddr2 );
        GetFldVar32('S_STRING6'   ,   sReaddr2nm);
        GetFldVar32('S_STRING7'   ,   sRslttext);
        GetFldVar32('S_STRING8'   ,   sLastrslt);
        GetFldVar32('S_STRING9'   ,   sPatsect );
        GetFldVar32('S_STRING10'  ,   sModality);

        Result := GetRecordCnt32('S_ORDDATE');

       txFree32;
    end;
end;




//==============================================================================
//
//==============================================================================
function HsrReadFilm.ConfirmChangeList(ExecDate,PatNo,ReadDr1:String):Integer;
var
   tmpdate: TDateTime;
begin
     GetSysDate(tmpdate);
{
    Result := -1;
    txAlloc;
    SetFldName('EXECDATE;PATNO;READDR1');
    SetFldValue(0,[ExecDate,PatNo,ReadDr1]);
    if (txGetF('SR_TCFMCHG_LIST')) then begin
        proto_GetFldVar('PATNAME', sPatName);
        proto_GetFldVar('SOLGERNO',sSolgerNo);
        proto_GetFldVar('CASTENM', sCasteNm);
        proto_GetFldVar('RESNO',   sResNo);
        proto_GetFldVar('FORCENM', sForceNm);
        proto_GetFldVar('SEX',     sSex);
        proto_GetFldVar('ORDDATE', sOrdDate);
        proto_GetFldVar('ORDSEQNO',iOrdSeqNo);
        proto_GetFldVar('L_SEQNO', iReadSeq);
        proto_GetFldVar('RGRPCODE',sRgrpCode);
        proto_GetFldVar('RSLTCODE',sRsltCode);
        proto_GetFldVar('EXAMNAME',sExamName);
        proto_GetFldVar('READDATE',sReadDate);
        proto_GetFldVar('CFMDATE', sCfmDate);
        proto_GetFldVar('CHGDATE', sChgDate);
        proto_GetFldVar('MEDDEPT', sMedDept);
        proto_GetFldVar('WARDNO',  sWardNo);
        proto_GetFldVar('EMPNAME2',sOrdDrNm);
        proto_GetFldVar('S_CODE',  sSrchCode);
        proto_GetFldVar('COMMENTS',sComments);
        proto_GetFldVar('RSLTTEXT',sRsltText);
        Result := GetRecordCnt('ORDDATE');
        //txFree;

       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 0;

end;

//==============================================================================
// 2002.12.16 �̰�ȭ ==> ���ǵ���ȸ(�Կ�,�ܷ�,����)
//==============================================================================
function HsrReadFilm.NReadSelect(FromDate,ToDate,ExamType,SortKey,Meddept,Patsect,Examchk1,Examchk2,Examchk3,Examchk4,Examchk5,Examchk6,Examchk7:String):Integer;
begin
    Result := -1;
    txAlloc32;
    SetFldName32('S_FROM1;S_TO1;S_TYPE1;S_TYPE2;S_MEDDEPT;S_PATSECT;S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7;S_CODE8;S_CODE9');
    SetFldValue32(0,[FromDate,ToDate,ExamType,SortKey,Meddept,Patsect,Examchk1,Examchk2,Examchk3,Examchk4,Examchk5,Examchk6,Examchk7]);

    if (txGetF32('SR_NREAD_L1')) then
    begin
        GetFldVar32('L_SEQNO1'  , lOrdseqno);
        GetFldVar32('S_CODE1'   , sExamcode);
        GetFldVar32('S_ORDNAME' , sOrdname );
        GetFldVar32('S_EXECDATE', sExecdate);
        GetFldVar32('S_PATNO'   , sPatno   );
        GetFldVar32('S_PATNAME' , sPatname );
        GetFldVar32('S_BIRTH'   , sBirth   );
        GetFldVar32('S_SEX'     , sSex     );
        GetFldVar32('S_ORDDATE' , sOrddate);
        GetFldVar32('S_MEDDEPT' , sMeddept);
        GetFldVar32('S_MEDDATE' , sMeddate);
        GetFldVar32('S_ROOMNO'  , sRoomcode);
        GetFldVar32('S_DRNAME1' , sChadrnm);
        GetFldVar32('S_DRNAME2' , sOrddrnm);
        GetFldVar32('S_WARDNO'  , sWardno);

        Result := GetRecordCnt32('L_SEQNO1');

        txFree32;
    end;
end;

//==============================================================================
//
//==============================================================================
function HsrReadFilm.NotReadList(FromDate,ToDate,ExamType,SortKey,Roomcode:String):Integer;
begin
    Result := -1;
    txAlloc32;
    SetFldName32('S_FROM1;S_TO1;S_TYPE1;S_TYPE2;S_CODE1');
    SetFldValue32(0,[FromDate,ToDate,ExamType,SortKey,Roomcode]);

    if (txGetF32('SR_NOTREAD_L1')) then         //sr_notread_l1.pc
    begin
        Result := GetRecordCnt32('L_SEQNO1');

        GetFldVar32('L_SEQNO1'	, iOrdseqno);
        GetFldVar32('S_CODE1'	, sExamcode);
        GetFldVar32('S_ORDNAME'	, sExamname);
        GetFldVar32('S_EXECDATE', sExecdate);
        GetFldVar32('S_PATNO'	, sPatno   );
        GetFldVar32('S_PATNAME'	, sPatname );
        GetFldVar32('S_ORDDATE'	, sOrddate );
        GetFldVar32('S_MEDDEPT'	, sMeddept );
        GetFldVar32('S_WARDNO'	, sWardno  );
        GetFldVar32('S_CODE2'	, sRoomcode);
        GetFldVar32('S_CODE3'	, sReadyn  );
        GetFldVar32('S_CODE4'	, sInsyn   );
        GetFldVar32('S_CODE5'	, sRsvdate );      //KimDaeYong 2010-03-26
        GetFldVar32('S_STRING1'	, sNMeddept );      //NamkyuWoo  2021.11.26.

       txFree32;
    end;
end;

//==============================================================================
// �ǵ���� ���� �� ����.                     SONGLIM_THOMA ����
//==============================================================================
function HsrReadFilm.ReadDataUpdate(ReadDr1,ReadDr2,ReadDr3,RsltText,Userid,Repemark,BoneDensity,ReadDr4,BxYn,CloYn,
                                    Medicine,Medicine2,ReMedicine,ReMedicine2,sCompyn,sBowel,sCecumyn,sSpcRdDrYn:String;
                                    Cnt:Integer;xSignData,xSerialNo,xSubjectDN,Medicine3,ReMedicine3,Medicine4,ReMedicine4,sAntconvyn:String):Integer;
var
    i : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_DR1;S_DR2;S_DR3;S_DR4;S_RSLTTEXT;S_EDITID;S_TEXT1;S_NO1;S_TYPE1;S_TYPE3;S_TYPE2;S_TEXT2;S_TEXT3;S_TEXT4;' +
               'S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_TYPE11');
    SetFldValue(0,[ReadDr1,ReadDr2,ReadDr3,ReadDr4,RsltText,G_USERID,Repemark,BoneDensity,BxYn,CloYn,Medicine,xSignData,xSerialNo,xSubjectDN,
                   Medicine2,ReMedicine,ReMedicine2,sCompyn,sBowel,sCecumyn,sSpcRdDrYn,Medicine3,ReMedicine3,Medicine4,ReMedicine4,sAntconvyn]);

    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE');

    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]),String(sPatNo[i]),String(sOrdDate[i])]);
    end;

    if (txPutF('SR_READ_U')) then      // sr_read_u.pc
    begin
        Result := 1;

       txFree;
    end;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �ǵ���� ���� �� ����.
//  2003.2.26 �̰�ȭ -- ��������                          SONGLIM_THOMA ����
//==============================================================================
function HsrReadFilm.ReadDataUpdate1(ReadDr1,ReadDr2,ReadDr3,RsltText,Userid,
                     Repemark,BoneDensity,ReadDr4,BxYn,CloYn,Medicine,Medicine2,ReMedicine,ReMedicine2,sCompyn,sBowel,sCecumyn,sSpcRdDrYn:String;
                     Cnt:Integer;xSignData,xSerialNo,xSubjectDN,Medicine3,ReMedicine3,Medicine4,ReMedicine4,sAntconvyn:String):Integer;
var
    i : Integer;
begin


    Result := -1;
    txAlloc;
    SetFldName('S_DR1;S_DR2;S_DR3;S_DR4;S_RSLTTEXT;S_EDITID;S_TEXT1;S_NO1;S_TYPE1;S_TYPE3;S_TYPE2;S_TEXT2;S_TEXT3;S_TEXT4;' +
               'S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_TYPE11');
    SetFldValue(0,[ReadDr1,ReadDr2,ReadDr3,ReadDr4,RsltText,G_USERID,Repemark,BoneDensity,BxYn,CloYn,Medicine,xSignData,xSerialNo,xSubjectDN,
                   Medicine2,ReMedicine,ReMedicine2,sCompyn,sBowel,sCecumyn,sSpcRdDrYn,Medicine3,ReMedicine3,Medicine4,ReMedicine4,sAntconvyn]);

    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_CODE1');

    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]),String(sPatNo[i]),String(sOrdDate[i]), String(sPatsect[i])]);
    end;

    if (txPutF('SR_READ_U1')) then  // sr_read_u1.pc
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;

end;


//==============================================================================
// ������ü�� �ǵ����� �������� �ǵ���� ���� �� ����.
//  2003.7.8 �̰�ȭ -- ��������                           SONGLIM_THOMA ����
//==============================================================================
function HsrReadFilm.ReadDataUpdate6(ReadDr1,ReadDr2,ReadDr3,RsltText,Userid,
                     Repemark,BoneDensity,ReadDr4,BxYn,CloYn,Medicine,Readdate:String;Cnt:Integer;xSignData,xSerialNo,xSubjectDN:String):Integer;
var
    i : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_DR1;S_DR2;S_DR3;S_DR4;S_RSLTTEXT;S_EDITID;S_TEXT1;S_NO1;S_TYPE1;S_TYPE3;S_TYPE2;S_READDATE;S_TEXT2;S_TEXT3;S_TEXT4');
    SetFldValue(0,[ReadDr1,ReadDr2,ReadDr3,ReadDr4,RsltText,G_USERID,Repemark,BoneDensity,BxYn,CloYn,Medicine,Readdate,xSignData,xSerialNo,xSubjectDN]);

    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_CODE1');

    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]),String(sPatNo[i]),String(sOrdDate[i]), String(sPatsect[i])]);
    end;

    if (txPutF('SR_READ_U6')) then //sr_read_u6.pc
    begin
        Result := 1;

       txFree;
    end;

    MessageStr := GetTxMsg;

end;




//==============================================================================
// �ǵ������� ==> ���� �ǵ�����Է°� ���ÿ�  Ȯ��process���� �����.
//  2003.3.21 �̰�ȭ -- ��������
//==============================================================================
function HsrReadFilm.ReadDataUpdate2(Cnt:Integer):Integer;
var
    i : Integer;
begin
    Result := -1;
    txAlloc;

    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_CODE1;S_CODE2;S_EDITID');

    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]),String(sPatNo[i]),String(sOrdDate[i]), String(sPatsect[i]), String(sExamcode[i]), String(G_USERID[i])]);
    end;

    if (txPutF('SR_READ_U2')) then   // sr_read_u2.pc
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;

end;

//==============================================================================
// ������ �ǵ���� ���� -- �Ұ�,��кι����� �����Ͽ� ������, �����Ǹ� �ٷ� �ǵ�����
//  2003.3.24 �̰�ȭ -- ��������
//  2003.4.3  �̰�ȭ -- DR4�� writeId�� ��ü
//==============================================================================
function HsrReadFilm.ReadDataUpdate3(ReadDr1,ReadDr2,ReadDr3,RsltText,Userid,
                                     Repemark,BoneDensity,Writerid,Lastrslt:String;Cnt:Integer):Integer;
var
    i : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_DR1;S_DR2;S_DR3;S_STRING1;S_RSLTTEXT;S_EDITID;S_TEXT1;S_NO1;S_TEXT2');
    SetFldValue(0,[ReadDr1,ReadDr2,ReadDr3,Writerid,RsltText,G_USERID,Repemark,BoneDensity,Lastrslt]);

    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_CODE1');

    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]),String(sPatNo[i]),String(sOrdDate[i]), String(sPatsect[i])]);
    end;

    if (txPutF('SR_READ_U3')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;

end;


//==============================================================================
//  �ǵ���� ���� -- �Ұ�,��кι����� �����Ͽ� ������
//  2003.3.24 �̰�ȭ -- ��������
//==============================================================================
function HsrReadFilm.ReadDataUpdate4(ReadDr1,ReadDr2,ReadDr3,RsltText,Userid,
                     Repemark,BoneDensity,Writerid,Lastrslt:String;Cnt:Integer):Integer;
var
    i : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_DR1;S_DR2;S_DR3;S_STRING1;S_RSLTTEXT;S_EDITID;S_TEXT1;S_NO1;S_TEXT2');
    SetFldValue(0,[ReadDr1,ReadDr2,ReadDr3,Writerid,RsltText,G_USERID,Repemark,BoneDensity,Lastrslt]);

    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_CODE1');

    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]),String(sPatNo[i]),String(sOrdDate[i]), String(sPatsect[i])]);
    end;

    if (txPutF('SR_READ_U4')) then
    begin
        Result := 1;

       txFree;
    end;

    MessageStr := GetTxMsg;

end;


//==============================================================================
// �ǵ�Ȯ��...
//==============================================================================
function HsrReadFilm.ConfirmDataUpdate(Readdr1,Readdr2,Readdr4,CfmDr,RsltText,Userid:String;Cnt:Integer):Integer;
var
    i : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_DR1;S_DR2;S_DR3;S_DR4;S_RSLTTEXT;S_EDITID');
    SetFldValue(0,[Readdr1,Readdr2,Readdr4,CfmDr,RsltText,G_USERID]);

    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_CODE1;');
    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]),String(sPatNo[i]),String(sOrdDate[i]),String(sPatsect[i])]);
    end;

    if (txPutF('SR_CFM_U')) then begin   // sr_cfm_u.pc
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
// �ǵ�Ȯ��...
// 2003.2.27 �̰�ȭ -- ��������
//==============================================================================
function HsrReadFilm.ConfirmDataUpdate1(Readdr1,Readdr2,Readdr4,CfmDr,RsltText,Userid,BxYn,Medicine:String;Cnt:Integer):Integer;
var
    i : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_DR1;S_DR2;S_DR3;S_DR4;S_RSLTTEXT;S_EDITID;S_STRING1;S_STRING2');
    SetFldValue(0,[Readdr1,Readdr2,Readdr4,CfmDr,RsltText,G_USERID,BxYn,Medicine]);

    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_CODE1');
    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]),String(sPatNo[i]),String(sOrdDate[i]), String(sPatsect[i])]);
    end;

    if (txPutF('SR_CFM_U1')) then begin     // sr_cfm_u1.pc
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �ǵ�Ȯ�� -- �ǵ��Ұ�,��� �����Ͽ� ó�� (srexamdt�� �����Ͽ�, mdresult�� ���ΰ���)
// 2003.3.24 �̰�ȭ -- ��������
//==============================================================================
function HsrReadFilm.ConfirmDataUpdate2(Readdr1,Readdr2,Writerid,CfmDr,RsltText,Userid,Lastrslt,Trslt:String;Cnt:Integer):Integer;
var
    i : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_DR1;S_DR2;S_STRING1;S_DR3;S_RSLTTEXT;S_EDITID;S_TEXT1;S_TEXT2');
    SetFldValue(0,[Readdr1,Readdr2,Writerid,CfmDr,RsltText,G_USERID,Lastrslt,Trslt]);

    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_CODE1');
    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]),String(sPatNo[i]),String(sOrdDate[i]), String(sPatsect[i])]);
    end;

    if (txPutF('SR_CFM_U2')) then begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
// �ǵ�Ȯ��...
// 2003.7.16 �̰�ȭ -- ������ü�� whole body bone scan �ǵ�Ȯ���� 3���̳���ó��
//==============================================================================
function HsrReadFilm.ConfirmDataUpdate3(Readdr1,Readdr2,Readdr4,CfmDr,RsltText,Userid,BxYn,Medicine,Cfmdate:String;Cnt:Integer):Integer;
var
    i : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_DR1;S_DR2;S_DR3;S_DR4;S_RSLTTEXT;S_EDITID;S_STRING1;S_STRING2;S_CFMDATE');
    SetFldValue(0,[Readdr1,Readdr2,Readdr4,CfmDr,RsltText,G_USERID,BxYn,Medicine,Cfmdate]);

    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_CODE1');
    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]),String(sPatNo[i]),String(sOrdDate[i]), String(sPatsect[i])]);
    end;

    if (txPutF('SR_CFM_U3')) then begin    // sr_cfm_u3.pc
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
// �ǵ�Ȯ�μ��� -- �ǵ��Ұ�,��кκ� �����Ͽ� ó����.(sra996f2���� call)
// 2003.4.15 �̰�ȭ
//==============================================================================
function HsrReadFilm.ConfirmChangeUpdate5(Readdr1,Readdr2,Writeid,CfmDr,RsltText,Lastrslt,Trslt,ChngResn,Userid:String;Cnt:Integer):Integer;
var
    i : Integer;
begin
    Result := -1;
    txAlloc;

    SetFldName('S_DR1;S_DR2;S_CODE2;S_DR3;S_RSLTTEXT;S_TEXT1;S_TEXT2;S_STRING1;S_EDITID');
    SetFldValue(0,[Readdr1,Readdr2,Writeid,CfmDr,RsltText,Lastrslt,Trslt,ChngResn,G_USERID]);

    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_CODE1');

    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]),String(sPatNo[i]),String(sOrdDate[i]),String(sPatsect[i])]);
    end;

    if (txPutF('SR_CFMCHG_U5')) then
    begin
        Result := 1;

       txFree;
    end;

    MessageStr := GetTxMsg;
end;



//==============================================================================
// �ǵ�Ȯ�� ����2...
// 2003.2.28 �̰�ȭ -- ��������
//==============================================================================
function HsrReadFilm.ConfirmChangeUpdate3(Readdr1,Readdr2,Readdr4,CfmDr,RsltText,ChngResn,Userid:String;Cnt:Integer;xSignData,xSerialNo,xSubjectDN:String):Integer;
var
    i : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_DR1;S_DR2;S_DR3;S_DR4;S_RSLTTEXT;S_STRING1;S_EDITID;S_TEXT2;S_TEXT3;S_TEXT4');
    SetFldValue(0,[Readdr1,Readdr2,Readdr4,CfmDr,RsltText,ChngResn,G_USERID,xSignData,xSerialNo,xSubjectDN]);

    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_CODE1');

    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]),String(sPatNo[i]),String(sOrdDate[i]),String(sPatsect[i])]);
    end;

    if (txPutF('SR_CFMCHG_U3')) then    // sr_cfmchg_u3.pc
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �ǵ�Ȯ�� ����2...
//==============================================================================
function HsrReadFilm.ConfirmChangeUpdate2(Readdr1,Readdr2,Readdr4,CfmDr,RsltText,ChngResn,Userid:String;Cnt:Integer;xSignData,xSerialNo,xSubjectDN:String):Integer;
var
    i : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_DR1;S_DR2;S_DR3;S_DR4;S_RSLTTEXT;S_STRING1;S_EDITID;S_TEXT2;S_TEXT3;S_TEXT4');
    SetFldValue(0,[Readdr1,Readdr2,Readdr4,CfmDr,RsltText,ChngResn,G_USERID,xSignData,xSerialNo,xSubjectDN]);

    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE');

    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]),String(sPatNo[i]),String(sOrdDate[i])]);
    end;

    if (txPutF('SR_CFMCHG_U2')) then   // sr_cfmchg_u2.pc
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
// �ǵ�Ȯ�� ����...
//==============================================================================
function HsrReadFilm.ConfirmChangeUpdate(CfmDr,RsltText,ChngResn,Userid:String;Cnt:Integer):Integer;
var
    i : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_DR3;S_RSLTTEXT;S_TEXT1;S_EDITID');
    SetFldValue(0,[CfmDr,RsltText,ChngResn,G_USERID]);

    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE');
    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]),String(sPatNo[i]),String(sOrdDate[i])]);
    end;

    if (txPutF('SR_CFMCHG_U')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//========================================================================================
// ����� �ǵ��׸�� ��ȸ...
// ���� -- 2002.12.10 �̰�ȭ
//         �˻��׸��߰�, �ǵ�Ȯ���Ͻ�(S_DATE2) sel�� �߰��� (���ǿ� �ǵ�Ȯ�����ڸ� from~to�� ����)
// �߰� -- 2003.7.15 �̰�ȭ
//         FTP �� �޴� �κ��� SPUT�� ����
//========================================================================================
function HsrReadFilm.RsltPrntPatList1(PatNo,CfmDate,Cfmdate_to,Meddept,Patsect,Wardno,PrtFlag,Examtype,PrtUser,Readdr,Examchk1,Examchk2,
                                      Examchk3,Examchk4,Examchk5,Examchk6,Examchk7,DateFlag,Statflag,StatFlag2,Readdr2:String):Integer;
var
    LocalFile : String;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_DATE1;S_DATE2;S_MEDDEPT;S_PATSECT;S_WARDNO;S_FLAG1;S_TYPE1;S_USERID1;S_CODE1;S_FLAG9;S_CODE2;S_CODE3;' +
               'S_CODE4;S_CODE5;S_CODE6;S_CODE7;S_CODE8;S_CODE9;S_CODE10;S_CODE11;S_CODE12;S_CODE13');
    SetFldValue(0,[PatNo,CfmDate,Cfmdate_to,Meddept,Patsect,Wardno,PrtFlag,Examtype,PrtUser,Readdr,'EB1',Examchk1,Examchk2,
                   Examchk3,Examchk4,Examchk5,Examchk6,Examchk7,DateFlag,Statflag,StatFlag2,Readdr2]);

    if txGetFMIS('SR_RSLTPRT_L1') then    // sr_rsltprt_l1.pc
    begin
        Result := GetRecordCnt('S_STRING1');

        SGetFldVar('S_STRING1'    , sPatno     );
        SGetFldVar('S_STRING2'    , sPatname   );
        SGetFldVar('S_STRING3'    , sResno1    );
        SGetFldVar('S_STRING4'    , sBirthDate );
        SGetFldVar('S_STRING5'    , sSex       );
        SGetFldVar('S_STRING6'    , sExamCode  );
        SGetFldVar('S_STRING7'    , sExamName  );
        SGetFldVar('S_STRING8'    , sExTechNm  );
        SGetFldVar('S_STRING9'    , sOrdDrNm   );
        SGetFldVar('S_STRING10'   , sPatsect   );
        SGetFldVar('S_STRING11'   , sMedDept   );
        SGetFldVar('S_STRING12'   , sWardNo    );
        SGetFldVar('S_STRING13'   , sRoomNo    );
        SGetFldVar('S_STRING14'   , sComments  );
        SGetFldVar('S_STRING15'   , sExecDate  );
        SGetFldVar('S_STRING16'   , sRsltText  );
        SGetFldVar('S_STRING17'   , sCfmDrNm   );
        SGetFldVar('S_STRING18'   , sRdDr1Nm   );
        SGetFldVar('S_STRING19'   , sRdDr2Nm   );
        SGetFldVar('S_STRING20'   , sRdDr4Nm   );
        SGetFldVar('S_STRING21'   , sWriterNm  );
        SGetFldVar('S_STRING22'   , sOrdDate   );
        SGetFldVar('L_SEQNO1'     , iOrdseqno  );   //SGetFldVar('S_STRING23'   , iOrdseqno  );
        SGetFldVar('S_STRING24'   , sReaddate  );
        SGetFldVar('S_STRING25'   , sEryn      );
        SGetFldVar('L_SEQNO2'     , iPrtcnt    );   //SGetFldVar('S_STRING26'   , iPrtcnt    );
        SGetFldVar('S_STRING27'   , sCfmdate   );
        SGetFldVar('S_STRING28'   , sChadrNm   );
        SGetFldVar('S_STRING29'   , sLastrslt  );
        SGetFldVar('S_STRING30'   , sOrdrmk    );
        SGetFldVar('S_STRING31'   , sDiagname  );
        SGetFldVar('S_STRING32'   , sAge       );
        SGetFldVar('S_STRING33'   , sStatflag  );
        SGetFldVar('S_STRING34'   , sStatflag2 );
        txFree;
     end;

     MessageStr := GetTxMsg;   //��ȸ�Ǽ�
end;





//========================================================================================
// ����� �ǵ��׸�� ��ȸ...
// ���� -- 2002.12.10 �̰�ȭ
//         �˻��׸��߰�, �ǵ�Ȯ���Ͻ�(S_DATE2) sel�� �߰��� (���ǿ� �ǵ�Ȯ�����ڸ� from~to�� ����)
//========================================================================================
function HsrReadFilm.RsltPrntPatList(PatNo,CfmDate,Cfmdate_to,Meddept,Patsect,Wardno,PrtFlag,Examtype,PrtUser,Readdr,Examchk1,Examchk2,Examchk3,Examchk4,Examchk5,Examchk6,Examchk7:String):Integer;
var
    LocalFile : String;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_DATE1;S_DATE2;S_MEDDEPT;S_PATSECT;S_WARDNO;S_FLAG1;S_TYPE1;S_USERID1;S_CODE1;S_FLAG9;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7;S_CODE8');
    SetFldValue(0,[PatNo,CfmDate,Cfmdate_to,Meddept,Patsect,Wardno,PrtFlag,Examtype,PrtUser,Readdr,'EB1',Examchk1,Examchk2,Examchk3,Examchk4,Examchk5,Examchk6,Examchk7]);

    if (txGetFile('SR_RSLTPRT_L',LocalFile)) then
    begin
          Result := GetFldVarFile(LocalFile, '!@', '#$',
                                 [@sPatno,
                                  @sPatname,
                                  @sResno1,
                                  @sBirthDate,
                                  @sSex,
                                  @sExamCode,
                                  @sExamName,
                                  @sExTechNm,
                                  @sOrdDrNm ,
                                  @sPatsect,
                                  @sMedDept ,
                                  @sWardNo  ,
                                  @sRoomNo  ,
                                  @sComments,
                                  @sExecDate,
                                  @sRsltText,
                                  @sCfmDrNm,
                                  @sRdDr1Nm ,
                                  @sRdDr2Nm ,
                                  @sRdDr4Nm ,
                                  @sWriterNm,
                                  @sOrdDate ,
                                  @iOrdseqno,
                                  @sReaddate,
                                  @sEryn,
                                  @iPrtcnt,
                                  //@sRoomno,
                                  @sCfmdate,
                                  @sChadrNm,
                                  @sLastrslt,
                                  @sOrdrmk]);

    end;

    //txFree;
    MessageStr := GetTxMsg;
end;





/////////////////////////////////////////////////////////////////////////////
//      �Ű��ǵ� Class(HsrPhyRead)                                         //
/////////////////////////////////////////////////////////////////////////////

//==============================================================================
//
//==============================================================================
function HsrPhyRead.TReadDataList(ExecDate,PatNo,ExamType:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('EXECDATE;PATNO;S_TYPE');
    SetFldValue(0,[ExecDate,PatNo,ExamType]);
    if (txGetF('SR_TGREAD_LIST')) then begin
        proto_GetFldVar('PATNAME', sPatName);
        proto_GetFldVar('SOLGERNO',sSolgerNo);
        proto_GetFldVar('CASTENM', sCasteNm);
        proto_GetFldVar('FORCENM', sForceNm);
        proto_GetFldVar('RESNO',   sResNo);
        proto_GetFldVar('SEX',     sSex);
        proto_GetFldVar('PKGNAME', sPkgName);
        proto_GetFldVar('ORDDATE', sOrdDate);
        proto_GetFldVar('ORDSEQNO',iOrdSeqNo);
        proto_GetFldVar('L_SEQNO', iReadSeq);
        proto_GetFldVar('RGRPCODE',sRGrpCode);
        proto_GetFldVar('RSLTCODE',sRsltCode);        
        proto_GetFldVar('EXAMCODE',sExamCode);
        proto_GetFldVar('EXAMNAME',sExamName);
        proto_GetFldVar('EXAMSTAT',sExamStat);
        proto_GetFldVar('READDATE',sReadDate);
        proto_GetFldVar('READDR1', sReadDr1);
        proto_GetFldVar('EMPNAME1',sRdDr1Nm);
        proto_GetFldVar('MEDDEPT', sMedDept);
        proto_GetFldVar('ORDDR',   sOrdDr);
        proto_GetFldVar('EMPNAME2',sOrdDrNm);
        proto_GetFldVar('ADMDATE', sRcpDate);
        proto_GetFldVar('EXAMCNT', sExamCnt);
        proto_GetFldVar('DETAIL',  sComments);
        proto_GetFldVar('NORMYN',  sNormYN);
        proto_GetFldVar('RSLTTEXT',sRsltText);
        Result := GetRecordCnt('ORDDATE');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';

end;

//==============================================================================
//
//==============================================================================
function HsrPhyRead.TCfmDataList(ReadDr:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('READDR1');
    SetFldValue(0,[ReadDr]);
    if (txGetF('SR_TGCFM_LIST')) then begin
        proto_GetFldVar('PATNO',   sPatNo);
        proto_GetFldVar('PATNAME', sPatName);
        proto_GetFldVar('SOLGERNO',sSolgerNo);
        proto_GetFldVar('CASTENM', sCasteNm);
        proto_GetFldVar('FORCENM', sForceNm);
        proto_GetFldVar('RESNO',   sResNo);
        proto_GetFldVar('PKGNAME', sPkgName);
        proto_GetFldVar('ORDDATE', sOrdDate);
        proto_GetFldVar('ORDSEQNO',iOrdSeqNo);
        proto_GetFldVar('L_SEQNO', iReadSeq);
        proto_GetFldVar('RGRPCODE',sRGrpCode);
        proto_GetFldVar('RSLTCODE',sRsltCode);        
        proto_GetFldVar('EXAMCODE',sExamCode);
        proto_GetFldVar('EXAMNAME',sExamName);
        proto_GetFldVar('EXAMSTAT',sExamStat);
        proto_GetFldVar('EXECDATE',sExecDate);
        proto_GetFldVar('READDATE',sReadDate);        
        proto_GetFldVar('MEDDEPT', sMedDept);
        proto_GetFldVar('ORDDR',   sOrdDr);
        proto_GetFldVar('EMPNAME', sOrdDrNm);
        proto_GetFldVar('ADMDATE', sAdmDate);
        proto_GetFldVar('EXAMCNT', sExamCnt);
        proto_GetFldVar('DETAIL',  sComments);
        proto_GetFldVar('NORMYN',  sNormYN);
        proto_GetFldVar('RSLTTEXT',sRsltText);
        Result := GetRecordCnt('PATNO');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';

end;

//==============================================================================
//
//==============================================================================
function HsrPhyRead.TCfmChgDataList(ExecDate,PatNo,ReadDr:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('EXECDATE;PATNO;READDR1');
    SetFldValue(0,[ExecDate,PatNo,ReadDr]);
    if (txGetF('SR_TGCFMCH_LIST')) then begin
        proto_GetFldVar('PATNAME', sPatName);
        proto_GetFldVar('SOLGERNO',sSolgerNo);
        proto_GetFldVar('CASTENM', sCasteNm);
        proto_GetFldVar('FORCENM', sForceNm);
        proto_GetFldVar('RESNO',   sResNo);
        proto_GetFldVar('SEX',     sSex);
        proto_GetFldVar('PKGNAME', sPkgName);
        proto_GetFldVar('ORDDATE', sOrdDate);
        proto_GetFldVar('ORDSEQNO',iOrdSeqNo);
        proto_GetFldVar('L_SEQNO', iReadSeq);
        proto_GetFldVar('RGRPCODE',sRGrpCode);
        proto_GetFldVar('RSLTCODE',sRsltCode);
        proto_GetFldVar('EXAMCODE',sExamCode);
        proto_GetFldVar('EXAMNAME',sExamName);
        proto_GetFldVar('EXAMCNT', sExamCnt);
        proto_GetFldVar('EXAMSTAT',sExamStat);
        proto_GetFldVar('READDATE',sReadDate);
        proto_GetFldVar('CFMDATE', sCfmDate);
        proto_GetFldVar('CHGDATE', sChgDate);
        proto_GetFldVar('MEDDEPT', sMedDept);
        proto_GetFldVar('ORDDR',   sOrdDr);
        proto_GetFldVar('EMPNAME', sOrdDrNm);
        proto_GetFldVar('ADMDATE', sRcpDate);
        proto_GetFldVar('DETAIL',  sComments);
        proto_GetFldVar('NORMYN',  sNormYN);
        proto_GetFldVar('RSLTTEXT',sRsltText);
        Result := GetRecordCnt('EXAMCODE');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';

end;

//==============================================================================
//
//==============================================================================
function HsrPhyRead.ReadCPDataList(ExecDate,PkgCode:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('EXECDATE;PKGCODE');
    SetFldValue(0,[ExecDate,PkgCode]);
    if (txGetF('SR_GCPSTAT_SEL')) then begin
        proto_GetFldVar('EXECCNT', iExecCnt);
        proto_GetFldVar('CFMCNT',  iCfmCnt);
        proto_GetFldVar('NORMYCNT',iNormYCnt);
        proto_GetFldVar('NORMNCNT',iNormNCnt);
        Result := GetRecordCnt('EXECCNT');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';

end;

//==============================================================================
//
//==============================================================================
function HsrPhyRead.NotReadList(ExecDate,PkgCode,ExamType:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('EXECDATE;PKGCODE;S_TYPE');
    SetFldValue(0,[ExecDate,PkgCode,ExamType]);
    if (txGetF('SR_GNOTRED_LIST')) then begin
        proto_GetFldVar('EXAMCODE',sExamCode);
        proto_GetFldVar('EXAMNAME',sExamName);
        proto_GetFldVar('EXAMCNT', sExamCnt);
        proto_GetFldVar('PATNO',   sPatNo);
        proto_GetFldVar('ADMDATE', sAdmDate);
        proto_GetFldVar('MEDDEPT', sMedDept);
        proto_GetFldVar('PATNAME', sPatName);
        proto_GetFldVar('SOLGERNO',sSolgerNo);
        proto_GetFldVar('CASTENM', sCasteNm);
        proto_GetFldVar('FORCENM', sForceNm);
        proto_GetFldVar('RESNO',   sResNo);
        proto_GetFldVar('ORDDR',   sOrdDr);
        proto_GetFldVar('EMPNAME', sOrdDrNm);
        Result := GetRecordCnt('EXAMCODE');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';

end;

//==============================================================================
//
//==============================================================================
function HsrPhyRead.TReadCPDataList(ExecDate,PkgCode,SortKey:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('EXECDATE;PKGCODE;SORTKEY');
    SetFldValue(0,[ExecDate,PkgCode,SortKey]);
    if (txGetF('SR_TGCPRED_LIST')) then begin
        proto_GetFldVar('PATNO',   sPatNo);
        proto_GetFldVar('PATNAME', sPatName);
        proto_GetFldVar('SOLGERNO',sSolgerNo);
        proto_GetFldVar('CASTENM', sCasteNm);
        proto_GetFldVar('FORCENM', sForceNm);
        proto_GetFldVar('RESNO',   sResNo);
        proto_GetFldVar('ORDDATE', sOrdDate);
        proto_GetFldVar('L_CNT',   iFilmNo);
        proto_GetFldVar('ORDSEQNO',iOrdSeqNo);
        proto_GetFldVar('ADMDATE', sRcpDate);
        proto_GetFldVar('EXAMSTAT',sExamStat);
        proto_GetFldVar('READDATE',sReadDate);
        proto_GetFldVar('READDR1', sReadDr1);
        proto_GetFldVar('EMPNAME', sRdDr1Nm);
        proto_GetFldVar('NORMYN',  sNormYN);
        proto_GetFldVar('RSLTTEXT',sRsltText);
        Result := GetRecordCnt('PATNO');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';

end;

//==============================================================================
//
//==============================================================================
function HsrPhyRead.ReadUpdate(ReadDate,ReadDr,Flag:String;Cnt:Integer):Integer;
//\\\var
//\\\    i : Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('PATNO;ORDDATE;READDATE;READDR1;FLAG;NORMYN;RSLTTEXT;ORDSEQNO');
    for i := 0 to Cnt - 1 do begin
        SetFldValue(i,[String(sPatNo[i]),String(sOrdDate[i]),ReadDate,ReadDr,
                       Flag,String(sNormYN[i]),String(sRsltText[i]),
                       Integer(iOrdSeqNo[i])]);
    end;
    if (txPutF('SR_GREADDT_UP')) then begin
        Result := 1;
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 1;
    MessageStr := '���������� �����Ͽ����ϴ�';
end;

//==============================================================================
//
//==============================================================================
function HsrPhyRead.CfmUpdate(CfmDr,RsltText,Userid:String;Cnt:Integer):Integer;
var
    i : Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_DR1;S_DR2;S_DR3;S_RSLTTEXT;S_EDITID');
    SetFldValue(0,[CfmDr,RsltText,G_USERID]);

    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE');

    for i := 0 to Cnt - 1 do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]),String(sPatNo[i]),String(sOrdDate[i])]);
    end;

    if (txPutF('SR_CFM_U')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrPhyRead.CfmChgUpdate(ChgDate:String;Cnt:Integer):Integer;
//\\\var
//\\\    i : Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('PATNO;ORDDATE;CHGDATE;NORMYN;RSLTTEXT;ORDSEQNO');
    for i := 0 to Cnt - 1 do begin
        SetFldValue(i,[String(sPatNo[i]),String(sOrdDate[i]),ChgDate,
                       String(sNormYN[i]),String(sRsltText[i]),
                       Integer(iOrdSeqNo[i])]);
    end;
    if (txPutF('SR_GCFMCHGDT_UP')) then begin
        Result := 1;
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 1;
    MessageStr := '���������� �����Ͽ����ϴ�';
end;

//==============================================================================
//
//==============================================================================
function HsrPhyRead.CfmCPUpdate(ExecDate,PkgCode,ReadDr,CfmDate:String;ReadCnt
  :Integer):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('EXECDATE;PKGCODE;READDR1;CFMDATE;READCNT');
    SetFldValue(0,[ExecDate,PkgCode,ReadDr,CfmDate,ReadCnt]);
    if (txPutF('SR_GCPCFMDT_UP')) then begin
        Result := 1;
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 1;
    MessageStr := '���������� �����Ͽ����ϴ�';
end;

///////////////////////////////////////////////////////////////////////////////
//      �ʸ� class(HsrFilm) Member Method                                    //
///////////////////////////////////////////////////////////////////////////////


// �ʸ� ������ ������ ����
//==============================================================================
//
//==============================================================================
function HsrFilm.FilmMasterCreation(spatno,sexamtype,slstdate,sfstdate,sTelno1,sTelno2,sSuyn: String): Integer;
begin
    Result := -1;
    txAlloc;

    SetFldName('S_PATNO;S_TYPE1;S_DATETIME1;S_DATETIME2;S_NUMVAL1;S_NUMVAL2;S_YN1');
    SetFldValue(0,[spatno,sexamtype,slstdate,sfstdate,sTelno1,sTelno2,sSuyn]);

    if (txPutF('SR_FILMMT_I1')) then
    begin
        Result := 1;
    
       txFree;
    end;

    MessageStr := GetTxMsg;
end;



//==============================================================================
//
//==============================================================================
function HsrFilm.FilmTypeCheck():Integer;
begin
    Result := -1;
    txAlloc;

    if (txGetF('SR_FILMSAVE_L')) then
    begin
       GetFldVar('S_TYPE1',  sExamType);
       GetFldVar('S_NAME1',  sTypeName);
       Result := GetRecordCnt('S_TYPE1');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �ʸ�������� Ȯ��
//==============================================================================
function HsrFilm.FilmOutCheck(PatNo,ExamType:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;S_FLAG9');
    SetFldValue(0,[PatNo,ExamType,'EB1']);

    if (txGetF('SR_FILMOUT_S1')) then   // sr_filmout_s1.pc
    begin
       GetFldVar('S_DATE1',  sLstDate);
       GetFldVar('S_DATE2',  sOutDate);
       GetFldVar('S_MEDDEPT',sOutDept);
       GetFldVar('S_DATE3',  sFstDate);
       GetFldVar('S_STRING1',sCurLoc);
       GetFldVar('S_NO1',    sTel1);
       GetFldVar('S_NO2',    sTel2);
       GetFldVar('S_YN1',    sSuyn);
       GetFldVar('S_USERID1',sOutid);
       GetFldVar('S_USERNAME1',sOutname);
       GetFldVar('S_TYPE1',   sUsetypenm);
       GetFldVar('S_STRING2', sOutDeptNm);
       GetFldVar('S_STRING3', sFilmName);
       GetFldVar('S_STRING4', sReqDate);
       GetFldVar('S_STRING5', sSeqNo);
       Result := GetRecordCnt('S_DATE1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �ʸ�������� Ȯ��
//==============================================================================
function HsrFilm.FilmOutCheck2(PatNo,sFromDate:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;');
    SetFldValue(0,[PatNo,sFromDate]);

    if (txGetF('SR_FILMOUT_S2')) then  // sr_filmout_s2.pc
    begin
       GetFldVar('S_DATE1',  sLstDate);
       GetFldVar('S_DATE2',  sOutDate);
       GetFldVar('S_MEDDEPT',sOutDept);
       GetFldVar('S_DATE3',  sFstDate);
       GetFldVar('S_STRING1',sCurLoc);
       GetFldVar('S_NO1',    sTel1);
       GetFldVar('S_NO2',    sTel2);
       GetFldVar('S_YN1',    sSuyn);
       GetFldVar('S_USERID1',sOutid);
       GetFldVar('S_USERNAME1',sOutname);
       GetFldVar('S_TYPE1',   sUsetypenm);
       GetFldVar('S_STRING2', sOutDeptNm);
       GetFldVar('S_STRING3', sFilmName);
       GetFldVar('S_STRING4', sReqDate);
       GetFldVar('S_STRING5', sSeqNo);
       GetFldVar('S_STRING6', sBarcodeYn);         //���ڵ� ��¿��� �������� �缮�� �߰�(2004.12.02)

       GetFldVar('S_STRING7', sPatname);
       GetFldVar('S_STRING8', sPatno);
       GetFldVar('S_STRING9', sSex);
       GetFldVar('S_STRING10', sDeptCd);

       Result := GetRecordCnt('S_DATE1');

       txFree;
    end;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrFilm.FilmOutInsert(PatNo,OutDept,OutID,ReqID,UseType,RtnWDate,TelNo,
  OutDate,ExamType:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('PATNO;OUTDEPT;OUTID;REQID;USETYPE;RTNWDATE;TELNO;OUTDATE;S_TYPE');
    SetFldValue(0,[PatNo,OutDept,OutID,ReqID,UseType,RtnWDate,TelNo,OutDate,ExamType]);
    if (txPutF('SR_FILMOUT_INS')) then begin
        Result := 1;
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 1;
    MessageStr := '���������� ����Ͽ����ϴ�';
end;

//==============================================================================
//
//==============================================================================
function HsrFilm.FilmOutUpdate(PatNo,ExamType,ReqDate,OutRegid:String;SeqNo:Integer):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;S_DATE1;L_SEQNO1;S_EDITID;S_EDITIP;S_FLAG9');
    SetFldValue(0,[PatNo,ExamType,ReqDate,SeqNo,OutRegid,GetIP,'EB1']);

    if (txPutF('SR_FILMOUT_U')) then    //sr_filmout_u.pc
    begin
        GetFldVar('L_SEQNO1',   iSeqNo);    //����
        GetFldVar('S_PATNO',    sPatNo);    //ȯ�ڹ�ȣ
//        GetFldVar('S_FLAG1',    sExamType); //�˻�з�
        GetFldVar('S_DATE1',    sReqDate);  //��û�������
        GetFldVar('S_MEDDEPT',  sOutDept);  //����μ�(�����)��
        GetFldVar('S_USERID1',  sReqID);    //��û��ID
        GetFldVar('S_USERNAME1',sReqName);  //��û�ڸ�
        GetFldVar('S_USERNAME2',sOutName);  //�����ڸ�
        GetFldVar('S_TYPE2',    sUseType);  //����뵵
        GetFldVar('S_DATE4',    sOutDate);  //�����Ͻ�
        GetFldVar('S_DATE5',    sRtnDate);  //�ݳ��Ͻ�
        GetFldVar('S_STRING1',  sFilmName); //�ʸ�����
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//�����
//==============================================================================
// �ʸ� ���޴��� ����.
//==============================================================================
function HsrFilm.FilmOutDelete(PatNo,ExamType,ReqDate,UserId:String;SeqNo:Integer):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;S_DATE1;L_SEQNO1;S_EDITID;S_EDITIP');
    SetFldValue(0,[PatNo,ExamType,ReqDate,SeqNo,G_USERID,GetIP]);

    if (txPutF('SR_FILMOUT_D')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//�ʸ�������Ȳ  �����
//==============================================================================
//
//==============================================================================
function HsrFilm.FilmOutList(OutDate,OutDept,ExamType:String):Integer;
//\\\var
//\\\    d_tmp : TDateTime;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_DATE1;S_CODE1;S_TYPE1;S_FLAG9');
    SetFldValue(0,[OutDate,OutDept,ExamType,'EB1']);

    if (txGetF('SR_FILMOUT_L1')) then
    begin
        GetFldVar('S_PATNO',    sPatNo);    //ȯ�ڹ�ȣ
        GetFldVar('S_PATNAME',  sPatName);  //ȯ�ڸ�
        GetFldVar('S_MEDDEPT',  sOutDept);  //����μ�(�����)��
        GetFldVar('S_USERNAME1',sReqName);  //��û�ڸ�
        GetFldVar('S_USERNAME2',sOutName);  //�����ڸ�
        GetFldVar('S_DATE2',    sOutDate);  //��������
        GetFldVar('S_DATE3',    sRtnDate);  //�ݳ�����
        GetFldVar('S_TYPE2',    sExamType); //�˻�з�
        GetFldVar('S_DATE4',    sReqWDate); //�����������
        GetFldVar('L_SEQNO1',   iSeqNo);    //����
        GetFldVar('S_STRING1',  sFilmName); //�ʸ��̸�
        Result := GetRecordCnt('S_PATNO');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//============================================================================================
//  2003.4.30 �̰�ȭ -- �ʸ���û������ ��ȸ�Ͽ� ����,�ݳ��� ���� ���� �׸� ���Ͽ� ����ó��
//============================================================================================
//function HsrFilm.SelectAllOutUpdate(PatNo,ExamType,ReqDate,Outdept,OutRegid:String;SeqNo,Cnt:Integer):Integer;
function HsrFilm.SelectAllOutUpdate(Outdept,OutRegid:String;Cnt:Integer):Integer;
var i: Integer;
begin
    Result := -1;
    txAlloc;

    SetFldName('S_TEXT1;S_TEXT2;S_TEXT3;S_TEXT4');
    SetFldValue(0,[Outdept,OutRegid,G_Userid,G_Userip]);


    SetFldName('S_PATNO;S_TYPE1;S_DATE1;L_SEQNO1');
    for i:=0 to Cnt-1 do
    begin
       SetFldValue(i,[String(sPatNo[i]),String(sExamType[i]),String(sReqDate[i]),Integer(sSeqNo[i])]);
    end;


    if (txPutF('SR_ALOUT_U')) then
    begin
        GetFldVar('L_SEQNO1',   iSeqNo);    //����
        GetFldVar('S_PATNO',    sPatNo);    //ȯ�ڹ�ȣ
        GetFldVar('S_DATE1',    sReqDate);  //��û�������
        GetFldVar('S_MEDDEPT',  sOutDept);  //����μ�(�����)��
        GetFldVar('S_USERID1',  sReqID);    //��û��ID
        GetFldVar('S_USERNAME1',sReqName);  //��û�ڸ�
        GetFldVar('S_USERNAME2',sOutName);  //�����ڸ�
        GetFldVar('S_TYPE2',    sUseType);  //����뵵
        GetFldVar('S_DATE4',    sOutDate);  //�����Ͻ�
        GetFldVar('S_DATE5',    sRtnDate);  //�ݳ��Ͻ�
        GetFldVar('S_STRING1',  sFilmName); //�ʸ�����
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;




//==============================================================================
// 2003.4.29 �̰�ȭ -- �ʸ���û���ں� ��ȸ
//==============================================================================
function HsrFilm.FilmReqList(ReqDate,MedDept,ExamType:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_DATE1;S_CODE1;S_TYPE1;S_FLAG9');
    SetFldValue(0,[ReqDate,MedDept,ExamType,'EB1']);

    if (txGetF('SR_REQDEPT_L5')) then
    begin
        GetFldVar('S_PATNO',    sPatNo);    //ȯ�ڹ�ȣ
        GetFldVar('S_PATNAME',  sPatName);  //ȯ�ڸ�
        GetFldVar('S_MEDDEPT',  sOutDept);  //����μ�(�����)��
        GetFldVar('S_USERNAME1',sReqName);  //��û�ڸ�
        GetFldVar('S_USERNAME2',sOutName);  //�����ڸ�
        GetFldVar('S_DATE2',    sOutDate);  //��������
        GetFldVar('S_DATE3',    sRtnDate);  //�ݳ�����
        GetFldVar('S_TYPE2',    sExamType); //�˻�з�
        GetFldVar('S_DATE4',    sReqWDate); //�����������
        GetFldVar('L_SEQNO1',   iSeqNo);    //����
        GetFldVar('S_STRING1',  sFilmName); //�ʸ��̸�
        Result := GetRecordCnt('S_PATNO');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
//�ʸ��ݳ���� ���.2002.01.09. ������
{
S_PATNO,   0, sPatno);
S_TYPE1,   0, sExamtype);
S_DATE1,   0, sReqdate);
L_SEQNO1,  0, &lSeqno);
S_EDITID,  0, sEditid);
S_EDITIP,  0, sEditip);
S_FLAG9,   0, IsLocate);
}
//==============================================================================
{function HsrFilm.FilmRtnDel(Patno,ExamType,ReqDate:String;Seqno:Integer):Integer;
//\\\var
//\\\    d_tmp : TDateTime;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;S_DATE1;L_SEQNO1;S_EDITID;S_EDITIP;SFLAG9');
    SetFldValue(0,[Patno,Examtype,ReqDate,integer(Seqno),G_USERID,G_USERIP,'EB1']);


    if (txPutF('SR_FILMRTN_D')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;
}
//==============================================================================
// 2003.3.11 �̰�ȭ --�ʸ��ݳ����� (�ݳ����߰�)  �α��ξ��̵� ������.
//==============================================================================
function HsrFilm.FilmRtnDel(Patno,ExamType,ReqDate,Rtnid:String;Seqno:Integer):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;S_DATE1;L_SEQNO1;S_EDITID;S_EDITIP;SFLAG9');
    SetFldValue(0,[Patno,Examtype,ReqDate,integer(Seqno),Rtnid,G_USERIP,'EB1']);

    if (txPutF('SR_FILMRTN_D')) then
    begin
        Result := 1;

       txFree;
    end;

    MessageStr := GetTxMsg;
end;


//==============================================================================
//�ʸ��ݳ���Ȳ  �����
//==============================================================================
function HsrFilm.FilmRtnList(PatNo,OutDate,OutDept,ExamType:String):Integer;
//\\\var
//\\\    d_tmp : TDateTime;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_DATE1;S_CODE1;S_TYPE1;S_FLAG9');
    SetFldValue(0,[PatNo,OutDate,OutDept,ExamType,'EB1']);

    if (txGetF('SR_FILMRTN_L1')) then
    begin
        GetFldVar('S_PATNO',    sPatNo);    //ȯ�ڹ�ȣ
        GetFldVar('S_PATNAME',  sPatName);  //ȯ�ڸ�
        GetFldVar('S_MEDDEPT',  sOutDept);  //����μ�(�����)��
        GetFldVar('S_USERNAME1',sReqName);  //��û�ڸ�
        GetFldVar('S_USERNAME2',sOutName);  //�����ڸ�
        GetFldVar('S_DATE2',    sOutDate);  //��������
        GetFldVar('S_DATE3',    sRtnDate);  //�ݳ�����
        GetFldVar('S_TYPE2',    sExamType); //�˻�з�
        GetFldVar('S_DATE4',    sReqWDate); //�����������
        GetFldVar('L_SEQNO1',   iSeqNo);    //����
        GetFldVar('S_USERNAME3',sRtnregidname);  //����ݳ� ����ڸ�
        GetFldVar('S_STRING1',  sFilmName);  //�ʸ��̸�

        Result := GetRecordCnt('S_PATNO');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//������� ������Ȳ �����
//==============================================================================
function HsrFilm.FilmOutQuery(FromDate,Todate,ExamType:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROM1;S_TO1;S_TYPE1');
    SetFldValue(0,[FromDate,ToDate,ExamType]);

    if (txGetF('SR_FILMDTOUT_L')) then
    begin
        GetFldVar('S_MEDDEPT',  sOutDept);  //����μ�(�����)�ڵ�
//        GetFldVar('OUTDEPT',    sDeptName);     //����μ�(�����)��
        GetFldVar('L_CNT1',     iFoutCnt); //����Ǽ�
        GetFldVar('L_CNT2',     iFrtnCnt); //�ݳ��Ǽ�
        Result := GetRecordCnt('S_MEDDEPT');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

{
//==============================================================================
// �ʸ��ݳ���� ��ȸ...
//==============================================================================
function HsrFilm.FilmReturnUpdate(PatNo,ExamType,UserId,ReqDate,SeqNo:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;S_EDITID;S_EDITIP;S_FLAG9;S_STRING1;S_STRING2');
    SetFldValue(0,[PatNo,ExamType,G_USERID,GetIP,'EB1',ReqDate,SeqNo]);

    if (txPutF('SR_FILMRTN_U')) then
    begin
        GetFldVar('S_PATNO',    sPatNo);    //ȯ�ڹ�ȣ
        GetFldVar('S_MEDDEPT',  sOutDept);  //����μ�(�����)��
        GetFldVar('S_USERNAME1',sReqName);  //��û�ڸ�
        GetFldVar('S_USERNAME2',sOutName);  //�����ڸ�
        GetFldVar('S_DATE4',    sOutDate);  //��������
        GetFldVar('S_DATE5',    sRtnDate);  //�ݳ�����
        GetFldVar('S_TYPE2',    sExamType); //�˻�з�
        GetFldVar('S_DATE1',    sReqWDate); //�����������
        GetFldVar('L_SEQNO1',   iSeqNo);    //����
        GetFldVar('S_USERNAME3',sRtnregidname);  //�ݳ�����ڸ�
        GetFldVar('S_STRING1',sFilmName);  //�ʸ� �̸�

        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;
}
//==============================================================================
// �ʸ��ݳ���� ��ȸ...
// 2003.3.11 �̰�ȭ -- �ʸ��ݳ��ڵ��(�α��ξ��̵� ������)
//==============================================================================
function HsrFilm.FilmReturnUpdate(PatNo,ExamType,UserId,ReqDate,SeqNo:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;S_EDITID;S_EDITIP;S_FLAG9;S_STRING1;S_STRING2');
    SetFldValue(0,[PatNo,ExamType,UserId,GetIP,'EB1',ReqDate,SeqNo]);

    if (txPutF('SR_FILMRTN_U')) then
    begin
        GetFldVar('S_PATNO',    sPatNo);    //ȯ�ڹ�ȣ
        GetFldVar('S_MEDDEPT',  sOutDept);  //����μ�(�����)��
        GetFldVar('S_USERNAME1',sReqName);  //��û�ڸ�
        GetFldVar('S_USERNAME2',sOutName);  //�����ڸ�
        GetFldVar('S_DATE4',    sOutDate);  //��������
        GetFldVar('S_DATE5',    sRtnDate);  //�ݳ�����
        GetFldVar('S_TYPE2',    sExamType); //�˻�з�
        GetFldVar('S_DATE1',    sReqWDate); //�����������
        GetFldVar('L_SEQNO1',   iSeqNo);    //����
        GetFldVar('S_USERNAME3',sRtnregidname);  //�ݳ�����ڸ�
        GetFldVar('S_STRING1',sFilmName);  //�ʸ� �̸�

        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;




//==============================================================================
// �ʸ� �̹ݳ� ��Ȳ ��ȸ...
//==============================================================================
function HsrFilm.FilmNotReturnList(FromDate,ToDate,OutDept,ExamType:String):Integer;
//\\\var
//\\\    d_tmp : TDateTime;
begin
    Result := -1;
    txAlloc32;
    SetFldName32('S_FROM1;S_TO1;S_MEDDEPT;S_TYPE1;S_FLAG9');
    SetFldValue32(0,[FromDate,ToDate,OutDept,ExamType,'EB1']);

    if (txGetF32('SR_FNOTRTN_L1')) then
    begin
        GetFldVar32('S_PATNO',    sPatNo);    //ȯ�ڹ�ȣ
        GetFldVar32('S_PATNAME',  sPatName);  //ȯ�ڸ�
        GetFldVar32('S_MEDDEPT',  sOutDept);  //����μ�(�����)��
        GetFldVar32('S_USERNAME1',sReqName);  //��û�ڸ�
        GetFldVar32('S_USERNAME2',sOutName);  //�����ڸ�
        GetFldVar32('S_DATE1',    sOutDate);  //�����Ͻ�
        GetFldVar32('S_DATE2',    sRtnWDate); //�ݳ���������
        GetFldVar32('S_TELNO',    sTelNo);    //����ó
        GetFldVar32('S_TYPE1',    sUseType);  //����뵵
        GetFldVar32('S_STRING1',  sFilmName); //�ʸ��̸�
        Result := GetRecordCnt32('S_PATNO');
    
       txFree32;
    end;

    //txFree32;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrFilm.FilmMasterSelect(PatNo,ExamType:String):Integer;
var
   tmpdate: TDateTime;
begin
     GetSysDate(tmpdate);
{
    Result := -1;
    txAlloc;
    SetFldName('PATNO;S_TYPE');
    SetFldValue(0,[PatNo,ExamType]);
    if (txGetF('SR_FILMMST_SEL')) then begin
        proto_GetFldVar('FSTDATE',sFstDate);
        proto_GetFldVar('LSTDATE',sLstDate);
        proto_GetFldVar('FILMTYPE',sFilmType);
        proto_GetFldVar('OUTDEPT',sOutDept);
        proto_GetFldVar('OUTDATE',sOutDate);
//        proto_GetFldVar('S_DATE', sTrnsDate);
        Result := GetRecordCnt('FSTDATE');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    result := 0;

    if Patno = '01234567' then
    begin
        inc(Result);
        pr_GetFldVar(sFstDate ,FormatDateTime('YYYYMMDD HHNNSS',tmpdate - 10));
        pr_GetFldVar(sLstDate ,FormatDateTime('YYYYMMDD HHNNSS',tmpdate - 2));
        pr_GetFldVar(sFilmType,'0');
        pr_GetFldVar(sOutDept ,'OS');
        pr_GetFldVar(sOutDate ,FormatDateTime('YYYYMMDD HHNNSS',tmpdate - 1));
//        pr_GetFldVar(sTrnsDate,'');
    end;

    if Patno = '11111111' then
    begin
        inc(Result);
        pr_GetFldVar(sFstDate ,FormatDateTime('YYYYMMDD HHNNSS',tmpdate - 30));
        pr_GetFldVar(sLstDate ,FormatDateTime('YYYYMMDD HHNNSS',tmpdate - 30));
        pr_GetFldVar(sFilmType,'1');
        pr_GetFldVar(sOutDept ,'');
        pr_GetFldVar(sOutDate ,'');
//        pr_GetFldVar(sTrnsDate,'');
    end;

    if Patno = '22222222' then
    begin
        inc(Result);
        pr_GetFldVar(sFstDate ,FormatDateTime('YYYYMMDD HHNNSS',tmpdate - 1));
        pr_GetFldVar(sLstDate ,FormatDateTime('YYYYMMDD HHNNSS',tmpdate - 1));
        pr_GetFldVar(sFilmType,'2');
        pr_GetFldVar(sOutDept ,'');
        pr_GetFldVar(sOutDate ,'');
//        pr_GetFldVar(sTrnsDate,'');
    end;


    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';

end;

//==============================================================================
// �ʸ����� �̷� ��ȸ...
//==============================================================================
function HsrFilm.FilmHistoryList(PatNo,ExamType:String):Integer;
begin
    Result := -1;
    txAlloc32;
    SetFldName32('S_PATNO;S_TYPE1;S_FLAG9');
    SetFldValue32(0,[PatNo,ExamType,'EB1']);

    if (txGetF32('SR_FOUTHIS_L1')) then
    begin
{
        PUT (S_STRING1,     iy, sFilmtype[iy]);
        PUT (S_MEDDEPT,     iy, sOutdept[iy]);
        PUT (S_DATE1,       iy, tOutdate[iy]);
        PUT (S_USERNAME2,   iy, sOutregname[iy]);
        PUT (S_DATE3,       iy, tRtndate[iy]);
        PUT (S_USERNAME3,   iy, sRtnregname[iy]);
        PUT (S_TYPE2,       iy, sUsetype[iy]);
        PUT (S_USERNAME1,   iy, sReqname[iy]);
        PUT (S_DATE2,       iy, tRntwdate[iy]);
        PUT (S_TELNO,       iy, sTelno[iy]);
        PUT (L_SEQNO1,      iy, &lSeqno[iy]);
        PUT (S_DATE4,       iy, tReqdate[iy]);
}

        GetFldVar32('S_STRING1',  sFilmType);
        GetFldVar32('S_MEDDEPT',  sOutDept);    //����μ�
        GetFldVar32('S_DATE1',    sOutDate);    //�����Ͻ� yyyymmddhh24miss
        GetFldVar32('S_USERNAME2',sOutName);    //�����ڸ�
        GetFldVar32('S_DATE3',    sRtnDate);    //�ݳ��Ͻ� yyyymmddhh24miss
        GetFldVar32('S_USERNAME3',sRtnregidname);    //�ݳ�����ڸ�
        GetFldVar32('S_TYPE2',    sUseType);    //����뵵
        GetFldVar32('S_USERNAME1',sReqName);    //��û�ڸ�
        GetFldVar32('S_DATE2',    sRtnWDate);   //�ݳ���������
        GetFldVar32('S_TELNO',    sTelNo);      //����ó
        GetFldVar32('S_DATE4',    sReqdate);
        GetFldVar32('L_SEQNO1',   lSeqno);
        GetFldVar32('S_STRING2',  sFilmName);
        GetFldVar32('S_STRING3',  sSeqNo);

        Result := GetRecordCnt32('S_MEDDEPT');

       txFree32;
    end;

    //txFree32;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// 2003.9.19 �̰�ȭ -- �ܷ����ฮ��Ʈ
//==============================================================================
function HsrFilm.Medirsvlist(Frdate, Todate: String):Integer;
begin
    Result := -1;
    txAlloc32;
    SetFldName32('S_DATE1;S_DATE2');
    SetFldValue32(0,[Frdate, Todate]);

    if (txGetF32('SR_RSVFILM_L1')) then
    begin
        //GetFldVar32('S_STRING1',  sMeddate  );  // �˻�����
        GetFldVar32('S_STRING2',  sPatno    );  // ȯ�ڹ�ȣ
        GetFldVar32('S_STRING3',  sMeddept  );  // �����
        GetFldVar32('S_STRING4',  sPatname  );  // ȯ�ڸ�
        GetFldVar32('S_STRING5',  sFilmName );  // �ʸ�����
        GetFldVar32('S_STRING6',  sModality );  // Modality
        //GetFldVar32('S_STRING6',  sOrdname  );  // ó���

        Result := GetRecordCnt32('S_STRING2');

       txFree32;
    end;

    MessageStr := GetTxMsg;
end;

//==============================================================================
// 2003.10.28 �̰�ȭ -- �ܷ��������ں� �ǵ���󸮽�Ʈ
//==============================================================================
function HsrFilm.Medirsvlist1(Frdate, Todate: String):Integer;
begin
    Result := -1;
    txAlloc32;
    SetFldName32('S_DATE1;S_DATE2');
    SetFldValue32(0,[Frdate, Todate]);

    if (txGetF32('SR_RSVFILM_L2')) then     // sr_rsvfilm_l2.pc
    begin
        GetFldVar32('S_STRING1',  sExecdate  );  // �˻�����
        GetFldVar32('S_STRING2',  sPatno    );  // ȯ�ڹ�ȣ
        GetFldVar32('S_STRING3',  sMeddept  );  // �����
        GetFldVar32('S_STRING4',  sPatname  );  // ȯ�ڸ�
        //GetFldVar32('S_STRING5',  sFilmName );  // �ʸ�����
        GetFldVar32('S_STRING5',  sModality );  // Modality

        Result := GetRecordCnt32('S_STRING1');

       txFree32;
    end;

    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrFilm.OutFilmMasterSelect(PatNo:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('PATNO');
    SetFldValue(0,[PatNo]);
    if (txGetF('SR_OUTFMT_LIST')) then begin
        proto_GetFldVar('L_SEQNO', iFilmNo);
        proto_GetFldVar('FILMTYPE',sFilmType);
        proto_GetFldVar('MEDDEPT', sOutDept);
        proto_GetFldVar('HOSNAME', sHosName);
        Result := GetRecordCnt('L_SEQNO');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';

end;

//==============================================================================
//
//==============================================================================
function HsrFilm.OutFilmDetailSelect(FilmNo:Integer):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO');
    SetFldValue(0,[FilmNo]);
    if (txGetF('SR_OUTFDT_LIST')) then begin
        proto_GetFldVar('SEQNO',   iSeqNo);
        proto_GetFldVar('INDATE',  sIndate);
        proto_GetFldVar('OUTDATE', sOutDate);
        proto_GetFldVar('COMMENTS',sComments);
        Result := GetRecordCnt('SEQNO');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';

end;

//==============================================================================
//
//==============================================================================
function HsrFilm.OutFilmQuery(FromDate,Todate,Flag:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('FROMDATE;TODATE;FLAG');
    SetFldValue(0,[FromDate,Todate,Flag]);
    if (txGetF('SR_OUTFIO_LIST')) then begin
        proto_GetFldVar('INDATE',  sInDate);
        proto_GetFldVar('OUTDATE', sOutDate);
        proto_GetFldVar('L_SEQNO', iFilmNo);
        proto_GetFldVar('PATNAME', sPatName);
        proto_GetFldVar('FILMTYPE',sFilmType);
        proto_GetFldVar('MEDDEPT', sOutDept);
        proto_GetFldVar('HOSNAME', sHosName);
        proto_GetFldVar('COMMENTS',sComments);
        Result := GetRecordCnt('INDATE');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';

end;

//==============================================================================
//
//==============================================================================
function HsrFilm.OutFilmMtInsert(PatNo,MedDept,FilmType,HosName:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('PATNO;MEDDEPT;FILMTYPE;HOSNAME');
    SetFldValue(0,[PatNo,MedDept,FilmType,HosName]);
    if (txPutF('SR_OUTFMT_INS')) then begin
        proto_GetFldVar('SEQNO',iFilmNo);
        Result := 1;
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 1;
    pr_GetFldVar(iFilmNo, '1');
    MessageStr := '���������� ����Ͽ����ϴ�';
end;

//==============================================================================
//
//==============================================================================
function HsrFilm.OutFilmDtInsert(FilmNo:Integer):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO');
    SetFldValue(0,[FilmNo]);
    if (txPutF('SR_OUTFDT_INS')) then begin
        Result := 1;
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 1;
    MessageStr := '���������� ����Ͽ����ϴ�';
end;

//==============================================================================
//
//==============================================================================
function HsrFilm.OutFilmDtUpdate(FilmNo,SeqNo:Integer;OutDate,Comments:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO;SEQNO;OUTDATE;COMMENTS');
    SetFldValue(0,[FilmNo,SeqNo,OutDate,Comments]);
    if (txPutF('SR_OUTFDT_UP')) then begin
        Result := 1;
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 1;
    MessageStr := '���������� �����Ͽ����ϴ�';
end;

//==============================================================================
// �ʸ����� ��û ��Ȳ ��ȸ...
//==============================================================================
function HsrFilm.ReqFilmList1(Patno,OutDate,MedDept,ExamType:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_DATE5;S_CODE1;S_TYPE1;S_FLAG9');
    SetFldValue(0,[Patno,OutDate,MedDept,ExamType,'EB1']);

    if (txGetF('SR_REQDEPT_L1')) then
    begin
        GetFldVar('S_PATNO',    sPatNo);    //ȯ�ڹ�ȣ
        GetFldVar('S_PATNAME',  sPatName);  //ȯ�ڸ�
        GetFldVar('S_DATE1',    sReqWDate); //�����������
        GetFldVar('S_DATE2',    sReqDate);  //��û�������
        GetFldVar('L_SEQNO1',   iSeqNo);    //����
        GetFldVar('S_USERID1',  sReqID);    //��û��ID
        GetFldVar('S_USERNAME1',sReqName);  //��û�ڸ�
        GetFldVar('S_MEDDEPT',  sOutDept);  //����μ�(�����)��
        GetFldVar('S_TYPE1',    sUseType);  //����뵵
        GetFldVar('S_DATE3',    sOutDate);  //��������
        GetFldVar('S_DATE4',    sRtnDate);  //�ݳ�����
        GetFldVar('S_FLAG2',    sExamType); //�˻�з�
        GetFldVar('S_STRING1',  sFilmName); //�ʸ��̸�

        Result := GetRecordCnt('S_PATNO');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//�����
//==============================================================================
//
//==============================================================================
function HsrFilm.ReqFilmList2(PatNo,ExamType:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;S_FLAG9');
    SetFldValue(0,[PatNo,ExamType,'EB1']);

    if (txGetF('SR_REQDEPT_L2')) then    // sr_reqdept_l2.pc
    begin
        GetFldVar('S_PATNO',    sPatNo);    //ȯ�ڹ�ȣ
        GetFldVar('S_PATNAME',  sPatName);  //ȯ�ڸ�
        GetFldVar('S_DATE1',    sReqWDate); //�����������
        GetFldVar('S_DATE2',    sReqDate);  //��û�������
        GetFldVar('L_SEQNO1',   iSeqNo);    //����
        GetFldVar('S_USERID1',  sReqID);    //��û��ID
        GetFldVar('S_USERNAME1',sReqName);  //��û�ڸ�
        GetFldVar('S_MEDDEPT',  sOutDept);  //����μ�(�����)��
        GetFldVar('S_TYPE1',    sUseType);  //����뵵
        GetFldVar('S_FLAG2',    sExamType); //�˻�з�

        Result := GetRecordCnt('S_PATNO');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//�����
//==============================================================================
//
//==============================================================================
function HsrFilm.ReqFilmList3(OutDate,ExamType:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_DATE5;S_TYPE1;S_FLAG9');
    SetFldValue(0,[OutDate,ExamType,'EB1']);

    if (txGetF('SR_REQDEPT_L3')) then
    begin
        GetFldVar('S_PATNO',    sPatNo);    //ȯ�ڹ�ȣ
        GetFldVar('S_PATNAME',  sPatName);  //ȯ�ڸ�
        GetFldVar('S_DATE1',    sReqWDate); //�����������
        GetFldVar('S_DATE2',    sReqDate);  //��û�������
        GetFldVar('L_SEQNO1',   iSeqNo);    //����
        GetFldVar('S_USERID1',  sReqID);    //��û��ID
        GetFldVar('S_USERNAME1',sReqName);  //��û�ڸ�
        GetFldVar('S_MEDDEPT',  sOutDept);  //����μ�(�����)��
        GetFldVar('S_TYPE1',    sUseType);  //����뵵
        GetFldVar('S_DATE3',    sOutDate);  //��������
        GetFldVar('S_DATE4',    sRtnDate);  //�ݳ�����
        GetFldVar('S_FLAG2',    sExamType); //�˻�з�

        Result := GetRecordCnt('S_PATNO');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

function HsrFilm.ReqFilmList4(OutDate,MedDept, ExamType:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_DATE5;S_TYPE1;S_FLAG9');
    SetFldValue(0,[OutDate,ExamType,'EB1']);

    if (txGetF('SR_REQDEPT_L4')) then
    begin
        GetFldVar('S_PATNO',    sPatNo);    //ȯ�ڹ�ȣ
        GetFldVar('S_PATNAME',  sPatName);  //ȯ�ڸ�
        GetFldVar('S_DATE1',    sReqWDate); //�����������
        GetFldVar('S_DATE2',    sReqDate);  //��û�������
        GetFldVar('L_SEQNO1',   iSeqNo);    //����
        GetFldVar('S_USERID1',  sReqID);    //��û��ID
        GetFldVar('S_USERNAME1',sReqName);  //��û�ڸ�
        GetFldVar('S_MEDDEPT',  sOutDept);  //����μ�(�����)��
        GetFldVar('S_TYPE1',    sUseType);  //����뵵
        GetFldVar('S_DATE3',    sOutDate);  //��������
        GetFldVar('S_DATE4',    sRtnDate);  //�ݳ�����
        GetFldVar('S_FLAG2',    sExamType); //�˻�з�

        Result := GetRecordCnt('S_PATNO');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
// �ʸ������û     �����
//==============================================================================
function HsrFilm.FilmReqInsert(PatNo,ExamType,ReqDate,OutDept,ReqID,
                               UseType,RtnWDate,TelNo,UserID:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;S_DATE1;S_MEDDEPT;S_USERID1;S_TYPE2;S_DATE2;S_TELNO;S_EDITID;S_EDITIP');
    SetFldValue(0,[PatNo,ExamType,ReqDate,OutDept,ReqID,UseType,RtnWDate,TelNo,G_USERID,GetIP]);

    if (txPutF('SR_FILMREQ_I')) then    // sr_filmreq_i.pc
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//�ʸ������û ���     �����
//==============================================================================
function HsrFilm.FilmReqDelete(PatNo,ExamType,ReqDate,ReqId:String;SeqNo:Integer):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;S_DATE1;L_SEQNO1;S_USERID1');
    SetFldValue(0,[PatNo,ExamType,ReqDate,SeqNo,ReqId]);

    if (txPutF('SR_FILMREQ_D')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//�ʸ����޴��� ��� �����
//==============================================================================
function HsrFilm.FilmErOutInsert(PatNo,ExamType,ReqDate,OutDept,ReqID,
                                 UseType,RtnWDate,TelNo,OutregID,UserID:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;S_DATE1;S_MEDDEPT;S_USERID1;S_TYPE2;S_DATE2;S_TELNO;S_USERID2;S_EDITID;S_EDITIP');
    SetFldValue(0,[PatNo,ExamType,ReqDate,OutDept,ReqID,UseType,RtnWDate,TelNo,OutregID,G_USERID,GetIP]);

    if (txPutF('SR_FILMEROUT_I')) then
    begin
        GetFldVar('L_SEQNO1',    lSeqno);    // �űԷ� �߰��� ���� seqno
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrFilm.TelUpdate(PatNo, ExamType, sTel1, sTel2:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;S_NO1;S_NO2');
    SetFldValue(0,[PatNo,ExamType,sTel1,sTel2]);

    if (txPutF('SR_FILMTEL_U')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
{
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;S_NO1;S_NO2');
    SetFldValue(0,[PatNo,ExamType,sTel1,sTel2]);
    if (txPutF('SR_FILMTEL_U')) then begin
        Result := 1;
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
//if (txPutF('SvcName')) then begin
{
    Result := 1;
    MessageStr := '���������� �����Ͽ����ϴ�';
}

   txFree;
end;

//==============================================================================
//
//==============================================================================
function HsrFilm.MakeAutoFilm(Reqdate, Examtype: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_DATE1;S_TYPE1');
    SetFldValue(0,[Reqdate, Examtype]);

    if (txPutF('SR_AUTOFILM_M')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrFilm.ListAutoFilm(Reqdate, Examtype, Meddept: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_DATE1;S_TYPE1;S_MEDDEPT;S_FLAG9');
    SetFldValue(0,[Reqdate, Examtype, Meddept, 'EB1']);

    if (txGetF('SR_AUTOFILM_L')) then
    begin
        Result := GetRecordCnt('S_PATNO');
        GetFldVar('S_PATNO',    sPatNo);    //ȯ�ڹ�ȣ
        GetFldVar('S_PATNAME',  sPatName);  //ȯ�ڸ�
        GetFldVar('S_MEDDEPT',  sMeddept);  //�����
        GetFldVar('S_DR1',      sDr1);      //�����ǹ�ȣ
        GetFldVar('S_DRNAME1',  sDrname1);  //�����Ǹ�
        GetFldVar('S_DATE1',    sOutdate);  //��������
        GetFldVar('S_DATE2',    sRtndate);  //�ݳ�����
        GetFldVar('L_SEQNO1',   lSeqno);    //�ʸ���ȣ
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrFilm.DelAutoFilm(lSeqno: Integer; Reqdate, Examtype, Meddept: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_DATE1;S_TYPE1;S_MEDDEPT1');
    SetFldValue(0,[lSeqno, Reqdate, Examtype, Meddept]);

    if (txPutF('SR_AUTOFILM_D')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrFilm.SelFilmType(Largcd: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_CODE2;S_LASTVAL;L_NO1');
    SetFldValue(0,[largcd,'','',1]);

    if (txGetF('CC_COMCD_L')) then
    begin
        Result := GetRecordCnt('S_CODE1');
        GetFldVar('S_CODE1',    sTypecode);    //ȯ�ڹ�ȣ
        GetFldVar('S_NAME1',    sTypename);  //ȯ�ڸ�
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �־��� �Ⱓ�� �ش� �μ����� ������ �̷��� ��ȸ.
//==============================================================================
function HsrFilm.UnitFilmList(PatNo,Fromdate,Todate,Examtype,Outdept: String): Integer;
begin
    Result := -1;
    txAlloc32;
    SetFldName32('S_PATNO;S_FROM1;S_TO1;S_TYPE1;S_MEDDEPT;S_FLAG9');
    SetFldValue32(0,[PatNo,Fromdate,Todate,Examtype,Outdept,'EB1']);

    if (txGetF32('SR_UNITFILM_L')) then
    begin
        Result := GetRecordCnt32('S_PATNO');
        GetFldVar32('S_PATNO',    sPatno);    //ȯ�ڹ�ȣ
        GetFldVar32('S_PATNAME',  sPatname);  //ȯ�ڸ�
        GetFldVar32('S_DATE1',    sAcptdate);
        GetFldVar32('S_MEDDEPT',  sOutdept);
        GetFldVar32('S_DATE2',    sOutdate);
        GetFldVar32('S_USERID1',  sReqid);
        GetFldVar32('S_USERNAME1',sReqidname);
        GetFldVar32('S_USERID2',  sOutregid);
        GetFldVar32('S_USERNAME2',sOutregidname);
        GetFldVar32('S_DATE3',    sRtndate);
        GetFldVar32('S_USERNAME3',sRtnregidname);
        GetFldVar32('S_TYPE1',    sFilmtype);
        GetFldVar32('S_TYPE2',    sFilmtypecd);
        GetFldVar32('L_SEQNO1',   lSeqno);

        MessageStr := IntToStr(Result) + '���� �ڷᰡ ��ȸ�Ǿ����ϴ�.';
        txFree32;
    end
    else
    begin
        MessageStr := '��ȸ�� ������ �߻��߽��ϴ�.';

    end;

    //txFree32;
//    MessageStr := GetTxMsg;
end;

//==============================================================================
// �����ʸ� �����̷� ��ȸ...
//==============================================================================
function HsrFilm.UnitFilmSel(Patno,Acptdate,Examtype: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_ACPTDATE;S_TYPE1;S_FLAG9');
    SetFldValue(0,[Patno,Acptdate,Examtype,'EB1']);

    if (txGetF('SR_UNITFILM_S')) then
    begin
        Result := GetRecordCnt('S_PATNO');
        GetFldVar('S_PATNO',    sPatno);    //ȯ�ڹ�ȣ
        GetFldVar('S_PATNAME',  sPatname);  //ȯ�ڸ�
        GetFldVar('S_DATE1',    sAcptdate);
        GetFldVar('S_MEDDEPT',  sOutdept);
        GetFldVar('S_DATE2',    sOutdate);
        GetFldVar('S_USERID1',  sReqid);
        GetFldVar('S_USERNAME1',sReqidname);
        GetFldVar('S_USERID2',  sOutregid);
        GetFldVar('S_USERNAME2',sOutregidname);
        GetFldVar('S_DATE3',    sRtndate);
        GetFldVar('S_USERNAME3',sRtnregidname);
        GetFldVar('S_TYPE1',    sFilmtype);
        GetFldVar('L_SEQNO1',   lSeqno);
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �����ʸ� ���
//==============================================================================
function HsrFilm.UnitFilmIns(Patno,Examtype,Acptdate,Outdept,Regid,Outregid,Userid,Userip,FilmType: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;S_ACPTDATE;S_MEDDEPT;S_USERID1;S_USERID2;S_EDITID;S_EDITIP;S_TYPE2');
    SetFldValue(0,[Patno,Examtype,Acptdate,Outdept,Regid,Regid,G_USERID,G_USERIP,FilmType]);
    // 2003.2.13 �̰�ȭ SetFldValue(0,[Patno,Examtype,Acptdate,Outdept,Regid,Outregid,G_USERID,G_USERIP,FilmType]);

    if (txPutF('SR_UNITFILM_I')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrFilm.UnitFrtnUpd(Patno,Examtype,Acptdate,Userid,Userip: String; Seqno: Integer): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;S_ACPTDATE;S_EDITID;S_EDITIP;L_SEQNO1');
    SetFldValue(0,[Patno,Examtype,Acptdate,G_USERID,G_USERIP,Seqno]);

    if (txPutF('SR_UNITFRTN_U')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
// �����ʸ� ������ ���...
//==============================================================================
function HsrFilm.UnitFrtnDel(Patno, Examtype, Acptdate, Userid,
  Userip: String; Seqno: Integer): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;S_ACPTDATE;S_EDITID;S_EDITIP;L_SEQNO1');
    SetFldValue(0,[Patno,Examtype,Acptdate,G_USERID,G_USERIP,Seqno]);

    if (txPutF('SR_UNITFRTN_D')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

/////////////////////////////////////////////////////////////////////////////
//       Consult Class(HsrConsult)                                         //
/////////////////////////////////////////////////////////////////////////////

//==============================================================================
//
//==============================================================================
function HsrConsult.ConsultWReqList(UserID,Gubun:String):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('CONHDR;GUBUN');
    SetFldValue(0,[UserID,Gubun]);
    if (txGetF('MD_ACT_CONRTT')) then begin
        proto_GetFldVar('PATNO'   ,sPatNo);
        proto_GetFldVar('ADMDATE' ,sAdmDate);
        proto_GetFldVar('PATNAME' ,sPatName);
        proto_GetFldVar('CASTENM' ,sCasteNm);
        proto_GetFldVar('TITLE'   ,sTitle);
        proto_GetFldVar('MEDDEPT' ,sMeddept);
        proto_GetFldVar('ORDDR'   ,sOrdDr);
        proto_GetFldVar('TNAME'   ,sOrdDrNm);
        proto_GetFldVar('HOPEDATE',sHopeDate);
        proto_GetFldVar('CALLYN'  ,sCallYN);
        proto_GetFldVar('REQTX'   ,sReqTX);
        proto_GetFldVar('RESTDATE',sRestDate);
        proto_GetFldVar('RESTTX'  ,sRestTX);
        proto_GetFldVar('SEQNO'   ,iSeqNo);
        proto_GetFldVar('ORDSEQNO',iOrdSeqNo);
        Result := GetRecordCnt('PATNO');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';

end;

//==============================================================================
//
//==============================================================================
function HsrConsult.ConsultOReqList(MedDept:String):Integer;
begin
{
    Result := -1;
    txAlloc; //Pointer�� �޾ƿ�.
    SetFldName('MEDDEPT');
    SetFldValue(0,[MedDept]);
    if (txGetF('MO_ACT_CONRQT')) then begin
        proto_GetFldVar('REQDATE', sHopeDate);
        proto_GetFldVar('PATNO',   sPatNo);
        proto_GetFldVar('PATNAME', sPatName);
        proto_GetFldVar('PATGRADE',sCasteNm);
        proto_GetFldVar('MAINDEPT',sMedDept);
        proto_GetFldVar('REQTX',   sReqTx);
        proto_GetFldVar('TNAME',   sOrdDrNm);
        proto_GetFldVar('SEQNO',   iSeqNo);
        proto_GetFldVar('RESTTX',  sRestTx);
        proto_GetFldVar('FINISHYN',sFinishYn);
        Result := GetRecordCnt('PATNO');
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 0;
    MessageStr := IntToStr(Result) + '���� ��ȸ�Ǿ����ϴ�.';

end;

//==============================================================================
//
//==============================================================================
function HsrConsult.ConsultRsltUpdate(PatNo,AdmDate,ExecDate,ExecDept,OrdDr,
  DrCaste,RsltTx,SignYn:String;SeqNo,OrdSeqNo:Integer):Integer;
begin
{
    Result := -1;
    txAlloc;
    SetFldName('PATNO;ADMDATE;RESTDATE;RESTDEPT;ORDDR;MDRGRADE;RESTTX;SIGNYN;SEQNO;ORDSEQNO');
    SetFldValue(0,[PatNo,AdmDate,ExecDate,ExecDept,OrdDr,DrCaste,RsltTx,SignYN,SeqNo,OrdSeqNo]);
    if (txPutF('MD_U_CONRTT')) then begin
        Result := 1;
        //txFree;

       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 1;
    MessageStr := '���������� �����Ͽ����ϴ�';
end;

//==============================================================================
//
//==============================================================================
function HsrConsult.UpdateConrqt(PatNo,ReqDate,ConhDept,ReqTx,ConhDr,RestTx,
                                 FinishYn:String;SeqNo:Integer):Integer;
begin
{
    Result := -1;
    txAlloc; //Pointer�� �޾ƿ�.
    SetFldName('PATNO;REQDATE;CONHDEPT;REQTX;CONHDR;RESTTX;FINISHYN;SEQNO');
    SetFldValue(0, [PatNo,ReqDate,ConhDept,ReqTx,ConhDr,RestTx,FinishYn,SeqNo]);
    if (txPutF('MO_U_CONRQT')) then begin //Tuxedo Service Call
        Result :=1;
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
}
    Result := 1;
    MessageStr := '���������� �����Ͽ����ϴ�';
end;

//------------------------
//==============================================================================
//
//==============================================================================
procedure proto_GetFldVar(FldNameStr:String; var VariantValue:Variant);
var
    i : LongInt;
//\\\    , RecordCount : LongInt;
begin
    if VarIsArray(VariantValue) then
    begin
        VarArrayRedim(VariantValue, VarArrayHighBound(VariantValue,1) +1 );
    end
    else
    begin
        VariantValue := VarArrayCreate([0,0], varVariant);
    end;

    i := VarArrayHighBound(VariantValue,1);

    VariantValue[i] := FldNameStr;
end;

//==============================================================================
//
//==============================================================================
procedure pr_GetFldVar(var VariantValue:Variant ; FldNameStr:Variant);
var
    i : LongInt;
//\\\    , RecordCount : LongInt;
begin
    if VarIsArray(VariantValue) then
    begin
        VarArrayRedim(VariantValue, VarArrayHighBound(VariantValue,1) +1 );
    end
    else
    begin
        VariantValue := VarArrayCreate([0,0], varVariant);
    end;

    i := VarArrayHighBound(VariantValue,1);

    VariantValue[i] := FldNameStr;
end;

//==============================================================================
// �˻�ó�濡 ���� ���� ��ȸ...
//==============================================================================
function HsrExam.GetExamInfo(Patno, Orddate: String; OrdSeqNo: Integer): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_FLAG9');
    SetFldValue(0,[OrdSeqNo,Patno,Orddate,'EB1']);

    if (txGetF('SR_EXAMINFO_S1')) then   // sr_examinfo_s1.pc
    begin
        GetFldVar('S_ORDDATE' 	,sOrdDate	);
        GetFldVar('S_DATE1'   	,sHopeDate	);
        GetFldVar('S_RSVDATE' 	,sRsvDate	);
        GetFldVar('S_ACPTDATE'	,sAcptDate	);
        GetFldVar('S_EXECDATE'	,sExecDate	);
        GetFldVar('S_READDATE'	,sReadDate	);
        GetFldVar('S_CFMDATE'		,sCfmDate	);
        GetFldVar('S_CHGDATE'		,sChgDate	);
        GetFldVar('S_ORDCODE' 	,sExamCode	);
        GetFldVar('S_ORDNAME' 	,sExamName	);
        GetFldVar('S_STAT1'		,sExamStat	);
        GetFldVar('S_CODE1'		,sRoomCode	);
        GetFldVar('S_CODE2'		,sEqipcode	);
        GetFldVar('S_USERID1'		,sExamTech	);
        GetFldVar('S_USERNAME1'	,sExTechNm	);
        GetFldVar('L_CNT1'		,iSOrdCnt	);
        GetFldVar('S_MEDDEPT' 	,sMedDept	);
        GetFldVar('S_WARDNO'  	,sWardNo	);
        GetFldVar('S_ROOMNO'  	,sRoomNo	);
        GetFldVar('S_DR1'     	,sOrdDr		);
        GetFldVar('S_DRNAME1' 	,sOrdDrNm	);
        GetFldVar('S_DR2'     	,sReadDr1	);
        GetFldVar('S_DRNAME2' 	,sRdDr1Nm	);
        GetFldVar('S_DR3'     	,sReadDr2	);
        GetFldVar('S_DRNAME3' 	,sRdDr2Nm	);
        GetFldVar('S_DR4'     	,sCfmDr		);
        GetFldVar('S_DRNAME4' 	,sCfmDrNm	);

        GetFldVar('S_DR5'     	,sReadDr4	);
        GetFldVar('S_DRNAME5' 	,sRdDr4Nm	);

        GetFldVar('S_CODE3'   	,sDiagcode	);
        GetFldVar('S_NAME1'   	,sDiagname	);
        GetFldVar('S_TEXT1'   	,sOrdtext	);
        GetFldVar('S_TEXT2'   	,sOrdrmk	);
        GetFldVar('S_TEXT3'   	,sExamtext	);
        GetFldVar('S_YN1'     	,sErYn		);
        GetFldVar('S_YN2'     	,sPortYn	);
        GetFldVar('S_RSLTTEXT'	,sRsltText	);
        GetFldVar('S_NO1'     	,sPhoneno1	);
        GetFldVar('S_NO2'     	,sPhoneno2	);
        GetFldVar('S_PATSECT' 	,sPatsect	);
        GetFldVar('S_NAME2'   	,sOrdkindnm	);
        GetFldVar('S_DR6'     	,sChaDr 	);
        GetFldVar('S_DRNAME6' 	,sChaDrNm	);
        GetFldVar('S_STRING1'   ,sSpcdryn );
        GetFldVar('S_STRING2'   ,sSisulyn );
        Result := GetRecordCnt('S_ORDDATE'	);

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �˻�Ư������� ������Ʈ �Ѵ�...
//==============================================================================
function HsrExam.UpdateExamtext(Patno, Orddate: String; OrdSeqNo: Integer;
                                Userid,Examtext: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_EDITID;S_TEXT1');
    SetFldValue(0,[OrdSeqNo,Patno,Orddate,G_USERID,Examtext]);

    if (txPutF('SR_EXAMTEXT_U1')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �˻�Ư������� ������Ʈ �Ѵ�...���κ����� ���... �ش�ȯ����
// ������ ó������ ������ ��缱�� �˻��׸� ��θ� �����Ѵ�...
// 2002.05.07. ������
//==============================================================================
function HsrExam.UpdateExamtextGR(Patno, Orddate: String;
  OrdSeqNo: Integer; Userid, Examtext: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_EDITID;S_TEXT1');
    SetFldValue(0,[OrdSeqNo,Patno,Orddate,G_USERID,Examtext]);

    if (txPutF('SR_EXAMTEXT_U2')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;



//==============================================================================
// �ǵ���� �Է´�� ��ȸ.                         SONGLIM_THOMA ����
//==============================================================================
function HsrExam.PatTreadList(Examtype, Patno, Orddate, FLAG: String;
                             OrdSeqNo: Integer): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_TYPE1;S_TYPE2;S_PATNO;S_ORDDATE;S_FLAG9');
    SetFldValue(0,[OrdSeqNo,Examtype,FLAG,Patno,Orddate,'EB1']);

    if (txGetF('SR_TREAD_L')) then  // sr_tread_l.pc
    begin
         GetFldVar('L_SEQNO1'   , iOrdSeqNo);
         GetFldVar('L_SEQNO2'   , iReadSeq);
         GetFldVar('L_CNT1'     , iSordcnt);
         GetFldVar('S_PATNO'    , sPatno);
         GetFldVar('S_ORDDATE'  , sOrdDate);
         GetFldVar('S_ORDCODE'  , sExamcode);
         GetFldVar('S_ORDNAME'  , sExamname);
         GetFldVar('S_STAT1'    , sExamstat);
         GetFldVar('S_CODE1'    , sRoomcode);
         GetFldVar('S_TYPE1'    , sRsvType);
         GetFldVar('S_RSVDATE'  , sRsvdate);
         GetFldVar('S_ACPTDATE' , sAcptdate);
         GetFldVar('S_EXECDATE' , sExecdate);
         GetFldVar('S_READDATE' , sReaddate);
         GetFldVar('S_CFMDATE'  , sCfmdate);
         GetFldVar('S_CHGDATE'  , sChgdate);
         GetFldVar('S_USERID1'  , sExamTech);
         GetFldVar('S_USERNAME1', sExTechNm);
         GetFldVar('S_DR1'      , sReadDr1);
         GetFldVar('S_DRNAME1'  , sRdDr1Nm);
         GetFldVar('S_DR2'      , sReadDr2);
         GetFldVar('S_DRNAME2'  , sRdDr2Nm);
         GetFldVar('S_DR3'      , sCfmdr);
         GetFldVar('S_DRNAME3'  , sCfmdrNm);
         GetFldVar('S_MEDDEPT'  , sMeddept);
         GetFldVar('S_WARDNO'   , sWardno);
         GetFldVar('S_DR4'      , sOrddr);
         GetFldVar('S_DRNAME4'  , sOrddrNm);
         GetFldVar('S_DATE1'    , sHopedate);
         GetFldVar('S_PATSECT'  , sPatsect);
         GetFldVar('S_ADMDATE'  , sAdmdate);
         GetFldVar('S_YN1'      , sPortyn);
         GetFldVar('S_YN2'      , sEryn);
         GetFldVar('S_STAT2'    , sRcpYn);
         GetFldVar('S_CODE2'    , sRgrpcode);
         GetFldVar('S_CODE3'    , sNormcode);
         GetFldVar('S_USERID2'  , sSaveid);
         GetFldVar('S_TEXT1'    , sRepemark);
         GetFldVar('S_TEXT2'    , sWriterid);
         GetFldVar('S_STRING1'  , sSpcdryn);

         GetFldVar('S_TEXT3'    , sSignData);
         GetFldVar('S_TEXT4'    , sSerialNo);
         GetFldVar('S_TEXT5'    , sSubjectDN);

         GetFldVar('S_TEXT6'    , sDiagname);

         GetFldVar('S_STRING2'    , sChadr);
         GetFldVar('S_STRING3'    , sChadrname);
         GetFldVar('S_STRING4'    , sAntconvyn);   //������ ��뿩�� 2021.05.13.�쳲�� �߰�


         Result := GetRecordCnt('S_PATNO');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �ǵ���� �Է´�� ��ȸ.
// 2003.2.25 �̰�ȭ -- ��������                           SONGLIM_THOMA ����
//==============================================================================
function HsrExam.PatTreadList1(Examtype, Patno, Orddate, FLAG: String;
                               OrdSeqNo: Integer): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_TYPE1;S_TYPE2;S_PATNO;S_ORDDATE;S_FLAG9;');
    SetFldValue(0,[OrdSeqNo,Examtype,FLAG,Patno,Orddate,'EB1']);

    if (txGetF('SR_TREAD_L1')) then  // sr_tread_l1.pc
    begin
         GetFldVar('L_SEQNO1'   , iOrdSeqNo);
         GetFldVar('L_SEQNO2'   , iReadSeq);
         GetFldVar('L_CNT1'     , iSordcnt);
         GetFldVar('S_PATNO'    , sPatno);
         GetFldVar('S_ORDDATE'  , sOrdDate);
         GetFldVar('S_ORDCODE'  , sExamcode);
         GetFldVar('S_ORDNAME'  , sExamname);
         GetFldVar('S_STAT1'    , sExamstat);
         GetFldVar('S_CODE1'    , sRoomcode);
         GetFldVar('S_TYPE1'    , sRsvType);
         GetFldVar('S_RSVDATE'  , sRsvdate);
         GetFldVar('S_ACPTDATE' , sAcptdate);
         GetFldVar('S_EXECDATE' , sExecdate);
         GetFldVar('S_READDATE' , sReaddate);
         GetFldVar('S_CFMDATE'  , sCfmdate);
         GetFldVar('S_CHGDATE'  , sChgdate);
         GetFldVar('S_USERID1'  , sExamTech);
         GetFldVar('S_USERNAME1', sExTechNm);
         GetFldVar('S_DR1'      , sReadDr1);
         GetFldVar('S_DRNAME1'  , sRdDr1Nm);
         GetFldVar('S_DR2'      , sReadDr2);
         GetFldVar('S_DRNAME2'  , sRdDr2Nm);
         GetFldVar('S_DR3'      , sCfmdr);
         GetFldVar('S_DRNAME3'  , sCfmdrNm);
         GetFldVar('S_MEDDEPT'  , sMeddept);
         GetFldVar('S_WARDNO'   , sWardno);
         GetFldVar('S_DR4'      , sOrddr);
         GetFldVar('S_DRNAME4'  , sOrddrNm);
         GetFldVar('S_DATE1'    , sHopedate);
         GetFldVar('S_PATSECT'  , sPatsect);
         GetFldVar('S_ADMDATE'  , sAdmdate);
         GetFldVar('S_YN1'      , sPortyn);
         GetFldVar('S_YN2'      , sEryn);
         GetFldVar('S_STAT2'    , sRcpYn);
         GetFldVar('S_CODE2'    , sRgrpcode);
         GetFldVar('S_CODE3'    , sNormcode);
         GetFldVar('S_USERID2'  , sSaveid);
         GetFldVar('S_TEXT1'    , sRepemark);
         GetFldVar('S_TEXT2'    , sWriterid);
         GetFldVar('S_TEXT3'    , sRslttext);
         GetFldVar('S_STRING1'  , sBxYn);
         GetFldVar('S_STRING3'  , sCloYn);
         GetFldVar('S_STRING2'  , sMedicine);
         GetFldVar('S_STRING4'  , sMedicine2);
         GetFldVar('S_STRING5'  , sReMedicine);
         GetFldVar('S_STRING6'  , sReMedicine2);

         GetFldVar('S_TEXT4'    , sSignData);
         GetFldVar('S_TEXT5'    , sSerialNo);
         GetFldVar('S_TEXT6'    , sSubjectDN);

         GetFldVar('S_TEXT7'    , sAccNo);
         GetFldVar('S_TEXT8'    , sCompyn);
         GetFldVar('S_TEXT9'    , sBowel);
         GetFldVar('S_TEXT10'   , sCecumyn);

         GetFldVar('S_STRING10' , sSpcdryn);

         GetFldVar('S_STRING11' , sDiagname);
         GetFldVar('S_STRING12' , sMedicine3);   // Pentotal ��뷮, 2016.01.11
         GetFldVar('S_STRING13' , sReMedicine3); // Pentotal ��ⷮ, 2016.01.11
         GetFldVar('S_STRING14' , sMedicine4);   // Freefol ��뷮, 2016.07.22
         GetFldVar('S_STRING15' , sReMedicine4); // Freefol ��ⷮ, 2016.07.22

         GetFldVar('S_STRING16'    , sChadr);
         GetFldVar('S_STRING17'    , sChadrname);
         GetFldVar('S_STRING18'    , sAntconvyn); //������ ��뿩�� 2021.05.06.�쳲�� �߰�

         Result := GetRecordCnt('S_PATNO');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
// �ǵ���� �Է´�� ��ȸ.
// 2003.3.19 �̰�ȭ -- ��������
//                     �˻籸��(�Ϲ�,CT,MRI,SONO,Angio,Ư��)
// 2003.3.25 �̰�ȭ -- �Ұ�,��б���
// 2003.3.27 �̰�ȭ -- �˻�Ư������߰�
//==============================================================================
function HsrExam.PatTreadList2(Examtype, Patno, Orddate, FLAG, Examcode: String;
                               OrdSeqNo: Integer): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_TYPE1;S_TYPE2;S_PATNO;S_ORDDATE;S_FLAG9;S_CODE5');
    SetFldValue(0,[OrdSeqNo,Examtype,FLAG,Patno,Orddate,'EB1',Examcode]);

    if (txGetF('SR_TREAD_L2')) then
    begin
         GetFldVar('L_SEQNO1'   , iOrdSeqNo);
         GetFldVar('L_SEQNO2'   , iReadSeq);
         GetFldVar('L_CNT1'     , iSordcnt);
         GetFldVar('S_PATNO'    , sPatno);
         GetFldVar('S_ORDDATE'  , sOrdDate);
         GetFldVar('S_ORDCODE'  , sExamcode);
         GetFldVar('S_ORDNAME'  , sExamname);
         GetFldVar('S_STAT1'    , sExamstat);
         GetFldVar('S_CODE1'    , sRoomcode);
         GetFldVar('S_TYPE1'    , sRsvType);
         GetFldVar('S_RSVDATE'  , sRsvdate);
         GetFldVar('S_ACPTDATE' , sAcptdate);
         GetFldVar('S_EXECDATE' , sExecdate);
         GetFldVar('S_READDATE' , sReaddate);
         GetFldVar('S_CFMDATE'  , sCfmdate);
         GetFldVar('S_CHGDATE'  , sChgdate);
         GetFldVar('S_USERID1'  , sExamTech);
         GetFldVar('S_USERNAME1', sExTechNm);
         GetFldVar('S_DR1'      , sReadDr1);
         GetFldVar('S_DRNAME1'  , sRdDr1Nm);
         GetFldVar('S_DR2'      , sReadDr2);
         GetFldVar('S_DRNAME2'  , sRdDr2Nm);
         GetFldVar('S_DR3'      , sCfmdr);
         GetFldVar('S_DRNAME3'  , sCfmdrNm);
         GetFldVar('S_MEDDEPT'  , sMeddept);
         GetFldVar('S_WARDNO'   , sWardno);
         GetFldVar('S_DR4'      , sOrddr);
         GetFldVar('S_DRNAME4'  , sOrddrNm);
         GetFldVar('S_DATE1'    , sHopedate);
         GetFldVar('S_PATSECT'  , sPatsect);
         GetFldVar('S_ADMDATE'  , sAdmdate);
         GetFldVar('S_YN1'      , sPortyn);
         GetFldVar('S_YN2'      , sEryn);
         GetFldVar('S_STAT2'    , sRcpYn);
         GetFldVar('S_CODE2'    , sRgrpcode);
         GetFldVar('S_CODE3'    , sNormcode);
         GetFldVar('S_USERID2'  , sSaveid);
         GetFldVar('S_TEXT1'    , sRepemark);
         GetFldVar('S_TEXT2'    , sWriterid);
         GetFldVar('S_TEXT3'    , sRslttext);
         GetFldVar('S_TEXT4'    , sLastrslt);
         GetFldVar('S_TEXT5'    , sOrdrmk);

         Result := GetRecordCnt('S_PATNO');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ȯ�ڰ˻纰�� �ǵ���� ��ȸ.
// 2003.3.19 �̰�ȭ -- ��������
//                     �˻籸��(�Ϲ�,CT,MRI,SONO,Angio,Ư��)
// 2003.3.26 �̰�ȭ -- �Ұ�,��б���
// 2003.3.27 �̰�ȭ -- �˻�Ư������߰�
//==============================================================================
function HsrExam.PatTreadList3(Examtype, Patno, Orddate, FLAG, Examcode: String;
                               OrdSeqNo: Integer): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_TYPE1;S_TYPE2;S_PATNO;S_ORDDATE;S_FLAG9;S_CODE5');
    SetFldValue(0,[OrdSeqNo,Examtype,FLAG,Patno,Orddate,'EB1',Examcode]);

    if (txGetF('SR_TREAD_L3')) then
    begin
         GetFldVar('L_SEQNO1'   , iOrdSeqNo);
         GetFldVar('L_SEQNO2'   , iReadSeq);
         GetFldVar('L_CNT1'     , iSordcnt);
         GetFldVar('S_PATNO'    , sPatno);
         GetFldVar('S_ORDDATE'  , sOrdDate);
         GetFldVar('S_ORDCODE'  , sExamcode);
         GetFldVar('S_ORDNAME'  , sExamname);
         GetFldVar('S_STAT1'    , sExamstat);
         GetFldVar('S_CODE1'    , sRoomcode);
         GetFldVar('S_TYPE1'    , sRsvType);
         GetFldVar('S_RSVDATE'  , sRsvdate);
         GetFldVar('S_ACPTDATE' , sAcptdate);
         GetFldVar('S_EXECDATE' , sExecdate);
         GetFldVar('S_READDATE' , sReaddate);
         GetFldVar('S_CFMDATE'  , sCfmdate);
         GetFldVar('S_CHGDATE'  , sChgdate);
         GetFldVar('S_USERID1'  , sExamTech);
         GetFldVar('S_USERNAME1', sExTechNm);
         GetFldVar('S_DR1'      , sReadDr1);
         GetFldVar('S_DRNAME1'  , sRdDr1Nm);
         GetFldVar('S_DR2'      , sReadDr2);
         GetFldVar('S_DRNAME2'  , sRdDr2Nm);
         GetFldVar('S_DR3'      , sCfmdr);
         GetFldVar('S_DRNAME3'  , sCfmdrNm);
         GetFldVar('S_MEDDEPT'  , sMeddept);
         GetFldVar('S_WARDNO'   , sWardno);
         GetFldVar('S_DR4'      , sOrddr);
         GetFldVar('S_DRNAME4'  , sOrddrNm);
         GetFldVar('S_DATE1'    , sHopedate);
         GetFldVar('S_PATSECT'  , sPatsect);
         GetFldVar('S_ADMDATE'  , sAdmdate);
         GetFldVar('S_YN1'      , sPortyn);
         GetFldVar('S_YN2'      , sEryn);
         GetFldVar('S_STAT2'    , sRcpYn);
         GetFldVar('S_CODE2'    , sRgrpcode);
         GetFldVar('S_CODE3'    , sNormcode);
         GetFldVar('S_USERID2'  , sSaveid);
         GetFldVar('S_TEXT1'    , sRepemark);
         GetFldVar('S_TEXT2'    , sWriterid);
         GetFldVar('S_TEXT3'    , sRslttext);
         GetFldVar('S_TEXT4'    , sLastrslt);
         GetFldVar('S_TEXT5'    , sOrdrmk);

         Result := GetRecordCnt('S_PATNO');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
// �ǵ���� �Է´�� ��ȸ.
// 2003.3.19 �̰�ȭ -- ��������
//                     �˻籸��(�Ϲ�,CT,MRI,SONO,Angio,Ư��)
// 2003.3.25 �̰�ȭ -- �Ұ�,��б���
// 2003.3.27 �̰�ȭ -- �˻�Ư������߰�
// 2003.4.17 �̰�ȭ -- �Ϲ�+Ư�� �� �ڷ���ȸ�����ϰ�
//==============================================================================
function HsrExam.PatTreadList4(Examtype, Patno, Orddate, FLAG, Examcode: String;
                               OrdSeqNo: Integer): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_TYPE1;S_TYPE2;S_PATNO;S_ORDDATE;S_FLAG9;S_CODE5');
    SetFldValue(0,[OrdSeqNo,Examtype,FLAG,Patno,Orddate,'EB1',Examcode]);

    if (txGetF('SR_TREAD_L4')) then
    begin
         GetFldVar('L_SEQNO1'   , iOrdSeqNo);
         GetFldVar('L_SEQNO2'   , iReadSeq);
         GetFldVar('L_CNT1'     , iSordcnt);
         GetFldVar('S_PATNO'    , sPatno);
         GetFldVar('S_ORDDATE'  , sOrdDate);
         GetFldVar('S_ORDCODE'  , sExamcode);
         GetFldVar('S_ORDNAME'  , sExamname);
         GetFldVar('S_STAT1'    , sExamstat);
         GetFldVar('S_CODE1'    , sRoomcode);
         GetFldVar('S_TYPE1'    , sRsvType);
         GetFldVar('S_RSVDATE'  , sRsvdate);
         GetFldVar('S_ACPTDATE' , sAcptdate);
         GetFldVar('S_EXECDATE' , sExecdate);
         GetFldVar('S_READDATE' , sReaddate);
         GetFldVar('S_CFMDATE'  , sCfmdate);
         GetFldVar('S_CHGDATE'  , sChgdate);
         GetFldVar('S_USERID1'  , sExamTech);
         GetFldVar('S_USERNAME1', sExTechNm);
         GetFldVar('S_DR1'      , sReadDr1);
         GetFldVar('S_DRNAME1'  , sRdDr1Nm);
         GetFldVar('S_DR2'      , sReadDr2);
         GetFldVar('S_DRNAME2'  , sRdDr2Nm);
         GetFldVar('S_DR3'      , sCfmdr);
         GetFldVar('S_DRNAME3'  , sCfmdrNm);
         GetFldVar('S_MEDDEPT'  , sMeddept);
         GetFldVar('S_WARDNO'   , sWardno);
         GetFldVar('S_DR4'      , sOrddr);
         GetFldVar('S_DRNAME4'  , sOrddrNm);
         GetFldVar('S_DATE1'    , sHopedate);
         GetFldVar('S_PATSECT'  , sPatsect);
         GetFldVar('S_ADMDATE'  , sAdmdate);
         GetFldVar('S_YN1'      , sPortyn);
         GetFldVar('S_YN2'      , sEryn);
         GetFldVar('S_STAT2'    , sRcpYn);
         GetFldVar('S_CODE2'    , sRgrpcode);
         GetFldVar('S_CODE3'    , sNormcode);
         GetFldVar('S_USERID2'  , sSaveid);
         GetFldVar('S_TEXT1'    , sRepemark);
         GetFldVar('S_TEXT2'    , sWriterid);
         GetFldVar('S_TEXT3'    , sRslttext);
         GetFldVar('S_TEXT4'    , sLastrslt);
         GetFldVar('S_TEXT5'    , sOrdrmk);

         Result := GetRecordCnt('S_PATNO');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;




//==============================================================================
// �ǵ���� �ٿ�ε�
// 2003.4.18 �̰�ȭ -- �ǵ���� �ٿ�ε�
//==============================================================================
function HsrExam.PatTreadList5(Examtype, Frdate, Todate, Orddate, FLAG, Examcode: String;
                               OrdSeqNo: Integer): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_TYPE1;S_TYPE2;S_DATE1;S_DATE2;S_ORDDATE;S_FLAG9;S_CODE5');
    SetFldValue(0,[OrdSeqNo,Examtype,FLAG,Frdate,Todate,Orddate,'EB1',Examcode]);

    if (txGetF('SR_TREAD_L5')) then
    begin
         GetFldVar('L_SEQNO1'   , iOrdSeqNo);
         GetFldVar('L_SEQNO2'   , iReadSeq);
         GetFldVar('L_CNT1'     , iSordcnt);
         GetFldVar('S_PATNO'    , sPatno);
         GetFldVar('S_ORDDATE'  , sOrdDate);
         GetFldVar('S_ORDCODE'  , sExamcode);
         GetFldVar('S_ORDNAME'  , sExamname);
         GetFldVar('S_STAT1'    , sExamstat);
         GetFldVar('S_CODE1'    , sRoomcode);
         GetFldVar('S_TYPE1'    , sRsvType);
         GetFldVar('S_RSVDATE'  , sRsvdate);
         GetFldVar('S_ACPTDATE' , sAcptdate);
         GetFldVar('S_EXECDATE' , sExecdate);
         GetFldVar('S_READDATE' , sReaddate);
         GetFldVar('S_CFMDATE'  , sCfmdate);
         GetFldVar('S_CHGDATE'  , sChgdate);
         GetFldVar('S_USERID1'  , sExamTech);
         GetFldVar('S_USERNAME1', sExTechNm);
         GetFldVar('S_DR1'      , sReadDr1);
         GetFldVar('S_DRNAME1'  , sRdDr1Nm);
         GetFldVar('S_DR2'      , sReadDr2);
         GetFldVar('S_DRNAME2'  , sRdDr2Nm);
         GetFldVar('S_DR3'      , sCfmdr);
         GetFldVar('S_DRNAME3'  , sCfmdrNm);
         GetFldVar('S_MEDDEPT'  , sMeddept);
         GetFldVar('S_WARDNO'   , sWardno);
         GetFldVar('S_DR4'      , sOrddr);
         GetFldVar('S_DRNAME4'  , sOrddrNm);
         GetFldVar('S_DATE1'    , sHopedate);
         GetFldVar('S_PATSECT'  , sPatsect);
         GetFldVar('S_ADMDATE'  , sAdmdate);
         GetFldVar('S_YN1'      , sPortyn);
         GetFldVar('S_YN2'      , sEryn);
         GetFldVar('S_STAT2'    , sRcpYn);
         GetFldVar('S_CODE2'    , sRgrpcode);
         GetFldVar('S_CODE3'    , sNormcode);
         GetFldVar('S_USERID2'  , sSaveid);
         GetFldVar('S_TEXT1'    , sRepemark);
         GetFldVar('S_TEXT2'    , sWriterid);
         GetFldVar('S_TEXT3'    , sRslttext);
         GetFldVar('S_TEXT4'    , sLastrslt);
         GetFldVar('S_TEXT5'    , sOrdrmk);
         GetFldVar('S_TEXT6'    , sOrddesc);
         GetFldVar('S_TEXT7'    , sPatname);
         GetFldVar('S_TEXT8'    , sResNo1);
         GetFldVar('S_TEXT9'    , sSex);
         GetFldVar('S_TEXT10'   , sChadrNm);

         Result := GetRecordCnt('S_PATNO');

       txFree;
    end;

    MessageStr := GetTxMsg;
end;





//==============================================================================
// Ȯ�θ�� ��ȸ.                                                SONGLIM_THOMA
//==============================================================================
function HsrExam.PatCfmList(Examtype, Patno, Orddate: String; OrdSeqNo: Integer): Integer;
begin
    Result := -1;
    txAlloc32;
    SetFldName32('L_SEQNO1;S_TYPE1;S_PATNO;S_ORDDATE;S_FLAG9');
    SetFldValue32(0,[OrdSeqNo,Examtype,Patno,Orddate,'EB1']);

    if (txGetF32('SR_CFM_L')) then  // sr_cfm_l.pc
    begin
	    GetFldVar32('L_SEQNO1'   , iOrdSeqNo);
        GetFldVar32('L_SEQNO2'   , iReadSeq);
        GetFldVar32('L_CNT1'     , iSordcnt);
	    GetFldVar32('S_PATNO'    , sPatno);
	    GetFldVar32('S_ORDDATE'  , sOrdDate);
	    GetFldVar32('S_ORDCODE'  , sExamcode);
	    GetFldVar32('S_ORDNAME'  , sExamname);
	    GetFldVar32('S_STAT1'    , sExamstat);
	    GetFldVar32('S_CODE1'    , sRoomcode);
	    GetFldVar32('S_TYPE1'    , sRsvType);
	    GetFldVar32('S_RSVDATE'  , sRsvdate);
	    GetFldVar32('S_ACPTDATE' , sAcptdate);
	    GetFldVar32('S_EXECDATE' , sExecdate);
	    GetFldVar32('S_READDATE' , sReaddate);
	    GetFldVar32('S_CFMDATE'  , sCfmdate);
	    GetFldVar32('S_CHGDATE'  , sChgdate);
	    GetFldVar32('S_USERID1'  , sExamTech);
	    GetFldVar32('S_USERNAME1', sExTechNm);
	    GetFldVar32('S_DR1'      , sReadDr1);
	    GetFldVar32('S_DRNAME1'  , sRdDr1Nm);
	    GetFldVar32('S_DR2'      , sReadDr2);
	    GetFldVar32('S_DRNAME2'  , sRdDr2Nm);
	    GetFldVar32('S_DR5'      , sReadDr4);
	    GetFldVar32('S_DRNAME5'  , sRdDr4Nm);
	    GetFldVar32('S_DR3'      , sCfmdr);
	    GetFldVar32('S_DRNAME3'  , sCfmdrNm);
	    GetFldVar32('S_MEDDEPT'  , sMeddept);
	    GetFldVar32('S_WARDNO'   , sWardno);
	    GetFldVar32('S_DR4'      , sOrddr);
	    GetFldVar32('S_DRNAME4'  , sOrddrNm);
	    GetFldVar32('S_DATE1'    , sHopedate);
	    GetFldVar32('S_PATSECT'  , sPatsect);
        GetFldVar32('S_ADMDATE'  , sAdmdate);
	    GetFldVar32('S_YN1'      , sPortyn);
	    GetFldVar32('S_YN2'      , sEryn);
	    GetFldVar32('S_STAT2'    , sRcpYn);
        GetFldVar32('S_CODE2'    , sRgrpcode);
        GetFldVar32('S_CODE3'    , sNormcode);
        GetFldVar32('S_USERID2'  , sSaveid);
        GetFldVar32('S_TEXT1'    , sRepemark);
        GetFldVar32('S_TEXT2'    , sWriterid);
        GetFldVar32('S_STRING1' , sSpcdryn);

         GetFldVar('S_TEXT3'    , sSignData);
         GetFldVar('S_TEXT4'    , sSerialNo);
         GetFldVar('S_TEXT5'    , sSubjectDN);

         GetFldVar('S_TEXT6'    , sDiagname);

         GetFldVar32('S_STRING2' , sChadr);
         GetFldVar32('S_STRING3' , sChadrname);

         GetFldVar('S_STRING4'   , sAntconvyn);      // ������ ��뿩�� 2021.05.13. �쳲�� �߰�

        Result := GetRecordCnt32('S_PATNO');

       txFree32;
    end;

    //txFree32;
//    MessageStr := GetTxMsg;
    MessageStr := IntToStr(Result) + '���� �ڷᰡ ��ȸ�Ǿ����ϴ�.';
end;


//==============================================================================
// Ȯ�θ�� ��ȸ.
// 2003.2.28 �̰�ȭ -- ��������                                   SONGLIM_THOMA
//==============================================================================
function HsrExam.PatCfmList1(Examtype, Patno, Orddate: String; OrdSeqNo: Integer): Integer;
begin
    Result := -1;
    txAlloc32;
    SetFldName32('L_SEQNO1;S_TYPE1;S_PATNO;S_ORDDATE;S_FLAG9');
    SetFldValue32(0,[OrdSeqNo,Examtype,Patno,Orddate,'EB1']);

    if (txGetF32('SR_CFM_L1')) then           //sr_cfm_l1.pc
    begin
	    GetFldVar32('L_SEQNO1'   , iOrdSeqNo);
       GetFldVar32('L_SEQNO2'   , iReadSeq);
       GetFldVar32('L_CNT1'     , iSordcnt);
	    GetFldVar32('S_PATNO'    , sPatno);
	    GetFldVar32('S_ORDDATE'  , sOrdDate);
	    GetFldVar32('S_ORDCODE'  , sExamcode);
	    GetFldVar32('S_ORDNAME'  , sExamname);
	    GetFldVar32('S_STAT1'    , sExamstat);
	    GetFldVar32('S_CODE1'    , sRoomcode);
	    GetFldVar32('S_TYPE1'    , sRsvType);
	    GetFldVar32('S_RSVDATE'  , sRsvdate);
	    GetFldVar32('S_ACPTDATE' , sAcptdate);
	    GetFldVar32('S_EXECDATE' , sExecdate);
	    GetFldVar32('S_READDATE' , sReaddate);
	    GetFldVar32('S_CFMDATE'  , sCfmdate);
	    GetFldVar32('S_CHGDATE'  , sChgdate);
	    GetFldVar32('S_USERID1'  , sExamTech);
	    GetFldVar32('S_USERNAME1', sExTechNm);
	    GetFldVar32('S_DR1'      , sReadDr1);
	    GetFldVar32('S_DRNAME1'  , sRdDr1Nm);
	    GetFldVar32('S_DR2'      , sReadDr2);
	    GetFldVar32('S_DRNAME2'  , sRdDr2Nm);
	    GetFldVar32('S_DR5'      , sReadDr4);
	    GetFldVar32('S_DRNAME5'  , sRdDr4Nm);
	    GetFldVar32('S_DR3'      , sCfmdr);
	    GetFldVar32('S_DRNAME3'  , sCfmdrNm);
	    GetFldVar32('S_MEDDEPT'  , sMeddept);
	    GetFldVar32('S_WARDNO'   , sWardno);
	    GetFldVar32('S_DR4'      , sOrddr);
	    GetFldVar32('S_DRNAME4'  , sOrddrNm);
	    GetFldVar32('S_DATE1'    , sHopedate);
	    GetFldVar32('S_PATSECT'  , sPatsect);
       GetFldVar32('S_ADMDATE'  , sAdmdate);
	    GetFldVar32('S_YN1'      , sPortyn);
	    GetFldVar32('S_YN2'      , sEryn);
	    GetFldVar32('S_STAT2'    , sRcpYn);
       GetFldVar32('S_CODE2'    , sRgrpcode);
       GetFldVar32('S_CODE3'    , sNormcode);
       GetFldVar32('S_USERID2'  , sSaveid);
       GetFldVar32('S_TEXT1'    , sRepemark);
       GetFldVar32('S_TEXT2'    , sWriterid);
       GetFldVar32('S_TEXT3'    , sRslttext);
       GetFldVar('S_STRING1'    , sBxYn);
       GetFldVar('S_STRING3'    , sCloYn);
       GetFldVar('S_STRING2'    , sMedicine);
       GetFldVar('S_STRING4'    , sMedicine2);
       GetFldVar('S_STRING5'    , sReMedicine);
       GetFldVar('S_STRING6'    , sReMedicine2);
       GetFldVar('S_STRING7'    , sCompyn);
       GetFldVar('S_STRING8'    , sBowel);
       GetFldVar('S_STRING9'    , sCecumyn);
       GetFldVar('S_STRING10'   , sSpcdryn);
            //GetFldVar32('S_TEXT4'    , sLastrslt);

       GetFldVar('S_TEXT4'    , sSignData);
       GetFldVar('S_TEXT5'    , sSerialNo);
       GetFldVar('S_TEXT6'    , sSubjectDN);

       GetFldVar('S_STRING11' , sDiagname);
       GetFldVar('S_STRING12' , sMedicine3);   //Pentotal ��뷮, 2016.01.11
       GetFldVar('S_STRING13' , sReMedicine3); //Pentotal ��ⷮ, 2016.01.11
       GetFldVar('S_STRING14' , sMedicine4);   //Freefol ��뷮, 2016.07.22
       GetFldVar('S_STRING15' , sReMedicine4); //Freefol ��ⷮ, 2016.07.22

       GetFldVar32('S_STRING16' , sChadr);
       GetFldVar32('S_STRING17' , sChadrname);
       GetFldVar  ('S_STRING18' , sAntconvyn); //������ ��뿩�� 2021.05.06.�쳲�� �߰�

       Result := GetRecordCnt32('S_PATNO');

       txFree32;
    end;

    //txFree32;
//    MessageStr := GetTxMsg;
    MessageStr := IntToStr(Result) + '���� �ڷᰡ ��ȸ�Ǿ����ϴ�.';
end;


//==============================================================================
// Ȯ�θ�� ��ȸ.
// 2003.2.28 �̰�ȭ -- ��������
// 2003.3.25 �̰�ȭ -- �Ұ�,��кι����� ����
// 2003.3.27 �̰�ȭ -- �˻�Ư������߰�
//==============================================================================
function HsrExam.PatCfmList2(Examtype, Patno, Orddate, Examcode: String; OrdSeqNo: Integer): Integer;
begin
    Result := -1;
    txAlloc32;
    SetFldName32('L_SEQNO1;S_TYPE1;S_PATNO;S_ORDDATE;S_FLAG9;S_CODE5');
    SetFldValue32(0,[OrdSeqNo,Examtype,Patno,Orddate,'EB1',Examcode]);

    if (txGetF32('SR_CFM_L2')) then
    begin
	    GetFldVar32('L_SEQNO1'   , iOrdSeqNo);
            GetFldVar32('L_SEQNO2'   , iReadSeq);
            GetFldVar32('L_CNT1'     , iSordcnt);
	    GetFldVar32('S_PATNO'    , sPatno);
	    GetFldVar32('S_ORDDATE'  , sOrdDate);
	    GetFldVar32('S_ORDCODE'  , sExamcode);
	    GetFldVar32('S_ORDNAME'  , sExamname);
	    GetFldVar32('S_STAT1'    , sExamstat);
	    GetFldVar32('S_CODE1'    , sRoomcode);
	    GetFldVar32('S_TYPE1'    , sRsvType);
	    GetFldVar32('S_RSVDATE'  , sRsvdate);
	    GetFldVar32('S_ACPTDATE' , sAcptdate);
	    GetFldVar32('S_EXECDATE' , sExecdate);
	    GetFldVar32('S_READDATE' , sReaddate);
	    GetFldVar32('S_CFMDATE'  , sCfmdate);
	    GetFldVar32('S_CHGDATE'  , sChgdate);
	    GetFldVar32('S_USERID1'  , sExamTech);
	    GetFldVar32('S_USERNAME1', sExTechNm);
	    GetFldVar32('S_DR1'      , sReadDr1);
	    GetFldVar32('S_DRNAME1'  , sRdDr1Nm);
	    GetFldVar32('S_DR2'      , sReadDr2);
	    GetFldVar32('S_DRNAME2'  , sRdDr2Nm);
	    GetFldVar32('S_DR5'      , sReadDr4);
	    GetFldVar32('S_DRNAME5'  , sRdDr4Nm);
	    GetFldVar32('S_DR3'      , sCfmdr);
	    GetFldVar32('S_DRNAME3'  , sCfmdrNm);
	    GetFldVar32('S_MEDDEPT'  , sMeddept);
	    GetFldVar32('S_WARDNO'   , sWardno);
	    GetFldVar32('S_DR4'      , sOrddr);
	    GetFldVar32('S_DRNAME4'  , sOrddrNm);
	    GetFldVar32('S_DATE1'    , sHopedate);
	    GetFldVar32('S_PATSECT'  , sPatsect);
            GetFldVar32('S_ADMDATE'  , sAdmdate);
	    GetFldVar32('S_YN1'      , sPortyn);
	    GetFldVar32('S_YN2'      , sEryn);
	    GetFldVar32('S_STAT2'    , sRcpYn);
            GetFldVar32('S_CODE2'    , sRgrpcode);
            GetFldVar32('S_CODE3'    , sNormcode);
            GetFldVar32('S_USERID2'  , sSaveid);
            GetFldVar32('S_TEXT1'    , sRepemark);
            GetFldVar32('S_TEXT2'    , sWriterid);
            GetFldVar32('S_TEXT3'    , sRslttext);
            GetFldVar32('S_TEXT4'    , sLastrslt);
            GetFldVar32('S_TEXT5'    , sOrdrmk);

        Result := GetRecordCnt32('S_PATNO');

       txFree32;
    end;

    //txFree32;
    //MessageStr := GetTxMsg;
    MessageStr := IntToStr(Result) + '���� �ڷᰡ ��ȸ�Ǿ����ϴ�.';
end;


//==============================================================================
// Ȯ�θ�� ��ȸ.
// 2003.2.28 �̰�ȭ -- ��������
// 2003.3.25 �̰�ȭ -- �Ұ�,��кι����� ����
// 2003.3.27 �̰�ȭ -- �˻�Ư������߰�
// 2003.4.17 �̰�ȭ -- Ȯ�ε� �ǵ��� �Ϲ�+Ư���˻縸��ȸ
//==============================================================================
function HsrExam.PatCfmList3(Examtype, Patno, Orddate, Examcode: String; OrdSeqNo: Integer): Integer;
begin
    Result := -1;
    txAlloc32;
    SetFldName32('L_SEQNO1;S_TYPE1;S_PATNO;S_ORDDATE;S_FLAG9;S_CODE5');
    SetFldValue32(0,[OrdSeqNo,Examtype,Patno,Orddate,'EB1',Examcode]);

    if (txGetF32('SR_CFM_L3')) then
    begin
	    GetFldVar32('L_SEQNO1'   , iOrdSeqNo);
            GetFldVar32('L_SEQNO2'   , iReadSeq);
            GetFldVar32('L_CNT1'     , iSordcnt);
	    GetFldVar32('S_PATNO'    , sPatno);
	    GetFldVar32('S_ORDDATE'  , sOrdDate);
	    GetFldVar32('S_ORDCODE'  , sExamcode);
	    GetFldVar32('S_ORDNAME'  , sExamname);
	    GetFldVar32('S_STAT1'    , sExamstat);
	    GetFldVar32('S_CODE1'    , sRoomcode);
	    GetFldVar32('S_TYPE1'    , sRsvType);
	    GetFldVar32('S_RSVDATE'  , sRsvdate);
	    GetFldVar32('S_ACPTDATE' , sAcptdate);
	    GetFldVar32('S_EXECDATE' , sExecdate);
	    GetFldVar32('S_READDATE' , sReaddate);
	    GetFldVar32('S_CFMDATE'  , sCfmdate);
	    GetFldVar32('S_CHGDATE'  , sChgdate);
	    GetFldVar32('S_USERID1'  , sExamTech);
	    GetFldVar32('S_USERNAME1', sExTechNm);
	    GetFldVar32('S_DR1'      , sReadDr1);
	    GetFldVar32('S_DRNAME1'  , sRdDr1Nm);
	    GetFldVar32('S_DR2'      , sReadDr2);
	    GetFldVar32('S_DRNAME2'  , sRdDr2Nm);
	    GetFldVar32('S_DR5'      , sReadDr4);
	    GetFldVar32('S_DRNAME5'  , sRdDr4Nm);
	    GetFldVar32('S_DR3'      , sCfmdr);
	    GetFldVar32('S_DRNAME3'  , sCfmdrNm);
	    GetFldVar32('S_MEDDEPT'  , sMeddept);
	    GetFldVar32('S_WARDNO'   , sWardno);
	    GetFldVar32('S_DR4'      , sOrddr);
	    GetFldVar32('S_DRNAME4'  , sOrddrNm);
	    GetFldVar32('S_DATE1'    , sHopedate);
	    GetFldVar32('S_PATSECT'  , sPatsect);
            GetFldVar32('S_ADMDATE'  , sAdmdate);
	    GetFldVar32('S_YN1'      , sPortyn);
	    GetFldVar32('S_YN2'      , sEryn);
	    GetFldVar32('S_STAT2'    , sRcpYn);
            GetFldVar32('S_CODE2'    , sRgrpcode);
            GetFldVar32('S_CODE3'    , sNormcode);
            GetFldVar32('S_USERID2'  , sSaveid);
            GetFldVar32('S_TEXT1'    , sRepemark);
            GetFldVar32('S_TEXT2'    , sWriterid);
            GetFldVar32('S_TEXT3'    , sRslttext);
            GetFldVar32('S_TEXT4'    , sLastrslt);
            GetFldVar32('S_TEXT5'    , sOrdrmk);

        Result := GetRecordCnt32('S_PATNO');

       txFree32;
    end;

    //txFree32;
    //MessageStr := GetTxMsg;
    MessageStr := IntToStr(Result) + '���� �ڷᰡ ��ȸ�Ǿ����ϴ�.';
end;



//==============================================================================
// ���� MDEXMORT.PROCSTAT = 'A'...-.-?
//==============================================================================
function HsrExam.UpdateRsvDatePre(Patno: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO');
    SetFldValue(0,[Patno]);


    if txPutF('SR_MDEXMORT_UP') then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
// ���� �� ������ �Ϸ��� �׸��� dc���θ� Ȯ���Ѵ�...
//==============================================================================
function HsrExam.DCCheckPre(DataCnt:Integer): Integer;
var
    iDcynTmp, iDiscYnTmp : variant;
    ix : integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_ORDDATE;L_SEQNO1');

    for ix := 0 to DataCnt - 1 do
    begin
         SetFldValue(ix,[String(sPatno[ix]),String(sOrddate[ix]),Integer(iOrdSeqno[ix])]);
    end;


    if txGetF('SR_DCCHECK_L') then
    begin
	    GetFldVar('L_NO1'  , iDcynTmp);
	    GetFldVar('L_NO2'  , iDiscYnTmp);

        Result := GetRecordCnt('L_NO1');

        for ix := 0 to Result-1 do
        begin
            if (iDcynTmp[ix] = 1) or (iDiscYnTmp[ix] = 1) then
            begin
                Result := -2;
                break;

               txFree;
            end;
        end;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// 2003.4.1 �̰�ȭ -- ȯ�ں�, Ű ������ ��������(mammo�˻�� �ʿ�)
//==============================================================================
function HsrExam.PatHWlst(Patno: String): Integer;
begin
    Result := -1;
    txAlloc;

    SetFldName('S_PATNO');
    SetFldValue(0,[Patno]);
    if txGetF('SR_HWLST_S1') then
    begin
       GetFldVar('S_TEXT1' , sExectime);
       GetFldVar('S_TEXT2' , sWeight);
       GetFldVar('L_CNT3'    , sHeight);

       Result := GetRecordCnt('S_TEXT1');

       txFree;
    end;

    MessageStr := GetTxMsg;
end;


//==============================================================================
// ȯ�ں� ó���̷� �� �˻��̷� ��ȸ.
// 2003.2.11 ����ó�泻�� �߰� -- su = 'M'�ϰ��
// 2004.2.7  �̰�ȭ -- �索��Ŭ���� ��������������ƾ�߰�  sr_patexam_l7.pc
// 2008.11.03 KimDaeYong, Scrroom�Ķ���� �߰�, �߾ӿ����
//==============================================================================
function HsrExam.PatExamList(Examtype, Patno, Orddate, Su, Scrroom: String; OrdSeqNo: Integer): Integer;
var
//    LocalFile: String;
    svrname: String;
begin
    Result := -1;

   // UpdateRsvDatePre(Patno);

    txAlloc32;
    SetFldName32('L_SEQNO1;S_TYPE1;S_PATNO;S_ORDDATE;S_CODE1;S_CODE2');
    SetFldValue32(0,[OrdSeqNo,Examtype,Patno,Orddate,'EB1',Scrroom]);

    if Su = 'A' then
    begin
        svrname := 'SR_PATEXAM_L4';
    end
    else if Su = 'Y' then
    begin
        svrname := 'SR_PATEXAM_L3';
    end
    else if Su = 'N' then
    begin
        svrname := 'SR_PATEXAM_L1';   // sr_patexam_l1.pc
    end
    else if Su = 'M' then  // ��������
    begin
        svrname := 'SR_PATEXAM_L5'; // sr_patexam_l5.pc
    end
    else if Su = 'Z' then  // Ư������߰�
    begin
        svrname := 'SR_PATEXAM_L6';  // sr_patexam_l6.pc
    end
    else if Su = 'H' then  // 2004.2.7 �̰�ȭ -- �索��Ŭ���� �������� ����
    begin
        svrname := 'SR_PATEXAM_L7';  //sr_patexam_l7.pc
    end;

    if (txGetF32(svrname)) then
    begin
        GetFldVar32('L_SEQNO1'   , iOrdSeqNo);
        GetFldVar32('L_SEQNO2'   , iReadSeq);
        GetFldVar32('L_CNT1'     , iSordcnt);
        GetFldVar32('S_PATNO'    , sPatno);
        GetFldVar32('S_ORDDATE'  , sOrdDate);
        GetFldVar32('S_ORDCODE'  , sExamcode);
        GetFldVar32('S_ORDNAME'  , sExamname);
        GetFldVar32('S_STAT1'    , sExamstat);
        GetFldVar32('S_CODE1'    , sRoomcode);
        GetFldVar32('S_TYPE1'    , sRsvType);
        GetFldVar32('S_RSVDATE'  , sRsvdate);
        GetFldVar32('S_ACPTDATE' , sAcptdate);
        GetFldVar32('S_EXECDATE' , sExecdate);
        GetFldVar32('S_READDATE' , sReaddate);
        GetFldVar32('S_CFMDATE'  , sCfmdate);
        GetFldVar32('S_CHGDATE'  , sChgdate);
        GetFldVar32('S_USERID1'  , sExamTech);
        GetFldVar32('S_USERNAME1', sExTechNm);
        GetFldVar32('S_DR1'      , sReadDr1);
        GetFldVar32('S_DRNAME1'  , sRdDr1Nm);
        GetFldVar32('S_DR2'      , sReadDr2);
        GetFldVar32('S_DRNAME2'  , sRdDr2Nm);
        GetFldVar32('S_DR3'      , sCfmdr);
        GetFldVar32('S_DRNAME3'  , sCfmdrNm);
        GetFldVar32('S_MEDDEPT'  , sMeddept);
        GetFldVar32('S_WARDNO'   , sWardno);

        GetFldVar32('S_DR4'      , sOrddr);     // ó����
        GetFldVar32('S_DR5'      , sChadr);     // ��ġ��
        GetFldVar32('S_DRNAME4'  , sOrddrNm);   // ó����
        GetFldVar32('S_DRNAME5'  , sChadrNm);   // ��ġ��

        GetFldVar32('S_DATE1'    , sHopedate);
        GetFldVar32('S_PATSECT'  , sPatsect);
        GetFldVar32('S_ADMDATE'  , sAdmdate);
        GetFldVar32('S_YN1'      , sPortyn);
        GetFldVar32('S_YN2'      , sEryn);
        GetFldVar32('S_STAT2'    , sRcpYn);
        GetFldVar32('S_CODE2'    , sRgrpcode);
        GetFldVar32('S_CODE3'    , sNormcode);
        GetFldVar32('S_DATETIME1', sReexdate);
        GetFldVar32('S_DATETIME2', sReexwdt);
        GetFldVar32('S_USERID2'  , sSaveid);
        GetFldVar32('L_CNT2',      iDayCnt);
        GetFldVar32('S_NAME1',     sOrdkindnm);
        GetFldVar32('S_DATE31',    sDschdate);
        GetFldVar32('S_CODE4',     sEqipcode);
        GetFldVar32('S_TEXT1',     sRepemark);
        GetFldVar32('S_TEXT2',     sPatsite);

        if Su = 'N' then
        begin
            GetFldVar32('S_TEXT3',     sSlipCode);
            GetFldVar32('S_TEXT4',     sRsvCare);
            GetFldVar32('S_TEXT5',     sRsvPntYn);
            GetFldVar32('S_TEXT7',     sAccno);  //ACCNO�߰�, KimDaeYong 2008-11-10
        end;

        if Su = 'M' then
        begin
            GetFldVar32('S_TEXT3',     sSlipCode);
            GetFldVar32('S_TEXT4',     sRsvCare);
            GetFldVar32('S_TEXT5',     sRsvPntYn);
            //2003.6.3 �̰�ȭ -- �˻��� �����ֱ� (�˻���,���)
            GetFldVar32('S_TEXT7',     sRslttext);
            GetFldVar32('S_TEXT8',     sLastrslt);
        end;

        if Su = 'Z' then
        begin
            GetFldVar32('S_TEXT3',     sSlipCode);
            GetFldVar32('S_TEXT4',     sRsvCare);
            GetFldVar32('S_TEXT5',     sRsvPntYn);
            GetFldVar32('S_TEXT6',     sOrdrmk);
            GetFldVar32('S_TEXT7',     sAccno);  //ACCNO�߰�, KimDaeYong 2008-11-10
        end;

        //2004.2.7  �̰�ȭ�߰�
        if Su = 'H' then
        begin
            GetFldVar32('S_TEXT3',     sSlipCode);
            GetFldVar32('S_TEXT4',     sRsvCare);
            GetFldVar32('S_TEXT5',     sRsvPntYn);
            GetFldVar32('S_TEXT6',     sOrdrmk);
            GetFldVar32('S_TEXT7',     sAccno);  //ACCNO�߰�, KimDaeYong 2008-11-10
        end;

        //2008.10.01 KimDaeYong �߰�
        GetFldVar32('S_TEXT9',     sSpcdryn);
        //2008.10.22 KimDaeYong �߰�
        GetFldVar32('S_TEXT10',    sExamtype);

        Result := GetRecordCnt32('S_PATNO');

        txFree32;
    end;

{
    if (svrname = 'SR_PATEXAM_L1') then
    begin
    if (txGetFile(svrname,LocalFile)) then
    begin
         Result := GetFldVarFile(LocalFile, '!@', '#$',
						[@iOrdSeqNo
						,@iReadSeq
						,@iSordcnt
						,@iDayCnt
						,@sPatno
						,@sOrdDate
						,@sExamcode
						,@sExamname
						,@sExamstat
						,@sRoomcode
						,@sRsvType
						,@sRsvdate
						,@sAcptdate
						,@sExecdate
						,@sReaddate
						,@sCfmdate
						,@sChgdate
						,@sExamTech
						,@sExTechNm
						,@sReadDr1
						,@sRdDr1Nm
						,@sReadDr2
						,@sRdDr2Nm
						,@sCfmdr
						,@sCfmdrNm
						,@sMeddept
						,@sWardno
						,@sOrddr
						,@sOrddrNm
						,@sHopedate
						,@sPatsect
						,@sAdmdate
						,@sPortyn
						,@sEryn
						,@sRcpYn
						,@sRgrpcode
						,@sNormcode
						,@sReexdate
						,@sReexwdt
						,@sSaveid
						,@sOrdkindnm
						,@sDschdate
						,@sEqipcode
						,@sRepemark
						,@sPatsite]);
    end;
    end
//------------------
    else
    begin
    if (txGetF(svrname)) then
    begin
        GetFldVar('L_SEQNO1'   , iOrdSeqNo);
        GetFldVar('L_SEQNO2'   , iReadSeq);
        GetFldVar('L_CNT1'     , iSordcnt);
	    GetFldVar('S_PATNO'    , sPatno);
	    GetFldVar('S_ORDDATE'  , sOrdDate);
	    GetFldVar('S_ORDCODE'  , sExamcode);
	    GetFldVar('S_ORDNAME'  , sExamname);
	    GetFldVar('S_STAT1'    , sExamstat);
	    GetFldVar('S_CODE1'    , sRoomcode);
	    GetFldVar('S_TYPE1'    , sRsvType);
	    GetFldVar('S_RSVDATE'  , sRsvdate);
	    GetFldVar('S_ACPTDATE' , sAcptdate);
	    GetFldVar('S_EXECDATE' , sExecdate);
	    GetFldVar('S_READDATE' , sReaddate);
	    GetFldVar('S_CFMDATE'  , sCfmdate);
	    GetFldVar('S_CHGDATE'  , sChgdate);
	    GetFldVar('S_USERID1'  , sExamTech);
	    GetFldVar('S_USERNAME1', sExTechNm);
	    GetFldVar('S_DR1'      , sReadDr1);
	    GetFldVar('S_DRNAME1'  , sRdDr1Nm);
	    GetFldVar('S_DR2'      , sReadDr2);
	    GetFldVar('S_DRNAME2'  , sRdDr2Nm);
	    GetFldVar('S_DR3'      , sCfmdr);
	    GetFldVar('S_DRNAME3'  , sCfmdrNm);
	    GetFldVar('S_MEDDEPT'  , sMeddept);
	    GetFldVar('S_WARDNO'   , sWardno);
	    GetFldVar('S_DR4'      , sOrddr);
	    GetFldVar('S_DRNAME4'  , sOrddrNm);
	    GetFldVar('S_DATE1'    , sHopedate);
	    GetFldVar('S_PATSECT'  , sPatsect);
	    GetFldVar('S_ADMDATE'  , sAdmdate);
	    GetFldVar('S_YN1'      , sPortyn);
	    GetFldVar('S_YN2'      , sEryn);
	    GetFldVar('S_STAT2'    , sRcpYn);
        GetFldVar('S_CODE2'    , sRgrpcode);
        GetFldVar('S_CODE3'    , sNormcode);
        GetFldVar('S_DATETIME1', sReexdate);
        GetFldVar('S_DATETIME2', sReexwdt);
        GetFldVar('S_USERID2'  , sSaveid);
        GetFldVar('L_CNT2',      iDayCnt);
        GetFldVar('S_NAME1',     sOrdkindnm);
        GetFldVar('S_DATE31',    sDschdate);
        GetFldVar('S_CODE4',     sEqipcode);
        GetFldVar('S_TEXT1',     sRepemark);
        GetFldVar('S_TEXT2',     sPatsite);


        Result := GetRecordCnt('S_PATNO');
    
       txFree;
    end;
    end;
}

    //txFree32;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ���Ű˻� �̷���ȸ...
//==============================================================================
function HsrExam.PastExamList(Examtype, Patno: String): Integer;
var
   LocalFile: String;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_TYPE1;S_PATNO;S_FLAG9');
     SetFldValue(0,[Examtype,Patno,'EB1']);

     if (txGetFile('SR_PASTEXAM_L',LocalFile)) then    // sr_pastexam_l.pc
     begin
          Result := GetFldVarFile(LocalFile, '@!',
                                  [@sPatno,
                                   @sOrddate,
                                   @lOrdseqno,
                                   @sExamcode,
                                   @sExamname,
                                   @sExamstat,
                                   @sRoomcode,
                                   @sRsvdate,
                                   @sAcptdate,
                                   @sExecdate,
                                   @sReaddate,
                                   @sCfmdate,
                                   @sChgdate,
                                   @sExecid,
                                   @sExecidName,
                                   @sReaddr1,
                                   @sReaddr1Name,
                                   @sReaddr2,
                                   @sReaddr2Name,
                                   @sCfmdr,
                                   @sCfmdrName,
                                   @sSordcnt,
                                   @sMeddept,
                                   @sWardno,
                                   @sRoomno,
                                   @sOrddr,
                                   @sOrddrName,
                                   @sHopedate,
                                   @sPatsect,
                                   @sAdmdate,
                                   @sPortyn,
                                   @sEryn,
                                   @sWriterid,
                                   @sWriternm]);
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrExam.PastExamSel(Patno, Orddate: String; OrdSeqNo: Integer): Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE');
     SetFldValue(0,[OrdSeqNo,Patno,Orddate]);

     if (txGetF('SR_PASTEXAM_S')) then
     begin
        Result := GetRecordCnt('S_CODE3');
 	    GetFldVar('S_CODE3',    sDiagcode);
	    GetFldVar('S_NAME1',    sDiagname);
	    GetFldVar('S_TEXT1',    sOrdtext);
	    GetFldVar('S_TEXT2',    sOrdrmk);
	    GetFldVar('S_TEXT3',    sExamtext);
	    GetFldVar('S_RSLTTEXT', sRslttext);
     
        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrMatCode.MatCodeDelete(MatCode, ExamType: String): Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_CODE1;S_TYPE1');
     SetFldValue(0,[MatCode,ExamType]);

     if (txPutF('SR_MATCCT_D1')) then   // sr_matcct_d1.pc
     begin
          Result := 1;

        txFree;
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrEquipmentCode.EquipmentCodeDelete(sEqipcode,
  sExamtype,sRoomcode: String): Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_TYPE1;S_CODE2');
    SetFldValue(0,[sEqipcode,sExamtype,sRoomcode]);

    if txPutF('SR_EQUICT_D1') then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrSearchCd.SearchCodeDelete(SrchCode, ExamType: String): Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_TYPE1');
    SetFldValue(0,[SrchCode,ExamType]);

    if (txPutF('SR_SRCHCT_D1')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// SEARCH CODE ����.(TO SREXAMST)
//==============================================================================
function HsrReadFilm.SrchcodeInsert(Userid: String): Integer;
var
    i : Integer;
begin
    //  S_EDITID;   ������ ID
    //  S_EDITIP;   ������ IP
    //  L_SEQNO1;   ó�����
    //  S_PATNO;    ȯ�ڹ�ȣ
    //  S_ORDDATE;  ó������
    //  S_CODE1;    �����ڵ� - ��缱�� ���� ��쿣 search code
    //  S_CODE2;    ����ڵ�
    //  S_CODE3;    ACR CODE ��뿩�� - ��缱�� 'Y',��Ÿ Ư���˻�� 'N'

    Result := -1;
    txAlloc;
    SetFldName('S_EDITID;S_EDITIP');
    SetFldValue(0,[G_USERID,GetIP]);


    // ��缱���� ���, SREXAMST.ACRCDYN = 'Y'
    // ��Ÿ �˻���� 'N'
    SetFldName('S_CODE3');
    if (SRAMAINF.lb_examtype.Caption = 'R') then
        SetFldValue(0,['Y'])
    else
        SetFldValue(0,['N']);


    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE');

    for i := 0 to VarArrayHighBound(sPatNo,1) do
    begin
        SetFldValue(i,[Integer(iOrdSeqNo[i]),String(sPatNo[i]),String(sOrdDate[i])]);
    end;
    SetFldName('S_CODE1;S_CODE2');

    for i := 0 to VarArrayHighBound(sSrchCode,1) do
    begin
        SetFldValue(i,[string(sSrchCode[i]),string(sSiteCode[i])]);
    end;

    if (txPutF('SR_SRCHCODE_I')) then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
procedure ShowIntCase(grid : TStringgrid; Patno, Orddate, Ordseqno: String);
var
    i , cnt : Integer;
begin
    ClearRecord(grid);

    if ((patno ='') or (orddate = '') or (ordseqno = '')) then exit;

    Screen.Cursor := crHourglass;
    try

    srReadFilm := HsrReadFilm.Create;

    cnt   := srReadFilm.GetIntCase(Patno, Orddate, StrToInt(Ordseqno));

    if (cnt < 1) then
    begin
        //ShowErrMsg(SRAMAINF.stb_sramain);
        srReadFilm.Free;
        exit;
    end;

    grid.RowCount := cnt;

    for i := 0 to cnt - 1 do
    begin
        grid.cells[0,i] := srReadFilm.sIntDrId[i];
        grid.cells[1,i] := srReadFilm.sIntDrNm[i];
    end;

    srReadFilm.free;

    finally
    Screen.Cursor := crDefault;
    end;

end;

//==============================================================================
// �˻��� �ڵ尡 �Ҵ�Ǿ� �ִ� ���, �ش��ǵ��׸� ��ϵǾ� �մ� �˻��� �ڵ带
// ��ȸ�ϰ� �� ����� ȭ�鿡 ����Ѵ�.
// - ��缱�� ���, ugd_acr_reserved�׸��忡 ����ڵ�� �����ڵ带 ���.
// - ��Ÿ Ư���˻� ��Ʈ�� sgd_SrchCode�׸��忡 �˻��� �ڵ� ���.
//==============================================================================
procedure ShowSrchCode(grid : TStringgrid; Patno, Orddate, Ordseqno: String);
var
    i , cnt : Integer;
begin
    if (SRAMAINF.lb_examtype.Caption = 'R') then
    begin
        ClearGrid(grid);
        grid.Cells[0,0] := '���';
        grid.Cells[1,0] := '����';
        grid.RowCount := 2;
    end
    else
        ClearRecord(grid);

    // ȯ�ڹ�ȣ�� ó����, ó������� ���� ���, �ܼ� exit
    if ((patno ='') or (orddate = '') or (ordseqno = '')) then exit;

    Screen.Cursor := crHourglass;
    try


    srReadFilm := HsrReadFilm.Create;

    // ��缱�� ���, SR_SRCHCODE_L2 ���
    if (SRAMAINF.lb_examtype.Caption = 'R') then
    begin
        cnt   := srReadFilm.GetSrchCode2(Patno, Orddate, strtoint(Ordseqno));
    end
    else
    begin
        cnt   := srReadFilm.GetSrchCode(Patno, Orddate, strtoint(Ordseqno));
    end;

    if (cnt < 1) then
    begin
//        ShowErrMsg(SRAMAINF.stb_sramain);
        srReadFilm.Free;
        exit;
    end;

    grid.RowCount := cnt + grid.FixedRows;

    // ��缱�� ���
    if (SRAMAINF.lb_examtype.Caption = 'R') then
    begin
        for i := 1 to cnt do
        begin
            grid.cells[0,i] := srReadFilm.sSitename[i-1];
            grid.cells[1,i] := srReadFilm.sSrchName[i-1];
            grid.cells[2,i] := srReadFilm.sSitecode[i-1];
            grid.cells[3,i] := srReadFilm.sSrchcode[i-1];
        end;
    end
    else
    begin
        for i := 0 to cnt - 1 do
        begin
            grid.cells[0,i] := srReadFilm.sSrchCode[i];
            grid.cells[1,i] := srReadFilm.sSrchName[i];
        end;
    end;

    srReadFilm.free;

    finally
    Screen.Cursor := crDefault;
    end;

end;

//==============================================================================
//
//==============================================================================
function HsrReadFilm.GetIntCase(Patno, Orddate : String ; Ordseqno : Integer): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_FLAG9');
    SetFldValue(0,[OrdSeqNo,Patno,Orddate,'EB1']);

    if (txGetF('SR_INTCASE_L1')) then
    begin
        GetFldVar('S_DR1'     , sIntDrId);
        GetFldVar('S_DRNAME1' , sIntDrNm);
        Result := GetRecordCnt('S_DR1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ȯ�ڹ�ȣ, ó����, ó������� ��ϵǾ� �ִ� �˻��� �ڵ尡 ������ ���,
// �̵� ����� ��ȸ�Ѵ�.
//==============================================================================
function HsrReadFilm.GetSrchCode(Patno, Orddate : String ; Ordseqno : Integer): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE');
    SetFldValue(0,[OrdSeqNo,Patno,Orddate]);

    if (txGetF('SR_SRCHCODE_L1')) then
    begin
        GetFldVar('S_CODE1' , sSrchcode);
        GetFldVar('S_NAME1' , sSrchname);
        Result := GetRecordCnt('S_CODE1');
    
       txFree;
    end;

    MessageStr := GetTxMsg;
end;

//==============================================================================
// ȯ�ڹ�ȣ, ó����, ó������� ��ϵǾ� �ִ� �˻��� �ڵ�-��缱 ACR CODE��
// ������ ���, �̵� ����� ��ȸ�Ѵ�.
//==============================================================================
function HsrReadFilm.GetSrchCode2(Patno, Orddate: String; Ordseqno: Integer): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE');
    SetFldValue(0,[OrdSeqNo,Patno,Orddate]);

    if (txGetF('SR_SRCHCODE_L2')) then
    begin
        GetFldVar('S_CODE1' , sSitecode);
        GetFldVar('S_NAME1' , sSitename);
        GetFldVar('S_CODE2' , sSrchcode);
        GetFldVar('S_NAME2' , sSrchname);
        GetFldVar('S_YN1'   , sAcrcdYn);

        Result := GetRecordCnt('S_CODE1');
    
       txFree;
    end;

    MessageStr := GetTxMsg;
end;


//==============================================================================
// ���ī��Ʈ ����...
//==============================================================================
function HsrReadFilm.UpdatePrt(Prtuser: String; DataCnt: Integer): Integer;
var
   ix: Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_USERID1');
    SetFldValue(0,[Prtuser]);
    SetFldName('S_PATNO;S_ORDDATE;L_SEQNO1');
    for ix := 0 to DataCnt - 1 do
    begin
         SetFldValue(ix,[String(sPatno[ix]),String(sOrddate[ix]),Integer(lOrdSeqno[ix])]);
    end;
   if (txPutF('SR_UPDATEPRT_U')) then
   begin
        Result := 1;
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//  �ǵ�����
//==============================================================================
function HsrReadFilm.DelRead(DataCnt: Integer;userid: String): Integer;
var
   ix: Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_EDITID');
     SetFldValue(0,[G_USERID]);
     SetFldName('S_PATNO;S_ORDDATE;L_SEQNO1');
     if DataCnt > 0 then
     begin
          for ix := 0 to DataCnt - 1 do
          begin
               SetFldValue(ix,[String(sPatno[ix]),String(sOrddate[ix]),Integer(iOrdSeqno[ix])]);
          end;
     end
     else
     begin
          SetFldValue(0,[String(sPatno[0]),String(sOrddate[0]),Integer(iOrdSeqno[0])]);
     end;
     if (txPutF('SR_READ_D')) then
     begin
          Result := 1;
          //txFree;

        txFree;
     end;
     MessageStr := GetTxMsg;
end;


//==============================================================================
//  �ǵ�����
//  2003.2.28 �̰�ȭ -- ��������
//==============================================================================
function HsrReadFilm.DelRead1(DataCnt: Integer;userid: String): Integer;
var
   ix: Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_EDITID');
     SetFldValue(0,[G_USERID]);
     SetFldName('S_PATNO;S_ORDDATE;L_SEQNO1');
     if DataCnt > 0 then
     begin
          for ix := 0 to DataCnt - 1 do
          begin
               SetFldValue(ix,[String(sPatno[ix]),String(sOrddate[ix]),Integer(iOrdSeqno[ix]),String(sPatsect[ix])]);
          end;
     end
     else
     begin
          SetFldValue(0,[String(sPatno[0]),String(sOrddate[0]),Integer(iOrdSeqno[0])]);
     end;
     if (txPutF('SR_READ_D1')) then
     begin
          Result := 1;
          //txFree;

        txFree;
     end;
     MessageStr := GetTxMsg;
end;



//==============================================================================
//
//==============================================================================
function HsrReadFilm.ChkInterest(Patno, Readdr: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_DR1');
    SetFldValue(0,[Patno,Readdr]);
    if (txGetF('SR_INTCASE_S1')) then begin
        GetFldVar('L_CNT1' , iIntCaseCnt);
        Result := iIntCaseCnt[0];
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrRedoct.RedoctDelete(DocCode, Examtype: string): integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_TYPE1');
    SetFldValue(0,[DocCode, Examtype]);
    if (txPutF('SR_REDOCT_D')) then begin
        Result := 1;
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrRedoct.RedoctInsert(DocCode, UserId, Examtype, Comment:string): integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_CODE2;S_TYPE1;S_TEXT1');
    SetFldValue(0,[DocCode,UserId,Examtype,Comment]);
    if (txPutF('SR_REDOCT_I')) then begin
        Result := 1;
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;

end;

//==============================================================================
//
//==============================================================================
function HsrRedoct.RedoctSel(DocCode, Examtype: string): integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_TYPE1;S_FLAG9');
    SetFldValue(0,[DocCode,Examtype,'EB1']);
    if (txGetF('SR_REDOCT_S')) then begin
        Result := GetRecordCnt('S_CODE2');
        GetFldVar('S_CODE2' ,   sDocCode);
        GetFldVar('S_USERID1' , sUserId);
        GetFldVar('S_USERNAME1',sUserName);
        GetFldVar('S_CODE3',    sSpcDrYn); // �����ǵ��ǿ��� �߰� 2013.12.20 �����
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �ǵ��� �ڵ���� ��ȸ...
//==============================================================================
function HsrRedoct.RedoctList(DocCode, Userid, Username, Examtype: string): integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_USERID1;S_USERNAME1;S_TYPE1;S_FLAG9');
    SetFldValue(0,[DocCode,Userid,Username,Examtype,'EB1']);

    if (txGetF('SR_REDOCT_L1')) then   // sr_redoct_l1.pc
    begin
        GetFldVar('S_CODE1' , sDocCode);
        GetFldVar('S_CODE2' , sUserId);
        GetFldVar('S_NAME1' , sUserName);
        GetFldVar('S_TEXT1' , sComment);
        Result := GetRecordCnt('S_CODE1');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
function HsrRedoct.RedoctUpdate(DocCode, Examtype, Comment:string): integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_TYPE1;S_TEXT1');
    SetFldValue(0,[DocCode,Examtype,Comment]);
    if (txPutF('SR_REDOCT_U')) then begin
        Result := 1;
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//
//==============================================================================
procedure U_PrinterChange(PRT_Name:String);
var
  Device        :array[0..255] of char;
  Driver        :array[0..255] of char;
  Port          :array[0..255] of char;
  hDeviceMode   :THandle;
  idx           :integer;
begin
     for idx := 0 to Printer.Printers.Count - 1 do
        if Pos(PRT_Name,Printer.Printers[idx] ) > 0 then
           break;
     if idx  = Printer.Printers.Count then
     begin
          Showmessage('printer �� ����Ǿ� ���� �ʾ� ����� �Ұ��մϴ�');
          Abort;
     end;
     Printer.PrinterIndex := idx;
     Printer.GetPrinter(Device, Driver, Port, hDeviceMode);
     SetDefaultPrinter(Device); //���� ����
     //Window�� DefaultPrinter�� �ٲ۴�.
     StrCat( Device, ',');
     StrCat( Device, Driver );
     StrCat( Device, ',');
     StrCat( Device, Port );
     WriteProfileString( 'windows', 'device', Device);
     StrCopy( Device, 'windows' );
//KimDaeYong del, 2009-01-29, ���ʿ���±��, �̺�Ʈ�߻��� �ٿ����� �߻�
//     SendMessage( HWND_BROADCAST, WM_WININICHANGE, 0, longint( @Device ));
end;

//==============================================================================
//
//==============================================================================
procedure SetDefaultPrinter( ADevice : PChar  );
var
  TamanoDevice : longint;
  Caracteristicas : TDeviceMode;
  DevMode : PDeviceMode;
  Devicemode : THandle;
  Impresora : THandle;
//\\\  Driver : array [0..255] of char;
//  Nombre : string;
begin
     OpenPrinter(ADevice,Impresora,nil);
     TamanoDevice := DocumentProperties(0,Impresora,ADevice,
		     Caracteristicas, Caracteristicas,0);


     DeviceMode := GlobalAlloc(GHND, TamanoDevice);

     if DeviceMode <> 0 then
        begin
             DevMode := GlobalLock(DeviceMode);
             if DocumentProperties(0,Impresora,ADevice,
	        DevMode^,DevMode^,DM_OUT_BUFFER) < 0 then
	        ShowMessage('Error 1');
{
             //custom���� ���� ���� mm����
             DevMode^.dmPaperSize := 0;
             DevMode^.dmPaperLength := 500;
             DevMode^.dmPaperWidth := 500;
             DevMode^.dmOrientation := DMORIENT_LANDSCAPE;
             DevMode^.dmFields := DM_PAPERSIZE or DM_PAPERLENGTH or DM_PAPERWIDTH or DM_ORIENTATION;
}
             //A4�� ���� ���� devmode�� ���� Help�� Delphi3/help/mapi.hlp�� ����
             DevMode^.dmPaperSize := DMPAPER_A4;
             DevMode^.dmFields := DM_PAPERSIZE;
             if DocumentProperties(0,Impresora,ADevice,
	        DevMode^,DevMode^,DM_IN_BUFFER or DM_OUT_BUFFER or DM_UPDATE)<0
                then
	        ShowMessage('Error 2');

             GlobalUnlock(DeviceMode);
             GlobalFree(DeviceMode);
             Devicemode := 0;
        end
     else
         ShowMessage('No se reservo memoria.');
     ClosePrinter(Impresora);
end;

/////////////////////////////////////////////
// ��ü�� �˻� ó�� ��ȸ (20010904 : ������)
/////////////////////////////////////////////
//==============================================================================
//
//==============================================================================
function Hmdexmort.Ord_info(in_flag,in_patno,in_meddept,in_date,in_locate: String): Integer;
begin
   //pr_clearbar;

   Result := -1;
   txAlloc;

   SetFldName('S_FLAG1;S_PATNO;S_CODE1;S_DATE1;S_CODE2');
   SetFldValue(0,[in_flag,in_patno,in_meddept,in_date,in_locate]);
   if txGetF('SN_EXMOR_L6') then
   begin
      Result := GetRecordCnt('S_NO3');

      GetFldVar('S_NO3', sPatno);
      GetFldVar('S_NAME3', sPatname);
      GetFldVar('S_DATE3', tOrddate);
      GetFldVar('S_NO6', sOrdseqno);
      GetFldVar('S_DATE4', tMeddate);
      GetFldVar('S_STRING3', sPatsect);
      GetFldVar('S_YN3', sEryn);
      GetFldVar('S_STRING4', sMeddept);
      GetFldVar('S_USERNAME3', sChadr);
      GetFldVar('S_USERNAME4', sOrddr);
      GetFldVar('S_CODE4', sOrdcd);
      GetFldVar('S_NAME4', sExamname);
      GetFldVar('S_YN4', sDruginyn);
      GetFldVar('S_CODE5', sSpccode1);
      GetFldVar('S_CODE6', sSpccode2);
      GetFldVar('S_USERNAME5', sSpcdr);
      GetFldVar('S_DATE5', tRcpdate);
      GetFldVar('S_STAT3', sRcpstat);
      GetFldVar('S_YN5', sRemarkyn);
      GetFldVar('S_NO4', sWardno);
      GetFldVar('S_NO5', sRoomno);
      GetFldVar('S_TIME3', sOrdtime);
      GetFldVar('S_STAT4', sSlipcd);
      GetFldVar('S_STAT5', sProcstat);
      GetFldVar('S_NAME5', sSlipcd);
      GetFldVar('S_NAME6', sSlipnm);
      GetFldVar('S_IDNUM1', sSpcid1);
      GetFldVar('S_IDNUM2', sSpcid2);

      //txFree;
   
      txFree;
   end;
end;

/////////////////////////////////////////////////////
// �˻�þ��뷮 ��ȸ (2001.09.13 ������)
/////////////////////////////////////////////////////
//==============================================================================
//
//==============================================================================
function HsrDrugUse.DrugUseListFtp(Fromdate,Todate,DrugCode,Flag,Examcode:String):Integer;
var
    LocalFile : string;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROM1;S_TO1;S_TYPE1;S_CODE1;S_CODE2;S_CODE3');
    SetFldValue(0,[Fromdate, Todate, SRAMAINF.lb_examtype.Caption, Drugcode, Flag, Examcode]);

    if (txGetFile('SR_DRUGUSE_L',LocalFile)) then
    begin
        Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                             [@sExecdate,
                              @sPatno   ,
                              @sPatname ,
                              @sExamcode,
                              @sExamname,
                              @sDrugcode,
                              @sDrugname,
                              @sUseqty  ,
                              @sUnit    ,
                              @sOrddr   ,
                              @sOrddrname]);

        //txFree;

    end;

    MessageStr := GetTxMsg;
end;

//////////////////////////////////////////////////
//==============================================================================
//
//==============================================================================
// �� ����� �������� function (2001.09.13 ������)
//////////////////////////////////////////////////
function HsrDgcdmt.List10(Drugcode,Drugname,Igrdname,Efccodel,Efccodem,Efccodes:String):Integer;
var LocalFile: string;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6');
     SetFldValue(0,[Drugcode,Drugname,Igrdname,Efccodel,Efccodem,Efccodes]);
     if txGetFile('SD_DGCDM_L10', LocalFile) then
     begin
          Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
                          [ @sDrugcode,
                            @sDrugname,
                            @sDostype,
                            @sDostypenm]);

          //txFree;
     end;
end;

////////////////////////////////////////////////////////////////////////////////
//  HsrOpreqt 	�����Ƿڳ���                                                  //
////////////////////////////////////////////////////////////////////////////////

// �����̷� ��ȸ
function HsrOpreqt.ListOpEq(sType1,sType2,sType3,sType4,sType5,sType6,sType7:String;icnt:Integer):Integer;
begin
   Result := -1;
   //Pointer�� �޾ƿ�.
   txAlloc;
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;L_CNT1');
   SetFldValue(0, [sType1,sType2,sType3,sType4,sType5,sType6,sType7,icnt]);

   //Tuxedo Service Call
   if (txGetF('MD_OPREQ_L1')) then begin
      GetFldVar('S_STRING1',  sOpdate);
      GetFldVar('S_STRING2',  sDeptNm);
      GetFldVar('S_STRING3',  sOpdrNm);
      GetFldVar('S_STRING4',  sOpname);
      GetFldVar('S_STRING5',  sCofm);
      GetFldVar('S_STRING6',  sEryn);
      GetFldVar('S_STRING7',  sReopyn);
      GetFldVar('S_STRING8',  sOpstm);
      GetFldVar('S_STRING9',  sEstimttm);
      GetFldVar('S_STRING10', sDiagcd);
      GetFldVar('S_STRING11', sDiagname);
      GetFldVar('S_STRING12', sCombinyn);
      GetFldVar('S_STRING13', sOproom);
      GetFldVar('S_STRING14', sOpcode);
      GetFldVar('S_STRING15', sOpcode2);
      GetFldVar('S_STRING16', sOpcode3);
      GetFldVar('S_STRING17', sOpdr);
      GetFldVar('S_STRING18', sOpdr2);
      GetFldVar('S_STRING19', sOpdr3);
      GetFldVar('S_STRING20', sCon1dr);
      GetFldVar('S_STRING21', sCon1dr2);
      GetFldVar('S_STRING22', sCon1dr3);
      GetFldVar('S_STRING23', sCon2dr);
      GetFldVar('S_STRING24', sCon2dr2);
      GetFldVar('S_STRING25', sCon2dr3);
      GetFldVar('S_STRING26', sAnspcyn);
      GetFldVar('S_STRING27', sAnethcd);
      GetFldVar('S_STRING28', sAnethdr);
      GetFldVar('S_STRING29', sCarmyn);
      GetFldVar('S_STRING30', sGarmyn);
      GetFldVar('S_STRING31', sEndoyn);
      GetFldVar('S_STRING32', sSonoyn);
      GetFldVar('S_STRING33', sLaseryn);
      GetFldVar('S_STRING34', sOpphys);
      GetFldVar('S_STRING35', sRemark);
      GetFldVar('S_STRING36', sCondept1);
      GetFldVar('S_STRING37', sCondept2);
      GetFldVar('S_STRING38', sConopcd1);
      GetFldVar('S_STRING39', sConopcd2);
      GetFldVar('S_STRING40', sCofmyn);
      GetFldVar('S_STRING41', sPatNo);
      GetFldVar('S_STRING42', sPatNm);
      GetFldVar('S_STRING43', sMedDept);
      GetFldVar('S_STRING44', sWardno);
      GetFldVar('S_STRING45', sAge);
      GetFldVar('S_STRING46', sComcdnm3);
      GetFldVar('S_STRING47', sCaution);
      GetFldVar('S_STRING48', sOpStat);
      GetFldVar('S_STRING49', sPatsect);
      GetFldVar('S_STRING50', sRoomno);
      GetFldVar('S_TYPE1'   , sAnethdrNm);
      GetFldVar('S_TYPE2'   , sOpcd2name);
      GetFldVar('S_TYPE3'   , sOpcd3name);
      GetFldVar('S_TYPE4'   , sOpcn1cdnm);
      GetFldVar('S_TYPE5'   , sOpcn2cdnm);
      GetFldVar('S_TYPE6'   , sSex);
      GetFldVar('S_TYPE7'   , sBirtDate);
      GetFldVar('L_LONG1'  ,  iOpseqno);
      //Service�� �����ϰ� FML Buffer�� PUT�� Record��
      Result := GetRecordCnt('S_STRING1');
      //txFree;

      txFree;
   end;
end;

///////////////////////////////////////////////////////////////////////////
// ����� ��ȸ�� ���� ����ý��ۿ��� �����(2001.09.15 ������)
///////////////////////////////////////////////////////////////////////////
function HsrExCode.SelDeptNm(sType1,sType2:string):Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2');
   SetFldValue(0, [sType1,sType2]);  // 1:����� 2:����
   if (txGetF('MD_DEPTC_L1')) then begin //Tuxedo Service Call
      GetFldVar('S_CODE1'  ,sDeptCd);
      GetFldVar('S_CODE2'  ,sDeptNm);
      Result := GetRecordCnt('S_CODE1'); //Service�� �����ϰ� FML Buffer�� PUT�� Record��
      //txFree;

      txFree;
   end;
end;

//�����ڵ�List SELECT
function HsrExCode.ListComCodeName(Code1 : String):Integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
   txAlloc;

   //FML Buffer Field Assign
   SetFldName('S_CODE1');
   SetFldValue(0,[Code1] );

   //Tuxedo Service Call
   if (txGetF('SR_COMCDT_L1')) then
   begin
     GetFldVar('S_STRING1',  sCode    );  // �ڵ�
     GetFldVar('S_STRING2',  sCodeName);  // �ڵ��

      //��ȸ�Ǽ� return
      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

///////////////////////////////////////////////////////////////////////////
// ����� ��ȸ�� ���� ����ý��ۿ��� �����(2001.09.15 ������)
///////////////////////////////////////////////////////////////////////////
function HsrInsamt.ListUserInfo(sType1,sType2,sType3,sType4:String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
   SetFldValue(0,[sType1,sType2,sType3,sType4]);
   if (txGetF('MD_INSAM_L1')) then begin //Tuxedo Service Call
      GetFldVar('S_STRING1',sEmpNo);
      GetFldVar('S_STRING2',sEmpNm);
      GetFldVar('S_STRING3',sComCdNm);
      GetFldVar('S_STRING4',sDeptCd);
      GetFldVar('S_STRING5',sDeptNm);
      GetFldVar('S_STRING6',sLicNo);
      GetFldVar('S_STRING7',sMajorNo);

      Result := GetRecordCnt('S_STRING1');
      //txFree;
   
      txFree;
   end;
end;

///////////////////////////////////////////////////////////////////////////
// ���� �����ڵ� ��ȸ�� ���� ����ý��ۿ��� �����(2001.09.15 ������)
///////////////////////////////////////////////////////////////////////////
function HsrMcomct.ListComCd(sType,Comcd1,Comcd2,Comcd3:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldNamE('S_TYPE1;S_CODE1;S_CODE2;S_CODE3');
    SetFldValue(0,[sType,Comcd1,Comcd2,Comcd3]);
    if (txGetF('MD_MCOMC_L1')) then
    begin
       GetFldVar('L_CNT1',     iCitem06);
       GetFldVar('L_CNT2',     iCitem07);
       GetFldVar('L_CNT3',     iCitem08);
       GetFldVar('L_CNT4',     iCitem09);
       GetFldVar('L_CNT5',     iCitem10);
       GetFldVar('L_SEQNO1',   iDispseq);
       GetFldVar('S_STRING1',  sComcd1);
       GetFldVar('S_STRING2',  sComcd2);
       GetFldVar('S_STRING3',  sComcd3);
       GetFldVar('S_STRING4',  sComcdnm1);
       GetFldVar('S_STRING5',  sComcdnm2);
       GetFldVar('S_STRING6',  sComcdnm3);
       GetFldVar('S_STRING7',  sCitem01);
       GetFldVar('S_STRING8',  sCitem02);
       GetFldVar('S_STRING9',  sCitem03);
       GetFldVar('S_STRING10', sCitem04);
       GetFldVar('S_STRING11', sCitem05);
       GetFldVar('S_STRING12', sCitem11);
       GetFldVar('S_STRING13', sCitem12);
       GetFldVar('S_STRING14', sDeldate);
       Result := GetRecordCnt('S_STRING1');
       //txFree;
    
       txFree;
    end;
end;

//==============================================================================
// �˻�ǽ� ��� - ������
//==============================================================================
function HsdStatis.List5(fromdate,todate,meddept,drugcode,drugkind,drugtype,dostype,acqtype,oiflag:String):Integer;
var
   LocalFile: String;
begin
   Result := -1;
   txAlloc;

   SetFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7;S_CODE8;S_CODE9');
   SetFldValue(0,[fromdate,todate,meddept,drugcode,drugkind,drugtype,dostype,acqtype,oiflag]);

   if txGetFile('SR_DRUGSTAT_L1', LocalFile) then
//   if txGetFile('SD_STATIS_L7', LocalFile) then
   begin
//         Result := GetFldVarFile(LocalFile, Chr(VK_TAB),
         Result := GetFldVarFile(LocalFile, '!@', '#$',
                     [      @sorddate  ,
                            @spatno    ,
                            @spatname  ,
                            @sdosno    ,
                            @smeddept  ,
                            @soiflag   ,
                            @suseridnm ,
                            @sdrugcode ,
                            @sdrugname ,
                            @sbottqty  ,
                            @sbottunit ,
                            @scount1   ,
                            @sdosday   ,
                            @stotqty   ,
                            @sgrpnam   ,
                            @spharmname,
                            @sdeptcd    ]);
       //txFree;
   end;
end;

//==============================================================================
//����ȭ�� ȯ�ڹ�ȣ �����Է�
//==============================================================================
function HmdOpdlst.SelectPat(PatNo:String):Integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
   txAlloc;

   //FML Buffer Field Assign
   SetFldName('S_TYPE1'); //ȯ�ڹ�ȣ;������;�����
   SetFldValue(0,[PatNo ] );

   //Tuxedo Service Call
   if (txGetF('MD_OPDLS_L6')) then
   begin
      GetFldVar('S_STRING1',  sPatcls );  // ���Ό��ð�
      GetFldVar('S_STRING2',  sAdmdate);  // �����
      GetFldVar('S_STRING3',  sMeddept);  // ���Ῡ��
      GetFldVar('S_STRING4',  sMeddr  );  // ��������
      GetFldVar('S_STRING5',  sMedtime);  // Ư�����
      GetFldVar('S_STRING6',  sMeddrnm);  // ������Name
      GetFldVar('S_STRING7',  sPatname);  // ���౸��
      GetFldVar('S_STRING8',  sGubn   );  // ��/��������


      //��ȸ�Ǽ� return
      Result := GetRecordCnt('S_STRING1');
      //txFree;
   
      txFree;
   end;
end;

//==============================================================================
// �索���� �ǽ���Ȳ ��ȸ
//==============================================================================
function HsrExecute.ExecuteList13(FromDate, ToDate, RoomCode, Meddept,
  Wardno, Patno, Examcode, Examtype: String): Integer;
var
//\\\    d_tmp : TDateTime;
    LocalFile: String;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROM1;S_TO1;S_CODE1;S_CODE2;S_CODE3;S_PATNO;S_CODE4;S_TYPE1;S_FLAG9');
    SetFldValue(0,[FromDate,ToDate,RoomCode,Meddept,Wardno,Patno,Examcode,Examtype,'EB1']);

    if (txGetFile('SR_EXECDONE_L13',LocalFile)) then
    begin
         Result := GetFldVarFile(LocalFile, '!@', '#$',
                                [@iOrdseqno,
                                 @iSOrdCnt,
                                 @iDayCnt,
                                 @sPatno,
                                 @sOrdDate,
                                 @sExamStat,
                                 @sExamcode,
                                 @sExamname,
                                 @sEqipcode,
                                 @sRsvDate,
                                 @sExecDate,
                                 @sExamTech,
                                 @sExTechNm,
                                 @sMedDept,
                                 @sWardno,
                                 @sOrddr,
                                 @sOrdDrNm,
                                 @sPatName,
                                 @sResNo1,
                                 @sResNo2,
                                 @sErYn,
                                 @sPortyn,
                                 @sReexdate,
                                 @sReexwdt,
                                 @sRoomcode,
                                 @sDiagname,
                                 @sOrdtext,
                                 @sOrdrmk,
                                 @sRoomno,
                                 @sBirdate,
                                 @sSex,
                                 @sRepemark]);
     end;

     //txFree;
     MessageStr := GetTxMsg;
end;






//==============================================================================
{ HsrAcrcdt }
//==============================================================================

//==============================================================================
// �����ڵ� ����.
//==============================================================================
function HsrAcrcdt.AcrcodeDelete(AcrCode: string): Integer;
begin
    Result := -1;

    //Pointer�� �޾ƿ�.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;S_EDITID;S_EDITIP');  // �����ڵ�
    SetFldValue(0,[AcrCode,G_USERID,GetIP] );

    //Tuxedo Service Call
    if (txPutF('SR_ACRCDT_D')) then
    begin
        //��� return
        Result := 1;
    
       txFree;
    end;

    //txFree;
end;

//==============================================================================
// �����ڵ� �߰�
//==============================================================================
function HsrAcrcdt.AcrcodeInsert(AcrCode,AcrName,UseYn: string): Integer;
begin
    Result := -1;

    //Pointer�� �޾ƿ�.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;S_NAME1;S_YN1;S_EDITID;S_EDITIP');  // �����ڵ�;���ܸ�;��뿩��;������ID;������IP
    SetFldValue(0,[AcrCode,AcrName,UseYn,G_USERID,GetIP] );

    //Tuxedo Service Call
    if (txPutF('SR_ACRCDT_I')) then
    begin
        // ��� return
        Result := 1;
    
       txFree;
    end;

    //txFree;
end;

//==============================================================================
// �����ڵ� ��� ��ȸ
//==============================================================================
function HsrAcrcdt.AcrcodeList(AcrCode,Flag,SiteCode: String): Integer;
begin
    Result := -1;

    //Pointer�� �޾ƿ�.
    txAlloc;

    //FML Buffer Field Assign
    // S_CODE2: '0' : �ڵ�� ��ȸ. '1' : ���ܸ����� ��ȸ. '2': �ǵ��Է¶����� ��ȸ.
    SetFldName('S_CODE1;S_CODE2;S_CODE3'); //ȯ�ڹ�ȣ;������;�����
    SetFldValue(0,[AcrCode,Flag,SiteCode] );

    //Tuxedo Service Call
    if (txGetF('SR_ACRCDT_L')) then
    begin
        GetFldVar('S_CODE1',  sAcrCode );   // �����ڵ�
        GetFldVar('S_NAME1',  sAcrName);    // ���ܸ�
        GetFldVar('S_YN1',    sUseYn);      // ��뿩��

        //��ȸ�Ǽ� return
        Result := GetRecordCnt('S_CODE1');
    
       txFree;
    end;

    //txFree;
end;

//==============================================================================
// �����ڵ� ������ ��ȸ
//==============================================================================
function HsrAcrcdt.AcrcodeSel(AcrCode: string): Integer;
begin
    Result := -1;

    //Pointer�� �޾ƿ�.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1');  // �����ڵ�
    SetFldValue(0,[AcrCode] );

    //Tuxedo Service Call
    if (txGetF('SR_ACRCDT_S')) then
    begin
        GetFldVar('S_CODE1',  sAcrCode );   // �����ڵ�
        GetFldVar('S_NAME1',  sAcrName);    // ���ܸ�
        GetFldVar('S_YN1',    sUseYn);      // ��뿩��

        //��ȸ�Ǽ� return
        Result := GetRecordCnt('S_CODE1');
    
       txFree;
    end;

    //txFree;
end;

//==============================================================================
// �����ڵ� ����.
//==============================================================================
function HsrAcrcdt.AcrcodeUpdate(AcrCode,AcrName,UseYn: string): Integer;
begin
    Result := -1;

    //Pointer�� �޾ƿ�.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;S_NAME1;S_YN1;S_EDITID;S_EDITIP'); // �����ڵ�;���ܸ�;��뿩��
    SetFldValue(0,[AcrCode,AcrName,UseYn,G_USERID,GetIP] );

    //Tuxedo Service Call
    if (txPutF('SR_ACRCDT_U')) then
    begin
        //��ȸ�Ǽ� return
        Result := 1;
    
       txFree;
    end;

    //txFree;
end;





//==============================================================================
{ HsrSitect  - �����ڵ� ���� Ŭ���� }
//==============================================================================

//==============================================================================
// ����ڵ� ����.
//==============================================================================
function HsrSitect.SitecodeDelete(SiteCode: string): Integer;
begin
    Result := -1;

    //Pointer�� �޾ƿ�.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1');      // ����ڵ�
    SetFldValue(0,[SiteCode]);

    //Tuxedo Service Call
    if (txPutF('SR_SITECT_D')) then
    begin
        // ��� return
        Result := 1;
    
       txFree;
    end;

    //txFree;
end;

//==============================================================================
// ����ڵ� �߰�.
//==============================================================================
function HsrSitect.SitecodeInsert(SiteCode,SiteName,UseYn: string): Integer;
begin
    Result := -1;

    //Pointer�� �޾ƿ�.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;S_NAME1;S_YN1;S_EDITID;S_EDITIP');  // ����ڵ�;����;��뿩��
    SetFldValue(0,[SiteCode,SiteName,UseYn,G_USERID,GetIP] );

    //Tuxedo Service Call
    if (txPutF('SR_SITECT_I')) then
    begin
        // ��� return
        Result := 1;
    
       txFree;
    end;

    //txFree;
end;

//==============================================================================
// ����ڵ� ��� ��ȸ
//==============================================================================
function HsrSitect.SitecodeList(SiteCode, SiteName: String): Integer;
begin
    Result := -1;

    //Pointer�� �޾ƿ�.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;S_NAME1');  // ����ڵ�;����
    SetFldValue(0,[SiteCode,SiteName]);

    //Tuxedo Service Call
    if (txGetF('SR_SITECT_L')) then
    begin
        GetFldVar('S_CODE1',  sSiteCode );  // ����ڵ�
        GetFldVar('S_NAME1',  sSiteName);   // ����
        GetFldVar('S_YN1',    sUseYn);      // ��뿩��

        //��ȸ�Ǽ� return
        Result := GetRecordCnt('S_CODE1');
    
       txFree;
    end;

    //txFree;
end;

//==============================================================================
// ����ڵ� ������ ��ȸ
//==============================================================================
function HsrSitect.SitecodeSel(SiteCode: string): Integer;
begin
    Result := -1;

    //Pointer�� �޾ƿ�.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;');  // ����ڵ�
    SetFldValue(0,[SiteCode]);

    //Tuxedo Service Call
    if (txGetF('SR_SITECT_S')) then
    begin
        GetFldVar('S_CODE1',  sSiteCode );  // ����ڵ�
        GetFldVar('S_NAME1',  sSiteName);   // ����
        GetFldVar('S_YN1',    sUseYn);      // ��뿩��

        //��ȸ�Ǽ� return
        Result := GetRecordCnt('S_CODE1');

       txFree;
    end;

    //txFree;
end;

//==============================================================================
// ����ڵ� ����.
//==============================================================================
function HsrSitect.SitecodeUpdate(SiteCode, SiteName,UseYn: string): Integer;
begin
    Result := -1;

    //Pointer�� �޾ƿ�.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;S_NAME1;S_YN1;S_EDITID;S_EDITIP');  // ����ڵ�;����
    SetFldValue(0,[SiteCode,SiteName,UseYn,G_USERID,GetIP]);

    //Tuxedo Service Call
    if (txPutF('SR_SITECT_U')) then
    begin
        // ��� return
        Result := 1;

       txFree;
    end;

    //txFree;
end;



//==============================================================================
{ HsrHolidt }
//==============================================================================


//==============================================================================
// ������ ����� ��ȸ. ������.
//==============================================================================
function HsrHolidt.HolidayList(YearMonth: String): Integer;
begin
    Result := -1;

    //Pointer�� �޾ƿ�.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_DATE1');  // ����ڵ�;����
    SetFldValue(0,[YearMonth]);

    //Tuxedo Service Call
    if (txGetF('SR_HOLIDAY_L')) then
    begin
        GetFldVar('S_DATE1',  sHoliday );  // ����
        GetFldVar('S_NAME1',  sHolidtnm);  // ���ϸ�
        GetFldVar('S_TYPE1',  sHolitype);  // ����Ÿ��

        //��ȸ�Ǽ� return
        Result := GetRecordCnt('S_DATE1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;






//==============================================================================
{ HsrCodect }
//==============================================================================

//==============================================================================
// �����ڵ� ����
//==============================================================================
function HsrCodect.CodectDelete(Code1, Code2: string): Integer;
begin
    Result := -1;

    //Pointer�� �޾ƿ�.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;S_CODE2');      // ��з� �ڵ� ; �ߺз� �ڵ�
    SetFldValue(0,[Code1, Code2]);

    //Tuxedo Service Call
    if (txPutF('SR_CODECT_D')) then
    begin
        // ��� return
        Result := 1;

       txFree;
    end;

    //txFree;
end;

//==============================================================================
// �����ڵ� �Է�
//==============================================================================
function HsrCodect.CodectInsert(Code1,Code2,Name,UseYn: string): Integer;
begin
    Result := -1;

    //Pointer�� �޾ƿ�.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;S_CODE2;S_NAME1;S_YN1;S_EDITID;S_EDITIP');  // ��з��ڵ�;�ߺз��ڵ�;�����ڵ��;��뿩��
    SetFldValue(0,[Code1,Code2,Name,UseYn,G_USERID,GetIP] );

    //Tuxedo Service Call
    if (txPutF('SR_CODECT_I')) then
    begin
        // ��� return
        Result := 1;
    
       txFree;
    end;

    //txFree;
end;

//==============================================================================
// �����ڵ� ��� ��ȸ
//==============================================================================
function HsrCodect.CodectList(Code1,Code2: String): Integer;
begin
    Result := -1;

    //Pointer�� �޾ƿ�.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;S_CODE2');  // ��з��ڵ�;�ߺз��ڵ�
    SetFldValue(0,[Code1,Code2]);

    //Tuxedo Service Call
    if (txGetF('SR_CODECT_L')) then
    begin
        GetFldVar('S_CODE1',  sCode);  // ����ڵ�
        GetFldVar('S_NAME1',  sCodeName);   // ����
        GetFldVar('S_YN1',    sUseYn);      // ��뿩��

        //��ȸ�Ǽ� return
        Result := GetRecordCnt('S_CODE1');
    
       txFree;
    end;

    //txFree;
end;

//==============================================================================
// �����ڵ� ����ȸ
//==============================================================================
function HsrCodect.CodectSel(Code1,Code2: string): Integer;
begin
    Result := -1;

    //Pointer�� �޾ƿ�.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;S_CODE2');  // ��з��ڵ�;�ߺз��ڵ�
    SetFldValue(0,[Code1,Code2]);

    //Tuxedo Service Call
    if (txGetF('SR_CODECT_S')) then
    begin
        GetFldVar('S_CODE1',  sCode);  // �����ڵ�
        GetFldVar('S_NAME1',  sCodeName);   // �����ڵ��
        GetFldVar('S_YN1',    sUseYn);      // ��뿩��

        //��ȸ�Ǽ� return
        Result := GetRecordCnt('S_CODE1');
    
       txFree;
    end;

    //txFree;
end;

//==============================================================================
// �����ڵ� ����
//==============================================================================
function HsrCodect.CodectUpdate(Code1, Code2, CodeName, UseYn: string): Integer;
begin
    Result := -1;

    //Pointer�� �޾ƿ�.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;S_CODE2;S_NAME1;S_YN1;S_EDITID;S_EDITIP');  // ��з��ڵ�;�ߺз��ڵ�;���� �ڵ��;��뿩��
    SetFldValue(0,[Code1,Code2,CodeName,UseYn,G_USERID,GetIP]);

    //Tuxedo Service Call
    if (txPutF('SR_CODECT_U')) then
    begin
        // ��� return
        Result := 1;
    
       txFree;
    end;

    //txFree;
end;






/////////////////////////////////////////////////////////////////
// 1. HcmDept : �μ���ȸ, �������ȸ Class
/////////////////////////////////////////////////////////////////

//�μ���ȸ(CM_DEPT_L)
function HcmDept2.Select(deptnm, deptcd, locate: String): Integer;
//var
//   LocalFile: String;
begin
     Result := -1;
     txAlloc32;
     SetFldName32('S_NAME1;S_CODE1;S_CODE2');
     SetFldValue32(0,[deptnm,deptcd,locate]);

     if txGetF32('SR_DEPT_L2') then
     begin
          Result := GetRecordCnt32('S_NAME2');
          GetFldVar32('S_NAME2', sDeptnm);
          GetFldVar32('S_CODE3', sDeptcd);
          GetFldVar32('S_CODE4', sLocate);
          GetFldVar32('S_NAME3', sLocatenm);

        txFree32;
     end;

     //txFree32;
end;


//�μ���ȸ(CM_DEPT_L)
//2003.2.28 �̰�ȭ -- �ʸ������Ͽ��� ���
function HcmDept2.Select1(deptnm, deptcd, locate: String): Integer;
//var
//   LocalFile: String;
begin
     Result := -1;
     txAlloc32;
     SetFldName32('S_NAME1;S_CODE1;S_CODE2');
     SetFldValue32(0,[deptnm,deptcd,locate]);

     if txGetF32('SR_DEPT_L3') then
     begin
          Result := GetRecordCnt32('S_NAME2');
          GetFldVar32('S_NAME2', sDeptnm);
          GetFldVar32('S_CODE3', sDeptcd);
          GetFldVar32('S_CODE4', sLocate);
          GetFldVar32('S_NAME3', sLocatenm);

        txFree32;
     end;

     //txFree32;
end;



/////////////////////////////////////////////////////////////////
{ HsrShorct :
    ����ں� - ����Ű�� �ǵ���� �������� Ŭ����. 2002.05.30. ������}
/////////////////////////////////////////////////////////////////

//==============================================================================
// ����ں� - ����Ű�� �ǵ���� ���� ����
//==============================================================================
function HsrShorct.Delete(UserId, ShortCut, ExamType: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_USERID1;S_CODE1;S_CODE2');
    SetFldValue(0,[Userid,ShortCut,Examtype]);

    if txPutF('SR_SHORCT_D') then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ����ں� - ����Ű�� �ǵ���� ���� �Է�
//==============================================================================
function HsrShorct.Insert(UserId, ShortCut, ExamType, RsltText, Editid, Editip: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_USERID1;S_CODE1;S_CODE2;S_TEXT1;S_EDITID;S_EDITIP');
    SetFldValue(0,[Userid,ShortCut,Examtype,RsltText,Editid,Editip]);

    if txPutF('SR_SHORCT_I') then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ����ں� - ����Ű�� �ǵ���� ���� ����
//==============================================================================
function HsrShorct.Modify(UserId, ShortCut, ExamType, RsltText, Editid, Editip: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_USERID1;S_CODE1;S_CODE2;S_TEXT1;S_EDITID;S_EDITIP');
    SetFldValue(0,[Userid,ShortCut,Examtype,RsltText,Editid,Editip]);

    if txPutF('SR_SHORCT_U') then
    begin
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ����ں� - ����Ű�� �ǵ���� ���� ��ȸ
//==============================================================================
function HsrShorct.Select(UserId, ShortCut, ExamType, Locate: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_USERID1;S_CODE1;S_CODE2;S_CODE3');
    SetFldValue(0,[Userid,ShortCut,Examtype,Locate]);

    if txGetF('SR_SHORCT_L') then
    begin
        Result := GetRecordCnt('S_USERID1');

        GetFldVar('S_USERID1'  , sUserID);
        GetFldVar('S_USERNAME1', sUserName);
        GetFldVar('S_TEXT1'    , sRsltText);
        GetFldVar('S_CODE1'    , sShortCut);
        GetFldVar('S_CODE2'    , sExamtype);

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

// ����,�ϰ� ��ü�ڵ� ��� �� ��� (2003.02.23 ����)
// ����,�ϰ� ��ü�ڵ� ��� �� ��� (2003.02.23 ����) ����
function Hsu2examt.UpdateExam(sType1, sType2, sPatNo, sOrdDate, sOrdSeqNo, sOrdCode, sSpcCode : String) : Integer;
begin
    Result := -1;

    //Pointer�� �޾ƿ�.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_FLAG1;S_FLAG2;S_NAME1;S_NAME2;S_NAME3;S_NAME4;S_STRING1');
    SetFldValue(0,[sType1, sType2, sPatNo, sOrdDate, sOrdSeqNo, sOrdCode, sSpcCode]);

    //Tuxedo Service Call
    if (txPutF('SR_SUEXAMT_M1')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
end;

//2003.6.5 �̰�ȭ -- ���ǿ���˻� ȯ�ں���ȸ
function Hsu2examt.MediPatnoSel(Patno, Examtype: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_CODE2');
    SetFldValue(0,[Patno, Examtype]);

    if txGetF('SR_MEDIV_L2') then
    begin
        Result := GetRecordCnt('S_PATNO');

        GetFldVar('S_PATNO  '   ,   sPatno    );
        GetFldVar('S_PATNAME'   ,   sPatname  );
        GetFldVar('S_STRING1'   ,   sResno1   );
        GetFldVar('S_STRING2'   ,   sResno2   );
        GetFldVar('S_STRING3'   ,   sPkgcode  );
        GetFldVar('S_STRING4'   ,   sOrdname  );
        GetFldVar('S_STRING5'   ,   sResvdate );
        GetFldVar('S_STRING6'   ,   sExamdate );
        GetFldVar('S_STRING7'   ,   sOthercode);
        GetFldVar('S_STRING8'   ,   sRoomcd   );

       txFree;
    end;

    MessageStr := GetTxMsg;
end;

//2003.6.5  �̰�ȭ -- ���ǿ���˻� ���ں� �����ȸ
function Hsu2examt.MediDateSel(ExamDate, Examtype:String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_DATE1;S_CODE1');
    SetFldValue(0,[ExamDate, Examtype]);

    if txGetF('SR_MEDIV_L1') then
    begin
        Result := GetRecordCnt('S_PATNO');

        GetFldVar('S_PATNO  '   ,   sPatno    );
        GetFldVar('S_PATNAME'   ,   sPatname  );
        GetFldVar('S_STRING1'   ,   sResno1   );
        GetFldVar('S_STRING2'   ,   sResno2   );
        GetFldVar('S_STRING3'   ,   sPkgcode  );
        GetFldVar('S_STRING4'   ,   sOrdname  );
        GetFldVar('S_STRING5'   ,   sResvdate );
        GetFldVar('S_STRING6'   ,   sExamdate );
        GetFldVar('S_STRING7'   ,   sOthercode);
        GetFldVar('S_STRING8'   ,   sRoomcd   );

       txFree;
    end;

    MessageStr := GetTxMsg;
end;

//2003.02.26 ���� �߰�
//==============================================================================
// �˻�ǽ�
//==============================================================================
function HsrExam.CArmExecute(sType,PatNo,OrdDate,ExecId :String;OrdSeqNo:Integer):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_TYPE1;S_PATNO;S_ORDDATE;S_STRING1;S_EDITID');
    SetFldValue(0,[OrdSeqNo,sType,PatNo,OrdDate,ExecId,G_USERID]);

    if (txPutF('SR_CARMEXEC_U')) then
    begin
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �ϰ��ǵ��Է��� ���� �ڷ� ��ȸ 2003.02.28 �����߰�
//==============================================================================
function HsrExamCode.BatchReadList(FromDate, ToDate, ExamType, Slipcd, sType, Patsect, PatNo, sDateType : String) : Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9');
    SetFldValue(0,[FromDate, ToDate, Examtype, Slipcd, 'EB1', sType, Patsect, PatNo, sDateType]);

    if txGetF('SR_BATCHREAD_L1') then
    begin
        Result := GetRecordCnt('S_STRING1');

        GetFldVar('S_STRING1'	, sPatno	  	);
        GetFldVar('S_STRING2'   , sPatname      );
        GetFldVar('S_STRING3'   , sExamcode     );
        GetFldVar('S_STRING4'   , sExamname     );
        GetFldVar('S_STRING5'   , sNormcode     );
        GetFldVar('S_STRING6'   , sOrddate      );
        GetFldVar('S_STRING7'   , sExecdate     );
        GetFldVar('S_STRING8'   , sReaddate     );
        GetFldVar('S_STRING9'   , sOrddrname    );
        GetFldVar('S_STRING10'  , sSlipcode     );
        GetFldVar('S_STRING11'  , sPatsect      );
        GetFldVar('L_SEQNO1'    , lOrdSeqNo     );

       txFree;
    end;

    MessageStr := GetTxMsg;
end;

//==============================================================================
// �ϰ��ǵ��Է� 2003.02.28 �����߰�
//==============================================================================
function HsrExamCode.BatchReadSave(ReadDr1, ReadDr2, CfmDr :String;Cnt:Integer):Integer;
var
    i : integer;
begin
    Result := -1;
    txAlloc;

    for i := 0 to Cnt-1 do
    begin
        SetFldName('L_SEQNO1;S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9');
        SetFldValue(i,[Integer(lOrdSeqNo[i]),sPatNo[i],sOrdDate[i],sNormcode[i],ReadDr1,G_USERID,G_USERIP,sPatsect[i],ReadDr2,CfmDr]);
    end;

    for i := 0 to Cnt-1 do
    begin
        SetFldName('S_TEXT2;S_TEXT3;S_TEXT4');
        SetFldValue(i,[String(sSignData  [i]), String(sSerialNo [i]), String(sSubjectDN [i])]);
    end;
        
    if (txPutF('SR_EXAMD_U1')) then
    begin
        Result := 1;
        txFree;
    end;

    MessageStr := GetTxMsg;
end;

//==============================================================================
// �ϰ��ǵ�+Ȯ�� �Է� 2003.03.02 �����߰�
//==============================================================================
function HsrExamCode.BatchReadCfmSave(ReadDr1, ReadDr2, CfmDr :String;Cnt:Integer):Integer;
var
    i : integer;
begin
    Result := -1;
    txAlloc;

    for i := 0 to Cnt-1 do
    begin
        SetFldName('L_SEQNO1;S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TEXT2;S_TEXT3;S_TEXT4');
        SetFldValue(i,[Integer(lOrdSeqNo[i]),sPatNo[i],sOrdDate[i],sNormcode[i],ReadDr1,G_USERID,G_USERIP,sPatsect[i],ReadDr2,CfmDr,String(sSignData  [i]), String(sSerialNo [i]), String(sSubjectDN [i])]);
    end;
{
    for i := 0 to Cnt-1 do
    begin
        SetFldName('');
        SetFldValue(i,[String(sSignData  [i]), String(sSerialNo [i]), String(sSubjectDN [i])]);
    end;
}
    if (txPutF('SR_EXAMD_U2')) then
    begin
        Result := 1;
        txFree;
    end;

    MessageStr := GetTxMsg;
end;

//==============================================================================
// TAT, KimDaeYong 2011-08-18
//==============================================================================
function HsrExamCode.ListTAT(inFromdate, inTodate, inExamcode, inPatsect:string):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4');
    SetFldValue(0,[inFromdate, inTodate, inExamcode, inPatsect]);

    if (txGetF('SR_EXAMCV_L2')) then    //sr_examcv_l2.pc
    begin
        Result := GetRecordCnt('S_STRING1');

        GetFldVar('S_STRING1'    , sExecdate  );
        GetFldVar('S_STRING2'    , sPatsect   );
	    GetFldVar('S_STRING3'    , sExectat   );
    	GetFldVar('S_STRING4'    , sRepttat   );

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// 2003.03.05 �����߰� -- �غκ����˻� ó����ȸ
// 2004.1.2   �̰�ȭ���� -- ó�����,ȯ������ �׸� �߰���
//==============================================================================
function Hmdexmort.Pathology(in_patno: String): Integer;
begin
   Result:= -1;
   txAlloc;

   SetFldName('S_PATNO');
   SetFldValue(0,[in_patno]);
   if txGetF('SR_SPEXM_L1') then
   begin
      Result:= GetRecordCnt('S_DATE3');

      GetFldVar('S_DATE3' , tOrddate );
      GetFldVar('S_CODE3' , sOrdcd   );
      GetFldVar('S_NAME3' , sExamname);
      GetFldVar('S_CODE4' , sSpccode1);
      GetFldVar('S_NAME4' , sSpcname1);
      GetFldVar('S_STAT3' , sRcpstat );
      GetFldVar('S_CODE5' , sMeddept );

      {//2004.1.2 �̰�ȭ �߰���
      GetFldVar('L_SEQNO1', lOordseq);
      GetFldVar('S_NAME5' , sPatsect);
      }
      txFree;
   end;
end;

//==============================================================================
// 2004.1.2 �̰�ȭ -- �غκ��� colldate update
//==============================================================================
function HsrExamCode.SpexmUpdate(Cnt:Integer):Integer;
var
    i : integer;
begin
    Result := -1;
    txAlloc;

    for i := 0 to Cnt-1 do
    begin
        SetFldName('L_SEQNO1;S_PATNO;S_ORDDATE;S_EDITID;S_EDITIP;S_CODE2');
        SetFldValue(i,[Integer(lOrdSeqNo[i]),sPatNO[i],sOrddate[i],G_USERID,G_USERIP,sPatsect[i]]);
    end;

    if (txPutF('SR_EXEC_U6')) then
    begin
        Result := 1;
        txFree;
    end;

    MessageStr := GetTxMsg;
end;

//2008.07.08 ����� �߰� -- �ڵ� normal �ǵ� Ȯ��
function HsrExamCode.BatchNormalCfmSave(Cnt:Integer):Integer;
var
    i : integer;
begin
    Result := -1;
    txAlloc;

    for i := 0 to Cnt-1 do
    begin
        SetFldName('L_SEQNO1;S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5');
        SetFldValue(i,[Integer(lOrdSeqNo[i]),sPatNo[i],sOrdDate[i],G_USERID,G_USERIP,sPatsect[i]]);
    end;

    if (txPutF('SR_EXAMD_U3')) then
    begin
        Result := 1;
        txFree;
    end;

    MessageStr := GetTxMsg;
end;

//==============================================================================
//  2003.3.5 ���� -- ������Ÿ���Է�
//==============================================================================
function HsrSchedule.RsvSchIns(RoomCode,RsvDate:String;RsvCnt : Integer):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_DATE1;L_CNT1');
    SetFldValue(0,[RoomCode,RsvDate,RsvCnt]);
    if (txPutF('SR_SCHDT_I1')) then
    begin
       Result := 1;

       txFree;
    end;

    MessageStr := GetTxMsg;
end;


//==============================================================================
// ����/�ǽ� ���ÿ� ���.
// 2003.3.5 �̰�ȭ -- ��������
//==============================================================================
function HsrExecute.ExecAcptDataDelete1(Examtype,PatNo,OrdDate,ExamTech,Eqipcode,Patsect:String;OrdSeqNo:Integer):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('L_SEQNO1;S_TYPE1;S_PATNO;S_ORDDATE;S_EDITID;S_CODE1;S_CODE2');
    SetFldValue(0,[OrdSeqNo,Examtype,PatNo,OrdDate,ExamTech,EqipCode,Patsect]);

    if (txPutF('SR_EXECACPT_D1')) then   // sr_execacpt_d1.pc
    begin
        Result := 1;
        txFree;
    end;
    MessageStr := GetTxMsg;
end;

//�������� �缮�� 2004.12.04 �߰�
//�ʸ��������� ���ڵ� ��� üũ
function HsrFilm.FilmBarCheck(PatNo:String):Integer;
begin
   Result := -1;
   txAlloc;
   setFldName('S_TYPE1');
   setFldValue(0,[Patno]);


   if (txPutF('SR_FILMM_I1')) then  // sr_filmm_i1.pc
   begin
      Result := 1;
      txFree;
   end;
   MessageStr := GetTxMsg;
end;

//�������� �缮�� 2004.12.04 �߰�
//�ʸ��������� ���ڵ� ��� üũ
function HsrFilm.FilmReadCheck(PatNo,Reqid,ReqDate:String):Integer;
begin
   Result := -1;
   txAlloc;
   setFldName('S_TYPE1;S_TYPE2;S_TYPE3');
   setFldValue(0,[Patno, Reqid, ReqDate]);


   if (txPutF('SR_FILMM_I2')) then  //sr_filmm_i2.pc
   begin
      Result := 1;
      txFree;
   end;
   MessageStr := GetTxMsg;
end;

//==============================================================================
//�������� �缮�� 2004.12.04 �߰�
// �ʸ�������� ����� ��ȸ
//==============================================================================
function HsrFilm.FilmOutCheck3(fromDate,reqdept,reqid,patno:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
    SetFldValue(0,[fromdate,reqdept,reqid,patno]);

    if (txGetF('SR_FILMOUT_S3')) then  // sr_filmout_s3.pc
    begin
       GetFldVar('S_STRING1'   ,sPatno      );     //ȯ�ڹ�ȣ|ȯ���̸�|�˻�з�|�������|����μ�|����μ���|��û��|��û��|��û�Ͻ�|����뵵|����뵵��|��ȭ��ȣ|���ⱸ��
       GetFldVar('S_STRING2'   ,sPatname    );     //ȯ���̸�
       GetFldVar('S_STRING3'   ,sExamtype   );     //�˻�з�
       GetFldVar('S_STRING4'   ,sReqdate    );     //�������
       GetFldVar('S_STRING5'   ,sReqdept    );     //����μ�
       GetFldVar('S_STRING6'   ,sReqDeptnm  );     //����μ��̸�
       GetFldVar('S_STRING7'   ,sReqid      );     //��û��
       GetFldVar('S_STRING8'   ,sReqUsername);     //��û���̸�
       GetFldVar('S_STRING9'   ,sReqidate   );     //��û����
       GetFldVar('S_STRING10'  ,sUsetype    );     //����뵵
       GetFldVar('S_STRING11'  ,sUseTypenm  );     //����뵵�̸�
       GetFldVar('S_STRING12'  ,sTelno      );     //��ȭ��ȣ
       GetFldVar('S_STRING13'  ,sOuttype    );     //���ⱸ��
       GetFldVar('S_STRING14'  ,sSex        );     //���ⱸ��

       Result := GetRecordCnt('S_STRING1');

       txFree;
    end;
    MessageStr := GetTxMsg;
end;

//�ʸ� �� ��ġ ���� ��ȸ �������� �缮�� �߰�(2004.12.17)
function HsrFilm.FilmOutCheck4(patno,reqdate,isSeqno:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;');
    SetFldValue(0,[patno,reqdate,isSeqno]);

    if (txGetF('SR_FILMOUT_S4')) then  // sr_filmout_s4.pc
    begin
       GetFldVar('S_USERID1'   ,sOutid      );     //������

       Result := GetRecordCnt('S_USERID1');

       txFree;
    end;
    MessageStr := GetTxMsg;
end;

//�ʸ� �� ��ġ ���� ��ȸ �������� �缮�� �߰�(2004.12.17)
function HsrFilm.FilmOutCheck5(patno:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_TYPE1');
    SetFldValue(0,[patno]);

    if (txGetF('SR_FILMOUT_S5')) then  // sr_filmout_s5.pc
    begin
       GetFldVar('S_STRING1'   ,sReqid      );     //������
       GetFldVar('S_STRING2'   ,sReqdept    );     //����μ�
       GetFldVar('S_STRING3'   ,sReqName    );     //�����ڼ���
       GetFldVar('S_STRING4'   ,sReqDeptnm  );     //����μ��̸�

       Result := GetRecordCnt('S_STRING1');

       txFree;
    end;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �ʸ�������� Ȯ��          �������� �缮�� �߰�2005.01.09
//==============================================================================
function HsrFilm.FilmOutCheck6(PatNo,ExamType:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;S_FLAG9');
    SetFldValue(0,[PatNo,ExamType,'EB1']);

    if (txGetF('SR_FILMOUT_S6')) then  // sr_filmout_s6.pc
    begin
       GetFldVar('S_DATE1',  sLstDate);
       GetFldVar('S_DATE2',  sOutDate);
       GetFldVar('S_MEDDEPT',sOutDept);
       GetFldVar('S_DATE3',  sFstDate);
       GetFldVar('S_STRING1',sCurLoc);
       GetFldVar('S_NO1',    sTel1);
       GetFldVar('S_NO2',    sTel2);
       GetFldVar('S_YN1',    sSuyn);
       GetFldVar('S_USERID1',sOutid);
       GetFldVar('S_USERNAME1',sOutname);
       GetFldVar('S_TYPE1',   sUsetypenm);
       GetFldVar('S_STRING2', sOutDeptNm);
       GetFldVar('S_STRING3', sFilmName);
       GetFldVar('S_STRING4', sReqDate);
       GetFldVar('S_STRING5', sSeqNo);
       GetFldVar('S_STRING6', sCount);  //�������� �缮�� �߰�(2005.01.09)

       Result := GetRecordCnt('S_DATE1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// �ʸ�������� Ȯ��          �������� �缮�� �߰�2005.01.09
//==============================================================================
function HsrFilm.FilmOutCheck7(PatNo,ExamType:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;S_FLAG9');
    SetFldValue(0,[PatNo,ExamType,'EB1']);

    if (txGetF('SR_FILMOUT_S7')) then
    begin
       GetFldVar('S_DATE1',  sLstDate);
       GetFldVar('S_DATE2',  sOutDate);
       GetFldVar('S_MEDDEPT',sOutDept);
       GetFldVar('S_DATE3',  sFstDate);
       GetFldVar('S_STRING1',sCurLoc);
       GetFldVar('S_NO1',    sTel1);
       GetFldVar('S_NO2',    sTel2);
       GetFldVar('S_YN1',    sSuyn);
       GetFldVar('S_USERID1',sOutid);
       GetFldVar('S_USERNAME1',sOutname);
       GetFldVar('S_TYPE1',   sUsetypenm);
       GetFldVar('S_STRING2', sOutDeptNm);
       GetFldVar('S_STRING3', sFilmName);
       GetFldVar('S_STRING4', sReqDate);
       GetFldVar('S_STRING5', sSeqNo);
       GetFldVar('S_STRING6', sCount);  //�������� �缮�� �߰�(2005.01.09)



       Result := GetRecordCnt('S_DATE1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


/////////////////////////////////////////////////////////////////
// HsrCertUsr : ����� ���������� ��ȸ Class �߰�     SONGLIM_THOMA
/////////////////////////////////////////////////////////////////
//����� ���������� ��ȸ(MD_CERT_S1)
function HsrCertUsr.CertSearch (userid: String): Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_CODE1');
     SetFldValue(0,[userid]);

     if txGetF('SR_CERT_S1') then
     begin
          Result := GetRecordCnt('S_CODE2');
          GetFldVar('S_CODE2',    sUserid);
          GetFldVar('S_CODE3',    sSignCert);
          GetFldVar('S_CODE4',  sSignPriKey);
          GetFldVar('S_CODE5',   sChange_Tm);
          GetFldVar('S_CODE6',      sCertPW);
          GetFldVar('S_CODE7',      sResNo);
     end;
     txFree;
end;

//�������̺��� ������ ��ȸ��             SONGLIM_THOMA
function HsrCertInj.CertSearch (userid,SerialNo,SubjectDN: String): Integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_CODE1;S_CODE2;S_CODE3');
     SetFldValue(0,[userid,SerialNo,SubjectDN]);

     if txGetF('SR_INJCT_S1') then
     begin
          Result := GetRecordCnt('S_CODE4');
          GetFldVar('S_CODE4',    sUserid);
          GetFldVar('S_CODE5',    sSerialNo);
          GetFldVar('S_CODE6',  sSubjectDN);
          GetFldVar('S_CODE7',   sSignCert);
     end;

     txFree;
end;

function HsrWait.RoomWaitCount(roomcode:String):integer;
begin
     Result := -1;
     txAlloc;
     SetFldName('S_CODE1');
     SetFldValue(0,[roomcode]);

     if txGetF('SR_ROOMWAIT_S1') then //sr_roomwait_s1.pc
     begin
          Result := GetRecordCnt('S_CODE2');
          GetFldVar('S_CODE2', sWaitCount);
     end;
     txfree;
end;

//==============================================================================
// �ϵ��ȯ����ȸ, KimDaeYong 2010-08-24
// �����Tc�� �������� ���� �̿�
//==============================================================================
function HmdCancrt.Select1(sPatNo:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO');
    SetFldValue(0,[sPatno]);

    if (txGetF('MD_CANCR_S1')) then     //md_cancr_s1.pc
    begin
       GetFldVar('S_STRING1',  sLeavedtCnt);
       GetFldVar('S_STRING2',  sLeavedate );

       Result := GetRecordCnt('S_STRING1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ���������ۿ���� ��ȸ, KimDaeYong 2011-02-16
//==============================================================================
function HsrAdvmst.List1(inFromdate, inTodate, inAdvcode, inPatno, inExamtype:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5');
    SetFldValue(0,[inFromdate, inTodate, inAdvcode, inPatno, inExamtype]);

    if (txGetF('SR_ADVMS_L1')) then     //sr_advms_l1.pc
    begin
       GetFldVar('S_STRING1',   sPatno		);
       GetFldVar('S_STRING2',   sPatname	);
       GetFldVar('S_STRING3',   sOrddate	);
       GetFldVar('S_STRING4',   sOrdseqno	);
       GetFldVar('S_STRING5',   sExecdate	);
       GetFldVar('S_STRING6',   sMeddept	);
       GetFldVar('S_STRING7',   sWardno		);
       GetFldVar('S_STRING8',   sRoomno		);
       GetFldVar('S_STRING9',   sExamcode	);
       GetFldVar('S_STRING10',  sOrdname	);
       GetFldVar('S_STRING11',  sRoomcode	);
       GetFldVar('S_STRING12',  sAdvcode	);
       GetFldVar('S_STRING13',  sKeyword	);
       GetFldVar('S_STRING14',  sAdvcont	);
       GetFldVar('S_STRING15',  sExamtype	);

       Result := GetRecordCnt('S_STRING1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ���������ۿ���� ����, KimDaeYong 2011-02-18
//==============================================================================
function HsrAdvmst.Update1(inFlag:String):Integer;
begin
   Result := -1;
   txAlloc;
   setFldName('S_TYPE1;S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7;S_CODE8;S_CODE9;S_CODE10;S_CODE11;S_CODE12;S_CODE13;S_CODE14');
   setFldValue(0,[inFlag, sPatno, sOrddate, sOrdseqno, sMeddept, sExecdate, sWardno, sRoomno, sExamcode, sExamtype, sRoomcode, sAdvcode, sAdvcont, sEditid, sEditip ]);

   if (txPutF('SR_ADVMS_U1')) then  //sr_advms_u1.pc
   begin
      Result := 1;
      txFree;
   end;
   MessageStr := GetTxMsg;
end;

//==============================================================================
// ���������ۿ��ڵ���� ����, KimDaeYong 2011-02-21
//==============================================================================
function HsrAdvcdt.Update1(inFlag, inAdvcode, inKeyword, inAdvcont, inEditid, inEditip : String): Integer;
begin
   Result := -1;
   txAlloc;
   setFldName('S_TYPE1;S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5');
   setFldValue(0,[inFlag, inAdvcode, inKeyword, inAdvcont, inEditid, inEditip ]);

   if (txPutF('SR_ADVCD_U1')) then  //sr_advcd_u1.pc
   begin
      Result := 1;
      txFree;
   end;
   MessageStr := GetTxMsg;
end;

//==============================================================================
// ���������ۿ��ڵ���� ��ȸ, KimDaeYong 2011-02-21
//==============================================================================
function HsrAdvcdt.List1(inAdvcode, inKeyword : String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_CODE2');
    SetFldValue(0,[inAdvcode, inKeyword]);

    if (txGetF('SR_ADVCD_L1')) then     //sr_advcd_l1.pc
    begin
       GetFldVar('S_STRING1',   sAdvcode	);
       GetFldVar('S_STRING2',   sKeyword	);
       GetFldVar('S_STRING3',   sAdvcont	);

       Result := GetRecordCnt('S_STRING1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ���������ۿ���� ����, KimDaeYong 2011-02-24
//==============================================================================
function HsrAdvmst.List2(inPatno:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1');
    SetFldValue(0,[inPatno]);

    if (txGetF('SR_ADVMS_L2')) then     //sr_advms_l2.pc
    begin
       GetFldVar('S_STRING1',   sOrddate	);
       GetFldVar('S_STRING2',   sExamcode	);
       GetFldVar('S_STRING3',   sOrdname    );
       GetFldVar('S_STRING4',   sAdvcode	);
       GetFldVar('S_STRING5',   sKeyword	);

       Result := GetRecordCnt('S_STRING1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// SMS�ǻ��������� ����, KimDaeYong 2011-03-03
//==============================================================================
function HsrSmsdrt.Update1(inFlag, inDrid, inDeptcd, inTelno, inRemark, inEditid, inEditip : String): Integer;
begin
   Result := -1;
   txAlloc;
   setFldName('S_TYPE1;S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6');
   setFldValue(0,[inFlag, inDrid, inDeptcd, inTelno, inRemark, inEditid, inEditip]);

   if (txPutF('SR_SMSDR_U1')) then  //sr_smsdr_u1.pc
   begin
      Result := 1;
      txFree;
   end;
   MessageStr := GetTxMsg;
end;

//==============================================================================
// SMS�ǻ��������� ��ȸ, KimDaeYong 2011-03-03
//==============================================================================
function HsrSmsdrt.List1(inDrid, inDeptcd : String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_CODE2');
    SetFldValue(0,[inDrid, inDeptcd]);

    if (txGetF('SR_SMSDR_L1')) then     //sr_smsdr_l1.pc
    begin
       GetFldVar('S_STRING1',   sDrid	);
       GetFldVar('S_STRING2',   sDrnm	);
       GetFldVar('S_STRING3',   sDeptcd	);
       GetFldVar('S_STRING4',   sTelno	);
       GetFldVar('S_STRING5',   sRemark	);

       Result := GetRecordCnt('S_STRING1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// SMS�޽����ڵ���� ����, KimDaeYong 2011-03-03
//==============================================================================
function HsrSmsmgt.Update1(inFlag, inMsgcode, inKeyword, inMsg, inEditid, inEditip : String): Integer;
begin
   Result := -1;
   txAlloc;
   setFldName('S_TYPE1;S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5');
   setFldValue(0,[inFlag, inMsgcode, inKeyword, inMsg, inEditid, inEditip]);

   if (txPutF('SR_SMSMG_U1')) then  //sr_smsmg_u1.pc
   begin
      Result := 1;
      txFree;
   end;
   MessageStr := GetTxMsg;
end;

//==============================================================================
// SMS�޽����ڵ���� ��ȸ, KimDaeYong 2011-03-03
//==============================================================================
function HsrSmsmgt.List1(inMsgcode, inKeyword : String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_CODE2');
    SetFldValue(0,[inMsgcode, inKeyword]);

    if (txGetF('SR_SMSMG_L1')) then     //sr_smsmg_l1.pc
    begin
       GetFldVar('S_STRING1',   sMsgcode	);
       GetFldVar('S_STRING2',   sKeyword	);
       GetFldVar('S_STRING3',   sMsg    	);

       Result := GetRecordCnt('S_STRING1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// SMS���۳��� ��ȸ, KimDaeYong 2011-03-04
//==============================================================================
function HsrSmssdt.List1(inFlag, inFromdate, inTodate, inMsgcode, inMrcode, inPatno, inExamtype, inAdvcode:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_TYPE1;S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7');
    SetFldValue(0,[inFlag, inFromdate, inTodate, inMsgcode, inMrcode, inPatno, inExamtype, inAdvcode]);

    if (txGetF('SR_SMSSD_L1')) then     //sr_smssd_l1.pc
    begin
       GetFldVar('S_STRING1',   sPatno	    );
       GetFldVar('S_STRING2',   sPatname	);
       GetFldVar('S_STRING3',   sOrddate	);
       GetFldVar('S_STRING4',   sOrdseqno   );
       GetFldVar('S_STRING5',   sSendseq	);
       GetFldVar('S_STRING6',   sMeddept	);
       GetFldVar('S_STRING7',   sWardno	    );
       GetFldVar('S_STRING8',   sRoomno	    );
       GetFldVar('S_STRING9',   sExamcode   );
       GetFldVar('S_STRING10',  sOrdname	);
       GetFldVar('S_STRING11',  sExamtype   );
       GetFldVar('S_STRING12',  sRoomcode   );
       GetFldVar('S_STRING13',  sExecdate   );
       GetFldVar('S_STRING14',  sSendid	    );
       GetFldVar('S_STRING15',  sSendname   );
       GetFldVar('S_STRING16',  sSendtel    );
       GetFldVar('S_STRING17',  sRcvid      );
       GetFldVar('S_STRING18',  sRcvname	);
       GetFldVar('S_STRING19',  sRcvtel     );
       GetFldVar('S_STRING20',  sMsgcode	);
       GetFldVar('S_STRING21',  sMessage	);
       GetFldVar('S_STRING22',  sSenddate   );
       GetFldVar('S_STRING23',  sMrcode	    );
       GetFldVar('S_STRING24',  sAdvcode    );
       GetFldVar('S_STRING25',  sRecvdate);

       Result := GetRecordCnt('S_STRING1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// SMS���۳��� ����, KimDaeYong 2011-03-04
//==============================================================================
function HsrSmssdt.Insert1 : Integer;
begin
   Result := -1;
   txAlloc;
   setFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7;S_CODE8;S_CODE9;S_CODE10;' +
              'S_CODE11;S_CODE12;S_CODE13;S_CODE14;S_CODE15;S_CODE16;S_CODE17;S_CODE18;S_CODE19;S_CODE20');
   setFldValue(0,[sPatno, sOrddate, sOrdseqno, sMeddept, sWardno, sRoomno, sExamcode, sExamtype, sRoomcode, sExecdate,
                  sSendid, sSendtel, sRcvid, sRcvtel, sMsgcode, sMessage, sEditid, sEditip, sMrcode, sAdvcode]);

   if (txPutF('SR_SMSSD_I1')) then  //sr_smssd_i1.pc
   begin
      Result := 1;
      txFree;
   end;
   MessageStr := GetTxMsg;
end;

//==============================================================================
// SMS�߰������ڵ���� ��ȸ, KimDaeYong 2011-03-11
//==============================================================================
function HsrSmsmrt.List1(inMrcode, inKeyword : String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_CODE2');
    SetFldValue(0,[inMrcode, inKeyword]);

    if (txGetF('SR_SMSMR_L1')) then     //sr_smsmr_l1.pc
    begin
       GetFldVar('S_STRING1',   sMrcode	    );
       GetFldVar('S_STRING2',   sKeyword	);
       GetFldVar('S_STRING3',   sMrcont    	);

       Result := GetRecordCnt('S_STRING1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// SMS�߰������ڵ���� ����, KimDaeYong 2011-03-11
//==============================================================================
function HsrSmsmrt.Update1(inFlag, inMrcode, inKeyword, inMrcont, inEditid, inEditip : String): Integer;
begin
   Result := -1;
   txAlloc;
   setFldName('S_TYPE1;S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5');
   setFldValue(0,[inFlag, inMrcode, inKeyword, inMrcont, inEditid, inEditip]);

   if (txPutF('SR_SMSMR_U1')) then  //sr_smsmr_u1.pc
   begin
      Result := 1;
      txFree;
   end;
   MessageStr := GetTxMsg;
end;

//==============================================================================
// ����ġ��, KimDaeYong 2011-07-20
//==============================================================================
function HsrSdtcrt.Select1(inPatno, inSdtdate, inExamtype : String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_CODE2;S_CODE3');
    SetFldValue(0,[inPatno, inSdtdate, inExamtype]);

    if (txGetF('SR_SDTCR_S1')) then     //sr_sdtcr_s1.pc
    begin
        GetFldVar('S_STRING1'    ,	sPatno       );
		GetFldVar('S_STRING2'    ,	sSdtdate     );
		GetFldVar('S_STRING3'    ,	sWardno	     );			    
		GetFldVar('S_STRING4'    ,	sRoomno      );
		GetFldVar('S_STRING5'    ,	sSex         );
		GetFldVar('S_STRING6'    ,	sAge		 );
		GetFldVar('S_STRING7'    ,	sResno       );
		GetFldVar('S_STRING8'    ,	sMeddept     );
		GetFldVar('S_STRING9'    ,	sDiagcd      );
		GetFldVar('S_STRING10'   ,	sDiagnm      );
		GetFldVar('S_STRING11'   ,	sWeight      );
		GetFldVar('S_STRING12'   ,	sBphigh	     );
		GetFldVar('S_STRING13'   ,	sBplow       );
		GetFldVar('S_STRING14'   ,	sHrr         );
		GetFldVar('S_STRING15'   ,	sRr          );
		GetFldVar('S_STRING16'   ,	sSdtxpyn     );
		GetFldVar('S_STRING17'   ,	sSdtxpcont   );
		GetFldVar('S_STRING18'   ,	sSdtrpyn	 );
		GetFldVar('S_STRING19'   ,	sSdtrpcont   );
		GetFldVar('S_STRING20'   ,	sFastyn      );
		GetFldVar('S_STRING21'   ,	sFastcont    );
		GetFldVar('S_STRING22'   ,	sAlgyn       );
		GetFldVar('S_STRING23'   ,	sAlgcont     );
		GetFldVar('S_STRING24'   ,	sDrugyn	     );
		GetFldVar('S_STRING25'   ,	sDrugcont    );
		GetFldVar('S_STRING26'   ,	sBrthyn      );
		GetFldVar('S_STRING27'   ,	sBrthcont    );
		GetFldVar('S_STRING28'   ,	sDraccyn     );
		GetFldVar('S_STRING29'   ,	sDracccont   );
		GetFldVar('S_STRING30'   ,	sMtnyn		 );
		GetFldVar('S_STRING31'   ,	sMtncont     );
		GetFldVar('S_STRING32'   ,	sSingulyn    );
		GetFldVar('S_STRING33'   ,	sSingulcont  );
		GetFldVar('S_STRING34'   ,	sSdtplan     );
		GetFldVar('S_STRING35'   ,	sSdtdrg      );
		GetFldVar('S_STRING36'   ,	sSdtdrgtm	 );
		GetFldVar('S_STRING37'   ,	sSdtdrgoth   );
		GetFldVar('S_STRING38'   ,	sPryn        );
		GetFldVar('S_STRING39'   ,	sPrcont      );
		GetFldVar('S_STRING40'   ,	sRryn        );
		GetFldVar('S_STRING41'   ,	sRrcont      );
		GetFldVar('S_STRING42'   ,	sBpyn		 );
		GetFldVar('S_STRING43'   ,	sBphigh1     );
		GetFldVar('S_STRING44'   ,	sBplow1      );
		GetFldVar('S_STRING45'   ,	sSkinyn      );
		GetFldVar('S_STRING46'   ,	sSkincont    );
		GetFldVar('S_STRING47'   ,	sActyn       );
		GetFldVar('S_STRING48'   ,	sActcont	 );
		GetFldVar('S_STRING49'   ,	sDschtm      );
		GetFldVar('S_STRING50'   ,	sRamscl      );
		GetFldVar('S_STRING51'   ,	sAppid       );
		GetFldVar('S_STRING52'   ,	sDscheduyn   );
        GetFldVar('S_STRING53'   ,	sSdtdrggbn   );

       Result := GetRecordCnt('S_STRING1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ����ġ�����͸�, KimDaeYong 2011-07-20
//==============================================================================
function HsrSdtcrt.List1(inPatno, inSdtdate, inExamtype : String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_CODE2;S_CODE3');
    SetFldValue(0,[inPatno, inSdtdate, inExamtype]);

    if (txGetF('SR_SDTCR_L1')) then     //sr_sdtcr_l1.pc
    begin
        GetFldVar('S_STRING1'    ,	sPatno       );
		GetFldVar('S_STRING2'    ,	sSdtdate     );
		GetFldVar('S_STRING3'    ,	sMontm	     );
		GetFldVar('S_STRING4'    ,	sRamscl      );
		GetFldVar('S_STRING5'    ,	sOxy         );
		GetFldVar('S_STRING6'    ,	sPr  		 );
		GetFldVar('S_STRING7'    ,	sRespcnt     );
		GetFldVar('S_STRING8'    ,	sBphigh      );
		GetFldVar('S_STRING9'    ,	sBplow       );
		GetFldVar('S_STRING10'   ,	sDrug        );

       Result := GetRecordCnt('S_STRING1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ����ġ�� ����, KimDaeYong 2011-07-20
//==============================================================================
function HsrSdtcrt.Insert1(inFlag : String): Integer;
begin
   Result := -1;
   txAlloc;
   setFldName('S_TYPE1;' +
              'S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7;S_CODE8;S_CODE9;S_CODE10;' +
              'S_CODE11;S_CODE12;S_CODE13;S_CODE14;S_CODE15;S_CODE16;S_CODE17;S_CODE18;S_CODE19;S_CODE20;' +
              'S_CODE21;S_CODE22;S_CODE23;S_CODE24;S_CODE25;S_CODE26;S_CODE27;S_CODE28;S_CODE29;S_CODE30;' +
              'S_CODE31;S_CODE32;S_CODE33;S_CODE34;S_CODE35;S_CODE36;S_CODE37;S_CODE38;S_CODE39;S_CODE40;' +
              'S_CODE41;S_CODE42;S_CODE43;S_CODE44;S_CODE45;S_CODE46;S_CODE47;S_CODE48;S_CODE49;S_CODE50;' +
              'S_NAME1;S_NAME2;S_NAME3;S_NAME4;S_NAME5;S_NAME6;S_NAME7;S_NAME8;S_NAME9;S_NAME10;S_NAME11');

   setFldValue(0,[inFlag          ,
                  sPatno          ,
				  sSdtdate        ,
				  sExamtype       ,
				  sWardno		  ,
				  sRoomno         ,
				  sSex            ,
				  sAge			  ,
				  sResno          ,
				  sMeddept        ,
				  sDiagcd         ,
				  sDiagnm         ,
				  sWeight         ,
				  sBphigh		  ,
				  sBplow          ,
				  sHrr            ,
				  sRr             ,
				  sSdtxpyn        ,
				  sSdtxpcont      ,
				  sSdtrpyn	 	  ,
				  sSdtrpcont      ,
				  sFastyn         ,
				  sFastcont       ,
				  sAlgyn          ,
				  sAlgcont        ,
				  sDrugyn		  ,
				  sDrugcont       ,
				  sBrthyn         ,
				  sBrthcont       ,
				  sDraccyn        ,
				  sDracccont      ,
				  sMtnyn		  ,
				  sMtncont        ,
				  sSingulyn       ,
				  sSingulcont     ,
				  sSdtplan        ,
				  sSdtdrg         ,
				  sSdtdrgtm		  ,
				  sSdtdrgoth      ,
				  sPryn           ,
				  sPrcont         ,
				  sRryn           ,
				  sRrcont         ,
				  sBpyn			  ,
				  sBphigh1        ,
				  sBplow1         ,
				  sSkinyn         ,
				  sSkincont       ,
				  sActyn          ,
				  sActcont		  ,
				  sDschtm         ,
				  sRamscl         ,
				  sAppid          ,
				  sDscheduyn      ,
				  sMontm		  ,
     			  sOxy            ,
     			  sPr             ,
     			  sRespcnt        ,
     			  sDrug           ,
     			  sEditid         ,
     			  sEditip         ,
                  sSdtdrggbn      ]);

   if (txPutF('SR_SDTCR_I1')) then  //sr_sdtcr_i1.pc
   begin
      Result := 1;
      txFree;
   end;
   MessageStr := GetTxMsg;
end;

//==============================================================================
// ����ġ���� ����, KimDaeYong 2011-07-22
//==============================================================================
function HsrSdtcrt.Delete1(inPatno, inSdtdate, inExamtype : String): Integer;
begin
   Result := -1;
   txAlloc;
   setFldName('S_CODE1;S_CODE2;S_CODE3');
   setFldValue(0,[inPatno, inSdtdate, inExamtype]);

   if (txPutF('SR_SDTCR_D1')) then  //sr_sdtcr_d1.pc
   begin
      Result := 1;
      txFree;
   end;
   MessageStr := GetTxMsg;
end;

//==============================================================================
// ��ô���ڵ���� ��ȸ, KimDaeYong 2011-09-19
//==============================================================================
function HsrClndvt.List1(inClndvcode, inClndvname, inExamtype : String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_CODE2;S_CODE3');
    SetFldValue(0,[inClndvcode, inClndvname, inExamtype]);

    if (txGetF('SR_CLNDV_L1')) then     //sr_clndv_l1.pc
    begin
       GetFldVar('S_STRING1',   sClndvcode	);
       GetFldVar('S_STRING2',   sClndvname	);
       GetFldVar('S_STRING3',   sRemark    	);

       Result := GetRecordCnt('S_STRING1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ��ô���ڵ���� ����, KimDaeYong 2011-09-19
//==============================================================================
function HsrClndvt.Update1(inFlag, inClndvcode, inClndvname, inRemark, inExamtype, inEditid, inEditip : String): Integer;
begin
   Result := -1;
   txAlloc;
   setFldName('S_TYPE1;S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6');
   setFldValue(0,[inFlag, inClndvcode, inClndvname, inRemark, inExamtype, inEditid, inEditip]);

   if (txPutF('SR_CLNDV_U1')) then  //sr_clndv_u1.pc
   begin
      Result := 1;
      txFree;
   end;
   MessageStr := GetTxMsg;
end;

// ȯ��Caution���� ��ȸ, mdclass1���� �����ؿ�
// KimDaeYong 2011-09-21
function HmdCautnt.SelCaution(PatNo:String):Integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
   txAlloc;

   //FML Buffer Field Assign
   SetFldName('S_PATNO');
   SetFldValue(0,[PatNo]);


   //Tuxedo Service Call
   if (txGetF('MD_CAUTN_S2')) then     // �ܷ� ȯ�ڵ� ���ϼ� �ֵ��� ���� ���� S1->S2 �����
   begin
      GetFldVar('S_PATNO'   , sPatNo);
      GetFldVar('S_STRING1' , sHivYn);
      GetFldVar('S_STRING2' , sVdrlYn);
      GetFldVar('S_STRING3' , sHbsagYn);
      GetFldVar('S_STRING4' , sHcvYn);
      GetFldVar('S_STRING5' , sVmothrYn);
      GetFldVar('S_STRING6' , sVmremark);
      GetFldVar('S_STRING7' , sRadCont);
      GetFldVar('S_STRING8' , sPeniciln);
      GetFldVar('S_STRING9' , sDrugAlgy);
      GetFldVar('S_STRING10', sOtherRmk);
      GetFldVar('S_STRING11', sFstDate);
      GetFldVar('S_STRING12', sFstEmpNo);
      GetFldVar('S_STRING13', sFstEmpNm);
      GetFldVar('S_STRING14', sInform);
      GetFldVar('S_STRING15', sMrsaYn);
      GetFldVar('S_STRING16', sVreYn);
      GetFldVar('S_STRING17', sAfbYn);
      GetFldVar('S_STRING18', sTbYn);
      GetFldVar('S_STRING19', sDiffYn);
      GetFldVar('S_STRING20', sFunYn);
      GetFldVar('S_STRING21', sHbcYn);
      GetFldVar('S_STRING22', sHAVYn);
      GetFldVar('S_STRING23', sSeq); //daelongii add, 2005-10-13
      GetFldVar('S_STRING24', sDschDate);  //daelongii add, 2005-10-17
      GetFldVar('S_STRING25', sRotayn);
      GetFldVar('S_STRING26', sOhmyn);
      GetFldVar('S_STRING27', sEeeyn);
      GetFldVar('S_STRING28', sJangtiyn);
      GetFldVar('S_STRING29', sEeejilyn);
      GetFldVar('S_STRING30', sSuduyn);
      GetFldVar('S_STRING31', sHongyn);
      GetFldVar('S_STRING32', sPungyn);
      GetFldVar('S_STRING33', sNewFluyn);
      GetFldVar('S_STRING34', sInFluyn);    //���÷翣��, KimDaeYong 2014-02-26
      GetFldVar('S_STRING35', sNewinfecyn );
      GetFldVar('S_STRING36', sNewinfecstr);
      GetFldVar('S_STRING37', sBetcyn     );
      GetFldVar('S_STRING38', sBetcstr    );
      GetFldVar('S_STRING39', sCreyn      );
      GetFldVar('S_STRING40', sVrsayn     );
      GetFldVar('S_STRING41', sCjdyn      );
      GetFldVar('S_STRING42', sCetcyn  	  );
      GetFldVar('S_STRING43', sCetcstr    );
      GetFldVar('S_STRING44', sMumpsyn    );
      GetFldVar('S_STRING45', sPeryn	  );
      GetFldVar('S_STRING46', sMenyn 	  );
      GetFldVar('S_STRING47', sDetcyn  	  );
      GetFldVar('S_STRING48', sDetcstr    );
      GetFldVar('S_STRING49', sRepdate    );
      
      GetFldVar('S_STRING50', sMrpayn	  );
      GetFldVar('S_STRING51', sCpeyn 	  );
      GetFldVar('S_STRING52', sCpetcyn    );
      GetFldVar('S_STRING53', sCpetcstr   );

      //��ȸ�Ǽ� return
      Result := GetRecordCnt('S_PATNO');
      txFree;
   end;
end;

//==============================================================================
//���ð�ó��Ȯ��, KimDaeYong 2012-04-25
//���ῡ�� ���ð� ó��� �Է����ִ� �����͸� �����ش�
//==============================================================================
function HmdScopyt.Select1(inPatno, inOrddate: string): integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_TYPE1;S_TYPE2');
    SetFldValue(0,[inPatno, inOrddate]);

    if (txGetF('MD_SCOPY_S1')) then             //md_scopy_s1.pc
    begin
        Result := GetRecordCnt('S_STRING1');

        GetFldVar('S_STRING1' , sMhchk1);
        GetFldVar('S_STRING2' , sMhchk2);
        GetFldVar('S_STRING3' , sMhchk3);
        GetFldVar('S_STRING4' , sMhchk4);
        GetFldVar('S_STRING5' , sMhchk5);
        GetFldVar('S_STRING6' , sDhchk1);
        GetFldVar('S_STRING7' , sDhchk2);
        GetFldVar('S_STRING8' , sDhchk3);
        GetFldVar('S_STRING9' , sDhchk4);
        GetFldVar('S_STRING10', sDhchk5);
        GetFldVar('S_STRING11', sColaddyn);
        GetFldVar('S_STRING12', sColchk1);
        GetFldVar('S_STRING13', sColchk2);
        GetFldVar('S_STRING14', sColchk3);
        GetFldVar('S_STRING15', sColfchk1);
        GetFldVar('S_STRING16', sColfchk2);

       txFree;
    end;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ��û������� ����, KimDaeYong 2012-06-25
//==============================================================================
function HsrHeardt.Insert1(inFlag : String): Integer;
begin
   Result := -1;
   txAlloc;
   setFldName('S_TYPE1;' +
              'S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7;S_CODE8;S_CODE9;S_CODE10;' +
              'S_CODE11;S_CODE12;S_CODE13;S_CODE14;S_CODE15;S_CODE16;S_CODE17;S_CODE18;S_CODE19;S_CODE20;' +
              'S_CODE21;S_CODE22;S_CODE23;S_CODE24;S_CODE25;S_CODE26;S_CODE27;S_CODE28;S_CODE29;S_CODE30;' +
              'S_CODE31;S_CODE32;S_CODE33;S_CODE34;S_CODE35;S_CODE36;S_CODE37;S_CODE38;S_CODE39;S_CODE40;' +
              'S_CODE41;S_CODE42;S_CODE43;S_CODE44;S_CODE45;S_CODE46;S_CODE47;S_CODE48;S_CODE49;S_CODE50;' +
              'S_NAME1;S_NAME2;S_NAME3;S_NAME4;S_NAME5;S_NAME6');

   setFldValue(0,[inFlag          ,
                  sPatno          ,
                  sExecdate       ,
                  sOrddate        ,
                  sOrdseqno       ,
                  sExamcode       ,
                  sR_Sugery       ,
                  sR_Bone_125     ,
                  sR_Bone_250     ,
                  sR_Bone_500     ,
                  sR_Bone_1000    ,
                  sR_Bone_2000    ,
                  sR_Bone_3000    ,
                  sR_Bone_4000    ,
                  sR_Bone_8000    ,
                  sR_Bone_Avcbs   ,
                  sL_Sugery       ,
                  sL_Bone_125     ,
                  sL_Bone_250     ,
                  sL_Bone_500     ,
                  sL_Bone_1000    ,
                  sL_Bone_2000    ,
                  sL_Bone_3000    ,
                  sL_Bone_4000    ,
                  sL_Bone_8000    ,
                  sL_Bone_Avcbs   ,
                  sR_Air_125      ,
                  sR_Air_250      ,
                  sR_Air_500      ,
                  sR_Air_1000     ,
                  sR_Air_2000     ,
                  sR_Air_3000     ,
                  sR_Air_4000     ,
                  sR_Air_8000     ,
                  sR_Air_Avcbs    ,
                  sL_Air_125      ,
                  sL_Air_250      ,
                  sL_Air_500      ,
                  sL_Air_1000     ,
                  sL_Air_2000     ,
                  sL_Air_3000     ,
                  sL_Air_4000     ,
                  sL_Air_8000     ,
                  sL_Air_Avcbs    ,
                  sR_Spch_Srt     ,
                  sR_Spch_Pbs1    ,
                  sR_Spch_Pbs2    ,
                  sR_Spch_Dr      ,
                  sR_Spch_Sa      ,
                  sL_Spch_Srt     ,
                  sL_Spch_Pbs1    ,
                  sL_Spch_Pbs2    ,
                  sL_Spch_Dr      ,
                  sL_Spch_Sa      ,
                  sEditid         ,
                  sEditip         ,
                  sCalmthd        ]);

   if (txPutF('SR_HEARD_I1')) then  //sr_heard_i1.pc
   begin
      Result := 1;
      txFree;
   end;
   MessageStr := GetTxMsg;
end;

//==============================================================================
// ��û�������, KimDaeYong 2012-06-26
//==============================================================================
function HsrHeardt.List1(inFromdate, inTodate, inPatno : String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_CODE2;S_CODE3');
    SetFldValue(0,[inFromdate, inTodate, inPatno]);

    if (txGetF('SR_HEARD_L1')) then     //sr_heard_l1.pc
    begin
        GetFldVar('S_STRING1'    , 	sExecdate      );
		GetFldVar('S_STRING2'    , 	sOrddate       );
		GetFldVar('S_STRING3'    , 	sOrdseqno      );			    
		GetFldVar('S_STRING4'    , 	sExamcode      );
		GetFldVar('S_STRING5'    , 	sR_Sugery      );
		GetFldVar('S_STRING6'    , 	sR_Bone_125    );
		GetFldVar('S_STRING7'    , 	sR_Bone_250    );
		GetFldVar('S_STRING8'    , 	sR_Bone_500    );
		GetFldVar('S_STRING9'    , 	sR_Bone_1000   );
		GetFldVar('S_STRING10'   , 	sR_Bone_2000   );		
		GetFldVar('S_STRING11'   , 	sR_Bone_3000   );
		GetFldVar('S_STRING12'   , 	sR_Bone_4000   );
		GetFldVar('S_STRING13'   , 	sR_Bone_8000   );
		GetFldVar('S_STRING14'   , 	sR_Bone_Avcbs  );
		GetFldVar('S_STRING15'   , 	sL_Sugery      );
		GetFldVar('S_STRING16'   , 	sL_Bone_125    );
		GetFldVar('S_STRING17'   , 	sL_Bone_250    );
		GetFldVar('S_STRING18'   , 	sL_Bone_500    );
		GetFldVar('S_STRING19'   , 	sL_Bone_1000   );
		GetFldVar('S_STRING20'   , 	sL_Bone_2000   );
		GetFldVar('S_STRING21'   , 	sL_Bone_3000   );
		GetFldVar('S_STRING22'   , 	sL_Bone_4000   );
		GetFldVar('S_STRING23'   , 	sL_Bone_8000   );			    
		GetFldVar('S_STRING24'   , 	sL_Bone_Avcbs  );
		GetFldVar('S_STRING25'   , 	sR_Air_125     );
		GetFldVar('S_STRING26'   , 	sR_Air_250     );
		GetFldVar('S_STRING27'   , 	sR_Air_500     );
		GetFldVar('S_STRING28'   , 	sR_Air_1000    );
		GetFldVar('S_STRING29'   , 	sR_Air_2000    );
		GetFldVar('S_STRING30'   , 	sR_Air_3000    );
		GetFldVar('S_STRING31'   , 	sR_Air_4000    );
		GetFldVar('S_STRING32'   , 	sR_Air_8000    );
		GetFldVar('S_STRING33'   , 	sR_Air_Avcbs   );			    
		GetFldVar('S_STRING34'   , 	sL_Air_125     );
		GetFldVar('S_STRING35'   , 	sL_Air_250     );
		GetFldVar('S_STRING36'   , 	sL_Air_500     );
		GetFldVar('S_STRING37'   , 	sL_Air_1000    );
		GetFldVar('S_STRING38'   , 	sL_Air_2000    );
		GetFldVar('S_STRING39'   , 	sL_Air_3000    );
		GetFldVar('S_STRING40'   , 	sL_Air_4000    );
		GetFldVar('S_STRING41'   , 	sL_Air_8000    );
		GetFldVar('S_STRING42'   , 	sL_Air_Avcbs   );
		GetFldVar('S_STRING43'   , 	sR_Spch_Srt    );
		GetFldVar('S_STRING44'   , 	sR_Spch_Pbs1   );
		GetFldVar('S_STRING45'   , 	sR_Spch_Pbs2   );
		GetFldVar('S_STRING46'   , 	sR_Spch_Dr     );
		GetFldVar('S_STRING47'   , 	sR_Spch_Sa     );
		GetFldVar('S_STRING48'   , 	sL_Spch_Srt    );
		GetFldVar('S_STRING49'   , 	sL_Spch_Pbs1   );
		GetFldVar('S_STRING50'   , 	sL_Spch_Pbs2   );
		GetFldVar('S_STRING51'   , 	sL_Spch_Dr     );
		GetFldVar('S_STRING52'   , 	sL_Spch_Sa     );
        GetFldVar('S_STRING53'   , 	sCalmthd       );   //��հ���, KimDaeYong 2012-07-26

       Result := GetRecordCnt('S_STRING1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ��û����� ����, KimDaeYong 2012-06-26
//==============================================================================
function HsrHeardt.Delete1(inPatno, inExecdate : String): Integer;
begin
   Result := -1;
   txAlloc;
   setFldName('S_CODE1;S_CODE2');
   setFldValue(0,[inPatno, inExecdate]);

   if (txPutF('SR_HEARD_D1')) then  //sr_heard_d1.pc
   begin
      Result := 1;
      txFree;
   end;
   MessageStr := GetTxMsg;
end;

//==============================================================================
// ���ٰ˻��Ƿڼ�, KimDaeYong 2013-03-27
//==============================================================================
function HsrTbrptt.Select1(inPatno, inOrddate, inOrdseqno, inWardno, inMeddept : String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5');
    SetFldValue(0,[inPatno, inOrddate, inOrdseqno, inWardno, inMeddept]);

    if (txGetF('SR_TBRPT_S1')) then     //sr_tbrpt_s1.pc
    begin
        GetFldVar('S_STRING1'    , 	sReqdate    );
		GetFldVar('S_STRING2'    , 	sSpcchk     );
		GetFldVar('S_STRING3'    , 	sSpcoth     );
		GetFldVar('S_STRING4'    , 	sExamchk    );
		GetFldVar('S_STRING5'    , 	sWardnm     );
		GetFldVar('S_STRING6'    , 	sDeptnm     );
        GetFldVar('S_STRING7'    , 	sAddr       );

        Result := GetRecordCnt('S_STRING7');

        txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// ���ٰ˻��Ƿڼ� ����, KimDaeYong 2013-03-28
//==============================================================================
function HsrTbrptt.Insert1(inPatno, inOrddate, inOrdseqno,
                           inReqdate, inSpcchk, inSpcoth,
                           inExamchk, inEditid, inEditip : String): Integer;
begin
   Result := -1;
   txAlloc;
   setFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7;S_CODE8;S_CODE9');
   setFldValue(0,[inPatno, inOrddate, inOrdseqno,
                  inReqdate, inSpcchk, inSpcoth,
                  inExamchk, inEditid, inEditip]);

   if (txPutF('SR_TBRPT_I1')) then  //sr_tbrpt_i1.pc
   begin
      Result := 1;
      txFree;
   end;
   MessageStr := GetTxMsg;
end;

function HsrSedmst.InsUpPatinfo:Integer;
begin
   Result := -1;
   txAlloc;
   setFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7;S_CODE8;'+
              'S_CODE9;S_CODE10;S_CODE11;S_CODE12;S_CODE13;' +
              'L_SEQNO1;' +
              'S_EDITID;S_EDITIP');

   setFldValue(0,[sPatno,sMeddate,sOrddate,sOrdseqno,sPatsect,sExamcd,sMeddept,
                  sPatname,sSex,sAge,sWardno,sRoomno,sExamname,Integer(lMstseq),
                  sEditid,sEditip]);

   if (txPutF('SR_SEDMS_I1')) then  //sr_sedms_i1.pc
   begin
      GetFldVar('L_SEQNO1', lMstseq);  // �Էµ� �����ͼ���
      Result := 1;
      txFree;
   end;
end;

function HsrSedmst.SelectPatinfo:Integer;
begin
   Result := -1;
   txAlloc;

   SetFldName('S_CODE1;S_CODE2;L_SEQNO1');
   SetFldValue(0,[sPatno, sMeddate, Integer(lMstseq)]);

   if (txGetF('SR_SEDMS_S1')) then //sr_sedms_s1.pc
   begin
      GetFldVar ('S_STRING1',  sOrddate);
      GetFldVar ('S_STRING2',  sOrdseqno);
      GetFldVar ('S_STRING3',  sPatsect);
      GetFldVar ('S_STRING4',  sExamcd);
      GetFldVar ('S_STRING5',  sMeddept);
      GetFldVar ('S_STRING6',  sPatname);
      GetFldVar ('S_STRING7',  sSex);
      GetFldVar ('S_STRING8',  sAge);
      GetFldVar ('S_STRING9',  sWardno);
      GetFldVar ('S_STRING10', sRoomno);
      GetFldVar ('S_STRING11', sExamname);

      Result := GetRecordCnt('S_STRING1');
   end;
end;

function HsrSedmst.SelectPatinfo2:Integer;
begin
   Result := -1;
   txAlloc;

   SetFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4');
   SetFldValue(0,[sPatno, sOrddate, sOrdseqno, sPatsect]);

   if (txGetF('SR_SEDMS_S2')) then //sr_sedms_s2.pc
   begin
      GetFldVar ('S_STRING1',  sMeddate);
      GetFldVAr ('S_STRING2',  lMstseq);
      GetFldVar ('S_STRING3',  sPatsect);
      GetFldVar ('S_STRING4',  sExamcd);
      GetFldVar ('S_STRING5',  sMeddept);
      GetFldVar ('S_STRING6',  sPatname);
      GetFldVar ('S_STRING7',  sSex);
      GetFldVar ('S_STRING8',  sAge);
      GetFldVar ('S_STRING9',  sWardno);
      GetFldVar ('S_STRING10', sRoomno);
      GetFldVar ('S_STRING11', sExamname);


      Result := GetRecordCnt('S_STRING1');
   end;
end;

function HsrSedmst.ListPatinfo:Integer;  // ������ ��ȸ
begin
   Result := -1;
   txAlloc;

   SetFldName('S_CODE1;S_CODE2');
   SetFldValue(0,[sPatno, sMeddate]);

   if (txGetF('SR_SEDMS_L1')) then //sr_sedms_l1.pc
   begin
      GetFldVar ('S_STRING1',  sOrddate);
      GetFldVar ('S_STRING2',  sOrdseqno);
      GetFldVar ('S_STRING3',  sPatsect);
      GetFldVar ('S_STRING4',  sExamcd);
      GetFldVar ('S_STRING5',  sMeddept);
      GetFldVar ('S_STRING6',  sPatname);
      GetFldVar ('S_STRING7',  sSex);
      GetFldVar ('S_STRING8',  sAge);
      GetFldVar ('S_STRING9',  sWardno);
      GetFldVar ('S_STRING10', sRoomno);
      GetFldVar ('S_STRING11', sExamname);
      GetFldVar ('S_STRING12', sOrdtime);
      GetFldVar ('S_STRING13', sMeddate); // 2015.11.10 �߰�
      GetFldVar ('L_SEQNO1', lMstseq);


      Result := GetRecordCnt('S_STRING1');
   end;
end;

function HsrSedmst.UpdateOrder:Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7;S_CODE8;S_CODE9;S_CODE10;S_CODE11;S_CODE12;S_EDITID;S_EDITIP');
   SetFldValue(0,[sPatno,sMeddate,lMstseq,sOrddate,sOrdseqno,sExamcd,sExamname,sPreOrddate,sPreOrdseqno,sPrePatsect,sPatsect,sPreMeddate,sEditid,sEditip]);

   if (txPutF('SR_SEDMS_I2')) then  //sr_sedms_i2.pc
   begin
      GetFldVar('L_SEQNO1', lMstseq);  // �Էµ� �����ͼ���   
      Result := 1;
      txFree;
   end;
end;

function HsrSedevt.InsUpEvaluation:Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7;S_CODE8;S_CODE9;S_CODE10;'+
              'S_CODE11;S_CODE12;S_CODE13;S_CODE14;S_CODE15;S_CODE16;S_CODE17;S_CODE18;S_CODE19;S_CODE20;'+
              'S_CODE21;S_CODE22;S_CODE23;S_CODE24;S_CODE25;S_CODE26;S_CODE27;S_CODE28;S_CODE29;S_CODE30;'+
              'S_CODE31;S_CODE32;S_CODE33;S_CODE34;S_CODE35;S_CODE36;S_CODE37;S_CODE38;S_CODE39;S_CODE40;'+
              'S_CODE41;S_CODE42;S_CODE43;' +
              'L_SEQNO1;L_SEQNO2;'+
              'S_EDITID;S_EDITIP;S_CODE44');



   SetFldValue(0,[sPatno,sMeddate,sWeight,sConsci,sAllergy,sAllergytxt,sMedhisnone,sMedhisaspi,
                  sMedhiswapa,sMedhisetc,sMedhisetctxt,sSickhis,sSickhis1,sSickhis2,sSickhis3,sSickhis4,
                  sSickhis5,sSickhis6,sSickhis7,sSickhis8,sSickhis9,sSickhisetc,sAgreement,sWithguard,
                  sFastoff,sMouthnone,sMouth1,sMouth2,sMouthetc,sEstmdate,sPostbph,sPostbpl,sPostpr,sPostrr,
                  sFalldown1,sFalldown2,sFalldown3,sFalldown4,sFalldown5,sFalldown6,sRecdate,sRecid,sPostsao2,
                  Integer(lMstseq),Integer(lSubseq),
                  sEditid,sEditip,sIntclean]);

   if (txPutF('SR_SEDEV_I1')) then //sr_sedev_i1.pc
   begin
      GetFldVar('L_SEQNO2', lSubseq);  // �Էµ� �����ͼ���
      Result := 1;
      txFree;
   end;
end;

function HsrSedevt.SelectEvaluation:Integer;
begin
   Result := -1;
   txAlloc;
   
   SetFldName('S_CODE1;S_CODE2;L_SEQNO1;L_SEQNO2');
   SetFldValue(0,[sPatno,sMeddate,Integer(lMstseq),Integer(lSubseq)]);

   if (txGetF('SR_SEDEV_S1')) then //sr_sedev_s1.pc
   begin
      GetFldVar('S_STRING1',  sWeight);
      GetFldVar('S_STRING2',  sConsci);
      GetFldVar('S_STRING3',  sAllergy);
      GetFldVar('S_STRING4',  sAllergytxt);
      GetFldVar('S_STRING5',  sMedhisnone);
      GetFldVar('S_STRING6',  sMedhisaspi);
      GetFldVar('S_STRING7',  sMedhiswapa);
      GetFldVar('S_STRING8',  sMedhisetc);
      GetFldVar('S_STRING9',  sMedhisetctxt);
      GetFldVar('S_STRING10', sSickhis);
      GetFldVar('S_STRING11', sSickhis1);
      GetFldVar('S_STRING12', sSickhis2);
      GetFldVar('S_STRING13', sSickhis3);
      GetFldVar('S_STRING14', sSickhis4);
      GetFldVar('S_STRING15', sSickhis5);
      GetFldVar('S_STRING16', sSickhis6);
      GetFldVar('S_STRING17', sSickhis7);
      GetFldVar('S_STRING18', sSickhis8);
      GetFldVar('S_STRING19', sSickhis9);
      GetFldVar('S_STRING20', sSickhisetc);
      GetFldVar('S_STRING21', sAgreement);
      GetFldVar('S_STRING22', sWithguard);
      GetFldVar('S_STRING23', sFastoff);
      GetFldVar('S_STRING24', sMouthnone);
      GetFldVar('S_STRING25', sMouth1);
      GetFldVar('S_STRING26', sMouth2);
      GetFldVar('S_STRING27', sMouthetc);
      GetFldVar('S_STRING28', sEstmdate);
      GetFldVar('S_STRING29', sPostbph);
      GetFldVar('S_STRING30', sPostbpl);
      GetFldVar('S_STRING31', sPostpr);
      GetFldVar('S_STRING32', sPostrr);
      GetFldVar('S_STRING33', sFalldown1);
      GetFldVar('S_STRING34', sFalldown2);
      GetFldVar('S_STRING35', sFalldown3);
      GetFldVar('S_STRING36', sFalldown4);
      GetFldVar('S_STRING37', sFalldown5);
      GetFldVar('S_STRING38', sFalldown6);
      GetFldVar('S_STRING39', sRecdate);
      GetFldVar('S_STRING40', sRecid);
      GetFldVar('S_STRING41', sPostsao2);
      GetFldVar('S_STRING42', sIntclean);

      Result := GetRecordCnt('S_STRING1');
   end;

end;

function HsrSedmet.InsUpMedication:Integer;
begin
   Result := -1;
   txAlloc;

   SetFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7;S_CODE8;S_CODE9;S_CODE10;'+
              'S_CODE11;S_CODE12;S_CODE13;S_CODE14;'+
              'L_SEQNO1;L_SEQNO2;L_SEQNO3;'+
              'S_EDITID;S_EDITIP');
   SetFldValue(0,[sPatno,sMeddate,sMedtype,sUsetype,sInjtm,sInjcapa,sInjtm2,sInjcapa2,sInjtm3,sInjcapa3,
                  sTotalcapa,sInjid,sDelcapa,sWithid,
                  Integer(lMstseq),Integer(lSubseq),Integer(lRowseq),
                  sEditid,sEditip]);

   if (txPutF('SR_SEDME_I1')) then //sr_sedme_i1.pc
   begin
      GetFldVar('L_SEQNO3', lRowseq);  // �Էµ� �����ͼ���
      Result := 1;
      txFree;
   end;
end;

function HsrSedmet.SelectMedication:Integer;
begin
end;

function HsrSedmet.ListMedication:Integer;
begin
   Result := -1;
   txAlloc;

   SetFldName('S_CODE1;S_CODE2;L_SEQNO1;L_SEQNO2');
   SetFldValue(0,[sPatno, sMeddate, Integer(lMstseq),Integer(lSubseq)]);

   if (txGetF('SR_SEDME_L1')) then //sr_sedme_l1.pc
   begin
      GetFldVar ('S_STRING1',  sMedtype);
      GetFldVar ('S_STRING2',  sUsetype);
      GetFldVar ('S_STRING3',  sInjtm);
      GetFldVar ('S_STRING4',  sInjcapa);
      GetFldVar ('S_STRING5',  sInjtm2);
      GetFldVar ('S_STRING6',  sInjcapa2);
      GetFldVar ('S_STRING7',  sInjtm3);
      GetFldVar ('S_STRING8',  sInjcapa3);
      GetFldVar ('S_STRING9',  sTotalcapa);
      GetFldVar ('S_STRING10', sInjid);
      GetFldVar ('S_STRING11', sDelcapa);
      GetFldVar ('S_STRING12', sWithid);
      GetFldVar ('L_SEQNO3',   lRowseq);

      Result := GetRecordCnt('S_STRING1');
   end;
end;

function HsrSedmot.InsUpMonitor:Integer;
begin
   Result := -1;
   txAlloc;

   SetFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7;S_CODE8;S_CODE9;S_CODE10;' +
              'S_CODE11;S_CODE12;S_CODE13;' +
              'L_SEQNO1;L_SEQNO2;L_SEQNO3;' +
              'S_EDITID;S_EDITIP;S_CODE14');
   SetFldValue(0,[sPatno,sMeddate,sMotype,sMondate,sMonstate,sMonscore,
                  sPr,sRr,sSao2,sBp,sEtctxt,sRecdate,sRecid,
                  Integer(lMstseq),Integer(lSubseq),Integer(lRowseq),
                  sEditid,sEditip,sFallPrv]);

   if (txPutF('SR_SEDMO_I1')) then  //sr_sedmo_i1.pc
   begin
      GetFldVar('L_SEQNO3', lRowseq);  // �Էµ� ����
      Result := 1;
      txFree;
   end;
end;

function HsrSedmot.SelectMonitor:Integer;
begin
end;

function HsrSedmot.ListMonitor:Integer;
begin
   Result := -1;
   txAlloc;

   SetFldName('S_CODE1;S_CODE2;S_CODE3;L_SEQNO1;L_SEQNO2');
   SetFldValue(0,[sMotype, sPatno, sMeddate, Integer(lMstseq),Integer(lSubseq)]);

   if (txGetF('SR_SEDMO_L1')) then //sr_sedmo_l1.pc
   begin
      GetFldVar ('S_STRING1',  sMondate);
      GetFldVar ('S_STRING2',  sMonstate);
      GetFldVar ('S_STRING3',  sMonscore);
      GetFldVar ('S_STRING4',  sPr);
      GetFldVar ('S_STRING5',  sRr);
      GetFldVar ('S_STRING6',  sSao2);
      GetFldVar ('S_STRING7',  sBp);
      GetFldVar ('S_STRING8',  sEtctxt);
      GetFldVar ('S_STRING9',  sRecdate);
      GetFldVar ('S_STRING10', sRecid);
      GetFldVar ('S_STRING11', sRecname);
      GetFldVar ('L_SEQNO3',   lRowseq);
      GetFldVar ('S_STRING12', sFallPrv);
      Result := GetRecordCnt('S_STRING1');
   end;
end;

function HsrSedrct.InsUpRecovery:Integer;
begin
   Result := -1;
   txAlloc;

   SetFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7;S_CODE8;S_CODE9;S_CODE10;' +
              'S_CODE11;S_CODE12;S_CODE13;S_CODE14;S_CODE15;S_CODE16;' +
              'L_SEQNO1;L_SEQNO2;' +
              'S_EDITID;S_EDITIP;S_CODE17');
   SetFldValue(0,[sPatno,sMeddate,sState1,sState2,sState3,sState4,sState5,
                  sTotal,sOutedu1,sOutedu2,sOutedu3,sOutedu4,sOutedu5,sOuteduetc,sRecdate,sRecid,
                  Integer(lMstseq),Integer(lSubseq),
                  sEditid,sEditip,sOutedu6]);

   if (txPutF('SR_SEDRC_I1')) then //sr_sedrc_i1.pc
   begin
      GetFldVar('L_SEQNO2', lSubseq);  // �Էµ� ����
      Result := 1;
      txFree;
   end;
end;

function HsrSedrct.SelectRecovery:Integer;
begin
   Result := -1;
   txAlloc;

   SetFldName('S_CODE1;S_CODE2;L_SEQNO1;L_SEQNO2');
   SetFldValue(0,[sPatno, sMeddate, Integer(lMstseq),Integer(lSubseq)]);

   if (txGetF('SR_SEDRC_S1')) then //sr_sedrc_s1.pc
   begin
      GetFldVar ('S_STRING1',  sState1);
      GetFldVar ('S_STRING2',  sState2);
      GetFldVar ('S_STRING3',  sState3);
      GetFldVar ('S_STRING4',  sState4);
      GetFldVar ('S_STRING5',  sState5);
      GetFldVar ('S_STRING6',  sTotal);
      GetFldVar ('S_STRING7',  sOutedu1);
      GetFldVar ('S_STRING8',  sOutedu2);
      GetFldVar ('S_STRING9',  sOutedu3);
      GetFldVar ('S_STRING10', sOutedu4);
      GetFldVar ('S_STRING11', sOutedu5);
      GetFldVar ('S_STRING12', sOuteduetc);
      GetFldVar ('S_STRING13', sRecdate);
      GetFldVar ('S_STRING14', sRecid);
      GetFldVar ('S_STRING15', sOutedu6);
      
      Result := GetRecordCnt('S_STRING1');
   end;

end;

function HsrSedmgt.InsertMgt:Integer;
begin
   Result := -1;
   txAlloc;

   SetFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7;'+
              'S_EDITID;S_EDITIP');
   SetFldValue(0,[sPatno,sOrddate,sOrdseqno,sExamcd,sExamname,sPatsect,sRegyn,sEditid,sEditip]);

   if (txPutF('SR_SEDMG_I1')) then
   begin
      Result := 1;
      txFree;
   end;
end;

function HsrSedmgt.SelectMgt:Integer;
begin
   Result := -1;
   txAlloc;

   SetFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4');
   SetFldValue(0,[sPatno,sOrddate,sOrdseqno,sPatsect]);

   if (txGetF('SR_SEDMG_S1')) then
   begin
      GetFldVar('S_STRING1', sExamcd);
      GetFldVar('S_STRING2', sExamname);
      GetFldVar('S_STRING3', sPatsect);
      GetFldVar('S_STRING4', sRegyn);

      Result := GetRecordCnt('S_STRING1');
   end;
end;

function HsrSedmgt.ListMgt:Integer;  // ó���� ����
begin
   Result := -1;
   txAlloc;

   SetFldName('S_CODE1;S_CODE2');
   SetFldValue(0,[sPatno,sOrddate]);

   if (txGetF('SR_SEDMG_L1')) then
   begin
      GetFldVar('S_STRING1', sOrdseqno);
      GetFldVar('S_STRING2', sExamcd);
      GetFldVar('S_STRING3', sExamname);
      GetFldVar('S_STRING4', sPatsect);
      GetFldVar('S_STRING5', sRegyn);
      GetFldVar('S_STRING6', sOrdtime);

      Result := GetRecordCnt('S_STRING1');
   end;
end;

function HsrSedmgt.ListMgt2:Integer; // ������ ����
begin
   Result := -1;
   txAlloc;

   SetFldName('S_CODE1;S_CODE2');
   SetFldValue(0,[sPatno,sMeddate]);

   if (txGetF('SR_SEDMG_L2')) then
   begin
      GetFldVar('S_STRING1', sOrddate);
      GetFldVar('S_STRING2', sOrdseqno);
      GetFldVar('S_STRING3', sExamcd);
      GetFldVar('S_STRING4', sExamname);
      GetFldVar('S_STRING5', sPatsect);
      GetFldVar('S_STRING6', sRegyn);
      GetFldVar('S_STRING7', sOrdtime);

      Result := GetRecordCnt('S_STRING1');
   end;
end;
function HsrSedmgt.UpdateMgt:Integer;
begin
   Result := -1;
   txAlloc;

   SetFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7;'+
              'S_EDITID;S_EDITIP');
   SetFldValue(0,[sPatno,sOrddate,sOrdseqno,sExamcd,sExamname,sPatsect,sRegyn,sEditid,sEditip]);

   if (txPutF('SR_SEDMG_I2')) then
   begin
      Result := 1;
      txFree;
   end;
end;
function Hsrsuveyt.SrsuveytSel:Integer;
begin
   Result := -1;
   txAlloc;

   SetFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5');
   SetFldValue(0,[sPatno,sOrdcd,sOrdseqno,sOrddate,sAcptdate]);

   if (txGetF('SR_SUVEYT_L1')) then
   begin
	    GetFldVar('S_STRING1' , sGubun    );
	    GetFldVar('S_STRING2' , sOigubun  );
	    GetFldVar('S_STRING3' , sPatno    );
	    GetFldVar('S_STRING4' , sOrdcd    );
	    GetFldVar('S_STRING5' , sOrdseqno );
	    GetFldVar('S_STRING6' , sOrddate  );
	    GetFldVar('S_STRING7' , sMeddept  );
	    GetFldVar('S_STRING8' , sAcptdate );
	    GetFldVar('S_STRING9' , sWardno   );
	    GetFldVar('S_STRING10', sRoomno   );
	    GetFldVar('S_STRING11', sChklist  );
	    GetFldVar('S_STRING12', sDigegita );
	    GetFldVar('S_STRING13', sAlergy   );
	    GetFldVar('S_STRING14', sMedihist );
	    GetFldVar('S_STRING15', sMediabort);
	    GetFldVar('S_STRING16', sEtcetera );
	    GetFldVar('S_STRING17', sEditid   );
	    GetFldVar('S_STRING18', sEditdate );
      //2019.09.04.�ֱٿ� �߰�.
      GetFldVar('S_STRING19', sEstmdate );
	    GetFldVar('S_STRING20', sPostbph  );
	    GetFldVar('S_STRING21', sPostbpl  );
	    GetFldVar('S_STRING22', sPostpr   );
	    GetFldVar('S_STRING23', sPostrr   );


      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;

    MessageStr := GetTxMsg;
end;

//�����Ƿ���ȸ. KimDaeYong 2019-05-21
function HmdDnrrgt.List1(inFlag, inPatno, inRgtdate, inFromdate, inTodate, inGubun: string):Integer;
begin
   Result := -1;
   txAlloc32; //Pointer�� �޾ƿ�.
   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6');
   SetFldValue32(0,[inFlag, inPatno, inRgtdate, inFromdate, inTodate, inGubun] );

   if (txGetF('MD_DNRRG_L1')) then
   begin
      GetFldVar32('S_STRING1' ,sRgtdate);
      GetFldVar32('S_STRING2' ,sJugdyn);
      GetFldVar32('S_STRING3' ,sJugddate);
      GetFldVar32('S_STRING4' ,sJugdid);
      GetFldVar32('S_STRING5' ,sJugdname);
      GetFldVar32('S_STRING6' ,sConfyn);
      GetFldVar32('S_STRING7' ,sConfdate);
      GetFldVar32('S_STRING8' ,sConfid);
      GetFldVar32('S_STRING9' ,sConfname);
      GetFldVar32('S_STRING10',sExecyn);
      GetFldVar32('S_STRING11',sExecdate);
      GetFldVar32('S_STRING12',sExecid);
      GetFldVar32('S_STRING13',sExecname);
      GetFldVar32('S_STRING14',sGovmyn);
      GetFldVar32('S_STRING15',sGovmdate);
      GetFldVar32('S_STRING16',sGovmid);
      GetFldVar32('S_STRING17',sGovmname);
      GetFldVar32('S_STRING18',sExeccont);
      GetFldVar32('S_STRING19',sExecoth);
      GetFldVar32('S_STRING20',sRemark);
      GetFldVar32('S_STRING21',sCancyn);
      GetFldVar32('S_STRING22',sCancdate);
      GetFldVar32('S_STRING23',sCancid);
      GetFldVar32('S_STRING24',sCancname);
      GetFldVar32('S_STRING25',sPatno);
      GetFldVar32('S_STRING26',sPatname);

      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

//�����Ƿ� ���. KimDaeYong 2019-05-22
function HmdDnrrgt.Insert1(inFlag,inEditid,inEditip : string):Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName('S_CODE1;' +
              'S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6;S_STRING7;S_STRING8;S_STRING9;S_STRING10;' +
              'S_STRING11;S_STRING12;S_STRING13;S_STRING14;S_STRING15;S_STRING16;S_STRING17;S_STRING18;S_STRING19;S_STRING20;' +
              'S_EDITID;S_EDITIP');

   SetFldValue(0, [inFlag,
                   sPatno, sRgtdate, sJugdyn, sJugddate, sJugdid, sConfyn, sConfdate, sConfid, sExecyn, sExecdate,
                   sExecid, sGovmyn, sGovmdate, sGovmid, sExeccont, sExecoth, sRemark, sCancyn, sCancdate, sCancid,
                   inEditid, inEditip]);

   if txPutF('MD_DNRRG_I1') then     //md_dnrrg_i1.pc
   begin
       Result := 1;
       txFree;
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
function  HsrSchedule.DroffSel(iDrid,iMeddate:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_CODE1;S_CODE2;');
    SetFldValue(0,[iDrid,iMeddate]);

    if (txGetF('SR_SCHCMT_L3')) then
    begin
       GetFldVar('S_NAME1',sFromdate);
       GetFldVar('S_NAME2',sTodate);
       GetFldVar('S_NAME3',sReason);
       GetFldVar('S_NAME4',sGubun);
       Result := GetRecordCnt('S_NAME1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

function Hsrpacsot.OutreadSel(Fdate,Tdate: string):Integer;
begin
   Result := -1;
   txAlloc32;
   SetFldName32('S_CODE1;S_CODE2');
   SetFldValue32(0,[Fdate, Tdate] );

   if (txGetF('SR_OUTREAD_S1')) then    //sr_outread_s1.pc
   begin
      GetFldVar32('S_STRING1' , sPatno   );
      GetFldVar32('S_STRING2' , sPatname );
      GetFldVar32('S_STRING3' , sExamcode);
      GetFldVar32('S_STRING4' , sMeddept );
      GetFldVar32('S_STRING5' , sOrddate );
      GetFldVar32('S_STRING6' , sExecdate);
      GetFldVar32('S_STRING7' , sReqdate );
      GetFldVar32('S_STRING8' , sRptdate );
      GetFldVar32('S_STRING9' , sDays    );
      GetFldVar32('S_STRING10', sRsvdate );

      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;
function Hsrsuveyt.SrsuveytIns(IsGubun    ,IsOigubun  ,IsPatno    ,IsOrdcd    ,IsOrdseqno ,IsOrddate  ,IsMeddept  ,
                               IsAcptdate ,IsWardno   ,IsRoomno   ,IsChklist  ,IsDigegita ,IsAlergy   ,IsMedihist ,
                               IsMediabort,IsEtcetera ,IsEditid   ,IsEditip   ,IsEditdate ,sEstmdate  ,sPostbph  ,
                               sPostbpl   ,sPostpr    ,sPostrr     : string):Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName('S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6;S_STRING7;S_STRING8;S_STRING9;S_STRING10;' +
              'S_STRING11;S_STRING12;S_STRING13;S_STRING14;S_STRING15;S_STRING16;S_STRING17;S_STRING18;S_STRING19;S_STRING20;S_STRING21;S_STRING22;S_STRING23;S_STRING24');

   SetFldValue(0, [IsGubun    ,IsOigubun  ,IsPatno    ,IsOrdcd    ,IsOrdseqno ,IsOrddate  ,IsMeddept  ,
                   IsAcptdate ,IsWardno   ,IsRoomno   ,IsChklist  ,IsDigegita ,IsAlergy   ,IsMedihist ,
                   IsMediabort,IsEtcetera ,IsEditid   ,IsEditip   ,IsEditdate ,sEstmdate  ,sPostbph  ,
                   sPostbpl   ,sPostpr    ,sPostrr   ]);

   if txPutF('SR_SUVEYT_I1') then     //sr_suveyt_i1.pc
   begin
       Result := 1;
       txFree;
   end;
end;

//====================================================
// �������� ��ȸ
//====================================================
function HsrReadFilm.List2(inEmpno, inEmpname : string) : integer;
begin
   Result := -1;
   TxAlloc;
   SetFldName('S_TYPE1;S_TYPE2');
   SetFldValue(0, [inEmpno, inEmpname]);

   //sq_sikbs_l2.pc
   if TxGetF('SQ_SIKBS_L2') then
   begin
      GetFldVar('S_STRING1' ,  sUserid  );
      GetFldVar('S_STRING2' ,  sUsername);
      GetFldVar('S_STRING3' ,  sDeptnm  );
      GetFldVar('S_STRING4' ,  sStartdt );
      GetFldVar('S_STRING5' ,  sEnddt   );

      Result := GetRecordCnt('S_STRING1');
      TxFree;
   end;
end;

//============== �˻��� üũ����Ʈ ��ȸ 2021.06.18. �쳲�� �߰� =============================
function Hsrbefchk.BefchkSel1(inPatno, inOrddate, inOrdseqno,inExamcode : string) : integer;
begin
   Result := -1;
   TxAlloc;
   SetFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4');
   SetFldValue(0, [inPatno, inOrddate, inOrdseqno, inExamcode]);

   //sr_checkt_s1.pc
   if TxGetF('SR_CHECKT_S1') then
   begin
      GetFldVar('S_STRING1' ,  sChecklst  );

      Result := GetRecordCnt('S_STRING1');
      TxFree;
   end;
end;
//==============================================================================================

//============== �˻��� üũ����Ʈ ���� 2021.06.21. �쳲�� �߰� =============================
function Hsrbefchk.BefchkIns1(inFlag, inPatno, inOrddate,inOrdseqno, inExamcode, inChklist, inPatsect, inFchkdate, inFchkid, inFchkip  : string) : integer;
begin
   Result := -1;
   TxAlloc;
   SetFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7;S_CODE8;S_CODE9;S_CODE10');
   SetFldValue(0, [inFlag, inPatno, inOrddate, inOrdseqno, inExamcode, inChklist, inPatsect, inFchkdate, inFchkid, inFchkip]);
   //sr_checkt_i.pc
   if TxPutF('SR_CHECKT_I') then
   begin
      Result := 1;
      TxFree;
   end;

    MessageStr := GetTxMsg;
end;
//==============================================================================================


end.
// End of Source ^^ ============================================================




