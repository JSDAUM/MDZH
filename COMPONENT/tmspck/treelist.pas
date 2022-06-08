{********************************************************************
TTREELIST component
for Delphi 3.0,4.0,5.0,C++Builder 1.0,3.0,4.0,5.0
version 0.8 December 2000

written by TMS Software
           copyright © 2000
           Email : info@tmssoftware.com
           Web : http://www.tmssoftware.com

The source code is given as is. The author is not responsible
for any possible damage done due to the use of this code.
The component can be freely used in any application. The complete
source code remains property of the author and may not be distributed,
published, given or sold in any form as such. No parts of the source
code can be included in any other component or application without
written authorization of the author.
********************************************************************}

unit treelist;

{$I TMSDEFS.INC}

interface

uses
  Windows,
  Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,Clipbrd,Mask, comctrls, extctrls, commctrl;

type
 TTreeList = class;

 {$IFDEF DELPHI3_LVL}
 TColumnItem = class(TCollectionItem)
 private
  fWidth:integer;
  fAlignment:TAlignment;
  fColumnHeader:string;
  fFont:TFont;
  fImage:boolean;
  fHeaderAlign: TAlignment;
  fHeaderImage: integer;
  procedure SetWidth(const value:integer);
  procedure SetAlignment(const value:tAlignment);
  procedure SetColumnHeader(const value:string);
  procedure SetFont(const value:TFont);
  procedure SetImage(const Value: boolean);
  procedure SetHeaderAlign(const Value: TAlignment);
  procedure SetHeaderImage(const Value: integer);
 public
  constructor Create(Collection:TCollection); override;
  destructor Destroy; override;
  procedure Assign(source :TPersistent); override;
 published
  property Alignment: TAlignment read fAlignment write SetAlignment default taLeftJustify;
  property Font: TFont read fFont write SetFont;
  property Header:string read fColumnHeader write SetColumnHeader;
  property HeaderAlign: TAlignment read fHeaderAlign write SetHeaderAlign default taLeftJustify;
  property HeaderImage: integer read fHeaderImage write SetHeaderImage default -1;
  property Image: boolean read fImage write SetImage default false;
  property Width: integer read fWidth write SetWidth;
 end;

 TColumnCollection = class(TCollection)
 private
  fOwner:TTreeList;
 protected
  procedure Update(Item: TCollectionItem); override;
 public
  constructor Create(aOwner:TTreeList);
  function GetOwner: tPersistent; override;
 end;
 {$ENDIF}

 TTLHeaderClickEvent = procedure (Sender:TObject; SectionIdx:integer) of object;

 TTLHeader = class(THeader)
 private
  fColor:tColor;
  fOnClick:TTLHeaderClickEvent;
  fOnRightClick:TTLHeaderClickEvent;
  procedure WMLButtonDown(var Message: TWMLButtonDown); message WM_LBUTTONDOWN;
  procedure WMRButtonDown(var Message: TWMLButtonDown); message WM_RBUTTONDOWN;
  procedure SetColor(const Value: TColor);
 public
  constructor Create(aOwner:TComponent); override;
 protected
  procedure Paint; override;
 published
  property Color:TColor read fColor write SetColor;
  property OnClick:TTLHeaderClickEvent read fOnClick write fOnClick;
  property OnRightClick:TTLHeaderClickEvent read fOnRightClick write fOnRightClick;
 end;

 THeaderSettings = class(TPersistent)
 private
  fOwner:TTreelist;
  fHeight:integer;
  function GetFont: tFont;
  procedure SetFont(const Value: tFont);
  function GetFlat: boolean;
  procedure SetFlat(const Value: boolean);
  function GetAllowResize: boolean;
  procedure SetAllowResize(const Value: boolean);
  function GetColor: tColor;
  procedure SetColor(const Value: tColor);
  function GetHeight: integer;
  procedure SetHeight(const Value: integer);
 public
  constructor Create(aOwner:TTreeList);
 published
  property AllowResize:boolean read GetAllowResize write SetAllowResize;
  property Color:tColor read GetColor write SetColor;
  property Flat:boolean read GetFlat write SetFlat;
  property Font:tFont read GetFont write SetFont;
  property Height:integer read GetHeight write SetHeight;
 end;

 TTreeList = class(TTreeview)
 private
  { Private declarations }
  fHeader:TTLHeader;
  fHeaderSettings:THeaderSettings;
  fFlatHeader:boolean;
  fColumnCollection:TColumnCollection;
  fColumnLines:boolean;
  fColumnSpace:integer;
  fOldScrollPos:integer;
  fSeparator:string;
  fItemHeight:integer;
  fOnClick:TTLHeaderClickEvent;
  fOnRightClick:TTLHeaderClickEvent;
  procedure WMHScroll(var message:TMessage); message WM_HSCROLL;
  procedure WMLButtonDown(var message: TWMLButtonDown); message WM_LBUTTONDOWN;
  procedure WMPaint(var message: TWMPaint); message WM_PAINT;
  procedure CNNotify(var message: TWMNotify); message CN_NOTIFY;
  procedure SetColumnCollection(const Value: TColumnCollection);
  procedure SetColumnLines(const Value: boolean);
  procedure UpdateColumns;
  procedure SectionSize(sender:TObject; ASection, AWidth:integer);
  procedure HeaderClick(sender:TObject; ASection:integer); procedure HeaderRightClick(sender:TObject; ASection:integer);
  function GetColImage(idx:integer):boolean;
  function GetColWidth(idx:integer):integer;
  function GetColFont(idx:integer):TFont;
  function GetAlignment(idx:integer):integer;
  procedure SetSeparator(const Value: string);
  function GetItemHeight: integer;
  procedure SetItemHeight(const Value: integer);
  function GetVisible: boolean;
  procedure SetVisible(const Value: boolean);
 protected
  { Protected declarations }
  procedure CreateWnd; override;
  procedure DestroyWnd; override;
  function GetClientRect:TRect; override;
 public
  { Public declarations }
  constructor Create(aOwner:TComponent); override;
  destructor Destroy; override;
  procedure SetBounds(ALeft, ATop, AWidth, AHeight: Integer); override;
  procedure SetNodeColumn(tn:TTreeNode;idx:integer;value:string);
  function GetNodeColumn(tn:TTreeNode;idx:integer):string;

 published
  { Pubished declarations }
  property Columns:TColumnCollection read fColumnCollection write SetColumnCollection;
  property ColumnLines:boolean read fColumnLines write SetColumnLines;
  property Separator:string read fSeparator write SetSeparator;
  property ItemHeight:integer read GetItemHeight write SetItemHeight;
  property OnHeaderClick:TTLHeaderClickEvent read fOnClick write fOnClick;
  property OnHeaderRightClick:TTLHeaderClickEvent read fOnRightClick write fOnRightClick;
  property Visible:boolean read GetVisible write SetVisible;
  property HeaderSettings:THeaderSettings read fHeaderSettings write fHeaderSettings;
 end;

