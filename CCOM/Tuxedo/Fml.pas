{	Copyright (c) 1996 Penta Systems Technology, Inc.
	All rights reserved

	THIS IS UNPUBLISHED PROPRIETARY
	SOURCE CODE OF Penta Systems Technology, Inc.
	The copyright notice above does not evidence
        any actual or intended publication of such source code.
}
unit Fml;
{$IFNDEF FML_H}
{$DEFINE FML_H}

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls;

const
     TuxedoDLLName   = 'WTUXWS32.DLL';
     MAXFBLEN        = $fffc;          { Maximum FBFR length }

{$IFNDEF FML32_H}
     FSTDXINT        = 16;             { Default indexing interval }
     FMAXNULLSIZE    = 2660;
     FVIEWCACHESIZE  = 10;
     FVIEWNAMESIZE   = 33;

     { Flag options used in Fvstof() }
     F_OFFSET        = 1;
     F_SIZE          = 2;
     F_PROP          = 4;                       { P }
     F_FTOS          = 8;                       { S }
     F_STOF          = 16;                      { F }
     F_BOTH          = F_STOF OR F_FTOS;       { S,F }
     F_OFF           = 0;                       { Z }
     F_LENGTH        = 32;                      { L }
     F_COUNT         = 64;                      { C }
     F_NONE          = 128;                     { NONE flag for null value }

     { These are used in Fstof() }
     F_UPDATE         = 1;
     F_CONCAT         = 2;
     F_JOIN           = 3;
     F_OJOIN          = 4;

     { field types }
     FLD_SHORT       = 0;       { short int }
     FLD_LONG        = 1;       { long int }
     FLD_CHAR        = 2;       { character }
     FLD_FLOAT       = 3;       { single-precision float }
     FLD_DOUBLE      = 4;       { double-precision float }
     FLD_STRING      = 5;       { string - null terminated }
     FLD_CARRAY      = 6;       { character array }


     { invalid field id - returned from functions where field id not found }
     BADFLDID = 0;
     { define an invalid field id used for first call to Fnext }
     FIRSTFLDID = 0;

     { Field Error Codes - these correspond to the error messages in
     *                      F_error.c - make sure to update the error
     *                      message list if a new error is added
     }
     FMINVAL     = 0;        { bottom of error message codes }
     FALIGNERR   = 1;        { fielded buffer not aligned }
     FNOTFLD     = 2;        { buffer not fielded }
     FNOSPACE    = 3;        { no space in fielded buffer }
     FNOTPRES    = 4;        { field not present }
     FBADFLD     = 5;        { unknown field number or type }
     FTYPERR     = 6;        { illegal field type }
     FEUNIX      = 7;        { unix system call error }
     FBADNAME    = 8;        { unknown field name }
     FMALLOC     = 9;        { malloc failed }
     FSYNTAX     = 10;       { bad syntax in boolean expression }
     FFTOPEN     = 11;       { cannot find or open field table }
     FFTSYNTAX   = 12;       { syntax error in field table }
     FEINVAL     = 13;       { invalid argument to function }
     FBADTBL     = 14;       { destructive concurrent access to field table }
     FBADVIEW    = 15;       { cannot find or get view }
     FVFSYNTAX   = 16;       { bad viewfile }
     FVFOPEN     = 17;       { cannot find or open viewfile }
     FBADACM     = 18;       { ACM contains negative value }
     FNOCNAME    = 19;       { cname not found }
     FMAXVAL     = 20;       { top of error message codes }
{$ENDIF}

type
    fml_h = class(TComponent)
    end;

    FIELDID  = Word;
    FLDLEN   = Word;
    FLDOCC   = Integer;
    pFIELDID = ^FIELDID;
    pFLDLEN  = ^FLDLEN;
    pFLDOCC  = ^FLDOCC;

Function _Fget_Ferror_addr:Pointer; stdcall; far;
Function getFerror:Integer; stdcall; far;

