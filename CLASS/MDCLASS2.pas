{  추후에는 간호부분만 따로 관리한다.....
   작성월일 :
   HmdInrpft1.NrplInform      : 간호계획 분류코드 조회 (실시중재보기 및 중재안보기 (전체,적용,종료))
   HmdInrpft1.mdInrpft_save   : 환자별 간호계획관리를 저장한다.
   HmdInrpat.mdInrplt_select  : 간호문제를 조회한다.
   HmdInrpjt.mdInrpjt_select  : 간호진단별 사정도구.
   HmdInrplt1.mdInrplt_select : 대분류를 조회한다.
   HmdInrpmt1.mdInrpmt_select : 대분류에 따른 중분류를 조회한다.
   Hmdinrpbt.mdinrpbt_select  : 대분류 중분류에 따른 진단명(진단코드를 넣으면 진단상세내역조회)
   Hmdinrpet.mdinrpet_select  : 대중분류및 진단코드별로 관련요인을 조회
}

unit MDCLASS2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
   // 환자별 간호계획관리
    HmdInrpft1 = class
      v_Nrplcode : Variant; // 간호계획대분류코드
      v_Nrplname : Variant; // 간호계획대분류코드명
      v_Nrpmcode : Variant; // 간호계획중분류코드
      v_Nrpmname : Variant; // 간호계획중분류코드명
      v_Diagcode : Variant; // 간호계획진단코드
      v_Diagname : Variant; // 간호계획진단명
      v_Plancode : Variant; // 간호계획중재코드
      v_Planname : Variant; // 간호계획중재코드명
      v_Diagnocd : Variant; // 간호진단코드(구분을 위해조회한다)
      v_Appldate : Variant; // 적용일자
      v_Enddate  : Variant; // 종료일자
      v_Objdiag  : Variant; // 객관적자료
      v_Subdiag  : Variant; // 주관적자료
      v_Res      : Variant; // 평가결과
      v_Causecd  : Variant; // 관련요인코드
      v_Causenm  : Variant; // 관련요인명칭
      v_Act      : Variant; // Acting 여부
      v_Appseqno : Variant; // 적용순번
      function NrplInform(sType1   , // 조건  1: 실시중재보기 , 2: 실시중재보기 안함
                          sType2   , // 조건  1:전체 ,2:적용중 ,3:종료
                          sFromdate, // 조회시작일
                          sTodate  , // 조회종료일
                          sPatno   , // 환자번호
                          sAdmdate   // 입원일자
                          : String) : integer;
      // 환자별 간호계획관리를 저장한다.
      function mdInrpft_save(sPatno   ,               // 환자번호
                             sAdmdate ,                // 입원일자
                             sAppldate,                // 적용일자
                             sAppseqno,                // 적용순번
                             sDiagnocd,                // 간호진단코드
                             sPlancode,                // 간호계획중재코드
                             sEnddate ,                // 종료일자
                             sObjdiag ,                // 객관적자료
                             sSubdiag ,                // 주관적자료
                             sRes     ,                // 평가결과
                             sEditip  ,                // 수정자IP
                             sEditid  ,                // 수정자ID
                             sCausecd ,                // 관련요인
                             sCausenm ,                // 관련요인명
                             sGubun                  // 구분(I:입력,U:수정)
                             : String ) : integer;
      function DeleteInrpft(sType1, sType2, sType3, sType4: string):Integer;

    end;
    // 간호문제마스터
    HmdInrpat = class
      v_Toolcode : Variant ; // 사정도구
      v_Problem  : Variant ; // 간호문제명
      v_Tooltxt  : Variant ; // 간호사정도구
      // 간호문제를 조회한다.
      function mdInrpat_select : integer;
    end;

    // 간호진단별 사정도구
    HmdInrpjt = class
      v_nrplcode  :Variant; // 대분류
      v_nrpmcode  :Variant; // 중분류
      v_diagcode  :Variant; // 진단코드
      v_diagname  :Variant; // 진단명
      // 간호진단별 사정도구조회
      function mdInrpjt_select(sToolcode : string) : integer;
    end;

    // 간호계획 대분류 코드마스타
    HmdInrplt1 = class
     v_Nrplcode  : Variant;     // 간호계획대분류코드
     v_Nrplname  : Variant;     // 간호계획대분류코드명
     function mdInrplt_select :Integer;  // 대분류를 조회한다
    end;

    // 간호계획중분류코드마스타
    HmdInrpmt1 = class
     v_Nrplcode  : Variant;     //* 간호계획대분류코드 */
     v_Nrplname  : Variant;     //* 간호계획대분류코드명 */
     v_Nrpmcode  : Variant;     //* 간호계획중분류코드 */
     v_Nrpmname  : Variant;     //* 간호계획중분류코드명 */
     // 조회
     function mdInrpmt_select(sNrplcode:string):Integer;  // 대분류에 따른 중분류를 조회한다.
   end;
   // 간호계획 진단마스타
   Hmdinrpbt = class
     v_Diagcode  : Variant; // 진단코드
     v_Diagname  : Variant; // 진단명
     v_Def       : Variant; // 진단정의
     v_Charact   : Variant; // 환자의특성
     // 대중분류에따른 진단명
     function mdinrpbt_select(sNrpcode ,   // 대분류
                              sNrpmcode,   // 중분류
                              sDiagcode    // 진단코드
                              : String) :Integer;
   end;
   // 간호진단별 관련요인
   Hmdinrpet = class
     v_causecd  : Variant;  // 관련요인코드
     v_causenm  : Variant;  // 관련요인명
     // 대중분류및 진단코드별로 관련요인을 조회
     function mdinrpet_select(sNrpcode ,   // 대분류
                              sNrpmcode,   // 중분류
                              sDiagcode    // 진단코드
                              : String) :Integer;
   end;
   // 혈액종양내과업무일자
   Hmdbmdrmt = class
     v_gubun    : Variant;
     v_sDate    : Variant;
     v_rsvcd    : Variant;
     v_sItem1   : Variant; //   항목1  1 : 입원환자병동수 2 : Port IR  3: 회의 Conf';
     v_sItem2   : Variant; //   항목2  1 : 입원환자ICU수  2 : Chemo    3: 회의 기타내부';
     v_sItem3   : Variant; //   항목3  1 : BM건수         2 : S.O      3: 회의 기타외부';
     v_sItem4   : Variant; //   항목4  1 : 투약수정건수   2 : MNG      3: 간호사 교육 원내교육회수';
     v_sItem5   : Variant; //   항목5  1 : 투약수정       2 : ADM      3: 간호사 교육 원내교육명';
     v_sItem6   : Variant; //   항목6  1 : 추가투약       2 : CBC중 N  3: 간호사 교육 간호학생';
     v_sItem7   : Variant; //   항목7  1 : 검사의뢰       2 : S.E Y    3: 간호사 교육 기타';
     v_sItem8   : Variant; //   항목8  1 : dysfunction    2 : S.E N    3: 연구참여 ';
     v_sItem9   : Variant; //   항목9  1 : S.0            2 : 소견서   3: 연구참여 SAMPLE 신환 Lung';
     v_sItem10  : Variant; //   항목10 1 : SHEET검토1회   2 : 진단서   3: 연구참여 SAMPLE 신환 Other'
     v_sItem11  : Variant; //   항목11 1 : SHEET검토2회   2 : 의무기록 3: 연구참여 SAMPLE 구환';
     v_sItem12  : Variant; //   항목12 1 : SHEET검토3회   2 : 기타     3: 연구참여 Piture';
     v_sItem13  : Variant; //   항목13 2 : 외부자료 3: 연구참여 DATA관리 저장';
     v_sItem14  : Variant; //   항목14 3: 연구참여 DATA관리 검색 ';
     v_sItem15  : Variant; //   항목15 3: 연구참여 DATA관리 요청 ';
     v_sItem16  : Variant; //   항목16 3: 기타 운영업무          ';
     v_sItem17  : Variant; //   항목17 3: 기타 교육자료          ';
     v_sItem18  : Variant; //   항목18 3: 기타 자문 진료진 타과  ';
     v_sItem19  : Variant; //   항목19 3: 기타 자문 진료진 보과  ';
     v_sItem20  : Variant; //   항목20 3: 기타 자문 간호부       ';
     v_sItem21  : Variant; //   항목21 3: 기타 자문 기타부서     ';
     v_sItem22  : Variant; //   항목22 ';
     v_sItem23  : Variant; //   항목23 ';
     v_sItem24  : Variant; //   항목24 ';
     v_sItem25  : Variant; //   ITEM25  */
     v_sGubun   : Variant; //   'SUB 구분 : 1 중환자실 입원환자,2: Consut,3: EDU/CTx Start,4: Change,5:CTx End,6:상담';
     v_sSeqno   : Variant; //   순번 */
     v_ssItem1  : Variant; //   1:환자번호,2:진료과  ,3:환자번호,4:환자번호,5:환자번호,6:상담자  ';*/
     v_ssItem2  : Variant; //   1:환자명  ,2:환자번호,3:환자명  ,4:환자명  ,5:환자명  ,6:싱담구분';*/
     v_ssItem3  : Variant; //   2:환자명,3:진단명,5:진단명 ,6:상담자명';                           */
     v_ssItem4  : Variant; //   2:진단명,3:Regimen,4:바뀐이유,5:Regimen,6:상담내용';               */
     v_ssItem5  : Variant; //   3:소요시간,5:소요시간,6:소요시간';                                 */
     v_ssItem6  : Variant; //
     v_ssItem7  : Variant; //
     v_ssItem8  : Variant; //
     v_ssItem9  : Variant; //
     v_ssItem10 : Variant; //
     function mdbmdrmt_select(sDate ,  // 일자
                              sRsvcd   // 구분자 (1:입원,2:외래,3:기타)   */
                              : String;
                              var
                              iRow : integer) : integer;

     function mdbmdrmt_tot_select(sFromdate ,  // 일자
                                  sTodate      // 구분자 (1:입원,2:외래,3:기타)   */
                                  : String
                                  ) : integer;
     function mdbmdrdt_select(sFromdate ,  // 일자
                              sTodate   ,
                              sRsvcd    ,  // 구분자 (1:입원,2:외래,3:기타)   */
                              sGubun
                              : String
                              ) : integer;
     function mdbmdrmt_insert(sDate  ,  // 일자
                              sRsvcd ,  // 구분자 (1:입원,2:외래,3:기타)   */
                              sItem1 ,
                              sItem2 ,
                              sItem3 ,
                              sItem4 ,
                              sItem5 ,
                              sItem6 ,
                              sItem7 ,
                              sItem8 ,
                              sItem9 ,
                              sItem10,
                              sItem11,
                              sItem12,
                              sItem13,
                              sItem14,
                              sItem15,
                              sItem16,
                              sItem17,
                              sItem18,
                              sItem19,
                              sItem20,
                              sItem21,
                              sItem22,
                              sItem23,
                              sItem24,
                              sItem25,
                              sUserid,
                              sUserip
                              : String;
                              iRow    : integer
                              ) : integer;

   end;

   //외래수가변동대상자조회. KimDaeYong 2017-06-30
   HapPaexmt = class
     sPatno  	: Variant;
     sPatname   : Variant;  
     sMeddate   : Variant;  
     sOrddate   : Variant;
     sOrdseqno  : Variant;
     sOrddr     : Variant;
     sHopedate  : Variant;
     sExecdate  : Variant;
     sOrdcd     : Variant;
     sOrdname   : Variant;
     sRcpstat   : Variant;
     sCheckyn   : Variant;
     sReordyn   : Variant;
     sRercpdate : Variant;  
     sRcpcheck  : Variant;
     sExecyn    : Variant;  
     sEditid    : Variant;  
     sEditip    : Variant;

     function List1(inHopedate, inMeddept, inOrddr:string):integer;
     function Update1(iCnt:integer):integer;
   end;

   //연명의료관리. KimDaeYong 2019-05-21
   //MDCLASS1이 양이 많아서 이동. KimDaeYong 2020-06-29
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
     sGorgtdate    : Variant;
     sPlanyn       : Variant;
     sPlandate     : Variant;
     sPlanid       : Variant;
     sPlanname     : Variant;
     sEditid       : Variant;
     sEditip       : Variant;
     sGovm2yn      : Variant;

    function List1(inFlag, inPatno, inRgtdate, inFromdate, inTodate, inGubun : string):Integer;
    function Insert1(inFlag, inEditid, inEditip : string):Integer;
   end;

   //수혈체크리스트. KimDaeYong 2020-08-25
   HmdBldckt = class
     sPatno        : Variant;
     sPatname      : Variant;
     sMeddate      : Variant;
     sOrddate      : Variant;
     sOrdcd        : Variant;
     sRecno        : Variant;
     sOrdname      : Variant;
     sAppryn       : Variant;
     sOrddept      : Variant;
     sOrddeptnm    : Variant;
     sOrddr        : Variant;
     sOrddrnm      : Variant;
     sLossbld      : Variant;
     sHemolevel    : Variant;
     sHemolevel21  : Variant;
     sHemolevel22  : Variant;
     sHemolevel23  : Variant;
     sHemolevel24  : Variant;
     sHemolevel25  : Variant;
     sHemolevel26  : Variant;
     sHemolevel27  : Variant;
     sOpbld        : Variant;
     sOthtext      : Variant;
     sRctexmdate   : Variant;
     sRctexmrslt   : Variant;
     sBldcurr      : Variant;
     sBldsdeffc    : Variant;
     sBldsdeffctxt : Variant;
     sRecdate      : Variant;
     sFstrecdate   : Variant;
     sRsltdate     : Variant;
     sRslt         : Variant;
     sEditid       : Variant;
     sEditip       : Variant;

    function Insert1:Integer;
    function Select1(inFlag, inPatno, inMeddate, inOrddate, inBldcd, inRecno : string):Integer;
   end;

   //항암부작용평가. 보험(백미라,심선자)요청.  KimDaeYong 2021-03-10
   //모든 암 환자에 대해 부작용평가를 기록한다.
  Hmdcanevt = class
     //공통
     sPatno           : Variant;
     sPatname         : Variant;
     sMeddate         : Variant;
     sPatsect         : Variant;
     sDiagcd          : Variant;
     sDiagname        : Variant;
     sCanmthd         : Variant;
     sCycleno         : Variant;
     sReacdate        : Variant;
     sBsa             : Variant;
     sDosage          : Variant;
     sResponse        : Variant;
     sHb              : Variant;
     sAnc             : Variant;
     sPlt             : Variant;
     sFebril          : Variant;
     sFever           : Variant;
     sAst             : Variant;
     sBilir           : Variant;
     sFatig           : Variant;
     sAnor            : Variant;
     sNaus            : Variant;
     sVamit           : Variant;
     sDiarr           : Variant;
     sMucos           : Variant;
     sRash            : Variant;
     sPerip           : Variant;
     sOthtext         : Variant;
     sRecdate         : Variant;
     sRecid           : Variant;
     sRecname         : Variant;
     sEditid          : Variant;
     sEditip          : Variant;

     function Insert1 : integer;
     function Select1(inPatno,inMeddate,inPatsect:string) : integer;
  end;

  //완화의료진료기록지.  KimDaeYong 2021-11-18
  //초기기록지(MDDHOSFT), 재상담기록지(MDDHOSRT), 돌봄기록지(MDDHOSLT)를 하나의 클래스로 이용한다.
  HmdDhosft = class
     //공통
     sPatno        : Variant;
     sPatname      : Variant;
     sConsdate     : Variant;
     sSeqno        : Variant;
     sConstime     : Variant;
     sTarget       : Variant;
     sTargetrel    : Variant;
     sBasis        : Variant;
     sIdenpatyn    : Variant;
     sIdengardyn   : Variant;
     sRecopatyn    : Variant;
     sRecogardyn   : Variant;
     sConscious    : Variant;
     sMedhistory   : Variant;
     sConscont     : Variant;
     sProblist     : Variant;
     sCareplan     : Variant;
     sFrstdate     : Variant;
     sRecdate      : Variant;
     sConsdr       : Variant;
     sBasisoth     : Variant;
     sEvalpain     : Variant;
     sEvalresp     : Variant;
     sEvalrespsec  : Variant;
     sEvalvomit    : Variant;
     sEvaldeli     : Variant;
     sRecopat      : Variant;
     sRecofam      : Variant;
     sCare         : Variant;
     sCareoth      : Variant;
     sConsdrnm     : Variant;
     sAdmdate      : Variant;
     sSexAge       : Variant;
     sEditid       : Variant;
     sEditip       : Variant;

     sGubun        : Variant;
     sGubunnm      : Variant;

     sSignData     : Variant;              // SONGLIM_THOMA  수정
     sSerialNo     : Variant;
     sSubjectDN    : Variant;

     function DHOSF_L1(inPatno:string) : integer;
     function DHOSF_S1(inGubun, inPatno, inConsdate, inSeqno:string) : integer;
     function DHOSF_I1(inGubun, inSave, sSignData, sSerialNo, sSubjectDN :string) : integer;
  end;

  // 기록지 조회
  Hmdrecott = class   // 기록지조회(First) OhJunSu 2022-03-07

   sInDate	 : Variant;  // 내원일시

   function ListPatMedRecord(PatNo,Locate,VstDate:String):Integer;
   
  end;

  //기록지 조회 및 업데이트   OhJunSu 2022-03-07
  Hmdrecodt = class
     //공통
     sInPattype    : Variant; // 외래 / 병동/  응급
     sInResearch   : Variant; // me_recod_l1 구분자 (cf 현재  1밖에 없음)
     sPatno        : Variant;
     sMeddate      : Variant;
     sSeqno        : Variant;
     sRecdate      : Variant;
     sEditid       : Variant;
     sEditip       : Variant;

     sAcpdate      : Variant;
     sRecgubun     : Variant;
     sRecgubuncd   : Variant; //테이블 구분 코드(기록지가 참조하는 테이블)
     sfrmgubuncd   : Variant; //기록지 구분 코드(서식(기록지)구분 코드)
     
     sPk1          : Variant;
     sPk2          : Variant;
     sPk3          : Variant;
     sPk4          : Variant;
     sPk5          : Variant;
     
     sUgdtitle     : Variant;
     sTemp1        : Variant;
     sTemp2        : Variant;
     sTemp3        : Variant;
     sTemp4        : Variant;
     sTemp5        : Variant;
     
     O_sResult1    : Variant;
     O_sResult2    : Variant;
     O_sResult3    : Variant;
     O_sResult4    : Variant;
     O_sResult5    : Variant;
     O_sResult6    : Variant;
     O_sResult7    : Variant;
     O_sResult8    : Variant;
     O_sResult9    : Variant;
     O_sResult10   : Variant;
     O_sResult11    : Variant;
     O_sResult12    : Variant;
     O_sResult13    : Variant;
     O_sResult14    : Variant;
     O_sResult15    : Variant;
     O_sResult16    : Variant;
     O_sResult17    : Variant;
     O_sResult18    : Variant;
     O_sResult19    : Variant;
     O_sResult20   : Variant;
     O_sResult21    : Variant;
     O_sResult22    : Variant;
     O_sResult23    : Variant;
     O_sResult24    : Variant;
     O_sResult25    : Variant;
     O_sResult26    : Variant;
     O_sResult27    : Variant;
     O_sResult28    : Variant;
     O_sResult29    : Variant;
     O_sResult30    : Variant;
     O_sResult31    : Variant;
     O_sResult32    : Variant;
     O_sResult33    : Variant;
     O_sResult34    : Variant;
     O_sResult35    : Variant;
     O_sResult36    : Variant;
     O_sResult37    : Variant;
     O_sResult38    : Variant;
     O_sResult39    : Variant;
     O_sResult40    : Variant;
     O_sResult41    : Variant;
     O_sResult42    : Variant;
     O_sResult43    : Variant;
     O_sResult44    : Variant;
     O_sResult45    : Variant;
     O_sResult46    : Variant;
     O_sResult47    : Variant;
     O_sResult48    : Variant;
     O_sResult49    : Variant;
     O_sResult50    : Variant;
     O_sResult51    : Variant;
     O_sResult52    : Variant;
     O_sResult53    : Variant;
     O_sResult54    : Variant;
     O_sResult55    : Variant;
     O_sResult56    : Variant;
     O_sResult57    : Variant;
     O_sResult58    : Variant;
     O_sResult59    : Variant;
     O_sResult60    : Variant;

     function ListPatRecord(sInResearch,sPatno,sMeddate: string): integer;
     function ListRecordPk(sRecgubuncd,sInPatno,sInMeddate: string): integer;
     function ListRecordData(sRecgubuncd:string; sInPatno:string; sPk2:string; sPk3:string =''; sPk4:string =''; sPk5:string =''): integer;

     function UpdateRecLCYN(iCnt:integer) : integer;  //OhJunSu 2022-05-30
  end;



