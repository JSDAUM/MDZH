unit pallel;

interface
uses
  Windows, Messages, SysUtils, Classes, Printers,
  Graphics, Controls, Forms, Dialogs;

type
    TLPTPort = (cpLPT1, cpLPT2);

    function OpenPallelPort(MyPallelPort : string) : Boolean;
    function ClosePallelPort : boolean;
    procedure SendDataToPallel(data : PChar; size : DWord);
    procedure SendStringDataToPallel(s_data : string);
    procedure SendDataToPallel_1(s_data : string);

var
    hPallelPort : THandle; // Handle to the serial port.
    fPallelPort : TLPTPort;
    hPallelPrinter : TextFile;

implementation

function OpenPallelPort(MyPallelPort : string) : Boolean;
var
  MyPort : String;
begin
//    MyPort := 'LPT' + IntToStr(ord(fPallelPort)+1);

    {
    try
       AssignFile(hPallelPrinter, MyPort);
       AssignPrn(hPallelPrinter);
       Rewrite(hPallelPrinter);
    finally
       CloseFile(hPallelPrinter);
    end;
    }

    AssignFile(hPallelPrinter, MyPallelPort);

    if ioResult <> 0 then
      Showmessage('Printer의 정상유무를 확인하십시오!');
    try
       Rewrite(hPallelPrinter);
    except

       showmessage('Printer의 정상유무를 확인하십시오!');
       Result := False;
       exit;
    end;

    Result := True;
end;

// Public method to Close the port.
function ClosePallelPort : boolean;
begin
    CloseFile(hPallelPrinter);
end;

// Public Send data method.
procedure SendDataToPallel(data : PChar; size : DWord);
begin
   Write(hPallelPrinter, data);
end;

procedure SendDataToPallel_1(s_data : string);
begin
   Write(hPallelPrinter, pChar(s_data));
end;

// Public Send data method.
procedure SendStringDataToPallel(s_data : string);
begin
   Writeln(hPallelPrinter, pChar(s_data));
end;

end.
