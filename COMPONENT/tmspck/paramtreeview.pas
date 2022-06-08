{**************************************************************************}
{ TParamTreeview component                                                 }
{ for Delphi 3.0,4.0,5.0,6.0 + C++Builder 3.0,4.0,5.0                      }
{ version 1.0, July 2001                                                   }
{                                                                          }
{ Copyright © 2001                                                         }
{  TMS Software                                                            }
{  Email : info@tmssoftware.com                                            }
{  Web : http://www.tmssoftware.com                                        }
{                                                                          }
{ The source code is given as is. The author is not responsible            }
{ for any possible damage done due to the use of this code.                }
{ The component can be freely used in any application. The complete        }
{ source code remains property of the author and may not be distributed,   }
{ published, given or sold in any form as such. No parts of the source     }
{ code can be included in any other component or application without       }
{ written authorization of the author.                                     }
{**************************************************************************}

unit paramtreeview;

{$I TMSDEFS.INC}
{$DEFINE PARAMS}

interface

uses
  Windows, Classes, Comctrls, Messages, Controls, Graphics, Menus, StdCtrls,
  Spin, Forms;

{$IFNDEF DELPHI3_LVL}
const
  crHandPoint = crUpArrow;
{$ENDIF}

type
  TParamTreeViewClickEvent = procedure(Sender:TObject;ANode: TTreeNode; href: string;var value: string) of object;
  TParamTreeViewPopupEvent = procedure(Sender:TObject;ANode: TTreeNode; href: string;values:TStringlist;var DoPopup: Boolean) of object;
  TParamTreeViewSelectEvent = procedure(Sender:TObject;ANode: TTreeNode; href,value: string) of object;
  TParamTreeViewChangedEvent = procedure(Sender:TObject;ANode: TTreeNode; href,oldvalue,newvalue: string) of object;
  TParamTreeViewHintEvent = procedure(Sender:TObject; ANode: TTreeNode; href: string; var hintvalue: string; var showhint: Boolean) of object;

  TParamTreeviewCustomShowEvent = procedure(Sender:TObject; ANode: TTreeNode; href:string; var value:string;ARect:TRect) of object;

  TParamTreeview = class;

  TPopupListBox = class(TListBox)
  private
    FParam: string;
    FOwnerList:TParamTreeview;
    procedure WMKeyDown(var Msg:TWMKeydown); message WM_KEYDOWN;
    procedure WMLButtonUp(var Message: TWMLButtonDown); message WM_LBUTTONUP;
    procedure WMLButtonDown(var Message: TWMLButtonDown); message WM_LBUTTONDOWN;
    procedure WMActivate(var Message: TWMActivate); message WM_ACTIVATE;
  protected
    procedure CreateParams(var Params:TCreateParams); override;
    procedure SizeDropDownWidth;
  public
    property OwnerList:TParamTreeview read FOwnerList write FOwnerList;
    property Param: string read FParam write FParam;
  end;

  TPopupSpinEdit = class(TSpinEdit)
  private
    FCancelled: Boolean;
    FParam: string;
    FOwnerList:TParamTreeview;
    procedure WMKeyDown(var Msg:TWMKeydown); message WM_KEYDOWN;
    procedure WMActivate(var Message: TWMActivate); message WM_ACTIVATE;
  protected
    procedure CreateParams(var Params:TCreateParams); override;
  public
    property Cancelled: Boolean read FCancelled write FCancelled;
    property OwnerList:TParamTreeview read FOwnerList write FOwnerList;
    property Param: string read FParam write FParam;
  end;

  TPopupEdit = class(TEdit)
  private
    FCancelled: Boolean;
    FParam: string;
    FOwnerList:TParamTreeview;
    procedure WMKeyDown(var Msg:TWMKeydown); message WM_KEYDOWN;
    procedure WMActivate(var Message: TWMActivate); message WM_ACTIVATE;
  protected
    procedure CreateParams(var Params:TCreateParams); override;
  public
    property Cancelled: Boolean read FCancelled write FCancelled;
    property OwnerList:TParamTreeview read FOwnerList write FOwnerList;
    property Param: string read FParam write FParam;
  end;

  TPopupDatePicker = class(TDateTimePicker)
  private
    FCancelled: Boolean;
    FParam: string;
    FOwnerList:TParamTreeview;
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
    property OwnerList:TParamTreeview read FOwnerList write FOwnerList;
    property Param: string read FParam write FParam;
  end;

  TParamTreeview = class(TCustomTreeView)
  private
    { Private declarations }
    FIndent:integer;
    FOldCursor:integer;
    FOldScrollPos:integer;
    FParamColor: TColor;
    FSelectionColor: TColor;
    FSelectionFontColor: TColor;
    FItemHeight: Integer;
    FImages: TImageList;
    FParamPopup: TPopupMenu;
    FParamList: TPopupListBox;
    FParamDatePicker: TPopupDatePicker;
    FParamSpinEdit: TPopupSpinEdit;
    FParamEdit: TPopupEdit;
    FOldParam: string;
    FOnParamChanged: TParamTreeViewChangedEvent;
    FOnParamClick: TParamTreeViewClickEvent;
    FOnParamHint: TParamTreeViewHintEvent;
    FOnParamPopup: TParamTreeViewPopupEvent;
    FOnParamList: TParamTreeViewPopupEvent;
    FOnParamSelect: TParamTreeViewSelectEvent;
    FOnParamEnter: TParamTreeViewSelectEvent;
    FOnParamExit: TParamTreeViewSelectEvent;
    FParamListSorted: Boolean;
    FShowSelection: Boolean;
    FOnParamPrepare: TParamTreeViewClickEvent;
    FParamHint: Boolean;
    FShadowColor: TColor;
    FShadowOffset: Integer;
    FUpdateCount: Integer;
    procedure CMHintShow(Var Msg: TMessage); message CM_HINTSHOW;
    procedure CMDesignHitTest(var message: TCMDesignHitTest); message CM_DESIGNHITTEST;
    procedure CNNotify(var message: TWMNotify); message CN_NOTIFY;
    procedure WMLButtonDown(var message: TWMLButtonDown); message WM_LBUTTONDOWN;
    procedure WMMouseMove(var message: TWMMouseMove); message WM_MOUSEMOVE;
    procedure WMHScroll(var message:TMessage); message WM_HSCROLL;
    procedure WMSize(var message:TMessage); message WM_SIZE;
    function GetItemHeight: integer;
    procedure SetItemHeight(const Value: integer);
    procedure SetSelectionColor(const Value: tcolor);
    procedure SetSelectionFontColor(const Value: tcolor);
    procedure SetParamColor(const Value: tcolor);
    procedure SetImages(const Value: TImageList);
    procedure SetShowSelection(const Value: Boolean);
    function GetNodeParameter(Node: TTreeNode; HRef: String): string;
    procedure SetNodeParameter(Node: TTreeNode; HRef: String;
      const Value: string);
    function IsParam(x,y:Integer;var Node: TTreeNode; var HR: TRect): string;
    function HTMLPrep(s:string):string;
    function InvHTMLPrep(s:string):string;
    procedure SetShadowColor(const Value: TColor);
    procedure SetShadowOffset(const Value: Integer);
  protected
    { Protected declarations }
    procedure HandlePopup(Sender:TObject); virtual;
    procedure Notification(AComponent: TComponent; AOperation: TOperation); override;
    procedure Loaded; override;
    procedure CreateWnd; override;
    procedure UpdateParam(Param,Value:string);
    procedure PrepareParam(Param:string; var Value:string);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure BeginUpdate; virtual;
    procedure EndUpdate; virtual;
    property NodeParameter[Node: TTreeNode; HRef: String]:string read GetNodeParameter write SetNodeParameter;
    function GetParamInfo(Node: TTreeNode; HRef:string; var AValue, AClass, AProp: string): Boolean;
    property DateTimePicker: TPopupDatePicker read FParamDatePicker;
    property SpinEdit: TPopupSpinEdit read FParamSpinEdit;
    property Editor: TPopupEdit read FParamEdit;
    property ListBox: TPopupListBox read FParamList;
  published
    { Published declarations }
    {new introduced properties}
    property HTMLImages:TImageList read FImages write SetImages;
    property ItemHeight:integer read GetItemHeight write SetItemHeight;
    property SelectionColor: TColor read fSelectionColor write SetSelectionColor;
    property SelectionFontColor: TColor read fSelectionFontColor write SetSelectionFontColor;
    property ShowSelection: Boolean read FShowSelection write SetShowSelection default False;
    property ParamColor: TColor read FParamColor write SetParamColor;
    property ParamHint: Boolean read FParamHint write FParamHint;
    property ShadowColor: TColor read FShadowColor write SetShadowColor;
    property ShadowOffset: Integer read FShadowOffset write SetShadowOffset;

    property OnParamPrepare: TParamTreeViewClickEvent read FOnParamPrepare write FOnParamPrepare;
    property OnParamClick: TParamTreeViewClickEvent read FOnParamClick write FOnParamClick;
    property OnParamPopup: TParamTreeViewPopupEvent read FOnParamPopup write FOnParamPopup;
    property OnParamList: TParamTreeViewPopupEvent read FOnParamList write FOnParamList;
    property OnParamSelect: TParamTreeViewSelectEvent read FOnParamSelect write FOnParamSelect;
    property OnParamChanged: TParamTreeViewChangedEvent read FOnParamChanged write FOnParamChanged;
    property OnParamHint: TParamTreeViewHintEvent read FOnParamHint write FOnParamHint;
    property OnParamEnter: TParamTreeViewSelectEvent read FOnParamEnter write FOnParamEnter;
    property OnParamExit: TParamTreeViewSelectEvent read FOnParamExit write FOnParamExit;

    {reintroduced properties}
    property Align;
    {$IFDEF DELPHI4_LVL}
    property Anchors;
    property AutoExpand;
    property BiDiMode;
    property BorderWidth;
    property ChangeDelay;
    property Constraints;
    property DragKind;
    property HotTrack;
    property ParentBiDiMode;
    property RowSelect;
    property OnCustomDraw;
    property OnCustomDrawItem;
    property OnEndDock;
    property OnStartDock;
    {$ENDIF}
    property BorderStyle;
    property Color;
    property Ctl3D;
    property DragCursor;
    property DragMode;
    property Enabled;
    property Font;
    property HideSelection;
    //property Images;
    property Indent;
    property Items;
    property ParamListSorted: Boolean read FParamListSorted write FParamListSorted;
    property ParentColor default False;
    property ParentCtl3D;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property RightClickSelect;
    property ShowButtons;
    property ShowHint;
    property ShowLines;
    property ShowRoot;
    property SortType;
    property StateImages;
    property TabOrder;
    property TabStop default True;
    {$IFDEF DELPHI4_LVL}
    property ToolTips;
    {$ENDIF}
    property Visible;
    property OnChange;
    property OnChanging;
    property OnClick;
    property OnCollapsing;
    property OnCollapsed;
    property OnCompare;
    property OnDblClick;
    property OnDeletion;
    property OnDragDrop;
    property OnDragOver;
    property OnEdited;
    property OnEditing;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnExpanding;
    property OnExpanded;
    property OnGetImageIndex;
    property OnGetSelectedIndex;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDrag;
  end;


  
implementation
uses
  CommCtrl, Shellapi, SysUtils
{$IFDEF DELPHI4_LVL}
  ,ImgList
{$ENDIF}
  ;

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
begin
  Result := SendMessage(hwnd, TVM_SETITEMHEIGHT, iHeight, 0);
end;

function TreeView_GetItemHeight(hwnd: HWND): Integer;
begin
  Result := SendMessage(hwnd, TVM_GETITEMHEIGHT, 0, 0);
end;

{$ENDIF}

{$I HTMLENGN.PAS}

procedure TParamTreeview.CMDesignHitTest(var message: TCMDesignHitTest);
begin
  if htOnItem in GetHitTestInfoAt(message.XPos,message.YPos) then
    message.Result := 1
  else
    message.Result := 0;
end;

procedure TParamTreeview.CNNotify(var message: TWMNotify);
var
  TVcd:TNMTVCustomDraw;
  TVdi:TTVDISPINFO;
  Canvas: TCanvas;
  a,s,fa: string;
  xsize,ysize,ml,hl: Integer;
  tn: TTreenode;
  r,hr: TRect;
  urlcol: TColor;

begin
  if message.NMHdr^.code = TVN_GETDISPINFO then
  begin
    TVDi:=PTVDispInfo(pointer(message.nmhdr))^;

    if (tvdi.item.mask and TVIF_TEXT=TVIF_TEXT) then
    begin
      tn:=items.getnode(tvdi.item.hitem);
      s:=HTMLStrip(tn.text);
      strpcopy(tvdi.item.pszText,s);
      tvdi.item.mask := tvdi.item.mask or TVIF_DI_SETITEM;
      message.result:=0;
      Exit;
    end;
  end;

  if message.NMHdr^.code = NM_CUSTOMDRAW then
  begin
    FIndent := TreeView_GetIndent(Handle);
    TVcd := PNMTVCustomDraw(Pointer(message.NMHdr))^;
    case TVcd.nmcd.dwDrawStage of
    CDDS_PREPAINT: message.Result:=CDRF_NOTIFYITEMDRAW or CDRF_NOTIFYPOSTPAINT;
    CDDS_ITEMPREPAINT:
      begin
        if  (TVcd.nmcd.uItemState and CDIS_SELECTED = CDIS_SELECTED) then
        begin
          TVcd.nmcd.uItemState := TVcd.nmcd.uItemState and (not CDIS_SELECTED);
          SetTextColor(TVcd.nmcd.hdc,ColorToRGB(Color));
          SetBkColor(TVcd.nmcd.hdc,ColorToRGB(Color));
          TVcd.clrTextBk := ColorToRGB(Color);
          TVcd.clrText := ColorToRGB(Color);
        end
        else
        begin
          SetTextColor(TVcd.nmcd.hdc,ColorToRGB(Color));
          SetBkColor(TVcd.nmcd.hdc,ColorToRGB(Color));
        end;
        message.Result:=CDRF_NOTIFYPOSTPAINT;
      end;
    CDDS_ITEMPOSTPAINT:
      begin
        Canvas := TCanvas.Create;
        Canvas.Handle := TVcd.nmcd.hdc;
        Canvas.Font.Assign(Self.Font);
        tn := Items.GetNode(HTReeItem(TVcd.nmcd.dwitemSpec));
        TVcd.nmcd.rc.left := TVcd.nmcd.rc.left + fIndent*(tn.level+1)-getscrollpos(handle,SB_HORZ);

        HTMLDraw(Canvas,tn.Text,TVcd.nmcd.rc,TImageList(FImages),0,0,False,True,False,True,True,True,
          1.0,clBlue,a,s,xsize,ysize);

        r := TVcd.nmcd.rc;

        if (ysize < r.bottom - r.top) then
          r.top := r.top+((r.bottom-r.top-ysize) shr 1);

        if  (TVcd.nmcd.uItemState and CDIS_SELECTED = CDIS_SELECTED) then
        begin
          if FShowSelection then
          begin
            Canvas.Brush.Color := FSelectionColor;
            Canvas.Pen.Color := FSelectionColor;
            Canvas.Font.Color := FSelectionFontColor;
          end;

          with TVcd.nmcd.rc do
            Canvas.Rectangle(Left,Top,Right,Bottom);

          if  (TVcd.nmcd.uItemState and CDIS_FOCUS = CDIS_FOCUS) then
          begin
            Canvas.Pen.Color := clWhite;
            Canvas.Brush.color := clWhite;
            Canvas.DrawFocusRect(TVcd.nmcd.rc);
          end;
          TVcd.nmcd.rc := r;
          TVcd.nmcd.rc.left := TVcd.nmcd.rc.left + xsize + 4;
        end
        else
        begin
          Canvas.Brush.Color := self.Color;
          Canvas.Pen.Color := self.Color;
          with TVcd.nmcd.rc do
            Canvas.Rectangle(left,top,right,bottom);
        end;

        TVcd.nmcd.rc := r;
        TVcd.nmcd.rc.Left := TVcd.nmcd.rc.Left + 2;

        urlcol := FParamColor;

        if  (TVcd.nmcd.uItemState and CDIS_SELECTED = CDIS_SELECTED) and FShowSelection then
        begin
          Canvas.Brush.Color := FSelectionColor;
          Canvas.Pen.Color := FSelectionColor;
          Urlcol := FSelectionFontColor;
        end;

        HTMLDrawEx(Canvas,tn.Text,TVcd.nmcd.rc,TImageList(FImages),0,0,-1,-1,FShadowOffset,
          False,False,False,((TVcd.nmcd.uItemState and CDIS_SELECTED) = CDIS_SELECTED) and FShowSelection,
          True,False,True,1.0,urlcol,clNone,clNone,FShadowColor,a,s,fa,xsize,ysize,hl,ml,hr);

        Canvas.Free;
      end;
      else
        message.Result := 0;
    end;
  end
  else inherited;
end;

procedure TParamTreeview.WMLButtonDown(var message: TWMLButtonDown);
var
  Node: TTreeNode;
  a, s, oldvalue,newvalue,v,c,p: string;
  i, FIndent: Integer;
  NewValues: TStringList;
  NewMenu: TMenuItem;
  DoPopup,DoList: Boolean;
  pt: TPoint;
  hr: TRect;

  function Max(a,b:Integer): Integer;
  begin
    if a > b then
      Result := a
    else
      Result := b;
  end;

begin
  inherited;

  if csDesigning in ComponentState then
    Exit;

  Node := GetNodeAt(message.XPos,message.YPos);
  if Assigned(Node) then
  begin
    a := IsParam(Message.XPos,Message.Ypos,Node,hr);

    if a <> '' then
    begin
      GetParamInfo(Node,a,v,c,p);

      if Assigned(FOnParamClick) then
      begin
        GetHRefValue(Node.Text,a,OldValue);
        NewValue := OldValue;
        FOnParamClick(Self,Node,a,NewValue);
        if (newvalue <> oldvalue) then
        begin
          s := Node.Text;
          SetHRefValue(s,a,newvalue);
          if Assigned(FOnParamChanged) then
            FOnParamChanged(self,Node,a,OldValue,NewValue);
          Node.Text := s;
        end;
      end;

      if Assigned(FOnParamPopup) or (c = 'MENU') then
      begin
        GetHRefValue(Node.Text,a,OldValue);
        newvalue := oldvalue;
        NewValues := TStringList.Create;
        NewValues.Sorted := FParamListSorted;
        DoPopup := c = 'MENU';
        if c <> 'MENU' then
          FOnParamPopup(self,Node,a,NewValues,DoPopup)
        else
          NewValues.CommaText := InvHTMLPrep(p);

        if DoPopup then
        begin
          FIndent := TreeView_GetIndent(Handle);
          pt := ClientToScreen(Point(hr.Left,hr.Bottom));

          pt.X := pt.X + FIndent * (Node.Level + 1) - GetScrollPos(Handle,SB_HORZ);

          while FParamPopup.Items.Count>0 do
            FParamPopup.Items[0].Free;

          for i:=1 to NewValues.Count do
          begin
            NewMenu := TMenuItem.Create(Self);
            NewMenu.Caption := NewValues.Strings[i - 1];
            NewMenu.OnClick := HandlePopup;
            FParamPopup.Items.Add(newmenu);
          end;

          FOldParam := a;

          PrepareParam(a,v);

          FParamPopup.Popup(pt.x,pt.y+2);
        end;
        NewValues.Free;
      end;

      if c = 'DATE' then
      begin
        FIndent := TreeView_GetIndent(Handle);
        pt := Clienttoscreen(Point(hr.left,hr.top));
        pt.X := pt.X + FIndent * (Node.Level + 1) - GetScrollPos(Handle,SB_HORZ);

        FParamDatePicker.Top := pt.Y - 2;
        FParamDatePicker.Left := pt.X + 2;
        FParamDatePicker.Width := Max(64,hr.Right - hr.Left);

        FParamDatePicker.Cancelled := False;
        FParamDatePicker.Parent := Self;
        FParamDatePicker.OwnerList := Self;
        FParamDatePicker.Param := a;
        FParamDatePicker.Visible := True;

        PrepareParam(a,v);

        FParamDatePicker.Date := StrToDate(v);
        FParamDatePicker.SetFocus;
      end;

      if c = 'SPIN' then
      begin
        FIndent := TreeView_GetIndent(Handle);
        pt := Clienttoscreen(Point(hr.left,hr.top));
        pt.X := pt.X + FIndent * (Node.Level + 1) - GetScrollPos(Handle,SB_HORZ);

        FParamSpinEdit.Top := pt.Y - 2;
        FParamSpinEdit.Left := pt.X + 2;
        FParamSpinEdit.Width := Max(16,hr.Right - hr.Left) + 16;

        FParamSpinEdit.Cancelled := False;
        FParamSpinEdit.Parent := Self;
        FParamSpinEdit.OwnerList := Self;
        FParamSpinEdit.Param := a;
        FParamSpinEdit.Visible := True;

        PrepareParam(a,v);

        FParamSpinEdit.Value := StrToInt(v);
        FParamSpinEdit.SetFocus;
      end;

      if c = 'EDIT' then
      begin
        FIndent := TreeView_GetIndent(Handle);
        pt := Clienttoscreen(Point(hr.left,hr.top));
        pt.X := pt.X + FIndent * (Node.Level + 1) - GetScrollPos(Handle,SB_HORZ);

        FParamEdit.Top := pt.Y - 2;
        FParamEdit.Left := pt.X + 2;
        FParamEdit.Width := Max(16,hr.Right - hr.Left);

        FParamEdit.Cancelled := False;
        FParamEdit.Parent := Self;
        FParamEdit.OwnerList := Self;
        FParamEdit.Param := a;
        FParamEdit.Visible := True;

        PrepareParam(a,v);

        FParamEdit.Text := v;
        FParamEdit.SetFocus;
      end;

      if Assigned(FOnParamList) or (c = 'LIST') then
      begin
        DoList := True;
        GetHRefValue(Node.Text,a,OldValue);
        newvalue := oldvalue;
        NewValues := TStringList.Create;
        NewValues.Sorted := FParamListSorted;
        DoList := c = 'LIST';
        if c <> 'LIST' then
          FOnParamList(self,Node,a,Newvalues,Dolist)
        else
          NewValues.CommaText := InvHTMLPrep(p);

        if DoList then
        begin
          FIndent := TreeView_GetIndent(Handle);
          pt := Clienttoscreen(Point(hr.left,hr.bottom));
          pt.X := pt.X + FIndent * (Node.Level + 1) - GetScrollPos(Handle,SB_HORZ);

          FParamList.Top := pt.y;
          FParamList.Left := pt.x;
          FParamlist.OwnerList := self;
          FParamlist.Param := a;
          FParamList.Parent := Self;
          FParamlist.Visible := True;
          FParamList.Items.Assign(NewValues);

          PrepareParam(a,OldValue);

          FParamList.Ctl3D := False;
          FParamList.SizeDropDownWidth;
          FParamList.ItemIndex := FParamList.Items.IndexOf(OldValue);
          FParamList.SetFocus;
        end;
        NewValues.Free;
      end;
    end;
  end;

end;

procedure TParamTreeView.WMHScroll(var message:TMessage);
begin
  inherited;
  if FOldScrollPos <> GetScrollPos(handle,SB_HORZ) then
  begin
    Invalidate;
    FOldScrollPos := GetScrollPos(handle,SB_HORZ);
  end;
end;

function TParamTreeview.IsParam(x, y: Integer;var Node: TTreeNode; var HR: TRect): string;
var
  r: TRect;
  s,a,fa: string;
  xsize,ysize,ml,hl: Integer;
  {$IFNDEF DELPHI4_LVL}
  Canvas: TCanvas;
  {$ENDIF}
begin
  Result := '';

  Node := GetNodeAt(x,y);
  if Assigned(Node) then
  begin
    r := Node.DisplayRect(True);
    r.Right := r.Left + Width;
    a := '';
    {$IFNDEF DELPHI4_LVL}
    Canvas := TCanvas.Create;
    Canvas.Handle := GetDC(self.handle);
    {$ENDIF}

     HTMLDraw(Canvas,Node.Text,r,TImageList(self.HTMLImages),x,y,
       True,True,False,True,True,True,1.0,clBlue,a,s,xsize,ysize);

     a := '';

     if (YSize < r.Bottom - r.Top) then
       r.Top := r.Top + ((r.Bottom - r.Top - YSize) shr 1);

     HTMLDrawEx(Canvas,Node.Text,r,TImageList(Self.HTMLImages),x,y,-1,-1,1,
       True,False,False,True,True,False,True,1.0,clBlue,clNone,clNone,clGray,a,s,fa,xsize,ysize,hl,ml,hr);

     {$IFNDEF DELPHI4_LVL}
     ReleaseDC(self.handle,canvas.handle);
     Canvas.Free;
     {$ENDIF}
     Result := a;
  end;
end;



procedure TParamTreeview.WMMouseMove(var message: TWMMouseMove);
var
  Node : TTreeNode;
  r: TRect;
  s,a,v: string;
  xsize,ysize: Integer;
  {$IFNDEF DELPHI4_LVL}
  Canvas: TCanvas;
  {$ENDIF}

begin
  if csDesigning in ComponentState then
  begin
    inherited;
    Exit;
  end;

  Node := GetNodeAt(message.XPos,message.YPos);
  if Assigned(Node) then
  begin
    r := Node.DisplayRect(True);
    r.Right := r.Left + Width;

    a := '';
    {$IFNDEF DELPHI4_LVL}
    Canvas := TCanvas.Create;
    Canvas.Handle := GetDC(self.handle);
    {$ENDIF}

     HTMLDraw(Canvas,Node.Text,r,TImageList(self.HTMLImages),message.xpos,message.ypos,
       True,True,False,True,True,True,1.0,clBlue,a,s,xsize,ysize);
     a := '';

    if (ysize<r.bottom-r.top) then
      r.top := r.top + ((r.bottom-r.top - ysize) shr 1);

    HTMLDraw(Canvas,Node.Text,r,TImageList(self.HTMLImages),message.xpos,message.ypos,
      True,True,False,True,True,True,1.0,clBlue,a,s,xsize,ysize);

    {$IFNDEF DELPHI4_LVL}
    ReleaseDC(self.handle,canvas.handle);
    Canvas.Free;
    {$ENDIF}

    if (a<>'') then
    begin
      if self.Cursor <> crHandPoint then
      begin
        FOldCursor:=self.Cursor;
        self.Cursor:=crHandPoint;
      end;
      GetHRefValue(Node.Text,a,v);
      if Assigned(FOnParamEnter) then
        FOnParamEnter(self,Node,a,v);
     end
   else
     begin
      if self.Cursor = crHandPoint then
        self.Cursor := FOldCursor;
     end;

  end
  else
   if self.Cursor = crHandPoint then
      self.Cursor := FOldCursor;
  inherited;
end;

constructor TParamTreeview.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  {$IFDEF DELPHI4_LVL}
  Tooltips:=False;
  {$ENDIF}
  FParamColor := clGreen;
  FSelectionColor := clHighLight;
  FSelectionFontColor := clHighLightText;
  FItemHeight := 16;
  FOldScrollPos := -1;
  FParamPopup := TPopupMenu.Create(Self);
  FParamList := TPopupListBox.Create(Self);
  FParamDatePicker := TPopupDatePicker.Create(Self);
  FParamSpinEdit := TPopupSpinEdit.Create(Self);
  FParamEdit := TPopupEdit.Create(Self);
  ReadOnly := True;
  FShowSelection := False;
  FShadowOffset := 1;
  FShadowColor := clGray;
  FUpdateCount := 0;
end;


destructor TParamTreeView.Destroy;
begin
  FParamPopup.Free;
  FParamList.Free;
  FParamDatePicker.Free;
  FParamSpinEdit.Free;
  FParamEdit.Free;
  inherited;
end;

function TParamTreeview.GetItemHeight: integer;
begin
  Result := TreeView_GetItemHeight(self.Handle);
end;

procedure TParamTreeview.SetItemHeight(const Value: integer);
begin
 if (value<>fItemHeight) then
  begin
   fItemHeight:=value;
   TreeView_SetItemHeight(self.Handle,fItemHeight);
  end;
end;


procedure TParamTreeview.SetSelectionColor(const Value: tcolor);
begin
  fSelectionColor := Value;
  self.Invalidate;
end;

procedure TParamTreeview.SetSelectionFontColor(const Value: tcolor);
begin
  fSelectionFontColor := Value;
  self.Invalidate;
end;

procedure TParamTreeview.SetParamColor(const Value: tcolor);
begin
  FParamColor := Value;
  Invalidate;
end;

procedure TParamTreeview.Loaded;
begin
  inherited;
  FOldCursor := self.Cursor;
end;

procedure TParamTreeview.CreateWnd;
begin
  inherited;
  ItemHeight := FItemHeight;
end;

procedure TParamTreeview.SetImages(const Value: TImageList);
begin
  fImages := Value;
  self.Invalidate;
end;

procedure TParamTreeView.Notification(AComponent: TComponent;
  AOperation: TOperation);
begin
  if (aOperation=opRemove) and (aComponent=fImages) then fImages:=nil;
  inherited;
end;


procedure TParamTreeview.WMSize(var message: TMessage);
begin
  inherited;
  invalidate;
end;

procedure TParamTreeview.HandlePopup(Sender: TObject);
var
  NewValue,OldValue,NodeText: string;
begin
  with (Sender as TMenuItem) do
  begin
    NewValue := Caption;
    while Pos('&',NewValue) > 0 do
      System.Delete(NewValue,Pos('&',NewValue),1);

      NodeText := Selected.Text;

      GetHRefValue(NodeText,FOldParam,OldValue);

      if Assigned(FOnParamSelect) then
        FOnParamSelect(Self,Selected,FOldParam,NewValue);

      SetHRefValue(NodeText,FOldParam,NewValue);

      Selected.Text := NodeText;

      if (OldValue <> NewValue) then
        if Assigned(FOnParamChanged) then
           FOnParamChanged(self,Selected,FOldParam,OldValue,NewValue);
  end;
end;

procedure TParamTreeview.SetShadowColor(const Value: TColor);
begin
  FShadowColor := Value;
  Invalidate;
end;

procedure TParamTreeview.SetShadowOffset(const Value: Integer);
begin
  FShadowOffset := Value;
  Invalidate;
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
    scrlw := GetSystemMetrics(SM_CXVSCROLL);
  end
  else scrlw := 0;
  tw:=0;
  if self.Items.Count>0 then tw:=0;
  for i:=1 to self.Items.Count do
  begin
    nw := 10 + Canvas.TextWidth(Items[i-1]); //account for border size?
    if nw > tw then
      tw:=nw;
  end;
  Width := tw + scrlw;
end;

procedure TPopupListBox.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
    Style := Style AND NOT (WS_CHILD) OR (WS_POPUP);
end;

procedure TPopupListBox.WMKeyDown(var Msg: TWMKeydown);
begin
  inherited;
  case Msg.CharCode of
  VK_RETURN:
    begin
      if ItemIndex >= 0 then
        OwnerList.UpdateParam(Param,Items[ItemIndex]);
      Parent.SetFocus;
      Visible := False;
      Parent := nil;
    end;
  VK_ESCAPE:
    begin
      Parent.SetFocus;
      Visible := False;
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
  Parent.SetFocus;
  Visible := False;
  Parent := nil;
end;


procedure TParamTreeview.SetShowSelection(const Value: Boolean);
begin
  FShowSelection := Value;
  Invalidate;
end;

function TParamTreeview.GetNodeParameter(Node: TTreeNode;
  HRef: String): string;
var
  Value: String;
begin
  Result := '';
  GetHRefValue(Node.Text,HRef,Value);

  Value := InvHTMLPrep(Value);
  Result := Value;

end;

procedure TParamTreeview.SetNodeParameter(Node: TTreeNode; HRef: String;
  const Value: string);
var
  NodeText,v: string;
begin
  NodeText := Node.Text;

  v := HTMLPrep(Value);

  SetHRefValue(NodeText,HRef,v);
  Node.Text := NodeText;
end;

function TParamTreeview.GetParamInfo(Node: TTreeNode; HRef: string;
  var AValue, AClass, AProp: string): Boolean;
begin
  Result := ExtractParamInfo(Node.Text,HRef,AClass,AValue,AProp);
end;

procedure TParamTreeview.UpdateParam(Param, Value: string);
var
  NodeText: string;
  OldValue: string;
begin
  NodeText := Selected.Text;

  GetHRefValue(NodeText,Param,OldValue);

  Value := HTMLPrep(Value);

  if Assigned(FOnParamSelect) then
    FOnParamSelect(Self,Selected,Param,Value);

   SetHRefValue(NodeText,Param,Value);

   Selected.Text := NodeText;

   if OldValue <> Value then
     if Assigned(FOnParamChanged) then
       FOnParamChanged(Self,Selected,Param,OldValue,Value);
end;

procedure TParamTreeview.PrepareParam(Param: string; var Value: string);
begin
  if Assigned(FOnParamPrepare) then
    FOnParamPrepare(Self,Selected,Param,Value);
end;

procedure TParamTreeview.CMHintShow(var Msg: TMessage);
{$IFNDEF DELPHI3_LVL}
type
  PHintInfo = ^THintInfo;
{$ENDIF}
var
  CanShow: Boolean;
  hi: PHintInfo;
  Anchor: string;
  hr: TRect;
  Node: TTreeNode;

Begin
  CanShow := True;
  hi := PHintInfo(Msg.LParam);
  if FParamHint then
  begin
    Anchor := IsParam(hi^.cursorPos.x,hi^.cursorpos.y,Node,hr);
    if (anchor<>'') then
    begin
      hi^.HintPos := clienttoscreen(hi^.CursorPos);
      hi^.hintpos.y := hi^.hintpos.y-10;
      hi^.hintpos.x := hi^.hintpos.x+10;
      if Assigned(FOnParamHint) then
        FOnParamHint(self,Node,Anchor,Anchor,CanShow);
     {$IFNDEF DELPHI3_LVL}
     Hint := anchor;
     {$ELSE}
     hi^.HintStr := anchor;
     {$ENDIF}
    end;
  end;
  Msg.Result := Ord(Not CanShow);
end;

procedure TParamTreeview.BeginUpdate;
begin
  inc(FUpdateCount);
  if FUpdateCount = 1 then
    SendMessage(Handle,WM_SETREDRAW,0,0);
end;

procedure TParamTreeview.EndUpdate;
begin
  if FUpdateCount > 0 then
  begin
    dec(FUpdateCount);
    if FUpdateCount = 0 then
    begin
      SendMessage(Handle,WM_SETREDRAW,1,0);
      RedrawWindow(Handle,nil,0,
        RDW_ERASE or RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN);
    end;
  end;
end;


function TParamTreeView.HTMLPrep(s: string): string;
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

function TParamTreeView.InvHTMLPrep(s: string): string;
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

