{**************************************************************************}
{ HTML design time property editor interface                               }
{ for Delphi 3.0,4.0,5.0,6.0 & C++Builder 3.0, 4.0,5.0                     }
{ version 1.2                                                              }
{                                                                          }
{ written by TMS Software                                                  }
{            copyright ? 2000 - 2001                                       }
{            Email : info@tmssoftware.com                                  }
{            Web : http://www.tmssoftware.com                              }
{                                                                          }
{ The source code is given as is. The author is not responsible            }
{ for any possible damage done due to the use of this code.                }
{ The component can be freely used in any application. The complete        }
{ source code remains property of the author and may not be distributed,   }
{ published, given or sold in any form as such. No parts of the source     }
{ code can be included in any other component or application without       }
{ written authorization of the author.                                     }
{**************************************************************************}

unit htmlde;

interface

uses
  HTMLProp,Classes,Forms,Dialogs,Controls,Windows,TypInfo,Graphics,Sysutils,
  PictureContainer, DB,
{$IFDEF VER140}
  DesignIntf, DesignEditors
{$ELSE}
  DsgnIntf
{$ENDIF}
  ;

type
  THTMLDefaultEditor = class(TDefaultEditor)
  protected
  {$IFNDEF VER140}
    procedure EditProperty(PropertyEditor: TPropertyEditor;
                           var Continue, FreeEditor: Boolean); override;
  {$ELSE}
    procedure EditProperty(const Prop:IProperty; var Continue:Boolean); override;
  {$ENDIF}
  public
    function GetVerb(index:integer):string; override;
    function GetVerbCount:integer; override;
    procedure ExecuteVerb(Index:integer); override;
  end;

  THTMLTextProperty = class(TClassProperty)
  public
    function GetAttributes: TPropertyAttributes; override;
    procedure Edit; override;
    procedure SetValue(const Value: String); override;
    function GetValue: String; override;
  end;

  THTMLStringProperty = class(TClassProperty)
  public
    function GetAttributes: TPropertyAttributes; override;
    procedure Edit; override;
    procedure SetValue(const Value: String); override;
    function GetValue: String; override;
  end;


implementation

function THTMLTextProperty.GetAttributes: TPropertyAttributes;
begin
 Result:=[paDialog];
end;

procedure THTMLTextProperty.Edit;
var
  HTMLEditor:THTMLEditor;
  PropInfo:PPropInfo;
  FDataSource:TDataSource;

begin
 HTMLEditor:=THTMLEditor.Create(Application);
 try
  HTMLEditor.Memo1.Lines.Assign(TStrings(GetOrdValue));
  {try to inherit the default font}
  PropInfo:= typInfo.GetPropInfo(GetComponent(0).ClassInfo,'Font');
  if (PropInfo<>nil) then
   HTMLEditor.HTMLStaticText1.Font.Assign(TFont(GetOrdProp(GetComponent(0),PropInfo)));

  PropInfo:= typInfo.GetPropInfo(GetComponent(0).ClassInfo,'Images');
  if (PropInfo<>nil) then
   HTMLEditor.HTMLStaticText1.Images:=(TImageList(GetOrdProp(GetComponent(0),PropInfo)));

  PropInfo:= typInfo.GetPropInfo(GetComponent(0).ClassInfo,'URLColor');
  if (PropInfo<>nil) then
   HTMLEditor.HTMLStaticText1.URLColor:=(TColor(GetOrdProp(GetComponent(0),PropInfo)));


  PropInfo:= typInfo.GetPropInfo(GetComponent(0).ClassInfo,'HoverColor');
  if (PropInfo<>nil) then
   HTMLEditor.HTMLStaticText1.HoverColor:=(TColor(GetOrdProp(GetComponent(0),PropInfo)));

  PropInfo:= typInfo.GetPropInfo(GetComponent(0).ClassInfo,'HoverFontColor');
  if (PropInfo<>nil) then
   HTMLEditor.HTMLStaticText1.HoverFontColor:=(TColor(GetOrdProp(GetComponent(0),PropInfo)));

  PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'Hover');
  if (PropInfo<>nil) then
   HTMLEditor.HTMLStaticText1.Hover:=(Boolean(GetOrdProp(GetComponent(0),PropInfo)));

  PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'AnchorHint');
  if (PropInfo<>nil) then
   HTMLEditor.HTMLStaticText1.AnchorHint := (Boolean(GetOrdProp(GetComponent(0),PropInfo)));

  PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'ShadowColor');
  if (PropInfo<>nil) then
   HTMLEditor.HTMLStaticText1.ShadowColor := (TColor(GetOrdProp(GetComponent(0),PropInfo)));

  PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'ShadowOffset');
  if (PropInfo<>nil) then
   HTMLEditor.HTMLStaticText1.ShadowOffset := (integer(GetOrdProp(GetComponent(0),PropInfo)));

  PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'PictureContainer');
  if PropInfo <> nil then
   HTMLEditor.HTMLStaticText1.PictureContainer := (TPictureContainer(GetOrdProp(GetComponent(0),PropInfo)));

  PropInfo:= typInfo.GetPropInfo(GetComponent(0).ClassInfo,'Datasource');
  if (PropInfo<>nil) then
    begin
     HTMLEditor.DBfields.Visible := True;
     FDataSource := TDataSource(GetOrdProp(GetComponent(0),PropInfo));
     if Assigned(FDataSource) then
      begin
        if Assigned(FDataSource.dataset) then fDataSource.DataSet.GetFieldNames(HTMLEditor.FieldNames);
      end;
    end;

  if HTMLEditor.Showmodal = mrOK then
    SetOrdValue(longint(HTMLEditor.Memo1.Lines));
  finally
    HTMLEditor.Free;
  end;
