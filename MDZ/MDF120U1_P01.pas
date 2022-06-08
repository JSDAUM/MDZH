unit MDF120U1_P01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, TeEngine, Series, TeeProcs, Chart, Qrctrls, Grids,
  UltraGrid, jpeg;

type
  TMDF120F1_P01 = class(TForm)
    qr_Search: TQuickRep;
    QRBand2: TQRBand;
    qrlb_Date1: TQRLabel;
    qrlb_Weight1: TQRLabel;
    qrlb_Height1: TQRLabel;
    qrlb_Item11: TQRLabel;
    qrlb_Item21: TQRLabel;
    qrlb_Item31: TQRLabel;
    qrlb_Date2: TQRLabel;
    qrlb_Weight2: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRSysData22: TQRSysData;
    QRBand1: TQRBand;
    QR: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape24: TQRShape;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape26: TQRShape;
    QRImage2: TQRImage;
    QRLabel42: TQRLabel;
    QRShape27: TQRShape;
    QRLabel48: TQRLabel;
    QRLabel45: TQRLabel;
    qrlb_sexage: TQRLabel;
    qrl_chadr: TQRLabel;
    QRLabel47: TQRLabel;
    qrl_ward: TQRLabel;
    qrl_meddept: TQRLabel;
    QRLabel46: TQRLabel;
    qrl_ci: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel7: TQRLabel;
    qrlb_patname: TQRLabel;
    qrlb_PatNo: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape7: TQRShape;
    QRShape12: TQRShape;
    QRShape10: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape18: TQRShape;
    QRLabel14: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qr_SearchNeedData(Sender: TObject; var MoreData: Boolean);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
   CurrentIndex : Integer;
    { Public declarations }
  end;

var
   MDF120F1_P01: TMDF120F1_P01;

implementation

uses MDG300U1, VarCom, MDC100U1;

{$R *.DFM}

procedure TMDF120F1_P01.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
   MDF120F1_P01 := Nil;
end;

procedure TMDF120F1_P01.qr_SearchNeedData(Sender: TObject;
  var MoreData: Boolean);
begin

   MoreData := (CurrentIndex < mdg300f1.ugd_alllist.RowCount);
   
   if MoreData then
   begin
      qrlb_Date1.Caption   := MDG300F1.ugd_AllList.Cells[0,CurrentIndex];
      qrlb_Weight1.Caption := MDG300F1.ugd_AllList.Cells[1,CurrentIndex];
      qrlb_Height1.Caption := MDG300F1.ugd_AllList.Cells[2,CurrentIndex];
      qrlb_Item11.Caption  := MDG300F1.ugd_AllList.Cells[3,CurrentIndex];
      qrlb_Item21.Caption  := MDG300F1.ugd_AllList.Cells[4,CurrentIndex];
      qrlb_Item31.Caption  := MDG300F1.ugd_AllList.Cells[5,CurrentIndex];
      QRLabel13.Caption    := MDG300F1.ugd_AllList.Cells[6,CurrentIndex];
      QRLabel14.Caption    := MDG300F1.ugd_AllList.Cells[7,CurrentIndex];
      qrlb_Date2.Caption   := MDG300F1.ugd_AllList.Cells[8,CurrentIndex];
      qrlb_Weight2.Caption := MDG300F1.ugd_AllList.Cells[9,CurrentIndex];
   end;
   
   Inc(CurrentIndex);
end;

procedure TMDF120F1_P01.FormCreate(Sender: TObject);
begin
    CurrentIndex :=0;
end;

end.
