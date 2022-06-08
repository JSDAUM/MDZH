//=============================================================
// CCCLASS1 - 공통관리 클래스 Unit.
//
//    class
//         Tcccomcdt : 공통코드 관리 클래스
//         Tccholydt : 휴일 관리 클래스
//         Tcchosift : 병원정보 관리 클래스
//         Tcczipcdt : 우편번호 관리 클래스
//
//    2001.06.21. 김정수
//=============================================================

unit CCCLASS1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, FileCtrl, MsgCom, TuxCom, Imm;

type
   //============================================
   // 공통코드 관리 클래스
   Tcccomcdt = class
      sLargcd : Variant;           { 대분류코드 }
      sComcddtl : Variant;         { 소분류코드 }
      sCdabbrnm : Variant;         { 코드약어명 }
      sComcdnm : Variant;          { 코드명     }
      sCdprtnm : Variant;          { 출력코드명 }
      lCdprtseq : Variant;         { 출력순서   }
      sCdvalue : Variant;          { 코드값     }
      sCdmaxval : Variant;         { 최대값     }
      sCdminval : Variant;         { 최소값     }
      sCdetca : Variant;           { 기타사용A  }
      sCdetcb : Variant;           { 기타사용B  }
      sCdetcc : Variant;           { 기타사용C  }
      sRemark : Variant;           { 비고       }
      sEditid : Variant;           { 수정자ID   }
      sEditip : Variant;           { 수정자IP   }
      tEditdate : Variant;         { 수정일     }
      tDeldate : Variant;          { 삭제일     }
      // 공통코드 조회
      function ccComcdtList(sLargcdParam, sComcddtlParam, sSortKeyParam: String; LargcdOrComcddlt: Integer;Searchopt:integer=1):Integer;
      // 공통코드 상세정보 조회
      function ccComcdtDetail(sLargcdParam, sComcddtlParam: String):Integer;
      // 공통코드 수정
      function ccComcdtUpdate(sLargcdParam, sComcddtlParam, sSelflag: String):Integer;
      //공통코드 신규등록
      function ccComcdtInsert(sSelflag: String):Integer;
      // 공통코드 삭제
      function ccComcdtDelete(sLargcdParam, sComcddtlParam, sSelflag: String):Integer;
      // mis공통코드 수정
      function ccComcdtUpdate2(sLargcdParam, sComcddtlParam, sSelflag: String):Integer;
      //mis공통코드 신규등록
      function ccComcdtInsert2(sSelflag: String):Integer;
      //mis 공통코드 삭제
      function ccComcdtDelete2(sLargcdParam, sComcddtlParam, sSelflag: String):Integer;

  end;

   //============================================
   // 휴일관리용 클래스.
   Tccholydt = class
      tHoliday    : Variant;     { 공휴일             }
      sHolidtnm   : Variant;     { 공휴일 명          }
      sHolitype   : Variant;     { 공휴일구분         }
      sMuseyn     : Variant;     { 진료사용코드       }
      sSuseyn     : Variant;     { 진료지원사용코드   }
      sAuseyn     : Variant;     { 원무사용코드       }
      sGuseyn     : Variant;     { 일반관리사용코드   }
      sSpdietyn   : Variant;     { 산재특식여부       }
      sEditid     : Variant;     { 수정자 ID          }
      sEditip     : Variant;     { 수정자 IP          }
      tEditdate   : Variant;     { 수정일             }
      tDeldate   : Variant;     { 폐기일             }

      // 년도별 공휴일의 목록 조회.
      function ccHolidList(sParam: String):Integer;
      // 입력년도내의 모든 일요일 추가.
      function ccHolidGensunday(sYearParam: String):Integer;
      // 신규 휴일 정보 추가.
      function ccHolidInsert():Integer;
      // 해당 휴일의 자세한 정보 출력.
      function ccHolidUpdate():Integer;
      // 해당 휴일 정보 삭제.
      function ccHolidDelete():Integer;

  end;

   //============================================
   // 우편번호 관리 클래스
   Tcczipcdt = class
      sZipcode : Variant;  { 우편번호        }
      sSido    : Variant;  { 시군            }
      sGugun   : Variant;  { 구군            }
      sDong    : Variant;  { 읍면동          }
      sBunji   : Variant;  { 번지            }
      sAreaclas :Variant;  { 지역 번호       }
      sEditid  : Variant;  { 수정한 사람 ID  }
      sEditip  : Variant;  { 수정할 당시 IP  }
      tEditdate :Variant;  { 수정한 날짜     }
      tDeldate : Variant;  { 삭제한 날짜     }

      // 우편번호 조회.
      function cczipcdtList(sDongParam : String):Integer;
      // 신규 우편번호 등록.
      function cczipcdtInsert(sId, sIp : String):Integer;
      // 우편번호 수정.
      function cczipcdtUpdate(sId, sIp : String):Integer;
      // 우편번호 삭제 - 삭제표시만 수행.
      function cczipcdtDelete(sZipcode, sIp :String):Integer;
      // 삭제표시된 우편번호 실제 삭제.
      function cczipcdtClear(sId, sIp : String):Integer;
      procedure SetzipcdsData(sParam : String; iFlag : Integer);
  end;

   //============================================
   // 병원정보 관리 클래스
   Tcchosift = class
      sLocate     : Variant;        { 병원구분         }
      sInsurid    : Variant;        { 보험요양기관기호 }
      sIndusid    : Variant;        { 산재요양기관기호 }
      sHsptname   : Variant;        { 병원명칭         }
      sBedcount   : Variant;        { 병상수           }
      sPrsdname   : Variant;        { 대표자명         }
      sPrsdreno   : Variant;        { 대표자주민번호   }
      sAddress    : Variant;        { 주소             }
      sTelno      : Variant;        { 전화번호         }
      sFaxno      : Variant;        { 팩스번호         }
      sZipcd      : Variant;        { 우편번호         }
      sEditid     : Variant;        { 수정자ID         }
      sEditip     : Variant;        { 수정자IP         }
      tEditdate   : Variant;        { 수정일           }

      // 병원정보 조회.
      function cchosifList(sHsptnameParam : String):Integer;
      // 신규 병원정보 등록.
      function cchosifInsert(sId, sIp : String):Integer;
      // 병원정보 수정.
      function cchosifUpdate(sId, sIp : String):Integer;
      // 병원정보 삭제. - 물리적
      function cchosifDelete():Integer;
  end;

  //============================================

  //환자마스터 ///////////////////////////////////////////////////
   HAPPATBAT = class
      sPatno      : Variant; // 환자번호
      sPatname    : Variant; // 환자명
      sResno1     : Variant; // 주민번호1
      sResno2     : Variant; // 주민번호2
      sBirtdate   : Variant; // 생년월일
      sSex        : Variant; // 성별
      sTelno1     : Variant; // 전화번호1
      sTelno2     : Variant; // 전화번호2
      sTelno3     : Variant; // 핸드폰
      sFaxno      : Variant; // FAX번호
      sEmail      : Variant; // E-Mail
      sZipcd      : Variant; // 우편번호
      sAddress    : Variant; // 주소
      sExceptcd   : Variant; // 의약분업예외코드
      iCardcnt    : Variant; // 진찰권발행횟수
      sCpatno     : Variant; // 합본된 환자번호
      sReferyn    : Variant; // refer여부
      sLicchkyn   : Variant; // 자격확인여부
      sHdctype    : Variant; // 장애종별
      sHdcgrade   : Variant; // 장애등급
      sEditid     : Variant; // 수정자ID
      sEditip     : Variant; // 수정자IP
      sEditdate   : Variant; // 수정일시
      sIneritno   : Variant; // 보훈번호
      sZpaddress  : Variant; // 우편번호주소
      sFlag       : Variant; // 입력구분자 '1': 환자번호, '2':주민번호, '3':성명
      sPatgubun   : Variant; // 신환환자인지 구환환자인지구분. 1:구환, 2: 신환
      sSexnm      : Variant; // 성별명 (AP03)
      sZipcdnm    : Variant; // 우편번호에 따른 주소
      sExceptcdnm : Variant; // 의약분업예외코드명 (AP06)
      sHdctypenm  : Variant; // 장애종별명 (AP04)
      sHdcgradenm : Variant; // 장애등급명 (AP05)
      sPatposit   : Variant; // 환자현재위치
      sMeddept    : Variant; // 퇴원과
      sPattype    : Variant; // 유형
      sLastdate   : Variant; //
      sNotifyyn   : Variant; // 진료의뢰서
      sNotifydt   : Variant; // 진료의뢰일자
      sDccode     : Variant; // 감면코드
      sDccodenm   : Variant; // 감면코드명
      dBonedens   : Variant; // 골밀도수치
      tExecdate   : Variant; // 검사일자
      sLocate     : Variant; // 사업장
      sDenpatno   : Variant; // 치과환자번호
      sHopedate   : Variant; // 종건실시일자
      sJobcd      : Variant; //  직업코드
      sChurch     : Variant; // 교회이름
      sFromdate   : Variant;
      sTodate     : Variant;
      sCancerno   : Variant;
      sChacode    : Variant;
      sSmsyn      : Variant; //SMS수신동의 여부
      sTroubleno  : Variant;
      sMeddate    : Variant;
      sPatsite    : Variant;
      sInday      : Variant;
      sMedday     : Variant;
      sCfowncd    : Variant;
      sCfreqamt   : Variant;
      sCfownamt   : Variant;
      sCfchaamt   : Variant;
      sIssueno    : Variant;
      sCfownno    : Variant;
      sRcpdate    : Variant;
      sRcpseq     : Variant;
      sBfreqamt   : Variant;
      sBfchaamt   : Variant;
      sChatype    : Variant;
      sStype      : Variant;
      sScode      : Variant;
      sPscheck    : Variant;

      
      //-----------------------------------------------------------
      function patba_s3 : Integer;
      //-----------------------------------------------------------
      
   end;
