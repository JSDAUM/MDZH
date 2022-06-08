////////////////////////////////////////////////////////////////////////////////
// 투석 CLASS Define                                                          //
//  HmhPtinft  투석환자기본                                                   //
//  HmhHpactt  투석실시 및 결과내역                                           //
//  HmhTranst  전원일지                                                       //
//  HmhPtloct  환자의 현위치                                                  //
//  HmhHpdort  투석지시 내역                                                  //
//  HmhMedort  약처방 내역                                                    //
//  HmhNurset  투석환자 외래 입원 간호                                        //
//  HmhHemomt  투석적정성환자정보기본                                         //
////////////////////////////////////////////////////////////////////////////////

unit MHCLASS1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type

    
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

       function SelectEvaluation:Integer;

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

       function SelectRecovery:Integer;
    end;

    
    // 투석환자기본
    HmhPtinft = class
     sPatNo	: Variant;  // 환자번호
     sHdType	: Variant;  // 투석환자구분
     sSeqNo     : Variant;  // 순번

     sPatName   : Variant;  //원무 환자이름
     sResNo1    : Variant;  //원무 주민번호1
     sResNo2    : Variant;  //원무 주민번호2
     sSex       : Variant;  //원무 성별
     sBirtDate  : Variant;  //원무 생일
     sTelNo1    : Variant;  //원무 전화1
     sTelNo2    : Variant;  //원무 전화2
     sTelNo3    : Variant;  //원무 전화3
     sAddress   : Variant;  //원무 주소

     sTel1	: Variant;  // 전화번호1
     sTel2	: Variant;  // 전화번호2
     sTel3	: Variant;  // 전화번호3
     sOrdcd     : Variant;  // 처방코드
     iHeight	: Variant;  // 신장
     iWeight	: Variant;  // 체중
     sMarryYn	: Variant;  // 결혼여부
     sMryOthr	: Variant;  // 결혼기타
     sJobCode	: Variant;  // 직업코드
     sRelation	: Variant;  // 가족관계
     sHdKind	: Variant;  // 혈액투석 / 복막투석액 종류
     sKindOthr  : Variant;  // 혈액투석 / 복막투석액 종류  기타
     sHdKnd	: Variant;  // 혈관 / 복막 종류
     sKndOthr   : Variant;  // 혈관 / 복막 종류 기타
     sRsndiss	: Variant;  // 원인질환
     sRsnOthr	: Variant;  // 원인질환 기타
     sAcuteYn	: Variant;  // 급만성여부
     sTrpYN  	: Variant;  // 이식여부
     sTrpDate	: Variant;  // 과거이식일
     sHb1	: Variant;  // 감염항원(HbsAg)
     sHb2	: Variant;  // 감염항원(HbsAb)
     sHb4	: Variant;  // 감염항원(HCV)
     sHb5	: Variant;  // 감염항원(VDRL)
     sHb6	: Variant;  // 감염항원(HIV)
     sHpdsdate	: Variant;  // 투석시작일
     sSpcDr	: Variant;  // 지정진료의사
     sSpcDrNm	: Variant;  // 지정진료의사명
     sBLDABO    : Variant;  // 혈액형(ABO)
     sBLDRH     : Variant;  // 혈액형(RH)
     sPipeHis	: Variant;  // 도관이력
     sEndDate	: Variant;  // 종료일자
     sHdEndRsn	: Variant;  // 투석종료사유
     sTranDate	: Variant;  // 이송일자
     sTranHosp	: Variant;  // 이송병원
     sRemark	: Variant;  // 특기사항
     sNrpros	: Variant;  // PROCESS
     sSchdType	: Variant;  // SCHEDULE TYPE
     sInsu      : Variant;  // 보험 구분
     sEndetc    : Variant;  // 종료사유 기타
     sCount     : Variant;  // 환자 기본정보 등록 건수
     sEditId	: Variant;  // 수정자 ID
     sEditIp	: Variant;  // 수정자 IP
     sEditDate	: Variant;  // 수정일시
     sInsertdt  : Variant;
     sRemovedt  : Variant;
     sExamdt    : Variant;  // 검사일자
     sRslt1     : Variant;  // 검사결과1
     sExamcode  : Variant;  // 검사코드

     function InputPat(sOrdcd   , iHeight, iWeight , sPatNo	  , sHdType , sSeqNo   , sTel1	 ,
                       sTel2	  , sTel3  , sMarryYn, sMryOthr , sJobCode, sRelation, sHdKind  ,
                       sKindOthr, sHdKnd , sKndOthr, sRsndiss , sRsnOthr, sAcuteYn , sTrpYN	 ,
                       sTrpDate , sHb1	  , sHb2	   , sHb4	  , sHb5	   , sHb6	  , sHpdsdate,
                       sSpcDr	  , sBLDABO, sBLDRH  , sPipeHis , sEndDate, sHdEndRsn, sTranDate,
                       sTranHosp, sRemark, sNrpros , sSchdType, sInsu   , sEndetc  , sInsertdt,
                       sRemovedt, sEditId, sEditIp:string):Integer;
     function ListEndPat(FromDate,ToDate,HdType,EndRsn:string):Integer;
     function ListPeriPat(sFromDate, sToDate : String):Integer;
     function SelectPat(PatNO,HDType,SeqNo:String):Integer;
     function SelectSeq(PatNO:String):Integer;overload;
     function SelectSeq(PatNO,hdtype:String):Integer;overload;
     function DeletePatinfo(sPatno,sHdtype,sSeqno : String) : Integer;
     function selectHPdinfo(sPatno: String) : Integer;
     function SelectCompany(sFromdate,sCompany : String) : Integer;
     function SelectCount(Patno,Hdtype : String) : Integer;
     // 혈액투석환자 Hemoglobin 결과값 조회  2005.04.01
     function ListHpHemoglobin(SrchDate : String) : Integer;
    end;

    // 투석실시 및 결과내역
    HmhHpactt = class
     sPatNo     : Variant;  // 환자번호
     sPatName   : Variant;  // 환자명
     sHdType	 : Variant;  // 투석환자구분
     sSeqNo     : Variant;  // 순번
     sExecDate	 : Variant;  // 실시일자
     sExecseq   : Variant;  // 실시순번 -- 새로추가된 Key
     sInfCls    : Variant;  // 감염 구분
     sSchdType  : Variant;  // 스케줄 타입
     sActYn	    : Variant;  // 실시여부
     sPatSect	 : Variant;  // 환자구분
     sMedDept   : Variant;  // 진료과
     sWardNo	 : Variant;  // 병동번호
     sOrdCd	    : Variant;  // 처방코드
     sHdKind    : Variant;  // 혈액 투석종류
     sKindnm    : Variant;  // 혈액 투석종류명
     sHdKnd	    : Variant;  // 혈액 투석액종류
     sHdShift	 : Variant;  // 혈액 투석SHIFT
     sHdCnt  	 : Variant;  // 일일 투석건수
     sHdmedYn	 : Variant;  // 혈액 초재진여부
     sPdeduYn	 : Variant;  // 복막 교육여부
     sPdexcYn	 : Variant;  // 복막 투석액교환여부
     sPdactYn	 : Variant;  // 복막 복막염여부
     sPdinfYn	 : Variant;  // 복막 출구염증여부
     sPdpipeYn	 : Variant;  // 복막 도관삽입여부
     sPdchngYn	 : Variant;  // 복막 수액주입관교환여부
     sPdbrkyn    : Variant;  // 복막 도관길들이기여부
     sPdpet	 : Variant;  // 복막 PET여부
     sPdktvYn	 : Variant;  // 복막 Kt/V여부
     sNurProg	 : Variant;  // 간호 PROGRESS
     sRemark	 : Variant;  // 특기사항
     sInsType	 : Variant;  // 급여구분
     sRcpStat	 : Variant;  // (원무) 원무STATUS-수납
     sPdact1	 : Variant;  // 복막 복막염 원인균
     sPdact3	 : Variant;  // 복막 복막염 경과
     sPdact2	 : Variant;  // 복막 복막염 항생제
     sPdinf1	 : Variant;  // 복막 출구염증 원인균
     sPdinf2	 : Variant;  // 복막 출구염증 항생제
     sPdinf3	 : Variant;  // 복막 출구염증 경과
     sPdpet1	 : Variant;  // 복막 PET계산 - Serum Creatinine 0h
     sPdpet2	 : Variant;  // 복막 PET계산 - Serum Creatinine 2h
     sPdpet3	 : Variant;  // 복막 PET계산 - Serum Creatinine 4h
     sPdpet4	 : Variant;  // 복막 PET계산 - Serum Glucose 0h
     sPdpet5	 : Variant;  // 복막 PET계산 - Serum Glucose 2h
     sPdpet6	 : Variant;  // 복막 PET계산 - Serum Glucose 4h
     sPdpet7	 : Variant;  // 복막 PET계산 - Serum Corrected Cr 0h
     sPdpet8	 : Variant;  // 복막 PET계산 - Serum Corrected Cr 2h
     sPdpet9	 : Variant;  // 복막 PET계산 - Serum Corrected Cr 4h
     sPdpet10	 : Variant;  // 복막 PET계산 - Dialysate Creatinine 0h
     sPdpet11	 : Variant;  // 복막 PET계산 - Dialysate Creatinine 2h
     sPdpet12	 : Variant;  // 복막 PET계산 - Dialysate Creatinine 4h
     sPdpet13	 : Variant;  // 복막 PET계산 - Dialysate Glucose 0h
     sPdpet14	 : Variant;  // 복막 PET계산 - Dialysate Glucose 2h
     sPdpet15	 : Variant;  // 복막 PET계산 - Dialysate Glucose 4h
     sPdpet16	 : Variant;  // 복막 PET계산 - Dialysate Corrected Cr 0h
     sPdpet17	 : Variant;  // 복막 PET계산 - Dialysate Corrected Cr 2h
     sPdpet18	 : Variant;  // 복막 PET계산 - Dialysate Corrected Cr 4h
     sPdpet19	 : Variant;  // 복막 PET계산 - PET D/P(Cr) 0h
     sPdpet20	 : Variant;  // 복막 PET계산 - PET D/P(Cr) 2h
     sPdpet21	 : Variant;  // 복막 PET계산 - PET D/P(Cr) 4h
     sPdpet22	 : Variant;  // 복막 PET계산 - PET D/Do(Glu) 0h
     sPdpet23	 : Variant;  // 복막 PET계산 - PET D/Do(Glu) 2h
     sPdpet24	 : Variant;  // 복막 PET계산 - PET D/Do(Glu) 4h
     sPdpet25	 : Variant;  // 복막 PET계산결과1
     sPdpet26	 : Variant;  // 복막 PET계산결과2
     sPdktv1	 : Variant;  // 복막 KT/V계산 - 투석액농도
     sPdktv2	 : Variant;  // 복막 KT/V계산 - Height
     sPdktv3	 : Variant;  // 복막 KT/V계산 - Weight(LBW)
     sPdktv4	 : Variant;  // 복막 KT/V계산 - BSA
     sPdktv5	 : Variant;  // 복막 KT/V계산 - BUN(mg/dL)
     sPdktv6	 : Variant;  // 복막 KT/V계산 - Cr(mg/dL)
     sPdktv7	 : Variant;  // 복막 KT/V계산 - 24HU Volume(ml)
     sPdktv8	 : Variant;  // 복막 KT/V계산 - Collection Time(min)
     sPdktv9	 : Variant;  // 복막 KT/V계산 - Urine UN(mg/dL)
     sPdktv10	 : Variant;  // 복막 KT/V계산 - Urine Cr(mg/dL)
     sPdktv11	 : Variant;  // 복막 KT/V계산 - Total Urine UN(mg/dL)
     sPdktv12	 : Variant;  // 복막 KT/V계산 - Timed PD Volume(mL)
     sPdktv13	 : Variant;  // 복막 KT/V계산 - Collection Time(PD,min)
     sPdktv14	 : Variant;  // 복막 KT/V계산 - PD(Urea)
     sPdktv15	 : Variant;  // 복막 KT/V계산 - PD(Cr)
     sPdktv16	 : Variant;  // 복막 KT/V계산 - Total PD(Urea)
     sPdktv17	 : Variant;  // 복막 KT/V계산 - Final Urea Volume(A)
     sPdktv18	 : Variant;  // 복막 KT/V계산 - Final Urea Volume(B)
     sPdktv19	 : Variant;  // 복막 KT/V계산 - Final Urea Volume(C)
     sPdktv20	 : Variant;  // 복막 KT/V계산 - M Urea Volume(A)
     sPdktv21	 : Variant;  // 복막 KT/V계산 - M Urea Volume(B)
     sPdktv22	 : Variant;  // 복막 KT/V계산 - M Urea Volume(C)
     sPdktv23	 : Variant;  // 복막 KT/V계산 - F Urea Volume(A)
     sPdktv24	 : Variant;  // 복막 KT/V계산 - F Urea Volume(B)
     sPdktv25	 : Variant;  // 복막 KT/V계산 - F Urea Volume(C)
     sPdktv26	 : Variant;  // 복막 KT/V계산 - D(Urea)
     sPdktv27	 : Variant;  // 복막 KT/V계산 - D(Urea)/wk
     sPdktv28	: Variant;  // 복막 KT/V계산 - RRF(Urea)
     sPdktv29	: Variant;  // 복막 KT/V계산 - RRF(Urea)/wk
     sPdktv30	: Variant;  // 복막 KT/V계산 - KT
     sPdktv31	: Variant;  // 복막 KT/V계산 - KT/V(A)
     sPdktv32	: Variant;  // 복막 KT/V계산 - KT/V(B)
     sPdktv33	: Variant;  // 복막 KT/V계산 - KT/V(C)
     sPdktv34	: Variant;  // 복막 KT/V계산 - UGR
     sPdktv35	: Variant;  // 복막 KT/V계산 - PCR(g/day)
     sPdktv36	: Variant;  // 복막 KT/V계산 - PCR/wt
     sPdktv37	: Variant;  // 복막 KT/V계산 - nPCR
     sPdktv38	: Variant;  // 복막 KT/V계산 - D(CCr)ml/min
     sPdktv39	: Variant;  // 복막 KT/V계산 - U(CCr)ml/min
     sPdktv40	: Variant;  // 복막 KT/V계산 - CCr(ml/min)
     sPdktv41	: Variant;  // 복막 KT/V계산 - CCr(L/Wr)
     sPdktv42	: Variant;  // 복막 KT/V계산 - 투석내용
     sOrdDate	: Variant;  // 처방일자
     sOrdSeqno	: Variant;  // 처방순번
     sMeddate  : Variant;  // 진료일자
     sEditDate	: Variant;  // 수정일시
     sEditId	: Variant;  // 수정자 ID
     sEditIp	: Variant;  // 수정자 IP
     sDelDate  : Variant;  // 삭제 및 수정 기준일자
     sDataChk  : Variant;  // Data처리 기준
     sBfrPat   : Variant;  // 이전 환자상태
     sSex      : Variant;  // 성별 (APPATBAT 환자기본정보)
     sAge      : Variant;  // 나이 (APPATBAT 환자기본정보)
     sCitizen  : Variant;  // 주민번호 (APPATBAT 환자기본정보)
     sInf      : Variant;  // 감염정보 (MHPTINFT 투석환자기본)
     sRsn      : Variant;  // 원인질환 (MHPTINFT 투석환자기본)
     sSpcDr    : Variant;  // 특진의    (MHPTINFT 투석환자기본)
     sEnddate  : Variant;  // 투석종료일 (MHPTINFT 투석환자기본)
     sTelNo    : Variant;  // 전화번호 (MHPTINFT 투석환자기본)
     sSpcDrnm  : Variant;  // 특진의 성명
     sApChk    : Variant;  // 원무저장 구분
     sOldpttp  : Variant;  // 지병구분
     sBirtDate : Variant;  // 원무 생일
     sAdmDate  : Variant;  // 입원일자
     sOrdDept  : Variant;  // 실행부서
     sPatdept  : variant;  // 환자 소속과
     sMedTime  : Variant;  // 응급 경우 진료시간
     sInsu     : variant;  // 보험구분
     sERyn     : variant;  // 응급구분
     sNightyn  : Variant;  // 심야구분
     sPatsite  : Variant;  // 환자상태 -- 원무구분
     sChadr    : Variant;  // 주치의
     sExecdate1 : Variant; // 실시일자
     sHopedate  : Variant ; //  실제 예약일

     sHD_OCS    : Variant;     //외래환자 HD  건수
     sPlasex_OCS: Variant;     // 외래환자 plasex  건수
     sHemo_OCS  : Variant;     // 외래환자 Hemo    건수
     sCVVH_OCS  : Variant;     // 외래환자 CVVH    건수
     sETC_OCS   : Variant;     // 외래환자 기타    건수
     sHD_ICS    : Variant;     // 입원환자 HD  건수
     sPlasex_ICS: Variant;     // 입원환자 plasex  건수
     sHemo_ICS  : Variant;     // 입원환자 Hemo    건수
     sCVVH_ICS  : Variant;     // 입원환자 CVVH    건수
     sETC_ICS   : Variant;     // 입원환자 기타    건수
     sHD_CCS    : Variant;     // 만성환자 HD  건수
     sPlasex_CCS: Variant;     // 만성환자 plasex  건수
     sHemo_CCS  : Variant;     // 만성환자 Hemo    건수
     sCVVH_CCS  : Variant;     // 만성환자 CVVH    건수
     sETC_CCS   : Variant;     // 만성환자 기타    건수
     sHD_ACS    : Variant;     // 급성환자 HD  건수
     sPlasex_ACS: Variant;     // 급성 plasex  건수
     sHemo_ACS  : Variant;     // 급성 Hemo    건수
     sCVVH_ACS  : Variant;     // 급성 CVVH    건수
     sETC_ACS   : Variant;     // 급성 기타    건수
     sHDEDU_CS  : Variant;     // HD 교육건수
     sPDEXC_CS  : Variant;     // 복막 투석액 교환건수
     sPDCHNG_CS : Variant;     // 복막 주입관 교환건수
     sPDACT_CS  : Variant;     // 복막 복막염 발생건수
     sPDINF_CS  : Variant;     // 복막 출구염증 발생건수
     sPDPET_CS  : Variant;     // 복막 PET 건수
     sPDKTV_CS  : Variant;     // 복막 KT/V 건수
     sPDPIPE_CS : Variant;     // 복막 도관삽입건수
     sPDEDU_CS  : Variant;     // 복막 교육건수
     sPDBRK_CS  : Variant;     // 복막 도관길들이기 건수
     sHD_OMS    : Variant;     // 외래환자 HD      환자수
     sPlasex_OMS: Variant;     // 외래환자 plasex  환자수
     sHemo_OMS  : Variant;     // 외래환자 Hemo    환자수
     sCVVH_OMS  : Variant;     // 외래환자 CVVH    환자수
     sETC_OMS   : Variant;     // 외래환자 기타   환자수
     sHD_IMS    : Variant;     // 입원환자 HD      환자수
     sPlasex_IMS: Variant;     // 입원환자 plasex  환자수
     sHemo_IMS  : Variant;     // 입원환자 Hemo    환자수
     sCVVH_IMS  : Variant;     // 입원환자 CVVH    환자수
     sETC_IMS   : Variant;     // 입원환자 기타   환자수
     sHD_CMS    : Variant;     // 만성환자 HD  환자수
     sPlasex_CMS: Variant;     // 만성환자 plasex  환자수
     sHemo_CMS  : Variant;     // 만성환자 Hemo    환자수
     sCVVH_CMS  : Variant;     // 만성환자 CVVH    환자수
     sETC_CMS   : Variant;     // 만성환자 기타    환자수
     sHD_AMS    : Variant;     // 급성환자 HD  환자수
     sPlasex_AMS: Variant;     // 급성 plasex  환자수
     sHemo_AMS  : Variant;     // 급성 Hemo    환자수
     sCVVH_AMS  : Variant;     // 급성 CVVH    환자수
     sETC_AMS   : Variant;     // 급성 기타    환자수
     sHD_I1S    : Variant;     // HD 보험환자수
     sPlasex_I1S: Variant;     // Plasex 보험환자수
     sHemo_I1S  : Variant;     // Hemo 보험환자수
     sCVVH_I1S  : Variant;     // Cvvh 보험환자수
     sETC_I1S   : Variant;     // Etc 보험환자수
     sHD_I2S    : Variant;     // HD 보호1종환자수
     sPlasex_I2S: Variant;     // Plasex 보호1종환자수
     sHemo_I2S  : Variant;     // Hemo 보호1종환자수
     sCVVH_I2S  : Variant;     // Cvvh 보호1종환자수
     sETC_I2S   : Variant;     // Etc 보호1종환자수
     sHD_I3S    : Variant;     // HD 보호2종환자수
     sPlasex_I3S: Variant;     // Plasex 보호2종환자수
     sHemo_I3S  : Variant;     // Hemo 보호2종 환자수
     sCVVH_I3S  : Variant;     // Cvvh 보호2종 환자수
     sETC_I3S   : Variant;     // Etc 보호2종 환자수
     sHD_I4S    : Variant;     // HD 산재환자수
     sPlasex_I4S: Variant;     // Plasex 산재환자수
     sHemo_I4S  : Variant;     // Hemo 산재환자수
     sCVVH_I4S  : Variant;     // Cvvh 산재환자수
     sETC_I4S   : Variant;     // Etc 산재환자수
     sHD_I5S    : Variant;     // HD 기타환자수
     sPlasex_I5S: Variant;     // Plasex 기타환자수
     sHemo_I5S  : Variant;     // Hemo 기타환자수
     sCVVH_I5S  : Variant;     // Cvvh 기타환자수
     sETC_I5S   : Variant;     // Etc 기타환자수
     sHDRsn1    : Variant;     // 투석종료사유 HD사망
     sPlasexRsn1: Variant;     // 투석종료사유 Plasex사망
     sHemoRsn1  : Variant;     // 투석종료사유 Hemo사망
     sCVVHRsn1  : Variant;     // 투석종료사유 Cvvh사망
     sETCRsn1   : Variant;     // 투석종료사유 기타사망
     sHDRsn2    : Variant;     // 투석종료사유 HD 전출
     sPlasexRsn2: Variant;     // 투석종료사유 Plasex 전출
     sHemoRsn2  : Variant;     // 투석종료사유 Hemo 전출
     sCVVHRsn2  : Variant;     // 투석종료사유 Cvvh 전출
     sETCRsn2   : Variant;     // 투석종료사유 기타 전출
     sHDRsn3    : Variant;     // 투석종료사유 HD 회복
     sPlasexRsn3: Variant;     // 투석종료사유 Plasex 회복
     sHemoRsn3  : Variant;     // 투석종료사유 Hemo 회복
     sCVVHRsn3  : Variant;     // 투석종료사유 Cvvh 회복
     sETCRsn3   : Variant;     // 투석종료사유 기타 회복
     sHDRsn4    : Variant;     // 투석종료사유 HD 이식
     sPlasexRsn4: Variant;     // 투석종료사유 Plasex 이식
     sHemoRsn4  : Variant;     // 투석종료사유 Hemo 이식
     sCVVHRsn4  : Variant;     // 투석종료사유 Cvvh 이식
     sETCRsn4   : Variant;     // 투석종료사유 기타 이식
     sHDRsn5    : Variant;     // 투석종료사유 HD 포기
     sPlasexRsn5: Variant;     // 투석종료사유 Plasex 포기
     sHemoRsn5  : Variant;     // 투석종료사유 Hemo 포기
     sCVVHRsn5  : Variant;     // 투석종료사유 Cvvh 포기
     sETCRsn5   : Variant;     // 투석종료사유 기타 포기
     sHDRsn6    : Variant;     // 투석종료사유 HD 타치료전환
     sPlasexRsn6: Variant;     // 투석종료사유 Plasex 타치료전환
     sHemoRsn6  : Variant;     // 투석종료사유 Hemo 타치료전환
     sCVVHRsn6  : Variant;     // 투석종료사유 Cvvh 타치료전환
     sETCRsn6   : Variant;     // 투석종료사유 기타 타치료전환
     sAVF       : Variant;     // HD AVF 환자수
     sAVG       : Variant;     // HD AVG 환자수
     sPC        : Variant;     // HD PC 환자수
     sJC        : Variant;     // HD JC 환자수
     sFC        : Variant;     // HD FC 환자수
     sSC        : Variant;     // HD SC 환자수
     sETC1      : Variant;     // HD ETC 환자수
     sPD_CMS    : Variant;     // 복막투석 총환자수
     sPDRsn1    : Variant;     // 복막투석 종료사유
     sPDRsn2    : Variant;     // 복막투석 종료사유
     sPDRsn3    : Variant;     // 복막투석 종료사유
     sPDRsn4    : Variant;     // 복막투석 종료사유
     sPDRsn5    : Variant;     // 복막투석 종료사유
     sPDRsn6    : Variant;     // 복막투석 종료사유
     sPDKnd1    : Variant;     // 복막투석 회사종류
     sPDKnd2    : Variant;     // 복막투석 회사종류
     sPDKnd3    : Variant;     // 복막투석 회사종류
     sPDKnd4    : Variant;     // 복막투석 회사종류
     sPDKnd5    : Variant;     // 복막투석 회사종류
     sPDPIPE_MS : Variant;     // 복막투석 신환자수
     sHD_FMS    : Variant;
     sPlasex_FMS: Variant;
     sHemo_FMS  : Variant;
     sCVVH_FMS  : Variant;
     sETC_FMS   : Variant;
     sPDInsu1   : Variant;
     sPDInsu2   : Variant;
     sPDInsu3   : Variant;
     sPDInsu4   : Variant;
     sPDInsu5   : Variant;
     sHD_EMS     : Variant;
     sPlasex_EMS : Variant;
     sHemo_EMS   : Variant;
     sCVVH_EMS   : Variant;
     sETC_EMS    : Variant;
     sHD_ECS     : Variant;
     sPlasex_ECS : Variant;
     sHemo_ECS   : Variant;
     sCVVH_ECS   : Variant;
     sETC_ECS    : Variant;
     sPD_EMS     : Variant;
     sPD_ECS     : Variant;
     sJAN        : Variant;
     sFEB        : Variant;
     sMAR        : Variant;
     sAPR        : Variant;
     sMAY        : Variant;
     sJUN        : Variant;
     sJUL        : Variant;
     sAUG        : Variant;
     sSEP        : Variant;
     sOCT        : Variant;
     sNOV        : Variant;
     sDEC        : Variant;
     sSUM        : Variant;
     sHdkind1    : Variant;
     sHdknd1     : Variant;
     sHdmedyn1   : Variant;
     sDrnm       : Variant;
     sChkcnt     : Variant;
     sDate       : Variant;
     sChadrnm    : Variant;
     // 중환자실 추가
     sHD_UCS    : Variant;     // 중환자 HD  건수
     sPlasex_UCS: Variant;     // 중환자 plasex  건수
     sHemo_UCS  : Variant;     // 중환자 Hemo    건수
     sCVVH_UCS  : Variant;     // 중환자 CVVH    건수
     sETC_UCS   : Variant;     // 중환자 기타    건수
     sHD_UMS    : Variant;     // 입원환자 HD      환자수
     sPlasex_UMS: Variant;     // 입원환자 plasex  환자수
     sHemo_UMS  : Variant;     // 입원환자 Hemo    환자수
     sCVVH_UMS  : Variant;     // 입원환자 CVVH    환자수
     sETC_UMS   : Variant;     // 입원환자 기타   환자수
     function SearchYear(sStdate,sEddate,sCond :string) : Integer;
     function SearchDate(sStMonth,sEdMonth:string) : Integer;
     function InputSchedule(Cnt:Integer):Integer;
     function ListSchedule(sSrchdate:String):Integer;
     function ListWorkSheet(sSrchDate,sHdType,sHdShift,sEddate : String):Integer;
     function ListFstPat(sFromDate, sToDate : String):Integer;
     function ListExecPERI(sPatNo : String):Integer;
     function ListPatSchedule(sFromdate, sTodate : String):Integer;
     function ListPatSchedule2(sPTNO, sSect, sFromdate, sTodate : String):Integer;
     function SelectPat(PatNo, FindDate, HDtype :String):Integer;
     function UpdateInfo(Ordseqno,Patno,Hdtype,SeqNo,Execdate,Actyn,Patsect,Meddept,
                         Wardno,Ordcd,Hdkind,Hdknd,Hdmedyn,Pdeduyn,
                         Pdexcyn,Pdactyn,Pdinfyn,Pdpipeyn,Pdchngyn,Pdbrkyn,
                         Pdpet,Pdktvyn,Nurprog,Remark,
                         Pdact1,Pdact3,Pdact2,Pdinf1,Pdinf2,
                         Pdinf3,Pdpet1,Pdpet2,Pdpet3,Pdpet4,Pdpet5,Pdpet6,
                         Pdpet7,Pdpet8,Pdpet9,Pdpet10,Pdpet11,Pdpet12,Pdpet13,
                         Pdpet14,Pdpet15,Pdpet16,Pdpet17,Pdpet18,Pdpet19,Pdpet20,
                         Pdpet21,Pdpet22,Pdpet23,Pdpet24,Pdpet25,Pdpet26,Pdktv1,
                         Pdktv2,Pdktv3,Pdktv4,Pdktv5,Pdktv6,Pdktv7,Pdktv8,Pdktv9,
                         Pdktv10,Pdktv11,Pdktv12,Pdktv13,Pdktv14,Pdktv15,Pdktv16,
                         Pdktv17,Pdktv18,Pdktv19,Pdktv20,Pdktv21,Pdktv22,Pdktv23,
                         Pdktv24,Pdktv25,Pdktv26,Pdktv27,Pdktv28,Pdktv29,Pdktv30,
                         Pdktv31,Pdktv32,Pdktv33,Pdktv34,Pdktv35,Pdktv36,Pdktv37,
                         Pdktv38,Pdktv39,Pdktv40,Pdktv41,Pdktv42,sSpcDr,Orddate,
                         Meddate,Patdept,ERyn,Nightyn,Execseq,Medtime,
                         Editid,Editip : String):Integer;
     function DeleteActInfo(PatNo, HdType, DelDate:String):Integer;
     function ListMoney(PatNo,Execdate : String) : Integer;
     function UpdateSchedule(sPatno,sExecdate,sHdtype,sSeqno,sPatsect,sMeddept,sWardno,sChadr,sMeddate,sExecseq : String) : Integer;
     function SelectHdinfo(sPatno,sExecdate,sSeqno : String) : Integer;
     function UpdateHdinfo(sPatno,sChgdate,sSeqno,sExecdate,sHdshift,sChadr,sEditid,sEditip,sHdcnt,sExecseq : String) : Integer;
     function UpdateAll(cnt : Integer) : Integer;
     function UpdateActInfo(PatNo, HdType, DelDate:String):Integer;
     function UpdatePdstat(sPatno,sHdtype,sSeqno,sExecdate,sPdeduyn,sPdexcyn,sPdactyn,sPdinfyn,sPdpipeyn,sPdchngyn,sPdbrkyn,sPdpet,sPdktvyn,sEditid,sEditip  : String):Integer;
     function AddSchedule(sPatno,sHdtype,sSeqno,sExecdate,sHdshift,sSpcdr,sEditid,sEditip : String) : Integer;
     //(추가. 2003.05.06 이용언) Client Tunning
     function ListSchedule2(sSrchdate:String):Integer;
    end;

    // 전원일지
    HmhTranst = class
	sPatno      : Variant;  // 환자번호 */
	sHdtype     : Variant;  // 투석환자구분 */
	sInsu       : Variant;  // 보험 */
	sInsubo1    : Variant;  // 보호1종 */
	sInsubo2    : Variant;  // 보호2종 */
	sTransrsn   : Variant;  // 전원사유 */
        sRsndiss    : Variant;  // 원인질환 */
	tHdstart    : Variant;  // 투석시작일 */
	tHdend      : Variant;  // 최종투석일 */
	sHdtool     : Variant;  // 투석기계 */
	sHdmachin   : Variant;  // 투석기 */
	sHdfloid    : Variant;  // 투석액 */
	sHpdcnt     : Variant;  // 투석회수 */
	sHpdtime    : Variant;  // 투석시간 */
	sBldspeed   : Variant;  // 혈류속도 */
	sAvfyn      : Variant;  // AVFYN */
	sAvftext    : Variant;  // AVFTEXT */
	sAvgyn      : Variant;  // AVGYN */
	sAvgtext    : Variant;  // AVGTEXT */
	sPermyn     : Variant;  // PERMYN */
	sPermtext   : Variant;  // PERMTEXT */
	sJvcyn      : Variant;  // JVCYN */
	sJvctext    : Variant;  // JVCTEXT */
	sSvcyn      : Variant;  // SVCYN */
	sSvctext    : Variant;  // SVCTEXT */
	sFvcyn      : Variant;  // FVCYN */
	sFvctext    : Variant;  // FVCTEXT */
	sFstqty     : Variant;  // 헤파린초기용량 */
	sMainqty    : Variant;  // 유지용량 */
	sPreshgh1   : Variant;  // 혈압투석전(고) */
	sPreshgh2   : Variant;  // 혈압투석후(고) */
	sPreslow1   : Variant;  // 혈압투석전(저) */
	sPreslow2   : Variant;  // 혈압투석후(저) */
	sWeight     : Variant;  // 건체중 */
	sIncwght    : Variant;  // 체중증가량 */
	sHbsag      : Variant;  // HBsAg */
	sAntihcv    : Variant;  // AntiHCV */
	sAntihiv    : Variant;  // AntiHIV */
	sVdrl       : Variant;  // VDRL */
	sBloodab    : Variant;  // 혈액형AB */
	sBloodrh    : Variant;  // 혈액형RH */
	sBloodyn    : Variant;  // 혈액형 확인여부 */
	sTestdte    : Variant;  // 검사일자 */
	sRbc        : Variant;  // RBC */
	sWbc        : Variant;  // WBC */
	sHb         : Variant;  // HB */
	sHct        : Variant;  // HCT */
	sPlatel     : Variant;  // PLATEL */
	sNa         : Variant;  // Na */
	sK          : Variant;  // K */
	sCl         : Variant;  // Cl */
	sCo2        : Variant;  // CO2 */
	sCa         : Variant;  // Ca */
	sP          : Variant;  // P */
	sAst        : Variant;  // AST */
	sAlt        : Variant;  // ALT */
	sAlp        : Variant;  // ALP */
	sPth        : Variant;  // PTH */
	sColest     : Variant;  // COLESTEROL */
	sUric       : Variant;  // Uric Acid */
	sBuncr      : Variant;  // BUN/Cr */
	sFetibc     : Variant;  // Fe/TIBC */
	sFerritn    : Variant;  // Ferritin */
	sProtein    : Variant;  // PROTEIN */
	sFbs        : Variant;  // FBS */
	sPp2hr      : Variant;  // PP2hr */
	sHba1       : Variant;  // HbA1,C */
	sOtrtest    : Variant;  // 기타검사 */
	sDrug       : Variant;  // 투약 */
	sCommnt     : Variant;  // 특이사항 */
	sMakeDrnm   : Variant;  // 작성의 */
        sMakeDrid   : Variant;  // 작성의 사번*/
	tCrtdte     : Variant;  // 작성일 */
	sHosptel    : Variant;  // 전원병원전화 */
        sExamrslt   : Variant;  // 검사결과 (Text)
	sEditid     : Variant;  // 수정자 ID */
	sEditip     : Variant;  // 수정자 IP */
	tEditdate   : Variant;  // 수정일시 */
     function InputTrans(Patno      ,	Rsndiss    ,   Testdte    ,   Hdtype     ,	Insu       ,	Insubo1    ,
 	                      Insubo2    ,	Transrsn   ,	Hdstart    ,	Hdend      ,
	                      Hdtool     ,	Hdmachin   ,	Hdfloid    ,	Hpdcnt     ,
                         Hpdtime    ,	Bldspeed   ,	Avfyn      ,	Avftext    ,
                         Avgyn      ,	Avgtext    ,	Permyn     ,	Permtext   ,
	                      Jvcyn      ,	Jvctext    ,	Svcyn      ,	Svctext    ,
	                      Fvcyn      ,	Fvctext    ,	Fstqty     ,	Mainqty    ,
	                      Preshgh1   ,	Preshgh2   ,	Preslow1   ,	Preslow2   ,
	                      Weight     ,	Incwght    ,	Hbsag      ,	Antihcv    ,
	                      Antihiv    ,	Vdrl       ,	Bloodab    ,	Bloodrh    ,
	                      Bloodyn    ,	Rbc        ,	Wbc        ,	Hb         ,
	                      Hct        ,	Platel     ,	Na         ,	K          ,
	                      Cl         ,	Co2        ,	Ca         ,	P          ,
	                      Ast        ,	Alt        ,	Alp        ,	Pth        ,
	                      Colest     ,	Uric       ,	Buncr      ,	Fetibc     ,
	                      Ferritn    ,	Protein    ,	Fbs        ,	Pp2hr      ,
	                      Hba1       ,	Otrtest    ,	Drug       ,	Commnt     ,
	                      MakeDrnm   ,	MakeDrid   ,  Crtdte      ,	Hosptel    ,  ExamRsl     ,	Editid     ,
	                      Editip     :string):Integer;
     function SelectTrans(PatNo, HDType : String):Integer;
    end;

    // 환자의 현위치
    HmhPtloct = class
     sPatno  	: Variant;  // 환자번호
     sMeddate	: Variant;  // 입원일자/진료일자
     sMeddept   : Variant;  // 진료과
     sDrId      : Variant;  // 의사
     sPttype    : Variant;  // 원무구분
     sWardNo    : Variant;  // 병동
     sRoomNo    : Variant;  // 병실
     sMedtime   : Variant;  // 응급실 시간
     sPtloc 	 : Variant;   // 상태(I : 입원, O : 외래, E : 응급)
     sType      : Variant;  // 구분코드
     sOrdDate   : Variant;  // 처방일자
     sSubInSt   : Variant;  // 부보험유형
     sBckStat   : Variant;  // 퇴원심사중인 환자상태
     sExecseq   : Variant;  // 1일 2회시 순번값(max)
     sAdmdate   : Variant;  // 입원일자

     function SelectPtloc(Ptno, sDate : String):Integer;
     function SelectPatInfo(Ptno, sDate, sType : String):Integer;
    end;

    // 진료 처방 Reference
    HmhOrdrct = class
     sOrdcd   : Variant;
     sOrdname : Variant;
     function ListOrdrc():Integer;
    end;

    // 투석지시 내역
    HmhHpdort = class
     sPatno   : Variant;
     sPatName : Variant;
     sOrdDate : Variant;
     sOrdcd   : Variant;
     sOrdName : Variant;
     sHdType  : Variant;
     sPatSect : Variant;
     sOrdDr   : Variant;
     sOrdDrNm : Variant;
     sChaDr   : Variant;
     sChaDrNm : Variant;
     sMeddept : Variant;
     sOrdText : Variant;
     sActChk  : Variant;
     sOrdtime : Variant;
     sFromdate : Variant;
     sTodate   : Variant;
     sRsndiss  : Variant;
     sOrdseqno : Variant;
     sMeddate  : Variant;
     function ListHpdrt():Integer;
     function SelectText(PatNO,HDType:string):Integer;
     function SelectText2(PatNO,HDType,Fromdate,Todate:string):Integer;
     function UpdateHdorder(PatNo,OrdDate,Ordseqno,EditId,EditIp:string): Integer;
    end;

   // 약처방 내역
   HmhMedort = Class
      sPatno    : Variant;
      sOrddate  : Variant;
      sOrddesc1 : Variant;
      sOrddesc2 : Variant;
      function SelectMedor(sPatno,sFromdate,sTodate : String) : Integer;
   end;

   // 투석환자 외래/입원 간호내역
   HmhNurset = Class
     sType1 	 : Variant;  // 검색조건1
     sType2 	 : Variant;  // 검색조건2
     sType3 	 : Variant;  // 검색조건3
     sType4 	 : Variant;  // 검색조건4
     sType5 	 : Variant;  // 검색조건5
     sType6 	 : Variant;  // 검색조건6
     sPatNo 	 : Variant;  // 환자번호
     sPatName	 : Variant;  // 환자명
     sResno1	 : Variant;  // 주민번호1
     sResno2	 : Variant;  // 주민번호2
     sTelno1	 : Variant;  // 집전화번호
     sTelno2	 : Variant;  // 직장전화번호
     sTelno3	 : Variant;  // 핸드폰
     sEmail 	 : Variant;  // E-MAIL
     sZipcd 	 : Variant;  // 우편번호
     sAddress	 : Variant;  // 주소
     sSex   	 : Variant;  // 성별(M/F)
     sBirtDate	 : Variant;  // 생년월일(YYYYMMDD)
     sPattype	 : Variant;  // 환자유형
     sPattpNm	 : Variant;  // 환자유형명
     sSubinsut	 : Variant;  // 부보험유형(지병)
     sExceptcd	 : Variant;  // 의약분업예외코드
     sReferyn	 : Variant;  // Refer여부
     sDrgyn 	 : Variant;  // DRG여부
     sAdmDate	 : Variant;  // 입원일
     sMedDept	 : Variant;  // 진료과
     sDeptNm	 : Variant;  // 진료과명
     sWardNo	 : Variant;  // 병동
     sRoomNo	 : Variant;  // 병실
     sWardNo1	 : Variant;  // 병동(현위치)
     sRoomNo1	 : Variant;  // 병실(현위치)
     sBedNo	    : Variant;  // 병상
     sChaDr 	 : Variant;  // 주치의
     sChaDrNm	 : Variant;  // 주치의명
     sGenDr 	 : Variant;  // 담당의
     sGenDrNm	 : Variant;  // 담당의명
     sDiagcd	 : Variant;  // 주진단코드
     sDiagName	 : Variant;  // 주진단명
     sLstopDt	 : Variant;  // 최근수술일
     sOpcode	 : Variant;  // 최근수술코드
     sOpName	 : Variant;  // 최근수술명
     sPatSect	 : Variant;  // 환자구분(D:DRG R:REFER S:지병)
     sFstmedty  : Variant;  // 1:초진 2:재진 3:신환 4:재초진
     sVschktRm  : Variant;  // Vital Sign 측정주기
     sVschkYn   : Variant;  // Vital Sign 측정여부
     sDschexdt	 : Variant;  // 퇴원예정일
     sDschdate	 : Variant;  // 퇴원일
     sEditId	 : Variant;  // 수정자 ID
     sEditIp	 : Variant;  // 수정자 IP
     sAge       : Variant;  // 나이  (추가내용)
     sPatCls	 : Variant;  // 환자구분('I'=입원,'O'=외래,'E'=응급)
     sMedTime	 : Variant;  // 진료시간
     sErOutyn 	 : Variant;  // 응급환자퇴실여부
     sErAdmyn 	 : Variant;  // 응급환자입원여부
     sMedYn 	 : Variant;  // 진료여부
     sOld_feveryn: Variant; // 전일 발열여부
     sOld_diareyn: Variant; // 전일 설사여부
     sOld_ventyn : Variant; // 전일 Ventilator여부
     sOld_foleyyn: Variant; // 전일 F. Cath여부
     sOld_centyn : Variant; // 전일 Cent여부
     sFeveryn    : Variant; // 금일 발열여부
     sDiareyn    : Variant; // 금일 설사여부
     sVentyn     : Variant; // 금일 Ventilator여부
     sFoleyyn    : Variant; // 금일 F. Cath여부
     sCentyn     : Variant; // 금일 Cent여부
     sInvdevyn   : Variant; // 금일 장치여부
     sRgtdate    : Variant; // 등록일자
     sEditdate   :Variant;  // 수정일자
     sMax_temp   :Variant;  // 최고 체온
     sCurDataYN  :Variant;  // 오늘저장한 자료가 있는지의 여부 2001.10.13
     sChkName    :Variant;  // 설사항목 2001.10.16
     sHeight     :Variant;  // 신장
     sWeight     :Variant;  // 체중
     sBckStat    :Variant;  // 심사진행여부
     sLstordDt   :Variant;  // 최근처방일자
     sFollow     :Variant;  // FollowUp여부
     sDate1      :Variant;  // 전일의 일자
     sDate2      :Variant;  // 금일의 일자
     sRemark     :Variant;  // 특기사항
     sBodytemp   :Variant;  //소아과외래 체중 2001.11.21
     sTransDt    :Variant;  // 최근전과전동일자
     sRsvType    :Variant;  //외래예약구분
     sSysdate    :Variant;
     sNurStat    :Variant;
     sHdsFlag    :Variant;
     sMedDate    :Variant;
     sMsDate     :Variant;  // 검진일자
     sCdChrtYn   :Variant;  // CD Chart 유무
     sMedDr       : Variant;  // 진료의사
     sOrdDate     : Variant;  // 처방일자/예약신청일자
     iStayNo      : Variant;  // 진료대기순서
     iUnCollect   : Variant;
     sPatTypeNm   : Variant;  // 환자유형
     sRsvTypeCd   : Variant;  // 예약구분코드
     sRsvcfmYn    : Variant;  // 예약확인
     sTypeCd      : Variant;  // 유형보조
     sSpcdrYn     : Variant;  // 선택의사여부
     sMedrcpYn    : Variant;  // 진찰료수납여부
     sRcpYn       : Variant;  // 수납여부
     sMedchgId    : Variant;  // 진찰여부수정자
     sErDate      : Variant;  // 응급실도착시간
     sOeFlag      : Variant;  // 외래응급여부
     sOiFlag      : Variant;  // 외래/입원구분
     sRejtDate    : Variant;  // 취소일시
     sFstinpId    : Variant;  // 최초입력자
     tFstTime     : Variant;  // 최초입력시간
     iRcpSeq      : Variant;  // 수납순번
     sMedDrNm     : Variant;  // 진료의Name
     sOtherYn     : Variant;  // 타과예약여부
     sChartYn     : Variant;  // 입원차트대출여부
     sFilmYn      : Variant;  // 필름대출희망여부
     sGubn        : Variant;  //환자구분명
     sCount       : Variant;  // 예약인원
     sFstmedtyR   : Variant;
     sFsttime     : Variant;
     sCustcd      : Variant;
     sDccode      : Variant;
     sPattypeCd   : Variant;
     sCurrloc     : Variant;  //차트현위치
     sFuture      : Variant;
     sNochcd      : Variant;
     sHdshift     : Variant;

     //투석환자 통합리스트 조회
    function SelectHdPatList1(sType1,sType2,sType3,sType4:String):Integer;
    function SelectHdPatList2(sType1,MedDate,MedDept,MedDr,MedYn,MedTime:String):Integer;
   end;

   // 투석환자 투석 적절도
   HmhHemomt = Class
     sPatno       :Variant;
     sStartdt     :Variant;
     sDiagsimcd1  :Variant;
     sDiagsimcd2  :Variant;
     sEf40cb      :Variant;
     sPacecb      :Variant;
     sChestcb     :Variant;
     sGaesimcb    :Variant;
     sDiagnoecd1  :Variant;
     sDiagnoecd2  :Variant;
     sNormalcb    :Variant;
     sDiaggancd1  :Variant;
     sDiaggancd2  :Variant;
     sCpscb       :Variant;
     sDiagwicd1   :Variant;
     sDiagwicd2   :Variant;
     sWith1yrbcb  :Variant;
     sDiagpyecd1  :Variant;
     sDiagpyecd2  :Variant;
     sSpo2cb      :Variant;
     sDiagakcd1   :Variant;
     sDiagakcd2   :Variant;
     sWith1yrocb  :Variant;
     sDiagdangcd1 :Variant;
     sDiagdangcd2 :Variant;
     sHeight      :Variant;
     //빈혈관리용 필드
     sOrdDateGrp  :Variant;
     sEdicode     :Variant;
     sOrdname     :Variant;
     sOrdCount    :Variant;
     sOrdQty      :Variant;
     // 혈압/체중관리용 필드
     sMeasureDate  :Variant;
     sPrePress    :Variant;
     sPostPress   :Variant;
     sPreWeight   :Variant;
     sPostWeight  :Variant;
     // 혈액투석 적정성 필드
     sPreBUN      :Variant;
     sPostBUN     :Variant;
     sTusukType   :Variant;
     sTusukTime   :Variant;
     sJesu        :Variant;
     sTestResult  :Variant;
     sPostCWeight :Variant; // 혈액 투석 적정성 저장을 위한 투석후 체중
     // 혈관협착모니터링 필드
     sTongType    :Variant;
     sArtery      :Variant;
     sVein        :Variant;
     // 정기검사모니터링
     sExecDate    :Variant;
     sEngName     :Variant;
     sRslt        :Variant;

     // SELECT 추가 변수
     sPatname     :Variant;

     //공통변수
     sEditid      :Variant;
     sEditip      :Variant;

     // 투석 적정도 환자 기본 입력
     function InputHemoInf():Integer;
     function ListHemoInf(Type1,Patno:String):Integer;
     function SelectHemoInf(Patno:String):Integer;
     function SelectHinject(Patno,StartDate,EndDate:String):Integer;
     // 투석 혈압/체중관리
     function InputHemoPressure():Integer;
     function ListPressInf(patno:String):Integer;
     function ListPressDetailInf(patno,measuredate:String):Integer;
     // 투석 적정성 검사결과
     function InputHemoResult():Integer;
     function ListTestInf(patno:String):Integer;
     function ListTestDetailInf(patno,measuredate:String):Integer;
     // 혈관협착모니터링
     function InputHemoBlood():Integer;
     function ListBloodInf(patno:String):Integer;
     function ListBloodDetailInf(patno,measuredate:String):Integer;
     // 정기검사모니터링
     function ListExamInf(patno,startdate:String):Integer;
   end;

   //투석기록지
   //KimDaeYong 2017-05-29
   HmhHdrect = Class
     sPatno     :Variant;
     sPatname   :Variant;
     sOrddate   :Variant;
     sOrdseqno  :Variant;
     sMeddate   :Variant;
     sHdtype    :Variant;
     sHdtypenm  :Variant;
     sCaution   :Variant;
     sCauetc    :Variant;
     sRecdate   :Variant;
     sRecid     :Variant;
     sRecname   :Variant;
     sVisitpath :Variant;
     sBegindate :Variant;
     sEnddate   :Variant;
     sVsbegin   :Variant;
     sVsMiddle  :Variant;
     sVsend     :Variant;
     sWeight    :Variant;
     sBefweight :Variant;
     sAftweight :Variant;
     sUf        :Variant;
     sBldspeed  :Variant;
     sAnticaog  :Variant;
     sCapa1     :Variant;
     sCapa2     :Variant;
     sLiquid    :Variant;
     sKind      :Variant;
     sEquipkind :Variant;
     sPass      :Variant;
     sM30       :Variant;
     sH1        :Variant;
     sH1M30     :Variant;
     sH2        :Variant;
     sH2M30     :Variant;
     sH3        :Variant;
     sH3M30     :Variant;
     sOpin      :Variant;
     sFall      :Variant;
     sNurrec    :Variant;
     sTranstext :Variant;
     sRemark    :Variant;
     sVsbegindate :Variant;
     sVsMiddledate:Variant;
     sVsenddate   :Variant;
     sEditid    :Variant;
     sEditip    :Variant;

     sSignData  : Variant;              // SONGLIM_THOMA  수정
     sSerialNo  : Variant;
     sSubjectDN : Variant;

     sRecyn     :Variant;
	 sPatsect   :Variant;
	 sMeddept   :Variant;
	 sChadr     :Variant;
	 sChadrnm   :Variant;
	 sOrddr     :Variant;
	 sOrddrnm   :Variant;
	 sOrdcd     :Variant;
	 sRsndiss   :Variant;

     //투석전중후VS 항목 분리. KimDaeYong 2017-09-14
     sVsBgPls   :Variant;
     sVsBgResp  :Variant;
     sVsBgBld   :Variant;
     sVsMdPls   :Variant;
     sVsMdResp  :Variant;
     sVsMdBld   :Variant;
     sVsEdPls   :Variant;
     sVsEdResp  :Variant;
     sVsEdBld   :Variant;
     sVeinpres  :Variant;   //정맥압. KimDaeYong 2017-11-23

     //투석간호기록(MHHDNRCT). KimDaeYong 2017-08-14
     sActseqno  :Variant;
     sActdate   :Variant;
     sActtime   :Variant;
     sActtxt    :Variant;
     sActrecid  :Variant;
     sActrecnm  :Variant;

     //병동,병실 추가. KimDaeYong 2018-07-26
     sWardno    :Variant;
     sRoomno    :Variant;
     //혈압 분리 추가. KimDaeYong 2018-07-26
     sVsBgBld1  :Variant;
     sVsBgBld2  :Variant;
     sVsMdBld1  :Variant;
     sVsMdBld2  :Variant;
     sVsEdBld1  :Variant;
     sVsEdBld2  :Variant;
     sDiscyn    :Variant;

     function List1(inPatno, inOrddate:String):Integer;
     function Select1(inPatno, inMeddate, inOrddate, inOrdseqno:String):Integer;
     function Delete1(inPatno, inMeddate, inOrddate, inOrdseqno:String):Integer;
     function Insert1(sSignData,sSerialNo,sSubjectDN:string):Integer;
     function List2(inPatno, inMeddate, inOrddate, inOrseqno:String):Integer;
     function Insert2(inFlag,sSignData,sSerialNo,sSubjectDN:string):Integer;
     function Delete2(inPatno, inMeddate, inOrddate, inOrdseqno, inActseqno:String):Integer;
     function Insert3:Integer;  //간호IO,VS입력 KimDaeYong 2018-07-26
   end;

