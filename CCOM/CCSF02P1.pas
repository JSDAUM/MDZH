unit CCSF02P1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, UltraGrid, StdCtrls, Buttons, ExtCtrls, ComCtrls, Db, DBGrids,
  DBTables;

type
  Tccsf02s1 = class(TForm)
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
    procedure ed_codeChange(Sender: TObject);
    procedure rg_conditionClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     infld, outfld: array of string;
     SvcName: string;
     btn_name: String;
  end;

var
  ccsf02s1: Tccsf02s1;

implementation

uses SPCLASS0, sysmsg, tuxmsg, tuxcom, msgcom, varcom, ccomfunc, comproc;

{$R *.DFM}

procedure Tccsf02s1.bbt_searchClick(Sender: TObject);
var
   i, row: Integer;
   Ctype: string;
begin
   if (rg_condition.ItemIndex = 0) and (Length(ed_code.Text) < 3) then
   begin
      ShowMessage('환자번호를 세 자 이상 입력하십시오.');
      ed_code.SetFocus;
      Exit;
   end;
   if (rg_condition.ItemIndex = 1) and (Length(ed_code.Text) < 4) then
   begin
      ShowMessage('이름을 두 자 이상 입력하십시오.');
      ed_code.SetFocus;
      Exit;
   end;
   ComCode1Class := HComCode1.Create;
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

   row := ComCode1Class.List(SvcName,
                             infld,
                             [ed_code.Text, Ctype],
                             outfld,
                             [@ComCode1Class.sCode, @ComCode1Class.sName, @ComCode1Class.sLno]
                             );
   if row = -1 then
   begin
      ShowErrMsg;
      ed_code.SetFocus;
      Clear_Grid(ugd_code, 3);
      ugd_code.RowCount := 2;
   end
   else
   begin
      Clear_Grid(ugd_code, 3);
      ugd_code.RowCount := row + 1;
      for i := 1 to ugd_code.RowCount - 1 do
      begin
         ugd_code.Cells[0,i] := ComCode1Class.sCode[i-1];
         ugd_code.Cells[1,i] := comCode1Class.sName[i-1];
         ugd_code.Cells[2,i] := comCode1Class.sLno[i-1];
      end;
   end;
   ComCode1Class.Free;
   Screen.Cursor     := crDefault;
   ed_code.SelStart  := 0;
   ed_code.SelLength := (Length(ed_code.Text));
end;

procedure Tccsf02s1.bbt_exitClick(Sender: TObject);
begin
   btn_name := 'bbt_exit';
   Close;
end;

procedure Tccsf02s1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure Tccsf02s1.bbt_choiceClick(Sender: TObject);
begin
   btn_name := 'bbt_choice';
   Close;
end;

procedure Tccsf02s1.ugd_codeDblClick(Sender: TObject);
var
   i, row: Integer;
   Ctype: string;
begin
   ComCode1Class := HComCode1.Create;
   Screen.Cursor := crHourGlass;
   if ugd_code.Cells[0, ugd_code.Row] <> '' then
   begin
      row := ComCode1Class.List(SvcName,
                                infld,
                                [ugd_code.Cells[0, ugd_code.Row], 'C'],
                                outfld,
                                [@ComCode1Class.sCode, @ComCode1Class.sName, @Comcode1Class.sLno]
                                );
      if row = -1 then
      begin
         Clear_Grid(ugd_code, 3);
         ugd_code.RowCount := 2;
         ShowErrMsg;
      end
      else
      begin
         Clear_Grid(ugd_code, 3);
         ugd_code.RowCount := row + 1;
         for i := 1 to row do
         begin
            ugd_code.Cells[0,i] := ComCode1Class.sCode[i-1];
            ugd_code.Cells[1,i] := comCode1Class.sName[i-1];
            ugd_code.Cells[2,i] := comCode1Class.sLno[i-1];
         end;
      end;
      ComCode1Class.Free;
      Screen.Cursor     := crDefault;
      ed_code.SelStart  := 0;
      ed_code.SelLength := (Length(ed_code.Text));
   end;
   bbt_choice.OnClick(nil);
end;

procedure Tccsf02s1.ed_codeKeyPress(Sender: TObject; var Key: Char);
var
   i, diff : Integer;
   FillChar, CurChar : String;
begin
   if key = #13 then
   begin
      if rg_condition.ItemIndex = 0 then
      begin
         if Length(ed_code.Text) < 8 then
         begin
            diff := 8 - Length(ed_code.Text);
            CurChar := ed_code.Text;
            for i := 1 to diff do
               FillChar := FillChar + '0';
            ed_code.Text := FillChar + CurChar;
         end;
      end;
      bbt_search.OnClick(nil);
   end;
end;

procedure Tccsf02s1.ed_codeChange(Sender: TObject);
begin
   if rg_condition.ItemIndex = 0 then
      ed_code.MaxLength := 8
   else
      ed_code.MaxLength := 30;
end;

procedure Tccsf02s1.rg_conditionClick(Sender: TObject);
begin
   if rg_condition.ItemIndex = 0 then
   begin
      ed_code.MaxLength := 8;
      SetHangeulMode(False, Handle);
   end
   else
      ed_code.MaxLength := 30;
end;

procedure Tccsf02s1.FormCreate(Sender: TObject);
begin
   btn_name := 'bbt_exit';
end;

end.
