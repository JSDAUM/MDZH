{********************************************************************
TCheckListEdit component
for Delphi 3.0,4.0 & C++Builder 3.0, 4.0,5.0
version 1.2, October 2000

written by TMS Software
           copyright © 1999-2000
           Email : info@tmssoftware.com
           Web : http://www.tmssoftware.com

The source code is given as is. The author is not responsible
for any possible damage done due to the use of this code.
The component can be freely used in any application. The source
code remains property of the author and may not be distributed
freely as such.
********************************************************************}

unit clisted;

{$I TMSDEFS.INC}

interface


uses Windows, Classes, StdCtrls, ExtCtrls, Controls, Messages, SysUtils,
  Forms, Graphics, Buttons, checklst;

const
 CL_CHECKED = $8;

type
  TCheckListEdit = class;

{TDropForm}
  TDropForm = class(TForm)
  private
   procedure WMClose(var Msg:TMessage); message WM_CLOSE;
  end;

{TIntList}
  TIntList = class(TList)
  private
   procedure SetInteger(Index: Integer; Value: Integer);
   function GetInteger(Index: Integer):Integer;
  public
   constructor Create;
   property Items[index: Integer]: Integer read GetInteger write SetInteger; default;
   procedure Add(Value: integer);
   procedure Delete(Index: Integer);
  published
  end;

{TInplaceCheckListBox}

  TInplaceCheckListBox = class(TCheckListBox)
  private
    fParentEdit:TCheckListEdit;
    procedure WMKeyDown(var Msg:TWMKeydown); message wm_keydown;
  protected
    procedure DoExit; override;
  property
    ParentEdit:TCheckListEdit read fParentEdit write fParentEdit;
  end;

{ TDropCheckListButton }
  TDropCheckListButton = class(TSpeedButton)
  private
    FFocusControl: TWinControl;
    FMouseClick: TNotifyEvent;
    procedure WMLButtonDown(var Msg:TMessage); message WM_LBUTTONDOWN;
  protected
    procedure Paint; override;
  public
    procedure Click; override;
    constructor Create(AOwner: TComponent); override;
  published
    property FocusControl: TWinControl read FFocusControl write FFocusControl;
    property MouseClick:TNotifyEvent read FMouseClick write FMouseClick;
  end;

  TCheckListItemToText = procedure(sender:TObject;var aText:string) of object;
  TTextToCheckListItem = procedure(sender:TObject;var aItem:string) of object;

  TDropDirection = (ddDown,ddUp);


