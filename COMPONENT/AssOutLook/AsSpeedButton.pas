unit AsSpeedButton;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls;

type
  TAsSpeedButton = Class(TSpeedButton)
  Private
    FTimer : TTimer;
    Procedure TimerProc(Sender : TObject);
  protected
		Constructor Create(AOwner: TComponent); Override;
		Destructor Destroy; Override;
    procedure MouseDown (Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure MouseUp (Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
  End;

implementation

{ TAsSpeedButton Implementation }
Constructor TAsSpeedButton.Create(AOwner: TComponent);
Begin
	Inherited Create(AOwner);
  ControlStyle := ControlStyle + [csDesignInteractive];
End;

Destructor TAsSpeedButton.Destroy;
Begin
	Inherited Destroy;
End;

Procedure TAsSpeedButton.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
  Inherited MouseDown(Button, Shift, X, Y);

  { 반복 타이머를 생성한다. }
  If FTimer = Nil Then
  Begin
    FTimer := TTimer.Create(Self);
  End;
  FTimer.Interval := 500;
  FTimer.OnTimer := TimerProc;
  FTimer.Enabled := True;
End;

Procedure TAsSpeedButton.MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Begin
  Inherited MouseUp(Button, Shift, X, Y);

  { 반복 타이머를 종료한다. }
  If FTimer <> Nil Then
  Begin
    FTimer.Enabled := False;
  End;
End;

Procedure TAsSpeedButton.TimerProc(Sender : TObject);
Begin
  If (Not Visible) Or (Not Enabled) Then
  Begin
    FTimer.Interval := 500;
    FTimer.Enabled := False;
    Exit;
  End;
  Click;
  FTimer.Interval := 100;
End;


end.
