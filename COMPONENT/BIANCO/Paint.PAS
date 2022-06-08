procedure TBiancoPanel.Paint;
 VAR
  H,L:TCOLOR;
  FICON:TBITMAP;
  R:TRECT;
 Begin
  VX[1]:=0;
  VY[1]:=0;
  VX[2]:=BORDERWIDTH;
  VY[2]:=TBH;
  VX[3]:=WIDTH-1*BORDERWIDTH;
  VY[3]:=HEIGHT-1*TBH;
  VX[4]:=WIDTH-1;
  VY[4]:=HEIGHT-1;
  H:=HI_C;
  L:=LO_C;
  LockWindowUpdate(Canvas.Handle);
  With Canvas Do
   Begin
    Brush.Color:=Color;
    Pen.Color:=Color;
    Rectangle(0,0,Width,Height);
    if (not Resizing) and Assigned(USBIT[4]) then
     Begin
      FICON:=TBITMAP.CREATE;
      If TTT=jtBorder then
       begin
        R.TOP:=VY[2]+1;
        R.LEFT:=VX[2]+1;
        R.RIGHT:=VX[3]-1;
        R.BOTTOM:=VY[3]-1;
       End
      Else
       Begin
        R.TOP:=0;
        R.LEFT:=0;
        R.RIGHT:=width;
        R.BOTTOM:=height;
       End;
       FICON.ASSIGN(USBIT[4]);
       StretchDraw(R,FICON);
       FICON.FREE;
     End;
   IF TRIM(CAPTION)<>'' THEN
    DRAW_CAPTION;
   Bordi(H,L);
   IF (ResizeButton IN fshow) THEN
    DRAW_CORNER(Hi_C,Lo_c);
   IF (JumpButton IN fshow) THEN
    DRAW_JUMP_BUTTON(Hi_c,Lo_c);
   IF (MenuButton IN fshow) THEN
    DRAW_BUTTON_MENU(Hi_c,Lo_c);
  end;
 LockWindowUpdate(0);
end;

Procedure TBIANCOPANEL.BORDI(H,L:TColor);
 Begin
 CASE BUTTONALIGN OF
   alTop:BEGIN
          IF MOVING AND (Down in FAllow) THEN
           TOP_BUTTON(L,H)
          ELSE
           TOP_BUTTON(H,L);
          BOTTOM_BUTTON(H,L);
          RIGHT_BUTTON(H,L);
          LEFT_BUTTON(H,L);
         END;
   alBottom:BEGIN
             TOP_BUTTON(H,L);
             IF MOVING AND (Down in FAllow) THEN
              BOTTOM_BUTTON(L,H)
             ELSE
              BOTTOM_BUTTON(H,L);
             RIGHT_BUTTON(H,L);
             LEFT_BUTTON(H,L);
            END;
     alLeft:BEGIN
             TOP_BUTTON(H,L);
             BOTTOM_BUTTON(H,L);
             RIGHT_BUTTON(H,L);
             IF MOVING AND (Down in FAllow) THEN
              LEFT_BUTTON(L,H)
             ELSE
              LEFT_BUTTON(H,L);
            END;
     alRight:BEGIN
              TOP_BUTTON(H,L);
              BOTTOM_BUTTON(H,L);
              IF MOVING AND (Down in FAllow) THEN
               RIGHT_BUTTON(L,H)
              ELSE
               RIGHT_BUTTON(H,L);
              LEFT_BUTTON(H,L);
             END;
     alNone,alClient:IF (B97=bsStandard) or Moving Then
                      DRAW_ALL_BUTTONS(H,L)
                     Else
                      DRAW_ALL_BUTTONS(H,L);
    END;
  End;

PROCEDURE TBIANCOPANEL.DRAW_BUTTON_MENU(H,L:TColor);
 var
  BL,BT,BR,BB:Integer;
  FICON:TBITMAP;
  R:TRECT;
 BEGIN
  Find_M_POS(BL,BT,BR,BB);
  BOTT(BL,BT,BR,BB,JP_C,H,L,NOT POPPING);
  with Canvas do
   begin
    FICON:=TBITMAP.CREATE;
    R.TOP:=BT+1;
    R.LEFT:=BL+1;
    R.RIGHT:=BR-1;
    R.BOTTOM:=BB-1;
    TRY
     FICON.ASSIGN(USBIT[3]);
     StretchDraw(R,FICON);
    FINALLY
     FICON.FREE;
    END;
   END;
 END;

