
//SOME NECESSARY FUNCTIONS AND PROCEDURES...
FUNCTION TBIANCOPANEL.CAN_START_MOVE(X,Y:INTEGER):BOOLEAN;
 BEGIN
  CASE BALIGN OF
   alBottom:CAN_START_MOVE:=Y>=HEIGHT-BORDERWIDTH;
   alClient:CAN_START_MOVE:=(X<=TBH) OR (Y>=HEIGHT-BORDERWIDTH) OR
                            (X>=WIDTH-BORDERWIDTH) OR (Y<=TBH);
   alLeft:CAN_START_MOVE:=X<=BORDERWIDTH;
   alRight:CAN_START_MOVE:=X>=WIDTH-BORDERWIDTH;
   alTop:CAN_START_MOVE:=Y<=TBH;
   ELSE
    CAN_START_MOVE:=TRUE; //alNone
  END;
 END;

FUNCTION TBIANCOPANEL.CAN_JUMP(X,Y:INTEGER):BOOLEAN;
 VAR
  BL,BT,BR,BB:INTEGER;
 BEGIN
  FIND_J_POS(BL,BT,BR,BB);
  CAN_JUMP:=(JumpButton IN fshow) AND (X>=BL) AND (X<=BR) AND (Y>=BT) AND (Y<=BB);
 END;

FUNCTION TBIANCOPANEL.CAN_POP(X,Y:INTEGER):BOOLEAN;
 VAR
  BL,BT,BR,BB:INTEGER;
 BEGIN
  FIND_M_POS(BL,BT,BR,BB);
  CAN_POP:=(MenuButton IN fshow) AND (X>=BL) AND (X<=BR) AND (Y>=BT) AND (Y<=BB);
 END;

FUNCTION TBIANCOPANEL.CAN_START_CORNER(X,Y:INTEGER):BOOLEAN;
 BEGIN
  CAN_START_CORNER:=(ResizeButton IN fshow) AND (( (X>=VX[3]) AND (Y>=VY[4]-COR_DIM) AND (X<=VX[4]) AND (Y<=VY[4]) ) OR
                      ( (X>=VX[4]-COR_DIM) AND (Y>=VY[3]) AND (X<=VX[4]) AND (Y<=VY[4]) ));
 END;


PROCEDURE TBIANCOPANEL.CHECK_POP;
 var
  BL,BT,BR,BB:Integer;
  P,Q:TPoint;
 BEGIN
  POPPING:=TRUE;
  Draw_Button_Menu(Hi_c,Lo_c);
  IF ASSIGNED(POPUPMENU) THEN
   BEGIN
    Find_M_POS(BL,BT,BR,BB);
    P.X:=BL;{P is the TPoint record for the form}
    P.Y:=BB;
    Q:=ClientToScreen(P);            { Q is the TPoint for the screen }
    PopupMenu.Popup(Q.X,Q.Y);
   END
  ELSE
   BEGIN
    POPPING:=FALSE;
    If Assigned(OnPopClick) then
     FPOPC(Self);
    Draw_Button_Menu(Hi_c,Lo_c);
   END;
 END;

PROCEDURE TBIANCOPANEL.CHECK_JUMP;
 BEGIN
  IF F_S THEN //IS FLOATING, RETURN TO PARENT FORM
   UNJUMP
  ELSE
   JUMP;
 // PAINT;
 END;

PROCEDURE TBIANCOPANEL.START_MOVING(X,Y:INTEGER);
 BEGIN
  IF LOCKED THEN
   EXIT;
  //YOU ARE NOW ALLOWED TO MOVE THE CONTROL
  OldX := X;
  OldY := Y;
  OldLeft := X;
  OldTop := Y;
  MOVING:=TRUE;
  IF (AtMovingTime IN fshow) THEN
   Bordi(Hi_c,Lo_C)//Paint
  ELSE
   BEGIN
    SetCapture(Self.Handle);
    if WhatToMove=wmParent then
     BEGIN
      if Parent=Screen.ActiveForm then
       ScreenDC:=GetDC(0)
      else
       ScreenDC:=GetDC(Parent.Parent.Handle);
     END
    else
     ScreenDC:=GetDC(Parent.Handle);
    if WhatToMove=wmParent then
     MoveRect:=Rect(Parent.Left,Parent.Top,Parent.Left+Parent.Width,Parent.Top+Parent.Height)
    else
     MoveRect:=Rect(Self.Left,Self.Top,Self.Left+Self.Width,Self.Top+Self.Height);
    DrawFocusRect(ScreenDC,MoveRect);
   END;
 END;