//======================================================
// 출력권한코드
// 작성일 : 2012.07.18
// 작성자 : 곽 현
// 관련 테이블 : CCCAPCKT
//======================================================
   Hcccapckt = class
     sType1	    : Variant;  // 검색조건1
     sType2	    : Variant;  // 검색조건2
     sType3	    : Variant;  // 검색조건3
     sType4	    : Variant;  // 검색조건4
     sType5	    : Variant;  // 검색조건5
     sType6	    : Variant;  // 검색조건6
     sType7	    : Variant;  // 검색조건7
     sType8	    : Variant;  // 검색조건8
     sType9	    : Variant;  // 검색조건9

     // 공통코드조회정보
     sCheck         : Variant;   // 캡쳐권한여부
     sCheck2        : Variant;   // 출력권한여부
     sExeid         : Variant;    // 실행파일
     sSdate         : Variant;    // 시작일
     sSdate2        : Variant;    // 시작일
     sEdate         : Variant;    // 종료일
     sEdate2        : Variant;    // 종료일
     sFormid        : Variant;    // 출력폼
     sRemark        : Variant;   // 사유
     sBtnname       : Variant;   // 버튼명
     sBtnremark     : Variant;    // 버튼설명
     sSeqno         : Variant;   // 일련번호
     sEditid        : Variant;     // 수정자
     sEditip        : Variant;     // 수정ip
     sWkareanm     : Variant;    // 근무처
     sJikgunnm     : Variant;     // 직군
     sJikgupnm     : Variant;     // 직위
     sEmpnm        : Variant;    // 사원번호
     sWkareacd     : Variant;     // 근무처
     sJikgun       : Variant;      // 직군
     sJikgup       : Variant;      // 직위
     sEmpno        : Variant;     // 사원번호

     function listcccapckt2   : integer;    //화면캡쳐 허용조회
   end;

