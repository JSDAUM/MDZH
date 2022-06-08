{***************************************************************************}
{ TRTTIInspectorBar component                                               }
{ for Delphi 5.0,6.0 & C++Builder 5.0                                       }   
{ version 1.0 - rel. Dec 2001                                               }
{                                                                           }
{ written by TMS Software                                                   }
{            copyright © 2001                                               }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{                                                                           }
{ The source code is given as is. The author is not responsible             }
{ for any possible damage done due to the use of this code.                 }
{ The component can be freely used in any application. The complete         }
{ source code remains property of the author and may not be distributed,    }
{ published, given or sold in any form as such. No parts of the source      }
{ code can be included in any other component or application without        }
{ written authorization of TMS software.                                    }
{***************************************************************************}

unit RTTIInspectorBar;

interface

uses
  InspectorBar, Classes, Messages, Windows, Controls, TypInfo, SysUtils,
  Graphics;

type
  TRTTIInspectorItem = class(TInspectorItem)
  private
  protected
    procedure EditStart; override;
    procedure EditStop; override;
    procedure EditChange; override;
  public
    constructor Create(Collection: TCollection); override;
    destructor Destroy; override;
  published
  end;

  TRTTIInspectorItems = class(TInspectorItems)
  private
    function GetItem(Index: Integer): TRTTIInspectorItem;
    procedure SetItem(Index: Integer; const Value: TRTTIInspectorItem);
  public
    function CreateItemClass: TCollectionItemClass; override;
    function Add: TRTTIInspectorItem;
    function Insert(index: Integer): TRTTIInspectorItem;
    property Items[Index: Integer]: TRTTIInspectorItem read GetItem write SetItem; default;
  published
  end;

  TRTTIInspectorPanel = class(TInspectorPanel)
  private
    FRTTIComponent: TComponent;
    procedure SetRTTIComponent(const Value: TComponent);
  public
    constructor Create(Collection: TCollection); override;  
    function CreateItems: TInspectorItems; override;
  published
    property RTTIComponent: TComponent read FRTTIComponent write SetRTTIComponent;
  end;

  TRTTIInspectorPanels = class(TInspectorPanels)
  private
    function GetItem(Index: Integer): TRTTIInspectorPanel;
    procedure SetItem(Index: Integer; const Value: TRTTIInspectorPanel);
  public
    function CreateItemClass: TCollectionItemClass; override;
    function Add: TRTTIInspectorPanel;
    function Insert(index: Integer): TRTTIInspectorPanel;
    property Items[Index: Integer]: TRTTIInspectorPanel read GetItem write SetItem; default;
  end;

  TRTTIInspectorBar = class(TInspectorBar)
  private
    function GetPanels: TRTTIInspectorPanels;
    procedure SetPanels(const Value: TRTTIInspectorPanels);
  public
    function CreatePanels: TInspectorPanels; override;
    procedure StartEdit(InspectorItem: TInspectorItem); override;
    procedure StopEdit(InspectorItem: TInspectorItem); override;
    procedure GetValueList(InspectorItem: TInspectorItem; Values: TStringList); override;
  published
    property Panels: TRTTIInspectorPanels read GetPanels write SetPanels;  
  end;

implementation

{ TRTTIInspectorBar }

function TRTTIInspectorBar.CreatePanels: TInspectorPanels;
begin
  Result := TRTTIInspectorPanels.Create(Self);
end;

function TRTTIInspectorBar.GetPanels: TRTTIInspectorPanels;
begin
  Result := TRTTIInspectorPanels(inherited Panels);
end;

procedure TRTTIInspectorBar.GetValueList(InspectorItem: TInspectorItem;
  Values: TStringList);
var
  TypeData : PTypeData;
  PropInfo: PPropInfo;
  i: Integer;
begin
  inherited;
  PropInfo := GetPropInfo(TRTTIInspectorPanel(InspectorItem.InspectorPanel).RTTIComponent,
    InspectorItem.Caption,tkProperties);

   if PropInfo^.PropType^.Kind = tkEnumeration then
   begin
     TypeData := GetTypeData(PropInfo^.PropType^);

     for i := TypeData^.MinValue to TypeData^.MaxValue do
     begin
       Values.Add(GetEnumName(TypeData^.BaseType^,i));
     end;
   end;
end;

procedure TRTTIInspectorBar.SetPanels(const Value: TRTTIInspectorPanels);
begin
  inherited Panels := Value;
