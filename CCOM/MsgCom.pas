unit MsgCom;

interface

uses
    Windows, Messages, SysUtils, CommDlg, Classes, Graphics, Controls,
  Forms, StdCtrls, Buttons, ComCtrls, CMsg;
                            
const
    //Client Message Format List
    CF_A110 = '$S�Ͻʽÿ�.';
    CF_A120 = '$S�� $S�Ͻʽÿ�.';
    CF_A130 = '$S��(��) $S�Ͻʽÿ�.';
    CF_A210 = '���� $S�Ͻʽÿ�.';
    CF_A220 = '���� $S�Ǿ�� �մϴ�.';
    CF_A230 = '$S��(��) ���� $S�Ͻʽÿ�.';
    CF_A240 = '$S�Ŀ� $S�Ͻʽÿ�.';
    CF_A310 = '��Ȯ�� $S�Ͻʽÿ�.';
    CF_A320 = '$S��(��) ��Ȯ�� $S�Ͻʽÿ�.';
    CF_A330 = '$S���� $S�Ͻʽÿ�.';
    CF_A410 = '$S�Ǿ�� �մϴ�.';
    CF_A420 = '$S�ؾ� �մϴ�.';
    CF_A430 = '$S��(��) $S�Ǿ�� �մϴ�.';
    CF_A440 = '$S��(��) $S�մϴ�.';
    CF_A450 = '$S��(��) $S�ؾ� �մϴ�.';
    CF_A460 = '$S��(��) ���� $S�Ǿ�� �մϴ�.';
    CF_A510 = '$S��(��) �������ϴ�.';
    CF_B110 = '$S�Դϴ�.';
    CF_B120 = '$S�մϴ�.';
    CF_B210 = '$S�Ǿ����ϴ�.';
    CF_B220 = '$S��(��) $S�Ǿ����ϴ�.';
    CF_B230 = '$S��(����) $S�Ǿ����ϴ�.';
    CF_B240 = '$S�Ǿ��ֽ��ϴ�.';
    CF_B250 = '$S��(��) $S�Ǿ��ֽ��ϴ�.';
    CF_B310 = '$S�Ͽ����ϴ�.';
    CF_B320 = '$S�� $S�Ͽ����ϴ�.';
    CF_B330 = '$S��(��) $S�Ͽ����ϴ�.';
    CF_B340 = '$S��(��) $S�Ͽ����ϴ�.';
    CF_B350 = '$S�߿� $S��(��) $S�Ͽ����ϴ�.';
    CF_B410 = '$S��(��) �ֽ��ϴ�.';
    CF_D110 = '$S��(��) �ƴմϴ�.';
    CF_D210 = '$S��(��) �����ϴ�.';
    CF_D220 = '$S�� $S��(��) �����ϴ�.';
    CF_D310 = '$S��(��) �Ұ��մϴ�.';
    CF_D320 = '$S��(��) �Ұ����մϴ�.';
    CF_D330 = '$S�� �� �����ϴ�.';
    CF_D340 = '$S��(��) $S�� �� �����ϴ�.';
    CF_D410 = '$S�Ǿ����� �ʽ��ϴ�.';
    CF_D420 = '$S��(��) $S�Ǿ����� �ʽ��ϴ�.';
    CF_D430 = '$S���� �ʾҽ��ϴ�.';
    CF_D440 = '$S��(��) $S���� �ʾҽ��ϴ�.';
    CF_D510 = '$S�� �� �����ϴ�.';
    CF_D520 = '$S��(��) $S�� �� �����ϴ�.';
    CF_D610 = '$S���� �ʽ��ϴ�.';
    CF_D620 = '$S��(��) $S���� �ʽ��ϴ�.';
    CF_D710 = '�߸� $S�Ͽ����ϴ�.';
    CF_D720 = '$S��(��) �߸� $S�Ͽ����ϴ�.';
    CF_D730 = '$S��(��) �����ʽ��ϴ�.';
    CF_E110 = '$S�� �� �ֽ��ϴ�.';
    CF_E120 = '$S�� �� �ֽ��ϴ�.';
    CF_E130 = '$S��(��) �����մϴ�.';
    CF_E140 = '$S��(��) $S�� �� �ֽ��ϴ�.';
    CF_E150 = '$S��(��) $S�� �� �ֽ��ϴ�.';
    CF_Q110 = '$S�Ͻðڽ��ϱ�?';
    CF_Q120 = '�����Ͻðڽ��ϱ�?';
    CF_Q130 = '$S�� $S�Ͻðڽ��ϱ�?';
    CF_Q140 = '$S��(��) $S�Ͻðڽ��ϱ�?';
    CF_Q210 = '$S�Ǿ����ϱ�?';
    CF_Q220 = '$S��(��) $S�Ǿ����ϱ�?';

    CF_M100 = '�νõ������� ������ ������ �߻��Ͽ����ϴ�.';
    CF_M101 = '���� �α��� �Ͻʽÿ�';

    //Noun List
    NF010	 = '����';
    NF020	 = '�˻�';
    NF030	 = '���';
    NF040	 = '����';
    NF050	 = '���';
    NF060	 = '���';
    NF070	 = '����';
    NF080	 = '����';
    NF090	 = '����';
    NF100	 = '�߻�';
    NF110	 = '����';
    NF120	 = '����';
    NF130	 = '����';
    NF140	 = '����';
    NF150	 = '���';
    NF160	 = '����';
    NF170	 = '����';
    NF180	 = '����';
    NF190	 = '����';
    NF200	 = '�ջ�';
    NF210	 = '����';
    NF220	 = '����';
    NF230	 = '����';
    NF240	 = '��û';
    NF250	 = '����';
    NF260	 = '����';
    NF270	 = '�Ϸ�';
    NF280	 = '�ϰ�����';
    NF290	 = '��ġ';
    NF300	 = '�Է�';
    NF310	 = '�ۼ�';
    NF320	 = '�۾�';
    NF330	 = '���';
    NF340	 = '��߱�';
    NF350	 = '���ۼ�';
    NF360	 = '����';
    NF370	 = '����';
    NF380	 = '����';
    NF390	 = '��ġ';
    NF400	 = '��ȸ';
    NF410	 = '����';
    NF420	 = '����';
    NF430	 = '�ߺ�';
    NF440	 = '����';
    NF450	 = '����';
    NF460	 = '����';
    NF470	 = 'ó��';
    NF480	 = 'üũ';
    NF490	 = '�ʰ�';
    NF500	 = '���';
    NF510	 = '���';
    NF520	 = '����';
    NF530	 = 'Ȯ��';

    D_INSUTYPE  = '���豸��';
    D_OIFLAG    = '�ܷ�/�Կ�����';
    D_DATE      = '��¥';
    D_SORDNAME	= '2��ORDER��';
    D_SORDCODE	= '2��ORDER�ڵ�';
    D_SUPPORT60	= '60���̻�ξ���';
    D_CHKFYAMT	= '�����ǥ�ܾ�';
    D_OPRDATE	= '��������';
    D_ADDAMT	= '����ݾ�';
    D_ADDFEE	= '����ݾ�';
    D_ADDQTY	= '�������';
    D_FAMHIS	= '������';
    D_HOMENO	= '������ȣ';
    D_NGIVAMT	= '�����ޱ�';
    D_NGVREFNO	= '�����ޱ�������ȣ';
    D_BTMLNAME	= '���ĸ�';
    D_BTMLTIME	= '���Ľð�';
    D_BTMLCODE	= '�����ڵ�';
    D_LIVER	= '����';
    D_NURSEGRD	= '��ȣ���';
    D_NURSE	= '��ȣ��';
    D_ORDNURYN	= '��ȣ��ó�氡�ɿ���';
    D_NURTIME	= '��ȣ�ð�';
    D_MEDITCD	= '��ȣ�����ڵ�';
    D_DIAGNOCD	= '��ȣ�����ڵ�';
    D_DISEASCD	= '��ȣ��ȯ�ڵ�';
    D_NURACTYN	= '��ȣACTING����';
    D_DPRAMT	= '�����󰢺�';
    D_DPRYYMM	= '�����󰢿���';
    D_DCAMT	= '����ݾ�';
    D_DCRAT	= '������';
    D_DCCODE	= '�����ڵ�';
    D_DECRAMT	= '���Ҿ�';
    D_DECRYYMM	= '���ҿ���';
    D_INFECTYN	= '��������';
    D_THYROIDD	= '������ȯ';
    D_OPENDATE	= '��������';
    D_PSNGPRYN	= '����/��ü����';
    D_PERSONNO	= '���ι�ȣ';
    D_TRDAMT	= '�ŷ��ݾ�';
    D_TRDNAME	= '�ŷ���Ī';
    D_STDTYPCD	= '�ŷ�����CODE';
    D_CUSTYPE	= '�ŷ�ó����';
    D_CUSTNAME	= '�ŷ�ó�̸�';
    D_CUSTCODE	= '�ŷ�ó�ڵ�';
    D_WETHMON	= '��ġ�Ⱓ';
    D_RSLTTEXT	= '�˻�������';
    D_RSLTUNIT	= '�˻�������';
    D_RSLTCODE	= '�˻����ڵ�';
    D_RSLTACR	= '�˻���ACR-CODE';
    D_RSLTGRP	= '�˻���GROUP';
    D_RSLTNCD	= '�˻���NORMAL-CODE';
    D_RSLTTYPE	= '�˻���TYPE';
    D_EXAMTECH	= '�˻���';
    D_EXAMABBR	= '�˻����';
    D_EXAMMETH	= '�˻���';
    D_EXAMDEPT	= '�˻�μ�';
    D_MALEHP	= '�˻����ġ(��)';
    D_FEMALEHP	= '�˻����ġ(��)';
    D_EXAMTIME	= '�˻�ҿ�ð�';
    D_ROOMNAME	= '�˻�Ǹ�';
    D_ROOMCODE	= '�˻���ڵ�';
    D_EXAMINFO	= '�˻�ȳ��ڵ�';
    D_EXAMDAY	= '�˻����';
    D_EXAMDATE	= '�˻�����';
    D_EXAMYN	= '�˻�ó�濩��';
    D_MALELP	= '�˻�����ġ(��)';
    D_FEMALELP	= '�˻�����ġ(��)';
    D_EXAMNAME	= '�˻��׸��';
    D_EXAMCODE	= '�˻��׸��ڵ�';
    D_EXAMGRP	= '�˻��׸��ǵ�GROUP';
    D_HOPEDR	= '�˻�����ǻ�';
    D_HOPEDATE	= '�˻�����Ͻ�';
    D_SPCPLAC	= '��ü������';
    D_SPCNAME	= '��ü��';
    D_SPCIDYY	= '��ü�߻�����';
    D_ISOLQTY	= '��ü���ַ�';
    D_TUBECODE	= '��ü���';
    D_TUBENAME	= '��ü����';
    D_SPCCODE	= '��ü�ڵ�';
    D_SPCQTY	= '��ü�ʿ䷮';
    D_SPCID	= '��üID';
    D_SPCHEAD	= '��üID-HEADER';
    D_RSLTDATE	= '��������Ͻ�';
    D_RSLTID	= '����Է���';
    D_APPROVDT	= '��������';
    D_RTAX	= '��������';
    D_TUBERCLE	= '����';
    D_MARYDATE	= '��ȥ�������';
    D_MARRYYN	= '��ȥ����';
    D_DUALDEPT	= '�����μ�';
    D_DLDEPTNM	= '�����μ���';
    D_OLDNUM	= '��ο����';
    D_RCPNO	= '��꼭��ȣ';
    D_PRINTYN	= '��꼭��¿���';
    D_CALYN	= '��꿩��';
    D_CALDATE	= '�������';
    D_AGRAMT	= '���ݾ�';
    D_AGRFRDAT	= '���ⰣFROM';
    D_AGRTODAT	= '���ⰣTO';
    D_CUSTAMT	= '���ó�ݾ�';
    D_DCINRAT	= '���ó�޿�������';
    D_CUINRAT	= '���ó�޿��̼���';
    D_DCUNRAT	= '���ó��޿�������';
    D_CUUNRAT	= '���ó��޿��̼���';
    D_DCSPRAT	= '���ó�����ᰨ����';
    D_CUSPRAT	= '���ó������̼���';
    D_DCMDRAT	= '���ó�����ᰨ���';
    D_CUMDRAT	= '���ó������̼���';
    D_CUSTCD	= '���ó�ڵ�';
    D_ACCTNAME	= '���������';
    D_ACCTCODE	= '���������ڵ�';
    D_ACCTTYPE	= '��������';
    D_ACNTNO	= '���¹�ȣ';
    D_PLANSTAT	= '��ȹ����';
    D_PLANQTY	= '��ȹ����';
    D_HPROTTYP	= '��ܹ鱸��';
    D_ANSTYPE	= '�����������';
    D_ANSDATE	= '�������';
    D_EMPINSU	= '��뺸��';
    D_EMPINSUAMT	= '��뺸���';
    D_RKSTDATE	= '������Ļ簳������';
    D_RKENDATE	= '������Ļ���������';
    D_RKPATYPE	= '������ȯ�ڱ���';
    D_ASTTYPE	= '�����ڻ걸��';
    D_ASTSIZE	= '�����ڻ�԰�';
    D_ASTNAME	= '�����ڻ��';
    D_ASTADAMT	= '�����ڻ�δ��';
    D_ASTSTAT	= '�����ڻ����';
    D_ASTSEQ	= '�����ڻ����';
    D_ASTUSE	= '�����ڻ�뵵';
    D_MVDATE	= '�����ڻ��̵�����';
    D_ASTRMAMT	= '�����ڻ���������';
    D_ASTGETNO	= '�����ڻ�����ȣ';
    D_ASTCODE	= '�����ڻ��ڵ�';
    D_LOSQTY	= '�����ڻ����Ű�����';
    D_MKRNAME	= '�����ڻ�MAKER';
    D_ASTMDL	= '�����ڻ�MODEL';
    D_HIGHPROT	= '���ݷ����׷�����';
    D_HIGHBLD	= '������';
    D_OSTEPO	= '��ٰ���';
    D_BMTDATE	= '����̽ĵ������';
    D_BMT	     = '����̽�ȯ�ڿ���';
    D_SUPLAMT	= '���ް�';
    D_TOTDED	= '�����Ѿ�';
    D_CMHOBONG	= '����ȣ��';
    D_HOLRAT	= '���ް�����';
    D_HOLIDAY	= '������';
    D_PATHIST	= '���ź���';
    D_DEPTYPE	= '���񱸺�';
    D_STNDAMT	= '����ǥ�رݾ�';
    D_RELATION	= '����';
    D_MANTYPE	= '��������';
    D_REFNO	= '������ȣ';
    D_ADMNOTYP	= '������ȣ����';
    D_REFNONM	= '������ȣ��';
    D_ADMAMT	= '��������';
    D_ENEMAYN	= '����/��������';
    D_SHIFTGBN	= '������';
    D_EDUCFLAG	= '��������';
    D_OLDSEQNO	= '��������ȣ';
    D_BUYDATE	= '��������';
    D_VOMITFLG	= '��������';
    D_DOMPAY	= '�����޿�';
    D_STDRTAX	= '�������ذ��ټ�';
    D_STDREXTAX	= '���������ֹμ�';
    D_PENAMT	= '���ο���ǥ�غ�������';
    D_NATIONNM	= '������';
    D_NATIONCD	= '�����ڵ�';
    D_AUTHOR	= '����';
    D_RTNDEPT	= '�ͼӺμ�';
    D_GUNSOKY	= '�׷�ټӰ���';
    D_GRENTDT	= '�׷��Ի�����';
    D_MINCAMT	= '�ٷμҵ�ݾ�';
    D_INCAMT	= '�ٷμҵ���Աݾ�';
    D_JOBSITE	= '�ٹ����';
    D_GUNMUJO	= '�ٹ���';
    D_WKAREA	= '�ٹ�����';
    D_JOBTYPE	= '�ٹ�����';
    D_GUNSOKX	= '�ټӰ���';
    D_FASTYN	= '�ݽĿ���';
    D_AMOUNT	= '�ݾ�';
    D_BANPATTN	= '����Pattern';
    D_INSTYPE	= '�޿�����';
    D_PAYGBN	= '�޿�����';
    D_JIGUBGBN	= '�޿����ޱ���';
    D_INSAMT	= '�޿��ѱݾ�';
    D_TERMS	= '�Ⱓ';
    D_BASTAX	= '�⺻��';
    D_PREAMT	= '������ݾ�';
    D_ACTMATYP	= '���/��ᱸ��';
    D_REPTNO	= '��ȹ�ȣ';
    D_REPTDATE	= '�������';
    D_STNDATE	= '��������';
    D_BASEPT	= '��������';
    D_DONOR	= '������';
    D_OLDREQDT	= '��û������';
    D_ETC	= '��Ÿ';
    D_OTHERS	= '��Ÿ';
    D_OTHERMIX	= '��Ÿ MIX ORDER';
    D_ETCGBN	= '��Ÿ����';
    D_ETCAMT	= '��Ÿ�ݾ�';
    D_ETCDATE	= '��Ÿ����';
    D_ETCDISEA	= '��Ÿ����';
    D_ETCTREYN	= '��Ÿġ�Ῡ��';
    D_EMIXSTAT	= '��ŸMIX ����';
    D_EMIXYN	= '��ŸMIX����';
    D_SLIPWKDT	= '��ǥ�۾�����';
    D_TASTE	= '��ȣ��ǰ';
    D_ERCALL	= '��޿���ó';
    D_AGE	= '����';
    D_REFILREM	= '���� REFILL �ϼ�';
    D_WEIGHTM	= '���ڸ�����';
    D_PAYDATE	= '��������';
    D_PAYSQSTP	= '����ȸ��';
    D_YEARCNT	= '������';
    D_PATHCD	= '�������';
    D_STEPCD	= '��������(1.������ 2.';
    D_ENTNUR	= '�����ð�ȣ��';
    D_ENTDR	= '�������ǻ�';
    D_OLDRAT	= '���ΰ�����';
    D_GLAUCOMA	= '�쳻��';
    D_DENSITY	= '��';
    D_NONGTAX	= '��Ư��';
    D_BRIAN	= '������';
    D_ACCAMT	= '�����ݾ�';
    D_ACCUCD	= '�����з��ڵ�';
    D_LDIETYPE	= '�ʽı���';
    D_REFILDAT	= '���� REFILL ó������';
    D_UNITPRI	= '�ܰ�';
    D_PRICE	= '�ܰ�ó�����';
    D_CHGOAL	= '�ܱ��ǥ��';
    D_SPCSPCYN	= '�ܵ���ü����';
    D_UNIT	= '����';
    D_GPDCAMT	= '��ü����ݾ�';
    D_GPTYPE	= '��ü����';
    D_GPRSVCNT	= '��ü�����ο�';
    D_GPADDAMT	= '��ü�߰��ݾ�';
    D_GPADDYN	= '��ü�߰�����';
    D_GENDR	= '����ǻ�';
    D_CIGACNT	= '��谹��';
    D_CIGAYEAR	= '��迬��';
    D_GALLSTON	= '�㼮��';
    D_DPRTAMT	= '�����Ѿ�';
    D_DISBETE	= '�索��';
    D_CURACT	= '���¿���';
    D_BUDGFST	= '���ʿ���';
    D_GIVCNT	= '�������ްǼ�';
    D_GIVAMT	= '�������ޱݾ�';
    D_PAYREQSEQ	= '��������Ƿڼ���';
    D_PAYREQDAT	= '��������Ƿ�����';
    D_WAITTYPE	= '��ⱸ��';
    D_WAITNO	= '����ȣ';
    D_WAITTIME	= '���ð�';
    D_CRAMT	= '�뺯�ݾ�';
    D_LARGCD	= '��з�';
    D_CUTCNT3	= '��з��Ǽ�';
    D_OTHPAY	= '��ҽ�û�ݾ�';
    D_MATCHCD	= '�����ڵ�';
    D_COLON	= '�����';
    D_TRANSQTY	= '��ü����';
    D_OUTCNT	= '����Ǽ�';
    D_NOLENDCD	= '����Ҵɻ���';
    D_LENDSTAT	= '�������';
    D_OUTYN	= '���⿩��';
    D_USETYPE	= '����뵵';
    D_LENDCODE	= '�����ڵ�';
    D_PRSDNAME	= '��ǥ�ڸ�';
    D_STDGOODS	= '��ǥǰ��';
    D_ARVDATE	= '�����Ͻ�';
    D_FREEZEYN	= '����������';
    D_COMPYN	= '���ݿ���';
    D_ACOMPRLN	= '�����ڰ���';
    D_ACOMPAGE	= '�����ڳ���';
    D_ACOMPNM	= '�����ڼ���';
    D_ACOMPSEX	= '�����ڼ���';
    D_ACOMPTEL	= '��������ȭ��ȣ';
    D_ACOMADDR	= '�������ּ�';
    D_COSUGACD	= '���ù߻��������ڵ�';
    D_SUABCNT	= '���ü��������ο�';
    D_COSUBCD	= '����CHECK';
    D_ISOQTY	= '��������������';
    D_HEADSIZE	= '����';
    D_HEADACHE	= '����';
    D_GRADE	= '���';
    D_RGTDATE	= '�������';
    D_RGTCNT	= '���ó���ڷ��';
    D_LEASENO	= '����������ȣ';
    D_LEASETYP	= '��������';
    D_LEASECO	= '��������ó';
    D_LESCUST	= '����ȸ��';
    D_LINYN	= '���ٿ��࿩��';
    D_LINDATE	= '���ٿ�������';
    D_CLOSEYN	= '��������';
    D_CLOSYYMM	= '��������';
    D_NARCOYN	= '���࿩��';
    D_LSTLOGDT	= '�����������Ͻ�';
    D_ANETHCD	= '������';
    D_ANETHMM	= '�����';
    D_ANETHHH	= '����ð�';
    D_ANETHFRM	= '������۽ð�';
    D_ANETHDR	= '�����ǻ�';
    D_ANETHTO	= '��������ð�';
    D_FULLDELV	= '����и�';
    D_FULLCNT	= '����и���';
    D_BRONCHUS	= '��������⿰';
    D_LIGTLIQD	= '����������';
    D_DBLINCYN	= '�¹��̿���';
    D_SALETAMT	= '�Ű���';
    D_ISSUEEA	= '�ż�';
    D_PCHTYPE	= '���Ա���';
    D_MSUSUBDT	= '���������';
    D_REQSEQNO	= '�����Ϸù�ȣ';
    D_MODELNM	= '�𵨸�';
    D_OBJECT	= '����';
    D_WEIGHT	= '������';
    D_NOHOUSYN	= '�����ñٷ��ڿ���';
    D_BREATNO	= '��ȣ��';
    D_SETNO	= '������ȣ';
    D_DOCUMNO	= '������ȣ';
    D_QAMEDTYP	= '��������';
    D_MOONNAME	= '������';
    D_MOONGRP	= '�����з�';
    D_MOONTYPE	= '��������';
    D_MOONDR	= '������';
    D_MOONKEY	= '��������Ű';
    D_MOONCODE	= '�����ڵ�';
    D_STKTYPE	= '��ǰ/�����';
    D_ITEMDOCU	= '��ǰ��ť��Ʈ';
    D_MATLINTY	= '��ǰ���ٱ���';
    D_ITEMCODE	= '��ǰ�����ڵ�';
    D_ITEMNAME	= '��ǰ��';
    D_KINDNAME	= '��ǰ����';
    D_KINDCODE	= '��ǰ�����ڵ�';
    D_PNDFMSB	= '�̰���������';
    D_PNDFMSBC	= '�̰����������ġ';
    D_PNDRMCD	= '�̰�����׸�';
    D_PNDFMHD	= '�̰�����׸��Ī';
    D_PNDFMHDC	= '�̰�����׸���ġ';
    D_PNDKEY	= '�̰����KEY';
    D_PNDSEC	= '�̰�������';
    D_PNDYN	= '�̰��������';
    D_PNDCNT	= '�̰���Ǽ�';
    D_NOSETAMT	= '�̰���ݾ�';
    D_EHGCAP	= '�̻�ȯ����';
    D_UNCOLTYP	= '�̼�����';
    D_UNCOLAMT	= '�̼��ݾ�';
    D_UNCDATE	= '�̼��߻�����';
    D_UNCOLID	= '�̼��߻���';
    D_UNCOLCD	= '�̼������ڵ�';
    D_REPAYCD	= '�̼����ڵ�';
    D_FRREMAMT	= '�����ޱ�';
    D_RCVNCNT	= '��ȸ�ŰǼ�';
    D_RCVNAMT	= '��ȸ�űݾ�';
    D_RTNAMT	= '�ݳ��ݾ�';
    D_RTNQRY	= '�ݳ�����';
    D_RTNYN	= '�ݳ�����';
    D_RTNWDATE	= '�ݳ���������';
    D_RTNDATE	= '�ݳ�����';
    D_RTNID	= '�ݳ���';
    D_RTNCNT	= '�ݳ�ȸ��';
    D_ROUNDTYP	= '�ݿø�����';
    D_APRSLPNO	= '������ǥ��ȣ';
    D_ISSUENO	= '�߱޹�ȣ';
    D_ISSUDATE	= '�߱�����';
    D_SENDYN	= '�߼ۿ���';
    D_SENDDATE	= '�߼�����';
    D_ACCDEPT	= '���Ǻμ�';
    D_PRINTSEQ	= '�������';
    D_VSTTIME	= '�湮�ñ�';
    D_VSTYN	= '�湮����';
    D_VSTDATE	= '�湮����';
    D_EMERGENY	= '��缱ġ���޵�';
    D_RADYN	= '��缱ġ�Ῡ��';
    D_URINYN	= '�财����';
    D_EVACUHAB	= '�躯����';
    D_EVACUYN	= '�躯����';
    D_SPOUSDDYN	= '����ڰ�������';
    D_SPOUSYN	= '���������';
    D_BAGENAME	= '������';
    D_BAGECODE	= '�����ڵ�';
    D_LEUKOCYT	= '������';
    D_COMPNYNO	= '���ε�Ϲ�ȣ';
    D_CONAME	= '���θ�';
    D_CHNGDATE	= '��������';
    D_CREQDATE	= '����û������';
    D_CHCODE	= '�����ڵ�';
    D_COMSTIPT	= '����';
    D_WARDNO	= '������ȣ';
    D_ICUTYPE	= '������ȯ����';
    D_BEDNO	= '�����ȣ';
    D_BEDCNT	= '�����';
    D_ROOMNO	= '����';
    D_ROOMTYPE	= '���Ǳ���';
    D_ROOMGRAD	= '���ǵ��';
    D_CHROOMYN	= '���Ǻ��濩��';
    D_HOSPRATE	= '����������';
    D_HOSPCODE	= '�����ڵ�';
    D_REPTYN	= '������';
    D_REPTDR	= '������';
    D_SAVETYPE	= '�������';
    D_BILLAMT	= '���������ݾ�';
    D_SAVEYN	= '��������';
    D_SAVEDATE	= '��������';
    D_SAVEPLAC	= '�������';
    D_SUPPCNT	= '����û���Ǽ�';
    D_AIDNURSE	= '������';
    D_KEEPTYPE	= '��������';
    D_INSPRICE	= '����ܰ�';
    D_ININCFEE	= '���������ݾ�';
    D_INSPCRAT	= '�������������';
    D_AIDINTYP	= '��ȣ�޿�����';
    D_AIDPRICE	= '��ȣ�ܰ�';
    D_CARECNT	= '��ȣ�ڻ���ȯ�ڼ�';
    D_CARENAME	= '��ȣ�ڼ���';
    D_CAREDCNT	= '��ȣ�ڽĻ�';
    D_CAREYN	= '��ȣ������';
    D_INSTRYN	= '������������';
    D_DOSTIME	= '����ð�';
    D_ABDOSIZE	= '����';
    D_RETURNDT	= '��������';
    D_STOMACHE	= '����';
    D_HOMEYN	= '����/Ÿ������';
    D_OWNAMT	= '���κδ��ѱݾ�';
    D_OWNRTN	= '���κδ�ȯ�ޱݾ�';
    D_SEALDATE	= '���սð�';
    D_VATAMT	= '�ΰ���';
    D_VATTYPE	= '�ΰ�������';
    D_VATINDYN	= '�ΰ���ǥ�ÿ���';
    D_AUTOPYN	= '�ΰ˿���';
    D_REGNO	= '�ε������ȣ';
    D_CMPLDATE	= '�ε���������';
    D_ESTCLS	= '�ε�������';
    D_LANDGRD	= '�ε����������';
    D_DEPTDATE	= '�μ��߷�����';
    D_COMDNO	= '�μ��� ���';
    D_DEPTCODE	= '�μ��ڵ�';
    D_DIAGDATE	= '�ο���������';
    D_SIGNCODE	= '��ȣ';
    D_GRPDATE	= '�з�����';
    D_DELVNUR1	= '�и�������ȣ��';
    D_DELVDR	= '�и������ǻ�';
    D_DELVCNT	= '�и���';
    D_DELVEXDT	= '�и���������';
    D_DELVKIND	= '�и�����';
    D_DELVTYPE	= '�и�����';
    D_DENYCNT	= '�ҴɰǼ�';
    D_DNYAMT	= '�Ҵɱݾ�';
    D_STERYN	= '���ӽ��࿩��';
    D_OUTTYPE	= '���ⱸ��';
    D_OUTUNIT	= '�������';
    D_IOUNIT	= '����������԰����';
    D_OUTDEPT	= '����μ�';
    D_OUTQTY	= '�������';
    D_OUTDATE	= '��������';
    D_OUTID	= '������';
    D_OUTCYCLE	= '�����ֱ�';
    D_NOTAXSUM	= '�����������';
    D_NOTAX	= '���������';
    D_NNOTAX	= '������������';
    D_UNIAMT	= '��޿��ѱݾ�';
    D_FATTYPE	= '�񸸵�';
    D_FATUP	= '�񸸵���';
    D_FATRSLT	= '�񸸵��򰡰��';
    D_FATCODE	= '�񸸵����ڵ�';
    D_FATLOW	= '�񸸵���';
    D_PASSWORD	= '��й�ȣ';
    D_PWDUPDDT	= '��й�ȣ�����Ͻ�';
    D_COSTACCT	= '�������ڵ�';
    D_COSTYPE	= '��뱸��';
    D_NOSEEXT	= '����Ȯ��';
    D_BREATFEW	= '��ȣ��';
    D_ACCIDETL	= '�����';
    D_ACCIDATE	= '���߻��Ͻ�';
    D_ACCISITE	= '������';
    D_ACCITYPE	= '�������';
    D_EXPICAU	= '�������';
    D_EXPIDATE	= '�������';
    D_EXPCNT	= '���ȯ�ڼ�';
    D_SBIRCNT	= '���Ƽ�';
    D_BUSSNO	= '����ڵ�Ϲ�ȣ';
    D_LOCATE	= '�����';
    D_BUSSTYPE	= '����屸��';
    D_USEFRMDT	= '��밡�ɽ��۽ð�';
    D_USEYN	= '��밡�ɿ���';
    D_USETODT	= '��밡������ð�';
    D_USEAMT	= '���ݾ�';
    D_USEUNIT	= '������';
    D_USEDEPT	= '���μ�';
    D_USEDAYS	= '������';
    D_EMPTYPE	= '�������';
    D_EMPNO	= '�����ȣ';
    D_EXPITYPE	= '����';
    D_PRECKSTA	= '�����ɻ����';
    D_PRECKDT	= '�����ɻ�����';
    D_PRECKID	= '�����ɻ���';
    D_CUTCNT	= '�谨�Ǽ�';
    D_CUTAMT	= '�谨�ݾ�';
    D_CUTSEQ	= '�谨��������';
    D_CUTANALY	= '�谨�м�����';
    D_CUTCODE	= '�谨�����ڵ�';
    D_DELDATE	= '��������';
    D_WOMTYPE	= '�������';
    D_WOMPATNO	= '���ȯ�ڹ�ȣ';
    D_OXYDOSYN	= '�����������';
    D_INDINTYP	= '����޿�����';
    D_INDPRICE	= '����ܰ�';
    D_PREMED	= '��������';
    D_OUTTAX	= '���⼼��';
    D_DPRTYPE	= '�󰢱���';
    D_REFAMT	= '�󰢱ݾ�';
    D_ASTRATE	= '����';
    D_REFTYPE	= '������';
    D_CONSDATE	= '�������';
    D_ICDTNAME	= '�󺴸�';
    D_ICDGPSNM	= '�󺴼Һз���';
    D_DIACDRAN	= '�󺴼���';
    D_ICDTYEAR	= '�󺴿����̸�';
    D_ICDGPMNM	= '���ߺз���';
    D_ICDTCODE	= '���ڵ�';
    D_ICDTGRPL	= '���ڵ��з�';
    D_ICDTGRPS	= '���ڵ�Һз�';
    D_ICDTGRPM	= '���ڵ��ߺз�';
    D_RESTDT	= '����������';
    D_RESTID	= '�������ڱ���';
    D_BASEAMT	= '�󿩱��ʱݾ�';
    D_UPSLIPCD	= '���� SLIP CODE';
    D_UPDEPT	= '�����μ�';
    D_PRODNAME	= '��ǰ��';
    D_ECODE	= '���ؿ����ڵ�(E)';
    D_VCODE	= '���ؿ����ڵ�(V)';
    D_BUSSNAME	= '��ȣ��';
    D_RTMOCNT	= '��ȯ�Ⱓ';
    D_RTMTH	= '��ȯ���';
    D_DELAMT	= '��ȯ����';
    D_RTINTAMT	= '��ȯ����';
    D_RTDATE	= '��ȯ����';
    D_RTTOAMT	= '��ȯ�Ѿ�';
    D_COLORTYP	= '����׾��';
    D_COLOR	= '����';
    D_BIOPSY	= '����';
    D_BIOPSYCN	= '���˼�';
    D_BIRTDATE	= '�������';
    D_FISH	= '����';
    D_BREQAMT	= '������û����';
    D_SURVTYPE	= '��������';
    D_BIOYN	= '��ȭ��ġ�Ῡ��';
    D_HABIT	= '��Ȱ����';
    D_WESTDIET	= '�����';
    D_PREACTYN	= '���ǽÿ���';
    D_SELEEXYN	= '���ð˻�';
    D_SELETYPE	= '���ð˻籸��';
    D_SELECTYN	= '���ÿ���';
    D_DIARRHEA	= '����';
    D_INSTDATE	= '��ġ����';
    D_SEXPAIN	= '����������';
    D_NAME	= '����';
    D_SEX	= '����';
    D_SEXVD	= '����';
    D_IGRDNAME	= '���и�';
    D_ADULTQTY	= '���λ�뷮';
    D_TEXRPTYP	= '���ݰ�꼭����';
    D_TAXYYMM	= '�����Ű���';
    D_DTSLIPYN	= '���� SLIP ����';
    D_DETAIL	= '���λ���';
    D_COMCDDTL	= '�����ڵ�';
    D_ADDTAX	= '������¡��';
    D_TEXRATE	= '����';
    D_WSHPRICE	= '��Ź�ܰ�';
    D_WSHOUTYN	= '��Ź���ֿ���';
    D_INTRODU	= '�Ұ���';
    D_STERNUR	= '�ҵ���ȣ��';
    D_DINFQTY	= '�ҵ��Ƿ�ó����';
    D_DINFYN	= '�ҵ��Ƿ�ó������';
    D_DINFDATE	= '�ҵ��Ƿ�ó������';
    D_DINFID	= '�ҵ��Ƿ�ó����';
    D_DINFTYPE	= '�ҵ�����';
    D_DINFNAME	= '�ҵ�������';
    D_INCOMTYP	= '�ҵ�����';
    D_CPRYN	= '�һ�������';
    D_COMPANY	= '�Ҽ�ȸ��';
    D_CHIRAT	= '�Ҿư�����';
    D_CHILDTYP	= '�ҾƱ���';
    D_CHILDQTY	= '�Ҿƻ�뷮';
    D_CHILDMAT	= '�Ҿ�����ڵ�';
    D_CHIQTY	= '�Ҿ��������';
    D_NEEDQTY	= '�ҿ䷮';
    D_DIGEST	= '��ȭ�ҷ�';
    D_SNDCNT	= '�۽�Ƚ��';
    D_SUGAGRP	= '�����з���ȣ';
    D_SUGATYPE	= '�������ñ���';
    D_SUGACODE	= '�����ڵ�';
    D_RCPTYPE	= '��������';
    D_RCPBILL	= '�����ݾ�';
    D_RCPDEPO	= '�����ݾ�';
    D_RCPSEQ	= '������������';
    D_RCPGRPNO	= '����������ȣ';
    D_RCPSTAT	= '��������';
    D_RCPYN	= '��������';
    D_RCPDATE	= '��������';
    D_RCPID	= '������';
    D_RCPKIND	= '��������';
    D_RCPCNT	= '����ó���ڷ��';
    D_PSTRCPYN	= '������ó������';
    D_TOTSD	= '�����Ѿ�';
    D_QTY	= '����';
    D_RCVID	= '������';
    D_RCVYN	= '����Ȯ�ο���';
    D_CHIEFDR	= '������';
    D_FEEAMT	= '������ݾ�';
    D_OPANESYN	= '����/���뿩��';
    D_OPADDRAT	= '��������';
    D_OPEXPYN	= '�����������';
    D_OPSEQNO	= '��������';
    D_OPOUTDAT	= '�����ǳ����ð�';
    D_OPINDAT	= '�����ǵ����ð�';
    D_OPYN	= '��������';
    D_OPEXDATE	= '������������';
    D_OPDATE	= '��������';
    D_OPTYPE	= '�����屸��';
    D_OPMATQTY	= '����������';
    D_OPMATCD	= '��������ڵ�';
    D_OPPHYS	= '����ü��';
    D_OPCODE	= '�����ڵ�';
    D_OPSKIN	= '�����Ǻ��غ�';
    D_OPDRAIN	= '����DRAIN';
    D_RECVDATE	= '��������';
    D_SUCKLETY	= '�������';
    D_EDITTYPE	= '��������';
    D_BUDGCHG	= '��������';
    D_EDITDATE	= '��������';
    D_EDITID	= '������';
    D_BINSPRIC	= '����������ܰ�';
    D_BAIDPRIC	= '��������ȣ�ܰ�';
    D_BINDPRIC	= '����������ܰ�';
    D_BFRNPRIC	= '�������ܱ��δܰ�';
    D_BGENPRIC	= '�������Ϲݴܰ�';
    D_BTRAPRIC	= '�������ں��ܰ�';
    D_PREDOSNO	= '�����������ȣ';
    D_AINSPRIC	= '�����ĺ���ܰ�';
    D_AAIDPRIC	= '�����ĺ�ȣ�ܰ�';
    D_AINDPRIC	= '�����Ļ���ܰ�';
    D_AFRNPRIC	= '�����Ŀܱ��δܰ�';
    D_AGENPRIC	= '�������Ϲݴܰ�';
    D_ATRAPRIC	= '�������ں��ܰ�';
    D_MEDYN	= '��������';
    D_MEDCNT	= '�����ڷ�Ǽ�';
    D_TRUSTAMT	= '��Ź�ݾ�';
    D_TRANSCNT	= '���� ACTING �ǽ�Ƚ��';
    D_TRANSFYN	= '��������';
    D_SEQNO	= '����';
    D_ROUDNUR	= '��ȸ��ȣ��';
    D_APRAMT	= '���αݾ�';
    D_ADMINNO	= '���μ���ȣ';
    D_APRDATE	= '��������';
    D_APRBAMT	= '����������';
    D_APRAAMT	= '�����Ľ���';
    D_VISUAL	= '�ð����';
    D_ACCUYN	= '�ð迭���ɿ���';
    D_CITYTYPE	= '�õ�����';
    D_SYSNAME	= '�ý��۸�';
    D_STARTIME	= '���۽ð�';
    D_STARTDT	= '������';
    D_EXECDR	= '�����ǻ�';
    D_DISINFYN	= '�ı�ҵ�';
    D_MENUNAME	= '�Ĵܸ�';
    D_MENUCODE	= '�Ĵ��ڵ�';
    D_INDCODE	= '�ĺ��ڵ�';
    D_DIETPATH	= '�Ļ���';
    D_DIETNAME	= '�Ļ��';
    D_DIETCAT	= '�Ļ����';
    D_DTCTNAME	= '�Ļ���ָ�';
    D_DIETYN	= '�Ļ翩��';
    D_DIETCONT	= '�Ļ翬��';
    D_DIETTRCD	= '�Ļ���';
    D_DIETTRYN	= '�Ļ�������';
    D_DIETDATE	= '�Ļ�����';
    D_DIETTYPE	= '�Ļ�����';
    D_DIETKIND	= '�Ļ�����';
    D_DTKDNAME	= '�Ļ�������';
    D_DIETCODE	= '�Ļ��ڵ�';
    D_DIETTIME	= '���̰��ó���';
    D_MEALENDT	= '������������';
    D_FOODTYPE	= '��ǰ����';
    D_FOODGRP	= '��ǰ��';
    D_FOODKIND	= '��ǰ��';
    D_FOODNAME	= '��ǰ��';
    D_FOODQTT	= '��ǰ���뷮';
    D_STATQTT	= '��ǰ������±��差';
    D_STATPOS	= '��ǰ������±�ȸ';
    D_INTKQTT	= '��ǰ������¼��뷮';
    D_STATPRE	= '��ǰ���������ȸ';
    D_INTKDATE	= '��ǰ��������';
    D_FOODDIST	= '��ǰ�����з�';
    D_FOODCODE	= '��ǰ�ڵ�';
    D_BABYRAT	= '�Ż��ư�����';
    D_BABEXPYN	= '�Ż��ƻ������';
    D_BABRMSTD	= '�Ż��ƽǵ����ð�';
    D_BABYMOVE	= '�Ż����̵�';
    D_MOVEDATE	= '�Ż����̵�����';
    D_BABWEIGH	= '�Ż���ü��';
    D_MOANYN	= '�����Ҹ�����';
    D_HEIGHT	= '����';
    D_KIDNEY	= '����';
    D_RELNM	= '�Ǹ��ȣ';
    D_EXECDATE	= '�ǽ�����';
    D_EXECID	= '�ǽ��ڻ��';
    D_BUDGAMT	= '���࿹��';
    D_PULSEYN	= '�ɹڵ����̻󿩺�';
    D_CKFIXAMT	= '�ɻ��������û���ݾ�';
    D_CKREFAMT	= '�ɻ�������κδ�ȯ��';
    D_CKFIXCNT	= '�ɻ�������ްǼ�';
    D_CKTOTAMT	= '�ɻ����������ѱݾ�';
    D_CKRULE	= '�ɻ����';
    D_CKMODIF	= '�ɻ��������';
    D_CKRANK	= '�ɻ�켱����';
    D_CKNAME	= '�ɻ����̸�';
    D_CKID	= '�ɻ���ID';
    D_CKBQTY	= '�ɻ���1ȸ��뷮';
    D_CKBAMT	= '�ɻ����ݾ�';
    D_CKBPRICE	= '�ɻ����ܰ�';
    D_CKBDAYS	= '�ɻ����ϼ�';
    D_CKBMAT	= '�ɻ�������ݾ�';
    D_CKBACT	= '�ɻ���������ݾ�';
    D_CKBCNT	= '�ɻ���Ƚ��';
    D_CKINFOM	= '�ɻ�����';
    D_CKDGREE	= '�ɻ�����';
    D_CKPART	= '�ɻ���Ʈ';
    D_CKRATE	= '�ɻ�Ȱ����';
    D_CKAQTY	= '�ɻ���1�ϻ�뷮';
    D_CKAAMT	= '�ɻ��ıݾ�';
    D_CKAPRICE	= '�ɻ��Ĵܰ�(�ݾ�)';
    D_CKADAYS	= '�ɻ����ϼ�';
    D_CKAMAT	= '�ɻ�������ݾ�';
    D_CKAACT	= '�ɻ���������ݾ�';
    D_CKACNT	= '�ɻ���Ƚ��';
    D_MIDRATE	= '�ɾ߰�����';
    D_MIDNITYP	= '�ɾ߱���';
    D_NIGTHTYP	= '�ɾ߱���';
    D_SAFEQTY	= '����������';
    D_CANCER	= '��';
    D_LENGTH	= '�ϱ���';
    D_DEPTH	= '�ϱ���';
    D_CANCYN	= '�ϵ�ϴ�󿩺�';
    D_CANSEQNO	= '���Ϸù�ȣ';
    D_WIDTH	= '����';
    D_NIGRATE	= '�߰�������';
    D_NIGHTYPE	= '�߰�����';
    D_HISTYN	= '��¾�ǰ����';
    D_BUNDLENO	= '�๭����ȣ';
    D_COMPPR	= '�๰��ȣ�ۿ볻��';
    D_DRUGGRP	= '�๰��ȣ�ۿ�GROUP';
    D_CHEMYN	= '�๰�������';
    D_REJTSTAT	= '��ݳ�����';
    D_REJTDR	= '��ݳ������ǻ�';
    D_REJTID	= '��ݳ�ó����';
    D_DRUGTYPE	= '��з�';
    D_DGIJTYPE	= '���ֻ籸��';
    D_DRUGYN	= '���ֻ�ó�濩��';
    D_DRUGLDAY	= '���ֻ����������ϼ�';
    D_DRUGNAME	= '��ǰ��';
    D_DRUGINFO	= '��ǰ����';
    D_DRUGCODE	= '��ǰ�ڵ�';
    D_EFCTCODE	= '��ȿ���ڵ�';
    D_DRUGSTAT	= '��STATUS';
    D_TUMOR	= '�缺����';
    D_REARCHILD	= '�����ڳ��';
    D_BIRTHTYP	= '��������';
    D_BILLNO	= '������ȣ';
    D_BILEXPDT	= '������������';
    D_DIZZY	= '��������';
    D_WKEVA	= '�������';
    D_COMPYCD	= '��ü�ڵ�';
    D_BUSSCOND	= '����';
    D_AMBULUSE	= '����������';
    D_WEIGHTF	= '���ڸ�����';
    D_STUDYYN	= '������/�б��뿩��';
    D_YEAR	= '����';
    D_AGETYPE	= '���ɱ���';
    D_YYMM	= '����';
    D_EDICODE	= '����ȸ�����ڵ�';
    D_REJCNT	= '����ȸ�ݼ۰Ǽ�';
    D_ENGNAME	= '�����̸�';
    D_CONSRSLT	= '������Ұ�';
    D_NUTRTYPE	= '����ұ���';
    D_ASYRECMN	= '����Ҽ�����±��差';
    D_NUSTCUR	= '����Ҽ�����±�ȸ';
    D_NUSTINT	= '����Ҽ�����¼��뷮';
    D_NUSTPST	= '����Ҽ��������ȸ';
    D_DEPOTTYP	= '���ݱ���';
    D_SUMDEPO	= '���ݱݾ�';
    D_ACCTYPE	= '��������';
    D_ACCOWN	= '������';
    D_SPRAREA	= '���񿵿�';
    D_BUDGRATE	= '���갡����';
    D_BUDGYN	= '������';
    D_BUDGCHK	= '����Ȯ��';
    D_STAYDAYS	= '��������ϼ�';
    D_RSVEXAYN	= '����˻翩��';
    D_RSVTYPE	= '������';
    D_RSVNO	= '�����ȣ';
    D_RSVTIME	= '�����Ͻ�';
    D_RSVDATE	= '��������';
    D_RSVID	= '�����۾���';
    D_RSVTOT	= '��������';
    D_RSVCFMYN	= '����Ȯ�ο���';
    D_RSVCNT	= '����COUNT';
    D_RSVSCHD	= '����SCHEDULE';
    D_SCHDTIME	= '����SCHEDULE�ð�';
    D_LASTAM	= '�����������ð�';
    D_OJAMT	= '��������';
    D_LASTPM	= '���ĸ������ð�';
    D_FINISHYN	= '�ϷῩ��';
    D_EASEDRUG	= '��ȭ��';
    D_CALLYN	= '��������';
    D_FORNTYPE	= '�ܱ��α���';
    D_FRNPRICE	= '�ܱ��δܰ�';
    D_OPOWNRAT	= '�ܷ����κδ���';
    D_OPMEDAYS	= '�ܷ������ϼ�';
    D_PREXAMYN	= '�ܷ��������˻翩��';
    D_PREXMRSV	= '�ܷ�����������˻�';
    D_PATGUIDE	= '�ܷ�ȯ�ڰ����Ұ�';
    D_WOUND	= '�ܻ��������';
    D_FORAMT	= '��ȭ����';
    D_REQRSLT	= '�䱸���';
    D_SUMMARY	= '��๮';
    D_REQID	= '��û��';
    D_USECODE	= '�뵵�ڵ�';
    D_METHODCD	= '����ڵ�';
    D_SAJUAMT	= '�츮���ֻ�ȯ��';
    D_ZIPCODE	= '�����ȣ(�ǰ���)1';
    D_SPORTS	= '�';
    D_SPORTYPE	= '�';
    D_SPORTCD	= '�����';
    D_RUNDAY	= '�������';
    D_CSTDEPT	= '�����μ�';
    D_TRNSNO	= '���ŷ�������ȣ';
    D_RESELT	= '���ŷ�ó�����';
    D_HOPNAME	= '����������';
    D_ORIGPART	= '���ߺ���';
    D_GLACCT	= '��������׸�';
    D_GLADMSEL	= '�����������';
    D_GLADMCD	= '��������׸�';
    D_GLBCKSTD	= '������������';
    D_GLREF	= '��������DATA';
    D_FIRREQNO	= '��û��������ȣ';
    D_WONAMT	= '��ȭ����';
    D_WONINT	= '��ȭ����';
    D_WONRMAMT	= '��ȸ�����ޱݾ�';
    D_PAYMOAMT	= '�����Ծ�';
    D_PAYMODAY	= '����������';
    D_MONCNT	= '�������ο�';
    D_MONAMT	= '�������ѱݾ�';
    D_CURMAMT	= '���ʿ���';
    D_ULCER	= '���˾�';
    D_GASTICAN	= '����';
    D_PLACNAME	= '��ġ';
    D_GIDELVYN	= '�����и�������';
    D_BREASTCA	= '�����';
    D_BREAST	= '������ȯ';
    D_ABNOYN	= '���Ұ߿���';
    D_ASNOCODE	= '���Ұ��ڵ�';
    D_CHPATYPE	= '�������汸��';
    D_TYPEDATE	= '��������ó������';
    D_TYPECD	= '���������ڵ�';
    D_VALIDYN	= '��ȿ������';
    D_VALIDATE	= '��ȿ����';
    D_BANKFNM	= '�����';
    D_BANKSNM	= '������';
    D_BANKRCNT	= '������ü�ǷڰǼ�';
    D_BANKRAMT	= '������ü�Ƿڱݾ�';
    D_BANKTYPE	= '��������';
    D_BANKBNM	= '����������';
    D_BANKCODE	= '�����ڵ�';
    D_FOOD	= '����';
    D_FOODCASE	= '���ĸ���CASE';
    D_DRINK	= '����';
    D_DRNKYEAR	= '���ֱⰣ';
    D_DRNKQTY	= '���ַ�';
    D_DRNKTYPE	= '��������';
    D_DRNKCNT	= '����ȸ��';
    D_ERTYPE	= '���ޱ���';
    D_ERGRADE	= '���޵��';
    D_ERMTYPE	= '���޽Ǳ���';
    D_ERDATE	= '���޽ǵ����Ͻ�';
    D_ERFEEYN	= '�����Ƿ�������뿩��';
    D_ERTOMOYN	= '�������Ͽ���';
    D_ERIMMEYN	= '������ÿ���';
    D_ERRSLT	= '����������';
    D_ERDEPT	= '���������';
    D_RESPONYN	= '���俩��';
    D_RESPKEY	= '��������Ű';
    D_RESPCD	= '�����ڵ�';
    D_REQDEPT	= '�Ƿںμ�';
    D_REQTDR	= '�Ƿ��ǻ�';
    D_REQTDATE	= '�Ƿ�����';
    D_SMCAMT	= '�ǷẸ�������ݾ�';
    D_MEDINS	= '�ǷẸ���';
    D_MEDADD	= '�ǷẸ�����¡��';
    D_MEDRET	= '�ǷẸ���ȯ�ޱ�';
    D_MEDAMT	= '�ǷẸ�躸������';
    D_INSURANO	= '�ǷẸ������ȣ';
    D_COMMTYPE	= '�ǻ���뱸��';
    D_CONSSTAT	= '�ǽĻ���';
    D_MOVEDEPT	= '�̵��μ�';
    D_MOVETIME	= '�̵��ð�';
    D_TRANMETH	= '�̼۹��';
    D_TRANHOSP	= '�̼ۺ���';
    D_TRANDATE	= '�̼�����';
    D_DEWHOUR	= '�̽��ð�';
    D_DEWYN	= '�̽�����';
    D_DEWDATE	= '�̽�����';
    D_PASTSQTY	= '�̿�����';
    D_NXTAMT	= '�̿�����';
    D_REREQAMT	= '���ǽ�û�ݾ�';
    D_REASON	= '���ǽ�û����';
    D_REARVDAT	= '���ǽ�û���ǵ�������';
    D_REREQNO	= '���ǽ�û����';
    D_REREQYN	= '���ǽ�û����';
    D_INTDATE	= '���ڰ����';
    D_INTPAYCY	= '���ں����ֱ�';
    D_INTCLS	= '���ڼ�����';
    D_PREDELV	= '�����и���';
    D_BMEDTIME	= '���������ð�';
    D_TRNSTIME	= '��ü�ð�';
    D_OKTIME	= '��ü�Ϸ�ð�';
    D_TRNSAMT	= '��ü�Ƿڱݾ�';
    D_REQTCNT	= '��ü�Ƿ��ѰǼ�';
    D_REQTAMT	= '��ü�Ƿ��ѱݾ�';
    D_TRNSDAY	= '��ü����';
    D_TRNSLEVL	= '��üLEVEL';
    D_HDYN	= '�ΰ�������������';
    D_HDLST	= '�ΰ�����������������';
    D_HDFST	= '�ΰ�����������������';
    D_ABORTCNT	= '�ΰ�����Ƚ��';
    D_CARAPMN	= '�������';
    D_GENPRICE	= '�Ϲݴܰ�';
    D_CHKNRAMT	= '�Ϲݼ�ǥ�ܾ�';
    D_GENDIET	= '�ϹݽĻ��';
    D_GENSOFT	= '�ϹݽĿ���';
    D_GENLIQD	= '�Ϲ�������';
    D_GNINCFEE	= '�Ϲ������ݾ�';
    D_GNSPCRAT	= '�Ϲ����������';
    D_USEDAY	= '�ϼ�';
    D_DAYCNT	= '���ϼ����ο�';
    D_DAYAMT	= '���ϼ����ѱݾ�';
    D_ORDTEXT	= '�ӻ�Ұ�';
    D_PREGWEEK	= '�ӽ�';
    D_PREGCNT	= '�ӽűⰣ';
    D_PREGDAYS	= '�ӽűⰣ';
    D_PREGDGYN	= '�ӽ��߾�Һ��뿩��';
    D_IMWONDT	= '�ӿ��Ǽ�����';
    D_INUNIT	= '�԰����';
    D_INQTY	= '�԰����';
    D_INDATE	= '�԰�����';
    D_INPUTTYP	= '�Աݱ���';
    D_RCPAMT	= '�Աݱݾ�';
    D_RCPIMCNT	= '�ԱݺҴɰǼ�';
    D_RCPIMAMT	= '�ԱݺҴɱݾ�';
    D_RECEPCNT	= '�Ա�Ƚ��';
    D_INPUTDT	= '�Է��Ͻ�';
    D_ENTGBN	= '�Ի����';
    D_ENTGISU	= '�Ի���';
    D_COENTDT	= '�Ի�����';
    D_ENTCHASU	= '�Ի�����';
    D_ENTTIME	= '�Խǽð�';
    D_INPOINT	= '�Խǽ�ȯ������';
    D_ADMPATH	= '�Կ����';
    D_ADMEXPYN	= '�Կ����迩��';
    D_ADMRESON	= '�Կ�����';
    D_IPOWNRAT	= '�Կ����κδ���';
    D_ADMICDCD	= '�Կ��û��ڵ�';
    D_ADMDIAG	= '�Կ�������';
    D_ADMYN	= '�Կ�����';
    D_ADMSCHDR	= '�Կ�����������';
    D_ADMSCHDT	= '�Կ���������';
    D_ADMCHAYN	= '�Կ����δ�ü����';
    D_BANKID	= '�Կ���������ID';
    D_ADMTIME	= '�Կ��Ͻ�';
    D_ADMDATE	= '�Կ�����';
    D_ADMCOMDT	= '�Կ���������';
    D_ADMCNT	= '�Կ�Ƚ��';
    D_SELFYN	= '�ڰ���������';
    D_LICDATE	= '�ڰ��������';
    D_IDENTITY	= '�ڰ�Ȯ�α���';
    D_WOMBCANC	= '�ڱþ�';
    D_WOMBEXYN	= '�ڱþϰ˻翩��';
    D_WOMBEXMM	= '�ڱþϰ˻��';
    D_CHKRMAMT	= '�ڱ�ռ�ǥ�ܾ�';
    D_CHILDNUM	= '�ڳ��';
    D_AUTOSLTYP	= '�ڵ���ǥ����';
    D_AUTOENYN	= '�ڵ����Ῡ��';
    D_AUTOYN	= '�ڵ�ȭ����';
    D_DATATYPE	= '�ڷᱸ��';
    D_TRAINTYP	= '�ں��޿�����';
    D_TRAPRICE	= '�ں��ܰ�';
    D_TRAQTY	= '�ں��������';
    D_CPTPYAMT	= '�ں�������';
    D_OFTEN	= '���ִ������࿩��';
    D_MAKEDATE	= '�ۼ�����';
    D_MAKEID	= '�ۼ���';
    D_WKYM	= '�۾����';
    D_WORKNAME	= '�۾���';
    D_WORKYN	= '�۾�����';
    D_WORKDATE	= '�۾�����';
    D_WORKID	= '�۾���';
    D_WORKCODE	= '�۾��ڵ�';
    D_WORKFLAG	= '�۾�FLAG';
    D_LEFTQTY	= '�ܷ�';
    D_REMAMT	= '���������ݾ�';
    D_ORGANTYP	= '����̽�����';
    D_EQIPNAME	= '����';
    D_EQIPNO	= '����ȣ';
    D_EQIPCD	= '����ڵ�';
    D_HANDINUM	= '�����';
    D_STKUNIT	= '������';
    D_STKDEPT	= '���μ�';
    D_STKQTY	= '������';
    D_STKDATE	= '�������';
    D_MATDOWN	= '���밨��';
    D_MATUPAMT	= '���������ݾ�';
    D_FINTYPE	= '�繫��ǥ����';
    D_REISSUNO	= '��߱�NO';
    D_INCKDATE	= '����ɻ�����';
    D_STAYYN	= '�������';
    D_STAYCNT	= '���ȯ�ڼ�';
    D_RSVSCNT	= '��������ȯ�ڼ�';
    D_PLANSCNT	= '��������ȯ�ڼ�';
    D_REREQCNT	= '��û���Ǽ�';
    D_REREQCD	= '��û������';
    D_PARAMT	= '���򰡱ݾ�';
    D_REDIADT	= '��������';
    D_JHGIGUM	= '�������';
    D_JHAMT	= '���������';
    D_REHYN	= '��Ȱġ�Ῡ��';
    D_REMARKS	= '����';
    D_RMKTYPE	= '���䱸��';
    D_RMKCDNM	= '�����׸��ڵ��';
    D_RMKCODE	= '�����׸�CODE';
    D_DOSTYPE	= '���뱸��';
    D_APPPART	= '����о�';
    D_PAYDITR	= '�����ȭ�ݸ�';
    D_PAYWITR	= '�����ȭ�ݸ�';
    D_APPLDATE	= '��������';
    D_APPMDEPT	= '���������';
    D_APPFORTE	= '����ȯ��';
    D_RESDR	= '�����ǻ�';
    D_TRANYN	= '������ġ�Ǻ��濩��';
    D_DENYAMT	= '���⸻���ξ�';
    D_DPRBAMT	= '������Ѿ�';
    D_TELENO	= '������ȣ';
    D_RECVTIME	= '�������Žð�';
    D_RESPTIME	= '��������ð�';
    D_SENDTIME	= '�������۽ð�';
    D_SENDATE	= '��������';
    D_SENDATA	= '�����ڷ�';
    D_TRNSTCNT	= '�����ѰǼ�';
    D_TRNSTAMT	= '�����ѱݾ�';
    D_EXCAMT	= '���뿹��';
    D_TRAPARTY	= '���̺���';
    D_TRARATE	= '��������';
    D_INCNT	= '����ȯ�ڼ�';
    D_SLIPTYPE	= '��ǥ����';
    D_SLIPDATE	= '��ǥ��ǥ����';
    D_SLIPNO	= '��ǥ��ȣ';
    D_SLIPLINE	= '��ǥLINE��ȣ';
    D_PHONECLS	= '��ȭ���';
    D_TELNO	= '��ȭ��ȣ';
    D_TELAMT	= '��ȭ����ݾ�';
    D_PREQTY	= '��ȸ����';
    D_PREDATE	= '��ȸ������';
    D_INCISEDT	= '�����ð�';
    D_CUTTYPE	= '��������';
    D_CUTNO	= '�����ȣ';
    D_LIQSTOOL	= '���׺�';
    D_ACPTNO	= '������ȣ';
    D_ACPTYN	= '��������';
    D_ACPTDATE	= '�����Ͻ�';
    D_REJSEQNO	= '�����Ϸù�ȣ';
    D_REJREPNO	= '�����뺸��ȣ';
    D_STOOLYN	= '���󺯿���';
    D_NORCAPWC	= '����׿���ȯ��';
    D_NORINTWC	= '���������ȯ��';
    D_OKCNT	= '����ó���Ǽ�';
    D_OKAMT	= '����ó���ݾ�';
    D_FEELSTAT	= '��������';
    D_FIXQTY	= '������';
    D_PSYDIAG	= '���Ű�����';
    D_CAESARYN	= '������������';
    D_CASEARCA	= '������������';
    D_MDQTY	= '������';
    D_MDDATE	= '��������';
    D_MDLOC	= '�������';
    D_MDSTAT	= '����STATUS';
    D_CERTIAMT	= '������ݾ�';
    D_ITEM	= '��ǰ';
    D_LIMITCD	= '���ѱ����ڵ�';
    D_AGELIMIT	= '���ѳ���';
    D_PROCIN	= '���ѳ� ó�����';
    D_PROCOUT	= '���ѿ� ó�����';
    D_LIMITCNT	= '����Ƚ��';
    D_FORMCODE	= '�����ڵ�';
    D_CONDITCD	= '�����ڵ�';
    D_EARLY	= '����и�';
    D_EARLYCNT	= '����и���';
    D_EARLYDIE	= '������';
    D_PREMEMBH	= '�����ļ��ð�';
    D_PREMEMBD	= '�����ļ�����';
    D_MON1CLOS	= '����1�������ð�';
    D_MON2CLOS	= '����2�������ð�';
    D_MONMILK	= '������';
    D_ADJTOT	= '�����װ�';
    D_PANDOL	= '�������ڿ�ȭ��';
    D_PANWON	= '�������ڿ�ȭ��';
    D_ADJDATE	= '������������';
    D_PRESTYPE	= '�����ᱸ��';
    D_PRESLOC	= '�������';
    D_DICREAYN	= '����������������';
    D_ORGYM	= '����������';
    D_PATHDIAG	= '�����������ܸ�';
    D_UNIONTYP	= '���ձ���';
    D_UNIONCD	= '���ձ�ȣ';
    D_UNICHYN	= '���ձ�ȣ���濩��';
    D_UNIONNM	= '���ո�';
    D_UNIRECNT	= '���չݼ۰Ǽ�';
    D_REQAMT	= '���պδ��';
    D_UNICUTYN	= '���ջ谨����';
    D_QUERYCNT	= '��ȸ�Ǽ�';
    D_RELIGION	= '����';
    D_RELIGFLG	= '��������';
    D_ENDDATE	= '��������';
    D_ENDTYPE	= '��������';
    D_ITEMKIND	= '����';
    D_BEFRATE	= '��������';
    D_BEFDATE	= '����������������';
    D_GENEVA	= '���հ��';
    D_BOUGIEYN	= '�¾࿩��';
    D_MAINTYPE	= '��/�α���';
    D_CYCLE	= '�ֱ�';
    D_CYCLEDAY	= '�ֱ�����';
    D_RESNO	= '�ֹε�Ϲ�ȣ';
    D_RESADDR	= '�ֹε���ּ�';
    D_SOCTAX	= '�ֹμ�';
    D_INJTTIME	= '�ֻ�ð�';
    D_INJECTID	= '�ֻ���';
    D_INJTLOC	= '�ֻ����';
    D_INJTYPE	= '�ֻ�����';
    D_INJTSTAT	= '�ֻ�STAT';
    D_MNICDYN	= '�ֻ󺴿���';
    D_ADDRESS	= '�ּ�';
    D_MAINOP	= '�ּ���';
    D_OPDEPT	= '�ּ�����';
    D_OPDCODE	= '�ּ����ڵ�';
    D_CHIFTECH	= '���ӱ��';
    D_JJAMT	= '�������';
    D_JJFAMSD	= '�������������';
    D_JJSD	= '��������ü���';
    D_MAINDIAG	= '������';
    D_MDIAGDEP	= '���������ܰ�';
    D_DIAGCD	= '�������ڵ�';
    D_DIAGDCD	= '�������ڵ�';
    D_MMEDTYPE	= '�����������';
    D_CHADR	= '��ġ�ǻ�';
    D_DIAGCODE	= '��ȣ�ҳ���';
    D_MIDAMT	= '�߰����αݾ�';
    D_MIDDATE	= '�߰�û������';
    D_MIDREQDT	= '�߰�û����������';
    D_MIDDCD	= '�ߺз�';
    D_LUN1CLOS	= '�߽�1�������ð�';
    D_LUN2CLOS	= '�߽�2�������ð�';
    D_ICUDCNT	= '��ȯ�ڽ�����Ⱓ';
    D_QUICKYN	= '�����������';
    D_INCRYYMM	= '�������';
    D_ICRMIN	= '������';
    D_ICRHOUR	= '�����ð�';
    D_INDETYP	= '��������';
    D_DISTILL	= '�������ΰ�';
    D_LICENCNO	= '����ȣ';
    D_PROFTYP	= '��������';
    D_PAYCNT	= '���ްǼ�';
    D_PAYAMT	= '���ޱݾ�';
    D_PAYYYMM	= '���޳��';
    D_HOLDCNT	= '���޺����Ǽ�';
    D_HOLDAMT	= '���޺����ݾ�';
    D_PAYFOAMT	= '���޾׿�ȭ�ݾ�';
    D_PAYDFAMT	= '���޾׿���ȯ��';
    D_PAYDFINT	= '���޾�����ȯ��';
    D_PAYBILL	= '���޾���';
    D_PAYBLCNT	= '���޾���������';
    D_INTOTAMT	= '���������Ѿ�';
    D_GIVEDGR	= '��������';
    D_PAYTOT	= '�����Ѿ�';
    D_PROSTOOL	= '���溯';
    D_PAYTYPE	= '���ҹ��';
    D_PAYFOLES	= '���ҿ�ȭ������';
    D_PAYFAMT	= '���ҿ�ȭ����';
    D_PAYFINT	= '���ҿ�ȭ����';
    D_PAYFADIT	= '���ҿ�ȭ��������';
    D_PAYWAMT	= '���ҿ�ȭ����';
    D_PAYWINT	= '���ҿ�ȭ����';
    D_PAYEXAMT	= '����ȯ������';
    D_PAYEXINT	= '����ȯ������';
    D_INDDR	= '�����ǻ�';
    D_AREA	= '����';
    D_AREACODE	= '�����ڵ�';
    D_SPCAMT	= '�����ݾ�';
    D_CHGDRYN	= '�����Ǻ��濩��';
    D_SPCDR	= '�����ǻ�';
    D_SPCDRYN	= '�����ǻ翩��';
    D_SPCPRICE	= '��������ݾ�';
    D_JIKGAN	= '����';
    D_JIKGUB	= '����';
    D_JIKGUBNM	= '���޸�';
    D_JOBCODE	= '����';
    D_JIKCHAK	= '��å';
    D_DIAGYN	= '���ܳ�������';
    D_DIAGMETH	= '���ܹ��';
    D_DIACURYN	= '���ܿ���';
    D_DIAGDEPT	= '���������';
    D_MEDRSLT	= '������';
    D_MEDTYPE	= '���ᱸ��';
    D_MEDDAYS	= '����Ⱓ';
    D_MEDUNITM	= '��������ð�';
    D_STAYNO	= '���������';
    D_MEDCHGCD	= '���ắ�����';
    D_MEDDEPT	= '����μ�';
    D_DEPENTCD	= '�����Ƿڳ����ڵ�';
    D_MEDDR	= '�����ǻ�';
    D_MEDTIME	= '�����Ͻ�';
    D_MEDDATE	= '��������';
    D_MEDSCHTM	= '��������';
    D_MEDSTAT	= '����STATUS';
    D_SUPPSTAT	= '����STATUS';
    D_MEDFEE	= '������';
    D_MEDRATE	= '������δ���';
    D_CONSCONT	= '�����Ұ�';
    D_CONSCODE	= '�����Ұ��ڵ�';
    D_DRNAME	= '�����ǻ��';
    D_LABORINT	= '���밣�ݺ�';
    D_LABORYN	= '���뿩��';
    D_LABORDT	= '��������';
    D_LABORMIN	= '�������ӽð�(��)';
    D_LABORSEC	= '�������ӽð�(��)';
    D_VAGIANTY	= '����������';
    D_TOTALCNT	= '����Ƚ��';
    D_OPDR	= '������';
    D_DRCRTYPE	= '��/�뱸��';
    D_CMYM	= '�������±޳��';
    D_NSKYM	= '����±޳��';
    D_DRAMT	= '�����ݾ�';
    D_DEGREE	= '����';
    D_LASTAMT	= '�������ޱݾ�';
    D_OBTDESC	= '���԰Ǹ�';
    D_OBTYPE	= '���Ա���';
    D_OBTTAMT	= '���Ա��Ѿ�';
    D_OBTDATE	= '���ԱⰣ';
    D_OBTDEPT	= '���Ժμ�';
    D_CHARTLOC	= '��Ʈ��ġ';
    D_REFDATA	= '�����ڷ�';
    D_ENTACACD	= 'ä���з�';
    D_COLLYN	= 'ä���˻翩��';
    D_COLLDATE	= 'ä������';
    D_COLLID	= 'ä����';
    D_PROCDATE	= 'ó������';
    D_PROCID	= 'ó����';
    D_ORDYN	= 'ó�氡�ɿ���';
    D_ORDCFMID	= 'ó�氨����';
    D_ORDCFMDT	= 'ó�氨������';
    D_ORDCFMST	= 'ó�氨��STAT';
    D_ORDSEQNO	= 'ó�����';
    D_ORDDR	= 'ó���ǻ�';
    D_ORDDATE	= 'ó������';
    D_ORDUNIT	= 'ó���Է´���';
    D_ORDPLACE	= 'ó�����';
    D_ORDCODE	= 'ó���ڵ�';
    D_ORDNAME	= 'ó���ڵ��';
    D_ORDTYPE	= 'ó�����±���';
    D_TREATYN	= 'óġ/��Ῡ��';
    D_TREAGRPL	= 'óġ������з�';
    D_TREAGRPS	= 'óġ�����Һз�';
    D_TREAENNM	= 'óġ����������';
    D_TREAGRPM	= 'óġ�����ߺз�';
    D_TREACODE	= 'óġ�����ڵ�';
    D_TREAHGNM	= 'óġ�����ѱ۸�';
    D_TREADATE	= 'óġ����';
    D_TREACNT	= 'óġȽ��';
    D_ASTHMA	= 'õ��';
    D_ADDDATA	= '÷���ڷ�';
    D_DIAGFDAT	= 'ù������';
    D_REQCNT	= 'û���Ǽ�';
    D_REQYYMM	= 'û�����';
    D_REQMONTH	= 'û����';
    D_REQQTY	= 'û����';
    D_REQREFYN	= 'û���ݿ�����';
    D_REQNO	= 'û����ȣ';
    D_REQTYPE	= 'û���з�����';
    D_REQSTAT	= 'û������';
    D_REQYN	= 'û������';
    D_REQDATE	= 'û������';
    D_FREQDATE	= 'û���۾��Ϸ�����';
    D_REQSITE	= 'û�����';
    D_REQSERNO	= 'û��������ȣ';
    D_MONGOCOL	= 'û����';
    D_COMRAT	= 'ü��/������';
    D_STAYYEAR	= 'ü����';
    D_STAYMON	= 'ü����';
    D_CNTDD	= 'ü����';
    D_BODYTEMP	= 'ü��';
    D_SCRDR	= '�ʰ�˴��';
    D_SCRDATE	= '�ʰ������';
    D_FSTMENS	= '�ʰ�Yearsold';
    D_FSTMEDTY	= '����������';
    D_RSVFCNT	= '��������ȯ�ڼ�';
    D_PLANFCNT	= '��������ȯ�ڼ�';
    D_TOAPRNO	= '�Ѱ����ν��ι�ȣ';
    D_TOTQTY	= '�ѷ�';
    D_CALTYPE	= '�ѷ������';
    D_TOTCNT	= '�Ѽ���';
    D_NOTOTSD	= '�Ѿ׹����Լ���';
    D_TOTAMT	= '�������ݾ�';
    D_LSTINTDT	= '���� ���ڱ������';
    D_ARTABORT	= '���� �ΰ����� ����';
    D_NATABORT	= '���� �ڿ����� ����';
    D_LSTDATE	= '�����������';
    D_LTOPDATE	= '������������';
    D_FNLCKDT	= '�����ɻ�����';
    D_FNLCKID	= '�����ɻ���';
    D_SLIPLTNO	= '������ǥ��ȣ';
    D_ACAYM	= '������������';
    D_ACAMAJ	= '������������';
    D_ACASCHNM	= '���������б���';
    D_ACASCH	= '���������б��ڵ�';
    D_LSTCNT	= '��������ȸ��';
    D_ACACD	= '�����з��ڵ�';
    D_FSTDATE	= '���ʵ������';
    D_FIRDATE	= '�����Է�����';
    D_FSTEMPNO	= '�����Է���';
    D_ADDEXAMT	= '�߰��˻�ݾ�';
    D_APPENDYN	= '�߰���󿩺�';
    D_ADDYN	= '�߰�����';
    D_ADDORDYN	= '�߰�ó�濩��';
    D_DELIDATE	= '�������';
    D_PAYSLTYP	= '��ݱ���';
    D_BORNHIST	= '����';
    D_BORNDATE	= '����Ͻ�';
    D_BORNTYPE	= '�������';
    D_GETYPE	= '��汸��';
    D_GETAMT	= '���ݾ�';
    D_GETDATE	= '�������';
    D_REJTCAUS	= '��һ���';
    D_REJTYN	= '��ҿ���';
    D_REJTDATE	= '�������';
    D_DENNO	= 'ġ�� ��ȣ';
    D_TOTTIME	= 'ġ�� ������ð�';
    D_DENDEPT	= 'ġ���󼼰�';
    D_CHAIR	= 'ġ��CHAIR';
    D_TRTYN	= 'ġ���缱����';
    D_CUREPART	= 'ġ�����';
    D_REHDAY	= 'ġ���ϼ�';
    D_CURECARE	= 'ġ�����ǻ���';
    D_REHTDAY	= 'ġ�����ϼ�';
    D_RADFIECN	= 'ġ��FIELD��';
    D_RTDR	= 'ġ���ǻ�';
    D_UPRJAW	= 'ġ�ƻ�ǿ�����';
    D_UPLJAW	= 'ġ�ƻ�ǿ���';
    D_DWRJAW	= 'ġ���Ͼǿ�����';
    D_DWLJAW	= 'ġ���Ͼǿ���';
    D_TEEUPRT	= 'ġ�����';
    D_TEEUPLT	= 'ġ������';
    D_TEEDWRT	= 'ġ�����Ͽ�';
    D_TEEDWLT	= 'ġ������';
    D_SUMCARD	= 'ī��ݾ�';
    D_CARDNO	= 'ī����ι�ȣ';
    D_CARDTYPE	= 'ī������';
    D_CODNAME	= '�ڵ��Ī';
    D_CODCLS	= '�ڵ�з�';
    D_OTHBNKSEQ	= 'Ÿ���SEQNO';
    D_OTHGVCNT	= 'Ÿ�����ްǼ�';
    D_OTHDVAMT	= 'Ÿ�����ޱݾ�';
    D_BABYDATE	= '�¹ݸ���ð�';
    D_BABYTYPE	= '�¹ݸ�������';
    D_BABYKG	= '�¹ݹ���';
    D_STOOL	= '�º�����';
    D_BABYECHO	= '�¾ƽ���ȸ';
    D_BABYCM	= '���ٱ���';
    D_STATCD	= '���з��ڵ�';
    D_STATICYN	= '����ǰ����';
    D_COMMRSLT	= '��Ű��';
    D_COMMUTYP	= '��ű���';
    D_BOOKTYPE	= '���屸��';
    D_OUTSTAT	= '��ǽû���';
    D_OUTPOINT	= '��ǽ�ȯ������';
    D_DSCHSTAT	= '�������';
    D_DSCHNUR	= '����ð�ȣ��';
    D_DSCHICD	= '����û��ڵ�';
    D_DSCHTAB	= '�����';
    D_DSCHDRUG	= '������ϼ�';
    D_DSCHEXDT	= '�����������';
    D_DSCHECNT	= '�������ȯ�ڼ�';
    D_DSCHDATE	= '�������';
    D_DSCHORDR	= '��������ǻ�';
    D_DSCHORDT	= '�����������';
    D_DSCHRSLT	= '���������';
    D_DSCHTYPE	= '�������';
    D_DSCHCNT	= '���ȯ�ڼ�';
    D_RETGBN	= '��������';
    D_RETSD	= '���������Լ���';
    D_RETDATE	= '������������';
    D_RETDT	= '��������';
    D_HDACTID	= '���� ACTING �ǽ���';
    D_HDACTDAT	= '���� ACTING DATE';
    D_HDSHIFT	= '���� SHIFT';
    D_DOSCFMID	= '���న����';
    D_DCFMDATE	= '���న������';
    D_DOSNO	= '�����ȣ';
    D_DOSID	= '������';
    D_DOSDAY	= '�����ϼ�';
    D_DOSDATE	= '��������';
    D_BOTTQTY	= '������(����)';
    D_TABLQTY	= '������(�Է�)';
    D_BOTTUNIT	= '����������(����)';
    D_TABLUNIT	= '����������(�Է�)';
    D_QTYTYPE	= '������TYPE';
    D_DOSETIME	= '�����ð�';
    D_DOSEYN	= '��������';
    D_SPDIETYN	= 'Ư�Ŀ���';
    D_DISPTYPE	= '�İ߱���';
    D_DISPDATE	= '�İ�����';
    D_MEMBYN	= '�ļ�����';
    D_READDR	= '�ǵ��ǻ�';
    D_READDATE	= '�ǵ��Ͻ�';
    D_COFMDR	= '�ǵ�Ȯ���ǻ�';
    D_COFMDATE	= '�ǵ�Ȯ���Ͻ�';
    D_JUDGCONT	= '��������';
    D_JUDGEYN	= '��������';
    D_JURSVDT	= '������������';
    D_JUDGDR	= '�����ǻ�';
    D_JUDGDATE	= '��������';
    D_JUDGCODE	= '�����ڵ�';
    D_PKGNAME	= '��Ű����';
    D_LASTMENS	= '���Yearsold';
    D_ABANDATE	= '�������';
    D_LUNGS	= '���';
    D_DRUGUNIT	= '�������';
    D_ITEMCNT	= 'ǰ���';
    D_RPTNO	= 'ǰ�ǹ�ȣ';
    D_RPTDATE	= 'ǰ������';
    D_PGMDATE	= '���α׷��������';
    D_PGMNAME	= '���α׷���';
    D_PGMGRADE	= '���α׷����ȵ��';
    D_PGMHELP	= '���α׷�����';
    D_PGMTOOL	= '���α׷��ۼ�TOOL';
    D_PGMID	= '���α׷�ID';
    D_PGMTYPE	= '���α׷�TYPE';
    D_INSNAME	= '�Ǻ����ڸ�';
    D_SKINCOL	= '�Ǻλ���';
    D_INDISPTY	= '�ʼ���������';
    D_ESSRMCD	= '�ʿ����������';
    D_ESSRMDT	= '�ʿ��������׸�';
    D_ESSRMLN	= '�ʿ��������׸�LENGTH';
    D_ESSRMTY	= '�ʿ��������׸�TYPE';
    D_DAYSLEEP	= '�Ϸ���ռ���ð�';
    D_STDAMT	= '�б���ݾ�';
    D_HGSUGA	= '�ѱۺз�����';
    D_HNAME	= '�ѱۼ���';
    D_HGNAME	= '�ѱۼ�����';
    D_CONTQTY	= '�Է�';
    D_QTYUNIT	= '�Է�����';
    D_DOSQTY	= '�Է�����������';
    D_DRUGINYN	= '�׻�����������';
    D_ANTICNYN	= '�׾�������';
    D_CURRMENU	= '�ش�Ĵ�';
    D_FPOSTYPE	= '�ؿܰ�������';
    D_FBACKDT	= '�ؿܱ�������';
    D_FWKAREA	= '�ؿܱٹ�����';
    D_FORPAY	= '�ؿܱ޿�';
    D_FBUIMDT	= '�ؿܺ�������';
    D_FBUIMTYPE	= '�ؿܺ�������';
    D_FORNOTAX	= '�ؿܺ����';
    D_FABRGBN	= '�ؿ��η±���';
    D_ACTDOWN	= '�����ᰨ��';
    D_ACTUPAMT	= '�����������ݾ�';
    D_VIEWPLAN	= '���ް�����ȹ';
    D_DONRYN	= '��������';
    D_CASHAMT	= '���ݱݾ�';
    D_SUMCASHH	= '���ݱݾ�';
    D_CURRLOC	= '����ġ';
    D_CURAMT	= '�����ܾ�';
    D_CURADDR	= '���ּ�';
    D_CURRATE	= '��������';
    D_CURDATE	= '����������������';
    D_BLDSTOOL	= '����';
    D_BLDPREHI	= '����(High)';
    D_BLDPRELO	= '����(Low)';
    D_BLDAMT	= '���׹̼��ݾ�';
    D_BLDSRC	= '���׹߻���';
    D_BLDNO	= '���׹�ȣ';
    D_BLDKIND	= '��������';
    D_BLDCODE	= '�����ڵ�';
    D_BLDABO	= '������(ABO)';
    D_BLDRH	= '������(RH)';
    D_COOPERCD	= '���¾�ü�ڵ�r';
    D_CARDIA	= '������';
    D_CONSULYN	= '�������ܿ���';
    D_CONEDEPT	= '���������';
    D_CONSDR	= '�����ǻ�';
    D_HORMDOS	= 'ȣ����������';
    D_HORMNM	= 'ȣ�������̸�';
    D_HORMYN	= 'ȣ����ġ�Ῡ��';
    D_HOBONG	= 'ȣ��';
    D_SALCLASS	= 'ȣ��';
    D_BREATCNT	= 'ȣ���';
    D_BREATYN	= 'ȣ���̻󿩺�';
    D_MARYSTAT	= 'ȥ�λ���';
    D_CURYTYPE	= 'ȭ�󱸺�';
    D_CONFIRM	= 'Ȯ��';
    D_CONFDATE	= 'Ȯ������';
    D_EXTENT	= 'Ȯ������';
    D_CFICDYN	= 'Ȯ���󺴿���';
    D_BDGOKAMT	= 'Ȯ������';
    D_CONVUNIT	= 'ȯ�����';
    D_CONVQTY	= 'ȯ�����';
    D_FORINST	= 'ȯ������';
    D_FORRATDT	= 'ȯ������';
    D_PATSECT	= 'ȯ�ڱ���';
    D_PATNO	= 'ȯ�ڹ�ȣ';
    D_PATSEQNO	= 'ȯ�ں�SEQNO';
    D_PATGRP	= 'ȯ�ںз�';
    D_PATPOINT	= 'ȯ�ںз�����';
    D_PATSTAT	= 'ȯ�ڻ���';
    D_PATNAME	= 'ȯ�ڼ���';
    D_PATTYPE	= 'ȯ������';
    D_PATSITE	= 'ȯ��SITE';
    D_ACTCRYDG	= 'Ȱ���׿�������';
    D_STRTYYMM	= 'ȸ�谳�ó��';
    D_DIVISION	= 'ȸ�����';
    D_DIVINAME	= 'ȸ�������';
    D_ACCTSTAT	= 'ȸ�����';
    D_COMPNAME	= 'ȸ���';
    D_COUNT	= 'ȸ��';
    D_RESPDR	= 'ȸ�ſ����';
    D_CUTDATE	= 'ȸ���ð�';
    D_SEQCNT	= 'ȸ��';
    D_HOLTEXT	= '���ϳ���';
    D_HOLYN	= '���Ͽ���';
    D_RESTYN	= '��������';
    D_RESTDATE	= '��������';
    D_BRSTBONE	= '������';
    D_CHSTSIZE	= '����';
    D_BLKSTOOL	= '�溯';
    D_SMOKING	= '��';
    D_SMOKEQTY	= '������';
    D_CIGASTAT	= '������';
    D_CIGAYN	= '������';
    D_SMOKEYY	= '������';
    D_HOPECODE	= '������ǵ���ڵ�';
    D_WANTDATE	= '�����';
    D_ALLERGYN	= 'AlLERGY����';
    D_ARFCRFTY	= 'ARF CRF ����';
    D_ATCYN	= 'ATC���ۿ���';
    D_BLIVER	= 'B�������ǰ�������';
    D_BAGINGYN	= 'BAGGING����';
    D_BARCDYN	= 'BARCODE��´��';
    D_BEDSIDYN	= 'BED SIDE����';
    D_CSFACTOR	= 'C/S����';
    D_CALCIUM	= 'CALCIUM';
    D_CANCSTAT	= 'Cancer Status';
    D_CANDELPL	= 'Candela PLTL/PLDL';
    D_CANDELQS	= 'Candela Q-Switched';
    D_CANDELSP	= 'Candela SPTL';
    D_CAPDDATE	= 'CAPD ��������';
    D_CARDIMSG	= 'CARDIAC MESSAGE';
    D_CARDNECK	= 'CARDNECK';
    D_CARMYN	= 'C-ARM ����';
    D_CARTYN	= 'CART���࿩��';
    D_CHARTYPE	= 'CHART����';
    D_ACPTID	= 'CHART������';
    D_CHARTYN	= 'CHART�ʿ俩��';
    D_CHKLIST	= 'CHECK LIST';
    D_CHKRANGE	= 'CHECK����';
    D_CHKQTY	= 'CHECK����';
    D_CHKCODE	= 'CHECK�׸�';
    D_COFFEE	= 'COFFEE';
    D_CODEYN	= 'COLELESS����';
    D_CONETIME	= 'CONSULT�ǽ��Ͻ�';
    D_CONHDEPT	= 'CONSULT�����';
    D_CONHDR	= 'CONSULT����ǻ�';
    D_CONHTIME	= 'CONSULT����Ͻ�';
    D_CONHDATE	= 'CONSULT�������';
    D_CONTTYPE	= 'Contact����';
    D_CTLSTAT	= 'CONTROL STATUS';
    D_CPRCNT	= 'CPRȯ�ڼ�';
    D_DISCYN	= 'D/C����';
    D_DELTRATE	= 'DELTA����';
    D_DELTYN	= 'DELTA����';
    D_DELTHIGH	= 'DELTA-HIGH';
    D_DELTLOW	= 'DELTA-LOW';
    D_DIAGRSLT	= 'DIAGNOSE ���';
    D_DMDATA	= 'DM�߼۳���';
    D_DMDESC	= 'DM�߼ۼ���';
    D_DMCODE	= 'DM�߼��ڵ�';
    D_DUTY	= 'DUTY';
    D_DUTYTYPE	= 'DUTY����';
    D_MENSDIFF	= 'DYSMENORRHEA';
    D_ENERGY	= 'ENERGY';
    D_ETTUBE	= 'ET Tube';
    D_EVENTYPE	= 'EVENINGE';
    D_EXTRATE	= 'EXTENT����';
    D_FACTORTX	= 'FACTOR����';
    D_FCATORYN	= 'FACTOR����';
    D_FAXNO	= 'FAX��ȣ';
    D_FILLERYN	= 'FILLER����';
    D_FILTYN	= 'FILTER����';
    D_FILTCODE	= 'FILTER�ڵ�';
    D_FORMTEXT	= 'FORMTEXT';
    D_HANDPI	= 'Hand Piece';
    D_HDDATE	= 'HD��������';
    D_ILAMT	= 'I/L �ݾ�';
    D_ILNO	= 'I/L NO';
    D_ICUDAY	= 'icu�����ϼ�';
    D_INTUBTYN	= 'INTUBATION����';
    D_IRRADYN	= 'IRRADIATION����';
    D_IRRACODE	= 'IRRADIATION�ڵ�';
    D_ITEMGRPP	= 'ITEM GROUP';
    D_ITEMTYPE	= 'ITEM����';
    D_KCAL	= 'KCAL';
    D_KEYWARD	= 'KEYWARD';
    D_KTDATE	= 'K-T ��������';
    D_KTTYPE	= 'K-T ����';
    D_LCNO	= 'L/C NUMBER';
    D_LASERFI	= 'Laser Fiber';
    D_LASEROP	= 'Laser Operator';
    D_LASERKTP	= 'Laser scope KTP';
    D_LASERYN	= 'LASER����';
    D_LASERND	= 'Lasersonics ND Yag';
    D_MAMMDATE	= 'LAST MAMMOGRAM';
    D_LOCATION	= 'LOCATION';
    D_MADATE	= 'MAIL�߼�����';
    D_MAINROOM	= 'MAIN�˻��';
    D_MAXNUM	= 'MAX NO.';
    D_MESSAGE	= 'Message';
    D_MICRRSLT	= 'MICRO���';
    D_MICDR	= 'MICRO���';
    D_MICDATE	= 'MICRO����';
    D_MICRPUL	= 'Micromanipulator';
    D_MIXSTAT	= 'MIX����';
    D_MIXYN	= 'MIX����';
    D_MODE	= 'Mode';
    D_NEXTCODE	= 'NEXT�����ڵ�';
    D_NODCNT	= 'NODE��';
    D_NODPCNT	= 'NODEPLUS��';
    D_ICDOENNM	= 'ONCOLOGY������';
    D_ICDOCODE	= 'ONCOLOGY�ڵ�';
    D_ICDOHGNM	= 'ONCOLOGY�ѱ۸�';
    D_ORDERSTS	= 'Order ����';
    D_ORDSCH	= 'ORDER ��������';
    D_ORDGRP	= 'ORDER GROUP';
    D_ORDSITE	= 'ORDER SITE';
    D_PLFINTYP	= 'P/L����';
    D_PLFINSEQ	= 'P/L����';
    D_PARAMETE	= 'parameter';
    D_PTEYEPRT	= 'Patient Eye Protection';
    D_PATTERNM	= 'Pattern��';
    D_PKGDATE	= 'PKG�˻�ð�';
    D_PKGTYPE	= 'PKG����';
    D_PKGSEXTY	= 'PKG��������';
    D_PKGKIND	= 'PKG����';
    D_PKGCODE	= 'PKG�ڵ�';
    D_PKGUSEYN	= 'PKGȰ�뿩��';
    D_PORTYN	= 'PORTABLE���ɿ���';
    D_PRTYN	= 'PRINT����';
    D_PRINTCNT	= 'PRINTȽ��';
    D_PROCTYPE	= 'PROCESS����';
    D_PROSOBYN	= 'PROSOBA����';
    D_PROTIEN	= 'PROTIEN';
    D_PULSRAT	= 'Pulse Rate';
    D_QADEPT	= 'QA�μ�';
    D_QAYN	= 'QA�ǽÿ���';
    D_QADATE	= 'QA����';
    D_QACODE	= 'QA�ڵ�';
    D_RECALLYN	= 'RECALL����';
    D_RECALCNT	= 'RECALL�ο�';
    D_RECDTYPE	= 'Record����';
    D_REFILCNT	= 'REFILL ��ûó��Ƚ��';
    D_REFILORD	= 'REFILL ó��Ƚ��';
    D_REFCODAY	= 'REFILL CONFIRM �ϼ�';
    D_REFCODAT	= 'REFILL CONFIRM ����';
    D_REFILLYN	= 'REFILL����';
    D_REMARK	= 'Remark';
    D_RTNO	= 'RT NO';
    D_SCANDEV	= 'Scanning Device';
    D_SCHDTYPE	= 'Schedule Type';
    D_SETEXYN	= 'SET�˻翩��';
    D_SETTYPE	= 'SET����';
    D_SETNAME	= 'SET��';
    D_SETSEQNO	= 'SET����';
    D_SETYPECD	= 'SET�����ڵ�';
    D_SETITEM	= 'SET����';
    D_SETCODE	= 'SET�ڵ�';
    D_SHUNTYPE	= 'SHUNT TYPE';
    D_SIGNDOOR	= 'Signs on Doors';
    D_SIMUDATE	= 'SIMULATION ����';
    D_SLIPCODE	= 'SLIP CODE';
    D_SLIPNAME	= 'SLIP NAME';
    D_SMOKEVA	= 'Smoke Evacuation';
    D_SNOMNAME	= 'SNOMED��';
    D_SNOMCODE	= 'SNOMED�ڵ�';
    D_SODIUM	= 'SOLDIUM';
    D_SONOYN	= 'SONO  ����';
    D_SPCCASE	= 'SPECIAL CASE';
    D_SPECTEXC	= 'Spectranetics Excime';
    D_DREYEPRT	= 'Staff Eye Protection';
    D_STAGE	= 'STAGE';
    D_STEP	= 'Step';
    D_STICKER	= 'STICKER';
    D_SUBTYPE	= 'SUB ����';
    D_SUBROOM	= 'SUB�˻��';
    D_SBRESP	= 'SUB����';
    D_SUMMTEXC	= 'Summit Excimer';
    D_SWTYPE	= 'SW����';
    D_TIPS	= 'Tips';
    D_TNMBASE	= 'TNM�ٰ�';
    D_TNMMCD	= 'TNM-MCODE';
    D_TNMNCD	= 'TNM-NCODE';
    D_TNMTCD	= 'TNM-TCODE';
    D_ANLAMT	= 'TOTAL�м��ݾ�';
    D_VERSION	= 'Version';
    D_VIPCODE	= 'VIP CODE';
    D_VITSTAT	= 'VitalStatus';
    D_VOLUMN	= 'Volumn';
    D_WGONYN	= 'WAGON���࿩��';
    D_WGONDATE	= 'WAGON��������';
    D_WATTS	= 'Watts';
    D_WAVEGUI	= 'Wave Guide';
    D_WRKPRTYN	= 'WORKLIST��¿���';
    D_XRAYYN	= 'X-RAY ����';
    D_ZOENDYAG	= 'Zoe ND Yag';

    //Exception Cleass For not Matching MsgTypeCode and The Number of MsgCodes
