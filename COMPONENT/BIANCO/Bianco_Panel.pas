unit Bianco_Panel;

{
                                   \\\\\/////
                                   /  _   _  \
                                  (| (.) (.) |)
 _______________________________.OOOo__( )__oOOO.______________________________
|                                                                              |
|                               This is my Tcomponent                          |
|                                    Ciao Marco                                |
|                              Email bianco@arcanet.it                         |
|                                                                              |
| DATA:      INIZIO:    FINE:      LAVORO:                                     |
|                                                                              |
| 18-08-97,  01:01:01,  03:33:36   INIZIATO A CONVERTIRE IL VECCHIO FILE.      |
| 18-08-97,  20:XX:XX,  23:47:13   AGGIUNTO LE PROPERTY: Allow*,Button*.       |
| 18-08-97,  23:59:55,  01:29:54   AGGIUNTO LA PROPERTY ShowAtMovingTime.      |
| 19-08-97,  01:35:26,  02:23:22   CONCLUSO POCO.                              |
| 20-08-97,  00:34:21,  02:00:01   FATTO NIENTE.                               |
| 22-08-97,  23:56:18,  01:21:51   AGGIUNTO I METODI E CREATO IL FILE HELP.    |
| 27-08-97,  12:48:11,  02:00:01   NUOVA VERSIONE.                             |
| 27-08-97,  21:03:03,  22:44:11   PROPERTY ALLOWDOWN                          |
| 28-08-97,  02:31:00,  03:16:09   PROPERTY BUTTONALIGN INIZIATA;              |
| 28-08-97,  14:07:55,  14:46:39   PROPERTY BUTTONALIGN FINITA;                |
| 28-08-97,  14:47:25,  15:19:31   PROPERTY SHOWCORNER;                        |
| 28-08-97,  18:46:54,  19:55:25   RESIZE.                                     |
| 04-09-97,  01:25:22,  02:24:26   INI FILES.                                  |
| 05-09-97,  01:03:16,                                                         |
2nd                                                                            |
| 19-09-97,  TOO LATE!  AGGIUNTO FLOATING PANEL!                               |
3rd                                                                            |
| 13-10-97,  PupUp Menu                                                        |
|_______________________________.oooO__________________________________________|
                                (   )        Oooo.
                                 \ (         (   )
                                  \_)         ) /
                                             (_/

}

interface

uses
 {$IFDEF WIN32}
  Windows,
 {$ELSE}
  WinProcs, WinTypes,
 {$ENDIF}
 SysUtils, Messages, Classes, Graphics, Controls,
 Forms, Dialogs, ExtCtrls,REGISTRY,MENUS;

