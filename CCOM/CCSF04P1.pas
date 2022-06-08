unit CCSF04P1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids;

type
  TCCSF04S1 = class(TForm)
    StringGrid1: TStringGrid;
    Bevel3: TBevel;
    Panel1: TPanel;
    Panel2: TPanel;
    btnJG: TSpeedButton;
    btnDH: TSpeedButton;
    btnLC: TSpeedButton;
    btnJP: TSpeedButton;
    btnDW: TSpeedButton;
    btnHJ: TSpeedButton;
    BitBtn2: TBitBtn;
    btnGT: TSpeedButton;
    bbt_exit: TBitBtn;
    Edit1: TEdit;
    procedure StringGrid1SelectCell(Sender: TObject; Col, Row: Integer;
      var CanSelect: Boolean);
    procedure btnJGClick(Sender: TObject);
    procedure btnDHClick(Sender: TObject);
    procedure btnLCClick(Sender: TObject);
    procedure btnDWClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnJPClick(Sender: TObject);
    procedure btnGTClick(Sender: TObject);
    procedure btnHJClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure bbt_exitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    procedure MakeChar(fi,fl,si,sl : Integer);
    procedure ClearGrid;
    procedure ShowGrid;
  end;

var
  CCSF04S1: TCCSF04S1;
  s : TStringList;

implementation

uses Sp_Main;

{$R *.DFM}

procedure TCCSF04S1.StringGrid1SelectCell(Sender: TObject; Col, Row: Integer;
  var CanSelect: Boolean);
Var a,b : Char;
begin
     Edit1.Text := StringGrid1.Cells[Col,Row];
     if Edit1.Text <> '' then
     begin
        a := Edit1.Text[1];
        b := Edit1.Text[2];
     end
     else
     begin
        a := Char(0);
        b := Char(0);
     end;
end;

procedure TCCSF04S1.ClearGrid;
Var
   i,j : Integer;
begin
     s.Clear;

     for i:=0 to StringGrid1.ColCount - 1 do
         for j:=0 to StringGrid1.RowCount - 1 do
             StringGrid1.Cells[i,j] := '';
end;

procedure TCCSF04S1.ShowGrid;
Var
   i, j, a : Integer;
begin
     StringGrid1.RowCount := (s.Count div 14) + 1;
     a := 0;

     for i:=1 to (s.Count div 14) do begin
        for j:=1 to 14 do begin
           StringGrid1.Cells[j-1,i-1] := s.Strings[a];
           inc(a);
        end;
     end;

     for i:=1 to (s.Count - ((s.Count div 14) * 14)) do
        StringGrid1.Cells[i-1,s.Count div 14] := s.Strings[a + i - 1];
end;

procedure TCCSF04S1.MakeChar(fi,fl,si,sl : Integer);
Var
   i,j : Integer;
begin
   for i:=fi to fl do
      for j:=si to sl do
         s.Add(Char(i) + Char(j));
end;

procedure TCCSF04S1.FormCreate(Sender: TObject);
begin
     s := TStringList.Create;
     btnJGClick(Sender);
end;

procedure TCCSF04S1.btnJGClick(Sender: TObject);
begin
     ClearGrid;
     MakeChar(163,163,161,254);
     ShowGrid;
end;

procedure TCCSF04S1.btnDHClick(Sender: TObject);
begin
     ClearGrid;
     MakeChar(161,162,161,229);
     ShowGrid;
end;

procedure TCCSF04S1.btnLCClick(Sender: TObject);
begin
     ClearGrid;
     MakeChar(166,166,161,228);
     MakeChar(168,169,177,254);
     ShowGrid;
end;

procedure TCCSF04S1.btnDWClick(Sender: TObject);
begin
     ClearGrid;
     MakeChar(167,167,161,239);
     MakeChar(165,165,161,170);
     MakeChar(165,165,176,185);
     ShowGrid;
end;

procedure TCCSF04S1.btnJPClick(Sender: TObject);
begin
     ClearGrid;
     MakeChar(170,170,161,245);
     MakeChar(171,171,161,246);
     ShowGrid;
end;

procedure TCCSF04S1.btnGTClick(Sender: TObject);
begin
     ClearGrid;
     MakeChar(165,165,193,216);
     MakeChar(165,165,225,248);
     MakeChar(168,168,161,175);
     MakeChar(169,169,161,176);
     MakeChar(172,172,161,193);
     MakeChar(172,172,209,241);
     ShowGrid;
end;

procedure TCCSF04S1.btnHJClick(Sender: TObject);
begin
     ClearGrid;
     MakeChar(202,253,161,254);
     ShowGrid;
end;

procedure TCCSF04S1.BitBtn2Click(Sender: TObject);
begin
   SPMAINF1.ed_spcchar.Text := Edit1.Text;
   Close;
end;

procedure TCCSF04S1.bbt_exitClick(Sender: TObject);
begin
   Close;
end;

procedure TCCSF04S1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TCCSF04S1.FormDestroy(Sender: TObject);
begin
   ccsf04s1 := nil;
end;

end.