{$IFDEF VER100}
const
  NM_CUSTOMDRAW            = NM_FIRST-12;

  CDDS_PREPAINT           = $00000001;
  CDDS_POSTPAINT          = $00000002;
  CDDS_PREERASE           = $00000003;
  CDDS_POSTERASE          = $00000004;
  CDDS_ITEM               = $00010000;
  CDDS_ITEMPREPAINT       = CDDS_ITEM or CDDS_PREPAINT;
  CDDS_ITEMPOSTPAINT      = CDDS_ITEM or CDDS_POSTPAINT;
  CDDS_ITEMPREERASE       = CDDS_ITEM or CDDS_PREERASE;
  CDDS_ITEMPOSTERASE      = CDDS_ITEM or CDDS_POSTERASE;
  CDDS_SUBITEM            = $00020000;

  // itemState flags
  CDIS_SELECTED       = $0001;
  CDIS_GRAYED         = $0002;
  CDIS_DISABLED       = $0004;
  CDIS_CHECKED        = $0008;
  CDIS_FOCUS          = $0010;
  CDIS_DEFAULT        = $0020;
  CDIS_HOT            = $0040;
  CDIS_MARKED         = $0080;
  CDIS_INDETERMINATE  = $0100;

  CDRF_DODEFAULT          = $00000000;
  CDRF_NEWFONT            = $00000002;
  CDRF_SKIPDEFAULT        = $00000004;
  CDRF_NOTIFYPOSTPAINT    = $00000010;
  CDRF_NOTIFYITEMDRAW     = $00000020;
  CDRF_NOTIFYSUBITEMDRAW  = $00000020;  // flags are the same, we can distinguish by context
  CDRF_NOTIFYPOSTERASE    = $00000040;

  TVM_GETITEMHEIGHT         = TV_FIRST + 28;
  TVM_SETITEMHEIGHT         = TV_FIRST + 27;

