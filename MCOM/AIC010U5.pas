unit AIC010U5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
   //(변경. 2002.12.10 이용언) 검사결과 조회 DLL로 변경.
 TShowResult = procedure (sPatNo,  sPatName,  sSex, sBirtDate,
                       sUserId, sDeptCd,   sLocate,
                       sSelmm,  sResltopt, sSetFont : String);stdcall;
                       
  TAIC010F5 = class(TForm)
    Panel54: TPanel;
    bbt_confirm: TBitBtn;
    bbt_close: TBitBtn;
    Panel1: TPanel;
    ImageUR1: TImage;
    ImageUL1: TImage;
    ImageUL2: TImage;
    ImageUR2: TImage;
    ImageUR3: TImage;
    ImageUL3: TImage;
    ImageUR4: TImage;
    ImageUL4: TImage;
    ImageUL5: TImage;
    ImageUR6: TImage;
    ImageUL6: TImage;
    ImageUR7: TImage;
    ImageUL7: TImage;
    ImageUR8: TImage;
    ImageUL8: TImage;
    ImageURA: TImage;
    ImageULA: TImage;
    ImageURB: TImage;
    ImageULB: TImage;
    ImageURC: TImage;
    ImageULC: TImage;
    ImageURD: TImage;
    ImageULD: TImage;
    ImageURE: TImage;
    ImageULE: TImage;
    ImageDRA: TImage;
    ImageDLA: TImage;
    ImageDRB: TImage;
    ImageDLB: TImage;
    ImageDRC: TImage;
    ImageDLC: TImage;
    ImageDRD: TImage;
    ImageDLD: TImage;
    ImageDRE: TImage;
    ImageDLE: TImage;
    ImageDR1: TImage;
    ImageDL1: TImage;
    ImageDR2: TImage;
    ImageDR3: TImage;
    ImageDL2: TImage;
    ImageDL3: TImage;
    ImageDR4: TImage;
    ImageDL4: TImage;
    ImageDR5: TImage;
    ImageDL5: TImage;
    ImageDR6: TImage;
    ImageDL6: TImage;
    ImageDR7: TImage;
    ImageDL7: TImage;
    ImageDR8: TImage;
    ImageDL8: TImage;
    ImageUX1: TImage;
    ImageUX2: TImage;
    ImageUX3: TImage;
    ImageUX4: TImage;
    ImageUX5: TImage;
    ImageUX6: TImage;
    ImageUX7: TImage;
    ImageUX8: TImage;
    ImageUXA: TImage;
    ImageUXB: TImage;
    ImageUXC: TImage;
    ImageUXD: TImage;
    ImageUXE: TImage;
    ImageDX1: TImage;
    ImageDX2: TImage;
    ImageDX3: TImage;
    ImageDX4: TImage;
    ImageDX5: TImage;
    ImageDX6: TImage;
    ImageDX7: TImage;
    ImageDX8: TImage;
    ImageDXA: TImage;
    ImageDXB: TImage;
    ImageDXC: TImage;
    ImageDXD: TImage;
    ImageDXE: TImage;
    ImageUO8: TImage;
    ImageUO7: TImage;
    ImageUO6: TImage;
    ImageUO5: TImage;
    ImageUO4: TImage;
    ImageUO3: TImage;
    ImageUO2: TImage;
    ImageUO1: TImage;
    ImageUOE: TImage;
    ImageUOD: TImage;
    ImageUOC: TImage;
    ImageUOB: TImage;
    ImageUOA: TImage;
    ImageDO8: TImage;
    ImageDO7: TImage;
    ImageDO6: TImage;
    ImageDO5: TImage;
    ImageDO4: TImage;
    ImageDO3: TImage;
    ImageDO2: TImage;
    ImageDO1: TImage;
    ImageDOE: TImage;
    ImageDOD: TImage;
    ImageDOC: TImage;
    ImageDOB: TImage;
    ImageDOA: TImage;
    ImageUR5: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditUR8: TEdit;
    EditUR7: TEdit;
    EditUR6: TEdit;
    EditUR5: TEdit;
    EditUR4: TEdit;
    EditUR3: TEdit;
    EditUR2: TEdit;
    EditUR1: TEdit;
    EditUL1: TEdit;
    EditUL2: TEdit;
    EditUL3: TEdit;
    EditUL4: TEdit;
    EditUL5: TEdit;
    EditUL6: TEdit;
    EditUL7: TEdit;
    EditUL8: TEdit;
    EditURE: TEdit;
    EditURD: TEdit;
    EditURC: TEdit;
    EditURB: TEdit;
    EditURA: TEdit;
    EditULA: TEdit;
    EditULB: TEdit;
    EditULC: TEdit;
    EditULD: TEdit;
    EditULE: TEdit;
    EditDR8: TEdit;
    EditDR7: TEdit;
    EditDR6: TEdit;
    EditDR5: TEdit;
    EditDRE: TEdit;
    EditDRD: TEdit;
    EditDR4: TEdit;
    EditDR3: TEdit;
    EditDRC: TEdit;
    EditDRB: TEdit;
    EditDR2: TEdit;
    EditDR1: TEdit;
    EditDRA: TEdit;
    EditDLA: TEdit;
    EditDL1: TEdit;
    EditDL2: TEdit;
    EditDLB: TEdit;
    EditDLC: TEdit;
    EditDL3: TEdit;
    EditDL4: TEdit;
    EditDLD: TEdit;
    EditDLE: TEdit;
    EditDL5: TEdit;
    EditDL6: TEdit;
    EditDL7: TEdit;
    EditDL8: TEdit;
    EditChild: TEdit;
    sbt_teeall: TSpeedButton;
    sbt_teeaall: TSpeedButton;
    sbt_teeur: TSpeedButton;
    sbt_ateeur: TSpeedButton;
    sbt_teeuc: TSpeedButton;
    sbt_ateeuc: TSpeedButton;
    sbt_teeul: TSpeedButton;
    sbt_ateeul: TSpeedButton;
    sbt_teedr: TSpeedButton;
    sbt_ateedr: TSpeedButton;
    sbt_teedc: TSpeedButton;
    sbt_ateedc: TSpeedButton;
    sbt_teedl: TSpeedButton;
    sbt_ateedl: TSpeedButton;
    function GetTeeth(var teeuprt : String; var teeuplt : String; var teedwrt : String; var teedwlt : String; chgtag : Boolean) : Boolean;
    procedure SetData;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SetImage(in_name, in_text : String);
    procedure SetText(in_name, in_text : String);
    procedure EditUR8Change(Sender: TObject);
    procedure EditUR7Change(Sender: TObject);
    procedure EditUR6Change(Sender: TObject);
    procedure EditUR5Change(Sender: TObject);
    procedure EditUR4Change(Sender: TObject);
    procedure EditUR3Change(Sender: TObject);
    procedure EditUR2Change(Sender: TObject);
    procedure EditUR1Change(Sender: TObject);
    procedure EditUL1Change(Sender: TObject);
    procedure EditUL2Change(Sender: TObject);
    procedure EditUL3Change(Sender: TObject);
    procedure EditUL4Change(Sender: TObject);
    procedure EditUL5Change(Sender: TObject);
    procedure EditUL6Change(Sender: TObject);
    procedure EditUL7Change(Sender: TObject);
    procedure EditUL8Change(Sender: TObject);
    procedure EditULEChange(Sender: TObject);
    procedure EditULDChange(Sender: TObject);
    procedure EditULCChange(Sender: TObject);
    procedure EditULBChange(Sender: TObject);
    procedure EditULAChange(Sender: TObject);
    procedure EditURAChange(Sender: TObject);
    procedure EditURBChange(Sender: TObject);
    procedure EditURCChange(Sender: TObject);
    procedure EditURDChange(Sender: TObject);
    procedure EditUREChange(Sender: TObject);
    procedure EditDREChange(Sender: TObject);
    procedure EditDRDChange(Sender: TObject);
    procedure EditDRCChange(Sender: TObject);
    procedure EditDRBChange(Sender: TObject);
    procedure EditDRAChange(Sender: TObject);
    procedure EditDLAChange(Sender: TObject);
    procedure EditDLBChange(Sender: TObject);
    procedure EditDLCChange(Sender: TObject);
    procedure EditDLDChange(Sender: TObject);
    procedure EditDLEChange(Sender: TObject);
    procedure EditDL8Change(Sender: TObject);
    procedure EditDL7Change(Sender: TObject);
    procedure EditDL6Change(Sender: TObject);
    procedure EditDL5Change(Sender: TObject);
    procedure EditDL4Change(Sender: TObject);
    procedure EditDL3Change(Sender: TObject);
    procedure EditDL2Change(Sender: TObject);
    procedure EditDL1Change(Sender: TObject);
    procedure EditDR1Change(Sender: TObject);
    procedure EditDR2Change(Sender: TObject);
    procedure EditDR3Change(Sender: TObject);
    procedure EditDR4Change(Sender: TObject);
    procedure EditDR5Change(Sender: TObject);
    procedure EditDR6Change(Sender: TObject);
    procedure EditDR7Change(Sender: TObject);
    procedure EditDR8Change(Sender: TObject);
    procedure ImageUR8Click(Sender: TObject);
    procedure ImageUR7Click(Sender: TObject);
    procedure ImageUR6Click(Sender: TObject);
    procedure ImageUR5Click(Sender: TObject);
    procedure ImageUR4Click(Sender: TObject);
    procedure ImageUR3Click(Sender: TObject);
    procedure ImageUR2Click(Sender: TObject);
    procedure ImageUR1Click(Sender: TObject);
    procedure ImageURAClick(Sender: TObject);
    procedure ImageURBClick(Sender: TObject);
    procedure ImageURCClick(Sender: TObject);
    procedure ImageURDClick(Sender: TObject);
    procedure ImageUREClick(Sender: TObject);
    procedure ImageUL1Click(Sender: TObject);
    procedure ImageUL2Click(Sender: TObject);
    procedure ImageUL3Click(Sender: TObject);
    procedure ImageUL4Click(Sender: TObject);
    procedure ImageUL5Click(Sender: TObject);
    procedure ImageUL6Click(Sender: TObject);
    procedure ImageUL7Click(Sender: TObject);
    procedure ImageUL8Click(Sender: TObject);
    procedure ImageULEClick(Sender: TObject);
    procedure ImageULDClick(Sender: TObject);
    procedure ImageULCClick(Sender: TObject);
    procedure ImageULBClick(Sender: TObject);
    procedure ImageULAClick(Sender: TObject);
    procedure ImageDLAClick(Sender: TObject);
    procedure ImageDLBClick(Sender: TObject);
    procedure ImageDLCClick(Sender: TObject);
    procedure ImageDLDClick(Sender: TObject);
    procedure ImageDLEClick(Sender: TObject);
    procedure ImageDL8Click(Sender: TObject);
    procedure ImageDL7Click(Sender: TObject);
    procedure ImageDL6Click(Sender: TObject);
    procedure ImageDL5Click(Sender: TObject);
    procedure ImageDL4Click(Sender: TObject);
    procedure ImageDL3Click(Sender: TObject);
    procedure ImageDL2Click(Sender: TObject);
    procedure ImageDL1Click(Sender: TObject);
    procedure ImageDR1Click(Sender: TObject);
    procedure ImageDR2Click(Sender: TObject);
    procedure ImageDR3Click(Sender: TObject);
    procedure ImageDR4Click(Sender: TObject);
    procedure ImageDR5Click(Sender: TObject);
    procedure ImageDR6Click(Sender: TObject);
    procedure ImageDR7Click(Sender: TObject);
    procedure ImageDR8Click(Sender: TObject);
    procedure ImageDREClick(Sender: TObject);
    procedure ImageDRDClick(Sender: TObject);
    procedure ImageDRCClick(Sender: TObject);
    procedure ImageDRBClick(Sender: TObject);
    procedure ImageDRAClick(Sender: TObject);
    procedure bbt_closeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbt_teeallClick(Sender: TObject);
    procedure sbt_teeaallClick(Sender: TObject);
    procedure bbt_confirmClick(Sender: TObject);
    procedure sbt_teeurClick(Sender: TObject);
    procedure sbt_teeucClick(Sender: TObject);
    procedure sbt_teeulClick(Sender: TObject);
    procedure sbt_teedrClick(Sender: TObject);
    procedure sbt_teedcClick(Sender: TObject);
    procedure sbt_teedlClick(Sender: TObject);
    procedure sbt_ateeurClick(Sender: TObject);
    procedure sbt_ateeucClick(Sender: TObject);
    procedure sbt_ateeulClick(Sender: TObject);
    procedure sbt_ateedrClick(Sender: TObject);
    procedure sbt_ateedcClick(Sender: TObject);
    procedure sbt_ateedlClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AIC010F5: TAIC010F5;
  gs_teetag  : String;
  gs_teeuprt : String;
  gs_teeuplt : String;
  gs_teedwrt : String;
  gs_teedwlt : String;

