unit MDN690U1_P01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, jpeg;

type
  TMDN690F1_P01 = class(TForm)
    qr_Search: TQuickRep;
    QRBand2: TQRBand;
    qrlb_Title: TQRLabel;
    band_Detail: TQRBand;
    band_Header: TQRBand;
    QRLabel11: TQRLabel;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape48: TQRShape;
    QRShape8: TQRShape;
    QRShape5: TQRShape;
    QRLabel3: TQRLabel;
    QRShape4: TQRShape;
    QRSysData1: TQRSysData;
    QRLabel19: TQRLabel;
    QRShape7: TQRShape;
    QRLabel20: TQRLabel;
    QRShape9: TQRShape;
    qrlb_No: TQRLabel;
    QRShape3: TQRShape;
    qrlb_Date: TQRLabel;
    qrlb_BloodNo: TQRLabel;
    qrlb_End: TQRLabel;
    qrlb_Remark: TQRLabel;
    QRShape6: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    qrlb_BloodNm: TQRLabel;
    QRShape12: TQRShape;
    qrlb_Start: TQRLabel;
    QRShape13: TQRShape;
    qrlb_RHABO: TQRLabel;
    QRShape14: TQRShape;
    QRSysData22: TQRSysData;
    QRShape15: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape16: TQRShape;
    qrlb_Remark2: TQRLabel;
    qrlb_BldNrs1: TQRLabel;
    qrlb_BldNrs2: TQRLabel;
    QRShape17: TQRShape;
    QRLabel16: TQRLabel;
    qrlb_check1: TQRLabel;
    qrlb_check2: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    qrlb_stat3: TQRLabel;
    qrlb_stat4: TQRLabel;
    QRShape34: TQRShape;
    QRLabel84: TQRLabel;
    qrl_chadr: TQRLabel;
    QRLabel83: TQRLabel;
    qrlb_WardNo: TQRLabel;
    qrlb_Deptnm: TQRLabel;
    QRLabel82: TQRLabel;
    qrlb_SexAge: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel78: TQRLabel;
    qrl_ci: TQRLabel;
    qrlb_Patname: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel74: TQRLabel;
    qrlb_Patno: TQRLabel;
    QRImage2: TQRImage;
    QRLabel17: TQRLabel;
    QRShape22: TQRShape;
    QRShape21: TQRShape;
    QRLabel2: TQRLabel;
    qrlb_delitime: TQRLabel;
    QRLabel8: TQRLabel;
    qrlb_Gttmin: TQRLabel;
    qrlb_su1: TQRLabel;
    qrsp_su2: TQRShape;
    qrlb_suyn1: TQRLabel;
    qrlb_suyn2: TQRLabel;
    qrlb_su6: TQRLabel;
    qrlb_su5: TQRLabel;
    qrsp_su3: TQRShape;
    qrsp_su5: TQRShape;
    qrlb_su3: TQRLabel;
    qrlb_su7: TQRLabel;
    qrsp_su6: TQRShape;
    qrlb_Remark4: TQRLabel;
    qrsp_su8: TQRShape;
    qrlb_suyn3: TQRLabel;
    qrlb_suyn4: TQRLabel;
    qrlb_su13: TQRLabel;
    qrlb_su12: TQRLabel;
    qrsp_su9: TQRShape;
    qrsp_su11: TQRShape;
    qrlb_su10: TQRLabel;
    qrlb_su14: TQRLabel;
    qrsp_su12: TQRShape;
    qrsp_su7: TQRShape;
    qrlb_su2: TQRLabel;
    qrlb_su8: TQRLabel;
    qrlb_su9: TQRLabel;
    qrlb_etc1: TQRLabel;
    qrlb_etc2: TQRLabel;
    qrlb_su15: TQRLabel;
    qrlb_Remark5: TQRLabel;
    qrsp_su14: TQRShape;
    qrlb_suyn5: TQRLabel;
    qrlb_suyn6: TQRLabel;
    qrlb_su20: TQRLabel;
    qrlb_su19: TQRLabel;
    qrsp_su15: TQRShape;
    qrsp_su17: TQRShape;
    qrlb_su17: TQRLabel;
    qrlb_su21: TQRLabel;
    qrsp_su18: TQRShape;
    qrlb_Remark6: TQRLabel;
    qrsp_su20: TQRShape;
    qrlb_suyn7: TQRLabel;
    qrlb_suyn8: TQRLabel;
    qrlb_su27: TQRLabel;
    qrlb_su26: TQRLabel;
    qrsp_su21: TQRShape;
    qrsp_su23: TQRShape;
    qrlb_su24: TQRLabel;
    qrlb_su28: TQRLabel;
    qrsp_su24: TQRShape;
    qrsp_su19: TQRShape;
    qrlb_su16: TQRLabel;
    qrlb_su22: TQRLabel;
    qrlb_su23: TQRLabel;
    qrlb_etc3: TQRLabel;
    qrlb_etc4: TQRLabel;
    qrsp_su1: TQRShape;
    qrsp_su13: TQRShape;
    qrlb_su29: TQRLabel;
    qrlb_Remark7: TQRLabel;
    qrsp_su26: TQRShape;
    qrlb_suyn9: TQRLabel;
    qrlb_suyn10: TQRLabel;
    qrlb_su34: TQRLabel;
    qrlb_su33: TQRLabel;
    qrsp_su27: TQRShape;
    qrsp_su29: TQRShape;
    qrlb_su31: TQRLabel;
    qrlb_su35: TQRLabel;
    qrsp_su30: TQRShape;
    qrlb_Remark8: TQRLabel;
    qrsp_su32: TQRShape;
    qrlb_suyn11: TQRLabel;
    qrlb_suyn12: TQRLabel;
    qrlb_su41: TQRLabel;
    qrlb_su40: TQRLabel;
    qrsp_su33: TQRShape;
    qrsp_su35: TQRShape;
    qrlb_su38: TQRLabel;
    qrlb_su42: TQRLabel;
    qrsp_su36: TQRShape;
    qrsp_su31: TQRShape;
    qrlb_su30: TQRLabel;
    qrlb_su36: TQRLabel;
    qrlb_su37: TQRLabel;
    qrlb_etc5: TQRLabel;
    qrlb_etc6: TQRLabel;
    qrsp_su25: TQRShape;
    qrlb_su43: TQRLabel;
    qrlb_Remark9: TQRLabel;
    qrsp_su38: TQRShape;
    qrlb_suyn13: TQRLabel;
    qrlb_suyn14: TQRLabel;
    qrlb_su48: TQRLabel;
    qrlb_su47: TQRLabel;
    qrsp_su39: TQRShape;
    qrsp_su41: TQRShape;
    qrlb_su45: TQRLabel;
    qrlb_su49: TQRLabel;
    qrsp_su42: TQRShape;
    qrlb_Remark10: TQRLabel;
    qrsp_su44: TQRShape;
    qrlb_suyn15: TQRLabel;
    qrlb_suyn16: TQRLabel;
    qrlb_su55: TQRLabel;
    qrlb_su54: TQRLabel;
    qrsp_su45: TQRShape;
    qrsp_su47: TQRShape;
    qrlb_su52: TQRLabel;
    qrlb_su56: TQRLabel;
    qrsp_su48: TQRShape;
    qrsp_su43: TQRShape;
    qrlb_su44: TQRLabel;
    qrlb_su50: TQRLabel;
    qrlb_su51: TQRLabel;
    qrlb_etc7: TQRLabel;
    qrlb_etc8: TQRLabel;
    qrsp_su37: TQRShape;
    qrlb_Remark3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure qr_SearchNeedData(Sender: TObject;
      var MoreData: Boolean);
  private
    { Private declarations }
  public
    CurrentIndex, TempCnt : integer;
    LastChk, FromFrm : string;
    { Public declarations }
  end;

var
  MDN690F1_P01: TMDN690F1_P01;

implementation
uses MDG300U1, VarCom, MDC100U1;
{$R *.DFM}

procedure TMDN690F1_P01.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TMDN690F1_P01.FormDestroy(Sender: TObject);
begin
   MDN690F1_P01 := Nil;
end;

procedure TMDN690F1_P01.qr_SearchNeedData(Sender: TObject;
  var MoreData: Boolean);
begin
    if LastChk = 'Y' then
    begin
       MoreData := False;
       exit;
    end;

    if CurrentIndex = TempCnt - 1 then
    begin
       MoreData := True;
       LastChk := 'Y';
    end
    else begin
       MoreData := True;
    end;

    if FromFrm = 'MDG300F1' then
    begin
      if (CurrentIndex < MDG300F1.ugd_List.Rowcount-1) then
      begin
        qrlb_No.Caption      := MDG300F1.ugd_List.cells[0, CurrentIndex+1];
        qrlb_Date.Caption    := MDG300F1.ugd_List.cells[1, CurrentIndex+1];
        qrlb_BloodNm.Caption := MDG300F1.ugd_List.cells[2, CurrentIndex+1];
        qrlb_BloodNo.Caption := MDG300F1.ugd_List.cells[3, CurrentIndex+1];
        qrlb_Delitime.Caption := MDG300F1.ugd_List.cells[4, CurrentIndex+1];
        qrlb_RHABO.Caption   := MDG300F1.ugd_List.cells[5, CurrentIndex+1]; //(4 -> 5)
        qrlb_Gttmin.Caption   := MDG300F1.ugd_List.cells[16, CurrentIndex+1]; //(15 -> 15점점속도추가)

        qrlb_Start.Caption   := MDG300F1.ugd_List.cells[6, CurrentIndex+1]; //(5 -> 6)
        //(수정. 2002.11.27 이용언)
{        qrlb_End.Caption     := MDG300F1.ugd_List.cells[8, CurrentIndex+1];
        qrlb_BldNrs1.Caption := MDG300F1.ugd_List.cells[6, CurrentIndex+1];
        qrlb_BldNrs2.Caption := MDG300F1.ugd_List.cells[9, CurrentIndex+1];
        qrlb_Remark.Caption  := MDG300F1.ugd_List.cells[7, CurrentIndex+1];
        qrlb_Remark2.Caption := MDG300F1.ugd_List.cells[10, CurrentIndex+1];}
        if MDG300F1.ugd_List.Cells[8, CurrentIndex+1] = '' then //(7 -> 8)
            qrlb_BldNrs1.Caption := MDG300F1.ugd_List.cells[7, CurrentIndex+1] //(6 -> 7)
        else
        if MDG300F1.ugd_List.Cells[8, CurrentIndex+1] <> '' then  //(7 -> 8)
            qrlb_BldNrs1.Caption := MDG300F1.ugd_List.cells[7, CurrentIndex+1]+'/'+ //(6 -> 7)
                                    MDG300F1.ugd_List.cells[8, CurrentIndex+1]; //(7 -> 8)

        qrlb_Remark.Caption  := MDG300F1.ugd_List.cells[9, CurrentIndex+1]; //(8 -> 9)

        qrlb_End.Caption     := MDG300F1.ugd_List.cells[11, CurrentIndex+1];  //(9 -> 10 -> 11)

        if MDG300F1.ugd_List.Cells[12, CurrentIndex+1] = '' then  //(11 -> 12)
            qrlb_BldNrs2.Caption := MDG300F1.ugd_List.cells[11, CurrentIndex+1] //(10 -> 11)
        else
        if MDG300F1.ugd_List.Cells[12, CurrentIndex+1] <> '' then //(11 -> 12)
            qrlb_BldNrs2.Caption := MDG300F1.ugd_List.cells[12, CurrentIndex+1]+'/'+  //(10 -> 11 ->12)
                                    MDG300F1.ugd_List.cells[13, CurrentIndex+1]; //(11 -> 12 -> 13)
        qrlb_Remark2.Caption := MDG300F1.ugd_List.cells[14, CurrentIndex+1]; //(12 -> 13 -> 14)

        if MDG300F1.ugd_List.Cells[27, CurrentIndex+1] = 'Y' then   //(16 -> 17 -> 18)
            qrlb_check1.Caption := '∨'
        else
            qrlb_check1.Caption := '';

        if MDG300F1.ugd_List.Cells[28, CurrentIndex+1] = 'Y' then  //(17 -> 18 -> 19)
            qrlb_check2.Caption := '∨'
        else
            qrlb_check2.Caption := '';

        if MDG300F1.ugd_List.Cells[33, CurrentIndex+1] = 'Y' then  //(18 -> 19 -> 20 -> 33) 2022-04-15
            qrlb_stat3.Caption := '[있음]'
        else
            qrlb_stat3.Caption := '[없음]';

        if MDG300F1.ugd_List.Cells[34, CurrentIndex+1] = 'Y' then //(19 -> 20 -> 21 -> 34) 2022-04-15
            qrlb_stat4.Caption := '[있음]'
        else
            qrlb_stat4.Caption := '[없음]';


