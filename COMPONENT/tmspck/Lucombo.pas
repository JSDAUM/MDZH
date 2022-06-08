{********************************************************************
TLOOKUP components : TLUEdit & TLUCombo
for Delphi 1.0,2.0,3.0,4.0,5.0 & C++Builder 1.0,3.0,4.0,5.0
version 2.2

written by
 TMS Software
 copyright © 1996-2000
 Email : info@tmssoftware.com
 Web : http://www.tmssoftware.com

The source code is given as is. The author is not responsible
for any possible damage done due to the use of this code.
The component can be freely used in any application. The source
code remains property of the author and may not be distributed
freely as such.
********************************************************************}
unit Lucombo;

{$I TMSDEFS.INC}

interface

uses
 {$IFDEF WIN32} windows, {$ELSE} winprocs,wintypes, {$ENDIF}
 stdctrls, classes, dialogs, messages, controls, sysutils, inifiles, advcombo
 {$IFDEF WIN32} ,registry {$ENDIF};

type
  {$IFNDEF WIN32}
  TRegIniFile = class(TIniFile);
  {$ENDIF}

  TAutoCompleteEvent = procedure(Sender: TObject;const UsrStr:string; var AutoAdd:string;idx:integer) of object;
  TEnterAcceptEvent = procedure(Sender: TObject;const Str:string;idx:integer;var accept:boolean) of object;

  TAddToHistoryEvent = procedure(Sender: TObject; const Str:string) of object;


  TLUStorage = (stInifile,stRegistry);

  TLUPersist = class(TPersistent)
     private
      FEnable:boolean;
      FStorage : TLUStorage;
      FKey : string;
      FSection : string;
      FCount : integer;
      FMaxCount:boolean;
     published
      property Enable:boolean read fEnable write fEnable;
      property Storage:TLUStorage read fStorage write fStorage;
      property Key:string read fKey write fKey;
      property Section:string read fSection write fSection;
      property Count:integer read fCount write fCount;
      property MaxCount:boolean read fMaxCount write fMaxCount;
  end;

  TLUCombo = class(TAdvComboBox)
  private
    workmode:boolean;
    ItemIdx:integer;
    ItemSel:integer;
    ItemChange:boolean;
    FReturnIsTab:boolean;
    FAutoComplete:TAutoCompleteEvent;
    FEnterAccept:TEnterAcceptEvent;
    FOnAddToHistory:TAddToHistoryEvent;
    FAutoHistory:boolean;
    FAutoSynchronize:boolean;
    FFileLookup:boolean;
    FLUPersist:TLUPersist;
    FMatchCase:boolean;
    procedure SetLUPersist(value:TLUPersist);
    procedure WMDestroy(var Msg:TMessage); message wm_Destroy;
  public
    procedure Change; override;
    constructor Create(aOwner:tComponent); override;
    destructor Destroy; override;
    procedure SavePersist;
    procedure LoadPersist;
  protected
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyUp(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key:char); override;
    procedure DoExit; override;
    procedure Loaded; override;
  published
    property AutoComplete:TAutoCompleteEvent read FAutoComplete write FAutoComplete;
    property OnAddToHistory:TAddToHistoryEvent read FOnAddToHistory write FOnAddToHistory;
    property AutoHistory:boolean read FAutoHistory write FAutoHistory;
    property AutoSynchronize:boolean read fAutoSynchronize write fAutoSynchronize;
    property ReturnIsTab:boolean read FReturnIsTab write FReturnIsTab;
    property Accept:TEnterAcceptEvent read FEnterAccept write FEnterAccept;
    property FileLookup:boolean read FFileLookup write FFileLookup;
    property Persist:TLUPersist read FLUPersist write SetLUPersist;
    property MatchCase:boolean read FMatchCase write FMatchCase;
  end;

  TLUEdit = class(TEdit)
  private
    workmode:boolean;
    FLookupItems:TStringList;
    FAutoComplete:TAutoCompleteEvent;
    FOnAddToHistory:TAddToHistoryEvent;
    FAutoHistory:boolean;
    FAutoSynchronize:boolean;
    FReturnIsTab:boolean;
    FEnterAccept:TEnterAcceptEvent;
    FFileLookup:boolean;
    FLUPersist:TLUPersist;
    FMatchCase:boolean;
    procedure SetLookupItems(value:tstringlist);
    procedure SetLUPersist(value:TLUPersist);
    procedure WMDestroy(var Msg:TMessage); message wm_Destroy;
  protected
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyUp(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key:char); override;
    procedure DoExit; override;
  public
    procedure Change; override;
    constructor Create(aOwner:tComponent); override;
    destructor Destroy; override;
    procedure SavePersist;
    procedure LoadPersist;
    procedure Loaded; override;
  published
    property LookupItems:TStringList read fLookupItems write SetLookupItems;
    property AutoComplete:TAutoCompleteEvent read FAutoComplete write FAutoComplete;
    property OnAddToHistory:TAddToHistoryEvent read FOnAddToHistory write FOnAddToHistory;
    property Accept:TEnterAcceptEvent read FEnterAccept write FEnterAccept;
    property AutoHistory:boolean read FAutoHistory write FAutoHistory;
    property AutoSynchronize:boolean read fAutoSynchronize write fAutoSynchronize;
    property ReturnIsTab:boolean read FReturnIsTab write FReturnIsTab;
    property FileLookup:boolean read fFileLookup write fFileLookup;
    property Persist:TLUPersist read fLUPersist write SetLUPersist;
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


