unit NumEdit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TNumEdit = class(TEdit)
  private
    { Private-Declarationen }
    FCanvas           : TCanvas;
    var_dec           : char;
    var_errtext       : string;
    var_displayformat : string;
  protected
    { Protected-Declarationen }
    property Canvas: TCanvas read FCanvas;
    procedure setvalue(Newvalue : extended);
    procedure setdisplayformat(Newformat: String);
    procedure displaytext;
    procedure DoExit; override;
    procedure DoEnter; override;
    procedure KeyPress(var Key: Char); override;
    procedure KeyDown(var Key: Word;  Shift: TShiftState); override;
    function  getvalue : extended;
//    procedure Change; override;
  public
    { Public-Declarationen }
    constructor create (aowner : TComponent);override;
    destructor Destroy; override;
  published
    { Published-Declarationen }
    property Value    : extended read getvalue write setValue;
    property DisplayFormat: string read var_displayformat write setdisplayformat;
    property ErrorMessage :string read var_errtext write var_errtext;
  end;

procedure Register;
const
    notext       = '[No Text]';

implementation
constructor TNumEdit.create (aowner : TComponent);
begin
    inherited create(aowner);
    FCanvas := TControlCanvas.Create;
    TControlCanvas(FCanvas).Control := Self;
    var_dec := decimalseparator;
    var_errtext := notext;
    text := '0';
//    setvalue(0.0);
//    setdisplayformat('#,##0');
end;

destructor TNumEdit.Destroy;
begin
   FCanvas.Free;
   inherited Destroy;
end;

procedure Register;
begin
    RegisterComponents('uniHISPACK', [TNumEdit]);
end;


procedure TNumEdit.displaytext;
var tmp : string;
begin
    if var_displayformat = '' then
       tmp := floattostr(getvalue)
    else
       tmp := FormatFloat(var_displayformat,getvalue);

    Canvas.Font := Font;
    if (Canvas.TextWidth(tmp) < ClientWidth) then
    begin
       repeat
          tmp := ' ' + tmp;
       until Canvas.TextWidth('1'+tmp) >= ClientWidth;
    end;

    text := tmp;
end;

procedure TNumEdit.DoEnter;
begin
    inherited DoEnter;
    Text := Trim(Text);
    SelStart := 0;
    SelLength := length(Text);
end;

procedure TNumEdit.DoExit;
begin
    displaytext;
    inherited DoExit;
end;

procedure TNumEdit.setdisplayformat(Newformat: String);
begin
    var_displayformat := Newformat;
    displaytext;
end;

procedure TNumEdit.setvalue(Newvalue : extended);
var tmp : string;
begin
    if var_displayformat = '' then
       tmp := floattostr(newvalue)
    else
       tmp := FormatFloat(var_displayformat,newvalue);

    Canvas.Font := Font;
    if (Canvas.TextWidth(tmp) < ClientWidth) then
    begin
       repeat
          tmp := ' ' + tmp;
       until Canvas.TextWidth('1'+tmp) >= ClientWidth;
    end;

    text := tmp;
end;

function TNumEdit.getvalue : extended;
var text_string : string;
    buffer_text : array[0..99] of char;
    set_text : array[0..99] of char;
    string_length : integer;
    i : integer;
    j : integer;
begin
     try
        text_string := trim(text);
        if (text_string = '-') or (text_string = var_dec) or (text_string = '') then
           text_string := '0';

        string_length := length(text_string);
        strpcopy(buffer_text,text_string);
        j := 0;
        for  i := 0 to string_length-1 do
        begin
           if buffer_text[i] <> ',' then
           begin
              set_text[j] := buffer_text[i];
              j := j + 1;
           end;
        end;
        StrLcopy(buffer_text,set_text,j);
        text_string := strpas(buffer_text);
        result := strtofloat(text_string);
     except;
            Text := '0';
            Value := 0;
     end;
end;

procedure TNumEdit.keydown;
begin
    if key = 13 then
    begin
       displaytext;
       selstart := length(text);
    end;
    inherited;
end;

procedure TNumEdit.keypress;
var    text_string           : string;
begin
     if key < #32 then begin
        inherited;
        exit;
     end;

     text_string := copy(text,1,selstart)+copy(text,selstart+sellength+1,500);

     if (key <'0') or (key > '9') then if (key <> var_dec) and (key <> '-') then begin
        inherited;
        key := #0;
        exit;
     end;
     if key = var_dec then if pos(var_dec,text_string) <> 0 then begin
        inherited;
        key := #0;
        exit;
     end;
     if key = '-' then if pos('-',text_string) <> 0 then begin
        inherited;
        key := #0;
        exit;
     end;

     text_string := copy(text,1,selstart)+key+copy(text,selstart+sellength+1,500);


     if key = '-' then if pos('-',text_string) <> 1 then begin
        inherited;
        key := #0;
        exit;
     end;

     if text_string = '-' then
     begin
        inherited;
        key:=#0;
        text := '-0';
        selstart := 1;
        sellength:=1;
        exit;
     end;

     if text_string = var_dec then begin
        inherited;
        key:=#0;
        text := '0'+var_dec+'0';
        selstart :=2;
        sellength:=1;
        exit;
     end;

     inherited;
end;
end.