var
    mhPtinft : HmhPtinft;  // 투석환자기본
    mhHpactt : HmhHpactt;  // 투석실시 및 결과내역
    mhTranst : HmhTranst;  // 전원일지
    mhPtloct : HmhPtloct;  // 환자의 현위치
    mhOrdrct : HmhOrdrct;  // 진료처방 Reference
    mhHpdort : HmhHpdort;  // 투석지시 내역
    mhMedort : HmhMedort;  // 투약이력
    mhNurset : HmhNurset;  // 간호내용
    mhHemomt : HmhHemomt;  // 투석적정도환자기본
    mhHdrect : HmhHdrect;  // 투석기록지, KimDaeYong 2017-05-29

    srSedevt  : HsrSedevt;            //진정치료(신규)_진정전평가기록, KimSongJu 2015.4
    srSedmet  : HsrSedmet;            //진정치료(신규)_진정중투약기록, KimSongJu 2015.4
    srSedrct  : HsrSedrct;            //진정치료(신규)_진정후회복상태및퇴실교욱, KimSongJu 2015.4    

    // 공통변수들
    mhHDType,              // 투석 종류 A: 혈액, B: 복막
    mhPatNo,               // 환자번호
    mhPatSect,             // 환자상태
    mhWardNo,              // 병동
    mhMedDept,             // 진료과
    mhTelno1,              // 전화번호1
    mhTelno2,              // 전화번호2
    mhTelno3,              // 전화번호3
    mhMarryyn,             // 결혼여부
    mhMryOthr,             // 결혼여부 기타
    mhJobcode,             // 직업
    mhRelation,            // 가족관계
    mhHdkind,              // 혈액투석종류, 복막투석액 종류
    mhkindOthr,            // 혈액투석종류, 복막투석액 종류 기타
    mhHdknd,               // 혈액투석액종류, 회사명 종류
    mhkndOthr,             // 혈액투석액종류, 회사명 종류 기타
    mhRsndiss,             // 원인질환
    mhRsnOthr,             // 원인질환 기타
    mhAcuteyn,             // 급만성 여부
    mhTrpYN,               // 이식 가능여부
    mhTrpdate,             // 과거 이식일
    mhHb1,                 // 감염항원 (HbsAg)
    mhHb2,                 // 감염항원 (HbsAb)
    mhHb4,                 // 감염항원 (HCV)
    mhHb5,                 // 감염항원 (VDRL)
    mhHb6,                 // 감염항원 (HIV)
    mhHpdsdate,            // 투석시작일
    mhSpcdr,               // 지정진료의
    mhBLDABO,              // 혈액형 ('',A,B,AB,O)
    mhBLDRH,               // 혈액형 ('',+,-)
    mhPipeHis,             // 도관 이력
    mhEnddate,             // 투석종료일자
    mhHdendrsn,            // 종료사유
    mhTrandate,            // 이송일자
    mhTranhosp,            // 이송병원
    mhRemark,              // 특기사항
    mhNrpros,              // Process
    mhSchdtype,            // 2 주간 스케줄 타입
    mhOrdcd,               // 처방코드
    mhHeight,              // 신장
    mhWeight,              // 체중
    mhMedTime,             // 진료시간
    mhDrId,                // 지정의
    mhSubInSt,             // 지병구분
    mhAdmDate,             // 원무입원일
    mhEditdate  : String;  // 수정일자

