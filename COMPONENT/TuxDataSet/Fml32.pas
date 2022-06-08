{	Copyright (c) 1996 Penta Systems Technology, Inc.
	All rights reserved

	THIS IS UNPUBLISHED PROPRIETARY
	SOURCE CODE OF Penta Systems Technology, Inc.
	The copyright notice above does not evidence
        any actual or intended publication of such source code.
}

unit Fml32;
{$IFNDEF FML32_H}
{$DEFINE FML32_H}

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls;

const
     TuxedoDLLName   = 'WTUXWS32.DLL';
     MAXFBLEN32      = $7ffffffc;          { Maximum FBFR32 length }

{$IFNDEF FML_H}
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
    fml32_h = class(TComponent)
    end;

    FIELDID32  = LongInt;
    FLDLEN32   = LongInt;
    FLDOCC32   = LongInt;
    pFIELDID32 = ^FIELDID32;
    pFLDLEN32  = ^FLDLEN32;
    pFLDOCC32  = ^FLDOCC32;

Function _Fget_Ferror_addr32:Pointer; stdcall; far;
Function getFerror32:Integer; stdcall; far;

Function FMLread32(a:Pointer; b:Pointer):Integer; stdcall; far;
Function FMLwrite32(a:Pointer; b:Pointer):Integer; stdcall; far;
Function Fread32(a:Pointer; b:Pointer):Integer; stdcall; far;
Function Fwrite32(a:Pointer; b:Pointer):Integer; stdcall; far;

