unit MHE700U1_P01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, StdCtrls, Variants;

type
  TMHE700F1_P01 = class(TForm)
    qr_1: TQuickRep;
    TitleBand1: TQRBand;
    qrlb_Title: TQRLabel;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel12: TQRLabel;
    qrlb_PatName: TQRLabel;
    qrlb_Patsect: TQRLabel;
    qrlb_Meddate: TQRLabel;
    qrlb_Patno: TQRLabel;
    QRShape1: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape9: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel34: TQRLabel;
    qrlb_Pass1: TQRLabel;
    QRLabel50: TQRLabel;
    qrlb_Pass2: TQRLabel;
    QRLabel54: TQRLabel;
    qrlb_Pass3: TQRLabel;
    QRLabel58: TQRLabel;
    qrlb_Pass4: TQRLabel;
    QRLabel62: TQRLabel;
    qrlb_Pass5: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel74: TQRLabel;
    qrlb_2H30M_1: TQRLabel;
    qrlb_1H_1: TQRLabel;
    qrlb_2H_1: TQRLabel;
    qrlb_3H_1: TQRLabel;
    qrlb_1H30M_1: TQRLabel;
    qrlb_30M_1: TQRLabel;
    qrlb_rsndis: TQRLabel;
    qrlb_Begindate: TQRLabel;
    QRShape18: TQRShape;
    qrlb_VisitPath: TQRLabel;
    qrlb_VsBegin: TQRLabel;
    qrlb_VsEnd: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    qrlb_Weight: TQRLabel;
    qrlb_BefWeight: TQRLabel;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    qrlb_BldSpeed: TQRLabel;
    qrlb_Anticaog: TQRLabel;
    QRShape29: TQRShape;
    qrlb_AftWeight: TQRLabel;
    qrlb_CauA: TQRLabel;
    QRShape2: TQRShape;
    qrlb_CauB: TQRLabel;
    qrlb_CauC: TQRLabel;
    qrlb_CauD: TQRLabel;
    qrlb_CauEtc: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    qrlb_CauEtc1: TQRLabel;
    QRLabel3: TQRLabel;
    qrlb_Recdate: TQRLabel;
    qrlb_Enddate: TQRLabel;
    QRLabel15: TQRLabel;
    qrlb_Recname: TQRLabel;
    qrlb_VsMiddle: TQRLabel;
    QRShape8: TQRShape;
    qrlb_UF: TQRLabel;
    QRShape10: TQRShape;
    qrlb_Capa1: TQRLabel;
    QRLabel7: TQRLabel;
    qrlb_Capa2: TQRLabel;
    QRShape11: TQRShape;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    qrlb_Liquid: TQRLabel;
    QRShape12: TQRShape;
    QRLabel51: TQRLabel;
    QRLabel53: TQRLabel;
    qrlb_Kind: TQRLabel;
    qrlb_EquipKind: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel55: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel63: TQRLabel;
    qrlb_3H30M_1: TQRLabel;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape30: TQRShape;
    qrlb_3H30M_2: TQRLabel;
    qrlb_3H_2: TQRLabel;
    qrlb_2H30M_2: TQRLabel;
    qrlb_2H_2: TQRLabel;
    qrlb_1H30M_2: TQRLabel;
    qrlb_1H_2: TQRLabel;
    qrlb_30M_2: TQRLabel;
    qrlb_3H30M_3: TQRLabel;
    qrlb_3H30M_4: TQRLabel;
    qrlb_30M_3: TQRLabel;
    qrlb_1H_3: TQRLabel;
    qrlb_1H30M_3: TQRLabel;
    qrlb_2H_3: TQRLabel;
    qrlb_2H30M_3: TQRLabel;
    qrlb_3H_3: TQRLabel;
    qrlb_30M_4: TQRLabel;
    qrlb_1H_4: TQRLabel;
    qrlb_1H30M_4: TQRLabel;
    qrlb_2H_4: TQRLabel;
    qrlb_2H30M_4: TQRLabel;
    qrlb_3H_4: TQRLabel;
    QRShape31: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    qrlb_Opin1: TQRLabel;
    QRLabel41: TQRLabel;
    qrlb_Opin2: TQRLabel;
    qrlb_Opin3: TQRLabel;
    qrlb_Fall1: TQRLabel;
    qrlb_Fall4: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel67: TQRLabel;
    qrlb_Fall2: TQRLabel;
    qrlb_Fall5: TQRLabel;
    QRLabel70: TQRLabel;
    qrlb_Fall3: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    qrmm_TransText: TQRMemo;
    qrmm_Remark: TQRMemo;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRBand2: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel43: TQRLabel;
    QRShape3: TQRShape;
    QRShape35: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRBand3: TQRBand;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel64: TQRLabel;
    qrlb_No: TQRLabel;
    qrlb_Orddate: TQRLabel;
    qrlb_Ordname: TQRLabel;
    qrlb_Orddr: TQRLabel;
    qrlb_Execdate: TQRLabel;
    qrlb_Execdr: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel77: TQRLabel;
    QRBand4: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel42: TQRLabel;
    qr_2: TQuickRep;
    QRBand5: TQRBand;
    QRLabel49: TQRLabel;
    QRShape48: TQRShape;
    QRLabel78: TQRLabel;
    qrbnd_Detail: TQRBand;
    qrsp_VerLine1: TQRShape;
    qrsp_VerLine2: TQRShape;
    qrsp_VerLine3: TQRShape;
    qrlb_Num: TQRLabel;
    qrlb_Actdate: TQRLabel;
    qrlb_Actrecid: TQRLabel;
    QRBand8: TQRBand;
    QRShape90: TQRShape;
    QRShape91: TQRShape;
    QRShape94: TQRShape;
    QRLabel226: TQRLabel;
    QRLabel227: TQRLabel;
    QRLabel228: TQRLabel;
    QRLabel231: TQRLabel;
    QRBand9: TQRBand;
    QRLabel232: TQRLabel;
    QRBand6: TQRBand;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    qrlb_Patname1: TQRLabel;
    qrlb_Patsect1: TQRLabel;
    qrlb_Meddate1: TQRLabel;
    qrlb_Patno1: TQRLabel;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRShape53: TQRShape;
    QRLabel88: TQRLabel;
    QRSysData11: TQRSysData;
    QRLabel84: TQRLabel;
    QRSysData1: TQRSysData;
    QRShape49: TQRShape;
    QRShape54: TQRShape;
    qrmm_Acttxt: TQRMemo;
    qrlb_VsBegindate: TQRLabel;
    qrlb_VsMiddledate: TQRLabel;
    qrlb_VsEnddate: TQRLabel;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape7: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRLabel18: TQRLabel;
    QRShape57: TQRShape;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    qrlb_VsBgPls: TQRLabel;
    qrlb_VsBgResp: TQRLabel;
    qrlb_VsBgBld: TQRLabel;
    qrlb_VsMdPls: TQRLabel;
    qrlb_VsMdResp: TQRLabel;
    qrlb_VsMdBld: TQRLabel;
    qrlb_VsEdPls: TQRLabel;
    qrlb_VsEdResp: TQRLabel;
    qrlb_VsEdBld: TQRLabel;
    QRLabel95: TQRLabel;
    QRShape65: TQRShape;
    QRLabel96: TQRLabel;
    QRShape66: TQRShape;
    qrlb_Veinpres: TQRLabel;
    QRLabel97: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qr_1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qr_1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure qr_2BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qr_2NeedData(Sender: TObject; var MoreData: Boolean);
  private
    { Private declarations }
    //투약용 변수
    va_No, va_Orddate, va_Ordname, va_Orddr, va_Execdate, va_Execdr : Variant;
    iTotalCnt, iCurrentCnt: LongInt;
    //간호기록용 변수
    va_Num, va_Actdate, va_Acttxt, va_Actrecid : Variant;
    iTotalCnt2, iCurrentCnt2: LongInt;
  public
    { Public declarations }
  end;

