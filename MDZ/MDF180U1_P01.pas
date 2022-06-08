unit MDF180U1_P01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, TeEngine, Series, TeeProcs, Chart, Qrctrls, jpeg;

type
  TMDF180F1_P01 = class(TForm)
    qr_Search: TQuickRep;
    QRBand2: TQRBand;
    QRSysData22: TQRSysData;
    qrlb_Date1: TQRLabel;
    qrlb_Weight1: TQRLabel;
    qrlb_Height1: TQRLabel;
    qrlb_Item11: TQRLabel;
    qrlb_Item21: TQRLabel;
    qrlb_Item31: TQRLabel;
    qrlb_Date2: TQRLabel;
    qrlb_Weight2: TQRLabel;
    qrlb_Height2: TQRLabel;
    qrlb_Item12: TQRLabel;
    qrlb_Item22: TQRLabel;
    qrlb_Item32: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape25: TQRShape;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QR: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape24: TQRShape;
    QRShape1: TQRShape;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure qr_SearchNeedData(Sender: TObject; var MoreData: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CircleCnt, StartInt, ugdCnt : Integer;
  end;

var
  MDF180F1_P01: TMDF180F1_P01;

implementation

uses VarCom, MDC100U1, MDG300U1;

{$R *.DFM}

procedure TMDF180F1_P01.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TMDF180F1_P01.FormDestroy(Sender: TObject);
begin
   MDF180F1_P01 := Nil;
end;

procedure TMDF180F1_P01.qr_SearchNeedData(Sender: TObject;
  var MoreData: Boolean);
begin

   if StartInt > CircleCnt then
      MoreData := False
   else
      MoreData := True;

   if MoreData then
   begin
      qrlb_Date1.Caption   := MDG300F1.ugd_AllList.Cells[0,Startint];
      qrlb_Weight1.Caption := MDG300F1.ugd_AllList.Cells[1,Startint];
      qrlb_Height1.Caption := MDG300F1.ugd_AllList.Cells[2,Startint];
      qrlb_Item11.Caption  := MDG300F1.ugd_AllList.Cells[3,Startint];
      qrlb_Item21.Caption  := MDG300F1.ugd_AllList.Cells[4,Startint];
      qrlb_Item31.Caption  := MDG300F1.ugd_AllList.Cells[5,Startint];

      if ugdCnt >= (CirCleCnt + StartInt) then
      begin
         qrlb_Date2.Caption   := MDG300F1.ugd_AllList.Cells[0,(CirCleCnt + StartInt)];
         qrlb_Weight2.Caption := MDG300F1.ugd_AllList.Cells[1,(CirCleCnt + StartInt)];
         qrlb_Height2.Caption := MDG300F1.ugd_AllList.Cells[2,(CirCleCnt + StartInt)];
         qrlb_Item12.Caption  := MDG300F1.ugd_AllList.Cells[3,(CirCleCnt + StartInt)];
         qrlb_Item22.Caption  := MDG300F1.ugd_AllList.Cells[4,(CirCleCnt + StartInt)];
         qrlb_Item32.Caption  := MDG300F1.ugd_AllList.Cells[5,(CirCleCnt + StartInt)];
      end
      else
      begin
         qrlb_Date2.Caption   := '';
         qrlb_Weight2.Caption := '';
         qrlb_Height2.Caption := '';
         qrlb_Item12.Caption  := '';
         qrlb_Item22.Caption  := '';
         qrlb_Item32.Caption  := '';
      end;
      Inc(StartInt);
   end
   else
   begin
      qrlb_Date1.Caption := '';
      qrlb_Date2.Caption := '';
      qrlb_Weight1.Caption := '';
      qrlb_Weight2.Caption := '';
      qrlb_Height1.Caption := '';
      qrlb_Height2.Caption := '';
      qrlb_Item11.Caption := '';
      qrlb_Item12.Caption := '';
      qrlb_Item21.Caption := '';
      qrlb_Item22.Caption := '';
      qrlb_Item31.Caption := '';
      qrlb_Item32.Caption := '';
   end;
end;

procedure TMDF180F1_P01.FormCreate(Sender: TObject);
begin
   StartInt := 1;
end;

end.
