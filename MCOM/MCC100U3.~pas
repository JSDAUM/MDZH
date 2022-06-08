unit MCC100U3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, UltraGrid, ExtCtrls, StdCtrls, Buttons;

type
  TMCC100F3 = class(TForm)
    ugd_PatList: TUltraGrid;
    bbt_Confirm: TBitBtn;
    bbt_Cancel: TBitBtn;
    ugd_OutPatList: TUltraGrid;
    ugd_List: TUltraGrid;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbt_CancelClick(Sender: TObject);
    procedure ugd_PatListClick(Sender: TObject);
    procedure bbt_ConfirmClick(Sender: TObject);
    procedure ugd_PatListDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ugd_OutPatListDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure ugd_OutPatListClick(Sender: TObject);
    procedure ugd_OutPatListDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ugd_ListClick(Sender: TObject);
    procedure ugd_ListDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    result1, result2 : String;    // 환자번호, 환자명
    result3 : Boolean;            // 선택여부 체크
    L_KeySeqno : integer;         // 그리드 값
  end;

var
  MCC100F3: TMCC100F3;

implementation

uses MDC100U1, CComfunc;

{$R *.DFM}

procedure TMCC100F3.FormDestroy(Sender: TObject);
begin
   MCC100F3 := nil;
end;

procedure TMCC100F3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := cafree;
end;

procedure TMCC100F3.bbt_CancelClick(Sender: TObject);
begin
   ModalResult := mrCancel;
   close;
end;

procedure TMCC100F3.ugd_PatListClick(Sender: TObject);
begin
    L_KeySeqno := ugd_PatList.Row;
end;

procedure TMCC100F3.bbt_ConfirmClick(Sender: TObject);
begin
   if ugd_PatList.Visible then
   begin
      MDC100U1.ResultNO := ugd_PatList.Cells[0,L_KeySeqno];
      MDC100U1.ResultNm := ugd_PatList.Cells[1,L_KeySeqno];
      MDC100U1.ResultSexAge  := ugd_PatList.Cells[2,L_KeySeqno];
      MDC100U1.ResultMedDept := ugd_PatList.Cells[5,L_KeySeqno];
      MDC100U1.ResultAdmDate := ugd_PatList.Cells[4,L_KeySeqno];

      MDC100U1.ResultChaDr  := ugd_PatList.Cells[6,L_KeySeqno];
      MDC100U1.ResultGenDr  := ugd_PatList.Cells[7,L_KeySeqno];
      MDC100U1.ResultTelNo  := ugd_PatList.Cells[8,L_KeySeqno];
      MDC100U1.ResultAddress:= ugd_PatList.Cells[9,L_KeySeqno];


      MDC100U1.ResultCon := True;
      ModalResult := mrOK;
   end
   else if ugd_OutPatList.Visible then
   begin
      MDC100U1.ResultNO := ugd_OutPatList.Cells[0,L_KeySeqno];
      MDC100U1.ResultNm := ugd_OutPatList.Cells[1,L_KeySeqno];
      MDC100U1.ResultSexAge  := ugd_OutPatList.Cells[2,L_KeySeqno];
      MDC100U1.ResultMedDept := ugd_OutPatList.Cells[4,L_KeySeqno];
      MDC100U1.ResultAdmDate := InvertSDate(ugd_OutPatList.Cells[3,L_KeySeqno]);

      MDC100U1.ResultChaDr  := ugd_OutPatList.Cells[5,L_KeySeqno];
      MDC100U1.ResultGenDr  := ugd_OutPatList.Cells[6,L_KeySeqno];
      MDC100U1.ResultTelNo  := ugd_OutPatList.Cells[7,L_KeySeqno];
      MDC100U1.ResultAddress:= ugd_OutPatList.Cells[8,L_KeySeqno];

      MDC100U1.ResultCon := True;
      ModalResult := mrOK;
   end
   else if ugd_List.Visible then
   begin
      MDC100U1.ResultNO      := ugd_List.Cells[0,L_KeySeqno];
      MDC100U1.ResultNm      := ugd_List.Cells[1,L_KeySeqno];
      MDC100U1.ResultSexAge  := ugd_List.Cells[2,L_KeySeqno];
      MDC100U1.ResultMedDept := ugd_List.Cells[5,L_KeySeqno];
      MDC100U1.ResultAdmDate := ugd_List.Cells[4,L_KeySeqno];

      //MDC100U1.ResultChaDr   := ugd_List.Cells[6,L_KeySeqno];
      //MDC100U1.ResultGenDr   := ugd_List.Cells[7,L_KeySeqno];
      //MDC100U1.ResultTelNo   := ugd_List.Cells[8,L_KeySeqno];
      //MDC100U1.ResultAddress := ugd_List.Cells[9,L_KeySeqno];

      //MDC100U1.ResultResno   := ugd_List.Cells[10,L_KeySeqno];
      MDC100U1.ResultDenPatno:= ugd_List.Cells[6,L_KeySeqno];


      MDC100U1.ResultCon := True;
      ModalResult := mrOK;
   end;
   close;
end;

procedure TMCC100F3.ugd_PatListDblClick(Sender: TObject);
begin
   bbt_ConfirmClick(sender);
end;

procedure TMCC100F3.FormShow(Sender: TObject);
begin
   L_KeySeqno := 1;
   MDC100U1.ResultCon := False;
   if ugd_PatList.Visible then
   begin
      ugd_PatList.Row := 1;
      ugd_PatList.SetFocus;
   end
   else if ugd_List.Visible then
   begin
      ugd_List.Row := 1;
      ugd_List.SetFocus;
   end
   else
   begin
      ugd_OutPatList.Row := 1;
      ugd_OutPatList.SetFocus;
   end;
end;

procedure TMCC100F3.ugd_OutPatListDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
   ReSizeGridCol((Sender as TUltragrid), 5);
end;

procedure TMCC100F3.ugd_OutPatListClick(Sender: TObject);
begin
    L_KeySeqno := ugd_OutPatList.Row;
end;

procedure TMCC100F3.ugd_OutPatListDblClick(Sender: TObject);
begin
   bbt_ConfirmClick(sender);
end;

procedure TMCC100F3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      bbt_CancelClick(Sender);
   end;
end;

procedure TMCC100F3.ugd_ListClick(Sender: TObject);
begin
    L_KeySeqno := ugd_List.Row;
end;

procedure TMCC100F3.ugd_ListDblClick(Sender: TObject);
begin
   bbt_ConfirmClick(sender);
end;

end.