PROCEDURE TBIANCOPANEL.BOTT(AX,AY,BX,BY:INTEGER;C1,H,L:TCOLOR;PRESSED:BOOLEAN);
 BEGIN
  with Canvas do
   begin
    if Not (TrasparentButtons in FShow) then
     Begin
      Brush.Color:=C1;
      Pen.Color:=C1;
      Rectangle(AX,AY,BX,BY);
     end;
    IF PRESSED THEN
     Pen.Color:=H
    ELSE
     Pen.Color:=L;
    MoveTo(AX,BY);
    LineTo(AX,AY);
    LineTo(BX,AY);
    IF PRESSED THEN
     Pen.Color:=L
    ELSE
     Pen.Color:=H;
    LineTo(BX,BY);
    LineTo(AX,BY);
   END;
 END;

PROCEDURE TBIANCOPANEL.DRAW_JUMP_BUTTON(H,L:TColor);
 var
  BL,BT,BR,BB:Integer;
  S:STRING;
  FICON:TBITMAP;
  R:TRECT;
 BEGIN
  FIND_J_POS(BL,BT,BR,BB);
  BOTT(BL,BT,BR,BB,JB_C,H,L,F_S);
  with Canvas do
   begin
    IF JG<>JGNONE THEN
     BEGIN
      FICON:=TBITMAP.CREATE;
      R.TOP:=BT+1;
      R.LEFT:=BL+1;
      R.RIGHT:=BR-1;
      R.BOTTOM:=BB-1;
      TRY
       IF JG<>JGUSER THEN
        BEGIN
         CASE JG OF
          JGKEY:IF F_S THEN S:='U' ELSE S:='L';
          JGLIGHT:IF F_S THEN S:='ON' ELSE S:='OFF';
         END;
         FICON.Handle:=LoadBITMAP(hInstance,PCHAR(S));
        END
       ELSE
        BEGIN
         IF F_S THEN
          FICON.ASSIGN(USBIT[1])
         ELSE
          FICON.ASSIGN(USBIT[2]);
        END;
       CANVAS.StretchDraw(R,FICON);
      FINALLY
       FICON.FREE;
      END;
     END;
   END;
 END;

PROCEDURE TBIANCOPANEL.DRAW_CAPTION;
 VAR
  TW,TH,
  W,X,Y:INTEGER;
 BEGIN
  //THE CAPTION PROPERTY WILL BE SHOWN ONLY IF WIDTH AND HEIGHT IS ENOUTH
  CANVAS.FONT:=SELF.FONT;
  Canvas.Brush.Style:=bsClear;
  TH:=CANVAS.TEXTHEIGHT(CAPTION);
  TW:=Canvas.TextWidth(CAPTION);
  IF TBH> TH THEN
   BEGIN
    W:=WIDTH-2*(BORDERWIDTH+2);
    IF TW<=W THEN
     BEGIN
      Y:=(TBH-TH) DIV 2;
      X:=(W-TW) DIV 2+BORDERWIDTH+2;
      CANVAS.TEXTOUT(X,Y,CAPTION);
     END;
   END;
 END;