Function FMLread(a:Pointer; b:Pointer):Integer; stdcall; far;
Function FMLwrite(a:Pointer; b:Pointer):Integer; stdcall; far;
Function Fread(a:Pointer; b:Pointer):Integer; stdcall; far;
Function Fwrite(a:Pointer; b:Pointer):Integer; stdcall; far;

Function CFadd(a:Pointer; b:FIELDID; c:Pointer; d:FLDLEN; e:Integer):Integer; stdcall; far;
Function CFchg(a:Pointer; b:FIELDID; c:FLDOCC; d:Pointer; e:FLDLEN; f:Integer):Integer; stdcall; far;
Function CFfind(a:Pointer; b:FIELDID; c:FLDOCC; d:pFLDLEN; e:Integer):Pointer; stdcall; far;
Function CFfindocc(a:Pointer; b:FIELDID; c:Pointer; d:FLDLEN; e:Integer):FLDOCC; stdcall; far;
Function CFget(a:Pointer; b:FIELDID; c:FLDOCC; d:Pointer; e:pFLDLEN; f:Integer):Integer; stdcall; far;
Function CFgetalloc(a:Pointer; b:FIELDID; c:FLDOCC; d:Integer; e:pFLDLEN):Pointer; stdcall; far;
Procedure F_error(a:PChar); stdcall; far;
Function Fappend(a:Pointer; b:FIELDID; c:Pointer; d:FLDLEN):Integer; stdcall; far;
Function Fadd(a:Pointer; b:FIELDID; c:Pointer; d:FLDLEN):Integer; stdcall; far;
Function Falloc(a:FLDOCC; b:FLDLEN):Pointer; stdcall; far;
Function Frealloc(a:Pointer; b:FLDOCC; c:FLDLEN):Pointer; stdcall; far;
Function Ffree(a:Pointer):Integer; stdcall; far;
Function Fboolev(a:Pointer; b:PChar):Integer; stdcall; far;
Function Fvboolev(a:Pointer; b:PChar; c:PChar):Integer; stdcall; far;
Function Ffloatev(a:Pointer; b:PChar):Double; stdcall; far;
Function Fvfloatev(a:Pointer; b:PChar; c:PChar):Double; stdcall; far;
Procedure Fboolpr(a:PChar; b:Pointer); stdcall; far;
Procedure Fvboolpr(a:PChar; b:Pointer; c:PChar); stdcall; far;
Function Fchg(a:Pointer; b:FIELDID; c:FLDOCC; d:Pointer; e:FLDLEN):Integer; stdcall; far;
Function Fchksum(a:Pointer):LongInt; stdcall; far;
Function Fcmp(a:Pointer; b:Pointer):Integer; stdcall; far;
Function Fconcat(a:Pointer; b:Pointer):Integer; stdcall; far;
Function Fcpy(a:Pointer; b:Pointer):Integer; stdcall; far;
Function Fdelall(a:Pointer; b:FIELDID):Integer; stdcall; far;
Function Fdelete(a:Pointer; b:pFIELDID):Integer; stdcall; far;
Function Fextread(a:Pointer; b:Pointer):Integer; stdcall; far;
Function Fstrread(a:Pointer; b:PChar):Integer; stdcall; far;
Function Ffind(a:Pointer; b:FIELDID; c:FLDOCC; d:pFLDLEN):Pointer; stdcall; far;
Function Fvals(a:Pointer; b:FIELDID; c:FLDOCC):PChar; stdcall; far;
Function Fvall(a:Pointer; b:FIELDID; c:FLDOCC):LongInt; stdcall; far;
Function Ffindocc(a:Pointer; b:FIELDID; c:Pointer; d:FLDLEN):FLDOCC; stdcall; far;
Function Fget(a:Pointer; b:FIELDID; c:FLDOCC; d:Pointer; e:pFLDLEN):Integer; stdcall; far;
Function Fgetalloc(a:Pointer; b:FIELDID; c:FLDOCC; d:pFLDLEN):Pointer; stdcall; far;
Function Fldtype(a:FIELDID):Integer; stdcall; far;
Function Fldno(a:FIELDID):FLDOCC; stdcall; far;
Function Fielded(a:Pointer):Integer; stdcall; far;
Function Fneeded(a:FLDOCC; b:FLDLEN):LongInt; stdcall; far;
Function Fused(a:Pointer):LongInt; stdcall; far;
Function Fidxused(a:Pointer):LongInt; stdcall; far;
Function Funused(a:Pointer):LongInt; stdcall; far;
Function Fsizeof(a:Pointer):LongInt; stdcall; far;
Function Fmkfldid(a:Integer; b:FIELDID):FIELDID; stdcall; far;
Function Fieldlen(a:PChar; b:pFLDLEN; c:pFLDLEN):FLDLEN; stdcall; far;
Function Funindex(a:Pointer):FLDOCC; stdcall; far;
Function Frstrindex(a:Pointer; b:FLDOCC):Integer; stdcall; far;
Function Findex(a:Pointer; b:FLDOCC):Integer; stdcall; far;
Function Finit(a:Pointer; b:FLDLEN):Integer; stdcall; far;
Function Fjoin(a:Pointer; b:Pointer):Integer; stdcall; far;
Function Fojoin(a:Pointer; b:Pointer):Integer; stdcall; far;
Function Ffindlast(a:Pointer; b:FIELDID; c:pFLDOCC; d:pFLDLEN):Pointer; stdcall; far;
Function Fgetlast(a:Pointer; b:FIELDID; c:pFLDOCC; d:Pointer; e:pFLDLEN):Integer; stdcall; far;
Function Flen(a:Pointer; b:FIELDID; c:FLDOCC):Integer; stdcall; far;
Function Fmove(a:Pointer; b:Pointer):Integer; stdcall; far;
Function Fnext(a:Pointer; b:pFIELDID; c:pFLDOCC; d:Pointer; e:pFLDLEN):Integer; stdcall; far;
Function Fldid(a:PChar):FIELDID; stdcall; far;
Function Fname(a:FIELDID):PChar; stdcall; far;
Function Ftype(a:FIELDID):PChar; stdcall; far;
Procedure Fnmid_unload; stdcall; far;
Procedure Fidnm_unload; stdcall; far;
Function Fnum(a:Pointer):FLDOCC; stdcall; far;
Function Foccur(a:Pointer; b:FIELDID):FLDOCC; stdcall; far;
Function Fprint(a:Pointer):Integer; stdcall; far;
Function Ffprint(a:Pointer; b:Pointer):Integer; stdcall; far;
Function Fpbprint(a:Pointer; b:PChar; c:PChar):Integer; stdcall; far;
Function Fswprint(a:Pointer; b:PChar; c:PChar):Integer; stdcall; far;
Function Fproj(a:Pointer; b:pFIELDID):Integer; stdcall; far;
Function Fprojcpy(a:Pointer; b:Pointer; c:pFIELDID):Integer; stdcall; far;
Function Ftypcvt(a:pFLDLEN; b:Integer; c:Pointer; d:Integer; e:FLDLEN):Pointer; stdcall; far;
Function Fupdate(a:Pointer; b:Pointer):Integer; stdcall; far;
Function Fvopt(a:PChar; b:Integer; c:PChar):Integer; stdcall; far;
Function Fvsinit(a:Pointer; b:PChar):Integer; stdcall; far;
Function Fvnull(a:Pointer; b:PChar; c:FLDOCC; d:PChar):Integer; stdcall; far;
Function Fvselinit(a:Pointer; b:PChar; c:PChar):Integer; stdcall; far;
Function Fvftos(a:Pointer; b:Pointer; c:PChar):Integer; stdcall; far;
Function Fvftopb(a:Pointer; b:PChar; c:PChar):Integer; stdcall; far;
Function Fvstof(a:Pointer; b:Pointer; c:Integer; d:PChar):Integer; stdcall; far;
Procedure Fvrefresh; stdcall; far;
Function Fboolco(a:PChar):PChar; stdcall; far;
Function Fvboolco(a:PChar; b:PChar):PChar; stdcall; far;
Function Fstrerror(a:Integer):PChar; stdcall; far;
Function Fvttos(a:Pointer; b:Pointer; c:PChar):LongInt; stdcall; far;
Function Fvstot(a:Pointer; b:Pointer; c:LongInt; d:PChar):LongInt; stdcall; far;
Function Fcodeset(a:PChar):Integer; stdcall; far;

