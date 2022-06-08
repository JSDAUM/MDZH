unit MDN634U2_P01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;

type
  TMDN634F2_P01 = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRBand2: TQRBand;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    qrlb_none: TQRLabel;
    qrlb_dzh1: TQRLabel;
    qrlb_dzh2: TQRLabel;
    qrlb_dzh3: TQRLabel;
    qrlb_dzh4: TQRLabel;
    qrlb_dzh9: TQRLabel;
    qrlb_dzh8: TQRLabel;
    qrlb_dzh5: TQRLabel;
    qrlb_dzh7: TQRLabel;
    qrlb_dzh6: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel118: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel120: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    qrlb_Back2: TQRLabel;
    QRLabel126: TQRLabel;
    QRLabel127: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    qrlb_Back3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape2: TQRShape;
    qrlb_admdate: TQRLabel;
    qrlb_telno1: TQRLabel;
    qrlb_address: TQRLabel;
    qrlb_age: TQRLabel;
    qrlb_marryn1: TQRLabel;
    QRLabel25: TQRLabel;
    qrlb_marryyn2: TQRLabel;
    qrlb_bp: TQRLabel;
    qrlb_pulse: TQRLabel;
    qrlb_bt: TQRLabel;
    qrlb_fht: TQRLabel;
    qrlb_religion: TQRLabel;
    qrlb_husrel: TQRLabel;
    qrlb_prewgt: TQRLabel;
    qrlb_Aftwgt: TQRLabel;
    qrlb_Height: TQRLabel;
    qrlb_bldabo: TQRLabel;
    qrlb_rh: TQRLabel;
    qrlb_husbld: TQRLabel;
    qrlb_husrh: TQRLabel;
    qrlb_lmp: TQRLabel;
    qrlb_edc: TQRLabel;
    qrlb_dgpwks: TQRLabel;
    qrlb_dgpday: TQRLabel;
    qrlb_full: TQRLabel;
    qrlb_pre: TQRLabel;
    qrlb_abort: TQRLabel;
    qrlb_lineb: TQRLabel;
    qrlb_xray1: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    qrlb_xray2: TQRLabel;
    qrlb_xray: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    qrlb_prgdrg2: TQRLabel;
    qrlb_prgdrg: TQRLabel;
    qrlb_prgsmk: TQRLabel;
    qrlb_prgsmk1: TQRLabel;
    QRLabel139: TQRLabel;
    QRLabel140: TQRLabel;
    qrlb_prgsmk2: TQRLabel;
    QRLabel143: TQRLabel;
    QRLabel144: TQRLabel;
    qrlb_prgdrk2: TQRLabel;
    qrlb_prgdrk: TQRLabel;
    QRLabel148: TQRLabel;
    QRLabel149: TQRLabel;
    qrlb_dimthd2: TQRLabel;
    qrlb_dimthd: TQRLabel;
    QRLabel153: TQRLabel;
    QRLabel154: TQRLabel;
    qrlb_alg2: TQRLabel;
    qrlb_alg: TQRLabel;
    qrlb_etc: TQRLabel;
    QRShape3: TQRShape;
    qrlb_dew1: TQRLabel;
    QRLabel163: TQRLabel;
    QRLabel164: TQRLabel;
    qrlb_dew2: TQRLabel;
    qrlb_rom1: TQRLabel;
    QRLabel171: TQRLabel;
    QRLabel172: TQRLabel;
    qrlb_rom2: TQRLabel;
    qrlb_pain1: TQRLabel;
    QRLabel179: TQRLabel;
    QRLabel180: TQRLabel;
    qrlb_pain2: TQRLabel;
    qrlb_painper: TQRLabel;
    qrlb_inborn1: TQRLabel;
    QRLabel188: TQRLabel;
    QRLabel189: TQRLabel;
    qrlb_inborn2: TQRLabel;
    qrlb_inborn: TQRLabel;
    qrlb_borntime: TQRLabel;
    qrlb_babysex1: TQRLabel;
    QRLabel198: TQRLabel;
    QRLabel199: TQRLabel;
    qrlb_babyWeight: TQRLabel;
    qrlb_neck: TQRLabel;
    QRLabel208: TQRLabel;
    QRLabel209: TQRLabel;
    qrlb_neck2: TQRLabel;
    QRLabel216: TQRLabel;
    QRLabel217: TQRLabel;
    qrlb_stlcol2: TQRLabel;
    qrlb_stlcol: TQRLabel;
    QRLabel226: TQRLabel;
    QRLabel227: TQRLabel;
    qrlb_revive2: TQRLabel;
    qrlb_oxigen1: TQRLabel;
    QRLabel234: TQRLabel;
    QRLabel235: TQRLabel;
    qrlb_oxigen2: TQRLabel;
    qrlb_intu1: TQRLabel;
    QRLabel242: TQRLabel;
    QRLabel243: TQRLabel;
    qrlb_intu2: TQRLabel;
    qrlb_nur: TQRLabel;
    QRLabel250: TQRLabel;
    QRLabel251: TQRLabel;
    qrlb_nicu: TQRLabel;
    QRShape4: TQRShape;
    qrlb_neck1: TQRLabel;
    qrlb_stlcol1: TQRLabel;
    qrlb_revive1: TQRLabel;
    qrlb_dimthd1: TQRLabel;
    qrlb_alg1: TQRLabel;
    qrlb_prgdrk1: TQRLabel;
    qrlb_prgdrg1: TQRLabel;
    qrlb_marryyn1: TQRLabel;
    QRLabel61: TQRLabel;
    qrlb_pri: TQRLabel;
    qrlb_delvnur: TQRLabel;
    qrlb_bodychk: TQRLabel;
    qrlb_delvdr: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    qrlb_amnio2: TQRLabel;
    qrlb_amnio1: TQRLabel;
    QRLabel23: TQRLabel;
    qrlb_Patno: TQRLabel;
    QRLabel27: TQRLabel;
    qrlb_patname: TQRLabel;
    QRLabel28: TQRLabel;
    qrlb_citizen: TQRLabel;
    QRLabel29: TQRLabel;
    qrlb_meddept: TQRLabel;
    QRLabel30: TQRLabel;
    qrlb_patsex: TQRLabel;
    QRShape5: TQRShape;
    QRLabel20: TQRLabel;
    qrlb_telno2: TQRLabel;
    QRLabel21: TQRLabel;
    qrlb_babyscore: TQRLabel;
    qrlb_prgsketc: TQRLabel;
    qrlb_Type: TQRLabel;
    qrlb_necktype: TQRLabel;
    qrlb_HosName: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRLabel37: TQRLabel;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRLabel38: TQRLabel;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRLabel39: TQRLabel;
    qrlb_baby1: TQRLabel;
    qrlb_Back1: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRSysData22: TQRSysData;
    QRLabel43: TQRLabel;
    qrlb_babyscore5: TQRLabel;
    qrlb_PrgSick1: TQRLabel;
    QRLabel44: TQRLabel;
    qrlb_PrgSick2: TQRLabel;
    QRLabel48: TQRLabel;
    qrlb_PrgSick3: TQRLabel;
    QRLabel50: TQRLabel;
    qrlb_PrgSick4: TQRLabel;
    QRLabel52: TQRLabel;
    qrlb_PrgSick5: TQRLabel;
    QRLabel54: TQRLabel;
    qrlb_PrgSick6: TQRLabel;
    QRLabel56: TQRLabel;
    qrlb_Deltype: TQRLabel;
    QRLabel47: TQRLabel;
    qrlb_Maturity: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel5: TQRLabel;
    qrlb_Apgar11: TQRLabel;
    QRLabel51: TQRLabel;
    qrlb_Apgar13: TQRLabel;
    QRLabel55: TQRLabel;
    qrlb_Apgar15: TQRLabel;
    QRLabel60: TQRLabel;
    qrlb_Apgar12: TQRLabel;
    QRLabel64: TQRLabel;
    qrlb_Apgar14: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel82: TQRLabel;
    QRShape32: TQRShape;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    qrlb_Apgar21: TQRLabel;
    QRLabel87: TQRLabel;
    qrlb_Apgar23: TQRLabel;
    QRLabel89: TQRLabel;
    qrlb_Apgar25: TQRLabel;
    QRLabel125: TQRLabel;
    qrlb_Apgar22: TQRLabel;
    QRLabel131: TQRLabel;
    qrlb_Apgar24: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    QRLabel135: TQRLabel;
    QRLabel136: TQRLabel;
    QRLabel22: TQRLabel;
    qrlb_husname: TQRLabel;
    QRLabel45: TQRLabel;
    qrlb_abortion: TQRLabel;
    qrlb_babysex2: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MDN634F2_P01: TMDN634F2_P01;

implementation

uses MDG300U1, VarCom, MDC100U1;

{$R *.DFM}


procedure TMDN634F2_P01.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MDN634F2_P01 := nil;
  Action := Cafree;
end;

end.