implementation
uses
   CComFunc, VarCom, MsgCom;
{$R *.DFM}

function  TAIC010F5.GetTeeth(var teeuprt : String; var teeuplt : String; var teedwrt : String; var teedwlt : String; chgtag : Boolean) : Boolean;
begin
   result := False;

   gs_teetag  := 'N';

   if ( teeuprt = '' ) then
   begin
      gs_teeuprt := '        ';
   end
   else
   begin
      gs_teeuprt := teeuprt;
   end;

   if ( teeuplt = '' ) then
   begin
      gs_teeuplt := '        ';
   end
   else
   begin
      gs_teeuplt := teeuplt;
   end;

   if ( teedwrt = '' ) then
   begin
      gs_teedwrt := '        ';
   end
   else
   begin
      gs_teedwrt := teedwrt;
   end;

   if ( teedwlt = '' ) then
   begin
      gs_teedwlt := '        ';
   end
   else
   begin
      gs_teedwlt := teedwlt;
   end;

   SetData;

   AIC010F5.ShowModal;
   if ( chgtag ) then
   begin
      if ( gs_teetag = 'Y' ) then
      begin
         if ( teeuprt = gs_teeuprt ) and
            ( teeuplt = gs_teeuplt ) and
            ( teedwrt = gs_teedwrt ) and
            ( teedwlt = gs_teedwlt ) then
         begin
            result := False;
         end
         else
         begin
            result  := True;
            teeuprt := gs_teeuprt;
            teeuplt := gs_teeuplt;
            teedwrt := gs_teedwrt;
            teedwlt := gs_teedwlt;
         end;
      end;
   end;
   AIC010F5.Free;
   AIC010F5 := nil;
