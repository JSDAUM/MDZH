{  ���Ŀ��� ��ȣ�κи� ���� �����Ѵ�.....
   �ۼ����� :
   HmdInrpft1.NrplInform      : ��ȣ��ȹ �з��ڵ� ��ȸ (�ǽ����纸�� �� ����Ⱥ��� (��ü,����,����))
   HmdInrpft1.mdInrpft_save   : ȯ�ں� ��ȣ��ȹ������ �����Ѵ�.
   HmdInrpat.mdInrplt_select  : ��ȣ������ ��ȸ�Ѵ�.
   HmdInrpjt.mdInrpjt_select  : ��ȣ���ܺ� ��������.
   HmdInrplt1.mdInrplt_select : ��з��� ��ȸ�Ѵ�.
   HmdInrpmt1.mdInrpmt_select : ��з��� ���� �ߺз��� ��ȸ�Ѵ�.
   Hmdinrpbt.mdinrpbt_select  : ��з� �ߺз��� ���� ���ܸ�(�����ڵ带 ������ ���ܻ󼼳�����ȸ)
   Hmdinrpet.mdinrpet_select  : ���ߺз��� �����ڵ庰�� ���ÿ����� ��ȸ
}

unit MDCLASS2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
   // ȯ�ں� ��ȣ��ȹ����
    HmdInrpft1 = class
      v_Nrplcode : Variant; // ��ȣ��ȹ��з��ڵ�
      v_Nrplname : Variant; // ��ȣ��ȹ��з��ڵ��
      v_Nrpmcode : Variant; // ��ȣ��ȹ�ߺз��ڵ�
      v_Nrpmname : Variant; // ��ȣ��ȹ�ߺз��ڵ��
      v_Diagcode : Variant; // ��ȣ��ȹ�����ڵ�
      v_Diagname : Variant; // ��ȣ��ȹ���ܸ�
      v_Plancode : Variant; // ��ȣ��ȹ�����ڵ�
      v_Planname : Variant; // ��ȣ��ȹ�����ڵ��
      v_Diagnocd : Variant; // ��ȣ�����ڵ�(������ ������ȸ�Ѵ�)
      v_Appldate : Variant; // ��������
      v_Enddate  : Variant; // ��������
      v_Objdiag  : Variant; // �������ڷ�
      v_Subdiag  : Variant; // �ְ����ڷ�
      v_Res      : Variant; // �򰡰��
      v_Causecd  : Variant; // ���ÿ����ڵ�
      v_Causenm  : Variant; // ���ÿ��θ�Ī
      v_Act      : Variant; // Acting ����
      v_Appseqno : Variant; // �������
      function NrplInform(sType1   , // ����  1: �ǽ����纸�� , 2: �ǽ����纸�� ����
                          sType2   , // ����  1:��ü ,2:������ ,3:����
                          sFromdate, // ��ȸ������
                          sTodate  , // ��ȸ������
                          sPatno   , // ȯ�ڹ�ȣ
                          sAdmdate   // �Կ�����
                          : String) : integer;
      // ȯ�ں� ��ȣ��ȹ������ �����Ѵ�.
      function mdInrpft_save(sPatno   ,               // ȯ�ڹ�ȣ
                             sAdmdate ,                // �Կ�����
                             sAppldate,                // ��������
                             sAppseqno,                // �������
                             sDiagnocd,                // ��ȣ�����ڵ�
                             sPlancode,                // ��ȣ��ȹ�����ڵ�
                             sEnddate ,                // ��������
                             sObjdiag ,                // �������ڷ�
                             sSubdiag ,                // �ְ����ڷ�
                             sRes     ,                // �򰡰��
                             sEditip  ,                // ������IP
                             sEditid  ,                // ������ID
                             sCausecd ,                // ���ÿ���
                             sCausenm ,                // ���ÿ��θ�
                             sGubun                  // ����(I:�Է�,U:����)
                             : String ) : integer;
      function DeleteInrpft(sType1, sType2, sType3, sType4: string):Integer;

    end;
    // ��ȣ����������
    HmdInrpat = class
      v_Toolcode : Variant ; // ��������
      v_Problem  : Variant ; // ��ȣ������
      v_Tooltxt  : Variant ; // ��ȣ��������
      // ��ȣ������ ��ȸ�Ѵ�.
      function mdInrpat_select : integer;
    end;

    // ��ȣ���ܺ� ��������
    HmdInrpjt = class
      v_nrplcode  :Variant; // ��з�
      v_nrpmcode  :Variant; // �ߺз�
      v_diagcode  :Variant; // �����ڵ�
      v_diagname  :Variant; // ���ܸ�
      // ��ȣ���ܺ� ����������ȸ
      function mdInrpjt_select(sToolcode : string) : integer;
    end;

    // ��ȣ��ȹ ��з� �ڵ帶��Ÿ
    HmdInrplt1 = class
     v_Nrplcode  : Variant;     // ��ȣ��ȹ��з��ڵ�
     v_Nrplname  : Variant;     // ��ȣ��ȹ��з��ڵ��
     function mdInrplt_select :Integer;  // ��з��� ��ȸ�Ѵ�
    end;

    // ��ȣ��ȹ�ߺз��ڵ帶��Ÿ
    HmdInrpmt1 = class
     v_Nrplcode  : Variant;     //* ��ȣ��ȹ��з��ڵ� */
     v_Nrplname  : Variant;     //* ��ȣ��ȹ��з��ڵ�� */
     v_Nrpmcode  : Variant;     //* ��ȣ��ȹ�ߺз��ڵ� */
     v_Nrpmname  : Variant;     //* ��ȣ��ȹ�ߺз��ڵ�� */
     // ��ȸ
     function mdInrpmt_select(sNrplcode:string):Integer;  // ��з��� ���� �ߺз��� ��ȸ�Ѵ�.
   end;
   // ��ȣ��ȹ ���ܸ���Ÿ
   Hmdinrpbt = class
     v_Diagcode  : Variant; // �����ڵ�
     v_Diagname  : Variant; // ���ܸ�
     v_Def       : Variant; // ��������
     v_Charact   : Variant; // ȯ����Ư��
     // ���ߺз������� ���ܸ�
     function mdinrpbt_select(sNrpcode ,   // ��з�
                              sNrpmcode,   // �ߺз�
                              sDiagcode    // �����ڵ�
                              : String) :Integer;
   end;
   // ��ȣ���ܺ� ���ÿ���
   Hmdinrpet = class
     v_causecd  : Variant;  // ���ÿ����ڵ�
     v_causenm  : Variant;  // ���ÿ��θ�
     // ���ߺз��� �����ڵ庰�� ���ÿ����� ��ȸ
     function mdinrpet_select(sNrpcode ,   // ��з�
                              sNrpmcode,   // �ߺз�
                              sDiagcode    // �����ڵ�
                              : String) :Integer;
   end;
   // �������系����������
   Hmdbmdrmt = class
     v_gubun    : Variant;
     v_sDate    : Variant;
     v_rsvcd    : Variant;
     v_sItem1   : Variant; //   �׸�1  1 : �Կ�ȯ�ں����� 2 : Port IR  3: ȸ�� Conf';
     v_sItem2   : Variant; //   �׸�2  1 : �Կ�ȯ��ICU��  2 : Chemo    3: ȸ�� ��Ÿ����';
     v_sItem3   : Variant; //   �׸�3  1 : BM�Ǽ�         2 : S.O      3: ȸ�� ��Ÿ�ܺ�';
     v_sItem4   : Variant; //   �׸�4  1 : ��������Ǽ�   2 : MNG      3: ��ȣ�� ���� ��������ȸ��';
     v_sItem5   : Variant; //   �׸�5  1 : �������       2 : ADM      3: ��ȣ�� ���� ����������';
     v_sItem6   : Variant; //   �׸�6  1 : �߰�����       2 : CBC�� N  3: ��ȣ�� ���� ��ȣ�л�';
     v_sItem7   : Variant; //   �׸�7  1 : �˻��Ƿ�       2 : S.E Y    3: ��ȣ�� ���� ��Ÿ';
     v_sItem8   : Variant; //   �׸�8  1 : dysfunction    2 : S.E N    3: �������� ';
     v_sItem9   : Variant; //   �׸�9  1 : S.0            2 : �Ұ߼�   3: �������� SAMPLE ��ȯ Lung';
     v_sItem10  : Variant; //   �׸�10 1 : SHEET����1ȸ   2 : ���ܼ�   3: �������� SAMPLE ��ȯ Other'
     v_sItem11  : Variant; //   �׸�11 1 : SHEET����2ȸ   2 : �ǹ���� 3: �������� SAMPLE ��ȯ';
     v_sItem12  : Variant; //   �׸�12 1 : SHEET����3ȸ   2 : ��Ÿ     3: �������� Piture';
     v_sItem13  : Variant; //   �׸�13 2 : �ܺ��ڷ� 3: �������� DATA���� ����';
     v_sItem14  : Variant; //   �׸�14 3: �������� DATA���� �˻� ';
     v_sItem15  : Variant; //   �׸�15 3: �������� DATA���� ��û ';
     v_sItem16  : Variant; //   �׸�16 3: ��Ÿ �����          ';
     v_sItem17  : Variant; //   �׸�17 3: ��Ÿ �����ڷ�          ';
     v_sItem18  : Variant; //   �׸�18 3: ��Ÿ �ڹ� ������ Ÿ��  ';
     v_sItem19  : Variant; //   �׸�19 3: ��Ÿ �ڹ� ������ ����  ';
     v_sItem20  : Variant; //   �׸�20 3: ��Ÿ �ڹ� ��ȣ��       ';
     v_sItem21  : Variant; //   �׸�21 3: ��Ÿ �ڹ� ��Ÿ�μ�     ';
     v_sItem22  : Variant; //   �׸�22 ';
     v_sItem23  : Variant; //   �׸�23 ';
     v_sItem24  : Variant; //   �׸�24 ';
     v_sItem25  : Variant; //   ITEM25  */
     v_sGubun   : Variant; //   'SUB ���� : 1 ��ȯ�ڽ� �Կ�ȯ��,2: Consut,3: EDU/CTx Start,4: Change,5:CTx End,6:���';
     v_sSeqno   : Variant; //   ���� */
     v_ssItem1  : Variant; //   1:ȯ�ڹ�ȣ,2:�����  ,3:ȯ�ڹ�ȣ,4:ȯ�ڹ�ȣ,5:ȯ�ڹ�ȣ,6:�����  ';*/
     v_ssItem2  : Variant; //   1:ȯ�ڸ�  ,2:ȯ�ڹ�ȣ,3:ȯ�ڸ�  ,4:ȯ�ڸ�  ,5:ȯ�ڸ�  ,6:�̴㱸��';*/
     v_ssItem3  : Variant; //   2:ȯ�ڸ�,3:���ܸ�,5:���ܸ� ,6:����ڸ�';                           */
     v_ssItem4  : Variant; //   2:���ܸ�,3:Regimen,4:�ٲ�����,5:Regimen,6:��㳻��';               */
     v_ssItem5  : Variant; //   3:�ҿ�ð�,5:�ҿ�ð�,6:�ҿ�ð�';                                 */
     v_ssItem6  : Variant; //
     v_ssItem7  : Variant; //
     v_ssItem8  : Variant; //
     v_ssItem9  : Variant; //
     v_ssItem10 : Variant; //
     function mdbmdrmt_select(sDate ,  // ����
                              sRsvcd   // ������ (1:�Կ�,2:�ܷ�,3:��Ÿ)   */
                              : String;
                              var
                              iRow : integer) : integer;

     function mdbmdrmt_tot_select(sFromdate ,  // ����
                                  sTodate      // ������ (1:�Կ�,2:�ܷ�,3:��Ÿ)   */
                                  : String
                                  ) : integer;
     function mdbmdrdt_select(sFromdate ,  // ����
                              sTodate   ,
                              sRsvcd    ,  // ������ (1:�Կ�,2:�ܷ�,3:��Ÿ)   */
                              sGubun
                              : String
                              ) : integer;
     function mdbmdrmt_insert(sDate  ,  // ����
                              sRsvcd ,  // ������ (1:�Կ�,2:�ܷ�,3:��Ÿ)   */
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

   //�ܷ����������������ȸ. KimDaeYong 2017-06-30
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

   //�����Ƿ����. KimDaeYong 2019-05-21
   //MDCLASS1�� ���� ���Ƽ� �̵�. KimDaeYong 2020-06-29
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

   //����üũ����Ʈ. KimDaeYong 2020-08-25
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

   //�׾Ϻ��ۿ���. ����(��̶�,�ɼ���)��û.  KimDaeYong 2021-03-10
   //��� �� ȯ�ڿ� ���� ���ۿ��򰡸� ����Ѵ�.
  Hmdcanevt = class
     //����
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

  //��ȭ�Ƿ���������.  KimDaeYong 2021-11-18
  //�ʱ�����(MDDHOSFT), ��������(MDDHOSRT), ���������(MDDHOSLT)�� �ϳ��� Ŭ������ �̿��Ѵ�.
  HmdDhosft = class
     //����
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

     sSignData     : Variant;              // SONGLIM_THOMA  ����
     sSerialNo     : Variant;
     sSubjectDN    : Variant;

     function DHOSF_L1(inPatno:string) : integer;
     function DHOSF_S1(inGubun, inPatno, inConsdate, inSeqno:string) : integer;
     function DHOSF_I1(inGubun, inSave, sSignData, sSerialNo, sSubjectDN :string) : integer;
  end;

  // ����� ��ȸ
  Hmdrecott = class   // �������ȸ(First) OhJunSu 2022-03-07

   sInDate	 : Variant;  // �����Ͻ�

   function ListPatMedRecord(PatNo,Locate,VstDate:String):Integer;
   
  end;

  //����� ��ȸ �� ������Ʈ   OhJunSu 2022-03-07
  Hmdrecodt = class
     //����
     sInPattype    : Variant; // �ܷ� / ����/  ����
     sInResearch   : Variant; // me_recod_l1 ������ (cf ����  1�ۿ� ����)
     sPatno        : Variant;
     sMeddate      : Variant;
     sSeqno        : Variant;
     sRecdate      : Variant;
     sEditid       : Variant;
     sEditip       : Variant;

     sAcpdate      : Variant;
     sRecgubun     : Variant;
     sRecgubuncd   : Variant; //���̺� ���� �ڵ�(������� �����ϴ� ���̺�)
     sfrmgubuncd   : Variant; //����� ���� �ڵ�(����(�����)���� �ڵ�)
     
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
   mdInrpft1 : HmdInrpft1; // ȯ�ں� ��ȣ��ȹ����
   mdInrpat  : HmdInrpat;  // ��ȣ����������
   mdInrpjt  : HmdInrpjt;  // ��ȣ���ܺ� ����������ȸ
   mdInrplt1 : HmdInrplt1; // HmdInrplt  ��ȣ��ȹ��з��ڵ帶��Ÿ                                     //
   mdInrpmt1 : HmdInrpmt1; // ��ȣ��ȹ�ߺз��ڵ帶��Ÿ
   mdinrpbt  : Hmdinrpbt;  // ��ȣ��ȹ ���ܸ���Ÿ
   mdinrpet  : Hmdinrpet;  // ��ȣ���ܺ� ���ÿ���
   mdbmdrmt  : Hmdbmdrmt;  // �������系����������
   apPaexmt  : HapPaexmt;  // �ܷ�����������ó������. KimDaeYong 2017-06-30
   mdDnrrgt  : HmdDnrrgt;  // �����Ƿ����. KimDaeYong 2019-05-21
   mdBldckt  : HmdBldckt;  // ����üũ����Ʈ. KimDaeYong 2020-08-25
   mdCanevt  : Hmdcanevt;  // �׾Ϻ��ۿ���. KimDaeYong 2021-03-10
   mdDhosft  : Hmddhosft;  // ��ȭ�Ƿ���������. KimDaeYong 2021-11-18
   mdrecodt  : Hmdrecodt;  // �������ȸ OhJunSu 2022-03-07
   mdrecott  : Hmdrecott;  // �������ȸ(First) OhJunSu 2022-03-07

implementation

uses TuxCom, TuxMsg, VarCom;

//////////////////////
// mdInrpft ȯ�ں� ��ȣ��ȹ����
/////////////////////

// ��ȣ��ȹ �з��ڵ� ��ȸ (�ǽ����纸�� �� ����Ⱥ��� (��ü,����,����))
function HmdInrpft1.NrplInform(sType1   , // ����  1: �ǽ����纸�� , 2: �ǽ����纸�� ����
                               sType2   , // ����  1:��ü ,2:������ ,3:����
                               sFromdate, // ��ȸ������
                               sTodate  , // ��ȸ������
                               sPatno   , // ȯ�ڹ�ȣ
                               sAdmdate   // �Կ�����
                               : String) : integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5;S_TYPE6');
   SetFldValue(0, [sType1   ,sType2   ,sFromdate,sTodate  ,sPatno   ,sAdmdate]);
   if (txGetF('MD_INRPF_L2')) then begin //Tuxedo Service Call
      GetFldVar('S_STRING1'  ,v_Nrplcode);  // ��ȣ��ȹ��з��ڵ�
      GetFldVar('S_STRING2'  ,v_Nrplname);  // ��ȣ��ȹ��з��ڵ��
      GetFldVar('S_STRING3'  ,v_Nrpmcode);  // ��ȣ��ȹ�ߺз��ڵ�
      GetFldVar('S_STRING4'  ,v_Nrpmname);  // ��ȣ��ȹ�ߺз��ڵ��
      GetFldVar('S_STRING5'  ,v_Diagcode);  // ��ȣ��ȹ�����ڵ�
      GetFldVar('S_STRING6'  ,v_Diagname);  // ��ȣ��ȹ���ܸ�
      GetFldVar('S_STRING7'  ,v_Plancode);  // ��ȣ��ȹ�����ڵ�
      GetFldVar('S_STRING8'  ,v_Planname);  // ��ȣ��ȹ�����ڵ��
      GetFldVar('S_STRING9'  ,v_Diagnocd);  // ��ȣ�����ڵ�(������ ������ȸ�Ѵ�)
      GetFldVar('S_STRING10' ,v_Appldate);  // ��������
      GetFldVar('S_STRING11' ,v_Enddate );  // ��������
      GetFldVar('S_STRING12' ,v_Objdiag );  // �������ڷ�
      GetFldVar('S_STRING13' ,v_Subdiag );  // �ְ����ڷ�
      GetFldVar('S_STRING14' ,v_Res     );  // �򰡰��
      GetFldVar('S_STRING15' ,v_Causecd );  // ���ÿ����ڵ�
      GetFldVar('S_STRING16' ,v_Causenm );  // ���ÿ��θ�Ī
      GetFldVar('S_STRING17' ,v_Act     );  // Acting ����
      GetFldVar('S_STRING18' ,v_Appseqno);  // �������
      Result := GetRecordCnt('S_STRING1'); //Service�� �����ϰ� FML Buffer�� PUT�� Record��
      txFree;
   end;
end;

// ȯ�ں� ��ȣ��ȹ������ �����Ѵ�.
function HmdInrpft1.mdInrpft_save(sPatno    ,      // ȯ�ڹ�ȣ
                                  sAdmdate  ,      // �Կ�����
                                  sAppldate ,      // ��������
                                  sAppseqno ,      // �������
                                  sDiagnocd ,      // ��ȣ�����ڵ�
                                  sPlancode ,      // ��ȣ��ȹ�����ڵ�
                                  sEnddate  ,      // ��������
                                  sObjdiag  ,      // �������ڷ�
                                  sSubdiag  ,      // �ְ����ڷ�
                                  sRes      ,      // �򰡰��
                                  sEditip   ,      // ������IP
                                  sEditid   ,      // ������ID
                                  sCausecd  ,      // ���ÿ���
                                  sCausenm  ,      // ���ÿ��θ�
                                  sGubun           // ����(I:�Է�,U:����)
                                  : String ) : integer;
begin
   Result := -1;

   //Pointer�� �޾ƿ�.
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

//��ȣ��ȹ ����
function HmdInrpft1.DeleteInrpft(sType1, sType2, sType3, sType4: string):Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
   SetFldValue(0,[sType1,sType2,sType3,sType4]);
   if (txPutF('MD_INRPF_D1')) then begin //Tmax Service Call
      Result := 1;
      txFree;
   end;
end;

/////////////////
// ��ȣ����������
////////////////
function HmdInrpat.mdInrpat_select : integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   if (txGetF('MD_INRAT_L1')) then //Tuxedo Service Call
   begin
      GetFldVar('S_STRING1'  ,v_Toolcode);
      GetFldVar('S_STRING2'  ,v_Problem );
      GetFldVar('S_STRING3'  ,v_Tooltxt );
      Result := GetRecordCnt('S_STRING1'); //Service�� �����ϰ� FML Buffer�� PUT�� Record��
      txFree;
   end;
end;

// ��ȣ���ܺ� ��������
function HmdInrpjt.mdInrpjt_select(sToolcode : string) : integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1');
   SetFldValue(0, [sToolcode]);
   if (txGetF('MD_INRJT_L1')) then //Tuxedo Service Call       md_inrjt_l1
   begin
      GetFldVar('S_STRING1'  ,v_nrplcode); // ��з�
      GetFldVar('S_STRING2'  ,v_nrpmcode); // �ߺз�
      GetFldVar('S_STRING3'  ,v_diagcode); // �����ڵ�
      GetFldVar('S_STRING4'  ,v_diagname); // ���ܸ�
      Result := GetRecordCnt('S_STRING1'); //Service�� �����ϰ� FML Buffer�� PUT�� Record��
      txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
//    HmdInrplt  ��ȣ��ȹ��з��ڵ帶��Ÿ                                     //
////////////////////////////////////////////////////////////////////////////////
// ��з��� ��ü�� ��ȸ�Ѵ�.

function HmdInrplt1.mdInrplt_select :Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   if (txGetF('MD_INRPL_L2')) then begin //Tuxedo Service Call
      GetFldVar('S_STRING1'  ,v_Nrplcode);
      GetFldVar('S_STRING2'  ,v_Nrplname);
      Result := GetRecordCnt('S_STRING1'); //Service�� �����ϰ� FML Buffer�� PUT�� Record��
      txFree;
   end;
end;

////////////////////////////////////////////////////////////////////////////////
//    HmdInrpmt  ��ȣ��ȹ�ߺз��ڵ帶��Ÿ                                     //
////////////////////////////////////////////////////////////////////////////////
// ��з��� ���� �ߺз��� ��ȸ�Ѵ�.
function HmdInrpmt1.mdInrpmt_select(sNrplcode:string):Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName('S_TYPE1');
   SetFldValue(0, [sNrplcode]);

   if (txGetF('MD_INRPM_L1')) then begin //Tuxedo Service Call
      GetFldVar('S_STRING1'  ,v_Nrplcode);
      GetFldVar('S_STRING2'  ,v_Nrpmcode);
      GetFldVar('S_STRING3'  ,v_Nrpmname);

      Result := GetRecordCnt('S_STRING1'); //Service�� �����ϰ� FML Buffer�� PUT�� Record��
      txFree;
   end;
end;

// ��ȣ��ȹ ���ܸ���Ÿ
function Hmdinrpbt.mdinrpbt_select(sNrpcode ,   // ��з�
                                   sNrpmcode,   // �ߺз�
                                   sDiagcode    // �����ڵ�
                                  : String) :Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');
   SetFldValue(0, [sNrpcode ,   // ��з�
                   sNrpmcode,   // �ߺз�
                   sDiagcode]); // �����ڵ� ''�̸� ���ߺз������� ���ܸ��� �����´�.
   if (txGetF('MD_INRPB_L1')) then begin //Tuxedo Service Call
      GetFldVar('S_STRING1'  ,v_Diagcode);   // �����ڵ�
      GetFldVar('S_STRING2'  ,v_Diagname);   // ���ܸ�
      GetFldVar('S_STRING3'  ,v_Def     );   // ��������
      GetFldVar('S_STRING4'  ,v_Charact );   // ȯ����Ư��
      Result := GetRecordCnt('S_STRING1'); //Service�� �����ϰ� FML Buffer�� PUT�� Record��
      txFree;
   end;
end;

// ��ȣ���ܺ� ���ÿ���
function Hmdinrpet.mdinrpet_select(sNrpcode ,   // ��з�
                                   sNrpmcode,   // �ߺз�
                                   sDiagcode    // �����ڵ�
                                         : String) :Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3');
   SetFldValue(0, [sNrpcode ,   // ��з�
                   sNrpmcode,   // �ߺз�
                   sDiagcode]); // �����ڵ�
   if (txGetF('MD_INRET_L1')) then
   begin //Tuxedo Service Call
      GetFldVar('S_STRING1'  ,v_causecd); // ���ÿ����ڵ�
      GetFldVar('S_STRING2'  ,v_causenm); // ���ÿ��θ�
      Result := GetRecordCnt('S_STRING1'); //Service�� �����ϰ� FML Buffer�� PUT�� Record��
      txFree;
   end;
end;
//////////////////////////////////////////
// �������系�� ��������
//////////////////////////////////

// �������系�� ���������� ��ȸ�Ѵ�.
function Hmdbmdrmt.mdbmdrmt_select(sDate ,  // ����
                                   sRsvcd   // ������ (1:�Կ�,2:�ܷ�,3:��Ÿ)   */
                                  : String;
                                  var
                                  iRow : integer) : integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2');
   SetFldValue(0, [sDate ,  // ����
                   sRsvcd ]); // ������ (1:�Կ�,2:�ܷ�,3:��Ÿ)   */
   if (txGetF('MD_BMDRM_L1')) then
   begin //Tuxedo Service Call
      GetFldVar('S_STRING1'  ,v_sItem1  ); // ���ÿ����ڵ�
      GetFldVar('S_STRING2'  ,v_sItem2  ); // ���ÿ����ڵ�
      GetFldVar('S_STRING3'  ,v_sItem3  ); // ���ÿ����ڵ�
      GetFldVar('S_STRING4'  ,v_sItem4  ); // ���ÿ����ڵ�
      GetFldVar('S_STRING5'  ,v_sItem5  ); // ���ÿ����ڵ�
      GetFldVar('S_STRING6'  ,v_sItem6  ); // ���ÿ����ڵ�
      GetFldVar('S_STRING7'  ,v_sItem7  ); // ���ÿ����ڵ�
      GetFldVar('S_STRING8'  ,v_sItem8  ); // ���ÿ����ڵ�
      GetFldVar('S_STRING9'  ,v_sItem9  ); // ���ÿ����ڵ�
      GetFldVar('S_STRING10'  ,v_sItem10 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING11'  ,v_sItem11 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING12'  ,v_sItem12 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING13'  ,v_sItem13 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING14'  ,v_sItem14 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING15'  ,v_sItem15 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING16'  ,v_sItem16 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING17'  ,v_sItem17 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING18'  ,v_sItem18 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING19'  ,v_sItem19 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING20'  ,v_sItem20 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING21'  ,v_sItem21 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING22'  ,v_sItem22 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING23'  ,v_sItem23 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING24'  ,v_sItem24 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING25'  ,v_sItem25 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING26'  ,v_Gubun  ); // ���ÿ����ڵ�
      GetFldVar('S_STRING27'  ,v_sSeqno  ); // ���ÿ����ڵ�
      GetFldVar('S_STRING28'  ,v_ssItem1 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING29'  ,v_ssItem2 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING30'  ,v_ssItem3 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING31'  ,v_ssItem4 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING32'  ,v_ssItem5 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING33'  ,v_ssItem6 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING34'  ,v_ssItem7 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING35'  ,v_ssItem8 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING36'  ,v_ssItem9 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING37'  ,v_ssItem10); // ���ÿ����ڵ�
      iRow := GetRecordCnt('S_STRING26'); //Service�� �����ϰ� FML Buffer�� PUT�� Record��
      Result := GetRecordCnt('S_STRING1'); //Service�� �����ϰ� FML Buffer�� PUT�� Record��
   end;
end;


// �������系�� ���������� ��踦��ȸ�Ѵ�.
function Hmdbmdrmt.mdbmdrmt_tot_select(sFromdate ,  // ����
                                       sTodate      // ������ (1:�Կ�,2:�ܷ�,3:��Ÿ)   */
                                       : String
                                       ) : integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2');
   SetFldValue(0, [sFromdate ,  // ����
                   sTodate ]); // ������ (1:�Կ�,2:�ܷ�,3:��Ÿ)   */
   if (txGetF('MD_BMDRM_L2')) then
   begin //Tuxedo Service Call
      GetFldVar('S_STRING1'   ,v_Rsvcd); // ���ÿ����ڵ�
      GetFldVar('S_STRING2'   ,v_sItem1); // ���ÿ����ڵ�
      GetFldVar('S_STRING3'   ,v_sItem2); // ���ÿ����ڵ�
      GetFldVar('S_STRING4'   ,v_sItem3); // ���ÿ����ڵ�
      GetFldVar('S_STRING5'   ,v_sItem4); // ���ÿ����ڵ�
      GetFldVar('S_STRING6'   ,v_sItem5); // ���ÿ����ڵ�
      GetFldVar('S_STRING7'   ,v_sItem6); // ���ÿ����ڵ�
      GetFldVar('S_STRING8'   ,v_sItem7); // ���ÿ����ڵ�
      GetFldVar('S_STRING9'   ,v_sItem8); // ���ÿ����ڵ�
      GetFldVar('S_STRING10'  ,v_sItem9); // ���ÿ����ڵ�
      GetFldVar('S_STRING11'  ,v_sItem10); // ���ÿ����ڵ�
      GetFldVar('S_STRING12'  ,v_sItem11); // ���ÿ����ڵ�
      GetFldVar('S_STRING13'  ,v_sItem12); // ���ÿ����ڵ�
      GetFldVar('S_STRING14'  ,v_sItem13); // ���ÿ����ڵ�
      GetFldVar('S_STRING15'  ,v_sItem14); // ���ÿ����ڵ�
      GetFldVar('S_STRING16'  ,v_sItem15); // ���ÿ����ڵ�
      GetFldVar('S_STRING17'  ,v_sItem16); // ���ÿ����ڵ�
      GetFldVar('S_STRING18'  ,v_sItem17); // ���ÿ����ڵ�
      GetFldVar('S_STRING19'  ,v_sItem18); // ���ÿ����ڵ�
      GetFldVar('S_STRING20'  ,v_sItem19); // ���ÿ����ڵ�
      GetFldVar('S_STRING21'  ,v_sItem20); // ���ÿ����ڵ�
      GetFldVar('S_STRING22'  ,v_sItem21); // ���ÿ����ڵ�
      GetFldVar('S_STRING23'  ,v_sItem22); // ���ÿ����ڵ�
      GetFldVar('S_STRING24'  ,v_sItem23); // ���ÿ����ڵ�
      GetFldVar('S_STRING25'  ,v_sItem24); // ���ÿ����ڵ�
      GetFldVar('S_STRING26'  ,v_sItem25); // ���ÿ����ڵ�
      GetFldVar('S_STRING27'  ,v_ssItem1); // ���ÿ����ڵ�
      GetFldVar('S_STRING28'  ,v_ssItem2); // ���ÿ����ڵ�
      GetFldVar('S_STRING29'  ,v_ssItem3); // ���ÿ����ڵ�
      GetFldVar('S_STRING30'  ,v_ssItem4); // ���ÿ����ڵ�
      GetFldVar('S_STRING31'  ,v_ssItem5); // ���ÿ����ڵ�
      GetFldVar('S_STRING32'  ,v_ssItem6); // ���ÿ����ڵ�
      Result := GetRecordCnt('S_STRING1'); //Service�� �����ϰ� FML Buffer�� PUT�� Record��
   end;
end;

function Hmdbmdrmt.mdbmdrdt_select(sFromdate ,  // ����
                                   sTodate   ,
                                   sRsvcd    ,  // ������ (1:�Կ�,2:�ܷ�,3:��Ÿ)   */
                                   sGubun
                                   : String
                                   ) : integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4');
   SetFldValue(0, [sFromdate ,  // ����
                   sTodate   ,
                   sRsvcd    ,  // ������ (1:�Կ�,2:�ܷ�,3:��Ÿ)   */
                   sGubun ]); 
   if (txGetF('MD_BMDRM_L3')) then
   begin //Tuxedo Service Call

      GetFldVar('S_STRING1'  ,v_sDate   ); // ���ÿ����ڵ�
      GetFldVar('S_STRING2'  ,v_ssItem1 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING3'  ,v_ssItem2 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING4'  ,v_ssItem3 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING5'  ,v_ssItem4 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING6'  ,v_ssItem5 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING7'  ,v_ssItem6 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING8'  ,v_ssItem7 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING9'  ,v_ssItem8 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING10'  ,v_ssItem9 ); // ���ÿ����ڵ�
      GetFldVar('S_STRING11'  ,v_ssItem10); // ���ÿ����ڵ�
      Result := GetRecordCnt('S_STRING1'); //Service�� �����ϰ� FML Buffer�� PUT�� Record��
   end;
end;


function Hmdbmdrmt.mdbmdrmt_insert(sDate  ,  // ����
                                   sRsvcd ,  // ������ (1:�Կ�,2:�ܷ�,3:��Ÿ)   */
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

   //Pointer�� �޾ƿ�.
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

//��������������ȸ. KimDaeYong 2017-06-30
function HapPaexmt.List1(inHopedate, inMeddept, inOrddr:string) : integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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

//������������ ��ó��ͷ�. KimDaeYong 2017-06-30
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

//========================�����Ƿ����==========================================//
//MDCLASS1�� ���� ���Ƽ� �̵�. KimDaeYong 2020-06-29

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

//�����Ƿ� ���. KimDaeYong 2019-05-22
function HmdDnrrgt.Insert1(inFlag,inEditid,inEditip : string):Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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

//����üũ����Ʈ ���. KimDaeYong 2020-08-25
function HmdBldckt.Insert1:Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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

//����üũ����Ʈ ��ȸ. KimDaeYong 2020-08-26
function HmdBldckt.Select1(inFlag, inPatno, inMeddate, inOrddate, inBldcd, inRecno : string):Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   SetFldName('S_CODE1;' +
              'S_TYPE1;S_TYPE2;S_TYPE3;S_TYPE4;S_TYPE5');
   SetFldValue(0,[inFlag,
                  inPatno, inMeddate, inOrddate, inBldcd, inRecno] );

   if (txGetF('MD_BLDCK_S1')) then
   begin
      if inFlag = 'A' then  //��ϼ�����ȸ
      begin
          GetFldVar('S_STRING1' ,sRecno		    );

          Result := GetRecordCnt('S_STRING1');
          txFree;
      end
      else if inFlag = 'B' then //����üũ����Ʈ��ȸ
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
      else if inFlag = 'C' then //���۷κ� �ֱ� ����� ��ȸ
      begin
          GetFldVar('S_STRING25',sRsltdate		);
          GetFldVar('S_STRING26',sRslt  		);

          Result := GetRecordCnt('S_STRING25');
          txFree;
      end;
   end;
end;

//�׾�ȭ�п�� ����/���ۿ��� ����
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

//�׾�ȭ�п�� ����/���ۿ��� ��ȸ
//KimDaeYong 2021-03-11
function HmdCanevt.Select1(inPatno, inMeddate, inPatsect : String):Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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


//�Ϸ��Ƿ���������.===================================================

//���������Ʈ ��ȸ
function HmdDhosft.DHOSF_L1(inPatno:string) : integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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

//����� ��ȸ
function HmdDhosft.DHOSF_S1(inGubun, inPatno, inConsdate, inSeqno:string) : integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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

//����� ����/����.
function HmdDhosft.DHOSF_I1(inGubun, inSave, sSignData, sSerialNo, sSubjectDN :string):Integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

   //�ʱ�������
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

   //��������
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

   //������������
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
   txAlloc; //Pointer�� �޾ƿ�.
   SetFldName('S_TYPE2;S_PATNO;S_STRING1');
   SetFldValue(0, [sInResearch,sPatno, sMeddate]);

   if (txGetF('MD_RECOD_L1')) then //Tuxedo Service Call   [ md_recod_l1.pc / MD_A115NX ]
   begin
      GetFldVar('S_STRING1'  ,sRecgubun); // ����� ����
      GetFldVar('S_STRING2'  ,sRecgubuncd); // ���̺� ����
      GetFldVar('S_STRING3'  ,sfrmgubuncd); // ����� ����
      Result := GetRecordCnt('S_STRING1'); //Service�� �����ϰ� FML Buffer�� PUT�� Record��
      txFree;
   end;
end;

function Hmdrecodt.ListRecordData(sRecgubuncd:string; sInPatno:string; sPk2:string; sPk3:string =''; sPk4:string =''; sPk5:string =''): integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
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
      Result := GetRecordCnt('S_STRING1'); //Service�� �����ϰ� FML Buffer�� PUT�� Record����
      txFree;
   end;
end;

function Hmdrecodt.ListRecordPk(sRecgubuncd, sInPatno,sInMeddate: string): integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.
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

      Result := GetRecordCnt('S_STRING1'); //Service�� �����ϰ� FML Buffer�� PUT�� Record����
      txFree;
   end;
end;

// Service ID : MD_RECOD_U1, MD_A122X
function Hmdrecodt.UpdateRecLCYN(iCnt: integer): integer;
var
    ii : integer;
begin
   Result := -1;
   txAlloc; //Pointer�� �޾ƿ�.

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

   //Pointer�� �޾ƿ�.
   txAlloc32;

   //FML Buffer Field Assign
   SetFldName32('S_PATNO;S_TYPE1;S_TYPE2');
   SetFldValue32(0,[PatNo,Locate,VstDate] );

   //Tuxedo Service Call
   if (txGetF32('MD_PMEDH_S1')) then
   begin
      GetFldVar32('S_STRING1' , sIndate );  // ȯ�ڱ���

      //��ȸ�Ǽ� return
      Result := GetRecordCnt32('S_STRING1');
      txFree32;
   end;
end;

end.
