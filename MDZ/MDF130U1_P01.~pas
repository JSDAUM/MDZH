unit MDF130U1_P01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, TeEngine, Series, TeeProcs, Chart, jpeg;

type
  TMDF130F1_P01 = class(TForm)
    qr_IO: TQuickRep;
    QRBand2: TQRBand;
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel20: TQRLabel;
    QRShape14: TQRShape;
    QRLabel21: TQRLabel;
    QRBand4: TQRBand;
    qrlb_Data1: TQRLabel;
    QRShape1: TQRShape;
    qrlb_Data12: TQRLabel;
    QRShape3: TQRShape;
    qrlb_Data13: TQRLabel;
    QRShape15: TQRShape;
    qrlb_Data14: TQRLabel;
    QRShape16: TQRShape;
    qrlb_Data15: TQRLabel;
    QRShape20: TQRShape;
    qrlb_Data16: TQRLabel;
    QRShape21: TQRShape;
    qrlb_Data17: TQRLabel;
    QRShape24: TQRShape;
    qrlb_Data18: TQRLabel;
    QRShape25: TQRShape;
    qrlb_Data19: TQRLabel;
    QRShape26: TQRShape;
    qrlb_Data110: TQRLabel;
    QRShape27: TQRShape;
    qrlb_Data111: TQRLabel;
    qrlb_Data23: TQRLabel;
    qrlb_Data24: TQRLabel;
    qrlb_Data25: TQRLabel;
    qrlb_Data26: TQRLabel;
    qrlb_Data27: TQRLabel;
    qrlb_Data28: TQRLabel;
    qrlb_Data29: TQRLabel;
    qrlb_Data210: TQRLabel;
    qrlb_Data211: TQRLabel;
    qrlb_Data33: TQRLabel;
    qrlb_Data34: TQRLabel;
    qrlb_Data35: TQRLabel;
    qrlb_Data36: TQRLabel;
    qrlb_Data37: TQRLabel;
    qrlb_Data38: TQRLabel;
    qrlb_Data39: TQRLabel;
    qrlb_Data310: TQRLabel;
    qrlb_Data311: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    qrlb_Data52: TQRLabel;
    qrlb_Data53: TQRLabel;
    qrlb_Data54: TQRLabel;
    qrlb_Data55: TQRLabel;
    qrlb_Data56: TQRLabel;
    qrlb_Data57: TQRLabel;
    qrlb_Data58: TQRLabel;
    qrlb_Data59: TQRLabel;
    qrlb_Data510: TQRLabel;
    qrlb_Data511: TQRLabel;
    QRShape17: TQRShape;
    QRLabel36: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRShape2: TQRShape;
    QRLabel10: TQRLabel;
    qrlb_PatNo: TQRLabel;
    QRLabel12: TQRLabel;
    qrlb_patname: TQRLabel;
    QRLabel44: TQRLabel;
    qrl_ci: TQRLabel;
    QRLabel45: TQRLabel;
    qrlb_sexage: TQRLabel;
    QRLabel46: TQRLabel;
    qrl_meddept: TQRLabel;
    qrl_ward: TQRLabel;
    QRLabel47: TQRLabel;
    qrl_chadr: TQRLabel;
    QRLabel48: TQRLabel;
    QRShape30: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel14: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure qr_IOBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qr_IONeedData(Sender: TObject; var MoreData: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
     CurrentIndex,CircleCnt, StartInt, ugdCnt : Integer;
     FromFrm : String;
    { Public declarations }
  end;

var
  MDF130F1_P01: TMDF130F1_P01;

implementation

uses MDG300U1 ,MDCLASS1, VarCom, MDC100U1;

{$R *.DFM}

procedure TMDF130F1_P01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := cafree;
end;

procedure TMDF130F1_P01.FormDestroy(Sender: TObject);
begin
  MDF130F1_P01 := Nil;
end;

procedure TMDF130F1_P01.qr_IOBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
   iRowCnt, i : Integer;
begin
   //qrlb_HosName.Caption := LocateTitle(G_LOCATE);
end;

procedure TMDF130F1_P01.qr_IONeedData(Sender: TObject;
  var MoreData: Boolean);
begin
      if CurrentIndex >= MDG300F1.ugd_AllList.RowCount then
      begin
         MoreData := False;
      end
      else
      begin
         MoreData := True;
      end;
      
      if MoreData then
      begin
         qrlb_Data1.Caption  := MDG300F1.ugd_AllList.Cells[0, CurrentIndex];

         //qrlb_Data12.Caption  := MDG300F1.ugd_AllList.Cells[1, CurrentIndex];
         qrlb_Data13.Caption  := MDG300F1.ugd_AllList.Cells[2, CurrentIndex];
         qrlb_Data14.Caption  := MDG300F1.ugd_AllList.Cells[3, CurrentIndex];
         qrlb_Data15.Caption  := MDG300F1.ugd_AllList.Cells[4, CurrentIndex];
         qrlb_Data16.Caption  := MDG300F1.ugd_AllList.Cells[5, CurrentIndex];
         qrlb_Data17.Caption  := MDG300F1.ugd_AllList.Cells[6, CurrentIndex];
         qrlb_Data18.Caption  := MDG300F1.ugd_AllList.Cells[7, CurrentIndex];
         qrlb_Data19.Caption  := MDG300F1.ugd_AllList.Cells[8, CurrentIndex];
         qrlb_Data110.Caption := MDG300F1.ugd_AllList.Cells[9, CurrentIndex];
         qrlb_Data111.Caption := MDG300F1.ugd_AllList.Cells[10, CurrentIndex];
      
         //qrlb_Data22.Caption  := MDG300F1.ugd_AllList.Cells[1, CurrentIndex + 1];
         qrlb_Data23.Caption  := MDG300F1.ugd_AllList.Cells[2, CurrentIndex + 1];
         qrlb_Data24.Caption  := MDG300F1.ugd_AllList.Cells[3, CurrentIndex + 1];
         qrlb_Data25.Caption  := MDG300F1.ugd_AllList.Cells[4, CurrentIndex + 1];
         qrlb_Data26.Caption  := MDG300F1.ugd_AllList.Cells[5, CurrentIndex + 1];
         qrlb_Data27.Caption  := MDG300F1.ugd_AllList.Cells[6, CurrentIndex + 1];
         qrlb_Data28.Caption  := MDG300F1.ugd_AllList.Cells[7, CurrentIndex + 1];
         qrlb_Data29.Caption  := MDG300F1.ugd_AllList.Cells[8, CurrentIndex + 1];
         qrlb_Data210.Caption := MDG300F1.ugd_AllList.Cells[9, CurrentIndex + 1];
         qrlb_Data211.Caption := MDG300F1.ugd_AllList.Cells[10, CurrentIndex + 1];
      
         //qrlb_Data32.Caption  := MDG300F1.ugd_AllList.Cells[1, CurrentIndex + 2];
         qrlb_Data33.Caption  := MDG300F1.ugd_AllList.Cells[2, CurrentIndex + 2];
         qrlb_Data34.Caption  := MDG300F1.ugd_AllList.Cells[3, CurrentIndex + 2];
         qrlb_Data35.Caption  := MDG300F1.ugd_AllList.Cells[4, CurrentIndex + 2];
         qrlb_Data36.Caption  := MDG300F1.ugd_AllList.Cells[5, CurrentIndex + 2];
         qrlb_Data37.Caption  := MDG300F1.ugd_AllList.Cells[6, CurrentIndex + 2];
         qrlb_Data38.Caption  := MDG300F1.ugd_AllList.Cells[7, CurrentIndex + 2];
         qrlb_Data39.Caption  := MDG300F1.ugd_AllList.Cells[8, CurrentIndex + 2];
         qrlb_Data310.Caption := MDG300F1.ugd_AllList.Cells[9, CurrentIndex + 2];
         qrlb_Data311.Caption := MDG300F1.ugd_AllList.Cells[10, CurrentIndex + 2];
      
         qrlb_Data52.Caption  := MDG300F1.ugd_AllList.Cells[1, CurrentIndex + 3];
         qrlb_Data53.Caption  := MDG300F1.ugd_AllList.Cells[2, CurrentIndex + 3];
         qrlb_Data54.Caption  := MDG300F1.ugd_AllList.Cells[3, CurrentIndex + 3];
         qrlb_Data55.Caption  := MDG300F1.ugd_AllList.Cells[4, CurrentIndex + 3];
         qrlb_Data56.Caption  := MDG300F1.ugd_AllList.Cells[5, CurrentIndex + 3];
         qrlb_Data57.Caption  := MDG300F1.ugd_AllList.Cells[6, CurrentIndex + 3];
         qrlb_Data58.Caption  := MDG300F1.ugd_AllList.Cells[7, CurrentIndex + 3];
         qrlb_Data59.Caption  := MDG300F1.ugd_AllList.Cells[8, CurrentIndex + 3];
         qrlb_Data510.Caption := MDG300F1.ugd_AllList.Cells[9, CurrentIndex + 3];
         qrlb_Data511.Caption := MDG300F1.ugd_AllList.Cells[10, CurrentIndex + 3];

         CurrentIndex := CurrentIndex + 4;
      end
      else
      begin
         qrlb_Data1.Caption  := '';

         //qrlb_Data12.Caption  := '';
         qrlb_Data13.Caption  := '';
         qrlb_Data14.Caption  := '';
         qrlb_Data15.Caption  := '';
         qrlb_Data16.Caption  := '';
         qrlb_Data17.Caption  := '';
         qrlb_Data18.Caption  := '';
         qrlb_Data19.Caption  := '';
         qrlb_Data110.Caption := '';
         qrlb_Data111.Caption := '';

         //qrlb_Data22.Caption  := '';
         qrlb_Data23.Caption  := '';
         qrlb_Data24.Caption  := '';
         qrlb_Data25.Caption  := '';
         qrlb_Data26.Caption  := '';
         qrlb_Data27.Caption  := '';
         qrlb_Data28.Caption  := '';
         qrlb_Data29.Caption  := '';
         qrlb_Data210.Caption := '';
         qrlb_Data211.Caption := '';

         //qrlb_Data32.Caption  := '';
         qrlb_Data33.Caption  := '';
         qrlb_Data34.Caption  := '';
         qrlb_Data35.Caption  := '';
         qrlb_Data36.Caption  := '';
         qrlb_Data37.Caption  := '';
         qrlb_Data38.Caption  := '';
         qrlb_Data39.Caption  := '';
         qrlb_Data310.Caption := '';
         qrlb_Data311.Caption := '';

         qrlb_Data52.Caption  := '';
         qrlb_Data53.Caption  := '';
         qrlb_Data54.Caption  := '';
         qrlb_Data55.Caption  := '';
         qrlb_Data56.Caption  := '';
         qrlb_Data57.Caption  := '';
         qrlb_Data58.Caption  := '';
         qrlb_Data59.Caption  := '';
         qrlb_Data510.Caption := '';
         qrlb_Data511.Caption := '';
      end;
end;

procedure TMDF130F1_P01.FormCreate(Sender: TObject);
begin
   CurrentIndex := 1;
   StartInt := 1;
end;

end.