var
   mdInrpft1 : HmdInrpft1; // 환자별 간호계획관리
   mdInrpat  : HmdInrpat;  // 간호문제마스터
   mdInrpjt  : HmdInrpjt;  // 간호진단별 사정도구조회
   mdInrplt1 : HmdInrplt1; // HmdInrplt  간호계획대분류코드마스타                                     //
   mdInrpmt1 : HmdInrpmt1; // 간호계획중분류코드마스타
   mdinrpbt  : Hmdinrpbt;  // 간호계획 진단마스타
   mdinrpet  : Hmdinrpet;  // 간호진단별 관련요인
   mdbmdrmt  : Hmdbmdrmt;  // 혈액종양내과업무일지
   apPaexmt  : HapPaexmt;  // 외래수가변동재처방대상자. KimDaeYong 2017-06-30
   mdDnrrgt  : HmdDnrrgt;  // 연명의료관리. KimDaeYong 2019-05-21
   mdBldckt  : HmdBldckt;  // 수혈체크리스트. KimDaeYong 2020-08-25
   mdCanevt  : Hmdcanevt;  // 항암부작용평가. KimDaeYong 2021-03-10
   mdDhosft  : Hmddhosft;  // 완화의료진료기록지. KimDaeYong 2021-11-18
   mdrecodt  : Hmdrecodt;  // 기록지조회 OhJunSu 2022-03-07
   mdrecott  : Hmdrecott;  // 기록지조회(First) OhJunSu 2022-03-07