type EMsgError = class(Exception)
    end;

type
  TMsgDlgType = (mtWarning, mtError, mtInformation, mtConfirmation, mtCustom);
  TMsgDlgBtn = (mbYes, mbNo, mbOK, mbCancel, mbAbort, mbRetry, mbIgnore,
    mbAll, mbNoToAll, mbYesToAll, mbHelp);
  TMsgDlgButtons = set of TMsgDlgBtn;

const
  mbYesNoCancel = [mbYes, mbNo, mbCancel];
  mbOKCancel = [mbOK, mbCancel];
  mbAbortRetryIgnore = [mbAbort, mbRetry, mbIgnore];

//MakeMsg Function Definition

//In case of Zero MsgCode Used
function MakeMsgStr(const MsgTypeCode: String): String; overload;

//In case of One MsgCode Used
function MakeMsgStr(const MsgTypeCode, MsgCode1: String): String; overload;

//In case of Two MsgCodes Used
function MakeMsgStr(const MsgTypeCode, MsgCode1, MsgCode2: String): String; overload;

//In case of Three MsgCodes Used
function MakeMsgStr(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3: String): String; overload;

//In case of Four MsgCodes Used
function MakeMsgStr(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3, MsgCode4: String): String; overload;

//In case of Five MsgCodes Used
function MakeMsgStr(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3, MsgCode4, MsgCode5: String): String; overload;