type
  tagNMCUSTOMDRAWINFO = packed record
    hdr: TNMHdr;
    dwDrawStage: DWORD;
    hdc: HDC;
    rc: TRect;
    dwItemSpec: DWORD;  // this is control specific, but it's how to specify an item.  valid only with CDDS_ITEM bit set
    uItemState: UINT;
    lItemlParam: LPARAM;
  end;
  PNMCustomDraw = ^TNMCustomDraw;
  TNMCustomDraw = tagNMCUSTOMDRAWINFO;


  tagNMTVCUSTOMDRAW = packed record
    nmcd: TNMCustomDraw;
    clrText: COLORREF;
    clrTextBk: COLORREF;
    iLevel: Integer;
  end;
  PNMTVCustomDraw = ^TNMTVCustomDraw;
  TNMTVCustomDraw = tagNMTVCUSTOMDRAW;

function TreeView_SetItemHeight(hwnd: HWND; iHeight: Integer): Integer;

function TreeView_GetItemHeight(hwnd: HWND): Integer;

{$ENDIF}


implementation

{ TColumnItem }

constructor TColumnItem.Create(Collection:TCollection);
begin
 inherited;
 fWidth:=50;
 fFont:=TFont.Create;
 fFont.Assign((TColumnCollection(Collection).fOwner).Font);
 fHeaderImage:=-1;
 if (Index=0) and (csDesigning in (TColumnCollection(Collection).fOwner).ComponentState) then fImage:=true;
end;

destructor TColumnItem.Destroy;
begin
 fFont.Free;
 inherited Destroy;
end;

procedure TColumnItem.SetWidth(const value:integer);
begin
 fWidth:=value;
 TColumnCollection(Collection).Update(self);
end;

procedure TColumnItem.SetAlignment(const value:tAlignment);
begin
 fAlignment:=value;
 TColumnCollection(Collection).Update(self);
end;

procedure TColumnItem.SetColumnHeader(const value:string);
begin
 fColumnHeader:=value;
 TColumnCollection(Collection).Update(self);
end;

procedure TColumnItem.SetFont(const value:TFont);
begin
 fFont.Assign(value);
 TColumnCollection(Collection).Update(self);
end;


procedure TColumnItem.Assign(source: TPersistent);
begin
  if Source is TColumnItem then
  begin
   Width := TColumnItem(Source).Width;
   Alignment := TColumnItem(Source).Alignment;
   Header := TColumnItem(Source).Header;
   HeaderAlign := TColumnItem(Source).HeaderAlign;
   Font.Assign(TColumnItem(Source).Font);
   Image := TColumnItem(Source).Image;
  end
  else inherited Assign(Source);
end;

procedure TColumnItem.SetImage(const Value: boolean);
begin
  fImage := Value;
  TColumnCollection(Collection).Update(self);
end;

procedure TColumnItem.SetHeaderAlign(const Value: TAlignment);
begin
  fHeaderAlign := Value;
  TColumnCollection(Collection).Update(self);
end;

procedure TColumnItem.SetHeaderImage(const Value: integer);
begin
  fHeaderImage := Value;
  TColumnCollection(Collection).Update(self);  
end;

{ TColumnCollection }

constructor TColumnCollection.Create(aOwner:TTreeList);
begin
 inherited Create(TColumnItem);
 fOwner:=aOwner;
end;

function TColumnCollection.GetOwner:tPersistent;
begin
 result:=fOwner;
end;

procedure TColumnCollection.Update(Item:TCollectionItem);
begin
 inherited Update(Item);
 {reflect changes}
 fOwner.UpdateColumns;
end;

{ TTLHeader }

procedure TTLHeader.WMLButtonDown(var Message: TWMLButtonDown);
var
 x,i:integer;
begin
 inherited;
 x:=0;
 i:=0;
 while (x<message.xpos) and (i<sections.Count) do
  begin
   x:=x+sectionwidth[i];
   inc(i);
  end;
 dec(i);
 if assigned(fOnClick) then fOnClick(self,i);
