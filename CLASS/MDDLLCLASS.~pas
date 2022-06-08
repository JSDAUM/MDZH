////////////////////////////////////////////////////////////////////////////////
// 진료시스템의 CLASS Define                                                  //
//  HmdPdiagd 	환자진단내역                                                   //
//  HmdAdinfd 	간호정보조사지(일반성인)                                       //
//  HmdPdinfd 	간호정보조사지(소아)                                           //
//  HmdOginfd 	간호정보조사지(산부인과)                                       //
//  HmdNbinfd 	간호정보조사지(신생아)                                         //
//  HmdPyinfd 	간호정보조사지(정신과)                                         //
//  HmdInsamt 	인사마스타                                                     //
////////////////////////////////////////////////////////////////////////////////

unit MDDLLCLASS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
    // 환자진단내역
    HmdPdiagd = class
     sPatNo	    : Variant;  // 환자번호
     sMedDept	 : Variant;  // 진료과
     sMedDate	 : Variant;  // 진료일자/입원일자
     iSeqNo     : Variant;  // 순번
     sRgtDate	 : Variant;  // 등록일자
     sPatSect	 : Variant;  // 환자구분
     sDiagCd	 : Variant;  // 진단코드(ICD-10)
     sDiagName	 : Variant;  // 과진단명/질병명
     sMainDiag	 : Variant;  // 주진단여부
     sCficdYn	 : Variant;  // 확정상병여부(의증/확진여부)
     sChaDr 	 : Variant;  // 주치의사
     sGenDr 	 : Variant;  // 담당의사
     sOlddxYn	 : Variant;  // 지병구분
     sAdmdxYn	 : Variant;  // 입원진단여부
     sEndDate	 : Variant;  // 진단종료일
     sRemark	 : Variant;  // 특기사항
     sTeeUplt	 : Variant;  // 치열(상좌)
     sTeeUprt	 : Variant;  // 치열(상우)
     sTeeDwlt	 : Variant;  // 치열(하좌)
     sTeeDwrt	 : Variant;  // 치열(하우)
     sInfyn     : Variant;  // 전염병여부
     sEditId	 : Variant;  // 수정자 ID
     sEditIp	 : Variant;  // 수정자 IP
     sEditDate	 : Variant;  // 수정일시
     sDeptNm    : Variant;  // 진료과명
     sChaDrNm	 : Variant;  // 주치의사명
     sGenDrNm	 : Variant;  // 담당의사명
     sInDate	 : Variant;  // 내원일시
     sOutDate	 : Variant;  // 퇴원일시
     sStayYn    : Variant;  // 재원여부
     sWardRoom  : Variant;  // 병동-호실
     //환자진단내역 조회(1.현진단 2.진단이력)
     function ListPatDiagdll(PatNo,MedDept,MedDate,Locate,QryKind:String):Integer;
     //환자진단내역 Insert (Multi Input)
     function InsertPatDiagdll(Cnt:Integer):Integer;
     //환자진단내역 Delete
     function DeletePatDiagdll(PatNo,MedDept,MedDate:String;SeqNo:LongInt):Integer;
     //환자 수진이력 List 조회
     function ListDiagHistorydll(PatNo,Locate:String):Integer;
     // 과거진단을 현진단으로 Insert
     function InsertNewDiagdll(PatNo,MedDept,MedDate,MedDr,PatSect,EditId,EditIp:String):Integer;

    end;


    // 간호정보조사지(일반성인)
    HmdAdinfd = class
     sPatNo	    : Variant;  // 환자번호
     sAdmDate	 : Variant;  // 입원일자
     sMedDept	 : Variant;  // 진료과
     sDeptNm    : Variant;  // 진료과명
     sRecType   : Variant;  // 양식종류(1:성인, 2:정신과)
     sChaDr	    : Variant;  // 주치의
     sGenDr	    : Variant;  // 담당의
     sWardNo	 : Variant;  // 병동번호
     sRoomNo	 : Variant;  // 병실번호
     sDiagCd	 : Variant;  // 진단코드(ICD-10)
     sDschDate	 : Variant;  // 퇴원일자
     sInfDnr	 : Variant;  // 정보제공자
     sTelNo	    : Variant;  // 전화번호
     sAddress	 : Variant;  // 주소
     sBldAbo	 : Variant;  // 혈액형(ABO)
     sBldRh	    : Variant;  // 혈액형(RH)
     sEdudGr	 : Variant;  // 교육정도
     sReligion	 : Variant;  // 종교
     sJob	    : Variant;  // 직업
     sHabdrkYn	 : Variant;  // 음주유무
     sHabdrkSp	 : Variant;  // 음주주종
     sHabdrkDg	 : Variant;  // 음주정도
     sHabdrkCt	 : Variant;  // 음주횟수
     sHabdrkPd	 : Variant;  // 음주기간(년)
     sHabsmkYn	 : Variant;  // 흡연유무
     sHabsmkDg	 : Variant;  // 흡연정도(갑/일)
     sHabsmkPd	 : Variant;  // 흡연기간(년)
     sAdmPath	 : Variant;  // 입원경로
     sInMthd	 : Variant;  // 입원방법
     sSymptoms	 : Variant;  // 입원동기 주증상
     sIndzfDt	 : Variant;  // 최초발병일
     sIndzlDt	 : Variant;  // 최근발병일
     sAdmovDet	 : Variant;  // 입원동기_상세
     sHxdzYn	 : Variant;  // 과거병력여부
     sHxdzDt	 : Variant;  // 과거병력상세
     sHxopYn	 : Variant;  // 과거수술여부
     sHxopDt	 : Variant;  // 과거수술상세
     sAlgYn	    : Variant;  // 알러지여부
     sAlgFd	    : Variant;  // 알러지내역 음식
     sAlgDg	    : Variant;  // 알러지내역 약품
     sLstdrGst	 : Variant;  // 최근투약상태
     sAckYn	    : Variant;  // 병식여부
     sAckDt	    : Variant;  // 병식상세
     sFhxfCd	 : Variant;  // 가족력/부
     sFhxfDet	 : Variant;  // 가족력/부 상세
     sFhxmCd	 : Variant;  // 가족력/모
     sFhxmDet	 : Variant;  // 가족력/모 상세
     sFhxbCd	 : Variant;  // 가족력/형제
     sFhxbDet	 : Variant;  // 가족력/형제 상세
     sFhxEtc	 : Variant;  // 가족력/기타
     sDfrmYn	 : Variant;  // 신체 기형유무
     sDfrmDt	 : Variant;  // 신체 기형상세
     sPainYn	 : Variant;  // 신체 동통유무
     sPainPrt	 : Variant;  // 신체 동통부위
     sPainDt	 : Variant;  // 신체 동통상태
     sAppDt	    : Variant;  // 식욕정도
     sWtYn      : Variant;  // 체중변화유무
     sWtDt	    : Variant;  // 체중변화상세
     sSlpTm	    : Variant;  // 습관 수면시간
     sSlpDso	 : Variant;  // 습관 수면장애
     sSlpAd	    : Variant;  // 습관 수면돕는법
     sFecCnt	 : Variant;  // 습관 대변횟수
     sFecCol	 : Variant;  // 습관 대변색
     sFecChr	 : Variant;  // 습관 대변특징
     sFecChrdt	 : Variant;  // 습관 대변특징 상세
     sUrCnt	    : Variant;  // 습관 소변횟수
     sUrQnt	    : Variant;  // 습관 소변양
     sUrCol	    : Variant;  // 습관 소변색
     sUrFlv	    : Variant;  // 습관 소변냄새
     sUrChr	    : Variant;  // 습관 소변특징
     sSknunYn	 : Variant;  // 신체 피부상태 이상여부
     sSknunPt	 : Variant;  // 신체 피부상태 이상부위
     sSknunDg	 : Variant;  // 신체 피부상태 이상상태
     sSkncunYn	 : Variant;  // 신체 피부색 이상여부
     sSkncunPr	 : Variant;  // 신체 피부색 이상부위
     sSkncunDg	 : Variant;  // 신체 피부색 이상상태
     sDietYn	 : Variant;  // 소화기 장애 여부
     sDietSt	 : Variant;  // 소화기장애증상
     sCircYn	 : Variant;  // 순환기장애 여부
     sCircst	 : Variant;  // 순환기장애 증상
     sNeoYn	    : Variant;  // 부종유무
     sNeoPrt	 : Variant;  // 부종부위
     sNeotrcYn	 : Variant;  // 부종요흔유무
     sRespYn	 : Variant;  // 호흡기 장애여부
     sRespSt	 : Variant;  // 호흡기 장애증상
     sPupilSz	 : Variant;  // 동공크기
     sPupilSzl	 : Variant;  // 동공크기 좌
     sPupilSzr	 : Variant;  // 동공크기 우
     sPuprefL	 : Variant;  // 빛반사 좌
     sPuprefR	 : Variant;  // 빛반사 우
     sEyeYn	    : Variant;  // 시력장애여부
     sEyeL	    : Variant;  // 시력장애 좌
     sEyeR	    : Variant;  // 시력장애 우
     sEarYn 	 : Variant;  // 신체 청력 장애 유무
     sEarL	    : Variant;  // 신체 청력 장애 좌
     sEarR  	 : Variant;  // 신체 청력 장애 우
     sEarLd	    : Variant;  // 신체 청력장애 좌 기타
     sEarRd	    : Variant;  // 신체 청력장애 우 기타
     sNemuSt	 : Variant;  // 신경근육상태
     sNemuPt	 : Variant;  // 신경근육상태 부위
     sParYn	    : Variant;  // 신체 마비여부
     sParDnd	 : Variant;  // 신체 마비부위 하지
     sParUpd	 : Variant;  // 신체 마비부위 상지
     sMan   	 : Variant;  // 지남력 사람
     sDtime 	 : Variant;  // 지남력 시간
     sPlc   	 : Variant;  // 지남력 장소
     sConsStat  : Variant;  // 의식상태
     sAchrxn	 : Variant;  // 통증반응
     sComm  	 : Variant;  // 의사소통
     sFeelStat	 : Variant;  // 정서상태
     sEmosTsd	 : Variant;  // 정서상태 상세
     sActFr 	 : Variant;  // 활동자유도
     sAuxYn 	 : Variant;  // 보조기 유무
     sAuxSt 	 : Variant;  // 보조기 상태
     sAuxDt 	 : Variant;  // 보조기 상세
     sInEdu1	 : Variant;  // 입원시 간호 및 교육상태
     sInEdu2	 : Variant;  // 입원시 간호 및 교육상태
     sInEdu3	 : Variant;  // 입원시 간호 및 교육상태
     sInEdu4	 : Variant;  // 입원시 간호 및 교육상태
     sInEdu5	 : Variant;  // 입원시 간호 및 교육상태
     sInEdu6	 : Variant;  // 입원시 간호 및 교육상태
     sInEdu7	 : Variant;  // 입원시 간호 및 교육상태
     sInEdu8	 : Variant;  // 입원시 간호 및 교육상태
     sInEdu9	 : Variant;  // 입원시 간호 및 교육상태
     sNreduetc  : Variant;  // 기타교육사항
     sTelno1    : Variant;  // 전화번호1
     sTelno2    : Variant;  // 전화번호2
     sRecnrs    : Variant;  // 작성자
     sFecday    : Variant;
     sUrday     : Variant;
     sHeight    : Variant;  // 신장
     sWeight    : Variant;  // 체중
     sEditId	 : Variant;  // 수정자 ID
     sEditIp	 : Variant;  // 수정자 IP
     sEditDate	 : Variant;  // 수정일시
     //(추가. 2003.1.11 이용언)
     sGubun     : Variant;
     sWedyn     : Variant;
     sAlgetc    : Variant;
     sOpstat    : Variant;
     sPhist     : Variant;
     sCondst    : Variant;
     sConcom    : Variant;
     sfirstbl   : Variant;
     sTerm      : Variant;
     sMensamt   : Variant;
     sMenspain  : Variant;
     sDaehwa    : Variant;
     sClrph     : Variant;
     sStool     : Variant;
     sSleep     : Variant;
     sSleepdg   : Variant;
     sDrink     : Variant;
     sTabaco    : Variant;
     s1         : Variant;
     s2         : Variant;
     s3         : Variant;
     s4         : Variant;
     s5         : Variant;
     s6         : Variant;
     s7         : Variant;
     s8         : Variant;
     s9         : Variant;
     s10        : Variant;
     s11        : Variant;
     s12        : Variant;
     s13        : Variant;
     s14        : Variant;
     sfamrela   : Variant;
     sAdmreson  : Variant;
     sPatnm     : Variant;
     sSex       : Variant;
     sBirth     : Variant;
     sCitizen   : Variant;
     sBodytemp  : Variant;
     sPulse     : Variant;
     sRespcnt   : Variant;
     sBldprehi  : Variant;
     sBldprelo  : Variant;
     sBldtype   : Variant;
     sLastbl    : Variant;
     sMostchk   : Variant;
     sMosttxt   : Variant;
     sAppetite  : Variant;
     sWetchg    : Variant;

     sAdmlast   : Variant;
     sDeformt   : Variant;
     sFeceskd   : Variant;
     sUrinkd    : Variant;
     sNerves    : Variant;
     sSkinst    : Variant;
     sChType    : Variant;
     sActivest  : Variant;
     sChildcnt  : Variant;
     sSleephr   : Variant;
     sRecnrsnm  : Variant;
     sChaDrnm   : Variant;
     sGenDrnm   : Variant;

     sTabacoflag: Variant; //흡연구분
     sEdutabaco : Variant; //금연교육

     sDiagName  : Variant;
     sSymptom   : Variant;

     // 2011.02 병원 인증 추가 필드
     sNation    : Variant;
     sRace      : Variant;
     sPay       : Variant;
     sBokji     : Variant;
     sKnow      : Variant;
     sArganti   : Variant;
     sDysphagia : Variant;
     sStress    : Variant;
     sSafeEdu   : Variant;
     sOutEdu1   : Variant;
     sOutEdu2   : Variant;
     sOutEdu3   : Variant;
     sOutEdu4   : Variant;
     sOutedu5   : Variant;
     sFrecdate  : Variant;  //최초기록일시, KimDaeYong 2011-06-08
     sRegdate   : Variant;  // 입원등록일시, 김송주 2011-10-06
     sBloodyn   : Variant;
     sCultueretc: Variant;
     // 초기퇴원계획/입원간호교육, KimDaeYong 2011-07-14
     sPatstay		 : Variant;
     sDwell		     : Variant;
     sNursmen		 : Variant;
     sEat			 : Variant;
     sEatoth		 : Variant;
     sBath			 : Variant;
     sBathoth		 : Variant;
     sPrevyn		 : Variant;
     sPrevcont		 : Variant;
     sWeightyn		 : Variant;
     sWeightcont	 : Variant;
     sMouseyn		 : Variant;
     sMousecont	     : Variant;
     sSuckyn		 : Variant;
     sSuckcont		 : Variant;
     sSkinyn		 : Variant;
     sSkincont		 : Variant;
     sFeceyn		 : Variant;
     sFececont		 : Variant;
     sTubeyn		 : Variant;
     sTubecont		 : Variant;
     sUmbilyn		 : Variant;
     sUmbilcont	     : Variant;
     sFluyn		     : Variant;
     sFlucont		 : Variant;
     sAftyn		     : Variant;
     sAftcont		 : Variant;
     sOthyn		     : Variant;
     sOthcont		 : Variant;
     sDismove		 : Variant;
     sArticle		 : Variant;
     sMeet			 : Variant;
     sConsult		 : Variant;
     sBrstmilk		 : Variant;
     sDisprod		 : Variant;
     sDispaper		 : Variant;
     sHosinfo		 : Variant;

     sBlood      : Variant;
     sCultuerect : Variant;
     sStayyn     : Variant;
     sBring      : Variant;
     sSmoking    : Variant;

     sSignData   : Variant;
     sSerialNo   : Variant;
     sSubjectDN  : Variant;

     sHseq       : Variant;
     sEditname   : Variant;

    // 신생아 간호정보조사지
    //function SelMdnbinftdll(sPatNo, sAdmDate : String):Integer;
    //이력조회.20181015.kya.
    function SelMdnbinftdll(sPatNo, sAdmDate, Type3 : String):Integer;
    // 간호정보조사지 내용 입력(신생아)
    function InsMdNbinftdll(sPatNo,    sAdmDate,  sMedDept,  sAdmTime,  sChaDr,     sGenDr,
                         sWardNo,   sRoomNo,   sDiagCd,   sBornDate, sDgpWks,
                         sDgpDay,   sWeight,   sSex,      sDelType,  sApgahr1,
                         sApgahr5,  sParity,   sDelMark,  sDelMark1, sDelMark2,
                         sDelMark3, sDelMark4, sDelMark5, sRemark,   sHyn,
                         sStlCnt,   sStlCol,   sOxygenYN, sOxygen,   sTempKind,
                         sBodyTemp, sHrtbt,    sResp,     sHeight,   sHeadSize,
                         sChstSize, sBodySize, sNabelYn,  sEyeYn,    sVitamin,
                         sVaccine,  sHbct,     sCryRate,  sRespYn,   sRespEtc,
                         sCircYn,   sCircEtc,  sSknunYn,  sSknunSt,  sHeadFr,
                         sHeadAir,  sHeadEtc,  sFaceYn,   sFaceEtc,  sNabelVs1,
                         sNabelVs2, sBloodYn,  sUriyn,    sUriEtc,   sLimYn,
                         sLimSt1,   sLimSt2,   sLimStLR,  sDiaref,   sDiarefAs,
                         sCatref,   sCatrefAs, sPumref,   sLactref,  sDfrmetc,
                         sNurse,    sEditid,   sEditip,   sDiagName, sSymptom,
                         //초기퇴원계획/입원간호교육, KimDaeYong 2011-07-14
                         sPatstay	, sDwell   , sNursmen  , sEat	  , sEatoth	 ,
                         sBath	    , sBathoth , sPrevyn   , sPrevcont, sWeightyn,
                         sWeightcont, sMouseyn , sMousecont, sSuckyn  , sSuckcont,
                         sSkinyn	, sSkincont, sFeceyn   , sFececont, sTubeyn	 ,
                         sTubecont  , sUmbilyn , sUmbilcont, sFluyn	  , sFlucont ,
                         sAftyn	    , sAftcont , sOthyn	   , sOthcont , sDismove ,
                         sArticle	, sMeet	   , sConsult  , sBrstmilk, sDisprod ,
                         sDispaper  , sHosinfo,xSignData,xSerialNo,xSubjectDN, sBring : String):Integer;
    // 간호정보조사지 - 일반 신규
    function insertAdinfdll2(sPatno,tAdmdate,sRecnrs,sJob,sDiagcd,
                             sInfdnr,sWedyn,sEdudgr,sTelno1,sTelno2,
                             sAdmpath,sInmthd,sAlgyn,sAlgdg,sAlgfd,
                             sAlgetc,s1,sLstdrgst,s2,sfamrela,
                             sOpstat,sPhist,sCondst,sConcom,s3,
                             s4,s5,s6,s7,sBldrh,
                             sfirstbl,sTerm,sMensamt,sMenspain,sDaehwa,
                             sClrph,s8,s9,s10,s11,
                             s12,s13,s14,sStool,sSleep,
                             sSleepdg,sDrink,sTabaco,sAdmreson,sInedu1,
                             sInedu2,sInedu3,sInedu4,sInedu5,sInedu6,
                             sInedu7,sInedu8,sInedu9,sNreduetc,sEditid,
                             Editip,sMeddept, sChadr,sGendr,sWardno,
                             sRoomno,sBodyTemp, sPulse,    sRespCnt,  sBldPreHI,
                             sBldPreLO, sWeight,   sHeight,   sBldType,  sAppetite,
                             sWetchg,   sLastbl,   sMostchk,  sMosttxt,  sAdmlast,
                             s15,       s16,       s17,       s18,       s19,
                             sChType,   sActivest, sChildcnt, sleephr,
                             sTabacoflag, sEdutabaco,
                             sNation,   sRace,     sPay,      sBokji,    sKnow,
                             sArganti,  sDysphagia,sStress,   sSafeEdu,
                             sOutEdu1,  sOutEdu2,  sOutEdu3,  sOutEdu4,  sOutEdu5,
                             sBlood,    sCultuerect, xSignData,xSerialNo,xSubjectDN,sBring,sSmoking : String):Integer;
    //이력관리조회.20181012.kya.
   // function SelAdinfdll2(sType1, sType2:String):Integer;
      function SelAdinfdll2(sType1, sType2, sType3:String):Integer;
    //(추가. 2003.1.15 이용언)
   // function SelAdinfHistorydll2(sPatNo, sType1:String):Integer;
    function SelAdinfHistorydll2(sPatNo, sType1, sType2:String):Integer;
    function SelAdinfHistorydll3(sWard, sType1: string): Integer;
    end;

    // 간호정보조사지(소아)
    HmdPdinfd = class
      sPatno     : Variant; //환자번호
      sAdmdate   : Variant; //입원일자
      sMeddept   : Variant; //진료과/진료부서
      sChadr     : Variant; //담당교수
      sGendr     : Variant; //주치의
      sWardno    : Variant; //병동번호
      sRoomno    : Variant; //병실번호
      sInfdnr    : Variant; //정보제공자
      sRecnrs    : Variant; //작성간호사
      sDiagname  : Variant; //(과)진단명/질병명
      sAddress   : Variant; //주소
      sTelno1    : Variant; //전화번호1
      sTelno2    : Variant; //전화번호2
      sReligion  : Variant; //종교
      sDelvtype  : Variant; //분만형태
      sborndc    : Variant; //분만개조자
      sBornw     : Variant; //출생시체중
      sNoww      : Variant; //현재체중
      sHeight    : Variant; //신장
      sAdmpath   : Variant; //입원경로
      sSymptom   : Variant; //주증상
      sIndzfdt   : Variant; //최초발병일
      sAdmreson  : Variant; //입원동기
      sLstdrgst  : Variant; //최근투약상태
      sHxdzyn    : Variant; //과거병력여부
      sAlgyn     : Variant; //알러지여부
      sFhxf      : Variant; //가족력
      sFhxetc    : Variant;
      sBodytemp  : Variant; //체온
      sHrtbt     : Variant; //맥박
      sResp      : Variant; //호흡
      sBldpre    : Variant; //혈압
      sRespyn    : Variant; //호흡기 장애여부
      sRespst    : Variant; //호흡기 장애
      sDietyn    : Variant; //소화기장애 여부
      sDietst    : Variant; //소화기장애
      sCircyn    : Variant; //순환기장애 여부
      sCircst    : Variant; //순환기장애
      sPainyn    : Variant; //신체 동통유무
      sPain      : Variant;
      sPaindt    : Variant; //신체 동통
      sNeoyn     : Variant; //부종유무
      sNeoprt    : Variant; //부종부위
      sNeotrc    : Variant; //부종요흔
      sSkinyn    : Variant;
      sSknunpt   : Variant; //신체 피부상태 이상부위
      sTeeth     : Variant; //치아상태
      sTeethetc  : Variant; //치아상태기타
      sGlsyn     : Variant; //시력장애유무
      sGls       : Variant; //시력장애종류
      sGlsetc    : Variant; //시력장애종류기타
      sEaryn     : Variant; //신체 청력장애 유무
      sEarAid    : Variant; //청력장애 (보청기)
      sEaretc    : Variant; //청력장애 (기타)
      sFeccnt    : Variant; //습관 대변횟수
      sFecday    : Variant;
      sFecchr    : Variant; //습관 대변특징
      sUrcnt     : Variant; //습관 소변회수
      sUrday     : Variant;
      sUrchr     : Variant; //습관 소변특징
      sDiet      : Variant; //식사습관
      sConsstat  : Variant; //의식상태
      sComm      : Variant; //의사소통
      sFeelstat  : Variant; //정서상태
      sActfr     : Variant; //활동상태
      sPre       : Variant;
      sPrecnt    : Variant;
      sPreetc    : Variant; //예방접종기타
      sGrtyn     : Variant; //성장상태이상유무
      sGrtabnl   : Variant; //성장상태 이상소견
      sDvpstyn   : Variant; //발달상태이상유무
      sDvpabnl   : Variant; //발달상태 이상소견
      sEdu       : Variant; //교육내용
      sEditid    : Variant;
      sEditip    : Variant;
      sPrecnt2   : Variant;
      sPrecnt3   : Variant;
      //(추가. 2003.1.13 이용언)
      sAdmmeth   : Variant; //입원방법
      sWeight    : Variant; //체중
      sArgdg     : Variant;
      sArgfg     : Variant;
      sArgetc    : Variant;
      sOpyn      : Variant; //수술여부
      sPshist    : Variant; //지남력
      sMeal      : Variant; //식사습관
      sGihyung   : Variant; //기형
      sSkin      : Variant; //피부
      sDpt       : Variant; //DPT
      sMeas      : Variant; //홍역
      sPolio     : Variant; //소아마비
      sCheek     : Variant; //볼거리
      sLiver     : Variant; //간염
      sBcg       : Variant; //BCG
      sEtc       : Variant; //예방접종 기타
      sHabit     : Variant;
      sSkinst    : Variant;
      sJikupf    : Variant;
      sJikupm    : Variant;
      sRegf      : Variant;
      sRegm      : Variant;
      sBldtype   : Variant;
      sActivest  : Variant;
      sHospital  : Variant;
      sEdu1      : Variant;
      sEdu2      : Variant;
      sEdu3      : Variant;
      sEdu4      : Variant;
      sEdu5      : Variant;
      sEdu6      : Variant;
      sEdu7      : Variant;
      sEdu8      : Variant;
      sIphis     : Variant;
      sFrecdate  : Variant; //최초기록일시, KimDaeYong 2011-06-09

      //2011인증평가, KimDaeYong 2011-07-19
     sArganti   : Variant;
     sNation    : Variant;
     sNationoth : Variant;
     sRace      : Variant;
     sPay       : Variant;
     sBokji     : Variant;
     sSafeedu   : Variant;
     sAppetite  : Variant;
     sWetchg    : Variant;
     sDysphagia : Variant;
     sStress    : Variant;
     sOutedu1   : Variant;
     sOutedu2   : Variant;
     sOutedu3   : Variant;
     sOutedu3oth: Variant;
     sOutedu4   : Variant;
     sOutedu5   : Variant;
     sTelno3    : Variant;
     sTelno4    : Variant;
     sBloodyn   : Variant;
     sCultueretc: Variant;
     sChurch    : Variant;
     sNreduetc  : Variant;
     sSignData  : Variant;
     sSerialNo  : Variant;
     sSubjectDN : Variant;
     sBring     : Variant;

     //(추가. 2003.1.13 이용언)
     function InsPdinfdll2(sPatno,sAdmdate,sRecnrs,sDiagname,sInfdnr,sTelno1,sTelno2,
                           sDelvtype,sborndc,sBornw,sNoww,sAdmpath,sAdmmeth,sBldpre,
                           sHrtbt,sResp,sBodytemp,sHeight,sWeight,sSymptom,sIndzfdt,
                           sHxdzyn,sLstdrgst,sAlgyn,sArgdg,sArgfg,sArgetc,sFhxf,
                           sFhxetc,sOpyn,sPshist,sConsstat,sComm,sFeelstat,sMeal,
                           sGihyung,sCircst,sRespst,sDietst,sFeccnt,sFecchr,sUrcnt,
                           sUrchr,sPain,sSkin,sGls,sEarAid,sNeotrc,sTeeth,sDpt,
                           sMeas,sPolio,sCheek,sLiver,sbcg,sEtc,sEditid,sEditip,
                           sMeddept, sChadr, sGendr, sWardno, sRoomno,
                           sHabit, sSkinst, sJikupf, sJikupm, sRegf, sRegm,
                           sBldtype, sActivest, sHospital, sEdu1, sEdu2,
                           sEdu3, sEdu4, sEdu5, sEdu6, sEdu7, sEdu8, sIpHIs,
                           sTelno3,  sTelno4,  sOutedu1,sOutedu2,
                           sOutedu3, sOutedu3oth, sOutedu4, sOutedu5, sNation, sNationoth, sRace, sPay,
                           sBokji, sArganti, sSafeedu, sAppetite, sWetchg, sDysphagia, sStress, sBloodyn, sCultueretc, sChurch, sNreduetc,
                           xSignData,xSerialNo,xSubjectDN, sBring :String):Integer;
      //이력조회.20181015.kya.
     //function SelPdinfdll2(sType1,sType2:String):Integer;
     function SelPdinfdll2(sType1,sType2,sType3:String):Integer;
    end;


    // 간호정보조사지(산부인과)
    HmdOginfd = class
     sPatNo 	 : Variant;  // 환자번호
     sAdmDate	 : Variant;  // 입원일자
     sMedDept	 : Variant;  // 진료과
     sGenDr	    : Variant;  // 담당의사
     sSpcDr	    : Variant;  // 지정진료의사
     sWardNo	 : Variant;  // 병동번호
     sRoomNo	 : Variant;  // 병실번호
     sDiagCd	 : Variant;  // 진단코드(ICD-10)
     sDschDate	 : Variant;  // 퇴원일자
     sIndzDt	 : Variant;  // 진단명
     sInfDnr	 : Variant;  // 정보제공자
     sMarryYn	 : Variant;  // 결혼여부
     sMarryAge	 : Variant;  // 결혼연령
     sReligion	 : Variant;  // 종교
     sHusname	 : Variant;  // 배우자 이름
     sJob1  	 : Variant;  // 산모직업
     sJob2  	 : Variant;  // 배우자직업
     sEdudGr1	 : Variant;  // 산모 교육정도
     sEdudGr2	 : Variant;  // 배우자 교육정도
     sAdmOvsts	 : Variant;  // 입원상태
     sAdmReson	 : Variant;  // 입원동기
     sHxDz1	    : Variant;  // 과거병력 산모
     sHxDzdt1	 : Variant;  // 과거병력 산모상세
     sHxDz2	    : Variant;  // 과거병력 배우자
     sHxDzdt2	 : Variant;  // 과거병력 배우자상세
     sFamHis	 : Variant;  // 가족력
     sLstdrgYn	 : Variant;  // 최근투약여부
     sLstdrgSt	 : Variant;  // 임신중 약물복용
     sAlgctnt	 : Variant;  // 알러지
     sDiMthd	 : Variant;  // 예정수유방법
     sOlook 	 : Variant;  // 외관상 건강상태
     sBldPre	 : Variant;  // 혈압
     iBodyTemp	 : Variant;  // 체온
     iHrtBt 	 : Variant;  // 맥박
     iResp  	 : Variant;  // 호흡
     iHeight	 : Variant;  // 신장
     iWeight1	 : Variant;  // 체중(임신전)
     iWeight2	 : Variant;  // 체중(임신후)
     sNpoYn 	 : Variant;  // 금식여부
     sNpoTerm	 : Variant;  // 금식기간
     sPmedYn	 : Variant;  // 산전 진찰여부
     sPmedHsp	 : Variant;  // 산전 검사 병원
     sMaPer 	 : Variant;  // 생리주기
     sDrtmon	 : Variant;  // 생리기간
     sMaSts 	 : Variant;  // 생리상태
     sPmedrYn	 : Variant;  // 정기진찰여부
     sPrvMon	 : Variant;  // 전월경일
     sQntMon	 : Variant;  // 월경양
     sPainYn	 : Variant;  // 신체 동통유무
     sPmedlDt	 : Variant;  // 최종진찰일
     sFstMon	 : Variant;  // 최초월경일(초경)
     sMlst2 	 : Variant;  // 최종 월경일
     sDlst  	 : Variant;  // 최종 분만일
     sEndMon	 : Variant;  // 폐경
     sDgp   	 : Variant;  // 임신기간
     sDlstTp	 : Variant;  // 이전 분만형태
     sDexDt	    : Variant;  // 분만 예정일
     sArtAbort	 : Variant;  // 최종 인공유산일자
     sNatAbort	 : Variant;  // 최종 자연유산일자
     sPari1	    : Variant;  // 출산력1
     sPari2	    : Variant;  // 출산력2
     sPari3	    : Variant;  // 출산력3
     sPari4	    : Variant;  // 출산력4
     sPari5 	 : Variant;  // 출산력5
     sPari6 	 : Variant;  // 출산력6
     sPari7 	 : Variant;  // 출산력7
     sDewYn 	 : Variant;  // 이슬 유무
     sDewDate	 : Variant;  // 이슬 일시
     sRomYn 	 : Variant;  // 파수 유무
     sRomDt 	 : Variant;  // 파수 일시
     sPainInt	 : Variant;  // 진통 간격
     sPainDt	 : Variant;  // 진통 일시
     sPainPer	 : Variant;  // 지속시간
     sFhtYn	    : Variant;  // 태아 심음여부
     sFhtrPt	 : Variant;  // 태아 심음 상태기록
     sNeoYn 	 : Variant;  // 부종여부
     sUrpro 	 : Variant;  // 뇨단백
     sBldAbo1	 : Variant;  // 혈액형(ABO)-산모
     sBldAbo2	 : Variant;  // 혈액형(ABO)-배우자
     sBldRh1	 : Variant;  // 혈액형(RH)-산모
     sBldRh2	 : Variant;  // 혈액형(RH)-배우자
     sConsStat	 : Variant;  // 의식상태
     sComm  	 : Variant;  // 의사소통
     sFeelStat	 : Variant;  // 정서상태
     sEmostSd	 : Variant;  // 정서상태 상세
     sExmSip1	 : Variant;  // 매독 반응여부(산모)
     sExmSip2	 : Variant;  // 매독 반응여부(배우자)
     sEtc   	 : Variant;  // 기타 신체증상
     sEtcDt 	 : Variant;  // 기타 신체증상 상세
     sInEdu1	 : Variant;  // 입원시 간호 및 교육상태
     sInEdu2	 : Variant;  // 입원시 간호 및 교육상태
     sInEdu3	 : Variant;  // 입원시 간호 및 교육상태
     sInEdu4	 : Variant;  // 입원시 간호 및 교육상태
     sInEdu5	 : Variant;  // 입원시 간호 및 교육상태
     sInEdu6	 : Variant;  // 입원시 간호 및 교육상태
     sInEdu7	 : Variant;  // 입원시 간호 및 교육상태
     sInEdu8	 : Variant;  // 입원시 간호 및 교육상태
     sInEdu9	 : Variant;  // 입원시 간호 및 교육상태
     sInEdu10	 : Variant;  // 입원시 간호 및 교육상태
     sSymptoms	 : Variant;  // 주증상
     sLaborInt	 : Variant;  // 진통간격
     sLaborDeg	 : Variant;  // 진통정도
     sMint  	 : Variant;  // 진통 시작시간
     sLaborMin	 : Variant;  // 진통 지속시간
     sGrwArea	 : Variant;  // 성장지역
     sHabEtc	 : Variant;  // 습관 기타
     sFecCol	 : Variant;  // 대변색
     sFecChr	 : Variant;  // 대변 특징
     sFecCnt	 : Variant;  // 대변 횟수
     sUrCol 	 : Variant;  // 습관 소변색
     sUrFlv 	 : Variant;  // 습관 소변냄새
     sUrQnt 	 : Variant;  // 습관 소변양
     sUrChr 	 : Variant;  // 습관 소변특징
     sUrCnt 	 : Variant;  // 습관 소변횟수
     sSlpAd 	 : Variant;  // 습관 수면돕는법
     sSlpTm 	 : Variant;  // 습관 수면시간
     sSlpDso	 : Variant;  // 습관 수면장애
     sHabdrk	 : Variant;  // 음주여부
     sUnbCont	 : Variant;  // 습관 편식여부
     sUnbYn 	 : Variant;  // 습관 편식유무
     sHabSmk	 : Variant;  // 흡연상태
     sDfrmAd	 : Variant;  // 기형상세
     sDfrmPrt	 : Variant;  // 기형부위
     sPainPrt	 : Variant;  // 신체 동통부위
     sPainDet	 : Variant;  // 동통상세
     sParPrt	 : Variant;  // 마비부위
     sParDet	 : Variant;  // 마비상세
     sNeoPrt	 : Variant;  // 부종부위
     sNeotrcYn	 : Variant;  // 부종요흔유무
     sGls   	 : Variant;  // 장애보조기
     sGlsPrt	 : Variant;  // 장애부위
     sEarAux	 : Variant;  // 청력보조기
     sEarPrt	 : Variant;  // 청력장애부위
     sSknunPrt	 : Variant;  // 피부상태 이상부위
     sSknunDgr	 : Variant;  // 피부상태 이상증상
     sSkncunPr	 : Variant;  // 신체 피부색 이상부위
     sSkncunDg	 : Variant;  // 신체 피부색 이상정도
     sInspSts	 : Variant;  // 신체 호흡상태
     sMan   	 : Variant;  // 지남력(의식상태)
     sDtime 	 : Variant;  // 지남력 시간
     sPlc   	 : Variant;  // 지남력 장소
     sFamPln	 : Variant;  // 가족계획
     sMvMthd	 : Variant;  // 이동방법
     sMvMthddt	 : Variant;  // 이동방법 상세
     sAftSrv	 : Variant;  // 퇴원후 추후관리
     sAftSrvd	 : Variant;  // 퇴원후 추후관리 상세
     sDietKind	 : Variant;  // 식이종류
     sDietName	 : Variant;  // 식이종류 상세
     sCal   	 : Variant;  // 칼로리
     sDietKnow	 : Variant;  // 식이이해정도 평가
     sPrvInfc	 : Variant;  // 감염예방
     sDmCtrl	 : Variant;  // 당뇨조절
     sFtCare	 : Variant;  // 발간호
     sBpCtrl	 : Variant;  // 혈압조절
     sFmCtrl	 : Variant;  // 체위변경
     sWtCtrl	 : Variant;  // 체중측정
     sOrCare	 : Variant;  // 구강간호
     sTbCtrl	 : Variant;  // 튜브관리
     sStCtrl	 : Variant;  // 좌욕
     sDsEtc 	 : Variant;  // 기타
     sAskPn	    : Variant;  // 문의전화
     sEduWho	 : Variant;  // 교육대상
     sOutSmtm	 : Variant;  // 외래진료나 문의를 요하는 증상
     sActArea	 : Variant;  // 활동범위
     sActDtl	 : Variant;  // 활동범위상세
     sActKnow	 : Variant;  // 활동범위 이해도평가
     sBath  	 : Variant;  // 목욕
     sBathLim	 : Variant;  // 목욕제한 범위
     sBathEtc	 : Variant;  // 목욕제한 기타
     sBathKnow	 : Variant;  // 목욕제한 이해정도 평가
     sOrsvTm1	 : Variant;  // 기타사항
     sEditId	 : Variant;  // 수정자 ID
     sEditIp	 : Variant;  // 수정자 IP
     sEditDate	 : Variant;  // 수정일시
    end;


    // 간호정보조사지(정신과)
    HmdPyinfd = class
     sPatNo	    : Variant;    // 환자번호
     sAdmDate	 : Variant;    // 입원일자
     sMedDept   : Variant;    // 진료과/진료부서
     sInfDnr    : Variant;    // 정보제공자
     sRecNrs    : Variant;    // 면담자
     sAdmPath   : Variant;    // 입원경로
     sAdmWith   : Variant;    // 입원시동반자
     sWed       : Variant;    // 결혼상태
     sFamily    : Variant;    // 가족관계
     sBirth     : Variant;    // 출생지
     sReligion  : Variant;    // 종교
     sEduDgr    : Variant;    // 교육정도
     sJob       : Variant;    // 직업
     sRich      : Variant;    // 경제상태
     sSleep     : Variant;    // 수면
     sDiet      : Variant;    // 식사
     sFec       : Variant;    // 배변
     sAllergy   : Variant;    // 알러지
     sFav       : Variant;    // 기호품
     sHobby     : Variant;    // 취미
     sEtc       : Variant;    // 기타
     sSymptoms  : Variant;    // 주증상
     sLaPsy     : Variant;    // 과거병력(정신과적)
     sLaInOut   : Variant;    // 과거병력(내외과적)
     sFamHis    : Variant;    // 가족력
     sBeChar    : Variant;    // 병전성격(대인관계)
     sFace      : Variant;    // 외모
     sSpirit    : Variant;    // 정신운동상태
     sSpiEtc    : Variant;    // 정신운동상태기타상세
     sAtti      : Variant;    // 태도
     sEmo       : Variant;    // 정서상태
     sLang      : Variant;    // 언어
     sSens      : Variant;    // 지각
     sAcci      : Variant;    // 사고내용
     sCons      : Variant;    // 의식수준
     sGn        : Variant;    // 지남력장애
     sRem       : Variant;    // 기억력장애
     sJud       : Variant;    // 현실에대한 판단력
     sHeight    : Variant;    // 키
     sWeight    : Variant;    // 몸무게
     sEditId	 : Variant;    // 수정자 ID
     sEditIp	 : Variant;    // 수정자 IP
     sEditDate	 : Variant;    // 수정일시
     //(추가. 2003.1.14 이용언)
     sAdmmeth   : Variant;    // 입원방법
     sChadr     : Variant;
     sGendr     : Variant;
     sWardno    : Variant;
     sRoomno    : Variant;
     sIcd       : Variant;
     sTelno1    : Variant;
     sTelno2    : Variant;
     sPthist    : Variant;
     sDgstat    : Variant;
     sFamcase   : Variant;
     sFamrela   : Variant;
     sOpyn      : Variant;
     sCircst    : Variant;
     sRespst    : Variant;
     sDietst    : Variant;
     sSleepst   : Variant;
     sSleepdg   : Variant;
     sDrink     : Variant;
     sTabaco    : Variant;
     sEdu1      : Variant;
     sEdu2      : Variant;
     sEdu3      : Variant;
     sEdu4      : Variant;
     sEdu5      : Variant;
     sEdu6      : Variant;
     sEdu7      : Variant;
     sEdu8      : Variant;
     sArgyn     : Variant;
     sArgdg     : Variant;
     sArgfd     : Variant;
     sFrecdate  : Variant;  //최초기록일시, KimDaeYong 2011-06-09

     //2011인증평가, KimDaeYong 2011-07-15
     sArganti   : Variant;
     sArgetc    : Variant;
     sNation    : Variant;
     sNationoth : Variant;
     sRace      : Variant;
     sPay       : Variant;
     sBokji     : Variant;
     sSafeedu   : Variant;
     sEduoth    : Variant;
     sAppetite  : Variant;
     sWetchg    : Variant;
     sDysphagia : Variant;
     sStress    : Variant;
     sOutedu1   : Variant;
     sOutedu2   : Variant;
     sOutedu3   : Variant;
     sOutedu3oth: Variant;
     sOutedu4   : Variant;
     sOutedu5   : Variant;
     sTelno3    : Variant;
     sTelno4    : Variant;
     sBloodyn   : Variant;
     sCultueretc: Variant;
     sBodytemp  : Variant;
     sPulse     : Variant;
     sRespcnt   : Variant;
     sBldprehi  : Variant;
     sBldprelo  : Variant;
     sBldtype   : Variant;
     //전자인증추가. kya. 20151020.
     sSignData  : Variant;
     sSerialNo  : Variant;
     sSubjectDN : Variant;
     sBring     : Variant;

     //(추가. 2003.1.14 이용언)
     function InsertPyinftdll2(sPatNo ,   sAdmDate,  sInfDnr, sRecNrs,   sAdmmeth, sAdmPath,  sAdmWith ,
                           sWed   ,   sFamily,   sReligion, sEduDgr ,  sJob     , sRich  ,   sSleep ,
                           sDiet   ,  sFec   ,   sAllergy,  sFav     , sHobby ,   sEtc   ,   sSymptoms,
                           sLaPsy ,   sLaInOut,  sFamHis  , sBeChar,   sFace  ,   sSpirit,
                           sSpiEtc,   sAtti   ,  sEmo     , sLang  ,   sSens  ,   sAcci   ,
                           sCons  ,   sGn     ,  sRem     , sJud   ,   sEditId,   sEditIp ,
                           sMeddept,  sChadr ,   sGendr  ,  sWardno  , sRoomno,
                           sIcd,      sTelno1,   sTelno2,   sPthist,   sDgstat,   sFamcase,
                           sFamrela,  sOpyn,     sCircst,   sRespst,   sDietst,   sSleepst,
                           sSleepdg,  sDrink,    sTabaco,   sEdu1,     sEdu2,     sEdu3,
                           sEdu4,     sEdu5,     sEdu6,     sEdu7,     sEdu8,     sArgyn,
                           sArgdg,    sArgfd,    sArganti,  sArgetc,   sNation,   sNationoth,
                           sRace,     sPay,      sBokji,    sSafeedu,  sEduoth,   sAppetite,
                           sWetchg,   sDysphagia,sStress,   sOutedu1,  sOutedu2,  sOutedu3,
                           sOutedu3oth,sOutedu4, sOutedu5,  sTelno3,   sTelno4,  sBloodyn ,sCultueretc,
                           sBodyTemp, sPulse,    sRespCnt,  sBldPreHI, sBldPreLO, sWeight,   sHeight,   sBldType,
                           xSignData,xSerialNo,xSubjectDN,sBring : String):Integer;
     //이력조회.20181015.kya.
     // function SelectPyinftdll2(sKey1, sKey2:string):Integer;
     function SelectPyinftdll2(sKey1, sKey2, sKey3:string):Integer;

    end;

    // 간호정보조사지(재활병동)
    HmdReinfd = class
      sPatno      : Variant;    // 환자번호
      sAdmdate    : Variant;    // 입원일자
      sNuese      : Variant;    // 담당간호사
      sJob        : Variant;    // 직업
      sIcdname    : Variant;    // 진단명
      sInpoffe    : Variant;    // 정보제공자
      sMerry      : Variant;    // 결혼상태
      sEducat     : Variant;    // 교육정도
      sTelno1     : Variant;    // 전화번호
      sTelno2     : Variant;    // H.P 번호
      sAdress     : Variant;    // 현주소
      sAdmcou     : Variant;    // 입원경로
      sAdmmeth    : Variant;    // 입원방법
      sArgyn      : Variant;    // 알레르기
      sArgdg      : Variant;    // 알레르기 약물
      sArgfd      : Variant;    // 알레르기 음식
      sArgetc     : Variant;    // 알레르기 기타
      sPthist     : Variant;    // 과거병력
      sDgstat     : Variant;    // 투약상태
      sFamcase    : Variant;    // 관계
      sFamrela    : Variant;    // 가족관계
      sOpyn       : Variant;    // 수술경험
      sPshist     : Variant;    // 지남력
      sCondst     : Variant;    // 의식상태
      sConcom     : Variant;    // 의사소통
      sFeelst     : Variant;    // 정서상태
      sCircst     : Variant;    // 순환기장애
      sRespst     : Variant;    // 호흡기장애
      sDietst     : Variant;    // 소화기장애
      sUrinst     : Variant;    // 비뇨기장애
      sPain       : Variant;    // 통증
      sSupport    : Variant;    // 보조기구
      sSkin       : Variant;    // 피부손상
      sEyest      : Variant;    // 시력장애
      sEarst      : Variant;    // 청력장애
      sNeost      : Variant;    // 부종
      sStool      : Variant;    // 배변
      sSleep      : Variant;    // 수면장애
      sSleepdg    : Variant;    // 수면제복용
      sDrink      : Variant;    // 음주
      sTabaco     : Variant;    // 흡연
      sAdmreson   : Variant;    // 입원동기
      sIndeu1     : Variant;    // 입원시 간호 및 교육상태1
      sIndeu2     : Variant;    // 입원시 간호 및 교육상태2
      sIndeu3     : Variant;    // 입원시 간호 및 교육상태3
      sIndeu4     : Variant;    // 입원시 간호 및 교육상태4
      sIndeu5     : Variant;    // 입원시 간호 및 교육상태5
      sIndeu6     : Variant;    // 입원시 간호 및 교육상태6
      sIndeu7     : Variant;    // 입원시 간호 및 교육상태7
      sIndeu8     : Variant;    // 입원시 간호 및 교육상태8
      sMeddept    : Variant;    // 진료과
      sChadr      : Variant;    // 주치의
      sGendr      : Variant;    // 담당의
      sWardno     : Variant;    // 병동
      sRoomno     : Variant;    // 병실
      sBodytemp   : Variant;    // 체온
      sPulse      : Variant;    // 맥박
      sRespcnt    : Variant;    // 호흡
      sBldprehi   : Variant;    // 혈압1
      sBldprelo   : Variant;    // 혈압2
      sWeight     : Variant;    // 체중
      sHeight     : Variant;    // 신장
      sBldtype    : Variant;    // 혈액형
      sChild      : Variant;    // 자녀수
      sChurch     : Variant;    // 종교
      sMotion     : Variant;    // 몸동작
      sDaymot     : Variant;    // 일상생활동작
      sHousestr   : Variant;    // 가옥구조
      sBedsore    : Variant;    // 욕창
      sNerves     : Variant;    // 신경계장애
      sPatmove    : Variant;    // 전과일
      sEditid     : Variant;    // 수정자 ID
      sEditip     : Variant;    // 수정자 IP
      sFrecdate   : Variant;    // 최초기록일시, KimDaeYong 2011-06-09
      //2011인증평가, KimDaeYong 2011-07-15
      sTelno3     : Variant;
      sTelno4     : Variant;
      sOutedu1    : Variant;
      sOutedu2    : Variant;
      sOutedu3    : Variant;
      sOutedu3oth : Variant;
      sOutedu4    : Variant;
      sOutedu5    : Variant;
      //2011인증평가 보완, KimDaeYong 2011-07-18
      sNation     : Variant;
      sNationoth  : Variant;
      sRace       : Variant;
      sPay        : Variant;
      sBokji      : Variant;
      sArganti    : Variant;
      sSafeedu    : Variant;
      sEduoth     : Variant;
      sAppetite   : Variant;
      sWetchg     : Variant;
      sDysphagia  : Variant;
      sStress     : Variant;
      sBloodyn    : Variant;
      sCultueretc : Variant;
      
      sSignData   : Variant;
      sSerialNo   : Variant;
      sSubjectDN  : Variant;
      sBring      : Variant;
      sSmoking    : Variant;

    function insertReinfdll1(sPatno    ,sAdmdate  ,sNuese    ,sJob      ,sIcdname  ,
                             sInpoffe  ,sMerry    ,sEducat   ,sTelno1   ,sTelno2   ,
                             sAdress   ,sAdmcou   ,sAdmmeth  ,sArgyn    ,sArgdg    ,
                             sArgfd    ,sArgetc   ,sPthist   ,sDgstat   ,sFamcase  ,
                             sFamrela  ,sOpyn     ,sPshist   ,sCondst   ,sConcom   ,
                             sFeelst   ,sCircst   ,sRespst   ,sDietst   ,sUrinst   ,
                             sPain     ,sSupport  ,sSkin     ,sEyest    ,sEarst    ,
                             sNeost    ,sStool    ,sSleep    ,sSleepdg  ,sDrink    ,
                             sTabaco   ,sAdmreson ,sIndeu1   ,sIndeu2   ,sIndeu3   ,
                             sIndeu4   ,sIndeu5   ,sIndeu6   ,sIndeu7   ,sIndeu8   ,
                             sMeddept  ,sChadr    ,sGendr    ,sWardno   ,sRoomno   ,
                             sBodytemp ,sPulse    ,sRespcnt  ,sBldprehi ,sBldprelo ,
                             sWeight   ,sHeight   ,sBldtype  ,sChild    ,sChurch   ,
                             sMotion   ,sDaymot   ,sHousestr ,sBedsore  ,sNerves   ,
                             sEditid   ,sEditip   ,sTelno3   ,sTelno4   ,sOutedu1  ,
                             sOutedu2  ,sOutedu3  ,sOutedu3oth, sOutedu4,sOutedu5  ,
                             sNation   ,sNationoth,sRace     ,sPay      ,sBokji    ,
                             sArganti  ,sSafeedu  ,sEduoth   ,sAppetite ,sWetchg   ,
                             sDysphagia ,sStress  ,sBloodyn  ,sCultueretc,xSignData,xSerialNo,xSubjectDN,sBring,sSmoking : String):Integer;
    //function SelReinfdll1(sType1, sType2:String):Integer;
    //이력조회.20181015.kya.
    function SelReinfdll1(sType1, sType2, sType3:String):Integer;
    end;

    // 간호정보조사지(산모) 2011.신규
    HmdObinfd = class
     sPatNo	    : Variant;  // 환자번호
     tAdmDate	  : Variant;  // 입원일자
     sMeddept   : Variant;
     sChadr     : Variant;
     sGendr     : Variant;
     sWardno    : Variant;
     sRoomno    : Variant;
     sRecnrs    : Variant;
     sIcdname   : Variant;
     sNation    : Variant;
     sRace      : Variant;
     sJob       : Variant;
     sMerry     : Variant;
     sInpoffe   : Variant;
     sChild     : Variant;
     sEducat    : Variant;
     sReligion  : Variant;
     sPay       : Variant;
     sBokji     : Variant;
     sTelno1    : Variant;
     sTelno2    : Variant;
     sHname     : Variant;
     sHbirthdate: Variant;
     sHbldtype  : Variant;
     sBodytemp  : Variant;
     sPulse     : Variant;
     sRespcnt   : Variant;
     sBldprehi  : Variant;
     sBldprelo  : Variant;
     sPreweight : Variant;
     sPostweight: Variant;
     sHeight    : Variant;
     sBldtype   : Variant;
     sAdmcou    : Variant;
     sAdmmeth   : Variant;
     sKnow      : Variant;
     sAdmreason : Variant;
     sArgyn     : Variant;
     sArgdg     : Variant;
     sArganti   : Variant;
     sArgfd     : Variant;
     sArgetc    : Variant;
     sAdmlast   : Variant;
     sPthist    : Variant;
     sDgstat    : Variant;
     sFamcase   : Variant;
     sFamrela   : Variant;
     sOpyn      : Variant;
     sPshist    : Variant;
     sCondst    : Variant;
     sConcom    : Variant;
     sFeelst    : Variant;
     sDeformt   : Variant;
     sAppetite  : Variant;
     sWetchg    : Variant;
     sDysphagia : Variant;
     sStress    : Variant;
     sActivest  : Variant;
     sSleephr   : Variant;
     sSleep     : Variant;
     sSleepdg   : Variant;
     sFeceskd   : Variant;
     sStool     : Variant;
     sUrinkd    : Variant;
     sDrink     : Variant;
     sTabacoflag: Variant;
     sTabaco    : Variant;
     sEdutabaco : Variant;
     sEyest     : Variant;
     sEarst     : Variant;
     sNerves    : Variant;
     sPalsy     : Variant;
     sRespst    : Variant;
     sCircst    : Variant;
     sNeost     : Variant;
     sDiest     : Variant;
     sSkinst    : Variant;
     sSkin      : Variant;
     sUrinst    : Variant;
     sSupport   : Variant;
     sBirth     : Variant;
     sPain      : Variant;
     sPreexam   : Variant;
     sPreexamy  : Variant;
     sPreexamo  : Variant;
     sPreexamd  : Variant;
     sObhist1   : Variant;
     sObhist2   : Variant;
     sObhist3   : Variant;
     sFasting   : Variant;
     sShow      : Variant;
     sRom       : Variant;
     sObpain    : Variant;
     sFhr       : Variant;
     sMenache1  : Variant;
     sMenache2  : Variant;
     sMenache3  : Variant;
     sMens      : Variant;
     sMenspain  : Variant;
     sDaeha     : Variant;
     sInedu     : Variant;
     sIneduetc  : Variant;
     sOutedu1   : Variant;
     sOutedu2   : Variant;
     sOutedu3   : Variant;
     sOutedu3etc: Variant;
     sOutedu4   : Variant;
     sOutedu5   : Variant;
     sEditdate  : Variant;
     sFrecdate  : Variant;  //최초기록일시, KimDaeYong 2011-06-09
     sBloodyn   : Variant;
     sCultueretc: Variant;
     
     sSignData   : Variant;
     sSerialNo   : Variant;
     sSubjectDN  : Variant;
     sBring      : Variant;
     sSmoking    : Variant;


    // 간호정보조사지 - 산모
    function insertObinfdll2(sPatno, tAdmdate, sRecnrs, sIcdname,
                             s1,  s2,  s3,  s4,  s5,  s6,  s7,  s8,  s9,  s10,
                             s11, s12, s13, s14, s15, s16, s17, s18, s19, s20,
                             s21, s22, s23, s24, s25, s26, s27, s28, s29, s30,
                             s31, s32, s33, s34, s35, s36, s37, s38, s39, s40,
                             s41, s42, s43, s44, s45, s46, s47, s48, s49, s50,
                             s51, s52, s53, s54, s55, s56, s57, s58, s59, s60,
                             s61, s62, s63, s64, s65, s66, s67, s68, s69, s70,
                             s71, s72, s73, s74, s75, s76, s77, s78, s79, s80,
                             s81, s82, s83, s84, s85, s86, s87, s88, s89, s90,
                             s91, s92, s93, s94, s95, s96, s97, s98, s99, s100,
                             s101,s102,s103,s104,sEditid, sEditip, sBloodyn, sCultueretc,
                             xSignData,xSerialNo,xSubjectDN,sBring,sSmoking: String):Integer;

    //function SelObinfdll2(sType1, sType2:String):Integer;
    //이력조회.20181015.kya.
    function SelObinfdll2(sType1, sType2, sType3:String):Integer;
    //(추가. 2003.1.15 이용언)
    function SelObinfHistorydll2(sPatNo, sType1 :String):Integer;
    function SelObinfHistorydll3(sWard, sType1: string): Integer;
    end;


    // 타시스템 코드
    HmdExCodd = class
     sType1	    : Variant;  // 검색조건1
     sType2	    : Variant;  // 검색조건2
     // 사용자정보
     sUserId	 : Variant;  // 사용자ID
     sUserNm	 : Variant;  // 사용자명
     sDeptCd	 : Variant;  // 소속부서
     sDeptNm	 : Variant;  // 소속부서명
     sLicNo	    : Variant;  // 의사면허번호
     sMajorNo	 : Variant;  // 전문의번호
     sJikGup	 : Variant;  // 직급(의사구분 11:STAFF 22:레지던트 33:인턴)
     sJicJong	 : Variant;  // 직종(사용자구분 11:의사 22:간호사)
     sWardNo1   : Variant;  // 담당근무병동 1
     sWardNo2   : Variant;  // 담당근무병동 2
     sSort	    : Variant;  // Set 조회순서
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
     sCount1    : Variant;  // 1회 수량
     sMethodcd  : Variant;  // 용법
     sAbbr      : Variant;  // 용법 약어
     sDgijtype  : Variant;  // 용법 경로
     sInfegrd   : Variant;  // ICD 구분자(전염병등급)
     sCond      : Variant;  // 구분자
     sComCdDtl  : Variant;  // 진지공통 코드
     sComCdNm   : Variant;  // 진지공통 코드값
     sJikGupNm  : Variant;  // 직급명
     sSpeedBtn  : Variant;  // 스피드버튼
     sReturnYn  : Variant;  // 환불여부
     sUseDay    : Variant;  // 처방 일수
     sDayQty    : Variant;  // 1일용량
     sMaxDay    : Variant;  // 최대투여일수
     sOrdYn     : Variant;  // 처방가능여부
     sMethod    : Variant;  // 용법/용량
     sDisease   : Variant;  // 적응증
     sInsInfo   : Variant;  // 인정기준
     sProdCode  : Variant;  // 장비코드
     sProdName  : Variant;  // 장비명
     sDays      : Variant;  // 약처방기본일수
     sCounts    : variant;  // 약처방기본회수
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
     sDrugCd    : Variant;  // 약품코드
     sDrugNm    : Variant;  // 약품명
     sIdrgNm    : Variant;  // 약성분명
     sDrgInf    : Variant;  // 약품정보
     sWkareaCd  : Variant;  // 작업장코드
     sDay       : Variant; //공휴일 날짜(9월13일 방용균 추가)
     sHosName   : Variant;  // 병원명
     sHosAddress: Variant;  // 병원 주소
     sHosTel    : Variant;  // 병원 전화번호
     sHosDr     : Variant;  // 병원장
     sHosFax    : Variant;  // 병원 팩스번호
     sLabNo     : Variant;  // 임상연구번호
     sLabDesc   : Variant;  // 임상연구명
     sFromDate  : Variant;  // 시작일
     sToDate    : Variant;  // 종료일
     sInsurId   : Variant;  // 요양기관번호

     // 병원 기본정보 조회
     function HosInformdll(sLocate:String):Integer;
    end;

    // 신생아
    HmdNbabyd = class
      sBornDate : Variant;
      sPatName  : Variant;
      sPatNo    : Variant;
      sSex      : Variant;
      sAge      : Variant;
      sWgt      : Variant;
      sDelType  : Variant;
      sParity   : Variant;
      sAge2     : Variant;
      sRemark   : Variant;

      function IsNbabydll(sType1,sType2,sType3,sType4:String):Integer;
      function InsNbabydll(sBorndate,sPatname,sPatno,sSex,sAge,sDelType,sWgt,
                        sParity,sMomno,sMomadm,sPatSeq,sSickbaby,sWardcd,sRoomno,
                        sDeptCd,sDiagcd,sDiagname,sChadr,sGendr,sEditid,sEditip,
                        sType1,sType2,sType3,sFlag,sAge2,sTwinFlag:String):Integer;
      function MultiSelNbabydll(sType1,sType2:String):Integer;
      // 개별 신생아대장조회
      function SingleSelNbabydll(sType1:String):Integer;

    end;

    // 인사마스타 (신규생성)
    HmdInsamt = class
     sEmpNo      : Variant;  // 개인번호
     sEmpNm      : Variant;  // 성명
     sComCdNm    : Variant;  // 직급명
     sDeptCd     : Variant;  // 진료과/병동코드
     sDeptNm     : Variant;  // 진료과/병동명
     sLicNo      : Variant;  // 면허번호
     sMajorNo    : Variant;  // 전문의번호
     function ListUserInfo(sType1,sType2,sType3,sType4:String):Integer;
    end;

    HmdHpInft = Class
      FPatno    : Variant;
      FAdmdate  : Variant;
      FHpdate   : Variant;
      FAddress  : Variant;
      FNurse    : Variant;
      FNurseNm  : Variant;
      FMedDept  : Variant;
      FDeptNm   : Variant;
      FDiagName : Variant;
      FWardNo1  : Variant;
      FRoomNo1  : Variant;
      FChaDr    : Variant;
      FGenDr    : Variant;
      FInfoffe  : Variant;
      FTelno1   : Variant;
      FTelno2   : Variant;
      FTelno3   : Variant;
      FJob      : Variant;
      FMerry    : Variant;
      FChldcnt  : Variant;
      FEducat   : Variant;
      FEconot   : Variant;
      FNourt    : Variant;
      FSleept   : Variant;
      FSleeptxt : Variant;
      FAdmcou   : Variant;
      FAdmtxt   : Variant;
      FAdmsts   : Variant;
      FCancer   : Variant;
      FCancnt   : Variant;
      FRadial   : Variant;
      FRadcnt   : Variant;
      FHistory  : Variant;
      FHistxt   : Variant;
      FFamily   : Variant;
      FFamtxt   : Variant;
      FFamstat  : Variant;
      FOperyn   : Variant;
      FOpertxt  : Variant;
      FApin     : Variant;
      FLabor    : Variant;
      FEscort   : Variant;
      FBody     : Variant;
      FInterior : Variant;
      FNervous  : Variant;
      FSense    : Variant;
      FCycle    : Variant;
      FRespira  : Variant;
      FOxygen   : Variant;
      FAbsorb   : Variant;
      FUrinary  : Variant;
      FExcre    : Variant;
      FNerve    : Variant;
      FSkin     : Variant;
      FSwell    : Variant;
      FSwellpos : Variant;
      FEdema    : Variant;
      FEdeetc   : Variant;
      FFamsup   : Variant;
      FSelfcon  : Variant;
      FIncorp   : Variant;
      FPatdispo : Variant;
      FFamdispo : Variant;
      FBath     : Variant;
      FHaedwash : Variant;
      FMeal     : Variant;
      FMake     : Variant;
      FCloth    : Variant;
      FChType   : Variant;
      FFamily2  : Variant;
      FEatCnt   : Variant;
      FLeason   : Variant;
      function GetBaseInf(sPatno, sAdmdate: string): Integer;
      function GetList(sPatno, sAdmdate: string): Integer;
      function Insert(sPatno,    sAdmdate,  sHpdate,   sNurse,    sInfoffe,
                      sTelno1,   sTelno2,   sJob,      sMerry,    sChldcnt,
                      sEducat,   sEconot,   sNourt,    sSleept,   sSleeptxt,
                      sAdmcou,   sAdmtxt,   sAdmsts,   sCancer,   sCancnt,
                      sRadial,   sRadcnt,   sHistory,  sHistxt,   sFamily,
                      sFamtxt,   sFamstat,  sOperyn,   sOpertxt,  sApin,
                      sLabor,    sEscort,   sBody,     sInterior, sNervous,
                      sSense,    sCycle,    sRespira,  sOxygen,   sAbsorb,
                      sUrinary,  sExcre,    sNerve,    sSkin,     sSwell,
                      sSwellpos, sEdema,    sEdeetc,   sFamsup,   sSelfcon,
                      sIncorp,   sPatdispo, sFamdispo, sBath,     sHaedwash,
                      sMeal,     sMake,     sCloth,    sEditID,   sEditIP,
                      sChType,   sFamily2,  sEatCnt,   sReason: string): Integer;
      function HistoryList(sPatNo, sType1 :String): Integer;
    end;

    //활력증상복사.20180809.kya.
    HmdVitald = class
     sExectime   : Variant;
     sBodytemp   : Variant;
     sPulse      : Variant;
     sRespcnt    : Variant;
     sBldprehi   : Variant;
     sBldprelo   : Variant;
     sWeight     : Variant;
     sHeight     : Variant;
     sChkitem3   : Variant;
     sChkitem2   : Variant;
     sChkitem1   : Variant;

     function VITAL_S1(sPatNo, sType1:String):Integer;
    end;