//======================================================
// 출력권한코드
// 작성자 : 곽 현
// 관련 테이블 : CCBTNCKT
// 2015인증평가, 권한관리3차(출력물관리) by 곽현, KimDaeYong 2015-10-14
//======================================================
    Hccbtnckt = class
     sType1	    : Variant;  // 검색조건1
     sType2	    : Variant;  // 검색조건2
     sType3	    : Variant;  // 검색조건3
     sType4	    : Variant;  // 검색조건4
     sType5	    : Variant;  // 검색조건5

     // 공통코드조회정보
     sCheck2    : Variant;    // 출력권한여부

     // 공통코드조회
     function listccbtnckt1 : integer;
    end;

//======================================================
// 출력로그
// 작성일 : 2015.09.22
// 작성자 : 곽 현
// 관련 테이블 : CCPRTCKT
// 2015인증평가, 권한관리3차(출력물관리Log) by 곽현, KimDaeYong 2015-10-14
//======================================================
    HccPrtckt = class
     sType1	    : Variant;  // 검색조건1
     sType2	    : Variant;  // 검색조건2
     sType3	    : Variant;  // 검색조건3
     sType4	    : Variant;  // 검색조건4
     sType5	    : Variant;  // 검색조건5
     sType6	    : Variant;  // 검색조건6
     sType7	    : Variant;  // 검색조건7
     sType8	    : Variant;  // 검색조건8
     sType9	    : Variant;  // 검색조건9

     // 공통코드조회정보
     sCheck         : Variant;   // 캡쳐권한여부
     sCheck2        : Variant;    // 출력권한여부
     sExeid         : Variant;    // 실행파일
     sSdate         : Variant;    // 시작일
     sSdate2        : Variant;    // 시작일
     sEdate         : Variant;    // 종료일
     sEdate2        : Variant;    // 종료일
     sFormid        : Variant;    // 출력폼
     sRemark        : Variant;    // 사유
     sBtnname       : Variant;    // 버튼명
     sBtnremark     : Variant;    // 버튼설명
     sSeqno         : Variant;    // 일련번호
     sEditid        : Variant;    // 수정자
     sEditip        : Variant;    // 수정ip
     sWkareanm     : Variant;     // 근무처
     sJikgunnm     : Variant;     // 직군
     sJikgupnm     : Variant;     // 직위
     sEmpnm        : Variant;     // 사원번호
     sWkareacd     : Variant;     // 근무처
     sJikgun       : Variant;     // 직군
     sJikgup       : Variant;     // 직위
     sEmpno        : Variant;     // 사원번호
     sMeddept      : Variant;

     function InsertCcprtckt1 : integer;    //출력로그 등록
    end;

    //======================================================
    // 접근기록관리
    // 작성일 : 2018.12.07
    // 작성자 : 곽 현
    // 관련 테이블 : CCACCEST
    //청구소프트웨어암호화인증(접근기록관리) by 곽현.  KimDaeYong 2018-12-19
    //======================================================
    Hccaccest = class
     sType1	    : Variant;  // 검색조건1
     sType2	    : Variant;  // 검색조건2
     sType3	    : Variant;  // 검색조건3
     sType4	    : Variant;  // 검색조건4
     sType5	    : Variant;  // 검색조건5
     sType6	    : Variant;  // 검색조건6
     sType7	    : Variant;  // 검색조건7
     sType8	    : Variant;  // 검색조건8
     sType9	    : Variant;  // 검색조건9

     sUserid        : Variant;    // 사용자아이디
     sUserip        : Variant;    // 접속IP
     sPrgid         : Variant;    // 프로그램ID
     sFormid        : Variant;    // 출력폼
     sJobtype       : Variant;    // 수행업무

     function InsCcaccest     : integer;    //접근기록관리

    end;



