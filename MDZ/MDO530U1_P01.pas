unit MDO530U1_P01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, jpeg, QuickRpt, ExtCtrls;

type
  TMDO530F1_P01 = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    qrme_Data: TQRMemo;
    QRBand2: TQRBand;
    qrlb_Title: TQRLabel;
    QRShape30: TQRShape;
    QRShape2: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel1: TQRLabel;
    qrlb_PatNo: TQRLabel;
    qrlb_patname: TQRLabel;
    QRImage1: TQRImage;
    QRLabel2: TQRLabel;
    qrlb_Admdate: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel188: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel3: TQRLabel;
    qrlb_birtdate: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    qrlb_wardroom: TQRLabel;
    qrlb_Chadrnm: TQRLabel;
    QRLabel6: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MDO530F1_P01: TMDO530F1_P01;

implementation

{$R *.dfm}

procedure TMDO530F1_P01.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TMDO530F1_P01.FormDestroy(Sender: TObject);
begin
   MDO530F1_P01 := Nil;
end;

end.
