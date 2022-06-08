unit Fml32;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls;

const
     TmaxDLL   = 'tmax.DLL';
     MAXFBLEN        = $fffc;          { Maximum FBFR length }
{ =========== Field Key Buffer ============== }
     { field types }
     FB_CHAR        = 1;       { character }
     FB_SHORT       = 2;       { short int }
     FB_INT         = 3;       { short int }
     FB_LONG        = 4;       { long int }
     FB_FLOAT       = 5;       { single-precision float }
     FB_DOUBLE      = 6;       { double-precision float }
     FB_STRING      = 7;       { string - null terminated }
     FB_CARRAY      = 8;       { character array }

     { fb op mode }
     FBMOVE        = 1;
     FBCOPY        = 2;
     FBCOMP        = 3;
     FBCONCAT      = 4;
     FBJOIN        = 5;
     FBOJOIN       = 6;
     FBUPDATE      = 7;

     { fberror code }
     FBEBADFB      = 3;
     FBEINVAL      = 4;
     FBELIMIT      = 5;
     FBENOENT      = 6;
     FBEOS         = 7;
     FBEBADFLD     = 8;
     FBEPROTO      = 9;
     FBENOSPACE    = 10;
     FBEMALLOC     = 11;
     FBESYSTEM     = 12;
     FBETYPE       = 13;
     FBEMATCH      = 14;
     FBEBADSTRUCT  = 15;
     FBEMAXNO      = 19;

{ ----- Flags for Tuxedo Compatibility ----- }
     FLD_CHAR        = 1;       { character }
     FLD_SHORT       = 2;       { short int }
     FLD_INT         = 3;       { short int }
     FLD_LONG        = 4;       { long int }
     FLD_FLOAT       = 5;       { single-precision float }
     FLD_DOUBLE      = 6;       { double-precision float }
     FLD_STRING      = 7;       { string - null terminated }
     FLD_CARRAY      = 8;       { character array }

     FSTDXINT        = 16;             { Default indexing interval }
     FMAXNULLSIZE    = 2660;
     FVIEWCACHESIZE  = 10;
     FVIEWNAMESIZE   = 33;

     { operations presented to _Fmodidx function }
     FADD	     = 1;
     FDLMOD	     = 2;
     FDEL	     = 3;

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


     { invalid field id - returned from functions where field id not found }
     BADFLDID = 0;
     { define an invalid field id used for first call to Fnext }
     FIRSTFLDID = 0;

type
    fml32_h = class(TComponent)
    {public
        constructor Create(AOwner: TComponent); override;}
    end;

    FIELDID32  = LongInt;
    FLDLEN32   = LongInt;
    FLDKEY32   = LongInt;
    NTH      = integer;

    FLDOCC32   = LongInt;
    pFIELDID32 = ^FIELDID32;
    pFLDLEN32  = ^FLDLEN32;
    pFLDOCC32  = ^FLDOCC32;

{ Function for Tuxedo Compatibility }
Function _Fget_Ferror_addr32:Pointer; cdecl; far;
Function getFerror32:Integer; cdecl; far;

Function FMLread32(a:Pointer; b:Pointer):Integer; cdecl; far;
Function FMLwrite32(a:Pointer; b:Pointer):Integer; cdecl; far;
Function Fread32(a:Pointer; b:Pointer):Integer; cdecl; far;
Function Fwrite32(a:Pointer; b:Pointer):Integer; cdecl; far;

