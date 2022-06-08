{*********************************************************************}
{ Advanced lookup editor component : TAdvLUEdit                       }
{ for Delphi 3.0,4.0,5.0,6.0 & C++Builder 3.0,4.0,5.0                 }
{ version 1.1, August 2001                                            }
{                                                                     }
{ written by                                                          }
{  TMS Software                                                       }
{  copyright © 2000 - 2001                                            }
{  Email : info@tmssoftware.com                                       }
{  Web : http://www.tmssoftware.com                                   }
{                                                                     }
{ The source code is given as is. The author is not responsible       }
{ for any possible damage done due to the use of this code.           }
{ The component can be freely used in any application. The source     }
{ code remains property of the author and may not be distributed      }
{ freely as such.                                                     }
{*********************************************************************}

unit advlued;

{$I TMSDEFS.INC}

interface

uses
  Windows, Registry, Stdctrls, Classes, Messages, Controls, SysUtils,
  IniFiles, AdvEdit;

type
  TAutoCompleteEvent = procedure(Sender: TObject;const UsrStr:string; var AutoAdd:string;idx:integer) of object;
  TEnterAcceptEvent = procedure(Sender: TObject;const Str:string;idx:integer;var accept:boolean) of object;

  TAddToHistoryEvent = procedure(Sender: TObject; const Str:string) of object;

  TLUPersist = class(TPersistent)
     private
      FEnable:boolean;
      FLocation : TPersistenceLocation;
      FKey : string;
      FSection : string;
      FCount : integer;
      FMaxCount:boolean;
     published
      property Enable:boolean read fEnable write fEnable;
      property Location:TPersistenceLocation read fLocation write fLocation;
      property Key:string read fKey write fKey;
      property Section:string read fSection write fSection;
      property Count:integer read fCount write fCount;
      property MaxCount:boolean read fMaxCount write fMaxCount;
  end;

  TAdvLUEdit = class(TAdvEdit)
  private
    workmode:boolean;
    FLookupItems:TStringList;
    FAutoComplete:TAutoCompleteEvent;
    FOnAddToHistory:TAddToHistoryEvent;
    FAutoHistory:boolean;
    FAutoSynchronize:boolean;
    FEnterAccept:TEnterAcceptEvent;
    FFileLookup:boolean;
    FLUPersist:TLUPersist;
    FMatchCase:boolean;
    FChanged:boolean;
    procedure SetLookupItems(value:tstringlist);
    procedure SetLUPersist(value:TLUPersist);
    procedure WMDestroy(var Msg:TMessage); message wm_Destroy;
  protected
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyUp(var Key: Word; Shift: TShiftState); override;
    procedure DoExit; override;
    procedure Lookup;
  public
    procedure Change; override;
    constructor Create(aOwner:tComponent); override;
    destructor Destroy; override;
    procedure SavePersist; override;
    procedure LoadPersist; override;
    procedure Loaded; override;
  published
    property LookupItems:TStringList read fLookupItems write SetLookupItems;
    property AutoComplete:TAutoCompleteEvent read FAutoComplete write FAutoComplete;
    property OnAddToHistory:TAddToHistoryEvent read FOnAddToHistory write FOnAddToHistory;
    property Accept:TEnterAcceptEvent read FEnterAccept write FEnterAccept;
    property AutoHistory:boolean read FAutoHistory write FAutoHistory;
    property AutoSynchronize:boolean read fAutoSynchronize write fAutoSynchronize;
    property FileLookup:boolean read fFileLookup write fFileLookup;
    property LookupPersist:TLUPersist read fLUPersist write SetLUPersist;
    property MatchCase:boolean read FMatchCase write FMatchCase;
  end;

implementation

function upstr(s:string;docase:boolean):string;
begin
 if docase then result:=s else result:=AnsiUpperCase(s);
end;

function ncpos(su,s:string):integer;
begin
 su:=upstr(su,false);
 s:=upstr(s,false);
 result:=pos(su,s);
end;


procedure TAdvLUEdit.SetLookupItems(value:tstringlist);
begin
  if Assigned(value) then fLookupItems.Assign(value)
end;

procedure TAdvLUEdit.DoExit;
var
 allowexit:boolean;
 i:integer;
 lu:TAdvLUEdit;
begin
 allowexit:=true;
 if Assigned(FEnterAccept) then
   begin
    FEnterAccept(self,text,fLookupItems.IndexOf(Text),allowexit);
  end;
 if allowexit and fautohistory and (text<>'') then
   begin
    if (flookupitems.indexof(text)=-1) then
     begin
       flookupitems.Add(text);
       if assigned(fOnAddToHistory) then fOnAddToHistory(self,text);

       if fAutoSynchronize then
       for I := 0 to Owner.ComponentCount - 1 do
         begin
           if (Owner.Components[I] is TAdvLUEdit) and (Owner.Components[I]<>self) then
            begin
             lu:=Owner.Components[I] as TAdvLUEdit;
             if (lu.AutoHistory) and (lu.LookupPersist.key=self.LookupPersist.Key) and (lu.AutoSynchronize) and
                (lu.LookupPersist.Section=self.LookupPersist.Section) then
                 lu.LookupItems.Assign(self.LookupItems);
             end;
         end;



     end;

   end;
 if allowexit then inherited DoExit else self.SetFocus;
end;

procedure TAdvLUEdit.Lookup;
var
 c:string;
 i:integer;
 UsrStr,AutoAdd:string;
 searchrec:tsearchrec;

begin
// inherited Change;

 if csDesigning in ComponentState then exit;

 if not workmode then exit;

 c:=upstr(Text,fMatchCase);
 c:=copy(c,1,selstart);

 if (fLookupItems.count>0) then
  for i:=0 to fLookupItems.count-1 do
    begin
     if pos(c,upstr(fLookupItems.Strings[i],fMatchCase))=1 then
      begin
       UsrStr:=copy(text,1,length(c));
       AutoAdd:=copy(fLookupItems.Strings[i],length(c)+1,255);
       if assigned(FAutoComplete) then
         begin
          FAutoComplete(self,UsrStr,AutoAdd,i);
         end;

       Text:=UsrStr+AutoAdd;
       SendMessage(Handle,EM_SETSEL,length(c)+length(Prefix),length(text)+length(Prefix));
       exit;
      end;
   end;

 if (fLookupItems.count=0) and (length(self.text)>0) and (fFileLookup) then
  begin
   if findfirst(self.text+'*' ,faAnyfile,searchrec)=0 then
    begin
     c:=text;
     usrstr:='';
     while (pos(':',c)>0) do
       begin
        usrstr:=usrstr+copy(c,1,pos(':',c));
        delete(c,1,pos(':',c));
       end;
     while (pos('\',c)>0) do
       begin
        usrstr:=usrstr+copy(c,1,pos('\',c));
        delete(c,1,pos('\',c));
       end;

     if ((ncpos(c,searchrec.name)=1) or (c=''))
        and (ncpos('.',searchrec.name)<>1) then
      begin
       c:=text;
       text:=usrstr+searchrec.name;
       SendMessage(Handle,EM_SETSEL,length(c),length(text));
      end;
    end;
   findclose(searchrec);
  end;
end;

procedure TAdvLUEdit.Change;
begin
 inherited;
 fChanged:=true;
end;

procedure TAdvLUEdit.KeyDown(var Key: Word; Shift: TShiftState);
begin
 case Key of
 vk_back,vk_delete:workmode:=false;
 vk_return:begin
             if (fLookupItems.IndexOf(Text)<>-1) then
              begin
               text:=fLookupItems.Strings[fLookupItems.IndexOf(Text)];
               self.Change;
              end;
             end;
 else workmode:=true;
 end;
 inherited KeyDown(key,shift);
end;


constructor TAdvLUEdit.Create(aOwner:tComponent);
begin
 inherited Create(aOwner);
 fLookupItems:=tStringList.Create;
 fLUPersist:=TLUPersist.Create;
 workmode:=true;
end;


destructor TAdvLUEdit.Destroy;
begin
 fLookupItems.Free;
 fLUPersist.Free;
 inherited Destroy;
end;

procedure TAdvLUEdit.SetLUPersist(value: TLUPersist);
begin
 fLUPersist.Assign(value);
end;

procedure TAdvLUEdit.Loaded;
begin
 inherited Loaded;
 if not (csDesigning in ComponentState) then LoadPersist;
end;

procedure TAdvLUEdit.WMDestroy(var Msg: TMessage);
begin
 if not (csDesigning in ComponentState) then SavePersist;
 DefaultHandler(msg);
end;

procedure TAdvLUEdit.LoadPersist;
var
 Inifile:tInifile;
 i:integer;
 s:string;
begin
 if self.fLUPersist.Enable then
  begin
    if (fLUPersist.Location=plInifile) then
     Inifile:=TInifile.Create(self.fLUPersist.Key)
    else
     Inifile:=TInifile(TRegInifile.Create(self.fLUPersist.Key));

    LookupItems.Clear;
    i:=1;
    repeat
     s:=Inifile.ReadString(self.fLUPersist.Section,'Item'+inttostr(i),'');
     inc(i);
     if s<>'' then self.LookupItems.Add(s);
    until s='';

    Inifile.Free;
  end;
end;

procedure TAdvLUEdit.SavePersist;
var
 Inifile:tInifile;
 i,j,k:integer;
begin
 if fLUPersist.Enable then
  begin
    if fLUPersist.Location=plInifile then
     Inifile:=TInifile.Create(fLUPersist.Key)
    else
     Inifile:=TInifile(TRegInifile.Create(fLUPersist.Key));

    j:=0;
    k:=self.LookupItems.Count;
    if fLUPersist.MaxCount then k:=fLUPersist.Count;

    if fLUPersist.MaxCount and (self.LookupItems.Count>fLUPersist.Count) then
      j:=self.LookUpItems.Count-self.fLuPersist.Count;

    for i:=1 to k do
     begin
       if (i+j<=self.LookUpItems.Count) then
        Inifile.WriteString(fLUPersist.Section,'Item'+inttostr(i),self.LookupItems.Strings[i+j-1])
       else
        Inifile.WriteString(fLUPersist.Section,'Item'+inttostr(i),'');
     end;

    Inifile.Free;
  end;
end;


procedure TAdvLUEdit.KeyUp(var Key: Word; Shift: TShiftState);
begin
  if fChanged and not (key in [vk_back,vk_delete]) then Lookup;
  fChanged:=false;
  inherited;
end;

end.