//In case of Zero MsgCode Used
function MakeMsg(const MsgTypeCode: String): String; overload;

//In case of One MsgCode Used
function MakeMsg(const MsgTypeCode, MsgCode1: String): String; overload;

//In case of Two MsgCodes Used
function MakeMsg(const MsgTypeCode, MsgCode1, MsgCode2: String): String; overload;

//In case of Three MsgCodes Used
function MakeMsg(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3: String): String; overload;

//In case of Four MsgCodes Used
function MakeMsg(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3, MsgCode4: String): String; overload;

//In case of Five MsgCodes Used
function MakeMsg(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3, MsgCode4, MsgCode5: String): String; overload;

//In case of Zero MsgCode Used to StatusBar
function MakeMsg(const MsgTypeCode: String; StatusBar: TStatusBar): String; overload;

//In case of One MsgCode Used to StatusBar
function MakeMsg(const MsgTypeCode, MsgCode1: String; StatusBar: TStatusBar): String; overload;

//In case of Two MsgCodes Used to StatusBar
function MakeMsg(const MsgTypeCode, MsgCode1, MsgCode2: String; StatusBar: TStatusBar): String; overload;

//In case of Three MsgCodes Used to StatusBar
function MakeMsg(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3: String; StatusBar: TStatusBar): String; overload;

