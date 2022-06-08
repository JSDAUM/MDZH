unit SRA411UN_P02;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, QRCtrls, QuickRpt, ExtCtrls;

type
  TSRA411FN_P02 = class(TForm)
    qr_1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRLabel1: TQRLabel;
    QRBand1: TQRBand;
    QRLabel89: TQRLabel;
    QRLabel108: TQRLabel;
    QRShape46: TQRShape;
    QRLabel88: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel104: TQRLabel;
    cdSet: TClientDataSet;
    QRLabel3: TQRLabel;
    qrlb_Patno: TQRLabel;
    QRLabel4: TQRLabel;
    qrlb_Patnm: TQRLabel;
    QRLabel5: TQRLabel;
    qrlb_Wardno: TQRLabel;
    QRLabel6: TQRLabel;
    qrlb_SexAGE: TQRLabel;
    qrlb_Diagnm: TQRLabel;
    QRLabel9: TQRLabel;
    qrlb_Meddept: TQRLabel;
    QRLabel8: TQRLabel;
    qrlb_Resno: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel12: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    cdSetQDATA1: TStringField;
    cdSetQDATA2: TStringField;
    cdSetQDATA3: TStringField;
    cdSetQDATA4: TStringField;
    cdSetQDATA5: TStringField;
    cdSetQDATA6: TStringField;
    cdSetQDATA7: TStringField;
    cdSetQDATA8: TStringField;
    cdSetQDATA9: TStringField;
    cdSetQDATA10: TStringField;
    cdSetQDATA11: TStringField;
    PageFooterBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape21: TQRShape;
    QRShape23: TQRShape;
    QRShape20: TQRShape;
    QRShape24: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    Qrbt_state11: TQRShape;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape25: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape18: TQRShape;
    Qrbt_state12: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    Qrbt_state13: TQRShape;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape26: TQRShape;
    QRLabel22: TQRLabel;
    Qrbt_state21: TQRShape;
    QRLabel28: TQRLabel;
    Qrbt_state22: TQRShape;
    QRLabel29: TQRLabel;
    Qrbt_state23: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape30: TQRShape;
    QRShape41: TQRShape;
    QRLabel34: TQRLabel;
    Qrbt_state31: TQRShape;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    Qrbt_state32: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    Qrbt_state33: TQRShape;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRShape52: TQRShape;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    Qrbt_state41: TQRShape;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    Qrbt_state42: TQRShape;
    Qrbt_state43: TQRShape;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRLabel65: TQRLabel;
    Qrbt_state51: TQRShape;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    Qrbt_state52: TQRShape;
    Qrbt_state53: TQRShape;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    Qlb_total: TQRLabel;
    Qcb_Allcheck: TQRShape;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    Qcbx_eduetc: TQRShape;
    QRLabel81: TQRLabel;
    Qed_etc: TQRLabel;
    QRLabel83: TQRLabel;
    QRShape66: TQRShape;
    Qcbx_edu5: TQRShape;
    QRLabel84: TQRLabel;
    Qcombx_multi: TQRLabel;
    Qed_multi: TQRLabel;
    QRShape68: TQRShape;
    QmskRecdate4: TQRLabel;
    Qed_recid4: TQRLabel;
    QRLabel10: TQRLabel;
    qrlb_mondate: TQRLabel;
    qrlb_monstate: TQRLabel;
    qrlb_monscore: TQRLabel;
    qrlb_pr: TQRLabel;
    qrlb_rr: TQRLabel;
    qrlb_sao2: TQRLabel;
    qrlb_bp: TQRLabel;
    qrlb_etctxt: TQRLabel;
    qrlb_fallprv: TQRLabel;
    qrlb_recnm: TQRLabel;
    qrlb_motype: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure qr_1NeedData(Sender: TObject; var MoreData: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Idx_srt, Cnt_ugd : integer;
  end;

var
  SRA411FN_P02: TSRA411FN_P02;

implementation

uses MDG300U1;

{$R *.dfm}
procedure TSRA411FN_P02.FormCreate(Sender: TObject);
begin
  Idx_srt := 1;
end;

procedure TSRA411FN_P02.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
  SRA411FN_P02 := NIL;
end;


procedure TSRA411FN_P02.qr_1NeedData(Sender: TObject;
  var MoreData: Boolean);
begin

   Moredata := (Idx_srt <  Cnt_ugd);

   if MoreData then
   begin
      qrlb_mondate.Caption  := MDG300F1.ugd_AllList.Cells[0,Idx_srt];
      qrlb_monstate.Caption := MDG300F1.ugd_AllList.Cells[1,Idx_srt];
      qrlb_monscore.Caption := MDG300F1.ugd_AllList.Cells[2,Idx_srt];
      qrlb_pr.Caption       := MDG300F1.ugd_AllList.Cells[3,Idx_srt];
      qrlb_rr.Caption       := MDG300F1.ugd_AllList.Cells[4,Idx_srt];
      qrlb_sao2.Caption     := MDG300F1.ugd_AllList.Cells[5,Idx_srt];
      qrlb_bp.Caption       := MDG300F1.ugd_AllList.Cells[6,Idx_srt];
      qrlb_etctxt.Caption   := MDG300F1.ugd_AllList.Cells[7,Idx_srt];
      qrlb_fallprv.Caption  := MDG300F1.ugd_AllList.Cells[8,Idx_srt];
      qrlb_recnm.Caption    := MDG300F1.ugd_AllList.Cells[9,Idx_srt];
      qrlb_motype.Caption   := MDG300F1.ugd_AllList.Cells[10,Idx_srt];
      Inc(Idx_srt);
   end;
end;

end.
