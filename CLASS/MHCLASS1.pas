////////////////////////////////////////////////////////////////////////////////
// ���� CLASS Define                                                          //
//  HmhPtinft  ����ȯ�ڱ⺻                                                   //
//  HmhHpactt  �����ǽ� �� �������                                           //
//  HmhTranst  ��������                                                       //
//  HmhPtloct  ȯ���� ����ġ                                                  //
//  HmhHpdort  �������� ����                                                  //
//  HmhMedort  ��ó�� ����                                                    //
//  HmhNurset  ����ȯ�� �ܷ� �Կ� ��ȣ                                        //
//  HmhHemomt  ����������ȯ�������⺻                                         //
////////////////////////////////////////////////////////////////////////////////

unit MHCLASS1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type

    
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

       function SelectEvaluation:Integer;

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

       function SelectRecovery:Integer;
    end;

    
    // ����ȯ�ڱ⺻
    HmhPtinft = class
     sPatNo	: Variant;  // ȯ�ڹ�ȣ
     sHdType	: Variant;  // ����ȯ�ڱ���
     sSeqNo     : Variant;  // ����

     sPatName   : Variant;  //���� ȯ���̸�
     sResNo1    : Variant;  //���� �ֹι�ȣ1
     sResNo2    : Variant;  //���� �ֹι�ȣ2
     sSex       : Variant;  //���� ����
     sBirtDate  : Variant;  //���� ����
     sTelNo1    : Variant;  //���� ��ȭ1
     sTelNo2    : Variant;  //���� ��ȭ2
     sTelNo3    : Variant;  //���� ��ȭ3
     sAddress   : Variant;  //���� �ּ�

     sTel1	: Variant;  // ��ȭ��ȣ1
     sTel2	: Variant;  // ��ȭ��ȣ2
     sTel3	: Variant;  // ��ȭ��ȣ3
     sOrdcd     : Variant;  // ó���ڵ�
     iHeight	: Variant;  // ����
     iWeight	: Variant;  // ü��
     sMarryYn	: Variant;  // ��ȥ����
     sMryOthr	: Variant;  // ��ȥ��Ÿ
     sJobCode	: Variant;  // �����ڵ�
     sRelation	: Variant;  // ��������
     sHdKind	: Variant;  // �������� / ���������� ����
     sKindOthr  : Variant;  // �������� / ���������� ����  ��Ÿ
     sHdKnd	: Variant;  // ���� / ���� ����
     sKndOthr   : Variant;  // ���� / ���� ���� ��Ÿ
     sRsndiss	: Variant;  // ������ȯ
     sRsnOthr	: Variant;  // ������ȯ ��Ÿ
     sAcuteYn	: Variant;  // �޸�������
     sTrpYN  	: Variant;  // �̽Ŀ���
     sTrpDate	: Variant;  // �����̽���
     sHb1	: Variant;  // �����׿�(HbsAg)
     sHb2	: Variant;  // �����׿�(HbsAb)
     sHb4	: Variant;  // �����׿�(HCV)
     sHb5	: Variant;  // �����׿�(VDRL)
     sHb6	: Variant;  // �����׿�(HIV)
     sHpdsdate	: Variant;  // ����������
     sSpcDr	: Variant;  // ���������ǻ�
     sSpcDrNm	: Variant;  // ���������ǻ��
     sBLDABO    : Variant;  // ������(ABO)
     sBLDRH     : Variant;  // ������(RH)
     sPipeHis	: Variant;  // �����̷�
     sEndDate	: Variant;  // ��������
     sHdEndRsn	: Variant;  // �����������
     sTranDate	: Variant;  // �̼�����
     sTranHosp	: Variant;  // �̼ۺ���
     sRemark	: Variant;  // Ư�����
     sNrpros	: Variant;  // PROCESS
     sSchdType	: Variant;  // SCHEDULE TYPE
     sInsu      : Variant;  // ���� ����
     sEndetc    : Variant;  // ������� ��Ÿ
     sCount     : Variant;  // ȯ�� �⺻���� ��� �Ǽ�
     sEditId	: Variant;  // ������ ID
     sEditIp	: Variant;  // ������ IP
     sEditDate	: Variant;  // �����Ͻ�
     sInsertdt  : Variant;
     sRemovedt  : Variant;
     sExamdt    : Variant;  // �˻�����
     sRslt1     : Variant;  // �˻���1
     sExamcode  : Variant;  // �˻��ڵ�

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
     // ��������ȯ�� Hemoglobin ����� ��ȸ  2005.04.01
     function ListHpHemoglobin(SrchDate : String) : Integer;
    end;

    // �����ǽ� �� �������
    HmhHpactt = class
     sPatNo     : Variant;  // ȯ�ڹ�ȣ
     sPatName   : Variant;  // ȯ�ڸ�
     sHdType	 : Variant;  // ����ȯ�ڱ���
     sSeqNo     : Variant;  // ����
     sExecDate	 : Variant;  // �ǽ�����
     sExecseq   : Variant;  // �ǽü��� -- �����߰��� Key
     sInfCls    : Variant;  // ���� ����
     sSchdType  : Variant;  // ������ Ÿ��
     sActYn	    : Variant;  // �ǽÿ���
     sPatSect	 : Variant;  // ȯ�ڱ���
     sMedDept   : Variant;  // �����
     sWardNo	 : Variant;  // ������ȣ
     sOrdCd	    : Variant;  // ó���ڵ�
     sHdKind    : Variant;  // ���� ��������
     sKindnm    : Variant;  // ���� ����������
     sHdKnd	    : Variant;  // ���� ����������
     sHdShift	 : Variant;  // ���� ����SHIFT
     sHdCnt  	 : Variant;  // ���� �����Ǽ�
     sHdmedYn	 : Variant;  // ���� ����������
     sPdeduYn	 : Variant;  // ���� ��������
     sPdexcYn	 : Variant;  // ���� �����ױ�ȯ����
     sPdactYn	 : Variant;  // ���� ����������
     sPdinfYn	 : Variant;  // ���� �ⱸ��������
     sPdpipeYn	 : Variant;  // ���� �������Կ���
     sPdchngYn	 : Variant;  // ���� �������԰���ȯ����
     sPdbrkyn    : Variant;  // ���� ��������̱⿩��
     sPdpet	 : Variant;  // ���� PET����
     sPdktvYn	 : Variant;  // ���� Kt/V����
     sNurProg	 : Variant;  // ��ȣ PROGRESS
     sRemark	 : Variant;  // Ư�����
     sInsType	 : Variant;  // �޿�����
     sRcpStat	 : Variant;  // (����) ����STATUS-����
     sPdact1	 : Variant;  // ���� ������ ���α�
     sPdact3	 : Variant;  // ���� ������ ���
     sPdact2	 : Variant;  // ���� ������ �׻���
     sPdinf1	 : Variant;  // ���� �ⱸ���� ���α�
     sPdinf2	 : Variant;  // ���� �ⱸ���� �׻���
     sPdinf3	 : Variant;  // ���� �ⱸ���� ���
     sPdpet1	 : Variant;  // ���� PET��� - Serum Creatinine 0h
     sPdpet2	 : Variant;  // ���� PET��� - Serum Creatinine 2h
     sPdpet3	 : Variant;  // ���� PET��� - Serum Creatinine 4h
     sPdpet4	 : Variant;  // ���� PET��� - Serum Glucose 0h
     sPdpet5	 : Variant;  // ���� PET��� - Serum Glucose 2h
     sPdpet6	 : Variant;  // ���� PET��� - Serum Glucose 4h
     sPdpet7	 : Variant;  // ���� PET��� - Serum Corrected Cr 0h
     sPdpet8	 : Variant;  // ���� PET��� - Serum Corrected Cr 2h
     sPdpet9	 : Variant;  // ���� PET��� - Serum Corrected Cr 4h
     sPdpet10	 : Variant;  // ���� PET��� - Dialysate Creatinine 0h
     sPdpet11	 : Variant;  // ���� PET��� - Dialysate Creatinine 2h
     sPdpet12	 : Variant;  // ���� PET��� - Dialysate Creatinine 4h
     sPdpet13	 : Variant;  // ���� PET��� - Dialysate Glucose 0h
     sPdpet14	 : Variant;  // ���� PET��� - Dialysate Glucose 2h
     sPdpet15	 : Variant;  // ���� PET��� - Dialysate Glucose 4h
     sPdpet16	 : Variant;  // ���� PET��� - Dialysate Corrected Cr 0h
     sPdpet17	 : Variant;  // ���� PET��� - Dialysate Corrected Cr 2h
     sPdpet18	 : Variant;  // ���� PET��� - Dialysate Corrected Cr 4h
     sPdpet19	 : Variant;  // ���� PET��� - PET D/P(Cr) 0h
     sPdpet20	 : Variant;  // ���� PET��� - PET D/P(Cr) 2h
     sPdpet21	 : Variant;  // ���� PET��� - PET D/P(Cr) 4h
     sPdpet22	 : Variant;  // ���� PET��� - PET D/Do(Glu) 0h
     sPdpet23	 : Variant;  // ���� PET��� - PET D/Do(Glu) 2h
     sPdpet24	 : Variant;  // ���� PET��� - PET D/Do(Glu) 4h
     sPdpet25	 : Variant;  // ���� PET�����1
     sPdpet26	 : Variant;  // ���� PET�����2
     sPdktv1	 : Variant;  // ���� KT/V��� - �����׳�
     sPdktv2	 : Variant;  // ���� KT/V��� - Height
     sPdktv3	 : Variant;  // ���� KT/V��� - Weight(LBW)
     sPdktv4	 : Variant;  // ���� KT/V��� - BSA
     sPdktv5	 : Variant;  // ���� KT/V��� - BUN(mg/dL)
     sPdktv6	 : Variant;  // ���� KT/V��� - Cr(mg/dL)
     sPdktv7	 : Variant;  // ���� KT/V��� - 24HU Volume(ml)
     sPdktv8	 : Variant;  // ���� KT/V��� - Collection Time(min)
     sPdktv9	 : Variant;  // ���� KT/V��� - Urine UN(mg/dL)
     sPdktv10	 : Variant;  // ���� KT/V��� - Urine Cr(mg/dL)
     sPdktv11	 : Variant;  // ���� KT/V��� - Total Urine UN(mg/dL)
     sPdktv12	 : Variant;  // ���� KT/V��� - Timed PD Volume(mL)
     sPdktv13	 : Variant;  // ���� KT/V��� - Collection Time(PD,min)
     sPdktv14	 : Variant;  // ���� KT/V��� - PD(Urea)
     sPdktv15	 : Variant;  // ���� KT/V��� - PD(Cr)
     sPdktv16	 : Variant;  // ���� KT/V��� - Total PD(Urea)
     sPdktv17	 : Variant;  // ���� KT/V��� - Final Urea Volume(A)
     sPdktv18	 : Variant;  // ���� KT/V��� - Final Urea Volume(B)
     sPdktv19	 : Variant;  // ���� KT/V��� - Final Urea Volume(C)
     sPdktv20	 : Variant;  // ���� KT/V��� - M Urea Volume(A)
     sPdktv21	 : Variant;  // ���� KT/V��� - M Urea Volume(B)
     sPdktv22	 : Variant;  // ���� KT/V��� - M Urea Volume(C)
     sPdktv23	 : Variant;  // ���� KT/V��� - F Urea Volume(A)
     sPdktv24	 : Variant;  // ���� KT/V��� - F Urea Volume(B)
     sPdktv25	 : Variant;  // ���� KT/V��� - F Urea Volume(C)
     sPdktv26	 : Variant;  // ���� KT/V��� - D(Urea)
     sPdktv27	 : Variant;  // ���� KT/V��� - D(Urea)/wk
     sPdktv28	: Variant;  // ���� KT/V��� - RRF(Urea)
     sPdktv29	: Variant;  // ���� KT/V��� - RRF(Urea)/wk
     sPdktv30	: Variant;  // ���� KT/V��� - KT
     sPdktv31	: Variant;  // ���� KT/V��� - KT/V(A)
     sPdktv32	: Variant;  // ���� KT/V��� - KT/V(B)
     sPdktv33	: Variant;  // ���� KT/V��� - KT/V(C)
     sPdktv34	: Variant;  // ���� KT/V��� - UGR
     sPdktv35	: Variant;  // ���� KT/V��� - PCR(g/day)
     sPdktv36	: Variant;  // ���� KT/V��� - PCR/wt
     sPdktv37	: Variant;  // ���� KT/V��� - nPCR
     sPdktv38	: Variant;  // ���� KT/V��� - D(CCr)ml/min
     sPdktv39	: Variant;  // ���� KT/V��� - U(CCr)ml/min
     sPdktv40	: Variant;  // ���� KT/V��� - CCr(ml/min)
     sPdktv41	: Variant;  // ���� KT/V��� - CCr(L/Wr)
     sPdktv42	: Variant;  // ���� KT/V��� - ��������
     sOrdDate	: Variant;  // ó������
     sOrdSeqno	: Variant;  // ó�����
     sMeddate  : Variant;  // ��������
     sEditDate	: Variant;  // �����Ͻ�
     sEditId	: Variant;  // ������ ID
     sEditIp	: Variant;  // ������ IP
     sDelDate  : Variant;  // ���� �� ���� ��������
     sDataChk  : Variant;  // Dataó�� ����
     sBfrPat   : Variant;  // ���� ȯ�ڻ���
     sSex      : Variant;  // ���� (APPATBAT ȯ�ڱ⺻����)
     sAge      : Variant;  // ���� (APPATBAT ȯ�ڱ⺻����)
     sCitizen  : Variant;  // �ֹι�ȣ (APPATBAT ȯ�ڱ⺻����)
     sInf      : Variant;  // �������� (MHPTINFT ����ȯ�ڱ⺻)
     sRsn      : Variant;  // ������ȯ (MHPTINFT ����ȯ�ڱ⺻)
     sSpcDr    : Variant;  // Ư����    (MHPTINFT ����ȯ�ڱ⺻)
     sEnddate  : Variant;  // ���������� (MHPTINFT ����ȯ�ڱ⺻)
     sTelNo    : Variant;  // ��ȭ��ȣ (MHPTINFT ����ȯ�ڱ⺻)
     sSpcDrnm  : Variant;  // Ư���� ����
     sApChk    : Variant;  // �������� ����
     sOldpttp  : Variant;  // ��������
     sBirtDate : Variant;  // ���� ����
     sAdmDate  : Variant;  // �Կ�����
     sOrdDept  : Variant;  // ����μ�
     sPatdept  : variant;  // ȯ�� �ҼӰ�
     sMedTime  : Variant;  // ���� ��� ����ð�
     sInsu     : variant;  // ���豸��
     sERyn     : variant;  // ���ޱ���
     sNightyn  : Variant;  // �ɾ߱���
     sPatsite  : Variant;  // ȯ�ڻ��� -- ��������
     sChadr    : Variant;  // ��ġ��
     sExecdate1 : Variant; // �ǽ�����
     sHopedate  : Variant ; //  ���� ������

     sHD_OCS    : Variant;     //�ܷ�ȯ�� HD  �Ǽ�
     sPlasex_OCS: Variant;     // �ܷ�ȯ�� plasex  �Ǽ�
     sHemo_OCS  : Variant;     // �ܷ�ȯ�� Hemo    �Ǽ�
     sCVVH_OCS  : Variant;     // �ܷ�ȯ�� CVVH    �Ǽ�
     sETC_OCS   : Variant;     // �ܷ�ȯ�� ��Ÿ    �Ǽ�
     sHD_ICS    : Variant;     // �Կ�ȯ�� HD  �Ǽ�
     sPlasex_ICS: Variant;     // �Կ�ȯ�� plasex  �Ǽ�
     sHemo_ICS  : Variant;     // �Կ�ȯ�� Hemo    �Ǽ�
     sCVVH_ICS  : Variant;     // �Կ�ȯ�� CVVH    �Ǽ�
     sETC_ICS   : Variant;     // �Կ�ȯ�� ��Ÿ    �Ǽ�
     sHD_CCS    : Variant;     // ����ȯ�� HD  �Ǽ�
     sPlasex_CCS: Variant;     // ����ȯ�� plasex  �Ǽ�
     sHemo_CCS  : Variant;     // ����ȯ�� Hemo    �Ǽ�
     sCVVH_CCS  : Variant;     // ����ȯ�� CVVH    �Ǽ�
     sETC_CCS   : Variant;     // ����ȯ�� ��Ÿ    �Ǽ�
     sHD_ACS    : Variant;     // �޼�ȯ�� HD  �Ǽ�
     sPlasex_ACS: Variant;     // �޼� plasex  �Ǽ�
     sHemo_ACS  : Variant;     // �޼� Hemo    �Ǽ�
     sCVVH_ACS  : Variant;     // �޼� CVVH    �Ǽ�
     sETC_ACS   : Variant;     // �޼� ��Ÿ    �Ǽ�
     sHDEDU_CS  : Variant;     // HD �����Ǽ�
     sPDEXC_CS  : Variant;     // ���� ������ ��ȯ�Ǽ�
     sPDCHNG_CS : Variant;     // ���� ���԰� ��ȯ�Ǽ�
     sPDACT_CS  : Variant;     // ���� ������ �߻��Ǽ�
     sPDINF_CS  : Variant;     // ���� �ⱸ���� �߻��Ǽ�
     sPDPET_CS  : Variant;     // ���� PET �Ǽ�
     sPDKTV_CS  : Variant;     // ���� KT/V �Ǽ�
     sPDPIPE_CS : Variant;     // ���� �������԰Ǽ�
     sPDEDU_CS  : Variant;     // ���� �����Ǽ�
     sPDBRK_CS  : Variant;     // ���� ��������̱� �Ǽ�
     sHD_OMS    : Variant;     // �ܷ�ȯ�� HD      ȯ�ڼ�
     sPlasex_OMS: Variant;     // �ܷ�ȯ�� plasex  ȯ�ڼ�
     sHemo_OMS  : Variant;     // �ܷ�ȯ�� Hemo    ȯ�ڼ�
     sCVVH_OMS  : Variant;     // �ܷ�ȯ�� CVVH    ȯ�ڼ�
     sETC_OMS   : Variant;     // �ܷ�ȯ�� ��Ÿ   ȯ�ڼ�
     sHD_IMS    : Variant;     // �Կ�ȯ�� HD      ȯ�ڼ�
     sPlasex_IMS: Variant;     // �Կ�ȯ�� plasex  ȯ�ڼ�
     sHemo_IMS  : Variant;     // �Կ�ȯ�� Hemo    ȯ�ڼ�
     sCVVH_IMS  : Variant;     // �Կ�ȯ�� CVVH    ȯ�ڼ�
     sETC_IMS   : Variant;     // �Կ�ȯ�� ��Ÿ   ȯ�ڼ�
     sHD_CMS    : Variant;     // ����ȯ�� HD  ȯ�ڼ�
     sPlasex_CMS: Variant;     // ����ȯ�� plasex  ȯ�ڼ�
     sHemo_CMS  : Variant;     // ����ȯ�� Hemo    ȯ�ڼ�
     sCVVH_CMS  : Variant;     // ����ȯ�� CVVH    ȯ�ڼ�
     sETC_CMS   : Variant;     // ����ȯ�� ��Ÿ    ȯ�ڼ�
     sHD_AMS    : Variant;     // �޼�ȯ�� HD  ȯ�ڼ�
     sPlasex_AMS: Variant;     // �޼� plasex  ȯ�ڼ�
     sHemo_AMS  : Variant;     // �޼� Hemo    ȯ�ڼ�
     sCVVH_AMS  : Variant;     // �޼� CVVH    ȯ�ڼ�
     sETC_AMS   : Variant;     // �޼� ��Ÿ    ȯ�ڼ�
     sHD_I1S    : Variant;     // HD ����ȯ�ڼ�
     sPlasex_I1S: Variant;     // Plasex ����ȯ�ڼ�
     sHemo_I1S  : Variant;     // Hemo ����ȯ�ڼ�
     sCVVH_I1S  : Variant;     // Cvvh ����ȯ�ڼ�
     sETC_I1S   : Variant;     // Etc ����ȯ�ڼ�
     sHD_I2S    : Variant;     // HD ��ȣ1��ȯ�ڼ�
     sPlasex_I2S: Variant;     // Plasex ��ȣ1��ȯ�ڼ�
     sHemo_I2S  : Variant;     // Hemo ��ȣ1��ȯ�ڼ�
     sCVVH_I2S  : Variant;     // Cvvh ��ȣ1��ȯ�ڼ�
     sETC_I2S   : Variant;     // Etc ��ȣ1��ȯ�ڼ�
     sHD_I3S    : Variant;     // HD ��ȣ2��ȯ�ڼ�
     sPlasex_I3S: Variant;     // Plasex ��ȣ2��ȯ�ڼ�
     sHemo_I3S  : Variant;     // Hemo ��ȣ2�� ȯ�ڼ�
     sCVVH_I3S  : Variant;     // Cvvh ��ȣ2�� ȯ�ڼ�
     sETC_I3S   : Variant;     // Etc ��ȣ2�� ȯ�ڼ�
     sHD_I4S    : Variant;     // HD ����ȯ�ڼ�
     sPlasex_I4S: Variant;     // Plasex ����ȯ�ڼ�
     sHemo_I4S  : Variant;     // Hemo ����ȯ�ڼ�
     sCVVH_I4S  : Variant;     // Cvvh ����ȯ�ڼ�
     sETC_I4S   : Variant;     // Etc ����ȯ�ڼ�
     sHD_I5S    : Variant;     // HD ��Ÿȯ�ڼ�
     sPlasex_I5S: Variant;     // Plasex ��Ÿȯ�ڼ�
     sHemo_I5S  : Variant;     // Hemo ��Ÿȯ�ڼ�
     sCVVH_I5S  : Variant;     // Cvvh ��Ÿȯ�ڼ�
     sETC_I5S   : Variant;     // Etc ��Ÿȯ�ڼ�
     sHDRsn1    : Variant;     // ����������� HD���
     sPlasexRsn1: Variant;     // ����������� Plasex���
     sHemoRsn1  : Variant;     // ����������� Hemo���
     sCVVHRsn1  : Variant;     // ����������� Cvvh���
     sETCRsn1   : Variant;     // ����������� ��Ÿ���
     sHDRsn2    : Variant;     // ����������� HD ����
     sPlasexRsn2: Variant;     // ����������� Plasex ����
     sHemoRsn2  : Variant;     // ����������� Hemo ����
     sCVVHRsn2  : Variant;     // ����������� Cvvh ����
     sETCRsn2   : Variant;     // ����������� ��Ÿ ����
     sHDRsn3    : Variant;     // ����������� HD ȸ��
     sPlasexRsn3: Variant;     // ����������� Plasex ȸ��
     sHemoRsn3  : Variant;     // ����������� Hemo ȸ��
     sCVVHRsn3  : Variant;     // ����������� Cvvh ȸ��
     sETCRsn3   : Variant;     // ����������� ��Ÿ ȸ��
     sHDRsn4    : Variant;     // ����������� HD �̽�
     sPlasexRsn4: Variant;     // ����������� Plasex �̽�
     sHemoRsn4  : Variant;     // ����������� Hemo �̽�
     sCVVHRsn4  : Variant;     // ����������� Cvvh �̽�
     sETCRsn4   : Variant;     // ����������� ��Ÿ �̽�
     sHDRsn5    : Variant;     // ����������� HD ����
     sPlasexRsn5: Variant;     // ����������� Plasex ����
     sHemoRsn5  : Variant;     // ����������� Hemo ����
     sCVVHRsn5  : Variant;     // ����������� Cvvh ����
     sETCRsn5   : Variant;     // ����������� ��Ÿ ����
     sHDRsn6    : Variant;     // ����������� HD Ÿġ����ȯ
     sPlasexRsn6: Variant;     // ����������� Plasex Ÿġ����ȯ
     sHemoRsn6  : Variant;     // ����������� Hemo Ÿġ����ȯ
     sCVVHRsn6  : Variant;     // ����������� Cvvh Ÿġ����ȯ
     sETCRsn6   : Variant;     // ����������� ��Ÿ Ÿġ����ȯ
     sAVF       : Variant;     // HD AVF ȯ�ڼ�
     sAVG       : Variant;     // HD AVG ȯ�ڼ�
     sPC        : Variant;     // HD PC ȯ�ڼ�
     sJC        : Variant;     // HD JC ȯ�ڼ�
     sFC        : Variant;     // HD FC ȯ�ڼ�
     sSC        : Variant;     // HD SC ȯ�ڼ�
     sETC1      : Variant;     // HD ETC ȯ�ڼ�
     sPD_CMS    : Variant;     // �������� ��ȯ�ڼ�
     sPDRsn1    : Variant;     // �������� �������
     sPDRsn2    : Variant;     // �������� �������
     sPDRsn3    : Variant;     // �������� �������
     sPDRsn4    : Variant;     // �������� �������
     sPDRsn5    : Variant;     // �������� �������
     sPDRsn6    : Variant;     // �������� �������
     sPDKnd1    : Variant;     // �������� ȸ������
     sPDKnd2    : Variant;     // �������� ȸ������
     sPDKnd3    : Variant;     // �������� ȸ������
     sPDKnd4    : Variant;     // �������� ȸ������
     sPDKnd5    : Variant;     // �������� ȸ������
     sPDPIPE_MS : Variant;     // �������� ��ȯ�ڼ�
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
     // ��ȯ�ڽ� �߰�
     sHD_UCS    : Variant;     // ��ȯ�� HD  �Ǽ�
     sPlasex_UCS: Variant;     // ��ȯ�� plasex  �Ǽ�
     sHemo_UCS  : Variant;     // ��ȯ�� Hemo    �Ǽ�
     sCVVH_UCS  : Variant;     // ��ȯ�� CVVH    �Ǽ�
     sETC_UCS   : Variant;     // ��ȯ�� ��Ÿ    �Ǽ�
     sHD_UMS    : Variant;     // �Կ�ȯ�� HD      ȯ�ڼ�
     sPlasex_UMS: Variant;     // �Կ�ȯ�� plasex  ȯ�ڼ�
     sHemo_UMS  : Variant;     // �Կ�ȯ�� Hemo    ȯ�ڼ�
     sCVVH_UMS  : Variant;     // �Կ�ȯ�� CVVH    ȯ�ڼ�
     sETC_UMS   : Variant;     // �Կ�ȯ�� ��Ÿ   ȯ�ڼ�
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
     //(�߰�. 2003.05.06 �̿��) Client Tunning
     function ListSchedule2(sSrchdate:String):Integer;
    end;

    // ��������
    HmhTranst = class
	sPatno      : Variant;  // ȯ�ڹ�ȣ */
	sHdtype     : Variant;  // ����ȯ�ڱ��� */
	sInsu       : Variant;  // ���� */
	sInsubo1    : Variant;  // ��ȣ1�� */
	sInsubo2    : Variant;  // ��ȣ2�� */
	sTransrsn   : Variant;  // �������� */
        sRsndiss    : Variant;  // ������ȯ */
	tHdstart    : Variant;  // ���������� */
	tHdend      : Variant;  // ���������� */
	sHdtool     : Variant;  // ������� */
	sHdmachin   : Variant;  // ������ */
	sHdfloid    : Variant;  // ������ */
	sHpdcnt     : Variant;  // ����ȸ�� */
	sHpdtime    : Variant;  // �����ð� */
	sBldspeed   : Variant;  // �����ӵ� */
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
	sFstqty     : Variant;  // ���ĸ��ʱ�뷮 */
	sMainqty    : Variant;  // �����뷮 */
	sPreshgh1   : Variant;  // ����������(��) */
	sPreshgh2   : Variant;  // ����������(��) */
	sPreslow1   : Variant;  // ����������(��) */
	sPreslow2   : Variant;  // ����������(��) */
	sWeight     : Variant;  // ��ü�� */
	sIncwght    : Variant;  // ü�������� */
	sHbsag      : Variant;  // HBsAg */
	sAntihcv    : Variant;  // AntiHCV */
	sAntihiv    : Variant;  // AntiHIV */
	sVdrl       : Variant;  // VDRL */
	sBloodab    : Variant;  // ������AB */
	sBloodrh    : Variant;  // ������RH */
	sBloodyn    : Variant;  // ������ Ȯ�ο��� */
	sTestdte    : Variant;  // �˻����� */
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
	sOtrtest    : Variant;  // ��Ÿ�˻� */
	sDrug       : Variant;  // ���� */
	sCommnt     : Variant;  // Ư�̻��� */
	sMakeDrnm   : Variant;  // �ۼ��� */
        sMakeDrid   : Variant;  // �ۼ��� ���*/
	tCrtdte     : Variant;  // �ۼ��� */
	sHosptel    : Variant;  // ����������ȭ */
        sExamrslt   : Variant;  // �˻��� (Text)
	sEditid     : Variant;  // ������ ID */
	sEditip     : Variant;  // ������ IP */
	tEditdate   : Variant;  // �����Ͻ� */
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

    // ȯ���� ����ġ
    HmhPtloct = class
     sPatno  	: Variant;  // ȯ�ڹ�ȣ
     sMeddate	: Variant;  // �Կ�����/��������
     sMeddept   : Variant;  // �����
     sDrId      : Variant;  // �ǻ�
     sPttype    : Variant;  // ��������
     sWardNo    : Variant;  // ����
     sRoomNo    : Variant;  // ����
     sMedtime   : Variant;  // ���޽� �ð�
     sPtloc 	 : Variant;   // ����(I : �Կ�, O : �ܷ�, E : ����)
     sType      : Variant;  // �����ڵ�
     sOrdDate   : Variant;  // ó������
     sSubInSt   : Variant;  // �κ�������
     sBckStat   : Variant;  // ����ɻ����� ȯ�ڻ���
     sExecseq   : Variant;  // 1�� 2ȸ�� ������(max)
     sAdmdate   : Variant;  // �Կ�����

     function SelectPtloc(Ptno, sDate : String):Integer;
     function SelectPatInfo(Ptno, sDate, sType : String):Integer;
    end;

    // ���� ó�� Reference
    HmhOrdrct = class
     sOrdcd   : Variant;
     sOrdname : Variant;
     function ListOrdrc():Integer;
    end;

    // �������� ����
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

   // ��ó�� ����
   HmhMedort = Class
      sPatno    : Variant;
      sOrddate  : Variant;
      sOrddesc1 : Variant;
      sOrddesc2 : Variant;
      function SelectMedor(sPatno,sFromdate,sTodate : String) : Integer;
   end;

   // ����ȯ�� �ܷ�/�Կ� ��ȣ����
   HmhNurset = Class
     sType1 	 : Variant;  // �˻�����1
     sType2 	 : Variant;  // �˻�����2
     sType3 	 : Variant;  // �˻�����3
     sType4 	 : Variant;  // �˻�����4
     sType5 	 : Variant;  // �˻�����5
     sType6 	 : Variant;  // �˻�����6
     sPatNo 	 : Variant;  // ȯ�ڹ�ȣ
     sPatName	 : Variant;  // ȯ�ڸ�
     sResno1	 : Variant;  // �ֹι�ȣ1
     sResno2	 : Variant;  // �ֹι�ȣ2
     sTelno1	 : Variant;  // ����ȭ��ȣ
     sTelno2	 : Variant;  // ������ȭ��ȣ
     sTelno3	 : Variant;  // �ڵ���
     sEmail 	 : Variant;  // E-MAIL
     sZipcd 	 : Variant;  // �����ȣ
     sAddress	 : Variant;  // �ּ�
     sSex   	 : Variant;  // ����(M/F)
     sBirtDate	 : Variant;  // �������(YYYYMMDD)
     sPattype	 : Variant;  // ȯ������
     sPattpNm	 : Variant;  // ȯ��������
     sSubinsut	 : Variant;  // �κ�������(����)
     sExceptcd	 : Variant;  // �Ǿ�о������ڵ�
     sReferyn	 : Variant;  // Refer����
     sDrgyn 	 : Variant;  // DRG����
     sAdmDate	 : Variant;  // �Կ���
     sMedDept	 : Variant;  // �����
     sDeptNm	 : Variant;  // �������
     sWardNo	 : Variant;  // ����
     sRoomNo	 : Variant;  // ����
     sWardNo1	 : Variant;  // ����(����ġ)
     sRoomNo1	 : Variant;  // ����(����ġ)
     sBedNo	    : Variant;  // ����
     sChaDr 	 : Variant;  // ��ġ��
     sChaDrNm	 : Variant;  // ��ġ�Ǹ�
     sGenDr 	 : Variant;  // �����
     sGenDrNm	 : Variant;  // ����Ǹ�
     sDiagcd	 : Variant;  // �������ڵ�
     sDiagName	 : Variant;  // �����ܸ�
     sLstopDt	 : Variant;  // �ֱټ�����
     sOpcode	 : Variant;  // �ֱټ����ڵ�
     sOpName	 : Variant;  // �ֱټ�����
     sPatSect	 : Variant;  // ȯ�ڱ���(D:DRG R:REFER S:����)
     sFstmedty  : Variant;  // 1:���� 2:���� 3:��ȯ 4:������
     sVschktRm  : Variant;  // Vital Sign �����ֱ�
     sVschkYn   : Variant;  // Vital Sign ��������
     sDschexdt	 : Variant;  // ���������
     sDschdate	 : Variant;  // �����
     sEditId	 : Variant;  // ������ ID
     sEditIp	 : Variant;  // ������ IP
     sAge       : Variant;  // ����  (�߰�����)
     sPatCls	 : Variant;  // ȯ�ڱ���('I'=�Կ�,'O'=�ܷ�,'E'=����)
     sMedTime	 : Variant;  // ����ð�
     sErOutyn 	 : Variant;  // ����ȯ����ǿ���
     sErAdmyn 	 : Variant;  // ����ȯ���Կ�����
     sMedYn 	 : Variant;  // ���Ῡ��
     sOld_feveryn: Variant; // ���� �߿�����
     sOld_diareyn: Variant; // ���� ���翩��
     sOld_ventyn : Variant; // ���� Ventilator����
     sOld_foleyyn: Variant; // ���� F. Cath����
     sOld_centyn : Variant; // ���� Cent����
     sFeveryn    : Variant; // ���� �߿�����
     sDiareyn    : Variant; // ���� ���翩��
     sVentyn     : Variant; // ���� Ventilator����
     sFoleyyn    : Variant; // ���� F. Cath����
     sCentyn     : Variant; // ���� Cent����
     sInvdevyn   : Variant; // ���� ��ġ����
     sRgtdate    : Variant; // �������
     sEditdate   :Variant;  // ��������
     sMax_temp   :Variant;  // �ְ� ü��
     sCurDataYN  :Variant;  // ���������� �ڷᰡ �ִ����� ���� 2001.10.13
     sChkName    :Variant;  // �����׸� 2001.10.16
     sHeight     :Variant;  // ����
     sWeight     :Variant;  // ü��
     sBckStat    :Variant;  // �ɻ����࿩��
     sLstordDt   :Variant;  // �ֱ�ó������
     sFollow     :Variant;  // FollowUp����
     sDate1      :Variant;  // ������ ����
     sDate2      :Variant;  // ������ ����
     sRemark     :Variant;  // Ư�����
     sBodytemp   :Variant;  //�Ҿư��ܷ� ü�� 2001.11.21
     sTransDt    :Variant;  // �ֱ�������������
     sRsvType    :Variant;  //�ܷ����౸��
     sSysdate    :Variant;
     sNurStat    :Variant;
     sHdsFlag    :Variant;
     sMedDate    :Variant;
     sMsDate     :Variant;  // ��������
     sCdChrtYn   :Variant;  // CD Chart ����
     sMedDr       : Variant;  // �����ǻ�
     sOrdDate     : Variant;  // ó������/�����û����
     iStayNo      : Variant;  // ���������
     iUnCollect   : Variant;
     sPatTypeNm   : Variant;  // ȯ������
     sRsvTypeCd   : Variant;  // ���౸���ڵ�
     sRsvcfmYn    : Variant;  // ����Ȯ��
     sTypeCd      : Variant;  // ��������
     sSpcdrYn     : Variant;  // �����ǻ翩��
     sMedrcpYn    : Variant;  // �������������
     sRcpYn       : Variant;  // ��������
     sMedchgId    : Variant;  // �������μ�����
     sErDate      : Variant;  // ���޽ǵ����ð�
     sOeFlag      : Variant;  // �ܷ����޿���
     sOiFlag      : Variant;  // �ܷ�/�Կ�����
     sRejtDate    : Variant;  // ����Ͻ�
     sFstinpId    : Variant;  // �����Է���
     tFstTime     : Variant;  // �����Է½ð�
     iRcpSeq      : Variant;  // ��������
     sMedDrNm     : Variant;  // ������Name
     sOtherYn     : Variant;  // Ÿ�����࿩��
     sChartYn     : Variant;  // �Կ���Ʈ���⿩��
     sFilmYn      : Variant;  // �ʸ������������
     sGubn        : Variant;  //ȯ�ڱ��и�
     sCount       : Variant;  // �����ο�
     sFstmedtyR   : Variant;
     sFsttime     : Variant;
     sCustcd      : Variant;
     sDccode      : Variant;
     sPattypeCd   : Variant;
     sCurrloc     : Variant;  //��Ʈ����ġ
     sFuture      : Variant;
     sNochcd      : Variant;
     sHdshift     : Variant;

     //����ȯ�� ���ո���Ʈ ��ȸ
    function SelectHdPatList1(sType1,sType2,sType3,sType4:String):Integer;
    function SelectHdPatList2(sType1,MedDate,MedDept,MedDr,MedYn,MedTime:String):Integer;
   end;

   // ����ȯ�� ���� ������
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
     //���������� �ʵ�
     sOrdDateGrp  :Variant;
     sEdicode     :Variant;
     sOrdname     :Variant;
     sOrdCount    :Variant;
     sOrdQty      :Variant;
     // ����/ü�߰����� �ʵ�
     sMeasureDate  :Variant;
     sPrePress    :Variant;
     sPostPress   :Variant;
     sPreWeight   :Variant;
     sPostWeight  :Variant;
     // �������� ������ �ʵ�
     sPreBUN      :Variant;
     sPostBUN     :Variant;
     sTusukType   :Variant;
     sTusukTime   :Variant;
     sJesu        :Variant;
     sTestResult  :Variant;
     sPostCWeight :Variant; // ���� ���� ������ ������ ���� ������ ü��
     // ������������͸� �ʵ�
     sTongType    :Variant;
     sArtery      :Variant;
     sVein        :Variant;
     // ����˻����͸�
     sExecDate    :Variant;
     sEngName     :Variant;
     sRslt        :Variant;

     // SELECT �߰� ����
     sPatname     :Variant;

     //���뺯��
     sEditid      :Variant;
     sEditip      :Variant;

     // ���� ������ ȯ�� �⺻ �Է�
     function InputHemoInf():Integer;
     function ListHemoInf(Type1,Patno:String):Integer;
     function SelectHemoInf(Patno:String):Integer;
     function SelectHinject(Patno,StartDate,EndDate:String):Integer;
     // ���� ����/ü�߰���
     function InputHemoPressure():Integer;
     function ListPressInf(patno:String):Integer;
     function ListPressDetailInf(patno,measuredate:String):Integer;
     // ���� ������ �˻���
     function InputHemoResult():Integer;
     function ListTestInf(patno:String):Integer;
     function ListTestDetailInf(patno,measuredate:String):Integer;
     // ������������͸�
     function InputHemoBlood():Integer;
     function ListBloodInf(patno:String):Integer;
     function ListBloodDetailInf(patno,measuredate:String):Integer;
     // ����˻����͸�
     function ListExamInf(patno,startdate:String):Integer;
   end;

   //���������
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

     sSignData  : Variant;              // SONGLIM_THOMA  ����
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

     //����������VS �׸� �и�. KimDaeYong 2017-09-14
     sVsBgPls   :Variant;
     sVsBgResp  :Variant;
     sVsBgBld   :Variant;
     sVsMdPls   :Variant;
     sVsMdResp  :Variant;
     sVsMdBld   :Variant;
     sVsEdPls   :Variant;
     sVsEdResp  :Variant;
     sVsEdBld   :Variant;
     sVeinpres  :Variant;   //���ƾ�. KimDaeYong 2017-11-23

     //������ȣ���(MHHDNRCT). KimDaeYong 2017-08-14
     sActseqno  :Variant;
     sActdate   :Variant;
     sActtime   :Variant;
     sActtxt    :Variant;
     sActrecid  :Variant;
     sActrecnm  :Variant;

     //����,���� �߰�. KimDaeYong 2018-07-26
     sWardno    :Variant;
     sRoomno    :Variant;
     //���� �и� �߰�. KimDaeYong 2018-07-26
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
     function Insert3:Integer;  //��ȣIO,VS�Է� KimDaeYong 2018-07-26
   end;