Function CFadd32(a:Pointer; b:FIELDID32; c:Pointer; d:FLDLEN32; e:Integer):Integer; stdcall; far;
Function CFchg32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Pointer; e:FLDLEN32; f:Integer):Integer; stdcall; far;
Function CFfind32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:pFLDLEN32; e:Integer):Pointer; stdcall; far;
Function CFfindocc32(a:Pointer; b:FIELDID32; c:Pointer; d:FLDLEN32; e:Integer):FLDOCC32; stdcall; far;
Function CFget32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Pointer; e:pFLDLEN32; f:Integer):Integer; stdcall; far;
Function CFgetalloc32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Integer; e:pFLDLEN32):Pointer; stdcall; far;
Procedure F_error32(a:PChar); stdcall; far;
Function Fappend32(a:Pointer; b:FIELDID32; c:Pointer; d:FLDLEN32):Integer; stdcall; far;
Function Fadd32(a:Pointer; b:FIELDID32; c:Pointer; d:FLDLEN32):Integer; stdcall; far;
Function Falloc32(a:FLDOCC32; b:FLDLEN32):Pointer; stdcall; far;
Function Frealloc32(a:Pointer; b:FLDOCC32; c:FLDLEN32):Pointer; stdcall; far;
Function Ffree32(a:Pointer):Integer; stdcall; far;
Function Fboolev32(a:Pointer; b:PChar):Integer; stdcall; far;
Function Fvboolev32(a:Pointer; b:PChar; c:PChar):Integer; stdcall; far;
Function Ffloatev32(a:Pointer; b:PChar):Double; stdcall; far;
Function Fvfloatev32(a:Pointer; b:PChar; c:PChar):Double; stdcall; far;
Procedure Fboolpr32(a:PChar; b:Pointer); stdcall; far;
Procedure Fvboolpr32(a:PChar; b:Pointer; c:PChar); stdcall; far;
Function Fchg32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Pointer; e:FLDLEN32):Integer; stdcall; far;
Function Fchksum32(a:Pointer):LongInt; stdcall; far;
Function Fcmp32(a:Pointer; b:Pointer):Integer; stdcall; far;
Function Fconcat32(a:Pointer; b:Pointer):Integer; stdcall; far;
Function Fcpy32(a:Pointer; b:Pointer):Integer; stdcall; far;
Function Fdelall32(a:Pointer; b:FIELDID32):Integer; stdcall; far;
Function Fdelete32(a:Pointer; b:pFIELDID32):Integer; stdcall; far;
Function Fextread32(a:Pointer; b:Pointer):Integer; stdcall; far;
Function Fstrread32(a:Pointer; b:PChar):Integer; stdcall; far;
Function Ffind32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:pFLDLEN32):Pointer; stdcall; far;
Function Fvals32(a:Pointer; b:FIELDID32; c:FLDOCC32):PChar; stdcall; far;
Function Fvall32(a:Pointer; b:FIELDID32; c:FLDOCC32):LongInt; stdcall; far;
Function Ffindocc32(a:Pointer; b:FIELDID32; c:Pointer; d:FLDLEN32):FLDOCC32; stdcall; far;
Function Fget32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Pointer; e:pFLDLEN32):Integer; stdcall; far;
Function Fgetalloc32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:pFLDLEN32):Pointer; stdcall; far;
Function Fldtype32(a:FIELDID32):Integer; stdcall; far;
Function Fldno32(a:FIELDID32):FLDOCC32; stdcall; far;
Function Fielded32(a:Pointer):Integer; stdcall; far;
Function Fneeded32(a:FLDOCC32; b:FLDLEN32):LongInt; stdcall; far;
Function Fused32(a:Pointer):LongInt; stdcall; far;
Function Fidxused32(a:Pointer):LongInt; stdcall; far;
Function Funused32(a:Pointer):LongInt; stdcall; far;
Function Fsizeof32(a:Pointer):LongInt; stdcall; far;
Function Fmkfldid32(a:Integer; b:FIELDID32):FIELDID32; stdcall; far;
Function Fieldlen32(a:PChar; b:pFLDLEN32; c:pFLDLEN32):FLDLEN32; stdcall; far;
Function Funindex32(a:Pointer):FLDOCC32; stdcall; far;
Function Frstrindex32(a:Pointer; b:FLDOCC32):Integer; stdcall; far;
Function Findex32(a:Pointer; b:FLDOCC32):Integer; stdcall; far;
Function Finit32(a:Pointer; b:FLDLEN32):Integer; stdcall; far;
Function Fjoin32(a:Pointer; b:Pointer):Integer; stdcall; far;
Function Fojoin32(a:Pointer; b:Pointer):Integer; stdcall; far;
Function Ffindlast32(a:Pointer; b:FIELDID32; c:pFLDOCC32; d:pFLDLEN32):Pointer; stdcall; far;
Function Fgetlast32(a:Pointer; b:FIELDID32; c:pFLDOCC32; d:Pointer; e:pFLDLEN32):Integer; stdcall; far;
Function Flen32(a:Pointer; b:FIELDID32; c:FLDOCC32):Integer; stdcall; far;
Function Fmove32(a:Pointer; b:Pointer):Integer; stdcall; far;
Function Fnext32(a:Pointer; b:pFIELDID32; c:pFLDOCC32; d:Pointer; e:pFLDLEN32):Integer; stdcall; far;
Function Fldid32(a:PChar):FIELDID32; stdcall; far;
Function Fname32(a:FIELDID32):PChar; stdcall; far;
Function Ftype32(a:FIELDID32):PChar; stdcall; far;
Procedure Fnmid_unload32; stdcall; far;
Procedure Fidnm_unload32; stdcall; far;
Function Fnum32(a:Pointer):FLDOCC32; stdcall; far;
Function Foccur32(a:Pointer; b:FIELDID32):FLDOCC32; stdcall; far;
Function Fprint32(a:Pointer):Integer; stdcall; far;
Function Ffprint32(a:Pointer; b:Pointer):Integer; stdcall; far;
Function Fpbprint32(a:Pointer; b:PChar; c:PChar):Integer; stdcall; far;
Function Fswprint32(a:Pointer; b:PChar; c:PChar):Integer; stdcall; far;
Function Fproj32(a:Pointer; b:pFIELDID32):Integer; stdcall; far;
Function Fprojcpy32(a:Pointer; b:Pointer; c:pFIELDID32):Integer; stdcall; far;
Function Ftypcvt32(a:pFLDLEN32; b:Integer; c:Pointer; d:Integer; e:FLDLEN32):Pointer; stdcall; far;
Function Fupdate32(a:Pointer; b:Pointer):Integer; stdcall; far;
Function Fvopt32(a:PChar; b:Integer; c:PChar):Integer; stdcall; far;
Function Fvsinit32(a:Pointer; b:PChar):Integer; stdcall; far;
Function Fvnull32(a:Pointer; b:PChar; c:FLDOCC32; d:PChar):Integer; stdcall; far;
Function Fvselinit32(a:Pointer; b:PChar; c:PChar):Integer; stdcall; far;
Function Fvftos32(a:Pointer; b:Pointer; c:PChar):Integer; stdcall; far;
Function Fvftopb32(a:Pointer; b:PChar; c:PChar):Integer; stdcall; far;
Function Fvstof32(a:Pointer; b:Pointer; c:Integer; d:PChar):Integer; stdcall; far;
Procedure Fvrefresh32; stdcall; far;
Function Fboolco32(a:PChar):PChar; stdcall; far;
Function Fvboolco32(a:PChar; b:PChar):PChar; stdcall; far;
Function Fstrerror32(a:Integer):PChar; stdcall; far;
Function Fvttos32(a:Pointer; b:Pointer; c:PChar):LongInt; stdcall; far;
Function Fvstot32(a:Pointer; b:Pointer; c:LongInt; d:PChar):LongInt; stdcall; far;
Function Fcodeset(a:PChar):Integer; stdcall; far;