var
      CCcomcdt : Tcccomcdt;
      CCzipcdt : Tcczipcdt;
      CCholydt : Tccholydt;
      CChosift : Tcchosift;
      APPATBAT : HAPPATBAT;
      cccapckt : Hcccapckt;
      CCBtnckt : HccBtnckt; //2015인증평가, 권한관리3차(출력물관리) by 곽현, KimDaeYong 2015-10-14
      CCPrtckt : HccPrtckt; //2015인증평가, 권한관리3차(출력물관리Log) by 곽현, KimDaeYong 2015-10-14
      CCAccest : HccAccest; //청구소프트웨어암호화인증(접근기록관리) by 곽현.  KimDaeYong 2018-12-19

implementation

// 공통코드 관리 클래스 ===========================================


//=========================================================
// 대분류, 소분류 목록 조회. { CC_COMCD_L }
//=========================================================
function Tcccomcdt.ccComcdtList(sLargcdParam, sComcddtlParam, sSortKeyParam: String; LargcdOrComcddlt: Integer; SearchOpt:integer = 1):Integer;
begin
   Result := -1;

   txAlloc;
   SetFldName('S_CODE1;S_CODE2;S_LASTVAL;L_NO1;L_NO2');
   // 대소분류 코드 매개변수 설정.
   SetFldValue(0,[sLargcdParam, sComcddtlParam, sSortKeyParam, LargcdOrComcddlt, SearchOpt]);

   if txGetF('CC_COMCD_L') then
   begin
      Result := GetRecordCnt('S_CODE1');
      GetFldVar('S_CODE1', sComcddtl);
      GetFldVar('S_NAME1', sCdabbrnm);
      GetFldVar('S_NUMVAL4', lCdprtseq);
   end;
   txFree;
end;

//=========================================================
// 대, 소분류 코드별 상세 정보 조회.
//=========================================================
function Tcccomcdt.ccComcdtDetail(sLargcdParam, sComcddtlParam: String):Integer;
begin
   Result := -1;

   txAlloc;
   SetFldName('S_CODE1;S_CODE2');
   // 대소분류 코드 매개변수 설정.
   SetFldValue(0,[sLargcdParam, sComcddtlParam]);

   if txGetF('CC_COMCD_S') then
   begin
      Result := GetRecordCnt('S_CODE1');

      GetFldVar('S_CODE1', sLargcd);
      GetFldVar('S_CODE2', sComcddtl);
      GetFldVar('S_NAME1', sCdabbrnm);
      GetFldVar('S_NAME2', sComcdnm);
      GetFldVar('S_NAME3', sCdprtnm);
      GetFldVar('S_NUMVAL4', lCdprtseq);
      GetFldVar('S_NUMVAL1', sCdvalue);
      GetFldVar('S_NUMVAL2', sCdmaxval);
      GetFldVar('S_NUMVAL3', sCdminval);
      GetFldVar('S_NAME4', sCdetca);
      GetFldVar('S_NAME5', sCdetcb);
      GetFldVar('S_NAME6', sCdetcc);
      GetFldVar('S_NAME7', sRemark);
      GetFldVar('S_EDITID', sEditid);
      GetFldVar('S_EDITIP', sEditip);
      GetFldVar('S_EDITDATE', tEditdate);
      GetFldVar('S_DELDATE', tDeldate);
   end;

   txFree;
end;