var
    mhPtinft : HmhPtinft;  // ����ȯ�ڱ⺻
    mhHpactt : HmhHpactt;  // �����ǽ� �� �������
    mhTranst : HmhTranst;  // ��������
    mhPtloct : HmhPtloct;  // ȯ���� ����ġ
    mhOrdrct : HmhOrdrct;  // ����ó�� Reference
    mhHpdort : HmhHpdort;  // �������� ����
    mhMedort : HmhMedort;  // �����̷�
    mhNurset : HmhNurset;  // ��ȣ����
    mhHemomt : HmhHemomt;  // ����������ȯ�ڱ⺻
    mhHdrect : HmhHdrect;  // ���������, KimDaeYong 2017-05-29

    srSedevt  : HsrSedevt;            //����ġ��(�ű�)_�������򰡱��, KimSongJu 2015.4
    srSedmet  : HsrSedmet;            //����ġ��(�ű�)_������������, KimSongJu 2015.4
    srSedrct  : HsrSedrct;            //����ġ��(�ű�)_������ȸ�����¹���Ǳ���, KimSongJu 2015.4    

    // ���뺯����
    mhHDType,              // ���� ���� A: ����, B: ����
    mhPatNo,               // ȯ�ڹ�ȣ
    mhPatSect,             // ȯ�ڻ���
    mhWardNo,              // ����
    mhMedDept,             // �����
    mhTelno1,              // ��ȭ��ȣ1
    mhTelno2,              // ��ȭ��ȣ2
    mhTelno3,              // ��ȭ��ȣ3
    mhMarryyn,             // ��ȥ����
    mhMryOthr,             // ��ȥ���� ��Ÿ
    mhJobcode,             // ����
    mhRelation,            // ��������
    mhHdkind,              // ������������, ���������� ����
    mhkindOthr,            // ������������, ���������� ���� ��Ÿ
    mhHdknd,               // ��������������, ȸ��� ����
    mhkndOthr,             // ��������������, ȸ��� ���� ��Ÿ
    mhRsndiss,             // ������ȯ
    mhRsnOthr,             // ������ȯ ��Ÿ
    mhAcuteyn,             // �޸��� ����
    mhTrpYN,               // �̽� ���ɿ���
    mhTrpdate,             // ���� �̽���
    mhHb1,                 // �����׿� (HbsAg)
    mhHb2,                 // �����׿� (HbsAb)
    mhHb4,                 // �����׿� (HCV)
    mhHb5,                 // �����׿� (VDRL)
    mhHb6,                 // �����׿� (HIV)
    mhHpdsdate,            // ����������
    mhSpcdr,               // ����������
    mhBLDABO,              // ������ ('',A,B,AB,O)
    mhBLDRH,               // ������ ('',+,-)
    mhPipeHis,             // ���� �̷�
    mhEnddate,             // ������������
    mhHdendrsn,            // �������
    mhTrandate,            // �̼�����
    mhTranhosp,            // �̼ۺ���
    mhRemark,              // Ư�����
    mhNrpros,              // Process
    mhSchdtype,            // 2 �ְ� ������ Ÿ��
    mhOrdcd,               // ó���ڵ�
    mhHeight,              // ����
    mhWeight,              // ü��
    mhMedTime,             // ����ð�
    mhDrId,                // ������
    mhSubInSt,             // ��������
    mhAdmDate,             // �����Կ���
    mhEditdate  : String;  // ��������

