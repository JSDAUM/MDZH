unit MDP112U1_P03;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  TMDP112F1_P03 = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRShape9: TQRShape;
    QRShape8: TQRShape;
    QRShape6: TQRShape;
    QRShape54: TQRShape;
    QRShape5: TQRShape;
    QRShape47: TQRShape;
    QRShape46: TQRShape;
    QRShape37: TQRShape;
    QRShape35: TQRShape;
    QRShape2: TQRShape;
    QRShape10: TQRShape;
    QRShape1: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    qlb_SexAge: TQRLabel;
    QRLabel65: TQRLabel;
    qlb_Recopat3: TQRLabel;
    QRLabel63: TQRLabel;
    qlb_Recofam2: TQRLabel;
    QRLabel61: TQRLabel;
    qlb_Recofam1: TQRLabel;
    qlb_Patname: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel58: TQRLabel;
    qlb_Recopat2: TQRLabel;
    QRLabel56: TQRLabel;
    qlb_Recopat1: TQRLabel;
    QRLabel54: TQRLabel;
    qlb_Evaldeli2: TQRLabel;
    QRLabel52: TQRLabel;
    qlb_Evaldeli1: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel49: TQRLabel;
    qlb_Evalvomit2: TQRLabel;
    QRLabel47: TQRLabel;
    qlb_Evalvomit1: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel44: TQRLabel;
    qlb_Evalrespsec2: TQRLabel;
    QRLabel42: TQRLabel;
    qlb_Evalrespsec1: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel39: TQRLabel;
    qlb_Evalresp2: TQRLabel;
    QRLabel37: TQRLabel;
    qlb_Evalresp1: TQRLabel;
    QRLabel35: TQRLabel;
    qlb_Evalpain2: TQRLabel;
    QRLabel33: TQRLabel;
    qlb_Evalpain1: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel301: TQRLabel;
    qlb_Care4: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel297: TQRLabel;
    qlb_Care7: TQRLabel;
    QRLabel295: TQRLabel;
    qlb_Care6: TQRLabel;
    QRLabel29: TQRLabel;
    qlb_Basisoth3: TQRLabel;
    qlb_Careoth: TQRLabel;
    QRLabel272: TQRLabel;
    qlb_Care3: TQRLabel;
    QRLabel270: TQRLabel;
    QRLabel27: TQRLabel;
    qlb_Care2: TQRLabel;
    QRLabel268: TQRLabel;
    QRLabel267: TQRLabel;
    qlb_Care1: TQRLabel;
    qlb_Consdrnm3: TQRLabel;
    QRLabel260: TQRLabel;
    qlb_Basis34: TQRLabel;
    QRLabel25: TQRLabel;
    qlb_Basis33: TQRLabel;
    QRLabel23: TQRLabel;
    qlb_Basis32: TQRLabel;
    QRLabel21: TQRLabel;
    qlb_Basis31: TQRLabel;
    QRLabel2: TQRLabel;
    qlb_Constime3: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel15: TQRLabel;
    qlb_Care5: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel1: TQRLabel;
    qlb_Patno: TQRLabel;
    qlb_Consdate3: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MDP112F1_P03: TMDP112F1_P03;

implementation

{$R *.dfm}


procedure TMDP112F1_P03.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := CaFree;
end;

procedure TMDP112F1_P03.FormDestroy(Sender: TObject);
begin
   MDP112F1_P03 := nil;
end;

end.
