unit TuxMsg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TTuxMsgf1 = class(TForm)
    me_Detail: TMemo;
    lb_msg: TLabel;
    bbt_confirm: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bbt_confirmClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TuxMsgf1: TTuxMsgf1;

implementation

{$R *.DFM}

const
     DeFaultErrorMsg = '����� ����ڿ��� �����Ͻð�, ����Ͻñ� �ٶ��ϴ�.';

procedure TTuxMsgf1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     TuxMsgf1 := nil;
     Action := CaFree;
end;

procedure TTuxMsgf1.FormShow(Sender: TObject);
begin
     lb_msg.caption := DeFaultErrorMsg;
end;

procedure TTuxMsgf1.bbt_confirmClick(Sender: TObject);
begin
     Close;
end;

end.