end;

procedure TAIC010F5.SetData;
var
   i         : Integer;
   temp_name : String;
begin
   for i := 1 to 8 do
   begin
      temp_name := Copy(gs_teeuprt,9 - i,1);
      if ( temp_name <> ' ' ) then
      begin
         TEdit(AIC010F5.FindComponent('EditUR'+temp_name)).Text := temp_name;
      end
      else
      begin
         TEdit(AIC010F5.FindComponent('EditUR'+inttostr(i))).Text := temp_name;
      end;

      temp_name := Copy(gs_teeuplt,i,1);
      if ( temp_name <> ' ' ) then
      begin
         TEdit(AIC010F5.FindComponent('EditUL'+temp_name)).Text := temp_name;
      end
      else
      begin
         TEdit(AIC010F5.FindComponent('EditUL'+inttostr(i))).Text := temp_name;
      end;

      temp_name := Copy(gs_teedwrt,9 - i,1);
      if ( temp_name <> ' ' ) then
      begin
         TEdit(AIC010F5.FindComponent('EditDR'+temp_name)).Text := temp_name;
      end
      else
      begin
         TEdit(AIC010F5.FindComponent('EditDR'+inttostr(i))).Text := temp_name;
      end;

      temp_name := Copy(gs_teedwlt,i,1);
      if ( temp_name <> ' ' ) then
      begin
         TEdit(AIC010F5.FindComponent('EditDL'+temp_name)).Text := temp_name;
      end
      else
      begin
         TEdit(AIC010F5.FindComponent('EditDL'+inttostr(i))).Text := temp_name;
      end;
   end;

   for i := 8 downto 1 do
   begin
   end;
end;

procedure TAIC010F5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   AIC010F5.Visible := False;
end;

procedure TAIC010F5.SetImage(in_name, in_text : String);
var
   temp_image : TImage;
begin
   if ( in_text = '' ) then exit;

   temp_image := TImage(AIC010F5.FindComponent('Image'+in_name));

   if ( in_text = ' ' ) then
   begin
      temp_image.Picture := TImage(AIC010F5.FindComponent('Image'+Copy(in_name,1,1)+'O'+temp_image.Hint)).Picture;
   end
   else if ( in_text = temp_image.Hint ) then
   begin
      temp_image.Picture := TImage(AIC010F5.FindComponent('Image'+Copy(in_name,1,1)+'X'+temp_image.Hint)).Picture;
   end;
end;

procedure TAIC010F5.SetText(in_name, in_text : String);
var
   temp_edit1 : TEdit;
   temp_name  : String;
   temp_edit2 : TEdit;
begin
   if ( Copy(in_name,3,1) = '1' ) then
   begin
      temp_name := Copy(in_name,1,2) + 'A';
   end
   else if ( Copy(in_name,3,1) = '2' ) then
   begin
      temp_name := Copy(in_name,1,2) + 'B';
   end
   else if ( Copy(in_name,3,1) = '3' ) then
   begin
      temp_name := Copy(in_name,1,2) + 'C';
   end
   else if ( Copy(in_name,3,1) = '4' ) then
   begin
      temp_name := Copy(in_name,1,2) + 'D';
   end
   else if ( Copy(in_name,3,1) = '5' ) then
   begin
      temp_name := Copy(in_name,1,2) + 'E';
   end
   else if ( Copy(in_name,3,1) = 'A' ) then
   begin
      temp_name := Copy(in_name,1,2) + '1';
   end
   else if ( Copy(in_name,3,1) = 'B' ) then
   begin
      temp_name := Copy(in_name,1,2) + '2';
   end
   else if ( Copy(in_name,3,1) = 'C' ) then
   begin
      temp_name := Copy(in_name,1,2) + '3';
   end
   else if ( Copy(in_name,3,1) = 'D' ) then
   begin
      temp_name := Copy(in_name,1,2) + '4';
   end
   else if ( Copy(in_name,3,1) = 'E' ) then
   begin
      temp_name := Copy(in_name,1,2) + '5';
   end;

   temp_edit1 := TEdit(AIC010F5.FindComponent('Edit'+in_name));
   temp_edit2 := TEdit(AIC010F5.FindComponent('Edit'+temp_name));

   if ( temp_edit1.Text = ' ' ) then
   begin
      temp_edit1.Text := in_text;
      temp_edit2.Text := ' ';
   end
   else
   begin
      temp_edit1.Text := ' ';
   end;
end;

procedure TAIC010F5.EditUR8Change(Sender: TObject);
begin
   SetImage('UR8',EditUR8.Text);
end;

procedure TAIC010F5.EditUR7Change(Sender: TObject);
begin
   SetImage('UR7',EditUR7.Text);
end;

procedure TAIC010F5.EditUR6Change(Sender: TObject);
begin
   SetImage('UR6',EditUR6.Text);
end;

procedure TAIC010F5.EditUR5Change(Sender: TObject);
begin
   SetImage('UR5',EditUR5.Text);
end;

procedure TAIC010F5.EditUR4Change(Sender: TObject);
begin
   SetImage('UR4',EditUR4.Text);
end;

procedure TAIC010F5.EditUR3Change(Sender: TObject);
begin
   SetImage('UR3',EditUR3.Text);
end;

procedure TAIC010F5.EditUR2Change(Sender: TObject);
begin
   SetImage('UR2',EditUR2.Text);
end;

procedure TAIC010F5.EditUR1Change(Sender: TObject);
begin
   SetImage('UR1',EditUR1.Text);
end;

procedure TAIC010F5.EditUL1Change(Sender: TObject);
begin
   SetImage('UL1',EditUL1.Text);
end;

procedure TAIC010F5.EditUL2Change(Sender: TObject);
begin
   SetImage('UL2',EditUL2.Text);
end;

procedure TAIC010F5.EditUL3Change(Sender: TObject);
begin
   SetImage('UL3',EditUL3.Text);
end;

procedure TAIC010F5.EditUL4Change(Sender: TObject);
begin
   SetImage('UL4',EditUL4.Text);
end;

procedure TAIC010F5.EditUL5Change(Sender: TObject);
begin
   SetImage('UL5',EditUL5.Text);
end;

procedure TAIC010F5.EditUL6Change(Sender: TObject);
begin
   SetImage('UL6',EditUL6.Text);
end;

procedure TAIC010F5.EditUL7Change(Sender: TObject);
begin
   SetImage('UL7',EditUL7.Text);
end;

procedure TAIC010F5.EditUL8Change(Sender: TObject);
begin
   SetImage('UL8',EditUL8.Text);
end;

procedure TAIC010F5.EditULEChange(Sender: TObject);
begin
   SetImage('ULE',EditULE.Text);
end;

procedure TAIC010F5.EditULDChange(Sender: TObject);
begin
   SetImage('ULD',EditULD.Text);
end;

procedure TAIC010F5.EditULCChange(Sender: TObject);
begin
   SetImage('ULC',EditULC.Text);
end;

procedure TAIC010F5.EditULBChange(Sender: TObject);
begin
   SetImage('ULB',EditULB.Text);
end;

procedure TAIC010F5.EditULAChange(Sender: TObject);
begin
   SetImage('ULA',EditULA.Text);
end;

procedure TAIC010F5.EditURAChange(Sender: TObject);
begin
   SetImage('URA',EditURA.Text);
end;