end;

procedure TTLHeader.WMRButtonDown(var Message: TWMLButtonDown);
var
 x,i:integer;
begin
 inherited;
 x:=0;
 i:=0;
 while (x<message.xpos) and (i<sections.Count) do
  begin
   x:=x+sectionwidth[i];
   inc(i);
  end;
 dec(i);
 if assigned(fOnRightClick) then fOnRightClick(self,i);
end;

procedure TTLHeader.paint;
var
  I, W: Integer;
  S: string;
  R: TRect;
  PR: TRect;
  halign:word;

begin
  with Canvas do
  begin
    Font := Self.Font;
    Brush.Color := fColor;
    I := 0;
    R := Rect(0, 0, 0, ClientHeight);
    W := 0;
    S := '';

    halign:=DT_RIGHT;

    repeat
       with Owner as TTreeList do
        begin
         if Columns.Count>I then
         case (Columns.Items[I] as TColumnItem).HeaderAlign of
         taleftJustify:halign:=DT_LEFT;
         taRightJustify:halign:=DT_RIGHT;
         taCenter:halign:=DT_CENTER;
         else halign:=DT_LEFT;
         end;
        end;


      if I < Sections.Count then
      begin
      W := SectionWidth[i];

      if (i<sections.Count) then
         S := Sections[i]
      else s:=sections[0];


      Inc(I);
      end;

      R.Left := R.Right;
      Inc(R.Right, W);
      if (ClientWidth - R.Right < 2) or (I = Sections.Count) then
        R.Right := ClientWidth;

      pr:=r;
      fillrect(r);
      InflateRect(pr,-2,-2);

      with (Owner as TTreeList) do
       begin
        if (Columns.Count>I) and assigned(Images) then
        if ((Columns.Items[I] as TColumnItem).HeaderImage>=0) then
         begin
          Images.Draw(self.Canvas,pr.Left,pr.Top,(Columns.Items[I] as TColumnItem).HeaderImage);
          pr.Left:=pr.Left+Images.Width+2;
         end;
       end;

      DrawText(canvas.handle,pchar(s),length(s),PR,DT_NOPREFIX or DT_END_ELLIPSIS or halign);

      DrawEdge(Canvas.Handle, R, BDR_RAISEDINNER, BF_TOPLEFT);
      DrawEdge(Canvas.Handle, R, BDR_RAISEDINNER, BF_BOTTOMRight);
    until R.Right = ClientWidth;
  end;
end;



constructor TTLHeader.Create(aOwner: TComponent);
begin
  inherited;
  fColor:=clBtnFace;
end;

procedure TTLHeader.SetColor(const Value: TColor);
begin
  fColor := Value;
  invalidate;
end;

{ TTreeList }

constructor TTreeList.Create(aOwner:TComponent);
begin
 inherited Create(aOwner);
 fHeader:=nil;
 fColumnCollection:=tColumnCollection.Create(self);
 fHeaderSettings:=THeaderSettings.Create(self);
 fSeparator:=';';
 fItemHeight:=16;
 fColumnLines:=true;
 fColumnSpace:=4;
 fOldScrollPos:=-1;
 fHeader:=nil;
end;

procedure TTreeList.CreateWnd;
const
 hdr: array[boolean] of TBorderStyle = (bsSingle,bsNone);
begin
 inherited CreateWnd;
 if not assigned(fHeader) then
  begin
   fHeader:=TTLHeader.Create(self);
   fHeader.parent:=self.parent;
   fHeader.top:=Top-16;
   fHeader.left:=Left;
   fHeader.Width:=Width-1;
   fHeader.Height:=18;
   fheader.borderstyle:=hdr[fFlatHeader];
   fHeader.OnSized:=SectionSize;
   fHeader.OnClick:=HeaderClick;
   fHeader.OnRightClick:=HeaderRightClick;
  end;
 ItemHeight:=fItemHeight;
end;

procedure TTreeList.SectionSize(sender:TObject; ASection, AWidth:integer);
var
 fIndent:integer;