PROCEDURE TBIANCOPANEL.MUOVI_PANNELLO(X,Y:INTEGER);
 VAR
  DIFFX,DIFFY:INTEGER;
 BEGIN
  IF (AtMovingTime IN fshow) THEN
   BEGIN
    DIFFX:=X-OLDX;
    DIFFY:=Y-OLDY;
    if WhatToMove=wmParent then
     BEGIN
      IF (MoveX in FAllow) THEN
       PARENT.LEFT:=PARENT.LEFT+DIFFX;
      IF (MoveY in FAllow) THEN
       PARENT.TOP:=PARENT.TOP+DIFFY;
     END
    ELSE
     BEGIN
      IF (MoveX in FAllow) THEN
       LEFT:=LEFT+DIFFX;
      IF (MoveY in FAllow) THEN
       TOP:=TOP+DIFFY;
     END;
   END
  ELSE
   BEGIN
    DrawFocusRect(ScreenDC,MoveRect);
    IF (MoveX in FAllow) THEN
     OldX:=X;
    IF (MoveY in FAllow) THEN
     OldY:=Y;
    if WhatToMove=wmParent then
     MoveRect:=Rect(Parent.Left+OldX-OldLeft,Parent.Top+OldY-OldTop,
                    Parent.Left+Parent.Width+OldX-OldLeft,Parent.Top+Parent.Height+OldY-OldTop)
    else
     MoveRect := Rect(Self.Left+OldX-OldLeft,Self.Top+OldY-OldTop,
                      Self.Left+Self.Width+OldX-OldLeft,Self.Top+Self.Height+OldY-OldTop);
    DrawFocusRect(ScreenDC,MoveRect);
   END;
 END;

PROCEDURE TBIANCOPANEL.END_MOVING(X,Y:INTEGER);
 BEGIN
  Moving := False;
  IF (AtMovingTime IN fshow) THEN
   Bordi(Hi_c,Lo_c)//
   //PAINT
  ELSE
   BEGIN
    ReleaseCapture;
    DrawFocusRect(ScreenDC,MoveRect);
    if WhatToMove = wmParent then
     begin
      if (Parent.Left <> Parent.Left+X+OldLeft) or (Parent.Top <> Parent.Top+Y-OldTop) then
       begin
        Parent.Visible := False;
        IF (MoveX in FAllow) THEN
         Parent.Left := Parent.Left+X-OldLeft;
        IF (MoveY in FAllow) THEN
         Parent.Top := Parent.Top+Y-OldTop;
        Parent.Visible := True;
       end;
     end
    else
     begin
      if (Self.Left <> Self.Left+X+OldLeft) or (Self.Top <> Self.Top+Y-OldTop) then
       begin
        Self.Visible := False;
        IF (MoveX in FAllow) THEN
         Self.Left := Self.Left+X-OldLeft;
        IF (MoveY in FAllow) THEN
         Self.Top := Self.Top+Y-OldTop;
        Self.Visible := True;
       end;
     end;
    ReleaseDC(0,ScreenDC);
   END;
 END;

PROCEDURE TBIANCOPANEL.START_RESIZING(X,Y:INTEGER);
 BEGIN
  RESIZING:=TRUE;
  OLDX:=X;
  OLDY:=Y;
  DRAW_CORNER(Hi_c,Lo_c);
 END;

PROCEDURE TBIANCOPANEL.RESIZING_CORNER(X,Y:INTEGER);
 VAR
  R,DIFFX,DIFFY:INTEGER;
 BEGIN
  DIFFX:=X-OLDX;
  DIFFY:=Y-OLDY;
  IF (ResizeX in FAllow) THEN
   BEGIN
    R:=WIDTH+DIFFX;
    IF (MAX_W>0) AND (MIN_W>0) THEN
     BEGIN
      IF R<MIN_W THEN
       R:=MIN_W
      ELSE
       IF R>MAX_W THEN
        R:=MAX_W;
     END;
    //CONTROLLA QUESTE SEMPRE
    IF R<BORDERWIDTH*2+COR_DIM THEN
     R:=BORDERWIDTH*2+COR_DIM;
     WIDTH:=R;
   END;
  IF (ResizeY in FAllow) THEN
   BEGIN
    R:=HEIGHT+DIFFY;
    IF (MAX_H>0) AND (MIN_H>0) THEN
     BEGIN
      IF R<MIN_H THEN
       R:=MIN_H
      ELSE
       IF R>MAX_H THEN
        R:=MAX_H;
     END;
   //CONTROLLA QUESTE SEMPRE
   IF R<BORDERWIDTH*2+COR_DIM THEN
    R:=BORDERWIDTH*2+COR_DIM;
    HEIGHT:=R;
   END;
  OLDX:=X;
  OLDY:=Y;
  IF F_S THEN //IS IN FLOAT STATUS
   BEGIN
    PARENT.CLIENTWIDTH:=WIDTH;
    PARENT.CLIENTHEIGHT:=HEIGHT;
   END;
 END;

PROCEDURE TBIANCOPANEL.END_RESIZING(X,Y:INTEGER);
 BEGIN
  RESIZING:=FALSE;
  Refresh;
 END;