const
    BLD_HDTYPE = 'A';
    PERI_HDTYPE = 'B';

implementation

uses TuxCom, TuxMsg;

////////////////////////////////////////////////////////////////////////////////
//  HmhPtinft	투석환자기본                                                  //
////////////////////////////////////////////////////////////////////////////////

function HmhPtinft.InputPat(sOrdcd,    iHeight, iWeight,  sPatNo,    sHdType,  sSeqNo,    sTel1,
                            sTel2,     sTel3,   sMarryYn, sMryOthr,  sJobCode, sRelation, sHdKind,
                            sKindOthr, sHdKnd,  sKndOthr, sRsndiss,  sRsnOthr, sAcuteYn,  sTrpYN,
                            sTrpDate,  sHb1,    sHb2,     sHb4,      sHb5,     sHb6,      sHpdsdate,
                            sSpcDr,    sBLDABO, sBLDRH,   sPipeHis,  sEndDate, sHdEndRsn, sTranDate,
                            sTranHosp, sRemark, sNrpros,  sSchdType, sInsu,    sEndetc,   sInsertdt,
                            sRemovedt, sEditId, sEditIp:string):Integer;
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_CODE1;S_CODE2;S_CODE3;S_PATNO;S_STRING1;S_STRING2;S_STRING3;'+
              'S_STRING4;S_STRING5;S_STRING6;S_STRING7;S_STRING8;S_STRING9;S_STRING10;'+
              'S_STRING11;S_STRING12;S_STRING13;S_STRING14;S_STRING15;S_STRING16;S_STRING17;'+
              'S_STRING18;S_STRING19;S_STRING20;S_STRING21;S_STRING22;S_STRING23;S_STRING24;'+
              'S_STRING25;S_STRING27;S_STRING28;S_STRING29;S_STRING30;S_STRING31;S_STRING32;'+
              'S_STRING33;S_STRING34;S_STRING35;S_STRING38;S_STRING39;S_STRING40;S_STRING41;'+
              'S_STRING42;S_EDITID;S_EDITIP');
   SetFldValue(0,[sOrdcd,    iHeight, iWeight,  sPatNo,    sHdType,  sSeqNo,    sTel1,
                  sTel2,     sTel3,   sMarryYn, sMryOthr,  sJobCode, sRelation, sHdKind,
                  sKindOthr, sHdKnd,  sKndOthr, sRsndiss,  sRsnOthr, sAcuteYn,  sTrpYN,
                  sTrpDate,  sHb1,    sHb2,     sHb4,      sHb5,     sHb6,      sHpdsdate,
                  sSpcDr,    sBLDABO, sBLDRH,   sPipeHis,  sEndDate, sHdEndRsn, sTranDate,
                  sTranHosp, sRemark, sNrpros,  sSchdType, sInsu,    sEndetc,   sInsertdt,
                  sRemovedt, sEditId, sEditIp] );
   if (txPutF('MH_PTINF_I1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;

end;

function HmhPtinft.ListEndPat(FromDate,ToDate,HdType,EndRsn:string):Integer;
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
   SetFldValue(0,[FromDate,ToDate,HdType,EndRsn] );

   if (txGetF('MH_PTINF_L1')) then begin //Tuxedo Service Call
      GetFldVar('S_PATNO'   , sPatNo   );
      GetFldVar('S_PATNAME' , sPatName );
      GetFldVar('S_CODE1'   , sSex     );
      GetFldVar('S_CODE2'   , sBirtDate);
      GetFldVar('S_CODE3'   , sHdKind  );
      GetFldVar('S_CODE4'   , sHdKnd   );
      GetFldVar('S_CODE5'   , sRsndiss );
      GetFldVar('S_CODE6'   , sHpdsdate);
      GetFldVar('S_CODE7'   , sEndDate );
      GetFldVar('S_CODE8'   , sHdEndRsn);
      GetFldVar('S_CODE9'   , sTranHosp);
      GetFldVar('S_CODE10'  , sEndetc);

      Result := GetRecordCnt('S_PATNO');
      txFree;
   end;

end;

function HmhPtinft.ListPeriPat(sFromDate, sToDate : String):Integer;
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2');
   SetFldValue(0,[sFromDate,sToDate] );
   if (txGetF('MH_PTINF_L2')) then begin //Tuxedo Service Call
      GetFldVar('S_PATNO',   sPatno);
      GetFldVar('S_PATNAME', sPatName);
      GetFldVar('S_STRING1', sSex);
      GetFldVar('S_STRING2', sBirtDate);
      GetFldVar('S_STRING3', sResNo1);
      GetFldVar('S_STRING4', sTelno1);
      GetFldVar('S_STRING5', sHpdsdate);
      GetFldVar('S_STRING6', sSpcDr);
      GetFldVar('S_STRING7', sHdKind);
      GetFldVar('S_STRING8', sRsnDiss);
      GetFldVar('S_STRING9', sAddress);

      Result := GetRecordCnt('S_PATNO');
      txFree;
   end;
end;

function HmhPtinft.SelectPat(PatNO,HDType,SeqNo:String):Integer;
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO;S_TYPE1;S_TYPE2');
   SetFldValue(0,[PatNO,HDType,SeqNo] );
   if (txGetF('MH_PTINF_S1')) then
   begin //Tuxedo Service Call
      GetFldVar('S_CODE1',sOrdcd); //처방코드
      GetFldVar('S_CODE2',iHeight); //신장
      GetFldVar('S_CODE3',iWeight); //체중

      GetFldVar('S_PATNAME'   ,sPatName ); //String Variants
      GetFldVar('S_STRING1'   ,sResNo1  );
      GetFldVar('S_STRING2'   ,sResNo2  );
      GetFldVar('S_STRING3'   ,sSex     );
      GetFldVar('S_STRING4'   ,sBirtDate);
      GetFldVar('S_STRING5'   ,sTelNo1  );
      GetFldVar('S_STRING6'   ,sTelNo2  );
      GetFldVar('S_STRING7'   ,sTelNo3  );
      GetFldVar('S_STRING8'   ,sAddress );
      GetFldVar('S_STRING9'   ,sTel1    );
      GetFldVar('S_STRING10'  ,sTel2    );
      GetFldVar('S_STRING11'  ,sTel3    );
      GetFldVar('S_STRING12'  ,sMarryYn );
      GetFldVar('S_STRING13'  ,sMryOthr );
      GetFldVar('S_STRING14'  ,sJobCode );
      GetFldVar('S_STRING15'  ,sRelation);
      GetFldVar('S_STRING16'  ,sHdKind  );
      GetFldVar('S_STRING17'  ,sKindOthr);
      GetFldVar('S_STRING18'  ,sHdKnd  );
      GetFldVar('S_STRING19'  ,sKndOthr);
      GetFldVar('S_STRING20'  ,sRsndiss );
      GetFldVar('S_STRING21'  ,sRsnOthr );
      GetFldVar('S_STRING22'  ,sAcuteYn );
      GetFldVar('S_STRING23'  ,sTrpYN   );
      GetFldVar('S_STRING24'  ,sTrpDate );
      GetFldVar('S_STRING25'  ,sHb1     );
      GetFldVar('S_STRING26'  ,sHb2     );
      GetFldVar('S_STRING27'  ,sHb4     );
      GetFldVar('S_STRING28'  ,sHb5     );
      GetFldVar('S_STRING29'  ,sHb6     );
      GetFldVar('S_STRING30'  ,sHpdsdate);
      GetFldVar('S_STRING32'  ,sSpcDr   );
      GetFldVar('S_STRING33'  ,sSpcDrNm );
      GetFldVar('S_STRING34'  ,sBLDABO  );
      GetFldVar('S_STRING35'  ,sBLDRH   );
      GetFldVar('S_STRING36'  ,sPipeHis );
      GetFldVar('S_STRING37'  ,sEndDate );
      GetFldVar('S_STRING38'  ,sHdEndRsn);
      GetFldVar('S_STRING39'  ,sTranDate);
      GetFldVar('S_STRING40'  ,sTranHosp);
      GetFldVar('S_STRING41'  ,sRemark  );
      GetFldVar('S_STRING42'  ,sNrpros  );
      GetFldVar('S_STRING45'  ,sSchdType);
      GetFldVar('S_STRING46'  ,sInsu);
      GetFldVar('S_STRING47'  ,sEndetc);
      GetFldVar('S_STRING48'  ,sInsertdt);
      GetFldVar('S_STRING49'  ,sRemovedt);
      Result := GetRecordCnt('S_PATNAME');
      txFree;
   end;
end;

function HmhPtinft.SelectSeq(PatNO:String):Integer;
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO');
   SetFldValue(0,[PatNO] );
   if (txGetF('MH_PTINF_S2')) then
   begin //Tuxedo Service Call
      GetFldVar('S_CODE1',sSeqNo); //순번

      Result := GetRecordCnt('S_CODE1');
      txFree;
   end;
end;
function HmhPtinft.SelectSeq(PatNO,Hdtype:String):Integer;
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO');
   SetFldValue(0,[PatNO] );
   SetFldName('S_PATNO;S_TYPE1');
   SetFldValue(0,[PatNO,Hdtype] );
   if (txGetF('MH_PTINF_S2')) then
   begin //Tuxedo Service Call
      GetFldVar('S_CODE1',sSeqNo); //순번

      Result := GetRecordCnt('S_CODE1');
      txFree;
   end;
end;


function HmhPtinft.DeletePatinfo(sPatno,sHdtype,sSeqno : String) : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO;S_TYPE1;S_TYPE2');
   SetFldValue(0,[sPatNo,sHdType,sSeqNo] );
   if (txPutF('MH_PTINF_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

function HmhPtinft.SelectHPdInfo(sPatNO:String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO');
   SetFldValue(0,[sPatNO] );
   if (txGetF('MH_PTINF_S3')) then
   begin //Tuxedo Service Call
      GetFldVar('S_STRING1' ,sHdtype);
      GetFldVar('S_STRING2' ,sSeqno);
      GetFldVar('S_STRING3' ,sRsndiss);
      GetFldVar('S_STRING4' ,sHpdsdate);
      GetFldVar('S_STRING5' ,iWeight);
      GetFldVar('S_STRING6' ,sBLDABO);
      GetFldVar('S_STRING7' ,sBLDRH);
      GetFldVar('S_STRING8' ,sHb1);
      GetFldVar('S_STRING9' ,sHb2);
      GetFldVar('S_STRING10',sHb4);
      GetFldVar('S_STRING11',sHb5);
      GetFldVar('S_STRING12',sHb6);
      GetFldVar('S_STRING13',sNrpros);
      GetFldVar('S_STRING14',sHdkind);
      GetFldVar('S_STRING15',sHdknd);
      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

function HmhPtinft.SelectCompany(sFromdate,sCompany : String) : Integer;
begin

   Result := -1;
   txAlloc32; //Pointer를 받아옴.
   SetFldName32('S_TYPE1;S_TYPE2');
   SetFldValue32(0,[sFromdate,sCompany] );
   if (txGetF32('MH_PTINF_L3')) then
   begin //Tuxedo Service Call
      GetFldVar32('S_STRING1', sHdknd   );
      GetFldVar32('S_STRING2', sPatname );
      GetFldVar32('S_STRING3', sPatno   );
      GetFldVar32('S_STRING4', sBirtdate);
      GetFldVar32('S_STRING5', sSex     );
      GetFldVar32('S_STRING6', sResno1  );
      GetFldVar32('S_STRING7', sHpdsdate);
      GetFldVar32('S_STRING8', sAddress );
      GetFldVar32('S_STRING9', sTel1    );
      Result := GetRecordCnt32('S_STRING3');
      txFree32;
   end;
end;

function HmhPtinft.SelectCount(Patno,Hdtype: String) : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO;S_TYPE1');
   SetFldValue(0,[Patno,Hdtype] );
   if (txGetF('MH_PTINF_S4')) then
   begin //Tuxedo Service Call
      GetFldVar('S_STRING1', sCount);
      GetFldVar('S_STRING2', sSeqno);
      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

// 혈액투석환자 Hemoglobin 결과값 조회  2005.04.01
function HmhPtinft.ListHpHemoglobin(SrchDate : String) : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1');
   SetFldValue(0,[SrchDate] );
   if (txGetF('MH_PTINF_L4')) then
   begin //Tuxedo Service Call
      GetFldVar('S_PATNO'  , sPatNo);
      GetFldVar('S_PATNAME', sPatName);
      GetFldVar('S_STRING1', sExamdt);
      GetFldVar('S_STRING2', sExamcode);
      GetFldVar('S_STRING3', sRslt1);

      Result := GetRecordCnt('S_PATNO');
      txFree;
   end;
end;


////////////////////////////////////////////////////////////////////////////////
//  HmhHpactt	투석실시 및 결과내역                                           //
////////////////////////////////////////////////////////////////////////////////

function HmhHpactt.InputSchedule(Cnt:Integer):Integer;
var
   i : integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO;S_STRING1;S_STRING2;S_STRING3;'+
              'S_STRING4;S_STRING5;S_STRING6;S_STRING7;'+
              'S_STRING8;S_STRING9;S_STRING10;S_STRING11;'+
              'S_STRING12;S_STRING13;S_STRING14;S_STRING15;'+
              'S_STRING16;S_STRING17;S_STRING18;S_STRING19;'+
              'S_STRING20;S_STRING21;S_STRING22;S_STRING23;'+
              'S_STRING24;S_STRING25;S_STRING26;S_STRING27;'+
              'S_STRING28;S_STRING29;S_STRING30;S_STRING31;'+
              'S_STRING32;S_STRING33;S_STRING34;S_STRING35;'+
              'S_EDITID;S_EDITIP');
   for i := 0 to Cnt -1 do
   begin
      SetFldValue(i,[String(sPatNo[i]),String(sHdtype[i]),String(sSeqNo[i]),String(sExecdate[i]),
                     String(sHdShift[i]),String(sHdCnt[i]),String(sActyn[i]),String(sMedDept[i]),
                     String(sWardno[i]),String(sHdkind[i]),String(sPdeduyn[i]),String(sPdexcyn[i]),
                     String(sPdactyn[i]),String(sPdinfyn[i]),String(sPdpipeyn[i]),String(sPdchngyn[i]),
                     String(sPdbrkyn[i]),String(sPdpet[i]),String(sPdktvyn[i]),String(sNurprog[i]),
                     String(sRcpstat[i]),String(sPatsect[i]),String(sDataChk[i]),String(sBfrPat[i]),
                     String(sOrdcd[i]),String(sSpcdr[i]),String(sApChk[i]),String(sOldpttp[i]),
                     String(sAdmDate[i]),String(sOrdDept[i]),String(sPatdept[i]),String(sHdknd[i]),
                     String(sMedtime[i]),String(sERyn[i]),String(sNightyn[i]),String(sExecseq[i]),
                     String(sEditId[i]),String(sEditIp[i])]);
   end;
   if (txPutF('MH_HPACT_I1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

function HmhHpactt.ListSchedule(sSrchDate:String):Integer;
begin
   Result := -1;
   txAlloc32; //Pointer를 받아옴.
   SetFldName32('S_TYPE1');
   SetFldValue32(0,[sSrchDate] );
   if (txGetF32('MH_HPACT_L1')) then begin //Tuxedo Service Call
      GetFldVar32('S_PATNO'  ,sPatNo);
      GetFldVar32('S_PATNAME',sPatName);
      GetFldVar32('S_STRING1',sSeqNo);
      GetFldVar32('S_STRING2',sExecDate);
      GetFldVar32('S_STRING3',sInfCls);
      GetFldVar32('S_STRING4',sSchdType);
      GetFldVar32('S_STRING5',sHdshift);
      GetFldVar32('S_STRING6',sHdCnt);
      GetFldVar32('S_STRING7',sHdkind);
      GetFldVar32('S_STRING8',sKindnm);
      GetFldVar32('S_STRING9',sRcpstat);
      GetFldVar32('S_STRING10',sPatSect);
      GetFldVar32('S_STRING11',sOrdcd);
      GetFldVar32('S_STRING12',sEndDate);
      GetFldVar32('S_STRING13',sSpcdr);
      GetFldvar32('S_STRING14',sActyn);
      GetFldvar32('S_STRING15',sDrnm);
      GetFldvar32('S_STRING16',sHopedate);
      GetFldvar32('S_STRING17',sExecseq);
      GetFldvar32('S_STRING18',sChkcnt);
      GetFldvar32('S_STRING19',sChadr);
      GetFldvar32('S_STRING20',sChadrnm);

      Result := GetRecordCnt32('S_PATNO');
      txFree32;
   end;
end;

function HmhHpactt.ListWorkSheet(sSrchDate,sHdType,sHdShift,sEddate : String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
   SetFldValue(0,[sSrchDate,sHdType,sHdShift,sEddate] );
   if (txGetF('MH_HPACT_L2')) then begin //Tuxedo Service Call
      GetFldVar('S_PATNO',sPatNo);
      GetFldVar('S_PATNAME',sPatName);
      GetFldVar('S_TYPE1',sSeqNo);
      GetFldVar('S_TYPE2',sPatSect);
      GetFldVar('S_STRING1',sMedDept);
      GetFldVar('S_STRING2',sWardNo);
      GetFldVar('S_STRING3',sHdKind);
      GetFldVar('S_STRING4',sHdmedYn);
      GetFldVar('S_STRING5',sHdKnd);
      GetFldVar('S_STRING6',sRemark);
      GetFldVar('S_STRING7',sInsType);
      GetFldVar('S_STRING8',sActYn);
      GetFldVar('S_STRING9',sRcpStat);
      GetFldVar('S_STRING10',sPdeduyn);
      GetFldVar('S_STRING11',sPdexcyn);
      GetFldVar('S_STRING12',sPdactyn);
      GetFldVar('S_STRING13',sPdinfyn);
      GetFldVar('S_STRING14',sPdpipeyn);
      GetFldVar('S_STRING15',sPdchngyn);
      GetFldVar('S_STRING25',sPdbrkyn);
      GetFldVar('S_STRING16',sPdpet);
      GetFldVar('S_STRING17',sPdktvyn);
      GetFldVar('S_STRING18',sNurprog);
      GetFldVar('S_STRING19',sSpcDr);
      GetFldVar('S_STRING20',sSpcDrNm);
      GetFldVar('S_STRING21',sInfCls);
      GetFldVar('S_STRING22',sSex);
      GetFldVar('S_STRING23',sBirtdate);
      GetFldVar('S_STRING24',sPatdept);
      GetFldVar('S_STRING26',sInsu);
      GetFldVar('S_STRING27',sERyn);
      GetFldVar('S_STRING28',sNightyn);
      GetFldVar('S_STRING29',sHdkind1);
      GetFldVar('S_STRING30',sHdknd1);
      GetFldVar('S_STRING31',sHdmedyn1);
      GetFldVar('S_STRING32',sExecseq);
      GetFldVar('S_STRING33',sOrdseqno);
      GetFldVar('S_STRING34',sDate);
      GetFldVar('S_STRING35',sMeddate);
      Result := GetRecordCnt('S_PATNO');
      txFree;
   end;
end;

function HmhHpactt.ListFstPat(sFromDate, sToDate : String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2');
   SetFldValue(0,[sFromDate,sToDate] );
   if (txGetF('MH_HPACT_L3')) then begin //Tuxedo Service Call
      GetFldVar('S_STRING1',sExecdate);
      GetFldVar('S_PATNO',sPatNo);
      GetFldVar('S_PATNAME',sPatName);
      GetFldVar('S_STRING2',sSex);
      GetFldVar('S_STRING3',sAge);
      GetFldVar('S_STRING4',sWardno);
      GetFldVar('S_STRING5',sInstype);
      GetFldVar('S_STRING6',sCitizen);
      GetFldVar('S_STRING7',sInf);
      GetFldVar('S_STRING8',sRsn);
      GetFldVar('S_STRING9',sSpcDr);
      GetFldVar('S_STRING10',sTelNo);
      GetFldVar('S_STRING11',sSpcDrnm);
      GetFldVar('S_STRING12',sHdkind);

      Result := GetRecordCnt('S_PATNO');
      txFree;
   end;
end;

function HmhHpactt.ListExecPERI(sPatNo : String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO');
   SetFldValue(0,[sPatNo] );
   if (txGetF('MH_HPACT_L4')) then begin //Tuxedo Service Call

      GetFldVar('S_STRING1', sExecDate);
      GetFldVar('S_STRING2', sWardNo);
		GetFldVar('S_STRING3', sPdeduyn);
		GetFldVar('S_STRING4', sPdexcyn);
		GetFldVar('S_STRING5', sPdactyn);
		GetFldVar('S_STRING6', sPdinfyn);
		GetFldVar('S_STRING7', sPdpipeyn);
		GetFldVar('S_STRING8', sPdchngyn);
      GetFldVar('S_STRING9' , sPdbrkyn);
		GetFldVar('S_STRING10', sPdpet);
		GetFldVar('S_STRING11',sPdktvyn);
		GetFldVar('S_STRING12',sNurprog);
      GetFldVar('S_STRING13',sRcpStat);

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

function HmhHpactt.ListPatSchedule(sFromdate, sTodate : String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2');
   SetFldValue(0,[sFromdate,sTodate]);
   if (txGetF('MH_HPACT_L5')) then begin //Tuxedo Service Call

      GetFldVar('S_PATNO', sPatNo);
      GetFldVar('S_PATNAME', sPatName);
		GetFldVar('S_STRING1', sPatSect);
      GetFldVar('S_STRING2', sERyn);

      Result := GetRecordCnt('S_PATNO');
      txFree;
   end;
end;

function HmhHpactt.ListPatSchedule2(sPTNO, sSect, sFromdate, sTodate : String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO;S_TYPE1;S_TYPE2;S_TYPE3');
   SetFldValue(0,[sPTNO,sFromdate,sTodate,sSect]);
   if (txGetF('MH_HPACT_L6')) then begin //Tuxedo Service Call

      GetFldVar('S_PATNO'  , sPatNo);
      GetFldVar('S_PATNAME', sPatName);
		GetFldVar('S_STRING1', sExecdate);
		GetFldVar('S_STRING2', sPatSect);
		GetFldVar('S_STRING3', sWardNo);
		GetFldVar('S_STRING4', sHdKind);
		GetFldVar('S_STRING5', sActYn);
      GetFldVar('S_STRING6', sPatdept);
      GetFldVar('S_STRING7', sHdshift);
      Result := GetRecordCnt('S_PATNO');
      txFree;
   end;
end;

function HmhHpactt.SelectPat(PatNo, FindDate, HDType :String):Integer;
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO;S_TYPE1;S_TYPE2');
   SetFldValue(0,[PatNo,FindDate,HDType] );
   if (txGetF('MH_HPACT_S1')) then begin //Tuxedo Service Call
      GetFldVar('S_IDNUM1',sOrdseqno);
      GetFldVar('S_PATNO',sPatNo);
      GetFldVar('S_CODE1',sHdType);
      GetFldVar('S_CODE2',sExecdate);
      GetFldVar('S_CODE3',sActyn);
      GetFldVar('S_CODE4',sPatsect);
      GetFldVar('S_CODE5',sMeddept);
      GetFldVar('S_CODE6',sWardno);
      GetFldVar('S_CODE7',sOrdcd);
      GetFldVar('S_CODE8',sHdkind);
      GetFldVar('S_CODE9',sHdknd);
      GetFldVar('S_CODE10',sHdshift);
      GetFldVar('S_CODE11',sHdmedyn);
      GetFldVar('S_CODE12',sPdeduyn);
      GetFldVar('S_CODE13',sPdexcyn);
      GetFldVar('S_CODE14',sPdactyn);
      GetFldVar('S_CODE15',sPdinfyn);
      GetFldVar('S_CODE16',sPdpipeyn);
      GetFldVar('S_CODE17',sPdchngyn);
      GetFldVar('S_CODE18',sPdbrkyn);
      GetFldVar('S_CODE19',sPdpet);
      GetFldVar('S_CODE20',sPdktvyn);
      GetFldVar('S_CODE21',sNurprog);
      GetFldVar('S_CODE22',sRemark);
      GetFldVar('S_CODE23',sInstype);
      GetFldVar('S_CODE24',sRcpstat);
      GetFldVar('S_CODE25',sPdact1);
      GetFldVar('S_CODE26',sPdact3);
      GetFldVar('S_CODE27',sPdact2);
      GetFldVar('S_NAME1',sPdinf1);
      GetFldVar('S_NAME2',sPdinf2);
      GetFldVar('S_NAME3',sPdinf3);
      GetFldVar('S_NAME4',sPdpet1);
      GetFldVar('S_NAME5',sPdpet2);
      GetFldVar('S_NAME6',sPdpet3);
      GetFldVar('S_NAME7',sPdpet4);
      GetFldVar('S_NAME8',sPdpet5);
      GetFldVar('S_NAME9',sPdpet6);
      GetFldVar('S_NAME10',sPdpet7);
      GetFldVar('S_NAME11',sPdpet8);
      GetFldVar('S_NAME12',sPdpet9);
      GetFldVar('S_NAME13',sPdpet10);
      GetFldVar('S_NAME14',sPdpet11);
      GetFldVar('S_NAME15',sPdpet12);
      GetFldVar('S_NAME16',sPdpet13);
      GetFldVar('S_NAME17',sPdpet14);
      GetFldVar('S_NAME18',sPdpet15);
      GetFldVar('S_NAME19',sPdpet16);
      GetFldVar('S_NAME20',sPdpet17);
      GetFldVar('S_NAME21',sPdpet18);
      GetFldVar('S_NAME22',sPdpet19);
      GetFldVar('S_NAME23',sPdpet20);
      GetFldVar('S_NAME24',sPdpet21);
      GetFldVar('S_NAME25',sPdpet22);
      GetFldVar('S_NAME26',sPdpet23);
      GetFldVar('S_NAME27',sPdpet24);
      GetFldVar('S_NAME28',sPdpet25);
      GetFldVar('S_NAME29',sPdpet26);
      GetFldVar('S_NAME30',sPdktv1);
      GetFldVar('S_STRING1',sPdktv2);
      GetFldVar('S_STRING2',sPdktv3);
      GetFldVar('S_STRING3',sPdktv4);
      GetFldVar('S_STRING4',sPdktv5);
      GetFldVar('S_STRING5',sPdktv6);
      GetFldVar('S_STRING6',sPdktv7);
      GetFldVar('S_STRING7',sPdktv8);
      GetFldVar('S_STRING8',sPdktv9);
      GetFldVar('S_STRING9',sPdktv10);
      GetFldVar('S_STRING10',sPdktv11);
      GetFldVar('S_STRING11',sPdktv12);
      GetFldVar('S_STRING12',sPdktv13);
      GetFldVar('S_STRING13',sPdktv14);
      GetFldVar('S_STRING14',sPdktv15);
      GetFldVar('S_STRING15',sPdktv16);
      GetFldVar('S_STRING16',sPdktv17);
      GetFldVar('S_STRING17',sPdktv18);
      GetFldVar('S_STRING18',sPdktv19);
      GetFldVar('S_STRING19',sPdktv20);
      GetFldVar('S_STRING20',sPdktv21);
      GetFldVar('S_STRING21',sPdktv22);
      GetFldVar('S_STRING22',sPdktv23);
      GetFldVar('S_STRING23',sPdktv24);
      GetFldVar('S_STRING24',sPdktv25);
      GetFldVar('S_STRING25',sPdktv26);
      GetFldVar('S_STRING26',sPdktv27);
      GetFldVar('S_STRING27',sPdktv28);
      GetFldVar('S_STRING28',sPdktv29);
      GetFldVar('S_STRING29',sPdktv30);
      GetFldVar('S_STRING30',sPdktv31);
      GetFldVar('S_STRING31',sPdktv32);
      GetFldVar('S_STRING32',sPdktv33);
      GetFldVar('S_STRING33',sPdktv34);
      GetFldVar('S_STRING34',sPdktv35);
      GetFldVar('S_STRING35',sPdktv36);
      GetFldVar('S_STRING36',sPdktv37);
      GetFldVar('S_STRING37',sPdktv38);
      GetFldVar('S_STRING38',sPdktv39);
      GetFldVar('S_STRING39',sPdktv40);
      GetFldVar('S_STRING40',sPdktv41);
      GetFldVar('S_STRING41',sPdktv42);
      GetFldVar('S_STRING42',sOrddate);
      GetFldVar('S_STRING43',sMeddate);
      GetFldVar('S_STRING44',sSpcdr);
      GetFldVar('S_STRING45',sPatdept);
      GetFldVar('S_STRING46',sERyn);
      Result := 1;
      txFree;
   end;

end;


function HmhHpactt.UpdateInfo(Ordseqno,Patno,Hdtype,SeqNo,Execdate,Actyn,Patsect,Meddept,
                  Wardno,Ordcd,Hdkind,Hdknd,Hdmedyn,Pdeduyn,
                  Pdexcyn,Pdactyn,Pdinfyn,Pdpipeyn,Pdchngyn,Pdbrkyn,
                  Pdpet,Pdktvyn,Nurprog,Remark,
                  Pdact1,Pdact3,Pdact2,Pdinf1,Pdinf2,
                  Pdinf3,Pdpet1,Pdpet2,Pdpet3,Pdpet4,Pdpet5,Pdpet6,
                  Pdpet7,Pdpet8,Pdpet9,Pdpet10,Pdpet11,Pdpet12,Pdpet13,
                  Pdpet14,Pdpet15,Pdpet16,Pdpet17,Pdpet18,Pdpet19,Pdpet20,
                  Pdpet21,Pdpet22,Pdpet23,Pdpet24,Pdpet25,Pdpet26,Pdktv1,
                  Pdktv2,Pdktv3,Pdktv4,Pdktv5,Pdktv6,Pdktv7,Pdktv8,Pdktv9,
                  Pdktv10,Pdktv11,Pdktv12,Pdktv13,Pdktv14,Pdktv15,Pdktv16,
                  Pdktv17,Pdktv18,Pdktv19,Pdktv20,Pdktv21,Pdktv22,Pdktv23,
                  Pdktv24,Pdktv25,Pdktv26,Pdktv27,Pdktv28,Pdktv29,Pdktv30,
                  Pdktv31,Pdktv32,Pdktv33,Pdktv34,Pdktv35,Pdktv36,Pdktv37,
                  Pdktv38,Pdktv39,Pdktv40,Pdktv41,Pdktv42,sSpcDr,Orddate,
                  Meddate,Patdept,ERyn,Nightyn,Execseq,Medtime,
                  Editid,Editip : String):Integer;
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_PATNO;S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7;'+
              'S_CODE8;S_CODE9;S_CODE10;S_CODE11;S_CODE12;S_CODE13;S_CODE14;S_CODE15;'+
              'S_CODE16;S_CODE17;S_CODE23;S_CODE18;S_CODE19;S_CODE20;S_CODE21;S_CODE22;S_NAME1;S_NAME2;S_NAME3;S_NAME4;'+
              'S_NAME5;S_NAME6;S_NAME7;S_NAME8;S_NAME9;S_NAME10;S_NAME11;S_NAME12;S_NAME13;'+
              'S_NAME14;S_NAME15;S_NAME16;S_NAME17;S_NAME18;S_NAME19;S_NAME20;S_NAME21;S_NAME22;S_NAME23;'+
              'S_NAME24;S_NAME25;S_NAME26;S_NAME27;S_NAME28;S_NAME29;S_NAME30;S_STRING1;'+
              'S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6;S_STRING7;S_STRING8;S_STRING9;'+
              'S_STRING10;S_STRING11;S_STRING12;S_STRING13;S_STRING14;S_STRING15;S_STRING16;S_STRING17;'+
              'S_STRING18;S_STRING19;S_STRING20;S_STRING21;S_STRING22;S_STRING23;S_STRING24;S_STRING25;'+
              'S_STRING26;S_STRING27;S_STRING28;S_STRING29;S_STRING30;S_STRING31;S_STRING32;S_STRING33;'+
              'S_STRING34;S_STRING35;S_STRING36;S_STRING37;S_STRING38;S_STRING39;S_STRING40;S_STRING41;'+
              'S_STRING42;S_STRING43;S_STRING44;S_STRING45;S_STRING46;S_STRING47;S_STRING48;S_STRING49;'+
              'S_STRING50;S_STRING51;S_EDITID;S_EDITIP');
   SetFldValue(0,[Ordseqno,Patno,Hdtype,SeqNo,Execdate,Actyn,Patsect,Meddept,
                  Wardno,Ordcd,Hdkind,Hdknd,Hdmedyn,Pdeduyn,
                  Pdexcyn,Pdactyn,Pdinfyn,Pdpipeyn,Pdchngyn,Pdbrkyn,
                  Pdpet,Pdktvyn,Nurprog,Remark,
                  Pdact1,Pdact3,Pdact2,Pdinf1,Pdinf2,
                  Pdinf3,Pdpet1,Pdpet2,Pdpet3,Pdpet4,Pdpet5,Pdpet6,
                  Pdpet7,Pdpet8,Pdpet9,Pdpet10,Pdpet11,Pdpet12,Pdpet13,
                  Pdpet14,Pdpet15,Pdpet16,Pdpet17,Pdpet18,Pdpet19,Pdpet20,
                  Pdpet21,Pdpet22,Pdpet23,Pdpet24,Pdpet25,Pdpet26,Pdktv1,
                  Pdktv2,Pdktv3,Pdktv4,Pdktv5,Pdktv6,Pdktv7,Pdktv8,Pdktv9,
                  Pdktv10,Pdktv11,Pdktv12,Pdktv13,Pdktv14,Pdktv15,Pdktv16,
                  Pdktv17,Pdktv18,Pdktv19,Pdktv20,Pdktv21,Pdktv22,Pdktv23,
                  Pdktv24,Pdktv25,Pdktv26,Pdktv27,Pdktv28,Pdktv29,Pdktv30,
                  Pdktv31,Pdktv32,Pdktv33,Pdktv34,Pdktv35,Pdktv36,Pdktv37,
                  Pdktv38,Pdktv39,Pdktv40,Pdktv41,Pdktv42,sSpcDr,Orddate,
                  Meddate,Patdept,ERyn,Nightyn,Execseq,Medtime,
                  Editid,Editip] );
   if (txTPcall('MH_HPACT_U1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;

end;

function HmhHpactt.DeleteActInfo(PatNo, HdType, DelDate:String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO;S_TYPE1;S_TYPE2');
   SetFldValue(0,[PatNo,HdType,DelDate] );
   if (txPutF('MH_HPACT_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

function HmhHpactt.ListMoney(PatNo,Execdate : String) : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO;S_TYPE1');
   SetFldValue(0,[PatNo,Execdate]);
   if (txGetF('MH_TRTOR_S1')) then begin //Tuxedo Service Call
      GetFldVar('S_STRING1',sOrdcd);
      GetFldVar('S_STRING2',sRcpstat);
      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

function HmhHpactt.UpdateSchedule(sPatno,sExecdate,sHdtype,sSeqno,sPatsect,sMeddept,sWardno,sChadr,sMeddate,sExecseq : String) : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO;S_TYPE1;S_TYPE2;S_TYPE3;S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6');
   SetFldValue(0,[sPatNo,sExecdate,sHdtype,sSeqno,sPatsect,sMeddept,sWardno,sChadr,sMeddate,sExecseq] );
   if (txPutF('MH_HPACT_U2')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

function HmhHpactt.SelectHdinfo(sPatno,sExecdate,sSeqno : String) : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO;S_TYPE1;S_TYPE2');
   SetFldValue(0,[sPatNo,sExecdate,sSeqno] );
   if (txGetF('MH_HPACT_L7')) then begin //Tuxedo Service Call
      GetFldVar('S_STRING1',sExecdate1);
      GetFldVar('S_STRING2',sHopedate);
      GetFldVar('S_STRING3',sHdshift);
      Result := 1;
      txFree;
   end;
end;

function HmhHpactt.UpdateHdinfo(sPatno,sChgdate,sSeqno,sExecdate,sHdshift,sChadr,sEditid,sEditip,sHdcnt,sExecseq: String) : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO;S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9');
   SetFldValue(0,[sPatNo,sChgdate,sSeqno,sExecdate,sHdShift,sChadr,sEditid,sEditip,sHdcnt,sExecseq] );
   if (txPutF('MH_HPACT_U3')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

function HmhHpactt.UpdateAll(Cnt : Integer) : Integer;
var
   i : integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_PATNO;S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7;'+
              'S_CODE8;S_CODE9;S_CODE10;S_CODE11;S_CODE12;S_CODE13;S_CODE14;S_CODE15;'+
              'S_CODE16;S_CODE17;S_CODE23;S_CODE18;S_CODE19;S_CODE20;S_CODE21;S_CODE22;S_NAME1;S_NAME2;S_NAME3;S_NAME4;'+
              'S_NAME5;S_NAME6;S_NAME7;S_NAME8;S_NAME9;S_NAME10;S_NAME11;S_NAME12;S_NAME13;'+
              'S_NAME14;S_NAME15;S_NAME16;S_NAME17;S_NAME18;S_NAME19;S_NAME20;S_NAME21;S_NAME22;S_NAME23;'+
              'S_NAME24;S_NAME25;S_NAME26;S_NAME27;S_NAME28;S_NAME29;S_NAME30;S_STRING1;'+
              'S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6;S_STRING7;S_STRING8;S_STRING9;'+
              'S_STRING10;S_STRING11;S_STRING12;S_STRING13;S_STRING14;S_STRING15;S_STRING16;S_STRING17;'+
              'S_STRING18;S_STRING19;S_STRING20;S_STRING21;S_STRING22;S_STRING23;S_STRING24;S_STRING25;'+
              'S_STRING26;S_STRING27;S_STRING28;S_STRING29;S_STRING30;S_STRING31;S_STRING32;S_STRING33;'+
              'S_STRING34;S_STRING35;S_STRING36;S_STRING37;S_STRING38;S_STRING39;S_STRING40;S_STRING41;'+
              'S_STRING42;S_STRING43;S_STRING44;S_STRING45;S_STRING46;S_STRING47;S_STRING48;S_STRING49;S_EDITID;S_EDITIP');

   for i := 0 to Cnt -1 do
   begin
      SetFldValue(i,[String(sOrdseqno[i] ),
                     String(sPatno   [i]  ),
                     String(sHdtype  [i]  ),
                     String(sSeqNo   [i]  ),
                     String(sExecdate[i]  ),
                     String(sActyn   [i]  ),
                     String(sPatsect [i]  ),
                     String(sMeddept [i]  ),
                     String(sWardno  [i]  ),
                     String(sOrdcd   [i]  ),
                     String(sHdkind  [i]  ),
                     String(sHdknd   [i]  ),
                     String(sHdmedyn [i]  ),
                     String(sPdeduyn [i]  ),
                     String(sPdexcyn [i]  ),
                     String(sPdactyn [i]  ),
                     String(sPdinfyn [i]  ),
                     String(sPdpipeyn[i]  ),
                     String(sPdchngyn[i]  ),
                     String(sPdbrkyn [i]  ),
                     String(sPdpet   [i]  ),
                     String(sNurprog [i]  ),
                     String(sRemark  [i]  ),
                     String(sPdact1  [i] ),
                     String(sPdact3  [i]  ),
                     String(sPdact2  [i]  ),
                     String(sPdinf1  [i]  ),
                     String(sPdinf2  [i]  ),
                     String(sPdinf3  [i]  ),
                     String(sPdpet1  [i]  ),
                     String(sPdpet2  [i]  ),
                     String(sPdpet3  [i]  ),
                     String(sPdpet4  [i]  ),
                     String(sPdpet5  [i]  ),
                     String(sPdpet6  [i]  ),
                     String(sPdpet7  [i]  ),
                     String(sPdpet8  [i]  ),
                     String(sPdpet9  [i]  ),
                     String(sPdpet10 [i]  ),
                     String(sPdpet11 [i]   ),
                     String(sPdpet12 [i]   ),
                     String(sPdpet13 [i]   ),
                     String(sPdpet14 [i]   ),
                     String(sPdpet15 [i]   ),
                     String(sPdpet16 [i]   ),
                     String(sPdpet17 [i]   ),
                     String(sPdpet18 [i]   ),
                     String(sPdpet19 [i]   ),
                     String(sPdpet20 [i]   ),
                     String(sPdpet21 [i]   ),
                     String(sPdpet22 [i]   ),
                     String(sPdpet23 [i]    ),
                     String(sPdpet24 [i]   ),
                     String(sPdpet25 [i]   ),
                     String(sPdpet26 [i]   ),
                     String(sPdktv1  [i]   ),
                     String(sPdktv2  [i]  ),
                     String(sPdktv3  [i]  ),
                     String(sPdktv4  [i]  ),
                     String(sPdktv5  [i]  ),
                     String(sPdktv6  [i]  ),
                     String(sPdktv7  [i]  ),
                     String(sPdktv8  [i]  ),
                     String(sPdktv9  [i]  ),
                     String(sPdktv10 [i]  ),
                     String(sPdktv11 [i]  ),
                     String(sPdktv12 [i]  ),
                     String(sPdktv13 [i]  ),
                     String(sPdktv14 [i]  ),
                     String(sPdktv15 [i]  ),
                     String(sPdktv16 [i]  ),
                     String(sPdktv17 [i]  ),
                     String(sPdktv18 [i]  ),
                     String(sPdktv19 [i]   ),
                     String(sPdktv20 [i]  ),
                     String(sPdktv21 [i]  ),
                     String(sPdktv22 [i]  ),
                     String(sPdktv23 [i]  ),
                     String(sPdktv24 [i]  ),
                     String(sPdktv25 [i]  ),
                     String(sPdktv26 [i]  ),
                     String(sPdktv27 [i]  ),
                     String(sPdktv28 [i]  ),
                     String(sPdktv29 [i]  ),
                     String(sPdktv30 [i]  ),
                     String(sPdktv31 [i]  ),
                     String(sPdktv32 [i]  ),
                     String(sPdktv33 [i]  ),
                     String(sPdktv34 [i]  ),
                     String(sPdktv35 [i]  ),
                     String(sPdktv36 [i]  ),
                     String(sPdktv37 [i]  ),
                     String(sPdktv38 [i]  ),
                     String(sPdktv39 [i]  ),
                     String(sPdktv40 [i]  ),
                     String(sPdktv41 [i]  ),
                     String(sPdktv42 [i]  ),
                     String(sSpcdr   [i]  ),
                     String(sOrddate [i]  ),
                     String(sMeddate [i]  ),
                     String(sPatdept [i]  ),
                     String(sERyn    [i]  ),
                     String(sNightyn [i]  ),
                     String(sEditid  [i]  ),
                     String(sEditip  [i]  )]);
   end;
   if (txPutF('MH_HPACT_U4')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

function HmhHpactt.UpdateActInfo(PatNo, HdType, DelDate:String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO;S_TYPE1;S_TYPE2');
   SetFldValue(0,[PatNo,HdType,DelDate] );
   if (txPutF('MH_HPACT_U5')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

function HmhHpactt.UpdatePdstat(sPatno,sHdtype,sSeqno,sExecdate,sPdeduyn,sPdexcyn,sPdactyn,sPdinfyn,sPdpipeyn,sPdchngyn,sPdbrkyn,sPdpet,sPdktvyn,sEditid,sEditip : String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO;S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;S_TYPE9;S_TYPE10;S_TYPE11;S_TYPE12;S_EDITID;S_EDITIP');
   SetFldValue(0,[sPatno,sHdtype,sSeqno,sExecdate,sPdeduyn,sPdexcyn,sPdactyn,sPdinfyn,sPdpipeyn,sPdchngyn,sPdbrkyn,sPdpet,sPdktvyn,sEditid,sEditip]);
   if (txPutF('MH_HPACT_U6')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

function HmhHpactt.AddSchedule(sPatno,sHdtype,sSeqno,sExecdate,sHdshift,sSpcdr,sEditid,sEditip : String) : Integer;
begin
   Result := -1;
   txAlloc;
   SetFldName('S_PATNO;S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_EDITID;S_EDITIP');
   SetFldValue(0,[sPatno,sHdtype,sSeqno,sExecdate,sHdshift,sSpcdr,sEditid,sEditip]);
   if (txPutF('MH_HPACT_I2')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;


///////////////////////////////////////////////////////////////////////////////
//    인공신실 환자 통계                                                     //
///////////////////////////////////////////////////////////////////////////////

function  HmhHPactt.SearchYear(sStdate,sEddate,sCond:string) : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');
   SetFldValue(0,[sStdate,sEddate,sCond]);

   if (txGetF('MH_HPACT_S3')) then begin //Tuxedo Service Call
      GetFldVar('S_STRING1' ,sPatdept);
      GetFldVar('S_STRING2' ,sJAN);
      GetFldVar('S_STRING3' ,sFEB);
      GetFldVar('S_STRING4' ,sMAR);
      GetFldVar('S_STRING5' ,sAPR);
      GetFldVar('S_STRING6' ,sMAY);
      GetFldVar('S_STRING7' ,sJUN);
      GetFldVar('S_STRING8' ,sJUL);
      GetFldVar('S_STRING9' ,sAUG);
      GetFldVar('S_STRING10',sSEP);
      GetFldVar('S_STRING11',sOCT);
      GetFldVar('S_STRING12',sNOV);
      GetFldVar('S_STRING13',sDEC);
      GetFldVar('S_STRING14',sSUM);

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

function  HmhHPactt.SearchDate(sStMonth,sEdMonth:string) : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2');
   SetFldValue(0,[sStMonth,sEdMonth]);

   if (txGetF('MH_HPACT_S2')) then begin //Tuxedo Service Call
      GetFldVar('S_STRING1' ,sHD_OCS    );
      GetFldVar('S_STRING2' ,sPlasex_OCS);
      GetFldVar('S_STRING3' ,sHemo_OCS  );
      GetFldVar('S_STRING4' ,sCVVH_OCS  );
      GetFldVar('S_STRING5' ,sETC_OCS   );
      GetFldVar('S_STRING6' ,sHD_ICS    );
      GetFldVar('S_STRING7' ,sPlasex_ICS);
      GetFldVar('S_STRING8' ,sHemo_ICS  );
      GetFldVar('S_STRING9' ,sCVVH_ICS  );
      GetFldVar('S_STRING10',sETC_ICS   );
      GetFldVar('S_STRING11',sHD_CCS    );
      GetFldVar('S_STRING12',sPlasex_CCS);
      GetFldVar('S_STRING13',sHemo_CCS  );
      GetFldVar('S_STRING14',sCVVH_CCS  );
      GetFldVar('S_STRING15',sETC_CCS   );
      GetFldVar('S_STRING16',sHD_ACS    );
      GetFldVar('S_STRING17',sPlasex_ACS);
      GetFldVar('S_STRING18',sHemo_ACS  );
      GetFldVar('S_STRING19',sCVVH_ACS  );
      GetFldVar('S_STRING20',sETC_ACS   );
      GetFldVar('S_STRING21',sHDEDU_CS  );
      GetFldVar('S_STRING22',sPDEXC_CS  );
      GetFldVar('S_STRING23',sPDCHNG_CS );
      GetFldVar('S_STRING24',sPDACT_CS  );
      GetFldVar('S_STRING25',sPDINF_CS  );
      GetFldVar('S_STRING26',sPDPET_CS  );
      GetFldVar('S_STRING27',sPDKTV_CS  );
      GetFldVar('S_STRING28',sPDPIPE_CS );
      GetFldVar('S_STRING29',sPDEDU_CS  );
      GetFldVar('S_STRING30',sPDBRK_CS  );
      GetFldVar('S_STRING31',sHD_OMS    );
      GetFldVar('S_STRING32',sPlasex_OMS);
      GetFldVar('S_STRING33',sHemo_OMS  );
      GetFldVar('S_STRING34',sCVVH_OMS  );
      GetFldVar('S_STRING35',sETC_OMS   );
      GetFldVar('S_STRING36',sHD_IMS    );
      GetFldVar('S_STRING37',sPlasex_IMS);
      GetFldVar('S_STRING38',sHemo_IMS  );
      GetFldVar('S_STRING39',sCVVH_IMS  );
      GetFldVar('S_STRING40',sETC_IMS   );
      GetFldVar('S_STRING41',sHD_CMS    );
      GetFldVar('S_STRING42',sPlasex_CMS);
      GetFldVar('S_STRING43',sHemo_CMS  );
      GetFldVar('S_STRING44',sCVVH_CMS  );
      GetFldVar('S_STRING45',sETC_CMS   );
      GetFldVar('S_STRING46',sHD_AMS    );
      GetFldVar('S_STRING47',sPlasex_AMS);
      GetFldVar('S_STRING48',sHemo_AMS  );
      GetFldVar('S_STRING49',sCVVH_AMS  );
      GetFldVar('S_STRING50',sETC_AMS   );
      GetFldVar('S_CODE1'   ,sHD_I1S    );
      GetFldVar('S_CODE2'   ,sPlasex_I1S);
      GetFldVar('S_CODE3'   ,sHemo_I1S  );
      GetFldVar('S_CODE4'   ,sCVVH_I1S  );
      GetFldVar('S_CODE5'   ,sETC_I1S   );
      GetFldVar('S_CODE6'   ,sHD_I2S    );
      GetFldVar('S_CODE7'   ,sPlasex_I2S);
      GetFldVar('S_CODE8'   ,sHemo_I2S  );
      GetFldVar('S_CODE9'   ,sCVVH_I2S  );
      GetFldVar('S_CODE10'  ,sETC_I2S   );
      GetFldVar('S_CODE11'  ,sHD_I3S    );
      GetFldVar('S_CODE12'  ,sPlasex_I3S);
      GetFldVar('S_CODE13'  ,sHemo_I3S  );
      GetFldVar('S_CODE14'  ,sCVVH_I3S  );
      GetFldVar('S_CODE15'  ,sETC_I3S   );
      GetFldVar('S_CODE16'  ,sHD_I4S    );
      GetFldVar('S_CODE17'  ,sPlasex_I4S);
      GetFldVar('S_CODE18'  ,sHemo_I4S  );
      GetFldVar('S_CODE19'  ,sCVVH_I4S  );
      GetFldVar('S_CODE20'  ,sETC_I4S   );
      GetFldVar('S_CODE21'  ,sHD_I5S    );
      GetFldVar('S_CODE22'  ,sPlasex_I5S);
      GetFldVar('S_CODE23'  ,sHemo_I5S  );
      GetFldVar('S_CODE24'  ,sCVVH_I5S  );
      GetFldVar('S_CODE25'  ,sETC_I5S   );
      GetFldVar('S_CODE26'  ,sHDRsn1    );
      GetFldVar('S_CODE27'  ,sPlasexRsn1);
      GetFldVar('S_CODE28'  ,sHemoRsn1  );
      GetFldVar('S_CODE29'  ,sCVVHRsn1  );
      GetFldVar('S_CODE30'  ,sETCRsn1   );
      GetFldVar('S_TYPE3'   ,sHDRsn2    );
      GetFldVar('S_TYPE4'   ,sPlasexRsn2);
      GetFldVar('S_TYPE5'   ,sHemoRsn2  );
      GetFldVar('S_TYPE6'   ,sCVVHRsn2  );
      GetFldVar('S_TYPE7'   ,sETCRsn2   );
      GetFldVar('S_TYPE8'   ,sHDRsn3    );
      GetFldVar('S_TYPE9'   ,sPlasexRsn3);
      GetFldVar('S_TYPE10'   ,sHemoRsn3  );
      GetFldVar('S_TYPE11'   ,sCVVHRsn3  );
      GetFldVar('S_TYPE12'   ,sETCRsn3   );
      GetFldVar('S_TYPE13'  ,sHDRsn4    );
      GetFldVar('S_TYPE14'   ,sPlasexRsn4);
      GetFldVar('S_TYPE15'   ,sHemoRsn4  );
      GetFldVar('S_TYPE16'   ,sCVVHRsn4  );
      GetFldVar('S_TYPE17'   ,sETCRsn4   );
      GetFldVar('S_TYPE18' ,sHDRsn5    );
      GetFldVar('S_TYPE19' ,sPlasexRsn5);
      GetFldVar('S_TYPE20' ,sHemoRsn5  );
      GetFldVar('S_TYPE21' ,sCVVHRsn5  );
      GetFldVar('S_TYPE22' ,sETCRsn5   );
      GetFldVar('S_TYPE23' ,sHDRsn6    );
      GetFldVar('S_TYPE24' ,sPlasexRsn6);
      GetFldVar('S_TYPE25' ,sHemoRsn6  );
      GetFldVar('S_TYPE26' ,sCVVHRsn6  );
      GetFldVar('S_TYPE27',sETCRsn6   );
      GetFldVar('S_TYPE28',sAVF       );
      GetFldVar('S_TYPE29',sAVG       );
      GetFldVar('S_TYPE30',sPC        );
      GetFldVar('S_NAME1',sJC        );
      GetFldVar('S_NAME2',sFC        );
      GetFldVar('S_NAME3',sSC        );
      GetFldVar('S_NAME4',sETC1      );
      GetFldVar('S_NAME5',sPD_CMS    );
      GetFldVar('S_NAME6',sPDRsn1    );
      GetFldVar('S_NAME7',sPDRsn2    );
      GetFldVar('S_NAME8',sPDRsn3    );
      GetFldVar('S_NAME9',sPDRsn4    );
      GetFldVar('S_NAME10',sPDRsn5);
      GetFldVar('S_NAME11',sPDRsn6);
      GetFldVar('S_NAME12',sPDKnd1);
      GetFldVar('S_NAME13',sPDKnd2);
      GetFldVar('S_NAME14',sPDKnd3);
      GetFldVar('S_NAME15',sPDKnd4);
      GetFldVar('S_NAME16',sPDKnd5);
      GetFldVar('S_NAME17',sPDPIPE_MS );
      GetFldVar('S_NAME18',sHD_FMS);
      GetFldVar('S_NAME19',sPlasex_FMS );
      GetFldVar('S_NAME20',sHemo_FMS);
      GetFldVar('S_NAME21',sCVVH_FMS);
      GetFldVar('S_NAME22',sETC_FMS);
      GetFldVar('S_NAME23',sPDInsu1);
      GetFldVar('S_NAME24',sPDInsu2);
      GetFldVar('S_NAME25',sPDInsu3);
      GetFldVar('S_NAME26',sPDInsu4);
      GetFldVar('S_NAME27',sPDInsu5);
      GetFldVar('S_NAME28' ,sHD_EMS     );
      GetFldVar('S_NAME29' ,sPlasex_EMS );
      GetFldVar('S_NAME30' ,sHemo_EMS   );
      GetFldVar('S_NUMVAL1',sCVVH_EMS   );
      GetFldVar('S_NUMVAL2',sETC_EMS    );
      GetFldVar('S_NUMVAL3',sHD_ECS     );
      GetFldVar('S_NUMVAL4',sPlasex_ECS );
      GetFldVar('S_NUMVAL5',sHemo_ECS   );
      GetFldVar('S_NUMVAL6',sCVVH_ECS   );
      GetFldVar('S_NUMVAL7',sETC_ECS    );
      GetFldVar('S_NUMVAL8',sPD_EMS     );
      GetFldVar('S_NUMVAL9',sPD_ECS     );
      GetFldVar('S_STRING51' ,sHD_UCS    );
      GetFldVar('S_STRING52' ,sPlasex_UCS);
      GetFldVar('S_STRING53' ,sHemo_UCS  );
      GetFldVar('S_STRING54' ,sCVVH_UCS  );
      GetFldVar('S_STRING55',sETC_UCS   );
      GetFldVar('S_STRING56',sHD_UMS    );
      GetFldVar('S_STRING57',sPlasex_UMS);
      GetFldVar('S_STRING58',sHemo_UMS  );
      GetFldVar('S_STRING59',sCVVH_UMS  );
      GetFldVar('S_STRING60',sETC_UMS   );
      Result := 1;
      txFree;
   end;

end;

//(2003.05.06 이용언) Client Tunning
function HmhHpactt.ListSchedule2(sSrchDate:String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1');
   SetFldValue(0,[sSrchDate] );
   if (txGetF('MH_HPACT_L8')) then begin //Tuxedo Service Call

      Result := GetRecordCnt('S_PATNO');

      sGetFldVar('S_PATNO'  ,sPatNo);

      sGetFldVar('S_PATNAME',sPatName);
      sGetFldVar('S_STRING1',sSeqNo);
      sGetFldVar('S_STRING2',sExecDate);
      sGetFldVar('S_STRING3',sInfCls);
      sGetFldVar('S_STRING4',sSchdType);
      sGetFldVar('S_STRING5',sHdshift);
      sGetFldVar('S_STRING6',sHdCnt);
      sGetFldVar('S_STRING7',sHdkind);
      sGetFldVar('S_STRING8',sKindnm);
      sGetFldVar('S_STRING9',sRcpstat);
      sGetFldVar('S_STRING10',sPatSect);
      sGetFldVar('S_STRING11',sOrdcd);
      sGetFldVar('S_STRING12',sEndDate);
      sGetFldVar('S_STRING13',sSpcdr);
      sGetFldvar('S_STRING14',sActyn);
      sGetFldvar('S_STRING15',sDrnm);
      sGetFldvar('S_STRING16',sHopedate);
      sGetFldvar('S_STRING17',sExecseq);
      sGetFldvar('S_STRING18',sChkcnt);
      sGetFldvar('S_STRING19',sChadr);
      sGetFldvar('S_STRING20',sChadrnm);

      txFree;
   end;
end;
////////////////////////////////////////////////////////////////////////////////
//  HmhTranst	전원일지                                                      //
////////////////////////////////////////////////////////////////////////////////

function HmhTranst.InputTrans(Patno,    Rsndiss,  Testdte,  Hdtype,   Insu,    Insubo1,  Insubo2, Transrsn, Hdstart, Hdend,
	                           Hdtool,   Hdmachin, Hdfloid,	Hpdcnt,   Hpdtime, Bldspeed, Avfyn,   Avftext,  Avgyn,   Avgtext,
                              Permyn,   Permtext, Jvcyn,    Jvctext,  Svcyn,   Svctext,  Fvcyn,   Fvctext,  Fstqty,  Mainqty,
	                           Preshgh1, Preshgh2, Preslow1,	Preslow2, Weight,  Incwght,  Hbsag,   Antihcv,  Antihiv, Vdrl,
                              Bloodab,  Bloodrh,  Bloodyn,  Rbc,      Wbc,     Hb,       Hct,     Platel,   Na,      K,
                              Cl,       Co2,      Ca,       P,        Ast,     Alt,      Alp,     Pth,      Colest,  Uric,
                              Buncr,    Fetibc,   Ferritn,  Protein,  Fbs,     Pp2hr,    Hba1,    Otrtest,  Drug,    Commnt,
                              MakeDrnm, MakeDrID, Crtdte,   Hosptel,  Examrsl, Editid,   Editip    :string):Integer;
begin

   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO;S_NAME1;S_NAME2;S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;' +
              'S_TYPE8;S_TYPE9;S_TYPE10;S_CODE1;S_CODE2;S_CODE3;S_CODE4;S_CODE5;S_CODE6;S_CODE7;' +
              'S_CODE8;S_CODE9;S_CODE10;S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6;S_STRING7;' +
              'S_STRING8;S_STRING9;S_STRING10;S_STRING11;S_STRING12;S_STRING13;S_STRING14;S_STRING15;S_STRING16;S_STRING17;' +
              'S_STRING18;S_STRING19;S_STRING20;S_STRING21;S_STRING22;S_STRING23;S_STRING24;S_STRING25;S_STRING26;S_STRING27;' +
              'S_STRING28;S_STRING29;S_STRING30;S_STRING31;S_STRING32;S_STRING33;S_STRING34;S_STRING35;S_STRING36;S_STRING37;' +
              'S_STRING38;S_STRING39;S_STRING40;S_STRING41;S_STRING42;S_STRING43;S_STRING44;S_STRING45;S_STRING46;S_STRING47;' +
              'S_STRING48;S_NAME3;S_STRING49;S_STRING50;S_NAME4;S_EDITID;S_EDITIP');
   SetFldValue(0, [Patno,    Rsndiss,  Testdte,  Hdtype,   Insu,    Insubo1,  Insubo2, Transrsn, Hdstart, Hdend,
                   Hdtool,   Hdmachin, Hdfloid,	Hpdcnt,   Hpdtime, Bldspeed, Avfyn,   Avftext,  Avgyn,   Avgtext,
                   Permyn,   Permtext, Jvcyn,    Jvctext,  Svcyn,   Svctext,  Fvcyn,   Fvctext,  Fstqty,  Mainqty,
                   Preshgh1, Preshgh2, Preslow1,	Preslow2, Weight,  Incwght,  Hbsag,   Antihcv,  Antihiv, Vdrl,
                   Bloodab,  Bloodrh,  Bloodyn,  Rbc,      Wbc,     Hb,       Hct,     Platel,   Na,      K,
                   Cl,       Co2,      Ca,       P,        Ast,     Alt,      Alp,     Pth,      Colest,  Uric,
                   Buncr,    Fetibc,   Ferritn,  Protein,  Fbs,     Pp2hr,    Hba1,    Otrtest,  Drug,    Commnt,
                   MakeDrnm, MakeDrID, Crtdte,   Hosptel,  Examrsl, Editid,   Editip] );
   if (txPutF('MH_TRANS_I1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;

end;

function HmhTranst.SelectTrans(PatNo, HDType : String):Integer;
begin
   Result := -1;
   txAlloc32; //Pointer를 받아옴.
   SetFldName32('S_PATNO;S_TYPE1');
   SetFldValue32(0,[PatNo,HDType] );
   if (txGetF32('MH_TRANS_S1')) then begin //Tuxedo Service Call
		GetFldVar32('S_PATNO', sPatno);
		GetFldVar32('S_NAME1', sHdtype);
		GetFldVar32('S_NAME2', sTestdte);
		GetFldVar32('S_TYPE1', sInsu);
		GetFldVar32('S_TYPE2', sInsubo1);
		GetFldVar32('S_TYPE3', sInsubo2);
		GetFldVar32('S_TYPE4', sTransrsn);
		GetFldVar32('S_TYPE5', sRsndiss);
		GetFldVar32('S_TYPE6', tHdstart);
		GetFldVar32('S_TYPE7', tHdend);
		GetFldVar32('S_TYPE8', sHdtool);
		GetFldVar32('S_TYPE9', sHdmachin);
		GetFldVar32('S_TYPE10', sHdfloid);
		GetFldVar32('S_CODE1', sHpdcnt);
		GetFldVar32('S_CODE2', sHpdtime);
		GetFldVar32('S_CODE3', sBldspeed);
		GetFldVar32('S_CODE4', sAvfyn);
		GetFldVar32('S_CODE5', sAvftext);
		GetFldVar32('S_CODE6', sAvgyn);
		GetFldVar32('S_CODE7', sAvgtext);
		GetFldVar32('S_CODE8', sPermyn);
		GetFldVar32('S_CODE9', sPermtext);
		GetFldVar32('S_CODE10', sJvcyn);
		GetFldVar32('S_STRING1', sJvctext);
		GetFldVar32('S_STRING2', sSvcyn);
		GetFldVar32('S_STRING3', sSvctext);
		GetFldVar32('S_STRING4', sFvcyn);
		GetFldVar32('S_STRING5', sFvctext);
		GetFldVar32('S_STRING6', sFstqty);
		GetFldVar32('S_STRING7', sMainqty);
		GetFldVar32('S_STRING8', sPreshgh1);
		GetFldVar32('S_STRING9', sPreshgh2);
		GetFldVar32('S_STRING10', sPreslow1);
		GetFldVar32('S_STRING11', sPreslow2);
		GetFldVar32('S_STRING12', sWeight);
		GetFldVar32('S_STRING13', sIncwght);
		GetFldVar32('S_STRING14', sHbsag);
		GetFldVar32('S_STRING15', sAntihcv);
		GetFldVar32('S_STRING16', sAntihiv);
		GetFldVar32('S_STRING17', sVdrl);
		GetFldVar32('S_STRING18', sBloodab);
		GetFldVar32('S_STRING19', sBloodrh);
		GetFldVar32('S_STRING20', sBloodyn);
		GetFldVar32('S_STRING21', sRbc);
		GetFldVar32('S_STRING22', sWbc);
		GetFldVar32('S_STRING23', sHb);
		GetFldVar32('S_STRING24', sHct);
		GetFldVar32('S_STRING25', sPlatel);
		GetFldVar32('S_STRING26', sNa);
		GetFldVar32('S_STRING27', sK);
		GetFldVar32('S_STRING28', sCl);
		GetFldVar32('S_STRING29', sCo2);
		GetFldVar32('S_STRING30', sCa);
		GetFldVar32('S_STRING31', sP);
		GetFldVar32('S_STRING32', sAst);
		GetFldVar32('S_STRING33', sAlt);
		GetFldVar32('S_STRING34', sAlp);
		GetFldVar32('S_STRING35', sPth);
		GetFldVar32('S_STRING36', sColest);
		GetFldVar32('S_STRING37', sUric);
		GetFldVar32('S_STRING38', sBuncr);
		GetFldVar32('S_STRING39', sFetibc);
		GetFldVar32('S_STRING40', sFerritn);
		GetFldVar32('S_STRING41', sProtein);
		GetFldVar32('S_STRING42', sFbs);
		GetFldVar32('S_STRING43', sPp2hr);
		GetFldVar32('S_STRING44', sHba1);
		GetFldVar32('S_STRING45', sOtrtest);
		GetFldVar32('S_STRING46', sDrug);
		GetFldVar32('S_STRING47', sCommnt);
		GetFldVar32('S_STRING48', sMakeDrnm);
      GetFldVar32('S_NAME3'   , sMakeDrID);
		GetFldVar32('S_STRING49', tCrtdte);
		GetFldVar32('S_STRING50', sHosptel);
      GetFldVar32('S_NAME4'   , sExamrslt);

      Result := GetRecordCnt32('S_NAME1');
      txFree32;
   end;
end;


////////////////////////////////////////////////////////////////////////////////
//  HmhPtloct  환자의 현위치
////////////////////////////////////////////////////////////////////////////////

function HmhPtloct.SelectPtloc(Ptno, sDate : String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO;S_TYPE1');
   SetFldValue(0,[Ptno,sDate] );
   if (txGetF('MH_PTLOC_S1')) then begin //Tuxedo Service Call
      GetFldVar('S_PATNO',sPatno);
      GetFldVar('S_CODE1',sPtloc);
      GetFldVar('S_CODE2',sBckStat);
      GetFldVar('S_CODE3',sWardNo);
      GetFldVar('S_CODE4',sMedTime);
      GetFldVar('S_CODE5',sMeddept);
      GetFldVar('S_CODE6',sAdmdate);
      Result := GetRecordCnt('S_CODE1');
      txFree;
   end;
end;

function HmhPtloct.SelectPatInfo(Ptno, sDate, sType : String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO;S_TYPE1;S_TYPE2');
   SetFldValue(0,[Ptno,sDate,sType]);
   if (txGetF('MH_PINFO_S1')) then begin //Tuxedo Service Call
      GetFldVar('S_CODE1',sMeddate);
      GetFldVar('S_CODE2',sMeddept);
      GetFldVar('S_CODE3',sWardNo);
      GetFldVar('S_CODE4',sRoomNo);
      GetFldVar('S_CODE5',sDrId);
      GetFldVar('S_CODE6',sPttype);
      GetFldVar('S_CODE7',sMedtime);
      GetFldVar('S_CODE8',sPtloc);
      GetFldVar('S_CODE9',sOrdDate);
      GetFldVar('S_CODE10',sSubInSt);
      GetFldVar('S_CODE11',sBckStat);
      Result := GetRecordCnt('S_CODE1');
      txFree;
   end;
end;

//  HmdOrdrct   진료처방 Reference
function HmhOrdrct.ListOrdrc():Integer;
begin
   Result := -1;
   txAlloc;

   if (txGetF('MH_ORDRC_L1')) then
   begin
     GetFldVar('S_STRING1',  sOrdcd);
     GetFldVar('S_STRING2',  sOrdname);

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;

end;

function HmhHpdort.ListHpdrt():Integer;
begin
   Result := -1;
   txAlloc;

   if (txGetF('MH_HPDRT_L1')) then
   begin
     GetFldVar('S_PATNO',    sPatno);
     GetFldVar('S_PATNAME',  sPatName);
     GetFldVar('S_ORDDATE',  sOrdDate);
     GetFldVar('S_ORDCODE',  sOrdcd);
     GetFldVar('S_ORDNAME',  sOrdName);
     GetFldVar('S_STRING1',  sHdType);
     GetFldVar('S_STRING2',  sPatSect);
     GetFldVar('S_STRING3',  sOrdDr);
     GetFldVar('S_STRING4',  sOrdDrNm);
     GetFldVar('S_STRING5',  sChaDr);
     GetFldVar('S_STRING6',  sChaDrNm);
     GetFldVar('S_STRING7',  sMeddept);
     GetFldVar('S_STRING8',  sOrdText);
     GetFldVar('S_STRING9',  sActChk);
     GetFldVar('S_STRING10', sOrdtime);
     GetFldVar('S_STRING11', sMeddate);

     Result := GetRecordCnt('S_STRING1');
     txFree;
   end;
end;

// 투석지시내역 조회 - 최근 지시내역
function HmhHpdort.SelectText(PatNO,HDType:string):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO;S_TYPE1');
   SetFldValue(0,[PatNO,HDType] );
   if (txGetF('MH_HPDOR_S1')) then
   begin //Tuxedo Service Call
      GetFldVar('S_PATNO',sPatNO);     //환자번호
      GetFldVar('S_STRING1',sOrdDate); //최근오더일
      GetFldVar('S_STRING2',sOrdCd);   //처방코드
      GetFldVar('S_STRING3',sOrdName); //처방명
      GetFldVar('S_STRING4',sOrdText); //지시내역
      GetFldVar('S_STRING5',sRsndiss); //원인질환
      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

// 투석지시내역 조회 - 투석 이력내역
function HmhHpdort.SelectText2(PatNO,HDType,Fromdate,Todate:string):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_PATNO;S_TYPE1;S_TYPE2;S_TYPE3');
   SetFldValue(0,[PatNO,HDType,Fromdate,Todate] );
   if (txGetF('MH_HPDOR_S2')) then
   begin //Tuxedo Service Call
      GetFldVar('S_PATNO',sPatNO);     //환자번호
      GetFldVar('S_STRING1',sOrdDate); //최근오더일
      GetFldVar('S_STRING2',sOrdCd);   //처방코드
      GetFldVar('S_STRING3',sOrdName); //처방명
      GetFldVar('S_STRING4',sOrdText); //지시내역
      GetFldVar('S_STRING5',sOrddr); //지시내역
      Result := GetRecordCnt('S_STRING2');
      txFree;
   end;
end;

function HmhHpdort.UpdateHdOrder(PatNo,OrdDate,Ordseqno,EditId,EditIp:String):Integer;
begin
   Result := -1;
   //Pointer를 받아옴.
   txAlloc;
   //FML Buffer Field Assign
   SetFldName('S_PATNO;S_ORDDATE;S_ORDSEQNO;S_EDITID;S _EDITIP');
   SetFldName('S_PATNO;S_ORDDATE;S_STRING1;S_EDITID;S _EDITIP');
   SetFldValue(0,[PatNo,OrdDate,Ordseqno,EditId,EditIp]);
   //Tuxedo Service Call
   if (txTpCall('MH_HPDOR_U1')) then
   begin
      Result := 1;
      txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
//  HmhMedort  투약이력                                                       //
////////////////////////////////////////////////////////////////////////////////

function HmhMedort.SelectMedor(sPatno,sFromdate,sTodate : String) : Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');
   SetFldValue(0,[sPatno,sFromdate,sTodate] );
   if (txGetF('MH_MEDOR_L1')) then
   begin //Tuxedo Service Call
      GetFldVar('S_CODE1',sOrdDate); //최근오더일
      GetFldVar('S_CODE2',sOrddesc1);   //처방코드
      GetFldVar('S_CODE3',sOrddesc2); //처방명
      Result := GetRecordCnt('S_CODE1');
      txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
//  HmhNurset  간호내용                                                       //
////////////////////////////////////////////////////////////////////////////////

function HmhNurset.SelectHdpatList1(sType1,sType2,sType3,sType4:String):Integer;
begin
   Result := -1;
   txAlloc32; //Pointer를 받아옴.

   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
   SetFldValue32(0, [sType1,sType2,sType3,sType4]);

   //Tuxedo Service Call
   if (txGetF32('MH_IPDLS_L1')) then
   begin
      GetFldVar32('S_CODE1'  ,sPatNo);
      GetFldVar32('S_CODE2'  ,sPatName);
      GetFldVar32('S_CODE3'  ,sAdmDate);
      GetFldVar32('S_CODE4'  ,sSex);
      GetFldVar32('S_CODE5'  ,sBirtDate);
      GetFldVar32('S_CODE6'  ,sMedDept);
      GetFldVar32('S_CODE7'  ,sDeptNm);
      GetFldVar32('S_CODE8'  ,sWardNo);
      GetFldVar32('S_CODE9'  ,sRoomNo);
      GetFldVar32('S_CODE10' ,sChaDr);
      GetFldVar32('S_CODE11' ,sChaDrNm);
      GetFldVar32('S_CODE12' ,sGenDr);
      GetFldVar32('S_CODE13' ,sGenDrNm);
      GetFldVar32('S_CODE14' ,sDiagName);
      GetFldVar32('S_CODE15' ,sOpName);
      GetFldVar32('S_CODE16' ,sLstopDt);
      GetFldVar32('S_CODE17' ,sPatSect);   // D:DRG R:REFER S:지병
      GetFldVar32('S_CODE18' ,sVschktRm);
      GetFldVar32('S_CODE19' ,sVschkYn);
      GetFldVar32('S_CODE20' ,sDschexdt);
      GetFldVar32('S_CODE21' ,sDschdate);
      GetFldVar32('S_CODE22' ,sWardNo1);
      GetFldVar32('S_CODE23' ,sRoomNo1);
      GetFldVar32('S_CODE24' ,sLstordDt); // 최근처방일자
      GetFldVar32('S_CODE25' ,sWeight);
      GetFldVar32('S_CODE26' ,sTransDt);
      GetFldVar32('S_CODE27' ,sSysdate);
      GetFldVar32('S_CODE28' ,sNurstat);
      GetFldVar32('S_CODE29' ,sBckStat);
      GetFldVar32('S_CODE30' ,sResNo1);
      GetFldVar32('S_STRING1' ,sResNo2);


      //Service를 수행하고 FML Buffer에 PUT된 Record수
      Result :=GetRecordCnt32('S_CODE1');
      txFree32;
   end;
end;

// ▶ 1:당일접수 뒤로Sorting, 2:시간순, 3:성명순
function HmhNurset.SelectHdpatList2(sType1,MedDate,MedDept,MedDr,MedYn,MedTime:String):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_CODE1;S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //진료일;진료과;진료의;진료여부;진료시간
   SetFldValue32(0,[sType1,MedDate,MedDept,MedDr,MedYn,MedTime] );

   //Tuxedo Service Call
   if (txGetF32('MH_OPDLS_L1')) then
   begin
      GetFldVar32('S_PATNO',    sPatNo   );  // 환자번호
      GetFldVar32('S_STRING1',  sMedDate );  // 진료일
      GetFldVar32('S_STRING2',  sMedTime );  // 진료예약시간
      GetFldVar32('S_STRING3',  sMedDept );  // 진료과
      GetFldVar32('S_STRING4',  sFstmedTy);  // 초/재진여부
      GetFldVar32('S_STRING5',  sMedDr   );  // 진료의
      GetFldVar32('S_STRING6',  sMedYn   );  // 진료여부
      GetFldVar32('S_STRING7',  sRcpYn   );  // 수납여부
      GetFldVar32('S_STRING8',  sChartYn );  // 입원차트대출여부
      GetFldVar32('S_STRING9',  sFilmYn  );  // 필름대출희망여부
      GetFldVar32('S_STRING10', sRemark  );  // 특기사항
      GetFldVar32('S_STRING11', sPatType );  // 환자유형(보험구분)
      GetFldVar32('S_STRING12', sPatName );  // 환자명
      GetFldVar32('S_STRING13', sSex     );  // 성별
      GetFldVar32('S_STRING14', sBirtDate);  // 생년월일
      GetFldVar32('S_STRING15', sTelNo1  );  // 환자전화번호1
      GetFldVar32('S_STRING16', sTelNo2  );  // 환자전화번호2
      GetFldVar32('S_STRING17', sTelNo3  );  // 환자전화번호3
      GetFldVar32('S_STRING18', sMedDrNm );  // 진료의Name
      GetFldVar32('S_STRING19', sOtherYn );  // 타과예약여부
      GetFldVar32('S_STRING20', sRsvType );  // 예약구분
      GetFldVar32('S_STRING21', sDiagname);  // 진단명
      GetFldVar32('S_STRING22', sMedrcpYn);  // 진찰료 수납여부
      GetFldVar32('S_STRING23', sOrdDate );  // 진찰예약일자
      GetFldVar32('S_STRING24', sFollow );   // Follow up
      GetFldVar32('S_STRING25', sRsvTypeCd); // 예약구분코드
      GetFldVar32('S_STRING26', sHdsflag);   // 보조환자유형
      GetFldVar32('S_STRING27', sPatsect);   // 보조환자유형
      GetFldVar32('S_STRING28', sHdshift);   // 보조환자유형

      //조회건수 return
      Result := GetRecordCnt32('S_PATNO');
      txFree32;
   end;
end;

function HmhHemomt.InputHemoInf():Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;' +
                'S_STRING6;S_STRING7;S_STRING8;S_STRING9;S_STRING10;' +
                'S_STRING11;S_STRING12;S_STRING13;S_STRING14;S_STRING15;' +
                'S_STRING16;S_STRING17;S_STRING18;S_STRING19;S_STRING20;' +
                'S_STRING21;S_STRING22;S_STRING23;S_STRING24;S_STRING25;' +
                'S_STRING26;S_STRING27;S_STRING28');


   SetFldValue32(0,[sPatno,sStartdt,sDiagsimcd1,sDiagsimcd2,sEf40cb,sPacecb,
                    sChestcb,sGaesimcb,sDiagnoecd1,sDiagnoecd2,sNormalcb,
                    sDiaggancd1,sDiaggancd2,sCpscb,sDiagwicd1,sDiagwicd2,
                    sWith1yrbcb,sDiagpyecd1,sDiagpyecd2,sSpo2cb,sDiagakcd1,sDiagakcd2,
                    sWith1yrocb,sDiagdangcd1,sDiagdangcd2,'','',sHeight] );

   if (txPutF('MH_HEMOM_I1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

function HmhHemomt.ListHemoInf(Type1,Patno:String):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_TYPE1;S_TYPE2');
   SetFldValue32(0,[Type1,Patno] );

   //Tuxedo Service Call
   if (txGetF32('MH_HEMOM_L1')) then
   begin
      GetFldVar32('S_PATNO',    sPatNo   );  // 환자번호
      GetFldVar32('S_STRING1',  sPatName );  // 진료일
      //조회건수 return
      Result := GetRecordCnt32('S_PATNO');
      txFree32;
   end;
end;

function HmhHemomt.SelectHemoInf(Patno:String):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_TYPE1');
   SetFldValue32(0,[Patno] );

   //Tuxedo Service Call
   if (txGetF32('MH_HEMOM_S1')) then
   begin
      GetFldVar32('S_STRING1',   sPatNo      );  // 환자번호
      GetFldVar32('S_STRING2',   sStartdt    );  // 진료일
      GetFldVar32('S_STRING3',   sDiagsimcd1 );  // 진료일
      GetFldVar32('S_STRING4',   sDiagsimcd2 );  // 진료일
      GetFldVar32('S_STRING5',   sEf40cb     );  // 진료일
      GetFldVar32('S_STRING6',   sPacecb     );  // 진료일
      GetFldVar32('S_STRING7',   sChestcb    );  // 진료일
      GetFldVar32('S_STRING8',   sGaesimcb   );  // 진료일
      GetFldVar32('S_STRING9',   sDiagnoecd1 );  // 진료일
      GetFldVar32('S_STRING10',  sDiagnoecd2 );  // 진료일
      GetFldVar32('S_STRING11',  sNormalcb   );  // 진료일
      GetFldVar32('S_STRING12',  sDiaggancd1 );  // 진료일
      GetFldVar32('S_STRING13',  sDiaggancd2 );  // 진료일
      GetFldVar32('S_STRING14',  sCpscb      );  // 진료일
      GetFldVar32('S_STRING15',  sDiagwicd1  );  // 진료일
      GetFldVar32('S_STRING16',  sDiagwicd2  );  // 진료일
      GetFldVar32('S_STRING17',  sWith1yrbcb );  // 진료일
      GetFldVar32('S_STRING18',  sDiagpyecd1 );  // 진료일
      GetFldVar32('S_STRING19',  sDiagpyecd2 );  // 진료일
      GetFldVar32('S_STRING20',  sSpo2cb     );  // 진료일
      GetFldVar32('S_STRING21',  sDiagakcd1  );  // 진료일
      GetFldVar32('S_STRING22',  sDiagakcd2  );  // 진료일
      GetFldVar32('S_STRING23',  sWith1yrocb );  // 진료일
      GetFldVar32('S_STRING24',  sDiagdangcd1);  // 진료일
      GetFldVar32('S_STRING25',  sDiagdangcd2);  // 진료일
      GetFldVar32('S_STRING26',  sHeight     );  // 진료일

      //조회건수 return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

function HmhHemomt.SelectHinject(Patno,StartDate,EndDate:String):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3');
   SetFldValue32(0,[Patno,StartDate,EndDate] );

   //Tuxedo Service Call
   if (txGetF32('MH_HEMOM_S2')) then
   begin
      GetFldVar32('S_STRING1',   sOrdDateGrp      );  // 환자번호
      GetFldVar32('S_STRING2',   sEdicode    );  // 진료일
      GetFldVar32('S_STRING3',   sOrdname );  // 진료일
      GetFldVar32('S_STRING4',   sOrdCount );  // 진료일
      GetFldVar32('S_STRING5',   sOrdQty     );  // 진료일

      //조회건수 return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

function HmhHemomt.InputHemoPressure():Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6');
   SetFldValue32(0,[sPatno,sMeasuredate,sPrePress,sPostPress,sPreWeight,sPostWeight] );

   if (txPutF('MH_HEMOP_I1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

function HmhHemomt.ListPressInf(patno:String):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_TYPE1');
   SetFldValue32(0,[Patno] );

   //Tuxedo Service Call
   if (txGetF32('MH_HEMOP_L1')) then
   begin
      GetFldVar32('S_STRING1',    sMeasureDate   );  // 환자번호
      //조회건수 return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

function HmhHemomt.ListPressDetailInf(patno,measuredate:String):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_TYPE1;S_TYPE2');
   SetFldValue32(0,[Patno,measuredate] );

   //Tuxedo Service Call
   if (txGetF32('MH_HEMOP_L2')) then
   begin
      GetFldVar32('S_STRING1',    sPrePress   );
      GetFldVar32('S_STRING2',    sPostPress  );
      GetFldVar32('S_STRING3',    sPreWeight     );
      GetFldVar32('S_STRING4',    sPostWeight    );
      //조회건수 return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

function HmhHemomt.InputHemoResult():Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6;S_STRING7;S_STRING8;S_STRING9;S_STRING10;S_STRING11');
   SetFldValue32(0,[sPatno,sMeasuredate,sTusukType,sPreBUN,sPostBUN,sTusukTime,sJesu,sPostCWeight,sTestResult,sEditid,sEditip] );

   if (txPutF('MH_HEMOC_I1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

function HmhHemomt.ListTestInf(patno:String):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_TYPE1');
   SetFldValue32(0,[Patno] );

   //Tuxedo Service Call
   if (txGetF32('MH_HEMOC_L1')) then
   begin
      GetFldVar32('S_STRING1',    sMeasureDate   );  // 환자번호
      //조회건수 return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

function HmhHemomt.ListTestDetailInf(patno,measuredate:String):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_TYPE1;S_TYPE2');
   SetFldValue32(0,[Patno,measuredate] );

   //Tuxedo Service Call
   if (txGetF32('MH_HEMOC_L2')) then
   begin
      GetFldVar32('S_STRING1',    sPreBUN   );
      GetFldVar32('S_STRING2',    sPostBUN  );
      GetFldVar32('S_STRING3',    sJesu     );
      GetFldVar32('S_STRING4',    sPostCWeight    );
      GetFldVar32('S_STRING5',    sTestResult);
      GetFldVar32('S_STRING6',    sTusukType);
      //조회건수 return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

function HmhHemomt.InputHemoBlood():Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6;S_STRING7');
   SetFldValue32(0,[sPatno,sMeasuredate,sTongType,sArtery,sVein,sEditid,sEditip] );

   if (txPutF('MH_HEMOB_I1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

function HmhHemomt.ListBloodInf(patno:String):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_TYPE1');
   SetFldValue32(0,[Patno] );

   //Tuxedo Service Call
   if (txGetF32('MH_HEMOB_L1')) then
   begin
      GetFldVar32('S_STRING1',    sMeasureDate   );  // 환자번호
      //조회건수 return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

function HmhHemomt.ListBloodDetailInf(patno,measuredate:String):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_TYPE1;S_TYPE2');
   SetFldValue32(0,[Patno,measuredate] );

   //Tuxedo Service Call
   if (txGetF32('MH_HEMOB_L2')) then
   begin
      GetFldVar32('S_STRING1',    sTongType   );
      GetFldVar32('S_STRING2',    sArtery  );
      GetFldVar32('S_STRING3',    sVein     );

      //조회건수 return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

function HmhHemomt.ListExamInf(patno,startdate:String):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_TYPE1;S_TYPE2');
   SetFldValue32(0,[Patno,startdate] );

   //Tuxedo Service Call
   if (txGetF32('MH_HEMOL_L1')) then
   begin
      GetFldVar32('S_STRING1',    sEngName   );
      GetFldVar32('S_STRING2',    sExecDate  );
      GetFldVar32('S_STRING3',    sRslt      );
      //조회건수 return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

//투석기록지 환자별 리스트 조회
//KimDaeYong 2017-05-30
function HmhHdrect.List1(inPatno, inOrddate:String):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_TYPE1;S_TYPE2');
   SetFldValue32(0,[inPatno, inOrddate] );

   //Tuxedo Service Call
   if (txGetF32('MH_HDREC_L1')) then
   begin
      GetFldVar32('S_STRING1',  sPatno  );
      GetFldVar32('S_STRING2',  sOrddate);
      GetFldVar32('S_STRING3',  sOrdseqno);
      GetFldVar32('S_STRING4',  sHdtype );
      GetFldVar32('S_STRING5',  sHdtypenm);
      GetFldVar32('S_STRING6',  sRecyn  );
      GetFldVar32('S_STRING7',  sPatsect);
      GetFldVar32('S_STRING8',  sMeddept);
      GetFldVar32('S_STRING9',  sChadr  );
      GetFldVar32('S_STRING10', sChadrnm);
      GetFldVar32('S_STRING11', sOrddr  );
      GetFldVar32('S_STRING12', sOrddrnm);
      GetFldVar32('S_STRING13', sOrdcd  );
      GetFldVar32('S_STRING14', sRsndiss);
      GetFldVar32('S_STRING15', sMeddate);
      GetFldVar32('S_STRING16', sWardno);
      GetFldVar32('S_STRING17', sRoomno);
      GetFldVar32('S_STRING18', sDiscyn);

      //조회건수 return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

//투석기록지 환자, 일자별 조회
//KimDaeYong 2017-05-31
function HmhHdrect.Select1(inPatno, inMeddate, inOrddate, inOrdseqno:String):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
   SetFldValue32(0,[inPatno, inMeddate, inOrddate, inOrdseqno] );

   //Tuxedo Service Call
   if (txGetF32('MH_HDREC_S1')) then
   begin
        GetFldVar32 ('S_STRING1' ,  sCaution  );
		GetFldVar32 ('S_STRING2' ,  sCauetc   );
		GetFldVar32 ('S_STRING3' ,  sRecdate  );
        GetFldVar32 ('S_STRING4' ,  sRecid    );
        GetFldVar32 ('S_STRING5' ,  sRecname  );
		GetFldVar32 ('S_STRING6' ,  sVisitpath);
		GetFldVar32 ('S_STRING7' ,  sBegindate);
		GetFldVar32 ('S_STRING8' ,  sEnddate  );
		GetFldVar32 ('S_STRING9' ,  sVsbegin  );
		GetFldVar32 ('S_STRING10',  sVsend    );
		GetFldVar32 ('S_STRING11',  sWeight   );
		GetFldVar32 ('S_STRING12',  sBefweight);
		GetFldVar32 ('S_STRING13',  sAftweight);
		GetFldVar32 ('S_STRING14',  sUf       );
		GetFldVar32 ('S_STRING15',  sBldspeed );
		GetFldVar32 ('S_STRING16',  sAnticaog );
		GetFldVar32 ('S_STRING17',  sCapa1    );
		GetFldVar32 ('S_STRING18',  sCapa2    );
		GetFldVar32 ('S_STRING19',  sLiquid   );
		GetFldVar32 ('S_STRING20',  sKind     );
		GetFldVar32 ('S_STRING21',  sEquipkind);
		GetFldVar32 ('S_STRING22',  sPass     );
		GetFldVar32 ('S_STRING23',  sM30      );
		GetFldVar32 ('S_STRING24',  sH1       );
		GetFldVar32 ('S_STRING25',  sH1M30    );
		GetFldVar32 ('S_STRING26',  sH2       );
		GetFldVar32 ('S_STRING27',  sH2M30    );
		GetFldVar32 ('S_STRING28',  sH3       );
		GetFldVar32 ('S_STRING29',  sH3M30    );
		GetFldVar32 ('S_STRING30',  sOpin     );
		GetFldVar32 ('S_STRING31',  sFall     );
		GetFldVar32 ('S_STRING32',  sNurrec   );
		GetFldVar32 ('S_STRING33',  sTranstext);
		GetFldVar32 ('S_STRING34',  sRemark   );
        GetFldVar32 ('S_STRING35',  sVsMiddle );
        GetFldVar32 ('S_STRING36',  sSignData  );
        GetFldVar32 ('S_STRING37',  sSerialNo  );
        GetFldVar32 ('S_STRING38',  sSubjectDN );
        GetFldVar32 ('S_STRING39',  sVsbegindate);
        GetFldVar32 ('S_STRING40',  sVsMiddledate);
		GetFldVar32 ('S_STRING41',  sVsenddate );
        GetFldVar32 ('S_STRING42',  sVsBgPls   );
        GetFldVar32 ('S_STRING43',  sVsBgResp  );
        GetFldVar32 ('S_STRING44',  sVsBgBld   );
        GetFldVar32 ('S_STRING45',  sVsMdPls   );
        GetFldVar32 ('S_STRING46',  sVsMdResp  );
        GetFldVar32 ('S_STRING47',  sVsMdBld   );
        GetFldVar32 ('S_STRING48',  sVsEdPls   );
        GetFldVar32 ('S_STRING49',  sVsEdResp  );
        GetFldVar32 ('S_STRING50',  sVsEdBld   );
        GetFldVar32 ('S_STRING51',  sVeinpres  );

      //조회건수 return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

//투석기록지 삭제, KimDaeYong 2017-06-01
function HmhHdrect.Delete1(inPatno, inMeddate, inOrddate, inOrdseqno:String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
   SetFldValue(0,[inPatno, inMeddate, inOrddate, inOrdseqno]);

   if (txPutF('MH_HDREC_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

//투석기록지 입력/수정, KimDaeYong 2017-06-01
function HmhHdrect.Insert1(sSignData,sSerialNo,sSubjectDN:string):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6;S_STRING7;S_STRING8;S_STRING9;S_STRING10;' +
                'S_STRING11;S_STRING12;S_STRING13;S_STRING14;S_STRING15;S_STRING16;S_STRING17;S_STRING18;S_STRING19;S_STRING20;' +
                'S_STRING21;S_STRING22;S_STRING23;S_STRING24;S_STRING25;S_STRING26;S_STRING27;S_STRING28;S_STRING29;S_STRING30;' +
                'S_STRING31;S_STRING32;S_STRING33;S_STRING34;S_STRING35;S_STRING36;S_STRING37;S_STRING38;S_STRING39;S_STRING40;' +
                'S_STRING41;S_STRING42;S_STRING43;S_STRING44;S_STRING45;S_STRING46;S_STRING47;S_STRING48;S_STRING49;S_STRING50;' +
                'S_STRING51;S_STRING52;S_STRING53;S_STRING54;S_STRING55;S_STRING56;S_STRING57;S_STRING58');
   SetFldValue32(0,[sPatno,sOrddate,sOrdseqno,sHdtype,sCaution,sCauEtc,sRecdate,sRecid,sVisitPath,sBegindate,
                    sEnddate,sVsbegin,sVsend,sWeight,sBefWeight,sAftWeight,sUf,sBldSpeed,sAntiCaog,sCapa1,
                    sCapa2,sLiquid,sKind,sEquipKind,sPass,sM30,sH1,sH1M30,sH2,sH2M30,
                    sH3,sH3M30,sOpin,sFall,sNurrec,sTranstext,sRemark,sEditid,sEditip,sVsmiddle,
                    sPatsect,sMeddate,sSignData,sSerialNo,sSubjectDN,sVsbegindate,sVsmiddledate,sVsenddate,sVsBgPls,sVsBgResp,
                    sVsBgBld,sVsMdPls,sVsMdResp,sVsMdBld,sVsEdPls,sVsEdResp,sVsEdBld,sVeinpres]);

   if (txPutF('MH_HDREC_I1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

//투석기록지_간호기록 리스트 조회
//KimDaeYong 2017-08-14
function HmhHdrect.List2(inPatno, inMeddate, inOrddate, inOrseqno:String):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
   SetFldValue32(0,[inPatno, inMeddate, inOrddate, inOrseqno] );

   //Tuxedo Service Call
   if (txGetF32('MH_HDREC_L2')) then
   begin
      GetFldVar32('S_STRING1',  sActseqno   );
      GetFldVar32('S_STRING2',  sActdate    );
      GetFldVar32('S_STRING3',  sActtime    );
      GetFldVar32('S_STRING4',  sActtxt     );
      GetFldVar32('S_STRING5',  sActrecid   );
      GetFldVar32('S_STRING6',  sActrecnm   );
      GetFldVar32('S_STRING7',  sSigndata   );
      GetFldVar32('S_STRING8',  sSerialno   );
      GetFldVar32('S_STRING9',  sSubjectdn  );

      //조회건수 return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

//투석기록지 입력/수정, KimDaeYong 2017-08-14
function HmhHdrect.Insert2(inFlag,sSignData,sSerialNo,sSubjectDN:string):Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_TYPE1;' +
                'S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6;S_STRING7;S_STRING8;S_STRING9;S_STRING10;'+
                'S_STRING11;S_STRING12;S_STRING13;S_STRING14');
   SetFldValue32(0,[inFlag,
                    sPatno,sMeddate,sOrddate,sOrdseqno,sActseqno,sActdate,sActtime,sActtxt,sActrecid,sEditid,
                    sEditip,sSignData,sSerialNo,sSubjectDN] );

   if (txPutF('MH_HDREC_I2')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

//투석간호기록 삭제, KimDaeYong 2017-08-14
function HmhHdrect.Delete2(inPatno, inMeddate, inOrddate, inOrdseqno, inActseqno:String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5');
   SetFldValue(0,[inPatno, inMeddate, inOrddate, inOrdseqno, inActseqno]);

   if (txPutF('MH_HDREC_D2')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

//간호IO,VS입력, KimDaeYong 2018-07-26
function HmhHdrect.Insert3:Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6;S_STRING7;S_STRING8;S_STRING9;S_STRING10;' +
                'S_STRING11;S_STRING12;S_STRING13;S_STRING14;S_STRING15;S_STRING16;S_STRING17;S_STRING18;S_STRING19;S_STRING20;' +
                'S_STRING21;S_STRING22;S_STRING23;S_STRING24;S_STRING25;S_STRING26;S_STRING27;S_STRING28');
   SetFldValue32(0,[sPatno,sMeddate,sBegindate,sEnddate,sVsbegindate,sVsmiddledate,sVsenddate,sVsbegin,sVsBgPls,sVsBgResp,
                    sVsBgBld1,sVsBgBld2,sVsmiddle,sVsMdPls,sVsMdResp,sVsMdBld1,sVsMdBld2,sVsend,sVsEdPls,sVsEdResp,
                    sVsEdBld1,sVsEdBld2,sBefWeight,sAftWeight,sUf,sRoomno,sEditid,sEditip]);

   if (txPutF('MH_HDREC_I3')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
//  SRSEDRCT	진정치 기록지
////////////////////////////////////////////////////////////////////////////////

{ HsrSedevt }

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

{ HsrSedmet }

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

{ HsrSedrct }

function HsrSedrct.SelectRecovery: Integer;
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

end.
