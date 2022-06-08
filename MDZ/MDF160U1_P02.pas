unit MDF160U1_P02;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, jpeg;

type
  TMDF160F1_P02 = class(TForm)
    qr_Search: TQuickRep;
    QRBand2: TQRBand;
    QRImage1: TQRImage;
    QRLabel6: TQRLabel;
    qrlb_Title: TQRLabel;
    QRLabel1: TQRLabel;
    qrlb_Term: TQRLabel;
    band_Detail: TQRBand;
    qrlb_Data1: TQRLabel;
    QRShape12: TQRShape;
    qrlb_Data3: TQRLabel;
    QRShape1: TQRShape;
    qrlb_Data4: TQRLabel;
    qrlb_Data2: TQRLabel;
    QRShape2: TQRShape;
    QRBand1: TQRBand;
    QRLabel23: TQRLabel;
    QRShape3: TQRShape;
    qrlb_Title2: TQRLabel;
    QRShape4: TQRShape;
    qrlb_Title3: TQRLabel;
    QRShape33: TQRShape;
    qrlb_Title1: TQRLabel;
    QRShape17: TQRShape;
    QRLabel48: TQRLabel;
    qrl_chadr: TQRLabel;
    QRLabel47: TQRLabel;
    qrl_ward: TQRLabel;
    qrl_meddept: TQRLabel;
    QRLabel46: TQRLabel;
    qrlb_sexage: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel44: TQRLabel;
    qrl_ci: TQRLabel;
    qrlb_Patname: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    qrlb_Patno: TQRLabel;
    QRSysData1: TQRSysData;
    qrlb_Title_1: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel190: TQRLabel;
    QRShape5: TQRShape;
    QRLabel2: TQRLabel;
    QRShape6: TQRShape;
    qrlb_Data5: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qr_SearchNeedData(Sender: TObject; var MoreData: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    nRow, nCol, TempCnt : integer;
  end;

var
  MDF160F1_P02: TMDF160F1_P02;

implementation

uses MDG300U1, VarCom, MDC100U1;

{$R *.DFM}

procedure TMDF160F1_P02.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TMDF160F1_P02.FormDestroy(Sender: TObject);
begin
   MDF160F1_P02 := Nil;
end;

procedure TMDF160F1_P02.FormCreate(Sender: TObject);
begin
   nRow := 1;
   nCol := 1;
end;

procedure TMDF160F1_P02.qr_SearchNeedData(Sender: TObject;
  var MoreData: Boolean);
var
  nPos: Integer;
  sTmp: string;
begin
  if (nRow > TempCnt) then begin
    MoreData := False;
    Exit;
  end;

  MoreData := True;
  sTmp := MDG300F1.ugd_AllList.cells[nCol, nRow];
  nPos := Pos('(', sTmp);

  qrlb_Data1.Caption := MDG300F1.ugd_AllList.cells[0, nRow];
  qrlb_Data2.Caption := MDG300F1.ugd_AllList.cells[1, nRow];
  qrlb_Data3.Caption := MDG300F1.ugd_AllList.cells[2, nRow];
  qrlb_Data4.Caption := MDG300F1.ugd_AllList.cells[3, nRow];
  qrlb_Data5.Caption := MDG300F1.ugd_AllList.cells[4, nRow];
  //qrlb_Data2.Caption := Copy(sTmp, (nPos + 1), 5);
  //qrlb_Data3.Caption := Copy(sTmp, 1, (nPos - 1));
  //qrlb_Data4.Caption := MDF160F1.ugd_ChkDate.cells[nCol + 5, nRow];

  Inc(nCol);
  {if (nCol >= 5) or (MDF160F1.ugd_ChkDate.cells[nCol, nRow] = '') then begin
    nCol := 1;
    Inc(nRow);
  end;}
  Inc(nRow);
//    if (CurrentIndex mod 42) = 0 then Inc(PageCnt);
end;

end.