{ from libtux }
Function maskprt32(a:Pointer):Integer; stdcall; far;
{ from cmddes }
Function do_form32(a:PChar; b:Pointer):PChar; stdcall; far;

{ definitions of macros for string conversions }

Function Fdel32(a:Pointer; b:FIELDID32; c:FLDOCC32):Integer; stdcall; far;
Function Fpres32(a:Pointer; b:FIELDID32; c:FLDOCC32):Integer; stdcall; far;
Function Fadds32(a:Pointer; b:FIELDID32; c:Pointer):Integer; stdcall; far;
Function Fchgs32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Pointer):Integer; stdcall; far;
Function Fgets32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:PChar):Integer; stdcall; far;
Function Fgetsa32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:pFLDLEN32):PChar; stdcall; far;
Function Ffinds32(a:Pointer; b:FIELDID32; c:FLDOCC32):PChar; stdcall; far;

{$IFDEF FML_H}
Function F16to3232(a:Pointer; b:Pointer):Integer; stdcall; far;
Function F32to1632(a:Pointer; b:Pointer):Integer; stdcall; far;
{$ENDIF}

procedure Register;

implementation

Function _Fget_Ferror_addr32:Pointer; stdcall; external TuxedoDLLName;
Function getFerror32:Integer; stdcall; external TuxedoDLLName;