Type
  TShow = Set of (AtMovingTime,ResizeButton,JumpButton,MenuButton,TrasparentButtons);
  TAllow = set of (Down,MoveX,MoveY,ResizeX,ResizeY);
  TButtonStyle=(bsOffice97,bsStandard);
  TWhoToMove=(wmSelf,wmParent);
  TJumpGryps=(jgNone,jgKey,jgLight,jgUser);
  TJumpPosition=(jpTopLeft,jpTopRight,jpBottomLeft,jpBottomRight,jpUser);
  TJumpParent=(jtBorder,jtClientArea);
  //TBKind=(mkSquare,mkClient,mkUser);
  TMenuAlign=(maTop,maLeft,maBottom,maRight);
  TMenuPos=(mpLeft,mpCenter,mpRight,mpClient);
  TBiancoPanel=class(TPanel)
  Private
   FAllow:TAllow;
   FShow:TShow;
   B97:TButtonStyle;
   OBJ:TWINCONTROL;
   F_S,Moving:Boolean;
   RESIZING:BOOLEAN;
   OldX,OldY,OldLeft,OldTop:Integer;
   ScreenDC:HDC;
   MoveRect:TRect;
   FMoveWho:TWhoToMove;
   RegPath,RegName:STRING;
   TJT,TTT:TJUMPPARENT;
   clNull,JB_C,CO_C,jp_c,            //COLOR OF THE CORNER
   HI_C,LO_C:TCOLOR;//COLOR OF THE BORDER
   BALIGN:TALIGN;
   JG:TJUMPGRYPS;
   USBIT:ARRAY[1..4] OF TBITMAP;
   TBH:INTEGER;// BORDERHEIGHT
   VX:ARRAY[1..4] OF INTEGER; // VERT X
   VY:ARRAY[1..4] OF INTEGER; // VERT Y
   COR_DIM:INTEGER; // DIMENSION OF CORNER
   TJP:TJumpPosition;
   MOUSE_M:TMOUSEBUTTON; //THE BUTTON THAT ALLOW YOU MOVING IT
   MAX_W,MAX_H,MIN_W,MIN_H:INTEGER; // MAX, MIN WIDTH AND HEIGHT
   FPOPC,FONJUMP,FONRETURN,FONFAIL,FMOVING:TNotifyEvent;
   JNNX,JNNY,BW,MPS:INTEGER;
   MA_:TMENUAlign;
   MP_:TMenuPOs;
   POPPING:BOOLEAN;
   FUNCTION CAN_START_MOVE(X,Y:INTEGER):BOOLEAN;
   FUNCTION CAN_START_CORNER(X,Y:INTEGER):BOOLEAN;
   FUNCTION CAN_JUMP(X,Y:INTEGER):BOOLEAN;
   FUNCTION CAN_POP(X,Y:INTEGER):BOOLEAN;
   PROCEDURE TOP_BUTTON(HI,LO:TCOLOR);
   PROCEDURE LEFT_BUTTON(HI,LO:TCOLOR);
   PROCEDURE BOTTOM_BUTTON(HI,LO:TCOLOR);
   PROCEDURE RIGHT_BUTTON(HI,LO:TCOLOR);
   PROCEDURE DRAW_ALL_BUTTONS(H,L:TColor);
   PROCEDURE DRAW_CORNER(H,L:TColor);
   PROCEDURE START_MOVING(X,Y:INTEGER);
   PROCEDURE MUOVI_PANNELLO(X,Y:INTEGER);
   PROCEDURE END_MOVING(X,Y:INTEGER);
   PROCEDURE CHECK_POP;
   PROCEDURE START_RESIZING(X,Y:INTEGER);
   PROCEDURE RESIZING_CORNER(X,Y:INTEGER);
   PROCEDURE END_RESIZING(X,Y:INTEGER);
   PROCEDURE DRAW_CAPTION;
   PROCEDURE DRAW_JUMP_BUTTON(H,L:TColor);
   PROCEDURE CHECK_JUMP;
   PROCEDURE FIND_J_POS(VAR BL_,BT_,BR_,BB_:INTEGER);
   PROCEDURE FIND_M_POS(VAR BL,BT,BR,BB:INTEGER);
   PROCEDURE BOTT(AX,AY,BX,BY:INTEGER;C1,H,L:TCOLOR;PRESSED:BOOLEAN);
   PROCEDURE DRAW_BUTTON_MENU(H,L:TColor);
   Procedure BORDI(H,L:TColor);
   //DESIGN TIME PROCEDURES
   PROCEDURE SET_US1(V:TBITMAP);
   PROCEDURE SET_US2(V:TBITMAP);
   PROCEDURE SET_US3(V:TBITMAP);
   PROCEDURE SET_US4(V:TBITMAP);
   PROCEDURE GetINI(Var L,T,w,h,I:Integer);
   procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
   procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
  Protected
   procedure Paint; override;
  Public
   _FFLOAT_:TFORM;
   constructor Create(AOwner: TComponent); override;
   DESTRUCTOR DESTROY; OVERRIDE;
   procedure MouseDown(Button: TMouseButton;
                       Shift: TShiftState; X, Y: Integer); override;
   procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
   procedure MouseUp(Button: TMouseButton;
                     Shift: TShiftState; X, Y: Integer); override;
   PROCEDURE LOADINI;
   PROCEDURE SAVEINI;

   FUNCTION JUMP:BOOLEAN;
   FUNCTION UNJUMP:BOOLEAN;
   Function IsFloating:Boolean;
  Published
   property WhatToMove:TWhoToMove read FMoveWho write FMoveWho;
   PROPERTY MouseButtonMove:TMOUSEBUTTON READ MOUSE_M WRITE MOUSE_M;
   PROPERTY ColorHI:TCOLOR READ HI_C WRITE HI_C;
   PROPERTY ColorLO:TCOLOR READ LO_C WRITE LO_C;
   PROPERTY ButtonAlign:TALIGN READ BALIGN WRITE BALIGN;
   PROPERTY CornerDimension:INTEGER READ COR_DIM WRITE COR_DIM;
   PROPERTY CornerColor:TCOLOR READ CO_C WRITE CO_C;
   Property MaxWidth:INTEGER READ MAX_W WRITE MAX_W;
   Property MaxHeight:INTEGER READ MAX_H WRITE MAX_H;
   Property MinWidth:INTEGER READ MIN_W WRITE MIN_W;
   Property MinHeight:INTEGER READ MIN_H WRITE MIN_H;
   Property BorderHeight:INTEGER READ TBH WRITE tBH;
   //2nd
   PROPERTY JumpButtonSize:INTEGER READ BW WRITE BW;
   PROPERTY JumpGryps:TJUMPGRYPS READ JG WRITE JG;
   PROPERTY FloatingBitmap:TBITMAP READ USBIT[1] WRITE SET_US1;
   PROPERTY HomeBitmap:TBITMAP READ USBIT[2] WRITE SET_US2;
   //3rd
   Property Allow:tallow read fallow write fallow;
   Property WhatShow:TShow read Fshow write fshow;
   PROPERTY JumpButtonPosition:TJumpPosition READ TJP WRITE TJP;
   PROPERTY JumpButtonParent:TJumpParent READ TJT WRITE TJT;
   Property JumpButtonLeft:Integer Read JNNX Write JNNX;
   Property JumpButtonTop:Integer Read JNNY Write JNNY;
   Property JumpButtonColor:TColor Read JB_C Write JB_C;
   PROPERTY PopupMenuAlign:tmenuAlign READ MA_ WRITE MA_;
   PROPERTY PopupMenuPosition:tmenuPos READ MP_ WRITE MP_;
   PROPERTY PopupMenuSize:integer read mPs write mPs;
   PROPERTY PopupMenuBitmap:TBITMAP READ USBIT[3] WRITE SET_US3;
   Property PopupMenuColor:TColor Read JP_C Write JP_C;
   PROPERTY Bitmap:TBITMAP READ USBIT[4] WRITE SET_US4;
   pROPERTY BitmapParent:TJumpParent READ TTT WRITE TTT;
   Property ButtonStyle:TButtonStyle Read B97 Write B97;
   Property Flat97Color:TColor REad clNull Write clNull;

   property OnMoving: TNotifyEvent read FMOVING write FMOVING;
   PROPERTY OnJump:TNOTIFYEVENT READ FONJUMP WRITE FONJUMP;
   PROPERTY OnReturn:TNOTIFYEVENT READ FONRETURN WRITE FONRETURN;
   PROPERTY OnFailJump:TNOTIFYEVENT READ FONFAIL WRITE FONFAIL;
   property OnPopClick: TNotifyEvent read FPOPC write FPOPC;
  end;

 TBiancoBMPMenu=class(TComponent)
  Private
  Protected
  Public
   Function AddBMPMenu(O:TObject;P:Integer;B:TBitmap):Boolean;
   Function AddCheckedBMPMenu(O:TObject;P:Integer;B1,b2:TBitmap):Boolean;
  Published
 End;

