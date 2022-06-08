{**************************************************************************}
{ TParamListBox component                                                  }
{ for Delphi 2.0,3.0,4.0,5.0 + C++Builder 1.0,3.0,4.0,5.0                  }
{ version 1.3, July 2001                                                   }
{                                                                          }
{ Copyright © 2000-2001                                                    }
{   TMS Software                                                           }
{   Email : info@tmssoftware.com                                           }
{   Web : http://www.tmssoftware.com                                       }
{                                                                          }
{ The source code is given as is. The author is not responsible            }
{ for any possible damage done due to the use of this code.                }
{ The component can be freely used in any application. The complete        }
{ source code remains property of the author and may not be distributed,   }
{ published, given or sold in any form as such. No parts of the source     }
{ code can be included in any other component or application without       }
{ written authorization of the author.                                     }
{**************************************************************************}

unit paramlistbox;

{$I TMSDEFS.INC}
{$DEFINE REMOVESTRIP}
{$DEFINE PARAMS}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, StdCtrls, Menus,
  Spin, ComCtrls;

{$IFNDEF DELPHI3_LVL}
const
  crHandPoint = crUpArrow;
{$ENDIF}

type
  EHTMListBoxError = class(Exception);

  TAnchorClick = procedure(Sender:TObject;index: Integer;anchor: string) of object;

  TParamListBoxClickEvent = procedure (Sender:TObject;idx: Integer; href: string;var value: string) of object;
  TParamListBoxPopupEvent = procedure (Sender:TObject;idx: Integer; href: string;values:TStringlist;var DoPopup: Boolean) of object;
  TParamListBoxSelectEvent = procedure (Sender:TObject;idx: Integer; href,value: string) of object;
  TParamListBoxChangedEvent = procedure (Sender:TObject;idx: Integer; href,oldvalue,newvalue: string) of object;
  TParamListBoxHintEvent = procedure (Sender:TObject; href: string; var hintvalue: string; var showhint: Boolean) of object;

  TParamListBox = class;

  TPopupListBox = class(TListBox)
  private
    fParam: string;
    fOwnerList:TParamListBox;
    procedure WMKeyDown(var Msg:TWMKeydown); message wm_keydown;
    procedure WMLButtonUp(var Message: TWMLButtonDown); message WM_LBUTTONUP;
    procedure WMLButtonDown(var Message: TWMLButtonDown); message WM_LBUTTONDOWN;
    procedure WMActivate(var Message: TWMActivate); message WM_ACTIVATE;
  protected
    procedure CreateParams(var Params:TCreateParams); override;
    procedure SizeDropDownWidth;
  public
    property OwnerList:TParamListBox read fOwnerList write fOwnerList;
    property Param: string read fParam write fParam;
  end;

  TPopupSpinEdit = class(TSpinEdit)
  private
    FCancelled: Boolean;
    FParam: string;
    FOwnerList:TParamListBox;
    procedure WMKeyDown(var Msg:TWMKeydown); message WM_KEYDOWN;
    procedure WMActivate(var Message: TWMActivate); message WM_ACTIVATE;
  protected
    procedure CreateParams(var Params:TCreateParams); override;
  public
    property Cancelled: Boolean read FCancelled write FCancelled;
    property OwnerList:TParamListBox read FOwnerList write FOwnerList;
    property Param: string read FParam write FParam;
  end;

  TPopupEdit = class(TEdit)
  private
    FCancelled: Boolean;
    FParam: string;
    FOwnerList:TParamListBox;
    procedure WMKeyDown(var Msg:TWMKeydown); message WM_KEYDOWN;
    procedure WMActivate(var Message: TWMActivate); message WM_ACTIVATE;
  protected
    procedure CreateParams(var Params:TCreateParams); override;
  public
    property Cancelled: Boolean read FCancelled write FCancelled;
    property OwnerList:TParamListBox read FOwnerList write FOwnerList;
    property Param: string read FParam write FParam;
  end;

  TPopupDatePicker = class(TDateTimePicker)
  private
    FCancelled: Boolean;
    FParam: string;
    FOwnerList:TParamListBox;
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
    property OwnerList:TParamListBox read FOwnerList write FOwnerList;
    property Param: string read FParam write FParam;
  end;

  {$IFDEF DELPHI5_LVL}
  TOwnerDrawState = Windows.TOwnerDrawState;
  {$NODEFINE TOwnerDrawState}
  {$ENDIF}

  TParamListBox = class(TCustomListBox)
  private
    { Private declarations }
    FBlinking: Boolean;
    FOldCursor: Integer;
    FOldAnchor: string;
    FOnParamClick: TParamListBoxClickEvent;
    FOnParamPopup: TParamListBoxPopupEvent;
    FOnParamList:TParamListBoxPopupEvent;
    FOnParamSelect:TParamListBoxSelectEvent;
    FOnParamChanged:TParamListBoxChangedEvent;
    FOnParamHint: TParamListBoxHintEvent;
    FImages: TImageList;
    FMultiLine: Boolean;
    FParamColor: TColor;
    FSelectionColor: TColor;
    FSelectionFonTColor: TColor;
    FIsMeasuring: Boolean;
    FTimerID: Integer;
    FEnableBlink: boolean;
    FShadowOffset: integer;
    FShadowColor: TColor;
    FParamHint: Boolean;
    FParamPopup: TPopupMenu;
    FParamList: TPopupListBox;
    FParamDatePicker: TPopupDatePicker;
    FParamSpinEdit: TPopupSpinEdit;
    FParamEdit: TPopupEdit;
    FParamListSorted: Boolean;
    FOldParam: string;
    FHover: Boolean;
    FHoverIdx: Integer;
    FHoverHyperLink: Integer;
    FHoverColor: TColor;
    FHoverFonTColor: TColor;
    FCurrHoverRect: TRect;
    FShowSelection: Boolean;
    redraw: Boolean;
    FUpdateCount: Integer;
    FOnParamExit: TParamListBoxSelectEvent;
    FOnParamEnter: TParamListBoxSelectEvent;
    FOnParamPrepare: TParamListBoxClickEvent;
    procedure ReMeasure;
    procedure WMSize(var Msg: TWMSize); message WM_SIZE;
    procedure WMTimer(var Msg: TWMTimer); message WM_Timer;
    procedure WMEraseBkGnd(var Message:TMessage); message WM_ERASEBKGND;
    procedure WMKillFocus(var Message:TMessage); message WM_KILLFOCUS;
    procedure CNDrawItem(var Message: TWMDrawItem); message CN_DRAWITEM;
    procedure CMHintShow(Var Msg: TMessage); message CM_HINTSHOW;
    procedure CMMouseLeave(Var Msg: TMessage); message CM_MOUSELEAVE;
    procedure SetImages(value : TImageList);
    procedure SetMultiLine(value : boolean);
    procedure SetParamColor(const Value : TColor);
    procedure SetSelectionColor(const Value : TColor);
    procedure SetSelectionFonTColor(const Value : TColor);
    function GetTextItem(index: Integer): string;
    procedure SetEnableBlink(const Value: boolean);
    procedure SetShadowColor(const Value: TColor);
    procedure SetShadowOffset(const Value: integer);
    function IsParam(x,y: Integer;var Idx: Integer;var hoverrect:trect): string;
    function GetParam(href: string): string;
    procedure SetParam(href: string; const Value: string);
    procedure HandlePopup(Sender:TObject);
    procedure SetHoverColor(const Value: TColor);
    procedure SetHoverFonTColor(const Value: TColor);
    procedure SetParamHint(const Value: boolean);
    function GetItemParam(idx: integer; href: string): string;
    procedure SetItemParam(idx: integer; href: string; const Value: string);
    procedure UpdateParam(href:string; value:string);
    procedure PrepareParam(Param:string; var Value:string);
    function HTMLPrep(s:string):string;
    function InvHTMLPrep(s:string):string;
    function GetParamInfo(Index: Integer; HRef:string; var AValue, AClass, AProp: string): Boolean;
  protected
    { Protected declarations }
    procedure WndProc(var Message: TMessage); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure Notification(AComponent: TComponent; AOperation: TOperation); override;
    procedure DrawItem(Index: Integer; Rect: TRect;State: TOwnerDrawState); override;
    procedure MeasureItem(Index: Integer; var Height: Integer); override;
    procedure Loaded; override;
  public
    { Public declarations }
    constructor Create(aOwner:TComponent); override;
    destructor Destroy; override;
    property TextItems[index: Integer]: string read GetTextItem;
    property Parameter[href: string]: string read GetParam write SetParam;
    property ItemParameter[idx: Integer;href: string]: string read GetItemParam write SetItemParam;
    procedure BeginUpdate;
    procedure EndUpdate;
    property DateTimePicker: TPopupDatePicker read FParamDatePicker;
    property SpinEdit: TPopupSpinEdit read FParamSpinEdit;
    property Editor: TPopupEdit read FParamEdit;
    property ListBox: TPopupListBox read FParamList;

  published
    { Published declarations }
    property Align;
    {$IFDEF DELPHI4_LVL}
    property Anchors;
    property BiDiMode;
    property Constraints;
    property DragKind;
    property ParentBiDiMode;
    property OnEndDock;
    property OnStartDock;
    {$ENDIF}
    property BorderStyle;
    property Color;
    property Columns;
    property Ctl3D;
    property DragCursor;
    property DragMode;
    property Enabled;
    property ExtendedSelect;
    property Font;
    {$IFDEF DELPHI3_LVL}
    property ImeMode;
    property ImeName;
    {$ENDIF}
    property ItemHeight;
    property MultiSelect;
    property Multiline: Boolean read fMultiLine write SetMultiline;
    property ParentCtl3D;
    property ParentColor;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property Sorted;
    property TabOrder;
    property ParamHint: Boolean read fParamHint write SetParamHint;
    property EnableBlink: Boolean read fEnableBlink write SetEnableBlink;
    property Hover: Boolean read fHover write fHover;
    property HoverColor:TColor read fHoverColor write SetHoverColor;
    property HoverFontColor:TColor read fHoverFonTColor write SetHoverFonTColor;
    property ParamColor:TColor read fParamColor write SetParamColor;
    property ParamListSorted: Boolean read fParamListSorted write fParamListSorted default false;
    property SelectionColor:TColor read fSelectionColor write SetSelectionColor;
    property SelectionFontColor:TColor read fSelectionFonTColor write SetSelectionFonTColor;
    property ShadowColor:TColor read fShadowColor write SetShadowColor;
    property ShadowOffset: Integer read fShadowOffset write SetShadowOffset;
    property ShowSelection: Boolean read fShowSelection write fShowSelection;
    property Visible;
    property Images:TImageList read fImages write SetImages;
    property Items;
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
    property OnParamClick: TParamListBoxClickEvent read FOnParamClick write FOnParamClick;
    property OnParamPrepare: TParamListBoxClickEvent read FOnParamPrepare write FOnParamPrepare;
    property OnParamPopup: TParamListBoxPopupEvent read FOnParamPopup write FOnParamPopup;
    property OnParamList: TParamListBoxPopupEvent read FOnParamList write FOnParamList;
    property OnParamSelect: TParamListBoxSelectEvent read FOnParamSelect write FOnParamSelect;
    property OnParamChanged: TParamListBoxChangedEvent read FOnParamChanged write FOnParamChanged;
    property OnParamHint: TParamListBoxHintEvent read FOnParamHint write FOnParamHint;
    property OnParamEnter: TParamListBoxSelectEvent read FOnParamEnter write FOnParamEnter;
    property OnParamExit: TParamListBoxSelectEvent read FOnParamExit write FOnParamExit;
  end;

implementation

uses
  commctrl,shellapi,forms {$IFDEF DELPHI4_LVL} ,imglist {$ENDIF};

{$I htmlengn.pas}

procedure TParamListBox.CNDrawItem(var Message: TWMDrawItem);
var
  State: TOwnerDrawState;
begin
  with Message.DrawItemStruct^ do
  begin
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

procedure TParamListBox.DrawItem(Index: Integer; Rect: TRect;State: TOwnerDrawState);
var
 a,s,f: string;
 xsize,ysize,ml,hl: Integer;
 urlcol:TColor;
 hrect,hr:trect;
 pt:tpoint;
 fHyperlink: Integer;

begin
 if (odSelected in State) and fShowSelection then
   begin
    canvas.brush.color:=fSelectionColor;
    canvas.pen.color:=fSelectionColor;
    canvas.font.color:=fSelectionFonTColor;
    urlcol:=fSelectionFonTColor;
   end
 else
   begin
    canvas.brush.color:=Color;
    canvas.pen.color:=Color;
    canvas.font.color:=Font.Color;
    urlcol:=fParamColor;
   end;

 if not redraw then
 canvas.rectangle(rect.left,rect.top,rect.right,rect.bottom);

 hrect:=rect;
 hrect.left:=hrect.left+2;

 getcursorpos(pt);
 pt:=self.screentoclient(pt);

 if (fHoverIdx<>index) then fHyperlink:=-1 else fHyperLink:=fHoverHyperLink;

// HTMLDrawEx(canvas,items[index],hrect,fImages,pt.x,pt.y,-1,fHyperLink,fShadowOffset,false,false,false,false,true,false,1.0,urlcol,clNone,clNone,fShadowColor,a,s,f,xsize,ysize,hl,ml,hr);

  HTMLDrawEx(Canvas,items[index],rect,fImages,pt.x,pt.y,-1,fHyperLink,fShadowOffset,false,false,false,false,(odSelected in State) and fShowSelection,fHover ,true,1.0,urlCol,
               fHoverColor,fHoverFonTColor,clGray,a,s,f,xsize,ysize,hl,ml,hr);


  if (odFocused in State) and fShowSelection then DrawFocusRect(canvas.handle,rect);
end;

procedure TParamListBox.CMMouseLeave(Var Msg: TMessage);
begin
  inherited;
  if FHover and (FHoverHyperLink<>-1) then
    InvalidateRect(self.handle,@fCurrHoverRect,true);

  FHoverHyperLink:=-1;

  if (FOldAnchor <> '') and Assigned(fOnParamExit) then
    FOnParamExit(self,-1,fOldParam,Parameter[fOldParam]);

  FOldAnchor := '';
end;

Procedure TParamListBox.CMHintShow(Var Msg: TMessage);
{$IFNDEF DELPHI3_LVL}
type
  PHintInfo = ^THintInfo;
{$ENDIF}
var
  CanShow: Boolean;
  hi: PHintInfo;
  Anchor: string;
  res: Integer;
  hr:trect;

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

      if Assigned(fOnParamHint) then
        FOnParamHint(self,anchor,anchor,CanShow);

     {$IFNDEF DELPHI3_LVL}
     Hint := anchor;
     {$ELSE}
     hi^.HintStr := anchor;
     {$ENDIF}
    end;
  end;
 Msg.Result := Ord(Not CanShow);
end;


procedure TParamListBox.MeasureItem(Index: Integer; var Height: Integer);
begin
 if not fMultiline then
   begin
    height:=ItemHeight;
    exit;
   end;
end;

constructor TParamListBox.Create(aOwner: tComponent);
begin
  inherited Create(aOwner);
  Style := lbOwnerDrawVariable;
  FIsMeasuring := False;
  FParamColor := clGreen;
  FSelectionColor := clHighLight;
  FSelectionFontColor := clHighLightText;
  FTimerID := 0;
  FEnableBlink := False;
  FShadowColor := clGray;
  FShadowOffset := 1;
  FOldAnchor := '';
  FShowSelection := true;
  FUpdateCount := 0;

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

  FHoverColor := clNone;
  FHoverFonTColor := clNone;
end;

destructor TParamListBox.Destroy;
begin
  FParamPopup.Free;
  FParamList.Free;
  FParamDatePicker.Free;
  FParamSpinEdit.Free;
  FParamEdit.Free;
  inherited;
end;

procedure TParamListBox.Loaded;
begin
  inherited;
  FOldCursor := self.Cursor;
  if FEnableBlink and (FTimerID = 0) then
    FTimerID := SetTimer(Self.Handle,1,500,nil);

  if not FEnableBlink and (FTimerID <> 0) then
    KillTimer(Self.Handle,FTimerID);
end;

procedure TParamListBox.SetImages(Value: TImagelist);
begin
  FImages := Value;
  self.ReMeasure;
end;

procedure TParamListBox.SetParamColor(const Value:TColor);
begin
  if (value<>fParamColor) then
   begin
    fParamColor:=value;
    self.Invalidate;
   end;
end;

procedure TParamListBox.SetSelectionColor(const Value: TColor);
begin
  if (value<>fSelectionColor) then
   begin
    fSelectionColor:=value;
    self.Invalidate;
   end;
end;

procedure TParamListBox.SetSelectionFonTColor(const Value: TColor);
begin
  if (value<>fSelectionFonTColor) then
   begin
    fSelectionFonTColor:=value;
    self.Invalidate;
   end;

end;


procedure TParamListBox.SetMultiLine(value: Boolean);
begin
  if (value<>fMultiline) then
   begin
    fMultiline:=value;
    self.ReMeasure;
   end;
end;

function TParamListBox.GetTextItem(index: Integer): string;
var
 xsize,ysize: Integer;
 a,s: string;
 r:trect;
begin
 if (index>=0) and (index<self.Items.Count) then
  begin
   r:=self.clientrect;
   HTMLDraw(canvas,self.Items[index],r,fImages,0,0,true,true,false,true,false,true,1.0,fParamColor,a,s,xsize,ysize);
   result:=s;
  end
 else
  raise EHTMListboxError.Create('Item index out of range');
end;

procedure TParamListBox.WndProc(var Message: TMessage);
var
 r,hr:trect;
 xsize,ysize,ml,hl: Integer;
 a,s,f: string;
begin
 inherited;

 if (message.msg=WM_DESTROY) then
    begin
     if fEnableBlink and (ftimerID<>0) then KillTimer(handle,fTimerID);
    end;

 if (message.msg=LB_ADDSTRING) or
    (message.msg=LB_INSERTSTRING) then
    begin
      sendmessage(self.handle,lb_getitemrect,message.result,longint(@r));
      r.bottom:=r.top+1000;
      HTMLDrawEx(canvas,items[message.result],r,fImages,0,0,-1,-1,fShadowOffset,true,true,false,true,true,false,true,1.0,fParamColor,clNone,clNone,fShadowColor,a,s,f,xsize,ysize,hl,ml,hr);
      sendmessage(self.handle,lb_setitemheight,message.result,ysize+4);
    end;

end;

procedure TParamListBox.ReMeasure;
var
 i: Integer;

begin
 fIsMeasuring:=true;
 for i:=1 to self.Items.Count do
  self.Items[i-1]:=self.Items[i-1];
 fIsMeasuring:= False;
end;

function TParamListBox.IsParam(x,y: Integer;var idx: Integer;var hoverrect:trect): string;
var
  res: Integer;
  r:trect;
  anchor,stripped,f: string;
  xsize,ysize,hl: Integer;

begin
  Result:='';
  idx:=-1;
  res:=loword(sendmessage(self.handle,lb_itemfrompoint,0,makelparam(X,Y)));
  if (res>=0) and (res<self.Items.Count) then
  begin
    idx:=res;
    sendmessage(self.handle,lb_getitemrect,res,longint(@r));

    if HTMLDrawEx(canvas,self.items[res],r,fImages,X,Y,-1,-1,fShadowOffset,true,false,false,true,true,false,true,1.0,fParamColor,
               clNone,clNone,fShadowColor,anchor,stripped,f,xsize,ysize,hl,fHoverHyperLink,hoverrect) then
    Result := Anchor;
  end;
end;

procedure TParamListBox.HandlePopup(Sender:TObject);
var
 newvalue,oldvalue: string;
begin
 with (Sender as TMenuItem) do
  begin
   newvalue:=Caption;
   while (pos('&',newvalue)>0) do system.delete(newvalue,pos('&',newvalue),1);

   oldvalue:=ItemParameter[ItemIndex,fOldParam];

   if assigned(fOnParamSelect) then
     fOnParamSelect(self,ItemIndex,fOldParam,newvalue);

   ItemParameter[ItemIndex,fOldParam]:=newvalue;

   if (oldvalue<>newvalue) then
   if assigned(fOnParamChanged) then
    fOnParamChanged(self,ItemIndex,fOldParam,oldvalue,newvalue);

  end;
end;


procedure TParamListBox.MouseDown(Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
var
  Index,I: Integer;
  param,oldvalue,newvalue,v,c,p: string;
  hr:trect;
  pt:tpoint;
  doPopup,doList: Boolean;
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

  param := IsParam(X,Y,Index,hr);

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
        fParamPopup.Popup(pt.x,pt.y+2);

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
        fParamList.left:=pt.x;
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
      FParamDatePicker.Left := pt.X;
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
      FParamSpinEdit.Left := pt.X;
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
      FParamEdit.Left := pt.X;
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

procedure TParamListBox.MouseMove(Shift: TShiftState; X, Y: Integer);
var
 param: string;
 idx: Integer;
 hr:trect;
begin
  inherited MouseMove(Shift,X,Y);

  param := IsParam(x,y,idx,hr);

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

     if (fOldAnchor<>param) then
       begin
        if assigned(fOnParamEnter) then fOnParamEnter(self,idx,Param,ItemParameter[idx,Param]);
        Application.Cancelhint;
       end;

     if (self.Cursor<>crHandPoint) then
       begin
        fOldCursor:=self.Cursor;
        self.Cursor:=crHandPoint;
        if fHover then InvalidateRect(self.handle,@hr,true);
        fCurrHoverRect:=hr;

       end;
     fOldAnchor:=param;
    end
   else
    if (self.Cursor=crHandPoint) and (fOldAnchor<>'') then
     begin
      if assigned(fOnParamExit) then fOnParamExit(self,idx,fOldParam,ItemParameter[idx,fOldParam]);
      Application.CancelHint;
      self.Cursor:=fOldCursor;
      fOldAnchor:='';
      if fHover then InvalidateRect(self.handle,@fCurrHoverRect,true);
     end;
end;

procedure TParamListBox.WMSize(var Msg: TWMSize);
begin
  inherited;
  if not fIsMeasuring then self.ReMeasure;
end;

procedure TParamListBox.Notification(AComponent: TComponent;
  AOperation: TOperation);
begin
  if (aOperation=opRemove) and (aComponent=fImages) then fImages:=nil;
  inherited;
end;

procedure TParamListBox.WMTimer(var Msg: TWMTimer);
var
 i,i1,i2: Integer;
 r:trect;
 a,s: string;
 xsize,ysize: Integer;
 sel: Boolean;

begin
 if (items.count=0) or (not fEnableBlink) then exit;

 r:=getclientrect;
 i1:=sendmessage(handle,lb_itemfrompoint,0,makelparam(0,r.Top));
 i2:=sendmessage(handle,lb_itemfrompoint,0,makelparam(0,r.Bottom));

 if i1<0 then i1:=0;
 if i2>items.Count-1 then i2:=items.Count-1;
 for i:=i1 to i2 do
  begin
   {only redraw items with blinking}
   if pos('<BLINK',items[i])>0 then
     begin
      sendmessage(handle,lb_getitemrect,i,longint(@r));
      sel:=sendmessage(handle,lb_getsel,i,0)>0;
      r.left:=r.left+2;
      if not sel then
       begin
        canvas.brush.color:=self.Color;
        canvas.font.color:=self.font.Color;
       end
      else
       begin
        canvas.brush.color:=self.SelectionColor;
        canvas.font.color:=self.SelectionFonTColor;
       end;
      HTMLDraw(canvas,items[i],r,fImages,0,0,false,false,false,sel,fBlinking,true,1.0,fParamColor,a,s,xsize,ysize);
     end;
  end;

 fBlinking:=not fBlinking;
end;

procedure TParamListBox.SetEnableBlink(const Value: boolean);
begin
  fEnableBlink := Value;
  if not (csLoading in ComponentState) then
   begin
    if fEnableBlink and (fTimerID=0) then fTimerID:=SetTimer(self.handle,1,500,nil);
    if not fEnableBlink and (fTimerID<>0) then
       begin
        KillTimer(self.handle,fTimerID);
        fTimerID:=0;
        fBlinking:= False;
        Invalidate;
       end;
   end;
end;

procedure TParamListBox.SetShadowColor(const Value: TColor);
begin
  fShadowColor := Value;
  self.Invalidate;
end;

procedure TParamListBox.SetShadowOffset(const Value: integer);
begin
  fShadowOffset := Value;
  self.Invalidate;
end;


function TParamListBox.GetItemParam(idx: integer; href: string): string;
var
  h: string;
begin
  Result := '';

  if (idx<0) or (idx>Items.Count-1) then
    raise Exception.Create('Invalid item index');

  if GetHRefValue(Items[idx],href,h) then
    Result := InvHTMLPrep(h);
end;

procedure TParamListBox.SetItemParam(idx: integer; href: string;
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


function TParamListBox.GetParam(href: string): string;
var
  i: Integer;
  h: string;
begin
  for i := 1 to Items.Count do
  begin
    if GetHRefValue(Items[i-1],href,h) then
    begin
      Result := InvHTMLPrep(h);
      Break;
    end;
  end;
end;

procedure TParamListBox.SetParam(href: string; const Value: string);
var
  i: Integer;
  h,s,v: string;
begin
  BeginUpdate;
  FHoverIdx:=-1;

  v := HTMLPrep(Value);

  for i:=1 to Items.Count do
  begin
    s := Items[i-1];
    if GetHRefvalue(s,href,h) then
    begin
      SetHRefValue(s,href,v);
      Items[i-1] := s;
      Break;
    end;
  end;
  EndUpdate;
end;

procedure TParamListBox.SetHoverColor(const Value: TColor);
begin
  FHoverColor := Value;
  Invalidate;
end;

procedure TParamListBox.SetHoverFonTColor(const Value: TColor);
begin
  FHoverFonTColor := Value;
  Invalidate;
end;

procedure TParamListBox.BeginUpdate;
begin
  Inc(fUpdateCount);
end;

procedure TParamListBox.EndUpdate;
begin
  if FUpdateCount > 0 then
    Dec(FUpdateCount);
end;

procedure TParamListBox.WMEraseBkGnd(var Message: TMessage);
begin
  if FUpdateCount > 0 then
    message.Result := 0
  else
    inherited;
  FUpdateCount := 0;
end;

procedure TParamListBox.SetParamHint(const Value: boolean);
begin
  FParamHint := Value;
  if FParamHint and not ShowHint then ShowHint := true;
end;

procedure TParamListBox.WMKillFocus(var Message: TMessage);
begin
  inherited;
  if self.Cursor <> fOldCursor then
    self.Cursor := fOldCursor;
end;

procedure TParamListBox.UpdateParam(href, value: string);
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

function TParamListBox.GetParamInfo(Index: Integer; HRef: string;
  var AValue, AClass, AProp: string): Boolean;
begin
  Result := ExtractParamInfo(Items[Index],HRef,AClass,AValue,AProp);
end;

procedure TParamListBox.PrepareParam(Param: string; var Value: string);
begin
  if Assigned(FOnParamPrepare) then
    FOnParamPrepare(Self,ItemIndex,Param,Value);
end;

function TParamListBox.HTMLPrep(s: string): string;
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

function TParamListBox.InvHTMLPrep(s: string): string;
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
 i: Integer;
 tw,nw: Integer;
 lpmin,lpmax: Integer;
 scrlw: Integer;
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

procedure TPopupListBox.WMActivate(var Message: TWMActivate);
begin
  if Message.Active = 0 then Hide;
end;

procedure TPopupListBox.WMLButtonUp(var Message: TWMLButtonDown);
begin
  inherited;
  FOwnerList.UpdateParam(Param,Items[ItemIndex]);
  Parent.setfocus;
  Visible := False;
  Parent :=nil;
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







end.