const
    BLD_HDTYPE = 'A';
    PERI_HDTYPE = 'B';

implementation

uses TuxCom, TuxMsg;

////////////////////////////////////////////////////////////////////////////////
//  HmhPtinft	����ȯ�ڱ⺻                                                  //
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
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_PATNO;S_TYPE1;S_TYPE2');
   SetFldValue(0,[PatNO,HDType,SeqNo] );
   if (txGetF('MH_PTINF_S1')) then
   begin //Tuxedo Service Call
      GetFldVar('S_CODE1',sOrdcd); //ó���ڵ�
      GetFldVar('S_CODE2',iHeight); //����
      GetFldVar('S_CODE3',iWeight); //ü��

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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_PATNO');
   SetFldValue(0,[PatNO] );
   if (txGetF('MH_PTINF_S2')) then
   begin //Tuxedo Service Call
      GetFldVar('S_CODE1',sSeqNo); //����

      Result := GetRecordCnt('S_CODE1');
      txFree;
   end;
end;
function HmhPtinft.SelectSeq(PatNO,Hdtype:String):Integer;
begin

   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_PATNO');
   SetFldValue(0,[PatNO] );
   SetFldName('S_PATNO;S_TYPE1');
   SetFldValue(0,[PatNO,Hdtype] );
   if (txGetF('MH_PTINF_S2')) then
   begin //Tuxedo Service Call
      GetFldVar('S_CODE1',sSeqNo); //����

      Result := GetRecordCnt('S_CODE1');
      txFree;
   end;