implementation

uses TuxCom, TuxMsg, VarCom;

//////////////////////
// mdInrpft 환자별 간호계획관리
/////////////////////

// 간호계획 분류코드 조회 (실시중재보기 및 중재안보기 (전체,적용,종료))
function HmdInrpft1.NrplInform(sType1   , // 조건  1: 실시중재보기 , 2: 실시중재보기 안함
                               sType2   , // 조건  1:전체 ,2:적용중 ,3:종료
                               sFromdate, // 조회시작일
                               sTodate  , // 조회종료일
                               sPatno   , // 환자번호
                               sAdmdate   // 입원일자
                               : String) : integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6');
   SetFldValue(0, [sType1   ,sType2   ,sFromdate,sTodate  ,sPatno   ,sAdmdate]);
   if (txGetF('MD_INRPF_L2')) then begin //Tuxedo Service Call
      GetFldVar('S_STRING1'  ,v_Nrplcode);  // 간호계획대분류코드
      GetFldVar('S_STRING2'  ,v_Nrplname);  // 간호계획대분류코드명
      GetFldVar('S_STRING3'  ,v_Nrpmcode);  // 간호계획중분류코드
      GetFldVar('S_STRING4'  ,v_Nrpmname);  // 간호계획중분류코드명
      GetFldVar('S_STRING5'  ,v_Diagcode);  // 간호계획진단코드
      GetFldVar('S_STRING6'  ,v_Diagname);  // 간호계획진단명
      GetFldVar('S_STRING7'  ,v_Plancode);  // 간호계획중재코드
      GetFldVar('S_STRING8'  ,v_Planname);  // 간호계획중재코드명
      GetFldVar('S_STRING9'  ,v_Diagnocd);  // 간호진단코드(구분을 위해조회한다)
      GetFldVar('S_STRING10' ,v_Appldate);  // 적용일자
      GetFldVar('S_STRING11' ,v_Enddate );  // 종료일자
      GetFldVar('S_STRING12' ,v_Objdiag );  // 객관적자료
      GetFldVar('S_STRING13' ,v_Subdiag );  // 주관적자료
      GetFldVar('S_STRING14' ,v_Res     );  // 평가결과
      GetFldVar('S_STRING15' ,v_Causecd );  // 관련요인코드
      GetFldVar('S_STRING16' ,v_Causenm );  // 관련요인명칭
      GetFldVar('S_STRING17' ,v_Act     );  // Acting 여부
      GetFldVar('S_STRING18' ,v_Appseqno);  // 적용순번
      Result := GetRecordCnt('S_STRING1'); //Service를 수행하고 FML Buffer에 PUT된 Record수
      txFree;
   end;
end;

// 환자별 간호계획관리를 저장한다.
function HmdInrpft1.mdInrpft_save(sPatno    ,      // 환자번호
                                  sAdmdate  ,      // 입원일자
                                  sAppldate ,      // 적용일자
                                  sAppseqno ,      // 적용순번
                                  sDiagnocd ,      // 간호진단코드
                                  sPlancode ,      // 간호계획중재코드
                                  sEnddate  ,      // 종료일자
                                  sObjdiag  ,      // 객관적자료
                                  sSubdiag  ,      // 주관적자료
                                  sRes      ,      // 평가결과
                                  sEditip   ,      // 수정자IP
                                  sEditid   ,      // 수정자ID
                                  sCausecd  ,      // 관련요인
                                  sCausenm  ,      // 관련요인명
                                  sGubun           // 구분(I:입력,U:수정)
                                  : String ) : integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc;

   //FML Buffer Field Assign
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6;S_TYPE7;S_TYPE8;'+
              'S_TYPE9;S_TYPE10;S_TYPE11;S_TYPE12;S_TYPE13;S_TYPE14;S_TYPE15');

   SetFldValue(0,[sPatno  ,sAdmdate,sAppldate,sAppseqno,sDiagnocd,sPlancode,sEnddate,sObjdiag,
                  sSubdiag,sRes    ,sEditip  ,sEditid  ,sCausecd ,sCausenm ,sGubun    ]);
   //Tuxedo Service Call
   if (txPutF('MD_INRPF_I1')) then
   begin
      Result := 1;
      txFree;
   end;
