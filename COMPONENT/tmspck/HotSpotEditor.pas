{*************************************************************************}
{ THotSpotImage component                                                 }
{ for Delphi 4.0,5.0,6.0 & C++Builder 4.0,5.0,6.0                         }
{ version 1.0 - rel. March, 2002                                          }
{                                                                         }
{ written by TMS Software                                                 }
{           copyright ? 2002                                              }
{           Email : info@tmssoftware.com                                  }
{           Web : http://www.tmssoftware.com                              }
{                                                                         }
{ The source code is given as is. The author is not responsible           }
{ for any possible damage done due to the use of this code.               }
{ The component can be freely used in any application. The complete       }
{ source code remains property of the author and may not be distributed,  }
{ published, given or sold in any form as such. No parts of the source    }
{ code can be included in any other component or application without      }
{ written authorization of the author.                                    }
{*************************************************************************}

unit HotSpotEditor;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Math, Buttons, ToolWin, ComCtrls,
  Menus, jpeg, ExtDlgs, HotSpotImage, LineLibrary, Spin, Clipbrd;

const
  BordRectSz = 2;
type
  TStatus = (stNormal, stDrawing, stDrawPoly, stMovePoint, stMoveLine, stMove,
             stScaleEllipse, stWand);

  TBool2DArray = array of array of boolean;
  TRGBTripleRow = array[0..30000]of trgbtriple;
  pRGBTripleRow = ^TRGBTripleRow;

  TfrmHSIEditor = class(TForm)
    ToolBar1: TToolBar;
    btRect: TSpeedButton;
    btNormal: TSpeedButton;
    pnImage: TPanel;
    pmHotSpot: TPopupMenu;
    miDelete: TMenuItem;
    shapeSep: TShape;
    OPD: TOpenPictureDialog;
    pnButtons: TPanel;
    btOk: TButton;
    btCancel: TButton;
    pmClickImage: TPopupMenu;
    miClearClickImage: TMenuItem;
    pmHoverImage: TPopupMenu;
    miClearHoverImage: TMenuItem;
    N1: TMenuItem;
    miSaveHSImage: TMenuItem;
    SPD: TSavePictureDialog;
    Splitter: TSplitter;
    pnContainer: TPanel;
    pnProperties: TPanel;
    lblHint: TLabel;
    pnTitle: TPanel;
    txtHint: TMemo;
    pnHover: TPanel;
    lbHover: TLabel;
    pnHoverImage: TPanel;
    imgHover: TImage;
    btLoadHover: TButton;
    pnClick: TPanel;
    lblClick: TLabel;
    pnClickImage: TPanel;
    imgClick: TImage;
    btLoadClick: TButton;
    pnBackground: TPanel;
    PB: TPaintBox;
    btBackImage: TButton;
    btEllipse: TSpeedButton;
    lblName: TLabel;
    lblID: TLabel;
    edtName: TEdit;
    btDelete: TSpeedButton;
    pnLoadBack: TPanel;
    edtID: TEdit;
    btPoly: TSpeedButton;
    BevelSep: TBevel;
    btAddPoint: TSpeedButton;
    btDelPoint: TSpeedButton;
    lbPozx: TLabel;
    lbPozy: TLabel;
    btDelLine: TSpeedButton;
    spAngle: TSpinEdit;
    lbAngle: TLabel;
    btCopyToClipBoard: TSpeedButton;
    lbnX: TLabel;
    lbnY: TLabel;
    ckClip: TCheckBox;
    btWand: TSpeedButton;
    trTol: TTrackBar;
    lbWTolerance: TLabel;
    trDensity: TTrackBar;
    lbWDensity: TLabel;
    lbNPoints: TLabel;
    procedure PBMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PBMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure PBMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PBPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure miDeleteClick(Sender: TObject);
    procedure btLoadClickClick(Sender: TObject);
    procedure btLoadHoverClick(Sender: TObject);
    procedure btRectClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure miClearClickImageClick(Sender: TObject);
    procedure miClearHoverImageClick(Sender: TObject);
    procedure miSaveHSImageClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btBackImageClick(Sender: TObject);
    procedure btEllipseClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btDeleteClick(Sender: TObject);
    procedure edtIDKeyPress(Sender: TObject; var Key: Char);
    procedure edtNameMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtIDMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btPolyClick(Sender: TObject);
    procedure spAngleChange(Sender: TObject);
    procedure btCopyToClipBoardClick(Sender: TObject);
    procedure btNormalClick(Sender: TObject);
    procedure ckClipClick(Sender: TObject);
    procedure btWandClick(Sender: TObject);
    procedure trTolChange(Sender: TObject);
  private
    FBorderPoly: TBorderPoly;
    FHoverPos: THoverPosition;
    FHoverBorderItem,FHoverItem, FSelectedItem: Integer;
    PStart, PCurrent: TPoint;
    FStatus: TStatus;
    procedure disablePolyTools;
    procedure enablePolyTools;
    procedure calcWandPoly(var bitmap1:TBitmap;var mask:TBool2DArray);
    procedure MagicWand(X,Y:Integer;tolerance:Real);
    procedure disableWandTools;
    procedure enableWandTools;
    function RestrictX(X: Integer): Integer;
    function RestrictY(Y: Integer): Integer;
    procedure SetSelectedItem(const Value: Integer);
    function SavePoly:Boolean;
    procedure lProperties(doEnabled: Boolean);
  public
    property SelectedItem: Integer read FSelectedItem write SetSelectedItem;
  end;

var
  frmHSIEditor: TfrmHSIEditor;
  FHotSpots: THotSpots;
  FPicture: TPicture;
  tmPoints: TPoints;
  FPoint1,FPoint2: Integer;
  svMove: TPoint;

//============================================================ IMPLEMENTATION ==
implementation
{$R *.DFM}
//------------------------------------------------------------------------------
var fillx:array[0..80000]of integer;
    filly:array[0..80000]of integer;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.calcWandPoly(var bitmap1:tbitmap;var mask:tbool2darray);
var
  i,j,xi,yi,xc,yc,nx,ny: Integer;
  modified: Boolean;
  nPoints: Integer;
  tt,modifiable: array of boolean;
  a,c,Distance: Real;
  odir,dir: Integer;
  
  //------------------------------------------------------------------------------
  function newx(x,dir:Integer):Integer;//calculate new x in the direction specified
  begin
    case (dir mod 8) of
    0:Result := x;                    //N
    1:Result := x + 1;                //NE
    2:Result := x + 1;                //E
    3:Result := x + 1;                //SE
    4:Result := x;                    //S
    5:Result := x - 1;                //SW
    6:Result := x - 1;                //W
    7:Result := x - 1;                //NW
    else
      Result := 0; //to stop compiler warnings
    end;
  end;

  //------------------------------------------------------------------------------
  function newy(y,dir:Integer):Integer;
  begin
    case (dir mod 8) of
    0:Result := y - 1;                //N
    1:Result := y - 1;		      //NE
    2:Result := y;		      //E
    3:Result := y + 1;		      //SE
    4:Result := y + 1;		      //S
    5:Result := y + 1;		      //SW
    6:Result := y;		      //W
    7:Result := y - 1;		      //NW
    else
      Result := 0; //to stop compiler warnings
    end;
  end;

//------------------------------------------------------------------------------
begin
  nPoints := 0;
  tmPoints := nil;
  SetLength(tmPoints,20);//grow 20 points at a time
  SetLength(modifiable,20);
  xi := -1;
  yi := -1;
  //find the first point of the region
  for j := 0 to bitmap1.Height - 1 do
  begin
    for i := 0 to bitmap1.Width - 1 do
      if mask[i,j] then
      begin
        xi := i;
        yi := j;
        Break;
      end;
    if mask[i,j] then Break;
  end;
  //if there is no point then exit
  if (xi < 0) or (yi < 0) then
  begin
    tmPoints := nil;
    Exit;
  end;
  xc := xi;
  yc := yi;
  dir := 8; //the first direction is North, orthogonal with current direction
            //(which is East since we were scanning left to right)
  odir := -1;
  j := 0; //"fire escape" variable
  repeat
    inc(j);
    for i := 0 to 7 do//for all 8 directions
    begin
      nx := newx(xc,dir);
      ny := newy(yc,dir);
      try
        if (nx >= bitmap1.Width) or (ny >= bitmap1.Height) or (nx < 0) or (ny < 0) then
          Continue;
        if mask[nx,ny] then//if it's found a point then add it
        begin
          //if the direction changed (if not, it is useless to add another point)
          if (odir mod 8)<>(dir mod 8) then
          begin
            if nPoints>=Length(tmPoints) then
            begin
              SetLength(tmPoints,nPoints+20);
              SetLength(modifiable,nPoints+20);
            end;
            tmPoints[nPoints].x := xc;
            tmPoints[nPoints].y := yc;
            modifiable[nPoints] := True;
            inc(nPoints);
          end;
          //if it is a corner, mark it as non eraseable
          if ((8 + dir - odir) mod 8) > 1 then
            modifiable[nPoints-1] := False;
          xc := nx;
          yc := ny;
          odir := dir;
          //new direction is orthogonal on current direction (dir:=dir-3 +1-from finally)
          dir := ((dir+5) mod 8) + 8;
          Break;
        end;
      finally
        inc(dir);
      end;
    end;
    if j > 1000000 then Break;  //in case of fire break window
  until (xc = xi) and (yc = yi);

  //simple algorithm to reduce the number of points:
  //repeat
  // for all points
  //  if the distance between i+1 and (i,i+3) line is smaller than Distance
  //  then delete i+1
  //until no point was deleted

  Distance := 3 * ((trDensity.Max-trDensity.Position+5)/trDensity.Max);
  repeat
    Setlength(tmPoints,nPoints);
    Setlength(tt,nPoints);
    Modified := False;
    for i:=0 to High(tmPoints) do tt[i]:=True;
      for i:=0 to High(tmPoints)-2 do
      begin
        if (not tt[i])or(not modifiable[i+1]) then
          Continue;
        if Abs(tmPoints[i+2].x - tmPoints[i].x)<0.0000001 then
        begin
          if Abs(tmPoints[i+1].x-tmPoints[i].x)<Distance then
          begin
            tt[i+1] := False;
            modified := True;
          end;
        end
        else
        begin
          a := -(tmPoints[i+2].y-tmPoints[i].y)/(tmPoints[i+2].x-tmPoints[i].x);
          c := -tmPoints[i].y-a*tmPoints[i].x;
          if((abs(a*tmPoints[i+1].x+tmPoints[i+1].y+c)/sqrt(a*a+1))<Distance) then
          begin
            tt[i+1] := False;
            modified := True;
          end;
        end;
      end;

    nPoints := 0;
    for i := 0 to High(tmPoints) do
    begin
      if tt[i] then
      begin
        if nPoints <> i then
          tmPoints[nPoints] := tmPoints[i];
        inc(nPoints);
      end;
    end;
  until modified = False;
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.MagicWand(x,y: Integer;Tolerance: Real);
var
  nf: Integer;
  i,ir: Integer;
  xf,yf: Integer;
  bitmap1: TBitmap;
  mask: TBool2DArray;
  oldcolor: TColor;

  procedure grow_region;
  var
    pixr,pixg,pixb,oldr,oldg,oldb: Byte;
    pix: TColorref;
    jj: Byte;
    xr,yr: Longint;
    pp: prgbtriplerow;
  begin
    oldr := GetRValue(oldcolor);
    oldg := GetGValue(oldcolor);
    oldb := GetBValue(oldcolor);

    xr := xf + 1;
    yr := yf;

    for jj := 1 to 4 do
    begin
      //Growing the Region
      if jj = 1 then
      begin
        xr := xf + 1;
        yr := yf;
      end;
      if jj = 2 then
      begin
        xr := xf - 1;
        yr := yf;
      end;
      if jj = 3 then
      begin
        xr := xf;
        yr := yf + 1;
      end;
      if jj = 4 then
      begin
        xr := xf;
        yr := yf - 1;
      end;

      //if it's not outside the bitmap
      if ((xr < bitmap1.Width) and (jj = 1)) or ((xr >= 0) and (jj = 2))
        or ((yr < bitmap1.Height) and (jj = 3)) or ((yr >= 0)and (jj = 4)) then
      begin
        pp := bitmap1.Scanline[yr];
        pix := Rgb(pp[xr].rgbtred,pp[xr].rgbtgreen,pp[xr].rgbtblue);
        pixr := GetRValue(pix);
        pixg := GetGValue(pix);
        pixb := GetBValue(pix);
        // if the current pixel should be part of the region then add it to it
        if (not Mask[xr,yr]) and (Abs(pixr-oldr) <= Tolerance*150) and (Abs(pixg-oldg) <= Tolerance*150) and (Abs(pixb-oldb) <= tolerance*150)then
        begin
          mask[xr,yr] := True;
          nf := nf + 1;
          //add to queue
          fillx[nf] := xr;
          filly[nf] := yr;
        end;
      end;
    end;
  end;

//------------------------------------------------------------------------------
begin
  //Image initialization
  if (x > FPicture.Width) or (x < 0) or (y < 0) or (y > FPicture.Height) then
    Exit;

  bitmap1 := TBitmap.Create;
  try
    bitmap1.Width := FPicture.Width;
    bitmap1.Height := FPicture.Height;
    bitmap1.PixelFormat := pf24Bit;
    bitmap1.Canvas.Draw(0,0,FPicture.Graphic);
    SetLength(mask,bitmap1.Width+5,bitmap1.Height+5);
    oldcolor := bitmap1.Canvas.Pixels[x,y];
    nf := 1;
    ir := 1;
    fillx[nf] := x;
    filly[nf] := y;
    xf := x;
    yf := y;
    grow_region;

    while nf>ir do
    begin
      //extract point&grow_region(point)
      ir := ir+1;
      xf := fillx[ir];
      yf := filly[ir];
      grow_region;
      if (nf>75000)  then
      begin
        for i := 1 to nf-ir do
        begin
          fillx[i] := fillx[ir+i];
          filly[i] := filly[ir+i];
        end;
        nf := nf-ir ;
        ir := 0;
      end;
    end;
    CalcWandPoly(bitmap1,mask);
  finally
    bitmap1.Free;
  end;
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.DisablePolyTools;
begin
  btAddPoint.Enabled := False;
  btDelPoint.Enabled := False;
  btDelLine.Enabled := False;
  lbNPoints.Visible := False;
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.EnablePolyTools;
begin
  btAddPoint.Enabled := True;
  btDelPoint.Enabled := True;
  btDelLine.Enabled := True;
  lbNPoints.Visible := True;
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.DisableWandTools;
begin
  trTol.Visible := False;
  lbWTolerance.Visible := False;
  lbWDensity.Visible := False;
  trDensity.Visible := False;
  lbNPoints.Visible := False;
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.enableWandTools;
begin
  trTol.Visible := True;
  lbWTolerance.Visible := True;
  lbWDensity.Visible := True;
  trDensity.Visible := True;
  lbNPoints.Visible := True;
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.lProperties(doEnabled: Boolean);
var
  ll: TList;
  pp:Pointer;
  tc: TControl;
  i: Integer;
begin
  pnProperties.Enabled := doEnabled;
  ll := TList.Create;
  if ll = nil then
    Exit;
  pnProperties.GetTabOrderList(ll);
  for i:=0 to ll.Count-1 do
  begin
    pp:=ll[i];
    if pp=nil then continue;
    try
      tc:=pp;
      tc.Enabled:= doEnabled;
    except
      continue;
    end;
  end;
end;

//------------------------------------------------------------------------------
function TfrmHSIEditor.savePoly:boolean;
var tt:THotSpot;
begin
  if length(tmPoints)<3 then
  begin
   tmPoints := nil;
   Result := False;
   Exit;
  end;
  FStatus := stNormal;
  tt := FHotSpots.Add;
  tt.Clipped := True;
  tt.ShapeType := stPolygon;
  tt.PolyPoints := tmPoints;
  if btPoly.Down then
    btNormal.Down:= True;
  tmPoints := nil;
  PBPaint(Self);
  Result := True;
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.FormCreate(Sender: TObject);
begin
  FStatus := stNormal;
  FHoverBorderItem := -1;
  FHoverItem := -1;
  FSelectedItem := -1;
  disablePolyTools;
  disableWandTools;
  lProperties(False);
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.PBMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  P: TPoint;
  i: Integer;
begin
  pnBackground.SetFocus;//so that the editboxes lose focus when mb is pressed
  case Button of
  mbLeft:
    begin
      //Create ellipse or rectangle
      if btRect.Down or btEllipse.Down then
      begin
        if FStatus = stDrawPoly then SavePoly;
        PStart.x := x;
        PStart.y := y;
        PCurrent := Point(X, Y);
        FStatus := stDrawing;
      end;

      if FStatus <> stDrawPoly then
        tmPoints := nil;

      if FStatus = stWand then
      begin
        PStart.x := X;
        PStart.y := Y;
        MagicWand(X,Y,trTol.Position/trTol.Max);
        PBPaint(Self);
      end;
      //Create polygon
      if btPoly.Down then
      begin
        PStart := Point(X, Y);
        PCurrent := Point(X, Y);
        if tmPoints <> nil then
        begin
          //if the user tries to close the polygon then finish drawing
          if (abs(tmPoints[0].x - tmPoints[High(tmPoints)].x) < CornerSize)and
             (abs(tmPoints[0].y - tmPoints[High(tmPoints)].y) < CornerSize) then
          begin
            tmPoints := Copy(tmPoints,0,High(tmPoints));
            if SavePoly then
              SelectedItem := FHotSpots.Count - 1;
            Exit;
          end;
          SetLength(tmPoints,Length(tmPoints) + 1);
          tmPoints[High(tmPoints)].x := X;
          tmPoints[High(tmPoints)].y := Y;
        end
        else
        begin
          FStatus := stDrawPoly;
          SetLength(tmPoints,2);
          Toolbar1.Enabled := False;
          tmPoints[0].x := X;
          tmPoints[0].y := Y;
          tmPoints[1].x := X;
          tmPoints[1].y := Y;
        end;
      end;

      //Editing mode
      if btNormal.Down then
      begin
        //If the mouse is on the border
        if FHoverBorderItem <> -1 then
        begin
          if FHotSpots[FHoverBorderItem].ShapeType = stPolygon then
          begin
            case FBorderPoly of
            bLine:
              begin
                PCurrent := Point(X, Y);
                FStatus := stMoveLine;
              end;
            bPoint:
              begin
                FStatus := stMovePoint;
              end;
            end;
            SelectedItem := FHoverBorderItem;
            PBPaint(Self);
          end
          else
          begin
            if FHotSpots[FHoverBorderItem].ShapeType = stEllipse then
            begin
              FStatus := stScaleEllipse;
              PStart := Point(X, Y);
              PCurrent := Point(X, Y);
              // WI:=FHotSpots[FHoverBorderItem].Width;
              // HI:=FHotSpots[FHoverBorderItem].Height;
              SelectedItem:=FHoverBorderItem;
              PBPaint(Self);
            end;
          end;
        end
        else
          if FHoverItem <> -1 then
          begin
            // if SelectedItem=FHoverItem then//if it's already selected then move it
            // begin
            PCurrent.x := x;
            PCurrent.y := y;
            PStart.x := x;
            PStart.y := y;
            FStatus := stMove;
            svMove.x := FHotSpots[FHoverItem].x;
            svMove.y := FHotSpots[FHoverItem].y;
            SelectedItem := FHoverItem;
            // end else SelectedItem:= FHoverItem;//else select it
          end
          else
            SelectedItem := -1;
        end;

        //If Add point function is selected
        if (btAddPoint.Down) and (FHoverBorderItem <> -1) and (FBorderPoly = bLine) then
        begin
          tmPoints := FHotSpots[FHoverBorderItem].PolyPoints;
          SetLength(tmPoints,length(tmPoints) + 1);

          //if the point is between the last and the first
          if ((FPoint1=0)and(FPoint2=(high(tmPoints)-1))) or
             ((FPoint2=0)and(FPoint1=(high(tmPoints)-1))) then
          begin
            //Add the point at the end
            tmPoints[High(tmPoints)].x := x;
            tmPoints[High(tmPoints)].y := y;
            FHotSpots[FHoverBorderItem].PolyPoints:=tmPoints;
          end
          else
          begin
            //else move all the points one position up
            for i := High(tmPoints) downto Max(FPoint1,FPoint2) + 1 do
            begin
              tmPoints[i] := tmPoints[i - 1];
            end;
            //add the point
            i := Max(FPoint1,FPoint2);
            tmPoints[i].x := x;
            tmPoints[i].y := y;
            //finally update the hotspot
            FHotSpots[FHoverBorderItem].PolyPoints := tmPoints;
          end;
          //automatically select the normal button
          btNormal.Down := True;
          PBPaint(self);
        end;

        //If Del line function is selected
        if (btDelLine.Down) and (FHoverBorderItem <> -1) and (FBorderPoly = bLine) then
        begin
           //if it has less than 5 points delete the whole hotspot
          if Length(FHotSpots[FHoverBorderItem].PolyPoints) <= 4 then
          begin
            btDeleteClick(Self);
            Exit;
          end;
          tmPoints := FHotSpots[FHoverBorderItem].PolyPoints;

          //if the point is between the last and the first
          if ((FPoint1 = 0) and (FPoint2 = (High(tmPoints) - 1))) or
             ((FPoint2 = 0) and (FPoint1 = (High(tmPoints) - 1))) then
          begin
            //move the points down 1 position, but without the last point
            for i := Min(FPoint1,FPoint2) to High(tmPoints) - 2 do
              tmPoints[i] := tmPoints[i+1];
          end
          else
          begin
            //else move down the points two positions
            for i := Min(FPoint1,FPoint2) to High(tmPoints) - 2 do
              tmPoints[i] := tmPoints[i+2];
          end;
          //adjust the length of the array of points
          Setlength(tmPoints,length(tmPoints) - 2);
          //finally update the hotspot
          FHotSpots[FHoverBorderItem].PolyPoints := tmPoints;
          // btNormal.Down := True; // disabled for wand generated hotspots which have too many points
          //                        // to make easyer editing
          PBPaint(Self);
        end;
        // If Del point function is selected
        if (btDelPoint.Down) and (FHoverBorderItem <> -1) and (FBorderPoly = bPoint) then
        begin
          if Length(FHotSpots[FHoverBorderItem].PolyPoints) <= 3 then
          begin
            btDeleteClick(Self);
            Exit;
          end;
          tmPoints := FHotSpots[FHoverBorderItem].PolyPoints;
          for i := FPoint1 to High(tmPoints) - 1 do
            tmPoints[i] := tmPoints[i + 1];
          Setlength(tmPoints,length(tmPoints) - 1);
          FHotSpots[FHoverBorderItem].PolyPoints := tmPoints;
          // btNormal.Down := True; //disabled for wand generated hotspots which have too many points
          //                        //to make easyer editing
          PBPaint(self);
        end;
      end;
  mbRight:
    begin
      if FStatus = stDrawPoly then
      begin
        if SavePoly then SelectedItem := FHotSpots.Count - 1;
        Exit;
      end;
      // To simulate mouse movement if the user repeatedly clicks the right mouse button
      PBMouseMove(Sender,Shift,X, Y);

      if (FHoverBorderItem <> -1) or (FHoverItem <> -1) then
      begin
        if FHoverItem <> -1 then
          SelectedItem := FHoverItem
        else
          SelectedItem := FHoverBorderItem;
        P := PB.ClientToScreen(Point(X, Y));
        pmHotSpot.Popup(P.X, P.Y);
      end;
    end;
  end;
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.PBMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  i: Integer;
begin
  lbPozx.Caption := IntToStr(x);
  lbPozy.Caption := IntToStr(y);
  case FStatus of
  stNormal:
    begin
      PB.Cursor := crDefault;
      if btPoly.Down or btRect.Down or btEllipse.Down then
        Exit;
      for i := 0 to FHotSpots.Count-1 do
      begin
        if FHotSpots[i].ShapeType = stPolygon then
        begin
          FBorderPoly := FHotSpots[i].getBorderPolyPos(x,y,FPoint1,FPoint2);
          case FBorderPoly of
          bNone:
            begin
              FHoverItem := -1;
              FHoverBorderItem := -1;
              Continue;
            end;
          bPoint,bLine:
            begin
              FHoverBorderItem := i;
              FHoverItem := -1;
              PB.Cursor := crHandPoint;
              Exit;
            end;
          bInside:
            begin
              FHoverItem := i;
              FHoverBorderItem := -1;
              PB.Cursor := crHandPoint;
              Exit;
            end;
          end;
        end
        else
        begin
            FHoverPos := FHotSpots[i].GetHoverPos(X, Y);
            if not (FHoverPos in [hpNone, hpInside]) then
            begin
              FHoverBorderItem := i;
              Break;
            end else FHoverBorderItem := -1;
            if FHoverPos = hpInside then
            begin
              FHoverItem := i;
              Break;
            end
            else
              FHoverItem := -1;
          end;
        end;

        case FHoverPos of
        hpNone:PB.Cursor := crDefault;
        hpInside:PB.Cursor := crHandPoint;
        hpBorder:PB.Cursor := crSizeAll;
        end;
      end;
      //if drawing a rectangle or ellipse
  stDrawing:
    with PB.Canvas do
    begin
      X := RestrictX(X);
      Y := RestrictY(Y);

      Pen.Mode := pmNotXOR;
      Pen.Style := psDot;
      Pen.Width := 1;
      Pen.Color := clBlack;
      Brush.Style := bsClear;

      Rectangle(Round(PStart.X), Round(PStart.Y), Round(PCurrent.X), Round(PCurrent.Y));
      Rectangle(Round(PStart.X), Round(PStart.Y), X, Y);
      PCurrent.X := X;
      PCurrent.Y := Y;
    end;
  stDrawPoly:
    with PB.Canvas do
    begin
      X := RestrictX(X);
      Y := RestrictY(Y);

      Pen.Mode := pmNotXOR;
      Pen.Style := psDot;
      Pen.Width := 1;
      Pen.Color := clBlack;
      Brush.Style := bsClear;
      //draw the current line in XOR mode
      MoveTo(Round(PStart.X), Round(PStart.Y));
      LineTo(PCurrent.X, PCurrent.Y);

      MoveTo(PStart.X, PStart.Y);
      LineTo(X, Y);
      PCurrent.X := X;
      PCurrent.Y := Y;
      tmPoints[High(tmPoints)].x := x;
      tmPoints[High(tmPoints)].y := y;
    end;
  stMove:
    begin
      X := RestrictX(X);
      Y := RestrictY(Y);
      //making it snap to the original position
      if (Abs(PStart.x-x) >= 2) or (Abs(PStart.y-y) >= 2) then
      begin
        PCurrent := SubtractPoints(Point(x,y),PCurrent);
        FHotspots[SelectedItem].X1 := FHotspots[SelectedItem].X1+PCurrent.x;
        FHotspots[SelectedItem].Y1 := FHotspots[SelectedItem].Y1+PCurrent.y;
        PCurrent.x := x;
        PCurrent.y := y;
        end else
        begin
          FHotspots[SelectedItem].Y1 := svmove.y;
          FHotspots[SelectedItem].X1 := svmove.x;
        end;
        PBPaint(Self);
      end;
  stMovePoint:
    begin
      X := RestrictX(X);
      Y := RestrictY(Y);
      FHotspots[FHoverBorderItem].PolyPoint[FPoint1]:=(RPoint(x,y));
      PBPaint(Self);
    end;
  stMoveLine:
    begin
      X := RestrictX(X);
      Y := RestrictY(Y);
      PCurrent := SubtractPoints(Point(x,y),PCurrent);
      FHotspots[FHoverBorderItem].PolyPoint[FPoint1] := AddPoints(FHotspots[FHoverBorderItem].PolyPoint[FPoint1],PCurrent);
      FHotspots[FHoverBorderItem].PolyPoint[FPoint2] := AddPoints(FHotspots[FHoverBorderItem].PolyPoint[FPoint2],PCurrent);
      PCurrent.x := x;
      PCurrent.y := y;
      PBPaint(Self);
    end;
  stScaleEllipse:
    with PB.Canvas do
    begin
      FHotSpots[FHoverBorderItem].scaleEllipse(Point(x,y),PCurrent,PStart);
      PCurrent := Point(x,y);
      PBPaint(Self);
    end;
  end;
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.PBMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  tt: THotSpot;
begin
  case FStatus of
  //finish the hotspot(rect or ellipse)
  stDrawing:
    begin
      FStatus := stNormal;
      tt := FHotSpots.Add;
      tt.Clipped := True;
      tt.SetRect(PStart.X, PStart.Y, RestrictX(X), RestrictY(Y));
      if tt.Width < 10 then
        tt.Width := 10;
      if tt.Height < 10 then
        tt.Height := 10;
      if btRect.Down then
        tt.ShapeType := stPolygon;
      if btEllipse.Down then
        tt.ShapeType := stEllipse;
      btNormal.Down := True;
      SelectedItem := FHotSpots.Count-1;
      PBPaint(Self);
    end;
  stMovePoint,stMoveLine:
    begin
      FStatus := stNormal;
      SelectedItem := FHoverBorderItem;
      FHoverBorderItem := -1;
      PBPaint(Self);
    end;
  stMove:
    begin
      FStatus := stNormal;
      PBPaint(Self);
    end;
  stScaleEllipse:
    begin
      SelectedItem := FHoverBorderItem;
      FStatus := stNormal;
      FHoverBorderItem := -1;
      PBPaint(Self);
    end;
  end;
end;

//------------------------------------------------------------------------------
function TfrmHSIEditor.RestrictX(X: Integer): Integer;
begin
  Result := Max(Min(PB.Width, X), 0);
end;

//------------------------------------------------------------------------------
function TfrmHSIEditor.RestrictY(Y: Integer): Integer;
begin
  Result := Max(Min(PB.Height, Y), 0);
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.PBPaint(Sender: TObject);
var
  i,j: Integer;
  B: TBitmap;
  tp: array of TPoint;
begin
  B := TBitmap.Create;
  with B.Canvas do
  try
    B.Width := PB.Width;
    B.Height := PB.Height;

    // fill the surface
    Brush.Style := bsSolid;
    Brush.Color := PB.Color;
    // Brush.Color := clBlack;

    FillRect(PB.BoundsRect);
    B.Canvas.Draw(0, 0, FPicture.Graphic);

    // draw the hotspots
    Brush.Style := bsClear;
    for i := 0 to FHotSpots.Count-1 do
    begin
      Pen.Mode := pmNotXOR;
      Pen.Style := psSolid;
      if i = FHoverBorderItem then
      begin
        if FHotspots[i].ShapeType<>stPolygon then
        begin
          Pen.Color := clRed;
          Pen.Style := psSolid;
        end
        else
        begin
          Pen.Color := clBlack;
          if FStatus <> stNormal then
            Pen.Style := psDot
          else
            Pen.Style := psSolid;
        end;
      end
      else
        if i = FSelectedItem then
          Pen.Color := clBlue
        else
          Pen.Color := clBlack;

      // Modified to draw the right shape
      Brush.Style := bsClear;
      FHotspots[i].DrawShape(B.Canvas);

      //draw the rectangles in the points
      Pen.Mode := pmCopy;
      Pen.Color := clBlack;
      Brush.Style := bsSolid;
      Brush.Color := clBlack;
      if i = FSelectedItem then with FHotSpots[i] do
      begin
        if (PolyPoints <> nil) and ((FStatus = stNormal) or (FStatus = stMove)) then
        begin
          if ShapeType=stEllipse then
          begin
            for j := 0 to high(PolyPoints) do with PolyPoints[j] do
              if (j mod 3) = 0 then
                Rectangle(Round(x) - BordRectSz,Round(y)-BordRectSz,Round(x)+BordRectSz,Round(y)+BordRectSz);
          end
          else
          begin
            for j := 0 to high(PolyPoints) do
              with PolyPoints[j] do
                Rectangle(Round(x)-BordRectSz,Round(y)-BordRectSz,Round(x)+BordRectSz,Round(y)+BordRectSz);
          end;
        end;
      end;
    end;
    //draw the current magic wand selection


    if (FStatus = stWand) then
      lbNPoints.Caption := 'Poly Points: ' + IntToStr(length(tmPoints))
    else
      if SelectedItem <> -1 then
        lbNPoints.Caption := 'Poly Points: '+IntToStr(length(FHotspots[SelectedItem].PolyPoints));

    if (FStatus=stWand)and(tmPoints<>nil) then
    begin
      Pen.Style := psDot;
      Pen.Mode := pmNotXor;
      Pen.Color := clBlack;
      Pen.Width := 1;
      Brush.Style := bsClear;

      SetLength(tp,Length(tmPoints));
      for i := 0 to High(tp) do
        tp[i] := PRound(tmPoints[i]);
      PolyLine(tp);
    end;

  finally
    PB.Canvas.Draw(0, 0, B);
    B.Free;
    // during the polydraw, draw the polygon with the xor pen
    if (FStatus = stDrawPoly) and (tmPoints <> nil) then
    with PB.Canvas do
    begin
      Pen.Style := psDot;
      Pen.Mode := pmNotXor;
      Pen.Color := clBlack;
      Pen.Width := 1;
      Brush.Style := bsClear;

      SetLength(tp,Length(tmPoints)-1);
      for i := 0 to High(tp) do
        tp[i] := PRound(tmPoints[i]);
      PolyLine(tp);

      MoveTo(PStart.X, PStart.Y);
      LineTo(PCurrent.X, PCurrent.Y);
    end;
  end;
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.miDeleteClick(Sender: TObject);
var
  temp:integer;
begin
  temp := SelectedItem;
  SelectedItem := -1;
  FHotSpots.Delete(temp);
  FHoverBorderItem := -1;
  FHoverItem:= -1;
  FHoverPos := hpNone;
  PB.Cursor := crDefault;
  PBPaint(Self);
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.btLoadClickClick(Sender: TObject);
begin
  OPD.Title := 'Clicked picture';
  if FSelectedItem=-1 then
    Exit;
  if OPD.Execute then
    ImgClick.Picture.LoadFromFile(OPD.FileName);
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.btLoadHoverClick(Sender: TObject);
begin
  OPD.Title := 'Hover picture';
  if FSelectedItem = -1 then
    Exit;
  if OPD.Execute then
    ImgHover.Picture.LoadFromFile(OPD.FileName);
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.SetSelectedItem(const Value: Integer);
begin
  if FSelectedItem <> Value then
  begin
    // save the properties for the old selected hotspot
    if FSelectedItem <> -1 then
    with FHotSpots[FSelectedItem] do
    begin
      Hint := txtHint.Text;
      HoverImage.Assign(imgHover.Picture);
      ClickImage.Assign(imgClick.Picture);
      // Added the name and id
      try
        Id := StrToInt(edtId.Text);
      except
        on EConvertError do
          ID := 0;
      end;
      Name := edtName.Text;
      if ShapeType = stPolygon then
        SavePoly;
    end;

    // load the images (and the name&ID) of the newly selected hotspot
    FSelectedItem := Value;
    PBPaint(Self);
    lProperties(FSelectedItem <> -1);
    if pnProperties.Enabled then
      pnTitle.Color := clActiveCaption
    else
      pnTitle.Color := clInactiveCaption;

    if FSelectedItem <> -1 then
    with FHotSpots[FSelectedItem] do
    begin
      if ShapeType = stPolygon then
        EnablePolyTools
      else
        DisablePolyTools;

      txtHint.Text := Hint;
      ImgHover.Picture.Assign(HoverImage);
      ImgClick.Picture.Assign(ClickImage);
      edtName.Text := Name;
      edtID.Text := IntToStr(Id);
      spAngle.Value := Angle;
      ckClip.Checked := Clipped;
      btCopyToClipboard.Enabled := True;
      btDelete.Enabled := True;
    end
    else
    begin
      DisablePolyTools;
      txtHint.Text := '';
      edtId.Text := '';
      edtName.Text := '';
      spAngle.Value := 0;
      imgHover.Picture.Bitmap.Width := 0;
      imgHover.Picture.Bitmap.Height := 0;
      imgClick.Picture.Bitmap.Width := 0;
      imgClick.Picture.Bitmap.Height := 0;
      btCopyToClipboard.Enabled := False;
      btDelete.Enabled := False;
    end;
  end;
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.btRectClick(Sender: TObject);
begin
  if FStatus = stWand then
  begin
    DisableWandTools;
    SavePoly;
    tmPoints := nil;
  end;
  if FStatus = stDrawPoly then
  begin
    SavePoly;
  end;
  FStatus := stNormal;
  SelectedItem := -1;
  PBPaint(Self);
end;


//------------------------------------------------------------------------------
procedure TfrmHSIEditor.btOkClick(Sender: TObject);
begin
 // simulate the unselection of the item in order to save the hint
  if FStatus = stWand then
    SavePoly;
  SelectedItem := -1;
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.miClearClickImageClick(Sender: TObject);
begin
  with imgClick.Picture.Bitmap do
  begin
    Width := 0;
    Height := 0;
  end;
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.miClearHoverImageClick(Sender: TObject);
begin
  with imgHover.Picture.Bitmap do
  begin
    Width := 0;
    Height := 0;
  end;
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.miSaveHSImageClick(Sender: TObject);
var
  Source, Dest: TBitmap;
begin
  if not Assigned(FPicture) then
    Exit;

  if SPD.Execute then
  begin
    Source := TBitmap.Create;
    Dest := TBitmap.Create;
    with FHotSpots[FSelectedItem] do
    try
      Source.Width := FPicture.Width;
      Source.Height := FPicture.Height;
      Source.Canvas.Draw(0,0,FPicture.Graphic);

      Dest.Width := X2-X1;
      Dest.Height := Y2-Y1;
      Dest.Canvas.CopyRect(
        Rect(0,0,Dest.Width,Dest.Height),
        Source.Canvas,
        AsRect);
    finally
      Dest.SaveToFile(SPD.FileName);
      Dest.Free;
      Source.Free;
    end;
  end;
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.FormResize(Sender: TObject);
var
  tt: Integer;
begin
  tt := txtHint.Top-10-pnClick.Top;
  pnHover.Height := (tt) div 2;
  pnClick.Height := pnHover.Height;
  pnHover.Top := pnClick.Top+pnClick.Height;
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.btBackImageClick(Sender: TObject);
begin
  OPD.Title := 'Background picture';
  if OPD.Execute then
  begin
    FPicture.LoadFromFile(OPD.FileName);
    PBPaint(Self);
  end;
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.btEllipseClick(Sender: TObject);
begin
  if FStatus = stWand then
  begin
    DisableWandTools;
    SavePoly;
    tmPoints := nil;
  end;
  SelectedItem := -1;
  if FStatus = stDrawPoly then
  begin
    savePoly;
  end;
  FStatus := stNormal;
  PBPaint(Self);
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  temp: Integer;
begin
  if (FStatus = stDrawPoly) and ((Key = vk_Return) or (Key = vk_Escape)) then
  begin
    if SavePoly then
      SelectedItem := FHotSpots.Count - 1;
  end;
  if (SelectedItem = -1)or(Key <> vk_Delete) then
    Exit;
  if edtId.Focused or edtName.Focused or txtHint.Focused or spAngle.Focused then
    Exit;
  temp := SelectedItem;
  SelectedItem := -1;
  FHotSpots.Delete(temp);
  FHoverBorderItem := -1;
  FHoverItem := -1;
  FHoverPos := hpNone;
  PB.Cursor := crDefault;
  PBPaint(Self);
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.btDeleteClick(Sender: TObject);
var
  temp: Integer;
begin
  if (SelectedItem = -1) then
    Exit;
  temp := SelectedItem;
  SelectedItem := -1;
  FHotSpots.Delete(temp);
  FHoverBorderItem := -1;
  FHoverItem := -1;
  FHoverPos := hpNone;
  PB.Cursor := crDefault;
  btNormal.Down := True;
  PBPaint(Self);
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.edtIDKeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key > '9') or (Key < '0')) and (Key > ' ') then
    Key := #0;
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.edtNameMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  edtName.SelectAll;
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.edtIDMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  edtID.SelectAll;
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.btPolyClick(Sender: TObject);
begin
  if FStatus = stWand then
  begin
    DisableWandTools;
    SavePoly;
    FStatus := stNormal;
    tmPoints := nil;
  end;
  SelectedItem := -1;
  PBPaint(Self);
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.spAngleChange(Sender: TObject);
begin
  if SelectedItem = -1 then
    Exit;
  FHotSpots[SelectedItem].Angle := spAngle.Value;
  PBPaint(Self);
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.btCopyToClipBoardClick(Sender: TObject);
var
  MyFormat : Word;
  Bitmap,Source : TBitMap;
  AData :Cardinal;
  APalette : HPalette;
