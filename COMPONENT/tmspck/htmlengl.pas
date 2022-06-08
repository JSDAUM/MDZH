{*************************************************************************}
{ Mini HTML rendering engine                                              }
{ for Delphi 2.0,3.0,4.0,5.0 + C++Builder 1.0,3.0,4.0,5.0                 }
{ version 1.6 - rel. February, 2001                                       }
{                                                                         }
{ written by TMS Software                                                 }
{            copyright © 1999-2001                                        }
{            Email : info@tmssoftware.com                                 }
{            Website : http://www.tmssoftware.com/                        }
{                                                                         }
{ The source code is given as is. The author is not responsible           }
{ for any possible damage done due to the use of this code.               }
{ The component can be freely used in any application. The complete       }
{ source code remains property of the author and may not be distributed,  }
{ published, given or sold in any form as such. No parts of the source    }
{ code can be included in any other component or application without      }
{ written authorization of the author.                                    }
{*************************************************************************}

procedure PrintBitmap(Canvas:  TCanvas; DestRect:  TRect;  Bitmap:  TBitmap);
var
 BitmapHeader:  pBitmapInfo;
 BitmapImage :  POINTER;
 HeaderSize  :  DWORD;
 ImageSize   :  DWORD;
begin
 GetDIBSizes(Bitmap.Handle, HeaderSize, ImageSize);
 GetMem(BitmapHeader, HeaderSize);
 GetMem(BitmapImage,  ImageSize);
 try
   GetDIB(Bitmap.Handle, Bitmap.Palette, BitmapHeader^, BitmapImage^);
   StretchDIBits(Canvas.Handle,
                 DestRect.Left, DestRect.Top,     // Destination Origin
                 DestRect.Right  - DestRect.Left, // Destination Width
                 DestRect.Bottom - DestRect.Top,  // Destination Height
                 0, 0,                            // Source Origin
                 Bitmap.Width, Bitmap.Height,     // Source Width & Height
                 BitmapImage,
                 TBitmapInfo(BitmapHeader^),
                 DIB_RGB_COLORS,
                 SRCCOPY)
 finally
  FreeMem(BitmapHeader);
  FreeMem(BitmapImage)
 end;
end;

function DirExists(const Name: string): Boolean;
var
  Code: Integer;
begin
  Code := GetFileAttributes(PChar(Name));
  Result := (Code <> -1) and (FILE_ATTRIBUTE_DIRECTORY and Code <> 0);
end;

function SysImage(Canvas:tCanvas;x,y:integer;apath:string;large,draw,print:boolean;resfactor:double):tpoint;
var
  SFI: TSHFileInfo;
  i,err:integer;
  imglsthandle:thandle;
  rx,ry:integer;
  bmp:TBitmap;
  r:trect;
begin
  val(apath,i,err);

  if (apath<>'') and (err<>0) then
  begin
   if FileExists(APath) or DirExists(APath) then
    // If the file or directory exists, just let Windows figure out it's attrs.
     SHGetFileInfo(PChar(APath), 0, SFI, SizeOf(TSHFileInfo),
        SHGFI_SYSICONINDEX {or OPEN_FLAG[Open] or SELECTED_FLAG[Selected]})
           else
    // File doesn't exist, so Windows doesn't know what to do with it.  We have
    // to tell it by passing the attributes we want, and specifying the
    // SHGFI_USEFILEATTRIBUTES flag so that the function knows to use them.
     SHGetFileInfo(PChar(APath), 0, SFI, SizeOf(TSHFileInfo),
         SHGFI_SYSICONINDEX or SHGFI_USEFILEATTRIBUTES {or OPEN_FLAG[Open] or
         SELECTED_FLAG[Selected]});
   i := SFI.iIcon;
  end;

  if Large then
    imglsthandle := SHGetFileInfo('', 0, SFI, SizeOf(SFI),
                            SHGFI_SYSICONINDEX or SHGFI_LARGEICON)
  else
    imglsthandle := SHGetFileInfo('', 0, SFI, SizeOf(SFI),
                            SHGFI_SYSICONINDEX or SHGFI_SMALLICON);

  ImageList_GetIconSize(imglsthandle,rx,ry);
  Result := point(rx,ry);

  if draw and not print then
   ImageList_Draw(imglsthandle,i,Canvas.handle,x,y, ILD_TRANSPARENT);

  if draw and print then
   begin
     bmp:=TBitmap.Create;
     bmp.width:=rx;
     bmp.height:=ry;
     ImageList_Draw(imglsthandle,i,bmp.Canvas.handle,0,0,ILD_TRANSPARENT);
     r.left:=x;
     r.top:=y;
     r.right:=x+round(rx*resfactor);
     r.bottom:=y+round(ry*resfactor);
     PrintBitmap(Canvas,r,bmp);
     bmp.Free;
   end;
end;

function Text2Color(s:string):tcolor;
begin
  Result := clBlack;
  if (s='clred') then Result := clred;
  if (s='clblack') then Result := clblack;
  if (s='clblue') then Result := clblue;
  if (s='clgreen') then Result := clgreen;
  if (s='claqua') then Result := claqua;
  if (s='clyellow') then Result := clyellow;
  if (s='clfuchsia') then Result := clfuchsia;
  if (s='clwhite') then Result := clwhite;
  if (s='cllime') then Result := cllime;
  if (s='clsilver') then Result := clsilver;
  if (s='clgray') then Result := clgray;
  if (s='clolive') then Result := clolive;
  if (s='clnavy') then Result := clnavy;
  if (s='clpurple') then Result := clpurple;
  if (s='clteal') then Result := clteal;
  if (s='clmaroon') then Result := clmaroon;

  if (s='clbackground') then Result := clbackground;
  if (s='clactivecaption') then Result := clactivecaption;
  if (s='clinactivecaption') then Result := clinactivecaption;
  if (s='clmenu') then Result := clmenu;
  if (s='clwindow') then Result := clwindow;
  if (s='clwindowframe') then Result := clwindowframe;
  if (s='clmenutext') then Result := clmenutext;
  if (s='clwindowtext') then Result := clwindowtext;
  if (s='clcaptiontext') then Result := clcaptiontext;
  if (s='clactiveborder') then Result := clactiveborder;
  if (s='clinactiveborder') then Result := clinactiveborder;
  if (s='clappworkspace') then Result := clappworkspace;
  if (s='clhighlight') then Result := clhighlight;
  if (s='clhighlighttext') then Result := clhighlighttext;
  if (s='clbtnface') then Result := clbtnface;
  if (s='clbtnshadow') then Result := clbtnshadow;
  if (s='clgraytext') then Result := clgraytext;
  if (s='clbtntext') then Result := clbtntext;
  if (s='clinactivecaptiontext') then Result := clinactivecaptiontext;
  if (s='clbtnhighlight') then Result := clbtnhighlight;
  if (s='cl3ddkshadow') then Result := clgraytext;
  if (s='cl3dlight') then Result := cl3dlight;
  if (s='clinfotext') then Result := clinfotext;
  if (s='clinfobk') then Result := clinfobk;
end;

function HexVal(s:string):integer;
var
  i,j:integer;
begin
  i:=ord(s[1])-ord('0');
  if (i>10) then i:=10+i-(ord('A')-ord('0'));
  j:=ord(s[2])-ord('0');
  if (j>10) then j:=10+j-(ord('A')-ord('0'));
  Result := i*16+j;
end;

function Hex2Color(s:string):tcolor;
var
  r,g,b:integer;
begin
  Delete(s,1,1);
  r := Hexval(uppercase(copy(s,1,2)));
  g := Hexval(uppercase(copy(s,3,2)));
  b := Hexval(uppercase(copy(s,5,2)));
  Result := tcolor(b*256*256+g*256+r);
end;

function ipos(su,s:string):Integer;
begin
  Result := Pos(UpperCase(su),UpperCase(s));
end;
{
function iposfrom(su,s:string; frm:Integer):Integer;
var
  i: Integer;
begin
  Delete(s, 1, frm - 1);
  i := Pos(UpperCase(su),UpperCase(s));
  if (i > 0) then
    Result := i + frm
  else
    Result := 0;
end;
}
function istrtoint(s:string):Integer;
var
  err,res: Integer;
begin
  Val(s,res,err);
  Result := res;
end;

{
function ReplaceString(const srch,repl:string;var dest:string;var srchpos:integer):boolean;
var
  i:integer;
begin
  i:=pos(srch,dest);
  if i>srchpos then
   begin
    Result := true;
    delete(dest,i,length(srch));
    dest:=copy(dest,1,i)+repl+copy(dest,i+1,255);
    srchpos:=i+length(repl);
   end
  else Result := false;
end;
}

function dbtagstrip(s:string):string;
var
 i,j:integer;
begin
 i:=pos('<#',s);
 if (i>0) then
  begin
    Result := copy(s,1,i-1);
    delete(s,1,i);
    j:=pos('>',s);
    if (j>0) then delete(s,pos('>',s),1);
    Result := Result+s;
  end
 else
  Result := s;
end;

function iReplaceString(const srch,repl:string;var dest:string;var srchpos:integer):Boolean;
var
  i: Integer;
begin
  i := ipos(srch,dest);
  if (i > srchpos) then
  begin
    Result := True;
    Delete(dest,i,length(srch));
    dest := Copy(dest,1,i-1) + repl + Copy(dest,i,255);
    srchpos := i + length(repl);
  end
  else
    Result := False;
end;


function HTMLDrawEx(Canvas:tCanvas;s:string;fr:trect;
                                 fImages:TImageList;
                                 xpos,ypos,focuslink,hoverlink,shadowoffset:integer;
                                 checkhotspot,checkheight,print,selected,blink,hoverstyle:boolean;
                                 resfactor:double;
                                 urlcolor,hovercolor,hoverFontcolor,shadowcolor:tcolor;
                                 var anchorval,stripval,focusanchor:string;
                                 var xsize,ysize,hyperlinks,mouselink:integer;
                                 var hoverrect:trect):boolean;
var
 su:string;
 r,dr,hr,rr,er:trect;
 htmlwidth,htmlheight:integer;
 align:talignment;
 oldFont:tFont;
 calcFont:tFont;
 drawFont:tFont;
 oldcalcFont:tFont;
 olddrawFont:tFont;
 hotspot:boolean;
 anchor,oldanchor,mouseinanchor:boolean;
 bgcolor,paracolor,hvrcolor,hvrfntcolor,pencolor,blnkcolor:tcolor;
 lastanchor,oldanchorval:string;
 bmpsize:tpoint;
 isSup,isSub,isPara,isShad:boolean;
 subh,suph,imgali,srchpos,hlcount,licount:integer;
 hrgn,holdFont:thandle;
 listindex:integer;
 dtp:TDrawTextParams;
 {new for editing}
 nnFit:integer;
 nnSize:TSize;
 inspoint:integer;
 nndx:pointer;
 saveCanvas:tcontrolCanvas;
 invisible:boolean;

 {end of new for editing}

  procedure StartRotated(Canvas: TCanvas; Angle: Integer);
  var
    LFont:TLogFont;
  begin
    GetObject(Canvas.Font.Handle,SizeOf(LFont),Addr(LFont));
    LFont.lfEscapement := Angle*10;
    LFont.lfOrientation := Angle*10;
    hOldFont:=SelectObject(Canvas.Handle,CreateFontIndirect(LFont));
  end;

  procedure EndRotated(Canvas:tCanvas);
  begin
    DeleteObject(SelectObject(Canvas.Handle,hOldFont));
  end;

 {$WARNINGS OFF}
 function HTMLDrawLine(Canvas:tCanvas;var s:string;r:trect;calc:boolean;
                       var w,h,subh,suph,imgali:integer;var align:talignment;
                       xpos,ypos:integer;var hotspot:boolean):string;
 var
  su,dsu,res,tagprop,prop,tagp:string;
  cr:trect;
  linebreak,imgbreak,linkbreak:boolean;
  th,sw,indent,err,bmpx,bmpy:integer;
  tagpos,spacepos:integer;
  bmp:tbitmap;
  newcolor:tcolor;
  tagwidth,tagheight:integer;
  foundtag:boolean;

 begin
  Result := '';
  r.Bottom := r.Bottom - Subh;
  w := 0;
  sw := 0;
  h := Canvas.TextHeight('gh');

  linebreak:=false;
  imgbreak:=false;
  linkbreak:=false;
  hotspot:=false;
  cr:=r;
  res:='';

  if (isPara) and not calc then
   begin
    pencolor:=Canvas.pen.color;
    Canvas.pen.color:=Canvas.brush.color;
    Canvas.rectangle(fr.left,r.top,fr.right,r.top+h);
   end;

  while (length(s)>0) and not linebreak and not imgbreak do
   begin
    tagpos:=pos('<',s);
    spacepos:=pos(' ',s);

    if (tagpos>0) and ((spacepos>tagpos) or (spacepos=0)) then
     begin
      su:=copy(s,1,tagpos-1);
     end
    else
     begin
       if (spacepos>0) then
        su:=copy(s,1,spacepos)
       else
        su:=s;
     end;

   {$IFDEF TMSDEBUG}
//   DbgMsg(su+ '.');
   {$ENDIF}

   if (length(su)>0) then
    begin
     dsu:=su;

     if ipos('&',dsu)>0 then
     begin
       repeat
         foundtag := false;
         srchpos := 0;
         if ireplacestring('&lt;','<',dsu,srchpos) then foundtag:=true;
         if ireplacestring('&gt;','>',dsu,srchpos) then foundtag:=true;
         if ireplacestring('&amp;','&',dsu,srchpos) then foundtag:=true;
         if ireplacestring('&quot;','"',dsu,srchpos) then foundtag:=true;
       until not foundtag;
     end;

     th := Canvas.TextHeight(dsu);

     if isSub and (subh<(th shr 2)) then subh:=(th shr 2);
     if isSup and (suph<(th shr 2)) then suph:=(th shr 2);

     if (th>h) then h:=th;

     Stripval := Stripval + dsu;

     if not Invisible then
     begin
     if not calc then
      begin
       {$IFDEF TMSDEBUG}
//       DbgMsg(dsu);
       {$ENDIF}

       if isSup then cr.bottom := cr.bottom-suph;
       if isSub then cr.bottom := cr.bottom+subh;
       cr.Bottom := cr.bottom-imgali;

       if isShad then
        begin
         offsetrect(cr,shadowoffset,shadowoffset);
         newcolor:=Canvas.Font.color;
         Canvas.Font.color:=ShadowColor;
         DrawText(Canvas.handle,pchar(dsu),length(dsu),cr,DT_LEFT or DT_SINGLELINE or DT_EXTERNALLEADING or DT_BOTTOM  or DT_EXPANDTABS or DT_NOPREFIX {or DT_NOCLIP});
         offsetrect(cr,-shadowoffset,-shadowoffset);
         Canvas.Font.Color:=newcolor;
        end;

       DrawText(Canvas.handle,pchar(dsu),Length(dsu),cr,DT_LEFT or DT_SINGLELINE or DT_EXTERNALLEADING or DT_BOTTOM  or DT_EXPANDTABS or DT_NOPREFIX {or DT_NOCLIP});
       DrawText(Canvas.handle,pchar(dsu),length(dsu),cr,DT_LEFT or DT_CALCRECT or DT_EXPANDTABS or DT_NOPREFIX  or DT_EDITCONTROL or DT_EXTERNALLEADING);

       if anchor and (hyperlinks-1=focuslink) then focusanchor:=lastanchor;

       {$IFDEF TMSDEBUG}
       if anchor then
        DbgMsg('drawrect for '+anchorval+' = ['+inttostr(cr.left)+':'+inttostr(cr.top)+'] ['+inttostr(cr.right)+':'+inttostr(cr.bottom)+'] @ ['+inttostr(xpos)+':'+inttostr(ypos));
       {$ENDIF}

       cr.left:=cr.right;
       cr.right:=r.right;
       cr.bottom:=r.bottom;
       cr.top:=r.top;
      end
     else
      begin
       cr:=r; {reinitialized each time !}
       DrawText(Canvas.handle,pchar(dsu),length(dsu),cr,DT_LEFT or DT_CALCRECT or DT_EXPANDTABS or DT_NOPREFIX or DT_EXTERNALLEADING);

       {modified for editing purposes}
       if (ypos>cr.top) and (ypos<cr.bottom) and (xpos>w) then {scan charpos here}
        begin
         er:=rect(w,cr.top,xpos,cr.bottom);
         fillchar(dtp,sizeof(dtp),0);
         dtp.cbSize:=sizeof(dtp);

         {$IFDEF DELPHI4_LVL}
         GetTextExtentExPoint(Canvas.handle,pchar(dsu),length(dsu),xpos-w,@nnfit,nil,nnSize);
         {$ELSE}
         nndx:=nil; {fix for declaration error in Delphi 3 WINDOWS.PAS}
         GetTextExtentExPoint(Canvas.handle,pchar(dsu),length(dsu),xpos-w,nnfit,integer(nndx^),nnSize);
         {$ENDIF}

         {this will get the character pos of the insertion point}
         if nnfit=length(dsu) then inspoint:=inspoint+length(dsu) else
           begin
            inspoint:=inspoint+nnfit;
           end;
        end;
       {end of edit modify}

       w:=w+(cr.right-cr.left);

       if (xpos-cr.left>=w-cr.right+cr.left) and (xpos-cr.left<=w) and anchor then
         begin
          hotspot:=true;

//          if (ypos>r.bottom-imgali-Canvas.textheight('gh')) and (ypos<r.bottom-imgali) then
          if (ypos>cr.top) and (ypos<cr.bottom) then
            begin
              anchorval:=lastanchor;
              mouseinanchor:=true;
            end;
         end;
      end;
     end;

     if (w<r.right-r.left) or (r.right-r.left<=cr.right-cr.left) then
      begin
       res:=res+copy(s,1,length(su));
       delete(s,1,length(su));
       if su[length(su)]=' ' then sw:=Canvas.textwidth(' ') else sw:=0;
      end
     else
      begin
       linebreak:=true;
       w:=w-(cr.right-cr.left);
      end;
    end;

  {v1.7 : added new functionality to display database field tags}
  s:=dbtagstrip(s);
  {v1.7}

  if not linebreak and (pos('<',s)=1) then
   begin
     if (pos('</',s)=1) then
       begin
        case upcase(s[3]) of
        'A':begin
             if not hoverstyle or (hoverlink=hyperlinks) then
               begin
                Canvas.Font.style:=Canvas.Font.style-[fsUnderline];
                if hovercolor<>clNone then
                  begin
                   Canvas.brush.color:=hvrcolor;
                   if hvrcolor=clNone then Canvas.brush.style:=bsClear;
                  end;
                if hoverFontcolor<>clNone then
                  begin
                   Canvas.Font.color:=hoverFontcolor;
                  end;
               end;
             if not selected then Canvas.Font.color:=oldFont.color;
             anchor:=false;

             if mouseinanchor then
               begin
                hr.bottom:=r.bottom;
                hr.right:=r.left+w;
                if (r.top<>hr.top) then
                 begin
                  hr.left:=r.left;
                  hr.top:=r.top;
//                  hr.right:=r.right;
                 end;
                HoverRect:=hr;
                mouselink:=hyperlinks;
                {$IFDEF TMSDEBUG}
                DbgRect('hotspot anchor '+lastanchor,hr);
                {$ENDIF}
                mouseinanchor:=false;
               end;

             if (focuslink=hyperlinks-1) then
              begin
               rr.right:=cr.left;
               rr.bottom:=cr.bottom-imgali;
               rr.top:=rr.bottom-Canvas.textheight('gh');
               inflaterect(rr,1,0);
               if not calc then Canvas.drawfocusrect(rr);
              end;

            end;
        'B':begin
             if ipos('</BL',s)=1 then
              Canvas.Font.color:=oldFont.color
             else
              Canvas.Font.style:=Canvas.Font.style-[fsBold];
            end;
        'S':begin
             if (upcase(s[4])='U') then
               begin
                isSup:=false;
                isSub:=false;
               end
             else
              if (upcase(s[4])='H') then
               isShad:=false
              else
               Canvas.Font.style:=Canvas.Font.style-[fsStrikeOut];
            end;
        'F':begin
             Canvas.Font.name:=oldFont.name;
             Canvas.Font.size:=oldFont.size;
             if not calc and not selected then
              begin
                Canvas.Font.color:=oldFont.color;
                Canvas.brush.color:=bgcolor;
                if bgcolor=clNone then
                  begin
                   Canvas.brush.style:=bsClear;
                  end;
              end;
            end;
        'I':begin
             Canvas.Font.style:=Canvas.Font.style-[fsItalic];
            end;
        'P':begin
             linebreak:=true;
             if not calc then
              begin
               Canvas.brush.color:=paracolor;
               if paracolor=clNone then Canvas.brush.style:=bsClear;
               isPara:=false;
              end;
            end;
        'U':begin
             if (ipos('</UL>',s)=1) and (listindex>0) then listindex:=listindex-1
             else
              Canvas.Font.style:=Canvas.Font.style-[fsUnderline];
            end;
        'R':begin
             EndRotated(Canvas);
            end;
        'Z':Invisible:=false;
        end;
       end
     else
       begin
        case upcase(s[2]) of
        'A':begin
             {only do this when at hover position in xpos,ypos}
             if (focuslink=hyperlinks) and not calc then
               begin
                rr.left:=cr.left;
                rr.top:=cr.top;
               end;

             inc(hyperlinks);
             if not hoverstyle or (hoverlink=hyperlinks) then
               begin
                 Canvas.Font.style:=Canvas.Font.style+[fsUnderline];
                 if hovercolor<>clNone then
                  begin
                   hvrcolor:=Canvas.brush.color;
                   if Canvas.brush.style=bsClear then hvrcolor:=clNone;
                   Canvas.brush.color:=HoverColor;
                  end;
                 if hoverFontcolor<>clNone then
                  begin
                   hvrfntcolor:=Canvas.Font.color;
                   Canvas.Font.color:=hoverFontcolor;
                  end;
               end;


             if not selected and ((hoverFontcolor=clNone) or (hoverlink<>hyperlinks) or not hoverstyle) then Canvas.Font.color:=urlcolor;

             tagprop:=copy(s,3,pos('>',s)-1);
             prop:=copy(tagprop,ipos('href',tagprop)+4,length(tagprop));
             prop:=copy(prop,pos('"',prop)+1,length(prop));
             prop:=copy(prop,1,pos('"',prop)-1);
             lastanchor:=prop;
             anchor:=true;

             hr.left:=w;
             hr.top:=r.top;

            end;
        'B':begin
             if ipos('<BR>',s)=1 then
               begin
                linebreak:=true;
                stripval:=stripval+#13;
               end;
             if ipos('<B>',s)=1 then
               begin
                Canvas.Font.style:=Canvas.Font.style+[fsBold];
               end;
             if ipos('<BLINK',s)=1 then
               begin
                //oldFont.color:=Canvas.Font.color;
                if not blink then Canvas.Font.color:=blnkcolor;
               end;
             if ipos('<BODY',s)=1 then
               begin
                res:=res+copy(s,1,pos('>',s));
                tagprop:=copy(s,6,pos('>',s)-1);

                if (ipos('background',tagprop)>0) and not calc then
                 begin

                  prop:=copy(tagprop,ipos('background',tagprop)+10,length(tagprop));
                  prop:=copy(prop,pos('"',prop)+1,length(prop));
                  prop:=copy(prop,1,pos('"',prop)-1);
                  if ipos('file://',prop)>0 then
                   begin
                    delete(prop,1,7);

                    if FileExists(prop) then
                     begin
                      bmp:=tbitmap.Create;
                      try
                      bmp.LoadFromFile(prop);
                      {do the tiling here}
                      bmpy:=0;

                      hrgn := CreateRectRgn(fr.left, fr.top, fr.right,fr.bottom);
                      SelectClipRgn(Canvas.handle, hrgn);

                      while (bmpy < fr.bottom-fr.top) do
                       begin
                        bmpx:=0;
                        while (bmpx < fr.right-fr.left) do
                         begin
                          Canvas.draw(fr.left+bmpx,fr.top+bmpy,bmp);
                          bmpx:=bmpx+bmp.width;
                        end;
                        bmpy:=bmpy+bmp.height;
                       end;

                      finally
                      bmp.Free;
                      SelectClipRgn(Canvas.handle, 0);
                      end;
                     end;
                   end;

                 end;

                if (ipos('bgcolor',tagprop)>0) then
                 begin
                  prop:=copy(tagprop,ipos('bgcolor',tagprop)+7,length(tagprop));

                  prop:=copy(prop,pos('"',prop)+1,length(prop));
                  prop:=copy(prop,1,pos('"',prop)-1);
                  if not calc then
                  begin
                   if (pos('cl',prop)>0) then
                     Canvas.brush.color:=text2color(ansilowercase(prop));
                   if (pos('#',prop)>0) then
                     Canvas.brush.color:=hex2color(prop);

                  if not calc then
                   begin
                    bgcolor:=Canvas.brush.color;
                    pencolor:=Canvas.pen.color;
                    Canvas.pen.color:=bgcolor;
                    Canvas.rectangle(fr.left,fr.top,fr.right,fr.bottom);
                    Canvas.pen.color:=pencolor;
                   end;
                  end;
                 end;
               end;

            end;
        'H':begin
             linebreak:=true;
             if not calc then
              begin
               pencolor:=Canvas.pen.color;
               Canvas.pen.color:=clblack;
               Canvas.MoveTo(r.left,cr.bottom+1);
               Canvas.Lineto(r.right,cr.bottom+1);
               Canvas.pen.color:=pencolor;
              end;
            end;
        'I':begin
             if ipos('<I>',s)=1 then
               begin
                Canvas.Font.style:=Canvas.Font.style+[fsItalic];
               end;
             if ipos('<IND',s)=1 then
               begin
                tagprop:=copy(s,3,pos('>',s)-1);
                prop:=copy(tagprop,ipos('x',tagprop)+2,length(tagprop));
                prop:=copy(prop,pos('"',prop)+1,length(prop));
                prop:=copy(prop,1,pos('"',prop)-1);

                val(prop,indent,err);
                if (err=0) then
                 begin
                  if indent>w then
                    begin
                     w:=indent;
                     cr.left:=fr.left+indent;
                    end;
                 end;
               end;

             if ipos('<IMG',s)=1 then
               begin
                //oldFont.color:=Canvas.Font.color;
                tagprop:=copy(s,3,pos('>',s)-1);
                prop:=copy(tagprop,ipos('src',tagprop)+4,length(tagprop));
                prop:=copy(prop,pos('"',prop)+1,length(prop));
                prop:=copy(prop,1,pos('"',prop)-1);

                tagwidth:=0; tagheight:=0;

                if (pos('width',tagprop)>0) then
                 begin
                   tagp:=copy(tagprop,ipos('width',tagprop)+6,length(tagprop));
                   tagp:=copy(tagp,pos('"',tagp)+1,length(tagp));
                   tagp:=copy(tagp,1,pos('"',tagp)-1);
                   val(tagp,tagwidth,err);
                 end;

                if (pos('height',tagprop)>0) then
                 begin
                   tagp:=copy(tagprop,ipos('height',tagprop)+7,length(tagprop));
                   tagp:=copy(tagp,pos('"',tagp)+1,length(tagp));
                   tagp:=copy(tagp,1,pos('"',tagp)-1);
                   val(tagp,tagheight,err);
                 end;

                bmpsize.x:=0;
                bmpsize.y:=0;

                if ipos('idx:',prop)>0 then
                  begin
                   delete(prop,1,4);
                   if assigned(fImages) and (istrtoint(prop)<fImages.Count) then
                    begin
                      bmpsize.x:=fImages.Width;
                      bmpsize.y:=fImages.Height;

                      if (not calc) and not print then
                      {$IFDEF DELPHI4_LVL}
                       fImages.Draw(Canvas,cr.left,cr.top,istrtoint(prop),true);
                      {$ELSE}
                       fImages.Draw(Canvas,cr.left,cr.top,istrtoint(prop));
                      {$ENDIF}

                      if (not calc) and print then
                       begin
                        cr.right:=cr.left+round(resfactor*bmpsize.x);
                        cr.bottom:=cr.top+round(resfactor*bmpsize.y);

                        bmp:=tbitmap.Create;
                        fImages.GetBitmap(istrtoint(prop),bmp);
                        PrintBitmap(Canvas,cr,bmp);
                        bmp.free;
                       end;

                    end;
                  end;

                if ipos('ssys:',prop)>0 then
                  begin
                   delete(prop,1,5);
                   bmpsize:=sysimage(Canvas,cr.left,cr.top,prop,false,not calc,print,resfactor);
                  end;

                if ipos('lsys:',prop)>0 then
                  begin
                   delete(prop,1,5);
                   bmpsize:=sysimage(Canvas,cr.left,cr.top,prop,true,not calc,print,resfactor);
                  end;

                if ipos('res://',prop)>0 then
                  begin
                    delete(prop,1,6);
                    if findresource(hinstance,pchar(prop),RT_BITMAP)<>0 then
                    begin
                    bmp:=tbitmap.Create;
                    try
                     bmp.LoadFromResourceName(hinstance,prop);
                     if not calc and not print then Canvas.Draw(cr.left,cr.top,bmp);
                     if not calc and print then
                       begin
                        cr.right:=cr.left+round(resfactor*bmpsize.x);
                        cr.bottom:=cr.top+round(resfactor*bmpsize.y);
                        PrintBitmap(Canvas,cr,bmp);
                       end;
                      bmpsize.x:=bmp.width;
                      bmpsize.y:=bmp.height;
                    finally
                      bmp.Free;
                    end;
                    end;
                  end;

                if ipos('file://',prop)>0 then
                  begin
                    delete(prop,1,7);
                    if FileExists(prop) then
                     begin
                      bmp:=tbitmap.Create;
                      try
                      bmp.LoadFromFile(prop);
                      if not calc and not print then
                        begin
                         if (tagwidth>0) and (tagheight>0) then
                           begin
                            Canvas.StretchDraw(rect(cr.left,cr.top,cr.left+tagwidth,cr.top+tagheight),bmp);
                           end
                         else
                           Canvas.Draw(cr.left,cr.top,bmp);
                        end;

                      if (tagwidth>0) and (tagheight>0) then
                       begin
                         bmpsize.x:=tagwidth;
                         bmpsize.y:=tagheight;
                       end
                      else
                       begin
                         bmpsize.x:=bmp.width;
                         bmpsize.y:=bmp.height;
                       end;

                      if not calc and print then
                       begin
                        cr.right:=cr.left+round(resfactor*bmpsize.x);
                        cr.bottom:=cr.top+round(resfactor*bmpsize.y);
                        PrintBitmap(Canvas,cr,bmp);
                       end;

                      finally
                      bmp.Free;
                      end;
                     end;
                  end;
                 {
                 if anchor then
                 outputdebugstring(pchar('xpos='+inttostr(xpos)+': w='+inttostr(w)+' : left='+inttostr(r.left)));
                 }
                 if (xpos-r.left>w) and (xpos-r.left<w+bmpsize.x) and
                   (ypos>cr.top) and (ypos<cr.bottom) and anchor then
                   begin
                    hotspot:=true;
                    anchorval:=lastanchor;
                   end;


                 if print then
                  begin
                   bmpsize.x:=round(bmpsize.x*resfactor);
                   bmpsize.y:=round(bmpsize.y*resfactor);
                   {$IFDEF TMSDEBUG}
                   DbgPoint('bmp : ',point(bmpsize.x,bmpsize.y));
                   {$ENDIF}
                  end;

                 if (w+bmpsize.x>r.right-r.left) and (bmpsize.x<r.right-r.left) then
                   begin
                    imgbreak:=true;
                   end
                 else
                   begin
                    w:=w+bmpsize.x;
                    cr.left:=cr.left+bmpsize.x;
                    if (bmpsize.y>h) then h:=bmpsize.y;
                   end;

                 if (ipos('align',tagprop)>0) then
                  begin
                   if (ipos('"top',tagprop)>0) then
                    begin
                      imgali:=h-Canvas.textheight('gh');
                    end
                   else
                    begin
                     if (ipos('"middle',tagprop)>0) then
                      begin
                        imgali:=(h-Canvas.textheight('gh')) shr 1;
                      end;
                    end;
                  end;
               end;
            end;
        'L':begin
             w:=w+12*listindex;
             if linkbreak then imgbreak:=true else linkbreak:=true;
             cr.left:=cr.left+12*(listindex-1);
             if not calc then
              begin
               prop:=Canvas.Font.name;
               Canvas.Font.name:='Symbol';
               if odd(listindex) then
               drawtext(Canvas.handle,'·',1,cr,0)
               else
               drawtext(Canvas.handle,'o',1,cr,0);
               Canvas.Font.name:=prop;
              end;
             cr.left:=cr.left+12;
            end;
        'U':begin
             if ipos('<UL>',s)=1 then
               begin

                listindex:=listindex+1
               end
             else
              Canvas.Font.style:=Canvas.Font.style+[fsUnderline];
            end;
        'P':begin
             if (pos('>',s)>0) then
              begin
               tagprop:=copy(s,3,pos('>',s)-1);

               if (ipos('align',tagprop)>0) then
                begin
                 prop:=copy(tagprop,ipos('align',tagprop)+5,length(tagprop));
                 prop:=copy(prop,pos('"',prop)+1,length(prop));
                 prop:=copy(prop,1,pos('"',prop)-1);

                 if (ipos('right',prop)>0) then align:=taRightJustify;
                 if (ipos('left',prop)>0) then align:=taLeftJustify;
                 if (ipos('center',prop)>0) then align:=taCenter;
                end;

               if (ipos('bgcolor',tagprop)>0) then
                begin
                 prop:=copy(tagprop,ipos('bgcolor',tagprop)+5,length(tagprop));
                 prop:=copy(prop,pos('"',prop)+1,length(prop));
                 prop:=copy(prop,1,pos('"',prop)-1);

                 newcolor:=clNone;
                 if (pos('cl',prop)>0) then
                  begin
                   newcolor:=text2color(ansilowercase(prop));
                  end;
                 if (pos('#',prop)>0) then
                  begin
                   newcolor:=hex2color(prop);
                  end;

                 if not calc then
                  begin
                   isPara:=true;
                   paracolor:=Canvas.brush.color;
                   if Canvas.brush.style=bsClear then paracolor:=clNone;
                   Canvas.brush.color:=newcolor;
                   pencolor:=Canvas.pen.color;
                   Canvas.pen.color:=newcolor;
                   Canvas.rectangle(fr.left,r.top,fr.right,r.bottom);
                  end;
                end;

              end;
            end;
        'F':begin
            if (pos('>',s)>0) then
             begin
              tagprop:=copy(s,5,pos('>',s)-1);
              if (ipos('face',tagprop)>0) then
                begin
                 prop:=copy(tagprop,ipos('face',tagprop)+4,length(tagprop));
                 prop:=copy(prop,pos('"',prop)+1,length(prop));
                 prop:=copy(prop,1,pos('"',prop)-1);
                 //oldFont.name:=Canvas.Font.name;
                 Canvas.Font.name:=prop;
                end;
              if (ipos(' color',tagprop)>0) and (selected=false) then
                begin
                 prop:=copy(tagprop,ipos('color',tagprop)+4,length(tagprop));
                 prop:=copy(prop,pos('"',prop)+1,length(prop));
                 prop:=copy(prop,1,pos('"',prop)-1);
                 //oldFont.color:=Canvas.Font.color;

                 if (pos('cl',prop)>0) then
                  begin
                   Canvas.Font.color:=text2color(ansilowercase(prop));
                  end;
                 if (pos('#',prop)>0) then
                  begin
                   Canvas.Font.color:=hex2color(prop);
                  end;
                end;
              if (ipos('bgcolor',tagprop)>0) and not calc and not selected then
                begin
                 prop:=copy(tagprop,ipos('bgcolor',tagprop)+4,length(tagprop));
                 prop:=copy(prop,pos('"',prop)+1,length(prop));
                 prop:=copy(prop,1,pos('"',prop)-1);

                 bgcolor:=Canvas.brush.color;
                 if Canvas.brush.style=bsClear then bgcolor:=clNone;

                 if (pos('cl',prop)>0) then
                  begin
                   Canvas.brush.color:=text2color(ansilowercase(prop));
                  end;
                 if (pos('#',prop)>0) then
                  begin
                   Canvas.brush.color:=hex2color(prop);
                  end;
                end;

              if (ipos('size',tagprop)>0) then
                begin
                 prop:=copy(tagprop,ipos('size',tagprop)+4,length(tagprop));
                 prop:=copy(prop,pos('"',prop)+1,length(prop));
                 prop:=copy(prop,1,pos('"',prop)-1);
                 //oldFont.size:=Canvas.Font.size;
                 Canvas.Font.size:=istrtoint(prop);
                end;
             end;

            end;
        'S':begin
              if (ipos('<S>',s)=1) then
               begin
                Canvas.Font.style:=Canvas.Font.style+[fsStrikeOut];
               end;
              if (ipos('<SUB>',s)=1) then
               begin
                isSub:=true;
               end;
              if (ipos('<SUP>',s)=1) then
               begin
                isSup:=true;
               end;
              if (ipos('<SHAD>',s)=1) then
               begin
                isShad:=true;
               end;
            end;
        'R':begin
              tagprop:=copy(s,3,pos('>',s)-1);
              prop:=copy(tagprop,ipos('a',tagprop)+2,length(tagprop));
              prop:=copy(prop,pos('"',prop)+1,length(prop));
              prop:=copy(prop,1,pos('"',prop)-1);
              val(prop,indent,err);
              StartRotated(Canvas,indent);
            end;
        'Z':Invisible:=true;
         end;
       end;

     if (pos('>',s)>0) and not imgbreak then
       begin
        res:=res+copy(s,1,pos('>',s));
        delete(s,1,pos('>',s));
       end
      else if not imgbreak then delete(s,1,length(s));
    end;
  end;
  w:=w-sw;
  if (w>xsize) then xsize:=w;

  if (focuslink=hyperlinks-1) and (anchor) and not calc then
  begin
   rr.right:=cr.left;
   rr.bottom:=cr.bottom;
   inflaterect(rr,1,0);
   if not calc then Canvas.drawfocusrect(rr);
   rr.left:=r.left+1;
   rr.top:=rr.bottom;
  end;

  Result := res;
 end;
 {$WARNINGS ON}

begin
 anchor:=false;
 oldFont:=tFont.Create;
 oldFont.Assign(Canvas.Font);
 drawFont:=tFont.Create;
 drawFont.Assign(Canvas.Font);
 calcFont:=tFont.Create;
 calcFont.Assign(Canvas.Font);
 olddrawFont:=tFont.Create;
 olddrawFont.Assign(Canvas.Font);
 oldcalcFont:=tFont.Create;
 oldcalcFont.Assign(Canvas.Font);
 blnkcolor:=Canvas.brush.color;
 Canvas.brush.color:=clNone;
 bgcolor:=clNone;
 paracolor:=clNone;
 isPara:=false; isShad:=false;

 Result := false;
 r:=fr;
 r.left:=r.left+1; {required to add offset for DrawText problem with first capital W letter}

 align:=taLeftJustify;

 xsize:=0; ysize:=0; hyperlinks:=0; hlcount:=0; listindex:=0; licount:=0;
 stripval:='';
 focusanchor:='';
 mouselink:=-1;
 mouseinanchor:=false;
 Invisible:=false;

 SetBKMode(Canvas.handle,TRANSPARENT);

 //make sure that CRLF is ignored
 su:='';
 for inspoint:=1 to length(s) do
 begin
   if (s[inspoint]<>#13) and (s[inspoint]<>#10) then su:=su+s[inspoint];
 end;
 s:=su;

 inspoint:=0;

 while length(s)>0 do
  begin
   oldFont.Assign(oldcalcFont);
   Canvas.Font.Assign(calcFont);
   oldanchor:=anchor;
   oldanchorval:=lastanchor;
   suph:=0; subh:=0; imgali:=0;
   isSup:=false; isSub:=false;

   su:=HTMLDrawLine(Canvas,s,r,true,htmlwidth,htmlheight,subh,suph,imgali,align,xpos,ypos,hotspot);

   anchor:=oldanchor;
   lastanchor:=oldanchorval;

   calcFont.Assign(Canvas.Font);
   oldcalcFont.Assign(oldFont);

   dr:=r;
   case align of
   taCenter:dr.left:=r.left+((r.right-r.left-htmlwidth) shr 1);
   taRightJustify:dr.left:=r.right-htmlwidth;
   end;

   dr.bottom:= dr.top+htmlheight+subh+suph;

   if not checkheight then
    begin
    oldFont.Assign(olddrawFont);
    Canvas.Font.Assign(drawFont);

    hyperlinks:=hlcount;
    listindex:=licount;

    HTMLDrawLine(Canvas,su,dr,checkhotspot,htmlwidth,htmlheight,subh,suph,imgali,align,xpos,ypos,hotspot);

    hlcount:=hyperlinks;
    licount:=listindex;

    if hotspot and (ypos>dr.bottom-imgali-Canvas.textheight('gh')) and (ypos<dr.bottom-imgali) then
        Result := true;

    drawFont.Assign(Canvas.Font);
    olddrawFont.Assign(oldFont);
    end;

   r.top:=r.top+htmlheight+subh+suph;

   ysize:=ysize+htmlheight+subh+suph;

   if (r.top+htmlheight>r.bottom) and not checkheight then s:='';

  end;

 if (ysize=0) then ysize:=Canvas.textheight('gh');
 inspoint:=inspoint shr 1;

 Canvas.brush.color:=blnkcolor;
 Canvas.Font.assign(oldFont);
 oldFont.Free;
 drawFont.Free;
 calcFont.Free;
 olddrawFont.Free;
 oldcalcFont.Free;

end;

{$IFNDEF REMOVEDRAW}

function HTMLDraw(Canvas:tCanvas;s:string;fr:trect;
                                 fImages:TImageList;
                                 xpos,ypos:integer;
                                 checkhotspot,checkheight,print,selected,blink:boolean;
                                 resfactor:double;
                                 urlcolor:tcolor;
                                 var anchorval,stripval:string;
                                 var xsize,ysize:integer):boolean;
var
 hyperlinks,mouselink:integer;
 focusanchor:string;
 r:trect;
begin


 Result := HTMLDrawEx(Canvas,s,fr,fImages,xpos,ypos,-1,-1,1,checkhotspot,checkheight,print,selected,blink,false,
                    resfactor,urlcolor,clNone,clNone,clGray,anchorval,stripval,focusanchor,xsize,ysize,hyperlinks,mouselink,r);
end;

{$ENDIF}


{$IFDEF PARAMS}

function iposv(su,s:string;var vp:integer):integer;
begin
  Result := pos(uppercase(su),uppercase(s));
  vp:=Result;
end;


function GetHREFValue(html,href:string;var value:string):boolean;
var
 lp:integer;
begin
 Result := false;
 while (iposv('href="',html,lp)>0) do
  begin
   delete(html,1,lp+5); {delete all before}
   if (iposv('"',html,lp)>0) then
    begin
     if CompareText(href,copy(html,1,lp-1))=0 then
      begin
       {href match - get the value now}
       delete(html,1,lp);
       if (iposv('>',html,lp)>0) then
        begin
         delete(html,1,lp);
         if (iposv('<',html,lp)>0) then
           begin
            value:=copy(html,1,lp-1);
            Result := true;
            break;
           end;
        end;
      end;
    end;
  end;
end;
{$ENDIF}


{$IFNDEF DELPHI4_LVL}

function StringReplace(const S, OldPattern, NewPattern: string): string;
var
  SearchStr, Patt, NewStr: string;
  Offset: Integer;
begin
  SearchStr := S;
  Patt := OldPattern;

  NewStr := S;
  Result := '';
  while SearchStr <> '' do
  begin
    {$IFDEF DELPHI3_LVL} 
    Offset := AnsiPos(Patt, SearchStr);
    {$ELSE}
    Offset := Pos(Patt, SearchStr);
    {$ENDIF}
     
    if Offset = 0 then
    begin
      Result := Result + NewStr;
      Break;
    end;
    Result := Result + Copy(NewStr, 1, Offset - 1) + NewPattern;
    NewStr := Copy(NewStr, Offset + Length(OldPattern), MaxInt);
    Result := Result + NewStr;
    Break;
  end;
end;
{$ENDIF}

{$IFNDEF REMOVESTRIP}

function HTMLStrip(s:string):string;
var            
  Res: string;
  i: Integer;
begin
  res:='';
  {replace line breaks by linefeeds}
  {$IFNDEF DELPHI4_LVL}
  while (pos('<br>',uppercase(s))>0) do s:=StringReplace(s,'<br>',chr(13)+chr(10));
  while (pos('<BR>',uppercase(s))>0) do s:=StringReplace(s,'<BR>',chr(13));
  while (pos('<hr>',uppercase(s))>0) do s:=StringReplace(s,'<hr>',chr(13));
  while (pos('<HR>',uppercase(s))>0) do s:=StringReplace(s,'<HR>',chr(13));
  {$ELSE}
  while (pos('<BR>',uppercase(s))>0) do s:=StringReplace(s,'<BR>',chr(13)+chr(10),[rfIgnoreCase]);
  while (pos('<HR>',uppercase(s))>0) do s:=StringReplace(s,'<HR>',chr(13)+chr(10),[rfIgnoreCase]);
  {$ENDIF}

  {remove all other tags}
  while (pos('<',s)>0) do
  begin
    i:=pos('<',s);
    res:=res+copy(s,1,i-1);
    if (pos('>',s)>0) then
      Delete(s,1,pos('>',s));
  end;
  
  Result := res + s;
end;

{$ENDIF}

{$IFDEF PARAMS}

function SetHREFValue(var html:string;href,value:string):boolean;
var
 h:string;
 p:string;
begin
 {get current value and do a stringreplace}

 Result := false;
 if GetHREFValue(html,href,h) then
  begin
   p:=copy(html,pos('href="'+href,html),length(html));

   {$IFNDEF DELPHI4_LVL}
   p:=StringReplace(p,'>'+h+'</A','>'+value+'</A');
   {$ELSE}
   p:=StringReplace(p,'>'+h+'</A','>'+value+'</A',[rfIgnoreCase]);
   {$ENDIF}

   html:=copy(html,1,pos('href="'+href,html)-1)+p;


   Result := true;
  end;
end;

{$ENDIF}