begin
 fIndent:=TreeView_GetIndent(self.handle);
 if assigned(Images) then fIndent:=fIndent+Images.Width;

 if (ASection=0) and (AWidth<fIndent) then
   begin
    AWidth:=fIndent;
    if assigned(fHeader) then fHeader.SectionWidth[ASection]:=fIndent;
   end;

 TColumnItem(fColumnCollection.Items[ASection]).fWidth:=AWidth;
 self.Invalidate;
end;

procedure TTreeList.HeaderClick(sender:TObject; ASection:integer);
begin
 if assigned(OnHeaderClick) then OnHeaderClick(self,ASection);
end;

procedure TTreeList.HeaderRightClick(sender:TObject; ASection:integer);
begin
 if assigned(OnHeaderRightClick) then OnHeaderRightClick(self,ASection);
end;

procedure TTreeList.DestroyWnd;
begin
 fHeader.Free;
 fHeader:=nil;
 inherited;
end;

destructor TTreeList.Destroy;
begin
 fHeaderSettings.Free;
 fColumnCollection.Free;

 inherited;
end;

procedure TTreeList.SetColumnLines(const value :boolean);
begin
 if (fColumnLines<>value) then
  begin
   fColumnLines:=value;
   if fColumnLines then fColumnSpace:=4 else fColumnSpace:=2;
   self.Invalidate;
  end;
end;

procedure TTreeList.SetColumnCollection(const value :TColumnCollection);
begin
 fColumnCollection.Assign(value);
end;

procedure TTreeList.SetBounds(ALeft, ATop, AWidth, AHeight: Integer);
begin
  if Align in [alClient,alTop] then
   begin
    inherited SetBounds(ALeft,ATop+fHeaderSettings.height-2,AWidth,AHeight{-(fHeaderSettings.height-2)});
    if assigned(fHeader) then
     begin
      fHeader.top:=ATop;
      fHeader.left:=ALeft;
      fHeader.Width:=AWidth-1;
      fHeader.Height:=fHeaderSettings.Height;
     end;
   end
  else
   begin
    inherited SetBounds(ALeft,ATop,AWidth,AHeight);
    if assigned(fHeader) then
     begin
      fHeader.top:=ATop-(fHeaderSettings.height-2);
      fHeader.left:=ALeft;
      fHeader.Width:=AWidth-1;
      fHeader.Height:=fHeaderSettings.height;
     end;
   end;
end;


procedure TTreeList.UpdateColumns;
var
 i:integer;
begin
 if assigned(fHeader) then
  begin
    fHeader.Sections.Clear;
    for i:=1 to fColumnCollection.Count do
     begin
      fHeader.Sections.Add(TColumnItem(fColumnCollection.Items[i-1]).Header);
      fHeader.SectionWidth[i-1]:=TColumnItem(fColumnCollection.Items[i-1]).Width;
     end;
    self.Invalidate;
  end;
end;

function TTreeList.GetColImage(idx:integer):boolean;
begin
 if idx>=fColumnCollection.Count then result:=false
 else
  result:=TColumnItem(fColumnCollection.Items[idx]).fImage;
end;

function TTreeList.GetColWidth(idx:integer):integer;
begin
 if idx>=fColumnCollection.Count then result:=self.width
 else result:=TColumnItem(fColumnCollection.Items[idx]).fWidth;
end;

function TTreeList.GetColFont(idx:integer):TFont;
begin
 if idx>=fColumnCollection.Count then result:=self.Font
 else result:=TColumnItem(fColumnCollection.Items[idx]).fFont;
end;

function TTreeList.GetAlignment(idx:integer):integer;
begin
 if idx>=fColumnCollection.Count then result:=DT_LEFT
 else
  case TColumnItem(fColumnCollection.Items[idx]).fAlignment of
  taLeftJustify:result:=DT_LEFT;
  taCenter:result:=DT_CENTER;
  taRightJustify:result:=DT_RIGHT
  else result:=DT_LEFT;
  end;
end;

procedure TTreeList.CNNotify(var message: TWMNotify);
var
  TVcd:TNMTVCustomDraw;
  TVdi:TTVDISPINFO;
  canvas:tcanvas;
  s,su:string;
  tn:ttreenode;
  r:trect;
  fIndent,fIdx,fImgWidth:integer;

