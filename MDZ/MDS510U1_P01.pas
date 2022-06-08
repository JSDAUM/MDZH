unit MDS510U1_P01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, jpeg;

type
  TMDS510F1_P01 = class(TForm)
    qr_01: TQuickRep;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    qrlb_DrainN: TQRLabel;
    qrlb_DrainY: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    qrlb_TissN: TQRLabel;
    qrlb_TissY: TQRLabel;
    qrlb_Recid: TQRLabel;
    QRShape11: TQRShape;
    qrlb_OpDr3: TQRLabel;
    qrlb_OpDr2: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    qrlb_OpDate: TQRLabel;
    QRLabel14: TQRLabel;
    qrlb_OpDr: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    qrlb_PstIcdNm: TQRLabel;
    qrlb_OpName: TQRLabel;
    qrlb_AnethNm: TQRLabel;
    QRLabel5: TQRLabel;
    qrlb_PreOpName: TQRLabel;
    qrlb_PstIcdNm2: TQRLabel;
    qrlb_PstIcdNm3: TQRLabel;
    qrlb_PstIcdNm4: TQRLabel;
    qrlb_OpName2: TQRLabel;
    qrlb_OpName3: TQRLabel;
    qrlb_OpName4: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRShape14: TQRShape;
    QRLabel7: TQRLabel;
    qlb_patno: TQRLabel;
    qlb_patName: TQRLabel;
    QRLabel16: TQRLabel;
    qlb_ResNo: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    qlb_SexAge: TQRLabel;
    QRLabel48: TQRLabel;
    qlb_chadr: TQRLabel;
    QRLabel47: TQRLabel;
    qrl_ward: TQRLabel;
    qlb_Meddept: TQRLabel;
    QRLabel46: TQRLabel;
    QRImage1: TQRImage;
    QRLabel42: TQRLabel;
    QRShape30: TQRShape;
    QRLabel13: TQRLabel;
    qrlb_PreIcdNm: TQRLabel;
    qrlb_OpDr1: TQRLabel;
    qrlb_bloodrj: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    qrl_blood: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    qrl_sponN: TQRLabel;
    qrl_sponY: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel4: TQRLabel;
    qrlb_OpDr4: TQRLabel;
    QRLabel23: TQRLabel;
    qrlb_Recdate: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel35: TQRLabel;
    qrlb_Opstm: TQRLabel;
    qrlb_Opetm: TQRLabel;
    qrme_data: TQRMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MDS510F1_P01: TMDS510F1_P01;

implementation

{$R *.DFM}

procedure TMDS510F1_P01.FormCreate(Sender: TObject);
var i : LongInt;
begin
   for i := 0 to ComponentCount -1 do
   begin
      if Components[i] is TQRLabel then
         if (Components[i] as TQRLabel).Caption = '¡î' then
            (Components[i] as TQRLabel).Caption := '';
   end;


end;
procedure TMDS510F1_P01.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := CaFree;
end;

procedure TMDS510F1_P01.FormDestroy(Sender: TObject);
begin
   MDS510F1_P01 := nil;
end;

end.
