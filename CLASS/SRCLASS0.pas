//==============================================================================
//
//==============================================================================
unit SRCLASS0;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Grids,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, IniFiles, TuxCom, WinSpool, Printers, Variants;

type
    // 사용자별 단축키별 판독결과 예문관리 클래스...
    // 2002.05.30. 김정수.
    HsrShorct = class
      sUserID      : Variant; // 사용자 ID
      sUserName    : Variant; // 사용자명
      sRsltText    : Variant; // 판독예문
      sShortCut    : Variant; // 단축키
      sSrhCode     : Variant; // 검색어 코드
      sExamtype    : Variant; // 검사유형
      sEditid      : Variant; // 수정자
      sEditName    : Variant; // 수정자명
      sEditIP    : Variant; // 수정자IP
      sEditDate    : Variant; // 수정일

      // 단축키 - 판독결과 예문 조회
      function Select(UserId, ShortCut, ExamType, Locate: String) : Integer;
      // 단축키 - 판독결과 예문 입력
      function Insert(UserId, ShortCut, ExamType, RsltText, Editid, Editip: String) : Integer;
      // 단축키 - 판독결과 예문 수정
      function Modify(UserId, ShortCut, ExamType, RsltText, Editid, Editip: String) : Integer;
      // 단축키 - 판독결과 예문 삭제
      function Delete(UserId, ShortCut, ExamType: String) : Integer;
    end;


    

    HcmDept2 = class
      sDeptnm      :   Variant; {부서명}
      sDeptcd      :   Variant; {부서코드}
      sLocate      :   Variant; {사업장코드}
      sLocatenm    :   Variant; {사업장명}
      sDeptnmio    :   Variant; {부서명io}
      sDeptcdio    :   Variant; {부서코드io}
      sLocateio    :   Variant; {사업장코드io}
      sLocatenmio  :   Variant; {사업장명io}
      sCodename    :   Variant; {코드명}
      sCode        :   Variant; {코드}
      sWkareacd    :   Variant; {워크에어리어}
      sWkareacdio  :   Variant; {워크에어리어io}

      //부서조회(CM_DEPT_L)
      function Select(deptnm, deptcd, locate: String): Integer;
      //부서조회 -- 2003.2.28 이경화
      function Select1(deptnm, deptcd, locate: String): Integer;

    end;

    //통계 Class
    HsrStat = class
      sEqipcode : Variant;      // 장비코드
      sEqipname : Variant;      // 장비명
      sExecid   : Variant;      // 검사자
      sExecname : Variant;      // 검사자명
      sExamcode : Variant;      // 검사항목코드
      sExamname : Variant;      // 검사항목명
      sDrugCode : Variant;      // 사용 약품 코드
      sDrugName : Variant;      // 사용 약품명
      lWPcnt    : Variant;      // 병동 환자수
      lWEcnt    : Variant;      // 병동 실시수
      lOPcnt    : Variant;      // 외래 환자수
      lOEcnt    : Variant;      // 외래 실시수

      sDate1    : Variant;      // 1월통계
      sDate2    : Variant;      // 2월통계
      sDate3    : Variant;      // 3월통계
      sDate4    : Variant;      // 4월통계
      sDate5    : Variant;      // 5월통계
      sDate6    : Variant;      // 6월통계
      sDate7    : Variant;      // 7월통계
      sDate8    : Variant;      // 8월통계
      sDate9    : Variant;      // 9월통계
      sDate10   : Variant;      // 10월통계
      sDate11   : Variant;      // 11월통계
      sDate12   : Variant;      // 12월통계

      sDate1_I    : Variant;      // 1월통계
      sDate2_I    : Variant;      // 2월통계
      sDate3_I    : Variant;      // 3월통계
      sDate4_I    : Variant;      // 4월통계
      sDate5_I    : Variant;      // 5월통계
      sDate6_I    : Variant;      // 6월통계
      sDate7_I    : Variant;      // 7월통계
      sDate8_I    : Variant;      // 8월통계
      sDate9_I    : Variant;      // 9월통계
      sDate10_I   : Variant;      // 10월통계
      sDate11_I   : Variant;      // 11월통계
      sDate12_I   : Variant;      // 12월통계

      sDate1_O    : Variant;      // 1월통계
      sDate2_O    : Variant;      // 2월통계
      sDate3_O    : Variant;      // 3월통계
      sDate4_O    : Variant;      // 4월통계
      sDate5_O    : Variant;      // 5월통계
      sDate6_O    : Variant;      // 6월통계
      sDate7_O    : Variant;      // 7월통계
      sDate8_O    : Variant;      // 8월통계
      sDate9_O    : Variant;      // 9월통계
      sDate10_O   : Variant;      // 10월통계
      sDate11_O   : Variant;      // 11월통계
      sDate12_O   : Variant;      // 12월통계

      sSlipChg  : Variant;      // SLIP변경...

      sReaddr   : Variant;      // 판독의
      sReadname : Variant;      // 판독의명
      //2003.11.19 이경화 추가
      sReadid   : Variant;      //판독의아이디


      //2003.3.12 이경화추가함. -- 방사선 주통계
      ordcode   : Variant;
      ordname   : Variant;
      OutCount  : Variant;
      InCount   : Variant;
      AllCount  : Variant;
      CountAvg  : Variant;

      //2003.5.15 이경화추가 -- 과별통계
      slipname  : Variant;    //slip명
      examname  : Variant;    //검사명
      out0      : Variant;    //순번
      out1      : Variant;    //종합건진
      out1u     : Variant;    //HEC종합건진
      out1g     : Variant;    //HEC일반건진
      out51     : Variant;    //순환기내과
      out52     : Variant;    //내분비내과
      out53     : Variant;    //소화기내과
      out54     : Variant;    //신장내과
      out55     : Variant;    //종양.혈액내과
      out56     : Variant;    //류마티스내과
      out57     : Variant;    //내과
      out58     : Variant;    //감염내과
      out59     : Variant;    //호흡기내과
      out3      : Variant;    //외과
      out4      : Variant;    //흉부외과
      out5      : Variant;    //산부인과
      out6      : Variant;    //소아과
      out7      : Variant;    //정형외과
      out8      : Variant;    //신경외과
      out9      : Variant;    //성형외과
      out10     : Variant;    //정신과
      out11     : Variant;    //안과
      out12     : Variant;    //피부과
      out13     : Variant;    //이비인후과
      out14     : Variant;    //비뇨기과
      out15     : Variant;    //응급실
      out16     : Variant;    //신경과
      out17     : Variant;    //가정의학과
      out18     : Variant;    //치과
      out19     : Variant;    //검사의뢰
      out77     : Variant;    //방사선과
      out88     : Variant;    //일반건진과
      out89     : Variant;    //국제클리닉
      out90     : Variant;    //마취통증의학과
      out91     : Variant;    //재활의학과
      out92     : Variant;    //감염내과            2021.03.18. 우남규 추가
      out93     : Variant;    //유방갑상선혈관외과  2021.03.18. 우남규 추가
      out94     : Variant;    //대장항문외과        2021.03.18. 우남규 추가
      out95     : Variant;    //간담췌외과          2021.03.18. 우남규 추가
      out96     : Variant;    //상부위장관내과      2021.03.18. 우남규 추가
      out97     : Variant;    //혈관이식외과        2021.03.18. 우남규 추가
      out98     : Variant;    //심장혈관외과        2021.03.18. 우남규 추가
      out99     : Variant;    //성형외과            2021.03.18. 우남규 추가
      out20     : Variant;    //과전체
      sUCount   : Variant;  //건진숫자
      sGCount   : Variant;  //일건숫자
      sOCount   : Variant;  //외래숫자
      sICount   : Variant;  //병동숫자
      sTotal    : Variant;  //합계
      sType     : Variant;  //구분

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

      sGubun    : Variant;  //방사선통계2차, KimDaeYong 2013-07-04
      

      //장비별통계
      function eqipcnt(Fromdate,Todate,Roomcode,Examtype: String): Integer;
      //검사자통계
      function eusercnt(Fromdate,Todate,Roomcode,Examtype,Stype: String): Integer;
      //검사통계
      function examcnt(Fromdate,Todate,Roomcode,Examtype: String): Integer;
      function examcnt2(Todate,Roomcode,Examtype: String): Integer;
      //검사년통계 - 검사항목별 검사연통계
      function examstat(Fromdate,Todate,Roomcode,Examtype: String): Integer;
      // 검사연통계 - 검사자 / 검사항목별 검사연통계
      function examstat4(Fromdate,Todate,Roomcode,Examtype: String): Integer;
      //검사년통계2
      function examstat5(Fromdate,Todate,Roomcode,Examtype: String): Integer;

      function examstat2(Fromdate,Todate,Roomcode,Examtype,ExceptRR: String): Integer;
      function examstat3(Fromdate,Todate,Roomcode,Examtype,ExceptRR: String): Integer;
      function statflag(Fromdate,Todate,Roomcode,Examtype,Readdr,Readdr2,StatFlag,Statflag2,Agetype: String): Integer;
      function examstat22(Fromdate,Todate,Roomcode,Examtype,ExceptRR: String): Integer;
      //필름년통계
      function filmstat(Fromdate,Todate,Roomcode,Examtype: String): Integer;
      //약품별 연통계
      function drugstat(Fromdate, Todate, Roomcode, Examtype, Locate: String):Integer;
      //진료과년통계
      function deptstat(Fromdate,Todate, Roomcode,Examtype,Locate: String): Integer;
      //월별판독 통계
      function ReadStatPerMonth(Fromdate, Examtype, Locate: String):Integer;
      function ReadStatPerMonth2(Fromdate, Todate, Examtype, Locate: String):Integer;
      function ReadStatPerMonth3(Fromdate, Todate, Examtype, Locate: String):Integer;
      //2003.11.19 이경화 -- 전사자판독통계
      function ReadStatPerMonth4(Fromdate, Todate, Examtype, Locate: String):Integer;

      // 내시경실 통계
      function S01Stat(Fromdate, Todate, Examtype: String):Integer;
      function S01Stat2(Gubun,Fromdate, Todate, RoomCode, Clndvcode ,Eqipcode: String):Integer;
      //년별판독 통계
      function ReadStatPerYear(Fromdate, Todate, Examtype, Locate: String):Integer;

      //2003.3.12 이경화 -- 주통계
      function JutongSel(Fromdate, Todate, Examtype: String): Integer;

      //2003.5.15 이경화 -- 과별통계
      //function Depttong(Fromdate, Todate, Examtype, Gubun, Flag: String): Integer;
      function Depttong(Fromdate, Todate, Examtype, Gubun, Gubun2 : String): Integer;


    end;
    
    // 과거예약환자등록 class
    //fff
    HsrOrderv = class         // class 명
      sPatNo    : Variant;     // 환자번호
      sPatName  : Variant;     // 환자명
      sResNo    : Variant;     // 주민등록번호
      sOrdDate  : Variant;     // 처방일자
      sExamName : Variant;     // 검사항목명
      sRoomCode : Variant;     // 검사실코드
      sExamStat : Variant;     // 검사진행 Status
      sRsvDate  : Variant;     // 예약일시
      sMedDept  : Variant;     // 진료과
      sOrdDrNm  : Variant;     // 처방의사명
      iOrdSeqNo : Variant;     // 처방순번
      sExamCode : Variant;     // 검사항목
      sOrdDr    : Variant;     // 처방의사

      function PatPastExamList(FromDate, ToDate, Examtype, RoomCode: String): Integer;
      function PatPastExamDelete(PatNo,OrdDate,UserId,Examtype:String;OrdSeqNo:Integer):Integer;

      function InsertPastOrdList(PatNo,ExamCode,OrderDate,DeptCd,DrCd,RoomCode,RsvDate,RcpYn,UserId,Examtype,StudyYn:String):Integer;
    end;

    // 검사실 class
    HsrRoomCode = class         // class 명
      sRoomCode : Variant;      // 검사실코드
      sRoomName : Variant;      // 검사실명
      sExamtype : Variant;      // 검사분류
      sExecYN   : Variant;      // 단말운영여부
      sRsvType  : Variant;      // 검사실명
      sChifTech : Variant;      // 담당 방사선사 ID
      sChifName : Variant;      // 담당 방사선사명
      sTelNo    : Variant;      // 연락처
      sDeptcode : Variant;      // 검사실부서코드
      sDeptname : Variant;      // 검사실부서명
      sErroomcd : Variant;      // 응급검사실
      sErdept   : Variant;      // 응급의학과
      sDeldate  : Variant;      // 삭제일자(사용여부), KimDaeYong 2013-01-15

      function RoomCodeList(Examtype,Rsvtype: String): Integer;
      function RoomCodeFullList(RoomCode,RoomName,Examtype,Locate, ScrRoom:String):Integer;
      function RoomCodeInsert(RoomCode,RoomName,Examtype,ExecYn,RsvType,Roomdept,ChifTech,TelNo,Erroomcd,Erdept,EditId:String):Integer;
      function RoomCodeUpdate(RoomCode,RoomName,Examtype,ExecYn,RsvType,Roomdept,ChifTech,TelNo,Erroomcd,Erdept,EditId:String):Integer;
      function RoomCodeUpdate2(RoomCode, sUseyn, Examtype:String):Integer;   //사용여부, KimDaeYong 2013-01-15
      function RoomCodeDelete(RoomCode,Examtype:String):Integer;
    end;

    // 장비 class
    HsrEquipmentCode = class         // class 명
      sExamType      : Variant;      // 검사분류
      sEquipmentCode : Variant;      // 장비코드
      sEquipmentName : Variant;      // 장비명
      sRoomCode      : Variant;      // 검사실코드
      sChifTech      : Variant;      // 담당 방사선사 ID
      sChifName      : Variant;      // 담당 방사선사명
      sTelNo         : Variant;      // 연락처

      function EquipmentCodeList(ExamType,RoomCode:String):Integer;
//      function EquipmentCodeInsert(ExamType,EquipmentCode,EquipmentName,RoomCode,ChifTech,TelNo:String):Integer;
      function EquipmentCodeInsert(sEqipcode,sEqipname,sRoomcode,sExamtype,sChiftech,sTelno,sEditid: String): Integer;

      function EquipmentCodeUpdate(sEqipcode,sEqipname,sRoomcode,sExamtype,sChiftech,sTelno,sEditid: String): Integer;
      function EquipmentCodeDelete(sEqipcode,sExamtype,sRoomcode: String): Integer;
    end;

    // 검사항목 class
    HsrExamCode = class         // class명
      sExamCode : Variant;      // 검사항목코드
      sExamName : Variant;      // 검사항목명
      sRgrpCode : Variant;      // 판독Group코드
      sSlipCode : Variant;      // Slip코드
      sRoomCode : Variant;      // 검사실코드
      sNormcode : Variant;      // Normal 판독결과코드
      sRsvexmyn    : Variant;      // 예약검사여부
      sPortYN   : Variant;      // Portable여부
      sERYN     : Variant;      // 응급실검사여부
      sOPYN     : Variant;      // 수술장검사여부
      sComments : Variant;      // 특기사항
      tAppldate : Variant;      // 적용일 (미확정)
      tEnddate  : Variant;      // 종료일 (미확정)
      sOrdYN    : Variant;      // 처방가능여부
      sMedrsvyn : Variant;      // 진료과예약여부
      sReadyn   : Variant;      // 판독필수여부
      sSpcyn    : Variant;      // 특진여부
      sSpcdr    : Variant;      // 특진의사ID
      sEqipcode : Variant;      // 장비코드

      sSugagrp  : Variant;    //수가분류기호
      sExamtype : Variant;    //검사분류
      sOrdtxtyn : Variant;    //임상소견필수여부
      sExmtxtyn : Variant;    //임상소견필수여부
      sEditid   : Variant;    //수정자
      sEditip   : Variant;    //수정자IP
      tEditdate : Variant;    //수정일자
      tDeldate  : Variant;    //삭제일자
      sExecnt   : Variant;    //기본실시건수


      iPriceIns : Variant;      // 의보수가
      iPriceGen : Variant;      // 일반수가

      sSignData   : Variant;            //SONGLIM_THOMA 추가  (김송주 전자인증부 추가 2006.12.27)
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

      //2003.2.20 이경화추가 -- 생년월일,성별
      sBirtdate : Variant;
      sSex      : Variant;

       //2003.2.28 방용균추가
      sReaddate : Variant; //판독일자

      //TAT, KimDaeYong 2011-08-18
      sExectat  : Variant;  //실시TAT
      sRepttat  : variant;  //보고TAT

      //방사선통계(중), KimDaeYong 2013-07-01
      sStat2    : Variant;
      sStatCd2  : Variant;

      sFastyn   : Variant;
      sProtectyn: Variant;

      function ExamCodeList(Examtype,ExamCode,ExamName,SortKey:String):Integer;
      function ExamCodeListFtp(Examtype,ExamName,ExamCode:String):Integer;
      function ExamCodeUpdate(Examcode,Slipcode,Ordyn,Rsvexmyn,Medrsvyn,Spcyn,Spcdr,Portyn,Eryn,Opyn,Readyn,Ordtxtyn,Exmtxtyn,Roomcode,Eqipcode,Rgrpcode,Normcode,Comments,Editid,ChartYn,RsvPntYn,RsvCare,PatGuide,Stat,ExamName,Stat2 : String;Execnt,Dispseq: Integer;sFastyn,sProtectyn:String):Integer;
      function ExamCodeGrouping(Cnt:Integer):Integer;

      //2003.3 방용균수정
      function CopyList(Fromdate, Todate, Patno, Copycode, ExamType: String): Integer;

      function CopyMat(Fromdate, Todate, Patno, Copycode: String): Integer;
      function CopySum(Fromdate, Todate, Patno, Copycode: String): Integer;
      function CopyCnt(Fromdate, Todate, Patno, Copycode: String): Integer;
      function CopyOrder(Patno,Orddate,Flag: String; Ordseqno: Integer): Integer;
      function CopyctList(Examtype: String): Integer;
      function BarcodeSel(Frompatno, Topatno, Fromdate, Todate: String): Integer;
      // 처방항목별 수가조회
      function GetPrice(OrdCd: String):Integer;

      // 2003.02.28 방용균추가
      function BatchReadList(FromDate, ToDate, ExamType, Slipcd, sType, Patsect, PatNo, sDateType : String) : Integer;
      // 2003.02.28 방용균추가
      function BatchReadSave(ReadDr1, ReadDr2, CfmDr:String;Cnt:Integer):Integer;
      // 2003.03.02 방용균추가
      function BatchReadCfmSave(ReadDr1, ReadDr2, CfmDr:String;Cnt:Integer):Integer;
      //2004.1.2  이경화추가 -- 해부병리 colldate update하기 위함.
      function SpexmUpdate(Cnt:Integer):Integer;
      //2008.07.08 김송주 추가 -- 자동 normal 판독 확인
      function BatchNormalCfmSave(Cnt:Integer):Integer;
      //TAT, KimDaeYong 2011.08.18
      function ListTAT(inFromdate, inTodate, inExamcode, inPatsect : string):Integer;


    end;

    // 판독결과예문 class
    HsrRsltCode = class
      sExamtype : Variant;      // 검사분류
      sRsltCode : Variant;      // 판독결과예문코드
      sRsltText : Variant;      // 판독결과예문
      sRsltKwd  : Variant;      // 판독결과예문 Keyword
      sSrhcode  : Variant;      // 검색어코드
      sSrhname  : Variant;      // 검색어명
      sLastrslt : Variant;      // 결론예문
      sKeyword  : Variant;      // Keyword

      function RsltKwdList(Examtype,UserID,RsltCode,Keyword:String):Integer;
      //2003.4.10 이경화 -- 판독예문전체항목가져오기
      function RsltKwdListAll(Examtype,UserID,RsltCode,Keyword:String):Integer;

      function RsltTextSelect(Examtype,RsltCode:String):Integer;

      //2003.3.18 이경화 -- 소견,결론부문으로관리(조회)
      function RsltTextSelect1(Examtype,RsltCode:String):Integer;

      //2003.4.10 이경화 -- 개인판독예문조회 (소견,결론)
      function PRsltTextSelect(Examtype,RsltCode,Userid:String):Integer;

      function RsltCodeInsert(sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,sEditid: String): Integer;
      //2003.3.18 이경화 -- 소견,결론부문으로관리 (입력)
      function RsltCodeInsert1(sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,sEditid,sLastrslt: String): Integer;

      //2003.4.10 이경화 -- 개인판독소견,결론입력
      function PRsltCodeInsert(sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,sEditid,sLastrslt: String): Integer;

      function RsltCodeUpdate(sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,sEditid: String): Integer;
      //2003.3.18 이경화 -- 소견,결론부문으로관리(수정)
      function RsltCodeUpdate1(sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,sEditid,sLastrslt: String): Integer;

      //2003.4.10 이경화 -- 개인 소견,결론부문 수정
      function PRsltCodeUpdate(sRsltcode,sExamtype,sUserid,sKeyword,sRslttext,sSrhcode,sEditid,sLastrslt: String): Integer;

      function RsltCodeDelete(Examtype,RsltCode:String):Integer;
      //2003.4.12 이경화 -- 개인판독등록항목 삭제
      function PRsltCodeDelete(Examtype,RsltCode,sUserid:string):Integer;
    end;

    // 검색어 class
    HsrSearchCd = class
      sSrchCode : Variant;      // 검색코드
      sSrchName : Variant;      // 검색어
      function SearchCodeList(SrchCode,ExamType:String):Integer;
      function SearchCodeInsert(SrchCode,SrchName,UserID,ExamType:String):Integer;
      function SearchCodeUpdate(SrchCode,SrchName,UserID,ExamType:String):Integer;
      function SearchCodeDelete(SrchCode,ExamType:String):Integer;
    end;

    // 소모재료 class
    HsrMatCode = class          // class 명
      sMatCode  : Variant;      // 소모재료코드
      sMatName  : Variant;      // 소모재료명
      sExamCode : Variant;      // 검사항목코드
      sUnit     : Variant;      // 단위
      iMatQty   : Variant;      // 소모량
      iAge      : Variant;      // 나이
      iDayCnt   : Variant;      // 나이일수
      sAgeunit  : Variant;      // 나이단위
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
      sMaleYn   : Variant;      // 남녀 구분
      tFromdate : Variant;      // 수가 적용 시작일
      tTodate   : Variant;      // 수가 적용 만료일
      lDispseq  : Variant;      // 화면 출력순서
      lEqualCode: Variant;
      tEditdate : Variant;      // 수정일자
      sComment  : Variant;
      sDataCnt  : Variant;

      sInsintyp : Variant;      //2016.11.11.최근우추가

      lDeldate  : Variant;      // 삭제일자     2004.11.30 고석길

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



      // 마감조정수량 이력 내역 조회.
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

      function MonMatList(ExecDate,RoomCode,Examtype: String): Integer;    // 2005.02.26 고석길
      function YearMatList(ExecDate,RoomCode,Examtype: String): Integer;    // 2005.02.26 고석길
    end;

    // Schedule Type class
    HsrScheduleCode = class
      sSchdType : Variant;      // 스케쥴 타입
      sExamType : Variant;      // 검사분류
      sSchdTime : Variant;      // 시간대
      iSchdMon  : Variant;      // 월요일 예약 정원
      iSchdTue  : Variant;      // 화요일 예약 정원
      iSchdWed  : Variant;      // 수요일 예약 정원
      iSchdThu  : Variant;      // 목요일 예약 정원
      iSchdFri  : Variant;      // 금요일 예약 정원
      iSchdSat  : Variant;      // 토요일 예약 정원
      iSchdSun  : Variant;      // 일요일 예약 정원
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
      sRoomCode : Variant;      // 검사실코드
      sRsvDate  : Variant;      // 예약일시
      iRsvTot   : Variant;      // 예약정원
      iRsvCnt   : Variant;      // 예약인원
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
      //2003.2.14 이경화 -- 월간스케쥴 삭제
      function MonSchDel(RoomCode,RsvDate:String):Integer;
      //2003.3.5 방용균-- 스케쥴타임 입력
      function RsvSchIns(RoomCode,RsvDate:String;RsvCnt : Integer):Integer;

      function DroffSel(iDrid,iMeddate:String):Integer;
    end;

    // 환자정보 class
    HPatInfo = class
      sPatNo    : Variant;     // 환자번호
      sPatName  : Variant;     // 환자명

      sPatNameEng : Variant;   // 영문 환자명. 방사선 인터페이스를 위한 추가.
                               // 2002.03.21. 김정수
      sSex      : Variant;     // 성별
      sResNo    : Variant;     // 주민번호
      sResNo1   : Variant;     // 주민번호(앞자리)
      sResNo2   : Variant;     // 주민번호(뒷자리)
      sBirth    : Variant;     // 생년월일(yyyymmdd)
      sMedDept  : Variant;     // 진료과
      sWardno   : Variant;     // 병동
      sPkgName  : Variant;     // 신검항목
      sTelno1   : Variant;     // 연락처1
      sTelno2   : Variant;     // 연락처2
      sPatIO    : Variant;     // 외래입원
      sPattype  : Variant;     // 환자유형
      sPattypenm: Variant;     // 환자유형명
      sAdmdate  : Variant;     //
      sDschdate : Variant;     // 병동환자퇴원일

      sLastdate : Variant;     // 최근내원일
      sBckstat  : Variant;     // 보험심사 플래그
      sRoomno   : Variant;     // 병동환자 병실

      // 2003.1.2 이경화 추가함.
      sOrdcode  : Variant;     // 처방코드
      sOrdname  : Variant;     // 처방명
      sCharnm   : Variant;     // 처방의사명
      sOrddate  : Variant;     // 처방일자
      sRcpstat  : Variant;     // 수납여부
      sExamroom : Variant;     // 검사실
      sOrdseqno : Variant;     // 처방순번

      // 2003.2.7 이경화추가
      sComments  : Variant;    // comment

      // 2003.2.21 이경화추가
      sPatsect   : Variant;

      // 2007.05.14 김송주 추가 (원무 요청으로 유형보조 추가)
      sTypecd    : Variant;
      sTypecdnm  : Variant;

      //KimDaeYong add
      sNaksang   : Variant;
      //color작업, KimDaeYong 2011-05-19
      sDiagcd    : Variant;
      sMetfdt    : Variant;
      sMetfnm    : Variant;
      sCreatdt   : Variant;
      sCreat     : Variant;
      sCreatpatno    : Variant;
      sCreatpatname  : Variant;

      //2021.06.16. 우남규 추가 (ct 검사 외 검사 및 주사 조회 기능 추가)
      sTrdate     : Variant;
      sTrpatno    : Variant;
      sTrpatname  : Variant;
      sTrmirname  : Variant;
      sTrbonname  : Variant;
      sTrcolname  : Variant;
      sTrrosname  : Variant;


      // 계약처 코드, 김송주 2015.07.01(심장초음파실.구은경 요청으로 추가)
      sCustcd    : Variant;
      //2022.02.21. 우남규 추가. (its 감염병 확인을 위해 여권번호를 추가로 불러옴)
      sPassport  : Variant;



      sFstdate   : Variant;
      sExecdate  : Variant;
      //sOrdcode   : Variant;
      sPretrt    : Variant;
      //sOrdname   : Variant;

      // 환자 목록 조회...
      function PatInfoList(KeyStr:String):Integer;
      function PatInfoListPerPatsect(KeyStr,Patsect:String):Integer;

      //2003.6.5 이경화 -- 주민번호로 조회
      function PatInfoResno(Flag, Resno1, Resno2:String):Integer;

      function PatInfoList2(patno:String):Integer;
      function AcpOrdList(OrdDate,PatSect,Examtype,RoomCd,SelType:String):Integer;
      function PhyOrdList(OrdDate,Flag:String):Integer;
      function PattypeSel(Patno, Orddate, Patsect: String; Ordseqno: Integer): Integer;
      // 2003.1.2 이경화 ==>  처방일자별 환자일괄접수
      function AcpPatOrderList(frOrdDate,toOrdDate,Examtype,RoomCd,Gubun:String):Integer;
      //2003.7.10 이경화 -- 환자현위치정보
      function PatWardno(patno:String): Integer;
      function PatInfoNaksang(inPatno:String):Integer;   //낙상, KimDaeYong 2011-05-04
      function AcpOrdSelect(inPatno, inOrddate:String):Integer;     //color작업, KimDaeYong 2011-05-25
      function AcpOrdSelect2(inOrddate:String):Integer;     //WooNamKyu 2021-06-02

    end;

    // 사용자 정보 class
    HUserInfo = class
      sUserID   : Variant;     // 사용자 ID
      sUserName : Variant;     // 사용자명
      sDeptName : Variant;     // 부서명
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
      // 일마감 권한을 가진 사용자 목록 조회
      function GetRightList(userid,password:String):Integer;
    end;

    // 병실 class
    HWardInfo = class
      sWardNo   : Variant;     // 병실번호
      sWardName : Variant;     // 병실명
      function WardList(seltype, locate: String):Integer;
      //2003.3.10 이경화 -- 필름관리실에서 사용할 부서코드(병동,진료과)
      function RadPList(deptcd, locate: String):Integer;
    end;

    // 신검 Class
    HsrPkg = class             // class 명
      sPkgCode  : Variant;     // 신검항목코드
      sPkgName  : Variant;     // 신검항목명
      sRcpDate  : Variant;     // 신검일자
      sAmPmType : Variant;     // 오전/오후 구분
      sBlngCode : Variant;     // 소속처코드
      sBlngName : Variant;     // 소속처명
      iRcpCnt   : Variant;     // 신검인원
      function OrdPkgList(OrdDate,ExamType:String):Integer;
      function ExePkgList(ExecDate,ExamType:String):Integer;
      function ScheduleList(RcpDate:String):Integer;
    end;

    // 검사실별 대기항목수 조회
    HsrWait = class
      sWaitCount : Variant;
      function RoomWaitCount(Roomcode:String):integer;
    end;

    // 검사 class
    HsrExam = class
      sPatNo    : Variant;     // 환자번호
      sPatName  : Variant;     // 환자명
      sSex      : Variant;     // 성별
