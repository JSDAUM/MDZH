unit GGA001U3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, Buttons, ComCtrls;

type
  TGGA001F3 = class(TForm)
    Shape23: TShape;
    Label48: TLabel;
    Label58: TLabel;
    me_reqmeno: TMemo;
    Shape1: TShape;
    ed_equipno1: TEdit;
    Shape2: TShape;
    SpeedButton1: TSpeedButton;
    cpn1: TPanel;
    cpn2: TGroupBox;
    Shape8: TShape;
    Label23: TLabel;
    dtp_reqsdate: TDateTimePicker;
    bbt_can_repair: TBitBtn;
    bbt_save_repair: TBitBtn;
    procedure bbt_save_repairClick(Sender: TObject);
    procedure ed_equipno1Change(Sender: TObject);
    procedure bbt_can_repairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
     function repair_receipt_save : boolean;  
    { Public declarations }
  end;

var
  GGA001F3: TGGA001F3;

implementation

uses GComFunc, GComWinU1, GGA001U1, GGCLASS7;

{$R *.dfm}

procedure TGGA001F3.bbt_save_repairClick(Sender: TObject);
begin

   if repair_receipt_save then
      begin
         GGA001F1.bbt_repair_search.Click;
         self.close;
      end
   else;
end;

procedure TGGA001F3.ed_equipno1Change(Sender: TObject);
begin
   if Length(Trim(ed_equipno1.Text)) > 0 then
      bbt_save_repair.Enabled := True
   else bbt_save_repair.Enabled := False;
end;

procedure TGGA001F3.bbt_can_repairClick(Sender: TObject);
begin
   close;
end;

function TGGA001F3.repair_receipt_save : boolean;
var
   RowNO  : Integer;
begin
   Result := False;
   Screen.Cursor := crHourglass;
   try
      ggRprqft := HggRprqft.Create;
      ggRprqft.sReqdate     := dtp_reqsdate.Date;
      ggRprqft.sEquipno     := ed_equipno1.Text;
      ggRprqft.sReqmeno     := me_reqmeno.Text;
      ggRprqft.sLocate      := 'EB1';
      ggRprqft.sStat        := '1';
      RowNO := ggRprqft.InRepRecGgrprqft;

      if RowNo = -1 then
         begin
            ShowMessage('저장에 실패하였습니다');       // 수정된 자료가 없습니다.
            ggRprqft.Free;
            Exit;
         end;
      if RowNo = 0 then
         begin
            ShowMessage('저장된 자료가 없습니다');       // 수정된 자료가 없습니다.
            ggRprqft.Free;
            Exit;
         end;
      ggRprqft.Free;
      Result := True;

   finally
      Screen.Cursor := crDefault;
   end;
   ShowMessage('저장되었습니다');

end;


procedure TGGA001F3.FormCreate(Sender: TObject);
begin
   dtp_reqsdate.Date := Date;
   ed_equipno1.Text  := '';
   me_reqmeno.Text   := '';


end;

end.
