unit MDP112U1_P01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TMDP112F1_P01 = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRShape8: TQRShape;
    QRShape7: TQRShape;
    QRShape6: TQRShape;
    QRShape58: TQRShape;
    QRShape54: TQRShape;
    QRShape5: TQRShape;
    QRShape49: TQRShape;
    QRShape48: TQRShape;
    QRShape46: TQRShape;
    QRShape42: TQRShape;
    QRShape41: TQRShape;
    QRShape39: TQRShape;
    QRShape37: TQRShape;
    QRShape36: TQRShape;
    QRShape32: TQRShape;
    QRShape30: TQRShape;
    QRShape3: TQRShape;
    QRShape28: TQRShape;
    QRShape23: TQRShape;
    QRShape22: TQRShape;
    QRShape21: TQRShape;
    QRShape20: TQRShape;
    QRShape2: TQRShape;
    QRShape18: TQRShape;
    QRShape13: TQRShape;
    QRShape1: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel43: TQRLabel;
    qlb_Recopatyn2: TQRLabel;
    QRLabel41: TQRLabel;
    qlb_Recopatyn1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel39: TQRLabel;
    qlb_Recogardyn2: TQRLabel;
    qlb_Recogardyn1: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel35: TQRLabel;
    qlb_Idengardyn2: TQRLabel;
    qlb_Idengardyn1: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel291: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel267: TQRLabel;
    QRLabel266: TQRLabel;
    QRLabel265: TQRLabel;
    qlb_Consdrnm1: TQRLabel;
    QRLabel260: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel25: TQRLabel;
    qlb_Targetrel1: TQRLabel;
    QRLabel23: TQRLabel;
    qlb_Target12: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel2: TQRLabel;
    qlb_Constime1: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    qlb_Conscious4: TQRLabel;
    QRLabel166: TQRLabel;
    qlb_Conscious3: TQRLabel;
    QRLabel164: TQRLabel;
    qlb_Conscious2: TQRLabel;
    QRLabel162: TQRLabel;
    QRLabel161: TQRLabel;
    qlb_Conscious1: TQRLabel;
    qlb_SexAge: TQRLabel;
    QRLabel159: TQRLabel;
    QRLabel151: TQRLabel;
    qlb_Idenpatyn2: TQRLabel;
    qlb_Patname: TQRLabel;
    QRLabel149: TQRLabel;
    qlb_Idenpatyn1: TQRLabel;
    QRLabel147: TQRLabel;
    qlb_Basis12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel12: TQRLabel;
    qlb_Basis11: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel1: TQRLabel;
    qlb_Patno: TQRLabel;
    qlb_Target11: TQRLabel;
    qlb_Consdate1: TQRLabel;
    qrm_Medhistory: TQRMemo;
    qrm_Conscont1: TQRMemo;
    qrm_Problist1: TQRMemo;
    qrm_Careplan1: TQRMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MDP112F1_P01: TMDP112F1_P01;

implementation

{$R *.dfm}

procedure TMDP112F1_P01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := CaFree;
end;

procedure TMDP112F1_P01.FormDestroy(Sender: TObject);
begin
   MDP112F1_P01 := nil;
end;

end.