PROCEDURE TBIANCOPANEL.DRAW_CORNER(H,L:TColor);
 BEGIN
  WITH CANVAS DO
   BEGIN
    //DRAW CORNER AREA
    PEN.COLOR:=CO_C;
    BRUSH.COLOR:=CO_C;
    if Not (TrasparentButtons in FShow) then
     Begin
      RECTANGLE(VX[3],VY[4]-COR_DIM,VX[4],VY[4]);
      RECTANGLE(VX[4]-COR_DIM,VY[3],VX[4],VY[4]);
     End;
    //DRAW BORDER
    IF RESIZING AND (Down in FAllow) THEN
     PEN.COLOR:=L
    ELSE
     PEN.COLOR:=H;
    Moveto(VX[4],VY[4]-COR_DIM);
    Lineto(VX[3]-1,VY[4]-COR_DIM);
    LINETO(VX[3]-1,VY[3]-1);
    LINETO(VX[3]-1+BORDERWIDTH-COR_DIM,VY[3]-1);
    LINETO(VX[3]-1+BORDERWIDTH-COR_DIM,VY[4]);
    IF RESIZING AND (Down in FAllow) THEN
     PEN.COLOR:=H
    ELSE
     PEN.COLOR:=L;
    Moveto(VX[4],VY[4]-COR_DIM);
    Lineto(VX[4],VY[4]);
    LINETO(VX[4]-COR_DIM,VY[4]);
   END;
 END;

PROCEDURE TBIANCOPANEL.TOP_BUTTON(HI,LO:TCOLOR);
 BEGIN
  WITH CANVAS DO
   BEGIN
    //2 HORIZONTAL LINES
    PEN.COLOR:=HI;
    Moveto(VX[1],VY[1]);
    Lineto(VX[4],VY[1]);
    PEN.COLOR:=LO;
    Moveto(VX[2],VY[2]);
    Lineto(VX[3],VY[2]);
    //CHECK IF IT IS A BUTTON
    IF BUTTONALIGN=alTop THEN
     BEGIN
      PEN.COLOR:=HI;
      Moveto(VX[1]+1,VY[1]);
      Lineto(VX[2]+1,VY[2]);
      PEN.COLOR:=LO;
      Moveto(VX[4]-1,VY[1]);
      Lineto(VX[3]-1,VY[2]);
     END;
   END;
 END;

 PROCEDURE TBIANCOPANEL.BOTTOM_BUTTON(HI,LO:TCOLOR);
 BEGIN
  WITH CANVAS DO
   BEGIN
    //2 HORIZONTAL LINES
    PEN.COLOR:=HI;
    Moveto(VX[2],VY[3]);
    Lineto(VX[3],VY[3]);
    PEN.COLOR:=LO;
    Moveto(VX[1],VY[4]);
    Lineto(VX[4],VY[4]);
    //CHECK IF IT IS A BUTTON
    IF BUTTONALIGN=alBottom THEN
     BEGIN
      PEN.COLOR:=HI;
      Moveto(VX[1]+1,VY[4]);
      Lineto(VX[2]+1,VY[3]);
      PEN.COLOR:=LO;
      Moveto(VX[4]-1,VY[4]);
      Lineto(VX[3]-1,VY[3]);
     END;
   END;
 END;

PROCEDURE TBIANCOPANEL.LEFT_BUTTON(HI,LO:TCOLOR);
 BEGIN
  WITH CANVAS DO
   BEGIN
    //2 VERTICAL LINES
    PEN.COLOR:=HI;
    Moveto(VX[1],VY[1]);
    Lineto(VX[1],VY[4]);
    PEN.COLOR:=LO;
    Moveto(VX[2],VY[2]);
    Lineto(VX[2],VY[3]);
    //CHECK IF IT IS A BUTTON
    IF BUTTONALIGN=alLeft THEN
     BEGIN
      PEN.COLOR:=HI;
      Moveto(VX[1],VY[1]+1);
      Lineto(VX[2],VY[2]+1);
      PEN.COLOR:=LO;
      Moveto(VX[1],VY[4]-1);
      Lineto(VX[2],VY[3]-1);
     END;
   END;
 END;

PROCEDURE TBIANCOPANEL.RIGHT_BUTTON(HI,LO:TCOLOR);
 BEGIN
  WITH CANVAS DO
   BEGIN
    //2 VERTICAL LINES
    PEN.COLOR:=HI;
    Moveto(VX[3],VY[2]);
    Lineto(VX[3],VY[3]);
    PEN.COLOR:=LO;
    Moveto(VX[4],VY[1]);
    Lineto(VX[4],VY[4]);
    //CHECK IF IT IS A BUTTON
    IF BUTTONALIGN=alRight THEN
     BEGIN
      PEN.COLOR:=HI;
      Moveto(VX[3],VY[2]+1);
      Lineto(VX[4],VY[1]+1);
      PEN.COLOR:=LO;
      Moveto(VX[3],VY[3]-1);
      Lineto(VX[4],VY[4]-1);
     END;
   END;
 END;

