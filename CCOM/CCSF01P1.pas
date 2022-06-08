unit CCSF01P1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, UltraGrid, StdCtrls, Buttons, ExtCtrls, ComCtrls, Db, DBGrids,
  DBTables;

type
  Tccsf01s1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    stb_codesel: TStatusBar;
    rg_condition: TRadioGroup;
    ed_code: TEdit;
    bbt_search: TBitBtn;
    bbt_choice: TBitBtn;
    bbt_exit: TBitBtn;
    ugd_code: TUltraGrid;
    procedure bbt_searchClick(Sender: TObject);
    procedure bbt_exitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbt_choiceClick(Sender: TObject);
    procedure ugd_codeDblClick(Sender: TObject);
    procedure ed_codeKeyPress(Sender: TObject; var Key: Char);
    procedure rg_conditionClick(Sender: TObject);
    procedure ed_codeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ugd_codeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
     infld, outfld: array of string;
     SvcName: string;
     btn_name: String;
  end;

var
  ccsf01s1: Tccsf01s1;

implementation

uses SPCLASS0, sysmsg, tuxmsg, tuxcom, msgcom, varcom, ccomfunc, comproc;

{$R *.DFM}

procedure Tccsf01s1.bbt_searchClick(Sender: TObject);
var
   i, row       : Integer;
   ComCodeClass : HComCode;
   Ctype        : string;
begin
   ComCodeClass  := HComCode.Create;
   Screen.Cursor := crHourGlass;
   if ed_code.Text <> '' then
   begin
      if rg_condition.ItemIndex = 0 then
         Ctype := 'C'
      else if rg_condition.ItemIndex = 1 then
         Ctype := 'N';
   end
   else if ((rg_condition.ItemIndex = 0) and (ed_code.Text = '')) or
           ((rg_condition.ItemIndex = 1) and (ed_code.Text = '')) then
      Ctype := 'A';

   row := ComCodeClass.List(SvcName,
                            infld,
                            [ed_code.Text, Ctype],
                            outfld,
                            [@ComCodeClass.sCode, @ComCodeClass.sName]
                            );
   if row = -1 then
   begin
      Clear_Grid(ugd_code, 2);
      ugd_code.RowCount := 2;
      ShowErrMsg;
   end
   else
   begin
      Clear_Grid(ugd_code, 2);
      ugd_code.RowCount := row + 1;
      for i := 1 to row do
      begin
         ugd_code.Cells[0,i] := ComCodeClass.sCode[i-1];
         ugd_code.Cells[1,i] := comCodeClass.sName[i-1];
      end;

      ugd_code.SetFocus;
   end;
   ComCodeClass.Free;
   Screen.Cursor     := crDefault;
   ed_code.SelStart  := 0;
   ed_code.SelLength := (Length(ed_code.Text));
end;

procedure Tccsf01s1.bbt_exitClick(Sender: TObject);
begin
   btn_name := 'bbt_exit';
   Close;
end;

procedure Tccsf01s1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure Tccsf01s1.bbt_choiceClick(Sender: TObject);
begin
   btn_name := 'bbt_choice';
   Close;
end;

procedure Tccsf01s1.ugd_codeDblClick(Sender: TObject);
begin
   bbt_choice.OnClick(nil);
end;

procedure Tccsf01s1.ed_codeKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      bbt_search.OnClick(nil);
end;

procedure Tccsf01s1.rg_conditionClick(Sender: TObject);
begin
   if rg_condition.ItemIndex = 0 then
   begin
      ed_code.MaxLength := 10;
      ed_code.CharCase  := ecUpperCase;
   end
   else
   begin
      ed_code.MaxLength := 30;
      ed_code.CharCase  := ecNormal;
   end;
end;

procedure Tccsf01s1.ed_codeChange(Sender: TObject);
begin
   if rg_condition.ItemIndex = 0 then
   begin
      ed_code.MaxLength := 10;
      ed_code.CharCase  := ecUpperCase;
   end
   else
   begin
      ed_code.MaxLength := 30;
      ed_code.CharCase  := ecNormal;
   end;
end;

procedure Tccsf01s1.FormCreate(Sender: TObject);
begin
   btn_name := 'bbt_exit';
end;

procedure Tccsf01s1.ugd_codeKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      bbt_choice.OnClick(nil);
end;

end.
