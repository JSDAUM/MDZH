{**************************************************************************}
{ TParamCheckList component                                                )
{ for Delphi 3.0,4.0,5.0,6.0 + C++Builder 3.0,4.0,5.0,6.0                  }
{ version 1.2, July 2001                                                   }
{                                                                          }
{ written by TMS Software                                                  }
{            copyright © 2000 - 2001                                       }
{            Email : info@tmssoftware.com                                  }
{            Website : http://www.tmssoftware.com/                         }
{                                                                          }
{ The source code is given as is. The author is not responsible            }
{ for any possible damage done due to the use of this code.                }
{ The component can be freely used in any application. The complete        }
{ source code remains property of the author and may not be distributed,   }
{ published, given or sold in any form as such. No parts of the source     }
{ code can be included in any other component or application without       }
{ written authorization of the author.                                     }
{**************************************************************************}

{$I TMSDEFS.INC}
{$DEFINE REMOVESTRIP}
{$DEFINE REMOVEDRAW}
{$DEFINE PARAMS}

unit paramchklist;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, forms,
  StdCtrls, Dialogs, Menus, Spin, ComCtrls;

type
  TParamClickEvent = procedure (Sender:TObject;idx:integer; href:string;var value:string) of object;
  TParamPopupEvent = procedure (Sender:TObject;idx:integer; href:string;values:TStringlist;var DoPopup:boolean) of object;
  TParamSelectEvent = procedure (Sender:TObject;idx:integer; href,value:string) of object;
  TParamChangedEvent = procedure (Sender:TObject;idx:integer; href,oldvalue,newvalue:string) of object;
  TParamHintEvent = procedure (Sender:TObject; href:string; var hintvalue:string; var showhint:boolean) of object;

  TParamCheckList = class;

  TPopupListBox = class(TListBox)
  private
    fParam:string;
    fOwnerList:TParamCheckList;
    procedure WMKeyDown(var Msg:TWMKeydown); message wm_keydown;
    procedure WMLButtonUp(var Message: TWMLButtonDown); message WM_LBUTTONUP;
    procedure WMLButtonDown(var Message: TWMLButtonDown); message WM_LBUTTONDOWN;
    procedure WMActivate(var Message: TWMActivate); message WM_ACTIVATE;
  protected
    procedure CreateParams(var Params:TCreateParams); override;
    procedure SizeDropDownWidth;
  public
    property OwnerList:TParamCheckList read fOwnerList write fOwnerList;
    property Param:string read fParam write fParam;
  end;

  TPopupSpinEdit = class(TSpinEdit)
  private
    FCancelled: Boolean;
    FParam: string;
    FOwnerList:TParamCheckList;
    procedure WMKeyDown(var Msg:TWMKeydown); message WM_KEYDOWN;
    procedure WMActivate(var Message: TWMActivate); message WM_ACTIVATE;
  protected
    procedure CreateParams(var Params:TCreateParams); override;
  public
    property Cancelled: Boolean read FCancelled write FCancelled;
    property OwnerList:TParamCheckList read FOwnerList write FOwnerList;
    property Param: string read FParam write FParam;
  end;

  TPopupEdit = class(TEdit)
  private
    FCancelled: Boolean;
    FParam: string;
    FOwnerList:TParamCheckList;
    procedure WMKeyDown(var Msg:TWMKeydown); message WM_KEYDOWN;
    procedure WMActivate(var Message: TWMActivate); message WM_ACTIVATE;
  protected
    procedure CreateParams(var Params:TCreateParams); override;
  public
    property Cancelled: Boolean read FCancelled write FCancelled;
    property OwnerList:TParamCheckList read FOwnerList write FOwnerList;
    property Param: string read FParam write FParam;
  end;

  TPopupDatePicker = class(TDateTimePicker)
  private
    FCancelled: Boolean;
    FParam: string;
    FOwnerList:TParamCheckList;
    {$IFNDEF DELPHI4_LVL}
    FDroppedDown: Boolean;
    procedure CNNotify(var Message: TWMNotify); message CN_NOTIFY;
    {$ENDIF}
    procedure WMKeyDown(var Msg:TWMKeydown); message WM_KEYDOWN;
    procedure WMActivate(var Message: TWMActivate); message WM_ACTIVATE;
  protected
    procedure CreateParams(var Params:TCreateParams); override;
    procedure DoExit; override;
  public
    {$IFNDEF DELPHI4_LVL}
    property DroppedDown: Boolean read FDroppedDown;
    {$ENDIF}
    property Cancelled: Boolean read FCancelled write FCancelled;
    property OwnerList:TParamCheckList read FOwnerList write FOwnerList;
    property Param: string read FParam write FParam;
  end;

  TParamCheckList = class(TCustomListBox)
  private
    {$IFNDEF DELPHI5_LVL}
    UseRightToLeftAlignment:boolean;
    {$ENDIF}
    FOldParam:string;
    FOldCursor:TCursor;
    FParamColor:TColor;
    FAllowGrayed: Boolean;
    FDuplicates: Boolean;
    FFlat: Boolean;
    FStandardItemHeight: Integer;
    FOnCheckClick: TNotifyEvent;
    FOnParamClick: TParamClickEvent;
    FOnParamPopup: TParamPopupEvent;
    FOnParamList:TParamPopupEvent;
    FOnParamSelect:TParamSelectEvent;
    FOnParamChanged:TParamChangedEvent;
    FOnParamExit: TParamSelectEvent;
    FOnParamEnter: TParamSelectEvent;
    FOnParamHint: TParamHintEvent;
    FSaveStates: TList;
    FShowSelection: boolean;
    FDuplicateList : TStringList;
    FHover:boolean;
    FHoverIdx:integer;
    FHoverHyperLink:integer;
    FHoverColor:tColor;
    FHoverFontColor:tColor;
    FCurrHoverRect:trect;
    FParamPopup:TPopupMenu;
    FImages: TImageList;
    FParamList:TPopupListBox;
    FParamDatePicker: TPopupDatePicker;
    FParamSpinEdit: TPopupSpinEdit;
    FParamEdit: TPopupEdit;
    FShadowColor:TColor;
    FShadowOffset:integer;
    FUpdateCount:integer;
    FUpdateIndex:integer;
    FParamHint: Boolean;
    FOnParamPrepare: TParamClickEvent;
    FParamListSorted: Boolean;
    procedure ResetItemHeight;
    procedure DrawCheck(R: TRect; AState: TCheckBoxState; AEnabled: Boolean);
    procedure SetChecked(Index: Integer; Checked: Boolean);
    function GetChecked(Index: Integer): Boolean;
    procedure SetState(Index: Integer; AState: TCheckBoxState);
    function GetState(Index: Integer): TCheckBoxState;
    procedure SetIndent(Index: Integer; AIndent: integer);
    function GetIndent(Index: Integer): integer;
    procedure ToggleClickCheck(Index: Integer);
    procedure InvalidateCheck(Index: Integer);
    procedure InvalidateItem(Index: Integer);
    function CreateWrapper(Index: Integer): TObject;
    function ExtractWrapper(Index: Integer): TObject;
    function GetWrapper(Index: Integer): TObject;
    function HaveWrapper(Index: Integer): Boolean;
    procedure SetFlat(Value: Boolean);
    procedure SetDuplicates(Value: Boolean);
    procedure CNDrawItem(var Message: TWMDrawItem); message CN_DRAWITEM;
    procedure CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;
    procedure CMHintShow(Var Msg: TMessage); message CM_HINTSHOW;
    procedure CMMouseLeave(Var Msg: TMessage); message CM_MOUSELEAVE;
    procedure WMDestroy(var Msg : TWMDestroy);message WM_DESTROY;
    procedure WMEraseBkGnd(var Message:TMessage); message WM_ERASEBKGND;
    procedure WMKillFocus(var Message:TMessage); message WM_KILLFOCUS;
    function GetItemEnabled(Index: Integer): Boolean;
    procedure SetItemEnabled(Index: Integer; const Value: Boolean);
    function GetComment(Index: Integer): Boolean;
    procedure SetComment(Index: Integer; AComment: Boolean);
    function GetSelectCount: Integer;
    function GetSelected(Index: Integer): string;
    procedure QuickSortItems(left,right:integer);
    function IsParam(x,y:integer;var idx:integer;var hoverrect:trect):string;
    procedure SetParamColor(const Value: TColor);
    function GetParam(href: string): string;
    procedure SetParam(href: string; const Value: string);
    function GetItemParam(idx: integer; href: string): string;
    procedure SetItemParam(idx: integer; href: string; const Value: string);
    procedure HandlePopup(Sender:TObject);
    procedure SetHover(const Value: boolean);
    procedure SetImageList(const Value: TImageList);
    function GetItemIndent(const Index:integer):integer;
    procedure SetShadowColor(const Value: TColor);
    procedure SetShadowOffset(const Value: integer);
    function GetCheckWidth: Integer;
    procedure SetParamHint(const Value: Boolean);
    procedure UpdateParam(href:string; value:string);
    procedure PrepareParam(Param:string; var Value:string);
    function HTMLPrep(s:string):string;
    function InvHTMLPrep(s:string):string;
    function GetParamInfo(Index: Integer; HRef:string; var AValue, AClass, AProp: string): Boolean;
  protected
    procedure Notification(AComponent: TComponent; AOperation: TOperation); override;
    procedure DrawItem(Index: Integer; Rect: TRect; State: TOwnerDrawState); override;
    {$IFDEF DELPHI5_LVL}
    function InternalGetItemData(Index: Integer): Longint; override;
    procedure InternalSetItemData(Index: Integer; AData: Longint); override;
    {$ENDIF}
    procedure SetItemData(Index: Integer; AData: LongInt); override;
    function GetItemData(Index: Integer): LongInt; override;
    procedure KeyPress(var Key: Char); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure ResetContent; override;
    procedure DeleteString(Index: Integer); override;
    procedure ClickCheck; dynamic;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWnd; override;
    procedure DestroyWnd; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property Checked[Index: Integer]: Boolean read GetChecked write SetChecked;
    property ItemEnabled[Index: Integer]: Boolean read GetItemEnabled write SetItemEnabled;
    property State[Index: Integer]: TCheckBoxState read GetState write SetState;
    property Indent[Index: Integer]: Integer read GetIndent write SetIndent;
    property Comment[Index: Integer]: Boolean read GetComment write SetComment;
    property Selected[Index: Integer]: string read GetSelected;
    property SelectCount: Integer read GetSelectCount;
    procedure SortAllComments;
    procedure SortComment(Index:integer);
    property Parameter[href:string]:string read GetParam write SetParam;
    property ItemParameter[idx: Integer;href: string]: string read GetItemParam write SetItemParam;
    property ParamListBox:TPopupListbox read fParamList;
    procedure BeginUpdate;
    procedure EndUpdate;
    property DateTimePicker: TPopupDatePicker read FParamDatePicker;
    property SpinEdit: TPopupSpinEdit read FParamSpinEdit;
    property Editor: TPopupEdit read FParamEdit;
    property ListBox: TPopupListBox read FParamList;
  published
    property Align;
    property AllowGrayed: Boolean read FAllowGrayed write FAllowGrayed default False;
    property Hover: Boolean read fHover write SetHover default False;
    property HoverColor: TColor read fHoverColor write fHoverColor;
    property HoverFontColor: TColor read fHoverFontColor write fHoverFontColor;
    property ParamColor: TColor read fParamColor write SetParamColor;
    property ParamHint: Boolean read fParamHint write SetParamHint;
    property ParamListSorted: Boolean read FParamListSorted write FParamListSorted;
    property ShadowColor:TColor read fShadowColor write SetShadowColor;
    property ShadowOffset: Integer read fShadowOffset write SetShadowOffset;
    property ShowSelection: Boolean read fShowSelection write fShowSelection;
    property Images: TImageList read fImages write SetImageList;
    {$IFDEF DELPHI5_LVL}
    property Anchors;
    property BiDiMode;
    property Constraints;
    property DragKind;
    property ParentBiDiMode;
    property OnContextPopup;
    property OnEndDock;
    property OnStartDock;
    {$ENDIF}
    property BorderStyle;
    property Color;
    {property Columns; no multicolumn support}
    property Ctl3D;
    property DragCursor;
    property DragMode;
    property Duplicates: Boolean read FDuplicates write SetDuplicates;
    property Enabled;
    property Flat: Boolean read FFlat write SetFlat default True;
    //property ExtendedSelect;
    property Font;
    property ImeMode;
    property ImeName;
    property IntegralHeight;
    property ItemHeight;
    property Items;
    //property MultiSelect;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property Sorted;
    //property Style;
    property TabOrder;
    property TabStop;
    property TabWidth;
    property Visible;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    //property OnDrawItem;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMeasureItem;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDrag;
    property OnCheckClick: TNotifyEvent read FOnCheckClick write FOnCheckClick;
    property OnParamClick: TParamClickEvent read FOnParamClick write FOnParamClick;
    property OnParamPrepare: TParamClickEvent read FOnParamPrepare write FOnParamPrepare;    
    property OnParamPopup: TParamPopupEvent read FOnParamPopup write FOnParamPopup;
    property OnParamList: TParamPopupEvent read FOnParamList write FOnParamList;
    property OnParamSelect: TParamSelectEvent read FOnParamSelect write FOnParamSelect;
    property OnParamChanged: TParamChangedEvent read FOnParamChanged write FOnParamChanged;
    property OnParamHint: TParamHintEvent read FOnParamHint write FOnParamHint;
    property OnParamEnter: TParamSelectEvent read FOnParamEnter write FOnParamEnter;
    property OnParamExit: TParamSelectEvent read FOnParamExit write FOnParamExit;
  end;

implementation

uses Consts,shellapi {$IFDEF DELPHI4_LVL},imglist {$ENDIF} ,commctrl;

{$i htmlengn.pas}


type
   TSaveObject = class(TObject)
   private
     FIndent: Integer;
     FObject: TObject;
   public
     constructor Create(AIndent:Integer;AObject:TObject);
   end;

  TParamCheckListDataWrapper = class
  private
    FData: LongInt;
    FState: TCheckBoxState;
    FDisabled: Boolean;
    FIndent : Integer;
    FComment : Boolean;
    procedure SetChecked(Check: Boolean);
    function GetChecked: Boolean;
  public
    class function GetDefaultState: TCheckBoxState;
    property Checked: Boolean read GetChecked write SetChecked;
    property State: TCheckBoxState read FState write FState;
    property Disabled: Boolean read FDisabled write FDisabled;
    property Indent: integer read FIndent write FIndent;
    property Comment: Boolean read FComment write FComment;
  end;

var
  FCheckWidth, FCheckHeight: Integer;


procedure GetCheckSize;
begin
  with TBitmap.Create do
    try
      Handle := LoadBitmap(0, PChar(32759));
      FCheckWidth := Width div 4;
      FCheckHeight := Height div 3;
    finally
      Free;
    end;
end;

function MakeSaveState(State: TCheckBoxState; Disabled: Boolean): TObject;
begin
  Result := TObject((Byte(State) shl 16) or Byte(Disabled));
end;

function GetSaveState(AObject: TObject): TCheckBoxState;
begin
  Result := TCheckBoxState(Integer(AObject) shr 16);
end;

function GetSaveDisabled(AObject: TObject): Boolean;
begin
  Result := Boolean(Integer(AObject) and $FF);
end;

{ $TSaveObject }

constructor TSaveObject.Create(aIndent:integer;aObject:TObject);
begin
 inherited Create;
 fIndent:=aIndent;
 fObject:=aObject;
end;

{ TParamCheckListDataWrapper }

procedure TParamCheckListDataWrapper.SetChecked(Check: Boolean);
begin
  if Check then FState := cbChecked else FState := cbUnchecked;
end;

function TParamCheckListDataWrapper.GetChecked: Boolean;
begin
  Result := (FState = cbChecked) and not FComment;
end;

class function TParamCheckListDataWrapper.GetDefaultState: TCheckBoxState;
begin
  Result := cbUnchecked;
end;

{ TParamCheckList }

constructor TParamCheckList.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FFlat := True;
  FDuplicates:=True;
  FDuplicateList:=TStringList.Create;
  {$IFNDEF DELPHI5_LVL}
  UseRightToLeftAlignment:=false;
  {$ENDIF}
  FParamColor := clGreen;
  Style := lbOwnerDrawFixed;
  FHoverColor := clNone;
  FHoverFontColor := clNone;
  FHover := False;
  FImages := nil;
  FParamPopup := TPopupMenu.Create(self);
  FParamList := TPopuplistbox.create(self);
  FParamDatePicker := TPopupDatePicker.Create(Self);
  FParamSpinEdit := TPopupSpinEdit.Create(Self);
  FParamEdit := TPopupEdit.Create(Self);

  FParamList.Cursor := crDefault;
  FParamList.Width := 100;
  FParamList.Height := 100;
  FParamList.Top := 0;
  FParamList.Left := 0;
  FParamList.Visible := False;

  FShadowColor := clGray;
  FShadowOffset := 1;
  FUpdateCount := 0;
end;

destructor TParamCheckList.Destroy;
begin
  FSaveStates.Free;
  FDuplicateList.Free;
  FParamPopup.Free;
  FParamList.Free;
  FParamDatePicker.Free;
  FParamSpinEdit.Free;
  FParamEdit.Free;
  inherited;
end;

procedure TParamCheckList.CreateWnd;
begin
  inherited CreateWnd;
  if FSaveStates <> nil then
  begin
    FSaveStates.Free;
    FSaveStates := nil;
  end;
  ResetItemHeight;
end;

procedure TParamCheckList.DestroyWnd;
var
  I: Integer;
begin
  if Items.Count > 0 then
  begin
    FSaveStates := TList.Create;
    for I := 0 to Items.Count - 1 do
      FSaveStates.Add(MakeSaveState(State[I], not ItemEnabled[I]));
  end;
  inherited DestroyWnd;
end;

procedure TParamCheckList.CreateParams(var Params: TCreateParams);
begin
  inherited;
  with Params do
  Style := Style or LBS_OWNERDRAWFIXED;
end;

function TParamCheckList.GetCheckWidth: Integer;
begin
  Result := FCheckWidth + 2;
end;

function TParamCheckList.GetItemIndent(const Index:integer): Integer;
begin
 result:=(fCheckWidth+2)*(Indent[Index]+1);
 if (Comment[Index]) then result:=0;
end;

procedure TParamCheckList.CMFontChanged(var Message: TMessage);
begin
  inherited;
  ResetItemHeight;
end;

procedure TParamCheckList.CMMouseLeave(Var Msg: TMessage);
begin
 inherited;
 if fHover and (fHoverHyperLink<>-1) then
  InvalidateRect(self.handle,@fCurrHoverRect,true);
 fHoverHyperLink:=-1;

 if (fOldParam<>'') and assigned(fOnParamExit) then fOnParamExit(self,-1,fOldParam,Parameter[fOldParam]);

 fOldParam:='';
end;

Procedure TParamCheckList.CMHintShow(Var Msg: TMessage);
{$IFDEF DELPHI2_LVL}
type
 PHintInfo = ^THintInfo;
{$ENDIF}
var
 CanShow: Boolean;
 hi: PHintInfo;
 hr:trect;
 anchor:string;
 res:integer;

Begin
 CanShow := True;
 hi := PHintInfo(Msg.LParam);

 if fParamHint then
  begin

   anchor:=IsParam(hi^.cursorPos.x,hi^.cursorpos.y,res,hr);
   if (anchor<>'') then
    begin
     hi^.HintPos := clienttoscreen(hi^.CursorPos);
     hi^.hintpos.y:=hi^.hintpos.y-10;
     hi^.hintpos.x:=hi^.hintpos.x+10;

     if assigned(fOnParamHint) then
      fOnParamHint(self,anchor,anchor,CanShow);

     {$IFNDEF DELPHI3_LVL}
     Hint := anchor;
     {$ELSE}
     hi^.HintStr := anchor;
     {$ENDIF}

    end;
  end;
 Msg.Result := Ord(Not CanShow);
end;


procedure TParamCheckList.ResetItemHeight;
begin
  if HandleAllocated and (Style = lbStandard) then
  begin
    Canvas.Font := Font;
    FStandardItemHeight := Canvas.TextHeight('Wg');
    Perform(LB_SETITEMHEIGHT, 0, FStandardItemHeight);
  end;
end;

procedure TParamCheckList.DrawItem(Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
var
  r,hr:TRect;
  ACheckWidth: Integer;
  Enable: Boolean;
  a,s,f:string;
  xs,ys:integer;
  ml,hl:integer;
  paramcolor:tcolor;
  pt:tpoint;
  fHyperlink:integer;

begin
  if (FUpdateCount>0) then exit;

  ACheckWidth := GetCheckWidth;
  if (Index < Items.Count) and (Index>=0) then
  begin
    R := Rect;
    if not UseRightToLeftAlignment then
    begin
      R.Right := Rect.Left;
      R.Left := R.Right - ACheckWidth;
    end
    else
    begin
      R.Left := Rect.Right;
      R.Right := R.Left + ACheckWidth;
    end;
    Enable := Self.Enabled and GetItemEnabled(Index);
    if not GetComment(Index) then DrawCheck(R, GetState(Index), Enable);
    if not Enable then Canvas.Font.Color := clGrayText;

  end;

 if (odSelected in State) and FShowSelection then
   begin
    canvas.brush.color:=clHighLight;
    canvas.pen.color:=clHighLight;
    canvas.font.color:=clHighLightText;
    paramcolor:=clHighLightText;
   end
 else
   begin
    canvas.brush.color:=self.Color;
    canvas.pen.color:=self.Color;
    canvas.font.color:=self.Font.Color;
    paramcolor:=fParamColor;
   end;


 if (Index=Items.Count-1) then
   begin
    r := GetClientRect;
    rect.bottom := r.bottom;
   end;

 canvas.Rectangle(rect.left,rect.top,rect.right,rect.bottom);

 getcursorpos(pt);
 pt:=self.screentoclient(pt);

 if (fHoverIdx<>index) then fHyperlink:=-1 else fHyperLink:=fHoverHyperLink;

 HTMLDrawEx(canvas,items[index],rect,fImages,pt.x,pt.y,-1,fHyperLink,fShadowOffset,false,false,false,false,(odSelected in State) and fShowSelection,fHover, true,1.0,ParamColor,
               fHoverColor,fHoverFontColor,fShadowColor,a,s,f,xs,ys,hl,ml,hr);

 if (odFocused in State) and fShowSelection then canvas.DrawFocusRect(rect);

end;

procedure TParamCheckList.CNDrawItem(var Message: TWMDrawItem);
var
  State: TOwnerDrawState;
begin

  with Message.DrawItemStruct^ do
   begin
    if integer(ItemID)<0 then exit;

    if not Comment[ItemID] then
     begin
      if not UseRightToLeftAlignment then
        rcItem.Left := rcItem.Left + GetItemIndent(ItemID)
      else
        rcItem.Right := rcItem.Right - GetItemIndent(ItemID);
     end;
    {$IFDEF DELPHI5_LVL}
    State := TOwnerDrawState(LongRec(itemState).Lo);
    {$ELSE}
    State := TOwnerDrawState(WordRec(LongRec(itemState).Lo).Lo);
    {$ENDIF}
    Canvas.Handle := hDC;
    Canvas.Font := Font;
    Canvas.Brush := Brush;
    if Integer(itemID) >= 0 then DrawItem(itemID, rcItem, State);
    Canvas.Handle := 0;
   end;
end;

procedure TParamCheckList.DrawCheck(R: TRect; AState: TCheckBoxState; AEnabled: Boolean);
var
  DrawState: Integer;
  DrawRect: TRect;
  OldBrushColor: TColor;
  OldBrushStyle: TBrushStyle;
  OldPenColor: TColor;
  Rgn, SaveRgn: HRgn;
begin
  SaveRgn := 0;
  DrawRect.Left := R.Left + (R.Right - R.Left - FCheckWidth) div 2;
  DrawRect.Top := R.Top + (R.Bottom - R.Top - FCheckWidth) div 2;
  DrawRect.Right := DrawRect.Left + FCheckWidth;
  DrawRect.Bottom := DrawRect.Top + FCheckHeight;
  case AState of
    cbChecked:
      DrawState := DFCS_BUTTONCHECK or DFCS_CHECKED;
    cbUnchecked:
      DrawState := DFCS_BUTTONCHECK;
    else // cbGrayed
      DrawState := DFCS_BUTTON3STATE or DFCS_CHECKED;
  end;
  if not AEnabled then
    DrawState := DrawState or DFCS_INACTIVE;
  with Canvas do
  begin
    if Flat then
    begin
      { Remember current clipping region }
      SaveRgn := CreateRectRgn(0,0,0,0);
      GetClipRgn(Handle, SaveRgn);
      { Clip 3d-style checkbox to prevent flicker }
      with DrawRect do
        Rgn := CreateRectRgn(Left + 2, Top + 2, Right - 2, Bottom - 2);
      SelectClipRgn(Handle, Rgn);
      DeleteObject(Rgn);
    end;
    DrawFrameControl(Handle, DrawRect, DFC_BUTTON, DrawState);
    if Flat then
    begin
      SelectClipRgn(Handle, SaveRgn);
      DeleteObject(SaveRgn);
      { Draw flat rectangle in-place of clipped 3d checkbox above }
      OldBrushStyle := Brush.Style;
      OldBrushColor := Brush.Color;
      OldPenColor := Pen.Color;
      Brush.Style := bsClear;
      Pen.Color := clBtnShadow;
      with DrawRect do
        Rectangle(Left + 1, Top + 1, Right - 1, Bottom - 1);
      Brush.Style := OldBrushStyle;
      Brush.Color := OldBrushColor;
      Pen.Color := OldPenColor;
    end;
  end;
end;

procedure TParamCheckList.SetChecked(Index: Integer; Checked: Boolean);
begin
  if Checked <> GetChecked(Index) then
  begin
    TParamCheckListDataWrapper(GetWrapper(Index)).SetChecked(Checked);
    InvalidateCheck(Index);
  end;
end;

procedure TParamCheckList.SetItemEnabled(Index: Integer; const Value: Boolean);
begin
  if Value <> GetItemEnabled(Index) then
  begin
    TParamCheckListDataWrapper(GetWrapper(Index)).Disabled := not Value;
    InvalidateCheck(Index);
  end;
end;

procedure TParamCheckList.SetState(Index: Integer; AState: TCheckBoxState);
begin
  if AState <> GetState(Index) then
  begin
    TParamCheckListDataWrapper(GetWrapper(Index)).State := AState;
    InvalidateCheck(Index);
  end;
end;

procedure TParamCheckList.SetIndent(Index: Integer; AIndent: integer);
begin
  if AIndent <> GetIndent(Index) then
  begin
    TParamCheckListDataWrapper(GetWrapper(Index)).Indent := AIndent;
    InvalidateItem(Index);
  end;
end;

procedure TParamCheckList.SetComment(Index: Integer; AComment: Boolean);
begin
  if AComment <> GetComment(Index) then
  begin
    TParamCheckListDataWrapper(GetWrapper(Index)).Comment := AComment;
    InvalidateItem(Index);
  end;
end;


procedure TParamCheckList.InvalidateCheck(Index: Integer);
var
  R: TRect;
begin
  R := ItemRect(Index);
  
  if not UseRightToLeftAlignment then
    R.Right := R.Left + GetItemIndent(Index)
  else
    R.Left := R.Right - GetItemIndent(Index);

  InvalidateRect(Handle, @R, not (csOpaque in ControlStyle));
  UpdateWindow(Handle);
end;

procedure TParamCheckList.InvalidateItem(Index: Integer);
var
  R: TRect;
begin
  R := ItemRect(Index);
  InvalidateRect(Handle, @R, not (csOpaque in ControlStyle));
//  UpdateWindow(Handle);
end;


function TParamCheckList.GetChecked(Index: Integer): Boolean;
begin
  if HaveWrapper(Index) then
    Result := TParamCheckListDataWrapper(GetWrapper(Index)).GetChecked
  else
    Result := False;
end;

function TParamCheckList.GetItemEnabled(Index: Integer): Boolean;
begin
  if HaveWrapper(Index) then
    Result := not TParamCheckListDataWrapper(GetWrapper(Index)).Disabled
  else
    Result := True;
end;

function TParamCheckList.GetState(Index: Integer): TCheckBoxState;
begin
  if HaveWrapper(Index) then
    Result := TParamCheckListDataWrapper(GetWrapper(Index)).State
  else
    Result := TParamCheckListDataWrapper.GetDefaultState;
end;

function TParamCheckList.GetIndent(Index: Integer): integer;
begin
  if HaveWrapper(Index) then
    Result := TParamCheckListDataWrapper(GetWrapper(Index)).Indent
  else
    Result := 0;
end;

function TParamCheckList.GetComment(Index: Integer): Boolean;
begin
  if HaveWrapper(Index) then
    Result := TParamCheckListDataWrapper(GetWrapper(Index)).Comment
  else
    Result := false;
end;

procedure TParamCheckList.KeyPress(var Key: Char);
begin
  inherited;
  if (Key = ' ') then ToggleClickCheck(ItemIndex);
end;

procedure TParamCheckList.HandlePopup(Sender:TObject);
var
 newvalue,oldvalue:string;

begin
 with (Sender as TMenuItem) do
  begin
   newvalue:=Caption;
   while (pos('&',newvalue)>0) do system.delete(newvalue,pos('&',newvalue),1);

   oldvalue:=Parameter[fOldParam];
      
   if assigned(fOnParamSelect) then
     fOnParamSelect(self,ItemIndex,fOldParam,newvalue);

   Parameter[fOldParam]:=newvalue;

   if (oldvalue<>newvalue) then
   if assigned(fOnParamChanged) then
    fOnParamChanged(self,ItemIndex,fOldParam,oldvalue,newvalue);

  end;
end;

procedure TParamCheckList.MouseDown(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
var
  Index,I: Integer;
  param,oldvalue,newvalue,v,c,p:string;
  hr:trect;
  pt:tpoint;
  doPopup,doList:boolean;
  newvalues:TStringList;
  newmenu:TMenuItem;

  function Max(a,b:Integer): Integer;
  begin
    if a > b then
      Result := a
    else
      Result := b;
  end;

begin
  inherited;

  if Button = mbLeft then
  begin
    Index := ItemAtPos(Point(X,Y),True);
    if (Index <> -1) and GetItemEnabled(Index) and not GetComment(Index) then
      if not UseRightToLeftAlignment then
      begin
        if (X - ItemRect(Index).Left < GetItemIndent(Index)) and
	   (X - ItemRect(Index).Left > (GetCheckWidth * (GetIndent(Index)))) then
          ToggleClickCheck(Index)
      end
      else
      begin
        Dec(X, ItemRect(Index).Right - GetCheckWidth);
        if (X > 0) and (X < GetCheckWidth) then
          ToggleClickCheck(Index)
      end;
  end;

 param:=IsParam(X,Y,Index,hr);

  if param <> '' then
  begin
    GetParamInfo(Index,Param,v,c,p);

    if Assigned(FOnParamClick) then
    begin
      GetHRefValue(self.Items[Index],param,oldvalue);
      newvalue:=oldvalue;
      FOnParamClick(self,Index,param,newvalue);
      if (newvalue<>oldvalue) then
      begin
        ItemParameter[Index,param] := NewValue;

        if Assigned(FOnParamChanged) then
          FOnParamChanged(self,Index,param,oldvalue,newvalue);

        GetCursorPos(pt);
        pt := Self.screentoclient(pt);
        IsParam(pt.x,pt.y,index,fCurrHoverRect);
      end;
    end;

    if Assigned(FOnParamPopup) or (c = 'MENU') then
    begin
      GetHRefValue(self.Items[Index],param,oldvalue);
      newvalue:=oldvalue;
      NewValues:=TStringList.Create;
      NewValues.Sorted:=fParamListSorted;
      doPopup:= c = 'MENU';
      if c = 'MENU' then
        NewValues.CommaText := InvHTMLPrep(p)
      else
        FOnParamPopup(self,Index,param,newvalues,dopopup);

      if doPopup then
      begin
        pt:=clienttoscreen(point(hr.left,hr.bottom));

        while FParamPopup.Items.Count>0 do fParamPopup.Items[0].Free;

        for i:=1 to NewValues.Count do
          begin
           newmenu:=TMenuItem.Create(Self);
           newmenu.Caption:=NewValues.Strings[i-1];
           newmenu.OnClick:=HandlePopup;
           fParamPopup.Items.Add(newmenu);
          end;

        fOldParam:=param;
        fParamPopup.Popup(pt.x + GetItemIndent(Index),pt.y+2);

      end;
      NewValues.Free;
    end;

    if Assigned(FOnParamList) or (c = 'LIST') then
    begin
      doList:=true;
      GetHRefValue(self.Items[Index],param,oldvalue);
      newvalue:=oldvalue;
      NewValues:=TStringList.Create;
      NewValues.Sorted:=fParamListSorted;
      dolist:= c = 'LIST';
      if c = 'LIST' then
        NewValues.CommaText := InvHTMLPrep(p)
      else
        FOnParamList(self,Index,param,newvalues,dolist);

      if doList then
      begin
        pt:=clienttoscreen(point(hr.left,hr.bottom));
        fParamList.top:=pt.y;
        fParamList.left:=pt.x + GetItemIndent(Index);
        fParamlist.ownerlist:=self;
        fParamlist.Param := param;
        fParamList.parent:=self;
        fParamlist.visible:=true;
        fParamList.Items.Assign(NewValues);
        fParamList.Ctl3D:= False;
        fParamList.SizeDropDownWidth;
        fParamList.ItemIndex:=fParamList.Items.IndexOf(oldvalue);
        fParamList.SetFocus;
      end;
      NewValues.Free;
    end;

    if c = 'DATE' then
    begin
      pt := Clienttoscreen(Point(hr.left,hr.top));

      FParamDatePicker.Top := pt.Y - 2;
      FParamDatePicker.Left := pt.X + GetItemIndent(Index);
      FParamDatePicker.Width := Max(64,hr.Right - hr.Left);

      FParamDatePicker.Cancelled := False;
      FParamDatePicker.Parent := Self;
      FParamDatePicker.OwnerList := Self;
      FParamDatePicker.Param := Param;
      FParamDatePicker.Visible := True;

      PrepareParam(Param,v);

      FParamDatePicker.Date := StrToDate(v);
      FParamDatePicker.SetFocus;
    end;

    if c = 'SPIN' then
    begin
      pt := Clienttoscreen(Point(hr.left,hr.top));
      FParamSpinEdit.Top := pt.Y - 2;
      FParamSpinEdit.Left := pt.X + GetItemIndent(Index);
      FParamSpinEdit.Width := Max(16,hr.Right - hr.Left) + 24;

      FParamSpinEdit.Cancelled := False;
      FParamSpinEdit.Parent := Self;
      FParamSpinEdit.OwnerList := Self;
      FParamSpinEdit.Param := Param;
      FParamSpinEdit.Visible := True;

      PrepareParam(Param,v);

      FParamSpinEdit.Value := StrToInt(v);
      FParamSpinEdit.SetFocus;
    end;

    if c = 'EDIT' then
    begin
      pt := Clienttoscreen(Point(hr.left,hr.top));

      FParamEdit.Top := pt.Y - 2;
      FParamEdit.Left := pt.X + GetItemIndent(Index);
      FParamEdit.Width := Max(16,hr.Right - hr.Left) + 16;

      FParamEdit.Cancelled := False;
      FParamEdit.Parent := Self;
      FParamEdit.OwnerList := Self;
      FParamEdit.Param := Param;
      FParamEdit.Visible := True;

      PrepareParam(Param,v);

      FParamEdit.Text := v;
      FParamEdit.SetFocus;
    end;
  end;
end;

procedure TParamCheckList.MouseMove(Shift: TShiftState; X, Y: Integer);
var
 param:string;
 idx:integer;
 hr:trect;
begin
 inherited;

 param:=IsParam(x,y,idx,hr);

 if (param='') and (fHoverIdx<>-1) and (fHover) then
  begin
   InvalidateRect(self.handle,@fCurrHoverRect,true);
   fHoverIdx:=-1;
  end;

 if (param<>'') then
    begin
     if (fHover) then
      begin
       if (idx<>fHoverIdx) or not equalrect(hr,fCurrHoverRect) then
            InvalidateRect(self.handle,@fCurrHoverRect,true);
      end;

     fHoverIdx:=idx;

     if (fOldParam<>param) then
       begin
         if assigned(fOnParamEnter) then fOnParamEnter(self,idx,Param,Parameter[Param]);
         Application.Cancelhint;
       end;
       
     if (self.Cursor<>crHandPoint) then
       begin
        fOldCursor:=self.Cursor;
        self.Cursor:=crHandPoint;
        if fHover then InvalidateRect(self.handle,@hr,true);
        fCurrHoverRect:=hr;
       end;
     fOldParam:=param;
    end
   else
    if (self.Cursor=crHandPoint) and (fOldParam<>'') then
     begin
      if assigned(fOnParamExit) then fOnParamExit(self,idx,fOldParam,Parameter[fOldParam]);
      Application.CancelHint;
      self.Cursor:=fOldCursor;
      fOldParam:='';
      if fHover then InvalidateRect(self.handle,@fCurrHoverRect,true);
     end;

end;

procedure TParamCheckList.ToggleClickCheck;
var
  State: TCheckBoxState;
begin
  if (Index >= 0) and (Index < Items.Count) and GetItemEnabled(Index) then
  begin

    State := Self.State[Index];
    case State of
      cbUnchecked:
        if AllowGrayed then State := cbGrayed else State := cbChecked;
      cbChecked: State := cbUnchecked;
      cbGrayed: State := cbChecked;
    end;
    Self.State[Index] := State;

    ClickCheck;
  end;
end;

procedure TParamCheckList.ClickCheck;
begin
  if Assigned(FOnCheckClick) then FOnCheckClick(Self);
end;

function TParamCheckList.GetItemData(Index: Integer): LongInt;
begin
  Result := 0;
  if HaveWrapper(Index) then
    Result := TParamCheckListDataWrapper(GetWrapper(Index)).FData;
end;

function TParamCheckList.GetWrapper(Index: Integer): TObject;
begin
  Result := ExtractWrapper(Index);
  if Result = nil then
    Result := CreateWrapper(Index);
end;

function TParamCheckList.ExtractWrapper(Index: Integer): TObject;
begin
  result:=nil;
  if (Index<0) then exit;

  Result := TParamCheckListDataWrapper(inherited GetItemData(Index));
{$IFNDEF DELPHI6_LVL}
  if LB_ERR = Integer(Result) then
{$IFDEF DELPHI5_LVL}
    raise EListError.CreateResFmt(@SListIndexError, [Index]);
{$ELSE}
    raise EListError.CreateFmt(SListIndexError, [Index]);
{$ENDIF}
{$ENDIF}
  if (Result <> nil) and (not (Result is TParamCheckListDataWrapper)) then
    Result := nil;
end;

{$IFDEF DELPHI5_LVL}
function TParamCheckList.InternalGetItemData(Index: Integer): LongInt;
begin
  Result := inherited GetItemData(Index);
end;

procedure TParamCheckList.InternalSetItemData(Index: Integer; AData: LongInt);
begin
  inherited SetItemData(Index, AData);
end;
{$ENDIF}

function TParamCheckList.CreateWrapper(Index: Integer): TObject;
begin
  Result := TParamCheckListDataWrapper.Create;
  inherited SetItemData(Index, LongInt(Result));
end;

function TParamCheckList.HaveWrapper(Index: Integer): Boolean;
begin
  Result := ExtractWrapper(Index) <> nil;
end;

procedure TParamCheckList.SetItemData(Index: Integer; AData: LongInt);
var
  Wrapper: TParamCheckListDataWrapper;
  SaveState: TObject;
begin
  Wrapper := TParamCheckListDataWrapper(GetWrapper(Index));
  Wrapper.FData := AData;
  if FSaveStates <> nil then
    if FSaveStates.Count > 0 then
    begin
      SaveState := FSaveStates[0];
      Wrapper.FState := GetSaveState(SaveState);
      Wrapper.FDisabled := GetSaveDisabled(SaveState);
      FSaveStates.Delete(0);
    end;
end;

procedure TParamCheckList.ResetContent;
var
  I: Integer;
begin
  for I := 0 to Items.Count - 1 do
    if HaveWrapper(I) then
      GetWrapper(I).Free;
  inherited;
end;

procedure TParamCheckList.DeleteString(Index: Integer);
begin
  if HaveWrapper(Index) then
    GetWrapper(Index).Free;
  inherited;
end;

procedure TParamCheckList.SetFlat(Value: Boolean);
begin
  if Value <> FFlat then
  begin
    FFlat := Value;
    Invalidate;
  end;
end;

procedure TParamCheckList.SetDuplicates(Value: Boolean);
var
 i,j:integer;
 fTempList:TStringList;

begin
  if Value <> FDuplicates then
  begin
    FTempList:=TStringList.Create;
    FTempList.Sorted:=true;

    FDuplicates := Value;
    if not FDuplicates then
      begin
       i:=1;
       fDuplicateList.Clear;
       while (i<=self.Items.Count) do
        begin
         if fTempList.IndexOf(self.Items[i-1])>=0 then
          begin
             j:=FDuplicateList.Add(self.Items[i-1]);
             FDuplicateList.Objects[j]:=TSaveObject.Create(GetIndent(i-1),self.Items.Objects[i-1]);
             self.Items.Delete(i-1);
          end
         else
          begin
           fTempList.Add(self.Items[i-1]);
           inc(i);
          end;
        end;


       while (i<self.Items.Count) do
        begin
         if (AnsiCompareText(self.Items[i-1],self.Items[i])=0) then
           begin
             j:=FDuplicateList.Add(self.Items[i]);
             FDuplicateList.Objects[j]:=TSaveObject.Create(GetIndent(i),self.Items.Objects[i]);
             self.Items.Delete(i);
           end
         else inc(i);

        end;

      end
    else
      begin
       for i:=1 to FDuplicateList.Count do
        begin
         j:=self.Items.Add(FDuplicateList.Strings[i-1]);
         self.Indent[j]:=TSaveObject(FDuplicateList.Objects[i-1]).fIndent;
         self.Items.Objects[j]:=TSaveObject(FDuplicateList.Objects[i-1]).fObject;
        end;
      end;
  end;
end;

function TParamCheckList.GetSelectCount: Integer;
var
 i:integer;
begin
 result:=0;
 for i:=1 to Items.Count do
  begin
   if Checked[i-1] then result:=result+1;
  end;
end;

procedure TParamCheckList.QuickSortItems(left,right:integer);
var
 i,j:integer;
 s:string;
 o:TObject;
 w1,w2:integer;
begin
 i:=left;
 j:=right;

 s:=self.Items[(left+right) shr 1];

 repeat
   while (s>self.Items[i]) do inc(i);
   while (s<self.Items[j]) do dec(j);

   if (i<=j) then
    begin
      if (i<>j) then
        begin
         s:=self.Items[i];
         o:=self.Items.Objects[i];
         w1:=inherited GetItemData(i);
         w2:=inherited GetItemData(j);
         self.Items[i]:=self.Items[j];
         self.Items.Objects[i]:=self.Items.Objects[j];
         self.Items[j]:=s;
         self.Items.Objects[j]:=o;
         inherited SetItemData(i,w2);
         inherited SetItemData(j,w1);
        end;
      inc(i);
      dec(j);
    end;
 until (i>j);

 if (left<j) then QuicksortItems(left,j);
 if (i<right) then QuickSortItems(i,right);
end;

procedure TParamCheckList.SortComment(Index:integer);
var
 j:integer;
begin
 if (self.Items.Count=0) then exit;
 j:=Index+1;
 while (j<=self.Items.Count) and not Comment[j] do inc(j);

 QuickSortItems(Index+1,j-1);
end;

procedure TParamCheckList.SortAllComments;
var
 i,j:integer;
begin
 if self.Items.Count=0 then exit;

 i:=0;
 j:=0;

 repeat
  if self.Comment[j] then
   begin
    if (j>i) then QuickSortItems(i,j-1);
    i:=j+1;
   end;
  inc(j);
 until (j=self.Items.Count);
 QuickSortItems(i,j-1);
end;


function TParamCheckList.GetSelected(Index: Integer): string;
var
 i,j:integer;
begin
 result:='';
 j:=0;
 for i:=1 to Items.Count do
  if (Checked[i-1]) then
    begin
     if (j=Index) then
       begin
        result:=Items[i-1];
        break;
       end
     else j:=j+1;
    end;
end;


procedure TParamCheckList.WMDestroy(var Msg: TWMDestroy);
var
  i: Integer;
begin
  for i := 0 to Items.Count -1 do
    ExtractWrapper(i).Free;
  inherited;
end;

function TParamCheckList.IsParam(x,y:integer;var idx:integer;var hoverrect:trect):string;
var
 res:integer;
 r,rect:trect;
 anchor,stripped,f:string;
 xsize,ysize,hl:integer;

begin
  result:='';
  idx:=-1;
  res:=loword(sendmessage(self.handle,lb_itemfrompoint,0,makelparam(X,Y)));
  if (res>=0) and (res<self.Items.Count) then
  begin
    idx:=res;
    sendmessage(self.handle,lb_getitemrect,res,longint(@rect));
    r:=rect;
    r.Left:=r.Left+GetItemIndent(res);

    if HTMLDrawEx(canvas,self.items[res],r,fImages,X,Y,-1,-1,0,true,false,false,true,true,false,true,1.0,clBlue,
               clNone,clNone,clGray,anchor,stripped,f,xsize,ysize,hl,fHoverHyperlink,hoverrect) then
     Result := Anchor;
  end;
end;

procedure TParamCheckList.SetParamColor(const Value: TColor);
begin
  fParamColor := Value;
  invalidate;
end;

function TParamCheckList.GetItemParam(idx: integer; href: string): string;
var
  h: string;
begin
  Result := '';

  if (idx<0) or (idx>Items.Count-1) then
    raise Exception.Create('Invalid item index');

  if GetHRefvalue(Items[idx],href,h) then
    Result := InvHTMLPrep(h);
end;


procedure TParamCheckList.SetItemParam(idx: integer; href: string;
  const Value: string);
var
  h,v,s: string;

begin
  if (idx<0) or (idx>Items.Count-1) then
    raise Exception.Create('Invalid item index');

  FHoverIdx:=-1;
  v:=value;

  v := HTMLPrep(Value);

  s := Items[idx];
  if GetHRefValue(s,href,h) then
  begin
    SetHRefValue(s,href,v);
    Items[idx]:=s;
  end;
end;


function TParamCheckList.GetParam(href: string): string;
var
 i:integer;
 h:string;
begin
 for i:=1 to Items.Count do
  begin
   if gethrefvalue(Items[i-1],href,h) then
     begin
      result:=h;
      break;
     end;
  end;
end;

procedure TParamCheckList.SetParam(href: string; const Value: string);
var
 i:integer;
 h,s:string;
 chk:boolean;
 ind:integer;
 com:boolean;

begin
 for i:=1 to Items.Count do
  begin
   s:=Items[i-1];
   if gethrefvalue(s,href,h) then
     begin
      chk:=Checked[i-1];
      com:=Comment[i-1];
      ind:=Indent[i-1];
      sethrefvalue(s,href,value);
      fHoverHyperLink:=-1;
      fUpdateIndex:=i-1;
      BeginUpdate;
      Items[i-1]:=s;
      Checked[i-1]:=chk;
      Comment[i-1]:=com;
      Indent[i-1]:=ind;
      break;
     end;
  end;
end;



procedure TParamCheckList.SetHover(const Value: boolean);
begin
  fHover := Value;
  if not fHover then
   begin
    fHoverColor:=clNone;
    fHoverFontColor:=clNone;
   end;
end;

procedure TParamCheckList.SetImageList(const Value: TImageList);
begin
  fImages:=Value;
  Invalidate;
end;

procedure TParamCheckList.Notification(AComponent: TComponent;
  AOperation: TOperation);
begin
  if (aOperation=opRemove) and (aComponent=fImages) then fImages:=nil;
  inherited;
end;

procedure TParamCheckList.SetShadowColor(const Value: TColor);
begin
  fShadowColor:=Value;
  Invalidate;
end;

procedure TParamCheckList.SetShadowOffset(const Value: integer);
begin
  fShadowOffset:=Value;
  Invalidate;
end;

procedure TParamCheckList.BeginUpdate;
begin
 inc(fUpdateCount);
end;

procedure TParamCheckList.EndUpdate;
begin
 if fUpdateCount>0 then dec(fUpdateCount);
end;

procedure TParamCheckList.WMEraseBkGnd(var Message: TMessage);
begin
 if (fUpdateCount)>0 then
  Message.Result := 0 else inherited;

 fUpdateCount := 0;
end;

procedure TParamCheckList.WMKillFocus(var Message: TMessage);
begin
  inherited;
  if self.Cursor <> FOldCursor then
    self.Cursor := FOldCursor;
end;


procedure TParamCheckList.SetParamHint(const Value: Boolean);
begin
  fParamHint := Value;
  if fParamHint and not ShowHint then ShowHint := true;
end;

procedure TParamCheckList.UpdateParam(href, value: string);
var
  OldValue: string;
begin
  if Itemindex >= 0 then
  begin
    Value := HTMLPrep(Value);
    OldValue := ItemParameter[ItemIndex,href];

    if Assigned(FOnParamSelect) then
      FOnParamSelect(Self,ItemIndex,href,Value);

    ItemParameter[ItemIndex,href] := Value;

    if OldValue <> Value then
     if Assigned(FOnParamChanged) then
       FOnParamChanged(Self,ItemIndex,href,OldValue,Value);
  end;
end;

function TParamCheckList.GetParamInfo(Index: Integer; HRef: string;
  var AValue, AClass, AProp: string): Boolean;
begin
  Result := ExtractParamInfo(Items[Index],HRef,AClass,AValue,AProp);
end;

procedure TParamCheckList.PrepareParam(Param: string; var Value: string);
begin
  if Assigned(FOnParamPrepare) then
    FOnParamPrepare(Self,ItemIndex,Param,Value);
end;

function TParamCheckList.HTMLPrep(s: string): string;
begin
{$IFDEF DELPHI4_LVL}
  s := StringReplace(s,'&','&amp;',[rfReplaceAll]);
  s := StringReplace(s,'<','&lt;',[rfReplaceAll]);
  s := StringReplace(s,'>','&gt;',[rfReplaceAll]);
  s := StringReplace(s,'"','&quot;',[rfReplaceAll]);
{$ELSE}
  s := StringReplace(s,'&','&amp;');
  s := StringReplace(s,'<','&lt;');
  s := StringReplace(s,'>','&gt;');
  s := StringReplace(s,'"','&quot;');
{$ENDIF}
  Result := s;
end;

function TParamCheckList.InvHTMLPrep(s: string): string;
begin
{$IFDEF DELPHI4_LVL}
  s := StringReplace(s,'&lt;','<',[rfReplaceAll]);
  s := StringReplace(s,'&gt;','>',[rfReplaceAll]);
  s := StringReplace(s,'&amp;','&',[rfReplaceAll]);
  s := StringReplace(s,'&quot;','"',[rfReplaceAll]);
{$ELSE}
  s := StringReplace(s,'&lt;','<');
  s := StringReplace(s,'&gt;','>');
  s := StringReplace(s,'&amp;','&');
  s := StringReplace(s,'&quot;','"');
{$ENDIF}

  Result := s;
end;




{ TPopupListBox ; Helper listbox object}
procedure TPopupListBox.SizeDropDownWidth;
var
 i:integer;
 tw,nw:integer;
 lpmin,lpmax:integer;
 scrlw:integer;
begin
 GetScrollRange(self.Handle,SB_VERT,lpmin,lpmax);
 if (lpmin<>0) or (lpmax<>0) then
  begin
   scrlw:=GetSystemMetrics(SM_CXVSCROLL);
  end
 else scrlw:=0;
 tw:=0;
 if self.Items.Count>0 then tw:=0;
 for i:=1 to self.Items.Count do
  begin
   nw:=10+canvas.textwidth(self.items[i-1]); {account for border size?}
   if (nw>tw) then tw:=nw;
  end;
 self.width:=tw+scrlw;
end;

procedure TPopupListBox.CreateParams(var Params: TCreateParams);
begin
 inherited CreateParams(Params);
 with Params do
   Style:=Style AND NOT (WS_CHILD) OR (WS_POPUP);
end;

procedure TPopupListBox.WMKeyDown(var Msg: TWMKeydown);
begin
  inherited;

  case msg.charcode of
  VK_RETURN:
    begin
      FOwnerList.UpdateParam(Param,Items[self.ItemIndex]);
      Parent.SetFocus;
      Visible:= False;
      Parent:=nil;
    end;
  VK_ESCAPE:
    begin
      Parent.SetFocus;
      Visible:= False;
    end;
  end;
end;

procedure TPopupListBox.WMLButtonDown(var Message: TWMLButtonDown);
begin
  inherited;
end;

procedure TPopupListBox.WMLButtonUp(var Message: TWMLButtonDown);
begin
  inherited;
  FOwnerList.UpdateParam(Param,Items[ItemIndex]);
  Parent.setfocus;
  Visible := False;
  Parent :=nil;
end;

procedure TPopupListBox.WMActivate(var Message: TWMActivate);
begin
  if Message.Active = 0 then Hide;
end;

{ TPopupDatePicker }

{$IFNDEF DELPHI4_LVL}
procedure TPopupDatePicker.CNNotify(var Message: TWMNotify);
begin
  inherited;
  with Message, NMHdr^ do
  begin
    Result := 0;
    case code of
      DTN_CLOSEUP:
        begin
          FDroppedDown := False;
        end;
      DTN_DROPDOWN:
        begin
          FDroppedDown := True;
        end;
    end;
  end;
end;
{$ENDIF}

procedure TPopupDatePicker.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
    Style := Style AND NOT WS_CHILD OR WS_POPUP;
end;

procedure TPopupDatePicker.DoExit;
begin
  inherited;
  if not FCancelled then
    OwnerList.UpdateParam(Param,DateToStr(Date));
  Hide;
end;

procedure TPopupDatePicker.WMActivate(var Message: TWMActivate);
begin
  inherited;
  if not DroppedDown then
    if Message.Active = 0 then
    begin
      if not FCancelled then
        OwnerList.UpdateParam(Param,DateToStr(Date));
      Hide;
    end;
end;

procedure TPopupDatePicker.WMKeyDown(var Msg: TWMKeydown);
begin
  inherited;
  case Msg.charcode of
  VK_RETURN:
    begin
      OwnerList.UpdateParam(Param,DateToStr(Date));
      Parent.SetFocus;
      Visible := False;
    end;
  VK_ESCAPE:
    begin
      FCancelled := True;
      Parent.SetFocus;
      Visible := False;
    end;
  end;

end;

{ TPopupSpinEdit }

procedure TPopupSpinEdit.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
    Style := Style AND NOT WS_CHILD OR WS_POPUP;
end;

procedure TPopupSpinEdit.WMActivate(var Message: TWMActivate);
begin
  inherited;
  if Message.Active = 0 then
  begin
    if not FCancelled then
      OwnerList.UpdateParam(Param,IntToStr(Value));
    Hide;
  end;
end;

procedure TPopupSpinEdit.WMKeyDown(var Msg: TWMKeydown);
begin
  inherited;
  case Msg.charcode of
  VK_RETURN:
    begin
      OwnerList.UpdateParam(Param,IntToStr(Value));
      Parent.SetFocus;
      Visible := False;
    end;
  VK_ESCAPE:
    begin
      FCancelled := True;
      Parent.SetFocus;
      Visible := False;
    end;
  end;

end;


{ TPopupEdit }

procedure TPopupEdit.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
    Style := Style AND NOT WS_CHILD OR WS_POPUP;
end;

procedure TPopupEdit.WMActivate(var Message: TWMActivate);
begin
  inherited;
  if Message.Active = 0 then
  begin
    if not FCancelled then
      OwnerList.UpdateParam(Param,Text);
    Hide;
  end;
end;

procedure TPopupEdit.WMKeyDown(var Msg: TWMKeydown);
begin
  inherited;
  case Msg.charcode of
  VK_RETURN:
    begin
      OwnerList.UpdateParam(Param,Text);
      Parent.SetFocus;
      Visible := False;
    end;
  VK_ESCAPE:
    begin
      FCancelled := True;
      Parent.SetFocus;
      Visible := False;
    end;
  end;
end;


initialization
  GetCheckSize;

end.
