unit TFlatRichEditUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, FlatUtilitys;

type
  TFlatRichEdit = class(TCustomRichEdit)
  private
    FUseAdvColors: Boolean;
    FAdvColorFocused: TAdvColors;
    FAdvColorBorder: TAdvColors;
    FParentColor: Boolean;
    FFocusedColor: TColor;
    FBorderColor: TColor;
    FFlatColor: TColor;
    MouseInControl: Boolean;
    procedure SetColors (Index: Integer; Value: TColor);
    procedure SetAdvColors (Index: Integer; Value: TAdvColors);
    procedure SetUseAdvColors (Value: Boolean);
    procedure SetParentColor (Value: Boolean);
    procedure CMEnabledChanged (var Message: TMessage); message CM_ENABLEDCHANGED;
    procedure CMMouseEnter (var Message: TMessage); message CM_MOUSEENTER;
    procedure CMMouseLeave (var Message: TMessage); message CM_MOUSELEAVE;
    procedure WMSetFocus (var Message: TWMSetFocus); message WM_SETFOCUS;
    procedure WMKillFocus (var Message: TWMKillFocus); message WM_KILLFOCUS;
    procedure WMNCCalcSize (var Message: TWMNCCalcSize); message WM_NCCALCSIZE;
    procedure WMNCPaint (var Message: TMessage); message WM_NCPAINT;
    procedure CMSysColorChange (var Message: TMessage); message CM_SYSCOLORCHANGE;
    procedure CMParentColorChanged (var Message: TWMNoParams); message CM_PARENTCOLORCHANGED;
  protected
    procedure CalcAdvColors;
    procedure RedrawBorder (const Clip: HRGN);
  public
    constructor Create (AOwner: TComponent); override;
  published
    property ColorFocused: TColor index 0 read FFocusedColor write SetColors default clWhite;
    property ColorBorder: TColor index 1 read FBorderColor write SetColors default $008396A0;
    property ColorFlat: TColor index 2 read FFlatColor write SetColors default $00E1EAEB;
    property ParentColor: Boolean read FParentColor write SetParentColor default false;
    property AdvColorFocused: TAdvColors index 0 read FAdvColorFocused write SetAdvColors default 10;
    property AdvColorBorder: TAdvColors index 1 read FAdvColorBorder write SetAdvColors default 50;
    property UseAdvColors: Boolean read FUseAdvColors write SetUseAdvColors default false;
    property Align;
    property Alignment;
    property DragCursor;
    property DragMode;
    property Enabled;
    property Font;
    property HideSelection;
    property MaxLength;
    property OEMConvert;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ReadOnly;
    property ShowHint;
    property ScrollBars;
    property TabOrder;
    property TabStop;
    property Visible;
    property Lines;
    property WantReturns;
    property WantTabs;
    property WordWrap;

    property OnChange;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDrag;
   {$IFDEF DFS_DELPHI_4_UP}
    property Anchors;
    property BiDiMode;
    property Constraints;
    property DragKind;
    property ParentBiDiMode;
    property OnEndDock;
    property OnStartDock;
   {$ENDIF}
  end;

procedure Register;

implementation

constructor TFlatRichEdit.Create (AOwner: TComponent);
begin
  inherited;
  ParentFont := True;
  FFocusedColor := clWhite;
  FBorderColor := $008396A0;
  FFlatColor := $00E1EAEB;
  FParentColor := True;
  AutoSize := False;
  Ctl3D := False;
  BorderStyle := bsNone;
  ControlStyle := ControlStyle - [csFramed];
  SetBounds(0, 0, 185, 89);
  FUseAdvColors := false;
  FAdvColorFocused := 10;
  FAdvColorBorder := 50;
end;

procedure TFlatRichEdit.SetParentColor (Value: Boolean);
begin
  if Value <> FParentColor then
  begin
    FParentColor := Value;
    if FParentColor then
    begin
      if Parent <> nil then
        FFlatColor := TForm(Parent).Color;
      RedrawBorder(0);
    end;
  end;
end;

procedure TFlatRichEdit.CMSysColorChange (var Message: TMessage);
begin
  if FUseAdvColors then
  begin
    if Parent <> nil then
      FFlatColor := TForm(Parent).Color;
    CalcAdvColors;
  end
  else
    if FParentColor then
    begin
      if Parent <> nil then
        FFlatColor := TForm(Parent).Color;
    end;
  RedrawBorder(0);
end;

procedure TFlatRichEdit.CMParentColorChanged (var Message: TWMNoParams);
begin
  if FUseAdvColors then
  begin
    if Parent <> nil then
      FFlatColor := TForm(Parent).Color;
    CalcAdvColors;
  end
  else
    if FParentColor then
    begin
      if Parent <> nil then
        FFlatColor := TForm(Parent).Color;
    end;
  RedrawBorder(0);
