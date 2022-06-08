{********************************************************************
TParamLabel component
for Delphi 2.0,3.0,4.0,5.0 + C++Builder 1.0,3.0,4.0,5.0
version 1.1, December 2000

written by TMS Software
           copyright © 1999-2000
           Email : info@tmssoftware.com
           Website : http://www.tmssoftware.com/

The source code is given as is. The author is not responsible
for any possible damage done due to the use of this code.
The component can be freely used in any application. The complete
source code remains property of the author and may not be distributed,
published, given or sold in any form as such. No parts of the source
code can be included in any other component or application without
written authorization of the author.
********************************************************************}

unit paramlabel;

{$I TMSDEFS.INC}

{$DEFINE REMOVESTRIP}
{$DEFINE REMOVEDRAW}
{$DEFINE PARAMS}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, comctrls, shellapi, extctrls, menus;

{$IFNDEF DELPHI3_LVL}
const
  crHandPoint = crUpArrow;
{$ENDIF}

type
  TParamLabelClickEvent = procedure (Sender:TObject; href:string;var value:string) of object;
  TParamLabelPopupEvent = procedure (Sender:TObject; href:string;values:TStringlist;var DoPopup:boolean) of object;
  TParamLabelSelectEvent = procedure (Sender:TObject; href,value:string) of object;
  TParamLabelChangedEvent = procedure (Sender:TObject; href,oldvalue,newvalue:string) of object;
  TParamLabelHintEvent = procedure (Sender:TObject; href:string; var hintvalue:string; var showhint:boolean) of object;

  TParamLabel=class;

  TPopupListBox = class(TListBox)
  private
    fParam:string;
    fOwnerList:TParamLabel;
    procedure WMKeyDown(var Msg:TWMKeydown); message WM_KEYDOWN;
    procedure WMLButtonUp(var Message: TWMLButtonDown); message WM_LBUTTONUP;
    procedure WMActivate(var Message: TWMActivate); message WM_ACTIVATE;
  protected
    procedure CreateParams(var Params:TCreateParams); override;
    procedure SizeDropDownWidth;
  public
    property OwnerList:TParamLabel read fOwnerList write fOwnerList;
    property Param:string read fParam write fParam;

  end;


  TParamLabel = class(TCustomLabel)
  private
    { Private declarations }
    fAnchor: String;
    fAutoSizing: boolean;
    fHTMLText: TStringList;
    fOnParamClick: TParamLabelClickEvent;
    fOnParamPopup: TParamLabelPopupEvent;
    fOnParamList: TParamLabelPopupEvent;
    fOnParamSelect: TParamLabelSelectEvent;
    fOnParamChanged: TParamLabelChangedEvent;
    fOnParamHint: TParamLabelHintEvent;
    fParamHint: boolean;
    fImages: TImageList;
    fupdatecount: Integer;
    fParamColor: TColor;
    FBevelInner: TPanelBevel;
    FBevelOuter: TPanelBevel;
    FBevelWidth: TBevelWidth;
    FBorderWidth: TBorderWidth;
    FBorderStyle: TBorderStyle;
    fShadowOffset: Integer;
    fShadowColor: TColor;
    fHover: boolean;
    fHoverHyperLink: Integer;
    fHoverColor: TColor;
    fHoverFontColor: TColor;
    fCurrHoverRect: TRect;
    fParamPopup:TPopupMenu;
    fParamList:TPopupListBox;
    fOldParam:string;
    fOnParamExit: TParamLabelSelectEvent;
    fOnParamEnter: TParamLabelSelectEvent;
    procedure SetHTMLText(value : TStringList);
    procedure SetImages(value : TImageList);
    procedure SetParamColor(value : TColor);
    procedure SetAutoSizing(value : boolean);
    procedure HTMLChanged(sender:tObject);
    procedure SetBevelInner(Value: TPanelBevel);
    procedure SetBevelOuter(Value: TPanelBevel);
    procedure SetBevelWidth(Value: TBevelWidth);
    procedure SetBorderWidth(Value: TBorderWidth);
    procedure SetBorderStyle(Value: TBorderStyle);
    function IsParam(x,y:integer;var hoverrect:trect):string;
    procedure CMHintShow(Var Msg: TMessage); message CM_HINTSHOW;
    procedure CMMouseLeave(Var Msg: TMessage); message CM_MOUSELEAVE;
    procedure SetShadowColor(const Value: tColor);
    procedure SetShadowOffset(const Value: integer);
    procedure SetHover(const Value: boolean);
    procedure SetHoverColor(const Value: TColor);
    procedure SetHoverFontColor(const Value: TColor);
    procedure HoverInvalidate(r:trect);
    function GetParam(href: string): string;
    procedure SetParam(href: string; const Value: string);
    procedure HandlePopup(Sender:TObject);
    procedure SetParamHint(const Value: boolean);
  protected
    { Protected declarations }
    procedure Notification(AComponent: TComponent; AOperation: TOperation); override;
    procedure Paint; override;
    procedure Loaded; override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    function GetDisplText:string; virtual;
    procedure UpdateDisplText; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure BeginUpdate;
    procedure EndUpdate;
    property Parameter[href:string]:string read GetParam write SetParam;
    property ParamListBox:TPopupListbox read fParamList;
  published
    { Published declarations }
    property Align;
    {$IFDEF DELPHI4_LVL}
    property Anchors;
    property BiDiMode;
    property Constraints;
    property DragKind;
    property ParentBiDiMode;
    {$ENDIF}
    property DragCursor;
    property DragMode;
    property Enabled;
    property FocusControl;
    property Font;
    property ParentShowHint;
    property ParentColor;
    property ParentFont;
    property PopupMenu;
    property ShowHint;
    property Color;
    property Transparent;
    property Hint;
    property Visible;
    
    property AutoSizing:boolean read fAutoSizing write SetAutoSizing;
    property BevelInner: TPanelBevel read FBevelInner write SetBevelInner default bvNone;
    property BevelOuter: TPanelBevel read FBevelOuter write SetBevelOuter default bvNone;
    property BevelWidth: TBevelWidth read FBevelWidth write SetBevelWidth default 1;
    property BorderWidth: TBorderWidth read FBorderWidth write SetBorderWidth default 0;
    property BorderStyle: TBorderStyle read FBorderStyle write SetBorderStyle default bsNone;
    property Hover:boolean read fHover write SetHover;
    property HoverColor:TColor read fHoverColor write SetHoverColor;
    property HoverFontColor:TColor read fHoverFontColor write SetHoverFontColor;
    property HTMLText:TStringList read fHTMLText write SetHTMLText;
    property Images:TImageList read fImages write SetImages;
    property ParamColor:tColor read fParamColor write SetParamColor;
    property ParamHint:boolean read fParamHint write SetParamHint;
    property ShadowColor:tColor read fShadowColor write SetShadowColor;
    property ShadowOffset:integer read fShadowOffset write SetShadowOffset;

    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDrag;
    property OnParamClick:TParamLabelClickEvent read fOnParamClick write fOnParamClick;
    property OnParamPopup:TParamLabelPopupEvent read fOnParamPopup write fOnParamPopup;
    property OnParamList:TParamLabelPopupEvent read fOnParamList write fOnParamList;
    property OnParamSelect:TParamLabelSelectEvent read fOnParamSelect write fOnParamSelect;
    property OnParamChanged:TParamLabelChangedEvent read fOnParamChanged write fOnParamChanged;
    property OnParamHint:TParamLabelHintEvent read fOnParamHint write fOnParamHint;
    property OnParamEnter:TParamLabelSelectEvent read fOnParamEnter write fOnParamEnter;
    property OnParamExit:TParamLabelSelectEvent read fOnParamExit write fOnParamExit;    
  end;



