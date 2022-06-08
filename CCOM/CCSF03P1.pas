unit CCSF03P1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, UltraGrid, StdCtrls, Buttons, ExtCtrls, ComCtrls, Db, DBGrids,
  DBTables;

Const
    MaxRowCnt = 200;   // 한번의 조회 Service Call시 읽어오는 Record 수
    ScrRowCnt = 14;   // 그리드 Scroll을 일으키지 않는 최대 Row 수

type
  Tccsf03s1 = class(TForm)
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
    procedure rg_conditionClick(Sender: TObject);
    procedure ed_codeChange(Sender: TObject);
    procedure ed_codeKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ugd_codeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
     SvcName, FormName, btn_name, Code, Name : string;
  end;

var
  ccsf03s1: Tccsf03s1;

implementation

uses SPCLASS0, sysmsg, tuxmsg, tuxcom, msgcom, varcom, ccomfunc, comproc,
     SPC201P1, SPD411P1;

{$R *.DFM}

procedure Tccsf03s1.bbt_searchClick(Sender: TObject);
var
   i, row: Integer;
begin
   if ed_code.Text <> '' then
   begin
      if rg_condition.ItemIndex = 0 then
      begin
         Code := ed_code.Text;
         Name := '';
      end
      else if rg_condition.ItemIndex = 1 then
      begin
         Code := '';
         Name := ed_code.Text;
      end;
   end;

   if SvcName = 'SP_SNOMCT_L1' then
   begin
      SPSnomClass := HSPSnom.Create;
      Screen.Cursor := crHourGlass;
      row := SPSnomClass.Select(Code, Name);
      Screen.Cursor := crDefault;
      if row = -1 then
      begin
         Clear_Grid(ugd_code, 2);
         ugd_code.RowCount := 2;
         ShowErrMsg;
         SPSnomClass.Free;
         Exit;
      end;
      Clear_Grid(ugd_code, 2);
      ugd_code.RowCount:= row + 1;
      for i := 1 to ugd_code.RowCount - 1 do
      begin
         ugd_code.Cells[0,i]:= SPSnomClass.sSnomCode[i-1];
         ugd_code.Cells[1,i]:= SPSnomClass.sSnomText[i-1];
      end;
      SPSnomClass.Free;
      ed_code.SetFocus;
   end
   else
   begin
      SPRsltClass := HSPRslt.Create;
      Screen.Cursor := crHourGlass;
      row := SPRsltClass.Select(Code, Name, '');
      Screen.Cursor := crDefault;
      if row = -1 then
      begin
         Clear_Grid(ugd_code, 2);
         ugd_code.RowCount := 2;
         ShowErrMsg;
         SPRsltClass.Free;
         Exit;
      end;
      Clear_Grid(ugd_code, 2);
      ugd_code.RowCount:= row + 1;
      for i := 1 to ugd_code.RowCount - 1 do
      begin
         ugd_code.Cells[0,i]:= SPRsltClass.sRsltCode[i-1];
         ugd_code.Cells[1,i]:= SPRsltClass.sRsltText[i-1];
      end;
      SPRsltClass.Free;
      ed_code.SetFocus;
   end;
end;

procedure Tccsf03s1.bbt_exitClick(Sender: TObject);
begin
   btn_name := 'bbt_exit';
   Close;
end;

procedure Tccsf03s1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure Tccsf03s1.bbt_choiceClick(Sender: TObject);
var
   i, j, cnt : Integer;
begin
   btn_name := 'bbt_choice';
   cnt := ugd_code.Selection.BottomRight.Y - ugd_code.Selection.TopLeft.Y + 1;
   if FormName = 'SPC201S1' then
   begin
      spc201s1.RsltCode := ugd_code.Cells[0, ugd_code.Row];
      spc201s1.RsltName := ugd_code.Cells[1, ugd_code.Row];
   end
   else if FormName = 'SPD411S1' then
   begin
      if spd411s1.ed_snomcode.Text = '' then
         spd411s1.ed_snomcode.Text := ugd_code.Cells[0, ugd_code.Row]
      else if spd411s1.ed_snomcode2.Text = '' then
         spd411s1.ed_snomcode2.Text := ugd_code.Cells[0, ugd_code.Row]
      else if spd411s1.ed_snomcode3.Text = '' then
         spd411s1.ed_snomcode3.Text := ugd_code.Cells[0, ugd_code.Row];
   end;
   Close;
end;

procedure Tccsf03s1.ugd_codeDblClick(Sender: TObject);
var
   i, j, cnt : Integer;
begin
   btn_name := 'bbt_choice';
   cnt := 1;
   if FormName = 'SPC201S1' then
   begin
      spc201s1.RsltCode := ugd_code.Cells[0, ugd_code.Row];
      spc201s1.RsltName := ugd_code.Cells[1, ugd_code.Row];
   end
   else if FormName = 'SPD411S1' then
   begin
      if ugd_code.Cells[0, ugd_code.Row] <> '' then
      begin
         if spd411s1.rg_condition.ItemIndex = 0 then
         begin
            if spd411s1.ed_snomcode.Text = '' then
               spd411s1.ed_snomcode.Text := ugd_code.Cells[0, ugd_code.Row]
            else if spd411s1.ed_snomcode2.Text = '' then
               spd411s1.ed_snomcode2.Text := ugd_code.Cells[0, ugd_code.Row]
            else if spd411s1.ed_snomcode3.Text = '' then
               spd411s1.ed_snomcode3.Text := ugd_code.Cells[0, ugd_code.Row];
         end
         else if spd411s1.rg_condition.ItemIndex = 1 then
         begin
            if spd411s1.ed_snomcode.Text = '' then
               spd411s1.ed_snomcode.Text := ugd_code.Cells[0, ugd_code.Row]
            else if spd411s1.ed_snomcode2.Text = '' then
               spd411s1.ed_snomcode2.Text := ugd_code.Cells[0, ugd_code.Row];
         end;
      end;
   end;
   Close;
end;

procedure Tccsf03s1.rg_conditionClick(Sender: TObject);
begin
   if rg_condition.ItemIndex = 0 then
      ed_code.MaxLength := 10
   else
      ed_code.MaxLength := 30;
end;

procedure Tccsf03s1.ed_codeChange(Sender: TObject);
begin
   if rg_condition.ItemIndex = 0 then
      ed_code.MaxLength := 10
   else
      ed_code.MaxLength := 30;
end;

procedure Tccsf03s1.ed_codeKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      bbt_search.OnClick(Sender);
end;

procedure Tccsf03s1.FormCreate(Sender: TObject);
begin
   btn_name := 'bbt_exit';
end;

procedure Tccsf03s1.ugd_codeKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      bbt_choice.SetFocus;
end;

end.