end;


function HmhPtinft.DeletePatinfo(sPatno,sHdtype,sSeqno : String) : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc32; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
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

// ��������ȯ�� Hemoglobin ����� ��ȸ  2005.04.01
function HmhPtinft.ListHpHemoglobin(SrchDate : String) : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
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
//  HmhHpactt	�����ǽ� �� �������                                           //
////////////////////////////////////////////////////////////////////////////////

function HmhHpactt.InputSchedule(Cnt:Integer):Integer;
var
   i : integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc32; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
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
//    �ΰ��Ž� ȯ�� ���                                                     //
///////////////////////////////////////////////////////////////////////////////

function  HmhHPactt.SearchYear(sStdate,sEddate,sCond:string) : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
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

//(2003.05.06 �̿��) Client Tunning
function HmhHpactt.ListSchedule2(sSrchDate:String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
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
//  HmhTranst	��������                                                      //
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
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc32; //Pointer�� �޾ƿ�.
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
//  HmhPtloct  ȯ���� ����ġ
////////////////////////////////////////////////////////////////////////////////

function HmhPtloct.SelectPtloc(Ptno, sDate : String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
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
   txAlloc; //Pointer�� �޾ƿ�.
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

//  HmdOrdrct   ����ó�� Reference
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

// �������ó��� ��ȸ - �ֱ� ���ó���
function HmhHpdort.SelectText(PatNO,HDType:string):Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_PATNO;S_TYPE1');
   SetFldValue(0,[PatNO,HDType] );
   if (txGetF('MH_HPDOR_S1')) then
   begin //Tuxedo Service Call
      GetFldVar('S_PATNO',sPatNO);     //ȯ�ڹ�ȣ
      GetFldVar('S_STRING1',sOrdDate); //�ֱٿ�����
      GetFldVar('S_STRING2',sOrdCd);   //ó���ڵ�
      GetFldVar('S_STRING3',sOrdName); //ó���
      GetFldVar('S_STRING4',sOrdText); //���ó���
      GetFldVar('S_STRING5',sRsndiss); //������ȯ
      Result := GetRecordCnt('S_STRING1');
      txFree;
   end;
end;

// �������ó��� ��ȸ - ���� �̷³���
function HmhHpdort.SelectText2(PatNO,HDType,Fromdate,Todate:string):Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_PATNO;S_TYPE1;S_TYPE2;S_TYPE3');
   SetFldValue(0,[PatNO,HDType,Fromdate,Todate] );
   if (txGetF('MH_HPDOR_S2')) then
   begin //Tuxedo Service Call
      GetFldVar('S_PATNO',sPatNO);     //ȯ�ڹ�ȣ
      GetFldVar('S_STRING1',sOrdDate); //�ֱٿ�����
      GetFldVar('S_STRING2',sOrdCd);   //ó���ڵ�
      GetFldVar('S_STRING3',sOrdName); //ó���
      GetFldVar('S_STRING4',sOrdText); //���ó���
      GetFldVar('S_STRING5',sOrddr); //���ó���
      Result := GetRecordCnt('S_STRING2');
      txFree;
   end;
end;

function HmhHpdort.UpdateHdOrder(PatNo,OrdDate,Ordseqno,EditId,EditIp:String):Integer;
begin
   Result := -1;
   //Pointer�� �޾ƿ�.
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
//  HmhMedort  �����̷�                                                       //
////////////////////////////////////////////////////////////////////////////////

function HmhMedort.SelectMedor(sPatno,sFromdate,sTodate : String) : Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');
   SetFldValue(0,[sPatno,sFromdate,sTodate] );
   if (txGetF('MH_MEDOR_L1')) then
   begin //Tuxedo Service Call
      GetFldVar('S_CODE1',sOrdDate); //�ֱٿ�����
      GetFldVar('S_CODE2',sOrddesc1);   //ó���ڵ�
      GetFldVar('S_CODE3',sOrddesc2); //ó���
      Result := GetRecordCnt('S_CODE1');
      txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
//  HmhNurset  ��ȣ����                                                       //
////////////////////////////////////////////////////////////////////////////////

function HmhNurset.SelectHdpatList1(sType1,sType2,sType3,sType4:String):Integer;
begin
   Result := -1;
   txAlloc32; //Pointer�� �޾ƿ�.

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
      GetFldVar32('S_CODE17' ,sPatSect);   // D:DRG R:REFER S:����
      GetFldVar32('S_CODE18' ,sVschktRm);
      GetFldVar32('S_CODE19' ,sVschkYn);
      GetFldVar32('S_CODE20' ,sDschexdt);
      GetFldVar32('S_CODE21' ,sDschdate);
      GetFldVar32('S_CODE22' ,sWardNo1);
      GetFldVar32('S_CODE23' ,sRoomNo1);
      GetFldVar32('S_CODE24' ,sLstordDt); // �ֱ�ó������
      GetFldVar32('S_CODE25' ,sWeight);
      GetFldVar32('S_CODE26' ,sTransDt);
      GetFldVar32('S_CODE27' ,sSysdate);
      GetFldVar32('S_CODE28' ,sNurstat);
      GetFldVar32('S_CODE29' ,sBckStat);
      GetFldVar32('S_CODE30' ,sResNo1);
      GetFldVar32('S_STRING1' ,sResNo2);


      //Service�� �����ϰ� FML Buffer�� PUT�� Record��
      Result :=GetRecordCnt32('S_CODE1');
      txFree32;
   end;
end;

// �� 1:�������� �ڷ�Sorting, 2:�ð���, 3:�����
function HmhNurset.SelectHdpatList2(sType1,MedDate,MedDept,MedDr,MedYn,MedTime:String):Integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_CODE1;S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5'); //������;�����;������;���Ῡ��;����ð�
   SetFldValue32(0,[sType1,MedDate,MedDept,MedDr,MedYn,MedTime] );

   //Tuxedo Service Call
   if (txGetF32('MH_OPDLS_L1')) then
   begin
      GetFldVar32('S_PATNO',    sPatNo   );  // ȯ�ڹ�ȣ
      GetFldVar32('S_STRING1',  sMedDate );  // ������
      GetFldVar32('S_STRING2',  sMedTime );  // ���Ό��ð�
      GetFldVar32('S_STRING3',  sMedDept );  // �����
      GetFldVar32('S_STRING4',  sFstmedTy);  // ��/��������
      GetFldVar32('S_STRING5',  sMedDr   );  // ������
      GetFldVar32('S_STRING6',  sMedYn   );  // ���Ῡ��
      GetFldVar32('S_STRING7',  sRcpYn   );  // ��������
      GetFldVar32('S_STRING8',  sChartYn );  // �Կ���Ʈ���⿩��
      GetFldVar32('S_STRING9',  sFilmYn  );  // �ʸ������������
      GetFldVar32('S_STRING10', sRemark  );  // Ư�����
      GetFldVar32('S_STRING11', sPatType );  // ȯ������(���豸��)
      GetFldVar32('S_STRING12', sPatName );  // ȯ�ڸ�
      GetFldVar32('S_STRING13', sSex     );  // ����
      GetFldVar32('S_STRING14', sBirtDate);  // �������
      GetFldVar32('S_STRING15', sTelNo1  );  // ȯ����ȭ��ȣ1
      GetFldVar32('S_STRING16', sTelNo2  );  // ȯ����ȭ��ȣ2
      GetFldVar32('S_STRING17', sTelNo3  );  // ȯ����ȭ��ȣ3
      GetFldVar32('S_STRING18', sMedDrNm );  // ������Name
      GetFldVar32('S_STRING19', sOtherYn );  // Ÿ�����࿩��
      GetFldVar32('S_STRING20', sRsvType );  // ���౸��
      GetFldVar32('S_STRING21', sDiagname);  // ���ܸ�
      GetFldVar32('S_STRING22', sMedrcpYn);  // ������ ��������
      GetFldVar32('S_STRING23', sOrdDate );  // ������������
      GetFldVar32('S_STRING24', sFollow );   // Follow up
      GetFldVar32('S_STRING25', sRsvTypeCd); // ���౸���ڵ�
      GetFldVar32('S_STRING26', sHdsflag);   // ����ȯ������
      GetFldVar32('S_STRING27', sPatsect);   // ����ȯ������
      GetFldVar32('S_STRING28', sHdshift);   // ����ȯ������

      //��ȸ�Ǽ� return
      Result := GetRecordCnt32('S_PATNO');
      txFree32;
   end;
end;

function HmhHemomt.InputHemoInf():Integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
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

   //Pointer�� �޾ƿ�.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_TYPE1;S_TYPE2');
   SetFldValue32(0,[Type1,Patno] );

   //Tuxedo Service Call
   if (txGetF32('MH_HEMOM_L1')) then
   begin
      GetFldVar32('S_PATNO',    sPatNo   );  // ȯ�ڹ�ȣ
      GetFldVar32('S_STRING1',  sPatName );  // ������
      //��ȸ�Ǽ� return
      Result := GetRecordCnt32('S_PATNO');
      txFree32;
   end;
end;

function HmhHemomt.SelectHemoInf(Patno:String):Integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_TYPE1');
   SetFldValue32(0,[Patno] );

   //Tuxedo Service Call
   if (txGetF32('MH_HEMOM_S1')) then
   begin
      GetFldVar32('S_STRING1',   sPatNo      );  // ȯ�ڹ�ȣ
      GetFldVar32('S_STRING2',   sStartdt    );  // ������
      GetFldVar32('S_STRING3',   sDiagsimcd1 );  // ������
      GetFldVar32('S_STRING4',   sDiagsimcd2 );  // ������
      GetFldVar32('S_STRING5',   sEf40cb     );  // ������
      GetFldVar32('S_STRING6',   sPacecb     );  // ������
      GetFldVar32('S_STRING7',   sChestcb    );  // ������
      GetFldVar32('S_STRING8',   sGaesimcb   );  // ������
      GetFldVar32('S_STRING9',   sDiagnoecd1 );  // ������
      GetFldVar32('S_STRING10',  sDiagnoecd2 );  // ������
      GetFldVar32('S_STRING11',  sNormalcb   );  // ������
      GetFldVar32('S_STRING12',  sDiaggancd1 );  // ������
      GetFldVar32('S_STRING13',  sDiaggancd2 );  // ������
      GetFldVar32('S_STRING14',  sCpscb      );  // ������
      GetFldVar32('S_STRING15',  sDiagwicd1  );  // ������
      GetFldVar32('S_STRING16',  sDiagwicd2  );  // ������
      GetFldVar32('S_STRING17',  sWith1yrbcb );  // ������
      GetFldVar32('S_STRING18',  sDiagpyecd1 );  // ������
      GetFldVar32('S_STRING19',  sDiagpyecd2 );  // ������
      GetFldVar32('S_STRING20',  sSpo2cb     );  // ������
      GetFldVar32('S_STRING21',  sDiagakcd1  );  // ������
      GetFldVar32('S_STRING22',  sDiagakcd2  );  // ������
      GetFldVar32('S_STRING23',  sWith1yrocb );  // ������
      GetFldVar32('S_STRING24',  sDiagdangcd1);  // ������
      GetFldVar32('S_STRING25',  sDiagdangcd2);  // ������
      GetFldVar32('S_STRING26',  sHeight     );  // ������

      //��ȸ�Ǽ� return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

function HmhHemomt.SelectHinject(Patno,StartDate,EndDate:String):Integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_TYPE1;S_TYPE2;S_TYPE3');
   SetFldValue32(0,[Patno,StartDate,EndDate] );

   //Tuxedo Service Call
   if (txGetF32('MH_HEMOM_S2')) then
   begin
      GetFldVar32('S_STRING1',   sOrdDateGrp      );  // ȯ�ڹ�ȣ
      GetFldVar32('S_STRING2',   sEdicode    );  // ������
      GetFldVar32('S_STRING3',   sOrdname );  // ������
      GetFldVar32('S_STRING4',   sOrdCount );  // ������
      GetFldVar32('S_STRING5',   sOrdQty     );  // ������

      //��ȸ�Ǽ� return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

function HmhHemomt.InputHemoPressure():Integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
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

   //Pointer�� �޾ƿ�.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_TYPE1');
   SetFldValue32(0,[Patno] );

   //Tuxedo Service Call
   if (txGetF32('MH_HEMOP_L1')) then
   begin
      GetFldVar32('S_STRING1',    sMeasureDate   );  // ȯ�ڹ�ȣ
      //��ȸ�Ǽ� return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

function HmhHemomt.ListPressDetailInf(patno,measuredate:String):Integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
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
      //��ȸ�Ǽ� return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

function HmhHemomt.InputHemoResult():Integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
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

   //Pointer�� �޾ƿ�.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_TYPE1');
   SetFldValue32(0,[Patno] );

   //Tuxedo Service Call
   if (txGetF32('MH_HEMOC_L1')) then
   begin
      GetFldVar32('S_STRING1',    sMeasureDate   );  // ȯ�ڹ�ȣ
      //��ȸ�Ǽ� return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

function HmhHemomt.ListTestDetailInf(patno,measuredate:String):Integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
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
      //��ȸ�Ǽ� return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

function HmhHemomt.InputHemoBlood():Integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
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

   //Pointer�� �޾ƿ�.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_TYPE1');
   SetFldValue32(0,[Patno] );

   //Tuxedo Service Call
   if (txGetF32('MH_HEMOB_L1')) then
   begin
      GetFldVar32('S_STRING1',    sMeasureDate   );  // ȯ�ڹ�ȣ
      //��ȸ�Ǽ� return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

function HmhHemomt.ListBloodDetailInf(patno,measuredate:String):Integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
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

      //��ȸ�Ǽ� return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

function HmhHemomt.ListExamInf(patno,startdate:String):Integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
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
      //��ȸ�Ǽ� return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

//��������� ȯ�ں� ����Ʈ ��ȸ
//KimDaeYong 2017-05-30
function HmhHdrect.List1(inPatno, inOrddate:String):Integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
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

      //��ȸ�Ǽ� return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

//��������� ȯ��, ���ں� ��ȸ
//KimDaeYong 2017-05-31
function HmhHdrect.Select1(inPatno, inMeddate, inOrddate, inOrdseqno:String):Integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
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

      //��ȸ�Ǽ� return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

//��������� ����, KimDaeYong 2017-06-01
function HmhHdrect.Delete1(inPatno, inMeddate, inOrddate, inOrdseqno:String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
   SetFldValue(0,[inPatno, inMeddate, inOrddate, inOrdseqno]);

   if (txPutF('MH_HDREC_D1')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

//��������� �Է�/����, KimDaeYong 2017-06-01
function HmhHdrect.Insert1(sSignData,sSerialNo,sSubjectDN:string):Integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
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

//���������_��ȣ��� ����Ʈ ��ȸ
//KimDaeYong 2017-08-14
function HmhHdrect.List2(inPatno, inMeddate, inOrddate, inOrseqno:String):Integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
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

      //��ȸ�Ǽ� return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

//��������� �Է�/����, KimDaeYong 2017-08-14
function HmhHdrect.Insert2(inFlag,sSignData,sSerialNo,sSubjectDN:string):Integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
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

//������ȣ��� ����, KimDaeYong 2017-08-14
function HmhHdrect.Delete2(inPatno, inMeddate, inOrddate, inOrdseqno, inActseqno:String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5');
   SetFldValue(0,[inPatno, inMeddate, inOrddate, inOrdseqno, inActseqno]);

   if (txPutF('MH_HDREC_D2')) then begin //Tuxedo Service Call
      Result := 1;
      txFree;
   end;
end;

//��ȣIO,VS�Է�, KimDaeYong 2018-07-26
function HmhHdrect.Insert3:Integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
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
//  SRSEDRCT	����ġ �����
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