{ from libtux }
Function maskprt(a:Pointer):Integer; stdcall; far;
{ from cmddes }
Function do_form(a:PChar; b:Pointer):PChar; stdcall; far;

{ definitions of macros for string conversions }

Function Fdel(a:Pointer; b:FIELDID; c:FLDOCC):Integer; stdcall; far;
Function Fpres(a:Pointer; b:FIELDID; c:FLDOCC):Integer; stdcall; far;
Function Fadds(a:Pointer; b:FIELDID; c:Pointer):Integer; stdcall; far;
Function Fchgs(a:Pointer; b:FIELDID; c:FLDOCC; d:Pointer):Integer; stdcall; far;
Function Fgets(a:Pointer; b:FIELDID; c:FLDOCC; d:PChar):Integer; stdcall; far;
Function Fgetsa(a:Pointer; b:FIELDID; c:FLDOCC; d:pFLDLEN):PChar; stdcall; far;
Function Ffinds(a:Pointer; b:FIELDID; c:FLDOCC):PChar; stdcall; far;

{$IFDEF FML32_H}
Function F16to32(a:Pointer; b:Pointer):Integer; stdcall; far;
Function F32to16(a:Pointer; b:Pointer):Integer; stdcall; far;
{$ENDIF}

implementation

Function _Fget_Ferror_addr:Pointer; stdcall; external TuxedoDLLName;
Function getFerror:Integer; stdcall; external TuxedoDLLName;

