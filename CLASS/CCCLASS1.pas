//=============================================================
// CCCLASS1 - ������� Ŭ���� Unit.
//
//    class
//         Tcccomcdt : �����ڵ� ���� Ŭ����
//         Tccholydt : ���� ���� Ŭ����
//         Tcchosift : �������� ���� Ŭ����
//         Tcczipcdt : �����ȣ ���� Ŭ����
//
//    2001.06.21. ������
//=============================================================

unit CCCLASS1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, FileCtrl, MsgCom, TuxCom, Imm;

type
   //============================================
   // �����ڵ� ���� Ŭ����
   Tcccomcdt = class
      sLargcd : Variant;           { ��з��ڵ� }
      sComcddtl : Variant;         { �Һз��ڵ� }
      sCdabbrnm : Variant;         { �ڵ���� }
      sComcdnm : Variant;          { �ڵ��     }
      sCdprtnm : Variant;          { ����ڵ�� }
      lCdprtseq : Variant;         { ��¼���   }
      sCdvalue : Variant;          { �ڵ尪     }
      sCdmaxval : Variant;         { �ִ밪     }
      sCdminval : Variant;         { �ּҰ�     }
      sCdetca : Variant;           { ��Ÿ���A  }
      sCdetcb : Variant;           { ��Ÿ���B  }
      sCdetcc : Variant;           { ��Ÿ���C  }
      sRemark : Variant;           { ���       }
      sEditid : Variant;           { ������ID   }
      sEditip : Variant;           { ������IP   }
      tEditdate : Variant;         { ������     }
      tDeldate : Variant;          { ������     }
      // �����ڵ� ��ȸ
      function ccComcdtList(sLargcdParam, sComcddtlParam, sSortKeyParam: String; LargcdOrComcddlt: Integer;Searchopt:integer=1):Integer;
      // �����ڵ� ������ ��ȸ
      function ccComcdtDetail(sLargcdParam, sComcddtlParam: String):Integer;
      // �����ڵ� ����
      function ccComcdtUpdate(sLargcdParam, sComcddtlParam, sSelflag: String):Integer;
      //�����ڵ� �űԵ��
      function ccComcdtInsert(sSelflag: String):Integer;
      // �����ڵ� ����
      function ccComcdtDelete(sLargcdParam, sComcddtlParam, sSelflag: String):Integer;
      // mis�����ڵ� ����
      function ccComcdtUpdate2(sLargcdParam, sComcddtlParam, sSelflag: String):Integer;
      //mis�����ڵ� �űԵ��
      function ccComcdtInsert2(sSelflag: String):Integer;
      //mis �����ڵ� ����
      function ccComcdtDelete2(sLargcdParam, sComcddtlParam, sSelflag: String):Integer;

  end;

   //============================================
   // ���ϰ����� Ŭ����.
   Tccholydt = class
      tHoliday    : Variant;     { ������             }
      sHolidtnm   : Variant;     { ������ ��          }
      sHolitype   : Variant;     { �����ϱ���         }
      sMuseyn     : Variant;     { �������ڵ�       }
      sSuseyn     : Variant;     { ������������ڵ�   }
      sAuseyn     : Variant;     { ��������ڵ�       }
      sGuseyn     : Variant;     { �Ϲݰ�������ڵ�   }
      sSpdietyn   : Variant;     { ����Ư�Ŀ���       }
      sEditid     : Variant;     { ������ ID          }
      sEditip     : Variant;     { ������ IP          }
      tEditdate   : Variant;     { ������             }
      tDeldate   : Variant;     { �����             }

      // �⵵�� �������� ��� ��ȸ.
      function ccHolidList(sParam: String):Integer;
      // �Է³⵵���� ��� �Ͽ��� �߰�.
      function ccHolidGensunday(sYearParam: String):Integer;
      // �ű� ���� ���� �߰�.
      function ccHolidInsert():Integer;
      // �ش� ������ �ڼ��� ���� ���.
      function ccHolidUpdate():Integer;
      // �ش� ���� ���� ����.
      function ccHolidDelete():Integer;

  end;

   //============================================
   // �����ȣ ���� Ŭ����
   Tcczipcdt = class
      sZipcode : Variant;  { �����ȣ        }
      sSido    : Variant;  { �ñ�            }
      sGugun   : Variant;  { ����            }
      sDong    : Variant;  { ���鵿          }
      sBunji   : Variant;  { ����            }
      sAreaclas :Variant;  { ���� ��ȣ       }
      sEditid  : Variant;  { ������ ��� ID  }
      sEditip  : Variant;  { ������ ��� IP  }
      tEditdate :Variant;  { ������ ��¥     }
      tDeldate : Variant;  { ������ ��¥     }

      // �����ȣ ��ȸ.
      function cczipcdtList(sDongParam : String):Integer;
      // �ű� �����ȣ ���.
      function cczipcdtInsert(sId, sIp : String):Integer;
      // �����ȣ ����.
      function cczipcdtUpdate(sId, sIp : String):Integer;
      // �����ȣ ���� - ����ǥ�ø� ����.
      function cczipcdtDelete(sZipcode, sIp :String):Integer;
      // ����ǥ�õ� �����ȣ ���� ����.
      function cczipcdtClear(sId, sIp : String):Integer;
      procedure SetzipcdsData(sParam : String; iFlag : Integer);
  end;

   //============================================
   // �������� ���� Ŭ����
   Tcchosift = class
      sLocate     : Variant;        { ��������         }
      sInsurid    : Variant;        { ����������ȣ }
      sIndusid    : Variant;        { ����������ȣ }
      sHsptname   : Variant;        { ������Ī         }
      sBedcount   : Variant;        { �����           }
      sPrsdname   : Variant;        { ��ǥ�ڸ�         }
      sPrsdreno   : Variant;        { ��ǥ���ֹι�ȣ   }
      sAddress    : Variant;        { �ּ�             }
      sTelno      : Variant;        { ��ȭ��ȣ         }
      sFaxno      : Variant;        { �ѽ���ȣ         }
      sZipcd      : Variant;        { �����ȣ         }
      sEditid     : Variant;        { ������ID         }
      sEditip     : Variant;        { ������IP         }
      tEditdate   : Variant;        { ������           }

      // �������� ��ȸ.
      function cchosifList(sHsptnameParam : String):Integer;
      // �ű� �������� ���.
      function cchosifInsert(sId, sIp : String):Integer;
      // �������� ����.
      function cchosifUpdate(sId, sIp : String):Integer;
      // �������� ����. - ������
      function cchosifDelete():Integer;
  end;

  //============================================

  //ȯ�ڸ����� ///////////////////////////////////////////////////
   HAPPATBAT = class
      sPatno      : Variant; // ȯ�ڹ�ȣ
      sPatname    : Variant; // ȯ�ڸ�
      sResno1     : Variant; // �ֹι�ȣ1
      sResno2     : Variant; // �ֹι�ȣ2
      sBirtdate   : Variant; // �������
      sSex        : Variant; // ����
      sTelno1     : Variant; // ��ȭ��ȣ1
      sTelno2     : Variant; // ��ȭ��ȣ2
      sTelno3     : Variant; // �ڵ���
      sFaxno      : Variant; // FAX��ȣ
      sEmail      : Variant; // E-Mail
      sZipcd      : Variant; // �����ȣ
      sAddress    : Variant; // �ּ�
      sExceptcd   : Variant; // �Ǿ�о������ڵ�
      iCardcnt    : Variant; // �����ǹ���Ƚ��
      sCpatno     : Variant; // �պ��� ȯ�ڹ�ȣ
      sReferyn    : Variant; // refer����
      sLicchkyn   : Variant; // �ڰ�Ȯ�ο���
      sHdctype    : Variant; // �������
      sHdcgrade   : Variant; // ��ֵ��
      sEditid     : Variant; // ������ID
      sEditip     : Variant; // ������IP
      sEditdate   : Variant; // �����Ͻ�
      sIneritno   : Variant; // ���ƹ�ȣ
      sZpaddress  : Variant; // �����ȣ�ּ�
      sFlag       : Variant; // �Է±����� '1': ȯ�ڹ�ȣ, '2':�ֹι�ȣ, '3':����
      sPatgubun   : Variant; // ��ȯȯ������ ��ȯȯ����������. 1:��ȯ, 2: ��ȯ
      sSexnm      : Variant; // ������ (AP03)
      sZipcdnm    : Variant; // �����ȣ�� ���� �ּ�
      sExceptcdnm : Variant; // �Ǿ�о������ڵ�� (AP06)
      sHdctypenm  : Variant; // ��������� (AP04)
      sHdcgradenm : Variant; // ��ֵ�޸� (AP05)
      sPatposit   : Variant; // ȯ��������ġ
      sMeddept    : Variant; // �����
      sPattype    : Variant; // ����
      sLastdate   : Variant; //
      sNotifyyn   : Variant; // �����Ƿڼ�
      sNotifydt   : Variant; // �����Ƿ�����
      sDccode     : Variant; // �����ڵ�
      sDccodenm   : Variant; // �����ڵ��
      dBonedens   : Variant; // ��е���ġ
      tExecdate   : Variant; // �˻�����
      sLocate     : Variant; // �����
      sDenpatno   : Variant; // ġ��ȯ�ڹ�ȣ
      sHopedate   : Variant; // ���ǽǽ�����
      sJobcd      : Variant; //  �����ڵ�
      sChurch     : Variant; // ��ȸ�̸�
      sFromdate   : Variant;
      sTodate     : Variant;
      sCancerno   : Variant;
      sChacode    : Variant;
      sSmsyn      : Variant; //SMS���ŵ��� ����
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
// ��±����ڵ�
// �ۼ��� : 2012.07.18
// �ۼ��� : �� ��
// ���� ���̺� : CCCAPCKT
//======================================================
   Hcccapckt = class
     sType1	    : Variant;  // �˻�����1
     sType2	    : Variant;  // �˻�����2
     sType3	    : Variant;  // �˻�����3
     sType4	    : Variant;  // �˻�����4
     sType5	    : Variant;  // �˻�����5
     sType6	    : Variant;  // �˻�����6
     sType7	    : Variant;  // �˻�����7
     sType8	    : Variant;  // �˻�����8
     sType9	    : Variant;  // �˻�����9

     // �����ڵ���ȸ����
     sCheck         : Variant;   // ĸ�ı��ѿ���
     sCheck2        : Variant;   // ��±��ѿ���
     sExeid         : Variant;    // ��������
     sSdate         : Variant;    // ������
     sSdate2        : Variant;    // ������
     sEdate         : Variant;    // ������
     sEdate2        : Variant;    // ������
     sFormid        : Variant;    // �����
     sRemark        : Variant;   // ����
     sBtnname       : Variant;   // ��ư��
     sBtnremark     : Variant;    // ��ư����
     sSeqno         : Variant;   // �Ϸù�ȣ
     sEditid        : Variant;     // ������
     sEditip        : Variant;     // ����ip
     sWkareanm     : Variant;    // �ٹ�ó
     sJikgunnm     : Variant;     // ����
     sJikgupnm     : Variant;     // ����
     sEmpnm        : Variant;    // �����ȣ
     sWkareacd     : Variant;     // �ٹ�ó
     sJikgun       : Variant;      // ����
     sJikgup       : Variant;      // ����
     sEmpno        : Variant;     // �����ȣ

     function listcccapckt2   : integer;    //ȭ��ĸ�� �����ȸ
   end;