//=========================================================
// 대소분류 코드별 상세정보 수정. { CC_COMCD_U }
//=========================================================
function Tcccomcdt.ccComcdtUpdate(sLargcdParam, sComcddtlParam, sSelflag: String):Integer;
begin
   Result := -1;

   txAlloc;

   SetFldName('S_CODE1;S_CODE2;S_FLAG1;S_NAME1;S_NAME2;S_NAME3;S_NUMVAL4;'+
              'S_NUMVAL1;S_NUMVAL2;S_NUMVAL3;S_NAME4;S_NAME5;S_NAME6;S_NAME7;'+
              'S_EDITID;S_EDITIP;S_EDITDATE;S_DELDATE');

   SetFldValue(0,[sLargcd, sComcddtl, sSelflag, sCdabbrnm,sComcdnm,
               sCdprtnm,lCdprtseq,sCdvalue,sCdmaxval,sCdminval,sCdetca,
               sCdetcb,sCdetcc,sRemark,sEditid,sEditip,tEditdate,tDeldate]);

   if txPutF('CC_COMCD_U') then
   begin
      Result := 1;
   end;

   txFree;
end;
/////////////mis
function Tcccomcdt.ccComcdtUpdate2(sLargcdParam, sComcddtlParam, sSelflag: String):Integer;
begin
   Result := -1;

   txAlloc;

   SetFldName('S_CODE1;S_CODE2;S_FLAG1;S_NAME1;S_NAME2;S_NAME3;S_NUMVAL4;'+
              'S_NUMVAL1;S_NUMVAL2;S_NUMVAL3;S_NAME4;S_NAME5;S_NAME6;S_NAME7;'+
              'S_EDITID;S_EDITIP;S_EDITDATE;S_DELDATE');

   SetFldValue(0,[sLargcd, sComcddtl, sSelflag, sCdabbrnm,sComcdnm,
               sCdprtnm,lCdprtseq,sCdvalue,sCdmaxval,sCdminval,sCdetca,
               sCdetcb,sCdetcc,sRemark,sEditid,sEditip,tEditdate,tDeldate]);

   if txGetF('CC_COMCD_U2') then
   begin
      Result := 1;
   end;

   txFree;
end;


//=========================================================
// 신규 대분류 / 소분류 코드를 등록한다.
//=========================================================
function Tcccomcdt.ccComcdtInsert(sSelflag: String):Integer;
begin
   Result := -1;

   txAlloc;
   SetFldName('S_CODE1;S_CODE2;S_FLAG1;S_NAME1;S_NAME2;S_NAME3;S_NUMVAL4;'+
              'S_NUMVAL1;S_NUMVAL2;S_NUMVAL3;S_NAME4;S_NAME5;S_NAME6;S_NAME7;'+
              'S_EDITID;S_EDITIP;S_EDITDATE;S_DELDATE');

   SetFldValue(0,[sLargcd, sComcddtl, sSelflag, sCdabbrnm,sComcdnm,
               sCdprtnm,lCdprtseq,sCdvalue,sCdmaxval,sCdminval,sCdetca,
               sCdetcb,sCdetcc,sRemark,sEditid,sEditip,tEditdate,tDeldate]);

   if txPutF('CC_COMCD_I') then
   begin
      Result := 1;
   end;

   txFree;
end;
////mis///////////////////////
function Tcccomcdt.ccComcdtInsert2(sSelflag: String):Integer;
begin
   Result := -1;

   txAlloc;
   SetFldName('S_CODE1;S_CODE2;S_FLAG1;S_NAME1;S_NAME2;S_NAME3;S_NUMVAL4;'+
              'S_NUMVAL1;S_NUMVAL2;S_NUMVAL3;S_NAME4;S_NAME5;S_NAME6;S_NAME7;'+
              'S_EDITID;S_EDITIP;S_EDITDATE;S_DELDATE');

   SetFldValue(0,[sLargcd, sComcddtl, sSelflag, sCdabbrnm,sComcdnm,
               sCdprtnm,lCdprtseq,sCdvalue,sCdmaxval,sCdminval,sCdetca,
               sCdetcb,sCdetcc,sRemark,sEditid,sEditip,tEditdate,tDeldate]);

   if txGetF('CC_COMCD_I2') then
   begin
      Result := 1;
   end;

   txFree;
end;

//=========================================================
// 데이터 삭제. 임시로 추가. { CC_COMCD_D }
//=========================================================
function Tcccomcdt.ccComcdtDelete(sLargcdParam, sComcddtlParam, sSelflag: String):Integer;
begin
   Result := -1;

   txAlloc;
   SetFldName('S_CODE1;S_CODE2;S_FLAG1');
   SetFldValue(0,[sLargcdParam, sComcddtlParam, sSelflag]);

   if txPutF('CC_COMCD_D') then
   begin
      Result := 1;
   end;

   txFree;