end;

procedure THTMLTextProperty.SetValue(const Value: String);
begin
end;

function THTMLTextProperty.GetValue: String;
begin
  Result := '(HTMLText)';
end;


function THTMLStringProperty.GetAttributes: TPropertyAttributes;
begin
  Result := [paDialog];
end;

procedure THTMLStringProperty.Edit;
var
  HTMLEditor: THTMLEditor;
  PropInfo: PPropInfo;
  FDataSource: TDataSource;
  S: string;
  i: Integer;

begin
  HTMLEditor := THTMLEditor.Create(Application);
  try
   HTMLEditor.Memo1.Lines.Clear;
   HTMLEditor.Memo1.Lines.Add(String(GetStrValue));

  {try to inherit the default font}
   PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'Font');
  if (PropInfo<>nil) then
   HTMLEditor.HTMLStaticText1.Font.Assign(TFont(GetOrdProp(GetComponent(0),PropInfo)));

  PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'Images');
  if (PropInfo<>nil) then
   HTMLEditor.HTMLStaticText1.Images:=(TImageList(GetOrdProp(GetComponent(0),PropInfo)));

  PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'URLColor');
  if (PropInfo<>nil) then
   HTMLEditor.HTMLStaticText1.URLColor:=(TColor(GetOrdProp(GetComponent(0),PropInfo)));

  PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'HoverColor');
  if (PropInfo<>nil) then
   HTMLEditor.HTMLStaticText1.HoverColor:=(TColor(GetOrdProp(GetComponent(0),PropInfo)));

  PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'HoverFontColor');
  if (PropInfo<>nil) then
   HTMLEditor.HTMLStaticText1.HoverFontColor:=(TColor(GetOrdProp(GetComponent(0),PropInfo)));

  PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'Hover');
  if (PropInfo<>nil) then
   HTMLEditor.HTMLStaticText1.Hover:=(boolean(GetOrdProp(GetComponent(0),PropInfo)));

  PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'AnchorHint');
  if (PropInfo<>nil) then
   HTMLEditor.HTMLStaticText1.AnchorHint:=(boolean(GetOrdProp(GetComponent(0),PropInfo)));

  PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'ShadowColor');
  if (PropInfo<>nil) then
   HTMLEditor.HTMLStaticText1.ShadowColor:=(TColor(GetOrdProp(GetComponent(0),PropInfo)));

  PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'ShadowOffset');
  if (PropInfo<>nil) then
   HTMLEditor.HTMLStaticText1.ShadowOffset:=(integer(GetOrdProp(GetComponent(0),PropInfo)));

  PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'PictureContainer');
  if PropInfo <> nil then
   HTMLEditor.HTMLStaticText1.PictureContainer := (TPictureContainer(GetOrdProp(GetComponent(0),PropInfo)));

  PropInfo := typInfo.GetPropInfo(GetComponent(0).ClassInfo,'Datasource');
  if (PropInfo<>nil) then
    begin
     HTMLEditor.DBfields.Visible:=true;
     FDataSource := TDataSource(GetOrdProp(GetComponent(0),PropInfo));
     if Assigned(FDataSource) then
      begin
        if assigned(fDataSource.dataset) then fDataSource.DataSet.GetFieldNames(HTMLEditor.FieldNames);
      end;
    end;


  if HTMLEditor.Showmodal = mrOK then
  begin
    s := '';
    for i := 1 to HTMLEditor.Memo1.Lines.Count do
      s := s + HTMLEditor.Memo1.Lines[i-1];

    SetStrValue(s);
  end;

  finally
    HTMLEditor.Free;
  end;