end;

procedure TRTTIInspectorBar.StartEdit(InspectorItem: TInspectorItem);
begin
  inherited;
end;

procedure TRTTIInspectorBar.StopEdit(InspectorItem: TInspectorItem);
var
  Comp: TComponent;
  TypeData : PTypeData;
  PropInfo: PPropInfo;
  i: Integer;
  
begin
  inherited;

  if not Assigned(InspectorItem) then
    Exit;

  if InspectorItem.PropertyType = ptText then
  begin
    Comp := TRTTIInspectorPanel(InspectorItem.InspectorPanel).RTTIComponent;
    if Assigned(Comp) then
      SetStrProp(Comp, InspectorItem.Caption, InspectorItem.TextValue);
  end;

  if InspectorItem.PropertyType = ptBoolean then
  begin
    Comp := TRTTIInspectorPanel(InspectorItem.InspectorPanel).RTTIComponent;
    if Assigned(Comp) then
    if InspectorItem.BoolValue then
    begin
      SetOrdProp(Comp, InspectorItem.Caption, 1);
      InspectorItem.TextValue := 'True';
    end
    else
    begin
      SetOrdProp(Comp, InspectorItem.Caption, 0);
      InspectorItem.TextValue := 'False';
    end;
  end;

  if InspectorItem.PropertyType in [ptInteger,ptIntSpin] then
  begin
    Comp := TRTTIInspectorPanel(InspectorItem.InspectorPanel).RTTIComponent;
    if Assigned(Comp) then
      SetOrdProp(Comp, InspectorItem.Caption, InspectorItem.IntValue)
  end;

  if InspectorItem.PropertyType = ptColor then
  begin
    Comp := TRTTIInspectorPanel(InspectorItem.InspectorPanel).RTTIComponent;
    if Assigned(Comp) then
      SetOrdProp(Comp, InspectorItem.Caption, Integer(InspectorItem.ColorValue));
  end;

  if InspectorItem.PropertyType = ptFont then
  begin
    Comp := TRTTIInspectorPanel(InspectorItem.InspectorPanel).RTTIComponent;
    if Assigned(Comp) then
      SetObjectProp(Comp, InspectorItem.Caption, TObject(InspectorItem.FontValue));
  end;

  if InspectorItem.PropertyType = ptValues then
  begin
    PropInfo := GetPropInfo(TRTTIInspectorPanel(InspectorItem.InspectorPanel).RTTIComponent,
      InspectorItem.Caption,tkProperties);

     if PropInfo^.PropType^.Kind = tkEnumeration then
     begin
       TypeData := GetTypeData(PropInfo^.PropType^);
       i := GetEnumValue(TypeData^.BaseType^,InspectorItem.TextValue);

       Comp := TRTTIInspectorPanel(InspectorItem.InspectorPanel).RTTIComponent;
       if Assigned(Comp) then
         SetOrdProp(Comp, InspectorItem.Caption, i);
     end;
  end;
end;

{ TRTTIInspectorPanels }

function TRTTIInspectorPanels.Add: TRTTIInspectorPanel;
begin
  Result := TRTTIInspectorPanel(inherited Add);
end;

function TRTTIInspectorPanels.CreateItemClass: TCollectionItemClass;
begin
  Result := TRTTIInspectorPanel;
end;

function TRTTIInspectorPanels.GetItem(Index: Integer): TRTTIInspectorPanel;
begin
  Result := TRTTIInspectorPanel(inherited Items[Index]);
end;

function TRTTIInspectorPanels.Insert(index: Integer): TRTTIInspectorPanel;
begin
  Result := TRTTIInspectorPanel(inherited Insert(Index));
end;

procedure TRTTIInspectorPanels.SetItem(Index: Integer;
  const Value: TRTTIInspectorPanel);
begin
  inherited Items[Index] := Value;
end;

{ TRTTIInspectorPanel }

constructor TRTTIInspectorPanel.Create(Collection: TCollection);
begin
  inherited;
  Style := psProperties;
  ItemHeight := 26;
end;


function TRTTIInspectorPanel.CreateItems: TInspectorItems;
begin
  Result := TRTTIInspectorItems.Create(Self);
end;

procedure TRTTIInspectorPanel.SetRTTIComponent(const Value: TComponent);
var
  i, Count: Integer;
  PropList: PPropList;
  RTTIItem: TRTTIInspectorItem;
  TypeData : PTypeData;