{ TCheckListEdit }

  TCheckListEdit = class(TCustomEdit)
  private
    FButton: TDropCheckListButton;
    FEditorEnabled: Boolean;
    FOnClickBtn:TNotifyEvent;
    FCheckListBox:TInplaceCheckListBox;
    FItems:TStringList;
    FDropHeight:integer;
    FDropWidth:integer;
    FDropColumns:integer;
    FDropColor:TColor;
    FDropFont:TFont;
    FDropFlat:boolean;
    FDropSorted:boolean;
    fDropDirection:TDropDirection;
    CheckFlag:boolean;
    FChkForm:TForm;
    FIntList:TIntList;
    FChkClosed:boolean;
    FCloseClick:boolean;
    fTextDelimiter: string;
    fTextStartChar: string;
    fTextEndChar: string;
    FOnCheckListItemToText: TCheckListItemToText;
    FOnTextToCheckListItem: TTextToCheckListItem;
    function GetMinHeight: Integer;
    procedure SetEditRect;
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure CMEnter(var Message: TCMGotFocus); message CM_ENTER;
    procedure CMExit(var Message: TCMExit);   message CM_EXIT;
    procedure WMPaste(var Message: TWMPaste);   message WM_PASTE;
    procedure WMCut(var Message: TWMCut);   message WM_CUT;
    procedure WMKeyDown(var Msg:TWMKeydown); message wm_keydown;
    procedure ItemChange(Sender: TObject);
    procedure CheckClick(Sender: TObject);
    procedure CheckClickCheck(Sender: TObject);
    procedure SetItems(value:tstringlist);
    function CheckToString:string;
    procedure StringToCheck(s:string);
    procedure ShowCheckList(focus:boolean);
    procedure HideCheckList;
    function GetCheck(i:integer):boolean;
    procedure SetCheck(i:integer;value:boolean);
    function GetState(i:integer):TCheckBoxState;
    procedure SetState(i:integer;value:TCheckBoxState);
    procedure FormDeactivate(Sender: TObject);
    procedure SetTextDelimiter(const Value: string);
    procedure SetTextEndChar(const Value: string);
    procedure SetTextStartChar(const Value: string);
    procedure MouseClick(Sender: TObject);
    procedure DownClick(Sender: TObject);
    procedure SetDropFont(const Value: TFont);
    function GetText: string;
    procedure SetText(const Value: string);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWnd; override;
    procedure DestroyWnd; override;
    function GetParentForm(Control: TControl): TCustomForm; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Loaded; override;
    property Button: TDropCheckListButton read FButton;
    property Checked[i:integer]:boolean read GetCheck write SetCheck;
    property State[i:integer]:TCheckBoxState read GetState write SetState;
    property Text:string read GetText write SetText;
  published
    {$IFDEF DELPHI4_LVL}
    property Anchors;
    property Constraints;
    property DragKind;
    {$ENDIF}
    property AutoSelect;
    property AutoSize;
    property BorderStyle;
    property Color;
    property Ctl3D;
    property DragCursor;
    property DragMode;
    property EditorEnabled: Boolean read FEditorEnabled write FEditorEnabled default True;
    property Enabled;
    property Font;
    property MaxLength;
    property ParentColor;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
    property Height;
    property Width;
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
    {$IFDEF DELPHI4_LVL}
    property OnEndDock;
    property OnStartDock;
    {$ENDIF}

    property Items:TStringList read fItems write SetItems;
    property DropWidth:integer read fDropWidth write fDropWidth;
    property DropHeight:integer read fDropHeight write fDropHeight;
    property DropColumns:integer read fDropColumns write fDropColumns;
    property DropColor:tColor read fDropColor write fDropColor;
    {$IFDEF DELPHI4_LVL}
    property DropFlat:boolean read fDropFlat write fDropFlat;
    {$ENDIF}
    property DropFont:TFont read FDropFont write SetDropFont;
    property DropDirection:TDropDirection read fDropDirection write fDropDirection;
    property DropSorted:boolean read fDropSorted write fDropSorted;

    property TextDelimiter:string read fTextDelimiter write SetTextDelimiter nodefault;
    property TextEndChar:string read fTextEndChar write SetTextEndChar nodefault;
    property TextStartChar:string read fTextStartChar write SetTextStartChar nodefault;

    property OnClickBtn: TNotifyEvent read FOnClickBtn write FOnClickBtn;
    property OnTextToCheckListItem:TTextToCheckListItem read FOnTextToCheckListItem write FOnTextToCheckListItem;
    property OnCheckListItemToText:TCheckListItemToText read FOnCheckListItemToText write FOnCheckListItemToText;
  end;

procedure Register;

implementation
{$r clisted.res}

procedure Register;
begin
 RegisterComponents('TMS', [TCheckListEdit]);
end;

{ TDropCheckListButton }
constructor TDropCheckListButton.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Cursor := crArrow;
  Glyph.Handle := LoadBitmap(HInstance, 'ARROW_DOWN');
end;

procedure TDropCheckListButton.Paint;
begin
  inherited Paint;
end;

procedure TDropCheckListButton.Click;
begin
  if (FFocusControl <> nil) and FFocusControl.CanFocus and (GetFocus <> FFocusControl.Handle) then
  FFocusControl.SetFocus;
  inherited Click;
end;

procedure TDropCheckListButton.WMLButtonDown(var Msg: TMessage);
begin
 if assigned(FMouseClick) then FMouseClick(self);
 inherited;
end;