Function CFadd32(a:Pointer; b:FIELDID32; c:Pointer; d:FLDLEN32; e:Integer):Integer; cdecl; far;
Function CFchg32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Pointer; e:FLDLEN32; f:Integer):Integer; cdecl; far;
Function CFfind32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:pFLDLEN32; e:Integer):Pointer; cdecl; far;
Function CFfindocc32(a:Pointer; b:FIELDID32; c:Pointer; d:FLDLEN32; e:Integer):FLDOCC32; cdecl; far;
Function CFget32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Pointer; e:pFLDLEN32; f:Integer):Integer; cdecl; far;
Function CFgetalloc32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Integer; e:pFLDLEN32):Pointer; cdecl; far;
Procedure F_error32(a:PChar); cdecl; far;
Function Fappend32(a:Pointer; b:FIELDID32; c:Pointer; d:FLDLEN32):Integer; cdecl; far;
Function Fadd32(a:Pointer; b:FIELDID32; c:Pointer; d:FLDLEN32):Integer; cdecl; far;
Function Falloc32(a:FLDOCC32; b:FLDLEN32):Pointer; cdecl; far;
Function Frealloc32(a:Pointer; b:FLDOCC32; c:FLDLEN32):Pointer; cdecl; far;
Function Ffree32(a:Pointer):Integer; cdecl; far;
Function Fboolev32(a:Pointer; b:PChar):Integer; cdecl; far;
Function Fvboolev32(a:Pointer; b:PChar; c:PChar):Integer; cdecl; far;
Function Ffloatev32(a:Pointer; b:PChar):Double; cdecl; far;
Function Fvfloatev32(a:Pointer; b:PChar; c:PChar):Double; cdecl; far;
Procedure Fboolpr32(a:PChar; b:Pointer); cdecl; far;
Procedure Fvboolpr32(a:PChar; b:Pointer; c:PChar); cdecl; far;
Function Fchg32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Pointer; e:FLDLEN32):Integer; cdecl; far;
Function Fchksum32(a:Pointer):LongInt; cdecl; far;
Function Fcmp32(a:Pointer; b:Pointer):Integer; cdecl; far;
Function Fconcat32(a:Pointer; b:Pointer):Integer; cdecl; far;
Function Fcpy32(a:Pointer; b:Pointer):Integer; cdecl; far;
Function Fdelall32(a:Pointer; b:FIELDID32):Integer; cdecl; far;
Function Fdelete32(a:Pointer; b:pFIELDID32):Integer; cdecl; far;
Function Fextread32(a:Pointer; b:Pointer):Integer; cdecl; far;
Function Fstrread32(a:Pointer; b:PChar):Integer; cdecl; far;
Function Ffind32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:pFLDLEN32):Pointer; cdecl; far;
Function Fvals32(a:Pointer; b:FIELDID32; c:FLDOCC32):PChar; cdecl; far;
Function Fvall32(a:Pointer; b:FIELDID32; c:FLDOCC32):LongInt; cdecl; far;
Function Ffindocc32(a:Pointer; b:FIELDID32; c:Pointer; d:FLDLEN32):FLDOCC32; cdecl; far;
Function Fget32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Pointer; e:pFLDLEN32):Integer; cdecl; far;
Function Fgetalloc32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:pFLDLEN32):Pointer; cdecl; far;
Function Fldtype32(a:FIELDID32):Integer; cdecl; far;
Function Fldno32(a:FIELDID32):FLDOCC32; cdecl; far;
Function Fielded32(a:Pointer):Integer; cdecl; far;
Function Fneeded32(a:FLDOCC32; b:FLDLEN32):LongInt; cdecl; far;
Function Fused32(a:Pointer):LongInt; cdecl; far;
Function Fidxused32(a:Pointer):LongInt; cdecl; far;
Function Funused32(a:Pointer):LongInt; cdecl; far;
Function Fsizeof32(a:Pointer):LongInt; cdecl; far;
Function Fmkfldid32(a:Integer; b:FIELDID32):FIELDID32; cdecl; far;
Function Fieldlen32(a:PChar; b:pFLDLEN32; c:pFLDLEN32):FLDLEN32; cdecl; far;
Function Funindex32(a:Pointer):FLDOCC32; cdecl; far;
Function Frstrindex32(a:Pointer; b:FLDOCC32):Integer; cdecl; far;
Function Findex32(a:Pointer; b:FLDOCC32):Integer; cdecl; far;
Function Finit32(a:Pointer; b:FLDLEN32):Integer; cdecl; far;
Function Fjoin32(a:Pointer; b:Pointer):Integer; cdecl; far;
Function Fojoin32(a:Pointer; b:Pointer):Integer; cdecl; far;
Function Ffindlast32(a:Pointer; b:FIELDID32; c:pFLDOCC32; d:pFLDLEN32):Pointer; cdecl; far;
Function Fgetlast32(a:Pointer; b:FIELDID32; c:pFLDOCC32; d:Pointer; e:pFLDLEN32):Integer; cdecl; far;
Function Flen32(a:Pointer; b:FIELDID32; c:FLDOCC32):Integer; cdecl; far;
Function Fmove32(a:Pointer; b:Pointer):Integer; cdecl; far;
Function Fnext32(a:Pointer; b:pFIELDID32; c:pFLDOCC32; d:Pointer; e:pFLDLEN32):Integer; cdecl; far;
Function Fldid32(a:PChar):FIELDID32; cdecl; far;
Function Fname32(a:FIELDID32):PChar; cdecl; far;
Function Ftype32(a:FIELDID32):PChar; cdecl; far;
Procedure Fnmid_unload32; cdecl; far;
Procedure Fidnm_unload32; cdecl; far;
Function Fnum32(a:Pointer):FLDOCC32; cdecl; far;
Function Foccur32(a:Pointer; b:FIELDID32):FLDOCC32; cdecl; far;
Function Fprint32(a:Pointer):Integer; cdecl; far;
Function Ffprint32(a:Pointer; b:Pointer):Integer; cdecl; far;
Function Fpbprint32(a:Pointer; b:PChar; c:PChar):Integer; cdecl; far;
Function Fswprint32(a:Pointer; b:PChar; c:PChar):Integer; cdecl; far;
Function Fproj32(a:Pointer; b:pFIELDID32):Integer; cdecl; far;
Function Fprojcpy32(a:Pointer; b:Pointer; c:pFIELDID32):Integer; cdecl; far;
Function Ftypcvt32(a:pFLDLEN32; b:Integer; c:Pointer; d:Integer; e:FLDLEN32):Pointer; cdecl; far;
Function Fupdate32(a:Pointer; b:Pointer):Integer; cdecl; far;
Function Fvopt32(a:PChar; b:Integer; c:PChar):Integer; cdecl; far;
Function Fvsinit32(a:Pointer; b:PChar):Integer; cdecl; far;
Function Fvnull32(a:Pointer; b:PChar; c:FLDOCC32; d:PChar):Integer; cdecl; far;
Function Fvselinit32(a:Pointer; b:PChar; c:PChar):Integer; cdecl; far;
Function Fvftos32(a:Pointer; b:Pointer; c:PChar):Integer; cdecl; far;
Function Fvftopb32(a:Pointer; b:PChar; c:PChar):Integer; cdecl; far;
Function Fvstof32(a:Pointer; b:Pointer; c:Integer; d:PChar):Integer; cdecl; far;
Procedure Fvrefresh32; cdecl; far;
Function Fboolco32(a:PChar):PChar; cdecl; far;
Function Fvboolco32(a:PChar; b:PChar):PChar; cdecl; far;
Function Fstrerror32(a:Integer):PChar; cdecl; far;
Function Fvttos32(a:Pointer; b:Pointer; c:PChar):LongInt; cdecl; far;
Function Fvstot32(a:Pointer; b:Pointer; c:LongInt; d:PChar):LongInt; cdecl; far;
Function Fcodeset32(a:PChar):Integer; cdecl; far;