end;
////////////mis/////////////
function Tcccomcdt.ccComcdtDelete2(sLargcdParam, sComcddtlParam, sSelflag: String):Integer;
begin
   Result := -1;

   txAlloc;
   SetFldName('S_CODE1;S_CODE2;S_FLAG1');
   SetFldValue(0,[sLargcdParam, sComcddtlParam, sSelflag]);

   if txPutF('CC_COMCD_D2') then
   begin
      Result := 1;
   end;

   txFree;
end;




// 공휴일 관리 클래스 ===========================================





//=======================================================
// 년도별 공휴일 목록 조회. { CM_HOLYD_S }
//=======================================================
function Tccholydt.ccHolidList(sParam: String):Integer;
begin
   Result := -1;

   txAlloc;
   SetFldName('S_DATE1');
   SetFldValue(0,[sParam]);

   if txGetF('CC_HOLYD_S') then
   begin
      Result := GetRecordCnt('S_DATE1');
      GetFldVar('S_DATE1', tHoliday);
      GetFldVar('S_NAME1', sHolidtnm);
      GetFldVar('S_TYPE1', sHolitype);
      GetFldVar('S_YN1', sMuseyn);
      GetFldVar('S_YN2', sSuseyn);
      GetFldVar('S_YN3', sAuseyn);
      GetFldVar('S_YN4', sGuseyn);
      GetFldVar('S_YN5', sSpdietyn);

      GetFldVar('S_EDITID', sEditid);
      GetFldVar('S_EDITIP', sEditip);
      GetFldVar('S_EDITDATE', tEditdate);
      GetFldVar('S_DELDATE', tDeldate);
   end;
   txFree;
end;

//=======================================================
// 휴일별 상세 정보 수정. { CC_HOLYD_U }
//=======================================================
function Tccholydt.ccHolidUpdate():Integer;
begin
   Result := -1;

   txAlloc;
   SetFldName('S_DATE1;S_NAME1;S_TYPE1;S_YN1;S_YN2;S_YN3;S_YN4;'+
               'S_YN5;S_EDITID;S_EDITIP;S_EDITDATE;S_DELDATE');
   SetFldValue(0,[tHoliday,sHolidtnm,sHolitype,sMuseyn,sSuseyn,sAuseyn,sGuseyn,
                  sSpdietyn,sEditid,sEditip,tEditdate,tDeldate]);

   if txPutF('CC_HOLYD_U') then
   begin
      Result := 1;
   end;
end;

//=======================================================
// 입력년도내의 모든 일요일 추가.
// { CC_HOLYD_I2 }
//=======================================================
function Tccholydt.ccHolidGensunday(sYearParam: String):Integer;
begin
   Result := -1;

   txAlloc;
   SetFldName('S_DATE1');
   SetFldValue(0,[sYearParam]);

   if txPutF('CC_HOLYD_I2') then
   begin
      Result := 1;
   end;
   txFree;
end;

//=======================================================
// 신규 휴일정보 등록.
// { CC_HOLYD_I }
//=======================================================
function Tccholydt.ccHolidInsert():Integer;
begin
   Result := -1;

   txAlloc;
   SetFldName('S_DATE1;S_NAME1;S_TYPE1;S_YN1;S_YN2;S_YN3;S_YN4;'+
               'S_YN5;S_EDITID;S_EDITIP;S_EDITDATE;S_DELDATE');
   SetFldValue(0,[tHoliday,sHolidtnm,sHolitype,sMuseyn,sSuseyn,sAuseyn,sGuseyn,
                  sSpdietyn,sEditid,sEditip,tEditdate,tDeldate]);

   if txPutF('CC_HOLYD_I1') then
   begin
      Result := 1;
   end;
end;

//=======================================================
// 휴일정보 삭제. { CC_HOLYD_D }
//=======================================================
function Tccholydt.ccHolidDelete():Integer;
begin
   Result := -1;

   txAlloc;
   SetFldName('S_DATE1');
   SetFldValue(0,[tHoliday]);

   if txPutF('CC_HOLYD_D') then
   begin
      Result := 1;
   end;
   txFree;
end;




// 우편번호 관리 클래스 ===========================================





//=========================================================
// 우편번호 검색. { CC_ZIPCDT_S }
// 읍면동의 이름(sDongParam)을 이용한 검색.
//=========================================================
function Tcczipcdt.cczipcdtList(sDongParam : String):Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_NAME1;');
   SetFldValue(0,[sDongParam]);

   if txGetF('CC_ZIPCD_S') then
   begin
      Result := GetRecordCnt('S_NAME1');
      GetFldVar('S_NAME1', sZipcode);
      GetFldVar('S_NAME2', sSido);
      GetFldVar('S_NAME3', sGugun);
      GetFldVar('S_NAME4', sDong);
      GetFldVar('S_NAME5', sBunji);
      GetFldVar('S_NAME6', sAreaclas);
      GetFldVar('S_NAME7', tDeldate);
   end;
   txFree;
