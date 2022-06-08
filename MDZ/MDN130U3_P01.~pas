unit MDN130U3_P01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, jpeg, QuickRpt, ExtCtrls;

type
  TMDN130F3_P01 = class(TForm)
    qr_ermdninfo: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRShape14: TQRShape;
    QRLabel5: TQRLabel;
    qlb_patno: TQRLabel;
    qlb_patName: TQRLabel;
    QRLabel16: TQRLabel;
    qlb_ErManage: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    qlb_SexAge: TQRLabel;
    QRLabel47: TQRLabel;
    qrl_ward: TQRLabel;
    qlb_ktaslevel: TQRLabel;
    QRLabel46: TQRLabel;
    QRImage1: TQRImage;
    QRLabel42: TQRLabel;
    QRShape30: TQRShape;
    QRLabel19: TQRLabel;
    SummaryBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel188: TQRLabel;
    QRLabel189: TQRLabel;
    QRLabel190: TQRLabel;
    QRSysData1: TQRSysData;
    QRBand1: TQRBand;
    qrme_Data: TQRMemo;
    QRLabel1: TQRLabel;
    qlb_ktaslevel2: TQRLabel;
    procedure qr_ermdninfoNeedData(Sender: TObject; var MoreData: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sCprshare, sCpr, sEmOpYn, sErmanage, sEdustat1, sEdustat2, sEdustat3, sEdustat4, sOutyn, sPregyn, sWatchyn : String;
    sIsolate , sSound, sSelectY, sSelectN, sBohol, sBoho2, sBoho3, sBoho4, sBoho5, sBoho6, sBoho7, sBoho8, sBoho9, sDschreason : String;
    CurrentIndex, TempCnt : integer;
    LastChk, FromFrm : string;
  end;

var
  MDN130F3_P01: TMDN130F3_P01;

implementation

uses MDG300U1, StdCtrls;

{$R *.dfm}

procedure TMDN130F3_P01.qr_ermdninfoNeedData(Sender: TObject;
  var MoreData: Boolean);

begin
   with MDG300F1 do
   begin
       {

             }
   end;  // with MDN130F3 do
end;

procedure TMDN130F3_P01.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TMDN130F3_P01.FormDestroy(Sender: TObject);
begin
   MDN130F3_P01 := Nil;
end;

end.