procedure Register;

implementation

{$R BIANCOPANEL.RES}
{$I Paint.PAS}    // You can find here the Paint Procedure
{$I ProcFunc.PAS} // You can find here the main Procedures and Functions

PROCEDURE TBIANCOPANEL.SET_US1(V:TBITMAP);
 BEGIN
  USBIT[1].ASSIGN(V);
  Refresh;
 END;

PROCEDURE TBIANCOPANEL.SET_US2(V:TBITMAP);
 BEGIN
  USBIT[2].ASSIGN(V);
  Refresh;
 END;

PROCEDURE TBIANCOPANEL.SET_US3(V:TBITMAP);
 BEGIN
  USBIT[3].ASSIGN(V);
  Refresh;
 END;

PROCEDURE TBIANCOPANEL.SET_US4(V:TBITMAP);
 BEGIN
  USBIT[4].ASSIGN(V);
  Refresh;
 END;

procedure TBiancoPanel.CMMouseEnter(var Message: TMessage);
begin
 if Enabled And (B97 = bsOffice97) then
  begin
   Bordi(Hi_c,Lo_c);
   IF (ResizeButton IN fshow) THEN
    DRAW_CORNER(Hi_C,Lo_c);
   IF (JumpButton IN fshow) THEN
    DRAW_JUMP_BUTTON(Hi_c,Lo_c);
   IF (MenuButton IN fshow) THEN
    DRAW_BUTTON_MENU(Hi_c,Lo_c);
  end;