implementation
uses
 commctrl {$IFDEF DELPHI4_LVL},imglist {$ENDIF};

{$I htmlengl.pas}

procedure TParamLabel.BeginUpdate;
begin
 inc(fUpdateCount);
end;

procedure TParamLabel.EndUpdate;
begin
 if fUpdateCount>0 then
   begin
    dec(fUpdateCount);
    if (fUpdateCount=0) then
      begin
      end;
   end;
end;

procedure TParamLabel.Paint;
var
 r,mr:trect;
 x,y,hyperlinks,mouselink:integer;
 s,anchor,stripped,focusanchor:string;
 TopColor, BottomColor: TColor;
 pt:tpoint;

 procedure AdjustColors(Bevel: TPanelBevel);
 begin
   TopColor := clBtnHighlight;
   if Bevel = bvLowered then TopColor := clBtnShadow;
   BottomColor := clBtnShadow;
   if Bevel = bvLowered then BottomColor := clBtnHighlight;
 end;

begin
 Caption:='';
 inherited Paint;

 if fUpdateCount>0 then exit;

 R := GetClientRect;

 if BevelOuter <> bvNone then
 begin
   AdjustColors(BevelOuter);
   Frame3D(Canvas, R, TopColor, BottomColor, BevelWidth);
 end;
 Frame3D(Canvas, R, Color, Color, BorderWidth);

 if BevelInner <> bvNone then
 begin
   AdjustColors(BevelInner);
   Frame3D(Canvas, R, TopColor, BottomColor, BevelWidth);
 end;

 if (fBorderStyle=bsSingle) and (fBorderWidth>0) then
  begin
   canvas.pen.width:=fBorderWidth;
   canvas.pen.color:=clBlack;
   canvas.rectangle(r.left,r.top,r.right,r.bottom);
  end;

 if (bevelInner<>bvNone) or (bevelOuter<>bvNone) then
  begin
   inflaterect(r,-BevelWidth,-BevelWidth);
  end;

 if (fBorderStyle=bsSingle) then
  begin
   inflaterect(r,-BorderWidth,-BorderWidth);
  end;

 {
 s:='';
 for i:=1 to fHTMLText.Count do
  s:=s+fHTMLText.Strings[i-1];
 }

 s:=GetDisplText;

 canvas.brush.color:=self.Color;

 if fAutoSizing then
  begin
   if (Align=alLeft) or (Align=alRight) or (Align=alNone)
    then    r.right:=r.right+$FFFF;
   if (Align=alTop) or (Align=alBottom) or (Align=alNone)
    then    r.bottom:=r.bottom+250;
  end;

 getcursorpos(pt);
 pt:=self.screentoclient(pt);
 
 HTMLDrawEx(canvas,s,r,fImages,pt.x,pt.y,-1,fHoverHyperLink,fShadowOffset,false,false,false,false,false,fHover,1.0,fParamColor,fHoverColor,fHoverFontColor,fShadowColor,anchor,stripped,focusanchor,x,y,hyperlinks,mouselink,mr);

 if fAutoSizing then
  begin
   if (Align=alTop) or (Align=alBottom) or (Align=alNone)
    then if (y+6<>height) then height:=y+6;
   if (Align=alLeft) or (Align=alRight) or (Align=alNone)
    then if (x+6<>width) then width:=x+6;
  end;
  
