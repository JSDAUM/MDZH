unit MNW921P3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, jpeg;

type
  TMNW921B3 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    qrl_bodytemp: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    qrl_pulse: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    ed_respcnt: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    qrl_bldprehi: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    qrl_weight: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    qrl_height: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    qrl_bldtype: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    qrl_admcou: TQRLabel;
    qrl_admmeth: TQRLabel;
    QRLabel28: TQRLabel;
    qrlb_Back1: TQRLabel;
    qrme_AdmovDet: TQRMemo;
    QRLabel37: TQRLabel;
    qrl_icd: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    qrs_pthist1: TQRShape;
    qrs_pthist2: TQRShape;
    QRLabel40: TQRLabel;
    qrs_pthist3: TQRShape;
    QRLabel41: TQRLabel;
    qrs_pthist4: TQRShape;
    QRLabel42: TQRLabel;
    qrs_pthist5: TQRShape;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    qrl_pthist: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    qrs_admlast2: TQRShape;
    qrl_admlast: TQRLabel;
    QRLabel49: TQRLabel;
    qrs_admlast1: TQRShape;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    qrl_dgstat: TQRLabel;
    QRLabel52: TQRLabel;
    qrs_dgstat1: TQRShape;
    qrs_dgstat2: TQRShape;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    qrs_argyn1: TQRShape;
    QRLabel55: TQRLabel;
    qrs_argyn2: TQRShape;
    qrl_argdg: TQRLabel;
    qrl_argfd: TQRLabel;
    qrl_argetc: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    qrs_deformt2: TQRShape;
    QRLabel69: TQRLabel;
    qrs_deformt1: TQRShape;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    qrs_eat2: TQRShape;
    QRLabel81: TQRLabel;
    qrs_eat1: TQRShape;
    QRLabel82: TQRLabel;
    qrs_eat3: TQRShape;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    qrs_wetchg3: TQRShape;
    QRLabel85: TQRLabel;
    qrs_wetchg2: TQRShape;
    QRLabel86: TQRLabel;
    qrs_wetchg1: TQRShape;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    qrs_feceskd2: TQRShape;
    QRLabel96: TQRLabel;
    qrs_feceskd1: TQRShape;
    QRLabel97: TQRLabel;
    qrs_feceskd3: TQRShape;
    QRLabel98: TQRLabel;
    qrs_feceskd4: TQRShape;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel103: TQRLabel;
    qrs_urinkd1: TQRShape;
    QRLabel104: TQRLabel;
    qrs_urinkd3: TQRShape;
    QRLabel105: TQRLabel;
    qrs_urinkd4: TQRShape;
    QuickRep2: TQuickRep;
    QRShape124: TQRShape;
    QRShape125: TQRShape;
    QRBand4: TQRBand;
    QRBand3: TQRBand;
    QRLabel174: TQRLabel;
    QRLabel164: TQRLabel;
    QRLabel165: TQRLabel;
    QRLabel166: TQRLabel;
    qrs_skinst1: TQRShape;
    QRLabel167: TQRLabel;
    qrs_skinst2: TQRShape;
    QRLabel168: TQRLabel;
    qrs_skinst3: TQRShape;
    qrs_skinst9: TQRShape;
    qrs_skinst4: TQRShape;
    qrs_skinst10: TQRShape;
    qrs_skinst5: TQRShape;
    qrs_skinst11: TQRShape;
    qrs_skinst6: TQRShape;
    qrs_skinst12: TQRShape;
    qrs_skinst7: TQRShape;
    qrs_skinst8: TQRShape;
    QRLabel169: TQRLabel;
    QRLabel154: TQRLabel;
    QRShape126: TQRShape;
    QRLabel181: TQRLabel;
    QRLabel182: TQRLabel;
    QRLabel183: TQRLabel;
    QRLabel184: TQRLabel;
    QRLabel185: TQRLabel;
    QRLabel186: TQRLabel;
    QRLabel187: TQRLabel;
    QRLabel276: TQRLabel;
    QRLabel191: TQRLabel;
    QRLabel192: TQRLabel;
    QRLabel196: TQRLabel;
    QRLabel197: TQRLabel;
    QRLabel198: TQRLabel;
    QRLabel199: TQRLabel;
    QRLabel200: TQRLabel;
    QRLabel201: TQRLabel;
    QRLabel202: TQRLabel;
    QRLabel205: TQRLabel;
    QRLabel206: TQRLabel;
    QRLabel207: TQRLabel;
    QRLabel208: TQRLabel;
    qrs_edu1: TQRShape;
    qrs_edu2: TQRShape;
    qrs_edu21: TQRShape;
    qrs_edu22: TQRShape;
    qrs_edu24: TQRShape;
    qrs_edu23: TQRShape;
    qrs_edu25: TQRShape;
    qrs_edu26: TQRShape;
    qrs_edu27: TQRShape;
    qrs_edu3: TQRShape;
    qrs_edu4: TQRShape;
    qrs_edu5: TQRShape;
    qrs_edu7: TQRShape;
    qrs_Safeedu1: TQRShape;
    qrs_edu8: TQRShape;
    qrs_edu31: TQRShape;
    qrs_edu32: TQRShape;
    qrs_edu33: TQRShape;
    qrs_edu34: TQRShape;
    qrs_edu35: TQRShape;
    QRLabel193: TQRLabel;
    QRLabel194: TQRLabel;
    QRLabel195: TQRLabel;
    qrs_edu28: TQRShape;
    qrs_edu29: TQRShape;
    qrs_edu30: TQRShape;
    QRLabel204: TQRLabel;
    qrs_edu36: TQRShape;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel203: TQRLabel;
    QRLabel189: TQRLabel;
    QRLabel148: TQRLabel;
    QRLabel151: TQRLabel;
    QRBand5: TQRBand;
    QRLabel241: TQRLabel;
    QRLabel242: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    qrl_nurse: TQRLabel;
    qrl_inf: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel216: TQRLabel;
    qrl_work: TQRLabel;
    qrl_adu: TQRLabel;
    qrl_merr: TQRLabel;
    qrl_telno2: TQRLabel;
    qrl_telno1: TQRLabel;
    QRLabel217: TQRLabel;
    qrl_addr: TQRLabel;
    QRLabel218: TQRLabel;
    qrl_ChType: TQRLabel;
    QRShape127: TQRShape;
    QRLabel123: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    qrs_nerves1: TQRShape;
    QRLabel133: TQRLabel;
    qrs_nerves2: TQRShape;
    QRLabel134: TQRLabel;
    qrs_nerves3: TQRShape;
    QRLabel48: TQRLabel;
    QRLabel209: TQRLabel;
    QRLabel210: TQRLabel;
    QRLabel211: TQRLabel;
    QRLabel212: TQRLabel;
    qrs_feelst1: TQRShape;
    QRLabel247: TQRLabel;
    qrs_feelst2: TQRShape;
    QRLabel248: TQRLabel;
    qrs_feelst3: TQRShape;
    QRLabel249: TQRLabel;
    qrs_feelst4: TQRShape;
    QRLabel250: TQRLabel;
    qrs_feelst5: TQRShape;
    QRLabel251: TQRLabel;
    qrs_feelst6: TQRShape;
    QRLabel252: TQRLabel;
    QRLabel253: TQRLabel;
    QRLabel254: TQRLabel;
    qrl_condst: TQRLabel;
    qrl_concom: TQRLabel;
    qrl_pshist1: TQRLabel;
    qrl_pshist2: TQRLabel;
    qrl_pshist3: TQRLabel;
    qrs_feelst7: TQRShape;
    QRLabel255: TQRLabel;
    QRLabel256: TQRLabel;
    qrl_urineCnt: TQRLabel;
    qrl_sleeptm: TQRLabel;
    qrs_feelst8: TQRShape;
    QRLabel57: TQRLabel;
    QRLabel147: TQRLabel;
    qrs_opyn1: TQRShape;
    QRLabel263: TQRLabel;
    qrs_opyn2: TQRShape;
    qrl_opnm: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    qrs_pain1: TQRShape;
    QRLabel72: TQRLabel;
    QRLabel74: TQRLabel;
    qrs_pain2: TQRShape;
    QRLabel75: TQRLabel;
    qrs_pain3: TQRShape;
    QRLabel76: TQRLabel;
    qrs_pain4: TQRShape;
    QRLabel77: TQRLabel;
    qrs_pain5: TQRShape;
    QRLabel78: TQRLabel;
    qrs_pain6: TQRShape;
    QRLabel264: TQRLabel;
    QRLabel265: TQRLabel;
    qrs_pain7: TQRShape;
    QRLabel266: TQRLabel;
    qrs_pain8: TQRShape;
    QRLabel267: TQRLabel;
    qrs_pain9: TQRShape;
    QRLabel268: TQRLabel;
    qrs_pain10: TQRShape;
    QRLabel269: TQRLabel;
    qrs_pain11: TQRShape;
    QRLabel270: TQRLabel;
    qrs_pain12: TQRShape;
    QRLabel219: TQRLabel;
    qrl_drink: TQRLabel;
    QRLabel220: TQRLabel;
    qrl_tabaco: TQRLabel;
    QRLabel221: TQRLabel;
    QRLabel224: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    qrs_sleep1: TQRShape;
    QRLabel226: TQRLabel;
    qrs_sleep2: TQRShape;
    QRLabel227: TQRLabel;
    qrs_sleepdg1: TQRShape;
    QRLabel228: TQRLabel;
    qrs_sleepdg2: TQRShape;
    QRLabel229: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel125: TQRLabel;
    qrs_eyest1: TQRShape;
    QRLabel126: TQRLabel;
    qrs_eyest2: TQRShape;
    QRLabel245: TQRLabel;
    qrs_eyest4: TQRShape;
    QRLabel258: TQRLabel;
    qrs_eyest3: TQRShape;
    QRLabel127: TQRLabel;
    QRLabel128: TQRLabel;
    qrs_earst1: TQRShape;
    QRLabel129: TQRLabel;
    qrs_earst2: TQRShape;
    QRLabel130: TQRLabel;
    qrs_earst3: TQRShape;
    QRLabel271: TQRLabel;
    qrs_earst4: TQRShape;
    QRLabel272: TQRLabel;
    qrs_earst5: TQRShape;
    QRLabel135: TQRLabel;
    QRLabel136: TQRLabel;
    qrs_palsy1: TQRShape;
    QRLabel137: TQRLabel;
    qrs_palsy2: TQRShape;
    QRLabel138: TQRLabel;
    qrs_palsy3: TQRShape;
    QRLabel273: TQRLabel;
    qrs_palsy4: TQRShape;
    QRLabel274: TQRLabel;
    qrs_palsy5: TQRShape;
    QRLabel139: TQRLabel;
    QRLabel140: TQRLabel;
    qrs_respst1: TQRShape;
    QRLabel141: TQRLabel;
    qrs_respst2: TQRShape;
    QRLabel142: TQRLabel;
    qrs_respst3: TQRShape;
    QRLabel143: TQRLabel;
    qrs_respst4: TQRShape;
    QRLabel144: TQRLabel;
    qrs_respst5: TQRShape;
    QRLabel145: TQRLabel;
    qrs_respst6: TQRShape;
    QRLabel146: TQRLabel;
    qrs_respst7: TQRShape;
    QRLabel275: TQRLabel;
    qrs_respst8: TQRShape;
    QRLabel149: TQRLabel;
    qrs_circst1: TQRShape;
    QRLabel150: TQRLabel;
    qrs_circst2: TQRShape;
    QRLabel246: TQRLabel;
    qrs_circst3: TQRShape;
    QRLabel257: TQRLabel;
    qrs_circst4: TQRShape;
    QRLabel259: TQRLabel;
    qrs_circst5: TQRShape;
    QRLabel260: TQRLabel;
    qrs_circst6: TQRShape;
    QRLabel261: TQRLabel;
    qrs_circst7: TQRShape;
    QRLabel262: TQRLabel;
    qrs_circst8: TQRShape;
    QRLabel155: TQRLabel;
    qrs_dietst1: TQRShape;
    QRLabel156: TQRLabel;
    qrs_dietst2: TQRShape;
    QRLabel157: TQRLabel;
    qrs_dietst3: TQRShape;
    QRLabel158: TQRLabel;
    qrs_dietst4: TQRShape;
    QRLabel159: TQRLabel;
    qrs_dietst5: TQRShape;
    QRLabel160: TQRLabel;
    qrs_dietst6: TQRShape;
    QRLabel161: TQRLabel;
    qrs_dietst7: TQRShape;
    QRLabel162: TQRLabel;
    qrs_dietst8: TQRShape;
    QRLabel163: TQRLabel;
    qrs_dietst9: TQRShape;
    QRLabel277: TQRLabel;
    qrs_dietst10: TQRShape;
    QRLabel278: TQRLabel;
    qrs_dietst11: TQRShape;
    QRLabel152: TQRLabel;
    qrs_neost1: TQRShape;
    QRLabel153: TQRLabel;
    qrs_neost2: TQRShape;
    QRLabel279: TQRLabel;
    qrs_neost3: TQRShape;
    QRLabel280: TQRLabel;
    qrs_neost4: TQRShape;
    QRLabel281: TQRLabel;
    qrs_neost5: TQRShape;
    QRLabel282: TQRLabel;
    qrs_neost6: TQRShape;
    QRLabel283: TQRLabel;
    qrs_neost7: TQRShape;
    QRLabel284: TQRLabel;
    qrl_neost: TQRLabel;
    QRLabel170: TQRLabel;
    qrs_skin1: TQRShape;
    QRLabel171: TQRLabel;
    qrs_skin2: TQRShape;
    QRLabel285: TQRLabel;
    qrs_skin3: TQRShape;
    QRLabel286: TQRLabel;
    qrs_skin4: TQRShape;
    QRLabel287: TQRLabel;
    qrs_skin5: TQRShape;
    QRLabel288: TQRLabel;
    qrs_skin6: TQRShape;
    QRLabel289: TQRLabel;
    qrs_skinst13: TQRShape;
    QRLabel106: TQRLabel;
    QRLabel175: TQRLabel;
    qrs_support1: TQRShape;
    QRLabel180: TQRLabel;
    qrs_support2: TQRShape;
    QRLabel307: TQRLabel;
    qrs_support3: TQRShape;
    QRLabel308: TQRLabel;
    qrs_support4: TQRShape;
    QRLabel309: TQRLabel;
    qrs_support5: TQRShape;
    QRLabel311: TQRLabel;
    qrs_support7: TQRShape;
    QRLabel312: TQRLabel;
    qrl_support: TQRLabel;
    qrl_nerves: TQRLabel;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel35: TQRLabel;
    qrl_PatNo: TQRLabel;
    qrl_patname: TQRLabel;
    qrl_ci: TQRLabel;
    qrl_sex: TQRLabel;
    qrl_chadr: TQRLabel;
    qrl_meddept: TQRLabel;
    qrl_ward: TQRLabel;
    qrl_admdate: TQRLabel;
    QRLabel7: TQRLabel;
    qrs_famcase1: TQRShape;
    QRLabel58: TQRLabel;
    qrs_famcase2: TQRShape;
    QRLabel59: TQRLabel;
    qrs_famcase3: TQRShape;
    QRLabel60: TQRLabel;
    qrs_famcase5: TQRShape;
    QRLabel61: TQRLabel;
    qrs_famcase6: TQRShape;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    qrs_famcase4: TQRShape;
    QRLabel64: TQRLabel;
    qrl_famcase: TQRLabel;
    qrl_famrela: TQRLabel;
    qrl_stool: TQRLabel;
    QRLabel338: TQRLabel;
    QRLabel340: TQRLabel;
    qrs_edu41: TQRShape;
    qrs_edu42: TQRShape;
    QRLabel65: TQRLabel;
    qrs_edu9: TQRShape;
    QRLabel109: TQRLabel;
    qrl_skinst: TQRLabel;
    QRLabel111: TQRLabel;
    qrl_Activest: TQRLabel;
    QRLabel45: TQRLabel;
    qrl_eyest: TQRLabel;
    qrs_Tabaco: TQRShape;
    QRLabel107: TQRLabel;
    qrs_noTabaco: TQRShape;
    qrs_pastTabaco: TQRShape;
    QRLabel108: TQRLabel;
    QRLabel110: TQRLabel;
    qrs_eduTabaco: TQRShape;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    qrl_Frecdate: TQRLabel;
    QRLabel114: TQRLabel;
    qrl_Nation: TQRLabel;
    QRLabel115: TQRLabel;
    qrl_Race: TQRLabel;
    QRLabel116: TQRLabel;
    qrl_Pay: TQRLabel;
    QRLabel117: TQRLabel;
    qrl_Bokji: TQRLabel;
    QRLabel118: TQRLabel;
    qrl_Know: TQRLabel;
    QRLabel119: TQRLabel;
    qrs_Dysphagia1: TQRShape;
    QRLabel120: TQRLabel;
    qrs_Dysphagia2: TQRShape;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    qrl_Stress: TQRLabel;
    qrl_Arganti: TQRLabel;
    QRLabel172: TQRLabel;
    qrs_Safeedu2: TQRShape;
    QRLabel173: TQRLabel;
    qrs_Safeedu3: TQRShape;
    qrs_Safeedu4: TQRShape;
    qrs_Safeedu5: TQRShape;
    QRLabel176: TQRLabel;
    QRLabel177: TQRLabel;
    QRLabel178: TQRLabel;
    QRLabel179: TQRLabel;
    qrm_Etc: TQRMemo;
    QRShape11: TQRShape;
    QRLabel233: TQRLabel;
    QRLabel320: TQRLabel;
    QRLabel321: TQRLabel;
    QRLabel322: TQRLabel;
    QRLabel323: TQRLabel;
    QRLabel324: TQRLabel;
    QRLabel325: TQRLabel;
    QRLabel350: TQRLabel;
    qrs_Outedu11: TQRShape;
    QRLabel351: TQRLabel;
    qrs_Outedu12: TQRShape;
    QRLabel352: TQRLabel;
    qrs_Outedu21: TQRShape;
    QRLabel356: TQRLabel;
    qrs_Outedu22: TQRShape;
    QRLabel357: TQRLabel;
    qrs_Wait1: TQRShape;
    QRLabel358: TQRLabel;
    qrs_Wait2: TQRShape;
    QRLabel359: TQRLabel;
    qrs_Wait3: TQRShape;
    QRLabel360: TQRLabel;
    qrs_Wait4: TQRShape;
    QRLabel361: TQRLabel;
    qrl_Waitetc: TQRLabel;
    qrs_Outedu31: TQRShape;
    QRLabel363: TQRLabel;
    qrs_Outedu32: TQRShape;
    QRLabel364: TQRLabel;
    qrs_Daesang1: TQRShape;
    QRLabel365: TQRLabel;
    qrs_Daesang2: TQRShape;
    qrs_Daesang3: TQRShape;
    QRLabel366: TQRLabel;
    QRLabel367: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel223: TQRLabel;
    QRLabel230: TQRLabel;
    QRLabel231: TQRLabel;
    QRLabel232: TQRLabel;
    QRLabel234: TQRLabel;
    QRLabel235: TQRLabel;
    QRLabel236: TQRLabel;
    QRLabel237: TQRLabel;
    qrs_bloody: TQRShape;
    QRLabel238: TQRLabel;
    QRLabel244: TQRLabel;
    qrs_bloodn: TQRShape;
    qrl_Culturetc: TQRLabel;
    qrs_pain13: TQRShape;
    QRLabel290: TQRLabel;
    qrs_condst1: TQRShape;
    qrs_condst2: TQRShape;
    qrs_condst3: TQRShape;
    qrs_condst4: TQRShape;
    QRLabel291: TQRLabel;
    QRLabel292: TQRLabel;
    QRLabel293: TQRLabel;
    QRLabel294: TQRLabel;
    qrs_concom1: TQRShape;
    QRLabel295: TQRLabel;
    qrs_concom2: TQRShape;
    QRLabel296: TQRLabel;
    qrs_concom3: TQRShape;
    QRLabel297: TQRLabel;
    qrs_support8: TQRShape;
    QRLabel299: TQRLabel;
    qrs_eyest5: TQRShape;
    QRLabel300: TQRLabel;
    qrs_respst9: TQRShape;
    QRLabel302: TQRLabel;
    qrs_circst9: TQRShape;
    QRLabel303: TQRLabel;
    qrs_neost8: TQRShape;
    QRLabel304: TQRLabel;
    qrs_dietst12: TQRShape;
    QRLabel305: TQRLabel;
    qrs_eyest6: TQRShape;
    QRLabel306: TQRLabel;
    qrs_eyest7: TQRShape;
    QRLabel310: TQRLabel;
    qrs_earst6: TQRShape;
    QRLabel301: TQRLabel;
    qrs_earst7: TQRShape;
    QRLabel313: TQRLabel;
    qrs_earst8: TQRShape;
    QRLabel314: TQRLabel;
    qrs_edu311: TQRShape;
    QRLabel298: TQRLabel;
    QRLabel243: TQRLabel;
    QRLabel316: TQRLabel;
    qrs_urinkd2: TQRShape;
    QRLabel102: TQRLabel;
    qrs_urinkd5: TQRShape;
    QRLabel317: TQRLabel;
    qrs_urinkd6: TQRShape;
    QRLabel318: TQRLabel;
    qrs_urinkd7: TQRShape;
    QRLabel319: TQRLabel;
    qrs_urinkd8: TQRShape;
    QRLabel326: TQRLabel;
    qrs_urinkd9: TQRShape;
    QRLabel327: TQRLabel;
    QRLabel328: TQRLabel;
    qrs_skin7: TQRShape;
    QRLabel329: TQRLabel;
    qrs_skin8: TQRShape;
    QRLabel330: TQRLabel;
    QRLabel331: TQRLabel;
    qrs_nerves4: TQRShape;
    qrs_palsy6: TQRShape;
    QRLabel332: TQRLabel;
    QRLabel333: TQRLabel;
    QRLabel334: TQRLabel;
    qrs_bringN: TQRShape;
    QRLabel335: TQRLabel;
    qrs_bringY: TQRShape;
    QRLabel336: TQRLabel;
    QRLabel339: TQRLabel;
    QRLabel188: TQRLabel;
    QRLabel240: TQRLabel;
    QRLabel342: TQRLabel;
    QRLabel190: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MNW921B3: TMNW921B3;

implementation

{$R *.dfm}

procedure TMNW921B3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TMNW921B3.FormDestroy(Sender: TObject);
begin
    MNW921B3 := Nil;
end;

end.