var
    mdPdiagd : HmdPdiagd;   // 환자진단내역
    mdAdinfd : HmdAdinfd;   // 간호정보조사지(일반성인)
    mdPdinfd : HmdPdinfd;   // 간호정보조사지(소아)
    mdOginfd : HmdOginfd;   // 간호정보조사지(산부인과)
    mdObinfd : HmdObinfd;   // 간호정보조사지(산부인과-신규2011)
    mdPyinfd : HmdPyinfd;   // 간호정보조사지(정신과)
    mdExCodd : HmdExCodd;
    mdNbabyd : HmdNbabyd;
    mdInsamt : HmdInsamt;
    mdHpInft : HmdHpInft;
    mdReinfd : HmdReinfd;
    mdVitald : HmdVitald;   //활력증상복사.20180809.kya.

    // DLL 진료시스템에서 사용되는 Global변수 선언부
    {
    dll_Patno,dll_PatName,dll_AdmDate,dll_MedDeptNm,
    dll_WardNo,dll_RoomNo, dll_Address,dll_Sex,dll_Birtdate,
    dll_MedDept,dll_Chadr,dll_Gendr,dll_UserNm,
    dll_ResNo1,dll_ResNo2,dll_DiagCd,dll_DiagName,dll_TelNo1,
    dll_UserId,dll_UserIp,dll_Locate    : String;
    }