//======================================================
// ��±����ڵ�
// �ۼ��� : �� ��
// ���� ���̺� : CCBTNCKT
// 2015������, ���Ѱ���3��(��¹�����) by ����, KimDaeYong 2015-10-14
//======================================================
    Hccbtnckt = class
     sType1	    : Variant;  // �˻�����1
     sType2	    : Variant;  // �˻�����2
     sType3	    : Variant;  // �˻�����3
     sType4	    : Variant;  // �˻�����4
     sType5	    : Variant;  // �˻�����5

     // �����ڵ���ȸ����
     sCheck2    : Variant;    // ��±��ѿ���

     // �����ڵ���ȸ
     function listccbtnckt1 : integer;
    end;

//======================================================
// ��·α�
// �ۼ��� : 2015.09.22
// �ۼ��� : �� ��
// ���� ���̺� : CCPRTCKT
// 2015������, ���Ѱ���3��(��¹�����Log) by ����, KimDaeYong 2015-10-14
//======================================================
    HccPrtckt = class
     sType1	    : Variant;  // �˻�����1
     sType2	    : Variant;  // �˻�����2
     sType3	    : Variant;  // �˻�����3
     sType4	    : Variant;  // �˻�����4
     sType5	    : Variant;  // �˻�����5
     sType6	    : Variant;  // �˻�����6
     sType7	    : Variant;  // �˻�����7
     sType8	    : Variant;  // �˻�����8
     sType9	    : Variant;  // �˻�����9

     // �����ڵ���ȸ����
     sCheck         : Variant;   // ĸ�ı��ѿ���
     sCheck2        : Variant;    // ��±��ѿ���
     sExeid         : Variant;    // ��������
     sSdate         : Variant;    // ������
     sSdate2        : Variant;    // ������
     sEdate         : Variant;    // ������
     sEdate2        : Variant;    // ������
     sFormid        : Variant;    // �����
     sRemark        : Variant;    // ����
     sBtnname       : Variant;    // ��ư��
     sBtnremark     : Variant;    // ��ư����
     sSeqno         : Variant;    // �Ϸù�ȣ
     sEditid        : Variant;    // ������
     sEditip        : Variant;    // ����ip
     sWkareanm     : Variant;     // �ٹ�ó
     sJikgunnm     : Variant;     // ����
     sJikgupnm     : Variant;     // ����
     sEmpnm        : Variant;     // �����ȣ
     sWkareacd     : Variant;     // �ٹ�ó
     sJikgun       : Variant;     // ����
     sJikgup       : Variant;     // ����
     sEmpno        : Variant;     // �����ȣ
     sMeddept      : Variant;

     function InsertCcprtckt1 : integer;    //��·α� ���
    end;

    //======================================================
    // ���ٱ�ϰ���
    // �ۼ��� : 2018.12.07
    // �ۼ��� : �� ��
    // ���� ���̺� : CCACCEST
    //û������Ʈ�����ȣȭ����(���ٱ�ϰ���) by ����.  KimDaeYong 2018-12-19
    //======================================================
    Hccaccest = class
     sType1	    : Variant;  // �˻�����1
     sType2	    : Variant;  // �˻�����2
     sType3	    : Variant;  // �˻�����3
     sType4	    : Variant;  // �˻�����4
     sType5	    : Variant;  // �˻�����5
     sType6	    : Variant;  // �˻�����6
     sType7	    : Variant;  // �˻�����7
     sType8	    : Variant;  // �˻�����8
     sType9	    : Variant;  // �˻�����9

     sUserid        : Variant;    // ����ھ��̵�
     sUserip        : Variant;    // ����IP
     sPrgid         : Variant;    // ���α׷�ID
     sFormid        : Variant;    // �����
     sJobtype       : Variant;    // �������

     function InsCcaccest     : integer;    //���ٱ�ϰ���

    end;