//    sResNo    : Variant;     // 주민등록번호
      sResNo1   : Variant;     // 주민등록번호
      sResNo2   : Variant;     // 주민등록번호
      sPatSect  : Variant;     // 환자구분
      sOrdDate  : Variant;     // 처방일자
      sOrdTime  : Variant;     // 처방시간
      sHopeDate : Variant;     // 검사희망일자
      sRsvDate  : Variant;     // 예약일시
      sAcptDate : Variant;     // 접수일시
      sExecDate : Variant;     // 실시일시
      sReadDate : Variant;     // 판독일시
      sCfmDate  : Variant;     // 확인일시
      sChgDate  : Variant;     // 확인수정일시
      sAdmDate  : Variant;     // 원무접수일시
      sRcpDate  : Variant;     // 신검접수일시
      sOutDate  : Variant;     // 대출일시
      sFstDate  : Variant;     // 최초촬영일시
      sLstDate  : Variant;     // 최근촬영일시
//      sTrnsDate : Variant;     // 후송/전원일시
      sExamCode : Variant;     // 검사항목
      sExamName : Variant;     // 검사항목명
      sRgrpCode : Variant;     // GROUP 코드
      sPkgCode  : Variant;     // 신검항목
      sPkgName  : Variant;     // 신검항목명
      sRsltCode : Variant;     // 판독결과예문코드
      sRsltText : Variant;     // 판독결과예문
      sExamStat : Variant;     // 검사진행 Status
      sAccNo    : Variant;

//999
      sExamStatnm : Variant;     // 검사진행 Status명


      sRcpYN    : Variant;     // 수납여부
      sRoomCode : Variant;     // 검사실코드
      sRoomChg  : Variant;     // 변경검사실코드
      sRoomName : Variant;     // 검사실명
      sEqipcode : Variant;     // 검사장비코드
      sMedDept  : Variant;     // 진료과
      sWardNo   : Variant;     // 병동
      sOrdSite  : Variant;     // 처방발생원
      sOutDept  : Variant;     // 대출부서

      sOrdDr    : Variant;     // 처방의사
      sOrdDrNm  : Variant;     // 처방의사명
      sChaDr    : Variant;     // 주치의사
      sChaDrNm  : Variant;     // 주치의사명

      sReadDr   : Variant;     // 판독의사
      sReadDrNm : Variant;     // 판독의사명
      sCfmDr    : Variant;     // 확인의사
      sCfmDrNm  : Variant;     // 확인의사명
      iOrdSeqNo : Variant;     // 처방순번
      iFilmNo   : Variant;     // 신검간촬순번
      sExamTech : Variant;     // 검사시행기사
      sExTechNm : Variant;     // 검사시행기사명
      sExamDr   : Variant;     // 검사시행의사
      sExamDrNm : Variant;     // 검사시행의사명
      sReadDr1  : Variant;     // 주판독의사
      sRdDr1Nm  : Variant;     // 주판독의사명
      sReadDr2  : Variant;     // 부판독의사
      sRdDr2Nm  : Variant;     // 부판독의사명

      sReadDr4  : Variant;     // 판독의사 4
      sRdDr4Nm  : Variant;     // 판독의사 4의 명

      sExamCnt  : Variant;     // 재검여부
      sNormYn   : Variant;     // 정상여부
      sComments : Variant;     // 특기사항
      iExecCnt  : Variant;     // 실시건수
      iCfmCnt   : Variant;     // 보고건수
      iNormYCnt : Variant;     // 정상건수
      iNormNCnt : Variant;     // 비정상건수
      sFstPat   : Variant;     // 초진/재진/후송/전원
      sExecYn   : Variant;     // 검사실 단말운영 여부
      sRsvType  : Variant;     // 예약형태
      sSOrdYN   : Variant;     // 2차 Order 유무
      iSOrdCnt  : Variant;     // 2차 Order 갯수

      sAcrcdYn  : Variant;     // ACR CODE 사용여부. 방사선 = 'Y' 기타 특수검사는 'N'
      sSiteCode : Variant;     // 장기코드 - 방사선 ACR 코드 사용시
      sSrchCode : Variant;     // 검색코드 - 방사선일 경우, 진단코드로 사용.
      sSrchName : Variant;     // 검색어 코드명
      sSiteName : Variant;     // 장기명

      sErYn     : Variant;     // 응급여부
      sPortYn   : Variant;     // PortYn여부
      sReexwdt  : Variant;     //repeat 예약 날짜
      sReexdate : Variant;     //repeat 실시 날짜
      sRoomNo   : Variant;
      sWriterid : Variant;     // 전사
      sWriternm : Variant;     // 전사

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

      sCancelRsvDate  : Variant;     // 예약일시(예약취소시 원무에 넘겨줄 일자)
      iDayCnt   : Variant;
      sExamtype : Variant;

      sBirdate  : Variant;      //생년월일
      sRemark   : Variant;      //

      sOrdkindnm: Variant;      // 처방종류
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

      //2003.3.25 이경화추가
      sLastrslt : Variant;

      //2002.12.5 이경화추가
      sOpdate   : Variant;  // 수술일자
      sOpcode   : Variant;  // 수술코드
      sOpname   : Variant;  // 수술명
      sReopyn   : Variant;  // 재수술여부
      sOpstm    : Variant;  // 수술시작시간
      sEtimttm  : Variant;  // 수술예상소요시간
      sCombinyn : Variant;  // Combin수술여부
      sOproom   : Variant;  // 수술실
      sOpdr     : Variant;  // 집도의

      //2003.4.1 이경화 추가 -- 실시일자,키,몸무게
      sExectime : Variant;
      sWeight   : Variant;
      sHeight   : Variant;

      // 방용균 추가 2003.1.21
      sRsvCare  : Variant;  // 예약시 주의사항
      sRsvPntYn : Variant;  // 예약지 출력여부

      // 2003.02.26 방용균 추가
      sExecName : Variant;  // 실시자 이름
      sBxYn     : Variant;  // Bx 여부
      sCloYn    : Variant;  //CLO 여부
      sMedicine : Variant;  // 약품수치(Midazolam사용량)
      sMedicine2: Variant;  // 약품수치(Pofol사용량)
      sReMedicine : Variant;  // 약품수치(Midazolam폐기량)
      sReMedicine2: Variant;  // 약품수치(Pofol폐기량)

      // 2003.4.19 이경화 -- 임상소견
      sOrddesc  : Variant;

      //2003.6.20 이경화 -- 용량
      sQty      : Variant;

      //2003.12.16 이경화
      sEditid   : Variant;
      sEditip   : Variant;
      sEditdate : Variant;
      sCnt      : Variant;
      sDcyn     : Variant;

      sSignData   : Variant;            //SONGLIM_THOMA 추가
      sSerialNo    : Variant;
      sSubjectDN   : Variant;

      sSpcdryn     : Variant;       //선택진료여부, 2008-10-01 KimDaeYong