Function FMLread(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function FMLwrite(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fread(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fwrite(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;

Function CFadd(a:Pointer; b:FIELDID; c:Pointer; d:FLDLEN; e:Integer):Integer; stdcall; external TuxedoDLLName;
Function CFchg(a:Pointer; b:FIELDID; c:FLDOCC; d:Pointer; e:FLDLEN; f:Integer):Integer; stdcall; external TuxedoDLLName;
Function CFfind(a:Pointer; b:FIELDID; c:FLDOCC; d:pFLDLEN; e:Integer):Pointer; stdcall; external TuxedoDLLName;
Function CFfindocc(a:Pointer; b:FIELDID; c:Pointer; d:FLDLEN; e:Integer):FLDOCC; stdcall; external TuxedoDLLName;
Function CFget(a:Pointer; b:FIELDID; c:FLDOCC; d:Pointer; e:pFLDLEN; f:Integer):Integer; stdcall; external TuxedoDLLName;
Function CFgetalloc(a:Pointer; b:FIELDID; c:FLDOCC; d:Integer; e:pFLDLEN):Pointer; stdcall; external TuxedoDLLName;
Procedure F_error(a:PChar); stdcall; external TuxedoDLLName;
Function Fappend(a:Pointer; b:FIELDID; c:Pointer; d:FLDLEN):Integer; stdcall; external TuxedoDLLName;
Function Fadd(a:Pointer; b:FIELDID; c:Pointer; d:FLDLEN):Integer; stdcall; external TuxedoDLLName;
Function Falloc(a:FLDOCC; b:FLDLEN):Pointer; stdcall; external TuxedoDLLName;
Function Frealloc(a:Pointer; b:FLDOCC; c:FLDLEN):Pointer; stdcall; external TuxedoDLLName;
Function Ffree(a:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fboolev(a:Pointer; b:PChar):Integer; stdcall; external TuxedoDLLName;
Function Fvboolev(a:Pointer; b:PChar; c:PChar):Integer; stdcall; external TuxedoDLLName;
Function Ffloatev(a:Pointer; b:PChar):Double; stdcall; external TuxedoDLLName;
Function Fvfloatev(a:Pointer; b:PChar; c:PChar):Double; stdcall; external TuxedoDLLName;
Procedure Fboolpr(a:PChar; b:Pointer); stdcall; external TuxedoDLLName;
Procedure Fvboolpr(a:PChar; b:Pointer; c:PChar); stdcall; external TuxedoDLLName;
Function Fchg(a:Pointer; b:FIELDID; c:FLDOCC; d:Pointer; e:FLDLEN):Integer; stdcall; external TuxedoDLLName;
Function Fchksum(a:Pointer):LongInt; stdcall; external TuxedoDLLName;
Function Fcmp(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fconcat(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fcpy(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fdelall(a:Pointer; b:FIELDID):Integer; stdcall; external TuxedoDLLName;
Function Fdelete(a:Pointer; b:pFIELDID):Integer; stdcall; external TuxedoDLLName;
Function Fextread(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fstrread(a:Pointer; b:PChar):Integer; stdcall; external TuxedoDLLName;
Function Ffind(a:Pointer; b:FIELDID; c:FLDOCC; d:pFLDLEN):Pointer; stdcall; external TuxedoDLLName;
Function Fvals(a:Pointer; b:FIELDID; c:FLDOCC):PChar; stdcall; external TuxedoDLLName;
Function Fvall(a:Pointer; b:FIELDID; c:FLDOCC):LongInt; stdcall; external TuxedoDLLName;
Function Ffindocc(a:Pointer; b:FIELDID; c:Pointer; d:FLDLEN):FLDOCC; stdcall; external TuxedoDLLName;
Function Fget(a:Pointer; b:FIELDID; c:FLDOCC; d:Pointer; e:pFLDLEN):Integer; stdcall; external TuxedoDLLName;
Function Fgetalloc(a:Pointer; b:FIELDID; c:FLDOCC; d:pFLDLEN):Pointer; stdcall; external TuxedoDLLName;
Function Fldtype(a:FIELDID):Integer; stdcall; external TuxedoDLLName;
Function Fldno(a:FIELDID):FLDOCC; stdcall; external TuxedoDLLName;
Function Fielded(a:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fneeded(a:FLDOCC; b:FLDLEN):LongInt; stdcall; external TuxedoDLLName;
Function Fused(a:Pointer):LongInt; stdcall; external TuxedoDLLName;
Function Fidxused(a:Pointer):LongInt; stdcall; external TuxedoDLLName;
Function Funused(a:Pointer):LongInt; stdcall; external TuxedoDLLName;
Function Fsizeof(a:Pointer):LongInt; stdcall; external TuxedoDLLName;
Function Fmkfldid(a:Integer; b:FIELDID):FIELDID; stdcall; external TuxedoDLLName;
Function Fieldlen(a:PChar; b:pFLDLEN; c:pFLDLEN):FLDLEN; stdcall; external TuxedoDLLName;
Function Funindex(a:Pointer):FLDOCC; stdcall; external TuxedoDLLName;
Function Frstrindex(a:Pointer; b:FLDOCC):Integer; stdcall; external TuxedoDLLName;
Function Findex(a:Pointer; b:FLDOCC):Integer; stdcall; external TuxedoDLLName;
Function Finit(a:Pointer; b:FLDLEN):Integer; stdcall; external TuxedoDLLName;
Function Fjoin(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fojoin(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Ffindlast(a:Pointer; b:FIELDID; c:pFLDOCC; d:pFLDLEN):Pointer; stdcall; external TuxedoDLLName;
Function Fgetlast(a:Pointer; b:FIELDID; c:pFLDOCC; d:Pointer; e:pFLDLEN):Integer; stdcall; external TuxedoDLLName;
Function Flen(a:Pointer; b:FIELDID; c:FLDOCC):Integer; stdcall; external TuxedoDLLName;
Function Fmove(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fnext(a:Pointer; b:pFIELDID; c:pFLDOCC; d:Pointer; e:pFLDLEN):Integer; stdcall; external TuxedoDLLName;
Function Fldid(a:PChar):FIELDID; stdcall; external TuxedoDLLName;
Function Fname(a:FIELDID):PChar; stdcall; external TuxedoDLLName;
Function Ftype(a:FIELDID):PChar; stdcall; external TuxedoDLLName;
Procedure Fnmid_unload; stdcall; external TuxedoDLLName;
Procedure Fidnm_unload; stdcall; external TuxedoDLLName;
Function Fnum(a:Pointer):FLDOCC; stdcall; external TuxedoDLLName;
Function Foccur(a:Pointer; b:FIELDID):FLDOCC; stdcall; external TuxedoDLLName;
Function Fprint(a:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Ffprint(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fpbprint(a:Pointer; b:PChar; c:PChar):Integer; stdcall; external TuxedoDLLName;
Function Fswprint(a:Pointer; b:PChar; c:PChar):Integer; stdcall; external TuxedoDLLName;
Function Fproj(a:Pointer; b:pFIELDID):Integer; stdcall; external TuxedoDLLName;
Function Fprojcpy(a:Pointer; b:Pointer; c:pFIELDID):Integer; stdcall; external TuxedoDLLName;
Function Ftypcvt(a:pFLDLEN; b:Integer; c:Pointer; d:Integer; e:FLDLEN):Pointer; stdcall; external TuxedoDLLName;
Function Fupdate(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fvopt(a:PChar; b:Integer; c:PChar):Integer; stdcall; external TuxedoDLLName;
Function Fvsinit(a:Pointer; b:PChar):Integer; stdcall; external TuxedoDLLName;
Function Fvnull(a:Pointer; b:PChar; c:FLDOCC; d:PChar):Integer; stdcall; external TuxedoDLLName;
Function Fvselinit(a:Pointer; b:PChar; c:PChar):Integer; stdcall; external TuxedoDLLName;
Function Fvftos(a:Pointer; b:Pointer; c:PChar):Integer; stdcall; external TuxedoDLLName;
Function Fvftopb(a:Pointer; b:PChar; c:PChar):Integer; stdcall; external TuxedoDLLName;
Function Fvstof(a:Pointer; b:Pointer; c:Integer; d:PChar):Integer; stdcall; external TuxedoDLLName;
Procedure Fvrefresh; stdcall; external TuxedoDLLName;
Function Fboolco(a:PChar):PChar; stdcall; external TuxedoDLLName;
Function Fvboolco(a:PChar; b:PChar):PChar; stdcall; external TuxedoDLLName;
Function Fstrerror(a:Integer):PChar; stdcall; external TuxedoDLLName;
Function Fvttos(a:Pointer; b:Pointer; c:PChar):LongInt; stdcall; external TuxedoDLLName;
Function Fvstot(a:Pointer; b:Pointer; c:LongInt; d:PChar):LongInt; stdcall; external TuxedoDLLName;
Function Fcodeset(a:PChar):Integer; stdcall; external TuxedoDLLName;

{ from libtux }
Function maskprt(a:Pointer):Integer; stdcall; external TuxedoDLLName;
{ from cmddes }
Function do_form(a:PChar; b:Pointer):PChar; stdcall; external TuxedoDLLName;

{ definitions of macros for string conversions }

Function Fdel(a:Pointer; b:FIELDID; c:FLDOCC):Integer; stdcall; external TuxedoDLLName;
Function Fpres(a:Pointer; b:FIELDID; c:FLDOCC):Integer; stdcall; external TuxedoDLLName;
Function Fadds(a:Pointer; b:FIELDID; c:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fchgs(a:Pointer; b:FIELDID; c:FLDOCC; d:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fgets(a:Pointer; b:FIELDID; c:FLDOCC; d:PChar):Integer; stdcall; external TuxedoDLLName;
Function Fgetsa(a:Pointer; b:FIELDID; c:FLDOCC; d:pFLDLEN):PChar; stdcall; external TuxedoDLLName;
Function Ffinds(a:Pointer; b:FIELDID; c:FLDOCC):PChar; stdcall; external TuxedoDLLName;

{$IFDEF FML32_H}
Function F16to32(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function F32to16(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
{$ENDIF}

{$ENDIF}
end.