var
  MHE700F1_P01: TMHE700F1_P01;

implementation

uses MDG300U1;


{$R *.DFM}

procedure TMHE700F1_P01.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MHE700F1_P01 := nil;
  Action := Cafree;
end;

//투약---------
procedure TMHE700F1_P01.qr_1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
   iRowCnt, i : Integer;
begin
   iCurrentCnt := 0;
   with MDG300F1.ugd_AllList do
   begin
      iRowCnt     := RowCount - 1;
      va_No       := VarArrayCreate([0,iRowCnt - 1],varVariant);
      va_Orddate  := VarArrayCreate([0,iRowCnt - 1],varVariant);
      va_Ordname  := VarArrayCreate([0,iRowCnt - 1],varVariant);
      va_Orddr    := VarArrayCreate([0,iRowCnt - 1],varVariant);
      va_Execdate := VarArrayCreate([0,iRowCnt - 1],varVariant);
      va_Execdr   := VarArrayCreate([0,iRowCnt - 1],varVariant);

      for i := 0 to iRowCnt - 1 do
      begin
          va_No[i]       :=  Cells[0,i+1];
          va_Orddate[i]  :=  Cells[1,i+1];
          va_Ordname[i]  :=  Cells[2,i+1];
          va_Orddr[i]    :=  Cells[3,i+1];
          va_Execdate[i] :=  Cells[4,i+1];
          va_Execdr[i]   :=  Cells[5,i+1];
      end;
   end;
   iTotalCnt := iRowCnt ;