//      sAccno       : Variant;       //ACCNO추가, KimDaeYong 2008-11-10

      //color작업, KimDaeYong 2011-05-19
      sDiagcd    : Variant;
      sCompyn    : Variant;
      sBowel     : Variant;
      sCecumyn   : Variant;
      sAntconvyn : Variant;        //2021.05.06.우남규 추가 (진경제 사용여부)

      sSpcrddryn : Variant;        // 선택판독여부, 2013.12.20 김송주
      sSisulyn   : Variant;        // 시술검사적용여부, 2015.4.14 김송주

      //향정폐기, KimSongJu
      sMedicine3  : Variant;       // 펜토탈 사용량, 2016.01.11
      sReMedicine3: Variant;       // 펜토탈 폐기량, 2016.01.11

      //향정폐기, 최근우
      sMedicine4  : Variant;       // 프리폴 사용량, 2016.07.22
      sReMedicine4: Variant;       // 프리폴 폐기량, 2016.07.22

      //sChadr      : Variant;
      sChadrname  : Variant;

      //2003.02.26 방용균 추가함
      function CArmExecute(sType,PatNo,OrdDate,ExecId :String;OrdSeqNo:Integer):Integer;


      // 이경화 수정 2002.12.9 --> 검사구분항목 추가 (일반,특수,CT,MRI,SONO,Angio)
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
      // 2003.2.25 이경화 -- 건진포함 판독입력리스트조회
      function PatTreadList1(Examtype, Patno, Orddate, FLAG: String; OrdSeqNo:Integer): Integer;
      // 2003.3.19 이경화 -- 건진포함 판독입력리스트조회(검사구분별로 조회)
      function PatTreadList2(Examtype, Patno, Orddate, FLAG, Examcode: String; OrdSeqNo:Integer): Integer;
      // 2003.3.26 이경화 -- 환자검사별로 판독내역조회
      function PatTreadList3(Examtype, Patno, Orddate, FLAG, Examcode: String; OrdSeqNo:Integer): Integer;
      // 2004.4.17 이경화 -- 일반+특수검사만 자료조회
      function PatTreadList4(Examtype, Patno, Orddate, FLAG, Examcode: String; OrdSeqNo:Integer): Integer;
      // 2004.4.18 이경화 -- 판독결과다운로드
      function PatTreadList5(Examtype, Frdate, Todate, Orddate, FLAG, Examcode: String; OrdSeqNo:Integer): Integer;


      function PatCfmList(Examtype, Patno, Orddate: String; OrdSeqNo:Integer): Integer;
      // 2003.2.28 이경화 -- 건진포함
      function PatCfmList1(Examtype, Patno, Orddate: String; OrdSeqNo:Integer): Integer;
      // 2003.3.25 이경화 -- 소견,결론 구분하여 처리
      function PatCfmList2(Examtype, Patno, Orddate, Examcode: String; OrdSeqNo:Integer): Integer;
      // 2003.4.17 이경화 -- 판독된자료중 일반+특수검사만조회
      function PatCfmList3(Examtype, Patno, Orddate, Examcode: String; OrdSeqNo:Integer): Integer;

      // 2003.4.1 이경화 -- 환자별 키, 몸무게 가져오기
      function PatHWlst(Patno: String): Integer;

      function PatExamList(Examtype, Patno, Orddate, Su, Scrroom : String; OrdSeqNo:Integer): Integer;
      // mdexmort.procstat = 'A' 로 변경....-.-?
      function UpdateRsvDatePre(Patno: String): Integer;

      // 예약 및 접수를 하려는 항목의 dc여부를 체크한다..
      function DCCheckPre(DataCnt:Integer): Integer;

      function PastExamList(Examtype, Patno: String): Integer;
      function PastExamSel(Patno, Orddate: String; OrdSeqNo:Integer): Integer;
      function GetExamInfo(Patno, Orddate: String; OrdSeqNo: Integer): Integer;
      function UpdateExamtext(Patno, Orddate: String; OrdSeqNo: Integer; Userid,Examtext : String): Integer;

      // 구로병원 진단방사선과일 경우, 검사특기사항 수정...은
      // 환자의 처방일이 동일한 방사선과 검사항목에 대해서
      // 동일하게 반영된다...
      function UpdateExamtextGR(Patno, Orddate: String; OrdSeqNo: Integer; Userid,Examtext : String): Integer;

      function WaitList(AcptDate,Examtype:string):integer;
      function WaitPatList(AcptDate,RoomCode:string):integer;
      function WaitPatListUpdate(DataCnt: Integer):integer;
      function GetSlipcd: Integer;
      function GetSlipcd2(slipcd: String): Integer;
      // interesting case조회
      function ListIntrs(Fromdate, Todate, ReadDr: String): Integer;
      // 모든 interesting case목록 조회...주어진 기간내의...
      function ListIntrs2(Fromdate, Todate, ReadDr, Examtype: String): Integer;

      function SelIntrs(Userid, Orddate, Patno: String; Ordseqno: Integer): Integer;
      function UpdIntrs(PatNo, OrdDate, Comment, Userid, Userip: String; OrdSeqNo: Integer): Integer;
      function InsIntrs(PatNo, OrdDate, Comment, Userid, Userip, Examtype: String; OrdSeqNo: Integer): Integer;
      function DelIntrs(PatNo, OrdDate, Userid: String; OrdSeqNo: Integer): Integer;

      //2003.12.18 이경화 -- 수탁검사 DC처리
      function Dcordproc(Userid:String;Cnt:Integer):Integer;

      //2004.1.6  이경화 -- 필름복사 DC처리
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
      //2002.11.27 이경화 추가함 -- 조건검색
      function ExamIfsel(Frdate,Todate,Ipatsect1,Ipatsect2,Ichkcode1,Ichkcode2,Ichkcode3,Examtype: String):Integer;
      //2003.11.13 이경화 추가함 -- Modality별 조회
      function ExamModality(Frdate,Todate,Examtype,Modality: String):Integer;
      //2002.12.4 이경화 추가함  -- 당뇨병클리닉에서 영양실consult내역조회
      function consultsel(Frdate,Todate: String):Integer;


      //2003.4.2 이경화 추가 -- 동위원소실 연속검사 조회
      //2003.10.29 이경화 수정 -- examcd5추가함
      function Contisel(Frdate, Todate, examtype, examcd1, examcd2, examcd3, examcd4, examcd5: String):Integer;
      //2003.12.16 이경화 -- DC처방조회화면에서 조회
      function Dcsel(Patno, Frdate, Todate, examtype , gubun: String):Integer;
      //2003.2.24 -- examtype추가
      function Portablesel(Frdate,Todate,examtype: String):Integer;
      //2002.12.5 이경화 추가함
      function OplstIfsel(Frdate, Todate, Itype: String):Integer;
      //2003.6.16 이경화 -- 동위원소 시약조회
      function PatParmsel(Patno, examtype : String): Integer;
      // 2015.9.17 김송주
      function UpdateExamdate(Patno, Orddate, Date1,Date2, Patsect, Userid,Userip : String; OrdSeqNo: Integer): Integer;

    end;

    // 검사예약 class
    HsrReserve = class(HsrExam)
      //2003.4.14 이경화
      sOrdtime: Variant;
      //2003.4.21 이경화 -- remark한줄로
      sRemark_rep: Variant;

      //예약취소사유, KimDaeYong 2011-11-15
      sRsvcncont  : Variant;

      function ReserveDataUpdate(Cnt:Integer):Integer;
      function ReserveDataUpdate1(Cnt:Integer):Integer;
      function ReserveDataUpdateCheck(Cnt:Integer):Boolean;

      function WardOrdListToReserve(OrdDate_from,Orddate_to,WardNo,ExamType, Roomcode,ExceptExecuted:String):Integer;
      function ReserveHistoryList(FromDate,ToDate,RoomCode,ExamCode,Examtype,Examstat:String):Integer;
      // 선택일자의 항목별
      function ReserveHistorycCount(Rsvdate,RoomCode,ExamCode,Examtype:String):Integer;

      function RepeatExec(Patno,Orddate,RoomCode,Flag:string;OrdSeqNo:Integer):Integer;
      function RepeatUpdate(OrdSeqNo:integer;PatNo,OrdDate,RoomCode,RsvDate,Flag,Remark:string):Integer;
    end;

    // 검사접수 class
    HsrAccept = class(HsrExam)
      function AcceptDataUpdate(Cnt:Integer; Userid: String):Integer;
      function AcceptExecDataUpdate(Cnt: Integer; Userid, REPEMARK,NIGHTYN,MAINOP,REOPYN,Medicine3,Remedicine3,Medicine4,Remedicine4: String):Integer;
      function AcceptExecDataUpdate13(Cnt: Integer; Userid: String):Integer;
      //2003.2.18 이경화 : 특수검사(접수,실시동시처리) 일건,종건포함
      function AcceptExecDataUpdate2(Cnt: Integer; Userid, REPEMARK,NIGHTYN,MAINOP,REOPYN,Medicine3,Remedicine3,Medicine4,Remedicine4: String):Integer;
      //일괄접수
      function AcceptDataUpdate2(Cnt:Integer; Userid, Jobtype: String):Integer;
      //2003.2.17 이경화 : 건진접수
      function AcceptDataUpdate3(Cnt:Integer; Userid: String):Integer;



    end;

    // 신검접수 class
    HsrPhyAcpt = Class(HsrAccept)
      function TAcptPhyList(PatNo,ExamType:String):Integer;
      function TAcptCPDataList(OrdDate,PkgCode,SortKey:String):Integer;
      function AcptCPDataList(OrdDate,PkgCode:String):Integer;
      function AcptPhyInsert(Cnt:Integer):Integer;
      function AcptPhyDelete(PatNo,OrdDate:String;OrdSeqNo:Integer):Integer;
      function AcptCPUpdate(PatNo,OrdDate,ExamStat:String;OrdSeqNo,
        FilmNo:Integer):Integer;
    end;

    // 검사실시 class
    HsrExecute = class(HsrExam)
      sMatCode  : Variant;      // 소모재료코드
      sMatName  : Variant;      // 소모재료명
      sChargeYn : Variant;      // Charge여부
      sDeptName : Variant;      // 진료과명
      sUnit     : Variant;      // 단위
      iMatSeqNo : variant;      // 추가소모재료 순번
      iMatQty   : Variant;      // 소모량
      iAdjQty   : Variant;      // 조정량
      iWCnt     : Variant;      // 병동 실시검사건수
      iOCnt     : Variant;      // 외래 실시검사건수
      iGCnt     : Variant;      // 신검 실시검사건수
      iWPCnt    : Variant;      // 병동 실시환자수
      iOPCnt    : Variant;      // 외래 실시환자수
      iGPCnt    : Variant;      // 신검 실시환자수
      iExeCnt   : Variant;      // 총 실시건수
      iCnt01    : Variant;      // 1월 실시건수
      iCnt02    : Variant;      // 2월 실시건수
      iCnt03    : Variant;      // 3월 실시건수
      iCnt04    : Variant;      // 4월 실시건수
      iCnt05    : Variant;      // 5월 실시건수
      iCnt06    : Variant;      // 6월 실시건수
      iCnt07    : Variant;      // 7월 실시건수
      iCnt08    : Variant;      // 8월 실시건수
      iCnt09    : Variant;      // 9월 실시건수
      iCnt10    : Variant;      // 10월 실시건수
      iCnt11    : Variant;      // 11월 실시건수
      iCnt12    : Variant;      // 12월 실시건수
      sInstype  : Variant;      // 급여구분
      sAddtype  : Variant;      // 추가재료구분
      iDayCnt   : Variant;      // 날짜카운트
      sBirdate  : Variant;      // 생년월일
      lNormqty  : Variant;      // 기본소모량
      lAddqty   : Variant;      // 추가소모량
      lReexqty  : Variant;      // 리피트소모량
      lTotalqty : Variant;      // 전체소모량
      sMedtime  : Variant;      // 예약일시
      sUsername : Variant;      // 사용자명
      sOrddept  : Variant;      // 의뢰과
      sPatsite  : Variant;      // Patsite
      sAcptdate : Variant;      // 접수일자
      sGuardNum : Variant;      // 리피트 비고. 당뇨교실인 경우 환자 보호자수 지정.
      sPatsect  : Variant;
      sSex      : Variant;
      sRoomCd   : Variant;
      sMedseqno : Variant;
      sBxyn     : Variant;
      sModality : Variant;      // 2003.9.25 이경화 추가
      sWaitExe  : Variant;      // 2006.12.15 김송주 촬영대기시간(실시-접수)
      sWaitExe2 : Variant;      // 2006.12.15 김송주 촬영대기기간(실시-희망)
      sWaitCfm  : Variant;      // 2006.12.15 김송주 보고소요시간(보고-실시)
      sAccno    : Variant;      // 2008-11-11 KimDaeYong, ACCNO추가
      sClndvcode: Variant;      // 2011-09-20 KimDaeYong, 내시경세척기코드
      sMeddate  : Variant;      // 2012-04-06 KimDaeYong, 진료일자
      sSpcdryn  : Variant;      // 2014.02.06 선택여부
      sInsintyp : Variant;
      sExecAge  : Variant;
      sExecname : Variant;


      sReaddr2nm  : Variant;       // 판독의 2, 2019.02.28.최근우
      sReaddr3nm  : Variant;       // 판독의 3, 2019.02.28.최근우

      
      function ExecuteDataList(AcptDate,RoomCode,Patno,Examtype:String):Integer;
      //2003.1.17 이경화
      function ExecuteDataList2(AcptDate,RoomCode,Patno,Examtype:String):Integer;
      function ExecuteDataUpdate(Examtype,PatNo,OrdDate,ExamTech,Eqipcode,Nightyn,Mainop,Reopyn,Editid:String;OrdSeqNo:Integer):Integer;
      // 당뇨교실용 치료실시
      function ExecuteDataUpdate13(Examtype,PatNo,OrdDate,ExamTech,Eqipcode,Nightyn,Mainop,Reopyn,sGuarnum,Editid:String;OrdSeqNo:Integer):Integer;
      function VideoTapeNumUpdate(PatNo,OrdDate,sNumber:String;OrdSeqNo:Integer):Integer;
      // 방사선과 동일부위 당일 치료실시
      function ExecuteDataUpdateEqualPosition(Examtype,USERID,Equipcode,NIGHTYN,MAINOP,REOPYN,REPEMARK,MEDSEQNO,CLNDVCODE:String; SelCnt:Integer):Integer;
      // 방사선과 동일부위 당일 치료실시 : 2003.2.18 이경화 (일건,종건포함)
      function ExecuteDataUpdateEqualPosition2(Examtype,USERID,Equipcode,NIGHTYN,MAINOP,REOPYN,REPEMARK,MEDSEQNO,CLNDVCODE:String; SelCnt:Integer):Integer;

      // 해당 항목들의 수납여부를 체크한다...
      function CheckRcpstat(SelCnt:Integer):Integer;

      function ExecuteDataDelete(Examtype,PatNo,OrdDate,ExamTech,Eqipcode,Editid:String;OrdSeqNo:Integer):Integer;
      //2003.2.27 이경화 -- 건진포함 검사실시취소
      function ExecuteDataDelete1(Examtype,PatNo,OrdDate,ExamTech,Eqipcode,Editid,Patsect:String;OrdSeqNo:Integer):Integer;

      function ExecAcptDataDelete(Examtype,PatNo,OrdDate,ExamTech,Eqipcode:String;OrdSeqNo:Integer):Integer;

      //2003.3.5 이경화 -- 건진포함 접수,검사취소
      function ExecAcptDataDelete1(Examtype,PatNo,OrdDate,ExamTech,Eqipcode,Patsect:String;OrdSeqNo:Integer):Integer;
      function ExecuteList(FromDate,ToDate,RoomCode,Meddept,Wardno,Patno,Examcode,Examtype:String):Integer;
      //2003.9.25 이경화 -- PACS 검사실정보를 modality정보로 사용함
      function ExecuteList7(FromDate,ToDate,RoomCode,Meddept,Wardno,Patno,Examcode,Examtype:String):Integer;

      function ExecuteList2(FromDate,ToDate,RoomCode,Meddept,Wardno,Patno,Examcode,Examtype:String):Integer;
      function ExecuteList3(FromDate,ToDate,RoomCode,Meddept,Wardno,Patno,Examcode,Examtype,Sortkey,Drug,Sex:String):Integer;
      function ExecuteList4(FromDate,ToDate,RoomCode,Meddept,Wardno,Patno,Examcode,Examtype,Sortkey,Drug,Sex:String):Integer;
      function ExecuteList13(FromDate,ToDate,RoomCode,Meddept,Wardno,Patno,Examcode,Examtype:String):Integer;
      // 2006.12.14 김송주 - QI 용 검사실별 환자 조회 Meddept를 Patsite로 전용해서 사용함.
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
      // 2003.2.25 이경화추가 -- 건진포함
      function RepeatSelect1(FromDate, ToDate, RoomCode,Flag,PatNo: string): Integer;
      function Opdrsv(Rsvdate, Examtype, Deptyn, Sortkey: String): Integer;

    end;

    // 판독 class
    HsrReadFilm = class(HsrExam)
      sFlag      : Variant;
      iReadSeq   : Variant;     // 판독순번
      sBirthDate : Variant;
      iPrtcnt    : Variant;
      sWriterNm  : Variant;
      sMeddate   : Variant;

      //2003.1.21 이경화
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

      //2003.5.9 이경화
      sLastrslt: Variant;

      //2003.6.18 이경화
      sChadrNm : Variant;

      //2003.8.7  이경화
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
      // 2003.1.21 이경화 -- 전판독자료조회
      function PreReadInfo(IPatno, IOrdcode:String):Integer;
      //2003.7.31 이경화  -- HP컨버젼자료조회
      function PreReadInfo2(IPatno, IOrdcode:String):Integer;

      function ConfirmNeedList(Examtype,ReadDr1:String):Integer;
      //2003.8.7 이경화 -- 건진 판독확인자료조회
      function ConfirmNeedList1(Examtype,ReadDr1:String):Integer;

      function ConfirmChangeList(ExecDate,PatNo,ReadDr1:String):Integer;
      function NotReadList(FromDate,ToDate,ExamType,SortKey,Roomcode:String):Integer;
      // SONGLIM_THOMA 수정
      function ReadDataUpdate(ReadDr1,ReadDr2,ReadDr3,RsltText,Userid,Repemark,BoneDensity,ReadDr4,BxYn,CloYn,
                              Medicine,Medicine2,ReMedicine,ReMedicine2,sCompyn,sBowel,sCecumyn,sSpcRdDrYn:String;
                              Cnt:Integer;xSignData,xSerialNo,xSubjectDN,Medicine3,ReMedicine3,Medicine4,ReMedicine4,sAntconvyn:String):Integer;
      // 2003.2.26 이경화 -- 검사결과저장 (건진포함)
      function ReadDataUpdate1(ReadDr1,ReadDr2,ReadDr3,RsltText,Userid,Repemark,BoneDensity,ReadDr4,BxYn,CloYn,
                               Medicine,Medicine2,ReMedicine,ReMedicine2,sCompyn,sBowel,sCecumyn,sSpcRdDrYn:String;
                               Cnt:Integer;xSignData,xSerialNo,xSubjectDN,Medicine3,ReMedicine3,Medicine4,ReMedicine4,sAntconvyn:String):Integer;
      // 2003.3.21 이경화 -- 검사결과취소 (건진포함)
      function ReadDataUpdate2(Cnt:Integer):Integer;
      //2003.3.24 이경화 -- 초음파 판독결과저장 (소견,결론부문으로 구분하여 관리)
      function ReadDataUpdate3(ReadDr1,ReadDr2,ReadDr3,RsltText,Userid,Repemark,BoneDensity,Writerid,Lastrslt:String;Cnt:Integer):Integer;
      //2003.3.24 이경화 -- 판독결과저장 (소견,결론부문으로 구분하여 관리)
      function ReadDataUpdate4(ReadDr1,ReadDr2,ReadDr3,RsltText,Userid,Repemark,BoneDensity,Writerid,Lastrslt:String;Cnt:Integer):Integer;
      // 2003.7.8 이경화 -- 핵의학체내 판독일자수동으로 검사결과저장 (건진포함)
      function ReadDataUpdate6(ReadDr1,ReadDr2,ReadDr3,RsltText,Userid,Repemark,BoneDensity,ReadDr4,BxYn,CloYn,Medicine,Readdate:String;Cnt:Integer;xSignData,xSerialNo,xSubjectDN:String):Integer;


      function ConfirmDataUpdate(Readdr1,Readdr2,Readdr4,CfmDr,RsltText,Userid:String;Cnt:Integer):Integer;
      //2003.2.27 이경화 -- 판독확인(건진포함)
      function ConfirmDataUpdate1(Readdr1,Readdr2,Readdr4,CfmDr,RsltText,Userid,BxYn,Medicine:String;Cnt:Integer):Integer;
      //2003.3.24 이경화 -- 판독확인(건진포함) 판독소견과 결론부문을 구분하여 처리
      function ConfirmDataUpdate2(Readdr1,Readdr2,Writerid,CfmDr,RsltText,Userid,Lastrslt,Trslt:String;Cnt:Integer):Integer;
      //2003.7.16 이경화 -- 판독확인(건진포함) 핵의학체내 whole body bone scan 판독일 3일이내로처리
      function ConfirmDataUpdate3(Readdr1,Readdr2,Readdr4,CfmDr,RsltText,Userid,BxYn,Medicine,Cfmdate:String;Cnt:Integer):Integer;


      function ConfirmChangeUpdate(CfmDr,RsltText,ChngResn,Userid:String;Cnt:Integer):Integer;
      // 판독확인 수정2 - 판독의도 수정...
      function ConfirmChangeUpdate2(Readdr1,Readdr2,Readdr4,CfmDr,RsltText,ChngResn,Userid:String;Cnt:Integer;xSignData,xSerialNo,xSubjectDN:String):Integer;
      // 2003.2.28 이경화 -- 판독수정(건진포함)
      function ConfirmChangeUpdate3(Readdr1,Readdr2,Readdr4,CfmDr,RsltText,ChngResn,Userid:String;Cnt:Integer;xSignData,xSerialNo,xSubjectDN:String):Integer;
      // 2003.4.15 이경화 -- 판독확인수정(결론,소견부분 구분하여처리함)
      function ConfirmChangeUpdate5(Readdr1,Readdr2,Writeid,CfmDr,RsltText,Lastrslt,Trslt,ChngResn,Userid:String;Cnt:Integer):Integer;
      // 2002.12.10 이경화 수정 --> 검사항목, 판독확인일시추가
      function RsltPrntPatList(PatNo,CfmDate,CfmDate_to,Meddept,Patsect,Wardno,PrtFlag,Examtype,PrtUser,Readdr,Examchk1,Examchk2,Examchk3,Examchk4,Examchk5,Examchk6,Examchk7:String):Integer;
      //2003.7.15 이경화 추가 --> RsltPrntPatList FTP로 받는 부분을 수정하여추가함.
      function RsltPrntPatList1(PatNo,CfmDate,CfmDate_to,Meddept,Patsect,Wardno,PrtFlag,Examtype,PrtUser,Readdr,Examchk1,Examchk2,
                                Examchk3,Examchk4,Examchk5,Examchk6,Examchk7,DateFlag,Statflag,Statflag2,Readdr2:String):Integer;
      Function SrchcodeInsert(Userid:String):Integer;
      Function GetIntCase(Patno, Orddate : String ; Ordseqno : Integer): Integer;
      function ChkInterest(Patno, Readdr : String): Integer;

      function GetSrchCode(Patno, Orddate : String ; Ordseqno : Integer): Integer;
      function GetSrchCode2(Patno, Orddate : String ; Ordseqno : Integer): Integer;

      function UpdatePrt(Prtuser: String; DataCnt: Integer): Integer;
      function DelRead(DataCnt: Integer;userid: String): Integer;
      // 2003.2.28 이경화 -- 판독삭제(건진포함)
      function DelRead1(DataCnt: Integer;userid: String): Integer;
      // 2002.12.16 이경화 추가
      function NReadSelect(FromDate,ToDate,ExamType,SortKey,Meddept,Patsect,Examchk1,Examchk2,Examchk3,Examchk4,Examchk5,Examchk6,Examchk7:String):Integer;
      function List2(inEmpno, inEmpname : string) : integer;
    end;

    // 신검판독 class
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

    // 필름 class
    HsrFilm = class
      sPatNo    : Variant;     // 환자번호
      sPatName  : Variant;     // 환자명
      sSolgerNo : Variant;     // 군번
      sCasteNm  : Variant;     // 계급
      sSex      : Variant;     // 성별
      sResNo    : Variant;     // 주민등록번호
      sForceNm  : Variant;     // 원소속
      sPatType  : Variant;     // 환자구분
      sFstDate  : Variant;     // 최초촬영일시
      sLstDate  : Variant;     // 최근촬영일시
      sFilmType : Variant;     // 필름구분
      sOutDate  : Variant;     // 대출일시
      sOutDept  : Variant;     // 대출부서코드
      sOutDeptNm: Variant;     // 대출부서명    - 정수가 추가. 2001.11.19
      sOutID    : Variant;     // 대출자
      sOutName  : Variant;     // 대출자 성명
      sDeptName : Variant;     // 진료과명
      sReqID    : Variant;     // 요청의사
      sReqName  : Variant;     // 요청의사 성명
      sUseType  : Variant;     // 용도
      sRtnWDate : Variant;     // 반납예정일
      sRtnDate  : Variant;     // 반납일시
      sTelNo    : Variant;     // 연락처
      iFoutCnt  : Variant;     // 대출건수
      iFrtnCnt  : Variant;     // 반납건수
      iFilmNo   : Variant;     // 외부필름 등록번호
      iSeqNo    : Variant;     // 외부필름 반입순번
      sHosName  : Variant;     // 외부필름 촬영 병원명
      sInDate   : Variant;     // 외부필름 반입일자
      sComments : Variant;     // 외부필름 반출 특기사항