end;

constructor TParamLabel.Create(AOwner: TComponent);
begin
 inherited;
 fAutoSizing:=false;
 fHTMLText:=TStringList.Create;
 fHTMLText.OnChange:=HTMLChanged;
 Caption:='';
 AutoSize:=false;
 fUpdateCount:=0;
 fParamColor:=clGreen;
 fShadowColor:=clGray;
 fShadowOffset:=2;
 BevelWidth := 1;
 FBorderStyle := bsNone;
 fHover:=false;
 fHoverHyperLink:=-1;
 fHoverColor:=clNone;
 fHoverFontColor:=clNone;
 fParamPopup:=TPopupMenu.Create(self);

 fParamList:=TPopuplistbox.create(self);

 fParamList.Cursor:=crDefault;
 fParamList.Width:=100;
 fParamList.Height:=100;
 fParamList.top:=0;
 fParamList.left:=0;
 fParamList.visible:=false;



end;

destructor TParamLabel.Destroy;
begin
 fHTMLText.Free;
 fParamPopup.Free;
 fParamList.Free;
 inherited;
end;

procedure TParamLabel.HTMLChanged(sender:TObject);
begin
 Invalidate;
end;

procedure TParamLabel.SetAutoSizing(value : boolean);
begin
 fAutoSizing:=value;
 if fAutoSizing then
  begin
   if (Align=alLeft) or (Align=alRight) then Width:=6;
   if (Align=alTop) or (Align=alBottom) then Height:=6;
  end;
 Invalidate;