// field key buffer start
Function fbchg_tu32(a:Pointer; b:FLDKEY32; c:NTH; d:Pointer; e:FLDLEN32):Integer; cdecl; far;
Function fbgetvals_tu32(a:Pointer; b:FLDKEY32; c:NTH):PChar; cdecl; far;
Function fbgetvall_tu32(a:Pointer; b:FLDKEY32; c:NTH):LongInt; cdecl; far;
Function fbgetvals32(a:Pointer; b:FLDKEY32; c:NTH):PChar; cdecl; far;
Function fbgetvali32(a:Pointer; b:FLDKEY32; c:NTH):LongInt; cdecl; far;
Function fbget32(a:Pointer; b:FLDKEY32; c:NTH; d:Pointer; e:pFLDLEN32):Integer; cdecl; far;
Function fbget_tu32(a:Pointer; b:FLDKEY32; c:NTH; d:Pointer; e:pFLDLEN32):Integer; cdecl; far;
Function fbget_tut32(a:Pointer; b:FLDKEY32; c:NTH; d:Pointer; e:pFLDLEN32; f:integer):Integer; cdecl; far;
Function fbkeyoccur32(a:Pointer; b:FLDKEY32):NTH; cdecl; far;
Function fbget_fldkey32(a:PChar):FLDKEY32; cdecl; far;
Function fbstrerror32(a:integer):Pointer; cdecl; far;
Function getfberrno32:integer;  cdecl; far;
Function getfberror32:integer;  cdecl; far;
//field key buffer end