//      sTrnsDate : Variant;    // 후송/전원일시
      sReqDate  : Variant;     // 신청일시
      sReqWDate : Variant;     // 대출희망일
      sCurLoc   : variant;     // 현위치
      sStat     : Variant;     // 상태
      sTel1     : Variant;     // 전화번호1
      sTel2     : Variant;     // 전화번호2
      sExamType : Variant;     // 검사분류  장재순
      //555
      sTypeName : Variant;     // 검사분류명  장재순
      sMeddept  : Variant;     // 진료과
      sDr1      : Variant;     // 진료의번호
      sDrname1  : Variant;     // 진료의명
      lSeqno    : Variant;     // 필름번호
      sTypecode : Variant;     // 필름대출용도코드
      sAcptdate : Variant;     // 접수일자
      sReqidname: Variant;
      sOutregid : Variant;
      sOutregidname: Variant;
      sSuyn     : Variant;      //건진필름포함여부
      sUsetypenm: Variant;
      sRtnregidName  : Variant; //대출반납등록자명
      sFilmKind : Variant;      //필름분류
      sFilmName : Variant;      //필름이름
      sSeqNo : Variant;         //순번
      sFilmTypeCd : Variant;    //필름분류코드
      sMeddate : Variant;       //진료일자

      //2003.9.23 이경화
      sOrdname : Variant;       //처방명
      sModality: Variant;       //Modality
      sExecdate: Variant;       //실시일시 2003.10.28 이경화 추가함.

      sBarcodeYn : Variant;     //바코드 출력여부 예수병원 양석원 추가(2004.12.02)
      sDeptCd    : Variant;     //부서코드 예수병원 양석원 추가(2004.12.02)
      sReqdept   : Variant;     //요청부서 예수병원 양석원 추가(2004.12.06)
      sReqDeptnm : Variant;     //요청부서이름 예수병원 양석원 추가(2004.12.06)
      sReqUsername : Variant;   //요청자이름 예수병원 양석원 추가(2004.12.06)
      sReqidate  : Variant;     //요청일시 예수병원 양석원 추가(2004.12.06)
      sOuttype   : Variant;     //대출구분 예수병원 양석원 추가(2004.12.06)
      sCount     : Variant;     //마스타 수 예수병원 양석원 추가(2005.01.09)

      //장재순 555
      function FilmTypeCheck():Integer;
      function FilmMasterCreation(spatno,sexamtype,slstdate,sfstdate,sTelno1,sTelno2,sSuyn:String): Integer;
      //장재순
      function FilmOutCheck(PatNo,ExamType:String):Integer;
      // 예수병원 2004.11.27 고석길 필름 대출 신청서 출력(자동출력)
      function FilmOutCheck2(PatNo,sFromDate:String):Integer;
      function FilmOutInsert(PatNo,OutDept,OutID,ReqID,UseType,RtnWDate,
                             TelNo,OutDate,ExamType:String):Integer;
      //장재순
      function FilmOutUpdate(PatNo,ExamType,ReqDate,OutRegid:String;SeqNo:Integer):Integer;
      //장재순
      function FilmOutDelete(PatNo,ExamType,ReqDate,UserId:String;SeqNo:Integer):Integer;

      function FilmOutList(OutDate,OutDept,ExamType:String):Integer;
      //장재순
      function FilmRtnList(PatNo,OutDate,OutDept,ExamType:String):Integer;

      //2003.4.30 이경화 -- 필름요청건에 대하여 대출,반납이 이루어지지 않은 항목에 대하여 대출처리
      //function SelectAllOutUpdate(PatNo,ExamType,ReqDate,Outdept,OutRegid:String;SeqNo,Cnt:Integer):Integer;
      function SelectAllOutUpdate(Outdept,OutRegid:String;Cnt:Integer):Integer;

      // 2003.4.29 이경화 -- 필름요청조회
      function FilmReqList(ReqDate,MedDept,ExamType:String):Integer;


      //function FilmRtnDel(Patno,ExamType,ReqDate:String;Seqno:Integer):Integer;
      //2003.3.11 이경화
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
      //--대출신청관련 장재순
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

      //2003.9.19  이경화 -- 외래예약리스트조회
      function Medirsvlist(Frdate, Todate: String): Integer;
      //2003.10.28 이경화 -- 외래예약일자별 판독대상리스트
      function Medirsvlist1
      (Frdate, Todate: String): Integer;

      // 예수병원 2004.12.04 양석원 필름 바코드 출력 체크(자동출력)
      function FilmBarCheck(PatNo:String):Integer;
      //예수병원 양석원 2004.12.04 추가
      //필름대출이력의 READYN의 출력 체크
      function FilmReadCheck(PatNo,Reqid,ReqDate:String):Integer;
      //예수병원 양석원 2004.12.04 추가
      //필름대출이력의 READYN의 출력 체크
      function FilmOutCheck3(fromDate,reqdept,reqid,patno:String):Integer;
      //필름대출이력의 현위치 조회 예수병원 양석원 2004.12.17 추가
      function FilmOutCheck4(patno,reqdate,isSeqno:String):Integer;
      //필름대출신청한 부서및 사용자 조회 예수병원 양석원 2005.01.03 추가
      function FilmOutCheck5(patno:String):Integer;

      //필름대출신청한 부서및 사용자 조회 예수병원 양석원 2005.01.09 추가
      function FilmOutCheck6(PatNo,ExamType:String):Integer;

      //필름대장 조회 예수병원 양석원 2005.01.09 추가
      function FilmOutCheck7(PatNo,ExamType:String):Integer;


    end;

    // Consult Class
    HsrConsult = Class         // Class 명
      sPatNo    : Variant;     // 환자번호
      sPatName  : Variant;     // 성명
      sAdmDate  : Variant;     // 입원일자
      sCasteNm  : Variant;     // 계급
      sTitle    : Variant;     // 의뢰제목
      sMeddept  : Variant;     // 진료과
      sOrdDr    : Variant;     // 의뢰의사 사번
      sOrdDrNm  : Variant;     // 의뢰의사명
      sHopeDate : Variant;     // 희망일시
      sCallYN   : Variant;     // 왕진여부
      sReqTX    : Variant;     // 의뢰내역
      sRestDate : Variant;     // 실시일
      sRestTX   : Variant;     // 실시내용
      sFinishYn : Variant;     // 서명여부
      iSeqNo    : Variant;     // 순번
      iOrdSeqNo : Variant;     // 의뢰순번
      function ConsultWReqList(UserID,Gubun:String):Integer;
      function ConsultOReqList(Meddept:String):Integer;
      function ConsultRsltUpdate(PatNo,AdmDate,ExecDate,ExecDept,OrdDr,DrCaste,
        RsltTx,SignYn:String;SeqNo,OrdSeqNo:Integer):Integer;
      function UpdateConrqt(PatNo,ReqDate,ConhDept,ReqTx,ConhDr,RestTx,
        FinishYn:String;SeqNo:Integer):Integer;
    end;

    //판독의 코드관리
    HsrRedoct = Class
      sDocCode    : Variant;     //판독의 코드
      sUserId     : Variant;     //사용자 번호
      sComment    : Variant;     //특기사항
      sUserName   : Variant;     //사용자 이름
      sSpcDrYn    : Variant;     //선택판독의 여부 2013.12.20 김송주추가
      function RedoctSel(DocCode, Examtype: string):Integer;
      function RedoctList(DocCode, Userid, Username, Examtype: String): Integer;
      function RedoctDelete(DocCode, Examtype: string):Integer;
      function RedoctUpdate(DocCode, Examtype, Comment:string):Integer;
      function RedoctInsert(DocCode, UserId, Examtype, Comment:string):Integer;
    end;


    // 진단코드(ACR 코드)관리
    HsrAcrcdt = Class
      sAcrCode    : Variant;     // 진단 코드
      sAcrName    : Variant;     // 진단명
      sUseYn      : Variant;     // 사용여부

      function AcrcodeSel(Acrcode: string):Integer;
      function AcrcodeList(Acrcode,Flag,SiteCode: String): Integer;
      function AcrcodeDelete(Acrcode: string):Integer;
      function AcrcodeUpdate(AcrCode, AcrName, UseYn:string):Integer;
      function AcrcodeInsert(AcrCode, AcrName, UseYn:string):Integer;
    end;

    // 장기코드 관리
    HsrSitect = Class
      sSiteCode   : Variant;     // 장기 코드
      sSiteName   : Variant;     // 장기명
      sUseYn      : Variant;     // 사용여부

      function SitecodeSel(SiteCode: string):Integer;
      function SitecodeList(SiteCode,SiteName: String): Integer;
      function SitecodeDelete(SiteCode: string):Integer;
      function SitecodeUpdate(SiteCode,SiteName,UseYn:string):Integer;
      function SitecodeInsert(SiteCode,SiteName,UseYn:string):Integer;
    end;



    // 공통코드 관리
    HsrCodect = Class
      sCode      : Variant;     // 대분류 / 중분류 코드
      sCodeName  : Variant;     // 코드명
      sUseYn     : Variant;     // 사용여부

      function CodectSel(Code1,Code2: string):Integer;
      function CodectList(Code1,Code2: String): Integer;
      function CodectDelete(Code1,Code2: string):Integer;
      function CodectUpdate(Code1,Code2,CodeName,UseYn:string):Integer;
      function CodectInsert(Code1,Code2,Name,UseYn:string):Integer;
    end;



   /////////////////////////////////////////////
   // 핵체외 검사 처방 조회 (20010904 : 박종엽)
   /////////////////////////////////////////////
   Hmdexmort = class
      sPatno      : Variant; {}
      tOrddate    : Variant; {}
      sOrdseqno   : Variant; {}
      tMeddate    : Variant; {}
      sPatsect    : Variant; {}
      sPatsite    : Variant; {}
      sOrdgrp     : Variant; {}
      sSlipcd     : Variant; {병동구분 copy 1,1 자리}
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
      sWardroomno : Variant; {병동/병실}
      sRoomname   : Variant; {검사실명}
      sSlipnm     : Variant; {검사실명}
      sSliptype   : Variant; {핵체외인지 임상인지 체그 변수 }
      sSpcname1   : Variant; //2003.03.05 방용균추가

      //처방정보조회
      function Ord_info(in_flag,in_patno,in_meddept,in_date,in_locate: String) : Integer;

     //2003.03.05 방용균추가
       //해부병리(외래검사실용)처방
     function Pathology(in_patno: String): Integer;
   end;

    /////////////////////////////////////////////
    // 검사시약사용량조회 class
    /////////////////////////////////////////////
    HsrDrugUse = class         // class명
      sExecdate  : Variant;     // 검사일시
      sPatno     : Variant;     // 환자번호
      sPatname   : Variant;     // 환자이름
      sExamcode  : Variant;     // 검사항목코드
      sExamname  : Variant;     // 검사항목이름
      sDrugcode  : Variant;     // 약품코드
      sDrugname  : Variant;     // 약품명
      sUseqty    : Variant;     // 사용량
      sUnit      : Variant;     // 단위
      sOrddr     : Variant;     // 처방의
      sOrddrname : Variant;     // 의사명

      function DrugUseListFtp(Fromdate,Todate,DrugCode,Flag,Examcode:String):Integer;
    end;

    ///////////////////////////////////////////////////////////////
    // 약품목록 조회 (2001.09.13 박종엽)
    ///////////////////////////////////////////////////////////////
    type HsrDgcdmt = class
        sDrugcode  : Variant;       { 약품코드 }
        sDrugname  : Variant;       { 약품명 }
        sDostype   : Variant;
        sDostypenm : Variant;

        function List10(Drugcode,Drugname,Igrdname,Efccodel,Efccodem,Efccodes:String):Integer;
    end;

    ///////////////////////////////////////////////////////////////
    // 수술의뢰내역 조회 (2001.09.15 박종엽) - 진료에서 떼어옴.
    ///////////////////////////////////////////////////////////////
    HsrOpreqt = class
     sPatNo	    : Variant;  // 환자번호
     sSex       : Variant;  // 성별
     sBirtDate  : Variant;  // 생년월일
     sOpDate	 : Variant;  // 수술(예정)일자
     iOpSeqno	 : Variant;  // 수술(예정)순번
     sPatSect	 : Variant;  // 환자구분
     sMedDept	 : Variant;  // 진료과
     sErYn  	 : Variant;  // 응급여부
     sReopYn    : Variant;  // 재수술여부
     sOpSTm     : Variant;  // 수술시작시간
     sEstimtTm	 : Variant;  // 예상수술시간
     sDiagCd	 : Variant;  // 진단코드(ICD-10)
     sDiagName	 : Variant;  // 진단명
     sCombinYn	 : Variant;  // Combine수술여부
     sOpRoom	 : Variant;  // 수술실
     sOpName	 : Variant;  // 수술명
     sOpCode	 : Variant;  // 수술코드
     sOpCode2	 : Variant;  // 수술코드2
     sOpCode3	 : Variant;  // 수술코드3
     sOpDr  	 : Variant;  // 집도의
     sOpDr2 	 : Variant;  // 수석의-ASSISTANT
     sOpDr3 	 : Variant;  // 수석의-ASSISTANT2
     sCon1Dr	 : Variant;  // 협진1집도의
     sCon1Dr2	 : Variant;  // 협진1수석의-ASSISTANT
     sCon1Dr3	 : Variant;  // 협진1수석의-ASSISTANT2
     sCon2Dr	 : Variant;  // 협진2집도의
     sCon2Dr2	 : Variant;  // 협진2수석의-ASSISTANT
     sCon2Dr3	 : Variant;  // 협진2수석의-ASSISTANT2
     sAnspcYn	 : Variant;  // 마취지정진료여부
     sAnethCd	 : Variant;  // 마취방법
     sAnethDr	 : Variant;  // 마취의사
     sAnethdrNm : Variant;  // 마취의사 명
     sCarmYn	 : Variant;  // C-ARM 유무
     sGarmYn	 : Variant;  // G-ARM 유무
     sEndoYn	 : Variant;  // ENDOSCOPE 유무
     sSonoYn	 : Variant;  // SONO유무
     sLasErYn	 : Variant;  // LASER유무
     sOpPhys	 : Variant;  // 수술체위
     sRemark	 : Variant;  // 특기사항
     sConDept1	 : Variant;  // 협진과1
     sConDept2	 : Variant;  // 협진과2
     sConOpcd1	 : Variant;  // 협진수술코드1
     sConOpcd2	 : Variant;  // 협진수술코드2
     sCofmYn	 : Variant;  // 확인여부
     sCofmDr	 : Variant;  // 확정자ID
     sCofmDate	 : Variant;  // 확정일자
     sCancelYn	 : Variant;  // 수술취소여부
     sCancelId	 : Variant;  // 수술취소자
     sCancelDt	 : Variant;  // 수술취소일
     sCanclRsn	 : Variant;  // 수술취소사유
     sWardNo	 : Variant;  // 병동번호
     sRoomNo	 : Variant;  // 병실번호
     sEditId	 : Variant;  // 수정자 ID
     sEditIp	 : Variant;  // 수정자 IP
     sEditDate	 : Variant;  // 수정일시
     sDeptNm	 : Variant;  // 진료과명
     sOpdrNm	 : Variant;  // 집도의명
     sCofm  	 : Variant;  // 상황
     sPatNm	    : Variant;  // 환자명
     sAge       : Variant;  // 성별,나이
     sComcdnm3  : Variant;  // 공통코드명
     sCaution   : Variant;  // 특이사항
     sOpDate1	 : Variant;  // 수정 수술(예정)일자
     sOpStat    : Variant;  // 수술Status
     sOpcd2name : Variant;  // 수술코드명2
     sOpcd3name : Variant;  // 수술코드명3
     sOpcn1cdnm : Variant;  // 협진수술코드명1
     sOpcn2cdnm : Variant;  // 협진수술코드명2
     function ListOpEq(sType1,sType2,sType3,sType4,sType5,sType6,sType7:String;icnt:Integer):Integer;
    end;

    ///////////////////////////////////////////////////////////////////////////
    // 진료과 조회를 위해 진료시스템에서 떼어옴(2001.09.15 박종엽)
    ///////////////////////////////////////////////////////////////////////////
    HsrExCode = class
     sType1	    : Variant;  // 검색조건1
     sType2	    : Variant;  // 검색조건2
     // 사용자정보
     sUserId	 : Variant;  // 사용자ID
     sUserNm	 : Variant;  // 사용자명
     sDeptCd	 : Variant;  // 소속부서
     sDeptNm	 : Variant;  // 소속부서명
     sLicNo	 : Variant;  // 의사면허번호
     sMajorNo	 : Variant;  // 전문의번호
     sJikGup	 : Variant;  // 직급(의사구분 11:STAFF 22:레지던트 33:인턴)
     sJicJong	 : Variant;  // 직종(사용자구분 11:의사 22:간호사)
     sWardNo1    : Variant;  // 담당근무병동 1
     sWardNo2    : Variant;  // 담당근무병동 2
     sSort	 : Variant;  // Set 조회순서
     sInscfmYn	 : Variant;  // 처방저장시 확인여부
     sPatSel	 : Variant;  // 병동환자 선택기준
     sNextScr	 : Variant;  // 병동환자 선택후 다음화면
     sDiagSel	 : Variant;  // 진단명(영문 or 한글)
     sCode      : Variant;  // 상병코드
     sEngName   : Variant;  // 상병영문명
     sKorName   : Variant;  // 상병한글명
     sLargCd    : Variant;  // 대분류코드
     sMiddCd    : Variant;  // 중분류코드
     sSmalCd    : Variant;  // 소분류코드
     sCodeName  : Variant;  // 분류코드명
     ilevel     : Variant;  // level
     sRsvdate   : Variant;  // 예약일자
     sExecdate  : Variant;  // 실시일자
     sGendrnm   : Variant;  // 실시자
     iSeqno     : Variant;  // 순번
     sPnottext  : Variant;  // 경과기록
     iCount1    : Variant;  // 용법 횟수
     sMethodcd  : Variant;  // 용법
     sAbbr      : Variant;  // 용법 약어
     sDgijtype  : Variant;  // 용법 경로
     sInfegrd   : Variant;  // ICD 구분자
     sCond      : Variant;  // 구분자
     sComCdDtl  : Variant;  // 진지공통 코드
     sComCdNm   : Variant;  // 진지공통 코드값
     sJikGupNm  : Variant;  // 직급명
     sSpeedBtn  : Variant;  // 스피드버튼
     sReturnYn  : Variant;  // 환불여부
     sCount1    : Variant;  // 용법 횟수
     sUseDay    : Variant;  // 처방 일수
     sDayQty    : Variant;  // 1일용량
     sMaxDay    : Variant;  // 최대투여일수
     sOrdYn     : Variant;  // 처방가능여부
     sMethod    : Variant;  // 용법/용량
     sDisease   : Variant;  // 적응증
     sInsInfo   : Variant;  // 인정기준
     sProdCode  : Variant;  // 장비코드
     sProdName  : Variant;  // 장비명

     sPatNo     : Variant;  // 환자번호
     sPatName   : Variant;  // 환자명
     sResNo1    : Variant;  // 주민번호1
     sResNo2    : Variant;  // 주민번호2
     sBirtDate  : Variant;  // 생년월일
     sSex       : Variant;  // 성별
     sTelNo1    : Variant;  // 전화번호1
     sTelNo2    : Variant;  // 전화번호2
     sTelNo3    : Variant;  // 핸드폰
     sZipCd     : Variant;  // 우편번호
     sAddress   : Variant;  // 주소

     // 진료과 및 병동코드 조회
     function SelDeptNm(sType1,sType2:string):Integer;
     // 공통코드(전체) List 조회
     function ListComCodeName(Code1:String):Integer;
    end;

    ///////////////////////////////////////////////////////////////////////////
    // 사용자 조회를 위해 진료시스템에서 떼어옴(2001.09.15 박종엽)
    ///////////////////////////////////////////////////////////////////////////
    HsrInsamt = class
     sEmpNo      : Variant;  // 개인번호
     sEmpNm      : Variant;  // 성명
     sComCdNm    : Variant;  // 직급명
     sDeptCd     : Variant;  // 진료과/병동코드
     sDeptNm     : Variant;  // 진료과/병동명
     sLicNo      : Variant;  // 면허번호
     sMajorNo    : Variant;  // 전문의번호

     function ListUserInfo(sType1,sType2,sType3,sType4:String):Integer;
    end;




    ///////////////////////////////////////////////////////////////////////////
    // 진료 공통코드 조회를 위해 진료시스템에서 떼어옴(2001.09.15 박종엽)
    ///////////////////////////////////////////////////////////////////////////
    HsrMcomct = class
	  sComCd1	 : Variant;  // 공통코드1
	  sComCd2	 : Variant;  // 공통코드2
	  sComCd3	 : Variant;  //	공통코드3
	  sComCdnm1	 : Variant;  //	공통코드명1
	  sComCdnm2	 : Variant;  //	공통코드명2
	  sComCdnm3	 : Variant;  //	공통코드명3
	  sCItem01	 : Variant;  //	공통항목01
	  sCItem02	 : Variant;  //	공통항목02
	  sCItem03	 : Variant;  //	공통항목03
	  sCItem04	 : Variant;  //	공통항목04
	  sCItem05	 : Variant;  //	공통항목05
	  iCItem06	 : Variant;  //	공통항목06
	  iCItem07	 : Variant;  //	공통항목07
	  iCItem08	 : Variant;  //	공통항목08
	  iCItem09	 : Variant;  //	공통항목09
	  iCItem10	 : Variant;  //	공통항목10
	  sCItem11	 : Variant;  //	공통항목11
	  sCItem12	 : Variant;  //	공통항목12
	  iDispSeq	 : Variant;  //	나열순서
	  sDelDate	 : Variant;  //	데이타 Expired Date
	  sEditId	 : Variant;  //	수정자 ID
	  sEditIp	 : Variant;  //	수정자 IP
	  sEditDate	 : Variant;  //	수정일시

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

   // CCHOLYDT 테이블 조회. - 공휴일 조회.
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

   // 외래예약내역(원무)
   HmdOpdlst = class
    sPatNo       : Variant;  // 환자번호
    sMedDate     : Variant;  // 진료일자
    sMedDept     : Variant;  // 진료과
    sDeptNm      : Variant;  // 진료과명
    sMedDr       : Variant;  // 진료의사
    sMedTime     : Variant;  // 진료예약시간
    sOrdDate     : Variant;  // 처방일자/예약신청일자
    sDiagName    : Variant;  // 진단명
    iStayNo      : Variant;  // 진료대기순서
    sRsvType     : Variant;  // 예약구분
    sRsvTypeCd   : Variant;  // 예약구분코드
    sRsvcfmYn    : Variant;  // 예약확인
    sPatType     : Variant;  // 환자유형
    sTypeCd      : Variant;  // 유형보조
    sSpcdrYn     : Variant;  // 선택의사여부
    sFstmedTy    : Variant;  // 초재진구분
    sMedrcpYn    : Variant;  // 진찰료수납여부
    sRcpYn       : Variant;  // 수납여부
    sMedYn       : Variant;  // 진찰여부
    sMedchgId    : Variant;  // 진찰여부수정자
    sErDate      : Variant;  // 응급실도착시간
    sOeFlag      : Variant;  // 외래응급여부
    sOiFlag      : Variant;  // 외래/입원구분
    sHdsFlag     : Variant;  // 인공신장투석구분
    sRejtDate    : Variant;  // 취소일시
    sFstinpId    : Variant;  // 최초입력자
    tFstTime     : Variant;  // 최초입력시간
    iRcpSeq      : Variant;  // 수납순번
    sAdmDate     : Variant;  // 예약일자/접수일자/입원일자
    sRemark      : Variant;  // 비고
    sPatName     : Variant;  // 환자명
    sSex         : Variant;  // 성별
    sBirtDate    : Variant;  // 생년월일
    sMedDrNm     : Variant;  // 진료의Name
    sOtherYn     : Variant;  // 타과예약여부
    sChartYn     : Variant;  // 입원차트대출여부
    sFilmYn      : Variant;  // 필름대출희망여부
    sTelNo1      : Variant;  // 환자전화번호1
    sTelNo2      : Variant;  // 환자전화번호2
    sTelNo3      : Variant;  // 환자전화번호3
    sGenDr       : Variant;  // 전공의
    sFollow      : Variant;  // Followup 여부
    sPatcls      : Variant;  //환자구분
    sGubn        : Variant;  //환자구분명
    sEditId      : Variant;  // 수정자ID
    sEditIp      : Variant;  // 수정단말IP

     //메인화면 환자번호입력
     function SelectPat(PatNo:String):Integer;
    end;

    //검사결과정보(종건)  2003.02.23 방용균 수정
    Hsu2examt = class
      sPatno    :Variant;       // 환자번호
      sPatname  :Variant;       // 환자명
      sResno1   :Variant;       // 주민번호1
      sResno2   :Variant;       // 주민번호2
      sPkgcode  :Variant;       // pkgcode
      sOrdname  :Variant;       // order명
      sResvdate :Variant;       // pkg예약일자
      sExamdate :Variant;       // 검사예약일자
      sOthercode:Variant;       // 검사코드
      sRoomcd   :Variant;       // 검사실


     function UpdateExam(sType1, sType2, sPatNo, sOrdDate, sOrdSeqNo, sOrdCode, sSpcCode : String) : Integer;

     //2003.6.5 이경화 -- 종합건진검사 환자별 예약정보
     function MediPatnoSel(Patno, Examtype: String): Integer;
     function MediDateSel(ExamDate, Examtype:String): Integer;

    end;

 /////////////////////////////////////////////////////////////
  // 전자인증을 위한 추가부분 SONGLIM_THOMA
  /////////////////////////////////////////////////////////////
  HsrCertUsr = class
     sUserid      :   Variant; {현재인증서}
     sSignCert    :   Variant; {현재인증서}
     sSignPriKey  :   Variant; {현재개인키}
     sChange_Tm   :   Variant; {암호변경일자}
     sCertPW      :   Variant; {개인키암호}
     sResNo       :   Variant; {주민번호}

     //사용자 인증서정보 조회()
     function CertSearch(Userid: String): Integer;
  end;

  HsrCertInj = class
     sUserid      :   Variant; {현재인증서}
     sSerialNo    :   Variant; {현재인증서}
     sSubjectDn  :   Variant; {현재개인키}
     sSignCert   :   Variant; {암호변경일자}

     //사용자 인증서정보 조회()
     function CertSearch(Userid,SerialNo,SubjectDN: String): Integer;
  end;
  ///////////////////////////////////////////////////////////////////


  //암환자등록환자, KimDaeYong 2010-08-24
  HmdCancrt = class
     sLeavedtCnt      :   Variant; {암환자등록종료일자 남은 일수}
     sLeavedate       :   Variant; {암환자등록종료일자}

     //암환자등록환자 조회
     function Select1(sPatno: String): Integer;
  end;


  //조영제부작용관리, KimDaeYong 2011-02-16
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

  //조영제부작용코드관리, KimDaeYong 2011-02-21
  HsrAdvcdt = class
     sAdvcode         :   Variant;
     sKeyword         :   Variant;
     sAdvcont         :   Variant;
     sEditid          :   Variant;
     sEditip          :   Variant;

     function List1(inAdvcode, inKeyword : String): Integer;
     function Update1(inFlag, inAdvcode, inKeyword, inAdvcont, inEditid, inEditip : String): Integer;
  end;

  //SMS의사정보관리, KimDaeYong 2011-03-03
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

  //SMS메시지코드관리, KimDaeYong 2011-03-03
  HsrSmsmgt = class
     sMsgcode      :   Variant;
     sKeyword      :   Variant;
     sMsg          :   Variant;
     sEditid       :   Variant;
     sEditip       :   Variant;

     function List1(inMsgcode, inKeyword : String): Integer;
     function Update1(inFlag, inMsgcode, inKeyword, inMsg, inEditid, inEditip : String): Integer;
  end;

  //SMS전송내역, KimDaeYong 2011-03-03
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

  //SMS중간보고코드관리, KimDaeYong 2011-03-11
  HsrSmsmrt = class
     sMrcode       :   Variant;
     sKeyword      :   Variant;
     sMrcont       :   Variant;
     sEditid       :   Variant;
     sEditip       :   Variant;

     function List1(inMrcode, inKeyword : String): Integer;
     function Update1(inFlag, inMrcode, inKeyword, inMrcont, inEditid, inEditip : String): Integer;
  end;

  //세척기관리, KimDaeYong 2011-09-19
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


  //진정치료, KimDaeYong 2011-07-20
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

  // 환자 Caution, mdclass1에서 복사해옴
  // KimDaeYong 2011-09-21
    HmdCautnt = class
     sPatNo	    : Variant;  // 환자번호
     sHivYn	    : Variant;  // Viral Marker HIV여부
     sVdrlYn	 : Variant;  // Viral Marker VDRL여부
     sHbsagYn	 : Variant;  // Viral Marker HBsAg여부
     sHcvYn	    : Variant;  // Viral Marker Anti-HCV여부
     sVmOthrYn	 : Variant;  // Viral Marker 기타여부
     sVmRemark	 : Variant;  // Viral Marker 기타소견
     sRadCont	 : Variant;  // RADIO Contrast 여부
     sPeniciln	 : Variant;  // PENICILLINE 여부
     sDrugAlgy	 : Variant;  // Drug Allergy사항
     sOtherRmk  : Variant;  // 기타 특이소견
     sFstDate	 : Variant;  // 최초등록일자
     sFstEmpNo	 : Variant;  // 최초입력자ID
     sFstEmpNm	 : Variant;  // 최초입력자NAME
     sMrsaYn    : Variant;  // Mrsa 여부
     sVreYn     : Variant;  // Vre 여부
     sAfbYn     : Variant;  // Afb 여부
     sTbYn      : Variant;  // Tb 여부
     sDiffYn    : Variant;  // Diff 여부
     sFunYn     : Variant;  // Fungus 여부
     sInform    : Variant;  // 감염정보
     sEditId	 : Variant;  // 수정자 ID
     sEditIp	 : Variant;  // 수정자 IP
     sEditDate	 : Variant;  // 수정일시
     //추가. 2002.11.18 이용언
     sHbcYn     : Variant;
     sHAVYn     : Variant;
     sSeq       : Variant;  //환자별 입력순서, daelongii add, 2005-10-13
     sDschDate  : Variant;  //퇴원일자, daelongii add, 2005-10-17
     //추가 2009.01.21 김송주
     sRotaYn    : Variant;
     sOhmYn     : Variant;
     sEeeYn     : Variant;
     sJangtiYn  : Variant;
     sEeejilYn  : Variant;
     sSuduYn    : Variant;
     sHongYn    : Variant;
     sPungYn    : Variant;
     sNewFluYn     : Variant;  // 신종플루 추가 2010.05.12 김송주
     sInFluYn   : Variant;  // 인플루엔자 추가 2014.02.26 KimDaeYong
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

     // 환자Caution정보 조회
     function SelCaution(PatNo:String):Integer;
     // 환자 caution 정보 등록
     //function RegCaution(Type1, PatNo, HivYn, VdrlYn, HbsagYn, HcvYn, VmothrYn,
     //                    Vmremark, RadCont, Peniciln, DrugAlgy, OtherRmk,
     //                    FstEmpNo, EditId, EditIp, Inform, MrsaYn, VreYn,
     //                    AfbYn, TbYn, DiffYn, FunYn, HbcYn, HAVYn, Seq : String):Integer;
    end;


    // 내시경처방확인
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

       // 환자Caution정보 조회
       function Select1(inPatno, inOrddate:String):Integer;
    end;


    // 난청음진료소(ENT)
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


    // 결핵검사의뢰서
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

    //진정치료(신규)_마스터, KimSongJu 2015.4
    HsrSedmst = class
       sPatno        : Variant;
       //sIndate       : Variant;
       sMeddate      : Variant;
       lMstseq       : Variant;
       sOrddate      : Variant; // 추가
       sOrdseqno     : Variant; // 추가
       sPatsect      : Variant; // 추가
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
       sPrePatsect   : Variant; // 2015.11.06 추가.
       sPreMeddate   : Variant; // 2015.11.10 추가
       
       sEditid       : Variant;
       sEditip       : Variant;

       function InsUpPatinfo:Integer;
       function SelectPatinfo:Integer;
       function SelectPatinfo2:Integer;
       function ListPatinfo:Integer;
       function UpdateOrder:Integer;
    end;

    //진정치료(신규)_진정전평가기록, KimSongJu 2015.4
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

    //진정치료(신규)_진정중환자기록, KimSongJu 2015.4
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

    //진정치료(신규)_진정중투약기록, KimSongJu 2015.4
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

    //진정치료(신규)_진정후회복상태및퇴실교욱, KimSongJu 2015.4
    HsrSedrct = class
       sPatno        : Variant;
       //sIndate       : Variant;  // 변경  2015.8.25
       sMeddate      : Variant;    // 추가  2015.8.25
       //sExamcd       : Variant;  // 삭제  2015.8.25
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

       sRecdate      : Variant; // 추가 2015.9.8
       sRecid        : Variant; // 추가 2015.9.8
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
       function ListMgt:Integer; // orddate 기반
       function ListMgt2:Integer;// meddate 기반  2015.9.2 김송주 추가 -> 환자번호로만 2015.11.06
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
       //function ListMgt:Integer; // orddate 기반
       //function ListMgt2:Integer;// meddate 기반  2015.9.2 김송주 추가 -> 환자번호로만 2015.11.06
       //function UpdateMgt:Integer;
    end;

       //연명의료관리. KimDaeYong 2019-05-21
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
   // 공통코드 관리
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

    // 검사전 checklist 조회 2021.06.18. 우남규 추가
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
              // 환자정보 LIST POP-UP
    procedure ShowUserInfoList(KeyStr:String; e1:TEdit; p2,p3:TPanel);
              // 사용자정보 LIST POP-UP
    procedure AppendMedDeptList(Combx_meddept:TComboBox);
              // 콤보박스에 진료과 코드 불러오기
   /////////////////////////////////////////////////////////////////////////////
    procedure ShowIntCase(grid : TStringgrid; Patno, Orddate, Ordseqno: String);
    procedure ShowSrchCode(grid : TStringgrid; Patno, Orddate, Ordseqno: String);

    procedure proto_GetFldVar(FldNameStr:String; var VariantValue:Variant);
    procedure pr_GetFldVar(var VariantValue:Variant ; FldNameStr:Variant);
    procedure U_PrinterChange(PRT_Name:String);
    procedure SetDefaultPrinter( ADevice : PChar  );
    // DNR Check(연명의료). KimDaeYong 2019-05-24
    function DnrSelect(Patno:String;Target:TControl):String;