{ TCheckListEdit }
constructor TCheckListEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FButton := TDropCheckListButton.Create (Self);
  FButton.Width := 15;
  FButton.Height := 17;
  FButton.Visible := True;
  FButton.Parent := Self;
  FButton.FocusControl := Self;
  FButton.MouseClick := MouseClick;
  FButton.OnClick := DownClick;
  Text := '[]';
  ControlStyle := ControlStyle - [csSetCaption];
  FEditorEnabled := True;
  FCheckListBox:=nil;
  fItems:=TStringList.Create;
  fItems.OnChange:=ItemChange;
  FDropHeight:=100;
  FDropWidth:=self.width;
  FDropSorted:=false;
  FDropFlat:=true;
  FDropColor:=clWindow;
  FDropFont:=TFont.Create;
  FIntList:=TIntList.Create;
  FChkClosed:=true;
  FTextStartChar:='[';
  FTextEndChar:=']';
  FTextDelimiter:=',';
end;

destructor TCheckListEdit.Destroy;
begin
  FButton.Free;
  FItems.Free;
  FIntList.Free;
  FDropFont.Free;
  inherited Destroy;
end;

function TCheckListEdit.GetParentForm(Control: TControl): TCustomForm;
begin
  Result := nil;
  if Assigned(Control) then
    if Control is TCustomForm then
    begin
      Result := Control as TCustomForm;
      Exit;
    end else
    begin
      if Assigned(Control.Parent) then
        Result := GetParentForm(Control.Parent);
    end;
end;

procedure TCheckListEdit.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.Style := Params.Style or ES_MULTILINE or WS_CLIPCHILDREN;
end;

procedure TCheckListEdit.DestroyWnd;
begin
 inherited;
end;

procedure TCheckListEdit.CreateWnd;
begin
 inherited CreateWnd;
 SetEditRect;
 self.ReadOnly:=true;
end;

procedure TCheckListEdit.ShowCheckList(focus:boolean);
var
  P: TPoint;
  fOldDropDirection: TDropDirection;
  i:integer;

begin
  fOldDropDirection := fDropDirection;

  P := Point(0, 0);
  P := Self.ClientToScreen(P);

  if P.y + fDropHeight >= GetSystemMetrics(SM_CYSCREEN) then
    fDropDirection := ddUp;

  if P.y - fDropHeight <= 0 then
    fDropDirection := ddDown;

  {$IFDEF DELPHI4_LVL}
  FChkForm:=TDropForm.CreateNew(self,0);
  {$ELSE}
  FChkForm:=TDropForm.CreateNew(self);  
  {$ENDIF}
  FChkForm.BorderStyle:=bsNone;
  FChkForm.Visible:=false;
  FChkForm.Width:=fDropWidth;
  FChkForm.Height:=fDropHeight;
  FChkForm.OnDeactivate := FormDeactivate;

  FCheckListBox:=TInplaceCheckListBox.Create(FChkForm);
  FCheckListBox.Parent:=FChkForm;
  FCheckListBox.Left:=0;
  FCheckListBox.Top:=0;
  FCheckListBox.Width:=fDropWidth;
  FCheckListBox.Height:=fDropHeight;
  FCheckListBox.Color:=fDropColor;
  FCheckListBox.Columns:=fDropColumns;
  {$IFDEF DELPHI4_LVL}
  FCheckListBox.Flat := fDropFlat;
  {$ENDIF}
  FCheckListBox.Font.Assign(fDropFont);
  FCheckListBox.Sorted:= fDropSorted;
  FCheckListBox.Font.Assign(fDropFont);
  FCheckListBox.Items.Assign(self.Items);



  for i:=1 to fIntList.Count do
   begin
    FChecklistbox.Checked[i-1]:=fIntList.Items[i-1] and CL_CHECKED=CL_CHECKED;
    case fIntList.Items[i-1] and $3 of
    1:FChecklistbox.State[i-1]:=cbChecked;
    2:FChecklistbox.State[i-1]:=cbGrayed;
    end;
   end;

  FCheckListBox.Ctl3D:=false;
  FCheckListBox.OnClick:=CheckClick;
  FCheckListBox.OnClickCheck:=CheckClickCheck;
  FCheckListBox.ParentEdit:=self;

  StringToCheck(self.Text);
  FCheckListBox.Visible:=true;


  FCheckListBox.ItemIndex:=0;
  FCheckListBox.TabStop:=true;

  P := Point(0, 0);
  P := ClientToScreen(P);
  FChkForm.Left:=P.x;

  if (fDropDirection=ddDown) then
    FChkForm.Top:=P.y + self.Height
  else
    FChkForm.Top:=P.y - fDropHeight;

  FChkForm.Show;


  if Focus then FCheckListBox.SetFocus;

  FCheckListBox.Height:=FCheckListBox.Height+1;
  FCheckListBox.Height:=FCheckListBox.Height-1;

  fDropDirection := fOldDropDirection;