{ from libtux }
Function maskprt32(a:Pointer):Integer; cdecl; far;
{ from cmddes }
Function do_form32(a:PChar; b:Pointer):PChar; cdecl; far;

{ definitions of macros for string conversions }
Function Fdel32(a:Pointer; b:FIELDID32; c:FLDOCC32):Integer; cdecl; far;
Function Fpres32(a:Pointer; b:FIELDID32; c:FLDOCC32):Integer; cdecl; far;
Function Fadds32(a:Pointer; b:FIELDID32; c:Pointer):Integer; cdecl; far;
Function Fchgs32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Pointer):Integer; cdecl; far;
Function Fgets32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:PChar):Integer; cdecl; far;
Function Fgetsa32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:pFLDLEN32):PChar; cdecl; far;
Function Ffinds32(a:Pointer; b:FIELDID32; c:FLDOCC32):PChar; cdecl; far;

{$IFDEF FML_H}
Function F16to3232(a:Pointer; b:Pointer):Integer; cdecl; far;
Function F32to1632(a:Pointer; b:Pointer):Integer; cdecl; far;
{$ENDIF}

implementation

{constructor fml32_h.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;}

Function _Fget_Ferror_addr32:Pointer; cdecl; external TmaxDLL name '_Fget_Ferror_addr';
Function getFerror32:Integer; cdecl; external TmaxDLL name 'getFerror';