end;

//간호계획 삭제
function HmdInrpft1.DeleteInrpft(sType1, sType2, sType3, sType4: string):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
   SetFldValue(0,[sType1,sType2,sType3,sType4]);
   if (txPutF('MD_INRPF_D1')) then begin //Tmax Service Call
      Result := 1;
      txFree;
   end;
end;

/////////////////
// 간호문제마스터
////////////////
function HmdInrpat.mdInrpat_select : integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   if (txGetF('MD_INRAT_L1')) then //Tuxedo Service Call
   begin
      GetFldVar('S_STRING1'  ,v_Toolcode);
      GetFldVar('S_STRING2'  ,v_Problem );
      GetFldVar('S_STRING3'  ,v_Tooltxt );
      Result := GetRecordCnt('S_STRING1'); //Service를 수행하고 FML Buffer에 PUT된 Record수
      txFree;
   end;
end;

// 간호진단별 사정도구
function HmdInrpjt.mdInrpjt_select(sToolcode : string) : integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1');
   SetFldValue(0, [sToolcode]);
   if (txGetF('MD_INRJT_L1')) then //Tuxedo Service Call       md_inrjt_l1
   begin
      GetFldVar('S_STRING1'  ,v_nrplcode); // 대분류
      GetFldVar('S_STRING2'  ,v_nrpmcode); // 중분류
      GetFldVar('S_STRING3'  ,v_diagcode); // 진단코드
      GetFldVar('S_STRING4'  ,v_diagname); // 진단명
      Result := GetRecordCnt('S_STRING1'); //Service를 수행하고 FML Buffer에 PUT된 Record수
      txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
//    HmdInrplt  간호계획대분류코드마스타                                     //
////////////////////////////////////////////////////////////////////////////////
// 대분류명 전체를 조회한다.

function HmdInrplt1.mdInrplt_select :Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   if (txGetF('MD_INRPL_L2')) then begin //Tuxedo Service Call
      GetFldVar('S_STRING1'  ,v_Nrplcode);
      GetFldVar('S_STRING2'  ,v_Nrplname);
      Result := GetRecordCnt('S_STRING1'); //Service를 수행하고 FML Buffer에 PUT된 Record수
      txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
//    HmdInrpmt  간호계획중분류코드마스타                                     //
////////////////////////////////////////////////////////////////////////////////
// 대분류에 따른 중분류를 조회한다.
function HmdInrpmt1.mdInrpmt_select(sNrplcode:string):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1');
   SetFldValue(0, [sNrplcode]);

   if (txGetF('MD_INRPM_L1')) then begin //Tuxedo Service Call
      GetFldVar('S_STRING1'  ,v_Nrplcode);
      GetFldVar('S_STRING2'  ,v_Nrpmcode);
      GetFldVar('S_STRING3'  ,v_Nrpmname);

      Result := GetRecordCnt('S_STRING1'); //Service를 수행하고 FML Buffer에 PUT된 Record수
      txFree;
   end;
end;

// 간호계획 진단마스타
function Hmdinrpbt.mdinrpbt_select(sNrpcode ,   // 대분류
                                   sNrpmcode,   // 중분류
                                   sDiagcode    // 진단코드
                                  : String) :Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');
   SetFldValue(0, [sNrpcode ,   // 대분류
                   sNrpmcode,   // 중분류
                   sDiagcode]); // 진단코드 ''이면 대중분류에의한 진단명을 가져온다.
   if (txGetF('MD_INRPB_L1')) then begin //Tuxedo Service Call
      GetFldVar('S_STRING1'  ,v_Diagcode);   // 진단코드
      GetFldVar('S_STRING2'  ,v_Diagname);   // 진단명
      GetFldVar('S_STRING3'  ,v_Def     );   // 진단정의
      GetFldVar('S_STRING4'  ,v_Charact );   // 환자의특성
      Result := GetRecordCnt('S_STRING1'); //Service를 수행하고 FML Buffer에 PUT된 Record수
      txFree;
   end;
end;

// 간호진단별 관련요인
function Hmdinrpet.mdinrpet_select(sNrpcode ,   // 대분류
                                   sNrpmcode,   // 중분류
                                   sDiagcode    // 진단코드
                                         : String) :Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');
   SetFldValue(0, [sNrpcode ,   // 대분류
                   sNrpmcode,   // 중분류
                   sDiagcode]); // 진단코드
   if (txGetF('MD_INRET_L1')) then
   begin //Tuxedo Service Call
      GetFldVar('S_STRING1'  ,v_causecd); // 관련요인코드
      GetFldVar('S_STRING2'  ,v_causenm); // 관련요인명
      Result := GetRecordCnt('S_STRING1'); //Service를 수행하고 FML Buffer에 PUT된 Record수
      txFree;
   end;
end;
//////////////////////////////////////////
// 혈액종양내과 업무일자
//////////////////////////////////

// 혈액종양내과 업무일지를 조회한다.
function Hmdbmdrmt.mdbmdrmt_select(sDate ,  // 일자
                                   sRsvcd   // 구분자 (1:입원,2:외래,3:기타)   */
                                  : String;
                                  var
                                  iRow : integer) : integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2');
   SetFldValue(0, [sDate ,  // 일자
                   sRsvcd ]); // 구분자 (1:입원,2:외래,3:기타)   */
   if (txGetF('MD_BMDRM_L1')) then
   begin //Tuxedo Service Call
      GetFldVar('S_STRING1'  ,v_sItem1  ); // 관련요인코드
      GetFldVar('S_STRING2'  ,v_sItem2  ); // 관련요인코드
      GetFldVar('S_STRING3'  ,v_sItem3  ); // 관련요인코드
      GetFldVar('S_STRING4'  ,v_sItem4  ); // 관련요인코드
      GetFldVar('S_STRING5'  ,v_sItem5  ); // 관련요인코드
      GetFldVar('S_STRING6'  ,v_sItem6  ); // 관련요인코드
      GetFldVar('S_STRING7'  ,v_sItem7  ); // 관련요인코드
      GetFldVar('S_STRING8'  ,v_sItem8  ); // 관련요인코드
      GetFldVar('S_STRING9'  ,v_sItem9  ); // 관련요인코드
      GetFldVar('S_STRING10'  ,v_sItem10 ); // 관련요인코드
      GetFldVar('S_STRING11'  ,v_sItem11 ); // 관련요인코드
      GetFldVar('S_STRING12'  ,v_sItem12 ); // 관련요인코드
      GetFldVar('S_STRING13'  ,v_sItem13 ); // 관련요인코드
      GetFldVar('S_STRING14'  ,v_sItem14 ); // 관련요인코드
      GetFldVar('S_STRING15'  ,v_sItem15 ); // 관련요인코드
      GetFldVar('S_STRING16'  ,v_sItem16 ); // 관련요인코드
      GetFldVar('S_STRING17'  ,v_sItem17 ); // 관련요인코드
      GetFldVar('S_STRING18'  ,v_sItem18 ); // 관련요인코드
      GetFldVar('S_STRING19'  ,v_sItem19 ); // 관련요인코드
      GetFldVar('S_STRING20'  ,v_sItem20 ); // 관련요인코드
      GetFldVar('S_STRING21'  ,v_sItem21 ); // 관련요인코드
      GetFldVar('S_STRING22'  ,v_sItem22 ); // 관련요인코드
      GetFldVar('S_STRING23'  ,v_sItem23 ); // 관련요인코드
      GetFldVar('S_STRING24'  ,v_sItem24 ); // 관련요인코드
      GetFldVar('S_STRING25'  ,v_sItem25 ); // 관련요인코드
      GetFldVar('S_STRING26'  ,v_Gubun  ); // 관련요인코드
      GetFldVar('S_STRING27'  ,v_sSeqno  ); // 관련요인코드
      GetFldVar('S_STRING28'  ,v_ssItem1 ); // 관련요인코드
      GetFldVar('S_STRING29'  ,v_ssItem2 ); // 관련요인코드
      GetFldVar('S_STRING30'  ,v_ssItem3 ); // 관련요인코드
      GetFldVar('S_STRING31'  ,v_ssItem4 ); // 관련요인코드
      GetFldVar('S_STRING32'  ,v_ssItem5 ); // 관련요인코드
      GetFldVar('S_STRING33'  ,v_ssItem6 ); // 관련요인코드
      GetFldVar('S_STRING34'  ,v_ssItem7 ); // 관련요인코드
      GetFldVar('S_STRING35'  ,v_ssItem8 ); // 관련요인코드
      GetFldVar('S_STRING36'  ,v_ssItem9 ); // 관련요인코드
      GetFldVar('S_STRING37'  ,v_ssItem10); // 관련요인코드
      iRow := GetRecordCnt('S_STRING26'); //Service를 수행하고 FML Buffer에 PUT된 Record수
      Result := GetRecordCnt('S_STRING1'); //Service를 수행하고 FML Buffer에 PUT된 Record수
   end;