end;

procedure TCheckListEdit.HideCheckList;
begin
 postmessage(FChkForm.Handle,WM_CLOSE,0,0);
 fChkClosed:=true;
end;

procedure TCheckListEdit.SetEditRect;
var
  Loc: TRect;
begin
  SendMessage(Handle, EM_GETRECT, 0, LongInt(@Loc));
  Loc.Bottom := ClientHeight + 1;  {+1 is workaround for windows paint bug}
  Loc.Right := ClientWidth - FButton.Width - 3;
  if self.BorderStyle=bsNone then
   begin
    Loc.Top := 2;
    Loc.Left := 2;
   end
  else
   begin
    Loc.Top := 1;
    Loc.Left := 1;
   end;
  SendMessage(Handle, EM_SETRECTNP, 0, LongInt(@Loc));
  SendMessage(Handle, EM_GETRECT, 0, LongInt(@Loc));  {debug}
end;

procedure TCheckListEdit.WMSize(var Message: TWMSize);
var
  MinHeight: Integer;
  Dist:integer;
begin
  inherited;
  if BorderStyle=bsNone then Dist:=2 else Dist:=5;

  MinHeight := GetMinHeight;
    { text edit bug: if size to less than minheight, then edit ctrl does
      not display the text }

  if Height < MinHeight then
    Height := MinHeight
  else if FButton <> nil then
  begin
    if NewStyleControls and Ctl3D then
      FButton.SetBounds(Width - FButton.Width - Dist, 0, FButton.Width, Height - Dist)
    else FButton.SetBounds (Width - FButton.Width, 1, FButton.Width, Height - 3);
    SetEditRect;
  end;
end;

function TCheckListEdit.GetMinHeight: Integer;
var
  DC: HDC;
  SaveFont: HFont;
  I: Integer;
  SysMetrics, Metrics: TTextMetric;
begin
  DC := GetDC(0);
  GetTextMetrics(DC, SysMetrics);
  SaveFont := SelectObject(DC, Font.Handle);
  GetTextMetrics(DC, Metrics);
  SelectObject(DC, SaveFont);
  ReleaseDC(0, DC);
  I := SysMetrics.tmHeight;
  if I > Metrics.tmHeight then I := Metrics.tmHeight;
  {Result := Metrics.tmHeight + I div 4 + GetSystemMetrics(SM_CYBORDER) * 4 +2;}
  Result := Metrics.tmHeight + I div 4 {+ GetSystemMetrics(SM_CYBORDER) * 4};
end;
{
procedure TCheckListEdit.Click (Sender: TObject);
begin
end;
}

procedure TCheckListEdit.WMPaste(var Message: TWMPaste);
begin
  Exit;
  inherited;
end;

procedure TCheckListEdit.WMCut(var Message: TWMPaste);
begin
  Exit;
  inherited;
end;

procedure TCheckListEdit.CMExit(var Message: TCMExit);
begin
  inherited;
end;

procedure TCheckListEdit.WMKeyDown(var Msg:TWMKeydown);
begin
 inherited;
 if (msg.CharCode=vk_down) or (msg.CharCode=vk_F4) then
  begin
   ShowCheckList(true);
  end;
