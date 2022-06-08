unit TFlatRegister;

interface

{$I DFS.inc}

uses Classes, Controls, Graphics, Forms, FlatGraphics;

{$IFNDEF DFS_COMPILER_5_UP}
function RxColorToString(Color: TColor): string;
function RxStringToColor(S: string): TColor;
procedure RxGetColorValues(Proc: TGetStrProc);
{$ENDIF}

procedure Register;

implementation

uses
  TFlatButtonUnit, TFlatSpeedButtonUnit, TFlatEditUnit, TFlatMemoUnit,
  TFlatRadioButtonUnit, TFlatCheckBoxUnit, TFlatProgressBarUnit, TFlatHintUnit,
  TFlatTabControlUnit, TFlatListBoxUnit, TFlatComboBoxUnit, TFlatAnimWndUnit,
  TFlatSoundUnit, TFlatGaugeUnit, TFlatSplitterUnit, TFlatAnimationUnit,
  TFlatCheckListBoxUnit, TFlatGroupBoxUnit, TFlatMaskEditUnit, TFlatPanelUnit,
  TFlatColorComboBoxUnit,
  TFlatSpinEditUnit{$IFNDEF DFS_COMPILER_5_UP},
  SysUtils, DsgnIntf{$ENDIF};

{$IFNDEF DFS_COMPILER_5_UP}
type
  TColorEntry = record
    Value: TColor;
    Name: PChar;
  end;

const
  clInfoBk16 = TColor($02E1FFFF);
  clNone16 = TColor($02FFFFFF);
  ColorCount = 18;
  Colors: array[0..ColorCount - 1] of TColorEntry = (
    (Value: ecDarkBlue;     Name: 'ecDarkBlue'),
    (Value: ecBlue;         Name: 'ecBlue'),
    (Value: ecLightBlue;    Name: 'ecLightBlue'),
    (Value: ecDarkRed;      Name: 'ecDarkRed'),
    (Value: ecRed;          Name: 'ecRed'),
    (Value: ecLightRed;     Name: 'ecLightRed'),
    (Value: ecDarkGreen;    Name: 'ecDarkGreen'),
    (Value: ecGreen;        Name: 'ecGreen'),
    (Value: ecLightGreen;   Name: 'ecLightGreen'),
    (Value: ecDarkYellow;   Name: 'ecDarkYellow'),
    (Value: ecYellow;       Name: 'ecYellow'),
    (Value: ecLightYellow;  Name: 'ecLightYellow'),
    (Value: ecDarkBrown;    Name: 'ecDarkBrown'),
    (Value: ecBrown;        Name: 'ecBrown'),
    (Value: ecLightBrown;   Name: 'ecLightBrown'),
    (Value: ecDarkKaki;     Name: 'ecDarkKaki'),
    (Value: ecKaki;         Name: 'ecKaki'),
    (Value: ecLightKaki;    Name: 'ecLightKaki')
  );

function RxColorToString(Color: TColor): string;
var
  I: Integer;
begin
  if not ColorToIdent(Color, Result) then begin
    for I := Low(Colors) to High(Colors) do
      if Colors[I].Value = Color then
      begin
        Result := StrPas(Colors[I].Name);
        Exit;
      end;
    FmtStr(Result, '$%.8x', [Color]);
  end;
end;

function RxStringToColor(S: string): TColor;
var
  I: Integer;
  Text: array[0..63] of Char;
begin
  StrPLCopy(Text, S, SizeOf(Text) - 1);
  for I := Low(Colors) to High(Colors) do
    if StrIComp(Colors[I].Name, Text) = 0 then
    begin
      Result := Colors[I].Value;
      Exit;
    end;
  Result := StringToColor(S);
end;

procedure RxGetColorValues(Proc: TGetStrProc);
var
  I: Integer;
begin
  GetColorValues(Proc);
  for I := Low(Colors) to High(Colors) do Proc(StrPas(Colors[I].Name));
end;

{ TRxColorProperty }

type
  TRxColorProperty = class(TColorProperty)
  public
    function GetValue: string; override;
    procedure GetValues (Proc: TGetStrProc); override;
    procedure SetValue (const Value: string); override;
  end;

function TRxColorProperty.GetValue: string;
var
  Color: TColor;
begin
  Color := TColor(GetOrdValue);
  if Color = clNone16 then Color := clNone
  else if Color = clInfoBk16 then Color := clInfoBk;
  Result := RxColorToString(Color);
end;

procedure TRxColorProperty.GetValues(Proc: TGetStrProc);
begin
  RxGetColorValues(Proc);
end;

procedure TRxColorProperty.SetValue(const Value: string);
begin
  SetOrdValue(RxStringToColor(Value));
end;
{$ENDIF}

procedure Register;
begin
  RegisterComponents ('uniHISPACK', [TFlatButton, TFlatSpeedButton, TFlatCheckBox,
    TFlatRadioButton, TFlatEdit, TFlatMaskEdit,
    TFlatSpinEditInteger, TFlatSpinEditFloat,
    TFlatMemo, TFlatProgressBar, TFlatTabControl,
    TFlatListBox, TFlatCheckListBox,
    TFlatComboBox, TFlatColorComboBox,
    TFlatGroupBox, TFlatPanel, TFlatHint, TFlatAnimWnd, TFlatSound,
    TFlatGauge, TFlatSplitter, TFlatAnimation]);
{$IFNDEF DFS_COMPILER_5_UP}
  RegisterPropertyEditor(TypeInfo(TColor), TPersistent, '', TRxColorProperty);
{$ENDIF}
end;

end.
