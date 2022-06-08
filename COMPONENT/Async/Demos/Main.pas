unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Async32;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    LabelDevName: TLabel;
    EditDevName: TEdit;
    EditTransmit: TEdit;
    ButtonOpen: TButton;
    ButtonClose: TButton;
    ButtonReset: TButton;
    ButtonTransmit: TButton;
    CheckBoxAddLinefeed: TCheckBox;
    CheckBoxRTS: TCheckBox;
    CheckBoxDTR: TCheckBox;
    CheckBoxBREAK: TCheckBox;
    CheckBoxXON: TCheckBox;
    LabelBaudrate: TLabel;
    ComboBaudrate: TComboBox;
    LabelDataBits: TLabel;
    ComboDatabits: TComboBox;
    LabelStopbits: TLabel;
    ComboStopbits: TComboBox;
    LabelParity: TLabel;
    ComboParity: TComboBox;
    Comm1: TComm;
    procedure FormCreate(Sender: TObject);
    procedure ButtonOpenClick(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
    procedure ButtonResetClick(Sender: TObject);
    procedure Comm1Break(Sender: TObject);
    procedure Comm1CTS(Sender: TObject);
    procedure Comm1DSR(Sender: TObject);
    procedure Comm1Ring(Sender: TObject);
    procedure Comm1RLSD(Sender: TObject);
    procedure Comm1RxFlag(Sender: TObject);
    procedure Comm1TxEmpty(Sender: TObject);
    procedure Comm1Error(Sender: TObject; Errors: Integer);
    procedure Comm1RxChar(Sender: TObject; Count: Integer);
    procedure ButtonTransmitClick(Sender: TObject);
    procedure CheckBoxRTSClick(Sender: TObject);
    procedure CheckBoxDTRClick(Sender: TObject);
    procedure CheckBoxBREAKClick(Sender: TObject);
    procedure CheckBoxXONClick(Sender: TObject);
    procedure ComboBaudrateChange(Sender: TObject);
    procedure ComboDatabitsChange(Sender: TObject);
    procedure ComboStopbitsChange(Sender: TObject);
    procedure ComboParityChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FCurrentLine: Integer;
    procedure UpdateControls;
    //Catch global exceptions
    procedure HandleException(Sender: TObject; E: Exception);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

const
  OnOff: array[0..1] of string = ('Off', 'On');

procedure TForm1.FormCreate(Sender: TObject);
begin
  Application.OnException := HandleException;

  EditDevName.Text := Comm1.DeviceName;
  with ComboBaudrate do
    ItemIndex := Items.IndexOf('cbr9600');
  with ComboDataBits do
    ItemIndex := Items.IndexOf('da8');
  with ComboParity do
    ItemIndex := Items.IndexOf('paNone');
  with ComboStopbits do
    ItemIndex := Items.IndexOf('sb10');

  Comm1.BaudRate := TBaudrate(ComboBaudrate.ItemIndex);
  Comm1.Databits := TDataBits(ComboDatabits.ItemIndex);
  Comm1.Parity := TParity(ComboParity.ItemIndex);
  Comm1.StopBits := TStopBits(ComboStopbits.ItemIndex);

  FCurrentLine := 0;   //prepare receive buffer
  Memo2.Lines.add('');

  UpdateControls;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  Application.OnException := nil;
end;

procedure TForm1.UpdateControls;
begin
  ButtonOpen.Enabled := not Comm1.Enabled;
  ButtonClose.Enabled := Comm1.Enabled;
  ButtonTransmit.Enabled := Comm1.Enabled and Comm1.DSR;
end;

{$HINTS OFF}
procedure TForm1.ButtonOpenClick(Sender: TObject);
var
  E: Exception;
begin
  Comm1.DeviceName := EditDevName.Text;
  try
    Comm1.Open;
    Memo1.Lines.add('Device ready: ' + Comm1.DeviceName);
    Memo1.Lines.add(GetProviderSubtypeName(Comm1.ProviderSubtype));
  except
    on E: ECommError do
      Memo1.Lines.add(E.Message);
  end;
  UpdateControls;
end;
{$HINTS ON}

procedure TForm1.ButtonCloseClick(Sender: TObject);
begin
  Comm1.Close;
  Memo1.Lines.Add('Device closed: ' + Comm1.DeviceName);
  UpdateControls;
end;

procedure TForm1.Comm1Break(Sender: TObject);
begin
  Memo1.Lines.add('Break signal detected...');
end;

procedure TForm1.Comm1RxFlag(Sender: TObject);
begin
  Memo1.Lines.add('RxFlag signal detected...');
end;

procedure TForm1.Comm1TxEmpty(Sender: TObject);
begin
  Memo1.Lines.add('TxEmpty signal detected...');
end;

procedure TForm1.Comm1CTS(Sender: TObject);
begin
  Memo1.Lines.add('CTS: ' + OnOff[ord(Comm1.CTS)]);
end;

procedure TForm1.Comm1DSR(Sender: TObject);
begin
  Memo1.Lines.add('DSR: ' + OnOff[ord(Comm1.DSR)]);
  UpdateControls;
end;

procedure TForm1.Comm1Ring(Sender: TObject);
begin
  Memo1.Lines.add('RING: ' + OnOff[ord(Comm1.Ring)]);
end;

procedure TForm1.Comm1RLSD(Sender: TObject);
begin
  Memo1.Lines.add('RLSD: ' + OnOff[ord(Comm1.RLSD)]);
end;

procedure TForm1.Comm1Error(Sender: TObject; Errors: Integer);
begin
  if (Errors and CE_BREAK > 0) then
    Memo1.Lines.add('The hardware detected a break condition.');
  if (Errors and CE_DNS > 0) then
    Memo1.Lines.add('Windows 95 only: A parallel device is not selected.');
  if (Errors and CE_FRAME > 0) then
    Memo1.Lines.add('The hardware detected a framing error.');
  if (Errors and CE_IOE > 0) then
    Memo1.Lines.add('An I/O error occurred during communications with the device.');
  if (Errors and CE_MODE > 0) then
  begin
    Memo1.Lines.add('The requested mode is not supported, or the hFile parameter');
    Memo1.Lines.add('is invalid. If this value is specified, it is the only valid error.');
  end;
  if (Errors and CE_OOP > 0) then
    Memo1.Lines.add('Windows 95 only: A parallel device signaled that it is out of paper.');
  if (Errors and CE_OVERRUN > 0) then
    Memo1.Lines.add('A character-buffer overrun has occurred. The next character is lost.');
  if (Errors and CE_PTO > 0) then
    Memo1.Lines.add('Windows 95 only: A time-out occurred on a parallel device.');
  if (Errors and CE_RXOVER > 0) then
  begin
    Memo1.Lines.add('An input buffer overflow has occurred. There is either no');
    Memo1.Lines.add('room in the input buffer, or a character was received after');
    Memo1.Lines.add('the end-of-file (EOF) character.');
  end;
  if (Errors and CE_RXPARITY > 0) then
    Memo1.Lines.add('The hardware detected a parity error.');
  if (Errors and CE_TXFULL > 0) then
  begin
    Memo1.Lines.add('The application tried to transmit a character, but the output');
    Memo1.Lines.add('buffer was full.');
  end;
end;

procedure TForm1.Comm1RxChar(Sender: TObject; Count: Integer);
var
  Buffer: array[0..1024] of Char;
  Bytes, P: Integer;
begin
  Memo1.Lines.add('RxChar signal detected...');
  Fillchar(Buffer, Sizeof(Buffer), 0);
  Bytes := Comm1.Read(Buffer, Count);
  if Bytes = -1 then
    Memo1.Lines.add('Error reading incoming data...')
  else
  begin
    Memo1.Lines.add('Reading ' + IntToStr(Bytes) + ' characters');
    for P := 0 to Bytes do
      case Buffer[P] of
        #10: begin
               Memo2.Lines.add('');
               Inc(FCurrentLine);
             end;
        #13:;
         else
           begin
             Memo2.Lines[FCurrentLine] := Memo2.Lines[FCurrentLine] + Buffer[P];
             Memo2.Refresh;
           end;
      end;
  end;
end;

procedure TForm1.ButtonResetClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo2.Lines.Clear;
  FCurrentLine := 0;   //prepare receive buffer
  Memo2.Lines.add('');
end;

procedure TForm1.ButtonTransmitClick(Sender: TObject);
var
  S: string;
  Count: Integer;
begin
  S := EditTransmit.Text;
  if CheckBoxAddLinefeed.Checked then
    S := S + #13#10;
  Count := Comm1.Write(S[1], Length(S));
  if Count = -1 then
    Memo1.Lines.add('Error writing to: ' + Comm1.DeviceName)
  else Memo1.Lines.add('Transmitting ' + IntToStr(Count) + ' characters');
end;

procedure TForm1.CheckBoxRTSClick(Sender: TObject);
begin
  Comm1.SetRTSState(CheckBoxRTS.Checked);
end;

procedure TForm1.CheckBoxDTRClick(Sender: TObject);
begin
  Comm1.SetDTRState(CheckBoxDTR.Checked);
end;

procedure TForm1.CheckBoxBREAKClick(Sender: TObject);
begin
  Comm1.SetBREAKState(CheckBoxBREAK.Checked);
end;

procedure TForm1.CheckBoxXONClick(Sender: TObject);
begin
  Comm1.SetXONState(CheckBoxXON.Checked);
end;

procedure TForm1.ComboBaudrateChange(Sender: TObject);
begin
  Comm1.BaudRate := TBaudrate(ComboBaudrate.ItemIndex);
  Memo1.Lines.add('Baudrate: ' + ComboBaudrate.Text);
end;

procedure TForm1.ComboDatabitsChange(Sender: TObject);
begin
  Comm1.Databits := TDataBits(ComboDatabits.ItemIndex);
  Memo1.Lines.add('Databits: ' + ComboDatabits.Text);
end;

procedure TForm1.ComboStopbitsChange(Sender: TObject);
begin
  Comm1.StopBits := TStopBits(ComboStopbits.ItemIndex);
  Memo1.Lines.add('StopBits: ' + ComboStopbits.Text);
end;

procedure TForm1.ComboParityChange(Sender: TObject);
begin
  Comm1.Parity := TParity(ComboParity.ItemIndex);
  Memo1.Lines.add('Parity: ' + ComboParity.Text);
end;

procedure TForm1.HandleException(Sender: TObject; E: Exception);
begin
  if E is ECommError then
    with E as ECommError do
      ShowMessage('Async32 error: ' + Message);
end;


end.
