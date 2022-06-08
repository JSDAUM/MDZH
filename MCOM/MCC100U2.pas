unit MCC100U2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, UltraGrid, ExtCtrls, StdCtrls, Buttons;

type
  TMCC100F2 = class(TForm)
    ugd_PatList: TUltraGrid;
    bbt_Confirm: TBitBtn;
    bbt_Cancel: TBitBtn;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbt_CancelClick(Sender: TObject);
    procedure ugd_PatListClick(Sender: TObject);
    procedure bbt_ConfirmClick(Sender: TObject);
    procedure ugd_PatListDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    result1, result2 : String;    // 환자번호, 환자명
    result3 : Boolean;            // 선택여부 체크
    L_KeySeqno : integer;         // 그리드 값
  end;

var
  MCC100F2: TMCC100F2;

implementation

uses MDC100U1;

{$R *.DFM}

procedure TMCC100F2.FormDestroy(Sender: TObject);
begin
   MCC100F2 := nil;
end;

procedure TMCC100F2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := cafree;
end;

procedure TMCC100F2.bbt_CancelClick(Sender: TObject);
begin
   ModalResult := mrCancel;
   close;
end;

procedure TMCC100F2.ugd_PatListClick(Sender: TObject);
begin
    L_KeySeqno := ugd_PatList.Row;
end;

procedure TMCC100F2.bbt_ConfirmClick(Sender: TObject);
begin
    MDC100U1.ResultNO := ugd_PatList.Cells[0,L_KeySeqno];
    MDC100U1.ResultNm := ugd_PatList.Cells[1,L_KeySeqno];
    MDC100U1.ResultMedDept := ugd_PatList.Cells[6,L_KeySeqno];

    MDC100U1.ResultCon := True;
    ModalResult := mrOK;
    close;
end;

procedure TMCC100F2.ugd_PatListDblClick(Sender: TObject);
begin
   bbt_ConfirmClick(sender);
end;

procedure TMCC100F2.FormShow(Sender: TObject);
begin
   L_KeySeqno := 1;
   MDC100U1.ResultCon := False;
   ugd_PatList.Row := 1;
   ugd_PatList.SetFocus;
end;

procedure TMCC100F2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      bbt_CancelClick(Sender);
   end;
end;

end.