end;

procedure THTMLStringProperty.SetValue(const Value: String);
begin
end;

function THTMLStringProperty.GetValue: String;
begin
  Result:='(HTMLString)';
end;

{ THTMLDefaultEditor }
{$IFDEF VER140}
procedure THTMLDefaultEditor.EditProperty(const Prop:IProperty; var Continue:Boolean);
{$ELSE}
procedure THTMLDefaultEditor.EditProperty(PropertyEditor: TPropertyEditor;
  var Continue, FreeEditor: Boolean);
{$ENDIF}
var
 PropName: string;
begin
{$IFDEF VER140}
 PropName := Prop.GetName;
{$ELSE}
 PropName := PropertyEditor.GetName;
{$ENDIF}
 if (CompareText(PropName, 'HTMLTEXT') = 0) then
   begin
{$IFDEF VER140}
    Prop.Edit;
{$ELSE}
    PropertyEditor.Edit;
{$ENDIF}
    Continue := False;
   end;
end;



procedure THTMLDefaultEditor.ExecuteVerb(Index: integer);
var
 compiler:string;
begin
 case Index of
 0: Edit;
 1: begin
   {$IFDEF VER90}
   compiler:='Delphi 2';
   {$ENDIF}
   {$IFDEF VER93}
   compiler:='C++Builder 1';
   {$ENDIF}
   {$IFDEF VER100}
   compiler:='Delphi 3';
   {$ENDIF}
   {$IFDEF VER110}
   compiler:='C++Builder 3';
   {$ENDIF}
   {$IFDEF VER120}
   compiler:='Delphi 4';
   {$ENDIF}
   {$IFDEF VER125}
   compiler:='C++Builder 4';
   {$ENDIF}
   {$IFDEF VER130}
   {$IFDEF BCB}
   compiler:='C++Builder 5';
   {$ELSE}
   compiler:='Delphi 5';
   {$ENDIF}
   {$ENDIF}
   {$IFDEF VER140}
   {$IFDEF BCB}
   compiler:='C++Builder 6';
   {$ELSE}
   compiler:='Delphi 6';
   {$ENDIF}
   {$ENDIF}
   messagedlg(component.className+' for '+compiler+#13#10#13#10'? 1999-2000 by TMS software'#13#10'http://www.tmssoftware.com',
              mtinformation,[mbok],0);
   end;
 end;
end;



function THTMLDefaultEditor.GetVerb(index: integer): string;
begin
 result:='';
 case index of
 0:result:='HTML Editor';
 1:result:='About';
 end;

end;

function THTMLDefaultEditor.GetVerbCount: integer;
begin
 result:=2;
end;

end.
