unit MsgCom;

interface

uses
    Windows, Messages, SysUtils, CommDlg, Classes, Graphics, Controls,
  Forms, StdCtrls, Buttons, ComCtrls, CMsg;
                            
const
    //Client Message Format List
    CF_A110 = '$S하십시오.';
    CF_A120 = '$S에 $S하십시오.';
    CF_A130 = '$S을(를) $S하십시오.';
    CF_A210 = '먼저 $S하십시오.';
    CF_A220 = '먼저 $S되어야 합니다.';
    CF_A230 = '$S을(를) 먼저 $S하십시오.';
    CF_A240 = '$S후에 $S하십시오.';
    CF_A310 = '정확히 $S하십시오.';
    CF_A320 = '$S을(를) 정확히 $S하십시오.';
    CF_A330 = '$S에게 $S하십시오.';
    CF_A410 = '$S되어야 합니다.';
    CF_A420 = '$S해야 합니다.';
    CF_A430 = '$S이(가) $S되어야 합니다.';
    CF_A440 = '$S이(가) $S합니다.';
    CF_A450 = '$S이(가) $S해야 합니다.';
    CF_A460 = '$S이(가) 먼저 $S되어야 합니다.';
    CF_A510 = '$S이(가) 지났습니다.';
    CF_B110 = '$S입니다.';
    CF_B120 = '$S합니다.';
    CF_B210 = '$S되었습니다.';
    CF_B220 = '$S이(가) $S되었습니다.';
    CF_B230 = '$S로(으로) $S되었습니다.';
    CF_B240 = '$S되어있습니다.';
    CF_B250 = '$S이(가) $S되어있습니다.';
    CF_B310 = '$S하였습니다.';
    CF_B320 = '$S에 $S하였습니다.';
    CF_B330 = '$S이(가) $S하였습니다.';
    CF_B340 = '$S을(를) $S하였습니다.';
    CF_B350 = '$S중에 $S이(가) $S하였습니다.';
    CF_B410 = '$S이(가) 있습니다.';
    CF_D110 = '$S이(가) 아닙니다.';
    CF_D210 = '$S이(가) 없습니다.';
    CF_D220 = '$S할 $S이(가) 없습니다.';
    CF_D310 = '$S이(가) 불가합니다.';
    CF_D320 = '$S이(가) 불가능합니다.';
    CF_D330 = '$S될 수 없습니다.';
    CF_D340 = '$S을(를) $S될 수 없습니다.';
    CF_D410 = '$S되어있지 않습니다.';
    CF_D420 = '$S이(가) $S되어있지 않습니다.';
    CF_D430 = '$S되지 않았습니다.';
    CF_D440 = '$S이(가) $S되지 않았습니다.';
    CF_D510 = '$S할 수 없습니다.';
    CF_D520 = '$S을(를) $S할 수 없습니다.';
    CF_D610 = '$S하지 않습니다.';
    CF_D620 = '$S이(가) $S하지 않습니다.';
    CF_D710 = '잘못 $S하였습니다.';
    CF_D720 = '$S을(를) 잘못 $S하였습니다.';
    CF_D730 = '$S이(가) 맞지않습니다.';
    CF_E110 = '$S할 수 있습니다.';
    CF_E120 = '$S될 수 있습니다.';
    CF_E130 = '$S이(가) 가능합니다.';
    CF_E140 = '$S을(를) $S할 수 있습니다.';
    CF_E150 = '$S을(를) $S될 수 있습니다.';
    CF_Q110 = '$S하시겠습니까?';
    CF_Q120 = '삭제하시겠습니까?';
    CF_Q130 = '$S에 $S하시겠습니까?';
    CF_Q140 = '$S을(를) $S하시겠습니까?';
    CF_Q210 = '$S되었습니까?';
    CF_Q220 = '$S이(가) $S되었습니까?';

    CF_M100 = '턱시도서버에 연결중 오류가 발생하였습니다.';
    CF_M101 = '먼저 로그인 하십시오';

    //Noun List
    NF010	 = '가능';
    NF020	 = '검사';
    NF030	 = '계속';
    NF040	 = '구분';
    NF050	 = '기록';
    NF060	 = '등록';
    NF070	 = '마감';
    NF080	 = '문의';
    NF090	 = '반출';
    NF100	 = '발생';
    NF110	 = '변경';
    NF120	 = '보고';
    NF130	 = '보류';
    NF140	 = '불출';
    NF150	 = '사용';
    NF160	 = '삭제';
    NF170	 = '서명';
    NF180	 = '선택';
    NF190	 = '설정';
    NF200	 = '손상';
    NF210	 = '수납';
    NF220	 = '수정';
    NF230	 = '승인';
    NF240	 = '신청';
    NF250	 = '예약';
    NF260	 = '오류';
    NF270	 = '완료';
    NF280	 = '일괄접수';
    NF290	 = '일치';
    NF300	 = '입력';
    NF310	 = '작성';
    NF320	 = '작업';
    NF330	 = '장애';
    NF340	 = '재발급';
    NF350	 = '재작성';
    NF360	 = '저장';
    NF370	 = '접속';
    NF380	 = '접수';
    NF390	 = '조치';
    NF400	 = '조회';
    NF410	 = '존재';
    NF420	 = '종료';
    NF430	 = '중복';
    NF440	 = '지정';
    NF450	 = '진행';
    NF460	 = '참조';
    NF470	 = '처리';
    NF480	 = '체크';
    NF490	 = '초과';
    NF500	 = '출력';
    NF510	 = '취소';
    NF520	 = '포함';
    NF530	 = '확인';

    D_INSUTYPE  = '보험구분';
    D_OIFLAG    = '외래/입원구분';
    D_DATE      = '날짜';
    D_SORDNAME	= '2차ORDER명';
    D_SORDCODE	= '2차ORDER코드';
    D_SUPPORT60	= '60세이상부양자';
    D_CHKFYAMT	= '가계수표잔액';
    D_OPRDATE	= '가동일자';
    D_ADDAMT	= '가산금액';
    D_ADDFEE	= '가산금액';
    D_ADDQTY	= '가산수량';
    D_FAMHIS	= '가족력';
    D_HOMENO	= '가족번호';
    D_NGIVAMT	= '가지급금';
    D_NGVREFNO	= '가지급금참조번호';
    D_BTMLNAME	= '간식명';
    D_BTMLTIME	= '간식시간';
    D_BTMLCODE	= '간식코드';
    D_LIVER	= '간장';
    D_NURSEGRD	= '간호등급';
    D_NURSE	= '간호사';
    D_ORDNURYN	= '간호사처방가능여부';
    D_NURTIME	= '간호시간';
    D_MEDITCD	= '간호중재코드';
    D_DIAGNOCD	= '간호진단코드';
    D_DISEASCD	= '간호질환코드';
    D_NURACTYN	= '간호ACTING여부';
    D_DPRAMT	= '감가상각비';
    D_DPRYYMM	= '감가상각연월';
    D_DCAMT	= '감면금액';
    D_DCRAT	= '감면율';
    D_DCCODE	= '감면코드';
    D_DECRAMT	= '감소액';
    D_DECRYYMM	= '감소연월';
    D_INFECTYN	= '감염여부';
    D_THYROIDD	= '갑상선질환';
    D_OPENDATE	= '개업일자';
    D_PSNGPRYN	= '개인/단체여부';
    D_PERSONNO	= '개인번호';
    D_TRDAMT	= '거래금액';
    D_TRDNAME	= '거래명칭';
    D_STDTYPCD	= '거래유형CODE';
    D_CUSTYPE	= '거래처구분';
    D_CUSTNAME	= '거래처이름';
    D_CUSTCODE	= '거래처코드';
    D_WETHMON	= '거치기간';
    D_RSLTTEXT	= '검사결과내용';
    D_RSLTUNIT	= '검사결과단위';
    D_RSLTCODE	= '검사결과코드';
    D_RSLTACR	= '검사결과ACR-CODE';
    D_RSLTGRP	= '검사결과GROUP';
    D_RSLTNCD	= '검사결과NORMAL-CODE';
    D_RSLTTYPE	= '검사결과TYPE';
    D_EXAMTECH	= '검사기사';
    D_EXAMABBR	= '검사명약어';
    D_EXAMMETH	= '검사방법';
    D_EXAMDEPT	= '검사부서';
    D_MALEHP	= '검사상한치(남)';
    D_FEMALEHP	= '검사상한치(여)';
    D_EXAMTIME	= '검사소용시간';
    D_ROOMNAME	= '검사실명';
    D_ROOMCODE	= '검사실코드';
    D_EXAMINFO	= '검사안내코드';
    D_EXAMDAY	= '검사요일';
    D_EXAMDATE	= '검사일자';
    D_EXAMYN	= '검사처방여부';
    D_MALELP	= '검사하한치(남)';
    D_FEMALELP	= '검사하한치(여)';
    D_EXAMNAME	= '검사항목명';
    D_EXAMCODE	= '검사항목코드';
    D_EXAMGRP	= '검사항목판독GROUP';
    D_HOPEDR	= '검사희망의사';
    D_HOPEDATE	= '검사희망일시';
    D_SPCPLAC	= '검체도착지';
    D_SPCNAME	= '검체명';
    D_SPCIDYY	= '검체발생연도';
    D_ISOLQTY	= '검체분주량';
    D_TUBECODE	= '검체용기';
    D_TUBENAME	= '검체용기명';
    D_SPCCODE	= '검체코드';
    D_SPCQTY	= '검체필요량';
    D_SPCID	= '검체ID';
    D_SPCHEAD	= '검체ID-HEADER';
    D_RSLTDATE	= '결과보고일시';
    D_RSLTID	= '결과입력자';
    D_APPROVDT	= '결재일자';
    D_RTAX	= '결정세액';
    D_TUBERCLE	= '결핵';
    D_MARYDATE	= '결혼기념일자';
    D_MARRYYN	= '결혼여부';
    D_DUALDEPT	= '겸직부서';
    D_DLDEPTNM	= '겸직부서명';
    D_OLDNUM	= '경로우대자';
    D_RCPNO	= '계산서번호';
    D_PRINTYN	= '계산서출력여부';
    D_CALYN	= '계산여부';
    D_CALDATE	= '계산일자';
    D_AGRAMT	= '계약금액';
    D_AGRFRDAT	= '계약기간FROM';
    D_AGRTODAT	= '계약기간TO';
    D_CUSTAMT	= '계약처금액';
    D_DCINRAT	= '계약처급여감면율';
    D_CUINRAT	= '계약처급여미수율';
    D_DCUNRAT	= '계약처비급여감면율';
    D_CUUNRAT	= '계약처비급여미수률';
    D_DCSPRAT	= '계약처지정료감면율';
    D_CUSPRAT	= '계약처지정료미수률';
    D_DCMDRAT	= '계약처진찰료감면률';
    D_CUMDRAT	= '계약처진찰료미수률';
    D_CUSTCD	= '계약처코드';
    D_ACCTNAME	= '계정과목명';
    D_ACCTCODE	= '계정과목코드';
    D_ACCTTYPE	= '계정구분';
    D_ACNTNO	= '계좌번호';
    D_PLANSTAT	= '계획상태';
    D_PLANQTY	= '계획수량';
    D_HPROTTYP	= '고단백구분';
    D_ANSTYPE	= '고시유형구분';
    D_ANSDATE	= '고시일자';
    D_EMPINSU	= '고용보험';
    D_EMPINSUAMT	= '고용보험료';
    D_RKSTDATE	= '고위험식사개시일자';
    D_RKENDATE	= '고위험식사종료일자';
    D_RKPATYPE	= '고위험환자구분';
    D_ASTTYPE	= '고정자산구분';
    D_ASTSIZE	= '고정자산규격';
    D_ASTNAME	= '고정자산명';
    D_ASTADAMT	= '고정자산부대비';
    D_ASTSTAT	= '고정자산상태';
    D_ASTSEQ	= '고정자산순번';
    D_ASTUSE	= '고정자산용도';
    D_MVDATE	= '고정자산이동일자';
    D_ASTRMAMT	= '고정자산잔존개액';
    D_ASTGETNO	= '고정자산취득번호';
    D_ASTCODE	= '고정자산코드';
    D_LOSQTY	= '고정자산폐기매각수량';
    D_MKRNAME	= '고정자산MAKER';
    D_ASTMDL	= '고정자산MODEL';
    D_HIGHPROT	= '고콜레스테롤혈증';
    D_HIGHBLD	= '고혈압';
    D_OSTEPO	= '골다공증';
    D_BMTDATE	= '골수이식등록일자';
    D_BMT	     = '골수이식환자여부';
    D_SUPLAMT	= '공급가';
    D_TOTDED	= '공제총액';
    D_CMHOBONG	= '공통호봉';
    D_HOLRAT	= '공휴가산율';
    D_HOLIDAY	= '공휴일';
    D_PATHIST	= '과거병력';
    D_DEPTYPE	= '과목구분';
    D_STNDAMT	= '과세표준금액';
    D_RELATION	= '관계';
    D_MANTYPE	= '관리구분';
    D_REFNO	= '관리번호';
    D_ADMNOTYP	= '관리번호구분';
    D_REFNONM	= '관리번호명';
    D_ADMAMT	= '관리조정';
    D_ENEMAYN	= '관장/도뇨여부';
    D_SHIFTGBN	= '교대조';
    D_EDUCFLAG	= '교육정도';
    D_OLDSEQNO	= '구명세서번호';
    D_BUYDATE	= '구입일자';
    D_VOMITFLG	= '구토형태';
    D_DOMPAY	= '국내급여';
    D_STDRTAX	= '국내기준갑근세';
    D_STDREXTAX	= '국내기준주민세';
    D_PENAMT	= '국민연금표준보수월액';
    D_NATIONNM	= '국적명';
    D_NATIONCD	= '국적코드';
    D_AUTHOR	= '권한';
    D_RTNDEPT	= '귀속부서';
    D_GUNSOKY	= '그룹근속개월';
    D_GRENTDT	= '그룹입사일자';
    D_MINCAMT	= '근로소득금액';
    D_INCAMT	= '근로소득수입금액';
    D_JOBSITE	= '근무장소';
    D_GUNMUJO	= '근무조';
    D_WKAREA	= '근무지역';
    D_JOBTYPE	= '근무형태';
    D_GUNSOKX	= '근속개월';
    D_FASTYN	= '금식여부';
    D_AMOUNT	= '금액';
    D_BANPATTN	= '금지Pattern';
    D_INSTYPE	= '급여구분';
    D_PAYGBN	= '급여구분';
    D_JIGUBGBN	= '급여지급구분';
    D_INSAMT	= '급여총금액';
    D_TERMS	= '기간';
    D_BASTAX	= '기본세';
    D_PREAMT	= '기수납금액';
    D_ACTMATYP	= '기술/재료구분';
    D_REPTNO	= '기안번호';
    D_REPTDATE	= '기안일자';
    D_STNDATE	= '기준일자';
    D_BASEPT	= '기준점수';
    D_DONOR	= '기증자';
    D_OLDREQDT	= '기청구일자';
    D_ETC	= '기타';
    D_OTHERS	= '기타';
    D_OTHERMIX	= '기타 MIX ORDER';
    D_ETCGBN	= '기타구분';
    D_ETCAMT	= '기타금액';
    D_ETCDATE	= '기타일자';
    D_ETCDISEA	= '기타질병';
    D_ETCTREYN	= '기타치료여부';
    D_EMIXSTAT	= '기타MIX 상태';
    D_EMIXYN	= '기타MIX여부';
    D_SLIPWKDT	= '기표작업일자';
    D_TASTE	= '기호식품';
    D_ERCALL	= '긴급연락처';
    D_AGE	= '나이';
    D_REFILREM	= '남은 REFILL 일수';
    D_WEIGHTM	= '남자몸무게';
    D_PAYDATE	= '납입일자';
    D_PAYSQSTP	= '납입회차';
    D_YEARCNT	= '내용년수';
    D_PATHCD	= '내원경로';
    D_STEPCD	= '내원수단(1.구급차 2.';
    D_ENTNUR	= '내원시간호사';
    D_ENTDR	= '내원시의사';
    D_OLDRAT	= '노인가산율';
    D_GLAUCOMA	= '녹내장';
    D_DENSITY	= '농도';
    D_NONGTAX	= '농특세';
    D_BRIAN	= '뇌졸증';
    D_ACCAMT	= '누적금액';
    D_ACCUCD	= '누적분류코드';
    D_LDIETYPE	= '늦식구분';
    D_REFILDAT	= '다음 REFILL 처방일자';
    D_UNITPRI	= '단가';
    D_PRICE	= '단가처리비용';
    D_CHGOAL	= '단기목표명';
    D_SPCSPCYN	= '단독검체여부';
    D_UNIT	= '단위';
    D_GPDCAMT	= '단체감면금액';
    D_GPTYPE	= '단체구분';
    D_GPRSVCNT	= '단체예약인원';
    D_GPADDAMT	= '단체추가금액';
    D_GPADDYN	= '단체추가여부';
    D_GENDR	= '담당의사';
    D_CIGACNT	= '담배갯수';
    D_CIGAYEAR	= '담배연수';
    D_GALLSTON	= '담석증';
    D_DPRTAMT	= '당기상각총액';
    D_DISBETE	= '당뇨병';
    D_CURACT	= '당좌예금';
    D_BUDGFST	= '당초예산';
    D_GIVCNT	= '당행지급건수';
    D_GIVAMT	= '당행지급금액';
    D_PAYREQSEQ	= '대금지불의뢰순번';
    D_PAYREQDAT	= '대금지불의뢰일자';
    D_WAITTYPE	= '대기구분';
    D_WAITNO	= '대기번호';
    D_WAITTIME	= '대기시간';
    D_CRAMT	= '대변금액';
    D_LARGCD	= '대분류';
    D_CUTCNT3	= '대분류건수';
    D_OTHPAY	= '대불신청금액';
    D_MATCHCD	= '대응코드';
    D_COLON	= '대장암';
    D_TRANSQTY	= '대체수량';
    D_OUTCNT	= '대출건수';
    D_NOLENDCD	= '대출불능사유';
    D_LENDSTAT	= '대출상태';
    D_OUTYN	= '대출여부';
    D_USETYPE	= '대출용도';
    D_LENDCODE	= '대출코드';
    D_PRSDNAME	= '대표자명';
    D_STDGOODS	= '대표품명';
    D_ARVDATE	= '도착일시';
    D_FREEZEYN	= '동결절편여부';
    D_COMPYN	= '동반여부';
    D_ACOMPRLN	= '동반자관계';
    D_ACOMPAGE	= '동반자나이';
    D_ACOMPNM	= '동반자성명';
    D_ACOMPSEX	= '동반자성별';
    D_ACOMPTEL	= '동반자전화번호';
    D_ACOMADDR	= '동반자주소';
    D_COSUGACD	= '동시발생시인정코드';
    D_SUABCNT	= '동시수진가능인원';
    D_COSUBCD	= '동시CHECK';
    D_ISOQTY	= '동위원소투여량';
    D_HEADSIZE	= '두위';
    D_HEADACHE	= '두통';
    D_GRADE	= '등급';
    D_RGTDATE	= '등록일자';
    D_RGTCNT	= '등록처리자료수';
    D_LEASENO	= '리스관리번호';
    D_LEASETYP	= '리스구분';
    D_LEASECO	= '리스구입처';
    D_LESCUST	= '리스회사';
    D_LINYN	= '린넨운행여부';
    D_LINDATE	= '린넨운행일자';
    D_CLOSEYN	= '마감여부';
    D_CLOSYYMM	= '마감연월';
    D_NARCOYN	= '마약여부';
    D_LSTLOGDT	= '마지막접속일시';
    D_ANETHCD	= '마취방법';
    D_ANETHMM	= '마취분';
    D_ANETHHH	= '마취시간';
    D_ANETHFRM	= '마취시작시간';
    D_ANETHDR	= '마취의사';
    D_ANETHTO	= '마취종료시간';
    D_FULLDELV	= '만삭분만';
    D_FULLCNT	= '만삭분만수';
    D_BRONCHUS	= '만성기관기염';
    D_LIGTLIQD	= '맑은유동식';
    D_DBLINCYN	= '맞벌이여부';
    D_SALETAMT	= '매각액';
    D_ISSUEEA	= '매수';
    D_PCHTYPE	= '매입구분';
    D_MSUSUBDT	= '면수습일자';
    D_REQSEQNO	= '명세서일련번호';
    D_MODELNM	= '모델명';
    D_OBJECT	= '목적';
    D_WEIGHT	= '몸무게';
    D_NOHOUSYN	= '무주택근로자여부';
    D_BREATNO	= '무호흡';
    D_SETNO	= '묶음번호';
    D_DOCUMNO	= '문서번호';
    D_QAMEDTYP	= '문진구분';
    D_MOONNAME	= '문진명';
    D_MOONGRP	= '문진분류';
    D_MOONTYPE	= '문진유형';
    D_MOONDR	= '문진자';
    D_MOONKEY	= '문진조합키';
    D_MOONCODE	= '문진코드';
    D_STKTYPE	= '물품/재고구분';
    D_ITEMDOCU	= '물품다큐멘트';
    D_MATLINTY	= '물품린넨구분';
    D_ITEMCODE	= '물품린넨코드';
    D_ITEMNAME	= '물품명';
    D_KINDNAME	= '물품종류';
    D_KINDCODE	= '물품종류코드';
    D_PNDFMSB	= '미결계정세목명';
    D_PNDFMSBC	= '미결계정세목위치';
    D_PNDRMCD	= '미결계정항목';
    D_PNDFMHD	= '미결계정항목명칭';
    D_PNDFMHDC	= '미결계정항목위치';
    D_PNDKEY	= '미결계정KEY';
    D_PNDSEC	= '미결반제대상';
    D_PNDYN	= '미결반제여부';
    D_PNDCNT	= '미결재건수';
    D_NOSETAMT	= '미결재금액';
    D_EHGCAP	= '미상환원금';
    D_UNCOLTYP	= '미수구분';
    D_UNCOLAMT	= '미수금액';
    D_UNCDATE	= '미수발생일자';
    D_UNCOLID	= '미수발생자';
    D_UNCOLCD	= '미수사유코드';
    D_REPAYCD	= '미수상각코드';
    D_FRREMAMT	= '미지급금';
    D_RCVNCNT	= '미회신건수';
    D_RCVNAMT	= '미회신금액';
    D_RTNAMT	= '반납금액';
    D_RTNQRY	= '반납수량';
    D_RTNYN	= '반납여부';
    D_RTNWDATE	= '반납예정일자';
    D_RTNDATE	= '반납일자';
    D_RTNID	= '반납자';
    D_RTNCNT	= '반납회수';
    D_ROUNDTYP	= '반올림구분';
    D_APRSLPNO	= '반제전표번호';
    D_ISSUENO	= '발급번호';
    D_ISSUDATE	= '발급일자';
    D_SENDYN	= '발송여부';
    D_SENDDATE	= '발송일자';
    D_ACCDEPT	= '발의부서';
    D_PRINTSEQ	= '발행순서';
    D_VSTTIME	= '방문시기';
    D_VSTYN	= '방문여부';
    D_VSTDATE	= '방문일자';
    D_EMERGENY	= '방사선치료긴급도';
    D_RADYN	= '방사선치료여부';
    D_URINYN	= '배뇨여부';
    D_EVACUHAB	= '배변습관';
    D_EVACUYN	= '배변여부';
    D_SPOUSDDYN	= '배우자공제여부';
    D_SPOUSYN	= '배우자유무';
    D_BAGENAME	= '배지명';
    D_BAGECODE	= '배지코드';
    D_LEUKOCYT	= '백혈병';
    D_COMPNYNO	= '법인등록번호';
    D_CONAME	= '법인명';
    D_CHNGDATE	= '변경일자';
    D_CREQDATE	= '변경청구일자';
    D_CHCODE	= '변경코드';
    D_COMSTIPT	= '변비';
    D_WARDNO	= '병동번호';
    D_ICUTYPE	= '병동중환구분';
    D_BEDNO	= '병상번호';
    D_BEDCNT	= '병상수';
    D_ROOMNO	= '병실';
    D_ROOMTYPE	= '병실구분';
    D_ROOMGRAD	= '병실등급';
    D_CHROOMYN	= '병실변경여부';
    D_HOSPRATE	= '병원가산율';
    D_HOSPCODE	= '병원코드';
    D_REPTYN	= '보고여부';
    D_REPTDR	= '보고자';
    D_SAVETYPE	= '보관방법';
    D_BILLAMT	= '보관어음금액';
    D_SAVEYN	= '보관여부';
    D_SAVEDATE	= '보관일자';
    D_SAVEPLAC	= '보관장소';
    D_SUPPCNT	= '보완청구건수';
    D_AIDNURSE	= '보조원';
    D_KEEPTYPE	= '보존구분';
    D_INSPRICE	= '보험단가';
    D_ININCFEE	= '보험증가금액';
    D_INSPCRAT	= '보험지정진료률';
    D_AIDINTYP	= '보호급여구분';
    D_AIDPRICE	= '보호단가';
    D_CARECNT	= '보호자상주환자수';
    D_CARENAME	= '보호자성명';
    D_CAREDCNT	= '보호자식사';
    D_CAREYN	= '보호자유무';
    D_INSTRYN	= '복약지도여부';
    D_DOSTIME	= '복용시간';
    D_ABDOSIZE	= '복위';
    D_RETURNDT	= '복직일자';
    D_STOMACHE	= '복통';
    D_HOMEYN	= '본원/타원여부';
    D_OWNAMT	= '본인부담총금액';
    D_OWNRTN	= '본인부담환급금액';
    D_SEALDATE	= '봉합시간';
    D_VATAMT	= '부가세';
    D_VATTYPE	= '부가세구분';
    D_VATINDYN	= '부가세표시여부';
    D_AUTOPYN	= '부검여부';
    D_REGNO	= '부동산등기번호';
    D_CMPLDATE	= '부동산등기일자';
    D_ESTCLS	= '부동산지목';
    D_LANDGRD	= '부동산토지등급';
    D_DEPTDATE	= '부서발령일자';
    D_COMDNO	= '부서장 사번';
    D_DEPTCODE	= '부서코드';
    D_DIAGDATE	= '부원진단일자';
    D_SIGNCODE	= '부호';
    D_GRPDATE	= '분류일자';
    D_DELVNUR1	= '분만개조간호사';
    D_DELVDR	= '분만개조의사';
    D_DELVCNT	= '분만수';
    D_DELVEXDT	= '분만예정일자';
    D_DELVKIND	= '분만종류';
    D_DELVTYPE	= '분만형태';
    D_DENYCNT	= '불능건수';
    D_DNYAMT	= '불능금액';
    D_STERYN	= '불임시행여부';
    D_OUTTYPE	= '불출구분';
    D_OUTUNIT	= '불출단위';
    D_IOUNIT	= '불출단위대입고단위';
    D_OUTDEPT	= '불출부서';
    D_OUTQTY	= '불출수량';
    D_OUTDATE	= '불출일자';
    D_OUTID	= '불출자';
    D_OUTCYCLE	= '불출주기';
    D_NOTAXSUM	= '비과세누적분';
    D_NOTAX	= '비과세수당';
    D_NNOTAX	= '비과세정상수당';
    D_UNIAMT	= '비급여총금액';
    D_FATTYPE	= '비만도';
    D_FATUP	= '비만도상';
    D_FATRSLT	= '비만도평가결과';
    D_FATCODE	= '비만도평가코드';
    D_FATLOW	= '비만도하';
    D_PASSWORD	= '비밀번호';
    D_PWDUPDDT	= '비밀번호변경일시';
    D_COSTACCT	= '비용계정코드';
    D_COSTYPE	= '비용구분';
    D_NOSEEXT	= '비익확장';
    D_BREATFEW	= '빈호흡';
    D_ACCIDETL	= '사고내역';
    D_ACCIDATE	= '사고발생일시';
    D_ACCISITE	= '사고장소';
    D_ACCITYPE	= '사고종류';
    D_EXPICAU	= '사망원인';
    D_EXPIDATE	= '사망일자';
    D_EXPCNT	= '사망환자수';
    D_SBIRCNT	= '사산아수';
    D_BUSSNO	= '사업자등록번호';
    D_LOCATE	= '사업장';
    D_BUSSTYPE	= '사업장구분';
    D_USEFRMDT	= '사용가능시작시간';
    D_USEYN	= '사용가능여부';
    D_USETODT	= '사용가능종료시간';
    D_USEAMT	= '사용금액';
    D_USEUNIT	= '사용단위';
    D_USEDEPT	= '사용부서';
    D_USEDAYS	= '사용요일';
    D_EMPTYPE	= '사원구분';
    D_EMPNO	= '사원번호';
    D_EXPITYPE	= '사인';
    D_PRECKSTA	= '사전심사상태';
    D_PRECKDT	= '사전심사일자';
    D_PRECKID	= '사전심사자';
    D_CUTCNT	= '삭감건수';
    D_CUTAMT	= '삭감금액';
    D_CUTSEQ	= '삭감내역순번';
    D_CUTANALY	= '삭감분석내용';
    D_CUTCODE	= '삭감사유코드';
    D_DELDATE	= '삭제일자';
    D_WOMTYPE	= '산모유형';
    D_WOMPATNO	= '산모환자번호';
    D_OXYDOSYN	= '산소투여여부';
    D_INDINTYP	= '산재급여구분';
    D_INDPRICE	= '산재단가';
    D_PREMED	= '산전진찰';
    D_OUTTAX	= '산출세액';
    D_DPRTYPE	= '상각구분';
    D_REFAMT	= '상각금액';
    D_ASTRATE	= '상각율';
    D_REFTYPE	= '상각형태';
    D_CONSDATE	= '상담일자';
    D_ICDTNAME	= '상병명';
    D_ICDGPSNM	= '상병소분류명';
    D_DIACDRAN	= '상병순위';
    D_ICDTYEAR	= '상병연보이름';
    D_ICDGPMNM	= '상병중분류명';
    D_ICDTCODE	= '상병코드';
    D_ICDTGRPL	= '상병코드대분류';
    D_ICDTGRPS	= '상병코드소분류';
    D_ICDTGRPM	= '상병코드중분류';
    D_RESTDT	= '상병휴직일자';
    D_RESTID	= '상병휴직자구분';
    D_BASEAMT	= '상여기초금액';
    D_UPSLIPCD	= '상위 SLIP CODE';
    D_UPDEPT	= '상위부서';
    D_PRODNAME	= '상품명';
    D_ECODE	= '상해외인코드(E)';
    D_VCODE	= '상해외인코드(V)';
    D_BUSSNAME	= '상호명';
    D_RTMOCNT	= '상환기간';
    D_RTMTH	= '상환방법';
    D_DELAMT	= '상환원금';
    D_RTINTAMT	= '상환이자';
    D_RTDATE	= '상환일자';
    D_RTTOAMT	= '상환총액';
    D_COLORTYP	= '색깔및양상';
    D_COLOR	= '색상';
    D_BIOPSY	= '생검';
    D_BIOPSYCN	= '생검수';
    D_BIRTDATE	= '생년월일';
    D_FISH	= '생선';
    D_BREQAMT	= '생성전청구액';
    D_SURVTYPE	= '생존형태';
    D_BIOYN	= '생화학치료여부';
    D_HABIT	= '생활습관';
    D_WESTDIET	= '서양식';
    D_PREACTYN	= '선실시여부';
    D_SELEEXYN	= '선택검사';
    D_SELETYPE	= '선택검사구분';
    D_SELECTYN	= '선택여부';
    D_DIARRHEA	= '설사';
    D_INSTDATE	= '설치일자';
    D_SEXPAIN	= '성교시출혈';
    D_NAME	= '성명';
    D_SEX	= '성별';
    D_SEXVD	= '성병';
    D_IGRDNAME	= '성분명';
    D_ADULTQTY	= '성인상용량';
    D_TEXRPTYP	= '세금계산서구분';
    D_TAXYYMM	= '세무신고년월';
    D_DTSLIPYN	= '세부 SLIP 여부';
    D_DETAIL	= '세부사항';
    D_COMCDDTL	= '세부코드';
    D_ADDTAX	= '세액추징액';
    D_TEXRATE	= '세율';
    D_WSHPRICE	= '세탁단가';
    D_WSHOUTYN	= '세탁외주여부';
    D_INTRODU	= '소개자';
    D_STERNUR	= '소독간호사';
    D_DINFQTY	= '소독의뢰처리량';
    D_DINFYN	= '소독의뢰처리여부';
    D_DINFDATE	= '소독의뢰처리일자';
    D_DINFID	= '소독의뢰처리자';
    D_DINFTYPE	= '소독종류';
    D_DINFNAME	= '소독종류명';
    D_INCOMTYP	= '소득종류';
    D_CPRYN	= '소생술여부';
    D_COMPANY	= '소속회사';
    D_CHIRAT	= '소아가산율';
    D_CHILDTYP	= '소아구분';
    D_CHILDQTY	= '소아상용량';
    D_CHILDMAT	= '소아재료코드';
    D_CHIQTY	= '소아적용수량';
    D_NEEDQTY	= '소요량';
    D_DIGEST	= '소화불량';
    D_SNDCNT	= '송신횟수';
    D_SUGAGRP	= '수가분류기호';
    D_SUGATYPE	= '수가선택구분';
    D_SUGACODE	= '수가코드';
    D_RCPTYPE	= '수납구분';
    D_RCPBILL	= '수납금액';
    D_RCPDEPO	= '수납금액';
    D_RCPSEQ	= '수납내역순번';
    D_RCPGRPNO	= '수납묶음번호';
    D_RCPSTAT	= '수납상태';
    D_RCPYN	= '수납여부';
    D_RCPDATE	= '수납일자';
    D_RCPID	= '수납자';
    D_RCPKIND	= '수납종류';
    D_RCPCNT	= '수납처리자료수';
    D_PSTRCPYN	= '수납후처리여부';
    D_TOTSD	= '수당총액';
    D_QTY	= '수량';
    D_RCVID	= '수령자';
    D_RCVYN	= '수령확인여부';
    D_CHIEFDR	= '수석의';
    D_FEEAMT	= '수수료금액';
    D_OPANESYN	= '수술/마취여부';
    D_OPADDRAT	= '수술가산';
    D_OPEXPYN	= '수술사망여부';
    D_OPSEQNO	= '수술순번';
    D_OPOUTDAT	= '수술실나간시간';
    D_OPINDAT	= '수술실도착시간';
    D_OPYN	= '수술여부';
    D_OPEXDATE	= '수술예정일자';
    D_OPDATE	= '수술일자';
    D_OPTYPE	= '수술장구분';
    D_OPMATQTY	= '수술재료수량';
    D_OPMATCD	= '수술재료코드';
    D_OPPHYS	= '수술체위';
    D_OPCODE	= '수술코드';
    D_OPSKIN	= '수술피부준비';
    D_OPDRAIN	= '수술DRAIN';
    D_RECVDATE	= '수신일자';
    D_SUCKLETY	= '수유방법';
    D_EDITTYPE	= '수정구분';
    D_BUDGCHG	= '수정예산';
    D_EDITDATE	= '수정일자';
    D_EDITID	= '수정자';
    D_BINSPRIC	= '수정전보험단가';
    D_BAIDPRIC	= '수정전보호단가';
    D_BINDPRIC	= '수정전산재단가';
    D_BFRNPRIC	= '수정전외국인단가';
    D_BGENPRIC	= '수정전일반단가';
    D_BTRAPRIC	= '수정전자보단가';
    D_PREDOSNO	= '수정전투약번호';
    D_AINSPRIC	= '수정후보험단가';
    D_AAIDPRIC	= '수정후보호단가';
    D_AINDPRIC	= '수정후산재단가';
    D_AFRNPRIC	= '수정후외국인단가';
    D_AGENPRIC	= '수정후일반단가';
    D_ATRAPRIC	= '수정후자보단가';
    D_MEDYN	= '수진여부';
    D_MEDCNT	= '수진자료건수';
    D_TRUSTAMT	= '수탁금액';
    D_TRANSCNT	= '수혈 ACTING 실시횟수';
    D_TRANSFYN	= '수혈여부';
    D_SEQNO	= '순번';
    D_ROUDNUR	= '순회간호사';
    D_APRAMT	= '승인금액';
    D_ADMINNO	= '승인서번호';
    D_APRDATE	= '승인일자';
    D_APRBAMT	= '승인전실적';
    D_APRAAMT	= '승인후실적';
    D_VISUAL	= '시각장애';
    D_ACCUYN	= '시계열가능여부';
    D_CITYTYPE	= '시도구분';
    D_SYSNAME	= '시스템명';
    D_STARTIME	= '시작시간';
    D_STARTDT	= '시작일';
    D_EXECDR	= '시행의사';
    D_DISINFYN	= '식기소독';
    D_MENUNAME	= '식단명';
    D_MENUCODE	= '식단코드';
    D_INDCODE	= '식별코드';
    D_DIETPATH	= '식사경로';
    D_DIETNAME	= '식사명';
    D_DIETCAT	= '식사범주';
    D_DTCTNAME	= '식사범주명';
    D_DIETYN	= '식사여부';
    D_DIETCONT	= '식사연결';
    D_DIETTRCD	= '식사요법';
    D_DIETTRYN	= '식사요법여부';
    D_DIETDATE	= '식사일자';
    D_DIETTYPE	= '식사정보';
    D_DIETKIND	= '식사종류';
    D_DTKDNAME	= '식사종류명';
    D_DIETCODE	= '식사코드';
    D_DIETTIME	= '식이개시끼니';
    D_MEALENDT	= '식이종료일자';
    D_FOODTYPE	= '식품구분';
    D_FOODGRP	= '식품군';
    D_FOODKIND	= '식품류';
    D_FOODNAME	= '식품명';
    D_FOODQTT	= '식품섭취량';
    D_STATQTT	= '식품섭취상태권장량';
    D_STATPOS	= '식품섭취상태금회';
    D_INTKQTT	= '식품섭취상태섭취량';
    D_STATPRE	= '식품섭취상태전회';
    D_INTKDATE	= '식품섭취일자';
    D_FOODDIST	= '식품최종분류';
    D_FOODCODE	= '식품코드';
    D_BABYRAT	= '신생아가산율';
    D_BABEXPYN	= '신생아사망여부';
    D_BABRMSTD	= '신생아실도착시간';
    D_BABYMOVE	= '신생아이동';
    D_MOVEDATE	= '신생아이동일자';
    D_BABWEIGH	= '신생아체중';
    D_MOANYN	= '신음소리여부';
    D_HEIGHT	= '신장';
    D_KIDNEY	= '신장';
    D_RELNM	= '실명번호';
    D_EXECDATE	= '실시일자';
    D_EXECID	= '실시자사번';
    D_BUDGAMT	= '실행예산';
    D_PULSEYN	= '심박동수이상여부';
    D_CKFIXAMT	= '심사결정보험청구금액';
    D_CKREFAMT	= '심사결정본인부담환급';
    D_CKFIXCNT	= '심사결정지급건수';
    D_CKTOTAMT	= '심사결정진료비총금액';
    D_CKRULE	= '심사기준';
    D_CKMODIF	= '심사수정사유';
    D_CKRANK	= '심사우선순위';
    D_CKNAME	= '심사자이름';
    D_CKID	= '심사자ID';
    D_CKBQTY	= '심사전1회사용량';
    D_CKBAMT	= '심사전금액';
    D_CKBPRICE	= '심사전단가';
    D_CKBDAYS	= '심사전일수';
    D_CKBMAT	= '심사전재료대금액';
    D_CKBACT	= '심사전행위료금액';
    D_CKBCNT	= '심사전횟수';
    D_CKINFOM	= '심사정보';
    D_CKDGREE	= '심사차수';
    D_CKPART	= '심사파트';
    D_CKRATE	= '심사활당율';
    D_CKAQTY	= '심사후1일사용량';
    D_CKAAMT	= '심사후금액';
    D_CKAPRICE	= '심사후단가(금액)';
    D_CKADAYS	= '심사후일수';
    D_CKAMAT	= '심사후재료대금액';
    D_CKAACT	= '심사후행위료금액';
    D_CKACNT	= '심사후횟수';
    D_MIDRATE	= '심야가산율';
    D_MIDNITYP	= '심야구분';
    D_NIGTHTYP	= '심야구분';
    D_SAFEQTY	= '안전재고수량';
    D_CANCER	= '암';
    D_LENGTH	= '암길이';
    D_DEPTH	= '암깊이';
    D_CANCYN	= '암등록대상여부';
    D_CANSEQNO	= '암일련번호';
    D_WIDTH	= '암폭';
    D_NIGRATE	= '야간가산율';
    D_NIGHTYPE	= '야간구분';
    D_HISTYN	= '약력약품여부';
    D_BUNDLENO	= '약묶음번호';
    D_COMPPR	= '약물상호작용내역';
    D_DRUGGRP	= '약물상호작용GROUP';
    D_CHEMYN	= '약물요법여부';
    D_REJTSTAT	= '약반납상태';
    D_REJTDR	= '약반납지시의사';
    D_REJTID	= '약반납처리자';
    D_DRUGTYPE	= '약분류';
    D_DGIJTYPE	= '약주사구분';
    D_DRUGYN	= '약주사처방여부';
    D_DRUGLDAY	= '약주사최장투여일수';
    D_DRUGNAME	= '약품명';
    D_DRUGINFO	= '약품정보';
    D_DRUGCODE	= '약품코드';
    D_EFCTCODE	= '약효군코드';
    D_DRUGSTAT	= '약STATUS';
    D_TUMOR	= '양성종양';
    D_REARCHILD	= '양육자녀수';
    D_BIRTHTYP	= '양음구분';
    D_BILLNO	= '어음번호';
    D_BILEXPDT	= '어음지급일자';
    D_DIZZY	= '어지러움';
    D_WKEVA	= '업적고과';
    D_COMPYCD	= '업체코드';
    D_BUSSCOND	= '업태';
    D_AMBULUSE	= '엠브란스사용';
    D_WEIGHTF	= '여자몸무게';
    D_STUDYYN	= '연구용/학구용여부';
    D_YEAR	= '연도';
    D_AGETYPE	= '연령구분';
    D_YYMM	= '연월';
    D_EDICODE	= '연합회대응코드';
    D_REJCNT	= '연합회반송건수';
    D_ENGNAME	= '영문이름';
    D_CONSRSLT	= '영양상담소견';
    D_NUTRTYPE	= '영양소구분';
    D_ASYRECMN	= '영양소섭취상태권장량';
    D_NUSTCUR	= '영양소섭취상태금회';
    D_NUSTINT	= '영양소섭취상태섭취량';
    D_NUSTPST	= '영양소섭취상태전회';
    D_DEPOTTYP	= '예금구분';
    D_SUMDEPO	= '예금금액';
    D_ACCTYPE	= '예금종류';
    D_ACCOWN	= '예금주';
    D_SPRAREA	= '예비영역';
    D_BUDGRATE	= '예산가용율';
    D_BUDGYN	= '예산대상';
    D_BUDGCHK	= '예산확인';
    D_STAYDAYS	= '예상재원일수';
    D_RSVEXAYN	= '예약검사여부';
    D_RSVTYPE	= '예약방법';
    D_RSVNO	= '예약번호';
    D_RSVTIME	= '예약일시';
    D_RSVDATE	= '예약일자';
    D_RSVID	= '예약작업자';
    D_RSVTOT	= '예약정원';
    D_RSVCFMYN	= '예약확인여부';
    D_RSVCNT	= '예약COUNT';
    D_RSVSCHD	= '예약SCHEDULE';
    D_SCHDTIME	= '예약SCHEDULE시간';
    D_LASTAM	= '오전마지막시간';
    D_OJAMT	= '오지수당';
    D_LASTPM	= '오후마지막시간';
    D_FINISHYN	= '완료여부';
    D_EASEDRUG	= '완화제';
    D_CALLYN	= '왕진여부';
    D_FORNTYPE	= '외국인구분';
    D_FRNPRICE	= '외국인단가';
    D_OPOWNRAT	= '외래본인부담율';
    D_OPMEDAYS	= '외래진료일수';
    D_PREXAMYN	= '외래진료전검사여부';
    D_PREXMRSV	= '외래진료전예약검사';
    D_PATGUIDE	= '외래환자가야할곳';
    D_WOUND	= '외상및후유증';
    D_FORAMT	= '외화원금';
    D_REQRSLT	= '요구결과';
    D_SUMMARY	= '요약문';
    D_REQID	= '요청자';
    D_USECODE	= '용도코드';
    D_METHODCD	= '용법코드';
    D_SAJUAMT	= '우리사주상환금';
    D_ZIPCODE	= '우편번호(실거주)1';
    D_SPORTS	= '운동';
    D_SPORTYPE	= '운동';
    D_SPORTCD	= '운동종류';
    D_RUNDAY	= '운행요일';
    D_CSTDEPT	= '원가부서';
    D_TRNSNO	= '원거래전문번호';
    D_RESELT	= '원거래처리결과';
    D_HOPNAME	= '원내수가명';
    D_ORIGPART	= '원발부위';
    D_GLACCT	= '원장계정항목';
    D_GLADMSEL	= '원장관리범위';
    D_GLADMCD	= '원장관리항목';
    D_GLBCKSTD	= '원장정리기준';
    D_GLREF	= '원장참조DATA';
    D_FIRREQNO	= '원청구접수번호';
    D_WONAMT	= '원화원금';
    D_WONINT	= '원화이자';
    D_WONRMAMT	= '원회미지급금액';
    D_PAYMOAMT	= '월불입액';
    D_PAYMODAY	= '월불입일자';
    D_MONCNT	= '월수진인원';
    D_MONAMT	= '월수진총금액';
    D_CURMAMT	= '월초예산';
    D_ULCER	= '위궤양';
    D_GASTICAN	= '위암';
    D_PLACNAME	= '위치';
    D_GIDELVYN	= '유도분만제여부';
    D_BREASTCA	= '유방암';
    D_BREAST	= '유방질환';
    D_ABNOYN	= '유소견여부';
    D_ASNOCODE	= '유소견코드';
    D_CHPATYPE	= '유형변경구분';
    D_TYPEDATE	= '유형변경처리일자';
    D_TYPECD	= '유형보조코드';
    D_VALIDYN	= '유효성여부';
    D_VALIDATE	= '유효일자';
    D_BANKFNM	= '은행명';
    D_BANKSNM	= '은행약명';
    D_BANKRCNT	= '은행이체의뢰건수';
    D_BANKRAMT	= '은행이체의뢰금액';
    D_BANKTYPE	= '은행종류';
    D_BANKBNM	= '은행지점명';
    D_BANKCODE	= '은행코드';
    D_FOOD	= '음식';
    D_FOODCASE	= '음식먹은CASE';
    D_DRINK	= '음주';
    D_DRNKYEAR	= '음주기간';
    D_DRNKQTY	= '음주량';
    D_DRNKTYPE	= '음주형태';
    D_DRNKCNT	= '음주회수';
    D_ERTYPE	= '응급구분';
    D_ERGRADE	= '응급등급';
    D_ERMTYPE	= '응급실구분';
    D_ERDATE	= '응급실도착일시';
    D_ERFEEYN	= '응급의료관리적용여부';
    D_ERTOMOYN	= '응급익일여부';
    D_ERIMMEYN	= '응급즉시여부';
    D_ERRSLT	= '응급진료결과';
    D_ERDEPT	= '응급진료과';
    D_RESPONYN	= '응답여부';
    D_RESPKEY	= '응답조합키';
    D_RESPCD	= '응답코드';
    D_REQDEPT	= '의뢰부서';
    D_REQTDR	= '의뢰의사';
    D_REQTDATE	= '의뢰일자';
    D_SMCAMT	= '의료보장지원금액';
    D_MEDINS	= '의료보험료';
    D_MEDADD	= '의료보험료추징금';
    D_MEDRET	= '의료보험료환급금';
    D_MEDAMT	= '의료보험보수월액';
    D_INSURANO	= '의료보험증번호';
    D_COMMTYPE	= '의사소통구분';
    D_CONSSTAT	= '의식상태';
    D_MOVEDEPT	= '이동부서';
    D_MOVETIME	= '이동시간';
    D_TRANMETH	= '이송방법';
    D_TRANHOSP	= '이송병원';
    D_TRANDATE	= '이송일자';
    D_DEWHOUR	= '이슬시간';
    D_DEWYN	= '이슬여부';
    D_DEWDATE	= '이슬일자';
    D_PASTSQTY	= '이월수량';
    D_NXTAMT	= '이월예산';
    D_REREQAMT	= '이의신청금액';
    D_REASON	= '이의신청사유';
    D_REARVDAT	= '이의신청상의도착일자';
    D_REREQNO	= '이의신청순번';
    D_REREQYN	= '이의신청여부';
    D_INTDATE	= '이자계산일';
    D_INTPAYCY	= '이자불입주기';
    D_INTCLS	= '이자선후취';
    D_PREDELV	= '이전분만일';
    D_BMEDTIME	= '이전수진시간';
    D_TRNSTIME	= '이체시간';
    D_OKTIME	= '이체완료시간';
    D_TRNSAMT	= '이체의뢰금액';
    D_REQTCNT	= '이체의뢰총건수';
    D_REQTAMT	= '이체의뢰총금액';
    D_TRNSDAY	= '이체일자';
    D_TRNSLEVL	= '이체LEVEL';
    D_HDYN	= '인공신장투석여부';
    D_HDLST	= '인공신장투석최종지시';
    D_HDFST	= '인공신장투석최초지시';
    D_ABORTCNT	= '인공유산횟수';
    D_CARAPMN	= '인정경력';
    D_GENPRICE	= '일반단가';
    D_CHKNRAMT	= '일반수표잔액';
    D_GENDIET	= '일반식상식';
    D_GENSOFT	= '일반식연식';
    D_GENLIQD	= '일반유동식';
    D_GNINCFEE	= '일반증가금액';
    D_GNSPCRAT	= '일반지정진료률';
    D_USEDAY	= '일수';
    D_DAYCNT	= '일일수진인원';
    D_DAYAMT	= '일일수진총금액';
    D_ORDTEXT	= '임상소견';
    D_PREGWEEK	= '임신';
    D_PREGCNT	= '임신기간';
    D_PREGDAYS	= '임신기간';
    D_PREGDGYN	= '임신중약불복용여부';
    D_IMWONDT	= '임원피선일자';
    D_INUNIT	= '입고단위';
    D_INQTY	= '입고수량';
    D_INDATE	= '입고일자';
    D_INPUTTYP	= '입금구분';
    D_RCPAMT	= '입금금액';
    D_RCPIMCNT	= '입금불능건수';
    D_RCPIMAMT	= '입금불능금액';
    D_RECEPCNT	= '입금횟수';
    D_INPUTDT	= '입력일시';
    D_ENTGBN	= '입사경위';
    D_ENTGISU	= '입사기수';
    D_COENTDT	= '입사일자';
    D_ENTCHASU	= '입사차수';
    D_ENTTIME	= '입실시간';
    D_INPOINT	= '입실시환자점수';
    D_ADMPATH	= '입원경로';
    D_ADMEXPYN	= '입원경험여부';
    D_ADMRESON	= '입원동기';
    D_IPOWNRAT	= '입원본인부담율';
    D_ADMICDCD	= '입원시상병코드';
    D_ADMDIAG	= '입원시진단';
    D_ADMYN	= '입원여부';
    D_ADMSCHDR	= '입원예정결정자';
    D_ADMSCHDT	= '입원예정일자';
    D_ADMCHAYN	= '입원으로대체여부';
    D_BANKID	= '입원은행직원ID';
    D_ADMTIME	= '입원일시';
    D_ADMDATE	= '입원일자';
    D_ADMCOMDT	= '입원지시일자';
    D_ADMCNT	= '입원횟수';
    D_SELFYN	= '자가수혈여부';
    D_LICDATE	= '자격취득일자';
    D_IDENTITY	= '자격확인구분';
    D_WOMBCANC	= '자궁암';
    D_WOMBEXYN	= '자궁암검사여부';
    D_WOMBEXMM	= '자궁암검사월';
    D_CHKRMAMT	= '자기앞수표잔액';
    D_CHILDNUM	= '자녀수';
    D_AUTOSLTYP	= '자동기표구분';
    D_AUTOENYN	= '자동종료여부';
    D_AUTOYN	= '자동화여부';
    D_DATATYPE	= '자료구분';
    D_TRAINTYP	= '자보급여구분';
    D_TRAPRICE	= '자보단가';
    D_TRAQTY	= '자보적용수량';
    D_CPTPYAMT	= '자본적지출';
    D_OFTEN	= '자주대차운행여부';
    D_MAKEDATE	= '작성일자';
    D_MAKEID	= '작성자';
    D_WKYM	= '작업년월';
    D_WORKNAME	= '작업명';
    D_WORKYN	= '작업여부';
    D_WORKDATE	= '작업일자';
    D_WORKID	= '작업자';
    D_WORKCODE	= '작업코드';
    D_WORKFLAG	= '작업FLAG';
    D_LEFTQTY	= '잔량';
    D_REMAMT	= '잔전조정금액';
    D_ORGANTYP	= '장기이식종류';
    D_EQIPNAME	= '장비명';
    D_EQIPNO	= '장비번호';
    D_EQIPCD	= '장비코드';
    D_HANDINUM	= '장애자';
    D_STKUNIT	= '재고단위';
    D_STKDEPT	= '재고부서';
    D_STKQTY	= '재고수량';
    D_STKDATE	= '재고일자';
    D_MATDOWN	= '재료대감소';
    D_MATUPAMT	= '재료대증가금액';
    D_FINTYPE	= '재무제표구분';
    D_REISSUNO	= '재발급NO';
    D_INCKDATE	= '재원심사일자';
    D_STAYYN	= '재원여부';
    D_STAYCNT	= '재원환자수';
    D_RSVSCNT	= '재진예약환자수';
    D_PLANSCNT	= '재진예정환자수';
    D_REREQCNT	= '재청구건수';
    D_REREQCD	= '재청구사유';
    D_PARAMT	= '재평가금액';
    D_REDIADT	= '재평가일자';
    D_JHGIGUM	= '재형기금';
    D_JHAMT	= '재형저축금';
    D_REHYN	= '재활치료여부';
    D_REMARKS	= '적요';
    D_RMKTYPE	= '적요구분';
    D_RMKCDNM	= '적요항목코드명';
    D_RMKCODE	= '적요항목CODE';
    D_DOSTYPE	= '적용구분';
    D_APPPART	= '적용분야';
    D_PAYDITR	= '적용외화금리';
    D_PAYWITR	= '적용원화금리';
    D_APPLDATE	= '적용일자';
    D_APPMDEPT	= '적용진료과';
    D_APPFORTE	= '적용환율';
    D_RESDR	= '전공의사';
    D_TRANYN	= '전과주치의변경여부';
    D_DENYAMT	= '전기말부인액';
    D_DPRBAMT	= '전기상각총액';
    D_TELENO	= '전문번호';
    D_RECVTIME	= '전문수신시간';
    D_RESPTIME	= '전문응답시간';
    D_SENDTIME	= '전문전송시간';
    D_SENDATE	= '전송일자';
    D_SENDATA	= '전송자료';
    D_TRNSTCNT	= '전송총건수';
    D_TRNSTAMT	= '전송총금액';
    D_EXCAMT	= '전용예산';
    D_TRAPARTY	= '전이부위';
    D_TRARATE	= '전이정도';
    D_INCNT	= '전입환자수';
    D_SLIPTYPE	= '전표구분';
    D_SLIPDATE	= '전표기표일자';
    D_SLIPNO	= '전표번호';
    D_SLIPLINE	= '전표LINE번호';
    D_PHONECLS	= '전화등급';
    D_TELNO	= '전화번호';
    D_TELAMT	= '전화사용료금액';
    D_PREQTY	= '전회수량';
    D_PREDATE	= '전회수일자';
    D_INCISEDT	= '절개시간';
    D_CUTTYPE	= '절개형태';
    D_CUTNO	= '절편번호';
    D_LIQSTOOL	= '점액변';
    D_ACPTNO	= '접수번호';
    D_ACPTYN	= '접수여부';
    D_ACPTDATE	= '접수일시';
    D_REJSEQNO	= '정산일련번호';
    D_REJREPNO	= '정산통보번호';
    D_STOOLYN	= '정상변여부';
    D_NORCAPWC	= '정상액원금환차';
    D_NORINTWC	= '정상액이자환차';
    D_OKCNT	= '정상처리건수';
    D_OKAMT	= '정상처리금액';
    D_FEELSTAT	= '정서상태';
    D_FIXQTY	= '정수량';
    D_PSYDIAG	= '정신과진단';
    D_CAESARYN	= '제왕절개여부';
    D_CASEARCA	= '제왕절개원인';
    D_MDQTY	= '제제량';
    D_MDDATE	= '제제일자';
    D_MDLOC	= '제제장소';
    D_MDSTAT	= '제제STATUS';
    D_CERTIAMT	= '제증명금액';
    D_ITEM	= '제품';
    D_LIMITCD	= '제한규정코드';
    D_AGELIMIT	= '제한나이';
    D_PROCIN	= '제한내 처리방안';
    D_PROCOUT	= '제한외 처리방안';
    D_LIMITCNT	= '제한횟수';
    D_FORMCODE	= '제형코드';
    D_CONDITCD	= '조건코드';
    D_EARLY	= '조기분만';
    D_EARLYCNT	= '조기분만수';
    D_EARLYDIE	= '조기사망';
    D_PREMEMBH	= '조기파수시간';
    D_PREMEMBD	= '조기파수일자';
    D_MON1CLOS	= '조식1차마감시간';
    D_MON2CLOS	= '조식2차마감시간';
    D_MONMILK	= '조유식';
    D_ADJTOT	= '조정액계';
    D_PANDOL	= '조정이자외화분';
    D_PANWON	= '조정이자원화분';
    D_ADJDATE	= '조정정산일자';
    D_PRESTYPE	= '조제료구분';
    D_PRESLOC	= '조제장소';
    D_DICREAYN	= '조제정보생성여부';
    D_ORGYM	= '조직개편년월';
    D_PATHDIAG	= '조직학적진단명';
    D_UNIONTYP	= '조합구분';
    D_UNIONCD	= '조합기호';
    D_UNICHYN	= '조합기호변경여부';
    D_UNIONNM	= '조합명';
    D_UNIRECNT	= '조합반송건수';
    D_REQAMT	= '조합부담금';
    D_UNICUTYN	= '조합삭감여부';
    D_QUERYCNT	= '조회건수';
    D_RELIGION	= '종교';
    D_RELIGFLG	= '종교구분';
    D_ENDDATE	= '종료일자';
    D_ENDTYPE	= '종료형태';
    D_ITEMKIND	= '종목';
    D_BEFRATE	= '종전이율';
    D_BEFDATE	= '종전이율적용일자';
    D_GENEVA	= '종합고과';
    D_BOUGIEYN	= '좌약여부';
    D_MAINTYPE	= '주/부구분';
    D_CYCLE	= '주기';
    D_CYCLEDAY	= '주기일자';
    D_RESNO	= '주민등록번호';
    D_RESADDR	= '주민등록주소';
    D_SOCTAX	= '주민세';
    D_INJTTIME	= '주사시간';
    D_INJECTID	= '주사자';
    D_INJTLOC	= '주사장소';
    D_INJTYPE	= '주사종류';
    D_INJTSTAT	= '주사STAT';
    D_MNICDYN	= '주상병여부';
    D_ADDRESS	= '주소';
    D_MAINOP	= '주수술';
    D_OPDEPT	= '주수술과';
    D_OPDCODE	= '주수술코드';
    D_CHIFTECH	= '주임기사';
    D_JJAMT	= '주재수당';
    D_JJFAMSD	= '주재원가족수당';
    D_JJSD	= '주재원관련수당';
    D_MAINDIAG	= '주진단';
    D_MDIAGDEP	= '주진단진단과';
    D_DIAGCD	= '주진단코드';
    D_DIAGDCD	= '주진단코드';
    D_MMEDTYPE	= '주진료과구분';
    D_CHADR	= '주치의사';
    D_DIAGCODE	= '주호소내용';
    D_MIDAMT	= '중간납부금액';
    D_MIDDATE	= '중간청구일자';
    D_MIDREQDT	= '중간청구최종일자';
    D_MIDDCD	= '중분류';
    D_LUN1CLOS	= '중식1차마감시간';
    D_LUN2CLOS	= '중식2차마감시간';
    D_ICUDCNT	= '중환자실재원기간';
    D_QUICKYN	= '즉시조제여부';
    D_INCRYYMM	= '증가년월';
    D_ICRMIN	= '증가분';
    D_ICRHOUR	= '증가시간';
    D_INDETYP	= '증감구분';
    D_DISTILL	= '증류수부과';
    D_LICENCNO	= '증번호';
    D_PROFTYP	= '증빙종류';
    D_PAYCNT	= '지급건수';
    D_PAYAMT	= '지급금액';
    D_PAYYYMM	= '지급년월';
    D_HOLDCNT	= '지급보류건수';
    D_HOLDAMT	= '지급보류금액';
    D_PAYFOAMT	= '지급액외화금액';
    D_PAYDFAMT	= '지급액원금환차';
    D_PAYDFINT	= '지급액이자환차';
    D_PAYBILL	= '지급어음';
    D_PAYBLCNT	= '지급어음개월수';
    D_INTOTAMT	= '지급이자총액';
    D_GIVEDGR	= '지급차수';
    D_PAYTOT	= '지급총액';
    D_PROSTOOL	= '지방변';
    D_PAYTYPE	= '지불방법';
    D_PAYFOLES	= '지불외화리스료';
    D_PAYFAMT	= '지불외화원금';
    D_PAYFINT	= '지불외화이자';
    D_PAYFADIT	= '지불외화조정이자';
    D_PAYWAMT	= '지불원화원금';
    D_PAYWINT	= '지불원화이자';
    D_PAYEXAMT	= '지불환차원금';
    D_PAYEXINT	= '지불환차이자';
    D_INDDR	= '지시의사';
    D_AREA	= '지역';
    D_AREACODE	= '지역코드';
    D_SPCAMT	= '지정금액';
    D_CHGDRYN	= '지정의변경여부';
    D_SPCDR	= '지정의사';
    D_SPCDRYN	= '지정의사여부';
    D_SPCPRICE	= '지정진료금액';
    D_JIKGAN	= '직간';
    D_JIKGUB	= '직급';
    D_JIKGUBNM	= '직급명';
    D_JOBCODE	= '직무';
    D_JIKCHAK	= '직책';
    D_DIAGYN	= '진단내역여부';
    D_DIAGMETH	= '진단방법';
    D_DIACURYN	= '진단여부';
    D_DIAGDEPT	= '진단진료과';
    D_MEDRSLT	= '진료결과';
    D_MEDTYPE	= '진료구분';
    D_MEDDAYS	= '진료기간';
    D_MEDUNITM	= '진료단위시간';
    D_STAYNO	= '진료대기순서';
    D_MEDCHGCD	= '진료변경사유';
    D_MEDDEPT	= '진료부서';
    D_DEPENTCD	= '진료의뢰내역코드';
    D_MEDDR	= '진료의사';
    D_MEDTIME	= '진료일시';
    D_MEDDATE	= '진료일자';
    D_MEDSCHTM	= '진료일정';
    D_MEDSTAT	= '진료STATUS';
    D_SUPPSTAT	= '진지STATUS';
    D_MEDFEE	= '진찰료';
    D_MEDRATE	= '진찰료부담율';
    D_CONSCONT	= '진찰소견';
    D_CONSCODE	= '진찰소견코드';
    D_DRNAME	= '진찰의사명';
    D_LABORINT	= '진통간격분';
    D_LABORYN	= '진통여부';
    D_LABORDT	= '진통일자';
    D_LABORMIN	= '진통지속시간(분)';
    D_LABORSEC	= '진통지속시간(초)';
    D_VAGIANTY	= '질출혈구분';
    D_TOTALCNT	= '집계횟수';
    D_OPDR	= '집도의';
    D_DRCRTYPE	= '차/대구분';
    D_CMYM	= '차기공통승급년월';
    D_NSKYM	= '차기승급년월';
    D_DRAMT	= '차변금액';
    D_DEGREE	= '차수';
    D_LASTAMT	= '차인지급금액';
    D_OBTDESC	= '차입건명';
    D_OBTYPE	= '차입구분';
    D_OBTTAMT	= '차입금총액';
    D_OBTDATE	= '차입기간';
    D_OBTDEPT	= '차입부서';
    D_CHARTLOC	= '차트위치';
    D_REFDATA	= '참조자료';
    D_ENTACACD	= '채용학력';
    D_COLLYN	= '채혈검사여부';
    D_COLLDATE	= '채혈일자';
    D_COLLID	= '채혈자';
    D_PROCDATE	= '처리일자';
    D_PROCID	= '처리자';
    D_ORDYN	= '처방가능여부';
    D_ORDCFMID	= '처방감사약사';
    D_ORDCFMDT	= '처방감사일자';
    D_ORDCFMST	= '처방감사STAT';
    D_ORDSEQNO	= '처방순번';
    D_ORDDR	= '처방의사';
    D_ORDDATE	= '처방일자';
    D_ORDUNIT	= '처방입력단위';
    D_ORDPLACE	= '처방장소';
    D_ORDCODE	= '처방코드';
    D_ORDNAME	= '처방코드명';
    D_ORDTYPE	= '처방형태구분';
    D_TREATYN	= '처치/재료여부';
    D_TREAGRPL	= '처치수술대분류';
    D_TREAGRPS	= '처치수술소분류';
    D_TREAENNM	= '처치수술영문명';
    D_TREAGRPM	= '처치수술중분류';
    D_TREACODE	= '처치수술코드';
    D_TREAHGNM	= '처치수술한글명';
    D_TREADATE	= '처치일자';
    D_TREACNT	= '처치횟수';
    D_ASTHMA	= '천식';
    D_ADDDATA	= '첨부자료';
    D_DIAGFDAT	= '첫진단일';
    D_REQCNT	= '청구건수';
    D_REQYYMM	= '청구년월';
    D_REQMONTH	= '청구달';
    D_REQQTY	= '청구량';
    D_REQREFYN	= '청구반영여부';
    D_REQNO	= '청구번호';
    D_REQTYPE	= '청구분류구분';
    D_REQSTAT	= '청구상태';
    D_REQYN	= '청구여부';
    D_REQDATE	= '청구일자';
    D_FREQDATE	= '청구작업완료일자';
    D_REQSITE	= '청구장소';
    D_REQSERNO	= '청구접수번호';
    D_MONGOCOL	= '청색증';
    D_COMRAT	= '체감/가산율';
    D_STAYYEAR	= '체류년';
    D_STAYMON	= '체류월';
    D_CNTDD	= '체번일';
    D_BODYTEMP	= '체온';
    D_SCRDR	= '초경검담당';
    D_SCRDATE	= '초경검일자';
    D_FSTMENS	= '초경Yearsold';
    D_FSTMEDTY	= '초재진구분';
    D_RSVFCNT	= '초진예약환자수';
    D_PLANFCNT	= '초진예정환자수';
    D_TOAPRNO	= '총괄납부승인번호';
    D_TOTQTY	= '총량';
    D_CALTYPE	= '총량계산방법';
    D_TOTCNT	= '총수량';
    D_NOTOTSD	= '총액미포함수당';
    D_TOTAMT	= '총진료비금액';
    D_LSTINTDT	= '최종 이자기산일자';
    D_ARTABORT	= '최종 인공유산 일자';
    D_NATABORT	= '최종 자연유산 일자';
    D_LSTDATE	= '최종등록일자';
    D_LTOPDATE	= '최종수술일자';
    D_FNLCKDT	= '최종심사일자';
    D_FNLCKID	= '최종심사자';
    D_SLIPLTNO	= '최종전표번호';
    D_ACAYM	= '최종졸업연월';
    D_ACAMAJ	= '최종졸업전공';
    D_ACASCHNM	= '최종졸업학교명';
    D_ACASCH	= '최종졸업학교코드';
    D_LSTCNT	= '최종지불회차';
    D_ACACD	= '최종학력코드';
    D_FSTDATE	= '최초등록일자';
    D_FIRDATE	= '최초입력일자';
    D_FSTEMPNO	= '최초입력자';
    D_ADDEXAMT	= '추가검사금액';
    D_APPENDYN	= '추가대상여부';
    D_ADDYN	= '추가여부';
    D_ADDORDYN	= '추가처방여부';
    D_DELIDATE	= '출고일자';
    D_PAYSLTYP	= '출금구분';
    D_BORNHIST	= '출산력';
    D_BORNDATE	= '출생일시';
    D_BORNTYPE	= '출생형태';
    D_GETYPE	= '취득구분';
    D_GETAMT	= '취득금액';
    D_GETDATE	= '취득일자';
    D_REJTCAUS	= '취소사유';
    D_REJTYN	= '취소여부';
    D_REJTDATE	= '취소일자';
    D_DENNO	= '치과 번호';
    D_TOTTIME	= '치과 총진료시간';
    D_DENDEPT	= '치과상세과';
    D_CHAIR	= '치과CHAIR';
    D_TRTYN	= '치료방사선여부';
    D_CUREPART	= '치료부위';
    D_REHDAY	= '치료일수';
    D_CURECARE	= '치료주의사항';
    D_REHTDAY	= '치료총일수';
    D_RADFIECN	= '치료FIELD수';
    D_RTDR	= '치방의사';
    D_UPRJAW	= '치아상악오른쪽';
    D_UPLJAW	= '치아상악왼쪽';
    D_DWRJAW	= '치아하악오른쪽';
    D_DWLJAW	= '치아하악왼쪽';
    D_TEEUPRT	= '치열상우';
    D_TEEUPLT	= '치열상좌';
    D_TEEDWRT	= '치열열하우';
    D_TEEDWLT	= '치열하좌';
    D_SUMCARD	= '카드금액';
    D_CARDNO	= '카드승인번호';
    D_CARDTYPE	= '카드종류';
    D_CODNAME	= '코드명칭';
    D_CODCLS	= '코드분류';
    D_OTHBNKSEQ	= '타행용SEQNO';
    D_OTHGVCNT	= '타행지급건수';
    D_OTHDVAMT	= '타행지급금액';
    D_BABYDATE	= '태반만출시간';
    D_BABYTYPE	= '태반만출형태';
    D_BABYKG	= '태반무게';
    D_STOOL	= '태변착색';
    D_BABYECHO	= '태아심음회';
    D_BABYCM	= '탯줄길이';
    D_STATCD	= '통계분류코드';
    D_STATICYN	= '통계약품여부';
    D_COMMRSLT	= '통신결과';
    D_COMMUTYP	= '통신구분';
    D_BOOKTYPE	= '통장구분';
    D_OUTSTAT	= '퇴실시상태';
    D_OUTPOINT	= '퇴실시환자점수';
    D_DSCHSTAT	= '퇴원상태';
    D_DSCHNUR	= '퇴원시간호사';
    D_DSCHICD	= '퇴원시상병코드';
    D_DSCHTAB	= '퇴원약';
    D_DSCHDRUG	= '퇴원약일수';
    D_DSCHEXDT	= '퇴원예정일자';
    D_DSCHECNT	= '퇴원예정환자수';
    D_DSCHDATE	= '퇴원일자';
    D_DSCHORDR	= '퇴원지시의사';
    D_DSCHORDT	= '퇴원지시일자';
    D_DSCHRSLT	= '퇴원진료결과';
    D_DSCHTYPE	= '퇴원형태';
    D_DSCHCNT	= '퇴원환자수';
    D_RETGBN	= '퇴직구분';
    D_RETSD	= '퇴직금포함수당';
    D_RETDATE	= '퇴직예정일자';
    D_RETDT	= '퇴직일자';
    D_HDACTID	= '투석 ACTING 실시자';
    D_HDACTDAT	= '투석 ACTING DATE';
    D_HDSHIFT	= '투석 SHIFT';
    D_DOSCFMID	= '투약감사약사';
    D_DCFMDATE	= '투약감사일자';
    D_DOSNO	= '투약번호';
    D_DOSID	= '투약약사';
    D_DOSDAY	= '투약일수';
    D_DOSDATE	= '투약일자';
    D_BOTTQTY	= '투여량(포장)';
    D_TABLQTY	= '투여량(함량)';
    D_BOTTUNIT	= '투여량단위(포장)';
    D_TABLUNIT	= '투여량단위(함량)';
    D_QTYTYPE	= '투여량TYPE';
    D_DOSETIME	= '투여시간';
    D_DOSEYN	= '투여여부';
    D_SPDIETYN	= '특식여부';
    D_DISPTYPE	= '파견구분';
    D_DISPDATE	= '파견일자';
    D_MEMBYN	= '파수여부';
    D_READDR	= '판독의사';
    D_READDATE	= '판독일시';
    D_COFMDR	= '판독확인의사';
    D_COFMDATE	= '판독확인일시';
    D_JUDGCONT	= '판정내용';
    D_JUDGEYN	= '판정여부';
    D_JURSVDT	= '판정예약일자';
    D_JUDGDR	= '판정의사';
    D_JUDGDATE	= '판정일자';
    D_JUDGCODE	= '판정코드';
    D_PKGNAME	= '패키지명';
    D_LASTMENS	= '폐경Yearsold';
    D_ABANDATE	= '폐기일자';
    D_LUNGS	= '폐암';
    D_DRUGUNIT	= '포장단위';
    D_ITEMCNT	= '품목수';
    D_RPTNO	= '품의번호';
    D_RPTDATE	= '품의일자';
    D_PGMDATE	= '프로그램등록일자';
    D_PGMNAME	= '프로그램명';
    D_PGMGRADE	= '프로그램보안등급';
    D_PGMHELP	= '프로그램설명서';
    D_PGMTOOL	= '프로그램작성TOOL';
    D_PGMID	= '프로그램ID';
    D_PGMTYPE	= '프로그램TYPE';
    D_INSNAME	= '피보험자명';
    D_SKINCOL	= '피부색갈';
    D_INDISPTY	= '필수약제구분';
    D_ESSRMCD	= '필요적기재사항';
    D_ESSRMDT	= '필요적기재항목';
    D_ESSRMLN	= '필요적기재항목LENGTH';
    D_ESSRMTY	= '필요적기재항목TYPE';
    D_DAYSLEEP	= '하루평균수면시간';
    D_STDAMT	= '학구용금액';
    D_HGSUGA	= '한글분류수가';
    D_HNAME	= '한글성명';
    D_HGNAME	= '한글수가명';
    D_CONTQTY	= '함량';
    D_QTYUNIT	= '함량단위';
    D_DOSQTY	= '함량단위투여량';
    D_DRUGINYN	= '항생제투여여부';
    D_ANTICNYN	= '항암제여부';
    D_CURRMENU	= '해당식단';
    D_FPOSTYPE	= '해외거점형태';
    D_FBACKDT	= '해외귀임일자';
    D_FWKAREA	= '해외근무지역';
    D_FORPAY	= '해외급여';
    D_FBUIMDT	= '해외부임일자';
    D_FBUIMTYPE	= '해외부임형태';
    D_FORNOTAX	= '해외비과세';
    D_FABRGBN	= '해외인력구분';
    D_ACTDOWN	= '행위료감소';
    D_ACTUPAMT	= '행위료증가금액';
    D_VIEWPLAN	= '향휴관찰계획';
    D_DONRYN	= '헌혈유무';
    D_CASHAMT	= '현금금액';
    D_SUMCASHH	= '현금금액';
    D_CURRLOC	= '현위치';
    D_CURAMT	= '현재잔액';
    D_CURADDR	= '현주소';
    D_CURRATE	= '현행이율';
    D_CURDATE	= '현행이율적용일자';
    D_BLDSTOOL	= '혈변';
    D_BLDPREHI	= '혈압(High)';
    D_BLDPRELO	= '혈압(Low)';
    D_BLDAMT	= '혈액미수금액';
    D_BLDSRC	= '혈액발생원';
    D_BLDNO	= '혈액번호';
    D_BLDKIND	= '혈액종류';
    D_BLDCODE	= '혈액코드';
    D_BLDABO	= '혈액형(ABO)';
    D_BLDRH	= '혈액형(RH)';
    D_COOPERCD	= '협력업체코드r';
    D_CARDIA	= '협심증';
    D_CONSULYN	= '협의진단여부';
    D_CONEDEPT	= '협진시행과';
    D_CONSDR	= '협진의사';
    D_HORMDOS	= '호르몬제복용';
    D_HORMNM	= '호르몬제이름';
    D_HORMYN	= '호르몬치료여부';
    D_HOBONG	= '호봉';
    D_SALCLASS	= '호봉';
    D_BREATCNT	= '호흡수';
    D_BREATYN	= '호흡이상여부';
    D_MARYSTAT	= '혼인상태';
    D_CURYTYPE	= '화폐구분';
    D_CONFIRM	= '확인';
    D_CONFDATE	= '확인일자';
    D_EXTENT	= '확장정도';
    D_CFICDYN	= '확정상병여부';
    D_BDGOKAMT	= '확정예산';
    D_CONVUNIT	= '환산단위';
    D_CONVQTY	= '환산수량';
    D_FORINST	= '환율이자';
    D_FORRATDT	= '환율일자';
    D_PATSECT	= '환자구분';
    D_PATNO	= '환자번호';
    D_PATSEQNO	= '환자별SEQNO';
    D_PATGRP	= '환자분류';
    D_PATPOINT	= '환자분류점수';
    D_PATSTAT	= '환자상태';
    D_PATNAME	= '환자성명';
    D_PATTYPE	= '환자유형';
    D_PATSITE	= '환자SITE';
    D_ACTCRYDG	= '활동및울음정도';
    D_STRTYYMM	= '회계개시년월';
    D_DIVISION	= '회계단위';
    D_DIVINAME	= '회계단위명';
    D_ACCTSTAT	= '회계상태';
    D_COMPNAME	= '회사명';
    D_COUNT	= '회수';
    D_RESPDR	= '회신영양사';
    D_CUTDATE	= '회음시간';
    D_SEQCNT	= '회차';
    D_HOLTEXT	= '휴일내역';
    D_HOLYN	= '휴일여부';
    D_RESTYN	= '휴직구분';
    D_RESTDATE	= '휴직일자';
    D_BRSTBONE	= '흉골견축';
    D_CHSTSIZE	= '흉위';
    D_BLKSTOOL	= '흑변';
    D_SMOKING	= '흡연';
    D_SMOKEQTY	= '흡연량갑';
    D_CIGASTAT	= '흡연상태';
    D_CIGAYN	= '흡연여부';
    D_SMOKEYY	= '흡연연도';
    D_HOPECODE	= '희망병실등급코드';
    D_WANTDATE	= '희망일';
    D_ALLERGYN	= 'AlLERGY여부';
    D_ARFCRFTY	= 'ARF CRF 종류';
    D_ATCYN	= 'ATC전송여부';
    D_BLIVER	= 'B형간염건강보균자';
    D_BAGINGYN	= 'BAGGING여부';
    D_BARCDYN	= 'BARCODE출력대상';
    D_BEDSIDYN	= 'BED SIDE여부';
    D_CSFACTOR	= 'C/S원인';
    D_CALCIUM	= 'CALCIUM';
    D_CANCSTAT	= 'Cancer Status';
    D_CANDELPL	= 'Candela PLTL/PLDL';
    D_CANDELQS	= 'Candela Q-Switched';
    D_CANDELSP	= 'Candela SPTL';
    D_CAPDDATE	= 'CAPD 적용일자';
    D_CARDIMSG	= 'CARDIAC MESSAGE';
    D_CARDNECK	= 'CARDNECK';
    D_CARMYN	= 'C-ARM 여부';
    D_CARTYN	= 'CART운행여부';
    D_CHARTYPE	= 'CHART구분';
    D_ACPTID	= 'CHART수령자';
    D_CHARTYN	= 'CHART필요여부';
    D_CHKLIST	= 'CHECK LIST';
    D_CHKRANGE	= 'CHECK범위';
    D_CHKQTY	= 'CHECK수량';
    D_CHKCODE	= 'CHECK항목';
    D_COFFEE	= 'COFFEE';
    D_CODEYN	= 'COLELESS여부';
    D_CONETIME	= 'CONSULT실시일시';
    D_CONHDEPT	= 'CONSULT희망과';
    D_CONHDR	= 'CONSULT희망의사';
    D_CONHTIME	= 'CONSULT희망일시';
    D_CONHDATE	= 'CONSULT희망일자';
    D_CONTTYPE	= 'Contact형태';
    D_CTLSTAT	= 'CONTROL STATUS';
    D_CPRCNT	= 'CPR환자수';
    D_DISCYN	= 'D/C여부';
    D_DELTRATE	= 'DELTA기준';
    D_DELTYN	= 'DELTA여부';
    D_DELTHIGH	= 'DELTA-HIGH';
    D_DELTLOW	= 'DELTA-LOW';
    D_DIAGRSLT	= 'DIAGNOSE 결과';
    D_DMDATA	= 'DM발송내역';
    D_DMDESC	= 'DM발송설명';
    D_DMCODE	= 'DM발송코드';
    D_DUTY	= 'DUTY';
    D_DUTYTYPE	= 'DUTY구분';
    D_MENSDIFF	= 'DYSMENORRHEA';
    D_ENERGY	= 'ENERGY';
    D_ETTUBE	= 'ET Tube';
    D_EVENTYPE	= 'EVENINGE';
    D_EXTRATE	= 'EXTENT정도';
    D_FACTORTX	= 'FACTOR설명';
    D_FCATORYN	= 'FACTOR여부';
    D_FAXNO	= 'FAX번호';
    D_FILLERYN	= 'FILLER여부';
    D_FILTYN	= 'FILTER여부';
    D_FILTCODE	= 'FILTER코드';
    D_FORMTEXT	= 'FORMTEXT';
    D_HANDPI	= 'Hand Piece';
    D_HDDATE	= 'HD적용일자';
    D_ILAMT	= 'I/L 금액';
    D_ILNO	= 'I/L NO';
    D_ICUDAY	= 'icu누적일수';
    D_INTUBTYN	= 'INTUBATION여부';
    D_IRRADYN	= 'IRRADIATION여부';
    D_IRRACODE	= 'IRRADIATION코드';
    D_ITEMGRPP	= 'ITEM GROUP';
    D_ITEMTYPE	= 'ITEM구분';
    D_KCAL	= 'KCAL';
    D_KEYWARD	= 'KEYWARD';
    D_KTDATE	= 'K-T 경험일자';
    D_KTTYPE	= 'K-T 구분';
    D_LCNO	= 'L/C NUMBER';
    D_LASERFI	= 'Laser Fiber';
    D_LASEROP	= 'Laser Operator';
    D_LASERKTP	= 'Laser scope KTP';
    D_LASERYN	= 'LASER여부';
    D_LASERND	= 'Lasersonics ND Yag';
    D_MAMMDATE	= 'LAST MAMMOGRAM';
    D_LOCATION	= 'LOCATION';
    D_MADATE	= 'MAIL발송일자';
    D_MAINROOM	= 'MAIN검사실';
    D_MAXNUM	= 'MAX NO.';
    D_MESSAGE	= 'Message';
    D_MICRRSLT	= 'MICRO결과';
    D_MICDR	= 'MICRO담당';
    D_MICDATE	= 'MICRO일자';
    D_MICRPUL	= 'Micromanipulator';
    D_MIXSTAT	= 'MIX상태';
    D_MIXYN	= 'MIX여부';
    D_MODE	= 'Mode';
    D_NEXTCODE	= 'NEXT수가코드';
    D_NODCNT	= 'NODE수';
    D_NODPCNT	= 'NODEPLUS수';
    D_ICDOENNM	= 'ONCOLOGY영문명';
    D_ICDOCODE	= 'ONCOLOGY코드';
    D_ICDOHGNM	= 'ONCOLOGY한글명';
    D_ORDERSTS	= 'Order 상태';
    D_ORDSCH	= 'ORDER 예정일자';
    D_ORDGRP	= 'ORDER GROUP';
    D_ORDSITE	= 'ORDER SITE';
    D_PLFINTYP	= 'P/L구분';
    D_PLFINSEQ	= 'P/L순서';
    D_PARAMETE	= 'parameter';
    D_PTEYEPRT	= 'Patient Eye Protection';
    D_PATTERNM	= 'Pattern명';
    D_PKGDATE	= 'PKG검사시간';
    D_PKGTYPE	= 'PKG구분';
    D_PKGSEXTY	= 'PKG성별구분';
    D_PKGKIND	= 'PKG종류';
    D_PKGCODE	= 'PKG코드';
    D_PKGUSEYN	= 'PKG활용여부';
    D_PORTYN	= 'PORTABLE가능여부';
    D_PRTYN	= 'PRINT여부';
    D_PRINTCNT	= 'PRINT횟수';
    D_PROCTYPE	= 'PROCESS구분';
    D_PROSOBYN	= 'PROSOBA여부';
    D_PROTIEN	= 'PROTIEN';
    D_PULSRAT	= 'Pulse Rate';
    D_QADEPT	= 'QA부서';
    D_QAYN	= 'QA실시여부';
    D_QADATE	= 'QA일자';
    D_QACODE	= 'QA코드';
    D_RECALLYN	= 'RECALL여부';
    D_RECALCNT	= 'RECALL인원';
    D_RECDTYPE	= 'Record구분';
    D_REFILCNT	= 'REFILL 요청처방횟수';
    D_REFILORD	= 'REFILL 처방횟수';
    D_REFCODAY	= 'REFILL CONFIRM 일수';
    D_REFCODAT	= 'REFILL CONFIRM 일자';
    D_REFILLYN	= 'REFILL여부';
    D_REMARK	= 'Remark';
    D_RTNO	= 'RT NO';
    D_SCANDEV	= 'Scanning Device';
    D_SCHDTYPE	= 'Schedule Type';
    D_SETEXYN	= 'SET검사여부';
    D_SETTYPE	= 'SET구분';
    D_SETNAME	= 'SET명';
    D_SETSEQNO	= 'SET순서';
    D_SETYPECD	= 'SET종류코드';
    D_SETITEM	= 'SET종목';
    D_SETCODE	= 'SET코드';
    D_SHUNTYPE	= 'SHUNT TYPE';
    D_SIGNDOOR	= 'Signs on Doors';
    D_SIMUDATE	= 'SIMULATION 일자';
    D_SLIPCODE	= 'SLIP CODE';
    D_SLIPNAME	= 'SLIP NAME';
    D_SMOKEVA	= 'Smoke Evacuation';
    D_SNOMNAME	= 'SNOMED명';
    D_SNOMCODE	= 'SNOMED코드';
    D_SODIUM	= 'SOLDIUM';
    D_SONOYN	= 'SONO  여부';
    D_SPCCASE	= 'SPECIAL CASE';
    D_SPECTEXC	= 'Spectranetics Excime';
    D_DREYEPRT	= 'Staff Eye Protection';
    D_STAGE	= 'STAGE';
    D_STEP	= 'Step';
    D_STICKER	= 'STICKER';
    D_SUBTYPE	= 'SUB 구분';
    D_SUBROOM	= 'SUB검사실';
    D_SBRESP	= 'SUB응답';
    D_SUMMTEXC	= 'Summit Excimer';
    D_SWTYPE	= 'SW구분';
    D_TIPS	= 'Tips';
    D_TNMBASE	= 'TNM근거';
    D_TNMMCD	= 'TNM-MCODE';
    D_TNMNCD	= 'TNM-NCODE';
    D_TNMTCD	= 'TNM-TCODE';
    D_ANLAMT	= 'TOTAL분석금액';
    D_VERSION	= 'Version';
    D_VIPCODE	= 'VIP CODE';
    D_VITSTAT	= 'VitalStatus';
    D_VOLUMN	= 'Volumn';
    D_WGONYN	= 'WAGON운행여부';
    D_WGONDATE	= 'WAGON운행일자';
    D_WATTS	= 'Watts';
    D_WAVEGUI	= 'Wave Guide';
    D_WRKPRTYN	= 'WORKLIST출력여부';
    D_XRAYYN	= 'X-RAY 여부';
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
    '예', '아니오', '확인', '취소', '중지', '재시도', '무시', '모두', '모두아님',
    '모두예', '도움말'); 
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

