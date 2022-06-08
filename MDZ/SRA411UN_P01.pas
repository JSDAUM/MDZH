unit SRA411UN_P01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, QRCtrls, QuickRpt, ExtCtrls;

type
  TSRA411FN_P01 = class(TForm)
    qr_1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    qrlb_Patno: TQRLabel;
    qrlb_Patnm: TQRLabel;
    qrlb_Wardno: TQRLabel;
    qrlb_SexAGE: TQRLabel;
    qrlb_Resno: TQRLabel;
    qrlb_Meddept: TQRLabel;
    qrlb_Diagnm: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel13: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel15: TQRLabel;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape14: TQRShape;
    QRShape16: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    qrs_etc: TQRShape;
    qrs_asprin: TQRShape;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    qrlb_Weight: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape6: TQRShape;
    qrs_AleY: TQRShape;
    qrs_AleN: TQRShape;
    QRLabel17: TQRLabel;
    qrlb_Ale: TQRLabel;
    QRShape7: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    qrs_asprinY: TQRShape;
    QRLabel25: TQRLabel;
    QaspiText: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    Qetcname: TQRLabel;
    qrlb_comma: TQRLabel;
    qrs_asprinN: TQRShape;
    QRLabel18: TQRLabel;
    Qcbx_medhisN: TQRShape;
    Q_medhisN: TQRLabel;
    qrs_wapa: TQRShape;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    qrs_wapaY: TQRShape;
    QRLabel41: TQRLabel;
    QwapaText: TQRLabel;
    QRLabel46: TQRLabel;
    qrs_wapaN: TQRShape;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    qrs_etcY: TQRShape;
    QRLabel51: TQRLabel;
    QetcText: TQRLabel;
    QRLabel52: TQRLabel;
    qrs_etcN: TQRShape;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QagreeY: TQRShape;
    QRLabel56: TQRLabel;
    QagreeN: TQRShape;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QwithguardY: TQRShape;
    QRLabel59: TQRLabel;
    QwithguardN: TQRShape;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QfastoffY: TQRShape;
    QRLabel62: TQRLabel;
    QfastoffN: TQRShape;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    Qmouth1: TQRShape;
    QRLabel65: TQRLabel;
    Qmouth2: TQRShape;
    QRLabel66: TQRLabel;
    Qmouthetc: TQRShape;
    QRLabel67: TQRLabel;
    Qed_mouthetc: TQRLabel;
    Qmouthnone: TQRShape;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QIntclean1: TQRShape;
    QRLabel70: TQRLabel;
    QIntclean2: TQRShape;
    QRLabel71: TQRLabel;
    QIntclean3: TQRShape;
    QRLabel74: TQRLabel;
    QIntclean4: TQRShape;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    Qstmdt: TQRLabel;
    QRShape27: TQRShape;
    QRLabel32: TQRLabel;
    QsickhisY: TQRShape;
    QRLabel33: TQRLabel;
    QsickhisN: TQRShape;
    QRLabel34: TQRLabel;
    Qhis1: TQRShape;
    QRLabel35: TQRLabel;
    Qhis5: TQRShape;
    QRLabel77: TQRLabel;
    Qhis9: TQRShape;
    QRLabel79: TQRLabel;
    Qhis2: TQRShape;
    QRLabel80: TQRLabel;
    Qhis6: TQRShape;
    QRLabel81: TQRLabel;
    Qhis3: TQRShape;
    QRLabel82: TQRLabel;
    Qhis7: TQRShape;
    QRLabel83: TQRLabel;
    Qhis4: TQRShape;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    Qhis8: TQRShape;
    Qhisetc: TQRShape;
    QRLabel86: TQRLabel;
    Qed_sickhis: TQRLabel;
    QRLabel87: TQRLabel;
    Qed_bph: TQRLabel;
    Qed_bpl: TQRLabel;
    QRLabel90: TQRLabel;
    Qed_pr: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    Qed_sao2: TQRLabel;
    QRLabel95: TQRLabel;
    Qed_rr: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRShape13: TQRShape;
    QRLabel24: TQRLabel;
    QmskRecdate1: TQRLabel;
    QRLabel99: TQRLabel;
    Qed_cdrecid1: TQRLabel;
    Qed_recid1: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel42: TQRLabel;
    QRShape15: TQRShape;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRLabel110: TQRLabel;
    QRShape24: TQRShape;
    QRLabel114: TQRLabel;
    QRShape30: TQRShape;
    QRLabel115: TQRLabel;
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
    QRLabel1: TQRLabel;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    qrl_1: TQRLabel;
    qrl_2: TQRLabel;
    qrl_3: TQRLabel;
    qrl_4: TQRLabel;
    qrl_5: TQRLabel;
    qrl_6: TQRLabel;
    qrl_7: TQRLabel;
    qrl_8: TQRLabel;
    qrl_9: TQRLabel;
    qrl_10: TQRLabel;
    qrl_11: TQRLabel;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
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
  SRA411FN_P01: TSRA411FN_P01;

implementation

uses MDG300U1;

{$R *.dfm}

procedure TSRA411FN_P01.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    SRA411FN_P01 := nil;
    Action := CaFree;
end;

procedure TSRA411FN_P01.FormCreate(Sender: TObject);
begin
  idx_srt := 1;
end;

procedure TSRA411FN_P01.qr_1NeedData(Sender: TObject;
  var MoreData: Boolean);
begin

   Moredata := (Idx_srt <  Cnt_ugd);

   if MoreData then
   begin
      qrl_1.Caption  := MDG300F1.ugd_List.Cells[0,Idx_srt];
      qrl_2.Caption := MDG300F1.ugd_List.Cells[1,Idx_srt];
      qrl_3.Caption := MDG300F1.ugd_List.Cells[2,Idx_srt];
      qrl_4.Caption       := MDG300F1.ugd_List.Cells[3,Idx_srt];
      qrl_5.Caption       := MDG300F1.ugd_List.Cells[4,Idx_srt];
      qrl_6.Caption     := MDG300F1.ugd_List.Cells[5,Idx_srt];
      qrl_7.Caption       := MDG300F1.ugd_List.Cells[6,Idx_srt];
      qrl_8.Caption   := MDG300F1.ugd_List.Cells[7,Idx_srt];
      qrl_9.Caption  := MDG300F1.ugd_List.Cells[8,Idx_srt];
      qrl_10.Caption    := MDG300F1.ugd_List.Cells[9,Idx_srt];
      qrl_11.Caption   := MDG300F1.ugd_List.Cells[10,Idx_srt];
      Inc(Idx_srt);
   end;
end;

end.