var
    srStat         : HsrStat;         // 통계객srMatCode
    srOrderv       : HsrOrderv;       // 진료객체
    PatInfo        : HPatInfo;        // 환자정보 객체
    UserInfo       : HUserInfo;       // 사용자정보 객체
    WardInfo       : HWardInfo;       // 병실 객체
    srRoomCode     : HsrRoomCode;     // 검사실 객체
    srEquipmentCode:HsrEquipmentCode; // 장비객체
    srExamCode     : HsrExamCode;     // 검사항목 객체
    srRsltCode     : HsrRsltCode;     // 판독결과코드 객체
    srSearchCd     : HsrSearchCd;     // 검색어 객체
    srMatCode      : HsrMatCode;      // 소모재료 객체
    srScheduleCode : HsrScheduleCode; // 스케쥴타입 객체
    srSchedule     : HsrSchedule;     // 스케쥴 객체
    srPkg          : HsrPkg;          // 신검항목 객체
    srExam         : HsrExam;         // 검사 객체
    srReserve      : HsrReserve;      // 검사예약 객체
    srAccept       : HsrAccept;       // 검사접수 객체
    srPhyAcpt      : HsrPhyAcpt;      // 신검접수 객체
    srExecute      : HsrExecute;      // 검사실시 객체
    srReadFilm     : HsrReadFilm;     // 판독 객체
    srPhyread      : HsrPhyRead;      // 신검판독 객체
    srFilm         : HsrFilm;         // 필름 객체
    srConsult      : HsrConsult;      // 진료과 객체
    srRedoct       : HsrRedoct;       // 판독의 코드
    MessageStr     : String;          // System Message
    mdexmort       : Hmdexmort;       // 핵의학 체외 검사 처방조회
    srDrugUse      : HsrDrugUse;      // 검사시약사용량 조회
    srDgcdmt       : HsrDgcdmt;       // 약품목록조회
    srOpreqt       : HsrOpreqt;       // 수술예정계획표 조회
    srExCode       : HsrExCode;       // 수술예정계획표 조회에 사용(진료에서 가져옴)
    srInsamt       : HsrInsamt;       // 수술예정계획표 조회에 사용(진료에서 가져옴)
    srMcomct       : HsrMcomct;       // 수술예정계획표 조회에 사용(진료에서 가져옴)
    sdStatis       : HsdStatis;
    mdOpdlst       : HmdOpdlst;
    srHolidt       : HsrHolidt;       // 병원지정 공휴일 목록 조회


    srSitect       : HsrSitect;       // 장기코드 관리...
    srAcrcdt       : HsrAcrcdt;       // 진단코드 관리...
    srCodect       : HsrCodect;       // 공통코드 관리용...
    cmDept2        : HcmDept2;
    srShorct       : HsrShorct;       // 사용자별 판독결과 예문 단축키 할당...
    su2examt       : Hsu2examt;       //2003.02.23 방용균 추가

    srCertUsr : HsrCertUsr;                                     //SONGLIM_THOMA
    srCertInj : HsrCertInj;                                      //SONGLIM_THOMA

    srWait    : HSrWait;

    mdCancrt  : HmdCancrt;            //암등록환자, KimDaeYong 2010-08-24
    srAdvmst  : HsrAdvmst;            //조영제부작용관리, KimDaeYong 2011-02-16
    srAdvcdt  : HsrAdvcdt;            //조영제부작용코드관리, KimDaeYong 2011-02-21

    srSmsdrt  : HsrSmsdrt;            //SMS의사정보관리, KimDaeYong 2011-03-03
    srSmsmgt  : HsrSmsmgt;            //SMS메시지코드관리, KimDaeYong 2011-03-03
    srSmssdt  : HsrSmssdt;            //SMS전송내역, KimDaeYong 2011-03-03
    srSmsmrt  : HsrSmsmrt;            //SMS중간보고코드관리, KimDaeYong 2011-03-11
    srSdtcrt  : HsrSdtcrt;            //진정치료, KimDaeYong 2011-07-20
    srClndvt  : HsrClndvt;            //세척기관리, KimDaeYong 2011-09-19
    mdScopyt  : HmdScopyt;            //내시경처방확인, KimDaeYong 2012-04-25
    srHeardt  : HsrHeardt;            //난청음진료소, KimDaeYohng 2012-06-25
    srTbrptt  : HsrTbrptt;            //결핵검사의뢰서, KimDaeYohng 2012-03-27
    
    srSedmst  : HsrSedmst;            //진정치료(신규)_마스터, KimSongJu 2015.4
    srSedevt  : HsrSedevt;            //진정치료(신규)_진정전평가기록, KimSongJu 2015.4
    srSedmot  : HsrSedmot;            //진정치료(신규)_진정중환자기록, KimSongJu 2015.4
    srSedmet  : HsrSedmet;            //진정치료(신규)_진정중투약기록, KimSongJu 2015.4
    srSedrct  : HsrSedrct;            //진정치료(신규)_진정후회복상태및퇴실교욱, KimSongJu 2015.4
    srSedmgt  : HsrSedmgt;            //진정치료(신규)_진정치료등록마스터, KimSongJu 2015.8
    srsuveyt  : Hsrsuveyt;
    mdDnrrgt  : HmdDnrrgt;  //연명의료관리. KimDaeYong 2019-05-21
    srpacsot  : Hsrpacsot;
    srbefchk  : Hsrbefchk;  // 검사 전 체크리스트 2021.06.18. 우남규 추가


    { 환자정보 Global Variable }
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

    gPassport : String; // 여권번호정보. 2022.02.21. 우남규 추가.

    { 사용자정보 Global Variable }
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
// 검사실적 조회 - 검사별 실적
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
// 검사실적 조회 - 검사구분별 월보      2005.02.23 고석길
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
// 검사항목별 검사연통계 - none 방사선...
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
// 검사자 - 검사항목별 검사연통계
// 2002.05.27. 김정수. - none 방사선...
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
// 검사분류별 검사연통계
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
// 검사분류별 검사연통계1
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
// 검사분류별 검사연통계1
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
// 검사분류별 검사연통계2
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
// 사용필름별 검사 연통계
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
// 약품별 검사 연통계
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
// 진료과별 검사 연통계
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
// 약품별 검사 연통계
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
// 판독의별, 월별, 검사항목별, 환자구분별 판독건수...
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
// 판독의별, 월별, 검사항목별, 환자구분별 판독건수...
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
// 판독의별 전사자 입력건수...
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
// 2003.11.19 이경화 -- 전사자 판독통계
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
// 내시경실 통계...
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
// 내시경실 통계2...
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
// 판독의별, 년도별, 검사항목별 판독건수...
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
//2003.3.12 이경화 -- 주통계
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
//2003.5.15 이경화 -- 과별통계
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
       GetFldVar('L_CNT4'  ,  out1u);   //HEC종건
       GetFldVar('L_CNT36' ,  out1g);   //HEC일건
       GetFldVar('L_CNT5'  ,  out51);
       GetFldVar('L_CNT6'  ,  out52);
       GetFldVar('L_CNT7'  ,  out53);
       GetFldVar('L_CNT8'  ,  out54);
       GetFldVar('L_CNT9'  ,  out55);
       GetFldVar('L_CNT10' ,  out56);
       GetFldVar('L_CNT11' ,  out57);
       GetFldVar('L_CNT12' ,  out58);
       GetFldVar('L_CNT37' ,  out59);   //IP추가, KimDaeYong 2012-05-15
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
       GetFldVar('L_CNT35' ,  out92); //2021.03.18. 우남규 추가
       GetFldVar('L_CNT36' ,  out93); //2021.03.18. 우남규 추가
       GetFldVar('L_CNT37' ,  out94); //2021.03.18. 우남규 추가
       GetFldVar('L_CNT38' ,  out95); //2021.03.18. 우남규 추가
       GetFldVar('L_CNT39' ,  out96); //2021.03.18. 우남규 추가
       GetFldVar('L_CNT40' ,  out97); //2021.03.18. 우남규 추가
       GetFldVar('L_CNT41' ,  out98); //2021.03.18. 우남규 추가
       GetFldVar('L_CNT42' ,  out99); //2021.03.18. 우남규 추가
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
       GetFldVar('S_STRING35' ,  out92); //2021.03.18. 우남규 추가.
       GetFldVar('S_STRING36' ,  out93); //2021.03.18. 우남규 추가.
       GetFldVar('S_STRING37' ,  out94); //2021.03.18. 우남규 추가.
       GetFldVar('S_STRING38' ,  out95); //2021.03.18. 우남규 추가.
       GetFldVar('S_STRING39' ,  out96); //2021.03.18. 우남규 추가.
       GetFldVar('S_STRING40' ,  out97); //2021.03.18. 우남규 추가.
       GetFldVar('S_STRING41' ,  out98); //2021.03.18. 우남규 추가.
       GetFldVar('S_STRING42' ,  out99); //2021.03.18. 우남규 추가.
       GetFldVar('S_STRING43' ,  out20);
       }

    MessageStr := GetTxMsg;

end;



//fff
///////////////////////////////////////////////////////////////////////////////
//      과거예약환자등록 class(HsrOrderv) Member Method                      //
///////////////////////////////////////////////////////////////////////////////
//==============================================================================
//
//==============================================================================
function HsrOrderv.PatPastExamList(FromDate, ToDate, Examtype, RoomCode: String): Integer;
begin
    Result := -1;
    txAlloc; //Pointer를 받아옴.
    SetFldName('S_FROM1;S_TO1;S_TYPE1;S_CODE1;S_FLAG9');
    SetFldValue(0,[FromDate,ToDate,Examtype,RoomCode,'EB1']);

    if (txGetF('SR_PASTORDER_L')) then   // sr_pastorder_l.pc
    begin //Tuxedo Service Call
        GetFldVar('S_PATNO'    ,sPatNo);     // 환자번호
        GetFldVar('S_PATNAME'  ,sPatName);   // 환자명
        GetFldVar('S_RESNO'    ,sResNo);     // 주민등록번호
        GetFldVar('S_ORDDATE'  ,sOrdDate);   // 처방일자
        GetFldVar('S_NAME1'    ,sExamName);  // 검사항목명
        //GetFldVar('S_CODE1'    ,sRoomCode);  // 검사실코드
        GetFldVar('S_STAT1'    ,sExamStat);  // 검사진행 Status
        GetFldVar('S_RSVDATE'  ,sRsvDate);   // 예약일시
        GetFldVar('S_MEDDEPT'  ,sMedDept);   // 진료과
        GetFldVar('S_DRNAME1'  ,sOrdDrNm);   // 처방의사명
        GetFldVar('L_SEQNO1'   ,iOrdSeqNo);  // 처방순번
        GetFldVar('S_ORDCODE'  ,sExamCode);  // 검사항목
        GetFldVar('S_DR1'      ,sOrdDr);     // 처방의사
        Result := GetRecordCnt('S_PATNO'); //Service를 수행하고 FML Buffer에 PUT된 Record수

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

    //Pointer를 받아옴.
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
// 과거 예약환자 등록...
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
// 환자정보 LIST POP-UP
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

    // 환자정보 대화상자 생성...
    if (PATINFOF = nil) then
        PATINFOF := TPATINFOF.Create(Application);

    // 표시될 위치 지정...
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

    if p_wardno.Caption = '외래' then
    begin
      p_roomno.Caption := '';
    end
    else if p_wardno.Caption = '응급실' then
    begin
      case strtoint(Trim(gRoomno)) of
         1  : begin
                p_roomno.Caption := '1구역';
              end;
         2  : begin
                p_roomno.Caption := '2구역';
              end;
         3  : begin
                p_roomno.Caption := '3구역';
              end;
         4  : begin
                p_roomno.Caption := '4구역';
              end;
         5  : begin
                p_roomno.Caption := '소아구역';
              end;
         6  : begin
                p_roomno.Caption := '관찰실';
              end;
         7  : begin
                p_roomno.Caption := '처치실';
              end;
         8  : begin
                p_roomno.Caption := '격리1';
              end;
         9  : begin
                p_roomno.Caption := '격리2';
              end;
         10 : begin
                p_roomno.Caption := '음압격리';
              end;
         11 : begin
                p_roomno.Caption := '고압산소';
              end;
         12 : begin
                p_roomno.Caption := '5구역';
              end;
         13 : begin
                p_roomno.Caption := '6구역';
              end;
         14 : begin
                p_roomno.Caption := '7구역';
              end;
      end;

    end
    else
      p_roomno.Caption  := Trim(gRoomno);

      p_passport.Caption := gPassport;
end;

/////////////////////////////////////////////////////////////////////////////
//       환자정보 LIST POP-UP                                              //
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
//       사용자정보 LIST POP-UP                                            //
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
//        콤보박스에 진료과코드 불러오기                                   //
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
    if (txGetF('AD_SEL_DGDPTC')) then begin // 원무체계 서비스
        ItemCnt := GetRecordCnt('MEDDEPT');

        for i := 0 to ItemCnt-1 do
            Combx_meddept.Items.Add(GetStrVal('MEDDEPT',i) + ' ' +
                                    GetStrVal('DEPTKRNM',i));
    
       txFree;
    end;
    //txFree;
}
    Combx_meddept.Items.Add('');
    Combx_meddept.Items.Add('GS 일반외과');
    Combx_meddept.Items.Add('OS 정형외과');
    Combx_meddept.Items.Add('CS 흉부외과');

end;

///////////////////////////////////////////////////////////////////////////////
//      검사실 class(HsrRoomCode) Member Method                              //
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
//0. 기존....
//1. KimDaeYong 2009-06-29
//  - 중앙예약에서 검사실 조호시는 기존 쿼리를 사용해야 하므로 ScrRoom인수 추가
//  - 검사실조회에서만 사용하며 다른 부분에서 Call시는 ''처리함
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
        GetFldVar('S_CODE5'    , sDeldate); //사용여부, KimDaeYong 2013-01-15

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
//사용여부, KimDaeYong 2013-01-15
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
//      장비 class(HsrEquipmentCode) Member Method                              //
///////////////////////////////////////////////////////////////////////////////

//==============================================================================
// 검사장비 조회
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
//      검사항목 class(HsrExamCode) Member Method                            //
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
// 검사항목별 소모재료 코드 조회
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
// 검사항목 코드 관리 수정...
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
// 필름복사 의뢰 목록 조회.
// 2003.2.20 이경화 -- 생년월일(Birtdate) , 성별(sex) 추가
// 2003.3 방용균수정 -- examtype추가
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
// 복사실시 및 복사 취소
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
// 처방코드 수가조회
//==============================================================================
function HsrExamCode.GetPrice(OrdCd: String): Integer;
begin
    Result := -1;

    //Pointer를 받아옴.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_TYPE1');
    SetFldValue(0,[OrdCd] );

    //Tuxedo Service Call
    if (txGetF('MD_ORDRC_S2')) then
    begin
        GetFldVar('D_DOUBLE1', iPriceIns );  // 의보수가
        GetFldVar('D_DOUBLE2', iPriceGen );  // 일반수가

        //조회건수 return
        Result := GetRecordCnt('D_DOUBLE1');
        //txFree;
    
       txFree;
    end;
end;





///////////////////////////////////////////////////////////////////////////////
//      판독예문 class(HsrRsltCode) Member Method                            //
///////////////////////////////////////////////////////////////////////////////

//==============================================================================
//
//==============================================================================
function HsrRsltCode.RsltKwdList(Examtype,UserID,RsltCode,Keyword:string):Integer;
begin
//Sortkey 미반영. 약 1000Records정도를 가져올 수 있다.

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
//   2003.4.10 이경화 -- 판독예문전체항목 가져오기
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
//  2003.3.18 이경화 -- 방사선과 (소견,결론부문으로처리)
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
//  2003.4.10 이경화 -- 개인판독예문 조회 (소견,결론부문으로처리)
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
//  2003.3.18 이경화 -- 판독결과예문입력(소견,결론)
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
//  2003.4.10 이경화 -- 개인판독결과예문입력(소견,결론)
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
// 2003.3.18 이경화 -- 판독예문관리(소견,결론)
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
// 2003.4.10 이경화 -- 개인판독예문관리(소견,결론)
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
//  2003.4.12 이경화 -- 개인판독등록항목 삭제
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
//      검색어 class(HsrSearchCd) Member Method                              //
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
//      소모재료 class(HsrMatCode) Member Method                             //
///////////////////////////////////////////////////////////////////////////////


//==============================================================================
// 마감조정 수량 이력테이블 조회.
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
// 소모재료 항목 조회
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
// 소모재료 항목 조회2-소모재료 코드관리 화면에서 호출.
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
// ADPRICST에 등록되어 있는 항목조회.
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
// 삭제하기 전에 체크조회
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
// 소모재료코드 관리 - 추가 입력
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
// 소모재료코드 관리 - 수정
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
// 검사항목별 소모재료 코드 조회...
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
// 검사항목별 소모재료 목록 조회.
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
// 검사항목별 소모재료 코드 삭제
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
// 검사항목별 소모재료 코드 등록
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
// 검사항목별 소모재료 코드 수정
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

// 2005.02.26 고석길   --  일일소모재료 마감 월보
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

// 2005.02.26 고석길   --  일일소모재료 마감 연보
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
// 조정수량 입력
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
// 일마감
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
// 일마감 취소
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
//      스케줄 타입 class(HsrscheduleCode) Member Method                     //
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


    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';
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


    //장재순 ? S_EDITID가 없어서 ERROR가 나기때문
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
//      스케줄 class(HsrSchedule) Member Method                              //
///////////////////////////////////////////////////////////////////////////////

//==============================================================================
// 검사실-월별 스케쥴 작성...
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

    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';
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

    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';


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
    MessageStr := '성공적으로 등록하였습니다';
end;

//==============================================================================
// 각 시간대별 검사예약 정원 수정... SINGLE SELECT
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
// 각 시간대별 검사예약 정원 수정...MULTI SELECT
//==============================================================================
function HsrSchedule.ScheduleUpdate2(RoomCode:String; RsvTot:Integer):Integer;
var
    ix : Integer;