//In case of Four MsgCodes Used to StatusBar
function MakeMsg(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3, MsgCode4: String; StatusBar: TStatusBar): String; overload;

//In case of Five MsgCodes Used to StatusBar
function MakeMsg(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3, MsgCode4, MsgCode5: String; StatusBar: TStatusBar): String; overload;

//In case of Zero QueryCode Used
function MakeQus(const MsgTypeCode: String; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons): Integer; overload;

//In case of One QueryCode Used
function MakeQus(const MsgTypeCode, MsgCode1: String; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons): Integer; overload;

//In case of Two QueryCodes Used
function MakeQus(const MsgTypeCode, MsgCode1, MsgCode2: String; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons): Integer; overload;

//In case of Three QueryCodes Used
function MakeQus(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3: String; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons): Integer; overload;

//In case of Four QueryCodes Used
function MakeQus(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3, MsgCode4: String; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons): Integer; overload;

//In case of Five QueryCodes Used
function MakeQus(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3, MsgCode4, MsgCode5: String; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons): Integer; overload;

//Function to get The Number of '$S'
function GetNum(const MsgTypeCode: String): Integer;

//Function to SubScribe The
function SubMsg(const MsgTypeCode, MsgCode: String): String;

{ Message dialog }

function CreateMessageDialogM(const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons): TForm;