procedure TLUEdit.SetLookupItems(value:tstringlist);
begin
 if assigned(value) then fLookupItems.Assign(value)
end;

procedure TLUEdit.DoExit;
var
 allowexit:boolean;
 i:integer;
 lu:TLUEdit;
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
           if (Owner.Components[I] is TLUEdit) and (Owner.Components[I]<>self) then
            begin
             lu:=Owner.Components[I] as TLUEdit;
             if (lu.AutoHistory) and (lu.Persist.key=self.Persist.Key) and (lu.AutoSynchronize) and (lu.Persist.Section=self.Persist.Section) then
                 lu.LookupItems.Assign(self.LookupItems);
             end;
         end;



     end;

   end;
 if allowexit then inherited DoExit else self.SetFocus;
end;

procedure TLUEdit.Change;
var
 c:string;
 i:integer;
 UsrStr,AutoAdd:string;
 searchrec:tsearchrec;

begin
 inherited Change;

 if csDesigning in ComponentState then exit;

 if not workmode then exit;

 c:=upstr(text,fMatchCase);
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
       text:=UsrStr+AutoAdd;
       SendMessage(Handle,EM_SETSEL,length(c),length(text));
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

procedure TLUEdit.KeyPress(var key:char);
begin
 if (key=#13) and FReturnIsTab then key:=#0 else
 inherited Keypress(key);
end;

procedure TLUEdit.KeyUp(var Key: Word; Shift: TShiftState);
begin
 if not ((key=vk_return) and (FReturnIsTab)) then
 inherited KeyUp(key,shift);
end;

procedure TLUEdit.KeyDown(var Key: Word; Shift: TShiftState);
begin
 case Key of
 vk_back,vk_delete:workmode:=false;
 vk_return:begin
             if (fLookupItems.IndexOf(Text)<>-1) then
              begin
               text:=fLookupItems.Strings[fLookupItems.IndexOf(Text)];
               self.Change;
              end;
             if FReturnIsTab then
              begin
               postmessage(self.handle,wm_keydown,VK_TAB,0);
               key:=0;
              end;
             end;
 else workmode:=true;
 end;
 inherited KeyDown(key,shift);
end;

constructor TLUEdit.Create(aOwner:tComponent);
begin
 inherited Create(aOwner);
 fLookupItems:=tStringList.Create;
 fLUPersist:=TLUPersist.Create;
 workmode:=true;
end;

destructor TLUEdit.Destroy;
begin
 fLookupItems.Free;
 fLUPersist.Free;
 inherited Destroy;
end;

procedure TLUEdit.SetLUPersist(value: TLUPersist);
begin
 fLUPersist.Assign(value);
end;

procedure TLUEdit.Loaded;
begin
 inherited Loaded;
 if not (csDesigning in ComponentState) then LoadPersist;
end;

procedure TLUEdit.WMDestroy(var Msg: TMessage);
begin
 if not (csDesigning in ComponentState) then SavePersist;
 DefaultHandler(msg);
end;

procedure TLUEdit.LoadPersist;
var
 Inifile:tInifile;
 i:integer;
 s:string;
begin
 if self.fLUPersist.Enable then
  begin
    if self.fLUPersist.Storage=stInifile then
     Inifile:=TInifile.Create(self.fLUPersist.Key)
    else
     Inifile:=TInifile(TRegInifile.Create(self.fLUPersist.Key));

    self.LookupItems.Clear;
    i:=1;
    repeat
     s:=Inifile.ReadString(self.fLUPersist.Section,'Item'+inttostr(i),'');
     inc(i);
     if s<>'' then self.LookupItems.Add(s);
    until s='';

    Inifile.Free;
  end;
end;

procedure TLUEdit.SavePersist;
var
 Inifile:tInifile;
 i,j,k:integer;
begin
 if fLUPersist.Enable then
  begin
    if fLUPersist.Storage=stInifile then
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


procedure TLUCombo.KeyPress(var key:char);
begin
 inherited Keypress(key);
 if (key=#13) and FReturnIsTab then key:=#0;
end;

procedure TLUCombo.KeyUp(var Key: Word; Shift: TShiftState);
begin
 if not ((key=vk_return) and (FReturnIsTab)) then
 inherited KeyUp(key,shift);

 if ItemChange then
  begin
   itemindex:=ItemIdx;
   SendMessage(Handle,CB_SETEDITSEL,0,makelong(ItemSel,length(text)));
   ItemChange:=false;
  end;
end;

procedure TLUCombo.KeyDown(var Key: Word; Shift: TShiftState);
begin
 case Key of
 vk_back,vk_delete:workmode:=false;
 vk_return:begin
             if FReturnIsTab then
               begin
                if droppeddown then
                 begin
                  ItemIdx:=itemindex;
                  droppeddown:=false;
                  itemindex:=itemidx;
                 end;
                postmessage(self.handle,wm_keydown,VK_TAB,0);
                key:=0;
               end
              else
               if (Items.IndexOf(Text)<>-1) then
                 begin
                  ItemIndex:=Items.IndexOf(Text);
                  self.Change;
                 end;

             end;
 else workmode:=true;
 end;

 inherited KeyDown(key,shift);
end;

procedure TLUCombo.DoExit;
var
 allowexit:boolean;
 i:integer;
 lu:TLUCombo;

begin
 allowexit:=true;
 if Assigned(FEnterAccept) then
   begin
    FEnterAccept(self,text,Items.IndexOf(Text),allowexit);
  end;

 if allowexit and fautohistory and (text<>'') then
   begin
    if items.indexof(text)=-1 then
      begin
       items.Add(text);
       if assigned(fOnAddToHistory) then fOnAddToHistory(self,text);

       if fAutoSynchronize then
       for I := 0 to Owner.ComponentCount - 1 do
         begin
           if (Owner.Components[I] is TLUCombo) and (Owner.Components[I]<>self) then
            begin
             lu:=Owner.Components[I] as TLUCombo;
             if (lu.AutoHistory) and (lu.AutoSynchronize) and
                (lu.Persist.key=self.Persist.Key) and (lu.Persist.Section=self.Persist.Section) then
                 lu.Items.Assign(self.Items);
             end;
         end;
      end;
   end;

 if allowexit then inherited DoExit else self.SetFocus;
end;

procedure TLUCombo.Change;
var
 c:string;
 i:integer;
 UsrStr,AutoAdd:string;
 searchrec:tsearchrec;

begin
 { if (text='') then workmode:=true; }

 ItemChange:=false;

 inherited Change;

 if csDesigning in ComponentState then exit;

 if not workmode then exit;

 c:=upstr(text,fMatchCase);
 c:=copy(c,1,selstart);

 if c='' then exit;

 if (items.count>0) then
  for i:=0 to items.count-1 do
    begin
     if pos(c,upstr(items[i],fMatchCase))=1 then
      begin
       UsrStr:=copy(text,1,length(c));
       AutoAdd:=copy(items[i],length(c)+1,255);
       if assigned(FAutoComplete) then
         begin
          FAutoComplete(self,UsrStr,AutoAdd,i);
         end;

       ItemIndex:=i;
       ItemIdx:=i;
       ItemSel:=length(c);
       ItemChange:=true;
       text:=UsrStr+AutoAdd;
       SendMessage(Handle,CB_SETEDITSEL,0,makelong(ItemSel,length(text)));
       exit;
      end;
   end;

 if (length(self.text)>0) and (fFileLookup) then
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
       SendMessage(Handle,CB_SETEDITSEL,0,makelong(length(c),length(text)));
      end;
    end;

   findclose(searchrec);
  end;

end;

constructor TLUCombo.Create(aOwner:tComponent);
begin
 inherited Create(aOwner);
 workmode:=true;
 fLUPersist:=TLUPersist.Create;
 Flat:=false;
 ItemChange:=false;
end;

procedure TLUCombo.SetLUPersist(value: TLUPersist);
begin
 fLUPersist.Assign(value);
end;

destructor TLUCombo.Destroy;
begin
 fLUPersist.Free;
 inherited Destroy;
end;

procedure TLUCombo.SavePersist;
var
 Inifile:tInifile;
 i,j,k:integer;
begin
 if fLUPersist.Enable then
  begin
    if fLUPersist.Storage=stInifile then
     Inifile:=TInifile.Create(fLUPersist.Key)
    else
     Inifile:=TInifile(TRegInifile.Create(fLUPersist.Key));

    j:=0;
    k:=self.Items.Count;
    if fLUPersist.MaxCount then k:=fLUPersist.Count;

    if fLUPersist.MaxCount and (self.Items.Count>fLUPersist.Count) then
      j:=self.Items.Count-self.fLuPersist.Count;

    for i:=1 to k do
     begin
       if (i+j<=self.Items.Count) then
        Inifile.WriteString(fLUPersist.Section,'Item'+inttostr(i),self.Items.Strings[i+j-1])
       else
        Inifile.WriteString(fLUPersist.Section,'Item'+inttostr(i),'');
     end;

    Inifile.Free;
  end;
end;

procedure TLUCombo.LoadPersist;
var
 Inifile:tInifile;
 i:integer;
 s:string;
begin
 if self.fLUPersist.Enable then
  begin
    if self.fLUPersist.Storage=stInifile then
     Inifile:=TInifile.Create(self.fLUPersist.Key)
    else
     Inifile:=TInifile(TRegInifile.Create(self.fLUPersist.Key));

    self.Items.Clear;
    i:=1;
    repeat
     s:=Inifile.ReadString(self.fLUPersist.Section,'Item'+inttostr(i),'');
     inc(i);
     if s<>'' then self.Items.Add(s);
    until s='';

    Inifile.Free;
  end;
end;

procedure TLUCombo.Loaded;
begin
 inherited Loaded;
 if not (csDesigning in ComponentState) then LoadPersist;
end;

procedure TLUCombo.WMDestroy(var Msg: TMessage);
begin
 if not (csDesigning in ComponentState) then SavePersist;
 DefaultHandler(msg);
end;


end.