begin
{
      sRoomCode : Variant;      // 검사실코드
      sRsvDate  : Variant;      // 예약일시
      iRsvTot   : Variant;      // 예약정원
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
    MessageStr := '성공적으로 삭제하였습니다';
end;


//==============================================================================
//  2003.2.14 이경화 -- 월간스케쥴삭제
//  2003.2.23 이경화 수정
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
    //MessageStr := '성공적으로 삭제하였습니다';

end;


//==============================================================================
// 각 검사실 일정관리
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
//                         일정조회
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
//      환자정보 class(HPatInfo) Member Method                               //
///////////////////////////////////////////////////////////////////////////////

//==============================================================================
// 환자목록 조회...
//==============================================================================
function HPatInfo.PatInfoList(KeyStr:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO');    // 환자번호,환자명 / 전체, 병동, 외래
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
// 환자목록 조회...
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
      //2022.02.21. 우남규 추가
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
//  2003.6.5 이경화 -- 주민번호로 환자조회
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

        // 2015.07.01 김송주 심장초음파 요청
        GetFldVar('S_STRING1', sPattype);
        GetFldVar('S_STRING2', sTypecd);
        GetFldVar('S_STRING3', sCustcd);
        //2022.02.21. 우남규 추가
        GetFldVar('S_STRING4', sPassport);

        Result := GetRecordCnt('S_PATNO');

       txFree;
    end;

    MessageStr := GetTxMsg;
end;

//==============================================================================
//  낙상, KimDaeYong 2011-05-04
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
// SRA211F2 - 대상자 목록 조회.
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
        //COLOR작업, KimDaeYong 2011-05-25
        GetFldVar('S_STRING1', sDiagcd );

        Result := GetRecordCnt('S_PATNO');
       txFree;
    end;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// SRA211F2 - 대상자 목록 조회시 color작업용 Metformin, Creatinine 조회
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
// SRA218F2 - ct검사실 환자  Creatinine, 주사처방 조회
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
// 2003.1.2 이경화
// -- SRA214F1 일괄접수시 사용 조회 (여러환자)
// 2003.2.14 이경화수정 -- gubun추가 처방일,예약일 조건별로 조회
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
// 2003.7.10  이경화
// -- 재원환자 현위치정보
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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';
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
        GetFldVar('S_CODE2', sTypecd);    // 2007.05.14 김송주 추가 유형보조
        GetFldVar('S_NAME2', sTypecdnm);  // 2007.05.14 김송주 추가 유형보조
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
//      사용자정보 class(HUserInfo) Member Method                            //
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
//      병동 class(HWardInfo) Member Method                                  //
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
// 2003.3.10 이경화 -- 필름관리실에서 사용하는 부서코드
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
//      신검 Class(HsrPkg)                                                 //
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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';

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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';

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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';
end;

///////////////////////////////////////////////////////////////////////////////
//      검사 class(HsrExam) Member Method                                    //
///////////////////////////////////////////////////////////////////////////////

//==============================================================================
// 검사의뢰 내역 조회.
// - 수정 : 2002.03.03. 김정수.
//          기존 File을 이용한 조회에서 FMF32를 이용하도록 변경. <-- 속도가 너무 느려서...
// - 수정 : 2002.12.9   이경화
//          검사구분항목 추가 (일반,특수,CT,MRI,SONO,Angio)
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
// 당일 예약자 명단 조회
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
        //COLOR작업, KimDaeYong 2011-05-19
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
// 예약현황 출력
// 수정 : 2002.12.9 이경화
// SR_RSVACPT_L1 -> SR_RSPRT_L1로 수정
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
                     '비골촬영 Lateral Lt ' + chr(13) + chr(10) +
                     '' + chr(13) + chr(10) +
                     '정상입니다.'
                    );

    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';
end;

//==============================================================================
// 검색어 코드를 이용한 판독결과 검색.
// - 방사선과 : sitecode, srchcode(=acrcode), Flag : Y
// - 기타 특수검사 : sitecode = '', srchcode, Flag : N
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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';

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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';

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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';

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
//      검사예약 class(HsrReserve) Member Method                             //
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
                       String(sExamcode),     String(sRsvcncont)]);  //예약취소사유, KimDaeYong 2011-11-15


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
        // MDEXMORT.PROCSTAT에 입력이 잘 안되는 경우가 간혹 발생함.
        // 이를 위해 다시한번 서비스를 타고 만약 제대로 입력되지 않은 경우에
        // 제대로 입력하게 한다.

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
// 2003.2.20 이경화 :  종건,일건 예약
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
                       String(sPatsect[0]),   String(sRsvcncont)]);  //예약취소사유, KimDaeYong 2011-11-15

    if (txPutF('SR_RSV_U1')) then   // sr_rsv_u1.pc
    begin
        // MDEXMORT.PROCSTAT에 입력이 잘 안되는 경우가 간혹 발생함.
        // 이를 위해 다시한번 서비스를 타고 만약 제대로 입력되지 않은 경우에
        // 제대로 입력하게 한다.

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
// 병동검사의 의뢰내역 조회...
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

        //2003.4.30 이경화추가 -- 진단명
        GetFldVar32('S_DIAGNAME', sDiagname);

        GetFldVar32('S_TEXT3'   , sSpcdryn); //선택진료여부, 2008-10-02 KimDaeYong
        GetFldVar32('S_TEXT4'   , sRoomno);  //병실, 2009-01-05 KimDaeYong


        Result := GetRecordCnt32('S_PATNO');

       txFree32;
    end;

    //txFree32;
//    MessageStr := GetTxMsg;
end;

//==============================================================================
// 예약현황 조회.
// 2003.2.25 이경화 -- examtext추가함.
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
        GetFldVar32('S_TEXT4',		sSpcdryn    );  //선택진료여부, KimDaeYong 2013-05-24

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
// 예약일자의 검사항목별 검사건수 Count
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
//      검사접수 class(HsrAccept) Member Method                              //
///////////////////////////////////////////////////////////////////////////////

//==============================================================================
//  2003.9.19 이경화 -- slipcd추가함.
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
// 2003.2.17  이경화 : 종건,일건 접수포함
// 2003.9.16  이경화 : slipcode추가함.
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
// 2003.2.7  이경화 : 일괄접수 테스트
// 2003.2.21 -- Modify : 일반,건진 체크부문 추가
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
//  2003.9.16 이경화 -- slipcd추가함
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

// 당뇨교실인 경우 환자보호자수를 추가.
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
//  2003.2.18 이경화 : 특수검사 (검사접수,실시 동시에 처리) 종건,일건포함
//  2003.9.16 이경화 : slipcd추가
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
//      신검촬영 접수 Class(HsrPhyAcpt)                                    //
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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';

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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';

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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';

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
    MessageStr := '성공적으로 등록하였습니다';
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
    MessageStr := '성공적으로 삭제하였습니다';
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
    MessageStr := '성공적으로 삭제하였습니다';
end;

///////////////////////////////////////////////////////////////////////////////
//      검사실시 class(HsrExecute) Member Method                             //
///////////////////////////////////////////////////////////////////////////////

//==============================================================================
// 검사실시 대상자 목록 조회..
// - 2002.03.11. 김정수. FML16 --> FML32로 변경.
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
// 검사실시 대상자 목록 조회..
// - 2003.2.17 이경화 : 종건,일건 대상자 포함
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
// 검사실시
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
// 당뇨교실용 치료실시
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
// VIDEO / TAPE NUMBER 수정 - 심초음파, 심전도 검사실
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
// 방사선과 동일부위 당일촬영 실시
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
// 방사선과 동일부위 당일촬영 실시
// 2003.2.18 이경화 : 종건,일건포함
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
// 환자검사 수납여부 체크...
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
// 검사실시 취소...
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
// 검사실시 취소...
// 2003.2.27 이경화 -- 건진포함
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
// 접수/실시 동시에 취소.
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
// 검사실시자 명단 조회.
// 2003.1.22 이경화 수정: medseqno추가함.
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
        GetFldVar32('S_STRING4',    sClndvcode);    //내시경세척기코드, KimDaeYong 2011-09-20
        GetFldVar32('S_STRING5',    sMeddate);      //진료일자, KimDaeYong 2012-04-06
        GetFldVar32('S_STRING6',    sSpcdryn);

        Result := GetRecordCnt32('S_PATNO');

       txFree32;
    end;

    //txFree32;
    MessageStr := GetTxMsg;
end;


//==================================================================================
// 검사실시자 명단 조회.
// 2003.9.25 이경화 추가 : PACS관련해서 검사실대신 modality정보를 조회가능하도록함.
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
// 검사실시 현황 출력... : 실시검사용
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
// 검사실시 현황 출력 : 소모재료 리스트용
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
// 검사실시 현황 총계.
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
// 검사실시 현황 출력... : QI용
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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';
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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';
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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';
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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';
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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';
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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';

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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';
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
    MessageStr := '성공적으로 등록하였습니다';
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
    MessageStr := '성공적으로 등록하였습니다';
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
// 추가소모재료 등록.
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
// interesting case조회
// 특정기간, 특정 판독의가 1, 2차 판독의에 포함된 경우만 조회...
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
// interesting case조회
// 특정기간, 모득 interesting case 조회...
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

        MessageStr := IntToStr(Result) + '건의 자료가 조회되었습니다.';
    end
    else
        MessageStr := '오류가 발생했습니다.';

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
// 2003.12.18 이경화 -- 수탁검사처방 DC처리
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
// 2004.1.6 이경화 -- 필름복사처방 DC처리
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
// 검색어코드 목록 조회.
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
// Episode Data 신규입력...
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
// 2002.11.27 이경화 추가 --> 조건검색 : 처방일자별(from~to),환자유형별(입원/외래), 검사구분별 조회
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
// 2003.11.13 이경화 추가 --> Modality별검색
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
// 2002.12.4 이경화 추가 --> 당뇨병클리닉 영양실 consult조회  처방일자별(from~to) 배유미간호사요청
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
// 2003.4.2 이경화 추가 --> 동위원소실 연속검사 조회
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
// 2003.12.16 이경화 -- 처방조회(DC처리할 화면에서 select)
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
// 2002.11.28 이경화 추가 --> 처방일자별(from~to) Portable검사조회
// 2003.2.24  이경화수정 -- examtype,처방의 추가함.
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
// 2002.12.5 이경화 추가 --> 처방일자별(from~to) C-Arm, Intra op, Post op 검사조회
// Itype => 1: C-Arm  2: Intra op  3: Post op
// 2003.02.26 방용균 수정
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
// 2003.6.16 이경화 -- 동위원소 시약조회 화면
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
// REPEAT 조회(from - to 기간별조회)
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
// REPEAT 조회(from - to 기간별조회)
// 2003.2.25 이경화 -- 건진포함
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
//      판독 class(HsrReadFilm) Member Method                                //
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
// 2003.1.21 이경화 : 전판독내역불러오기
// 2003.7.23 이경화 : 결론항목추가
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
// 2003.7.31 이경화 : 전판독내역불러오기 -- 과거처방(HP구자료컨버젼자료조회)
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
// 판독확인 대상목록 조회.
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