//#######################################################
//                2022-04-15 LeeMinSoo
//                  활력징후 30분 null
//#######################################################
        if MDG300F1.ugd_List.Cells[17, CurrentIndex+1] = '' then   //활력징후 30분 활력징후30분이 없으면
            begin
            band_Detail.Height := 36;

            //shape
            qrsp_su1.Enabled := false;qrsp_su2.Enabled := false;qrsp_su3.Enabled := false;qrsp_su5.Enabled := false;qrsp_su6.Enabled := false;
            qrsp_su7.Enabled := false;qrsp_su8.Enabled := false;qrsp_su9.Enabled := false;qrsp_su11.Enabled := false;qrsp_su12.Enabled := false; // + 1줄
            qrsp_su13.Enabled := false;qrsp_su14.Enabled := false;qrsp_su15.Enabled := false;qrsp_su17.Enabled := false;qrsp_su18.Enabled := false;
            qrsp_su19.Enabled := false;qrsp_su20.Enabled := false;qrsp_su21.Enabled := false;qrsp_su23.Enabled := false;qrsp_su24.Enabled := false; // + 2줄
            qrsp_su25.Enabled := false;qrsp_su26.Enabled := false;qrsp_su27.Enabled := false;qrsp_su29.Enabled := false;qrsp_su30.Enabled := false;
            qrsp_su31.Enabled := false;qrsp_su32.Enabled := false;qrsp_su33.Enabled := false;qrsp_su35.Enabled := false;qrsp_su36.Enabled := false; // + 3줄
            qrsp_su37.Enabled := false;qrsp_su38.Enabled := false;qrsp_su39.Enabled := false;qrsp_su41.Enabled := false;qrsp_su42.Enabled := false;
            qrsp_su43.Enabled := false;qrsp_su44.Enabled := false;qrsp_su45.Enabled := false;qrsp_su47.Enabled := false;qrsp_su48.Enabled := false; // + 4줄

            //label
            qrlb_su1.Enabled := false;qrlb_su2.Enabled := false;qrlb_su3.Enabled := false;qrlb_su5.Enabled := false;qrlb_su6.Enabled := false;qrlb_su7.Enabled := false;
            qrlb_su8.Enabled := false;qrlb_su9.Enabled := false;qrlb_su10.Enabled := false;qrlb_su12.Enabled := false;qrlb_su13.Enabled := false;qrlb_su14.Enabled := false; // + 1줄
            qrlb_su15.Enabled := false;qrlb_su16.Enabled := false;qrlb_su17.Enabled := false;qrlb_su19.Enabled := false;qrlb_su20.Enabled := false;qrlb_su21.Enabled := false;
            qrlb_su22.Enabled := false;qrlb_su23.Enabled := false;qrlb_su24.Enabled := false;qrlb_su26.Enabled := false;qrlb_su27.Enabled := false;qrlb_su28.Enabled := false; // + 2줄
            qrlb_su29.Enabled := false;qrlb_su30.Enabled := false;qrlb_su31.Enabled := false;qrlb_su33.Enabled := false;qrlb_su34.Enabled := false;qrlb_su35.Enabled := false;
            qrlb_su36.Enabled := false;qrlb_su37.Enabled := false;qrlb_su38.Enabled := false;qrlb_su40.Enabled := false;qrlb_su41.Enabled := false;qrlb_su42.Enabled := false; // + 3줄
            qrlb_su43.Enabled := false;qrlb_su44.Enabled := false;qrlb_su45.Enabled := false;qrlb_su47.Enabled := false;qrlb_su48.Enabled := false;qrlb_su49.Enabled := false;
            qrlb_su50.Enabled := false;qrlb_su51.Enabled := false;qrlb_su52.Enabled := false;qrlb_su54.Enabled := false;qrlb_su55.Enabled := false;qrlb_su56.Enabled := false; // + 4줄

            //활력징후
            qrlb_Remark3.Enabled := false;qrlb_Remark4.Enabled := false;qrlb_Remark5.Enabled := false;qrlb_Remark6.Enabled := false;
            qrlb_Remark7.Enabled := false;qrlb_Remark8.Enabled := false;qrlb_Remark9.Enabled := false;qrlb_Remark10.Enabled := false;

            //있음 없음 유무
            qrlb_suyn1.Enabled := false;qrlb_suyn2.Enabled := false;qrlb_suyn3.Enabled := false;qrlb_suyn4.Enabled := false;qrlb_suyn5.Enabled := false;qrlb_suyn6.Enabled := false;
            qrlb_suyn7.Enabled := false;qrlb_suyn8.Enabled := false;qrlb_suyn9.Enabled := false;qrlb_suyn10.Enabled := false;qrlb_suyn11.Enabled := false;qrlb_suyn12.Enabled := false;
            qrlb_suyn13.Enabled := false;qrlb_suyn14.Enabled := false;qrlb_suyn15.Enabled := false;qrlb_suyn16.Enabled := false;

            //etc 내용
            qrlb_etc1.Enabled := false;qrlb_etc2.Enabled := false;qrlb_etc3.Enabled := false;qrlb_etc4.Enabled := false;
            qrlb_etc5.Enabled := false;qrlb_etc6.Enabled := false;qrlb_etc7.Enabled := false;qrlb_etc8.Enabled := false;

           end   // 값 없음 if 