end;

procedure TBiancoPanel.CMMouseLeave(var Message: TMessage);
begin
 if Enabled And (B97 = bsOffice97) then
  begin
   Bordi(clNull,clNull);
   IF (ResizeButton IN fshow) THEN
    DRAW_CORNER(clNull,clNull);
   IF (JumpButton IN fshow) THEN
    DRAW_JUMP_BUTTON(clNull,clNull);
   IF (MenuButton IN fshow) THEN
    DRAW_BUTTON_MENU(clNull,clNull);
  end;
end;
                 {
procedure TTorryButton.WMMouseMove(var Message: TWMMouseMove);
var
  CurrentPoint: TPoint;
begin
  if Enabled then
  begin
    CurrentPoint.X := Message.XPos;
    CurrentPoint.Y := Message.YPos;
    if not HasMouse and PtInRect(GetClientRect, CurrentPoint) then
    begin
      HasMouse := true;
      Repaint;
    end;
  end;
  inherited;
end;
                  }
procedure TBiancoPanel.MouseDown(Button: TMouseButton;
                    Shift: TShiftState; X, Y: Integer);
 begin
  inherited MouseDown(Button,Shift,X,Y);
  POPPING:=FALSE;
  if (NOT LOCKED) AND (Button=MOUSE_M) then
   BEGIN
    IF CAN_POP(X,Y) THEN
     CHECK_POP
    ELSE
     IF CAN_JUMP(X,Y) THEN
      CHECK_JUMP
     ELSE
      IF CAN_START_CORNER(X,Y) THEN
       START_RESIZING(X,Y)
      ELSE
       IF CAN_START_MOVE(X,Y) then
        START_MOVING(X,Y);
   end;
 end;

procedure TBiancoPanel.MouseMove(Shift: TShiftState; X,Y: Integer);
 begin
  inherited MouseMove(Shift,X,Y);
  IF NOT LOCKED THEN
   BEGIN
    IF RESIZING THEN
     RESIZING_CORNER(X,Y)
    ELSE
     if Moving then
      BEGIN
       MUOVI_PANNELLO(X,Y);
       If Assigned(ONMOVING) then
        FMOVING(Self);
      END;
   END;
  POPPING:=FALSE;
 end;

procedure TBiancoPanel.MouseUp(Button: TMouseButton;
              Shift: TShiftState; X, Y: Integer);
 begin
  inherited MouseUp(Button,Shift,X,Y);
  //IF RANDOM(100)=10 THEN
  // SHOWMESSAGE('Bianchini Marco'+#13+'E-Mail bianco@arcanet.it');
  if Button=MOUSE_M then
   begin
    IF MOVING THEN
     END_MOVING(X,Y)
    ELSE
     IF RESIZING THEN
      END_RESIZING(X,Y)
     else
      If Popping then
       Begin
        POPPING:=FALSE;
        Draw_Button_Menu(Hi_c,Lo_c);
       End;
  end;

  //Moving:=false;
 // Resizing:=False;
 // Paint;
 end;

Function TBiancoPanel.IsFloating:Boolean;
 Begin
  Result:=F_S;
 End;