Function FMLread32(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL name 'FMLread';
Function FMLwrite32(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL name 'FMLwrite';
Function Fread32(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL name 'Fread';
Function Fwrite32(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL name 'Fwrite';

Function CFadd32(a:Pointer; b:FIELDID32; c:Pointer; d:FLDLEN32; e:Integer):Integer; cdecl; external TmaxDLL name 'CFadd';
Function CFchg32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Pointer; e:FLDLEN32; f:Integer):Integer; cdecl; external TmaxDLL name 'CFchg';
Function CFfind32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:pFLDLEN32; e:Integer):Pointer; cdecl; external TmaxDLL name 'CFfind';
Function CFfindocc32(a:Pointer; b:FIELDID32; c:Pointer; d:FLDLEN32; e:Integer):FLDOCC32; cdecl; external TmaxDLL name 'CFfindocc';
Function CFget32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Pointer; e:pFLDLEN32; f:Integer):Integer; cdecl; external TmaxDLL name 'CFget';
Function CFgetalloc32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Integer; e:pFLDLEN32):Pointer; cdecl; external TmaxDLL name 'CFgetalloc';
Procedure F_error32(a:PChar); cdecl; external TmaxDLL name 'F_error';
Function Fappend32(a:Pointer; b:FIELDID32; c:Pointer; d:FLDLEN32):Integer; cdecl; external TmaxDLL name 'Fappend';
Function Fadd32(a:Pointer; b:FIELDID32; c:Pointer; d:FLDLEN32):Integer; cdecl; external TmaxDLL name 'Fadd';
Function Falloc32(a:FLDOCC32; b:FLDLEN32):Pointer; cdecl; external TmaxDLL name 'Falloc';
Function Frealloc32(a:Pointer; b:FLDOCC32; c:FLDLEN32):Pointer; cdecl; external TmaxDLL name 'Frealloc';
Function Ffree32(a:Pointer):Integer; cdecl; external TmaxDLL name 'Ffree';
Function Fboolev32(a:Pointer; b:PChar):Integer; cdecl; external TmaxDLL name 'Fboolev';
Function Fvboolev32(a:Pointer; b:PChar; c:PChar):Integer; cdecl; external TmaxDLL name 'Fvboolev';
Function Ffloatev32(a:Pointer; b:PChar):Double; cdecl; external TmaxDLL name 'Ffloatev';
Function Fvfloatev32(a:Pointer; b:PChar; c:PChar):Double; cdecl; external TmaxDLL name 'Fvfloatev';
Procedure Fboolpr32(a:PChar; b:Pointer); cdecl; external TmaxDLL name 'Fboolpr';
Procedure Fvboolpr32(a:PChar; b:Pointer; c:PChar); cdecl; external TmaxDLL name 'Fvboolpr';
Function Fchg32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Pointer; e:FLDLEN32):Integer; cdecl; external TmaxDLL name 'Fchg';
Function Fchksum32(a:Pointer):LongInt; cdecl; external TmaxDLL name 'Fchksum';
Function Fcmp32(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL name 'Fcmp';
Function Fconcat32(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL name 'Fconcat';
Function Fcpy32(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL name 'Fcpy';
Function Fdelall32(a:Pointer; b:FIELDID32):Integer; cdecl; external TmaxDLL name 'Fdelall';
Function Fdelete32(a:Pointer; b:pFIELDID32):Integer; cdecl; external TmaxDLL name 'Fdelete';
Function Fextread32(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL name 'Fextread';
Function Fstrread32(a:Pointer; b:PChar):Integer; cdecl; external TmaxDLL name 'Fstrread';
Function Ffind32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:pFLDLEN32):Pointer; cdecl; external TmaxDLL name 'Ffind';
Function Fvals32(a:Pointer; b:FIELDID32; c:FLDOCC32):PChar; cdecl; external TmaxDLL name 'Fvals';
Function Fvall32(a:Pointer; b:FIELDID32; c:FLDOCC32):LongInt; cdecl; external TmaxDLL name 'Fvall';
Function Ffindocc32(a:Pointer; b:FIELDID32; c:Pointer; d:FLDLEN32):FLDOCC32; cdecl; external TmaxDLL name 'Ffindocc';
Function Fget32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Pointer; e:pFLDLEN32):Integer; cdecl; external TmaxDLL name 'Fget';
Function Fgetalloc32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:pFLDLEN32):Pointer; cdecl; external TmaxDLL name 'Fgetalloc';
Function Fldtype32(a:FIELDID32):Integer; cdecl; external TmaxDLL name 'Fldtype';
Function Fldno32(a:FIELDID32):FLDOCC32; cdecl; external TmaxDLL name 'Fldno';
Function Fielded32(a:Pointer):Integer; cdecl; external TmaxDLL name 'Fielded';
Function Fneeded32(a:FLDOCC32; b:FLDLEN32):LongInt; cdecl; external TmaxDLL name 'Fneeded';
Function Fused32(a:Pointer):LongInt; cdecl; external TmaxDLL name 'Fused';
Function Fidxused32(a:Pointer):LongInt; cdecl; external TmaxDLL name 'Fidxused';
Function Funused32(a:Pointer):LongInt; cdecl; external TmaxDLL name 'Funused';
Function Fsizeof32(a:Pointer):LongInt; cdecl; external TmaxDLL name 'Fsizeof';
Function Fmkfldid32(a:Integer; b:FIELDID32):FIELDID32; cdecl; external TmaxDLL name 'Fmkfldid';
Function Fieldlen32(a:PChar; b:pFLDLEN32; c:pFLDLEN32):FLDLEN32; cdecl; external TmaxDLL name 'Fieldlen';
Function Funindex32(a:Pointer):FLDOCC32; cdecl; external TmaxDLL name 'Funindex';
Function Frstrindex32(a:Pointer; b:FLDOCC32):Integer; cdecl; external TmaxDLL name 'Frstrindex';
Function Findex32(a:Pointer; b:FLDOCC32):Integer; cdecl; external TmaxDLL name 'Findex';
Function Finit32(a:Pointer; b:FLDLEN32):Integer; cdecl; external TmaxDLL name 'Finit';
Function Fjoin32(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL name 'Fjoin';
Function Fojoin32(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL name 'Fojoin';
Function Ffindlast32(a:Pointer; b:FIELDID32; c:pFLDOCC32; d:pFLDLEN32):Pointer; cdecl; external TmaxDLL name 'Ffindlast';
Function Fgetlast32(a:Pointer; b:FIELDID32; c:pFLDOCC32; d:Pointer; e:pFLDLEN32):Integer; cdecl; external TmaxDLL name 'Fgetlast';
Function Flen32(a:Pointer; b:FIELDID32; c:FLDOCC32):Integer; cdecl; external TmaxDLL name 'Flen';
Function Fmove32(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL name 'Fmove';
Function Fnext32(a:Pointer; b:pFIELDID32; c:pFLDOCC32; d:Pointer; e:pFLDLEN32):Integer; cdecl; external TmaxDLL name 'Fnext';
Function Fldid32(a:PChar):FIELDID32; cdecl; external TmaxDLL name 'Fldid';
Function Fname32(a:FIELDID32):PChar; cdecl; external TmaxDLL name 'Fname';
Function Ftype32(a:FIELDID32):PChar; cdecl; external TmaxDLL name 'Ftype';
Procedure Fnmid_unload32; cdecl; external TmaxDLL name 'Fnmid_unload';
Procedure Fidnm_unload32; cdecl; external TmaxDLL name 'Fidnm_unload';
Function Fnum32(a:Pointer):FLDOCC32; cdecl; external TmaxDLL name 'Fnum';
Function Foccur32(a:Pointer; b:FIELDID32):FLDOCC32; cdecl; external TmaxDLL name 'Foccur';
Function Fprint32(a:Pointer):Integer; cdecl; external TmaxDLL name 'Fprint';
Function Ffprint32(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL name 'Ffprint';
Function Fpbprint32(a:Pointer; b:PChar; c:PChar):Integer; cdecl; external TmaxDLL name 'Fpbprint';
Function Fswprint32(a:Pointer; b:PChar; c:PChar):Integer; cdecl; external TmaxDLL name 'Fswprint';
Function Fproj32(a:Pointer; b:pFIELDID32):Integer; cdecl; external TmaxDLL name 'Fproj';
Function Fprojcpy32(a:Pointer; b:Pointer; c:pFIELDID32):Integer; cdecl; external TmaxDLL name 'Fprojcpy';
Function Ftypcvt32(a:pFLDLEN32; b:Integer; c:Pointer; d:Integer; e:FLDLEN32):Pointer; cdecl; external TmaxDLL name 'Ftypcvt';
Function Fupdate32(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL name 'Fupdate';
Function Fvopt32(a:PChar; b:Integer; c:PChar):Integer; cdecl; external TmaxDLL name 'Fvopt';
Function Fvsinit32(a:Pointer; b:PChar):Integer; cdecl; external TmaxDLL name 'Fvsinit';
Function Fvnull32(a:Pointer; b:PChar; c:FLDOCC32; d:PChar):Integer; cdecl; external TmaxDLL name 'Fvnull';
Function Fvselinit32(a:Pointer; b:PChar; c:PChar):Integer; cdecl; external TmaxDLL name 'Fvselinit';
Function Fvftos32(a:Pointer; b:Pointer; c:PChar):Integer; cdecl; external TmaxDLL name 'Fvftos';
Function Fvftopb32(a:Pointer; b:PChar; c:PChar):Integer; cdecl; external TmaxDLL name 'Fvftopb';
Function Fvstof32(a:Pointer; b:Pointer; c:Integer; d:PChar):Integer; cdecl; external TmaxDLL name 'Fvstof';
Procedure Fvrefresh32; cdecl; external TmaxDLL name 'Fvrefresh';
Function Fboolco32(a:PChar):PChar; cdecl; external TmaxDLL name 'Fboolco';
Function Fvboolco32(a:PChar; b:PChar):PChar; cdecl; external TmaxDLL name 'Fvboolco';
Function Fstrerror32(a:Integer):PChar; cdecl; external TmaxDLL name 'Fstrerror';
Function Fvttos32(a:Pointer; b:Pointer; c:PChar):LongInt; cdecl; external TmaxDLL name 'Fvttos';
Function Fvstot32(a:Pointer; b:Pointer; c:LongInt; d:PChar):LongInt; cdecl; external TmaxDLL name 'Fvstot';
Function Fcodeset32(a:PChar):Integer; cdecl; external TmaxDLL name 'Fcodeset';

//field key buffer
Function fbchg_tu32(a:Pointer; b:FLDKEY32; c:NTH; d:Pointer; e:FLDLEN32):Integer; cdecl; external TmaxDLL name 'fbchg_tu';
Function fbgetvals_tu32(a:Pointer; b:FLDKEY32; c:NTH):PChar; cdecl; external TmaxDLL name 'fbgetvals_tu';
Function fbgetvall_tu32(a:Pointer; b:FLDKEY32; c:NTH):LongInt; cdecl; external TmaxDLL name 'fbgetvall_tu';
Function fbgetvals32(a:Pointer; b:FLDKEY32; c:NTH):PChar; cdecl; external TmaxDLL name 'fbgetvals';
Function fbgetvali32(a:Pointer; b:FLDKEY32; c:NTH):LongInt; cdecl; external TmaxDLL name 'fbgetvali';
Function fbget_tu32(a:Pointer; b:FLDKEY32; c:NTH; d:Pointer; e:pFLDLEN32):Integer; cdecl; external TmaxDLL name 'fbget_tu';
Function fbget_tut32(a:Pointer; b:FLDKEY32; c:NTH; d:Pointer; e:pFLDLEN32; f:integer):Integer; cdecl; external TmaxDLL name 'fbget_tut';
Function fbget32(a:Pointer; b:FLDKEY32; c:NTH; d:Pointer; e:pFLDLEN32):Integer; cdecl; external TmaxDLL name 'fbget';
Function fbkeyoccur32(a:Pointer; b:FLDKEY32):NTH; cdecl; external TmaxDLL name 'fbkeyoccur';
Function fbget_fldkey32(a:PChar):FLDKEY32; cdecl; external TmaxDLL name 'fbget_fldkey';
Function fbstrerror32(a:integer):Pointer; cdecl; external TmaxDLL name 'fbstrerror';
Function getfberrno32:integer;  cdecl; external TmaxDLL name 'getfberrno';
Function getfberror32:integer;  cdecl; external TmaxDLL name 'getfberror';
//field key buffer end

{ from libtux }
Function maskprt32(a:Pointer):Integer; cdecl; external TmaxDLL name 'maskprt';
{ from cmddes }
Function do_form32(a:PChar; b:Pointer):PChar; cdecl; external TmaxDLL name 'do_form';

{ definitions of macros for string conversions }

Function Fdel32(a:Pointer; b:FIELDID32; c:FLDOCC32):Integer; cdecl; external TmaxDLL name 'Fdel';
Function Fpres32(a:Pointer; b:FIELDID32; c:FLDOCC32):Integer; cdecl; external TmaxDLL name 'Fpres';
Function Fadds32(a:Pointer; b:FIELDID32; c:Pointer):Integer; cdecl; external TmaxDLL name 'Fadds';
Function Fchgs32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:Pointer):Integer; cdecl; external TmaxDLL name 'Fchgs';
Function Fgets32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:PChar):Integer; cdecl; external TmaxDLL name 'Fgets';
Function Fgetsa32(a:Pointer; b:FIELDID32; c:FLDOCC32; d:pFLDLEN32):PChar; cdecl; external TmaxDLL name 'Fgetsa';
Function Ffinds32(a:Pointer; b:FIELDID32; c:FLDOCC32):PChar; cdecl; external TmaxDLL name 'Ffinds';

Function F16to3232(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL name 'F16to32';
Function F32to1632(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL name 'F32to16';

end.

