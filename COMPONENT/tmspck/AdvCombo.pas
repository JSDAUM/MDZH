{**********************************************************************}
{ TAdvComboBox component                                               }
{ for Delphi 2.0,3.0,4.0,5.0 & C++Builder 1.0, 3.0,4.0,5.0             }
{ version 1.1                                                          }
{                                                                      }
{ written by                                                           }
{  TMS Software                                                        }
{  copyright ? 1996-2001                                               }
{  Email : info@tmssoftware.com                                        }
{  Web : http://www.tmssoftware.com                                    }
{                                                                      }
{ The source code is given as is. The author is not responsible        }
{ for any possible damage done due to the use of this code.            }
{ The component can be freely used in any application. The source      }
{ code remains property of the author and may not be distributed       }
{ freely as such.                                                      }
{**********************************************************************}

unit AdvCombo;

{$I TMSDEFS.INC}

interface

uses Windows, Messages, Classes, Forms, Controls, Graphics, StdCtrls, sysutils;

type
  TAdvCustomCombo = class(TCustomComboBox)
  private
    FAutoFocus: boolean;
    FFlat: Boolean;
    FEtched: Boolean;
    FOldColor: TColor;
    FOldParentColor: Boolean;
    FButtonWidth: Integer;
    FFocusBorder: Boolean;
    FMouseInControl: Boolean;
    fDropWidth: integer;
    procedure SetEtched(const Value: Boolean);
    procedure SetFlat(const Value: Boolean);
    procedure SetButtonWidth(const Value: Integer);
    procedure DrawButtonBorder(DC:HDC);
    procedure DrawControlBorder(DC:HDC);
    procedure DrawBorders;
    function  Is3DBorderControl: Boolean;
    function  Is3DBorderButton: Boolean;
    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
    procedure CMExit(var Message: TCMExit); message CM_EXIT;
    procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
    procedure CMEnabledChanged(var Msg: TMessage); message CM_ENABLEDCHANGED;
    procedure CNCommand (var Message: TWMCommand); message CN_COMMAND;
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
    procedure WMNCPaint (var Message: TMessage); message WM_NCPAINT;
    procedure SetDropWidth(const Value: integer);
  protected
    property ButtonWidth: integer read fButtonWidth write SetButtonWidth;
    property Flat: Boolean read FFlat write SetFlat;
    property Etched: Boolean read FEtched write SetEtched;
    property FocusBorder: Boolean read FFocusBorder write FFocusBorder;
    property AutoFocus: Boolean read FAutoFocus write FAutoFocus;
    property DropWidth: integer read FDropWidth write SetDropWidth;
  public
    constructor Create(AOwner: TComponent); override;
  end;

  TAdvComboBox = class(TAdvCustomCombo)
  published
    property AutoFocus;
    property ButtonWidth;
    property Style;
    property Flat;
    property Etched;
    property FocusBorder;
    property Color;
    property Ctl3D;
    property DragCursor;
    property DragMode;
    property DropDownCount;
    property DropWidth;
    property Enabled;
    property Font;
    {$IFNDEF DELPHI2_LVL}
    property ImeMode;
    property ImeName;
    {$ENDIF}
    property ItemHeight;
    property Items;
    property MaxLength;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property Sorted;
    property TabOrder;
    property TabStop;
    property Text;
    property Visible;
    property OnChange;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnDrawItem;
    property OnDropDown;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMeasureItem;
    property OnStartDrag;
    {$IFDEF DELPHI4_LVL}
    property Anchors;
    property BiDiMode;
    property Constraints;
    property DragKind;
    property ParentBiDiMode;
    property OnEndDock;
    property OnStartDock;
    {$ENDIF}
  end;


implementation

{ TAdvCustomCombo }
constructor TAdvCustomCombo.Create(AOwner: TComponent);
begin
  inherited;
  FButtonWidth := GetSystemMetrics(SM_CXVSCROLL) + 2;
  FOldColor := inherited Color;
  FOldParentColor := inherited ParentColor;
  FFlat := true;
  FMouseInControl := false;
end;

procedure TAdvCustomCombo.SetButtonWidth(const Value: integer);
begin
  if (value<14) or (value>32) then
    Exit;

  FButtonWidth:=value;
  Invalidate;
end;

procedure TAdvCustomCombo.SetFlat(const Value: Boolean);
begin
  if Value<>FFlat then
  begin
    FFlat:=Value;
    Ctl3D:=not Value;
    Invalidate;
  end;
end;

procedure TAdvCustomCombo.SetEtched(const Value: Boolean);
begin
  if Value<>FEtched then
  begin
    FEtched:=Value;
    Invalidate;
  end;
end;

procedure TAdvCustomCombo.CMEnter(var Message: TCMEnter);
begin
  inherited;
  if not (csDesigning in ComponentState) then DrawBorders;
end;

procedure TAdvCustomCombo.CMExit(var Message: TCMExit);
begin
  inherited;
  if not (csDesigning in ComponentState) then DrawBorders;
end;

procedure TAdvCustomCombo.CMMouseEnter(var Message: TMessage);
begin
  inherited;
  if not FMouseInControl and Enabled then
    begin
     FMouseInControl := True;
     DrawBorders;
    end;
  if fAutoFocus then self.SetFocus;
end;

procedure TAdvCustomCombo.CMMouseLeave(var Message: TMessage);
begin
  inherited;
  if FMouseInControl and Enabled then
    begin
     FMouseInControl := False;
     DrawBorders;
    end;
end;

procedure TAdvCustomCombo.CMEnabledChanged(var Msg: TMessage);
begin
  if FFlat then
   begin
    if Enabled then
      begin
       inherited ParentColor:=FOldParentColor;
       inherited Color:=FOldColor;
      end
    else
      begin
       FOldParentColor:=inherited Parentcolor;
       FOldColor:=inherited Color;
       inherited ParentColor:=True;
      end;
   end;
 inherited;
end;

procedure TAdvCustomCombo.WMNCPaint(var Message: TMessage);
begin
  inherited;
  if FFlat then DrawBorders;
end;

procedure TAdvCustomCombo.WMPaint(var Message: TWMPaint);
var
   DC: HDC;
   PS: TPaintStruct;

   procedure DrawButton;
   var
     ARect: TRect;
   begin
     GetWindowRect(Handle, ARect);
     OffsetRect(ARect, -ARect.Left, -ARect.Top);
     Inc(ARect.Left, ClientWidth - FButtonWidth);
     InflateRect(ARect, -1, -1);
     DrawFrameControl(DC, ARect, DFC_SCROLL, DFCS_SCROLLCOMBOBOX or DFCS_FLAT );
     ExcludeClipRect(DC, ClientWidth - FButtonWidth - 2, 0, ClientWidth, ClientHeight);
   end;

begin

  if not FFlat then
    begin
     inherited;
     Exit;
    end;

  if Message.DC = 0 then
    DC:=BeginPaint(Handle, PS)
  else
    DC:=Message.DC;
  try
    if (Style<>csSimple) then
      begin
       FillRect(DC, ClientRect, Brush.Handle);
       DrawButton;
      end;
    PaintWindow(DC);
  finally
    if Message.DC=0 then
      EndPaint(Handle, PS);
  end;
  DrawBorders;
end;

function TAdvCustomCombo.Is3DBorderControl: Boolean;
begin
  if csDesigning in ComponentState then
    Result:=false
  else
    Result:=FMouseInControl or (Screen.ActiveControl = Self);

  result := result and FFocusBorder;
end;

function TAdvCustomCombo.Is3DBorderButton: Boolean;
begin
  if csDesigning in ComponentState then
    Result:=Enabled
  else
    Result:=FMouseInControl or (Screen.ActiveControl = Self);
end;

procedure TAdvCustomCombo.DrawButtonBorder(DC: HDC);
const
   Flags: array[Boolean] of Integer = (0, BF_FLAT);
   Edge: array[Boolean] of Integer = (EDGE_RAISED,EDGE_ETCHED);
var
   ARect: TRect;
   BtnFaceBrush: HBRUSH;
begin

  ExcludeClipRect(DC, ClientWidth - FButtonWidth + 4, 4, ClientWidth - 4, ClientHeight - 4);

  GetWindowRect(Handle, ARect);
  OffsetRect(ARect, -ARect.Left, -ARect.Top);
  Inc(ARect.Left, ClientWidth - FButtonWidth - 2);
  InflateRect(ARect, -2, -2);

  if Is3DBorderButton then
   DrawEdge(DC, ARect, Edge[Etched], BF_RECT or Flags[DroppedDown])
  else
    begin
     BtnFaceBrush:=CreateSolidBrush(GetSysColor(COLOR_BTNFACE));
     InflateRect(ARect, 0, -1);
     arect.right:=arect.right-1;
     FillRect(DC, ARect, BtnFaceBrush);
     DeleteObject(BtnFaceBrush);
    end;

  ExcludeClipRect(DC, ARect.Left, ARect.Top, ARect.Right, ARect.Bottom);
end;

procedure TAdvCustomCombo.DrawControlBorder(DC: HDC);
var
  ARect:TRect;
  BtnFaceBrush, WindowBrush: HBRUSH;
begin

  if Is3DBorderControl then
   BtnFaceBrush:=CreateSolidBrush(GetSysColor(COLOR_BTNFACE))
  else
   BtnFaceBrush:=CreateSolidBrush(ColorToRGB((parent as TWinControl).brush.color));

  //WindowBrush:=CreateSolidBrush(GetSysColor(COLOR_WINDOW));
  WindowBrush:=CreateSolidBrush(ColorToRGB(self.Color));

  try
    GetWindowRect(Handle, ARect);
    OffsetRect(ARect, -ARect.Left, -ARect.Top);
    if Is3DBorderControl then
     begin
      DrawEdge(DC, ARect, BDR_SUNKENOUTER, BF_RECT or BF_ADJUST);
      FrameRect(DC, ARect, BtnFaceBrush);
      InflateRect(ARect, -1, -1);
      FrameRect(DC, ARect, WindowBrush);
     end
    else
     begin
      FrameRect(DC, ARect, BtnFaceBrush);
      InflateRect(ARect, -1, -1);
      FrameRect(DC, ARect, BtnFaceBrush);
      InflateRect(ARect, -1, -1);
      FrameRect(DC, ARect, WindowBrush);
     end;
  finally
    DeleteObject(WindowBrush);
    DeleteObject(BtnFaceBrush);
  end;
end;

procedure TAdvCustomCombo.DrawBorders;
var
  DC: HDC;
begin
  if not FFlat then Exit;
  DC := GetWindowDC(Handle);
  try
   DrawControlBorder(DC);
   if (Style<>csSimple) then DrawButtonBorder(DC);
  finally
   ReleaseDC(DC, Handle);
  end;
end;

procedure TAdvCustomCombo.CNCommand(var Message: TWMCommand);
var
  r:TRect;
begin
  inherited;
 
  if (Message.NotifyCode in [CBN_CLOSEUP,CBN_DROPDOWN]) then
  begin
    r := GetClientRect;
    r.Left := r.Right - Fbuttonwidth;
    InvalidateRect(Handle,@r,FALSE);
  end;
end;


procedure TAdvCustomCombo.SetDropWidth(const Value: integer);
begin
  FDropWidth := Value;
  if Value > 0 then
    SendMessage(self.Handle,CB_SETDROPPEDWIDTH,FDropWidth,0);
end;

end.



