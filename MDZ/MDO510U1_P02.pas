unit MDO510U1_P02;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, jpeg;

type
  TMDO510F1_P02 = class(TQuickRep)
    qrb_Detail: TQRBand;
    qrme_Data: TQRMemo;
    PageHeaderBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel42: TQRLabel;
    QRShape30: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel188: TQRLabel;
    QRBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRShape65: TQRShape;
    QRShape67: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape66: TQRShape;
    QRShape68: TQRShape;
    QRLabel8: TQRLabel;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRLabel16: TQRLabel;
    QRShape74: TQRShape;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel137: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    qrlb_InInfect6: TQRLabel;
    qrlb_InInfect5: TQRLabel;
    qrlb_InInfect4: TQRLabel;
    qrlb_InInfect3: TQRLabel;
    qrlb_InInfect2: TQRLabel;
    qrlb_InInfect1: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel44: TQRLabel;
    qrme_Diag1: TQRMemo;
    qrme_Diag2: TQRMemo;
    qrme_Opnm: TQRMemo;
    QRLabel58: TQRLabel;
    QRShape7: TQRShape;
    qrlb_telno: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel1: TQRLabel;
    qrl_ward: TQRLabel;
    qrl_address: TQRLabel;
    qlb_OutDate: TQRLabel;
    qlb_Meddept: TQRLabel;
    qlb_InDate: TQRLabel;
    qlb_GenDrNm: TQRLabel;
    qlb_chadr: TQRLabel;
    qlb_ResNo: TQRLabel;
    qlb_patName: TQRLabel;
    qlb_patno: TQRLabel;
    qlb_barcode: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape2: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    qlb_Sex: TQRLabel;
    QRShape16: TQRShape;
    QRLabel59: TQRLabel;
    qlb_chadr1: TQRLabel;
    qlb_GenDrNm1: TQRLabel;
    qlb_oprev: TQRLabel;
    qrlb_InInfect7: TQRLabel;
    QRShape17: TQRShape;
    QRLabel5: TQRLabel;
    qrme_Progress: TQRMemo;
    qlb_death: TQRLabel;
    QRLabel41: TQRLabel;
    qlb_Drg: TQRLabel;
    qlb_Dead: TQRLabel;
    qlb_Admpath: TQRLabel;
  private
//    Check_value : LongInt;
  public

  end;

var
  MDO510F1_P02: TMDO510F1_P02;

implementation

uses CCOMFUNC, VarCom, MDC100U1;

{$R *.DFM}


end.
