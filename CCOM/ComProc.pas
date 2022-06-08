unit ComProc;

interface

uses
  Windows,  Messages, SysUtils, Classes,  Graphics, Controls, Forms,
  Dialogs,  ComCtrls, StdCtrls, Buttons,  Grids,    ExtCtrls, Mask,
  WinTypes, WinProcs, MPlayer,  IniFiles, FileCtrl, CheckLst, MsgCom, UltraGrid,
  Menus;//, CCSF01U1, CCSF02U1, CCSF03U1;

type
   HComCode = class
      sCode     :Variant;
      sName     :Variant;

      //코드조회 FML16
      function    LIST(SvcName: String;
                         InFld: array of string;
                  const InData: array of const;
                        OutFld: array of string;
                       OutAddr: array of PVariant): LongInt;
   end;

   HComCode1 = class
      sCode     :Variant;
      sName     :Variant;
      sLno      :Variant;

      //코드조회 FILE
      function    LIST(SvcName: String;
                         InFld: array of string;
                  const InData: array of const;
                        OutFld: array of string;
                       OutAddr: array of PVariant): LongInt;

   end;

   HComCode2 = class
      sCode     :Variant;
      sName     :Variant;

      //코드조회 FML16
      function    LIST(SvcName, sCode, sType:String): LongInt;
   end;

var
   ComCodeClass: HComCode;
   ComCode1Class: HComCode1;
   ComCode2Class: HComCode2;

   // 1.code와 name을 선택한다.
{   procedure CodeList(Composit: TPoint; sSvcName: String;
                      InFld : array of string;
                      OutFld: array of string;
                      var sCode: String;
                      var sName: String;
                      b_QRY : Boolean=False);

   // 2.code와 name과 주민번호를 선택한다.
   procedure CodeList1(Composit: TPoint; sSvcName: String; infld: array of string; outfld: array of string; var sCode: String; var sName: String; var sLno: String);
   // 3.code와 name을 선택한다.(결과코드)
   procedure CodeList2(Composit: TPoint; SvcName, FormName:String; var sCode: String; var sName: String);
}
implementation

uses sysmsg, tuxmsg, tuxcom, varcom, ccomfunc, SPCLASS0;

