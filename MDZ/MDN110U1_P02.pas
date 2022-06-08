unit MDN110U1_P02;
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Grids, UltraGrid, jpeg;

type
  TMDN110F1_P02 = class(TForm)
    qr_Search: TQuickRep;
    band_Detail: TQRBand;
    qrlb_Data2: TQRLabel;
    qrlb_Data3: TQRLabel;
    qrlb_Prn: TQRLabel;
    qrlb_Data4: TQRLabel;
    QRShape24: TQRShape;
    QRShape6: TQRShape;
    band_Header: TQRBand;
    QRLabel4: TQRLabel;
    QRShape5: TQRShape;
    QRLabel15: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRLabel11: TQRLabel;
    QRShape4: TQRShape;
    qrlb_Orddr: TQRLabel;
    QRLabel13: TQRLabel;
    qrlb_OrdTime: TQRLabel;
    QRLabel17: TQRLabel;
    qrlb_DCTime: TQRLabel;
    QRLabel19: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData11: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel9: TQRLabel;
    QRBand3: TQRBand;
    QRLabel190: TQRLabel;
    QRShape7: TQRShape;
    ugd_PrintList: TUltraGrid;
    QRBand2: TQRBand;
    QRLabel35: TQRLabel;
    QRLabel2: TQRLabel;
    qrlb_AdmDate: TQRLabel;
    qrlb_OrdDate: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    qrlb_PatNo: TQRLabel;
    qrlb_patname: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel44: TQRLabel;
    qrlb_Resno: TQRLabel;
    QRLabel45: TQRLabel;
    qrlb_SA: TQRLabel;
    qrlb_chadr: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel46: TQRLabel;
    qrlb_deptname: TQRLabel;
    qrlb_roomno: TQRLabel;
    QRImage1: TQRImage;
    QRLabel42: TQRLabel;
    QRShape30: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure qr_SearchNeedData(Sender: TObject; var MoreData: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure qr_SearchBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }

  public
    { Public declarations }
     CurrentIndex : Integer;
  end;

var
  MDN110F1_P02: TMDN110F1_P02;

implementation

uses  VarCom, MDC100U1;

{$R *.DFM}

procedure TMDN110F1_P02.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TMDN110F1_P02.FormDestroy(Sender: TObject);
begin
   MDN110F1_P02 := Nil;
end;             

procedure TMDN110F1_P02.qr_SearchNeedData(Sender: TObject;
  var MoreData: Boolean);
begin
      Moredata := (CurrentIndex < ugd_PrintList.RowCount-1);
      
      if Moredata then
      begin
         if ugd_PrintList.Cells[7,CurrentIndex] = 'Y' then
         begin
            qrlb_Data2.Caption := ugd_PrintList.Cells[0,CurrentIndex];
            qrlb_Data3.Caption := ugd_PrintList.Cells[1,CurrentIndex];
            qrlb_Prn.Caption   := ugd_PrintList.Cells[6,CurrentIndex];
            qrlb_Orddr.Caption := ugd_PrintList.Cells[8,CurrentIndex];
            qrlb_OrdTime.Caption := ugd_PrintList.Cells[9,CurrentIndex];
            qrlb_DCTime.Caption := ugd_PrintList.Cells[10,CurrentIndex];
            qrlb_Data4.Caption := Trim(ugd_PrintList.Cells[3,CurrentIndex + 1]);
            Inc(CurrentIndex);
         end
         else
         begin
            qrlb_Prn.Caption := '';
         end;
      end;
   Inc(CurrentIndex);
end;

procedure TMDN110F1_P02.FormCreate(Sender: TObject);
begin
   CurrentIndex := 0;
   ugd_PrintList.Clear;
end;

procedure TMDN110F1_P02.qr_SearchBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   //qrlb_Locate.Caption := LocateTitle(G_LOCATE);
   CurrentIndex := 0;
end;

end.
