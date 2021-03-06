unit MNW925P2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, jpeg;

type
  TMNW925B2 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    qrl_admcou: TQRLabel;
    qrl_admmeth: TQRLabel;
    QRLabel28: TQRLabel;
    qrlb_Back1: TQRLabel;
    qrme_AdmovDet: TQRMemo;
    QRLabel66: TQRLabel;
    QRLabel73: TQRLabel;
    QuickRep2: TQuickRep;
    QRShape124: TQRShape;
    QRShape125: TQRShape;
    QRBand4: TQRBand;
    QRBand3: TQRBand;
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
    qrs_edu6: TQRShape;
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
    QRLabel151: TQRLabel;
    QRLabel188: TQRLabel;
    QRLabel240: TQRLabel;
    QRBand5: TQRBand;
    QRLabel241: TQRLabel;
    QRLabel242: TQRLabel;
    QRLabel243: TQRLabel;
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
    QRLabel218: TQRLabel;
    qrl_ChType: TQRLabel;
    QRShape127: TQRShape;
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
    qrs_feelst8: TQRShape;
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
    QRLabel290: TQRLabel;
    QRLabel291: TQRLabel;
    qrs_urinst1: TQRShape;
    QRLabel292: TQRLabel;
    qrs_urinst2: TQRShape;
    QRLabel293: TQRLabel;
    qrs_urinst3: TQRShape;
    QRLabel294: TQRLabel;
    qrs_urinst4: TQRShape;
    QRLabel295: TQRLabel;
    qrs_urinst5: TQRShape;
    QRLabel296: TQRLabel;
    qrs_urinst6: TQRShape;
    QRLabel297: TQRLabel;
    qrs_urinst7: TQRShape;
    QRLabel298: TQRLabel;
    qrs_urinst8: TQRShape;
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
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    qrl_dgstat: TQRLabel;
    QRLabel52: TQRLabel;
    qrs_dgstat1: TQRShape;
    qrs_dgstat2: TQRShape;
    QRLabel56: TQRLabel;
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
    QRLabel57: TQRLabel;
    QRLabel147: TQRLabel;
    qrs_opyn1: TQRShape;
    QRLabel263: TQRLabel;
    qrs_opyn2: TQRShape;
    qrl_opnm: TQRLabel;
    QRLabel169: TQRLabel;
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
    qrs_skin7: TQRShape;
    QRShape3: TQRShape;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    qrl_Motion1: TQRLabel;
    qrl_Motion2: TQRLabel;
    qrl_Motion3: TQRLabel;
    qrl_Motion4: TQRLabel;
    qrl_Motion5: TQRLabel;
    qrl_Motion6: TQRLabel;
    qrl_Daymot1: TQRLabel;
    QRLabel95: TQRLabel;
    Qrs_Daymot2: TQRShape;
    QRLabel96: TQRLabel;
    Qrs_Daymot3: TQRShape;
    QRLabel97: TQRLabel;
    Qrs_Daymot4: TQRShape;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    qrl_Daymot5: TQRLabel;
    qrl_Daymot6: TQRLabel;
    qrl_Daymot7: TQRLabel;
    qrl_Daymot8: TQRLabel;
    QRLabel106: TQRLabel;
    qrl_Daymot9: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    qrs_Housestr1: TQRShape;
    QRLabel110: TQRLabel;
    qrs_Housestr2: TQRShape;
    QRLabel174: TQRLabel;
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
    QRLabel310: TQRLabel;
    qrs_support6: TQRShape;
    QRLabel311: TQRLabel;
    qrs_support7: TQRShape;
    QRLabel312: TQRLabel;
    qrl_support: TQRLabel;
    QRLabel65: TQRLabel;
    qrs_urinst9: TQRShape;
    QRLabel111: TQRLabel;
    QRLabel92: TQRLabel;
    qrl_Daymot10: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel93: TQRLabel;
    qrs_Housestr3: TQRShape;
    QRLabel102: TQRLabel;
    qrs_Housestr4: TQRShape;
    QRLabel103: TQRLabel;
    qrs_Housestr5: TQRShape;
    QRLabel104: TQRLabel;
    qrs_Housestr6: TQRShape;
    QRLabel105: TQRLabel;
    qrs_Housestr7: TQRShape;
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
    QRLabel37: TQRLabel;
    qrl_icd: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    qrs_argyn1: TQRShape;
    QRLabel55: TQRLabel;
    qrs_argyn2: TQRShape;
    qrl_argdg: TQRLabel;
    qrl_argfd: TQRLabel;
    qrl_argetc: TQRLabel;
    QRLabel148: TQRLabel;
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
    QRLabel163: TQRLabel;
    qrs_dietst9: TQRShape;
    QRLabel277: TQRLabel;
    qrs_dietst10: TQRShape;
    QRLabel278: TQRLabel;
    qrs_dietst11: TQRShape;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    qrs_nerves1: TQRShape;
    QRLabel133: TQRLabel;
    qrs_nerves2: TQRShape;
    QRLabel134: TQRLabel;
    qrs_nerves3: TQRShape;
    QRLabel135: TQRLabel;
    QRLabel136: TQRLabel;
    qrs_nerves5: TQRShape;
    QRLabel137: TQRLabel;
    qrs_nerves6: TQRShape;
    QRLabel138: TQRLabel;
    qrs_nerves7: TQRShape;
    QRLabel273: TQRLabel;
    qrs_nerves8: TQRShape;
    QRLabel274: TQRLabel;
    qrs_nerves9: TQRShape;
    QRLabel47: TQRLabel;
    qrs_nerves4: TQRShape;
    QRLabel45: TQRLabel;
    QRLabel88: TQRLabel;
    qrs_bedsore1: TQRShape;
    QRLabel89: TQRLabel;
    qrs_bedsore2: TQRShape;
    QRLabel90: TQRLabel;
    qrs_bedsore3: TQRShape;
    QRLabel91: TQRLabel;
    qrs_bedsore4: TQRShape;
    QRLabel219: TQRLabel;
    qrl_drink: TQRLabel;
    QRLabel220: TQRLabel;
    qrl_tabaco: TQRLabel;
    QRLabel221: TQRLabel;
    QRLabel224: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    qrl_stool: TQRLabel;
    qrs_sleep1: TQRShape;
    QRLabel120: TQRLabel;
    qrs_sleep2: TQRShape;
    QRLabel121: TQRLabel;
    qrs_sleepdg1: TQRShape;
    QRLabel122: TQRLabel;
    qrs_sleepdg2: TQRShape;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel125: TQRLabel;
    qrs_eyest1: TQRShape;
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
    QRLabel154: TQRLabel;
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
    QRLabel46: TQRLabel;
    qrs_bedsore5: TQRShape;
    QRLabel107: TQRLabel;
    qrs_nerves10: TQRShape;
    QRLabel112: TQRLabel;
    qrlb_Frecdate: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    qrl_Telno3: TQRLabel;
    QRLabel116: TQRLabel;
    qrl_Telno4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel233: TQRLabel;
    QRLabel320: TQRLabel;
    QRLabel321: TQRLabel;
    QRLabel322: TQRLabel;
    qrs_Outedu11: TQRShape;
    QRLabel351: TQRLabel;
    qrs_Outedu12: TQRShape;
    QRLabel352: TQRLabel;
    QRLabel357: TQRLabel;
    qrs_Outedu22: TQRShape;
    QRLabel356: TQRLabel;
    qrs_Outedu21: TQRShape;
    QRLabel323: TQRLabel;
    qrs_Outedu31: TQRShape;
    QRLabel358: TQRLabel;
    qrs_Outedu32: TQRShape;
    QRLabel359: TQRLabel;
    qrs_Outedu33: TQRShape;
    QRLabel360: TQRLabel;
    qrs_Outedu34: TQRShape;
    QRLabel361: TQRLabel;
    qrl_Outedu3oth: TQRLabel;
    QRLabel324: TQRLabel;
    QRLabel325: TQRLabel;
    qrs_Outedu41: TQRShape;
    QRLabel363: TQRLabel;
    qrs_Outedu42: TQRShape;
    QRLabel364: TQRLabel;
    QRLabel367: TQRLabel;
    qrs_Outedu53: TQRShape;
    QRLabel366: TQRLabel;
    qrs_Outedu52: TQRShape;
    QRLabel365: TQRLabel;
    qrs_Outedu51: TQRShape;
    QRLabel350: TQRLabel;
    QRLabel118: TQRLabel;
    qrl_Nation: TQRLabel;
    QRLabel164: TQRLabel;
    qrl_Race: TQRLabel;
    QRLabel173: TQRLabel;
    qrl_Pay: TQRLabel;
    QRLabel165: TQRLabel;
    qrl_Bokji: TQRLabel;
    qrl_arganti: TQRLabel;
    QRLabel167: TQRLabel;
    qrs_Safeedu1: TQRShape;
    QRLabel168: TQRLabel;
    qrs_Safeedu2: TQRShape;
    QRLabel172: TQRLabel;
    qrs_Safeedu3: TQRShape;
    QRLabel176: TQRLabel;
    qrs_Safeedu4: TQRShape;
    QRLabel177: TQRLabel;
    qrs_Safeedu5: TQRShape;
    QRLabel179: TQRLabel;
    QRLabel178: TQRLabel;
    qrme_Eduoth: TQRMemo;
    QRLabel166: TQRLabel;
    QRLabel215: TQRLabel;
    QRLabel222: TQRLabel;
    QRLabel223: TQRLabel;
    qrs_bloody: TQRShape;
    QRLabel225: TQRLabel;
    qrs_bloodn: TQRShape;
    QRLabel226: TQRLabel;
    qrl_Culturetc: TQRLabel;
    QRLabel227: TQRLabel;
    qrs_pain13: TQRShape;
    QRLabel228: TQRLabel;
    qrl_Stress: TQRLabel;
    qrs_eyest5: TQRShape;
    QRLabel229: TQRLabel;
    qrs_earst6: TQRShape;
    QRLabel230: TQRLabel;
    qrl_Appetite: TQRLabel;
    qrl_Wetchg: TQRLabel;
    qrl_Dysphagia: TQRLabel;
    qrs_edu311: TQRShape;
    QRLabel231: TQRLabel;
    qrs_eyest2: TQRShape;
    QRLabel245: TQRLabel;
    qrs_eyest3: TQRShape;
    QRLabel126: TQRLabel;
    qrs_eyest4: TQRShape;
    QRLabel258: TQRLabel;
    qrs_support8: TQRShape;
    QRLabel232: TQRLabel;
    QRLabel234: TQRLabel;
    qrs_skin8: TQRShape;
    QRLabel235: TQRLabel;
    QRLabel236: TQRLabel;
    qrs_dietst12: TQRShape;
    QRLabel237: TQRLabel;
    qrs_respst9: TQRShape;
    QRLabel300: TQRLabel;
    QRLabel301: TQRLabel;
    QRLabel302: TQRLabel;
    qrs_nerves11: TQRShape;
    QRLabel303: TQRLabel;
    qrs_nerves12: TQRShape;
    QRLabel304: TQRLabel;
    qrs_neost8: TQRShape;
    QRLabel244: TQRLabel;
    QRLabel305: TQRLabel;
    qrs_eyest6: TQRShape;
    QRLabel306: TQRLabel;
    qrs_eyest7: TQRShape;
    QRLabel313: TQRLabel;
    qrs_earst7: TQRShape;
    QRLabel314: TQRLabel;
    qrs_earst8: TQRShape;
    QRLabel315: TQRLabel;
    qrs_circst9: TQRShape;
    QRLabel316: TQRLabel;
    qrs_bedsore6: TQRShape;
    qrs_urinst: TQRLabel;
    QRLabel317: TQRLabel;
    QRLabel333: TQRLabel;
    QRLabel299: TQRLabel;
    qrs_bringN: TQRShape;
    QRLabel318: TQRLabel;
    qrs_bringY: TQRShape;
    QRLabel319: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel190: TQRLabel;
    qrl_addr: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MNW925B2: TMNW925B2;

implementation

{$R *.dfm}

procedure TMNW925B2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
end;

procedure TMNW925B2.FormDestroy(Sender: TObject);
begin
    MNW925B2 := nil;
end;

end.