end;


// 혈액종양내과 업무일지를 통계를조회한다.
function Hmdbmdrmt.mdbmdrmt_tot_select(sFromdate ,  // 일자
                                       sTodate      // 구분자 (1:입원,2:외래,3:기타)   */
                                       : String
                                       ) : integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2');
   SetFldValue(0, [sFromdate ,  // 일자
                   sTodate ]); // 구분자 (1:입원,2:외래,3:기타)   */
   if (txGetF('MD_BMDRM_L2')) then
   begin //Tuxedo Service Call
      GetFldVar('S_STRING1'   ,v_Rsvcd); // 관련요인코드
      GetFldVar('S_STRING2'   ,v_sItem1); // 관련요인코드
      GetFldVar('S_STRING3'   ,v_sItem2); // 관련요인코드
      GetFldVar('S_STRING4'   ,v_sItem3); // 관련요인코드
      GetFldVar('S_STRING5'   ,v_sItem4); // 관련요인코드
      GetFldVar('S_STRING6'   ,v_sItem5); // 관련요인코드
      GetFldVar('S_STRING7'   ,v_sItem6); // 관련요인코드
      GetFldVar('S_STRING8'   ,v_sItem7); // 관련요인코드
      GetFldVar('S_STRING9'   ,v_sItem8); // 관련요인코드
      GetFldVar('S_STRING10'  ,v_sItem9); // 관련요인코드
      GetFldVar('S_STRING11'  ,v_sItem10); // 관련요인코드
      GetFldVar('S_STRING12'  ,v_sItem11); // 관련요인코드
      GetFldVar('S_STRING13'  ,v_sItem12); // 관련요인코드
      GetFldVar('S_STRING14'  ,v_sItem13); // 관련요인코드
      GetFldVar('S_STRING15'  ,v_sItem14); // 관련요인코드
      GetFldVar('S_STRING16'  ,v_sItem15); // 관련요인코드
      GetFldVar('S_STRING17'  ,v_sItem16); // 관련요인코드
      GetFldVar('S_STRING18'  ,v_sItem17); // 관련요인코드
      GetFldVar('S_STRING19'  ,v_sItem18); // 관련요인코드
      GetFldVar('S_STRING20'  ,v_sItem19); // 관련요인코드
      GetFldVar('S_STRING21'  ,v_sItem20); // 관련요인코드
      GetFldVar('S_STRING22'  ,v_sItem21); // 관련요인코드
      GetFldVar('S_STRING23'  ,v_sItem22); // 관련요인코드
      GetFldVar('S_STRING24'  ,v_sItem23); // 관련요인코드
      GetFldVar('S_STRING25'  ,v_sItem24); // 관련요인코드
      GetFldVar('S_STRING26'  ,v_sItem25); // 관련요인코드
      GetFldVar('S_STRING27'  ,v_ssItem1); // 관련요인코드
      GetFldVar('S_STRING28'  ,v_ssItem2); // 관련요인코드
      GetFldVar('S_STRING29'  ,v_ssItem3); // 관련요인코드
      GetFldVar('S_STRING30'  ,v_ssItem4); // 관련요인코드
      GetFldVar('S_STRING31'  ,v_ssItem5); // 관련요인코드
      GetFldVar('S_STRING32'  ,v_ssItem6); // 관련요인코드
      Result := GetRecordCnt('S_STRING1'); //Service를 수행하고 FML Buffer에 PUT된 Record수
   end;
end;

function Hmdbmdrmt.mdbmdrdt_select(sFromdate ,  // 일자
                                   sTodate   ,
                                   sRsvcd    ,  // 구분자 (1:입원,2:외래,3:기타)   */
                                   sGubun
                                   : String
                                   ) : integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
   SetFldValue(0, [sFromdate ,  // 일자
                   sTodate   ,
                   sRsvcd    ,  // 구분자 (1:입원,2:외래,3:기타)   */
                   sGubun ]); 
   if (txGetF('MD_BMDRM_L3')) then
   begin //Tuxedo Service Call

      GetFldVar('S_STRING1'  ,v_sDate   ); // 관련요인코드
      GetFldVar('S_STRING2'  ,v_ssItem1 ); // 관련요인코드
      GetFldVar('S_STRING3'  ,v_ssItem2 ); // 관련요인코드
      GetFldVar('S_STRING4'  ,v_ssItem3 ); // 관련요인코드
      GetFldVar('S_STRING5'  ,v_ssItem4 ); // 관련요인코드
      GetFldVar('S_STRING6'  ,v_ssItem5 ); // 관련요인코드
      GetFldVar('S_STRING7'  ,v_ssItem6 ); // 관련요인코드
      GetFldVar('S_STRING8'  ,v_ssItem7 ); // 관련요인코드
      GetFldVar('S_STRING9'  ,v_ssItem8 ); // 관련요인코드
      GetFldVar('S_STRING10'  ,v_ssItem9 ); // 관련요인코드
      GetFldVar('S_STRING11'  ,v_ssItem10); // 관련요인코드
      Result := GetRecordCnt('S_STRING1'); //Service를 수행하고 FML Buffer에 PUT된 Record수
   end;
end;


function Hmdbmdrmt.mdbmdrmt_insert(sDate  ,  // 일자
                                   sRsvcd ,  // 구분자 (1:입원,2:외래,3:기타)   */
                                   sItem1 ,
                                   sItem2 ,
                                   sItem3 ,
                                   sItem4 ,
                                   sItem5 ,
                                   sItem6 ,
                                   sItem7 ,
                                   sItem8 ,
                                   sItem9 ,
                                   sItem10,
                                   sItem11,
                                   sItem12,
                                   sItem13,
                                   sItem14,
                                   sItem15,
                                   sItem16,
                                   sItem17,
                                   sItem18,
                                   sItem19,
                                   sItem20,
                                   sItem21,
                                   sItem22,
                                   sItem23,
                                   sItem24,
                                   sItem25,
                                   sUserid,
                                   sUserip
                                   : String;
                                   iRow    : integer
                                   ) : integer;
var
   i1 ,i2 : integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc;

   // FML Buffer Field Assign
   SetFldName('S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;'+
              'S_STRING6;S_STRING7;S_STRING8;S_STRING9;S_STRING10;'+
              'S_STRING11;S_STRING12;S_STRING13;S_STRING14;S_STRING15;'+
              'S_STRING16;S_STRING17;S_STRING18;S_STRING19;S_STRING20;'+
              'S_STRING21;S_STRING22;S_STRING23;S_STRING24;S_STRING25;'+
              'S_STRING26;S_STRING27;S_STRING39;S_STRING40');
   SetFldValue(0,[sDate  ,sRsvcd ,sItem1 ,sItem2 ,sItem3,
                  sItem4 ,sItem5 ,sItem6 ,sItem7 ,sItem8 ,
                  sItem9 ,sItem10,sItem11,sItem12,sItem13,
                  sItem14,sItem15,sItem16,sItem17,sItem18,
                  sItem19,sItem20,sItem21,sItem22,sItem23,
                  sItem24,sItem25,sUserid,sUserip
                 ]);
   SetFldName('S_STRING28;S_STRING29;S_STRING30;S_STRING31;S_STRING32;' +
              'S_STRING33;S_STRING34;S_STRING35;S_STRING36;S_STRING37;' +
              'S_STRING38');
   for i1 := 0 to iRow - 1 do
   begin
      SetFldValue(i1,[v_sGubun  [i1],v_ssItem1[i1],v_ssItem2[i1],v_ssItem3[i1],v_ssItem4[i1],
                      v_ssItem5 [i1],v_ssItem6[i1],v_ssItem7[i1],v_ssItem8[i1],v_ssItem9[i1],
                      v_ssItem10[i1]
                     ]);
   end;
   // Tuxedo Service Call
   if (txPutF('MD_BMDRM_I1')) then
   begin
      Result := 1;
      txFree;
   end;