implementation

uses TuxCom, VarCom, Variants;

////////////////////////////////////////////////////////////////////////////////
//  HmdPdiagt 	환자진단내역                                                  //
////////////////////////////////////////////////////////////////////////////////

// 환자진단내역(1.현진단,2.진단이력) 조회
function HmdPdiagd.ListPatDiagdll(PatNo,MedDept,MedDate,Locate,QryKind:String):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc;

   //FML Buffer Field Assign
   SetFldName('S_PATNO;S_MEDDEPT;S_MEDDATE;S_STRING1;S_TYPE1');
   SetFldValue(0,[PatNo,MedDept,MedDate,Locate,QryKind] );

   //Tuxedo Service Call
   if (txGetF('MD_PDIAG_L1')) then
   begin
      GetFldVar('S_PATNO'   , sPatNo   );  // 환자번호
      GetFldVar('S_STRING1' , sMedDept );  // 진료과
      GetFldVar('S_STRING2' , sDeptNm  );  // 진료과명
      GetFldVar('S_STRING3' , sMedDate );  // 진료일자/입원일자
      GetFldVar('S_STRING4' , sRgtDate );  // 등록일자
      GetFldVar('S_STRING5' , sPatSect );  // 환자구분
      GetFldVar('S_STRING6' , sDiagCd  );  // 진단코드(ICD-10)
      GetFldVar('S_STRING7' , sDiagName);  // 과진단명/질병명
      GetFldVar('S_STRING8' , sMainDiag);  // 주진단여부
      GetFldVar('S_STRING9' , sCficdYn );  // 확정상병여부(의증/확진여부)
      GetFldVar('S_STRING10', sChaDr   );  // 주치의사
      GetFldVar('S_STRING11', sChaDrNm );  // 주치의사명
      GetFldVar('S_STRING12', sGenDr   );  // 담당의사
      GetFldVar('S_STRING13', sGenDrNm );  // 담당의사명
      GetFldVar('S_STRING14', sOlddxYn );  // 지병구분
      GetFldVar('S_STRING15', sAdmdxYn );  // 입원진단여부
      GetFldVar('S_STRING16', sEndDate );  // 진단종료일
      GetFldVar('S_STRING17', sRemark  );  // 특기사항
      GetFldVar('S_STRING18', sTeeUplt );  // 치열(상좌)
      GetFldVar('S_STRING19', sTeeUprt );  // 치열(상우)
      GetFldVar('S_STRING20', sTeeDwlt );  // 치열(하좌)
      GetFldVar('S_STRING21', sTeeDwrt );  // 치열(하우)
      GetFldVar('S_STRING22', sInfyn   );  // 전염병여부
      GetFldVar('L_SEQNO1'  , iSeqNo   );  // 순번
      //조회건수 return
      Result := GetRecordCnt('S_PATNO');
      txFree;
   end;