function MessageDlgM(const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint): Integer;
function MessageDlgPosM(const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint; X, Y: Integer): Integer;
function MessageDlgPosHelpM(const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint; X, Y: Integer;
  const HelpFileName: string): Integer;

procedure ShowMessageM(const Msg: string);
procedure ShowMessageFmtM(const Msg: string; Params: array of const);
procedure ShowMessagePosM(const Msg: string; X, Y: Integer);

implementation

uses ExtCtrls, Consts, Printers, Dlgs;

//In case of Zero MsgCode Used
function MakeMsgStr(const MsgTypeCode: String): String; overload;
begin
     if GetNum(MsgTypeCode) <> 0 then raise EMsgError.Create(MsgTypeCode);

     Result := MsgTypeCode;
end;

//In case of One MsgCode Used
function MakeMsgStr(const MsgTypeCode, MsgCode1: String): String; overload;
begin
     if GetNum(MsgTypeCode) <> 1 then raise EMsgError.Create(MsgTypeCode);

     Result := SubMsg(MsgTypeCode, MsgCode1);
end;

//In case of Two MsgCodes Used
function MakeMsgStr(const MsgTypeCode, MsgCode1, MsgCode2: String): String; overload;
begin
     if GetNum(MsgTypeCode) <> 2 then raise EMsgError.Create(MsgTypeCode);

     Result := SubMsg(SubMsg(MsgTypeCode, MsgCode1), MsgCode2);