//#######################################################
//                2022-04-15 LeeMinSoo
//                  활력징후 1시간 null 30분 존재
//#######################################################


        else if MDG300F1.ugd_List.Cells[18, CurrentIndex+1] = '' then   //활력징후 1시간 널 30분만 있을때
            begin
            band_Detail.Height := 71;

            //shape
            qrsp_su1.Enabled := true;qrsp_su2.Enabled := true;qrsp_su3.Enabled := true;qrsp_su5.Enabled := true;qrsp_su6.Enabled := true;
            qrsp_su8.Enabled := true;qrsp_su8.Enabled := false;qrsp_su9.Enabled := false;qrsp_su11.Enabled := false;qrsp_su12.Enabled := false; // + 1줄
            qrsp_su13.Enabled := false;qrsp_su14.Enabled := false;qrsp_su15.Enabled := false;qrsp_su17.Enabled := false;qrsp_su18.Enabled := false;
            qrsp_su19.Enabled := false;qrsp_su20.Enabled := false;qrsp_su21.Enabled := false;qrsp_su23.Enabled := false;qrsp_su24.Enabled := false; // + 2줄
            qrsp_su25.Enabled := false;qrsp_su26.Enabled := false;qrsp_su27.Enabled := false;qrsp_su29.Enabled := false;qrsp_su30.Enabled := false;
            qrsp_su31.Enabled := false;qrsp_su32.Enabled := false;qrsp_su33.Enabled := false;qrsp_su35.Enabled := false;qrsp_su36.Enabled := false; // + 3줄
            qrsp_su37.Enabled := false;qrsp_su38.Enabled := false;qrsp_su39.Enabled := false;qrsp_su41.Enabled := false;qrsp_su42.Enabled := false;
            qrsp_su43.Enabled := false;qrsp_su44.Enabled := false;qrsp_su45.Enabled := false;qrsp_su47.Enabled := false;qrsp_su48.Enabled := false; // + 4줄

            //label
            qrlb_su1.Enabled := true;qrlb_su2.Enabled := true;qrlb_su3.Enabled := true;qrlb_su5.Enabled := true;qrlb_su6.Enabled := true;qrlb_su7.Enabled := true;
            qrlb_su8.Enabled := false;qrlb_su9.Enabled := false;qrlb_su10.Enabled := false;qrlb_su12.Enabled := false;qrlb_su13.Enabled := false;qrlb_su14.Enabled := false; // + 1줄
            qrlb_su15.Enabled := false;qrlb_su16.Enabled := false;qrlb_su17.Enabled := false;qrlb_su19.Enabled := false;qrlb_su20.Enabled := false;qrlb_su21.Enabled := false;
            qrlb_su22.Enabled := false;qrlb_su23.Enabled := false;qrlb_su24.Enabled := false;qrlb_su26.Enabled := false;qrlb_su27.Enabled := false;qrlb_su28.Enabled := false; // + 2줄
            qrlb_su29.Enabled := false;qrlb_su30.Enabled := false;qrlb_su31.Enabled := false;qrlb_su33.Enabled := false;qrlb_su34.Enabled := false;qrlb_su35.Enabled := false;
            qrlb_su36.Enabled := false;qrlb_su37.Enabled := false;qrlb_su38.Enabled := false;qrlb_su40.Enabled := false;qrlb_su41.Enabled := false;qrlb_su42.Enabled := false; // + 3줄
            qrlb_su43.Enabled := false;qrlb_su44.Enabled := false;qrlb_su45.Enabled := false;qrlb_su47.Enabled := false;qrlb_su48.Enabled := false;qrlb_su49.Enabled := false;
            qrlb_su50.Enabled := false;qrlb_su51.Enabled := false;qrlb_su52.Enabled := false;qrlb_su54.Enabled := false;qrlb_su55.Enabled := false;qrlb_su56.Enabled := false; // + 4줄

            //활력징후
            qrlb_Remark3.Enabled := true;qrlb_Remark4.Enabled := false;qrlb_Remark5.Enabled := false;qrlb_Remark6.Enabled := false;
            qrlb_Remark7.Enabled := false;qrlb_Remark8.Enabled := false;qrlb_Remark9.Enabled := false;qrlb_Remark10.Enabled := false;

            //있음 없음 유무
            qrlb_suyn1.Enabled := true;qrlb_suyn2.Enabled := true;qrlb_suyn3.Enabled := false;qrlb_suyn4.Enabled := false;qrlb_suyn5.Enabled := false;qrlb_suyn6.Enabled := false;
            qrlb_suyn7.Enabled := false;qrlb_suyn8.Enabled := false;qrlb_suyn9.Enabled := false;qrlb_suyn10.Enabled := false;qrlb_suyn11.Enabled := false;qrlb_suyn12.Enabled := false;
            qrlb_suyn13.Enabled := false;qrlb_suyn14.Enabled := false;qrlb_suyn15.Enabled := false;qrlb_suyn16.Enabled := false;

            //etc 내용
            qrlb_etc1.Enabled := true;qrlb_etc2.Enabled := false;qrlb_etc3.Enabled := false;qrlb_etc4.Enabled := false;
            qrlb_etc5.Enabled := false;qrlb_etc6.Enabled := false;qrlb_etc7.Enabled := false;qrlb_etc8.Enabled := false;

            //데이터 삽입
            //활력징후 30
            qrlb_Remark3.caption      := MDG300F1.ugd_List.cells[17, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[35, CurrentIndex+1] = 'Y' then
              qrlb_suyn1.Caption := '[있음]'
            else
              qrlb_suyn1.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[36, CurrentIndex+1] = 'Y' then
              qrlb_suyn2.Caption := '[있음]'
            else
              qrlb_suyn2.Caption := '[없음]';

            //기타
            qrlb_etc1.Caption      := MDG300F1.ugd_List.cells[52, CurrentIndex+1];

            end //30분 else if

//#######################################################
//                2022-04-15 LeeMinSoo
//                  활력징후 1시간30분 null 1시간 존재
//#######################################################


        else if MDG300F1.ugd_List.Cells[19, CurrentIndex+1] = '' then   //활력징후 1시간30분 널 1시간 까지만 있을때
            begin
            band_Detail.Height := 71;

            //shape
            qrsp_su1.Enabled := true;qrsp_su2.Enabled := true;qrsp_su3.Enabled := true;qrsp_su5.Enabled := true;qrsp_su6.Enabled := true;
            qrsp_su8.Enabled := true;qrsp_su8.Enabled := true;qrsp_su9.Enabled := true;qrsp_su11.Enabled := true;qrsp_su12.Enabled := true; // + 1줄
            qrsp_su13.Enabled := false;qrsp_su14.Enabled := false;qrsp_su15.Enabled := false;qrsp_su17.Enabled := false;qrsp_su18.Enabled := false;
            qrsp_su19.Enabled := false;qrsp_su20.Enabled := false;qrsp_su21.Enabled := false;qrsp_su23.Enabled := false;qrsp_su24.Enabled := false; // + 2줄
            qrsp_su25.Enabled := false;qrsp_su26.Enabled := false;qrsp_su27.Enabled := false;qrsp_su29.Enabled := false;qrsp_su30.Enabled := false;
            qrsp_su31.Enabled := false;qrsp_su32.Enabled := false;qrsp_su33.Enabled := false;qrsp_su35.Enabled := false;qrsp_su36.Enabled := false; // + 3줄
            qrsp_su37.Enabled := false;qrsp_su38.Enabled := false;qrsp_su39.Enabled := false;qrsp_su41.Enabled := false;qrsp_su42.Enabled := false;
            qrsp_su43.Enabled := false;qrsp_su44.Enabled := false;qrsp_su45.Enabled := false;qrsp_su47.Enabled := false;qrsp_su48.Enabled := false; // + 4줄

            //label
            qrlb_su1.Enabled := true;qrlb_su2.Enabled := true;qrlb_su3.Enabled := true;qrlb_su5.Enabled := true;qrlb_su6.Enabled := true;qrlb_su7.Enabled := true;
            qrlb_su8.Enabled := true;qrlb_su9.Enabled := true;qrlb_su10.Enabled := true;qrlb_su12.Enabled := true;qrlb_su13.Enabled := true;qrlb_su14.Enabled := true; // + 1줄
            qrlb_su15.Enabled := false;qrlb_su16.Enabled := false;qrlb_su17.Enabled := false;qrlb_su19.Enabled := false;qrlb_su20.Enabled := false;qrlb_su21.Enabled := false;
            qrlb_su22.Enabled := false;qrlb_su23.Enabled := false;qrlb_su24.Enabled := false;qrlb_su26.Enabled := false;qrlb_su27.Enabled := false;qrlb_su28.Enabled := false; // + 2줄
            qrlb_su29.Enabled := false;qrlb_su30.Enabled := false;qrlb_su31.Enabled := false;qrlb_su33.Enabled := false;qrlb_su34.Enabled := false;qrlb_su35.Enabled := false;
            qrlb_su36.Enabled := false;qrlb_su37.Enabled := false;qrlb_su38.Enabled := false;qrlb_su40.Enabled := false;qrlb_su41.Enabled := false;qrlb_su42.Enabled := false; // + 3줄
            qrlb_su43.Enabled := false;qrlb_su44.Enabled := false;qrlb_su45.Enabled := false;qrlb_su47.Enabled := false;qrlb_su48.Enabled := false;qrlb_su49.Enabled := false;
            qrlb_su50.Enabled := false;qrlb_su51.Enabled := false;qrlb_su52.Enabled := false;qrlb_su54.Enabled := false;qrlb_su55.Enabled := false;qrlb_su56.Enabled := false; // + 4줄

            //활력징후
            qrlb_Remark3.Enabled := true;qrlb_Remark4.Enabled := true;qrlb_Remark5.Enabled := false;qrlb_Remark6.Enabled := false;
            qrlb_Remark7.Enabled := false;qrlb_Remark8.Enabled := false;qrlb_Remark9.Enabled := false;qrlb_Remark10.Enabled := false;

            //있음 없음 유무
            qrlb_suyn1.Enabled := true;qrlb_suyn2.Enabled := true;qrlb_suyn3.Enabled := true;qrlb_suyn4.Enabled := true;qrlb_suyn5.Enabled := false;qrlb_suyn6.Enabled := false;
            qrlb_suyn7.Enabled := false;qrlb_suyn8.Enabled := false;qrlb_suyn9.Enabled := false;qrlb_suyn10.Enabled := false;qrlb_suyn11.Enabled := false;qrlb_suyn12.Enabled := false;
            qrlb_suyn13.Enabled := false;qrlb_suyn14.Enabled := false;qrlb_suyn15.Enabled := false;qrlb_suyn16.Enabled := false;

            //etc 내용
            qrlb_etc1.Enabled := true;qrlb_etc2.Enabled := true;qrlb_etc3.Enabled := false;qrlb_etc4.Enabled := false;
            qrlb_etc5.Enabled := false;qrlb_etc6.Enabled := false;qrlb_etc7.Enabled := false;qrlb_etc8.Enabled := false;

            //데이터 삽입
            //활력징후 30
            qrlb_Remark3.caption      := MDG300F1.ugd_List.cells[17, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[35, CurrentIndex+1] = 'Y' then
              qrlb_suyn1.Caption := '[있음]'
            else
              qrlb_suyn1.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[36, CurrentIndex+1] = 'Y' then
              qrlb_suyn2.Caption := '[있음]'
            else
              qrlb_suyn2.Caption := '[없음]';

            //기타
            qrlb_etc1.Caption      := MDG300F1.ugd_List.cells[52, CurrentIndex+1];

            //활력징후 1시간
            qrlb_Remark4.Caption      := MDG300F1.ugd_List.cells[18, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[37, CurrentIndex+1] = 'Y' then
              qrlb_suyn3.Caption := '[있음]'
            else
              qrlb_suyn3.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[38, CurrentIndex+1] = 'Y' then
              qrlb_suyn4.Caption := '[있음]'
            else
              qrlb_suyn4.Caption := '[없음]';

            //기타
            qrlb_etc2.Caption      := MDG300F1.ugd_List.cells[53, CurrentIndex+1];


            end //1시간 else if

//#######################################################
//                2022-04-15 LeeMinSoo
//                  활력징후 2시간 null 1시간30분 존재
//#######################################################


        else if MDG300F1.ugd_List.Cells[20, CurrentIndex+1] = '' then   //활력징후 2시간 널 1시간30분 까지만 있을때
            begin
            band_Detail.Height := 105;

            //shape
            qrsp_su1.Enabled := true;qrsp_su2.Enabled := true;qrsp_su3.Enabled := true;qrsp_su5.Enabled := true;qrsp_su6.Enabled := true;
            qrsp_su7.Enabled := true;qrsp_su8.Enabled := true;qrsp_su9.Enabled := true;qrsp_su11.Enabled := true;qrsp_su12.Enabled := true; // + 1줄
            qrsp_su13.Enabled := true;qrsp_su14.Enabled := true;qrsp_su15.Enabled := true;qrsp_su17.Enabled := true;qrsp_su18.Enabled := true;
            qrsp_su19.Enabled := true;qrsp_su20.Enabled := false;qrsp_su21.Enabled := false;qrsp_su23.Enabled := false;qrsp_su24.Enabled := false; // + 2줄
            qrsp_su25.Enabled := false;qrsp_su26.Enabled := false;qrsp_su27.Enabled := false;qrsp_su29.Enabled := false;qrsp_su30.Enabled := false;
            qrsp_su31.Enabled := false;qrsp_su32.Enabled := false;qrsp_su33.Enabled := false;qrsp_su35.Enabled := false;qrsp_su36.Enabled := false; // + 3줄
            qrsp_su37.Enabled := false;qrsp_su38.Enabled := false;qrsp_su39.Enabled := false;qrsp_su41.Enabled := false;qrsp_su42.Enabled := false;
            qrsp_su43.Enabled := false;qrsp_su44.Enabled := false;qrsp_su45.Enabled := false;qrsp_su47.Enabled := false;qrsp_su48.Enabled := false; // + 4줄

            //label
            qrlb_su1.Enabled := true;qrlb_su2.Enabled := true;qrlb_su3.Enabled := true;qrlb_su5.Enabled := true;qrlb_su6.Enabled := true;qrlb_su7.Enabled := true;
            qrlb_su8.Enabled := true;qrlb_su9.Enabled := true;qrlb_su10.Enabled := true;qrlb_su12.Enabled := true;qrlb_su13.Enabled := true;qrlb_su14.Enabled := true; // + 1줄
            qrlb_su15.Enabled := true;qrlb_su16.Enabled := true;qrlb_su17.Enabled := true;qrlb_su19.Enabled := true;qrlb_su20.Enabled := true;qrlb_su21.Enabled := true;
            qrlb_su22.Enabled := false;qrlb_su23.Enabled := false;qrlb_su24.Enabled := false;qrlb_su26.Enabled := false;qrlb_su27.Enabled := false;qrlb_su28.Enabled := false; // + 2줄
            qrlb_su29.Enabled := false;qrlb_su30.Enabled := false;qrlb_su31.Enabled := false;qrlb_su33.Enabled := false;qrlb_su34.Enabled := false;qrlb_su35.Enabled := false;
            qrlb_su36.Enabled := false;qrlb_su37.Enabled := false;qrlb_su38.Enabled := false;qrlb_su40.Enabled := false;qrlb_su41.Enabled := false;qrlb_su42.Enabled := false; // + 3줄
            qrlb_su43.Enabled := false;qrlb_su44.Enabled := false;qrlb_su45.Enabled := false;qrlb_su47.Enabled := false;qrlb_su48.Enabled := false;qrlb_su49.Enabled := false;
            qrlb_su50.Enabled := false;qrlb_su51.Enabled := false;qrlb_su52.Enabled := false;qrlb_su54.Enabled := false;qrlb_su55.Enabled := false;qrlb_su56.Enabled := false; // + 4줄

            //활력징후
            qrlb_Remark3.Enabled := true;qrlb_Remark4.Enabled := true;qrlb_Remark5.Enabled := true;qrlb_Remark6.Enabled := false;
            qrlb_Remark7.Enabled := false;qrlb_Remark8.Enabled := false;qrlb_Remark9.Enabled := false;qrlb_Remark10.Enabled := false;

            //있음 없음 유무
            qrlb_suyn1.Enabled := true;qrlb_suyn2.Enabled := true;qrlb_suyn3.Enabled := true;qrlb_suyn4.Enabled := true;qrlb_suyn5.Enabled := true;qrlb_suyn6.Enabled := true;
            qrlb_suyn7.Enabled := false;qrlb_suyn8.Enabled := false;qrlb_suyn9.Enabled := false;qrlb_suyn10.Enabled := false;qrlb_suyn11.Enabled := false;qrlb_suyn12.Enabled := false;
            qrlb_suyn13.Enabled := false;qrlb_suyn14.Enabled := false;qrlb_suyn15.Enabled := false;qrlb_suyn16.Enabled := false;

            //etc 내용
            qrlb_etc1.Enabled := true;qrlb_etc2.Enabled := true;qrlb_etc3.Enabled := true;qrlb_etc4.Enabled := false;
            qrlb_etc5.Enabled := false;qrlb_etc6.Enabled := false;qrlb_etc7.Enabled := false;qrlb_etc8.Enabled := false;

            //데이터 삽입
            //활력징후 30
            qrlb_Remark3.caption      := MDG300F1.ugd_List.cells[17, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[35, CurrentIndex+1] = 'Y' then
              qrlb_suyn1.Caption := '[있음]'
            else
              qrlb_suyn1.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[36, CurrentIndex+1] = 'Y' then
              qrlb_suyn2.Caption := '[있음]'
            else
              qrlb_suyn2.Caption := '[없음]';

            //기타
            qrlb_etc1.Caption      := MDG300F1.ugd_List.cells[52, CurrentIndex+1];

            //활력징후 1시간
            qrlb_Remark4.Caption      := MDG300F1.ugd_List.cells[18, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[37, CurrentIndex+1] = 'Y' then
              qrlb_suyn3.Caption := '[있음]'
            else
              qrlb_suyn3.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[38, CurrentIndex+1] = 'Y' then
              qrlb_suyn4.Caption := '[있음]'
            else
              qrlb_suyn4.Caption := '[없음]';

            //기타
            qrlb_etc2.Caption      := MDG300F1.ugd_List.cells[53, CurrentIndex+1];

            //활력징후 1시간 30분
            qrlb_Remark5.Caption      := MDG300F1.ugd_List.cells[19, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[39, CurrentIndex+1] = 'Y' then
              qrlb_suyn5.Caption := '[있음]'
            else
              qrlb_suyn5.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[40, CurrentIndex+1] = 'Y' then
              qrlb_suyn6.Caption := '[있음]'
            else
              qrlb_suyn6.Caption := '[없음]';

            //기타
            qrlb_etc3.Caption      := MDG300F1.ugd_List.cells[54, CurrentIndex+1];


            end //1시간 30분 else if

//#######################################################
//                2022-04-15 LeeMinSoo
//                  활력징후 2시간30분 null 2시간 존재
//#######################################################


        else if MDG300F1.ugd_List.Cells[21, CurrentIndex+1] = '' then   //활력징후 2시간30분 널 2시간 까지만 있을때
            begin
            band_Detail.Height := 105;

            //shape
            qrsp_su1.Enabled := true;qrsp_su2.Enabled := true;qrsp_su3.Enabled := true;qrsp_su5.Enabled := true;qrsp_su6.Enabled := true;
            qrsp_su8.Enabled := true;qrsp_su8.Enabled := true;qrsp_su9.Enabled := true;qrsp_su11.Enabled := true;qrsp_su12.Enabled := true; // + 1줄
            qrsp_su13.Enabled := true;qrsp_su14.Enabled := true;qrsp_su15.Enabled := true;qrsp_su17.Enabled := true;qrsp_su18.Enabled := true;
            qrsp_su19.Enabled := true;qrsp_su20.Enabled := true;qrsp_su21.Enabled := true;qrsp_su23.Enabled := true;qrsp_su24.Enabled := true; // + 2줄
            qrsp_su25.Enabled := false;qrsp_su26.Enabled := false;qrsp_su27.Enabled := false;qrsp_su29.Enabled := false;qrsp_su30.Enabled := false;
            qrsp_su31.Enabled := false;qrsp_su32.Enabled := false;qrsp_su33.Enabled := false;qrsp_su35.Enabled := false;qrsp_su36.Enabled := false; // + 3줄
            qrsp_su37.Enabled := false;qrsp_su38.Enabled := false;qrsp_su39.Enabled := false;qrsp_su41.Enabled := false;qrsp_su42.Enabled := false;
            qrsp_su43.Enabled := false;qrsp_su44.Enabled := false;qrsp_su45.Enabled := false;qrsp_su47.Enabled := false;qrsp_su48.Enabled := false; // + 4줄

            //label
            qrlb_su1.Enabled := true;qrlb_su2.Enabled := true;qrlb_su3.Enabled := true;qrlb_su5.Enabled := true;qrlb_su6.Enabled := true;qrlb_su7.Enabled := true;
            qrlb_su8.Enabled := true;qrlb_su9.Enabled := true;qrlb_su10.Enabled := true;qrlb_su12.Enabled := true;qrlb_su13.Enabled := true;qrlb_su14.Enabled := true; // + 1줄
            qrlb_su15.Enabled := true;qrlb_su16.Enabled := true;qrlb_su17.Enabled := true;qrlb_su19.Enabled := true;qrlb_su20.Enabled := true;qrlb_su21.Enabled := true;
            qrlb_su22.Enabled := true;qrlb_su23.Enabled := true;qrlb_su24.Enabled := true;qrlb_su26.Enabled := true;qrlb_su27.Enabled := true;qrlb_su28.Enabled := true; // + 2줄
            qrlb_su29.Enabled := false;qrlb_su30.Enabled := false;qrlb_su31.Enabled := false;qrlb_su33.Enabled := false;qrlb_su34.Enabled := false;qrlb_su35.Enabled := false;
            qrlb_su36.Enabled := false;qrlb_su37.Enabled := false;qrlb_su38.Enabled := false;qrlb_su40.Enabled := false;qrlb_su41.Enabled := false;qrlb_su42.Enabled := false; // + 3줄
            qrlb_su43.Enabled := false;qrlb_su44.Enabled := false;qrlb_su45.Enabled := false;qrlb_su47.Enabled := false;qrlb_su48.Enabled := false;qrlb_su49.Enabled := false;
            qrlb_su50.Enabled := false;qrlb_su51.Enabled := false;qrlb_su52.Enabled := false;qrlb_su54.Enabled := false;qrlb_su55.Enabled := false;qrlb_su56.Enabled := false; // + 4줄

            //활력징후
            qrlb_Remark3.Enabled := true;qrlb_Remark4.Enabled := true;qrlb_Remark5.Enabled := true;qrlb_Remark6.Enabled := true;
            qrlb_Remark7.Enabled := false;qrlb_Remark8.Enabled := false;qrlb_Remark9.Enabled := false;qrlb_Remark10.Enabled := false;

            //있음 없음 유무
            qrlb_suyn1.Enabled := true;qrlb_suyn2.Enabled := true;qrlb_suyn3.Enabled := true;qrlb_suyn4.Enabled := true;qrlb_suyn5.Enabled := true;qrlb_suyn6.Enabled := true;
            qrlb_suyn7.Enabled := true;qrlb_suyn8.Enabled := true;qrlb_suyn9.Enabled := false;qrlb_suyn10.Enabled := false;qrlb_suyn11.Enabled := false;qrlb_suyn12.Enabled := false;
            qrlb_suyn13.Enabled := false;qrlb_suyn14.Enabled := false;qrlb_suyn15.Enabled := false;qrlb_suyn16.Enabled := false;

            //etc 내용
            qrlb_etc1.Enabled := true;qrlb_etc2.Enabled := true;qrlb_etc3.Enabled := true;qrlb_etc4.Enabled := true;
            qrlb_etc5.Enabled := false;qrlb_etc6.Enabled := false;qrlb_etc7.Enabled := false;qrlb_etc8.Enabled := false;

            //데이터 삽입
            //활력징후 30
            qrlb_Remark3.caption      := MDG300F1.ugd_List.cells[17, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[35, CurrentIndex+1] = 'Y' then
              qrlb_suyn1.Caption := '[있음]'
            else
              qrlb_suyn1.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[36, CurrentIndex+1] = 'Y' then
              qrlb_suyn2.Caption := '[있음]'
            else
              qrlb_suyn2.Caption := '[없음]';

            //기타
            qrlb_etc1.Caption      := MDG300F1.ugd_List.cells[52, CurrentIndex+1];

            //활력징후 1시간
            qrlb_Remark4.Caption      := MDG300F1.ugd_List.cells[18, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[37, CurrentIndex+1] = 'Y' then
              qrlb_suyn3.Caption := '[있음]'
            else
              qrlb_suyn3.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[38, CurrentIndex+1] = 'Y' then
              qrlb_suyn4.Caption := '[있음]'
            else
              qrlb_suyn4.Caption := '[없음]';

            //기타
            qrlb_etc2.Caption      := MDG300F1.ugd_List.cells[53, CurrentIndex+1];

            //활력징후 1시간 30분
            qrlb_Remark5.Caption      := MDG300F1.ugd_List.cells[19, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[39, CurrentIndex+1] = 'Y' then
              qrlb_suyn5.Caption := '[있음]'
            else
              qrlb_suyn5.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[40, CurrentIndex+1] = 'Y' then
              qrlb_suyn6.Caption := '[있음]'
            else
              qrlb_suyn6.Caption := '[없음]';

            //기타
            qrlb_etc3.Caption      := MDG300F1.ugd_List.cells[54, CurrentIndex+1];

            //활력징후 2시간
            qrlb_Remark6.Caption      := MDG300F1.ugd_List.cells[20, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[41, CurrentIndex+1] = 'Y' then
              qrlb_suyn7.Caption := '[있음]'
            else
              qrlb_suyn7.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[42, CurrentIndex+1] = 'Y' then
              qrlb_suyn8.Caption := '[있음]'
            else
              qrlb_suyn8.Caption := '[없음]';

            //기타
            qrlb_etc4.Caption      := MDG300F1.ugd_List.cells[55, CurrentIndex+1];

            end //2시간 else if

//#######################################################
//                2022-04-15 LeeMinSoo
//                  활력징후 3시간 null 2시간 30분 존재
//#######################################################


        else if MDG300F1.ugd_List.Cells[22, CurrentIndex+1] = '' then   //활력징후 3시간 널 2시간 30분 까지만 있을때
            begin
            band_Detail.Height := 139;

            //shape
            qrsp_su1.Enabled := true;qrsp_su2.Enabled := true;qrsp_su3.Enabled := true;qrsp_su5.Enabled := true;qrsp_su6.Enabled := true;
            qrsp_su8.Enabled := true;qrsp_su8.Enabled := true;qrsp_su9.Enabled := true;qrsp_su11.Enabled := true;qrsp_su12.Enabled := true; // + 1줄
            qrsp_su13.Enabled := true;qrsp_su14.Enabled := true;qrsp_su15.Enabled := true;qrsp_su17.Enabled := true;qrsp_su18.Enabled := true;
            qrsp_su19.Enabled := true;qrsp_su20.Enabled := true;qrsp_su21.Enabled := true;qrsp_su23.Enabled := true;qrsp_su24.Enabled := true; // + 2줄
            qrsp_su25.Enabled := true;qrsp_su26.Enabled := true;qrsp_su27.Enabled := true;qrsp_su29.Enabled := true;qrsp_su30.Enabled := true;
            qrsp_su31.Enabled := false;qrsp_su32.Enabled := false;qrsp_su33.Enabled := false;qrsp_su35.Enabled := false;qrsp_su36.Enabled := false; // + 3줄
            qrsp_su37.Enabled := false;qrsp_su38.Enabled := false;qrsp_su39.Enabled := false;qrsp_su41.Enabled := false;qrsp_su42.Enabled := false;
            qrsp_su43.Enabled := false;qrsp_su44.Enabled := false;qrsp_su45.Enabled := false;qrsp_su47.Enabled := false;qrsp_su48.Enabled := false; // + 4줄

            //label
            qrlb_su1.Enabled := true;qrlb_su2.Enabled := true;qrlb_su3.Enabled := true;qrlb_su5.Enabled := true;qrlb_su6.Enabled := true;qrlb_su7.Enabled := true;
            qrlb_su8.Enabled := true;qrlb_su9.Enabled := true;qrlb_su10.Enabled := true;qrlb_su12.Enabled := true;qrlb_su13.Enabled := true;qrlb_su14.Enabled := true; // + 1줄
            qrlb_su15.Enabled := true;qrlb_su16.Enabled := true;qrlb_su17.Enabled := true;qrlb_su19.Enabled := true;qrlb_su20.Enabled := true;qrlb_su21.Enabled := true;
            qrlb_su22.Enabled := true;qrlb_su23.Enabled := true;qrlb_su24.Enabled := true;qrlb_su26.Enabled := true;qrlb_su27.Enabled := true;qrlb_su28.Enabled := true; // + 2줄
            qrlb_su29.Enabled := true;qrlb_su30.Enabled := true;qrlb_su31.Enabled := true;qrlb_su33.Enabled := true;qrlb_su34.Enabled := true;qrlb_su35.Enabled := true;
            qrlb_su36.Enabled := false;qrlb_su37.Enabled := false;qrlb_su38.Enabled := false;qrlb_su40.Enabled := false;qrlb_su41.Enabled := false;qrlb_su42.Enabled := false; // + 3줄
            qrlb_su43.Enabled := false;qrlb_su44.Enabled := false;qrlb_su45.Enabled := false;qrlb_su47.Enabled := false;qrlb_su48.Enabled := false;qrlb_su49.Enabled := false;
            qrlb_su50.Enabled := false;qrlb_su51.Enabled := false;qrlb_su52.Enabled := false;qrlb_su54.Enabled := false;qrlb_su55.Enabled := false;qrlb_su56.Enabled := false; // + 4줄

            //활력징후
            qrlb_Remark3.Enabled := true;qrlb_Remark4.Enabled := true;qrlb_Remark5.Enabled := true;qrlb_Remark6.Enabled := true;
            qrlb_Remark7.Enabled := true;qrlb_Remark8.Enabled := false;qrlb_Remark9.Enabled := false;qrlb_Remark10.Enabled := false;

            //있음 없음 유무
            qrlb_suyn1.Enabled := true;qrlb_suyn2.Enabled := true;qrlb_suyn3.Enabled := true;qrlb_suyn4.Enabled := true;qrlb_suyn5.Enabled := true;qrlb_suyn6.Enabled := true;
            qrlb_suyn7.Enabled := true;qrlb_suyn8.Enabled := true;qrlb_suyn9.Enabled := true;qrlb_suyn10.Enabled := true;qrlb_suyn11.Enabled := false;qrlb_suyn12.Enabled := false;
            qrlb_suyn13.Enabled := false;qrlb_suyn14.Enabled := false;qrlb_suyn15.Enabled := false;qrlb_suyn16.Enabled := false;

            //etc 내용
            qrlb_etc1.Enabled := true;qrlb_etc2.Enabled := true;qrlb_etc3.Enabled := true;qrlb_etc4.Enabled := true;
            qrlb_etc5.Enabled := true;qrlb_etc6.Enabled := false;qrlb_etc7.Enabled := false;qrlb_etc8.Enabled := false;

            //데이터 삽입
            //활력징후 30
            qrlb_Remark3.caption      := MDG300F1.ugd_List.cells[17, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[35, CurrentIndex+1] = 'Y' then
              qrlb_suyn1.Caption := '[있음]'
            else
              qrlb_suyn1.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[36, CurrentIndex+1] = 'Y' then
              qrlb_suyn2.Caption := '[있음]'
            else
              qrlb_suyn2.Caption := '[없음]';

            //기타
            qrlb_etc1.Caption      := MDG300F1.ugd_List.cells[52, CurrentIndex+1];

            //활력징후 1시간
            qrlb_Remark4.Caption      := MDG300F1.ugd_List.cells[18, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[37, CurrentIndex+1] = 'Y' then
              qrlb_suyn3.Caption := '[있음]'
            else
              qrlb_suyn3.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[38, CurrentIndex+1] = 'Y' then
              qrlb_suyn4.Caption := '[있음]'
            else
              qrlb_suyn4.Caption := '[없음]';

            //기타
            qrlb_etc2.Caption      := MDG300F1.ugd_List.cells[53, CurrentIndex+1];

            //활력징후 1시간 30분
            qrlb_Remark5.Caption      := MDG300F1.ugd_List.cells[19, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[39, CurrentIndex+1] = 'Y' then
              qrlb_suyn5.Caption := '[있음]'
            else
              qrlb_suyn5.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[40, CurrentIndex+1] = 'Y' then
              qrlb_suyn6.Caption := '[있음]'
            else
              qrlb_suyn6.Caption := '[없음]';

            //기타
            qrlb_etc3.Caption      := MDG300F1.ugd_List.cells[54, CurrentIndex+1];

            //활력징후 2시간
            qrlb_Remark6.Caption      := MDG300F1.ugd_List.cells[20, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[41, CurrentIndex+1] = 'Y' then
              qrlb_suyn7.Caption := '[있음]'
            else
              qrlb_suyn7.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[42, CurrentIndex+1] = 'Y' then
              qrlb_suyn8.Caption := '[있음]'
            else
              qrlb_suyn8.Caption := '[없음]';

            //기타
            qrlb_etc4.Caption      := MDG300F1.ugd_List.cells[55, CurrentIndex+1];

            //활력징후 2시간 30분
            qrlb_Remark7.Caption      := MDG300F1.ugd_List.cells[21, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[43, CurrentIndex+1] = 'Y' then
              qrlb_suyn9.Caption := '[있음]'
            else
              qrlb_suyn9.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[44, CurrentIndex+1] = 'Y' then
              qrlb_suyn10.Caption := '[있음]'
            else
              qrlb_suyn10.Caption := '[없음]';

            //기타
            qrlb_etc5.Caption      := MDG300F1.ugd_List.cells[56, CurrentIndex+1];

            end //2시간 30분 else if

 //#######################################################
//                2022-04-15 LeeMinSoo
//                  활력징후 3시간30분 null 3시간 존재
//#######################################################


        else if MDG300F1.ugd_List.Cells[23, CurrentIndex+1] = '' then   //활력징후 3시간30분 널 3시간 까지만 있을때
            begin
            band_Detail.Height := 139;

            //shape
            qrsp_su1.Enabled := true;qrsp_su2.Enabled := true;qrsp_su3.Enabled := true;qrsp_su5.Enabled := true;qrsp_su6.Enabled := true;
            qrsp_su8.Enabled := true;qrsp_su8.Enabled := true;qrsp_su9.Enabled := true;qrsp_su11.Enabled := true;qrsp_su12.Enabled := true; // + 1줄
            qrsp_su13.Enabled := true;qrsp_su14.Enabled := true;qrsp_su15.Enabled := true;qrsp_su17.Enabled := true;qrsp_su18.Enabled := true;
            qrsp_su19.Enabled := true;qrsp_su20.Enabled := true;qrsp_su21.Enabled := true;qrsp_su23.Enabled := true;qrsp_su24.Enabled := true; // + 2줄
            qrsp_su25.Enabled := true;qrsp_su26.Enabled := true;qrsp_su27.Enabled := true;qrsp_su29.Enabled := true;qrsp_su30.Enabled := true;
            qrsp_su31.Enabled := true;qrsp_su32.Enabled := true;qrsp_su33.Enabled := true;qrsp_su35.Enabled := true;qrsp_su36.Enabled := true; // + 3줄
            qrsp_su37.Enabled := false;qrsp_su38.Enabled := false;qrsp_su39.Enabled := false;qrsp_su41.Enabled := false;qrsp_su42.Enabled := false;
            qrsp_su43.Enabled := false;qrsp_su44.Enabled := false;qrsp_su45.Enabled := false;qrsp_su47.Enabled := false;qrsp_su48.Enabled := false; // + 4줄

            //label
            qrlb_su1.Enabled := true;qrlb_su2.Enabled := true;qrlb_su3.Enabled := true;qrlb_su5.Enabled := true;qrlb_su6.Enabled := true;qrlb_su7.Enabled := true;
            qrlb_su8.Enabled := true;qrlb_su9.Enabled := true;qrlb_su10.Enabled := true;qrlb_su12.Enabled := true;qrlb_su13.Enabled := true;qrlb_su14.Enabled := true; // + 1줄
            qrlb_su15.Enabled := true;qrlb_su16.Enabled := true;qrlb_su17.Enabled := true;qrlb_su19.Enabled := true;qrlb_su20.Enabled := true;qrlb_su21.Enabled := true;
            qrlb_su22.Enabled := true;qrlb_su23.Enabled := true;qrlb_su24.Enabled := true;qrlb_su26.Enabled := true;qrlb_su27.Enabled := true;qrlb_su28.Enabled := true; // + 2줄
            qrlb_su29.Enabled := true;qrlb_su30.Enabled := true;qrlb_su31.Enabled := true;qrlb_su33.Enabled := true;qrlb_su34.Enabled := true;qrlb_su35.Enabled := true;
            qrlb_su36.Enabled := true;qrlb_su37.Enabled := true;qrlb_su38.Enabled := true;qrlb_su40.Enabled := true;qrlb_su41.Enabled := true;qrlb_su42.Enabled := true; // + 3줄
            qrlb_su43.Enabled := false;qrlb_su44.Enabled := false;qrlb_su45.Enabled := false;qrlb_su47.Enabled := false;qrlb_su48.Enabled := false;qrlb_su49.Enabled := false;
            qrlb_su50.Enabled := false;qrlb_su51.Enabled := false;qrlb_su52.Enabled := false;qrlb_su54.Enabled := false;qrlb_su55.Enabled := false;qrlb_su56.Enabled := false; // + 4줄

            //활력징후
            qrlb_Remark3.Enabled := true;qrlb_Remark4.Enabled := true;qrlb_Remark5.Enabled := true;qrlb_Remark6.Enabled := true;
            qrlb_Remark7.Enabled := true;qrlb_Remark8.Enabled := true;qrlb_Remark9.Enabled := false;qrlb_Remark10.Enabled := false;

            //있음 없음 유무
            qrlb_suyn1.Enabled := true;qrlb_suyn2.Enabled := true;qrlb_suyn3.Enabled := true;qrlb_suyn4.Enabled := true;qrlb_suyn5.Enabled := true;qrlb_suyn6.Enabled := true;
            qrlb_suyn7.Enabled := true;qrlb_suyn8.Enabled := true;qrlb_suyn9.Enabled := true;qrlb_suyn10.Enabled := true;qrlb_suyn11.Enabled := true;qrlb_suyn12.Enabled := true;
            qrlb_suyn13.Enabled := false;qrlb_suyn14.Enabled := false;qrlb_suyn15.Enabled := false;qrlb_suyn16.Enabled := false;

            //etc 내용
            qrlb_etc1.Enabled := true;qrlb_etc2.Enabled := true;qrlb_etc3.Enabled := true;qrlb_etc4.Enabled := true;
            qrlb_etc5.Enabled := true;qrlb_etc6.Enabled := true;qrlb_etc7.Enabled := false;qrlb_etc8.Enabled := false;

            //데이터 삽입
            //활력징후 30
            qrlb_Remark3.caption      := MDG300F1.ugd_List.cells[17, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[35, CurrentIndex+1] = 'Y' then
              qrlb_suyn1.Caption := '[있음]'
            else
              qrlb_suyn1.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[36, CurrentIndex+1] = 'Y' then
              qrlb_suyn2.Caption := '[있음]'
            else
              qrlb_suyn2.Caption := '[없음]';

            //기타
            qrlb_etc1.Caption      := MDG300F1.ugd_List.cells[52, CurrentIndex+1];

            //활력징후 1시간
            qrlb_Remark4.Caption      := MDG300F1.ugd_List.cells[18, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[37, CurrentIndex+1] = 'Y' then
              qrlb_suyn3.Caption := '[있음]'
            else
              qrlb_suyn3.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[38, CurrentIndex+1] = 'Y' then
              qrlb_suyn4.Caption := '[있음]'
            else
              qrlb_suyn4.Caption := '[없음]';

            //기타
            qrlb_etc2.Caption      := MDG300F1.ugd_List.cells[53, CurrentIndex+1];

            //활력징후 1시간 30분
            qrlb_Remark5.Caption      := MDG300F1.ugd_List.cells[19, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[39, CurrentIndex+1] = 'Y' then
              qrlb_suyn5.Caption := '[있음]'
            else
              qrlb_suyn5.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[40, CurrentIndex+1] = 'Y' then
              qrlb_suyn6.Caption := '[있음]'
            else
              qrlb_suyn6.Caption := '[없음]';

            //기타
            qrlb_etc3.Caption      := MDG300F1.ugd_List.cells[54, CurrentIndex+1];

            //활력징후 2시간
            qrlb_Remark6.Caption      := MDG300F1.ugd_List.cells[20, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[41, CurrentIndex+1] = 'Y' then
              qrlb_suyn7.Caption := '[있음]'
            else
              qrlb_suyn7.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[42, CurrentIndex+1] = 'Y' then
              qrlb_suyn8.Caption := '[있음]'
            else
              qrlb_suyn8.Caption := '[없음]';

            //기타
            qrlb_etc4.Caption      := MDG300F1.ugd_List.cells[55, CurrentIndex+1];

            //활력징후 2시간 30분
            qrlb_Remark7.Caption      := MDG300F1.ugd_List.cells[21, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[43, CurrentIndex+1] = 'Y' then
              qrlb_suyn9.Caption := '[있음]'
            else
              qrlb_suyn9.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[44, CurrentIndex+1] = 'Y' then
              qrlb_suyn10.Caption := '[있음]'
            else
              qrlb_suyn10.Caption := '[없음]';

            //기타
            qrlb_etc5.Caption      := MDG300F1.ugd_List.cells[56, CurrentIndex+1];

            //활력징후 3시간
            qrlb_Remark8.Caption      := MDG300F1.ugd_List.cells[22, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[45, CurrentIndex+1] = 'Y' then
              qrlb_suyn11.Caption := '[있음]'
            else
              qrlb_suyn11.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[46, CurrentIndex+1] = 'Y' then
              qrlb_suyn12.Caption := '[있음]'
            else
              qrlb_suyn12.Caption := '[없음]';

            //기타
            qrlb_etc6.Caption      := MDG300F1.ugd_List.cells[57, CurrentIndex+1];


            end //3시간 else if

 //#######################################################
//                2022-04-15 LeeMinSoo
//                  활력징후 4시간 null 3시간30분 존재
//#######################################################


        else if MDG300F1.ugd_List.Cells[24, CurrentIndex+1] = '' then   //활력징후 4시간 널 3시간30분 까지만 있을때
            begin
            band_Detail.Height := 173;

            //shape
            qrsp_su1.Enabled := true;qrsp_su2.Enabled := true;qrsp_su3.Enabled := true;qrsp_su5.Enabled := true;qrsp_su6.Enabled := true;
            qrsp_su8.Enabled := true;qrsp_su8.Enabled := true;qrsp_su9.Enabled := true;qrsp_su11.Enabled := true;qrsp_su12.Enabled := true; // + 1줄
            qrsp_su13.Enabled := true;qrsp_su14.Enabled := true;qrsp_su15.Enabled := true;qrsp_su17.Enabled := true;qrsp_su18.Enabled := true;
            qrsp_su19.Enabled := true;qrsp_su20.Enabled := true;qrsp_su21.Enabled := true;qrsp_su23.Enabled := true;qrsp_su24.Enabled := true; // + 2줄
            qrsp_su25.Enabled := true;qrsp_su26.Enabled := true;qrsp_su27.Enabled := true;qrsp_su29.Enabled := true;qrsp_su30.Enabled := true;
            qrsp_su31.Enabled := true;qrsp_su32.Enabled := true;qrsp_su33.Enabled := true;qrsp_su35.Enabled := true;qrsp_su36.Enabled := true; // + 3줄
            qrsp_su37.Enabled := true;qrsp_su38.Enabled := true;qrsp_su39.Enabled := true;qrsp_su41.Enabled := true;qrsp_su42.Enabled := true;
            qrsp_su43.Enabled := false;qrsp_su44.Enabled := false;qrsp_su45.Enabled := false;qrsp_su47.Enabled := false;qrsp_su48.Enabled := false; // + 4줄

            //label
            qrlb_su1.Enabled := true;qrlb_su2.Enabled := true;qrlb_su3.Enabled := true;qrlb_su5.Enabled := true;qrlb_su6.Enabled := true;qrlb_su7.Enabled := true;
            qrlb_su8.Enabled := true;qrlb_su9.Enabled := true;qrlb_su10.Enabled := true;qrlb_su12.Enabled := true;qrlb_su13.Enabled := true;qrlb_su14.Enabled := true; // + 1줄
            qrlb_su15.Enabled := true;qrlb_su16.Enabled := true;qrlb_su17.Enabled := true;qrlb_su19.Enabled := true;qrlb_su20.Enabled := true;qrlb_su21.Enabled := true;
            qrlb_su22.Enabled := true;qrlb_su23.Enabled := true;qrlb_su24.Enabled := true;qrlb_su26.Enabled := true;qrlb_su27.Enabled := true;qrlb_su28.Enabled := true; // + 2줄
            qrlb_su29.Enabled := true;qrlb_su30.Enabled := true;qrlb_su31.Enabled := true;qrlb_su33.Enabled := true;qrlb_su34.Enabled := true;qrlb_su35.Enabled := true;
            qrlb_su36.Enabled := true;qrlb_su37.Enabled := true;qrlb_su38.Enabled := true;qrlb_su40.Enabled := true;qrlb_su41.Enabled := true;qrlb_su42.Enabled := true; // + 3줄
            qrlb_su43.Enabled := true;qrlb_su44.Enabled := true;qrlb_su45.Enabled := true;qrlb_su47.Enabled := true;qrlb_su48.Enabled := true;qrlb_su49.Enabled := true;
            qrlb_su50.Enabled := false;qrlb_su51.Enabled := false;qrlb_su52.Enabled := false;qrlb_su54.Enabled := false;qrlb_su55.Enabled := false;qrlb_su56.Enabled := false; // + 4줄

            //활력징후
            qrlb_Remark3.Enabled := true;qrlb_Remark4.Enabled := true;qrlb_Remark5.Enabled := true;qrlb_Remark6.Enabled := true;
            qrlb_Remark7.Enabled := true;qrlb_Remark8.Enabled := true;qrlb_Remark9.Enabled := true;qrlb_Remark10.Enabled := false;

            //있음 없음 유무
            qrlb_suyn1.Enabled := true;qrlb_suyn2.Enabled := true;qrlb_suyn3.Enabled := true;qrlb_suyn4.Enabled := true;qrlb_suyn5.Enabled := true;qrlb_suyn6.Enabled := true;
            qrlb_suyn7.Enabled := true;qrlb_suyn8.Enabled := true;qrlb_suyn9.Enabled := true;qrlb_suyn10.Enabled := true;qrlb_suyn11.Enabled := true;qrlb_suyn12.Enabled := true;
            qrlb_suyn13.Enabled := true;qrlb_suyn14.Enabled := true;qrlb_suyn15.Enabled := false;qrlb_suyn16.Enabled := false;

            //etc 내용
            qrlb_etc1.Enabled := true;qrlb_etc2.Enabled := true;qrlb_etc3.Enabled := true;qrlb_etc4.Enabled := true;
            qrlb_etc5.Enabled := true;qrlb_etc6.Enabled := true;qrlb_etc7.Enabled := true;qrlb_etc8.Enabled := false;

            //데이터 삽입
            //활력징후 30
            qrlb_Remark3.caption      := MDG300F1.ugd_List.cells[17, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[35, CurrentIndex+1] = 'Y' then
              qrlb_suyn1.Caption := '[있음]'
            else
              qrlb_suyn1.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[36, CurrentIndex+1] = 'Y' then
              qrlb_suyn2.Caption := '[있음]'
            else
              qrlb_suyn2.Caption := '[없음]';

            //기타
            qrlb_etc1.Caption      := MDG300F1.ugd_List.cells[52, CurrentIndex+1];

            //활력징후 1시간
            qrlb_Remark4.Caption      := MDG300F1.ugd_List.cells[18, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[37, CurrentIndex+1] = 'Y' then
              qrlb_suyn3.Caption := '[있음]'
            else
              qrlb_suyn3.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[38, CurrentIndex+1] = 'Y' then
              qrlb_suyn4.Caption := '[있음]'
            else
              qrlb_suyn4.Caption := '[없음]';

            //기타
            qrlb_etc2.Caption      := MDG300F1.ugd_List.cells[53, CurrentIndex+1];

            //활력징후 1시간 30분
            qrlb_Remark5.Caption      := MDG300F1.ugd_List.cells[19, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[39, CurrentIndex+1] = 'Y' then
              qrlb_suyn5.Caption := '[있음]'
            else
              qrlb_suyn5.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[40, CurrentIndex+1] = 'Y' then
              qrlb_suyn6.Caption := '[있음]'
            else
              qrlb_suyn6.Caption := '[없음]';

            //기타
            qrlb_etc3.Caption      := MDG300F1.ugd_List.cells[54, CurrentIndex+1];

            //활력징후 2시간
            qrlb_Remark6.Caption      := MDG300F1.ugd_List.cells[20, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[41, CurrentIndex+1] = 'Y' then
              qrlb_suyn7.Caption := '[있음]'
            else
              qrlb_suyn7.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[42, CurrentIndex+1] = 'Y' then
              qrlb_suyn8.Caption := '[있음]'
            else
              qrlb_suyn8.Caption := '[없음]';

            //기타
            qrlb_etc4.Caption      := MDG300F1.ugd_List.cells[55, CurrentIndex+1];

            //활력징후 2시간 30분
            qrlb_Remark7.Caption      := MDG300F1.ugd_List.cells[21, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[43, CurrentIndex+1] = 'Y' then
              qrlb_suyn9.Caption := '[있음]'
            else
              qrlb_suyn9.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[44, CurrentIndex+1] = 'Y' then
              qrlb_suyn10.Caption := '[있음]'
            else
              qrlb_suyn10.Caption := '[없음]';

            //기타
            qrlb_etc5.Caption      := MDG300F1.ugd_List.cells[56, CurrentIndex+1];

            //활력징후 3시간
            qrlb_Remark8.Caption      := MDG300F1.ugd_List.cells[22, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[45, CurrentIndex+1] = 'Y' then
              qrlb_suyn11.Caption := '[있음]'
            else
              qrlb_suyn11.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[46, CurrentIndex+1] = 'Y' then
              qrlb_suyn12.Caption := '[있음]'
            else
              qrlb_suyn12.Caption := '[없음]';

            //기타
            qrlb_etc6.Caption      := MDG300F1.ugd_List.cells[57, CurrentIndex+1];

            //활력징후 3시간 30분
            qrlb_Remark9.Caption      := MDG300F1.ugd_List.cells[23, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[47, CurrentIndex+1] = 'Y' then
              qrlb_suyn13.Caption := '[있음]'
            else
              qrlb_suyn13.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[48, CurrentIndex+1] = 'Y' then
              qrlb_suyn14.Caption := '[있음]'
            else
              qrlb_suyn14.Caption := '[없음]';

            //기타
            qrlb_etc7.Caption      := MDG300F1.ugd_List.cells[58, CurrentIndex+1];

            end //3시간 30분 else if

 //#######################################################
//                2022-04-15 LeeMinSoo
//                  활력징후 4시간존재
//#######################################################


        else if not(MDG300F1.ugd_List.Cells[24, CurrentIndex+1] = '') then   //활력징후 4시간까지 다 있을 때
            begin
            band_Detail.Height := 173;

            //shape
            qrsp_su1.Enabled := true;qrsp_su2.Enabled := true;qrsp_su3.Enabled := true;qrsp_su5.Enabled := true;qrsp_su6.Enabled := true;
            qrsp_su8.Enabled := true;qrsp_su8.Enabled := true;qrsp_su9.Enabled := true;qrsp_su11.Enabled := true;qrsp_su12.Enabled := true; // + 1줄
            qrsp_su13.Enabled := true;qrsp_su14.Enabled := true;qrsp_su15.Enabled := true;qrsp_su17.Enabled := true;qrsp_su18.Enabled := true;
            qrsp_su19.Enabled := true;qrsp_su20.Enabled := true;qrsp_su21.Enabled := true;qrsp_su23.Enabled := true;qrsp_su24.Enabled := true; // + 2줄
            qrsp_su25.Enabled := true;qrsp_su26.Enabled := true;qrsp_su27.Enabled := true;qrsp_su29.Enabled := true;qrsp_su30.Enabled := true;
            qrsp_su31.Enabled := true;qrsp_su32.Enabled := true;qrsp_su33.Enabled := true;qrsp_su35.Enabled := true;qrsp_su36.Enabled := true; // + 3줄
            qrsp_su37.Enabled := true;qrsp_su38.Enabled := true;qrsp_su39.Enabled := true;qrsp_su41.Enabled := true;qrsp_su42.Enabled := true;
            qrsp_su43.Enabled := true;qrsp_su44.Enabled := true;qrsp_su45.Enabled := true;qrsp_su47.Enabled := true;qrsp_su48.Enabled := true; // + 4줄

            //label
            qrlb_su1.Enabled := true;qrlb_su2.Enabled := true;qrlb_su3.Enabled := true;qrlb_su5.Enabled := true;qrlb_su6.Enabled := true;qrlb_su7.Enabled := true;
            qrlb_su8.Enabled := true;qrlb_su9.Enabled := true;qrlb_su10.Enabled := true;qrlb_su12.Enabled := true;qrlb_su13.Enabled := true;qrlb_su14.Enabled := true; // + 1줄
            qrlb_su15.Enabled := true;qrlb_su16.Enabled := true;qrlb_su17.Enabled := true;qrlb_su19.Enabled := true;qrlb_su20.Enabled := true;qrlb_su21.Enabled := true;
            qrlb_su22.Enabled := true;qrlb_su23.Enabled := true;qrlb_su24.Enabled := true;qrlb_su26.Enabled := true;qrlb_su27.Enabled := true;qrlb_su28.Enabled := true; // + 2줄
            qrlb_su29.Enabled := true;qrlb_su30.Enabled := true;qrlb_su31.Enabled := true;qrlb_su33.Enabled := true;qrlb_su34.Enabled := true;qrlb_su35.Enabled := true;
            qrlb_su36.Enabled := true;qrlb_su37.Enabled := true;qrlb_su38.Enabled := true;qrlb_su40.Enabled := true;qrlb_su41.Enabled := true;qrlb_su42.Enabled := true; // + 3줄
            qrlb_su43.Enabled := true;qrlb_su44.Enabled := true;qrlb_su45.Enabled := true;qrlb_su47.Enabled := true;qrlb_su48.Enabled := true;qrlb_su49.Enabled := true;
            qrlb_su50.Enabled := true;qrlb_su51.Enabled := true;qrlb_su52.Enabled := true;qrlb_su54.Enabled := true;qrlb_su55.Enabled := true;qrlb_su56.Enabled := true; // + 4줄

            //활력징후
            qrlb_Remark3.Enabled := true;qrlb_Remark4.Enabled := true;qrlb_Remark5.Enabled := true;qrlb_Remark6.Enabled := true;
            qrlb_Remark7.Enabled := true;qrlb_Remark8.Enabled := true;qrlb_Remark9.Enabled := true;qrlb_Remark10.Enabled := true;

            //있음 없음 유무
            qrlb_suyn1.Enabled := true;qrlb_suyn2.Enabled := true;qrlb_suyn3.Enabled := true;qrlb_suyn4.Enabled := true;qrlb_suyn5.Enabled := true;qrlb_suyn6.Enabled := true;
            qrlb_suyn7.Enabled := true;qrlb_suyn8.Enabled := true;qrlb_suyn9.Enabled := true;qrlb_suyn10.Enabled := true;qrlb_suyn11.Enabled := true;qrlb_suyn12.Enabled := true;
            qrlb_suyn13.Enabled := true;qrlb_suyn14.Enabled := true;qrlb_suyn15.Enabled := true;qrlb_suyn16.Enabled := true;

            //etc 내용
            qrlb_etc1.Enabled := true;qrlb_etc2.Enabled := true;qrlb_etc3.Enabled := true;qrlb_etc4.Enabled := true;
            qrlb_etc5.Enabled := true;qrlb_etc6.Enabled := true;qrlb_etc7.Enabled := true;qrlb_etc8.Enabled := true;
            //데이터 삽입
            //활력징후 30
            qrlb_Remark3.caption      := MDG300F1.ugd_List.cells[17, CurrentIndex+1];
            
            //urticaria, chill
            if MDG300F1.ugd_List.Cells[35, CurrentIndex+1] = 'Y' then
              qrlb_suyn1.Caption := '[있음]'
            else
              qrlb_suyn1.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[36, CurrentIndex+1] = 'Y' then
              qrlb_suyn2.Caption := '[있음]'
            else
              qrlb_suyn2.Caption := '[없음]';

            //기타
            qrlb_etc1.Caption      := MDG300F1.ugd_List.cells[52, CurrentIndex+1];

            //활력징후 1시간
            qrlb_Remark4.Caption      := MDG300F1.ugd_List.cells[18, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[37, CurrentIndex+1] = 'Y' then
              qrlb_suyn3.Caption := '[있음]'
            else
              qrlb_suyn3.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[38, CurrentIndex+1] = 'Y' then
              qrlb_suyn4.Caption := '[있음]'
            else
              qrlb_suyn4.Caption := '[없음]';

            //기타
            qrlb_etc2.Caption      := MDG300F1.ugd_List.cells[53, CurrentIndex+1];

            //활력징후 1시간 30분
            qrlb_Remark5.Caption      := MDG300F1.ugd_List.cells[19, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[39, CurrentIndex+1] = 'Y' then
              qrlb_suyn5.Caption := '[있음]'
            else
              qrlb_suyn5.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[40, CurrentIndex+1] = 'Y' then
              qrlb_suyn6.Caption := '[있음]'
            else
              qrlb_suyn6.Caption := '[없음]';

            //기타
            qrlb_etc3.Caption      := MDG300F1.ugd_List.cells[54, CurrentIndex+1];

            //활력징후 2시간
            qrlb_Remark6.Caption      := MDG300F1.ugd_List.cells[20, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[41, CurrentIndex+1] = 'Y' then
              qrlb_suyn7.Caption := '[있음]'
            else
              qrlb_suyn7.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[42, CurrentIndex+1] = 'Y' then
              qrlb_suyn8.Caption := '[있음]'
            else
              qrlb_suyn8.Caption := '[없음]';

            //기타
            qrlb_etc4.Caption      := MDG300F1.ugd_List.cells[55, CurrentIndex+1];

            //활력징후 2시간 30분
            qrlb_Remark7.Caption      := MDG300F1.ugd_List.cells[21, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[43, CurrentIndex+1] = 'Y' then
              qrlb_suyn9.Caption := '[있음]'
            else
              qrlb_suyn9.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[44, CurrentIndex+1] = 'Y' then
              qrlb_suyn10.Caption := '[있음]'
            else
              qrlb_suyn10.Caption := '[없음]';

            //기타
            qrlb_etc5.Caption      := MDG300F1.ugd_List.cells[56, CurrentIndex+1];

            //활력징후 3시간
            qrlb_Remark8.Caption      := MDG300F1.ugd_List.cells[22, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[45, CurrentIndex+1] = 'Y' then
              qrlb_suyn11.Caption := '[있음]'
            else
              qrlb_suyn11.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[46, CurrentIndex+1] = 'Y' then
              qrlb_suyn12.Caption := '[있음]'
            else
              qrlb_suyn12.Caption := '[없음]';

            //기타
            qrlb_etc6.Caption      := MDG300F1.ugd_List.cells[57, CurrentIndex+1];

            //활력징후 3시간 30분
            qrlb_Remark9.Caption      := MDG300F1.ugd_List.cells[23, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[47, CurrentIndex+1] = 'Y' then
              qrlb_suyn13.Caption := '[있음]'
            else
              qrlb_suyn13.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[48, CurrentIndex+1] = 'Y' then
              qrlb_suyn14.Caption := '[있음]'
            else
              qrlb_suyn14.Caption := '[없음]';

            //기타
            qrlb_etc7.Caption      := MDG300F1.ugd_List.cells[58, CurrentIndex+1];

            //활력징후 4시간
            qrlb_Remark10.Caption      := MDG300F1.ugd_List.cells[24, CurrentIndex+1];

            //urticaria, chill
            if MDG300F1.ugd_List.Cells[49, CurrentIndex+1] = 'Y' then
              qrlb_suyn15.Caption := '[있음]'
            else
              qrlb_suyn15.Caption := '[없음]';

            if MDG300F1.ugd_List.Cells[50, CurrentIndex+1] = 'Y' then
              qrlb_suyn16.Caption := '[있음]'
            else
              qrlb_suyn16.Caption := '[없음]';

            //기타
            qrlb_etc8.Caption      := MDG300F1.ugd_List.cells[59, CurrentIndex+1];


            end;  //4시간 else if

      end
      else
      begin
        qrlb_No.Caption      := '';
        qrlb_Date.Caption    := '';
        qrlb_BloodNm.Caption := '';
        qrlb_BloodNo.Caption := '';
        qrlb_RHABO.Caption   := '';
        qrlb_Start.Caption   := '';
        qrlb_End.Caption     := '';
        qrlb_BldNrs1.Caption := '';
        qrlb_BldNrs2.Caption := '';
        qrlb_Remark.Caption  := '';
        qrlb_Remark2.Caption := '';
        qrlb_Delitime.Caption := '';
        qrlb_Gttmin.Caption := '';

        qrlb_check1.Caption  := '';
        qrlb_check2.Caption  := '';
        qrlb_stat3.Caption   := '';
        qrlb_stat4.Caption   := '';
        QRLABEL16.Caption    := '';
        QRLABEL18.Caption    := '';
        QRLABEL21.Caption    := '';
        QRLABEL22.Caption    := '';
        qrlb_check1.Frame.DrawTop := False;
        qrlb_check1.Frame.DrawBottom := False;
        qrlb_check1.Frame.DrawLeft := False;
        qrlb_check1.Frame.DrawRight := False;
        qrlb_check2.Frame.DrawTop := False;
        qrlb_check2.Frame.DrawBottom := False;
        qrlb_check2.Frame.DrawLeft := False;
        qrlb_check2.Frame.DrawRight := False;

        band_Detail.Height := 36;

        //shape
        qrsp_su1.Enabled := false;qrsp_su2.Enabled := false;qrsp_su3.Enabled := false;qrsp_su5.Enabled := false;qrsp_su6.Enabled := false;
        qrsp_su7.Enabled := false;qrsp_su8.Enabled := false;qrsp_su9.Enabled := false;qrsp_su11.Enabled := false;qrsp_su12.Enabled := false; // + 1줄
        qrsp_su13.Enabled := false;qrsp_su14.Enabled := false;qrsp_su15.Enabled := false;qrsp_su17.Enabled := false;qrsp_su18.Enabled := false;
        qrsp_su19.Enabled := false;qrsp_su20.Enabled := false;qrsp_su21.Enabled := false;qrsp_su23.Enabled := false;qrsp_su24.Enabled := false; // + 2줄
        qrsp_su25.Enabled := false;qrsp_su26.Enabled := false;qrsp_su27.Enabled := false;qrsp_su29.Enabled := false;qrsp_su30.Enabled := false;
        qrsp_su31.Enabled := false;qrsp_su32.Enabled := false;qrsp_su33.Enabled := false;qrsp_su35.Enabled := false;qrsp_su36.Enabled := false; // + 3줄
        qrsp_su37.Enabled := false;qrsp_su38.Enabled := false;qrsp_su39.Enabled := false;qrsp_su41.Enabled := false;qrsp_su42.Enabled := false;
        qrsp_su43.Enabled := false;qrsp_su44.Enabled := false;qrsp_su45.Enabled := false;qrsp_su47.Enabled := false;qrsp_su48.Enabled := false; // + 4줄

        //label
        qrlb_su1.Enabled := false;qrlb_su2.Enabled := false;qrlb_su3.Enabled := false;qrlb_su5.Enabled := false;qrlb_su6.Enabled := false;qrlb_su7.Enabled := false;
        qrlb_su8.Enabled := false;qrlb_su9.Enabled := false;qrlb_su10.Enabled := false;qrlb_su12.Enabled := false;qrlb_su13.Enabled := false;qrlb_su14.Enabled := false; // + 1줄
        qrlb_su15.Enabled := false;qrlb_su16.Enabled := false;qrlb_su17.Enabled := false;qrlb_su19.Enabled := false;qrlb_su20.Enabled := false;qrlb_su21.Enabled := false;
        qrlb_su22.Enabled := false;qrlb_su23.Enabled := false;qrlb_su24.Enabled := false;qrlb_su26.Enabled := false;qrlb_su27.Enabled := false;qrlb_su28.Enabled := false; // + 2줄
        qrlb_su29.Enabled := false;qrlb_su30.Enabled := false;qrlb_su31.Enabled := false;qrlb_su33.Enabled := false;qrlb_su34.Enabled := false;qrlb_su35.Enabled := false;
        qrlb_su36.Enabled := false;qrlb_su37.Enabled := false;qrlb_su38.Enabled := false;qrlb_su40.Enabled := false;qrlb_su41.Enabled := false;qrlb_su42.Enabled := false; // + 3줄
        qrlb_su43.Enabled := false;qrlb_su44.Enabled := false;qrlb_su45.Enabled := false;qrlb_su47.Enabled := false;qrlb_su48.Enabled := false;qrlb_su49.Enabled := false;
        qrlb_su50.Enabled := false;qrlb_su51.Enabled := false;qrlb_su52.Enabled := false;qrlb_su54.Enabled := false;qrlb_su55.Enabled := false;qrlb_su56.Enabled := false; // + 4줄

        //활력징후
        qrlb_Remark3.Enabled := false;qrlb_Remark4.Enabled := false;qrlb_Remark5.Enabled := false;qrlb_Remark6.Enabled := false;
        qrlb_Remark7.Enabled := false;qrlb_Remark8.Enabled := false;qrlb_Remark9.Enabled := false;qrlb_Remark10.Enabled := false;

        //있음 없음 유무
        qrlb_suyn1.Enabled := false;qrlb_suyn2.Enabled := false;qrlb_suyn3.Enabled := false;qrlb_suyn4.Enabled := false;qrlb_suyn5.Enabled := false;qrlb_suyn6.Enabled := false;
        qrlb_suyn7.Enabled := false;qrlb_suyn8.Enabled := false;qrlb_suyn9.Enabled := false;qrlb_suyn10.Enabled := false;qrlb_suyn11.Enabled := false;qrlb_suyn12.Enabled := false;
        qrlb_suyn13.Enabled := false;qrlb_suyn14.Enabled := false;qrlb_suyn15.Enabled := false;qrlb_suyn16.Enabled := false;

        //etc 내용
        qrlb_etc1.Enabled := false;qrlb_etc2.Enabled := false;qrlb_etc3.Enabled := false;qrlb_etc4.Enabled := false;
        qrlb_etc5.Enabled := false;qrlb_etc6.Enabled := false;qrlb_etc7.Enabled := false;qrlb_etc8.Enabled := false;

      end;
      Inc(CurrentIndex);
    end
    else if FromFrm = 'MDN252F1' then
    begin
    {
      if (CurrentIndex < MDN252F1.ugd_BldList.Rowcount-1) then
      begin
        qrlb_No.Caption      := MDN252F1.ugd_BldList.cells[0, CurrentIndex+1];
        qrlb_Date.Caption    := MDN252F1.ugd_BldList.cells[1, CurrentIndex+1];
        qrlb_BloodNm.Caption := MDN252F1.ugd_BldList.cells[2, CurrentIndex+1];
        qrlb_BloodNo.Caption := MDN252F1.ugd_BldList.cells[3, CurrentIndex+1];
        qrlb_RHABO.Caption   := MDN252F1.ugd_BldList.cells[4, CurrentIndex+1];

        qrlb_Start.Caption   := MDN252F1.ugd_BldList.cells[5, CurrentIndex+1];
        qrlb_End.Caption     := MDN252F1.ugd_BldList.cells[8, CurrentIndex+1];
        qrlb_BldNrs1.Caption := MDN252F1.ugd_BldList.cells[6, CurrentIndex+1];
        qrlb_BldNrs2.Caption := MDN252F1.ugd_BldList.cells[9, CurrentIndex+1];
        qrlb_Remark.Caption  := MDN252F1.ugd_BldList.cells[7, CurrentIndex+1];
        qrlb_Remark2.Caption := MDN252F1.ugd_BldList.cells[10, CurrentIndex+1];
      end
      else
      begin
        qrlb_No.Caption      := '';
        qrlb_Date.Caption    := '';
        qrlb_BloodNm.Caption := '';
        qrlb_BloodNo.Caption := '';
        qrlb_RHABO.Caption   := '';
        qrlb_Start.Caption   := '';
        qrlb_End.Caption     := '';
        qrlb_BldNrs1.Caption := '';
        qrlb_BldNrs2.Caption := '';
        qrlb_Remark.Caption  := '';
        qrlb_Remark2.Caption := '';
      end;
      Inc(CurrentIndex);
      }
    end;                   
end;

end.