end;

// 환자진단내역 입력 (Multi Input)
function HmdPdiagd.InsertPatDiagdll(Cnt:Integer):Integer;
var
  i: integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc;

   //FML Buffer Field Assign
   SetFldName('S_PATNO;S_MEDDEPT;S_MEDDATE;S_STRING1;S_STRING2;'+
              'S_STRING3;S_STRING4;S_STRING5;S_STRING6;S_STRING7;'+
              'S_STRING8;S_STRING9;S_STRING10;S_STRING11;S_STRING12;'+
              'S_STRING13;S_STRING14;S_STRING15;S_STRING16;S_STRING17;'+
              'S_EDITID;S_EDITIP;L_SEQNO1');
   for i := 0 to cnt-1 do
   begin
     SetFldValue(i,[String(sPatNo[i]),String(sMeddept[i]),String(sMedDate[i]),
                    String(sRgtDate[i]),String(sPatSect[i]),String(sDiagCd[i]),
                    String(sDiagName[i]),String(sMainDiag[i]),String(sCficdYn[i]),
                    String(sChaDr[i]),String(sGenDr[i]),String(sOlddxyn[i]),
                    String(sAdmdxYn[i]),String(sEndDate[i]),String(sRemark[i]),
                    String(sTeeupLt[i]),String(sTeeupRt[i]),String(sTeedwLt[i]),
                    String(sTeedwRt[i]),String(sInfYn[i]),String(sEditId[i]),
                    String(sEditIp[i]),Integer(iSeqNo[i])]);
   end;

   //Tuxedo Service Call
   if (txPutF('MD_PDIAG_I1')) then
   begin
      Result := 1;
      txFree;
   end;
end;

// 환자진단내역 삭제
function HmdPdiagd.DeletePatDiagdll(PatNo,MedDept,MedDate:String;SeqNo:LongInt):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc;

   //FML Buffer Field Assign
   SetFldName('S_PATNO;S_MEDDEPT;S_MEDDATE;L_SEQNO1');
   SetFldValue(0,[PatNo,MedDept,MedDate,SeqNo] );

   //Tuxedo Service Call
   if (txPutF('MD_PDIAG_D1')) then
   begin
      Result := 1;
      txFree;
   end;
end;

// 환자 수진이력 List 조회
function HmdPdiagd.ListDiagHistorydll(PatNo,Locate:String):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_PATNO;S_TYPE1');
   SetFldValue32(0,[PatNo,Locate] );

   //Tuxedo Service Call
   if (txGetF32('MD_PDIAG_L2')) then
   begin
      GetFldVar32('S_STRING1' , sPatsect );  // 환자구분
      GetFldVar32('S_STRING2' , sIndate  );  // 내원일시
      GetFldVar32('S_STRING3' , sOutdate );  // 퇴원일시
      GetFldVar32('S_STRING4' , sMeddept );  // 진료과/진료부서
      GetFldVar32('S_STRING5' , sDiagcd  );  // 진단/질환코드
      GetFldVar32('S_STRING6' , sDiagname);  // 주진단명
      GetFldVar32('S_STRING7' , sRemark  );  // 특기사항
      GetFldVar32('S_STRING8' , sDeptnm  );  // 진료과명
      GetFldVar32('S_STRING9' , sChadrnm );  // 담당교수명
      GetFldVar32('S_STRING10' , sStayYn );  // 재원여부
      GetFldVar32('S_STRING11' , sWardRoom );// 병동-호실
      GetFldVar32('S_STRING12' , sGenDrNm  );// 주치의명
      GetFldVar32('S_STRING13' , sChaDr  );  // 담당교수
      GetFldVar32('S_STRING14' , sGenDr  );  // 주치의
      GetFldVar32('S_STRING15', sCficdyn );  // R/O여부

      //조회건수 return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

// 과거진단을 현진단으로 Insert
function HmdPdiagd.InsertNewDiagdll(PatNo,MedDept,MedDate,MedDr,PatSect,EditId,EditIp:String):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc;

   //FML Buffer Field Assign
   SetFldName('S_PATNO;S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_EDITID;S_EDITIP');
   SetFldValue(0,[PatNo,MedDept,MedDate,MedDr,PatSect,EditId,EditIp] );

   //Tuxedo Service Call
   if (txPutF('MD_PDIAG_I2')) then
   begin
      GetFldVar('L_CNT1'   , iSeqNo   );  // 조회건수
      GetFldVar('S_STRING1', sDiagCd  );  // 진단코드(ICD-10)
      GetFldVar('S_STRING2', sDiagName);  // 과진단명/질병명
      Result := 1;
      txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
//  HmdAdinft 	간호정보조사지(일반성인)                                      //
////////////////////////////////////////////////////////////////////////////////