end;

//In case of Three MsgCodes Used
function MakeMsgStr(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3: String): String; overload;
begin
     if GetNum(MsgTypeCode) <> 3 then raise EMsgError.Create(MsgTypeCode);

     Result := SubMsg(SubMsg(SubMsg(MsgTypeCode, MsgCode1), MsgCode2), MsgCode3);
end;

//In case of Four MsgCodes Used
function MakeMsgStr(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3, MsgCode4: String): String; overload;
begin
     if GetNum(MsgTypeCode) <> 4 then raise EMsgError.Create(MsgTypeCode);

     Result := SubMsg(SubMsg(SubMsg(SubMsg(MsgTypeCode, MsgCode1), MsgCode2), MsgCode3), MsgCode4);
end;

//In case of Five MsgCodes Used
function MakeMsgStr(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3, MsgCode4, MsgCode5: String): String; overload;
begin
     if GetNum(MsgTypeCode) <> 5 then raise EMsgError.Create(MsgTypeCode);

     Result := SubMsg(SubMsg(SubMsg(SubMsg(SubMsg(MsgTypeCode, MsgCode1), MsgCode2), MsgCode3), MsgCode4), MsgCode5);
end;

//In case of Zero MsgCode Used
function MakeMsg(const MsgTypeCode: String): String; overload;
begin
     if GetNum(MsgTypeCode) <> 0 then raise EMsgError.Create(MsgTypeCode);

     Result := MsgTypeCode;

     ShowMessageM(Result);