end;

//=========================================================
// 실제적인 삭제를 수행하지 않고 테이블 field DELDATE를 삭제시간으로 설정.
// 추후에 CLEAR버튼을 클릭한 경우에 체크되어 있는 레코드만 삭제.
//=========================================================
procedure Tcczipcdt.SetzipcdsData(sParam : String; iFlag : Integer);
begin
   case iFlag of
      0 : // 우편번호
         sZipcode := sParam;
      1 : // 시도
         sSido := sParam;
      2 : // 구군
         sGugun := sParam;
      3 : // 읍면동
         sDong := sParam;
      4 : // 번지
         sBunji := sParam;
      5 : // 지역번호
         sAreaclas := sParam;
   end;
end;

//=========================================================
// 우편번호 등록 { CC_ZIPCDT_I }
//=========================================================
function Tcczipcdt.cczipcdtInsert(sId, sIp :String):Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_NAME1;S_NAME2;S_NAME3;S_NAME4;S_NAME5;S_NAME6;S_NAME7;S_NAME8');
   SetFldValue(0,[sZipcode, sSido, sGugun, sDong, sBunji, sAreaclas, sId, sIp]);

   if txPutF('CC_ZIPCD_I') then
   begin
        Result := 1;
   end;

   txFree;
end;

//=========================================================
// 우편번호 수정 { CC_ZIPCDT_U }
//=========================================================
function Tcczipcdt.cczipcdtUpdate(sId, sIp :String):Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_NAME1;S_NAME2;S_NAME3;S_NAME4;S_NAME5;S_NAME6;S_NAME7;S_NAME8');
   SetFldValue(0,[sZipcode, sSido, sGugun, sDong, sBunji, sAreaclas, sId, sIp]);

   if txPutF('CC_ZIPCD_U') then
   begin
        Result := 1;
   end;

   txFree;
end;

//=========================================================
// 우편번호 삭제 - 표시만 한다. DELDATE에 현재날짜시간 표시. { CC_ZIPCDT_D }
//=========================================================
function Tcczipcdt.cczipcdtDelete(sZipcode, sIp :String):Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_NAME1;S_NAME2');
   SetFldValue(0,[sZipcode, sIp]);

   if txPutF('CC_ZIPCD_D') then
   begin
         ShowErrMsg;
         Result := 1;
   end;

   txFree;
end;

//=========================================================
// DELDATE가 설정되어 있는 우편번호 레코드를 모두 삭제한다.
//=========================================================
function Tcczipcdt.cczipcdtClear(sId, sIp : String):Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_NAME1;S_NAME2');
   SetFldValue(0,[sId, sIp]);

   if txPutF('CC_ZIPCD_C') then
   begin
         ShowErrMsg;
         Result := 1;
   end;

   txFree;
end;





// 병원정보 관리 클래스 ===========================================





//=========================================================
// 병원정보 검색. { CC_HOSIF_S }
// 병원명을 이용한 검색.
//=========================================================
function Tcchosift.cchosifList(sHsptnameParam : String):Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_NAME1;');
   SetFldValue(0,[sHsptnameParam]);

   if txGetF('CC_HOSIF_S') then
   begin
      Result := GetRecordCnt('S_NAME1');

      GetFldVar('S_TYPE1', sLocate);
      GetFldVar('S_TYPE2', sInsurid);
      GetFldVar('S_TYPE3', sIndusid);
      GetFldVar('S_NUMVAL1',   sBedcount);
      GetFldVar('S_NAME1', sHsptname);
      GetFldVar('S_NAME2', sPrsdname);
      GetFldVar('S_RESNO', sPrsdreno);
      GetFldVar('S_NAME3', sAddress);
      GetFldVar('S_TELNO', sTelno);
      GetFldVar('S_NUMVAL2',sFaxno);
      GetFldVar('S_NUMVAL3',sZipcd);
      GetFldVar('S_EDITID', sEditid);
      GetFldVar('S_EDITIP', sEditip);
      GetFldVar('S_EDITDATE', tEditdate);
   end;
   txFree;
end;

//=========================================================
// 신규 병원정보 등록 { CC_HOSIF_I }
//=========================================================
function Tcchosift.cchosifInsert(sId, sIp :String):Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_NAME1;S_NUMVAL1;'+
               'S_NAME2;S_RESNO;S_ADDRESS;S_TELNO;S_NUMVAL2;'+
               'S_NUMVAL3;S_EDITID;S_EDITIP;S_EDITDATE');
   SetFldValue(0, [sLocate,sInsurid,sIndusid,sHsptname,sBedcount,
                  sPrsdname,sPrsdreno,sAddress,sTelno,sFaxno,sZipcd,
                  sId,sIp,tEditdate]);

   if txPutF('CC_HOSIF_I') then
   begin
        Result := 1;
   end;

   txFree;