//THE METHODS

Function TBiancoBMPMenu.AddBMPMenu(O:TObject;P:Integer;B:TBitmap):Boolean;
 Begin
  Result:=False;
  if Not assigned(B) Then
   Exit;
  If O is TMenuItem Then
   Begin
    SetMenuItemBitmaps((O as TMenuItem).HANDLE,
                       P,
                       MF_BYPOSITION,
                       B.HANDLE,
                       B.HANDLE);
    Result:=True;
   End
  Else
   If O is TPopupMenu Then
    Begin
     SetMenuItemBitmaps((O as TPopupMenu).HANDLE,
                        P,
                        MF_BYPOSITION,
                        B.HANDLE,
                        B.HANDLE);
     Result:=True;
    End;
 End;

Function TBiancoBMPMenu.AddCheckedBMPMenu(O:TObject;P:Integer;B1,b2:TBitmap):Boolean;
 Begin
  Result:=False;
  if Not (assigned(B1) and assigned(B2)) Then
   Exit;
  If O is TMenuItem Then
   Begin
    SetMenuItemBitmaps((O as TMenuItem).HANDLE,
                       P,
                       MF_BYPOSITION,
                       B1.HANDLE,
                       B2.HANDLE);
    Result:=True;
   End
  Else
   If O is TPopupMenu Then
    Begin
     SetMenuItemBitmaps((O as TPopupMenu).HANDLE,
                        P,
                        MF_BYPOSITION,
                        B1.HANDLE,
                        B2.HANDLE);
     Result:=True;
    End;
 End;


FUNCTION TBIANCOPANEL.JUMP:BOOLEAN;
 var
  P,Q:TPoint;
 BEGIN
  IF NOT F_S THEN  //NOT FLOATING
   BEGIN
    SAVEINI;
    OBJ:=TWINCONTROL.CREATE(SELF);
    OBJ.NAME:='XXMYOBJNAME';
    OBJ.PARENT:=PARENT;
    _FFLOAT_:=TFORM.CREATE(APPLICATION);
    _FFLOAT_.BORDERICONS:=[];
    _FFLOAT_.BORDERSTYLE:=BSNONE;
    _FFLOAT_.CAPTION:='';
    _FFLOAT_.CLIENTWIDTH:=WIDTH;
    _FFLOAT_.CLIENTHEIGHT:=HEIGHT;
    _FFLOAT_.FORMSTYLE:=FSSTAYONTOP;
    P.Y:=0;
    P.X:=0;
    Q:=ClientToScreen(P);
    _FFLOAT_.TOP:=Q.Y;
    _FFLOAT_.LEFT:=Q.X;
    TOP:=0;
    LEFT:=0;
    FMOVEWHO:=wmParent;
    PARENT:=_FFLOAT_;
    _FFLOAT_.VISIBLE:=TRUE;
    F_S:=TRUE;
    If Assigned(ONJUMP) then
     FONJUMP(Self);
   END
  ELSE
   If Assigned(ONFAILJUMP) then
    FONFAIL(Self);
  RESULT:=F_S;
 END;