end;

//In case of One MsgCode Used
function MakeMsg(const MsgTypeCode, MsgCode1: String): String; overload;
begin
     if GetNum(MsgTypeCode) <> 1 then raise EMsgError.Create(MsgTypeCode);

     Result := SubMsg(MsgTypeCode, MsgCode1);

     ShowMessageM(Result);
end;

//In case of Two MsgCodes Used
function MakeMsg(const MsgTypeCode, MsgCode1, MsgCode2: String): String; overload;
begin
     if GetNum(MsgTypeCode) <> 2 then raise EMsgError.Create(MsgTypeCode);

     Result := SubMsg(SubMsg(MsgTypeCode, MsgCode1), MsgCode2);

     ShowMessageM(Result);
end;

//In case of Three MsgCodes Used
function MakeMsg(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3: String): String; overload;
begin
     if GetNum(MsgTypeCode) <> 3 then raise EMsgError.Create(MsgTypeCode);

     Result := SubMsg(SubMsg(SubMsg(MsgTypeCode, MsgCode1), MsgCode2), MsgCode3);

     ShowMessageM(Result);
end;

//In case of Four MsgCodes Used
function MakeMsg(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3, MsgCode4: String): String; overload;
begin
     if GetNum(MsgTypeCode) <> 4 then raise EMsgError.Create(MsgTypeCode);

     Result := SubMsg(SubMsg(SubMsg(SubMsg(MsgTypeCode, MsgCode1), MsgCode2), MsgCode3), MsgCode4);

     ShowMessageM(Result);
end;

//In case of Five MsgCodes Used
function MakeMsg(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3, MsgCode4, MsgCode5: String): String; overload;
begin
     if GetNum(MsgTypeCode) <> 5 then raise EMsgError.Create(MsgTypeCode);

     Result := SubMsg(SubMsg(SubMsg(SubMsg(SubMsg(MsgTypeCode, MsgCode1), MsgCode2), MsgCode3), MsgCode4), MsgCode5);

     ShowMessageM(Result);
end;

//In case of Zero MsgCode Used to StatusBar
function MakeMsg(const MsgTypeCode: String; StatusBar: TStatusBar): String; overload;
begin
     if GetNum(MsgTypeCode) <> 0 then raise EMsgError.Create(MsgTypeCode);

     StatusBar.Panels[0].Text := MsgTypeCode;
end;

//In case of One MsgCode Used to StatusBar
function MakeMsg(const MsgTypeCode, MsgCode1: String; StatusBar: TStatusBar): String; overload;
begin
     if GetNum(MsgTypeCode) <> 1 then raise EMsgError.Create(MsgTypeCode);

     StatusBar.Panels[0].Text := SubMsg(MsgTypeCode, MsgCode1);