procedure TAIC010F5.EditURBChange(Sender: TObject);
begin
   SetImage('URB',EditURB.Text);
end;

procedure TAIC010F5.EditURCChange(Sender: TObject);
begin
   SetImage('URC',EditURC.Text);
end;

procedure TAIC010F5.EditURDChange(Sender: TObject);
begin
   SetImage('URD',EditURD.Text);
end;

procedure TAIC010F5.EditUREChange(Sender: TObject);
begin
   SetImage('URE',EditURE.Text);
end;

procedure TAIC010F5.EditDREChange(Sender: TObject);
begin
   SetImage('DRE',EditDRE.Text);
end;

procedure TAIC010F5.EditDRDChange(Sender: TObject);
begin
   SetImage('DRD',EditDRD.Text);
end;

procedure TAIC010F5.EditDRCChange(Sender: TObject);
begin
   SetImage('DRC',EditDRC.Text);
end;

procedure TAIC010F5.EditDRBChange(Sender: TObject);
begin
   SetImage('DRB',EditDRB.Text);
end;

procedure TAIC010F5.EditDRAChange(Sender: TObject);
begin
   SetImage('DRA',EditDRA.Text);
end;

procedure TAIC010F5.EditDLAChange(Sender: TObject);
begin
   SetImage('DLA',EditDLA.Text);
end;

procedure TAIC010F5.EditDLBChange(Sender: TObject);
begin
   SetImage('DLB',EditDLB.Text);
end;

procedure TAIC010F5.EditDLCChange(Sender: TObject);
begin
   SetImage('DLC',EditDLC.Text);
end;

procedure TAIC010F5.EditDLDChange(Sender: TObject);
begin
   SetImage('DLD',EditDLD.Text);
end;

procedure TAIC010F5.EditDLEChange(Sender: TObject);
begin
   SetImage('DLE',EditDLE.Text);
end;

procedure TAIC010F5.EditDL8Change(Sender: TObject);
begin
   SetImage('DL8',EditDL8.Text);
end;

procedure TAIC010F5.EditDL7Change(Sender: TObject);
begin
   SetImage('DL7',EditDL7.Text);
end;

procedure TAIC010F5.EditDL6Change(Sender: TObject);
begin
   SetImage('DL6',EditDL6.Text);
end;

procedure TAIC010F5.EditDL5Change(Sender: TObject);
begin
   SetImage('DL5',EditDL5.Text);
end;

procedure TAIC010F5.EditDL4Change(Sender: TObject);
begin
   SetImage('DL4',EditDL4.Text);
end;

procedure TAIC010F5.EditDL3Change(Sender: TObject);
begin
   SetImage('DL3',EditDL3.Text);
end;

procedure TAIC010F5.EditDL2Change(Sender: TObject);
begin
   SetImage('DL2',EditDL2.Text);
end;

procedure TAIC010F5.EditDL1Change(Sender: TObject);
begin
   SetImage('DL1',EditDL1.Text);
end;

procedure TAIC010F5.EditDR1Change(Sender: TObject);
begin
   SetImage('DR1',EditDR1.Text);
end;

procedure TAIC010F5.EditDR2Change(Sender: TObject);
begin
   SetImage('DR2',EditDR2.Text);
end;

procedure TAIC010F5.EditDR3Change(Sender: TObject);
begin
   SetImage('DR3',EditDR3.Text);
end;

procedure TAIC010F5.EditDR4Change(Sender: TObject);
begin
   SetImage('DR4',EditDR4.Text);
end;

procedure TAIC010F5.EditDR5Change(Sender: TObject);
begin
   SetImage('DR5',EditDR5.Text);
end;

procedure TAIC010F5.EditDR6Change(Sender: TObject);
begin
   SetImage('DR6',EditDR6.Text);
end;

procedure TAIC010F5.EditDR7Change(Sender: TObject);
begin
   SetImage('DR7',EditDR7.Text);
end;

procedure TAIC010F5.EditDR8Change(Sender: TObject);
begin
   SetImage('DR8',EditDR8.Text);
end;

procedure TAIC010F5.ImageUR8Click(Sender: TObject);
begin
   SetText('UR8',ImageUR8.Hint);
end;

procedure TAIC010F5.ImageUR7Click(Sender: TObject);
begin
   SetText('UR7',ImageUR7.Hint);
end;

procedure TAIC010F5.ImageUR6Click(Sender: TObject);
begin
   SetText('UR6',ImageUR6.Hint);
end;

procedure TAIC010F5.ImageUR5Click(Sender: TObject);
begin
   SetText('UR5',ImageUR5.Hint);
end;

procedure TAIC010F5.ImageUR4Click(Sender: TObject);
begin
   SetText('UR4',ImageUR4.Hint);
end;

procedure TAIC010F5.ImageUR3Click(Sender: TObject);
begin
   SetText('UR3',ImageUR3.Hint);
end;

procedure TAIC010F5.ImageUR2Click(Sender: TObject);
begin
   SetText('UR2',ImageUR2.Hint);
end;

procedure TAIC010F5.ImageUR1Click(Sender: TObject);
begin
   SetText('UR1',ImageUR1.Hint);
end;

procedure TAIC010F5.ImageURAClick(Sender: TObject);
begin
   SetText('URA',ImageURA.Hint);
end;

procedure TAIC010F5.ImageURBClick(Sender: TObject);
begin
   SetText('URB',ImageURB.Hint);
end;

procedure TAIC010F5.ImageURCClick(Sender: TObject);
begin
   SetText('URC',ImageURC.Hint);
end;

procedure TAIC010F5.ImageURDClick(Sender: TObject);
begin
   SetText('URD',ImageURD.Hint);
end;

procedure TAIC010F5.ImageUREClick(Sender: TObject);
begin
   SetText('URE',ImageURE.Hint);
end;

procedure TAIC010F5.ImageUL1Click(Sender: TObject);
begin
   SetText('UL1',ImageUL1.Hint);
end;

procedure TAIC010F5.ImageUL2Click(Sender: TObject);
begin
   SetText('UL2',ImageUL2.Hint);
end;

procedure TAIC010F5.ImageUL3Click(Sender: TObject);
begin
   SetText('UL3',ImageUL3.Hint);
end;

procedure TAIC010F5.ImageUL4Click(Sender: TObject);
begin
   SetText('UL4',ImageUL4.Hint);
end;

procedure TAIC010F5.ImageUL5Click(Sender: TObject);
begin
   SetText('UL5',ImageUL5.Hint);
end;

procedure TAIC010F5.ImageUL6Click(Sender: TObject);
begin
   SetText('UL6',ImageUL6.Hint);
end;

procedure TAIC010F5.ImageUL7Click(Sender: TObject);
begin
   SetText('UL7',ImageUL7.Hint);
end;

procedure TAIC010F5.ImageUL8Click(Sender: TObject);
begin
   SetText('UL8',ImageUL8.Hint);
end;

procedure TAIC010F5.ImageULEClick(Sender: TObject);
begin
   SetText('ULE',ImageULE.Hint);
end;

procedure TAIC010F5.ImageULDClick(Sender: TObject);
begin
   SetText('ULD',ImageULD.Hint);
end;

procedure TAIC010F5.ImageULCClick(Sender: TObject);
begin
   SetText('ULC',ImageULC.Hint);
end;

procedure TAIC010F5.ImageULBClick(Sender: TObject);
begin
   SetText('ULB',ImageULB.Hint);