var
      CCcomcdt : Tcccomcdt;
      CCzipcdt : Tcczipcdt;
      CCholydt : Tccholydt;
      CChosift : Tcchosift;
      APPATBAT : HAPPATBAT;
      cccapckt : Hcccapckt;
      CCBtnckt : HccBtnckt; //2015������, ���Ѱ���3��(��¹�����) by ����, KimDaeYong 2015-10-14
      CCPrtckt : HccPrtckt; //2015������, ���Ѱ���3��(��¹�����Log) by ����, KimDaeYong 2015-10-14
      CCAccest : HccAccest; //û������Ʈ�����ȣȭ����(���ٱ�ϰ���) by ����.  KimDaeYong 2018-12-19

implementation

// �����ڵ� ���� Ŭ���� ===========================================


//=========================================================
// ��з�, �Һз� ��� ��ȸ. { CC_COMCD_L }
//=========================================================
function Tcccomcdt.ccComcdtList(sLargcdParam, sComcddtlParam, sSortKeyParam: String; LargcdOrComcddlt: Integer; SearchOpt:integer = 1):Integer;
begin
   Result := -1;

   txAlloc;
   SetFldName('S_CODE1;S_CODE2;S_LASTVAL;L_NO1;L_NO2');
   // ��Һз� �ڵ� �Ű����� ����.
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
// ��, �Һз� �ڵ庰 �� ���� ��ȸ.
//=========================================================
function Tcccomcdt.ccComcdtDetail(sLargcdParam, sComcddtlParam: String):Integer;
begin
   Result := -1;

   txAlloc;
   SetFldName('S_CODE1;S_CODE2');
   // ��Һз� �ڵ� �Ű����� ����.
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
// ��Һз� �ڵ庰 ������ ����. { CC_COMCD_U }
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
// �ű� ��з� / �Һз� �ڵ带 ����Ѵ�.
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
// ������ ����. �ӽ÷� �߰�. { CC_COMCD_D }
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