{+++++++++++++++ 2002.03.11. 김정수...FTP사용에서 FML32로 변경...
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
// 2003.8.7 이경화 -- 판독확인 대상목록 조회.(건진포함)
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

        //2003.8.7 이경화 추가
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
// 2002.12.16 이경화 ==> 미판독조회(입원,외래,응급)
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
// 판독결과 저장 및 수정.                     SONGLIM_THOMA 수정
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
// 판독결과 저장 및 수정.
//  2003.2.26 이경화 -- 건진포함                          SONGLIM_THOMA 수정
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
// 핵의학체내 판독일자 수동으로 판독결과 저장 및 수정.
//  2003.7.8 이경화 -- 건진포함                           SONGLIM_THOMA 수정
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
// 판독결과취소 ==> 현재 판독결과입력과 동시에  확인process까지 진행됨.
//  2003.3.21 이경화 -- 건진포함
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
// 초음파 판독결과 저장 -- 소견,결론부문으로 구분하여 관리함, 접수되면 바로 판독가능
//  2003.3.24 이경화 -- 건진포함
//  2003.4.3  이경화 -- DR4를 writeId로 대체
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
//  판독결과 저장 -- 소견,결론부문으로 구분하여 관리함
//  2003.3.24 이경화 -- 건진포함
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
// 판독확인...
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
// 판독확인...
// 2003.2.27 이경화 -- 건진포함
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
// 판독확인 -- 판독소견,결론 구분하여 처리 (srexamdt는 구분하여, mdresult는 따로관리)
// 2003.3.24 이경화 -- 건진포함
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
// 판독확인...
// 2003.7.16 이경화 -- 핵의학체내 whole body bone scan 판독확인일 3일이내로처리
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
// 판독확인수정 -- 판독소견,결론부분 구분하여 처리함.(sra996f2에서 call)
// 2003.4.15 이경화
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
// 판독확인 수정2...
// 2003.2.28 이경화 -- 건진포함
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
// 판독확인 수정2...
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
// 판독확인 수정...
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
// 출력할 판독항목들 조회...
// 수정 -- 2002.12.10 이경화
//         검사항목추가, 판독확인일시(S_DATE2) sel에 추가함 (조건에 판독확인일자를 from~to로 관리)
// 추가 -- 2003.7.15 이경화
//         FTP 로 받는 부분을 SPUT을 수정
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

     MessageStr := GetTxMsg;   //조회건수
end;





//========================================================================================
// 출력할 판독항목들 조회...
// 수정 -- 2002.12.10 이경화
//         검사항목추가, 판독확인일시(S_DATE2) sel에 추가함 (조건에 판독확인일자를 from~to로 관리)
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
//      신검판독 Class(HsrPhyRead)                                         //
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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';

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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';

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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';

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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';

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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';

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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';

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
    MessageStr := '성공적으로 수정하였습니다';
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
    MessageStr := '성공적으로 수정하였습니다';
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
    MessageStr := '성공적으로 수정하였습니다';
end;

///////////////////////////////////////////////////////////////////////////////
//      필름 class(HsrFilm) Member Method                                    //
///////////////////////////////////////////////////////////////////////////////


// 필름 마스터 데이터 생성
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
// 필름대출상태 확인
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
// 필름대출상태 확인
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
       GetFldVar('S_STRING6', sBarcodeYn);         //바코드 출력여부 예수병원 양석원 추가(2004.12.02)

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
    MessageStr := '성공적으로 등록하였습니다';
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
        GetFldVar('L_SEQNO1',   iSeqNo);    //순번
        GetFldVar('S_PATNO',    sPatNo);    //환자번호
//        GetFldVar('S_FLAG1',    sExamType); //검사분류
        GetFldVar('S_DATE1',    sReqDate);  //신청등록일자
        GetFldVar('S_MEDDEPT',  sOutDept);  //대출부서(진료과)명
        GetFldVar('S_USERID1',  sReqID);    //신청자ID
        GetFldVar('S_USERNAME1',sReqName);  //신청자명
        GetFldVar('S_USERNAME2',sOutName);  //대출자명
        GetFldVar('S_TYPE2',    sUseType);  //대출용도
        GetFldVar('S_DATE4',    sOutDate);  //대출일시
        GetFldVar('S_DATE5',    sRtnDate);  //반납일시
        GetFldVar('S_STRING1',  sFilmName); //필름구분
        Result := 1;
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//장재순
//==============================================================================
// 필름 응급대출 삭제.
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

//필름대출현황  장재순
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
        GetFldVar('S_PATNO',    sPatNo);    //환자번호
        GetFldVar('S_PATNAME',  sPatName);  //환자명
        GetFldVar('S_MEDDEPT',  sOutDept);  //대출부서(진료과)명
        GetFldVar('S_USERNAME1',sReqName);  //신청자명
        GetFldVar('S_USERNAME2',sOutName);  //대출자명
        GetFldVar('S_DATE2',    sOutDate);  //대출일자
        GetFldVar('S_DATE3',    sRtnDate);  //반납일자
        GetFldVar('S_TYPE2',    sExamType); //검사분류
        GetFldVar('S_DATE4',    sReqWDate); //대출희망일자
        GetFldVar('L_SEQNO1',   iSeqNo);    //순번
        GetFldVar('S_STRING1',  sFilmName); //필름이름
        Result := GetRecordCnt('S_PATNO');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//============================================================================================
//  2003.4.30 이경화 -- 필름요청사항을 조회하여 대출,반납이 되지 않은 항목에 대하여 대출처리
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
        GetFldVar('L_SEQNO1',   iSeqNo);    //순번
        GetFldVar('S_PATNO',    sPatNo);    //환자번호
        GetFldVar('S_DATE1',    sReqDate);  //신청등록일자
        GetFldVar('S_MEDDEPT',  sOutDept);  //대출부서(진료과)명
        GetFldVar('S_USERID1',  sReqID);    //신청자ID
        GetFldVar('S_USERNAME1',sReqName);  //신청자명
        GetFldVar('S_USERNAME2',sOutName);  //대출자명
        GetFldVar('S_TYPE2',    sUseType);  //대출용도
        GetFldVar('S_DATE4',    sOutDate);  //대출일시
        GetFldVar('S_DATE5',    sRtnDate);  //반납일시
        GetFldVar('S_STRING1',  sFilmName); //필름구분
        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;




//==============================================================================
// 2003.4.29 이경화 -- 필름요청일자별 조회
//==============================================================================
function HsrFilm.FilmReqList(ReqDate,MedDept,ExamType:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_DATE1;S_CODE1;S_TYPE1;S_FLAG9');
    SetFldValue(0,[ReqDate,MedDept,ExamType,'EB1']);

    if (txGetF('SR_REQDEPT_L5')) then
    begin
        GetFldVar('S_PATNO',    sPatNo);    //환자번호
        GetFldVar('S_PATNAME',  sPatName);  //환자명
        GetFldVar('S_MEDDEPT',  sOutDept);  //대출부서(진료과)명
        GetFldVar('S_USERNAME1',sReqName);  //신청자명
        GetFldVar('S_USERNAME2',sOutName);  //대출자명
        GetFldVar('S_DATE2',    sOutDate);  //대출일자
        GetFldVar('S_DATE3',    sRtnDate);  //반납일자
        GetFldVar('S_TYPE2',    sExamType); //검사분류
        GetFldVar('S_DATE4',    sReqWDate); //대출희망일자
        GetFldVar('L_SEQNO1',   iSeqNo);    //순번
        GetFldVar('S_STRING1',  sFilmName); //필름이름
        Result := GetRecordCnt('S_PATNO');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
//필름반납등록 취소.2002.01.09. 김정수
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
// 2003.3.11 이경화 --필름반납수정 (반납자추가)  로그인아이디 사용안함.
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
//필름반납현황  장재순
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
        GetFldVar('S_PATNO',    sPatNo);    //환자번호
        GetFldVar('S_PATNAME',  sPatName);  //환자명
        GetFldVar('S_MEDDEPT',  sOutDept);  //대출부서(진료과)명
        GetFldVar('S_USERNAME1',sReqName);  //신청자명
        GetFldVar('S_USERNAME2',sOutName);  //대출자명
        GetFldVar('S_DATE2',    sOutDate);  //대출일자
        GetFldVar('S_DATE3',    sRtnDate);  //반납일자
        GetFldVar('S_TYPE2',    sExamType); //검사분류
        GetFldVar('S_DATE4',    sReqWDate); //대출희망일자
        GetFldVar('L_SEQNO1',   iSeqNo);    //순번
        GetFldVar('S_USERNAME3',sRtnregidname);  //대출반납 등록자명
        GetFldVar('S_STRING1',  sFilmName);  //필름이름

        Result := GetRecordCnt('S_PATNO');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
//진료과별 대출현황 장재순
//==============================================================================
function HsrFilm.FilmOutQuery(FromDate,Todate,ExamType:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_FROM1;S_TO1;S_TYPE1');
    SetFldValue(0,[FromDate,ToDate,ExamType]);

    if (txGetF('SR_FILMDTOUT_L')) then
    begin
        GetFldVar('S_MEDDEPT',  sOutDept);  //대출부서(진료과)코드
//        GetFldVar('OUTDEPT',    sDeptName);     //대출부서(진료과)명
        GetFldVar('L_CNT1',     iFoutCnt); //대출건수
        GetFldVar('L_CNT2',     iFrtnCnt); //반납건수
        Result := GetRecordCnt('S_MEDDEPT');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

{
//==============================================================================
// 필름반납목록 조회...
//==============================================================================
function HsrFilm.FilmReturnUpdate(PatNo,ExamType,UserId,ReqDate,SeqNo:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;S_EDITID;S_EDITIP;S_FLAG9;S_STRING1;S_STRING2');
    SetFldValue(0,[PatNo,ExamType,G_USERID,GetIP,'EB1',ReqDate,SeqNo]);

    if (txPutF('SR_FILMRTN_U')) then
    begin
        GetFldVar('S_PATNO',    sPatNo);    //환자번호
        GetFldVar('S_MEDDEPT',  sOutDept);  //대출부서(진료과)명
        GetFldVar('S_USERNAME1',sReqName);  //신청자명
        GetFldVar('S_USERNAME2',sOutName);  //대출자명
        GetFldVar('S_DATE4',    sOutDate);  //대출일자
        GetFldVar('S_DATE5',    sRtnDate);  //반납일자
        GetFldVar('S_TYPE2',    sExamType); //검사분류
        GetFldVar('S_DATE1',    sReqWDate); //대출희망일자
        GetFldVar('L_SEQNO1',   iSeqNo);    //순번
        GetFldVar('S_USERNAME3',sRtnregidname);  //반납등록자명
        GetFldVar('S_STRING1',sFilmName);  //필름 이름

        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;
}
//==============================================================================
// 필름반납목록 조회...
// 2003.3.11 이경화 -- 필름반납자등록(로그인아이디 사용안함)
//==============================================================================
function HsrFilm.FilmReturnUpdate(PatNo,ExamType,UserId,ReqDate,SeqNo:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;S_EDITID;S_EDITIP;S_FLAG9;S_STRING1;S_STRING2');
    SetFldValue(0,[PatNo,ExamType,UserId,GetIP,'EB1',ReqDate,SeqNo]);

    if (txPutF('SR_FILMRTN_U')) then
    begin
        GetFldVar('S_PATNO',    sPatNo);    //환자번호
        GetFldVar('S_MEDDEPT',  sOutDept);  //대출부서(진료과)명
        GetFldVar('S_USERNAME1',sReqName);  //신청자명
        GetFldVar('S_USERNAME2',sOutName);  //대출자명
        GetFldVar('S_DATE4',    sOutDate);  //대출일자
        GetFldVar('S_DATE5',    sRtnDate);  //반납일자
        GetFldVar('S_TYPE2',    sExamType); //검사분류
        GetFldVar('S_DATE1',    sReqWDate); //대출희망일자
        GetFldVar('L_SEQNO1',   iSeqNo);    //순번
        GetFldVar('S_USERNAME3',sRtnregidname);  //반납등록자명
        GetFldVar('S_STRING1',sFilmName);  //필름 이름

        Result := 1;

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;




//==============================================================================
// 필름 미반납 현황 조회...
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
        GetFldVar32('S_PATNO',    sPatNo);    //환자번호
        GetFldVar32('S_PATNAME',  sPatName);  //환자명
        GetFldVar32('S_MEDDEPT',  sOutDept);  //대출부서(진료과)명
        GetFldVar32('S_USERNAME1',sReqName);  //신청자명
        GetFldVar32('S_USERNAME2',sOutName);  //대출자명
        GetFldVar32('S_DATE1',    sOutDate);  //대출일시
        GetFldVar32('S_DATE2',    sRtnWDate); //반납예정일자
        GetFldVar32('S_TELNO',    sTelNo);    //연락처
        GetFldVar32('S_TYPE1',    sUseType);  //대출용도
        GetFldVar32('S_STRING1',  sFilmName); //필름이름
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


    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';

end;

//==============================================================================
// 필름대출 이력 조회...
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
        GetFldVar32('S_MEDDEPT',  sOutDept);    //대출부서
        GetFldVar32('S_DATE1',    sOutDate);    //대출일시 yyyymmddhh24miss
        GetFldVar32('S_USERNAME2',sOutName);    //대출자명
        GetFldVar32('S_DATE3',    sRtnDate);    //반납일시 yyyymmddhh24miss
        GetFldVar32('S_USERNAME3',sRtnregidname);    //반납등록자명
        GetFldVar32('S_TYPE2',    sUseType);    //대출용도
        GetFldVar32('S_USERNAME1',sReqName);    //신청자명
        GetFldVar32('S_DATE2',    sRtnWDate);   //반납예정일자
        GetFldVar32('S_TELNO',    sTelNo);      //연락처
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
// 2003.9.19 이경화 -- 외래예약리스트
//==============================================================================
function HsrFilm.Medirsvlist(Frdate, Todate: String):Integer;
begin
    Result := -1;
    txAlloc32;
    SetFldName32('S_DATE1;S_DATE2');
    SetFldValue32(0,[Frdate, Todate]);

    if (txGetF32('SR_RSVFILM_L1')) then
    begin
        //GetFldVar32('S_STRING1',  sMeddate  );  // 검사일자
        GetFldVar32('S_STRING2',  sPatno    );  // 환자번호
        GetFldVar32('S_STRING3',  sMeddept  );  // 진료과
        GetFldVar32('S_STRING4',  sPatname  );  // 환자명
        GetFldVar32('S_STRING5',  sFilmName );  // 필름종류
        GetFldVar32('S_STRING6',  sModality );  // Modality
        //GetFldVar32('S_STRING6',  sOrdname  );  // 처방명

        Result := GetRecordCnt32('S_STRING2');

       txFree32;
    end;

    MessageStr := GetTxMsg;
end;

//==============================================================================
// 2003.10.28 이경화 -- 외래예약일자별 판독대상리스트
//==============================================================================
function HsrFilm.Medirsvlist1(Frdate, Todate: String):Integer;
begin
    Result := -1;
    txAlloc32;
    SetFldName32('S_DATE1;S_DATE2');
    SetFldValue32(0,[Frdate, Todate]);

    if (txGetF32('SR_RSVFILM_L2')) then     // sr_rsvfilm_l2.pc
    begin
        GetFldVar32('S_STRING1',  sExecdate  );  // 검사일자
        GetFldVar32('S_STRING2',  sPatno    );  // 환자번호
        GetFldVar32('S_STRING3',  sMeddept  );  // 진료과
        GetFldVar32('S_STRING4',  sPatname  );  // 환자명
        //GetFldVar32('S_STRING5',  sFilmName );  // 필름종류
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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';

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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';

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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';

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
    MessageStr := '성공적으로 등록하였습니다';
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
    MessageStr := '성공적으로 등록하였습니다';
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
    MessageStr := '성공적으로 수정하였습니다';
end;

//==============================================================================
// 필름대출 신청 현황 조회...
//==============================================================================
function HsrFilm.ReqFilmList1(Patno,OutDate,MedDept,ExamType:String):Integer;
begin

    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_DATE5;S_CODE1;S_TYPE1;S_FLAG9');
    SetFldValue(0,[Patno,OutDate,MedDept,ExamType,'EB1']);

    if (txGetF('SR_REQDEPT_L1')) then
    begin
        GetFldVar('S_PATNO',    sPatNo);    //환자번호
        GetFldVar('S_PATNAME',  sPatName);  //환자명
        GetFldVar('S_DATE1',    sReqWDate); //대출희망일자
        GetFldVar('S_DATE2',    sReqDate);  //신청등록일자
        GetFldVar('L_SEQNO1',   iSeqNo);    //순번
        GetFldVar('S_USERID1',  sReqID);    //신청자ID
        GetFldVar('S_USERNAME1',sReqName);  //신청자명
        GetFldVar('S_MEDDEPT',  sOutDept);  //대출부서(진료과)명
        GetFldVar('S_TYPE1',    sUseType);  //대출용도
        GetFldVar('S_DATE3',    sOutDate);  //대출일자
        GetFldVar('S_DATE4',    sRtnDate);  //반납일자
        GetFldVar('S_FLAG2',    sExamType); //검사분류
        GetFldVar('S_STRING1',  sFilmName); //필름이름

        Result := GetRecordCnt('S_PATNO');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//장재순
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
        GetFldVar('S_PATNO',    sPatNo);    //환자번호
        GetFldVar('S_PATNAME',  sPatName);  //환자명
        GetFldVar('S_DATE1',    sReqWDate); //대출희망일자
        GetFldVar('S_DATE2',    sReqDate);  //신청등록일자
        GetFldVar('L_SEQNO1',   iSeqNo);    //순번
        GetFldVar('S_USERID1',  sReqID);    //신청자ID
        GetFldVar('S_USERNAME1',sReqName);  //신청자명
        GetFldVar('S_MEDDEPT',  sOutDept);  //대출부서(진료과)명
        GetFldVar('S_TYPE1',    sUseType);  //대출용도
        GetFldVar('S_FLAG2',    sExamType); //검사분류

        Result := GetRecordCnt('S_PATNO');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//장재순
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
        GetFldVar('S_PATNO',    sPatNo);    //환자번호
        GetFldVar('S_PATNAME',  sPatName);  //환자명
        GetFldVar('S_DATE1',    sReqWDate); //대출희망일자
        GetFldVar('S_DATE2',    sReqDate);  //신청등록일자
        GetFldVar('L_SEQNO1',   iSeqNo);    //순번
        GetFldVar('S_USERID1',  sReqID);    //신청자ID
        GetFldVar('S_USERNAME1',sReqName);  //신청자명
        GetFldVar('S_MEDDEPT',  sOutDept);  //대출부서(진료과)명
        GetFldVar('S_TYPE1',    sUseType);  //대출용도
        GetFldVar('S_DATE3',    sOutDate);  //대출일자
        GetFldVar('S_DATE4',    sRtnDate);  //반납일자
        GetFldVar('S_FLAG2',    sExamType); //검사분류

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
        GetFldVar('S_PATNO',    sPatNo);    //환자번호
        GetFldVar('S_PATNAME',  sPatName);  //환자명
        GetFldVar('S_DATE1',    sReqWDate); //대출희망일자
        GetFldVar('S_DATE2',    sReqDate);  //신청등록일자
        GetFldVar('L_SEQNO1',   iSeqNo);    //순번
        GetFldVar('S_USERID1',  sReqID);    //신청자ID
        GetFldVar('S_USERNAME1',sReqName);  //신청자명
        GetFldVar('S_MEDDEPT',  sOutDept);  //대출부서(진료과)명
        GetFldVar('S_TYPE1',    sUseType);  //대출용도
        GetFldVar('S_DATE3',    sOutDate);  //대출일자
        GetFldVar('S_DATE4',    sRtnDate);  //반납일자
        GetFldVar('S_FLAG2',    sExamType); //검사분류

        Result := GetRecordCnt('S_PATNO');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
// 필름대출신청     장재순
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
//필름대출신청 취소     장재순
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
//필름응급대출 등록 장재순
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
        GetFldVar('L_SEQNO1',    lSeqno);    // 신규로 추가된 행의 seqno
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
    MessageStr := '성공적으로 수정하였습니다';
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
        GetFldVar('S_PATNO',    sPatNo);    //환자번호
        GetFldVar('S_PATNAME',  sPatName);  //환자명
        GetFldVar('S_MEDDEPT',  sMeddept);  //진료과
        GetFldVar('S_DR1',      sDr1);      //진료의번호
        GetFldVar('S_DRNAME1',  sDrname1);  //진료의명
        GetFldVar('S_DATE1',    sOutdate);  //대출일자
        GetFldVar('S_DATE2',    sRtndate);  //반납일자
        GetFldVar('L_SEQNO1',   lSeqno);    //필름번호
    
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
        GetFldVar('S_CODE1',    sTypecode);    //환자번호
        GetFldVar('S_NAME1',    sTypename);  //환자명
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// 주어진 기간에 해당 부서에서 대출한 이력을 조회.
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
        GetFldVar32('S_PATNO',    sPatno);    //환자번호
        GetFldVar32('S_PATNAME',  sPatname);  //환자명
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

        MessageStr := IntToStr(Result) + '건의 자료가 조회되었습니다.';
        txFree32;
    end
    else
    begin
        MessageStr := '조회중 오류가 발생했습니다.';

    end;

    //txFree32;
//    MessageStr := GetTxMsg;
end;

//==============================================================================
// 낱장필름 대출이력 조회...
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
        GetFldVar('S_PATNO',    sPatno);    //환자번호
        GetFldVar('S_PATNAME',  sPatname);  //환자명
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
// 낱장필름 등록
//==============================================================================
function HsrFilm.UnitFilmIns(Patno,Examtype,Acptdate,Outdept,Regid,Outregid,Userid,Userip,FilmType: String): Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_PATNO;S_TYPE1;S_ACPTDATE;S_MEDDEPT;S_USERID1;S_USERID2;S_EDITID;S_EDITIP;S_TYPE2');
    SetFldValue(0,[Patno,Examtype,Acptdate,Outdept,Regid,Regid,G_USERID,G_USERIP,FilmType]);
    // 2003.2.13 이경화 SetFldValue(0,[Patno,Examtype,Acptdate,Outdept,Regid,Outregid,G_USERID,G_USERIP,FilmType]);

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
// 낱장필름 대출등록 취소...
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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';

end;

//==============================================================================
//
//==============================================================================
function HsrConsult.ConsultOReqList(MedDept:String):Integer;
begin
{
    Result := -1;
    txAlloc; //Pointer를 받아옴.
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
    MessageStr := IntToStr(Result) + '건이 조회되었습니다.';

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
    MessageStr := '성공적으로 수정하였습니다';
end;

//==============================================================================
//
//==============================================================================
function HsrConsult.UpdateConrqt(PatNo,ReqDate,ConhDept,ReqTx,ConhDr,RestTx,
                                 FinishYn:String;SeqNo:Integer):Integer;
begin
{
    Result := -1;
    txAlloc; //Pointer를 받아옴.
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
    MessageStr := '성공적으로 수정하였습니다';
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
// 검사처방에 대한 정보 조회...
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
// 검사특기사항을 업데이트 한다...
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
// 검사특기사항을 업데이트 한다...구로병원인 경우... 해당환자의
// 동일한 처방일을 가지는 방사선과 검사항목 모두를 변경한다...
// 2002.05.07. 김정수
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
// 판독결과 입력대상 조회.                         SONGLIM_THOMA 수정
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
         GetFldVar('S_STRING4'    , sAntconvyn);   //진경제 사용여부 2021.05.13.우남규 추가


         Result := GetRecordCnt('S_PATNO');
    
       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// 판독결과 입력대상 조회.
// 2003.2.25 이경화 -- 건진포함                           SONGLIM_THOMA 수정
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
         GetFldVar('S_STRING12' , sMedicine3);   // Pentotal 사용량, 2016.01.11
         GetFldVar('S_STRING13' , sReMedicine3); // Pentotal 폐기량, 2016.01.11
         GetFldVar('S_STRING14' , sMedicine4);   // Freefol 사용량, 2016.07.22
         GetFldVar('S_STRING15' , sReMedicine4); // Freefol 폐기량, 2016.07.22

         GetFldVar('S_STRING16'    , sChadr);
         GetFldVar('S_STRING17'    , sChadrname);
         GetFldVar('S_STRING18'    , sAntconvyn); //진경제 사용여부 2021.05.06.우남규 추가

         Result := GetRecordCnt('S_PATNO');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


//==============================================================================
// 판독결과 입력대상 조회.
// 2003.3.19 이경화 -- 건진포함
//                     검사구분(일반,CT,MRI,SONO,Angio,특수)
// 2003.3.25 이경화 -- 소견,결론구분
// 2003.3.27 이경화 -- 검사특기사항추가
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
// 환자검사별로 판독결과 조회.
// 2003.3.19 이경화 -- 건진포함
//                     검사구분(일반,CT,MRI,SONO,Angio,특수)
// 2003.3.26 이경화 -- 소견,결론구분
// 2003.3.27 이경화 -- 검사특기사항추가
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
// 판독결과 입력대상 조회.
// 2003.3.19 이경화 -- 건진포함
//                     검사구분(일반,CT,MRI,SONO,Angio,특수)
// 2003.3.25 이경화 -- 소견,결론구분
// 2003.3.27 이경화 -- 검사특기사항추가
// 2003.4.17 이경화 -- 일반+특수 만 자료조회가능하게
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
// 판독결과 다운로드
// 2003.4.18 이경화 -- 판독결과 다운로드
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
// 확인목록 조회.                                                SONGLIM_THOMA
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

         GetFldVar('S_STRING4'   , sAntconvyn);      // 진경제 사용여부 2021.05.13. 우남규 추가

        Result := GetRecordCnt32('S_PATNO');

       txFree32;
    end;

    //txFree32;
//    MessageStr := GetTxMsg;
    MessageStr := IntToStr(Result) + '건의 자료가 조회되었습니다.';
end;


//==============================================================================
// 확인목록 조회.
// 2003.2.28 이경화 -- 건진포함                                   SONGLIM_THOMA
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
       GetFldVar('S_STRING12' , sMedicine3);   //Pentotal 사용량, 2016.01.11
       GetFldVar('S_STRING13' , sReMedicine3); //Pentotal 페기량, 2016.01.11
       GetFldVar('S_STRING14' , sMedicine4);   //Freefol 사용량, 2016.07.22
       GetFldVar('S_STRING15' , sReMedicine4); //Freefol 페기량, 2016.07.22

       GetFldVar32('S_STRING16' , sChadr);
       GetFldVar32('S_STRING17' , sChadrname);
       GetFldVar  ('S_STRING18' , sAntconvyn); //진경제 사용여부 2021.05.06.우남규 추가

       Result := GetRecordCnt32('S_PATNO');

       txFree32;
    end;

    //txFree32;
//    MessageStr := GetTxMsg;
    MessageStr := IntToStr(Result) + '건의 자료가 조회되었습니다.';
end;


//==============================================================================
// 확인목록 조회.
// 2003.2.28 이경화 -- 건진포함
// 2003.3.25 이경화 -- 소견,결론부문으로 구분
// 2003.3.27 이경화 -- 검사특기사항추가
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
    MessageStr := IntToStr(Result) + '건의 자료가 조회되었습니다.';
end;


//==============================================================================
// 확인목록 조회.
// 2003.2.28 이경화 -- 건진포함
// 2003.3.25 이경화 -- 소견,결론부문으로 구분
// 2003.3.27 이경화 -- 검사특기사항추가
// 2003.4.17 이경화 -- 확인된 판독중 일반+특수검사만조회
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
    MessageStr := IntToStr(Result) + '건의 자료가 조회되었습니다.';
end;



//==============================================================================
// 먼저 MDEXMORT.PROCSTAT = 'A'...-.-?
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
// 예약 및 접수를 하려는 항목의 dc여부를 확인한다...
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
// 2003.4.1 이경화 -- 환자별, 키 몸무게 가져오기(mammo검사시 필요)
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
// 환자별 처방이력 및 검사이력 조회.
// 2003.2.11 건진처방내역 추가 -- su = 'M'일경우
// 2004.2.7  이경화 -- 당뇨병클리닉 수납정보수정루틴추가  sr_patexam_l7.pc
// 2008.11.03 KimDaeYong, Scrroom파라미터 추가, 중앙예약용
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
    else if Su = 'M' then  // 건진포함
    begin
        svrname := 'SR_PATEXAM_L5'; // sr_patexam_l5.pc
    end
    else if Su = 'Z' then  // 특기사항추가
    begin
        svrname := 'SR_PATEXAM_L6';  // sr_patexam_l6.pc
    end
    else if Su = 'H' then  // 2004.2.7 이경화 -- 당뇨병클리닉 수납정보 수정
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

        GetFldVar32('S_DR4'      , sOrddr);     // 처방의
        GetFldVar32('S_DR5'      , sChadr);     // 주치의
        GetFldVar32('S_DRNAME4'  , sOrddrNm);   // 처방의
        GetFldVar32('S_DRNAME5'  , sChadrNm);   // 주치의

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
            GetFldVar32('S_TEXT7',     sAccno);  //ACCNO추가, KimDaeYong 2008-11-10
        end;

        if Su = 'M' then
        begin
            GetFldVar32('S_TEXT3',     sSlipCode);
            GetFldVar32('S_TEXT4',     sRsvCare);
            GetFldVar32('S_TEXT5',     sRsvPntYn);
            //2003.6.3 이경화 -- 검사결과 보여주기 (검사결과,결론)
            GetFldVar32('S_TEXT7',     sRslttext);
            GetFldVar32('S_TEXT8',     sLastrslt);
        end;

        if Su = 'Z' then
        begin
            GetFldVar32('S_TEXT3',     sSlipCode);
            GetFldVar32('S_TEXT4',     sRsvCare);
            GetFldVar32('S_TEXT5',     sRsvPntYn);
            GetFldVar32('S_TEXT6',     sOrdrmk);
            GetFldVar32('S_TEXT7',     sAccno);  //ACCNO추가, KimDaeYong 2008-11-10
        end;

        //2004.2.7  이경화추가
        if Su = 'H' then
        begin
            GetFldVar32('S_TEXT3',     sSlipCode);
            GetFldVar32('S_TEXT4',     sRsvCare);
            GetFldVar32('S_TEXT5',     sRsvPntYn);
            GetFldVar32('S_TEXT6',     sOrdrmk);
            GetFldVar32('S_TEXT7',     sAccno);  //ACCNO추가, KimDaeYong 2008-11-10
        end;

        //2008.10.01 KimDaeYong 추가
        GetFldVar32('S_TEXT9',     sSpcdryn);
        //2008.10.22 KimDaeYong 추가
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
// 과거검사 이력조회...
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
// SEARCH CODE 저장.(TO SREXAMST)
//==============================================================================
function HsrReadFilm.SrchcodeInsert(Userid: String): Integer;
var
    i : Integer;
begin
    //  S_EDITID;   수정자 ID
    //  S_EDITIP;   수정자 IP
    //  L_SEQNO1;   처방순번
    //  S_PATNO;    환자번호
    //  S_ORDDATE;  처방일자
    //  S_CODE1;    진단코드 - 방사선과 외의 경우엔 search code
    //  S_CODE2;    장기코드
    //  S_CODE3;    ACR CODE 사용여부 - 방사선은 'Y',기타 특수검사는 'N'

    Result := -1;
    txAlloc;
    SetFldName('S_EDITID;S_EDITIP');
    SetFldValue(0,[G_USERID,GetIP]);


    // 방사선과일 경우, SREXAMST.ACRCDYN = 'Y'
    // 기타 검사실은 'N'
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
// 검색어 코드가 할당되어 있는 경우, 해당판독항목에 등록되어 잇는 검색어 코드를
// 조회하고 그 결과를 화면에 출력한다.
// - 방사선일 경우, ugd_acr_reserved그리드에 장기코드와 진단코드를 출력.
// - 기타 특수검사 파트는 sgd_SrchCode그리드에 검색어 코드 출력.
//==============================================================================
procedure ShowSrchCode(grid : TStringgrid; Patno, Orddate, Ordseqno: String);
var
    i , cnt : Integer;
begin
    if (SRAMAINF.lb_examtype.Caption = 'R') then
    begin
        ClearGrid(grid);
        grid.Cells[0,0] := '장기';
        grid.Cells[1,0] := '진단';
        grid.RowCount := 2;
    end
    else
        ClearRecord(grid);

    // 환자번호나 처방일, 처방순번이 없는 경우, 단순 exit
    if ((patno ='') or (orddate = '') or (ordseqno = '')) then exit;

    Screen.Cursor := crHourglass;
    try


    srReadFilm := HsrReadFilm.Create;

    // 방사선일 경우, SR_SRCHCODE_L2 사용
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

    // 방사선일 경우
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
// 환자번호, 처방일, 처방순번에 등록되어 있는 검색어 코드가 존재할 경우,
// 이들 목록을 조회한다.
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
// 환자번호, 처방일, 처방순번에 등록되어 있는 검색어 코드-방사선 ACR CODE가
// 존재할 경우, 이들 목록을 조회한다.
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
// 출력카운트 증가...
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
//  판독삭제
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
//  판독삭제
//  2003.2.28 이경화 -- 건진포함
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
        GetFldVar('S_CODE3',    sSpcDrYn); // 선택판독의여부 추가 2013.12.20 김송주
        //txFree;
    
       txFree;
    end;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// 판독의 코드관리 조회...
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
          Showmessage('printer 가 연결되어 있지 않아 출력이 불가합니다');
          Abort;
     end;
     Printer.PrinterIndex := idx;
     Printer.GetPrinter(Device, Driver, Port, hDeviceMode);
     SetDefaultPrinter(Device); //용지 설정
     //Window의 DefaultPrinter를 바꾼다.
     StrCat( Device, ',');
     StrCat( Device, Driver );
     StrCat( Device, ',');
     StrCat( Device, Port );
     WriteProfileString( 'windows', 'device', Device);
     StrCopy( Device, 'windows' );
//KimDaeYong del, 2009-01-29, 별필요없는기능, 이벤트발생시 다운현상 발생
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
             //custom으로 용지 설정 mm단위
             DevMode^.dmPaperSize := 0;
             DevMode^.dmPaperLength := 500;
             DevMode^.dmPaperWidth := 500;
             DevMode^.dmOrientation := DMORIENT_LANDSCAPE;
             DevMode^.dmFields := DM_PAPERSIZE or DM_PAPERLENGTH or DM_PAPERWIDTH or DM_ORIENTATION;
}
             //A4로 용지 설정 devmode에 대한 Help가 Delphi3/help/mapi.hlp에 있음
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
// 핵체외 검사 처방 조회 (20010904 : 박종엽)
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
// 검사시약사용량 조회 (2001.09.13 박종엽)
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
// 약 목록을 가져오는 function (2001.09.13 박종엽)
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
//  HsrOpreqt 	수술의뢰내역                                                  //
////////////////////////////////////////////////////////////////////////////////

// 수술이력 조회
function HsrOpreqt.ListOpEq(sType1,sType2,sType3,sType4,sType5,sType6,sType7:String;icnt:Integer):Integer;
begin
   Result := -1;
   //Pointer를 받아옴.
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
      //Service를 수행하고 FML Buffer에 PUT된 Record수
      Result := GetRecordCnt('S_STRING1');
      //txFree;

      txFree;
   end;
end;

///////////////////////////////////////////////////////////////////////////
// 진료과 조회를 위해 진료시스템에서 떼어옴(2001.09.15 박종엽)
///////////////////////////////////////////////////////////////////////////
function HsrExCode.SelDeptNm(sType1,sType2:string):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2');
   SetFldValue(0, [sType1,sType2]);  // 1:진료과 2:병동
   if (txGetF('MD_DEPTC_L1')) then begin //Tuxedo Service Call
      GetFldVar('S_CODE1'  ,sDeptCd);
      GetFldVar('S_CODE2'  ,sDeptNm);
      Result := GetRecordCnt('S_CODE1'); //Service를 수행하고 FML Buffer에 PUT된 Record수
      //txFree;

      txFree;
   end;
end;

//공통코드List SELECT
function HsrExCode.ListComCodeName(Code1 : String):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc;

   //FML Buffer Field Assign
   SetFldName('S_CODE1');
   SetFldValue(0,[Code1] );

   //Tuxedo Service Call
   if (txGetF('SR_COMCDT_L1')) then
   begin
     GetFldVar('S_STRING1',  sCode    );  // 코드
     GetFldVar('S_STRING2',  sCodeName);  // 코드명

      //조회건수 return
      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

///////////////////////////////////////////////////////////////////////////
// 사용자 조회를 위해 진료시스템에서 떼어옴(2001.09.15 박종엽)
///////////////////////////////////////////////////////////////////////////
function HsrInsamt.ListUserInfo(sType1,sType2,sType3,sType4:String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
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
// 진료 공통코드 조회를 위해 진료시스템에서 떼어옴(2001.09.15 박종엽)
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
// 검사실시 출력 - 조영제
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
//메인화면 환자번호 직접입력
//==============================================================================
function HmdOpdlst.SelectPat(PatNo:String):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc;

   //FML Buffer Field Assign
   SetFldName('S_TYPE1'); //환자번호;진료일;진료과
   SetFldValue(0,[PatNo ] );

   //Tuxedo Service Call
   if (txGetF('MD_OPDLS_L6')) then
   begin
      GetFldVar('S_STRING1',  sPatcls );  // 진료예약시간
      GetFldVar('S_STRING2',  sAdmdate);  // 진료과
      GetFldVar('S_STRING3',  sMeddept);  // 진료여부
      GetFldVar('S_STRING4',  sMeddr  );  // 수납여부
      GetFldVar('S_STRING5',  sMedtime);  // 특기사항
      GetFldVar('S_STRING6',  sMeddrnm);  // 진료의Name
      GetFldVar('S_STRING7',  sPatname);  // 예약구분
      GetFldVar('S_STRING8',  sGubn   );  // 초/재진여부


      //조회건수 return
      Result := GetRecordCnt('S_STRING1');
      //txFree;
   
      txFree;
   end;
end;

//==============================================================================
// 당뇨교육 실시현황 조회
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
// 진단코드 삭제.
//==============================================================================
function HsrAcrcdt.AcrcodeDelete(AcrCode: string): Integer;
begin
    Result := -1;

    //Pointer를 받아옴.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;S_EDITID;S_EDITIP');  // 진단코드
    SetFldValue(0,[AcrCode,G_USERID,GetIP] );

    //Tuxedo Service Call
    if (txPutF('SR_ACRCDT_D')) then
    begin
        //결과 return
        Result := 1;
    
       txFree;
    end;

    //txFree;
end;

//==============================================================================
// 진단코드 추가
//==============================================================================
function HsrAcrcdt.AcrcodeInsert(AcrCode,AcrName,UseYn: string): Integer;
begin
    Result := -1;

    //Pointer를 받아옴.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;S_NAME1;S_YN1;S_EDITID;S_EDITIP');  // 진단코드;진단명;사용여부;수정자ID;수정자IP
    SetFldValue(0,[AcrCode,AcrName,UseYn,G_USERID,GetIP] );

    //Tuxedo Service Call
    if (txPutF('SR_ACRCDT_I')) then
    begin
        // 결과 return
        Result := 1;
    
       txFree;
    end;

    //txFree;
end;

//==============================================================================
// 진단코드 목록 조회
//==============================================================================
function HsrAcrcdt.AcrcodeList(AcrCode,Flag,SiteCode: String): Integer;
begin
    Result := -1;

    //Pointer를 받아옴.
    txAlloc;

    //FML Buffer Field Assign
    // S_CODE2: '0' : 코드로 조회. '1' : 진단명으로 조회. '2': 판독입력란에서 조회.
    SetFldName('S_CODE1;S_CODE2;S_CODE3'); //환자번호;진료일;진료과
    SetFldValue(0,[AcrCode,Flag,SiteCode] );

    //Tuxedo Service Call
    if (txGetF('SR_ACRCDT_L')) then
    begin
        GetFldVar('S_CODE1',  sAcrCode );   // 진단코드
        GetFldVar('S_NAME1',  sAcrName);    // 진단명
        GetFldVar('S_YN1',    sUseYn);      // 사용여부

        //조회건수 return
        Result := GetRecordCnt('S_CODE1');
    
       txFree;
    end;

    //txFree;
end;

//==============================================================================
// 진단코드 상세정보 조회
//==============================================================================
function HsrAcrcdt.AcrcodeSel(AcrCode: string): Integer;
begin
    Result := -1;

    //Pointer를 받아옴.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1');  // 진단코드
    SetFldValue(0,[AcrCode] );

    //Tuxedo Service Call
    if (txGetF('SR_ACRCDT_S')) then
    begin
        GetFldVar('S_CODE1',  sAcrCode );   // 진단코드
        GetFldVar('S_NAME1',  sAcrName);    // 진단명
        GetFldVar('S_YN1',    sUseYn);      // 사용여부

        //조회건수 return
        Result := GetRecordCnt('S_CODE1');
    
       txFree;
    end;

    //txFree;
end;

//==============================================================================
// 진단코드 수정.
//==============================================================================
function HsrAcrcdt.AcrcodeUpdate(AcrCode,AcrName,UseYn: string): Integer;
begin
    Result := -1;

    //Pointer를 받아옴.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;S_NAME1;S_YN1;S_EDITID;S_EDITIP'); // 진단코드;진단명;사용여부
    SetFldValue(0,[AcrCode,AcrName,UseYn,G_USERID,GetIP] );

    //Tuxedo Service Call
    if (txPutF('SR_ACRCDT_U')) then
    begin
        //조회건수 return
        Result := 1;
    
       txFree;
    end;

    //txFree;
end;





//==============================================================================
{ HsrSitect  - 진단코드 관리 클래스 }
//==============================================================================

//==============================================================================
// 장기코드 삭제.
//==============================================================================
function HsrSitect.SitecodeDelete(SiteCode: string): Integer;
begin
    Result := -1;

    //Pointer를 받아옴.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1');      // 장기코드
    SetFldValue(0,[SiteCode]);

    //Tuxedo Service Call
    if (txPutF('SR_SITECT_D')) then
    begin
        // 결과 return
        Result := 1;
    
       txFree;
    end;

    //txFree;
end;

//==============================================================================
// 장기코드 추가.
//==============================================================================
function HsrSitect.SitecodeInsert(SiteCode,SiteName,UseYn: string): Integer;
begin
    Result := -1;

    //Pointer를 받아옴.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;S_NAME1;S_YN1;S_EDITID;S_EDITIP');  // 장기코드;장기명;사용여부
    SetFldValue(0,[SiteCode,SiteName,UseYn,G_USERID,GetIP] );

    //Tuxedo Service Call
    if (txPutF('SR_SITECT_I')) then
    begin
        // 결과 return
        Result := 1;
    
       txFree;
    end;

    //txFree;
end;

//==============================================================================
// 장기코드 목록 조회
//==============================================================================
function HsrSitect.SitecodeList(SiteCode, SiteName: String): Integer;
begin
    Result := -1;

    //Pointer를 받아옴.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;S_NAME1');  // 장기코드;장기명
    SetFldValue(0,[SiteCode,SiteName]);

    //Tuxedo Service Call
    if (txGetF('SR_SITECT_L')) then
    begin
        GetFldVar('S_CODE1',  sSiteCode );  // 장기코드
        GetFldVar('S_NAME1',  sSiteName);   // 장기명
        GetFldVar('S_YN1',    sUseYn);      // 사용여부

        //조회건수 return
        Result := GetRecordCnt('S_CODE1');
    
       txFree;
    end;

    //txFree;
end;

//==============================================================================
// 장기코드 상세정보 조회
//==============================================================================
function HsrSitect.SitecodeSel(SiteCode: string): Integer;
begin
    Result := -1;

    //Pointer를 받아옴.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;');  // 장기코드
    SetFldValue(0,[SiteCode]);

    //Tuxedo Service Call
    if (txGetF('SR_SITECT_S')) then
    begin
        GetFldVar('S_CODE1',  sSiteCode );  // 장기코드
        GetFldVar('S_NAME1',  sSiteName);   // 장기명
        GetFldVar('S_YN1',    sUseYn);      // 사용여부

        //조회건수 return
        Result := GetRecordCnt('S_CODE1');

       txFree;
    end;

    //txFree;
end;

//==============================================================================
// 장기코드 수정.
//==============================================================================
function HsrSitect.SitecodeUpdate(SiteCode, SiteName,UseYn: string): Integer;
begin
    Result := -1;

    //Pointer를 받아옴.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;S_NAME1;S_YN1;S_EDITID;S_EDITIP');  // 장기코드;장기명
    SetFldValue(0,[SiteCode,SiteName,UseYn,G_USERID,GetIP]);

    //Tuxedo Service Call
    if (txPutF('SR_SITECT_U')) then
    begin
        // 결과 return
        Result := 1;

       txFree;
    end;

    //txFree;
end;



//==============================================================================
{ HsrHolidt }
//==============================================================================


//==============================================================================
// 공휴일 목록을 조회. 월단위.
//==============================================================================
function HsrHolidt.HolidayList(YearMonth: String): Integer;
begin
    Result := -1;

    //Pointer를 받아옴.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_DATE1');  // 장기코드;장기명
    SetFldValue(0,[YearMonth]);

    //Tuxedo Service Call
    if (txGetF('SR_HOLIDAY_L')) then
    begin
        GetFldVar('S_DATE1',  sHoliday );  // 휴일
        GetFldVar('S_NAME1',  sHolidtnm);  // 휴일명
        GetFldVar('S_TYPE1',  sHolitype);  // 휴일타입

        //조회건수 return
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
// 공통코드 삭제
//==============================================================================
function HsrCodect.CodectDelete(Code1, Code2: string): Integer;
begin
    Result := -1;

    //Pointer를 받아옴.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;S_CODE2');      // 대분류 코드 ; 중분류 코드
    SetFldValue(0,[Code1, Code2]);

    //Tuxedo Service Call
    if (txPutF('SR_CODECT_D')) then
    begin
        // 결과 return
        Result := 1;

       txFree;
    end;

    //txFree;
end;

//==============================================================================
// 공통코드 입력
//==============================================================================
function HsrCodect.CodectInsert(Code1,Code2,Name,UseYn: string): Integer;
begin
    Result := -1;

    //Pointer를 받아옴.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;S_CODE2;S_NAME1;S_YN1;S_EDITID;S_EDITIP');  // 대분류코드;중분류코드;공통코드명;사용여부
    SetFldValue(0,[Code1,Code2,Name,UseYn,G_USERID,GetIP] );

    //Tuxedo Service Call
    if (txPutF('SR_CODECT_I')) then
    begin
        // 결과 return
        Result := 1;
    
       txFree;
    end;

    //txFree;
end;

//==============================================================================
// 곧통코드 목록 조회
//==============================================================================
function HsrCodect.CodectList(Code1,Code2: String): Integer;
begin
    Result := -1;

    //Pointer를 받아옴.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;S_CODE2');  // 대분류코드;중분류코드
    SetFldValue(0,[Code1,Code2]);

    //Tuxedo Service Call
    if (txGetF('SR_CODECT_L')) then
    begin
        GetFldVar('S_CODE1',  sCode);  // 장기코드
        GetFldVar('S_NAME1',  sCodeName);   // 장기명
        GetFldVar('S_YN1',    sUseYn);      // 사용여부

        //조회건수 return
        Result := GetRecordCnt('S_CODE1');
    
       txFree;
    end;

    //txFree;
end;

//==============================================================================
// 공통코드 상세조회
//==============================================================================
function HsrCodect.CodectSel(Code1,Code2: string): Integer;
begin
    Result := -1;

    //Pointer를 받아옴.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;S_CODE2');  // 대분류코드;중분류코드
    SetFldValue(0,[Code1,Code2]);

    //Tuxedo Service Call
    if (txGetF('SR_CODECT_S')) then
    begin
        GetFldVar('S_CODE1',  sCode);  // 공통코드
        GetFldVar('S_NAME1',  sCodeName);   // 공통코드명
        GetFldVar('S_YN1',    sUseYn);      // 사용여부

        //조회건수 return
        Result := GetRecordCnt('S_CODE1');
    
       txFree;
    end;

    //txFree;
end;

//==============================================================================
// 공통코드 수정
//==============================================================================
function HsrCodect.CodectUpdate(Code1, Code2, CodeName, UseYn: string): Integer;
begin
    Result := -1;

    //Pointer를 받아옴.
    txAlloc;

    //FML Buffer Field Assign
    SetFldName('S_CODE1;S_CODE2;S_NAME1;S_YN1;S_EDITID;S_EDITIP');  // 대분류코드;중분류코드;공통 코드명;사용여부
    SetFldValue(0,[Code1,Code2,CodeName,UseYn,G_USERID,GetIP]);

    //Tuxedo Service Call
    if (txPutF('SR_CODECT_U')) then
    begin
        // 결과 return
        Result := 1;
    
       txFree;
    end;

    //txFree;
end;






/////////////////////////////////////////////////////////////////
// 1. HcmDept : 부서조회, 사업장조회 Class
/////////////////////////////////////////////////////////////////

//부서조회(CM_DEPT_L)
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


//부서조회(CM_DEPT_L)
//2003.2.28 이경화 -- 필름대출등록에서 사용
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
    사용자별 - 단축키별 판독결과 예문관리 클래스. 2002.05.30. 김정수}
/////////////////////////////////////////////////////////////////

//==============================================================================
// 사용자별 - 단축키별 판독결과 예문 삭제
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
// 사용자별 - 단축키별 판독결과 예문 입력
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
// 사용자별 - 단축키별 판독결과 예문 수정
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
// 사용자별 - 단축키별 판독결과 예문 조회
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

// 종건,일건 검체코드 등록 및 취소 (2003.02.23 방용균)
// 종건,일건 검체코드 등록 및 취소 (2003.02.23 방용균) 변경
function Hsu2examt.UpdateExam(sType1, sType2, sPatNo, sOrdDate, sOrdSeqNo, sOrdCode, sSpcCode : String) : Integer;
begin
    Result := -1;

    //Pointer를 받아옴.
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

//2003.6.5 이경화 -- 종건예약검사 환자별조회
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

//2003.6.5  이경화 -- 종건예약검사 일자별 명단조회
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

//2003.02.26 방용균 추가
//==============================================================================
// 검사실시
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
// 일괄판독입력을 위한 자료 조회 2003.02.28 방용균추가
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
// 일괄판독입력 2003.02.28 방용균추가
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
// 일괄판독+확인 입력 2003.03.02 방용균추가
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
// 2003.03.05 방용균추가 -- 해부병리검사 처방조회
// 2004.1.2   이경화수정 -- 처방순번,환자유형 항목 추가함
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

      {//2004.1.2 이경화 추가함
      GetFldVar('L_SEQNO1', lOordseq);
      GetFldVar('S_NAME5' , sPatsect);
      }
      txFree;
   end;
end;

//==============================================================================
// 2004.1.2 이경화 -- 해부병리 colldate update
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

//2008.07.08 김송주 추가 -- 자동 normal 판독 확인
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
//  2003.3.5 방용균 -- 스케쥴타임입력
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
// 접수/실시 동시에 취소.
// 2003.3.5 이경화 -- 건진포함
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

//예수병원 양석원 2004.12.04 추가
//필름마스터의 바코드 출력 체크
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

//예수병원 양석원 2004.12.04 추가
//필름마스터의 바코드 출력 체크
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
//예수병원 양석원 2004.12.04 추가
// 필름대출상태 재출력 조회
//==============================================================================
function HsrFilm.FilmOutCheck3(fromDate,reqdept,reqid,patno:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
    SetFldValue(0,[fromdate,reqdept,reqid,patno]);

    if (txGetF('SR_FILMOUT_S3')) then  // sr_filmout_s3.pc
    begin
       GetFldVar('S_STRING1'   ,sPatno      );     //환자번호|환자이름|검사분류|희망일자|희망부서|희망부서명|신청자|신청인|신청일시|대출용도|대출용도명|전화번호|대출구분
       GetFldVar('S_STRING2'   ,sPatname    );     //환자이름
       GetFldVar('S_STRING3'   ,sExamtype   );     //검사분류
       GetFldVar('S_STRING4'   ,sReqdate    );     //희망일자
       GetFldVar('S_STRING5'   ,sReqdept    );     //희망부서
       GetFldVar('S_STRING6'   ,sReqDeptnm  );     //희망부서이름
       GetFldVar('S_STRING7'   ,sReqid      );     //신청자
       GetFldVar('S_STRING8'   ,sReqUsername);     //신청자이름
       GetFldVar('S_STRING9'   ,sReqidate   );     //신청일자
       GetFldVar('S_STRING10'  ,sUsetype    );     //대출용도
       GetFldVar('S_STRING11'  ,sUseTypenm  );     //대출용도이름
       GetFldVar('S_STRING12'  ,sTelno      );     //전화번호
       GetFldVar('S_STRING13'  ,sOuttype    );     //대출구분
       GetFldVar('S_STRING14'  ,sSex        );     //대출구분

       Result := GetRecordCnt('S_STRING1');

       txFree;
    end;
    MessageStr := GetTxMsg;
end;

//필름 현 위치 정보 조회 예수병원 양석원 추가(2004.12.17)
function HsrFilm.FilmOutCheck4(patno,reqdate,isSeqno:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;');
    SetFldValue(0,[patno,reqdate,isSeqno]);

    if (txGetF('SR_FILMOUT_S4')) then  // sr_filmout_s4.pc
    begin
       GetFldVar('S_USERID1'   ,sOutid      );     //대출자

       Result := GetRecordCnt('S_USERID1');

       txFree;
    end;
    MessageStr := GetTxMsg;
end;

//필름 현 위치 정보 조회 예수병원 양석원 추가(2004.12.17)
function HsrFilm.FilmOutCheck5(patno:String):Integer;
begin
    Result := -1;
    txAlloc;
    SetFldName('S_TYPE1');
    SetFldValue(0,[patno]);

    if (txGetF('SR_FILMOUT_S5')) then  // sr_filmout_s5.pc
    begin
       GetFldVar('S_STRING1'   ,sReqid      );     //대출자
       GetFldVar('S_STRING2'   ,sReqdept    );     //대출부서
       GetFldVar('S_STRING3'   ,sReqName    );     //대출자성명
       GetFldVar('S_STRING4'   ,sReqDeptnm  );     //대출부서이름

       Result := GetRecordCnt('S_STRING1');

       txFree;
    end;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// 필름대출상태 확인          예수병원 양석원 추가2005.01.09
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
       GetFldVar('S_STRING6', sCount);  //예수병원 양석원 추가(2005.01.09)

       Result := GetRecordCnt('S_DATE1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// 필름대출상태 확인          예수병원 양석원 추가2005.01.09
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
       GetFldVar('S_STRING6', sCount);  //예수병원 양석원 추가(2005.01.09)



       Result := GetRecordCnt('S_DATE1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;


/////////////////////////////////////////////////////////////////
// HsrCertUsr : 사용자 전자인증서 조회 Class 추가     SONGLIM_THOMA
/////////////////////////////////////////////////////////////////
//사용자 인증서정보 조회(MD_CERT_S1)
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

//인증테이블의 인증서 조회용             SONGLIM_THOMA
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
// 암등록환자조회, KimDaeYong 2010-08-24
// 김송주Tc가 만들어놓은 서비스 이용
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
// 조영제부작용관리 조회, KimDaeYong 2011-02-16
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
// 조영제부작용관리 저장, KimDaeYong 2011-02-18
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
// 조영제부작용코드관리 저장, KimDaeYong 2011-02-21
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
// 조영제부작용코드관리 조회, KimDaeYong 2011-02-21
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
// 조영제부작용관리 유무, KimDaeYong 2011-02-24
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
// SMS의사정보관리 저장, KimDaeYong 2011-03-03
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
// SMS의사정보관리 조회, KimDaeYong 2011-03-03
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
// SMS메시지코드관리 저장, KimDaeYong 2011-03-03
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
// SMS메시지코드관리 조회, KimDaeYong 2011-03-03
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
// SMS전송내역 조회, KimDaeYong 2011-03-04
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
// SMS전송내역 저장, KimDaeYong 2011-03-04
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
// SMS중간보고코드관리 조회, KimDaeYong 2011-03-11
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
// SMS중간보고코드관리 저장, KimDaeYong 2011-03-11
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
// 진정치료, KimDaeYong 2011-07-20
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
// 진정치료모니터링, KimDaeYong 2011-07-20
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
// 진정치료 저장, KimDaeYong 2011-07-20
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
// 진정치료기록 삭제, KimDaeYong 2011-07-22
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
// 세척기코드관리 조회, KimDaeYong 2011-09-19
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
// 세척기코드관리 저장, KimDaeYong 2011-09-19
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

// 환자Caution정보 조회, mdclass1에서 복사해옴
// KimDaeYong 2011-09-21
function HmdCautnt.SelCaution(PatNo:String):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc;

   //FML Buffer Field Assign
   SetFldName('S_PATNO');
   SetFldValue(0,[PatNo]);


   //Tuxedo Service Call
   if (txGetF('MD_CAUTN_S2')) then     // 외래 환자도 보일수 있도록 서비스 수정 S1->S2 김송주
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
      GetFldVar('S_STRING34', sInFluyn);    //인플루엔자, KimDaeYong 2014-02-26
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

      //조회건수 return
      Result := GetRecordCnt('S_PATNO');
      txFree;
   end;
end;

//==============================================================================
//내시경처방확인, KimDaeYong 2012-04-25
//진료에서 내시경 처방시 입력해주는 데이터를 보여준다
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
// 난청음진료소 저장, KimDaeYong 2012-06-25
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
// 난청음진료소, KimDaeYong 2012-06-26
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
        GetFldVar('S_STRING53'   , 	sCalmthd       );   //평균계산법, KimDaeYong 2012-07-26

       Result := GetRecordCnt('S_STRING1');

       txFree;
    end;

    //txFree;
    MessageStr := GetTxMsg;
end;

//==============================================================================
// 난청음결과 삭제, KimDaeYong 2012-06-26
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
// 결핵검사의뢰서, KimDaeYong 2013-03-27
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
// 결핵검사의뢰서 저장, KimDaeYong 2013-03-28
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
      GetFldVar('L_SEQNO1', lMstseq);  // 입력된 마스터순번
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

function HsrSedmst.ListPatinfo:Integer;  // 마스터 조회
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
      GetFldVar ('S_STRING13', sMeddate); // 2015.11.10 추가
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
      GetFldVar('L_SEQNO1', lMstseq);  // 입력된 마스터순번   
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
      GetFldVar('L_SEQNO2', lSubseq);  // 입력된 마스터순번
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
      GetFldVar('L_SEQNO3', lRowseq);  // 입력된 마스터순번
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
      GetFldVar('L_SEQNO3', lRowseq);  // 입력된 순번
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
      GetFldVar('L_SEQNO2', lSubseq);  // 입력된 순번
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

function HsrSedmgt.ListMgt:Integer;  // 처방일 기준
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

function HsrSedmgt.ListMgt2:Integer; // 진료일 기준
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
      //2019.09.04.최근우 추가.
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

//연명의료조회. KimDaeYong 2019-05-21
function HmdDnrrgt.List1(inFlag, inPatno, inRgtdate, inFromdate, inTodate, inGubun: string):Integer;
begin
   Result := -1;
   txAlloc32; //Pointer를 받아옴.
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

//연명의료 등록. KimDaeYong 2019-05-22
function HmdDnrrgt.Insert1(inFlag,inEditid,inEditip : string):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

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
   txAlloc; //Pointer를 받아옴.

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
// 직원정보 조회
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

//============== 검사전 체크리스트 조회 2021.06.18. 우남규 추가 =============================
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

//============== 검사전 체크리스트 저장 2021.06.21. 우남규 추가 =============================
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