PROCEDURE TBIANCOPANEL.FIND_J_POS(VAR BL_,BT_,BR_,BB_:INTEGER);
 VAR
  ADDX,ADDY:Integer;
 BEGIN
  IF TJT = jtClientArea THEN
   BEGIN
    ADDX:=BORDERWIDTH+2;
    ADDY:=TBH+2;
   END
  ELSE
   BEGIN
    ADDX:=2;
    ADDY:=2;
   END;
  CASE TJP OF
   JPTOPRIGHT:BEGIN
               BL_:=VX[4]-BW-ADDX;
               BT_:=VY[1]+ADDY;
              END;
   JPTOPLEFT:BEGIN
              BL_:=VX[1]+ADDX;
              BT_:=VY[1]+ADDY;
             END;
   JPBOTTOMRIGHT:BEGIN
                  BL_:=VX[4]-BW-ADDX;
                  BT_:=VY[4]-BW-ADDY;
                 END;
   JPBOTTOMLEFT:BEGIN
                 BL_:=VX[1]+ADDX;
                 BT_:=VY[4]-BW-ADDY;
                END;
   ELSE BEGIN
         BL_:=JNNX;
         BT_:=JNNY;
        END;
  END;
  BB_:=BT_+BW;
  BR_:=BL_+BW;
 END;

PROCEDURE TBIANCOPANEL.FIND_M_POS(VAR BL,BT,BR,BB:INTEGER);
 CONST
  DX=2;

 PROCEDURE FIND_BL;
  BEGIN
   CASE MA_ OF
    maTop:CASE MP_ OF
           mpLeft,mpClient:BL:=BORDERWIDTH+DX;
           mpCenter:BL:=(WIDTH-MPS) DIV 2;
           mpRight:BL:=WIDTH-DX-MPS-BORDERWIDTH;
          END;
    maBottom:CASE MP_ OF
              mpLeft,mpClient:BL:=BORDERWIDTH+DX;
              mpCenter:BL:=(WIDTH-MPS) DIV 2;
              mpRight:BL:=WIDTH-COR_DIM-DX-MPS;
             END;
    maLeft:BL:=DX;
    maRight:BL:=VX[3]+DX;
   END;
  END;

 PROCEDURE FIND_BT;
  BEGIN
   CASE MA_ OF
    maTop:BT:=DX;
    maBottom:BT:=VY[3]+DX;
    maLeft:CASE MP_ OF
            mpLeft,mpClient:BT:=BORDERHEIGHT+DX;
            mpCenter:BT:=(HEIGHT-MPS) DIV 2;
            mpRight:BT:=HEIGHT-BORDERHEIGHT-DX-MPS;
           END;
    maRight:IF (ResizeButton IN fshow) THEN
             CASE MP_ OF
              mpLeft,mpClient:BT:=BORDERHEIGHT+DX;
              mpCenter:BT:=(HEIGHT-COR_DIM-MPS) DIV 2;
              mpRight:BT:=HEIGHT-COR_DIM-DX-MPS;
             END
            ELSE
             CASE MP_ OF
              mpLeft,mpClient:BT:=BORDERHEIGHT+DX;
              mpCenter:BT:=(HEIGHT-MPS) DIV 2;
              mpRight:BT:=HEIGHT-BORDERHEIGHT-DX-MPS;
             END;
   END;
  END;

 PROCEDURE FIND_BB;
  BEGIN
   CASE MA_ OF
    maTop,maBottom:BB:=BT+BORDERHEIGHT-2*DX;

    maLeft:CASE MP_ OF
            mpLeft,mpCenter,mpRight:BB:=BT+MPS;
            mpClient:BB:=VY[4]-BORDERHEIGHT-DX;
           END;
    maRight:IF (ResizeButton IN fshow) THEN
             CASE MP_ OF
              mpLeft,mpRight,mpCenter:BB:=BT+MPS;
              mpClient:BB:=VY[4]-COR_DIM-DX;
             END
            ELSE
             CASE MP_ OF
              mpCenter,mpLeft,mpRight:BB:=BT+MPS;
              mpClient:BB:=VY[4]-BORDERHEIGHT-DX;
             END;
   END;
  END;

 PROCEDURE FIND_BR;
  BEGIN
   CASE MA_ OF
    maTop:CASE MP_ OF
           mpLeft,mpRight,mpCenter:BR:=BL+MPS;
           mpClient:BR:=VX[4]-BORDERWIDTH-DX;
          END;
    maBottom:CASE MP_ OF
              mpLeft,mpRight,mpCenter:BR:=BL+MPS-DX;
              mpClient:BR:=VX[4]-COR_DIM-2*DX;
             END;
    maRight,maLeft:BR:=BL+BORDERWIDTH-2*DX;
   END;
  END;

 BEGIN
  FIND_BL;
  FIND_BT;
  FIND_BB;
  FIND_BR;
 END;

PROCEDURE TBIANCOPANEL.GetINI(Var L,T,w,h,I:Integer);
 var
  x:TRegIniFile;
 begin
  RegPath:='Software\BP'+application.name;
  RegName:=self.NAME;
  x:=TRegIniFile.Create(RegPath);
  h:=x.ReadInteger(RegName,'Height',SELF.HEIGHT);
  W:=x.ReadInteger(RegName,'Width',SELF.WIDTH);
  L:=x.ReadInteger(RegName,'Left',SELF.LEFT);
  T:=x.ReadInteger(RegName,'Top',SELF.TOP);
  I:=X.READINTEGER(REGNAME,'MoveWho',0);
  x.Free;
 END;