end;

procedure TMHE700F1_P01.qr_1NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
    qrlb_No.Caption       :=  '';
    qrlb_Orddate.Caption  :=  '';
    qrlb_Ordname.Caption  :=  '';
    qrlb_Orddr.Caption    :=  '';
    qrlb_Execdate.Caption :=  '';
    qrlb_Execdr.Caption   :=  '';

   if ( iCurrentCnt > iTotalCnt - 1 ) then
      begin
         MoreData := False;
         exit;
      end;

    if ( iCurrentCnt <= iTotalCnt - 1 ) then
    begin
       qrlb_No.Caption       := va_No[iCurrentCnt];
       qrlb_Orddate.Caption  := va_Orddate[iCurrentCnt];
       qrlb_Ordname.Caption  := va_Ordname[iCurrentCnt];
       qrlb_Orddr.Caption    := va_Orddr[iCurrentCnt];
       qrlb_Execdate.Caption := va_Execdate[iCurrentCnt];
       qrlb_Execdr.Caption   := va_Execdr[iCurrentCnt];
    end;

    Inc( iCurrentCnt );
    MoreData := True;
end;

//간호기록-----------
procedure TMHE700F1_P01.qr_2BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
   iRowCnt, i : Integer;
begin

   iCurrentCnt2 := 0;
   with MDG300F1.ugd_List do
   begin
      iRowCnt     := RowCount - 1;
      va_Num      := VarArrayCreate([0,iRowCnt - 1],varVariant);
      va_Actdate  := VarArrayCreate([0,iRowCnt - 1],varVariant);
      va_Acttxt   := VarArrayCreate([0,iRowCnt - 1],varVariant);
      va_Actrecid := VarArrayCreate([0,iRowCnt - 1],varVariant);

      for i := 0 to iRowCnt - 1 do
      begin
          va_Num[i]      :=  Cells[0,i+1];
          va_Actdate[i]  :=  Cells[1,i+1];
          va_Acttxt[i]   :=  Cells[2,i+1];
          va_Actrecid[i] :=  Cells[3,i+1];
      end;
   end;
   iTotalCnt2 := iRowCnt ;
end;

procedure TMHE700F1_P01.qr_2NeedData(Sender: TObject;
  var MoreData: Boolean);
begin
    qrlb_Num.Caption      :=  '';
    qrlb_Actdate.Caption  :=  '';
    qrmm_Acttxt.Lines.Text   :=  '';
    qrlb_Actrecid.Caption :=  '';

   if ( iCurrentCnt2 > iTotalCnt2 - 1 ) then
      begin
         MoreData := False;
         exit;
      end;

    if ( iCurrentCnt2 <= iTotalCnt2 - 1 ) then
    begin
       qrlb_Num.Caption         := va_Num[iCurrentCnt2];
       qrlb_Actdate.Caption     := va_Actdate[iCurrentCnt2];
       qrmm_Acttxt.Lines.Text   := va_Acttxt[iCurrentCnt2];
       qrlb_Actrecid.Caption    := va_Actrecid[iCurrentCnt2];

{       //디테일밴드의 세로선 Height값 변경
       qrsp_VerLine1.Height := 20 * qrmm_Acttxt.Lines.Count;
       qrsp_VerLine2.Height := 20 * qrmm_Acttxt.Lines.Count;
       qrsp_VerLine3.Height := 20 * qrmm_Acttxt.Lines.Count;
}
    end;

    Inc( iCurrentCnt2 );
    MoreData := True;
end;

end.