end;

procedure TFlatRichEdit.SetColors (Index: Integer; Value: TColor);
begin
  case Index of
    0: FFocusedColor := Value;
    1: FBorderColor := Value;
    2: FFlatColor := Value;
  end;
  if Index = 2 then
    FParentColor := False;
  RedrawBorder(0);
end;

procedure TFlatRichEdit.CalcAdvColors;
begin
  if FUseAdvColors then
  begin
    FFocusedColor := CalcAdvancedColor(FFlatColor, FFocusedColor, FAdvColorFocused, lighten);
    FBorderColor := CalcAdvancedColor(FFlatColor, FBorderColor, FAdvColorBorder, darken);
  end;
end;

procedure TFlatRichEdit.SetAdvColors (Index: Integer; Value: TAdvColors);
begin
  case Index of
    0: FAdvColorFocused := Value;
    1: FAdvColorBorder := Value;
  end;
  if FUseAdvColors then
  begin
    CalcAdvColors;
    RedrawBorder(0);
  end;
end;

procedure TFlatRichEdit.SetUseAdvColors (Value: Boolean);
begin
  if Value <> FUseAdvColors then
  begin
    FUseAdvColors := Value;
    ParentColor := Value;
    CalcAdvColors;
    RedrawBorder(0);
  end;
end;

procedure TFlatRichEdit.CMMouseEnter (var Message: TMessage);
begin
  inherited;
  if (GetActiveWindow <> 0) then
  begin
    MouseInControl := True;
    RedrawBorder(0);
  end;
end;

procedure TFlatRichEdit.CMMouseLeave (var Message: TMessage);
begin
  inherited;
  MouseInControl := False;
  RedrawBorder(0);
end;

procedure TFlatRichEdit.CMEnabledChanged (var Message: TMessage);
const
  EnableColors: array[Boolean] of TColor = (clBtnFace, clWindow);
begin
  inherited;
  Color := EnableColors[Enabled];
  RedrawBorder(0);
end;

procedure TFlatRichEdit.WMSetFocus (var Message: TWMSetFocus);
begin
  inherited;
  if not(csDesigning in ComponentState) then
    RedrawBorder(0);
end;

procedure TFlatRichEdit.WMKillFocus (var Message: TWMKillFocus);
begin
  inherited;
  if not(csDesigning in ComponentState) then
    RedrawBorder(0);
end;

procedure TFlatRichEdit.WMNCCalcSize (var Message: TWMNCCalcSize);
begin
  inherited;
  InflateRect(Message.CalcSize_Params^.rgrc[0], -3, -3);
end;

procedure TFlatRichEdit.WMNCPaint (var Message: TMessage);
begin
  inherited;
  RedrawBorder(HRGN(Message.WParam));
end;

procedure TFlatRichEdit.RedrawBorder (const Clip: HRGN);
var
  DC: HDC;
  R: TRect;
  BtnFaceBrush, WindowBrush, FocusBrush: HBRUSH;
begin
  DC := GetWindowDC(Handle);
  try
    GetWindowRect(Handle, R);
    OffsetRect(R, -R.Left, -R.Top);
    BtnFaceBrush := CreateSolidBrush(ColorToRGB(FBorderColor));
    WindowBrush := CreateSolidBrush(ColorToRGB(FFlatColor));
    FocusBrush := CreateSolidBrush(ColorToRGB(FFocusedColor));

    if (not(csDesigning in ComponentState) and
      (Focused or (MouseInControl and not(Screen.ActiveControl is TFlatRichEdit)))) then
    begin
      { Focus }
      Color := FFocusedColor;
      FrameRect(DC, R, BtnFaceBrush);
      InflateRect(R, -1, -1);
      FrameRect(DC, R, FocusBrush);
      InflateRect(R, -1, -1);
      FrameRect(DC, R, FocusBrush);
      if ScrollBars = ssBoth then
        FillRect(DC, Rect(R.Right - 17, R.Bottom - 17, R.Right - 1, R.Bottom - 1), FocusBrush);
    end
    else
    begin
      { non Focus }
      Color := FFlatColor;
      FrameRect(DC, R, BtnFaceBrush);
      InflateRect(R, -1, -1);
      FrameRect(DC, R, WindowBrush);
      InflateRect(R, -1, -1);
      FrameRect(DC, R, WindowBrush);
      if ScrollBars = ssBoth then
        FillRect(DC, Rect(R.Right - 17, R.Bottom - 17, R.Right - 1, R.Bottom - 1), WindowBrush);
    end;
  finally
    ReleaseDC(Handle, DC);
  end;
  DeleteObject(WindowBrush);
  DeleteObject(BtnFaceBrush);
  DeleteObject(FocusBrush);
end;

procedure Register;
begin
  RegisterComponents('uniHISPACK', [TFlatRichEdit]);
end;

end.
