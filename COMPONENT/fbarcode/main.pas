unit main;
{
	Demo - Programm for Barcode Component

}



interface

uses
  WinTypes, WinProcs, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Barcode, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
	 Barcode1: TAsBarcode;
	 Image1: TImage;
    Panel1: TPanel;
    Label1: TLabel;
	 Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Edit2: TEdit;
    Label4: TLabel;
    Button1: TButton;
    ComboBox2: TComboBox;
    CBCheckSum: TCheckBox;
    Button2: TButton;
    EditWidth: TEdit;
    Label5: TLabel;
	 procedure FormCreate(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
	 procedure ComboBox2Click(Sender: TObject);
    procedure CBCheckSumClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EditWidthEnter(Sender: TObject);
    procedure EditWidthExit(Sender: TObject);
    procedure Barcode1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
	 { Private-Deklarationen }

	 procedure print_demo(bc:TAsBarcode);


  public
	 { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

uses Printers;

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
	{ TCanvas }
{
	Barcode1.Top := 50;
	Barcode1.Left := 30;
	Barcode1.DrawBarcode(Image1.Canvas);

	Barcode1.Top := 200;
	Barcode1.Left := 230;
	Barcode1.Angle := 70;
	Barcode1.Typ := bcCode_2_5_interleaved;

	Barcode1.DrawBarcode(Image1.Canvas);
	Barcode1.DrawText(Image1.Canvas);
}

	ComboBox2.ItemIndex := integer(Barcode1.ShowText);
end;

procedure TForm1.Label2Click(Sender: TObject);
begin
	// Start Email Client
	WinExec('start "mailto:shmia@bizerba.de?subject=Barcode component"',
		SW_HIDE);
end;


procedure TForm1.ComboBox1Click(Sender: TObject);
begin
  Barcode1.Typ := TBarcodeType(ComboBox1.ItemIndex);
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
	try
		Barcode1.Angle := StrToFloat(Edit2.Text);
	except
		Barcode1.Angle := 0.0;
	end;
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	Barcode1.Top  := Y;
	Barcode1.Left := X;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
	Print;
end;

procedure TForm1.ComboBox2Click(Sender: TObject);
begin
	Barcode1.ShowText := TBarcodeOption(ComboBox2.ItemIndex);
end;

procedure TForm1.CBCheckSumClick(Sender: TObject);
begin
	Barcode1.Checksum := CBCheckSum.Checked;
end;


procedure TForm1.print_demo(bc:TAsBarcode);
begin
	with printer do
	begin
		BeginDoc;

         Canvas.TextOut(10, 10, 'Barcode Printing Demo '+DateTimeToStr(Now));

		bc.DrawBarcode(Canvas);


		// TPrinter

		EndDoc;
	end;

end;




procedure TForm1.Button2Click(Sender: TObject);
begin
	print_demo(Barcode1);
end;

procedure TForm1.EditWidthEnter(Sender: TObject);
begin
	EditWidth.Text := IntToStr(Barcode1.Width);
end;

procedure TForm1.EditWidthExit(Sender: TObject);
begin
	Barcode1.Width := StrToInt(EditWidth.Text);
	EditWidth.Text := IntToStr(Barcode1.Width);
end;

procedure TForm1.Barcode1Change(Sender: TObject);
begin
   Image1.Picture := nil;
	Barcode1.DrawBarcode(Image1.Canvas);
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
   Barcode1.Text := Edit1.Text;
end;

end.