end;

//=========================================================
// 병원정보 수정 { CC_HOSIF_U }
//=========================================================
function Tcchosift.cchosifUpdate(sId, sIp :String):Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_NAME1;S_NUMVAL1;'+
              'S_NAME2;S_RESNO;S_ADDRESS;S_TELNO;S_NUMVAL2;'+
              'S_NUMVAL3;S_EDITID;S_EDITIP;S_EDITDATE');
   SetFldValue(0, [sLocate,sInsurid,sIndusid,sHsptname,sBedcount,
                   sPrsdname,sPrsdreno,sAddress,sTelno,sFaxno,
                   sZipcd,sId,sIp,tEditdate]);

   if txPutF('CC_HOSIF_U') then
   begin
        Result := 1;
   end;

   txFree;
end;

//=========================================================
// 병원정보 삭제. 완전삭제를 수행한다. { CC_HOSIF_D }
//=========================================================
function Tcchosift.cchosifDelete():Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_TYPE1');
   SetFldValue(0,[sLocate]);
   if txPutF('CC_HOSIF_D') then
   begin
         ShowErrMsg;
         Result := 1;
   end;

   txFree;
end;


//=========================================================

function HAPPATBAT.PATBA_S3 : Integer;
begin
   Result := -1;
   txAlloc;

   if sFlag = '1' then
   begin
      SetFldName('S_FLAG1;S_PATNO');
      SetFldValue(0,[String(sFlag),String(sPatno)]);
   end
   else if sFlag = '2' then
   begin
      SetFldName('S_FLAG1;S_NO1;S_NO2');
      SetFldValue(0,[String(sFlag),String(sResno1),String(sResno2)]);
   end
   else if sFlag = '3' then
   begin
      SetFldName('S_FLAG1;S_PATNAME');
      SetFldValue(0,[String(sFlag),String(sPatname)]);
   end;

   if txGetF('AP_PATBA_S3') then
   begin
      Result := GetRecordCnt('S_PATNO');
      GetFldVar('S_PATNO'    ,  sPatno  );
      GetFldVar('S_PATNAME'  ,  sPatname);
      GetFldVar('S_NO1'      ,  sResno1 );
      GetFldVar('S_NO2'      ,  sResno2 );
      GetFldVar('S_CODE1'    ,  sZipcd  );
      GetFldVar('S_ADDRESS'  ,  sAddress);
      GetFldVar('S_STRING1'  ,  sPscheck);
      txFree;
   end;
end;

function Hcccapckt.listcccapckt2 :Integer;
begin
   Result := -1;
   TxAlloc;
   SetFldName('S_TYPE1;S_TYPE2');
   SetFldValue(0,[sType1,sType2]);
   if TxGetF('CC_CAPCK_L2') then     // cc_capck_l2.pc
   begin
       GetFldVar('S_STRING1' , sCheck2   );
       Result := GetRecordCnt('S_STRING1');
       txFree;
   end;
end;

//2015인증평가, 권한관리3차(출력물관리) by 곽현, KimDaeYong 2015-10-14
function Hccbtnckt.listccbtnckt1 :Integer;
begin
   Result := -1;
   TxAlloc;
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
   SetFldValue(0,[sType1,sType2,sType3,sType4]);
   if TxGetF('CC_BTNCK_L1') then     // cc_btnck_l1.pc
   begin
       GetFldVar('S_STRING1' , sCheck2   );
       Result := GetRecordCnt('S_STRING1');
       txFree;
   end;
end;

//2015인증평가, 권한관리3차(출력물관리Log) by 곽현, KimDaeYong 2015-10-14
function Hccprtckt.InsertCcprtckt1 :Integer;
begin
   Result := -1;

   txAlloc;

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8');
   SetFldValue(0,[sType1, sType2, sType3, sType4, sType5, sType6, sType7, sType8]);
if (txPutF('CC_PRTCK_I1')) then
   begin
        Result := 1;
   end;
   txFree;
end;

//청구소프트웨어암호화인증(접근기록관리) by 곽현.  KimDaeYong 2018-12-19
function Hccaccest.InsCcaccest :Integer;
begin
   Result := -1;

   txAlloc;
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5');
   SetFldValue(0,[sType1, sType2, sType3, sType4,sType5]);

   if txPutF('CC_ACCES_I1') then     //cc_acces_i1.pc
   begin
      Result := 1;
   end;

   txFree;
end;




end.

// End of Source ===========================================