{// 1.code와 name을 선택한다.
procedure CodeList(Composit: TPoint; sSvcName: String;
                   InFld : array of string;
                   OutFld: array of string;
                   var sCode: String;
                   var sName: String;
                   b_QRY : Boolean=False);
var
   i: integer;
begin
   if CCSF01F1 = nil then
   begin
      CCSF01F1 := TCCSF01F1.Create(Application);
      CCSF01F1.Top  := Composit.y;
      CCSF01F1.Left := Composit.x;
   end;

   CCSF01F1.b_QRY := b_QRY;

   SetLength(CCSF01F1.infld,High(InFld)+1);
   for i := Low(InFld) to High(InFld) do
   begin
      CCSF01F1.infld[i] := InFld[i];
   end;
   SetLength(CCSF01F1.Outfld,High(OutFld)+1);
   for i := Low(OutFld) to High(OutFld) do
   begin
      CCSF01F1.outfld[i] := OutFld[i];
   end;
   CCSF01F1.SvcName := sSvcName;
   CCSF01F1.ShowModal;
   if CCSF01F1.btn_name = 'bbt_exit' then
      sCode := ''
   else
   begin
      sCode := CCSF01F1.ugd_code.Cells[0, CCSF01F1.ugd_code.Row];
      sName := CCSF01F1.ugd_code.Cells[1, CCSF01F1.ugd_code.Row];
   end;
   //
   CCSF01F1 := nil;

end;

// 2.code와 name과 주민번호를 선택한다.
procedure CodeList1(Composit: TPoint;
                    sSvcName: String;
                    InFld : array of string;
                    OutFld: array of string;
                    var sCode: String;
                    var sName: String;
                    var sLno: String);
var
   i: integer;
begin
   if CCSF02F1 = nil then
   begin
      CCSF02F1 := TCCSF02F1.Create(Application);
      CCSF02F1.Top  := Composit.y;
      CCSF02F1.Left := Composit.x;
   end;

   SetLength(CCSF02F1.infld,High(InFld)+1);
   for i := Low(InFld) to High(InFld) do
   begin
      CCSF02F1.infld[i] := InFld[i];
   end;
   SetLength(CCSF02F1.Outfld,High(OutFld)+1);
   for i := Low(OutFld) to High(OutFld) do
   begin
      CCSF02F1.outfld[i] := OutFld[i];
   end;
   CCSF02F1.SvcName := sSvcName;
   CCSF02F1.ShowModal;
   if CCSF02F1.btn_name = 'bbt_exit' then
      sCode := ''
   else
   begin
      sCode := CCSF02F1.ugd_code.Cells[0, CCSF02F1.ugd_code.Row];
      sName := CCSF02F1.ugd_code.Cells[1, CCSF02F1.ugd_code.Row];
      sLno  := CCSF02F1.ugd_code.Cells[2, CCSF02F1.ugd_code.Row];
   end;
   //
   CCSF02F1 := nil;
end;

procedure CodeList2(Composit: TPoint; SvcName, FormName:String; var sCode: String; var sName: String);
begin
   if CCSF03F1 = nil then
   begin
      CCSF03F1 := TCCSF03F1.Create(Application);
      CCSF03F1.Top  := Composit.y;
      CCSF03F1.Left := Composit.x;
   end;

   CCSF03F1.SvcName  := SvcName;
   CCSF03F1.FormName := FormName;
   CCSF03F1.ShowModal;
   if CCSF03F1.btn_name = 'bbt_exit' then
      sCode := ''
   else
   begin
      sCode := CCSF03F1.ugd_code.Cells[0, CCSF03F1.ugd_code.Row];
      sName := CCSF03F1.ugd_code.Cells[1, CCSF03F1.ugd_code.Row];
   end;

   CCSF03F1 := nil;
end;}

{ HComCode }

function HComCode.List(SvcName: String;
                         InFld: array of string;
                  const InData: array of const;
                        OutFld: array of string;
                       OutAddr: array of PVariant): LongInt;
var
	i : Integer;
	fldstr : String;
begin
   Result:= -1;
   txAlloc;                              //
   for i := Low(InFld) to High(InFld) do
   begin
   	if fldstr <> '' then fldstr := fldstr + ';' + InFld[i]
   	else fldstr := InFld[i];
   end;

   SetFldName(fldstr);
   SetFldValue(0,InData);
   if txGetF(SvcName) then
   begin
      Result:= GetRecordCnt(OutFld[0]);
      GetFldVar(OutFld[0] ,OutAddr[0]^);
      GetFldVar(OutFld[1] ,OutAddr[1]^);
   end;
end;

{ HComCode1 }

function HComCode1.LIST(SvcName: String;
                        InFld  : array of string;
                        const InData: array of const;
                        OutFld : array of string;
                        OutAddr: array of PVariant): LongInt;
var
	i : Integer;
	fldstr : String;
   LocalFile : String;
begin
   Result:= -1;
   txAlloc;                              //
   for i := Low(InFld) to High(InFld) do
   begin
   	if fldstr <> '' then fldstr := fldstr + ';' + InFld[i]
   	else fldstr := InFld[i];
   end;

   SetFldName(fldstr);
   SetFldValue(0, InData);
   if txGetFile('SP_PATINFO_L1', LocalFile) then
   begin
      Result:= GetFldVarFile(LocalFile, '!@',
                             [@sCode,
                              @sName,
                              @sLno]);
      txFree;
   end;
end;


{ HComCode2 }

function HComCode2.LIST(SvcName, sCode, sType:String): Integer;
var
   LocalFile : String;
begin
   Result:= -1;
   txAlloc;                              //
   SetFldName('S_CODE1;S_TYPE1');
   SetFldValue(0,[sCode, sType]);
   if txGetFile('SP_SNOMCT_L2', LocalFile) then
   begin
      Result:= GetFldVarFile(LocalFile, '!@',
                             [@sCode,
                              @sName]);
      txFree;
   end;
end;

end.