end;

procedure TCheckListEdit.CMEnter(var Message: TCMGotFocus);
begin
  if AutoSelect and not (csLButtonDown in ControlState) then SelectAll;
  inherited;
end;

procedure TCheckListEdit.CheckClick(Sender: TObject);
begin
 inherited;
 checkflag:=false;
end;

procedure TCheckListEdit.CheckClickCheck(Sender: TObject);
var
 i:integer;
begin
 checkflag:=true;
 for i:=1 to fCheckListBox.Items.Count do
  begin
   if fCheckListBox.Checked[i-1] then fIntList.Items[i-1]:=fIntList.Items[i-1] or CL_CHECKED else
    fIntList.Items[i-1]:=fIntList.Items[i-1] and not CL_CHECKED;
  end;
 self.Text:=CheckToString;
end;


procedure TCheckListEdit.ItemChange(Sender: TObject);
begin
 inherited;

 while fItems.Count>fIntList.Count do fIntList.Add(0);
 while fItems.Count<fIntList.Count do fIntList.Delete(fIntList.Count-1);
end;

procedure TCheckListEdit.SetItems(value:tStringList);
begin
 if value<>nil then
 fItems.Assign(value);
end;

function TCheckListEdit.CheckToString:string;
var
 i:integer;
 s,sli:string;

begin
 s:=fTextStartChar;

 for i:=1 to FIntList.Count do
  begin
    if (FIntList.Items[i-1] and CL_CHECKED = CL_CHECKED) then
      begin
       sli:=FItems[i-1];
       if assigned(FOnCheckListItemToText) then FOnCheckListItemToText(self,sli);
       s:=s+sli+FTextDelimiter;
      end;
  end;

 if (length(s)>0) then
    if s[length(s)]=FTextDelimiter then delete(s,length(s),1);

 s:=s+fTextEndChar;
 result:=s;
end;

procedure TCheckListEdit.StringToCheck(s:string);
var
 su,sli:string;
 i:integer;
begin
 if not assigned(FItems) then exit;
 
 if pos(fTextEndChar,s)>0 then delete(s,pos(fTextEndChar,s),1);
 if pos(fTextStartChar,s)>0 then delete(s,pos(fTextStartChar,s),1);

 while (length(s)>0) do
  begin
   if (pos(fTextDelimiter,s)>0) then
    su:=copy(s,1,pos(fTextDelimiter,s)-1)
   else su:=s;

   sli:=su;
   if assigned(FOnTextToCheckListItem) then
     FOnTextToCheckListItem(self,sli);

   i:=FItems.Indexof(sli);

   if (i>=0) then FIntList.Items[i]:=FIntList.Items[i] or CL_CHECKED
             else FIntList.Items[i]:=FIntList.Items[i] and not CL_CHECKED;

   delete(s,1,length(su));
   if length(s)>0 then delete(s,1,1);
  end;
end;

function TCheckListEdit.GetCheck(i: integer): boolean;
begin
 ItemChange(self);

 if (i>=fItems.Count) or (i>=fIntList.Count) or (i<0) then raise Exception.Create('Index out of bounds');

 result:=fIntList.Items[i] and CL_CHECKED = CL_CHECKED;
end;

procedure TCheckListEdit.SetCheck(i: integer; value: boolean);
begin
 ItemChange(self);

 if (i>=fItems.Count) or (i>=fIntList.Count) or (i<0) then raise Exception.Create('Index out of bounds');

 if value then
 fIntList.Items[i]:= fIntList.Items[i] or CL_CHECKED else
 fIntList.Items[i]:= fIntList.Items[i] and not CL_CHECKED;

 self.Text:=CheckToString;
end;

function TCheckListEdit.GetState(i: integer): TCheckBoxState;
begin
 ItemChange(self);

 if (i>=fItems.Count) or (i>=fIntList.Count) or (i<0) then raise Exception.Create('Index out of bounds');

 case fIntList.Items[i] and $3 of
 0:result:=cbUnchecked;
 1:result:=cbChecked;
 2:result:=cbGrayed;
 else
  result:=cbUnchecked;
 end;