end;

procedure TParamLabel.SetHTMLText(value:TStringlist);
begin
 if assigned(value) then
 fHTMLText.Assign(value);
 UpdateDisplText;
end;

procedure TParamLabel.UpdateDisplText;
begin
 Invalidate;
end;

procedure TParamLabel.SetImages(value:TImagelist);
begin
 fImages:=value;
 Invalidate;
end;

procedure TParamLabel.SetParamColor(value:TColor);
begin
 if value<>fParamColor then
  begin
   fParamColor:=value;
   Invalidate;
  end;
end;

procedure TParamLabel.Loaded;
begin
 inherited;
 Caption:='';
end;

function TParamLabel.IsParam(x,y:integer;var hoverrect:trect):string;
var
 r:trect;
 xsize,ysize:integer;
 s:string;
 anchor,stripped,focusanchor:string;

 hl:integer;
begin
 r:=self.Clientrect;

 if (bevelInner<>bvNone) or (bevelOuter<>bvNone) then
  begin
   inflaterect(r,-BevelWidth,-BevelWidth);
  end;

 if (fBorderStyle=bsSingle) then
  begin
   inflaterect(r,-BorderWidth,-BorderWidth);
  end;

 s:=GetDisplText;

 anchor:='';

 if HTMLDrawEx(canvas,s,r,fImages,x,y,-1,-1,fShadowOffset,true,false,false,false,false,fHover,1.0,
               clWhite,clNone,clNone,clNone,anchor,stripped,focusanchor,xsize,ysize,hl,fHoverHyperlink,hoverrect) then

 inflaterect(hoverrect,1,1);
 result:=anchor;
end;

procedure TParamLabel.HoverInvalidate(r:trect);
begin
 if assigned(parent) and (parent is TWinControl) then
  begin
   offsetrect(r,self.left,self.top);
   invalidaterect((parent as TWinControl).handle,@r,true);
  end;
end;

procedure TParamLabel.MouseMove(Shift: TShiftState; X, Y: Integer);
var
 anchor:string;
 hr:trect;
begin
 anchor:=IsParam(x,y,hr);

 if (Anchor<>'') then
   begin
    if (fAnchor<>Anchor) or not equalrect(fCurrHoverRect,hr) or (fHoverHyperlink=-1) then
     begin
      if fHover then HoverInvalidate(hr);
     end;

    if  (fAnchor<>Anchor) then
     begin
      if assigned(fOnParamEnter) then fOnParamEnter(self,Anchor,Parameter[Anchor]);

      if fParamHint then Application.CancelHint;
      if (self.Cursor=crDefault) then self.Cursor:=crHandPoint;
      if fHover then HoverInvalidate(fCurrHoverRect);
     end;

     fAnchor:=Anchor;
     fCurrHoverRect:=hr;
   end
 else
   begin
     if (self.Cursor=crHandPoint) then
      begin
       if assigned(fOnParamExit) then fOnParamEnter(self,fAnchor,Parameter[fAnchor]);
      self.Cursor:=crDefault;
      if fHover then HoverInvalidate(fCurrHoverRect);
      fAnchor:='';
      end;
   end;
end;

procedure TParamLabel.HandlePopup(Sender:TObject);
var
 newvalue,oldvalue:string;
begin
 with (Sender as TMenuItem) do
  begin
   newvalue:=Caption;
   while (pos('&',newvalue)>0) do system.delete(newvalue,pos('&',newvalue),1);

   oldvalue:=Parameter[fOldParam];

   if assigned(fOnParamSelect) then
     fOnParamSelect(self,fOldParam,newvalue);

   Parameter[fOldParam]:=newvalue;

   if (oldvalue<>newvalue) then
   if assigned(fOnParamChanged) then
    fOnParamChanged(self,fOldParam,oldvalue,newvalue);

 end;