end;

//In case of Two MsgCodes Used to StatusBar
function MakeMsg(const MsgTypeCode, MsgCode1, MsgCode2: String; StatusBar: TStatusBar): String; overload;
begin
     if GetNum(MsgTypeCode) <> 2 then raise EMsgError.Create(MsgTypeCode);

     StatusBar.Panels[0].Text := SubMsg(SubMsg(MsgTypeCode, MsgCode1), MsgCode2);
end;

//In case of Three MsgCodes Used to StatusBar
function MakeMsg(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3: String; StatusBar: TStatusBar): String; overload;
begin
     if GetNum(MsgTypeCode) <> 3 then raise EMsgError.Create(MsgTypeCode);

     StatusBar.Panels[0].Text := SubMsg(SubMsg(SubMsg(MsgTypeCode, MsgCode1), MsgCode2), MsgCode3);
end;

//In case of Four MsgCodes Used to StatusBar
function MakeMsg(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3, MsgCode4: String; StatusBar: TStatusBar): String; overload;
begin
     if GetNum(MsgTypeCode) <> 4 then raise EMsgError.Create(MsgTypeCode);

     StatusBar.Panels[0].Text := SubMsg(SubMsg(SubMsg(SubMsg(MsgTypeCode, MsgCode1), MsgCode2), MsgCode3), MsgCode4);
end;

//In case of Five MsgCodes Used to StatusBar
function MakeMsg(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3, MsgCode4, MsgCode5: String; StatusBar: TStatusBar): String; overload;
begin
     if GetNum(MsgTypeCode) <> 5 then raise EMsgError.Create(MsgTypeCode);

     StatusBar.Panels[0].Text := SubMsg(SubMsg(SubMsg(SubMsg(SubMsg(MsgTypeCode, MsgCode1), MsgCode2), MsgCode3), MsgCode4), MsgCode5);
end;

//In case of Zero QueryCode Used
function MakeQus(const MsgTypeCode: String; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons): Integer; overload;
var
   TmpStr: String;
begin
     if GetNum(MsgTypeCode) <> 0 then raise EMsgError.Create(MsgTypeCode);

     TmpStr := MsgTypeCode;

     Result := MessageDlgM(TmpStr, DlgType, Buttons, 0);
end;

//In case of One QueryCode Used
function MakeQus(const MsgTypeCode, MsgCode1: String; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons): Integer; overload;
var
   TmpStr: String;
begin
     if GetNum(MsgTypeCode) <> 1 then raise EMsgError.Create(MsgTypeCode);

     TmpStr := SubMsg(MsgTypeCode, MsgCode1);

     Result := MessageDlgM(TmpStr, DlgType, Buttons, 0);
end;

//In case of Two QueryCodes Used
function MakeQus(const MsgTypeCode, MsgCode1, MsgCode2: String; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons): Integer; overload;
var
   TmpStr: String;
begin
     if GetNum(MsgTypeCode) <> 2 then raise EMsgError.Create(MsgTypeCode);

     TmpStr := SubMsg(SubMsg(MsgTypeCode, MsgCode1), MsgCode2);

     Result := MessageDlgM(TmpStr, DlgType, Buttons, 0);
end;

//In case of Three QueryCodes Used
function MakeQus(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3: String; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons): Integer; overload;
var
   TmpStr: String;
begin
     if GetNum(MsgTypeCode) <> 3 then raise EMsgError.Create(MsgTypeCode);

     TmpStr := SubMsg(SubMsg(SubMsg(MsgTypeCode, MsgCode1), MsgCode2), MsgCode3);

     Result := MessageDlgM(TmpStr, DlgType, Buttons, 0);
end;

//In case of Four QueryCodes Used
function MakeQus(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3, MsgCode4: String; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons): Integer; overload;
var
   TmpStr: String;
begin
     if GetNum(MsgTypeCode) <> 4 then raise EMsgError.Create(MsgTypeCode);

     TmpStr := SubMsg(SubMsg(SubMsg(SubMsg(MsgTypeCode, MsgCode1), MsgCode2), MsgCode3), MsgCode4);

     Result := MessageDlgM(TmpStr, DlgType, Buttons, 0);
end;

//In case of Five QueryCodes Used
function MakeQus(const MsgTypeCode, MsgCode1, MsgCode2, MsgCode3, MsgCode4, MsgCode5: String; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons): Integer; overload;
var
   TmpStr: String;
begin
     if GetNum(MsgTypeCode) <> 5 then raise EMsgError.Create(MsgTypeCode);

     TmpStr := SubMsg(SubMsg(SubMsg(SubMsg(SubMsg(MsgTypeCode, MsgCode1), MsgCode2), MsgCode3), MsgCode4), MsgCode5);

     Result := MessageDlgM(TmpStr, DlgType, Buttons, 0);
end;

//Function to get The Number of '$S'
function GetNum(const MsgTypeCode: String): Integer;
var
   i, j: Integer;
begin
     j := 0;
     for i := 1 to Length(MsgTypeCode) - 2 do
     begin
          if Copy(MsgTypeCode, i, 2) = '$S' then
          begin
               j := j + 1;
          end;
     end;

     result := j;
end;

//Function to SubScribe The
function SubMsg(const MsgTypeCode, MsgCode: String): String;
var
   i: Integer;
begin
     i := Pos('$S', MsgTypeCode);

     if i > 1 then
     begin
          Result := Copy(MsgTypeCode, 1, i - 1) + MsgCode + Copy(MsgTypeCode, i + 2, Length(MsgTypeCode) - i - 1);
     end
     else
     begin
          Result := MsgCode + Copy(MsgTypeCode, i + 2, Length(MsgTypeCode) - 2);
     end;
end;

{ Message dialog }

function Max(I, J: Integer): Integer;
begin
  if I > J then Result := I else Result := J;
end;

function GetAveCharSize(Canvas: TCanvas): TPoint;
var
  I: Integer;
  Buffer: array[0..51] of Char;
begin
  for I := 0 to 25 do Buffer[I] := Chr(I + Ord('A'));
  for I := 0 to 25 do Buffer[I + 26] := Chr(I + Ord('a'));
  GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
  Result.X := Result.X div 52;
end;

type
  TMessageForm = class(TForm)
  private
    procedure HelpButtonClick(Sender: TObject);
  public
    constructor CreateNew(AOwner: TComponent); reintroduce;
  end;

constructor TMessageForm.CreateNew(AOwner: TComponent);
var
  NonClientMetrics: TNonClientMetrics;
begin
  inherited CreateNew(AOwner);
  NonClientMetrics.cbSize := sizeof(NonClientMetrics);
  if SystemParametersInfo(SPI_GETNONCLIENTMETRICS, 0, @NonClientMetrics, 0) then
    Font.Handle := CreateFontIndirect(NonClientMetrics.lfMessageFont);
end;

procedure TMessageForm.HelpButtonClick(Sender: TObject);
begin
  Application.HelpContext(HelpContext);
end;

var
  Captions: array[TMsgDlgType] of Pointer = (@SMsgDlgWarning, @SMsgDlgError,
    @SMsgDlgInformation, @SMsgDlgConfirm, nil);
  IconIDs: array[TMsgDlgType] of PChar = (IDI_EXCLAMATION, IDI_HAND,
    IDI_ASTERISK, IDI_QUESTION, nil);
  ButtonNames: array[TMsgDlgBtn] of string = (
    'Yes', 'No', 'OK', 'Cancel', 'Abort', 'Retry', 'Ignore', 'All', 'NoToAll',
    'YesToAll', 'Help');
  ButtonCaptions: array[TMsgDlgBtn] of string = (
    '��', '�ƴϿ�', 'Ȯ��', '���', '����', '��õ�', '����', '���', '��ξƴ�',
    '��ο�', '����'); 
  ModalResults: array[TMsgDlgBtn] of Integer = (
    mrYes, mrNo, mrOk, mrCancel, mrAbort, mrRetry, mrIgnore, mrAll, mrNoToAll,
    mrYesToAll, 0);
var
  ButtonWidths : array[TMsgDlgBtn] of integer;  // initialized to zero

function CreateMessageDialogM(const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons): TForm;
const
  mcHorzMargin = 8;
  mcVertMargin = 8;
  mcHorzSpacing = 10;
  mcVertSpacing = 10;
  mcButtonWidth = 50;
  mcButtonHeight = 14;
  mcButtonSpacing = 4;
var
  DialogUnits: TPoint;
  HorzMargin, VertMargin, HorzSpacing, VertSpacing, ButtonWidth,
  ButtonHeight, ButtonSpacing, ButtonCount, ButtonGroupWidth,
  IconTextWidth, IconTextHeight, X, ALeft: Integer;
  B, DefaultButton, CancelButton: TMsgDlgBtn;
  IconID: PChar;
  TextRect: TRect;
begin
  Result := TMessageForm.CreateNew(Application);
  with Result do
  begin
    BiDiMode := Application.BiDiMode;
    BorderStyle := bsDialog;
    Canvas.Font := Font;
    DialogUnits := GetAveCharSize(Canvas);
    HorzMargin := MulDiv(mcHorzMargin, DialogUnits.X, 4);
    VertMargin := MulDiv(mcVertMargin, DialogUnits.Y, 8);
    HorzSpacing := MulDiv(mcHorzSpacing, DialogUnits.X, 4);
    VertSpacing := MulDiv(mcVertSpacing, DialogUnits.Y, 8);
    ButtonWidth := MulDiv(mcButtonWidth, DialogUnits.X, 4);
    for B := Low(TMsgDlgBtn) to High(TMsgDlgBtn) do
    begin
      if B in Buttons then
      begin
        if ButtonWidths[B] = 0 then
        begin
          TextRect := Rect(0,0,0,0);
          Windows.DrawText( canvas.handle,
            PChar(ButtonCaptions[B]), -1,
            TextRect, DT_CALCRECT or DT_LEFT or DT_SINGLELINE or
            DrawTextBiDiModeFlagsReadingOnly);
          with TextRect do ButtonWidths[B] := Right - Left + 8;
        end;
        if ButtonWidths[B] > ButtonWidth then
          ButtonWidth := ButtonWidths[B];
      end;
    end;
    ButtonHeight := MulDiv(mcButtonHeight, DialogUnits.Y, 8);
    ButtonSpacing := MulDiv(mcButtonSpacing, DialogUnits.X, 4);
    SetRect(TextRect, 0, 0, Screen.Width div 2, 0);
    DrawText(Canvas.Handle, PChar(Msg), Length(Msg)+1, TextRect,
      DT_EXPANDTABS or DT_CALCRECT or DT_WORDBREAK or
      DrawTextBiDiModeFlagsReadingOnly);
    IconID := IconIDs[DlgType];
    IconTextWidth := TextRect.Right;
    IconTextHeight := TextRect.Bottom;
    if IconID <> nil then
    begin
      Inc(IconTextWidth, 32 + HorzSpacing);
      if IconTextHeight < 32 then IconTextHeight := 32;
    end;
    ButtonCount := 0;
    for B := Low(TMsgDlgBtn) to High(TMsgDlgBtn) do
      if B in Buttons then Inc(ButtonCount);
    ButtonGroupWidth := 0;
    if ButtonCount <> 0 then
      ButtonGroupWidth := ButtonWidth * ButtonCount +
        ButtonSpacing * (ButtonCount - 1);
    ClientWidth := Max(IconTextWidth, ButtonGroupWidth) + HorzMargin * 2;
    ClientHeight := IconTextHeight + ButtonHeight + VertSpacing +
      VertMargin * 2;
    Left := (Screen.Width div 2) - (Width div 2);
    Top := (Screen.Height div 2) - (Height div 2);
{    if DlgType <> mtCustom then
      Caption := LoadResString(Captions[DlgType]) else
      Caption := Application.Title;}
    Caption := 'uniHis Message'; // modified by silvston
    if IconID <> nil then
      with TImage.Create(Result) do
      begin
        Name := 'Image';
        Parent := Result;
        Picture.Icon.Handle := LoadIcon(0, IconID);
        SetBounds(HorzMargin, VertMargin, 32, 32);
      end;
    with TLabel.Create(Result) do
    begin
      Name := 'Message';
      Parent := Result;
      WordWrap := True;
      Caption := Msg;
      BoundsRect := TextRect;
      BiDiMode := Result.BiDiMode;
      ALeft := IconTextWidth - TextRect.Right + HorzMargin;
      if UseRightToLeftAlignment then
        ALeft := Result.ClientWidth - ALeft - Width;
      SetBounds(ALeft, VertMargin,
        TextRect.Right, TextRect.Bottom);
    end;
    if mbOk in Buttons then DefaultButton := mbOk else
      if mbYes in Buttons then DefaultButton := mbYes else
        DefaultButton := mbRetry;
    if mbCancel in Buttons then CancelButton := mbCancel else
      if mbNo in Buttons then CancelButton := mbNo else
        CancelButton := mbOk;
    X := (ClientWidth - ButtonGroupWidth) div 2;
    for B := Low(TMsgDlgBtn) to High(TMsgDlgBtn) do
      if B in Buttons then
        with TButton.Create(Result) do
        begin
          Name := ButtonNames[B];
          Parent := Result;
          Caption := ButtonCaptions[B];
          ModalResult := ModalResults[B];
          if B = DefaultButton then Default := True;
          if B = CancelButton then Cancel := True;
          SetBounds(X, IconTextHeight + VertMargin + VertSpacing,
            ButtonWidth, ButtonHeight);
          Inc(X, ButtonWidth + ButtonSpacing);
          if B = mbHelp then
            OnClick := TMessageForm(Result).HelpButtonClick;
        end;
  end;
end;

function MessageDlgM(const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint): Integer;
begin
  Result := MessageDlgPosHelpM(Msg, DlgType, Buttons, HelpCtx, -1, -1, '');
end;

function MessageDlgPosM(const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint; X, Y: Integer): Integer;
begin
  Result := MessageDlgPosHelpM(Msg, DlgType, Buttons, HelpCtx, X, Y, '');
end;

function MessageDlgPosHelpM(const Msg: string; DlgType: TMsgDlgType;
  Buttons: TMsgDlgButtons; HelpCtx: Longint; X, Y: Integer;
  const HelpFileName: string): Integer;
begin
  with CreateMessageDialogM(Msg, DlgType, Buttons) do
    try
      HelpContext := HelpCtx;
      HelpFile := HelpFileName;
      if X >= 0 then Left := X;
      if Y >= 0 then Top := Y;
      if (Y < 0) and (X < 0) then Position := poScreenCenter;
      Result := ShowModal;
    finally
      Free;
    end;
end;

procedure ShowMessageM(const Msg: string);
begin
  ShowMessagePosM(Msg, -1, -1);
end;

procedure ShowMessageFmtM(const Msg: string; Params: array of const);
begin
  ShowMessageM(Format(Msg, Params));
end;

procedure ShowMessagePosM(const Msg: string; X, Y: Integer);
begin
  MessageDlgPosM(Msg, mtCustom, [mbOK], 0, X, Y);
end;

end.