// ������ ���� Ŭ���� ===========================================





//=======================================================
// �⵵�� ������ ��� ��ȸ. { CM_HOLYD_S }
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
// ���Ϻ� �� ���� ����. { CC_HOLYD_U }
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
// �Է³⵵���� ��� �Ͽ��� �߰�.
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
// �ű� �������� ���.
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
// �������� ����. { CC_HOLYD_D }
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




// �����ȣ ���� Ŭ���� ===========================================





//=========================================================
// �����ȣ �˻�. { CC_ZIPCDT_S }
// ���鵿�� �̸�(sDongParam)�� �̿��� �˻�.
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
// �������� ������ �������� �ʰ� ���̺� field DELDATE�� �����ð����� ����.
// ���Ŀ� CLEAR��ư�� Ŭ���� ��쿡 üũ�Ǿ� �ִ� ���ڵ常 ����.
//=========================================================
procedure Tcczipcdt.SetzipcdsData(sParam : String; iFlag : Integer);
begin
   case iFlag of
      0 : // �����ȣ
         sZipcode := sParam;
      1 : // �õ�
         sSido := sParam;
      2 : // ����
         sGugun := sParam;
      3 : // ���鵿
         sDong := sParam;
      4 : // ����
         sBunji := sParam;
      5 : // ������ȣ
         sAreaclas := sParam;
   end;
end;

//=========================================================
// �����ȣ ��� { CC_ZIPCDT_I }
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
// �����ȣ ���� { CC_ZIPCDT_U }
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
// �����ȣ ���� - ǥ�ø� �Ѵ�. DELDATE�� ���糯¥�ð� ǥ��. { CC_ZIPCDT_D }
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
// DELDATE�� �����Ǿ� �ִ� �����ȣ ���ڵ带 ��� �����Ѵ�.
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





// �������� ���� Ŭ���� ===========================================





//=========================================================
// �������� �˻�. { CC_HOSIF_S }
// �������� �̿��� �˻�.
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
// �ű� �������� ��� { CC_HOSIF_I }
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
// �������� ���� { CC_HOSIF_U }
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
// �������� ����. ���������� �����Ѵ�. { CC_HOSIF_D }
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

//2015������, ���Ѱ���3��(��¹�����) by ����, KimDaeYong 2015-10-14
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

//2015������, ���Ѱ���3��(��¹�����Log) by ����, KimDaeYong 2015-10-14
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

//û������Ʈ�����ȣȭ����(���ٱ�ϰ���) by ����.  KimDaeYong 2018-12-19
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