begin
  FRTTIComponent := Value;

  if Assigned(FRTTIComponent) then
  begin
    if Items.Count > 0 then
      Items.Clear;

    Count := GetPropList(RTTIComponent.ClassInfo,tkProperties,nil);
    GetMem(PropList, Count * SizeOf(PPropInfo));

    try
      GetPropList(RTTIComponent.ClassInfo, tkProperties, PropList);
      for I := 1 to Count do
      begin
        RTTIItem := TRTTIInspectorItem(Items.Add);
        RTTIItem.Caption := PropList^[I - 1].Name;

        if PropList^[I - 1].PropType^.Name = 'Boolean' then
        begin
          RTTIItem.PropertyType := ptBoolean;
          RTTIItem.BoolValue := GetOrdProp(RTTIComponent,PropList^[I - 1].Name) <> 0;
          if RTTIItem.BoolValue then
            RTTIItem.TextValue := 'True'
          else
            RTTIItem.TextValue := 'False';
        end;

        if PropList^[I - 1].PropType^.Kind in [tkString,tkLString] then
        begin
          RTTIItem.TextValue := GetStrProp(RTTIComponent,PropList^[I - 1].Name);
          RTTIItem.PropertyType := ptText;
        end;

        if PropList^[I - 1].PropType^.Kind in [tkInteger,tkInt64] then
        begin
          if PropList^[I - 1].PropType^.Name <> 'TColor' then
          begin
            RTTIItem.IntValue := GetOrdProp(RTTIComponent,PropList^[I - 1].Name);
            RTTIItem.PropertyType := ptIntSpin;
          end
          else
          begin
            RTTIItem.ColorValue := GetOrdProp(RTTIComponent,PropList^[I - 1].Name);
            RTTIItem.PropertyType := ptColor;
          end;
        end;

        if PropList^[I - 1].PropType^.Kind in [tkClass,tkRecord,tkArray,tkDynArray,tkSet] then
        begin
          if PropList^[I - 1].PropType^.Name = 'TFont' then
          begin
            RTTIItem.PropertyType := ptFont;
            RTTIItem.FontValue.Assign(TFont(GetObjectProp(RTTIComponent,PropList^[I - 1].Name)));
          end
          else
          begin
            RTTIItem.PropertyType := ptPropButton;
            RTTIItem.TextValue := '(' + PropList^[I - 1].PropType^.Name + ')';
          end;
        end;

        if PropList^[I - 1].PropType^.Kind = tkEnumeration then
        begin
          if PropList^[I - 1].PropType^.Name <> 'Boolean' then
            RTTIItem.PropertyType := ptValues;

          TypeData := GetTypeData(PropList^[I - 1].PropType^);

          RTTIItem.TextValue := GetEnumName(TypeData.BaseType^, GetOrdProp(RTTIComponent,PropList^[I - 1].Name));

        end;
      end;
    finally
      FreeMem(PropList);
    end;
  end
  else
    Items.Clear;
end;

{ TRTTIInspectorItems }

function TRTTIInspectorItems.Add: TRTTIInspectorItem;
begin
  Result := TRTTIInspectorItem(inherited Add);
end;

function TRTTIInspectorItems.CreateItemClass: TCollectionItemClass;
begin
  Result := TRTTIInspectorItem;
end;

function TRTTIInspectorItems.GetItem(Index: Integer): TRTTIInspectorItem;
begin
  Result := TRTTIInspectorItem(inherited Items[Index]);
end;

function TRTTIInspectorItems.Insert(index: Integer): TRTTIInspectorItem;
begin
  Result := TRTTIInspectorItem(inherited Insert(Index));
end;

procedure TRTTIInspectorItems.SetItem(Index: Integer;
  const Value: TRTTIInspectorItem);
begin
  inherited Items[Index] := Value;
end;

{ TRTTIInspectorItem }

constructor TRTTIInspectorItem.Create(Collection: TCollection);
begin
  inherited;
end;

destructor TRTTIInspectorItem.Destroy;
begin
  inherited;
end;

procedure TRTTIInspectorItem.EditChange;
begin
  inherited;
end;

procedure TRTTIInspectorItem.EditStart;
begin
  inherited;
end;

procedure TRTTIInspectorItem.EditStop;
begin
  inherited;
end;

end.