FUNCTION TBIANCOPANEL.UNJUMP:BOOLEAN;

 Function SamePos:Boolean;
  Var
   Pa,Pb,Q:TPoint;
  Begin
   Pa.Y:=(OBJ.Parent).Top;
   Pa.X:=(OBJ.Parent).Left;
   Pb.X:=(OBJ.Parent).Width;
   Pb.Y:=(OBJ.Parent).Height;
   Q.X:=_FFloat_.Left;
   Q.Y:=_FFloat_.Top;
 {  ShowMessage(Inttostr(Pa.X)+' '+
               Inttostr(Pa.Y)+#13+
               Inttostr(Pb.X)+' '+
               Inttostr(Pb.y)+#13+
               Inttostr(q.X)+' '+
               Inttostr(q.y)+#13);
 }  SamePos:=(Q.X>=PA.X) AND (Q.X<=PA.X+PB.X) AND
            (Q.Y>=PA.Y) AND (Q.Y<=PA.Y+PB.Y);
  End;


 Procedure SameP;
  Var
   P,Q:TPoint;
  Begin
   P.X:=_FFloat_.Left;
   P.Y:=_FFloat_.Top;

   Q:=ScreenToClient(P);

   Left:=Q.X;
   Top:=Q.Y;
  End;

 Var
  SP:Boolean;
  L,T,W,H,I:INTEGER;
 BEGIN
  IF F_S THEN //IS FLOATING, RETURN TO PARENT FORM
   BEGIN
    Sp:=SamePos;
    PARENT:=OBJ.PARENT;
    GetINI(L,T,W,H,I);
    If SP Then
     SameP
    Else
     BEGIN
      Left:=l;
      Top:=t;
     END;
    IF I=0 THEN
     FMOVEWHO:=wmSelf
    ELSE
    FMOVEWHO:=wmParent;
    F_S:=FALSE;
    OBJ.FREE;
    _FFLOAT_.FREE;
    If Assigned(ONRETURN) then
     FONRETURN(Self);
   END
  ELSE
   If Assigned(ONFAILJUMP) then
    FONFAIL(Self);
  RESULT:=NOT F_S;
 END;

PROCEDURE TBIANCOPANEL.SAVEINI;
 var
  x:TRegIniFile;
  I:INTEGER;
  sc:boolean;
 begin
  IF FMOVEWHO=wmSelf THEN
   I:=0
  ELSE
   I:=1;
  RegPath:='Software\BP'+application.name;
  RegName:=self.NAME;
  x:=TRegIniFile.Create(RegPath);
  x.WriteInteger(RegName,'Height',SELF.height);
  x.WriteInteger(RegName,'Width',SELF.Width);
  x.WriteInteger(RegName,'Left',SELF.Left);
  x.WriteInteger(RegName,'Top',SELF.Top);
  X.WRITEINTEGER(REGNAME,'MoveWho',I);
  sc:=(ResizeButton IN fshow);
  X.WRITEBOOL(REGNAME,'ShowCorner',SC);
  x.Free;
end;

PROCEDURE TBIANCOPANEL.LOADINI;
var
 L,T,W,H,I:INTEGER;
begin
 GetINI(L,T,W,H,I);
 height:=h;
 Width:=w;
 Left:=l;
 Top:=t;
 IF I=0 THEN
  FMOVEWHO:=wmSelf
 ELSE
  FMOVEWHO:=wmParent;
END;

Constructor TBiancoPanel.Create(AOwner: TComponent);
 Var
  T:Integer;
 Begin
  Inherited Create(Aowner);
  Randomize;
  Resizing:=False;
  For T:=1 to 4 Do
   USBIT[T]:=TBITMAP.CREATE;
  if (csDesigning in ComponentState) then
   begin
    BorderWidth:=10;
    TBH:=10;
    Color:=CLBTNFACE;
    HI_C:=CLBTNHIGHLIGHT;
    F_S:=FALSE;
    LO_C:=CLBTNSHADOW;
    BAlign:=alClient;
    Cor_Dim:=30;
    BW:=12;
    CO_C:=CLAPPWORKSPACE;
    jb_c:=CLAPPWORKSPACE;
    jp_c:=CLAPPWORKSPACE;
    CLnull:=CLGRAYTEXT;
    MPS:=10;
    JUMPBUTTONPOSITION:=JPBOTTOMLEFT;
    JUMPBUTTONPARENT:=JTCLIENTAREA;
    BitmapPARENT:=JTCLIENTAREA;
    WHATShow:=[AtMovingTime,ResizeButton,JumpButton,MenuButton];
    Allow:=[Down,MoveX,MoveY,ResizeX,ResizeY];
   end;
 End;

DESTRUCTOR TBIANCOPANEL.DESTROY;
 BEGIN
  INHERITED DESTROY;
  USBIT[1].FREE;
  USBIT[2].FREE;
  usbit[3].free;
  usbit[4].free;
 END;

procedure Register;
 begin
  RegisterComponents('uniHISPACK', [TBiancoPanel,TBiancoBMPMenu]);
 end;

end.