end;

procedure TAIC010F5.ImageULAClick(Sender: TObject);
begin
   SetText('ULA',ImageULA.Hint);
end;

procedure TAIC010F5.ImageDLAClick(Sender: TObject);
begin
   SetText('DLA',ImageDLA.Hint);
end;

procedure TAIC010F5.ImageDLBClick(Sender: TObject);
begin
   SetText('DLB',ImageDLB.Hint);
end;

procedure TAIC010F5.ImageDLCClick(Sender: TObject);
begin
   SetText('DLC',ImageDLC.Hint);
end;

procedure TAIC010F5.ImageDLDClick(Sender: TObject);
begin
   SetText('DLD',ImageDLD.Hint);
end;

procedure TAIC010F5.ImageDLEClick(Sender: TObject);
begin
   SetText('DLE',ImageDLE.Hint);
end;

procedure TAIC010F5.ImageDL8Click(Sender: TObject);
begin
   SetText('DL8',ImageDL8.Hint);
end;

procedure TAIC010F5.ImageDL7Click(Sender: TObject);
begin
   SetText('DL7',ImageDL7.Hint);
end;

procedure TAIC010F5.ImageDL6Click(Sender: TObject);
begin
   SetText('DL6',ImageDL6.Hint);
end;

procedure TAIC010F5.ImageDL5Click(Sender: TObject);
begin
   SetText('DL5',ImageDL5.Hint);
end;

procedure TAIC010F5.ImageDL4Click(Sender: TObject);
begin
   SetText('DL4',ImageDL4.Hint);
end;

procedure TAIC010F5.ImageDL3Click(Sender: TObject);
begin
   SetText('DL3',ImageDL3.Hint);
end;

procedure TAIC010F5.ImageDL2Click(Sender: TObject);
begin
   SetText('DL2',ImageDL2.Hint);
end;

procedure TAIC010F5.ImageDL1Click(Sender: TObject);
begin
   SetText('DL1',ImageDL1.Hint);
end;

procedure TAIC010F5.ImageDR1Click(Sender: TObject);
begin
   SetText('DR1',ImageDR1.Hint);
end;

procedure TAIC010F5.ImageDR2Click(Sender: TObject);
begin
   SetText('DR2',ImageDR2.Hint);
end;

procedure TAIC010F5.ImageDR3Click(Sender: TObject);
begin
   SetText('DR3',ImageDR3.Hint);
end;

procedure TAIC010F5.ImageDR4Click(Sender: TObject);
begin
   SetText('DR4',ImageDR4.Hint);
end;

procedure TAIC010F5.ImageDR5Click(Sender: TObject);
begin
   SetText('DR5',ImageDR5.Hint);
end;

procedure TAIC010F5.ImageDR6Click(Sender: TObject);
begin
   SetText('DR6',ImageDR6.Hint);
end;

procedure TAIC010F5.ImageDR7Click(Sender: TObject);
begin
   SetText('DR7',ImageDR7.Hint);
end;

procedure TAIC010F5.ImageDR8Click(Sender: TObject);
begin
   SetText('DR8',ImageDR8.Hint);
end;

procedure TAIC010F5.ImageDREClick(Sender: TObject);
begin
   SetText('DRE',ImageDRE.Hint);
end;

procedure TAIC010F5.ImageDRDClick(Sender: TObject);
begin
   SetText('DRD',ImageDRD.Hint);
end;

procedure TAIC010F5.ImageDRCClick(Sender: TObject);
begin
   SetText('DRC',ImageDRC.Hint);
end;

procedure TAIC010F5.ImageDRBClick(Sender: TObject);
begin
   SetText('DRB',ImageDRB.Hint);
end;

procedure TAIC010F5.ImageDRAClick(Sender: TObject);
begin
   SetText('DRA',ImageDRA.Hint);
end;

procedure TAIC010F5.bbt_closeClick(Sender: TObject);
begin
   gs_teetag := 'N';
   Close;
end;

procedure TAIC010F5.FormCreate(Sender: TObject);
var
   i          : Integer;
   temp_name  : String;
begin
   for i := 1 to 8 do
   begin
      TEdit(AIC010F5.FindComponent('EditUR'+IntToStr(i))).Text := ' ';
      TEdit(AIC010F5.FindComponent('EditUL'+IntToStr(i))).Text := ' ';
      TEdit(AIC010F5.FindComponent('EditDR'+IntToStr(i))).Text := ' ';
      TEdit(AIC010F5.FindComponent('EditDL'+IntToStr(i))).Text := ' ';
   end;

   for i := 1 to 5 do
   begin
      case i of
         1 : begin
                temp_name := 'A';
             end;
         2 : begin
                temp_name := 'B';
             end;
         3 : begin
                temp_name := 'C';
             end;
         4 : begin
                temp_name := 'D';
             end;
         5 : begin
                temp_name := 'E';
             end;
      end;

      TEdit(AIC010F5.FindComponent('EditUR'+temp_name)).Text := ' ';
      TEdit(AIC010F5.FindComponent('EditUL'+temp_name)).Text := ' ';
      TEdit(AIC010F5.FindComponent('EditDR'+temp_name)).Text := ' ';
      TEdit(AIC010F5.FindComponent('EditDL'+temp_name)).Text := ' ';

   end;
end;

procedure TAIC010F5.sbt_teeallClick(Sender: TObject);
var
   i         : Integer;
   temp_name : String;
begin
   if ( sbt_teeall.Down ) then
   begin
      for i := 1 to 8 do
      begin
         TEdit(AIC010F5.FindComponent('EditUR'+IntToStr(i))).Text := TImage(AIC010F5.FindComponent('ImageUR'+IntToStr(i))).Hint;
         TEdit(AIC010F5.FindComponent('EditUL'+IntToStr(i))).Text := TImage(AIC010F5.FindComponent('ImageUL'+IntToStr(i))).Hint;
         TEdit(AIC010F5.FindComponent('EditDR'+IntToStr(i))).Text := TImage(AIC010F5.FindComponent('ImageDR'+IntToStr(i))).Hint;
         TEdit(AIC010F5.FindComponent('EditDL'+IntToStr(i))).Text := TImage(AIC010F5.FindComponent('ImageDL'+IntToStr(i))).Hint;
      end;
   end
   else
   begin
      for i := 1 to 8 do
      begin
         TEdit(AIC010F5.FindComponent('EditUR'+IntToStr(i))).Text := ' ';
         TEdit(AIC010F5.FindComponent('EditUL'+IntToStr(i))).Text := ' ';
         TEdit(AIC010F5.FindComponent('EditDR'+IntToStr(i))).Text := ' ';
         TEdit(AIC010F5.FindComponent('EditDL'+IntToStr(i))).Text := ' ';
      end;
   end;
   for i := 1 to 5 do
   begin
      case i of
         1 : begin
                temp_name := 'A';
             end;
         2 : begin
                temp_name := 'B';
             end;
         3 : begin
                temp_name := 'C';
             end;
         4 : begin
                temp_name := 'D';
             end;
         5 : begin
                temp_name := 'E';
             end;
      end;

      TEdit(AIC010F5.FindComponent('EditUR'+temp_name)).Text := ' ';
      TEdit(AIC010F5.FindComponent('EditUL'+temp_name)).Text := ' ';
      TEdit(AIC010F5.FindComponent('EditDR'+temp_name)).Text := ' ';
      TEdit(AIC010F5.FindComponent('EditDL'+temp_name)).Text := ' ';
   end;
