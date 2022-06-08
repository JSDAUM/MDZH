unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Bianco_Panel;

type
  TForm1 = class(TForm)
    BiancoPanel1: TBiancoPanel;
    procedure BiancoPanel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BiancoPanel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.BiancoPanel1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   if (Y > 138)  and (Y <158)  then
      showmessage('진료시스템 가동')
   else if (Y > 175)  and (Y < 192)  then
      showmessage('진료지원시스템 가동')
   else if (Y > 208)  and (Y < 228)  then
      showmessage('원무시스템 가동')
   else if (Y > 248)  and (Y < 268)  then
      showmessage('기타시스템 가동');

end;

procedure TForm1.BiancoPanel1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
   if (Y > 138)  and (Y <158)  then
      screen.Cursor := crHandPoint
   else if (Y > 175)  and (Y < 192)  then
      screen.Cursor := crHandPoint
   else if (Y > 208)  and (Y < 228)  then
      screen.Cursor := crHandPoint
   else if (Y > 248)  and (Y < 268)  then
      screen.Cursor := crHandPoint
   else
      screen.Cursor := crDefault;

end;

end.