begin
  if message.NMHdr^.code = TVN_GETDISPINFO then
   begin
    TVDi := PTVDispInfo(pointer(message.nmhdr))^;
    if (tvdi.item.mask and TVIF_TEXT=TVIF_TEXT) then
     begin
       tn := Items.GetNode(tvdi.item.hitem);
       s := tn.Text;
       StrpCopy(tvdi.item.pszText,s);
       tvdi.Item.Mask := tvdi.item.mask or TVIF_DI_SETITEM;
       message.result:=0;
       Exit;
     end;
   end;

  if message.NMHdr^.code = NM_CUSTOMDRAW then
  begin
    fIndent:=TreeView_GetIndent(self.handle);
    TVcd:=PNMTVCustomDraw(Pointer(message.NMHdr))^;
    case TVcd.nmcd.dwDrawStage of
      CDDS_PREPAINT     : message.Result:=CDRF_NOTIFYITEMDRAW or CDRF_NOTIFYPOSTPAINT;
      CDDS_ITEMPREPAINT : begin
                            if  (TVcd.nmcd.uItemState and CDIS_SELECTED=CDIS_SELECTED) then
                              begin
                               TVcd.nmcd.uItemState:=TVcd.nmcd.uItemState and (not CDIS_SELECTED);
                               SetTextColor(TVcd.nmcd.hdc,ColorToRGB(self.Color));
                               SetBkColor(TVcd.nmcd.hdc,ColorToRGB(self.Color));
                               TVcd.clrTextBk:=colortorgb(self.Color);
                               TVcd.clrText:=colortorgb(self.Color);
                              end
                            else
                              begin
                               SetTextColor(TVcd.nmcd.hdc,ColorToRGB(self.Color));
                               SetBkColor(TVcd.nmcd.hdc,ColorToRGB(self.Color));
                              end;
                            message.Result:=CDRF_NOTIFYPOSTPAINT;
                          end;

      CDDS_ITEMPOSTPAINT :begin
                            canvas:=tcanvas.Create;
                            canvas.handle:=TVcd.nmcd.hdc;

                            tn:=Items.GetNode(HTReeItem(TVcd.nmcd.dwitemSpec));
                            {get left pos from tree level}
                            TVcd.nmcd.rc.left:=TVcd.nmcd.rc.left+fIndent*(tn.level+1)-getscrollpos(handle,SB_HORZ);

                            {paint image in first column}
                            fImgWidth:=0;
                            if assigned(Images) and GetColImage(0) and (tn.ImageIndex>=0) then
                              begin
                                outputdebugstring('image in col 0');
                                fImgWidth:=Images.Width;
                                canvas.brush.color:=self.Color;
                                canvas.pen.color:=self.Color;
                                canvas.rectangle(TVcd.nmcd.rc.left,TVcd.nmcd.rc.top,TVcd.nmcd.rc.left+fImgWidth,TVcd.nmcd.rc.bottom);
                                if (TVcd.nmcd.rc.left+fImgWidth<GetColWidth(0)) then
                                 begin
                                  images.draw(canvas,TVcd.nmcd.rc.left,TVcd.nmcd.rc.top,tn.ImageIndex );
                                 end;
                              end;

                            TVcd.nmcd.rc.left:=TVcd.nmcd.rc.left+fImgWidth;

                            r:=TVcd.nmcd.rc;

                            fIdx:=canvas.textheight('gh');
                            if (fIdx<r.bottom-r.top) then
                             r.top:=r.top+((r.bottom-r.top-fIdx) shr 1);

                            if  (TVcd.nmcd.uItemState and CDIS_SELECTED=CDIS_SELECTED) then
                              begin
                               canvas.brush.color:=clHighLight;
                               canvas.pen.color:=clHighLight;
                               with TVcd.nmcd.rc do canvas.rectangle(left,top,right,bottom);
                               canvas.font.Color:=clHighLightText;
                               if  (TVcd.nmcd.uItemState and CDIS_FOCUS=CDIS_FOCUS) then
                                 begin
                                  canvas.pen.color:=self.Color;
                                  canvas.brush.color:=self.Color;
                                  canvas.DrawFocusRect(TVcd.nmcd.rc);
                                 end;
                               TVcd.nmcd.rc:=r;
                               TVcd.nmcd.rc.left:=TVcd.nmcd.rc.left+4;
                              end
                            else
                              begin
                               canvas.brush.color:=self.Color;
                               canvas.pen.color:=self.Color;
                               with TVcd.nmcd.rc do canvas.rectangle(left,top,right,bottom);
                              end;

                            TVcd.nmcd.rc:=r;

                            if  (TVcd.nmcd.uItemState and CDIS_SELECTED=CDIS_SELECTED) then
                              begin
                               canvas.brush.color:=clHighLight;
                               canvas.pen.color:=clHighLight;
                              end;
                            s:=tn.text;
                            fIdx:=0;

                            setbkmode(TVcd.nmcd.hdc,TRANSPARENT);

                            repeat
                             canvas.Font.Assign(GetColFont(fIdx));
                             if  (TVcd.nmcd.uItemState and CDIS_SELECTED=CDIS_SELECTED) then
                               begin
                                canvas.font.color:=clHighLightText;
                               end;

                             if (fIdx=0) then
                              r.right:=GetColWidth(fIdx)
                             else
                              r.right:=r.left+GetColWidth(fIdx);//+getScrollPos(self.handle,SB_HORZ);

                             if (pos(fSeparator,s)>0) then
                               begin
                                su:=copy(s,1,pos(fSeparator,s)-1);
                                system.delete(s,1,pos(fSeparator,s)+length(fSeparator)-1);
                               end
                             else
			       begin

			        su:=s;
                                s:='';
                                if (fIdx>=fColumnCollection.Count) then
                                r.right:=TVcd.nmcd.rc.right;
                               end;

                             r.right:=r.right-fColumnSpace;

                             if assigned(Images) and GetColImage(fIdx) and (tn.ImageIndex>=0) and (fIdx>0) then
                              begin
                                fImgWidth:=Images.Width;
                                if (fImgWidth<GetColWidth(fIdx)) then
                                  images.draw(canvas,r.left,TVcd.nmcd.rc.top,tn.ImageIndex );
                                r.left:=r.left+fImgWidth+2;
                              end;


                             DrawText(canvas.handle,pchar(su),length(su),r,DT_END_ELLIPSIS or GetAlignment(fIdx));
                             r.right:=r.right+fColumnSpace;

                             r.left:=r.right;
                             inc(fIdx);

                            until (length(s)=0);

                            canvas.Free;
                           end;

     else message.Result:=0;
    end;
  end
  else inherited;
