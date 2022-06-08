unit MCC100U4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, UltraGrid, StdCtrls, Buttons;

type
  TMCC100F4 = class(TForm)
    bbt_Confirm: TBitBtn;
    bbt_Cancel: TBitBtn;
    ugd_List: TUltraGrid;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbt_CancelClick(Sender: TObject);
    procedure bbt_ConfirmClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ugd_ListClick(Sender: TObject);
    procedure ugd_ListDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    L_KeySeqno : integer;         // 그리드 값
  end;

var
  MCC100F4: TMCC100F4;

implementation

uses MDC100U1, CComfunc;

{$R *.dfm}

procedure TMCC100F4.FormDestroy(Sender: TObject);
begin
   MCC100F4 := nil;
end;

procedure TMCC100F4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action := cafree;
end;

procedure TMCC100F4.bbt_CancelClick(Sender: TObject);
begin
   ModalResult := mrCancel;
   close;
end;

procedure TMCC100F4.bbt_ConfirmClick(Sender: TObject);
begin
   MDC100U1.ResultHospNm     := ugd_List.Cells[0,L_KeySeqno];
   MDC100U1.ResultHospType   := ugd_List.Cells[1,L_KeySeqno];
   MDC100U1.ResultHospTypecd := ugd_List.Cells[3,L_KeySeqno];

   MDC100U1.ResultCon := True;
   ModalResult := mrOK;
   close;
end;

procedure TMCC100F4.FormShow(Sender: TObject);
begin
   ugd_List.Row := 1;
   ugd_List.SetFocus;
end;

procedure TMCC100F4.ugd_ListClick(Sender: TObject);
begin
    L_KeySeqno := ugd_List.Row;
end;

procedure TMCC100F4.ugd_ListDblClick(Sender: TObject);
begin
   bbt_ConfirmClick(sender);
end;

procedure TMCC100F4.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      bbt_CancelClick(Sender);
   end;
end;

end.