begin
  if SelectedItem<0 then
    Exit;
  Bitmap := TBitmap.Create;
  Source := TBitmap.Create;
  try
    Source.Width := FPicture.Width;
    Source.Height := FPicture.Height;
    Source.Canvas.Draw(0,0,FPicture.Graphic);
    with FHotSpots[SelectedItem] do
    begin
      Bitmap.Width := Width;
      Bitmap.Height := Height;
      Bitmap.Canvas.CopyRect(Rect(0,0,Bitmap.Width,Bitmap.Height),Source.Canvas,AsRect);
    end;
    Bitmap.SaveToClipBoardFormat(MyFormat,AData,APalette);
    ClipBoard.SetAsHandle(MyFormat,AData);
  finally
    Bitmap.Free;
    Source.Free;
  end;
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.btNormalClick(Sender: TObject);
begin
  if FStatus = stWand then
  begin
    DisableWandTools;
    if SavePoly then
      SelectedItem := FHotSpots.Count - 1;
    tmPoints := nil;
  end;
  if FStatus = stDrawPoly then
  begin
    if SavePoly then
      SelectedItem := FHotSpots.Count - 1;
  end;
  FStatus := stNormal;
  PBPaint(Self);
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.ckClipClick(Sender: TObject);
begin
  if SelectedItem <> -1 then
    FHotSpots[SelectedItem].Clipped := ckClip.Checked;
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.btWandClick(Sender: TObject);
begin
  PB.Cursor := crDefault;
  PStart.x := -1;
  PStart.y := -1;
  if FStatus = stDrawPoly then
    SavePoly;
  SelectedItem := -1;
  tmPoints := nil;
  FStatus := stWand;
  EnableWandTools;
  PBPaint(Self);
end;

//------------------------------------------------------------------------------
procedure TfrmHSIEditor.trTolChange(Sender: TObject);
begin
  if (PStart.x<0) or (PStart.y<0) then
    Exit;
  MagicWand(PStart.x,PStart.y,trTol.Position/trTol.Max);
  PBPaint(Self);
end;

//------------------------------------------------------------------------------
initialization
  FHotSpots := THotSpots.Create(nil);
  FPicture := TPicture.Create;

finalization
  FHotSpots.Free;
  FPicture.Free;

end.