end;

procedure TTreeList.SetSeparator(const Value: string);
begin
  fSeparator := Value;
  self.Invalidate;
end;

procedure TTreeList.WMLButtonDown(var message: TWMLButtonDown);
var
 Node : TTreeNode;
begin
 if not (csDesigning in ComponentState) then inherited else exit;
 Node:=GetNodeAt(message.XPos,message.YPos);
 if assigned(Node) then
  begin
   Node.selected:=true;
  end;
end;

procedure TTreeList.WMHScroll(var message:TMessage);
begin
 inherited;
 if fOldScrollPos<>GetScrollPos(handle,SB_HORZ) then
   begin
    Invalidate;
    fOldScrollPos:=GetScrollPos(handle,SB_HORZ);
   end;
end;

procedure TTreeList.WMPaint(var message: TWMPaint);
var
 canvas:tcanvas;
 i:integer;
 xp:integer;
begin
 inherited ;
 if fColumnLines then
  begin
   canvas:=tcanvas.create;
   canvas.handle:=getdc(self.handle);
   xp:=0;
   canvas.pen.color:=clSilver;
   for i:=1 to fColumnCollection.Count-1 do
    begin
     xp:=xp+TColumnItem(fColumnCollection.Items[i-1]).Width;
     canvas.MoveTo (xp-2-getScrollPos(self.handle,SB_HORZ),0);
     canvas.Lineto (xp-2-getScrollPos(self.handle,SB_HORZ),height);
    end;
   releasedc(self.handle,canvas.handle);
   canvas.free;
  end;
end;

function TTreeList.GetItemHeight: integer;
begin
  result:=TreeView_GetItemHeight(self.Handle);
end;

procedure TTreeList.SetItemHeight(const Value: integer);
begin
 if (value<>fItemHeight) then
  begin
   fItemHeight:=value;
   TreeView_SetItemHeight(self.Handle,fItemHeight);
  end;
end;


