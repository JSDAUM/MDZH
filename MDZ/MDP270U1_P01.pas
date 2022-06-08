unit MDP270U1_P01;
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, StdCtrls, Grids, UltraGrid, ComCtrls, jpeg;

type
  TMDP270F1_P01 = class(TForm)
    qr_Search: TQuickRep;
    band_Detail: TQRBand;
    QRBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRShape12: TQRShape;
    QRLabel13: TQRLabel;
    QRShape16: TQRShape;
    QRShape13: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel24: TQRLabel;
    qrlb_Data1: TQRLabel;
    qrlb_Data2: TQRLabel;
    HLine1: TQRShape;
    HLine3: TQRShape;
    qrlb_Data3: TQRLabel;
    HLine2: TQRShape;
    qrlb_Data4: TQRLabel;
    red_Temp: TRichEdit;
    LineBottom: TQRShape;
    QRBand2: TQRBand;
    qrlb_Title: TQRLabel;
    QRImage1: TQRImage;
    QRLabel42: TQRLabel;
    QRShape30: TQRShape;
    QRShape2: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel1: TQRLabel;
    qrlb_PatNo: TQRLabel;
    qrlb_patname: TQRLabel;
    qrlb_Resno: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    qrlb_sexage: TQRLabel;
    qrl_chadr: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel46: TQRLabel;
    qrlb_Deptnm: TQRLabel;
    qrlb_Roomno: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel2: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure qr_SearchNeedData(Sender: TObject; var MoreData: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure qr_SearchBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    sRecTime : String;

  public
    { Public declarations }
     strFromForm : String;
     CurrentIndex, redLineCnt : Integer;
     redData : Boolean;
  end;

var
  MDP270F1_P01: TMDP270F1_P01;

implementation

uses
 VarCom, MDC100U1, MDG300U1;

{$R *.DFM}
procedure TMDP270F1_P01.FormCreate(Sender: TObject);
begin
   CurrentIndex := 1;
   sRecTime := '';
   redData  := False;
end;

procedure TMDP270F1_P01.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TMDP270F1_P01.FormDestroy(Sender: TObject);
begin
   MDP270F1_P01 := Nil;
end;

procedure TMDP270F1_P01.qr_SearchNeedData(Sender: TObject;
  var MoreData: Boolean);
var
   Len:Integer;
begin
   if strFromForm = 'MDG300F1' then
   begin
      Moredata := (CurrentIndex < MDG300F1.ugd_AllList.RowCount);

      if Moredata then
      begin
         with MDG300F1 do
         begin
            if redData = False then
            begin
               if ugd_AllList.Cells[11, CurrentIndex] = 'DATE' then   // 날짜변경선 처리.
               begin
                  band_Detail.Color := clSilver;
                  qrlb_Data1.Top := -2000;
                  qrlb_Data2.Top := -2000;
                  qrlb_Data3.Top := -2000;
                  qrlb_Data4.Top := -2000;
                  Hline1.Top     := -2000;
                  Hline2.Top     := -2000;
                  Hline3.Top     := -2000;
               end
               else
               begin
                  band_Detail.Color := clWhite;
                  qrlb_Data1.Top := 3;
                  Hline1.Top     := 0;
                  qrlb_Data2.Top := 3;
                  Hline2.Top     := 0;
                  qrlb_Data4.Top := 3;
                  Hline3.Top     := 0;
                  qrlb_Data3.Top := 3;
               end;

               red_Temp.Text := Trim(ugd_AllList.Cells[1,CurrentIndex]);
               redLineCnt    := 0;
               redData       := True;
            end;

            if redData then
            begin
               if redLineCnt = 0 then
               begin
                  qrlb_Data1.Caption := ConvertSDate(Trim(ugd_AllList.Cells[8,CurrentIndex]));
                  qrlb_Data2.Caption := Trim(ugd_AllList.Cells[9,CurrentIndex]);
                  sRecTime := Copy(ugd_AllList.Cells[9,CurrentIndex],1,2) + Copy(ugd_AllList.Cells[9,CurrentIndex],4,2);
               end
               else
               begin
                  qrlb_Data1.Caption := '';
                  qrlb_Data2.Caption := '';
               end;

               if (StrToIntDef(sRecTime,0) >= 2200) or (StrToIntDef(sRecTime,0) <= 700) then
               begin
                  qrlb_Data4.Font.Style := [fsBold];
               end
               else
               begin
                  qrlb_Data4.Font.Style := [];
               end;

               qrlb_Data4.Caption := red_Temp.Lines[redLineCnt];

               if redLineCnt = red_Temp.Lines.Count - 1 then
               begin
                  LineBottom.Top     := 19;
                  LineBottom.Left    := 0;
                  qrlb_Data3.Caption := Trim(ugd_AllList.Cells[2,CurrentIndex]);
                  red_Temp.Lines.Clear;
                  redData := False;
                  Inc(CurrentIndex);
                  sRecTime := '';
               end
               else
               begin
                  LineBottom.Left    := 1000;
                  qrlb_Data3.Caption := '';
                  Inc(redLineCnt);
               end;
            end
            else
            begin
               Inc(CurrentIndex);
               sRecTime := '';
            end;
         end;
      end;
   end;
end;



procedure TMDP270F1_P01.qr_SearchBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   red_Temp.Width := qrlb_Data4.Width;
   red_Temp.Lines.Clear;
   redData := False;
   redLineCnt := 0;
   CurrentIndex := 1;
   sRecTime := '';
//   qrlb_Locate.Caption := LocateTitle(G_LOCATE);
end;

end.