PROCEDURE TBIANCOPANEL.DRAW_ALL_BUTTONS(H,L:TColor);
 BEGIN
  With Canvas Do
   Begin
    //DRAW HI COLORS
    IF MOVING AND (Down in FAllow) THEN
     PEN.COLOR:=L
    ELSE
     Pen.Color:=H;

    Moveto(VX[1],VY[4]);
    Lineto(VX[1],VY[1]);
    Lineto(VX[4],VY[1]);

    Moveto(VX[2],VY[3]);
    Lineto(VX[3],VY[3]);
    Lineto(VX[3],VY[2]);

    //DRAW LO COLORS
    IF MOVING AND (Down in FAllow) THEN
     PEN.COLOR:=H
    ELSE
     Pen.Color:=L;

    Moveto(VX[2],VY[3]);
    Lineto(VX[2],VY[2]);
    Lineto(VX[3],VY[2]);

    Moveto(VX[1],VY[4]);
    Lineto(VX[4],VY[4]);
    Lineto(VX[4],VY[1]);
   END;
 END;

{
procedure TBiancoPanel.Paint;
 VAR
  H,L:TCOLOR;
  FICON:TBITMAP;
  R:TRECT;
 Begin
//  LockWindowUpdate(Canvas.Handle);
  VX[1]:=0;
  VY[1]:=0;
  VX[2]:=BORDERWIDTH;//+BEVELWIDTH;
  VY[2]:=TBH;//BORDERWIDTH;//+BEVELWIDTH;
  VX[3]:=WIDTH-1*BORDERWIDTH;
  VY[3]:=HEIGHT-1*TBH;
  VX[4]:=WIDTH-1;
  VY[4]:=HEIGHT-1;
  H:=HI_C;
  L:=LO_C;
  With Canvas Do
   Begin
    Brush.Color:=Color;
    Pen.Color:=Color;
    Rectangle(0,0,Width,Height);
    if (not Resizing) and Assigned(USBIT[4]) then
     Begin
      FICON:=TBITMAP.CREATE;
      If TTT=jtBorder then
       begin
        R.TOP:=VY[2]+1;
        R.LEFT:=VX[2]+1;
        R.RIGHT:=VX[3]-1;
        R.BOTTOM:=VY[3]-1;
       End
      Else
       Begin
        R.TOP:=0;
        R.LEFT:=0;
        R.RIGHT:=width;
        R.BOTTOM:=height;
       End;
       FICON.ASSIGN(USBIT[4]);
       StretchDraw(R,FICON);
       FICON.FREE;
     End;
   IF TRIM(CAPTION)<>'' THEN
    DRAW_CAPTION;
    //PEN.WIDTH:=BEVELWIDTH;
   If (b97=bsStandard) or moving Then
    Bordi(H,L)
   else
    Bordi(clNull,clNull);
   IF (ResizeButton IN fshow) THEN
    Begin
     If (b97=bsStandard) or Resizing Then
      DRAW_CORNER(Hi_C,Lo_c)
     Else
      DRAW_CORNER(clNull,clNull);
    End;
   IF (JumpButton IN fshow) THEN
    Begin
     If (b97=bsStandard) or (Not F_S) Then
      DRAW_JUMP_BUTTON(Hi_c,Lo_c)
     Else
      DRAW_JUMP_BUTTON(clNull,clNull);
    End;
   IF (MenuButton IN fshow) THEN
    Begin
     If (b97=bsStandard) or Popping Then
      DRAW_BUTTON_MENU(Hi_c,Lo_c)
     Else
      DRAW_BUTTON_MENU(clNull,clNull);
    End;
  end;
// LockWindowUpdate(0);
end;
                     }