end;

procedure TCheckListEdit.SetState(i: integer; value: TCheckBoxState);
begin
 ItemChange(self);

 if (i>=fItems.Count) or (i>=fIntList.Count) or (i<0) then raise Exception.Create('Index out of bounds');

 fIntList.Items[i]:= fIntList.Items[i] and not $3;

 case value of
 cbChecked:fIntList.Items[i]:=fIntList.Items[i] or $1;
 cbGrayed:fIntList.Items[i]:=fIntList.Items[i] or $2;
 end;

 self.Text:=CheckToString;
end;

procedure TCheckListEdit.FormDeactivate(Sender: TObject);
var
 pt:tpoint;
 r:trect;
begin
 {check cursor here...}
 getcursorpos(pt);
 pt:=screentoclient(pt);
 r:=clientrect;
 r.left:=r.right-16;
 fCloseClick:=ptinrect(r,pt);
 HideCheckList;
end;

procedure TCheckListEdit.SetTextDelimiter(const Value: string);
begin
  fTextDelimiter := Value;
  if not (csLoading in ComponentState) then self.Text:=CheckToString;
end;

procedure TCheckListEdit.SetTextEndChar(const Value: string);
begin
  fTextEndChar := Value;
  if not (csLoading in ComponentState) then self.Text:=CheckToString;
end;

procedure TCheckListEdit.SetTextStartChar(const Value: string);
begin
  fTextStartChar := Value;
  if not (csLoading in ComponentState) then self.Text:=CheckToString;
end;

procedure TCheckListEdit.Loaded;
begin
  inherited;
  self.Text := CheckToString;
end;

procedure TCheckListEdit.DownClick(Sender: TObject);
begin
 if fChkClosed then
   begin
    if not fCloseClick then ShowCheckList(true);
   end;
 fCloseClick:=false;
 if assigned(FOnClickBtn) then FOnClickBtn(Sender);
end;

procedure TCheckListEdit.MouseClick(Sender: TObject);
begin
 if not fChkClosed then
   begin
    HideCheckList;
   end;
end;

procedure TCheckListEdit.SetDropFont(const Value: TFont);
begin
  FDropFont.Assign(Value);
end;

function TCheckListEdit.GetText: string;
begin
 result:=inherited Text;
end;

procedure TCheckListEdit.SetText(const Value: string);
begin
 inherited Text:=value;
 if not (csLoading in ComponentState) then
 begin
  StringToCheck(value);
 end;
end;

{ TInplaceCheckListBox }

procedure TInplaceCheckListBox.WMKeyDown(var Msg: TWMKeydown);
begin
  if (msg.charcode=vk_tab) then Exit;

  if (msg.charcode=vk_escape) or (msg.charcode=vk_F4) or
     ((msg.CharCode=vk_up) and (getkeystate(vk_menu) and $8000=$8000)) then
   begin
    postmessage((Parent as TForm).Handle,WM_CLOSE,0,0);
   end;

  inherited;
end;

procedure TInplaceCheckListBox.DoExit;
begin
 inherited;
 if Visible then ParentEdit.HideCheckList;
end;


{TIntList helper object}

constructor TIntList.Create;
begin
 inherited Create;
end;

procedure TIntList.SetInteger(Index:Integer;Value:Integer);
begin
 inherited Items[Index]:=Pointer(Value);
end;

function TIntList.GetInteger(Index: Integer): Integer;
begin
 Result:=Integer(inherited Items[Index]);
end;

procedure TIntList.Add(Value: Integer);
begin
 inherited Add(Pointer(Value));
end;


procedure TIntList.Delete(Index: Integer);
begin
 inherited Delete(Index);
end;


{ TDropForm }

procedure TDropForm.WMClose(var Msg: TMessage);
begin
 inherited;
 self.Free;
end;

end.