end;

procedure TAIC010F5.sbt_teeaallClick(Sender: TObject);
var
   i         : Integer;
   temp_name : String;
begin
   if ( sbt_teeaall.Down ) then
   begin
      for i := 1 to 5 do
      begin
         case i of
            1 : begin
                   temp_name := 'A';
                end;
            2 : begin
                   temp_name := 'B';
                end;
            3 : begin
                   temp_name := 'C';
                end;
            4 : begin
                   temp_name := 'D';
                end;
            5 : begin
                   temp_name := 'E';
                end;
         end;

         TEdit(AIC010F5.FindComponent('EditUR'+temp_name)).Text := TImage(AIC010F5.FindComponent('ImageUR'+temp_name)).Hint;
         TEdit(AIC010F5.FindComponent('EditUL'+temp_name)).Text := TImage(AIC010F5.FindComponent('ImageUL'+temp_name)).Hint;
         TEdit(AIC010F5.FindComponent('EditDR'+temp_name)).Text := TImage(AIC010F5.FindComponent('ImageDR'+temp_name)).Hint;
         TEdit(AIC010F5.FindComponent('EditDL'+temp_name)).Text := TImage(AIC010F5.FindComponent('ImageDL'+temp_name)).Hint;
      end;
   end
   else
   begin
      for i := 1 to 5 do
      begin
         case i of
            1 : begin
                   temp_name := 'A';
                end;
            2 : begin
                   temp_name := 'B';
                end;
            3 : begin
                   temp_name := 'C';
                end;
            4 : begin
                   temp_name := 'D';
                end;
            5 : begin
                   temp_name := 'E';
                end;
         end;

         TEdit(AIC010F5.FindComponent('EditUR'+temp_name)).Text := ' ';
         TEdit(AIC010F5.FindComponent('EditUL'+temp_name)).Text := ' ';
         TEdit(AIC010F5.FindComponent('EditDR'+temp_name)).Text := ' ';
         TEdit(AIC010F5.FindComponent('EditDL'+temp_name)).Text := ' ';
      end;
   end;
   for i := 1 to 8 do
   begin
      TEdit(AIC010F5.FindComponent('EditUR'+IntToStr(i))).Text := ' ';
      TEdit(AIC010F5.FindComponent('EditUL'+IntToStr(i))).Text := ' ';
      TEdit(AIC010F5.FindComponent('EditDR'+IntToStr(i))).Text := ' ';
      TEdit(AIC010F5.FindComponent('EditDL'+IntToStr(i))).Text := ' ';
   end;
end;

procedure TAIC010F5.bbt_confirmClick(Sender: TObject);
begin
   gs_teetag  := 'Y';
   gs_teeuprt := EditUR8.Text+EditUR7.Text+EditUR6.Text;
   if ( EditUR5.Text = ' ' ) then
   begin
      gs_teeuprt := gs_teeuprt + EditURE.Text;
   end
   else
   begin
      gs_teeuprt := gs_teeuprt + EditUR5.Text;
   end;
   if ( EditUR4.Text = ' ' ) then
   begin
      gs_teeuprt := gs_teeuprt + EditURD.Text;
   end
   else
   begin
      gs_teeuprt := gs_teeuprt + EditUR4.Text;
   end;
   if ( EditUR3.Text = ' ' ) then
   begin
      gs_teeuprt := gs_teeuprt + EditURC.Text;
   end
   else
   begin
      gs_teeuprt := gs_teeuprt + EditUR3.Text;
   end;
   if ( EditUR2.Text = ' ' ) then
   begin
      gs_teeuprt := gs_teeuprt + EditURB.Text;
   end
   else
   begin
      gs_teeuprt := gs_teeuprt + EditUR2.Text;
   end;
   if ( EditUR1.Text = ' ' ) then
   begin
      gs_teeuprt := gs_teeuprt + EditURA.Text;
   end
   else
   begin
      gs_teeuprt := gs_teeuprt + EditUR1.Text;
   end;

   if ( EditUL1.Text = ' ' ) then
   begin
      gs_teeuplt := EditULA.Text;
   end
   else
   begin
      gs_teeuplt := EditUL1.Text;
   end;
   if ( EditUL2.Text = ' ' ) then
   begin
      gs_teeuplt := gs_teeuplt + EditULB.Text;
   end
   else
   begin
      gs_teeuplt := gs_teeuplt + EditUL2.Text;
   end;
   if ( EditUL3.Text = ' ' ) then
   begin
      gs_teeuplt := gs_teeuplt + EditULC.Text;
   end
   else
   begin
      gs_teeuplt := gs_teeuplt + EditUL3.Text;
   end;
   if ( EditUL4.Text = ' ' ) then
   begin
      gs_teeuplt := gs_teeuplt + EditULD.Text;
   end
   else
   begin
      gs_teeuplt := gs_teeuplt + EditUL4.Text;
   end;
   if ( EditUL5.Text = ' ' ) then
   begin
      gs_teeuplt := gs_teeuplt + EditULE.Text;
   end
   else
   begin
      gs_teeuplt := gs_teeuplt + EditUL5.Text;
   end;
   gs_teeuplt := gs_teeuplt + EditUL6.Text + EditUL7.Text + EditUL8.Text;

   gs_teedwrt := EditDR8.Text+EditDR7.Text+EditDR6.Text;
   if ( EditDR5.Text = ' ' ) then
   begin
      gs_teedwrt := gs_teedwrt + EditDRE.Text;
   end
   else
   begin
      gs_teedwrt := gs_teedwrt + EditDR5.Text;
   end;
   if ( EditDR4.Text = ' ' ) then
   begin
      gs_teedwrt := gs_teedwrt + EditDRD.Text;
   end
   else
   begin
      gs_teedwrt := gs_teedwrt + EditDR4.Text;
   end;
   if ( EditDR3.Text = ' ' ) then
   begin
      gs_teedwrt := gs_teedwrt + EditDRC.Text;
   end
   else
   begin
      gs_teedwrt := gs_teedwrt + EditDR3.Text;
   end;
   if ( EditDR2.Text = ' ' ) then
   begin
      gs_teedwrt := gs_teedwrt + EditDRB.Text;
   end
   else
   begin
      gs_teedwrt := gs_teedwrt + EditDR2.Text;
   end;
   if ( EditDR1.Text = ' ' ) then
   begin
      gs_teedwrt := gs_teedwrt + EditDRA.Text;
   end
   else
   begin
      gs_teedwrt := gs_teedwrt + EditDR1.Text;
   end;

   if ( EditDL1.Text = ' ' ) then
   begin
      gs_teedwlt := EditDLA.Text;
   end
   else
   begin
      gs_teedwlt := EditDL1.Text;
   end;
   if ( EditDL2.Text = ' ' ) then
   begin
      gs_teedwlt := gs_teedwlt + EditDLB.Text;
   end
   else
   begin
      gs_teedwlt := gs_teedwlt + EditDL2.Text;
   end;
   if ( EditDL3.Text = ' ' ) then
   begin
      gs_teedwlt := gs_teedwlt + EditDLC.Text;
   end
   else
   begin
      gs_teedwlt := gs_teedwlt + EditDL3.Text;
   end;
   if ( EditDL4.Text = ' ' ) then
   begin
      gs_teedwlt := gs_teedwlt + EditDLD.Text;
   end
   else
   begin
      gs_teedwlt := gs_teedwlt + EditDL4.Text;
   end;
   if ( EditDL5.Text = ' ' ) then
   begin
      gs_teedwlt := gs_teedwlt + EditDLE.Text;
   end
   else
   begin
      gs_teedwlt := gs_teedwlt + EditDL5.Text;
   end;
   gs_teedwlt := gs_teedwlt + EditDL6.Text + EditDL7.Text + EditDL8.Text;

   if ( gs_teeuprt = '        ' ) and
      ( gs_teeuplt = '        ' ) and
      ( gs_teedwrt = '        ' ) and
      ( gs_teedwlt = '        ' ) then
   begin
      gs_teeuprt := '';
      gs_teeuplt := '';
      gs_teedwrt := '';
      gs_teedwlt := '';
   end;

   Close;