// 신생아 간호정보조사지
//function HmdAdinfd.SelMdnbinftdll(sPatNo, sAdmDate:String):Integer;
//이력조회.20181015.kya.
function HmdAdinfd.SelMdnbinftdll(sPatNo, sAdmDate, Type3:String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer 를 받아옴.
   SetFldName('S_PATNO;S_ADMDATE;S_TYPE1');
   SetFldValue(0,[sPatNo, sAdmDate, Type3]);
   if (txGetF('MD_NBINF_S1')) then begin //Tuxedo Service Call   md_nbinf_s1.pc
		GetFldVar ('S_CODE1',    sMedDept);  // sMedDept);
		GetFldVar ('S_CODE2',    sChaDr);    // sChaDr);
		GetFldVar ('S_CODE3',    sGenDr);    // sGenDr);
		GetFldVar ('S_CODE4',    sWardNo);   // sWardNo);
		GetFldVar ('S_CODE5',    sRoomNo);   // sRoomNo);
		GetFldVar ('S_CODE6',    sDiagCd);   // sDiagCd);
		GetFldVar ('S_CODE7',    sDschDate); // sBorndate);
		GetFldVar ('S_CODE8',    sInfDnr);   // sDgpwks);
		GetFldVar ('S_CODE9',    sTelNo);    // sDgpday);
		GetFldVar ('S_CODE10',   sAddress);  // sWeight);
		GetFldVar ('S_CODE11',   sBldAbo);   // sSex);
		GetFldVar ('S_CODE12',   sBldRh);    // sDeltype);
		GetFldVar ('S_CODE13',   sEdudGr);   // sApgahr1);
		GetFldVar ('S_CODE14',   sReligion); // sApgahr5);
		GetFldVar ('S_CODE15',   sJob);      // sParity);
		GetFldVar ('S_CODE16',   sHabdrkYn); // sDelmark);
		GetFldVar ('S_CODE17',   sHabdrkSp); // sDelmark1);
		GetFldVar ('S_CODE18',   sHabdrkDg); // sDelmark2);
		GetFldVar ('S_CODE19',   sHabdrkCt); // sDelmark3);
		GetFldVar ('S_CODE20',   sHabdrkPd); // sDelmark4);
		GetFldVar ('S_CODE21',   sHabsmkYn); // sDelmark5);
		GetFldVar ('S_CODE22',   sHabsmkDg); // sRemark);
		GetFldVar ('S_CODE23',   sHabsmkPd); // sHyn);
		GetFldVar ('S_CODE24',   sAdmPath);  // sStlcnt);
		GetFldVar ('S_CODE25',   sInMthd);   // sStlcol);
		GetFldVar ('S_CODE26',   sSymptoms); // sOxygenyn);
		GetFldVar ('S_CODE27',   sIndzfDt);  // sOxygen);
		GetFldVar ('S_CODE28',   sIndzlDt);  // sTempkind);
		GetFldVar ('S_CODE29',   sAdmovDet); // sBodytemp);
		GetFldVar ('S_CODE30',   sHxdzYn);   // sHrtbt);
		GetFldVar ('S_STRING1',  sHxdzDt);   // sResp);
		GetFldVar ('S_STRING2',  sHxopYn);   // sHeight);
		GetFldVar ('S_STRING3',  sHxopDt);   // sHeadsize);
		GetFldVar ('S_STRING4',  sAlgYn);    // sChstsize);
		GetFldVar ('S_STRING5',  sAlgFd);    // sBodysize);
		GetFldVar ('S_STRING6',  sAlgDg);    // sNabelyn);
		GetFldVar ('S_STRING7',  sLstdrGst); // sEyeyn);
		GetFldVar ('S_STRING8',  sAckYn);    // sVitamin);
		GetFldVar ('S_STRING9',  sAckDt);    // sVaccine);
		GetFldVar ('S_STRING10', sFhxfCd);   // sHbct);
		GetFldVar ('S_STRING11', sFhxfDet);  // sCryrate);
		GetFldVar ('S_STRING12', sFhxmCd);   // sRespyn);
		GetFldVar ('S_STRING13', sFhxmDet);  // sRespetc);
		GetFldVar ('S_STRING14', sFhxbCd);   // sCircyn);
		GetFldVar ('S_STRING15', sFhxbDet);  // sCircetc);
		GetFldVar ('S_STRING16', sFhxEtc);   // sSknunyn);
		GetFldVar ('S_STRING17', sDfrmYn);   // sSknunst);
		GetFldVar ('S_STRING18', sDfrmDt);   // sHeadfr);
		GetFldVar ('S_STRING19', sPainYn);   // sHeadair);
		GetFldVar ('S_STRING20', sPainPrt);  // sHeadetc);
		GetFldVar ('S_STRING21', sPainDt);   // sFaceyn);
		GetFldVar ('S_STRING22', sAppDt);    // sFaceetc);
		GetFldVar ('S_STRING23', sWtYn);     // sNabelvs1);
		GetFldVar ('S_STRING24', sWtDt);     // sNabelvs2);
		GetFldVar ('S_STRING25', sSlpTm);    // sBloodyn);
		GetFldVar ('S_STRING26', sSlpDso);   // sUriyn);
		GetFldVar ('S_STRING27', sSlpAd);    // sUrietc);
		GetFldVar ('S_STRING28', sFecCnt);   // sLimyn);
		GetFldVar ('S_STRING29', sFecCol);   // sLimst1);
		GetFldVar ('S_STRING30', sFecChr);   // sLimst2);
		GetFldVar ('S_NAME1',    sFecChrdt); // sLimstlr);
		GetFldVar ('S_NAME2',    sUrCnt);    // sDiaref);
		GetFldVar ('S_NAME3',    sUrQnt);    // sDiarefas);
		GetFldVar ('S_NAME4',    sUrCol);    // sCatref);
		GetFldVar ('S_NAME5',    sUrFlv);    // sCatrefas);
		GetFldVar ('S_NAME6',    sUrChr);    // sPumref);
		GetFldVar ('S_NAME7',    sSknunYn);  // sLactref);
		GetFldVar ('S_NAME8',    sSknunPt);  // sDfrmetc);
		GetFldVar ('S_NAME9',    sSknunDg);  // sNurse);
        GetFldVar ('S_NAME10',   sSkncunYn); // sAdmTime);
        GetFldVar ('S_NAME11',   sDiagName);
        GetFldVar ('S_NAME12',   sSymptom);
        GetFldVar ('S_NAME13',   sFrecdate); // 최초기록일시, KimDaeYong 2011-06-09
        // 초기퇴원계획/입원간호교육, KimDaeYong 2011-07-14
        GetFldVar ('S_STRING31',  sPatstay		);
		GetFldVar ('S_STRING32',  sDwell		);
		GetFldVar ('S_STRING33',  sNursmen		);
		GetFldVar ('S_STRING34',  sEat			);
		GetFldVar ('S_STRING35',  sEatoth		);
		GetFldVar ('S_STRING36',  sBath			);
		GetFldVar ('S_STRING37',  sBathoth		);
		GetFldVar ('S_STRING38',  sPrevyn		);
		GetFldVar ('S_STRING39',  sPrevcont		);
		GetFldVar ('S_STRING40',  sWeightyn		);
		GetFldVar ('S_STRING41',  sWeightcont	);
		GetFldVar ('S_STRING42',  sMouseyn		);
		GetFldVar ('S_STRING43',  sMousecont	);
		GetFldVar ('S_STRING44',  sSuckyn		);
		GetFldVar ('S_STRING45',  sSuckcont		);
		GetFldVar ('S_STRING46',  sSkinyn		);
		GetFldVar ('S_STRING47',  sSkincont		);
		GetFldVar ('S_STRING48',  sFeceyn		);
		GetFldVar ('S_STRING49',  sFececont		);
		GetFldVar ('S_STRING50',  sTubeyn		);
		GetFldVar ('S_STRING51',  sTubecont		);
		GetFldVar ('S_STRING52',  sUmbilyn		);
		GetFldVar ('S_STRING53',  sUmbilcont	);
		GetFldVar ('S_STRING54',  sFluyn		);
		GetFldVar ('S_STRING55',  sFlucont		);
		GetFldVar ('S_STRING56',  sAftyn		);
		GetFldVar ('S_STRING57',  sAftcont		);
		GetFldVar ('S_STRING58',  sOthyn		);
		GetFldVar ('S_STRING59',  sOthcont		);
		GetFldVar ('S_STRING60',  sDismove		);
		GetFldVar ('S_STRING61',  sArticle		);
		GetFldVar ('S_STRING62',  sMeet			);
		GetFldVar ('S_STRING63',  sConsult		);
		GetFldVar ('S_STRING64',  sBrstmilk		);
		GetFldVar ('S_STRING65',  sDisprod		);
		GetFldVar ('S_STRING66',  sDispaper		);
		GetFldVar ('S_STRING67',  sHosinfo		);
    //전자인증추가. 20151017.kya.
      GetFldVar ('S_STRING68',sSignData);
      GetFldVar ('S_STRING69',sSerialNo);
      GetFldVar ('S_STRING70',sSubjectDN);
      GetFldVar ('S_STRING71',sBring);

      Result := GetRecordCnt('S_CODE1'); //Service를 수행하고 FML Buffer에 PUT된 Record수
      txFree;
   end;
end;

// 간호정보조사지 내용 입력(신생아)
function HmdAdinfd.InsMdNbinftdll(sPatNo,    sAdmDate,  sMedDept,  sAdmTime,
                               sChaDr,    sGenDr,    sWardNo,   sRoomNo,
                               sDiagCd,   sBornDate, sDgpWks,   sDgpDay,
                               sWeight,   sSex,      sDelType,  sApgahr1,
                               sApgahr5,  sParity,   sDelMark,  sDelMark1,
                               sDelMark2, sDelMark3, sDelMark4, sDelMark5,
                               sRemark,   sHyn,      sStlCnt,   sStlCol,
                               sOxygenYN, sOxygen,   sTempKind, sBodyTemp,
                               sHrtbt,    sResp,     sHeight,   sHeadSize,
                               sChstSize, sBodySize, sNabelYn,  sEyeYn,
                               sVitamin,  sVaccine,  sHbct,     sCryRate,
                               sRespYn,   sRespEtc,  sCircYn,   sCircEtc,
                               sSknunYn,  sSknunSt,  sHeadFr,   sHeadAir,
                               sHeadEtc,  sFaceYn,   sFaceEtc,  sNabelVs1,
                               sNabelVs2, sBloodYn,  sUriyn,    sUriEtc,
                               sLimYn,    sLimSt1,   sLimSt2,   sLimStLR,
                               sDiaref,   sDiarefAs, sCatref,   sCatrefAs,
                               sPumref,   sLactref,  sDfrmetc,  sNurse,
                               sEditid,   sEditip,   sDiagName, sSymptom,
                               //초기퇴원계획/입원간호교육, KimDaeYong 2011-07-14
                               sPatstay	  , sDwell	 , sNursmen	 , sEat		, sEatoth	,
                               sBath	  , sBathoth , sPrevyn	 , sPrevcont, sWeightyn	,
                               sWeightcont, sMouseyn , sMousecont, sSuckyn	, sSuckcont	,
                               sSkinyn	  , sSkincont, sFeceyn	 , sFececont, sTubeyn	,
                               sTubecont  , sUmbilyn , sUmbilcont, sFluyn	, sFlucont	,
                               sAftyn	  , sAftcont , sOthyn	 , sOthcont	, sDismove	,
                               sArticle	  , sMeet	 , sConsult	 , sBrstmilk, sDisprod	,
                               sDispaper  , sHosinfo,xSignData,xSerialNo,xSubjectDN,sBring : String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName( 'S_PATNO;S_ADMDATE;S_MEDDEPT;S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;'+
               'S_CODE6;S_CODE7;S_CODE8;S_CODE9;S_CODE10;S_CODE11;S_CODE12;S_CODE13;'+
               'S_CODE14;S_CODE15;S_CODE16;S_CODE17;S_CODE18;S_CODE19;S_CODE20;'+
               'S_CODE21;S_CODE22;S_CODE23;S_CODE24;S_CODE25;S_CODE26;S_CODE27;S_CODE28;S_CODE29;'+
               'S_CODE30;S_NAME1;S_NAME2;S_NAME3;S_NAME4;S_NAME5;S_NAME6;S_NAME7;'+
               'S_NAME8;S_NAME9;S_NAME10;S_NAME11;S_NAME12;S_NAME13;S_NAME14;S_NAME15;'+
               'S_NAME16;S_NAME17;S_NAME18;S_NAME19;S_NAME20;S_NAME21;S_NAME22;'+
               'S_NAME23;S_NAME24;S_NAME25;S_NAME26;S_NAME27;S_NAME28;S_NAME29;S_NAME30;'+
               'S_DATE1;S_DATE2;S_DATE3;S_DATE4;S_DATE5;S_DATE6;S_DATE7;S_DATE8;S_DATE9;'+
               'S_DATE10;S_DATE11;S_STRING1;S_STRING2;' +
               'S_STRING11;S_STRING12;S_STRING13;S_STRING14;S_STRING15;S_STRING16;S_STRING17;S_STRING18;S_STRING19;S_STRING20;' +
               'S_STRING21;S_STRING22;S_STRING23;S_STRING24;S_STRING25;S_STRING26;S_STRING27;S_STRING28;S_STRING29;S_STRING30;' +
               'S_STRING31;S_STRING32;S_STRING33;S_STRING34;S_STRING35;S_STRING36;S_STRING37;S_STRING38;S_STRING39;S_STRING40;' +
               'S_STRING41;S_STRING42;S_STRING43;S_STRING44;S_STRING45;S_STRING46;S_STRING47;S_STRING48;S_STRING49;S_STRING50;S_STRING51');
   SetFldValue(0,   [sPatNo,    sAdmDate,  sMedDept,  sAdmTime,  sChaDr,
                     sGenDr,    sWardNo,   sRoomNo,   sDiagCd,   sBornDate,
                     sDgpWks,   sDgpDay,   sWeight,   sSex,      sDelType,
                     sApgahr1,  sApgahr5,  sParity,   sDelMark,  sDelMark1,
                     sDelMark2, sDelMark3, sDelMark4, sDelMark5, sRemark,
                     sHyn,      sStlCnt,   sStlCol,   sOxygenYN, sOxygen,
                     sTempKind, sBodyTemp, sHrtbt,    sResp,     sHeight,
                     sHeadSize, sChstSize, sBodySize, sNabelYn,  sEyeYn,
                     sVitamin,  sVaccine,  sHbct,     sCryRate,  sRespYn,
                     sRespEtc,  sCircYn,   sCircEtc,  sSknunYn,  sSknunSt,
                     sHeadFr,   sHeadAir,  sHeadEtc,  sFaceYn,   sFaceEtc,
                     sNabelVs1, sNabelVs2, sBloodYn,  sUriyn,    sUriEtc,
                     sLimYn,    sLimSt1,   sLimSt2,   sLimStLR,  sDiaref,
                     sDiarefAs, sCatref,   sCatrefAs, sPumref,   sLactref,
                     sDfrmetc,  sNurse,    sEditid,   sEditip,   sDiagName,
                     sSymptom,
                     sPatstay   , sDwell   , sNursmen  , sEat	  , sEatoth	 ,
                     sBath	    , sBathoth , sPrevyn   , sPrevcont, sWeightyn,
                     sWeightcont, sMouseyn , sMousecont, sSuckyn  , sSuckcont,
                     sSkinyn	, sSkincont, sFeceyn   , sFececont, sTubeyn	 ,
                     sTubecont  , sUmbilyn , sUmbilcont, sFluyn	  , sFlucont ,
                     sAftyn	    , sAftcont , sOthyn	   , sOthcont , sDismove ,
                     sArticle	, sMeet	   , sConsult  , sBrstmilk, sDisprod ,
                     sDispaper  , sHosinfo, xSignData,xSerialNo,xSubjectDN,sBring]);
   if (txPutF('MD_NBINF_I1')) then begin //Tuxedo Service Call  md_nbinf_i1.pc
      Result := 1;
      txFree;
   end;
end;

//(추가. 2003.1.11 이용언) 간호정보조사지 - 일반(신규) 저장
function HmdAdinfd.insertAdinfdll2(sPatno,    tAdmdate,  sRecnrs,   sJob,      sDiagcd,
                                   sInfdnr,   sWedyn,    sEdudgr,   sTelno1,   sTelno2,
                                   sAdmpath,  sInmthd,   sAlgyn,    sAlgdg,    sAlgfd,
                                   sAlgetc,   s1,        sLstdrgst, s2,        sfamrela,
                                   sOpstat,   sPhist,    sCondst,   sConcom,   s3,
                                   s4,        s5,        s6,        s7,        sBldrh,
                                   sfirstbl,  sTerm,     sMensamt,  sMenspain, sDaehwa,
                                   sClrph,    s8,        s9,        s10,       s11,
                                   s12,       s13,       s14,       sStool,    sSleep,
                                   sSleepdg,  sDrink,    sTabaco,   sAdmreson, sInedu1,
                                   sInedu2,   sInedu3,   sInedu4,   sInedu5,   sInedu6,
                                   sInedu7,   sInedu8,   sInedu9,   sNreduetc, sEditid,
                                   Editip,    sMeddept,  sChadr,    sGendr,    sWardno,
                                   sRoomno,   sBodyTemp, sPulse,    sRespCnt,  sBldPreHI,
                                   sBldPreLO, sWeight,   sHeight,   sBldType,  sAppetite,
                                   sWetchg,   sLastbl,   sMostchk,  sMosttxt,  sAdmlast,
                                   s15,       s16,       s17,       s18,       s19,
                                   sChType,   sActivest, sChildcnt, sleephr,
                                   sTabacoflag, sEdutabaco,
                                   sNation,   sRace,     sPay,      sBokji,    sKnow,
                                   sArganti,  sDysphagia,sStress,   sSafeEdu,
                                   sOutEdu1,  sOutEdu2,  sOutEdu3,  sOutEdu4,  sOutEdu5,
                                   sBlood,    sCultuerect, xSignData,xSerialNo,xSubjectDN,sBring,sSmoking : String):Integer;
begin
   Result := -1;

   txAlloc;

   SetFldName('S_PATNO;S_ADMDATE;S_STRING1;S_STRING2;S_STRING3;'+
              'S_STRING4;S_STRING5;S_STRING6;S_STRING7;S_STRING8;'+
              'S_STRING9;S_STRING10;S_STRING11;S_STRING12;S_STRING13;'+
              'S_STRING14;S_STRING15;S_STRING16;S_STRING17;S_STRING18;'+
              'S_STRING19;S_STRING20;S_STRING21;S_STRING22;S_STRING23;'+
              'S_STRING24;S_STRING25;S_STRING26;S_STRING27;S_STRING28;'+
              'S_STRING29;S_STRING30;S_STRING31;S_STRING32;S_STRING33;'+
              'S_STRING34;S_STRING35;S_STRING36;S_STRING37;S_STRING38;'+
              'S_STRING39;S_STRING40;S_STRING41;S_STRING42;S_STRING43;'+
              'S_STRING44;S_STRING45;S_STRING46;S_STRING47;S_STRING48;'+
              'S_STRING49;S_STRING50;S_STRING51;S_STRING52;S_STRING53;'+
              'S_STRING54;S_STRING55;S_STRING56;S_STRING57;S_STRING58;'+
              'S_STRING59;S_STRING60;S_STRING61;S_STRING62;S_STRING63;'+
              'S_STRING64;S_STRING65;S_STRING66;S_STRING67;S_STRING68;'+
              'S_STRING69;S_STRING70;S_STRING71;S_STRING72;S_STRING73;'+
              'S_STRING74;S_STRING75;S_STRING76;S_STRING77;S_STRING78;'+
              'S_STRING79;S_STRING80;S_STRING81;S_STRING82;S_STRING83;'+
              'S_STRING84;S_STRING85;S_STRING86;S_STRING87;' +
              'S_STRING88;S_STRING89;S_STRING90;S_STRING91;S_STRING92;'+
              'S_STRING93;S_STRING94;S_STRING95;S_STRING96;S_STRING97;'+
              'S_STRING98;S_STRING99;S_STRING100;S_STRING101;S_STRING102;'+
              'S_STRING103;S_STRING104;S_STRING105;S_STRING106;S_STRING107;S_STRING108;S_STRING109;S_STRING110' );
   SetFldValue(0,[sPatno,    tAdmdate,  sRecnrs,   sDiagcd,   sJob,
                  sInfdnr,   sWedyn,    sEdudgr,   sTelno1,   sTelno2,
                  sAdmpath,  sInmthd,   sAlgyn,    sAlgdg,    sAlgfd,
                  sAlgetc,   s1,        sLstdrgst, s2,        sfamrela,
                  sOpstat,   sPhist,    sCondst,   sConcom,   s3,
                  s4,        s5,        s6,        s7,        sBldrh,
                  sfirstbl,  sTerm,     sMensamt,  sMenspain, sDaehwa,
                  sClrph,    s8,        s9,        s10,       s11,
                  s12,       s13,       s14,       sStool,    sSleep,
                  sSleepdg,  sDrink,    sTabaco,   sAdmreson, sInedu1,
                  sInedu2,   sInedu3,   sInedu4,   sInedu5,   sInedu6,
                  sInedu7,   sInedu8,   sInedu9,   sNreduetc, sEditid,
                  Editip,    sMeddept,  sChadr,    sGendr,    sWardno,
                  sRoomno,   sBodyTemp, sPulse,    sRespCnt,  sBldPreHI,
                  sBldPreLO, sWeight,   sHeight,   sBldType,  sAppetite,
                  sWetchg,   sLastbl,   sMostchk,  sMosttxt,  sAdmlast,
                  s15,       s16,       s17,       s18,       s19,
                  sChType,   sActivest, sChildcnt, sleephr,
                  sTabacoflag, sEdutabaco,
                  sNation,   sRace,     sPay,      sBokji,    sKnow,
                  sArganti,  sDysphagia,sStress,   sSafeEdu,
                  sOutEdu1,  sOutEdu2,  sOutEdu3,  sOutEdu4,  sOutEdu5,
                  sBlood,    sCultuerect, xSignData,xSerialNo,xSubjectDN,
                  sBring,sSmoking
                   ]);

   if (txPutF('MD_ADINF_I2')) then // md_adinf_i2.pc
   begin
      Result := 1;

      txFree;
   end;
end;

//(추가. 2003.1.11 이용언) 간호정보조사지 - 일반(신규) 조회
//function HmdAdinfd.SelAdinfdll2(sType1, sType2:String):Integer;
function HmdAdinfd.SelAdinfdll2(sType1, sType2, sType3:String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer 를 받아옴.
   SetFldName('S_PATNO;S_ADMDATE;S_TYPE1');
   SetFldValue(0,[sType1, sType2, sType3]);
   if (txGetF('MD_ADINF_S2')) then  //Tuxedo Service Call md_adinf_s2.pc
   begin
      GetFldVar ('S_STRING1' ,sRecnrs);
		GetFldVar ('S_STRING2' ,sJob);
		GetFldVar ('S_STRING3' ,sDiagcd);
		GetFldVar ('S_STRING4' ,sInfdnr);
		GetFldVar ('S_STRING5' ,sWedyn);
		GetFldVar ('S_STRING6' ,sEdudgr);
		GetFldVar ('S_STRING7' ,sTelno1);
		GetFldVar ('S_STRING8' ,sTelno2);
		GetFldVar ('S_STRING9' ,sAdmpath);
		GetFldVar ('S_STRING10',sInmthd);
		GetFldVar ('S_STRING11',sAlgyn);
		GetFldVar ('S_STRING12',sAlgdg);
		GetFldVar ('S_STRING13',sAlgfd);
		GetFldVar ('S_STRING14',sAlgetc);
		GetFldVar ('S_STRING15',s1);
		GetFldVar ('S_STRING16',sLstdrgst);
		GetFldVar ('S_STRING17',s2);
		GetFldVar ('S_STRING18',sfamrela);
		GetFldVar ('S_STRING19',sOpstat);
		GetFldVar ('S_STRING20',sPhist);
		GetFldVar ('S_STRING21',sCondst);
		GetFldVar ('S_STRING22',sConcom);
		GetFldVar ('S_STRING23',s3);
		GetFldVar ('S_STRING24',s4);
		GetFldVar ('S_STRING25',s5);
		GetFldVar ('S_STRING26',s6);
		GetFldVar ('S_STRING27',s7);
		GetFldVar ('S_STRING28',sBldrh);
		GetFldVar ('S_STRING29',sfirstbl);
		GetFldVar ('S_STRING30',sTerm);
		GetFldVar ('S_STRING31',sMensamt);
		GetFldVar ('S_STRING32',sMenspain);
		GetFldVar ('S_STRING33',sDaehwa);
		GetFldVar ('S_STRING34',sClrph);
		GetFldVar ('S_STRING35',s8);
		GetFldVar ('S_STRING36',s9);
		GetFldVar ('S_STRING37',s10);
		GetFldVar ('S_STRING38',s11);
        GetFldVar ('S_STRING39',s12);
		GetFldVar ('S_STRING40',s13);
		GetFldVar ('S_STRING41',s14);
		GetFldVar ('S_STRING42',sStool);
		GetFldVar ('S_STRING43',sSleep);
		GetFldVar ('S_STRING44',sSleepdg);
		GetFldVar ('S_STRING45',sDrink);
		GetFldVar ('S_STRING46',sTabaco);
		GetFldVar ('S_STRING47',sAdmreson);
      GetFldVar ('S_STRING48',sInedu1);
		GetFldVar ('S_STRING49',sInedu2);
		GetFldVar ('S_STRING50',sInedu3);
		GetFldVar ('S_STRING51',sInedu4);
		GetFldVar ('S_STRING52',sInedu5);
		GetFldVar ('S_STRING53',sInedu6);
		GetFldVar ('S_STRING54',sInedu7);
		GetFldVar ('S_STRING55',sInedu8);
      GetFldVar ('S_STRING56',sInedu9);
		GetFldVar ('S_STRING57',sNreduetc);
      GetFldVar ('S_STRING58',sMeddept);
		GetFldVar ('S_STRING59',sChadr);
		GetFldVar ('S_STRING60',sGendr);
		GetFldVar ('S_STRING61',sWardno);
		GetFldVar ('S_STRING62',sRoomno);
      GetFldVar ('S_STRING63',sBodytemp);
      GetFldVar ('S_STRING64',sPulse);
      GetFldVar ('S_STRING65',sRespcnt);
      GetFldVar ('S_STRING66',sBldprehi);
      GetFldVar ('S_STRING67',sBldprelo);
      GetFldVar ('S_STRING68',sWeight);
      GetFldVar ('S_STRING69',sHeight);
      GetFldVar ('S_STRING70',sBldtype);
      GetFldVar ('S_STRING71',sLastbl);
      GetFldVar ('S_STRING72',sMostchk);
      GetFldVar ('S_STRING73',sMosttxt);
      GetFldVar ('S_STRING74',sAppetite);
      GetFldVar ('S_STRING75',sWetchg);

      GetFldVar ('S_STRING76',sAdmlast );
      GetFldVar ('S_STRING77',sDeformt );
      GetFldVar ('S_STRING78',sFeceskd );
      GetFldVar ('S_STRING79',sUrinkd  );
      GetFldVar ('S_STRING80',sNerves  );
      GetFldVar ('S_STRING81',sSkinst  );
      GetFldVar ('S_STRING82',sChType  );
      GetFldVar ('S_STRING83',sActivest);
      GetFldVar ('S_STRING84',sChildcnt);
      GetFldVar ('S_STRING85',sSleephr );
      GetFldVar ('S_STRING86',sRecnrsnm );

      GetFldVar ('S_STRING87',sTabacoflag );
      GetFldVar ('S_STRING88',sEdutabaco );

      GetFldVar ('S_STRING89',sNation );
      GetFldVar ('S_STRING90',sRace );
      GetFldVar ('S_STRING91',sPay );
      GetFldVar ('S_STRING92',sBokji  );
      GetFldVar ('S_STRING93',sKnow  );
      GetFldVar ('S_STRING94',sArganti  );
      GetFldVar ('S_STRING95',sDysphagia  );
      GetFldVar ('S_STRING96',sStress);
      GetFldVar ('S_STRING97',sSafeEdu);
      GetFldVar ('S_STRING98',sOutEdu1 );
      GetFldVar ('S_STRING99',sOutEdu2 );
      GetFldVar ('S_STRING100',sOutEdu3 );
      GetFldVar ('S_STRING101',sOutEdu4 );
      GetFldVar ('S_STRING102',sOutEdu5);
      GetFldVar ('S_STRING103',sFrecdate);  //최초기록일시, KimDaeYong 2011-06-08
      GetFldVar ('S_STRING104',sBloodyn);
      GetFldVar ('S_STRING105',sCultueretc);
      //전자인증추가. 20151017.kya.
      GetFldVar ('S_STRING106',sSignData);
      GetFldVar ('S_STRING107',sSerialNo);
      GetFldVar ('S_STRING108',sSubjectDN);
      GetFldVar ('S_STRING109',sBring);
      GetFldVar ('S_STRING110',sSmoking);

      Result := GetRecordCnt ('S_STRING1');

      txFree;
   end;
end;
//(추가. 2003.1.15 이용언)
// 간호정보조사지 기록 이력 조회 수정
{function HmdAdinfd.SelAdinfHistorydll2(sPatNo, sType1:String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer 를 받아옴.
   SetFldName('S_PATNO;S_TYPE1');
   SetFldValue(0,[sPatNo, sType1]);
   if (txGetF('MD_ADINF_L2')) then begin //Tuxedo Service Call     // md_adinf_l2.pc
      GetFldVar('S_NAME1'   ,      sAdmDate);
      GetFldVar('S_STRING2' ,      sMedDept);
   	  GetFldVar('S_STRING3' ,      sChadr);
   	  GetFldVar('S_STRING4' ,      sGendr);
   	  GetFldVar('S_STRING5' ,      sWardno);
   	  GetFldVar('S_STRING6' ,      sRoomno);
   	  GetFldVar('S_STRING7' ,      sRecnrs);
   	  GetFldVar('S_STRING8' ,      sRecType);
   	  GetFldVar('S_STRING9' ,      sDeptNm);
      GetFldVar('S_STRING10',      sRegdate);
      GetFldVar('S_STRING11',      sStayyn);

      Result := GetRecordCnt('S_NAME1'); //Service를 수행하고 FML Buffer에 PUT된 Record수
      txFree;
   end;
end;
}
//이력관리조회.20181012.kya.
function HmdAdinfd.SelAdinfHistorydll2(sPatNo, sType1, sType2:String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer 를 받아옴.
   SetFldName('S_PATNO;S_TYPE1;S_TYPE2');
   SetFldValue(0,[sPatNo, sType1, sType2]);
   if (txGetF('MD_ADINF_L2')) then begin //Tuxedo Service Call     // md_adinf_l2.pc
      GetFldVar('S_NAME1'   ,      sAdmDate);
      GetFldVar('S_STRING2' ,      sMedDept);
   	  GetFldVar('S_STRING3' ,      sChadr);
   	  GetFldVar('S_STRING4' ,      sGendr);
   	  GetFldVar('S_STRING5' ,      sWardno);
   	  GetFldVar('S_STRING6' ,      sRoomno);
   	  GetFldVar('S_STRING7' ,      sRecnrs);
   	  GetFldVar('S_STRING8' ,      sRecType);
   	  GetFldVar('S_STRING9' ,      sDeptNm);
      GetFldVar('S_STRING10',      sRegdate);
      GetFldVar('S_STRING11',      sStayyn);

      GetFldVar('S_STRING12',      sHseq);
      GetFldVar('S_STRING13',      sEditid);
      GetFldVar('S_STRING14',      sEditname);
      GetFldVar('S_STRING15',      sEditdate);

      Result := GetRecordCnt('S_NAME1'); //Service를 수행하고 FML Buffer에 PUT된 Record수
      txFree;
   end;
end;


function HmdAdinfd.SelAdinfHistorydll3(sWard, sType1: string): Integer;
begin
  Result := -1;
  txAlloc; //Pointer 를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2');
  SetFldValue(0, [sWard, sType1]);

  if (txGetF('MD_ADINF_L3')) then begin //Tuxedo Service Call   // md_adinf_l3.pc
    GetFldVar('S_STRING1' , sPatNm);
    GetFldVar('S_STRING2' , sMedDept);
    GetFldVar('S_STRING3' , sWardNo);
    GetFldVar('S_STRING4' , sRoomNo);
    GetFldVar('S_STRING5' , sInfDnr);
    GetFldVar('S_STRING6' , sGubun);
    GetFldVar('S_STRING7' , sPatNo);
    GetFldVar('S_STRING8' , sSex);
    GetFldVar('S_STRING9' , sBirth);
    GetFldVar('S_STRING10', sCitizen);
    GetFldVar('S_STRING11', sAdmdate);
    GetFldVar('S_STRING12', sTelno1);
    GetFldVar('S_STRING13', s1);
    GetFldVar('S_STRING14', sChaDr);
    GetFldVar('S_STRING15', sGenDr);
    GetFldVar('S_STRING16', sDeptnm);
    GetFldVar('S_STRING17', sChaDrnm);
    GetFldVar('S_STRING18', sGenDrnm);

    Result := GetRecordCnt('S_STRING1'); //Service를 수행하고 FML Buffer에 PUT된 Record수
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//  HmdPdinft 	간호정보조사지(소아)                                          //
////////////////////////////////////////////////////////////////////////////////

// (추가. 2003.1.13 이용언) 간호정보조사지 내용 입력(소아용) 수정본
function HmdPdinfd.InsPdinfdll2(sPatno,sAdmdate,sRecnrs,sDiagname,sInfdnr,sTelno1,sTelno2,
                           sDelvtype,sborndc,sBornw,sNoww,sAdmpath,sAdmmeth,sBldpre,
                           sHrtbt,sResp,sBodytemp,sHeight,sWeight,sSymptom,sIndzfdt,
                           sHxdzyn,sLstdrgst,sAlgyn,sArgdg,sArgfg,sArgetc,sFhxf,
                           sFhxetc,sOpyn,sPshist,sConsstat,sComm,sFeelstat,sMeal,
                           sGihyung,sCircst,sRespst,sDietst,sFeccnt,sFecchr,sUrcnt,
                           sUrchr,sPain,sSkin,sGls,sEarAid,sNeotrc,sTeeth,sDpt,
                           sMeas,sPolio,sCheek,sLiver,sbcg,sEtc,sEditid,sEditip,
                           sMeddept, sChadr, sGendr, sWardno, sRoomno,
                           sHabit, sSkinst, sJikupf, sJikupm, sRegf, sRegm,
                           sBldtype, sActivest, sHospital, sEdu1, sEdu2,
                           sEdu3, sEdu4, sEdu5, sEdu6, sEdu7, sEdu8,
                           sIpHis,sTelno3,  sTelno4,  sOutedu1,sOutedu2,
                           sOutedu3, sOutedu3oth, sOutedu4, sOutedu5, sNation, sNationoth, sRace, sPay,
                           sBokji, sArganti, sSafeedu, sAppetite, sWetchg, sDysphagia, sStress, sBloodyn, sCultueretc, sChurch, sNreduetc,
                           xSignData,xSerialNo,xSubjectDN,sBring  :String):Integer;

begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName( 'S_PATNO;S_ADMDATE;S_STRING1;S_STRING2;S_STRING3;S_STRING4;'+
               'S_STRING5;S_STRING6;S_STRING7;S_STRING8;S_STRING9;S_STRING10;'+
               'S_STRING11;S_STRING12;S_STRING13;S_STRING14;S_STRING15;'+
               'S_STRING16;S_STRING17;S_STRING18;S_STRING19;S_STRING20;'+
               'S_STRING21;S_STRING22;S_STRING23;S_STRING24;S_STRING25;'+
               'S_STRING26;S_STRING27;S_STRING28;S_STRING29;S_STRING30;'+
               'S_STRING31;S_STRING32;S_STRING33;S_STRING34;S_STRING35;'+
               'S_STRING36;S_STRING37;S_STRING38;S_STRING39;S_STRING40;'+
               'S_STRING41;S_STRING42;S_STRING43;S_STRING44;S_STRING45;'+
               'S_STRING46;S_STRING47;S_STRING48;S_STRING49;S_STRING50;'+
               'S_STRING51;S_STRING52;S_STRING53;S_STRING54;S_STRING55;'+
               'S_STRING56;S_STRING57;S_STRING58;S_STRING59;S_STRING60;'+
               'S_STRING61;S_STRING62;S_STRING63;S_STRING64;S_STRING65;'+
               'S_STRING66;S_STRING67;S_STRING68;S_STRING69;S_STRING70;'+
               'S_STRING71;S_STRING72;S_STRING73;S_STRING74;S_STRING75;'+
               'S_STRING76;S_STRING77;S_STRING78;S_STRING79;S_STRING80;'+
               'S_STRING81;S_STRING82;S_STRING83;S_STRING84;S_STRING85;'+
               'S_STRING86;S_STRING87;S_STRING88;S_STRING89;S_STRING90;'+
               'S_STRING91;S_STRING92;S_STRING93;S_STRING94;S_STRING95;'+
               'S_STRING96;S_STRING97;S_STRING98;S_STRING99;S_STRING100;S_STRING101;S_STRING102;'+
               'S_STRING103;S_STRING104;S_STRING105;S_STRING106');
   SetFldValue(0,   [sPatno,sAdmdate,sRecnrs,sDiagname,sInfdnr,sTelno1,sTelno2,
                     sDelvtype,sborndc,sBornw,sNoww,sAdmpath,sAdmmeth,sBldpre,
                     sHrtbt,sResp,sBodytemp,sHeight,sWeight,sSymptom,sIndzfdt,
                     sHxdzyn,sLstdrgst,sAlgyn,sArgdg,sArgfg,sArgetc,sFhxf,
                     sFhxetc,sOpyn,sPshist,sConsstat,sComm,sFeelstat,sMeal,
                     sGihyung,sCircst,sRespst,sDietst,sFeccnt,sFecchr,sUrcnt,
                     sUrchr,sPain,sSkin,sGls,sEarAid,sNeotrc,sTeeth,sDpt,
                     sMeas,sPolio,sCheek,sLiver,sbcg,sEtc,sEditid,sEditip,
                     sMeddept, sChadr, sGendr, sWardno, sRoomno,
                     sHabit, sSkinst, sJikupf, sJikupm, sRegf, sRegm,
                     sBldtype, sActivest,sHospital, sEdu1, sEdu2,
                     sEdu3, sEdu4, sEdu5, sEdu6, sEdu7, sEdu8, sIpHis,
                     sTelno3,  sTelno4,  sOutedu1,sOutedu2,
                     sOutedu3, sOutedu3oth, sOutedu4, sOutedu5, sNation, sNationoth, sRace, sPay,
                     sBokji, sArganti, sSafeedu, sAppetite, sWetchg, sDysphagia, sStress, sBloodyn, sCultueretc, sChurch, sNreduetc,
                     xSignData,xSerialNo,xSubjectDN,sBring]);

   if (txPutF('MD_PDINF_I2')) then begin //Tuxedo Service Call     md_pdinf_i2.pc
      Result := 1;
      txFree;
   end;
end;

 //이력조회.20181015.kya.
//function HmdPdinfd.SelPdinfdll2(sType1,sType2:String):Integer;
function HmdPdinfd.SelPdinfdll2(sType1,sType2,sType3:String):Integer;
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO;S_ADMDATE;S_TYPE1');
   SetFldValue(0,[sType1,sType2,sType3] );
   if (txGetF('MD_PDINF_S2')) then  //Tuxedo Service Call    md_pdinf_s2.pc
   begin
      GetFldVar('S_STRING1' , sRecnrs);
		GetFldVar('S_STRING2' , sDiagname);
		GetFldVar('S_STRING3' , sInfdnr);
		GetFldVar('S_STRING4' , sTelno1);
		GetFldVar('S_STRING5' , sTelno2);
		GetFldVar('S_STRING6' , sDelvtype);
		GetFldVar('S_STRING7' , sborndc);
		GetFldVar('S_STRING8' , sBornw);
		GetFldVar('S_STRING9' , sNoww);
		GetFldVar('S_STRING10', sAdmpath);
		GetFldVar('S_STRING11', sAdmmeth);
		GetFldVar('S_STRING12', sBldpre);
		GetFldVar('S_STRING13', sHrtbt);
		GetFldVar('S_STRING14', sResp);
		GetFldVar('S_STRING15', sBodytemp);
		GetFldVar('S_STRING16', sHeight);
		GetFldVar('S_STRING17', sWeight);
		GetFldVar('S_STRING18', sSymptom);
		GetFldVar('S_STRING19', sIndzfdt);
		GetFldVar('S_STRING20', sHxdzyn);
		GetFldVar('S_STRING21', sLstdrgst);
		GetFldVar('S_STRING22', sAlgyn);
		GetFldVar('S_STRING23', sArgdg);
        GetFldVar('S_STRING24', sArgfg);
		GetFldVar('S_STRING25', sArgetc);
        GetFldVar('S_STRING26', sFhxf);
		GetFldVar('S_STRING27', sFhxetc);
		GetFldVar('S_STRING28', sOpyn);
		GetFldVar('S_STRING29', sPshist);
		GetFldVar('S_STRING30', sConsstat);
        GetFldVar('S_STRING31', sComm);
		GetFldVar('S_STRING32', sFeelstat);
		GetFldVar('S_STRING33', sMeal);
		GetFldVar('S_STRING34', sGihyung);
		GetFldVar('S_STRING35', sCircst);
		GetFldVar('S_STRING36', sRespst);
		GetFldVar('S_STRING37', sDietst);
		GetFldVar('S_STRING38', sFeccnt);
		GetFldVar('S_STRING39', sFecchr);
		GetFldVar('S_STRING40', sUrcnt);
		GetFldVar('S_STRING41', sUrchr);
		GetFldVar('S_STRING42', sPain);
		GetFldVar('S_STRING43', sSkin);
		GetFldVar('S_STRING44', sGls);
		GetFldVar('S_STRING45', sEarAid);
		GetFldVar('S_STRING46', sNeotrc);
		GetFldVar('S_STRING47', sTeeth);
		GetFldVar('S_STRING48', sDpt);
		GetFldVar('S_STRING49', sMeas);
        GetFldVar('S_STRING50', sPolio);
		GetFldVar('S_STRING51', sCheek);
        GetFldVar('S_STRING52', sLiver);
		GetFldVar('S_STRING53', sbcg);
		GetFldVar('S_STRING54', sEtc);
        GetFldVar('S_STRING55', sMeddept);
		GetFldVar('S_STRING56', sChadr);
		GetFldVar('S_STRING57', sGendr);
		GetFldVar('S_STRING58', sWardno);
		GetFldVar('S_STRING59', sRoomno);
        GetFldVar('S_STRING60', sHabit   );
		GetFldVar('S_STRING61', sSkinst  );
		GetFldVar('S_STRING62', sJikupf  );
        GetFldVar('S_STRING63', sJikupm  );
		GetFldVar('S_STRING64', sRegf    );
		GetFldVar('S_STRING65', sRegm    );
		GetFldVar('S_STRING66', sBldtype );
		GetFldVar('S_STRING67', sActivest);
		GetFldVar('S_STRING68', sHospital);
		GetFldVar('S_STRING69', sEdu1    );
        GetFldVar('S_STRING70', sEdu2    );
		GetFldVar('S_STRING71', sEdu3    );
        GetFldVar('S_STRING72', sEdu4    );
		GetFldVar('S_STRING73', sEdu5    );
		GetFldVar('S_STRING74', sEdu6    );
		GetFldVar('S_STRING75', sEdu7    );
		GetFldVar('S_STRING76', sEdu8    );
		GetFldVar('S_STRING77', sIphis   );
        GetFldVar('S_STRING78', sFrecdate); //최초기록일시, KimDaeYong 2011-06-09
        //2011인증평가, KimDaeYong 2011-07-19
	    GetFldVar('S_STRING79', sArganti 	);
	    GetFldVar('S_STRING80', sNation  	);
	    GetFldVar('S_STRING81', sNationoth  );
	    GetFldVar('S_STRING82', sRace    	);
	    GetFldVar('S_STRING83', sPay     	);
	    GetFldVar('S_STRING84', sBokji   	);
	    GetFldVar('S_STRING85', sSafeedu 	);
	    GetFldVar('S_STRING86', sAppetite	);
	    GetFldVar('S_STRING87', sWetchg  	);
	    GetFldVar('S_STRING88', sDysphagia  );
	    GetFldVar('S_STRING89', sStress  	);
	    GetFldVar('S_STRING90', sOutedu1 	);
	    GetFldVar('S_STRING91', sOutedu2 	);
	    GetFldVar('S_STRING92', sOutedu3 	);
	    GetFldVar('S_STRING93', sOutedu3oth );
	    GetFldVar('S_STRING94', sOutedu4 	);
	    GetFldVar('S_STRING95', sOutedu5 	);
	    GetFldVar('S_STRING96', sTelno3  	);
	    GetFldVar('S_STRING97', sTelno4  	);
      GetFldVar('S_STRING98', sBloodyn  	);
	    GetFldVar('S_STRING99', sCultueretc  	);
      GetFldVar('S_STRING100', sChurch  	);
      GetFldVar('S_STRING101', sNreduetc  	);
      //전자인증추가. 20151017.kya.
      GetFldVar ('S_STRING102',sSignData);
      GetFldVar ('S_STRING103',sSerialNo);
      GetFldVar ('S_STRING104',sSubjectDN);
      GetFldVar ('S_STRING105',sBring);

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;



////////////////////////////////////////////////////////////////////////////////
//  HmdObinft 	간호정보조사지(산부인과)                                      //
////////////////////////////////////////////////////////////////////////////////
function HmdObinfd.insertObinfdll2(sPatno, tAdmdate, sRecnrs, sIcdname,
                                   s1,  s2,  s3,  s4,  s5,  s6,  s7,  s8,  s9,  s10,
                                   s11, s12, s13, s14, s15, s16, s17, s18, s19, s20,
                                   s21, s22, s23, s24, s25, s26, s27, s28, s29, s30,
                                   s31, s32, s33, s34, s35, s36, s37, s38, s39, s40,
                                   s41, s42, s43, s44, s45, s46, s47, s48, s49, s50,
                                   s51, s52, s53, s54, s55, s56, s57, s58, s59, s60,
                                   s61, s62, s63, s64, s65, s66, s67, s68, s69, s70,
                                   s71, s72, s73, s74, s75, s76, s77, s78, s79, s80,
                                   s81, s82, s83, s84, s85, s86, s87, s88, s89, s90,
                                   s91, s92, s93, s94, s95, s96, s97, s98, s99, s100,
                                   s101,s102,s103,s104,sEditid, sEditip, sBloodyn, sCultueretc,
                                   xSignData,xSerialNo,xSubjectDN,sBring,sSmoking : String):Integer;
begin
   Result := -1;

   txAlloc;

   SetFldName('S_PATNO;S_ADMDATE;S_STRING1;S_STRING2;S_STRING3;'+
              'S_STRING4;S_STRING5;S_STRING6;S_STRING7;S_STRING8;'+
              'S_STRING9;S_STRING10;S_STRING11;S_STRING12;S_STRING13;'+
              'S_STRING14;S_STRING15;S_STRING16;S_STRING17;S_STRING18;'+
              'S_STRING19;S_STRING20;S_STRING21;S_STRING22;S_STRING23;'+
              'S_STRING24;S_STRING25;S_STRING26;S_STRING27;S_STRING28;'+
              'S_STRING29;S_STRING30;S_STRING31;S_STRING32;S_STRING33;'+
              'S_STRING34;S_STRING35;S_STRING36;S_STRING37;S_STRING38;'+
              'S_STRING39;S_STRING40;S_STRING41;S_STRING42;S_STRING43;'+
              'S_STRING44;S_STRING45;S_STRING46;S_STRING47;S_STRING48;'+
              'S_STRING49;S_STRING50;S_STRING51;S_STRING52;S_STRING53;'+
              'S_STRING54;S_STRING55;S_STRING56;S_STRING57;S_STRING58;'+
              'S_STRING59;S_STRING60;S_STRING61;S_STRING62;S_STRING63;'+
              'S_STRING64;S_STRING65;S_STRING66;S_STRING67;S_STRING68;'+
              'S_STRING69;S_STRING70;S_STRING71;S_STRING72;S_STRING73;'+
              'S_STRING74;S_STRING75;S_STRING76;S_STRING77;S_STRING78;'+
              'S_STRING79;S_STRING80;S_STRING81;S_STRING82;S_STRING83;'+
              'S_STRING84;S_STRING85;S_STRING86;S_STRING87;' +
              'S_STRING88;S_STRING89;S_STRING90;S_STRING91;S_STRING92;'+
              'S_STRING93;S_STRING94;S_STRING95;S_STRING96;S_STRING97;'+
              'S_STRING98;S_STRING99;S_STRING100;S_STRING101;S_STRING102;'+
              'S_STRING103;S_STRING104;S_STRING105;S_STRING106;S_STRING107;'+
              'S_STRING108;S_STRING109;S_STRING110;S_STRING111;S_STRING112;S_STRING113;S_STRING114;S_STRING115');
   SetFldValue(0,[sPatno, tAdmdate, sRecnrs, sIcdname,
                  s1,  s2,  s3,  s4,  s5,  s6,  s7,  s8,  s9,  s10,
                  s11, s12, s13, s14, s15, s16, s17, s18, s19, s20,
                  s21, s22, s23, s24, s25, s26, s27, s28, s29, s30,
                  s31, s32, s33, s34, s35, s36, s37, s38, s39, s40,
                  s41, s42, s43, s44, s45, s46, s47, s48, s49, s50,
                  s51, s52, s53, s54, s55, s56, s57, s58, s59, s60,
                  s61, s62, s63, s64, s65, s66, s67, s68, s69, s70,
                  s71, s72, s73, s74, s75, s76, s77, s78, s79, s80,
                  s81, s82, s83, s84, s85, s86, s87, s88, s89, s90,
                  s91, s92, s93, s94, s95, s96, s97, s98, s99, s100,
                  s101,s102,s103,s104,sEditid, sEditip, sBloodyn, sCultueretc,
                  xSignData,xSerialNo,xSubjectDN,sBring,sSmoking]);

   if (txPutF('MD_OBINF_I2')) then // md_obinf_i2.pc
   begin
      Result := 1;

      txFree;
   end;
end;

//function HmdObinfd.SelObinfdll2(sType1, sType2:String):Integer;
//이력조회.20181015.kya.
function HmdObinfd.SelObinfdll2(sType1, sType2, sType3:String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer 를 받아옴.
   SetFldName('S_PATNO;S_ADMDATE;S_TYPE1');
   SetFldValue(0,[sType1, sType2, sType3]);
   if (txGetF('MD_OBINF_S2')) then  //Tuxedo Service Call md_obinf_s2.pc
   begin
        GetFldVar ('S_STRING1' ,sRecnrs);
  		GetFldVar ('S_STRING2' ,sIcdname);
        GetFldVar ('S_STRING3' ,sNation);
		GetFldVar ('S_STRING4' ,sRace);
		GetFldVar ('S_STRING5' ,sJob);
		GetFldVar ('S_STRING6' ,sMerry);
		GetFldVar ('S_STRING7' ,sInpoffe);
		GetFldVar ('S_STRING8' ,sChild);
        GetFldVar ('S_STRING9' ,sEducat);
		GetFldVar ('S_STRING10' ,sReligion);
		GetFldVar ('S_STRING11',sPay);
		GetFldVar ('S_STRING12',sBokji);
		GetFldVar ('S_STRING13',sTelno1);
		GetFldVar ('S_STRING14',sTelno2);
		GetFldVar ('S_STRING15',sHname);
		GetFldVar ('S_STRING16',sHbirthdate);
        GetFldVar ('S_STRING17',sHbldtype);
		GetFldVar ('S_STRING18',sBodytemp);
		GetFldVar ('S_STRING19',sPulse);
		GetFldVar ('S_STRING20',sRespcnt);
		GetFldVar ('S_STRING21',sBldprehi);
		GetFldVar ('S_STRING22',sBldprelo);
		GetFldVar ('S_STRING23',sPreweight);
		GetFldVar ('S_STRING24',sPostweight);
		GetFldVar ('S_STRING25',sHeight);
		GetFldVar ('S_STRING26',sBldtype);
		GetFldVar ('S_STRING27',sAdmcou);
		GetFldVar ('S_STRING28',sAdmmeth);
		GetFldVar ('S_STRING29',sKnow);
		GetFldVar ('S_STRING30',sAdmreason);
		GetFldVar ('S_STRING31',sArgyn);
		GetFldVar ('S_STRING32',sArgdg);
		GetFldVar ('S_STRING33',sArganti);
		GetFldVar ('S_STRING34',sArgfd);
		GetFldVar ('S_STRING35',sArgetc);
		GetFldVar ('S_STRING36',sAdmlast);
		GetFldVar ('S_STRING37',sPthist);
		GetFldVar ('S_STRING38',sDgstat);
		GetFldVar ('S_STRING39',sFamcase);
		GetFldVar ('S_STRING40',sFamrela);
        GetFldVar ('S_STRING41',sOpyn);
		GetFldVar ('S_STRING42',sPshist);
		GetFldVar ('S_STRING43',sCondst);
		GetFldVar ('S_STRING44',sConcom);
		GetFldVar ('S_STRING45',sFeelst);
		GetFldVar ('S_STRING46',sDeformt);
		GetFldVar ('S_STRING47',sAppetite);
		GetFldVar ('S_STRING48',sWetchg);
		GetFldVar ('S_STRING49',sDysphagia);
        GetFldVar ('S_STRING50',sStress);
		GetFldVar ('S_STRING51',sActivest);
		GetFldVar ('S_STRING52',sSleephr);
		GetFldVar ('S_STRING53',sSleep);
		GetFldVar ('S_STRING54',sSleepdg);
		GetFldVar ('S_STRING55',sFeceskd);
	    GetFldVar ('S_STRING56',sStool);
	    GetFldVar ('S_STRING57',sUrinkd);
        GetFldVar ('S_STRING58',sDrink);
	    GetFldVar ('S_STRING59',sTabacoflag);
        GetFldVar ('S_STRING60',sTabaco);
	    GetFldVar ('S_STRING61',sEdutabaco);
	    GetFldVar ('S_STRING62',sEyest);
	    GetFldVar ('S_STRING63',sEarst);
	    GetFldVar ('S_STRING64',sNerves);
        GetFldVar ('S_STRING65',sPalsy);
        GetFldVar ('S_STRING66',sRespst);
        GetFldVar ('S_STRING67',sCircst);
        GetFldVar ('S_STRING68',sNeost);
        GetFldVar ('S_STRING69',sDiest);
        GetFldVar ('S_STRING70',sSkinst);
        GetFldVar ('S_STRING71',sSkin);
        GetFldVar ('S_STRING72',sUrinst);
        GetFldVar ('S_STRING73',sSupport);
        GetFldVar ('S_STRING74',sBirth);
        GetFldVar ('S_STRING75',sPain);
        GetFldVar ('S_STRING76',sPreexam);
        GetFldVar ('S_STRING77',sPreexamy);
        GetFldVar ('S_STRING78',sPreexamo );
        GetFldVar ('S_STRING79',sPreexamd );
        GetFldVar ('S_STRING80',sObhist1 );
        GetFldVar ('S_STRING81',sObhist2  );
        GetFldVar ('S_STRING82',sObhist3  );
        GetFldVar ('S_STRING83',sFasting  );
        GetFldVar ('S_STRING84',sShow  );
        GetFldVar ('S_STRING85',sRom);
        GetFldVar ('S_STRING86',sObpain);
        GetFldVar ('S_STRING87',sFhr );
        GetFldVar ('S_STRING88',sMenache1 );
        GetFldVar ('S_STRING89',sMenache2 );
        GetFldVar ('S_STRING90',sMenache3 );
        GetFldVar ('S_STRING91',sMens );
        GetFldVar ('S_STRING92',sMenspain );
        GetFldVar ('S_STRING93',sDaeha );
        GetFldVar ('S_STRING94',sInedu  );
        GetFldVar ('S_STRING95',sIneduetc  );
        GetFldVar ('S_STRING96',sOutedu1  );
        GetFldVar ('S_STRING97',sOutedu2  );
        GetFldVar ('S_STRING98',sOutedu3);
        GetFldVar ('S_STRING99',sOutedu3etc);
        GetFldVar ('S_STRING100',sOutedu4 );
        GetFldVar ('S_STRING101',sOutedu5 );
	    GetFldVar ('S_STRING102',sMeddept);
	    GetFldVar ('S_STRING103',sChadr   );
	    GetFldVar ('S_STRING104',sGendr);
	    GetFldVar ('S_STRING105',sWardno);
	    GetFldVar ('S_STRING106',sRoomno);
        GetFldVar ('S_STRING107',sEditdate);
        GetFldVar ('S_STRING108',sFrecdate);  //최초기록일시, KimDaeYong 2011-06-09
        GetFldVar ('S_STRING109',sBloodyn);
        GetFldVar ('S_STRING110',sCultueretc);
        //전자인증추가. 20151017.kya.
      GetFldVar ('S_STRING111',sSignData);
      GetFldVar ('S_STRING112',sSerialNo);
      GetFldVar ('S_STRING113',sSubjectDN);
      GetFldVar ('S_STRING114',sBring);
      GetFldVar ('S_STRING115',sSmoking);

        Result := GetRecordCnt ('S_STRING1');

        txFree;
   end;
end;

//(추가. 2003.1.15 이용언)
// 간호정보조사지 기록 이력 조회 수정
function HmdObinfd.SelObinfHistorydll2(sPatNo, sType1 :String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer 를 받아옴.
   SetFldName('S_PATNO;S_TYPE1');
   SetFldValue(0,[sPatNo, sType1]);
   if (txGetF('MD_OBINF_L2')) then begin //Tuxedo Service Call     // md_obinf_l2.pc
   {
      GetFldVar('S_NAME1'   ,      sAdmDate);
      GetFldVar('S_STRING2' ,      sMedDept);
   	  GetFldVar('S_STRING3' ,      sChadr);
   	  GetFldVar('S_STRING4' ,      sGendr);
   	  GetFldVar('S_STRING5' ,      sWardno);
   	  GetFldVar('S_STRING6' ,      sRoomno);
   	  GetFldVar('S_STRING7' ,      sRecnrs);
   	  GetFldVar('S_STRING8' ,      sRecType);
   	  GetFldVar('S_STRING9' ,      sDeptNm);
   }
      Result := GetRecordCnt('S_NAME1'); //Service를 수행하고 FML Buffer에 PUT된 Record수
      txFree;
   end;
end;

function HmdObinfd.SelObinfHistorydll3(sWard, sType1: string): Integer;
begin
  Result := -1;
  txAlloc; //Pointer 를 받아옴.

  SetFldName('S_TYPE1;S_TYPE2');
  SetFldValue(0, [sWard, sType1]);

  if (txGetF('MD_OBINF_L3')) then begin //Tuxedo Service Call   // md_obinf_l3.pc
  {
    GetFldVar('S_STRING1' , sPatNm);
    GetFldVar('S_STRING2' , sMedDept);
    GetFldVar('S_STRING3' , sWardNo);
    GetFldVar('S_STRING4' , sRoomNo);
    GetFldVar('S_STRING5' , sInfDnr);
    GetFldVar('S_STRING6' , sGubun);
    GetFldVar('S_STRING7' , sPatNo);
    GetFldVar('S_STRING8' , sSex);
    GetFldVar('S_STRING9' , sBirth);
    GetFldVar('S_STRING10', sCitizen);
    GetFldVar('S_STRING11', sAdmdate);
    GetFldVar('S_STRING12', sTelno1);
    GetFldVar('S_STRING13', s1);
    GetFldVar('S_STRING14', sChaDr);
    GetFldVar('S_STRING15', sGenDr);
    GetFldVar('S_STRING16', sDeptnm);
    GetFldVar('S_STRING17', sChaDrnm);
    GetFldVar('S_STRING18', sGenDrnm);
  }
    Result := GetRecordCnt('S_STRING1'); //Service를 수행하고 FML Buffer에 PUT된 Record수
    txFree;
  end;
end;

////////////////////////////////////////////////////////////////////////////////
//  HmdPyinft 	간호정보조사지(정신과)                                        //
////////////////////////////////////////////////////////////////////////////////

//(추가. 2002.1.15 이용언)
function HmdPyinfd.InsertPyinftdll2(sPatNo ,   sAdmDate,  sInfDnr,   sRecNrs,   sAdmmeth,  sAdmPath,
                                    sAdmWith,  sWed,      sFamily,   sReligion, sEduDgr,   sJob,
                                    sRich,     sSleep,    sDiet,     sFec,      sAllergy,  sFav,
                                    sHobby,    sEtc,      sSymptoms,
                                    sLaPsy,    sLaInOut,  sFamHis,   sBeChar,   sFace,     sSpirit,
                                    sSpiEtc,   sAtti,     sEmo,      sLang,     sSens,     sAcci,
                                    sCons,     sGn,       sRem,      sJud,      sEditId,   sEditIp,
                                    sMeddept,  sChadr ,   sGendr  ,  sWardno  , sRoomno,
                                    sIcd,      sTelno1,   sTelno2,   sPthist,   sDgstat,   sFamcase,
                                    sFamrela,  sOpyn,     sCircst,   sRespst,   sDietst,   sSleepst,
                                    sSleepdg, sDrink,     sTabaco,   sEdu1,     sEdu2,     sEdu3,
                                    sEdu4,     sEdu5,     sEdu6,     sEdu7,     sEdu8,     sArgyn,
                                    sArgdg,    sArgfd,    sArganti,  sArgetc,   sNation,   sNationoth,
                                    sRace,     sPay,      sBokji,    sSafeedu,  sEduoth,   sAppetite,
                                    sWetchg,   sDysphagia,sStress,   sOutedu1,  sOutedu2,  sOutedu3,
                                    sOutedu3oth,sOutedu4, sOutedu5,  sTelno3,   sTelno4,   sBloodyn ,sCultueretc,
                                    sBodyTemp, sPulse,    sRespCnt,  sBldPreHI, sBldPreLO, sWeight,   sHeight,   sBldType,
                                    xSignData,xSerialNo,xSubjectDN,sBring  : String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO;S_ADMDATE;S_STRING1;S_STRING2;S_STRING3;S_STRING4;'+
              'S_STRING5;S_STRING6;S_STRING7;S_STRING8;S_STRING9;S_STRING10;'+
              'S_STRING11;S_STRING12;S_STRING13;S_STRING14;S_STRING15;S_STRING16;'+
              'S_STRING17;S_STRING18;S_STRING19;S_STRING20;S_STRING21;S_STRING22;'+
              'S_STRING23;S_STRING24;S_STRING25;S_STRING26;S_STRING27;S_STRING28;'+
              'S_STRING29;S_STRING30;S_STRING31;S_STRING32;S_STRING33;S_STRING34;'+
              'S_STRING35;S_STRING36;S_STRING37;S_STRING38;S_STRING39;S_STRING40;'+
              'S_STRING41;S_STRING42;S_STRING43;S_STRING44;S_STRING45;S_STRING46;'+
              'S_STRING47;S_STRING48;S_STRING49;S_STRING50;S_STRING51;S_STRING52;'+
              'S_STRING53;S_STRING54;S_STRING55;S_STRING56;S_STRING57;S_STRING58;'+
              'S_STRING59;S_STRING60;S_STRING61;S_STRING62;S_STRING63;S_STRING64;'+
              'S_STRING65;S_STRING66;S_STRING67;S_STRING68;S_STRING69;S_STRING70;'+
              'S_STRING71;S_STRING72;S_STRING73;S_STRING74;S_STRING75;S_STRING76;'+
              'S_STRING77;S_STRING78;S_STRING79;S_STRING80;S_STRING81;S_STRING82;'+
              'S_STRING83;S_STRING84;S_STRING85;S_STRING86;S_STRING87;S_STRING88;'+
              'S_STRING89;S_STRING90;S_STRING91;'+
              'S_STRING92;S_STRING93;S_STRING94;S_STRING95;S_STRING96;S_STRING97;'+
              'S_STRING98;S_STRING99;S_STRING100;S_STRING101;S_STRING102;S_STRING103');
   SetFldValue(0,   [sPatNo,    sAdmDate,  sInfDnr,   sRecNrs,   sAdmmeth,  sAdmPath,
                     sAdmWith,  sWed,      sFamily,   sReligion, sEduDgr,
                     sJob,      sRich,     sSleep,    sDiet,     sFec,      sAllergy,
                     sFav,      sHobby,    sEtc,      sSymptoms, sLaPsy,    sLaInOut,
                     sFamHis,   sBeChar,   sFace,     sSpirit,   sSpiEtc,   sAtti,
                     sEmo,      sLang,     sSens,     sAcci,     sCons,     sGn,
                     sRem,      sJud,      sEditId,   sEditIp,   sMeddept,  sChadr ,
                     sGendr,    sWardno,   sRoomno,   sIcd,      sTelno1,   sTelno2,
                     sPthist,   sDgstat,   sFamcase,  sFamrela,  sOpyn,     sCircst,
                     sRespst,   sDietst,   sSleepst,  sSleepdg,  sDrink,    sTabaco,
                     sEdu1,     sEdu2,     sEdu3,     sEdu4,     sEdu5,     sEdu6,
                     sEdu7,     sEdu8,     sArgyn,    sArgdg,    sArgfd,    sArganti,
                     sArgetc,   sNation,   sNationoth,sRace,     sPay,      sBokji,
                     sSafeedu,  sEduoth,   sAppetite, sWetchg,   sDysphagia,sStress,
                     sOutedu1,  sOutedu2,  sOutedu3,  sOutedu3oth,sOutedu4, sOutedu5,
                     sTelno3,   sTelno4,   sBloodyn ,sCultueretc,
                     sBodyTemp, sPulse,    sRespCnt,  sBldPreHI, sBldPreLO, sWeight,   sHeight,   sBldType,
                     xSignData,xSerialNo,xSubjectDN,sBring  ]);
   if (txPutF('MD_PYINF_I2')) then begin //Tuxedo Service Call     md_pyinf_i2.pc
      Result := 1;
      txFree;
   end;
end;

//이력조회.20181015.kya.
function HmdPyinfd.SelectPyinftdll2(sKey1, sKey2, sKey3:string):Integer;
//function HmdPyinfd.SelectPyinftdll2(sKey1, sKey2:string):Integer;
begin
   Result  := -1;
   txAlloc;
   SetFldName('S_PATNO;S_ADMDATE;S_TYPE1');
   SetFldValue(0,[sKey1, sKey2, sKey3]);
   if (txGetF('MD_PYINF_S2')) then    // md_pyinf_s2.pc
   begin
      GetFldVar('S_STRING1', sInfDnr);
      GetFldVar('S_STRING2', sRecNrs);
      GetFldVar('S_STRING3', sAdmmeth);
      GetFldVar('S_STRING4', sAdmPath);
      GetFldVar('S_STRING5', sAdmWith);
      GetFldVar('S_STRING6', sWed);
      GetFldVar('S_STRING7', sFamily);
      GetFldVar('S_STRING8', sReligion);
      GetFldVar('S_STRING9', sEduDgr);
      GetFldVar('S_STRING10', sJob);
      GetFldVar('S_STRING11', sRich);
      GetFldVar('S_STRING12', sSleep);
      GetFldVar('S_STRING13', sDiet);
      GetFldVar('S_STRING14', sFec);
      GetFldVar('S_STRING15', sAllergy);
      GetFldVar('S_STRING16', sFav);
      GetFldVar('S_STRING17', sHobby);
      GetFldVar('S_STRING18', sEtc);
      GetFldVar('S_STRING19', sSymptoms);
      GetFldVar('S_STRING20', sLaPsy);
      GetFldVar('S_STRING21', sLaInOut);
      GetFldVar('S_STRING22', sFamHis);
      GetFldVar('S_STRING23', sBeChar);
      GetFldVar('S_STRING24', sFace);
      GetFldVar('S_STRING25', sSpirit);
      GetFldVar('S_STRING26', sSpiEtc);
      GetFldVar('S_STRING27', sAtti);
      GetFldVar('S_STRING28', sEmo);
      GetFldVar('S_STRING29', sLang);
      GetFldVar('S_STRING30', sSens);
      GetFldVar('S_STRING31', sAcci);
      GetFldVar('S_STRING32', sCons);
      GetFldVar('S_STRING33', sGn);
      GetFldVar('S_STRING34', sRem);
      GetFldVar('S_STRING35', sJud);
      GetFldVar('S_STRING36', sMeddept);
      GetFldVar('S_STRING37', sChadr);
      GetFldVar('S_STRING38', sGendr);
      GetFldVar('S_STRING39', sWardno);
      GetFldVar('S_STRING40', sRoomno);
      GetFldVar('S_STRING41', sIcd    );
      GetFldVar('S_STRING42', sTelno1 );
      GetFldVar('S_STRING43', sTelno2 );
      GetFldVar('S_STRING44', sPthist );
      GetFldVar('S_STRING45', sDgstat );
      GetFldVar('S_STRING46', sFamcase);
      GetFldVar('S_STRING47', sFamrela);
      GetFldVar('S_STRING48', sOpyn   );
      GetFldVar('S_STRING49', sCircst );
      GetFldVar('S_STRING50', sRespst );
      GetFldVar('S_STRING51', sDietst );
      GetFldVar('S_STRING52', sSleepst);
      GetFldVar('S_STRING53', sSleepdg);
      GetFldVar('S_STRING54', sDrink  );
      GetFldVar('S_STRING55', sTabaco );
      GetFldVar('S_STRING56', sEdu1   );
      GetFldVar('S_STRING57', sEdu2   );
      GetFldVar('S_STRING58', sEdu3   );
      GetFldVar('S_STRING59', sEdu4   );
      GetFldVar('S_STRING60', sEdu5   );
      GetFldVar('S_STRING61', sEdu6   );
      GetFldVar('S_STRING62', sEdu7   );
      GetFldVar('S_STRING63', sEdu8   );
      GetFldVar('S_STRING64', sArgyn  );
      GetFldVar('S_STRING65', sArgdg  );
      GetFldVar('S_STRING66', sArgfd  );
      GetFldVar('S_STRING67', sFrecdate);    //최초기록일시, KimDaeYong 2011-06-09
      //2011인증평가, KimDaeYong 2011-07-15
	  GetFldVar('S_STRING68', sArganti 	);
	  GetFldVar('S_STRING69', sArgetc  	);
	  GetFldVar('S_STRING70', sNation  	);
	  GetFldVar('S_STRING71', sNationoth);
	  GetFldVar('S_STRING72', sRace    	);
	  GetFldVar('S_STRING73', sPay     	);
	  GetFldVar('S_STRING74', sBokji   	);
	  GetFldVar('S_STRING75', sSafeedu 	);
	  GetFldVar('S_STRING76', sEduoth  	);
	  GetFldVar('S_STRING77', sAppetite	);
	  GetFldVar('S_STRING78', sWetchg  	);
	  GetFldVar('S_STRING79', sDysphagia);
	  GetFldVar('S_STRING80', sStress  	);
	  GetFldVar('S_STRING81', sOutedu1 	);
	  GetFldVar('S_STRING82', sOutedu2 	);
	  GetFldVar('S_STRING83', sOutedu3 	);
	  GetFldVar('S_STRING84', sOutedu3oth);
	  GetFldVar('S_STRING85', sOutedu4 	);
	  GetFldVar('S_STRING86', sOutedu5 	);
	  GetFldVar('S_STRING87', sTelno3  	);
	  GetFldVar('S_STRING88', sTelno4  	);
    GetFldVar('S_STRING89', sBloodyn 	);
	  GetFldVar('S_STRING90', sCultueretc	);
    GetFldVar ('S_STRING91',sBodytemp);
    GetFldVar ('S_STRING92',sPulse);
    GetFldVar ('S_STRING93',sRespcnt);
    GetFldVar ('S_STRING94',sBldprehi);
    GetFldVar ('S_STRING95',sBldprelo);
    GetFldVar ('S_STRING96',sWeight);
    GetFldVar ('S_STRING97',sHeight);
    GetFldVar ('S_STRING98',sBldtype);
    //전자인증추가. 20151017.kya.
      GetFldVar ('S_STRING99',sSignData);
      GetFldVar ('S_STRING100',sSerialNo);
      GetFldVar ('S_STRING101',sSubjectDN);
      GetFldVar ('S_STRING102',sBring);

      Result := GetRecordCnt('S_STRING1'); //Service를 수행하고 FML Buffer에 PUT된 Record수
      txFree;
   end;
end;

// 병원 기본정보 조회
function HmdExCodd.HosInformdll(sLOCATE:String):Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_TYPE1');
   SetFldValue(0, [sLOCATE]);
   if (txGetF('MD_HOSIN_S1')) then
   begin //Tuxedo Service Call
      GetFldVar('S_STRING1'  ,sHosname);
      GetFldVar('S_STRING2'  ,sHosaddress);
      GetFldVar('S_STRING3'  ,sHostel);
      GetFldVar('S_STRING4'  ,sHosdr);
      GetFldVar('S_STRING5'  ,sHosfax);
      GetFldVar('S_STRING6'  ,sInsurid);

      Result := GetRecordCnt('S_STRING1'); //Service를 수행하고 FML Buffer에 PUT된 Record수
      txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
//  HmdNbabyt 	신생아대장
////////////////////////////////////////////////////////////////////////////////

// 신생아대장조회
function HmdNbabyd.MultiSelNbabydll(sType1,sType2:String):Integer;
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2');
   SetFldValue(0,[sType1,sType2] );

   if (txGetF('MD_NBABY_L1')) then begin //Tuxedo Service Call
   	GetFldVar('S_CODE1',  sBornDate);
	  	GetFldVar('S_CODE2',  sPatName);
	  	GetFldVar('S_CODE3',  spatNo);
	  	GetFldVar('S_CODE4',  sSex);
	  	GetFldVar('S_CODE5',  sAge);
	  	GetFldVar('S_CODE6',  sDeltype);
	  	GetFldVar('S_CODE7',  sWgt);
      GetFldVar('S_CODE8',  sParity);
      GetFldVar('S_CODE9',  sAge2);

      Result := GetRecordCnt('S_CODE1');
      txFree;
   end;
end;

// 개별 신생아대장조회
function HmdNbabyd.SingleSelNbabydll(sType1:String):Integer;
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO');
   SetFldValue(0,[sType1] );

   if (txGetF('MD_NBABY_S1')) then begin //Tuxedo Service Call    md_nbaby_s1.pc
   	GetFldVar('S_CODE1',  sBornDate);
	  	GetFldVar('S_CODE2',  sPatName);
	  	GetFldVar('S_CODE3',  sSex);
	  	GetFldVar('S_CODE4',  sAge);
	  	GetFldVar('S_CODE5',  sDeltype);
	  	GetFldVar('S_CODE6',  sWgt);
      GetFldVar('S_CODE7',  sParity);
      GetFldVar('S_CODE8',  sAge2);
      GetFldVar('S_CODE9',  sRemark);

      Result := GetRecordCnt('S_CODE1');
      txFree;
   end;
end;

// 기존의 동일 아기찾기
function HmdNbabyd.IsNbabydll(sType1,sType2,sType3,sType4:String):Integer;
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
   SetFldValue(0,[sType1,sType2,sType3,sType4] );

   if (txGetF('MD_NBABY_L2')) then begin //Tuxedo Service Call
   	GetFldVar('S_CODE1',  sPatNo);
      GetFldVar('S_CODE2',  sBornDate);      // 입원일.

      Result := GetRecordCnt('S_CODE1');
      txFree;
   end;
end;

// 신생아 대장등록(신생아 입원등록)
function HmdNbabyd.InsNbabydll(sBorndate,sPatname,sPatno,sSex,sAge,sDelType,sWgt,
                            sParity,sMomno,sMomadm,sPatSeq,sSickbaby,sWardcd,sRoomno,
                            sDeptCd,sDiagcd,sDiagname,sChadr,sGendr,sEditid,sEditip,
                            sType1,sType2,sType3,sFlag,sAge2,sTwinFlag:String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;'+
              'S_CODE6;S_CODE7;S_CODE8;S_CODE9;S_CODE10;S_CODE11;S_CODE12;'+
              'S_CODE13;S_CODE14;S_CODE15;S_CODE16;S_CODE17;S_CODE18;S_CODE19;'+
              'S_CODE20;S_CODE21;S_CODE22;S_CODE23;S_CODE24;S_CODE25;S_CODE26;S_CODE27');
   SetFldValue(0,[sBorndate,sPatname,sPatno,sSex,sAge,sDelType,sWgt,
                  sParity,sMomno,sMomadm,sPatSeq,sSickbaby,sWardcd,sRoomno,
                  sDeptCd,sDiagcd,sDiagname,sChadr,sGendr,sEditid,sEditip,
                  sType1,sType2,sType3,sFlag,sAge2,sTwinFlag]);

   if (txPutF('MD_NBABY_I1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
//  HmdInsamt  	인사마스타                                                  //
////////////////////////////////////////////////////////////////////////////////

// 사용자 조회
function HmdInsamt.ListUserInfo (sType1,sType2,sType3,sType4:String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
   SetFldValue(0,[sType1,sType2,sType3,sType4]);
   //코드 셋팅 기간중 임시 수정. 2002.12.11 이용언
     if (txGetF('MD_INSAM_L1')) then begin //Tuxedo Service Call
      GetFldVar('S_STRING1',sEmpNo);
      GetFldVar('S_STRING2',sEmpNm);
      GetFldVar('S_STRING3',sComCdNm);
      GetFldVar('S_STRING4',sDeptCd);
      GetFldVar('S_STRING5',sDeptNm);
      GetFldVar('S_STRING6',sLicNo);
      GetFldVar('S_STRING7',sMajorNo);

      Result := GetRecordCnt('S_STRING1');
      txFree;

   end;
end;

{ HmdHpInft }

function HmdHpInft.GetBaseInf(sPatno, sAdmdate: string): Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2');
  SetFldValue(0, [sPatno, sAdmdate]);

  if txGetF('MD_HPINF_L3') then begin
    GetFldVar('S_STRING1', FAddress );
    GetFldVar('S_STRING2', FTelno1  );
    GetFldVar('S_STRING3', FTelno3  );
    GetFldVar('S_STRING4', FDiagName);

    Result := GetRecordCnt('S_STRING1');
  end;

  txFree;
end;

function HmdHpInft.GetList(sPatno, sAdmdate: string): Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_TYPE1;S_TYPE2');
  SetFldValue(0, [sPatno, sAdmdate]);

  if txGetF('MD_HPINF_L1') then begin
    GetFldVar('S_STRING1' , FHpdate  );
    GetFldVar('S_STRING2' , FNurse   );
    GetFldVar('S_STRING3' , FNurseNm );
    GetFldVar('S_STRING4' , FInfoffe );
    GetFldVar('S_STRING5' , FTelno1  );
    GetFldVar('S_STRING6' , FTelno2  );
    GetFldVar('S_STRING7' , FJob     );
    GetFldVar('S_STRING8' , FMerry   );
    GetFldVar('S_STRING9' , FChldcnt );
    GetFldVar('S_STRING10', FEducat  );
    GetFldVar('S_STRING11', FEconot  );
    GetFldVar('S_STRING12', FNourt   );
    GetFldVar('S_STRING13', FSleept  );
    GetFldVar('S_STRING14', FSleeptxt);
    GetFldVar('S_STRING15', FAdmcou  );
    GetFldVar('S_STRING16', FAdmtxt  );
    GetFldVar('S_STRING17', FAdmsts  );
    GetFldVar('S_STRING18', FCancer  );
    GetFldVar('S_STRING19', FCancnt  );
    GetFldVar('S_STRING20', FRadial  );
    GetFldVar('S_STRING21', FRadcnt  );
    GetFldVar('S_STRING22', FHistory );
    GetFldVar('S_STRING23', FHistxt  );
    GetFldVar('S_STRING24', FFamily  );
    GetFldVar('S_STRING25', FFamtxt  );
    GetFldVar('S_STRING26', FFamstat );
    GetFldVar('S_STRING27', FOperyn  );
    GetFldVar('S_STRING28', FOpertxt );
    GetFldVar('S_STRING29', FApin    );
    GetFldVar('S_STRING30', FLabor   );
    GetFldVar('S_STRING31', FEscort  );
    GetFldVar('S_STRING32', FBody    );
    GetFldVar('S_STRING33', FInterior);
    GetFldVar('S_STRING34', FNervous );
    GetFldVar('S_STRING35', FSense   );
    GetFldVar('S_STRING36', FCycle   );
    GetFldVar('S_STRING37', FRespira );
    GetFldVar('S_STRING38', FOxygen  );
    GetFldVar('S_STRING39', FAbsorb  );
    GetFldVar('S_STRING40', FUrinary );
    GetFldVar('S_STRING41', FExcre   );
    GetFldVar('S_STRING42', FNerve   );
    GetFldVar('S_STRING43', FSkin    );
    GetFldVar('S_STRING44', FSwell   );
    GetFldVar('S_STRING45', FSwellpos);
    GetFldVar('S_STRING46', FEdema   );
    GetFldVar('S_STRING47', FEdeetc  );
    GetFldVar('S_STRING48', FFamsup  );
    GetFldVar('S_STRING49', FSelfcon );
    GetFldVar('S_STRING50', FIncorp  );
    GetFldVar('S_STRING51', FPatdispo);
    GetFldVar('S_STRING52', FFamdispo);
    GetFldVar('S_STRING53', FBath    );
    GetFldVar('S_STRING54', FHaedwash);
    GetFldVar('S_STRING55', FMeal    );
    GetFldVar('S_STRING56', FMake    );
    GetFldVar('S_STRING57', FCloth   );
    GetFldVar('S_STRING58', FChType  );
    GetFldVar('S_STRING59', FFamily2 );
    GetFldVar('S_STRING60', FEatCnt  );
    GetFldVar('S_STRING61', FLeason  );

    Result := GetRecordCnt('S_STRING1');
  end;
  txFree;
end;

function HmdHpInft.HistoryList(sPatNo, sType1: String): Integer;
begin
   Result := -1;
   txAlloc; //Pointer 를 받아옴.

   SetFldName('S_PATNO;S_TYPE1');
   SetFldValue(0,[sPatNo, sType1]);

   if (txGetF('MD_HPINF_L2')) then begin // Tuxedo Service Call
      GetFldVar('S_STRING1', FAdmDate);
     	GetFldVar('S_STRING2', FHpDate );
   	  GetFldVar('S_STRING3', FNurse  );
   	  GetFldVar('S_STRING4', FMedDept);
   	  GetFldVar('S_STRING5', FDeptNm );
   	  GetFldVar('S_STRING6', FWardNo1);
   	  GetFldVar('S_STRING7', FRoomNo1);
   	  GetFldVar('S_STRING8', FChaDr  );
   	  GetFldVar('S_STRING9', FGenDr  );

      Result := GetRecordCnt('S_STRING1'); //Service를 수행하고 FML Buffer에 PUT된 Record수
   end;
   txFree;
end;

function HmdHpInft.Insert(sPatno,    sAdmdate,  sHpdate,   sNurse,    sInfoffe,
                          sTelno1,   sTelno2,   sJob,      sMerry,    sChldcnt,
                          sEducat,   sEconot,   sNourt,    sSleept,   sSleeptxt,
                          sAdmcou,   sAdmtxt,   sAdmsts,   sCancer,   sCancnt,
                          sRadial,   sRadcnt,   sHistory,  sHistxt,   sFamily,
                          sFamtxt,   sFamstat,  sOperyn,   sOpertxt,  sApin,
                          sLabor,    sEscort,   sBody,     sInterior, sNervous,
                          sSense,    sCycle,    sRespira,  sOxygen,   sAbsorb,
                          sUrinary,  sExcre,    sNerve,    sSkin,     sSwell,
                          sSwellpos, sEdema,    sEdeetc,   sFamsup,   sSelfcon,
                          sIncorp,   sPatdispo, sFamdispo, sBath,     sHaedwash,
                          sMeal,     sMake,     sCloth,    sEditID,   sEditIP,
                          sChType,   sFamily2,  sEatCnt,   sReason: string): Integer;
begin
  Result := -1;
  txAlloc;
  SetFldName('S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;' +
             'S_STRING6;S_STRING7;S_STRING8;S_STRING9;S_STRING10;' +
             'S_STRING11;S_STRING12;S_STRING13;S_STRING14;S_STRING15;' +
             'S_STRING16;S_STRING17;S_STRING18;S_STRING19;S_STRING20;' +
             'S_STRING21;S_STRING22;S_STRING23;S_STRING24;S_STRING25;' +
             'S_STRING26;S_STRING27;S_STRING28;S_STRING29;S_STRING30;' +
             'S_STRING31;S_STRING32;S_STRING33;S_STRING34;S_STRING35;' +
             'S_STRING36;S_STRING37;S_STRING38;S_STRING39;S_STRING40;' +
             'S_STRING41;S_STRING42;S_STRING43;S_STRING44;S_STRING45;' +
             'S_STRING46;S_STRING47;S_STRING48;S_STRING49;S_STRING50;' +
             'S_STRING51;S_STRING52;S_STRING53;S_STRING54;S_STRING55;' +
             'S_STRING56;S_STRING57;S_STRING58;S_STRING59;S_STRING60;' +
             'S_STRING61;S_STRING62;S_STRING63;S_STRING64');
  SetFldValue(0, [sPatno,    sAdmdate,  sHpdate,   sNurse,    sInfoffe,
                  sTelno1,   sTelno2,   sJob,      sMerry,    sChldcnt,
                  sEducat,   sEconot,   sNourt,    sSleept,   sSleeptxt,
                  sAdmcou,   sAdmtxt,   sAdmsts,   sCancer,   sCancnt,
                  sRadial,   sRadcnt,   sHistory,  sHistxt,   sFamily,
                  sFamtxt,   sFamstat,  sOperyn,   sOpertxt,  sApin,
                  sLabor,    sEscort,   sBody,     sInterior, sNervous,
                  sSense,    sCycle,    sRespira,  sOxygen,   sAbsorb,
                  sUrinary,  sExcre,    sNerve,    sSkin,     sSwell,
                  sSwellpos, sEdema,    sEdeetc,   sFamsup,   sSelfcon,
                  sIncorp,   sPatdispo, sFamdispo, sBath,     sHaedwash,
                  sMeal,     sMake,     sCloth,    sEditID,   sEditIP,
                  sChType,   sFamily2,  sEatCnt,   sReason]);

  if txPutF('MD_HPINF_I1') then Result := 1;
  txFree;
end;

{ HmdReinfd }

function HmdReinfd.insertReinfdll1(sPatno, sAdmdate, sNuese, sJob,
                  sIcdname, sInpoffe, sMerry,    sEducat, sTelno1,  sTelno2,  sAdress, sAdmcou,
                  sAdmmeth, sArgyn,   sArgdg,    sArgfd,  sArgetc,  sPthist,  sDgstat, sFamcase,
                  sFamrela, sOpyn,    sPshist,   sCondst, sConcom,  sFeelst,  sCircst, sRespst,
                  sDietst,  sUrinst,  sPain,     sSupport,sSkin,    sEyest,   sEarst,  sNeost, sStool,
                  sSleep,   sSleepdg, sDrink,    sTabaco, sAdmreson,sIndeu1,  sIndeu2, sIndeu3,
                  sIndeu4,  sIndeu5,  sIndeu6,   sIndeu7, sIndeu8,  sMeddept, sChadr,  sGendr,
                  sWardno,  sRoomno,  sBodytemp, sPulse,  sRespcnt, sBldprehi,sBldprelo,
                  sWeight,  sHeight,  sBldtype,  sChild,  sChurch,  sMotion,  sDaymot, sHousestr,
                  sBedsore, sNerves,  sEditid,   sEditip, sTelno3,  sTelno4,  sOutedu1,sOutedu2,
                  sOutedu3, sOutedu3oth, sOutedu4, sOutedu5, sNation, sNationoth, sRace, sPay,
                  sBokji, sArganti, sSafeedu, sEduoth, sAppetite, sWetchg, sDysphagia, sStress, sBloodyn, sCultueretc,
                  xSignData,xSerialNo,xSubjectDN,sBring,sSmoking : String): Integer;
begin
   Result := -1;

   txAlloc;

   SetFldName('S_PATNO;S_ADMDATE;S_STRING1;S_STRING2;S_STRING3;'+
              'S_STRING4;S_STRING5;S_STRING6;S_STRING7;S_STRING8;'+
              'S_STRING9;S_STRING10;S_STRING11;S_STRING12;S_STRING13;'+
              'S_STRING14;S_STRING15;S_STRING16;S_STRING17;S_STRING18;'+
              'S_STRING19;S_STRING20;S_STRING21;S_STRING22;S_STRING23;'+
              'S_STRING24;S_STRING25;S_STRING26;S_STRING27;S_STRING28;'+
              'S_STRING29;S_STRING30;S_STRING31;S_STRING32;S_STRING33;'+
              'S_STRING34;S_STRING35;S_STRING36;S_STRING37;S_STRING38;'+
              'S_STRING39;S_STRING40;S_STRING41;S_STRING42;S_STRING43;'+
              'S_STRING44;S_STRING45;S_STRING46;S_STRING47;S_STRING48;'+
              'S_STRING49;S_STRING50;S_STRING51;S_STRING52;S_STRING53;'+
              'S_STRING54;S_STRING55;S_STRING56;S_STRING57;S_STRING58;'+
              'S_STRING59;S_STRING60;S_STRING61;S_STRING62;S_STRING63;'+
              'S_STRING64;S_STRING65;S_STRING66;S_STRING67;S_STRING68;'+
              'S_STRING69;S_STRING70;S_STRING71;S_STRING72;S_STRING73;'+
              'S_STRING74;S_STRING75;S_STRING76;S_STRING77;S_STRING78;'+
              'S_STRING79;S_STRING80;S_STRING81;S_STRING82;S_STRING83;'+
              'S_STRING84;S_STRING85;S_STRING86;S_STRING87;S_STRING88;'+
              'S_STRING89;S_STRING90;S_STRING91;S_STRING92;S_STRING93;S_STRING94;S_STRING95;S_STRING96;S_STRING97');
   SetFldValue(0,[sPatno, sAdmdate, sNuese, sJob,
                  sIcdname, sInpoffe, sMerry,    sEducat, sTelno1,  sTelno2,  sAdress, sAdmcou,
                  sAdmmeth, sArgyn,   sArgdg,    sArgfd,  sArgetc,  sPthist,  sDgstat, sFamcase,
                  sFamrela, sOpyn,    sPshist,   sCondst, sConcom,  sFeelst,  sCircst, sRespst,
                  sDietst,  sUrinst,  sPain,     sSupport,sSkin,    sEyest,   sEarst,  sNeost, sStool,
                  sSleep,   sSleepdg, sDrink,    sTabaco, sAdmreson,sIndeu1,  sIndeu2, sIndeu3,
                  sIndeu4,  sIndeu5,  sIndeu6,   sIndeu7, sIndeu8,  sMeddept, sChadr,  sGendr,
                  sWardno,  sRoomno,  sBodytemp, sPulse,  sRespcnt, sBldprehi,sBldprelo,
                  sWeight,  sHeight,  sBldtype,  sChild,  sChurch,  sMotion,  sDaymot, sHousestr,
                  sBedsore, sNerves,  sEditid,   sEditip, sTelno3,  sTelno4,  sOutedu1,sOutedu2,
                  sOutedu3, sOutedu3oth, sOutedu4, sOutedu5, sNation, sNationoth, sRace, sPay,
                  sBokji, sArganti, sSafeedu, sEduoth, sAppetite, sWetchg, sDysphagia, sStress, sBloodyn, sCultueretc,
                  xSignData,xSerialNo,xSubjectDN,sBring,sSmoking]);

   if (txPutF('MD_REINF_I1')) then // md_reinf_i1.pc
   begin
      Result := 1;

      txFree;
   end;
end;

//function HmdReinfd.SelReinfdll1(sType1, sType2: String): Integer;
//이력조회.20181015.kya.
function HmdReinfd.SelReinfdll1(sType1, sType2, sType3: String): Integer;
begin
   Result := -1;
   txAlloc; //Pointer 를 받아옴.
   SetFldName('S_PATNO;S_ADMDATE;S_TYPE1');
   SetFldValue(0,[sType1, sType2, sType3]);
   if (txGetF('MD_REINF_S1')) then  //Tuxedo Service Call     md_reinf_s1.pc
   begin
      GetFldVar ('S_PATNO'   , sJob      );
	  GetFldVar ('S_ADMDATE' , sIcdname  );
	  GetFldVar ('S_STRING1' , sInpoffe  );
	  GetFldVar ('S_STRING2' , sMerry    );
	  GetFldVar ('S_STRING3' , sEducat   );
	  GetFldVar ('S_STRING4' , sTelno1   );
	  GetFldVar ('S_STRING5' , sTelno2   );
	  GetFldVar ('S_STRING6' , sAdress   );
	  GetFldVar ('S_STRING7' , sAdmcou   );
	  GetFldVar ('S_STRING8' , sAdmmeth  );
	  GetFldVar ('S_STRING9' , sArgyn    );
	  GetFldVar ('S_STRING10', sArgdg    );
	  GetFldVar ('S_STRING11', sArgfd    );
	  GetFldVar ('S_STRING12', sArgetc   );
	  GetFldVar ('S_STRING13', sPthist   );
	  GetFldVar ('S_STRING14', sDgstat   );
	  GetFldVar ('S_STRING15', sFamcase  );
	  GetFldVar ('S_STRING16', sFamrela  );
	  GetFldVar ('S_STRING17', sOpyn     );
	  GetFldVar ('S_STRING18', sPshist   );
	  GetFldVar ('S_STRING19', sCondst   );
	  GetFldVar ('S_STRING20', sConcom   );
	  GetFldVar ('S_STRING21', sFeelst   );
	  GetFldVar ('S_STRING22', sCircst   );
	  GetFldVar ('S_STRING23', sRespst   );
	  GetFldVar ('S_STRING24', sDietst   );
	  GetFldVar ('S_STRING25', sUrinst   );
	  GetFldVar ('S_STRING26', sPain     );
	  GetFldVar ('S_STRING27', sSupport  );
	  GetFldVar ('S_STRING28', sSkin     );
	  GetFldVar ('S_STRING29', sEyest    );
	  GetFldVar ('S_STRING30', sEarst    );
	  GetFldVar ('S_STRING31', sNeost    );
	  GetFldVar ('S_STRING32', sStool    );
	  GetFldVar ('S_STRING33', sSleep    );
	  GetFldVar ('S_STRING34', sSleepdg  );
	  GetFldVar ('S_STRING35', sDrink    );
	  GetFldVar ('S_STRING36', sTabaco   );
      GetFldVar ('S_STRING37', sAdmreson );
	  GetFldVar ('S_STRING38', sIndeu1   );
	  GetFldVar ('S_STRING39', sIndeu2   );
	  GetFldVar ('S_STRING40', sIndeu3   );
	  GetFldVar ('S_STRING41', sIndeu4   );
	  GetFldVar ('S_STRING42', sIndeu5   );
	  GetFldVar ('S_STRING43', sIndeu6   );
	  GetFldVar ('S_STRING44', sIndeu7   );
	  GetFldVar ('S_STRING45', sIndeu8   );
      GetFldVar ('S_STRING46', sMeddept  );
	  GetFldVar ('S_STRING47', sChadr    );
	  GetFldVar ('S_STRING48', sGendr    );
	  GetFldVar ('S_STRING49', sWardno   );
	  GetFldVar ('S_STRING50', sRoomno   );
	  GetFldVar ('S_STRING51', sBodytemp );
	  GetFldVar ('S_STRING52', sPulse    );
	  GetFldVar ('S_STRING53', sRespcnt  );
      GetFldVar ('S_STRING54', sBldprehi );
	  GetFldVar ('S_STRING55', sBldprelo );
      GetFldVar ('S_STRING56', sWeight   );
	  GetFldVar ('S_STRING57', sHeight   );
	  GetFldVar ('S_STRING58', sBldtype  );
	  GetFldVar ('S_STRING59', sChild    );
	  GetFldVar ('S_STRING60', sChurch   );
      GetFldVar ('S_STRING61', sMotion   );
      GetFldVar ('S_STRING62', sDaymot   );
      GetFldVar ('S_STRING63', sHousestr );
      GetFldVar ('S_STRING64', sBedsore  );
      GetFldVar ('S_STRING65', sNerves   );
      GetFldVar ('S_STRING66', sNuese    );
      GetFldVar ('S_STRING67', sFrecdate );   // 최초기록일시, KimDaeYong 2011-06-09
      //2011인증평가, KimDaeYong 2011-07-15
      GetFldVar ('S_STRING68', sTelno3	  );
	  GetFldVar ('S_STRING69', sTelno4	  );
	  GetFldVar ('S_STRING70', sOutedu1   );
	  GetFldVar ('S_STRING71', sOutedu2   );
	  GetFldVar ('S_STRING72', sOutedu3   );
	  GetFldVar ('S_STRING73', sOutedu3oth);
	  GetFldVar ('S_STRING74', sOutedu4   );
      GetFldVar ('S_STRING75', sOutedu5   );
      //2011인증평가보완, KimDaeYong 2011-07-18
      GetFldVar('S_STRING76', sNation	  );
	  GetFldVar('S_STRING77', sNationoth  );
	  GetFldVar('S_STRING78', sRace		  );
	  GetFldVar('S_STRING79', sPay		  );
	  GetFldVar('S_STRING80', sBokji	  );
	  GetFldVar('S_STRING81', sArganti	  );
	  GetFldVar('S_STRING82', sSafeedu	  );
      GetFldVar('S_STRING83', sEduoth	  );
      GetFldVar('S_STRING84', sAppetite	  );
	  GetFldVar('S_STRING85', sWetchg	  );
	  GetFldVar('S_STRING86', sDysphagia  );
      GetFldVar('S_STRING87', sStress	  );
      GetFldVar('S_STRING88', sBloodyn  );
      GetFldVar('S_STRING89', sCultueretc	  );
      //전자인증추가. 20151017.kya.
      GetFldVar ('S_STRING90',sSignData);
      GetFldVar ('S_STRING91',sSerialNo);
      GetFldVar ('S_STRING92',sSubjectDN);
      GetFldVar ('S_STRING93',sBring);
      GetFldVar ('S_STRING94',sSmoking);

      Result := GetRecordCnt ('S_STRING1');

      txFree;
   end;
end;

function HmdVitald.VITAL_S1(sPatNo, sType1:String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer 를 받아옴.
   SetFldName('S_PATNO;S_TYPE1');
   SetFldValue(0,[sPatno, sType1]);
   if (txGetF('MD_VITAL_S1')) then  //md_vital_s1.pc
   begin
    GetFldVar ('S_STRING1' , sExectime  );
	  GetFldVar ('S_STRING2' , sBodytemp  );
	  GetFldVar ('S_STRING3' , sPulse     );
	  GetFldVar ('S_STRING4' , sRespcnt   );
	  GetFldVar ('S_STRING5' , sBldprehi  );
	  GetFldVar ('S_STRING6' , sBldprelo  );
	  GetFldVar ('S_STRING7' , sWeight    );
	  GetFldVar ('S_STRING8' , sHeight    );
    GetFldVar ('S_STRING9' , sChkitem3    );
    GetFldVar ('S_STRING10' , sChkitem2    );
    GetFldVar ('S_STRING11' , sChkitem1    );


      Result := GetRecordCnt ('S_STRING1');

      txFree;
   end;
end;



end.