end;



procedure TParamLabel.MouseDown(Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
var
 param,oldvalue,newvalue:string;
 hr:trect;
 pt:tpoint;
 doPopup,doList:boolean;
 newvalues:TStringList;
 newmenu:TMenuItem;
 i:integer;

begin
 inherited MouseDown(Button,Shift,X,Y);

 param:=IsParam(X,Y,hr);
 if (param<>'') and assigned(fOnParamClick) then
  begin
    GetHREFValue(GetDisplText,param,oldvalue);
    newvalue:=oldvalue;

    fOnParamClick(self,param,newvalue);
    if (newvalue<>oldvalue) then
      begin
       oldvalue:=GetDisplText;
       SetHRefValue(oldvalue,param,newvalue);
       fHTMLText.Text:=oldvalue;

       if assigned(fOnParamChanged) then
        fOnParamChanged(self,param,oldvalue,newvalue);

       getcursorpos(pt);
       pt:=self.screentoclient(pt);
       IsParam(pt.x,pt.y,fCurrHoverRect);
      end;
  end;

 if (param<>'') and assigned(fOnParamPopup) then
  begin
    GetHRefValue(GetDisplText,param,oldvalue);
    newvalue:=oldvalue;

    NewValues:=TStringList.Create;
    dopopup:=false;
    fOnParamPopup(self,param,newvalues,dopopup);

    if doPopup then
    begin
      pt:=clienttoscreen(point(hr.left,hr.bottom));

      while fParamPopup.Items.Count>0 do fParamPopup.Items[0].Free;

      for i:=1 to NewValues.Count do
        begin
         newmenu:=TMenuItem.Create(Self);
         newmenu.Caption:=NewValues.Strings[i-1];
         newmenu.OnClick:=HandlePopup;
         fParamPopup.Items.Add(newmenu);
        end;

      fOldParam:=param;
      fParamPopup.Popup(pt.x,pt.y);


    end;
    NewValues.Free;
  end;

 if (param<>'') and assigned(fOnParamList) then
  begin
    GetHRefValue(GetDisplText,param,oldvalue);
    newvalue:=oldvalue;
    NewValues:=TStringList.Create;
    dolist:=false;
    fOnParamList(self,param,newvalues,dolist);
    if doList then
    begin
      pt:=clienttoscreen(point(hr.left,hr.bottom));
      fParamList.top:=pt.y;
      fParamList.left:=pt.x;
      fParamlist.ownerlist:=self;
      fParamlist.Param := param;
      fParamList.parent:=self.Parent;
      fParamlist.visible:=true;
      fParamList.Items.Assign(NewValues);
      fParamList.Ctl3D:=false;
      fParamList.SizeDropDownWidth;
      fParamList.ItemIndex:=fParamList.Items.IndexOf(oldvalue);
      fParamList.SetFocus;
    end;
    NewValues.Free;
  end;
end;

procedure TParamLabel.SetBevelInner(Value: TPanelBevel);
begin
  FBevelInner := Value;
  Invalidate;
end;

procedure TParamLabel.SetBevelOuter(Value: TPanelBevel);
begin
  FBevelOuter := Value;
  Invalidate;
end;

procedure TParamLabel.SetBevelWidth(Value: TBevelWidth);
begin
  FBevelWidth := Value;
  Invalidate;
end;

procedure TParamLabel.SetBorderWidth(Value: TBorderWidth);
begin
  FBorderWidth := Value;
  Invalidate;
end;

procedure TParamLabel.SetBorderStyle(Value: TBorderStyle);
begin
 FBorderStyle := Value;
 Invalidate;
end;

Procedure TParamLabel.CMHintShow(Var Msg: TMessage);
{$IFDEF DELPHI2_LVL}
type
 PHintInfo = ^THintInfo;
{$ENDIF}
var
 CanShow: Boolean;
 hi: PHintInfo;
 hr:trect;
 anchor:string;
 
Begin
 CanShow := True;
 hi := PHintInfo(Msg.LParam);

 if fParamHint then
  begin
   anchor:=IsParam(hi^.cursorPos.x,hi^.cursorpos.y,hr);
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

procedure TParamLabel.Notification(AComponent: TComponent;
  AOperation: TOperation);
begin
 if (aOperation=opRemove) and (aComponent=fImages) then fImages:=nil;
 inherited;
end;

procedure TParamLabel.SetShadowColor(const Value: tColor);
begin
  fShadowColor := Value;
  invalidate;
end;

procedure TParamLabel.SetShadowOffset(const Value: integer);
begin
  fShadowOffset := Value;
  invalidate;
end;

procedure TParamLabel.SetHover(const Value: boolean);
begin
  fHover := Value;
  if not fHover then
   begin
    fHoverColor:=clNone;
    fHoverFontColor:=clNone;
   end;
  Invalidate;
end;

procedure TParamLabel.SetHoverColor(const Value: TColor);
begin
  fHoverColor := Value;
  Invalidate;
end;

procedure TParamLabel.SetHoverFontColor(const Value: TColor);
begin
  fHoverFontColor := Value;
  Invalidate;
end;

procedure TParamLabel.CMMouseLeave(var Msg: TMessage);
begin
 inherited;
 
 if fHover and (fHoverHyperLink<>-1) then
  HoverInvalidate(fCurrHoverRect);
 fHoverHyperLink:=-1;

 if (fAnchor<>'') and assigned(fOnParamExit) then fOnParamExit(self,fAnchor,Parameter[fAnchor]);

 fAnchor:='';
end;

function TParamLabel.GetDisplText: string;
var
 i:integer;
begin
 result:='';
 for i:=1 to fHTMLText.Count do
  result:=result+fHTMLText.Strings[i-1];
end;

function TParamLabel.GetParam(href: string): string;
var
 h:string;
begin
 if GetHRefValue(fHTMLText.text,href,h) then result:=h else result:='';
end;

procedure TParamLabel.SetParam(href: string; const Value: string);
var
 s:string;
begin
 s:=fHTMLText.Text;
 if SetHRefValue(s,href,value) then fHTMLText.Text:=s;
end;

procedure TParamLabel.SetParamHint(const Value: boolean);
begin
  fParamHint := Value;
  if fParamHint and not ShowHint then ShowHint := true;
end;


{ TPopupListBox ; Helper popup listbox object}
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
 inherited CreateParams(params);
 with Params do
   Style:=Style AND NOT (WS_CHILD) OR (WS_POPUP);
end;

procedure TPopupListBox.WMKeyDown(var Msg: TWMKeydown);
var
 oldvalue,newvalue:string;
begin
 inherited;
 case msg.charcode of
 vk_return:begin
            if (self.itemindex>=0) then
             begin
               oldvalue:=fOwnerList.Parameter[Param];
               newvalue:=self.Items[self.ItemIndex];

               fOwnerList.Parameter[Param]:=newvalue;

               if assigned(fOwnerList.fOnParamSelect) then
                 fOwnerList.fOnParamSelect(fOwnerList,Param,newvalue);

               if (oldvalue<>newvalue) then
               if assigned(fOwnerList.fOnParamChanged) then
                 fOwnerList.fOnParamChanged(fOwnerList,param,oldvalue,newvalue);
             end;

            Parent.SetFocus;
            Visible:=false;
            Parent:=nil;
           end;
 vk_Escape:begin
            Parent.SetFocus;
            Visible:=false;
            Parent:=nil;
           end;
 end;
end;

procedure TPopupListBox.WMLButtonUp(var Message: TWMLButtonDown);
begin
 inherited;
 if (self.itemindex>=0) then
  begin
   fOwnerList.Parameter[Param]:=self.Items[self.ItemIndex];
   if assigned(fOwnerList.fOnParamSelect) then
     fOwnerList.fOnParamSelect(fOwnerList,Param,self.Items[self.ItemIndex]);
  end;
 Parent.setfocus;
 Visible:=false;
 Parent:=nil;
end;

procedure TPopupListBox.WMActivate(var Message: TWMActivate);
begin
  if Message.Active=0 then Hide;
end;



end.