{$IFDEF VER100}
function TreeView_SetItemHeight(hwnd: HWND; iHeight: Integer): Integer;
begin
  Result := SendMessage(hwnd, TVM_SETITEMHEIGHT, iHeight, 0);
end;

function TreeView_GetItemHeight(hwnd: HWND): Integer;
begin
  Result := SendMessage(hwnd, TVM_GETITEMHEIGHT, 0, 0);
end;
{$ENDIF}



function TTreeList.GetVisible: boolean;
begin
 result:=inherited Visible;
end;

procedure TTreeList.SetVisible(const Value: boolean);
begin
 inherited Visible:=value;
 if value and assigned(fHeader) then fHeader.Show else fHeader.Hide;
end;

function TTreeList.GetClientRect: TRect;
var
 r:trect;
begin
 r:=inherited GetClientRect;
 r.bottom:=r.bottom+fHeaderSettings.Height;
 result:=r;
end;


function TTreeList.GetNodeColumn(tn: TTreeNode; idx: integer):string;
var
 s:string;
 i:integer;
begin
 result:='';
 if assigned(tn) then
 s:=tn.Text else exit;

 i:=0;
 while (i<=idx) and (s<>'') do
  begin
   if (pos(Separator,s)>0) then
    begin
     if (idx=i) then result:=copy(s,1,pos(Separator,s)-1);
     system.delete(s,1,pos(Separator,s));
     inc(i);
    end
   else s:='';
  end;

end;

procedure TTreeList.SetNodeColumn(tn: TTreeNode; idx: integer;
  value: string);
var
 s,su:string;
 i:integer;

begin
 if assigned(tn) then
 s:=tn.Text else exit;

 i:=0;
 su:='';
 while (i<=idx) and (s<>'') do
  begin
   if (pos(Separator,s)>0) then
    begin
     if (i<idx) then su:=su+copy(s,1,pos(Separator,s));
     if (i=idx) then su:=su+value+Separator;
     system.delete(s,1,pos(Separator,s));
     inc(i);
    end
   else
    begin
     s:='';
     if (i=idx) then su:=su+value;
     inc(i);
    end;
  end;
 su:=su+s;
 tn.Text:=su;
end;




{ THeaderSettings }

constructor THeaderSettings.Create(aOwner: TTreeList);
begin
 inherited Create;
 fOwner:=aOwner;
 fHeight:=18;
end;

function THeaderSettings.GetAllowResize: boolean;
begin
 result:=true;
 if assigned(fOwner.fHeader) then
  result:=fOwner.fHeader.AllowResize;
end;

function THeaderSettings.GetColor: tColor;
begin
 result:=clBtnFace;
 if assigned(fOwner.fHeader) then
  result:=fOwner.fHeader.Color;
end;

function THeaderSettings.GetFlat: boolean;
begin
 if assigned(fOwner.fHeader) then
 result:=(fOwner.fHeader.BorderStyle=bsNone) else result:=false;
end;

function THeaderSettings.GetFont: tFont;
begin
 if assigned(fOwner.fHeader) then result:=fOwner.fHeader.Font else result:=nil;
end;

function THeaderSettings.GetHeight: integer;
begin

 if assigned(fOwner.fHeader) then
  result:=fOwner.fHeader.Height
 else
  result:=fHeight;
end;

procedure THeaderSettings.SetAllowResize(const Value: boolean);
begin
 if assigned(fOwner.fHeader) then
  fOwner.fHeader.AllowResize:=value;
end;

procedure THeaderSettings.SetColor(const Value: tColor);
begin
 if assigned(fOwner.fHeader) then
  fOwner.fHeader.Color:=value;
end;

procedure THeaderSettings.SetFlat(const Value: boolean);
begin
 if assigned(fOwner.fHeader) then
 begin
   if value then
    fOwner.fHeader.BorderStyle:=bsNone
   else
    fOwner.fHeader.BorderStyle:=bsSingle;
 end;
end;

procedure THeaderSettings.SetFont(const Value: tFont);
begin
 if assigned(fOwner.fHeader) then
 fOwner.fHeader.Font.Assign(value);
end;

procedure THeaderSettings.SetHeight(const Value: integer);
begin
 if assigned(fOwner.fHeader) then
  fOwner.fHeader.height:=value;
 fHeight:=value;
 fOwner.top:=fOwner.top
end;

end.