end;

procedure TAIC010F5.sbt_teeurClick(Sender: TObject);
var
   i         : Integer;
   temp_name : String;
begin
   if ( sbt_teeur.Down ) then
   begin
      for i := 4 to 8 do
      begin
         TEdit(AIC010F5.FindComponent('EditUR'+IntToStr(i))).Text := TImage(AIC010F5.FindComponent('ImageUR'+IntToStr(i))).Hint;
      end;
   end
   else
   begin
      for i := 4 to 8 do
      begin
         TEdit(AIC010F5.FindComponent('EditUR'+IntToStr(i))).Text := ' ';
      end;
   end;
   for i := 4 to 5 do
   begin
      case i of
         4 : begin
                temp_name := 'D';
             end;
         5 : begin
                temp_name := 'E';
             end;
      end;

      TEdit(AIC010F5.FindComponent('EditUR'+temp_name)).Text := ' ';
   end;
end;

procedure TAIC010F5.sbt_teeucClick(Sender: TObject);
var
   i         : Integer;
   temp_name : String;
begin
   if ( sbt_teeuc.Down ) then
   begin
      for i := 1 to 3 do
      begin
         TEdit(AIC010F5.FindComponent('EditUR'+IntToStr(i))).Text := TImage(AIC010F5.FindComponent('ImageUR'+IntToStr(i))).Hint;
         TEdit(AIC010F5.FindComponent('EditUL'+IntToStr(i))).Text := TImage(AIC010F5.FindComponent('ImageUL'+IntToStr(i))).Hint;
      end;
   end
   else
   begin
      for i := 1 to 3 do
      begin
         TEdit(AIC010F5.FindComponent('EditUR'+IntToStr(i))).Text := ' ';
         TEdit(AIC010F5.FindComponent('EditUL'+IntToStr(i))).Text := ' ';
      end;
   end;
   for i := 1 to 3 do
   begin
      case i of
         1 : begin
                temp_name := 'A';
             end;
         2 : begin
                temp_name := 'B';
             end;
         3 : begin
                temp_name := 'C';
             end;
      end;

      TEdit(AIC010F5.FindComponent('EditUR'+temp_name)).Text := ' ';
      TEdit(AIC010F5.FindComponent('EditUL'+temp_name)).Text := ' ';
   end;
end;

procedure TAIC010F5.sbt_teeulClick(Sender: TObject);
var
   i         : Integer;
   temp_name : String;
begin
   if ( sbt_teeul.Down ) then
   begin
      for i := 4 to 8 do
      begin
         TEdit(AIC010F5.FindComponent('EditUL'+IntToStr(i))).Text := TImage(AIC010F5.FindComponent('ImageUL'+IntToStr(i))).Hint;
      end;
   end
   else
   begin
      for i := 4 to 8 do
      begin
         TEdit(AIC010F5.FindComponent('EditUL'+IntToStr(i))).Text := ' ';
      end;
   end;
   for i := 4 to 5 do
   begin
      case i of
         4 : begin
                temp_name := 'D';
             end;
         5 : begin
                temp_name := 'E';
             end;
      end;

      TEdit(AIC010F5.FindComponent('EditUL'+temp_name)).Text := ' ';
   end;
end;

procedure TAIC010F5.sbt_teedrClick(Sender: TObject);
var
   i         : Integer;
   temp_name : String;
begin
   if ( sbt_teedr.Down ) then
   begin
      for i := 4 to 8 do
      begin
         TEdit(AIC010F5.FindComponent('EditDR'+IntToStr(i))).Text := TImage(AIC010F5.FindComponent('ImageDR'+IntToStr(i))).Hint;
      end;
   end
   else
   begin
      for i := 4 to 8 do
      begin
         TEdit(AIC010F5.FindComponent('EditDR'+IntToStr(i))).Text := ' ';
      end;
   end;
   for i := 4 to 5 do
   begin
      case i of
         4 : begin
                temp_name := 'D';
             end;
         5 : begin
                temp_name := 'E';
             end;
      end;

      TEdit(AIC010F5.FindComponent('EditDR'+temp_name)).Text := ' ';
   end;
end;

procedure TAIC010F5.sbt_teedcClick(Sender: TObject);
var
   i         : Integer;
   temp_name : String;
begin
   if ( sbt_teedc.Down ) then
   begin
      for i := 1 to 3 do
      begin
         TEdit(AIC010F5.FindComponent('EditDR'+IntToStr(i))).Text := TImage(AIC010F5.FindComponent('ImageDR'+IntToStr(i))).Hint;
         TEdit(AIC010F5.FindComponent('EditDL'+IntToStr(i))).Text := TImage(AIC010F5.FindComponent('ImageDL'+IntToStr(i))).Hint;
      end;
   end
   else
   begin
      for i := 1 to 3 do
      begin
         TEdit(AIC010F5.FindComponent('EditDR'+IntToStr(i))).Text := ' ';
         TEdit(AIC010F5.FindComponent('EditDL'+IntToStr(i))).Text := ' ';
      end;
   end;
   for i := 1 to 3 do
   begin
      case i of
         1 : begin
                temp_name := 'A';
             end;
         2 : begin
                temp_name := 'B';
             end;
         3 : begin
                temp_name := 'C';
             end;
      end;

      TEdit(AIC010F5.FindComponent('EditDR'+temp_name)).Text := ' ';
      TEdit(AIC010F5.FindComponent('EditDL'+temp_name)).Text := ' ';
   end;
end;

procedure TAIC010F5.sbt_teedlClick(Sender: TObject);
var
   i         : Integer;
   temp_name : String;
begin
   if ( sbt_teedl.Down ) then
   begin
      for i := 4 to 8 do
      begin
         TEdit(AIC010F5.FindComponent('EditDL'+IntToStr(i))).Text := TImage(AIC010F5.FindComponent('ImageDL'+IntToStr(i))).Hint;
      end;
   end
   else
   begin
      for i := 4 to 8 do
      begin
         TEdit(AIC010F5.FindComponent('EditDL'+IntToStr(i))).Text := ' ';
      end;
   end;
   for i := 4 to 5 do
   begin
      case i of
         4 : begin
                temp_name := 'D';
             end;
         5 : begin
                temp_name := 'E';
             end;
      end;

      TEdit(AIC010F5.FindComponent('EditDL'+temp_name)).Text := ' ';
   end;
end;

procedure TAIC010F5.sbt_ateeurClick(Sender: TObject);
var
   i         : Integer;
   temp_name : String;
