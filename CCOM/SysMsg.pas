unit SysMsg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons;

type
  TSysMsgf1 = class(TForm)
    tm_MSGTimer: TTimer;
    bbt_OK: TBitBtn;
    pn_MsgBase: TPanel;
    lb_MessageTitle: TLabel;
    pn_Msg: TPanel;
    lb_Message: TLabel;
    me_Message: TMemo;
    procedure FormShow(Sender: TObject);
    procedure tm_MSGTimerTimer(Sender: TObject);
    procedure bbt_OKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    ColorFlag: Integer;
    TempBuffer: PChar;
  end;

var
   SysMsgf1: TSysMsgf1;

implementation

uses TuxCom, TuxMsg;

{$R *.DFM}

procedure TSysMsgf1.FormShow(Sender: TObject);
begin
     if (Length(StrPas(tpMessage)) > 2) and (Pos('_@', StrPas(tpMessage)) > 0) then
     begin
          Close;
     end;
     TempBuffer := tpMessage;
     me_Message.Lines.Add(FormatDateTime('"["yyyy"년"M"월"d"일 "hh:nn:ss"]"', Now));
     me_Message.Lines.Add(StrPas(tpMessage));
     tm_MSGTimer.Enabled := True;
end;

procedure TSysMsgf1.tm_MSGTimerTimer(Sender: TObject);
begin
     if ColorFlag = 1 then
     begin
          pn_MsgBase.Color := $00565FFE;
          ColorFlag := 0;
     end
     else
     begin
          pn_MsgBase.Color := clSilver;
          ColorFlag := 1;
     end;

     if Pos('_@', StrPas(tpMessage)) > 0 then Exit;

     if TempBuffer <> tpMessage then
     begin
          me_Message.Lines.Add(' ');
          me_Message.Lines.Add(FormatDateTime('"["yyyy"년"M"월"d"일 "hh:nn:ss"]"', Now));
          me_Message.Lines.Add(StrPas(tpMessage));
          TempBuffer := tpMessage;
     end;
end;

procedure TSysMsgf1.bbt_OKClick(Sender: TObject);
begin
     Close;
end;

procedure TSysMsgf1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     tm_MSGTimer.Enabled := False;
     Action := caFree;
     TuxMsgf1 := nil;
end;

end.