end;

//수가변경대상자조회. KimDaeYong 2017-06-30
function HapPaexmt.List1(inHopedate, inMeddept, inOrddr:string) : integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');
   SetFldValue(0, [inHopedate, inMeddept, inOrddr]);

   if (txGetF('MD_PAEXM_L1')) then
   begin
      GetFldVar('S_STRING1'   ,  sPatno		);
      GetFldVar('S_STRING2'   ,  sPatname	);
      GetFldVar('S_STRING3'   ,  sMeddate	);
      GetFldVar('S_STRING4'   ,  sOrddate	);
      GetFldVar('S_STRING5'   ,  sHopedate	);
      GetFldVar('S_STRING6'   ,  sOrdname	);
      GetFldVar('S_STRING7'   ,  sRcpstat	);
      GetFldVar('S_STRING8'   ,  sExecyn	);
      GetFldVar('S_STRING9'   ,  sCheckyn	);
      GetFldVar('S_STRING10'  ,  sReordyn	);
      GetFldVar('S_STRING11'  ,  sRcpcheck	);
      GetFldVar('S_STRING12'  ,  sOrdseqno	);
      GetFldVar('S_STRING13'  ,  sOrdcd		);
      GetFldVar('S_STRING14'  ,  sExecdate	);

      Result := GetRecordCnt('S_STRING1');
   end;
end;

//수가변경대상자 재처방와료. KimDaeYong 2017-06-30
function HapPaexmt.Update1(iCnt:Integer):Integer;
var
   i: integer;
begin
   Result := -1;

   txAlloc;

   SetFldName('S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6');
   for i := 0 to iCnt-1 do
   begin
      SetFldValue(i,[String(sPatno[i]),String(sMeddate[i]),
                     String(sOrddate[i]),String(sOrdseqno[i]),
                     String(sEditid[i]),String(sEditip[i])]);
   end;

   //Tuxedo Service Call
   if (txPutF('MD_PAEXM_U1')) then
   begin
      Result := 1;
      txFree;
   end;
end;

//========================연명의료관리==========================================//
//MDCLASS1이 양이 많아서 이동. KimDaeYong 2020-06-29

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
      GetFldVar32('S_STRING27',sGorgtdate);
      GetFldVar32('S_STRING28',sPlanyn);
      GetFldVar32('S_STRING29',sPlandate);
      GetFldVar32('S_STRING30',sPlanid);
      GetFldVar32('S_STRING31',sPlanname);
      GetFldVar32('S_STRING32',sGovm2yn);

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
              'S_STRING21;S_STRING22;S_STRING23;S_STRING24;S_STRING25;' +
              'S_EDITID;S_EDITIP');

   SetFldValue(0, [inFlag,
                   sPatno, sRgtdate, sJugdyn, sJugddate, sJugdid, sConfyn, sConfdate, sConfid, sExecyn, sExecdate,
                   sExecid, sGovmyn, sGovmdate, sGovmid, sExeccont, sExecoth, sRemark, sCancyn, sCancdate, sCancid,
                   sGorgtdate, sPlanyn, sPlandate, sPlanid, sGovm2yn,
                   inEditid, inEditip]);

   if txPutF('MD_DNRRG_I1') then     //md_dnrrg_i1.pc
   begin
       Result := 1;
       txFree;
   end;
end;

//수혈체크리스트 등록. KimDaeYong 2020-08-25
function HmdBldckt.Insert1:Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6;S_STRING7;S_STRING8;S_STRING9;S_STRING10;' +
              'S_STRING11;S_STRING12;S_STRING13;S_STRING14;S_STRING15;S_STRING16;S_STRING17;S_STRING18;S_STRING19;S_STRING20;' +
              'S_STRING21;S_STRING22;S_STRING23;S_STRING24;S_STRING25;' +
              'S_EDITID;S_EDITIP');

   SetFldValue(0, [sPatno, sMeddate, sOrddate, sOrdcd, sRecno, sAppryn, sOrddept, sLossbld, sHemolevel, sHemolevel21,
                   sHemolevel22, sHemolevel23, sHemolevel24, sHemolevel25, sHemolevel26, sHemolevel27, sOpbld, sOthtext, sRctexmdate, sRctexmrslt,
                   sBldcurr, sBldsdeffc, sBldsdeffctxt, sRecdate, sOrddr,
                   sEditid, sEditip]);

   if txPutF('MD_BLDCK_I1') then     //md_bldck_i1.pc
   begin
       Result := 1;
       txFree;
   end;
end;

//수혈체크리스트 조회. KimDaeYong 2020-08-26
function HmdBldckt.Select1(inFlag, inPatno, inMeddate, inOrddate, inBldcd, inRecno : string):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_CODE1;' +
              'S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5');
   SetFldValue(0,[inFlag,
                  inPatno, inMeddate, inOrddate, inBldcd, inRecno] );

   if (txGetF('MD_BLDCK_S1')) then
   begin
      if inFlag = 'A' then  //기록순번조회
      begin
          GetFldVar('S_STRING1' ,sRecno		    );

          Result := GetRecordCnt('S_STRING1');
          txFree;
      end
      else if inFlag = 'B' then //수혈체크리스트조회
      begin
          GetFldVar('S_STRING1' ,sAppryn		);
          GetFldVar('S_STRING2' ,sOrddept		);  
          GetFldVar('S_STRING3' ,sOrddeptnm		);
          GetFldVar('S_STRING4' ,sOrdcd			);  
          GetFldVar('S_STRING5' ,sOrdname		);
          GetFldVar('S_STRING6' ,sLossbld		);  
          GetFldVar('S_STRING7' ,sHemolevel		);
          GetFldVar('S_STRING8' ,sHemolevel21	);  
          GetFldVar('S_STRING9' ,sHemolevel22	);
          GetFldVar('S_STRING10',sHemolevel23	);  
          GetFldVar('S_STRING11',sHemolevel24	);
          GetFldVar('S_STRING12',sHemolevel25	);  
          GetFldVar('S_STRING13',sHemolevel26	);
          GetFldVar('S_STRING14',sHemolevel27	);  
          GetFldVar('S_STRING15',sOpbld			);
          GetFldVar('S_STRING16',sOthtext		);  
          GetFldVar('S_STRING17',sRctexmdate	);
          GetFldVar('S_STRING18',sRctexmrslt	);
          GetFldVar('S_STRING19',sBldcurr		); 
          GetFldVar('S_STRING20',sBldsdeffc		);
          GetFldVar('S_STRING21',sBldsdeffctxt	);  
          GetFldVar('S_STRING22',sRecdate		);
          GetFldVar('S_STRING23',sOrddr			);
          GetFldVar('S_STRING24',sOrddrnm		);
          GetFldVar('S_STRING25',sRsltdate		);
          GetFldVar('S_STRING26',sRslt  		);

          Result := GetRecordCnt('S_STRING1');
          txFree;
      end
      else if inFlag = 'C' then //헤모글로빈 최근 결과값 조회
      begin
          GetFldVar('S_STRING25',sRsltdate		);
          GetFldVar('S_STRING26',sRslt  		);

          Result := GetRecordCnt('S_STRING25');
          txFree;
      end;
   end;
end;

//항암화학요법 반응/부작용평가 저장
//KimDaeYong 2021-03-11
function HmdCanevt.Insert1:Integer;
begin
   Result := -1;
   txAlloc;

   SetFldName('S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6;S_STRING7;S_STRING8;S_STRING9;S_STRING10;'+
              'S_STRING11;S_STRING12;S_STRING13;S_STRING14;S_STRING15;S_STRING16;S_STRING17;S_STRING18;S_STRING19;S_STRING20;'+
              'S_STRING21;S_STRING22;S_STRING23;S_STRING24;S_STRING25;S_STRING26;S_STRING27;S_STRING28;S_STRING29;'+
              'S_EDITID;S_EDITIP');
   SetFldValue(0,[sPatno    , sMeddate  , sPatsect  , sDiagcd   , sDiagname , sCanmthd  , sCycleno  , sReacdate , sBsa      , sDosage   ,
                  sResponse , sHb       , sAnc      , sPlt      , sFebril   , sFever    , sAst      , sBilir    , sFatig    , sAnor     ,
                  sNaus     , sVamit    , sDiarr    , sMucos    , sRash     , sPerip    , sOthtext  , sRecdate   , sRecid     ,
                  sEditid   , sEditip]);

   if (txPutF('MD_CANEV_I1')) then  //md_canev_i1.pc
   begin
      Result :=1;
      txFree;
   end;