begin
   if ( sbt_ateeur.Down ) then
   begin
      for i := 3 to 5 do
      begin
         case i of
            3 : begin
                   temp_name := 'C';
                end;
            4 : begin
                   temp_name := 'D';
                end;
            5 : begin
                   temp_name := 'E';
                end;
         end;

         TEdit(AIC010F5.FindComponent('EditUR'+temp_name)).Text := TImage(AIC010F5.FindComponent('ImageUR'+temp_name)).Hint;
      end;
   end
   else
   begin
      for i := 3 to 5 do
      begin
         case i of
            3 : begin
                   temp_name := 'C';
                end;
            4 : begin
                   temp_name := 'D';
                end;
            5 : begin
                   temp_name := 'E';
                end;
         end;

         TEdit(AIC010F5.FindComponent('EditUR'+temp_name)).Text := ' ';
      end;
   end;
   for i := 3 to 8 do
   begin
      TEdit(AIC010F5.FindComponent('EditUR'+IntToStr(i))).Text := ' ';
   end;
end;

procedure TAIC010F5.sbt_ateeucClick(Sender: TObject);
var
   i         : Integer;
   temp_name : String;
begin
   if ( sbt_ateeuc.Down ) then
   begin
      for i := 1 to 2 do
      begin
         case i of
            1 : begin
                   temp_name := 'A';
                end;
            2 : begin
                   temp_name := 'B';
                end;
         end;

         TEdit(AIC010F5.FindComponent('EditUR'+temp_name)).Text := TImage(AIC010F5.FindComponent('ImageUR'+temp_name)).Hint;
         TEdit(AIC010F5.FindComponent('EditUL'+temp_name)).Text := TImage(AIC010F5.FindComponent('ImageUL'+temp_name)).Hint;
      end;
   end
   else
   begin
      for i := 1 to 2 do
      begin
         case i of
            1 : begin
                   temp_name := 'A';
                end;
            2 : begin
                   temp_name := 'B';
                end;
         end;

         TEdit(AIC010F5.FindComponent('EditUR'+temp_name)).Text := ' ';
         TEdit(AIC010F5.FindComponent('EditUL'+temp_name)).Text := ' ';
      end;
   end;
   for i := 1 to 2 do
   begin
      TEdit(AIC010F5.FindComponent('EditUR'+IntToStr(i))).Text := ' ';
      TEdit(AIC010F5.FindComponent('EditUL'+IntToStr(i))).Text := ' ';
   end;
end;

procedure TAIC010F5.sbt_ateeulClick(Sender: TObject);
var
   i         : Integer;
   temp_name : String;
begin
   if ( sbt_ateeul.Down ) then
   begin
      for i := 3 to 5 do
      begin
         case i of
            3 : begin
                   temp_name := 'C';
                end;
            4 : begin
                   temp_name := 'D';
                end;
            5 : begin
                   temp_name := 'E';
                end;
         end;

         TEdit(AIC010F5.FindComponent('EditUL'+temp_name)).Text := TImage(AIC010F5.FindComponent('ImageUL'+temp_name)).Hint;
      end;
   end
   else
   begin
      for i := 3 to 5 do
      begin
         case i of
            3 : begin
                   temp_name := 'C';
                end;
            4 : begin
                   temp_name := 'D';
                end;
            5 : begin
                   temp_name := 'E';
                end;
         end;

         TEdit(AIC010F5.FindComponent('EditUL'+temp_name)).Text := ' ';
      end;
   end;
   for i := 3 to 8 do
   begin
      TEdit(AIC010F5.FindComponent('EditUL'+IntToStr(i))).Text := ' ';
   end;
end;

procedure TAIC010F5.sbt_ateedrClick(Sender: TObject);
var
   i         : Integer;
   temp_name : String;
begin
   if ( sbt_ateedr.Down ) then
   begin
      for i := 3 to 5 do
      begin
         case i of
            3 : begin
                   temp_name := 'C';
                end;
            4 : begin
                   temp_name := 'D';
                end;
            5 : begin
                   temp_name := 'E';
                end;
         end;

         TEdit(AIC010F5.FindComponent('EditDR'+temp_name)).Text := TImage(AIC010F5.FindComponent('ImageDR'+temp_name)).Hint;
      end;
   end
   else
   begin
      for i := 3 to 5 do
      begin
         case i of
            3 : begin
                   temp_name := 'C';
                end;
            4 : begin
                   temp_name := 'D';
                end;
            5 : begin
                   temp_name := 'E';
                end;
         end;

         TEdit(AIC010F5.FindComponent('EditDR'+temp_name)).Text := ' ';
      end;
   end;
   for i := 3 to 8 do
   begin
      TEdit(AIC010F5.FindComponent('EditDR'+IntToStr(i))).Text := ' ';
   end;
end;

procedure TAIC010F5.sbt_ateedcClick(Sender: TObject);
var
   i         : Integer;
   temp_name : String;
begin
   if ( sbt_ateedc.Down ) then
   begin
      for i := 1 to 2 do
      begin
         case i of
            1 : begin
                   temp_name := 'A';
                end;
            2 : begin
                   temp_name := 'B';
                end;
         end;

         TEdit(AIC010F5.FindComponent('EditDR'+temp_name)).Text := TImage(AIC010F5.FindComponent('ImageDR'+temp_name)).Hint;
         TEdit(AIC010F5.FindComponent('EditDL'+temp_name)).Text := TImage(AIC010F5.FindComponent('ImageDL'+temp_name)).Hint;
      end;
   end
   else
   begin
      for i := 1 to 2 do
      begin
         case i of
            1 : begin
                   temp_name := 'A';
                end;
            2 : begin
                   temp_name := 'B';
                end;
         end;

         TEdit(AIC010F5.FindComponent('EditDR'+temp_name)).Text := ' ';
         TEdit(AIC010F5.FindComponent('EditDL'+temp_name)).Text := ' ';
      end;
   end;
   for i := 1 to 2 do
   begin
      TEdit(AIC010F5.FindComponent('EditDR'+IntToStr(i))).Text := ' ';
      TEdit(AIC010F5.FindComponent('EditDL'+IntToStr(i))).Text := ' ';
   end;
end;

procedure TAIC010F5.sbt_ateedlClick(Sender: TObject);
var
   i         : Integer;
   temp_name : String;
begin
   if ( sbt_ateedl.Down ) then
   begin
      for i := 3 to 5 do
      begin
         case i of
            3 : begin
                   temp_name := 'C';
                end;
            4 : begin
                   temp_name := 'D';
                end;
            5 : begin
                   temp_name := 'E';
                end;
         end;

         TEdit(AIC010F5.FindComponent('EditDL'+temp_name)).Text := TImage(AIC010F5.FindComponent('ImageDL'+temp_name)).Hint;
      end;
   end
   else
   begin
      for i := 3 to 5 do
      begin
         case i of
            3 : begin
                   temp_name := 'C';
                end;
            4 : begin
                   temp_name := 'D';
                end;
            5 : begin
                   temp_name := 'E';
                end;
         end;

         TEdit(AIC010F5.FindComponent('EditDL'+temp_name)).Text := ' ';
      end;
   end;
   for i := 3 to 8 do
   begin
      TEdit(AIC010F5.FindComponent('EditDL'+IntToStr(i))).Text := ' ';
   end;
end;

procedure TAIC010F5.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
   begin
      bbt_CloseClick(Sender);
   end;
end;

end.