Function FMLread32(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function FMLwrite32(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fread32(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fwrite32(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;

Function CFadd32(a:Pointer; b:FIELDID32; c:Pointer; d:FLDLEN32; e:Integer):Integer; stdcall; external TuxedoDLLName;
Function CFchg32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Pointer; e:FLDLEN32; f:Integer):Integer; stdcall; external TuxedoDLLName;
Function CFfind32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:pFLDLEN32; e:Integer):Pointer; stdcall; external TuxedoDLLName;
Function CFfindocc32(a:Pointer; b:FIELDID32; c:Pointer; d:FLDLEN32; e:Integer):FLDOCC32; stdcall; external TuxedoDLLName;
Function CFget32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Pointer; e:pFLDLEN32; f:Integer):Integer; stdcall; external TuxedoDLLName;
Function CFgetalloc32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Integer; e:pFLDLEN32):Pointer; stdcall; external TuxedoDLLName;
Procedure F_error32(a:PChar); stdcall; external TuxedoDLLName;
Function Fappend32(a:Pointer; b:FIELDID32; c:Pointer; d:FLDLEN32):Integer; stdcall; external TuxedoDLLName;
Function Fadd32(a:Pointer; b:FIELDID32; c:Pointer; d:FLDLEN32):Integer; stdcall; external TuxedoDLLName;
Function Falloc32(a:FLDOCC32; b:FLDLEN32):Pointer; stdcall; external TuxedoDLLName;
Function Frealloc32(a:Pointer; b:FLDOCC32; c:FLDLEN32):Pointer; stdcall; external TuxedoDLLName;
Function Ffree32(a:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fboolev32(a:Pointer; b:PChar):Integer; stdcall; external TuxedoDLLName;
Function Fvboolev32(a:Pointer; b:PChar; c:PChar):Integer; stdcall; external TuxedoDLLName;
Function Ffloatev32(a:Pointer; b:PChar):Double; stdcall; external TuxedoDLLName;
Function Fvfloatev32(a:Pointer; b:PChar; c:PChar):Double; stdcall; external TuxedoDLLName;
Procedure Fboolpr32(a:PChar; b:Pointer); stdcall; external TuxedoDLLName;
Procedure Fvboolpr32(a:PChar; b:Pointer; c:PChar); stdcall; external TuxedoDLLName;
Function Fchg32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Pointer; e:FLDLEN32):Integer; stdcall; external TuxedoDLLName;
Function Fchksum32(a:Pointer):LongInt; stdcall; external TuxedoDLLName;
Function Fcmp32(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fconcat32(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fcpy32(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fdelall32(a:Pointer; b:FIELDID32):Integer; stdcall; external TuxedoDLLName;
Function Fdelete32(a:Pointer; b:pFIELDID32):Integer; stdcall; external TuxedoDLLName;
Function Fextread32(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fstrread32(a:Pointer; b:PChar):Integer; stdcall; external TuxedoDLLName;
Function Ffind32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:pFLDLEN32):Pointer; stdcall; external TuxedoDLLName;
Function Fvals32(a:Pointer; b:FIELDID32; c:FLDOCC32):PChar; stdcall; external TuxedoDLLName;
Function Fvall32(a:Pointer; b:FIELDID32; c:FLDOCC32):LongInt; stdcall; external TuxedoDLLName;
Function Ffindocc32(a:Pointer; b:FIELDID32; c:Pointer; d:FLDLEN32):FLDOCC32; stdcall; external TuxedoDLLName;
Function Fget32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Pointer; e:pFLDLEN32):Integer; stdcall; external TuxedoDLLName;
Function Fgetalloc32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:pFLDLEN32):Pointer; stdcall; external TuxedoDLLName;
Function Fldtype32(a:FIELDID32):Integer; stdcall; external TuxedoDLLName;
Function Fldno32(a:FIELDID32):FLDOCC32; stdcall; external TuxedoDLLName;
Function Fielded32(a:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fneeded32(a:FLDOCC32; b:FLDLEN32):LongInt; stdcall; external TuxedoDLLName;
Function Fused32(a:Pointer):LongInt; stdcall; external TuxedoDLLName;
Function Fidxused32(a:Pointer):LongInt; stdcall; external TuxedoDLLName;
Function Funused32(a:Pointer):LongInt; stdcall; external TuxedoDLLName;
Function Fsizeof32(a:Pointer):LongInt; stdcall; external TuxedoDLLName;
Function Fmkfldid32(a:Integer; b:FIELDID32):FIELDID32; stdcall; external TuxedoDLLName;
Function Fieldlen32(a:PChar; b:pFLDLEN32; c:pFLDLEN32):FLDLEN32; stdcall; external TuxedoDLLName;
Function Funindex32(a:Pointer):FLDOCC32; stdcall; external TuxedoDLLName;
Function Frstrindex32(a:Pointer; b:FLDOCC32):Integer; stdcall; external TuxedoDLLName;
Function Findex32(a:Pointer; b:FLDOCC32):Integer; stdcall; external TuxedoDLLName;
Function Finit32(a:Pointer; b:FLDLEN32):Integer; stdcall; external TuxedoDLLName;
Function Fjoin32(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fojoin32(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Ffindlast32(a:Pointer; b:FIELDID32; c:pFLDOCC32; d:pFLDLEN32):Pointer; stdcall; external TuxedoDLLName;
Function Fgetlast32(a:Pointer; b:FIELDID32; c:pFLDOCC32; d:Pointer; e:pFLDLEN32):Integer; stdcall; external TuxedoDLLName;
Function Flen32(a:Pointer; b:FIELDID32; c:FLDOCC32):Integer; stdcall; external TuxedoDLLName;
Function Fmove32(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fnext32(a:Pointer; b:pFIELDID32; c:pFLDOCC32; d:Pointer; e:pFLDLEN32):Integer; stdcall; external TuxedoDLLName;
Function Fldid32(a:PChar):FIELDID32; stdcall; external TuxedoDLLName;
Function Fname32(a:FIELDID32):PChar; stdcall; external TuxedoDLLName;
Function Ftype32(a:FIELDID32):PChar; stdcall; external TuxedoDLLName;
Procedure Fnmid_unload32; stdcall; external TuxedoDLLName;
Procedure Fidnm_unload32; stdcall; external TuxedoDLLName;
Function Fnum32(a:Pointer):FLDOCC32; stdcall; external TuxedoDLLName;
Function Foccur32(a:Pointer; b:FIELDID32):FLDOCC32; stdcall; external TuxedoDLLName;
Function Fprint32(a:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Ffprint32(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fpbprint32(a:Pointer; b:PChar; c:PChar):Integer; stdcall; external TuxedoDLLName;
Function Fswprint32(a:Pointer; b:PChar; c:PChar):Integer; stdcall; external TuxedoDLLName;
Function Fproj32(a:Pointer; b:pFIELDID32):Integer; stdcall; external TuxedoDLLName;
Function Fprojcpy32(a:Pointer; b:Pointer; c:pFIELDID32):Integer; stdcall; external TuxedoDLLName;
Function Ftypcvt32(a:pFLDLEN32; b:Integer; c:Pointer; d:Integer; e:FLDLEN32):Pointer; stdcall; external TuxedoDLLName;
Function Fupdate32(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fvopt32(a:PChar; b:Integer; c:PChar):Integer; stdcall; external TuxedoDLLName;
Function Fvsinit32(a:Pointer; b:PChar):Integer; stdcall; external TuxedoDLLName;
Function Fvnull32(a:Pointer; b:PChar; c:FLDOCC32; d:PChar):Integer; stdcall; external TuxedoDLLName;
Function Fvselinit32(a:Pointer; b:PChar; c:PChar):Integer; stdcall; external TuxedoDLLName;
Function Fvftos32(a:Pointer; b:Pointer; c:PChar):Integer; stdcall; external TuxedoDLLName;
Function Fvftopb32(a:Pointer; b:PChar; c:PChar):Integer; stdcall; external TuxedoDLLName;
Function Fvstof32(a:Pointer; b:Pointer; c:Integer; d:PChar):Integer; stdcall; external TuxedoDLLName;
Procedure Fvrefresh32; stdcall; external TuxedoDLLName;
Function Fboolco32(a:PChar):PChar; stdcall; external TuxedoDLLName;
Function Fvboolco32(a:PChar; b:PChar):PChar; stdcall; external TuxedoDLLName;
Function Fstrerror32(a:Integer):PChar; stdcall; external TuxedoDLLName;
Function Fvttos32(a:Pointer; b:Pointer; c:PChar):LongInt; stdcall; external TuxedoDLLName;
Function Fvstot32(a:Pointer; b:Pointer; c:LongInt; d:PChar):LongInt; stdcall; external TuxedoDLLName;
Function Fcodeset(a:PChar):Integer; stdcall; external TuxedoDLLName;

{ from libtux }
Function maskprt32(a:Pointer):Integer; stdcall; external TuxedoDLLName;
{ from cmddes }
Function do_form32(a:PChar; b:Pointer):PChar; stdcall; external TuxedoDLLName;

{ definitions of macros for string conversions }

Function Fdel32(a:Pointer; b:FIELDID32; c:FLDOCC32):Integer; stdcall; external TuxedoDLLName;
Function Fpres32(a:Pointer; b:FIELDID32; c:FLDOCC32):Integer; stdcall; external TuxedoDLLName;
Function Fadds32(a:Pointer; b:FIELDID32; c:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fchgs32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Pointer):Integer; stdcall; external TuxedoDLLName;
Function Fgets32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:PChar):Integer; stdcall; external TuxedoDLLName;
Function Fgetsa32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:pFLDLEN32):PChar; stdcall; external TuxedoDLLName;
Function Ffinds32(a:Pointer; b:FIELDID32; c:FLDOCC32):PChar; stdcall; external TuxedoDLLName;

{$IFDEF FML_H}
Function F16to32(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
Function F32to16(a:Pointer; b:Pointer):Integer; stdcall; external TuxedoDLLName;
{$ENDIF}

procedure Register;
begin
  RegisterComponents('Tux61', [fml32_h]);
end;

{$ENDIF}
end.