end;

//항암화학요법 반응/부작용평가 조회
//KimDaeYong 2021-03-11
function HmdCanevt.Select1(inPatno, inMeddate, inPatsect : String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');
   SetFldValue(0,[inPatno, inMeddate, inPatsect]);

   if (txGetF('MD_CANEV_S1')) then
   begin //Tuxedo Service Call
      GetFldVar('S_STRING1' ,   sDiagcd	    );
      GetFldVar('S_STRING2' ,   sDiagname	);
      GetFldVar('S_STRING3' ,   sCanmthd	);
      GetFldVar('S_STRING4' ,   sCycleno	);
      GetFldVar('S_STRING5' ,   sReacdate	);
      GetFldVar('S_STRING6' ,   sBsa	    );
      GetFldVar('S_STRING7' ,   sDosage	    );
      GetFldVar('S_STRING8' ,   sResponse	);
      GetFldVar('S_STRING9' ,   sHb   	    );
      GetFldVar('S_STRING10' ,  sAnc 	    );
      GetFldVar('S_STRING11' ,  sPlt 	    );
      GetFldVar('S_STRING12' ,  sFebril	    );
      GetFldVar('S_STRING13' ,  sFever	    );
      GetFldVar('S_STRING14' ,  sAst        );
      GetFldVar('S_STRING15' ,  sBilir	    );
      GetFldVar('S_STRING16' ,  sFatig 	    );
      GetFldVar('S_STRING17' ,  sAnor       );
      GetFldVar('S_STRING18' ,  sNaus       );
      GetFldVar('S_STRING19' ,  sVamit	    );
      GetFldVar('S_STRING20' ,  sDiarr	    );
      GetFldVar('S_STRING21' ,  sMucos	    );
      GetFldVar('S_STRING22' ,  sRash  	    );
      GetFldVar('S_STRING23' ,  sPerip	    );
      GetFldVar('S_STRING24' ,  sOthtext    );
      GetFldVar('S_STRING25' ,  sRecdate	);
      GetFldVar('S_STRING26' ,  sRecid      );
      GetFldVar('S_STRING27' ,  sRecname    );

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;


//완료의료진료기록지.===================================================

//기록지리스트 조회
function HmdDhosft.DHOSF_L1(inPatno:string) : integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1');
   SetFldValue(0,[inPatno]);

   if (txGetF('MD_DHOSF_L1')) then
   begin //Tuxedo Service Call
      GetFldVar('S_STRING1' ,   sConsdate	);
      GetFldVar('S_STRING2' ,   sGubun  	);
      GetFldVar('S_STRING3' ,   sGubunnm	);
      GetFldVar('S_STRING4' ,   sSeqno	    );

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

//기록지 조회
function HmdDhosft.DHOSF_S1(inGubun, inPatno, inConsdate, inSeqno:string) : integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
   SetFldValue(0,[inGubun, inPatno, inConsdate, inSeqno]);

   if (txGetF('MD_DHOSF_S1')) then
   begin //Tuxedo Service Call
      GetFldVar('S_STRING1'  ,  sPatno        );
      GetFldVar('S_STRING2'  ,  sConsdate     );
      GetFldVar('S_STRING3'  ,  sSeqno        );
      GetFldVar('S_STRING4'  ,  sConstime     );
      GetFldVar('S_STRING5'  ,  sTarget       );
      GetFldVar('S_STRING6'  ,  sTargetrel    );
      GetFldVar('S_STRING7'  ,  sBasis        );
      GetFldVar('S_STRING8'  ,  sIdenpatyn    );
      GetFldVar('S_STRING9'  ,  sIdengardyn   );
      GetFldVar('S_STRING10' ,  sRecopatyn    );
      GetFldVar('S_STRING11' ,  sRecogardyn   );
      GetFldVar('S_STRING12' ,  sConscious    );
      GetFldVar('S_STRING13' ,  sMedhistory   );
      GetFldVar('S_STRING14' ,  sConscont     );
      GetFldVar('S_STRING15' ,  sProblist     );
      GetFldVar('S_STRING16' ,  sCareplan     );
      GetFldVar('S_STRING17' ,  sFrstdate     );
      GetFldVar('S_STRING18' ,  sRecdate      );
      GetFldVar('S_STRING19' ,  sConsdr       );
      GetFldVar('S_STRING20' ,  sBasisoth     );
      GetFldVar('S_STRING21' ,  sEvalpain     );
      GetFldVar('S_STRING22' ,  sEvalresp     );
      GetFldVar('S_STRING23' ,  sEvalrespsec  );
      GetFldVar('S_STRING24' ,  sEvalvomit    );
      GetFldVar('S_STRING25' ,  sEvaldeli     );
      GetFldVar('S_STRING26' ,  sRecopat      );
      GetFldVar('S_STRING27' ,  sRecofam      );      
      GetFldVar('S_STRING28' ,  sCare         );
      GetFldVar('S_STRING29' ,  sCareoth      );
      GetFldVar('S_STRING30' ,  sConsdrnm     );
      GetFldVar('S_STRING31' ,  sAdmdate      );
      GetFldVar('S_STRING32' ,  sSexAge       );
      GetFldVar('S_STRING33' ,  sSignData     );
      GetFldVar('S_STRING34' ,  sSerialNo     );
      GetFldVar('S_STRING35' ,  sSubjectDN	  );

      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

//기록지 저장/수정.
function HmdDhosft.DHOSF_I1(inGubun, inSave, sSignData, sSerialNo, sSubjectDN :string):Integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   //초기상담기록지
   if inGubun = 'A' then
   begin
       SetFldName('S_CODE1;S_CODE2;' +
                  'S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6;S_STRING7;S_STRING8;S_STRING9;S_STRING10;' +
                  'S_STRING11;S_STRING12;S_STRING13;S_STRING14;S_STRING15;S_STRING16;S_STRING17;S_STRING18;S_STRING19;S_STRING20;' +
                  'S_STRING21;S_STRING22;S_EDITID;S_EDITIP');
       SetFldValue(0, [inGubun, inSave,
                       sPatno, sConsdate, sConstime, sTarget, sTargetrel, sBasis, sIdenpatyn, sIdengardyn, sRecopatyn, sRecogardyn,
                       sConscious, sMedhistory, sConscont, sProblist, sCareplan, sRecdate, sConsdr, sAdmdate, sSexAge, sSignData,
                       sSerialNo, sSubjectDN, sEditid, sEditip]);
   end;

   //재상담기록지
   if inGubun = 'B' then
   begin
       SetFldName('S_CODE1;S_CODE2;' +
                  'S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6;S_STRING7;S_STRING8;S_STRING9;S_STRING10;' +
                  'S_STRING11;S_STRING12;S_STRING13;S_STRING14;S_STRING15;S_STRING16;' +
                  'S_EDITID;S_EDITIP');
       SetFldValue(0, [inGubun, inSave,
                       sPatno, sConsdate, sSeqno, sConstime, sTarget, sTargetrel, sConscont, sProblist, sCareplan, sRecdate,
                       sConsdr, sAdmdate,  sSexAge, sSignData, sSerialNo, sSubjectDN,
                       sEditid, sEditip]);
   end;

   //임종돌봄록지
   if inGubun = 'C' then
   begin
       SetFldName('S_CODE1;S_CODE2;' +
                  'S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING6;S_STRING7;S_STRING8;S_STRING9;S_STRING10;' +
                  'S_STRING11;S_STRING12;S_STRING13;S_STRING14;S_STRING15;S_STRING16;S_STRING17;S_STRING18;S_STRING19;S_STRING20;' +
                  'S_STRING21;S_EDITID;S_EDITIP');
       SetFldValue(0, [inGubun, inSave,
                       sPatno, sConsdate, sConstime, sBasis, sBasisoth, sEvalpain, sEvalresp, sEvalrespsec, sEvalvomit, sEvaldeli,
                       sRecopat, sRecofam, sCare, sCareoth, sAdmdate, sRecdate, sConsdr,  sSexAge, sSignData, sSerialNo,
                       sSubjectDN, sEditid, sEditip]);
   end;

   if txPutF('MD_DHOSF_I1') then     //md_dhosf_i1.pc
   begin
       Result := 1;
       txFree;
   end;
end;

{ Hmdrecodt }

function Hmdrecodt.ListPatRecord(sInResearch, sPatno, sMeddate: string): integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE2;S_PATNO;S_STRING1');
   SetFldValue(0, [sInResearch,sPatno, sMeddate]);

   if (txGetF('MD_RECOD_L1')) then //Tuxedo Service Call   [ md_recod_l1.pc / MD_A115NX ]
   begin
      GetFldVar('S_STRING1'  ,sRecgubun); // 기록지 구분
      GetFldVar('S_STRING2'  ,sRecgubuncd); // 테이블 구분
      GetFldVar('S_STRING3'  ,sfrmgubuncd); // 기록지 구분
      Result := GetRecordCnt('S_STRING1'); //Service를 수행하고 FML Buffer에 PUT된 Record수
      txFree;
   end;
end;

function Hmdrecodt.ListRecordData(sRecgubuncd:string; sInPatno:string; sPk2:string; sPk3:string =''; sPk4:string =''; sPk5:string =''): integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_PATNO;S_STRING2;S_STRING3;S_STRING4;S_STRING5');
   SetFldValue(0, [sRecgubuncd,sInPatno,sPk2,sPk3,sPk4,sPk5]);

   if (txGetF('MD_RECOD_L3')) then //Tuxedo Service Call  [ md_recod_l3.pc / MD_A115NX ]
   begin
      GetFldVar('S_STRING1'  ,O_sResult1); // inquery result1
      GetFldVar('S_STRING2'  ,O_sResult2); // inquery result2
      GetFldVar('S_STRING3'  ,O_sResult3); // inquery result3
      GetFldVar('S_STRING4'  ,O_sResult4); // inquery result4
      GetFldVar('S_STRING5'  ,O_sResult5); // inquery result5
      GetFldVar('S_STRING6'  ,O_sResult6); // inquery result6
      GetFldVar('S_STRING7'  ,O_sResult7); // inquery result7
      GetFldVar('S_STRING8'  ,O_sResult8); // inquery result8
      GetFldVar('S_STRING9'  ,O_sResult9); // inquery result9
      GetFldVar('S_STRING10'  ,O_sResult10); // inquery result10
      GetFldVar('S_STRING11'  ,O_sResult11); // inquery result11
      GetFldVar('S_STRING12'  ,O_sResult12); // inquery result12
      GetFldVar('S_STRING13'  ,O_sResult13); // inquery result13
      GetFldVar('S_STRING14'  ,O_sResult14); // inquery result14
      GetFldVar('S_STRING15'  ,O_sResult15); // inquery result15
      GetFldVar('S_STRING16'  ,O_sResult16); // inquery result16
      GetFldVar('S_STRING17'  ,O_sResult17); // inquery result17
      GetFldVar('S_STRING18'  ,O_sResult18); // inquery result18
      GetFldVar('S_STRING19'  ,O_sResult19); // inquery result19
      GetFldVar('S_STRING20'  ,O_sResult20); // inquery result20
      GetFldVar('S_STRING21'  ,O_sResult21); // inquery result21
      GetFldVar('S_STRING22'  ,O_sResult22); // inquery result22
      GetFldVar('S_STRING23'  ,O_sResult23); // inquery result23
      GetFldVar('S_STRING24'  ,O_sResult24); // inquery result24
      GetFldVar('S_STRING25'  ,O_sResult25); // inquery result25
      GetFldVar('S_STRING26'  ,O_sResult26); // inquery result26
      GetFldVar('S_STRING27'  ,O_sResult27); // inquery result27
      GetFldVar('S_STRING28'  ,O_sResult28); // inquery result28
      GetFldVar('S_STRING29'  ,O_sResult29); // inquery result29
      GetFldVar('S_STRING30'  ,O_sResult30); // inquery result30
      GetFldVar('S_STRING31'  ,O_sResult31); // inquery result31
      GetFldVar('S_STRING32'  ,O_sResult32); // inquery result32
      GetFldVar('S_STRING33'  ,O_sResult33); // inquery result33
      GetFldVar('S_STRING34'  ,O_sResult34); // inquery result34
      GetFldVar('S_STRING35'  ,O_sResult35); // inquery result35
      GetFldVar('S_STRING36'  ,O_sResult36); // inquery result36
      GetFldVar('S_STRING37'  ,O_sResult37); // inquery result37
      GetFldVar('S_STRING38'  ,O_sResult38); // inquery result38
      GetFldVar('S_STRING39'  ,O_sResult39); // inquery result39
      GetFldVar('S_STRING40'  ,O_sResult40); // inquery result40
      GetFldVar('S_STRING41'  ,O_sResult41); // inquery result41
      GetFldVar('S_STRING42'  ,O_sResult42); // inquery result42
      GetFldVar('S_STRING43'  ,O_sResult43); // inquery result43
      GetFldVar('S_STRING44'  ,O_sResult44); // inquery result44
      GetFldVar('S_STRING45'  ,O_sResult45); // inquery result45
      GetFldVar('S_STRING46'  ,O_sResult46); // inquery result46
      GetFldVar('S_STRING47'  ,O_sResult47); // inquery result47
      GetFldVar('S_STRING48'  ,O_sResult48); // inquery result48
      GetFldVar('S_STRING49'  ,O_sResult49); // inquery result49
      GetFldVar('S_STRING50'  ,O_sResult50); // inquery result50
      GetFldVar('S_STRING51'  ,O_sResult51); // inquery result41
      GetFldVar('S_STRING52'  ,O_sResult52); // inquery result42
      GetFldVar('S_STRING53'  ,O_sResult53); // inquery result43
      GetFldVar('S_STRING54'  ,O_sResult54); // inquery result44
      GetFldVar('S_STRING55'  ,O_sResult55); // inquery result45
      GetFldVar('S_STRING56'  ,O_sResult56); // inquery result46
      GetFldVar('S_STRING57'  ,O_sResult57); // inquery result47
      GetFldVar('S_STRING58'  ,O_sResult58); // inquery result48
      GetFldVar('S_STRING59'  ,O_sResult59); // inquery result49
      GetFldVar('S_STRING60'  ,O_sResult60); // inquery result50
      Result := GetRecordCnt('S_STRING1'); //Service를 수행하고 FML Buffer에 PUT된 Record개수
      txFree;
   end;
end;

function Hmdrecodt.ListRecordPk(sRecgubuncd, sInPatno,sInMeddate: string): integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.
   SetFldName('S_TYPE1;S_PATNO;S_STRING1');
   SetFldValue(0, [sRecgubuncd,sInPatno,sInMeddate]);

   if (txGetF('MD_RECOD_L2')) then //Tuxedo Service Call  [ md_recod_l2.pc / MD_A115NX ]
   begin
      GetFldVar('S_STRING1'  ,sPk1); // PK1 or Auxilary date
      GetFldVar('S_STRING2'  ,sPk2); // PK2 or Auxilary date
      GetFldVar('S_STRING3'  ,sPk3); // PK3 or Auxilary date
      GetFldVar('S_STRING4'  ,sPk4); // PK4 or Auxilary date
      GetFldVar('S_STRING5'  ,sPk5); // PK5 or Auxilary date
      GetFldVar('S_STRING6'  ,sUgdtitle); // Ultra Grid title
      GetFldVar('S_STRING7'  ,sTemp1); // temporary repository1
      GetFldVar('S_STRING8'  ,sTemp2); // temporary repository2
      GetFldVar('S_STRING9'  ,sTemp3); // temporary repository3
      GetFldVar('S_STRING10'  ,sTemp4); // temporary repository4
      GetFldVar('S_STRING11'  ,sTemp5); // temporary repository5

      Result := GetRecordCnt('S_STRING1'); //Service를 수행하고 FML Buffer에 PUT된 Record개수
      txFree;
   end;
end;

// Service ID : MD_RECOD_U1, MD_A122X
function Hmdrecodt.UpdateRecLCYN(iCnt: integer): integer;
var
    ii : integer;
begin
   Result := -1;
   txAlloc; //Pointer를 받아옴.

   SetFldName('S_STRING1;S_STRING2;S_STRING3;S_STRING4;S_STRING5;S_STRING8');

   for  ii :=0 to iCnt-1 do
   begin
       SetFldValue(ii, [String(sPk1[ii]),String(sPk2[ii]),String(sPk3[ii]),String(sPk4[ii]),String(sPk5[ii]),
                        String(sRecgubuncd[ii])] );
   end;

   if txPutF('MD_RECOD_U1') then     //md_recod_u1.pc || MD_A122X
   begin
       Result := 1;
       txFree;
   end;
end;

{ Hmdrecott }

function Hmdrecott.ListPatMedRecord(PatNo, Locate,VstDate: String): Integer;
begin
   Result := -1;

   //Pointer를 받아옴.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_PATNO;S_TYPE1;S_TYPE2');
   SetFldValue32(0,[PatNo,Locate,VstDate] );

   //Tuxedo Service Call
   if (txGetF32('MD_PMEDH_S1')) then
   begin
      GetFldVar32('S_STRING1' , sIndate );  // 환자구분

      //조회건수 return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

end.

