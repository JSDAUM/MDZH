unit Fml;

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
    fml_h = class(TComponent)
    public
        constructor Create(AOwner: TComponent); override;
    end;

    FIELDID  = Word;
    FLDLEN   = Word;
    FLDKEY   = word;
    NTH      = integer;
    FLDOCC   = Integer;
    pFIELDID = ^FIELDID;
    pFLDLEN  = ^FLDLEN;
    pFLDOCC  = ^FLDOCC;

Function _Fget_Ferror_addr:Pointer; cdecl; far;
Function getFerror:Integer; cdecl; far;

// field key buffer start
Function fbput(a:Pointer; b:FLDKEY; c:Pointer; d:FLDLEN):Integer; cdecl; far;
Function fbget(a:Pointer; b:FLDKEY; c:NTH; d:Pointer; e:pFLDLEN):Integer; cdecl; far;
Function fbchg_tu(a:Pointer; b:FLDKEY; c:NTH; d:Pointer; e:FLDLEN):Integer; cdecl; far;
Function fbgetvals_tu(a:Pointer; b:FLDKEY; c:NTH):PChar; cdecl; far;
Function fbgetvall_tu(a:Pointer; b:FLDKEY; c:NTH):LongInt; cdecl; far;
Function fbgetvals(a:Pointer; b:FLDKEY; c:NTH):PChar; cdecl; far;
Function fbgetvali(a:Pointer; b:FLDKEY; c:NTH):LongInt; cdecl; far;
Function fbget_tu(a:Pointer; b:FLDKEY; c:NTH; d:Pointer; e:pFLDLEN):Integer; cdecl; far;
Function fbget_tut(a:Pointer; b:FLDKEY; c:NTH; d:Pointer; e:pFLDLEN; f:integer):Integer; cdecl; far;
Function fbkeyoccur(a:Pointer; b:FLDKEY):NTH; cdecl; far;
Function fbget_fldkey(a:PChar):FLDKEY; cdecl; far;
Function fbstrerror(a:integer):Pointer; cdecl; far;
Function getfberrno:integer;  cdecl; far;
//field key buffer end

{ Function for Tuxedo Compatibility }
Function FMLread(a:Pointer; b:Pointer):Integer; cdecl; far;
Function FMLwrite(a:Pointer; b:Pointer):Integer; cdecl; far;
Function Fread(a:Pointer; b:Pointer):Integer; cdecl; far;
Function Fwrite(a:Pointer; b:Pointer):Integer; cdecl; far;

Function CFadd(a:Pointer; b:FIELDID; c:Pointer; d:FLDLEN; e:Integer):Integer; cdecl; far;
Function CFchg(a:Pointer; b:FIELDID; c:FLDOCC; d:Pointer; e:FLDLEN; f:Integer):Integer; cdecl; far;
Function CFfind(a:Pointer; b:FIELDID; c:FLDOCC; d:pFLDLEN; e:Integer):Pointer; cdecl; far;
Function CFfindocc(a:Pointer; b:FIELDID; c:Pointer; d:FLDLEN; e:Integer):FLDOCC; cdecl; far;
Function CFget(a:Pointer; b:FIELDID; c:FLDOCC; d:Pointer; e:pFLDLEN; f:Integer):Integer; cdecl; far;
Function CFgetalloc(a:Pointer; b:FIELDID; c:FLDOCC; d:Integer; e:pFLDLEN):Pointer; cdecl; far;
Procedure F_error(a:PChar); cdecl; far;
Function Fappend(a:Pointer; b:FIELDID; c:Pointer; d:FLDLEN):Integer; cdecl; far;
//Function Fadd(a:Pointer; b:FIELDID; c:Pointer; d:FLDLEN):Integer; cdecl; far;
Function Falloc(a:FLDOCC; b:FLDLEN):Pointer; cdecl; far;
Function Frealloc(a:Pointer; b:FLDOCC; c:FLDLEN):Pointer; cdecl; far;
Function Ffree(a:Pointer):Integer; cdecl; far;
Function Fboolev(a:Pointer; b:PChar):Integer; cdecl; far;
Function Fvboolev(a:Pointer; b:PChar; c:PChar):Integer; cdecl; far;
Function Ffloatev(a:Pointer; b:PChar):Double; cdecl; far;
Function Fvfloatev(a:Pointer; b:PChar; c:PChar):Double; cdecl; far;
Procedure Fboolpr(a:PChar; b:Pointer); cdecl; far;
Procedure Fvboolpr(a:PChar; b:Pointer; c:PChar); cdecl; far;
Function Fchg(a:Pointer; b:FIELDID; c:FLDOCC; d:Pointer; e:FLDLEN):Integer; cdecl; far;
Function Fchksum(a:Pointer):LongInt; cdecl; far;
Function Fcmp(a:Pointer; b:Pointer):Integer; cdecl; far;
Function Fconcat(a:Pointer; b:Pointer):Integer; cdecl; far;
Function Fcpy(a:Pointer; b:Pointer):Integer; cdecl; far;
Function Fdelall(a:Pointer; b:FIELDID):Integer; cdecl; far;
Function Fdelete(a:Pointer; b:pFIELDID):Integer; cdecl; far;
Function Fextread(a:Pointer; b:Pointer):Integer; cdecl; far;
Function Fstrread(a:Pointer; b:PChar):Integer; cdecl; far;
Function Ffind(a:Pointer; b:FIELDID; c:FLDOCC; d:pFLDLEN):Pointer; cdecl; far;
Function Fvals(a:Pointer; b:FIELDID; c:FLDOCC):PChar; cdecl; far;
Function Fvall(a:Pointer; b:FIELDID; c:FLDOCC):LongInt; cdecl; far;
Function Ffindocc(a:Pointer; b:FIELDID; c:Pointer; d:FLDLEN):FLDOCC; cdecl; far;
Function Fget(a:Pointer; b:FIELDID; c:FLDOCC; d:Pointer; e:pFLDLEN):Integer; cdecl; far;
Function Fgetalloc(a:Pointer; b:FIELDID; c:FLDOCC; d:pFLDLEN):Pointer; cdecl; far;
Function Fldtype(a:FIELDID):Integer; cdecl; far;
Function Fldno(a:FIELDID):FLDOCC; cdecl; far;
Function Fielded(a:Pointer):Integer; cdecl; far;
Function Fneeded(a:FLDOCC; b:FLDLEN):LongInt; cdecl; far;
Function Fused(a:Pointer):LongInt; cdecl; far;
Function Fidxused(a:Pointer):LongInt; cdecl; far;
Function Funused(a:Pointer):LongInt; cdecl; far;
Function Fsizeof(a:Pointer):LongInt; cdecl; far;
Function Fmkfldid(a:Integer; b:FIELDID):FIELDID; cdecl; far;
Function Fieldlen(a:PChar; b:pFLDLEN; c:pFLDLEN):FLDLEN; cdecl; far;
Function Funindex(a:Pointer):FLDOCC; cdecl; far;
Function Frstrindex(a:Pointer; b:FLDOCC):Integer; cdecl; far;
Function Findex(a:Pointer; b:FLDOCC):Integer; cdecl; far;
Function Finit(a:Pointer; b:FLDLEN):Integer; cdecl; far;
Function Fjoin(a:Pointer; b:Pointer):Integer; cdecl; far;
Function Fojoin(a:Pointer; b:Pointer):Integer; cdecl; far;
Function Ffindlast(a:Pointer; b:FIELDID; c:pFLDOCC; d:pFLDLEN):Pointer; cdecl; far;
Function Fgetlast(a:Pointer; b:FIELDID; c:pFLDOCC; d:Pointer; e:pFLDLEN):Integer; cdecl; far;
Function Flen(a:Pointer; b:FIELDID; c:FLDOCC):Integer; cdecl; far;
Function Fmove(a:Pointer; b:Pointer):Integer; cdecl; far;
Function Fnext(a:Pointer; b:pFIELDID; c:pFLDOCC; d:Pointer; e:pFLDLEN):Integer; cdecl; far;
Function Fldid(a:PChar):FIELDID; cdecl; far;
Function Fname(a:FIELDID):PChar; cdecl; far;
Function Ftype(a:FIELDID):PChar; cdecl; far;
Procedure Fnmid_unload; cdecl; far;
Procedure Fidnm_unload; cdecl; far;
Function Fnum(a:Pointer):FLDOCC; cdecl; far;
Function Foccur(a:Pointer; b:FIELDID):FLDOCC; cdecl; far;
Function Fprint(a:Pointer):Integer; cdecl; far;
Function Ffprint(a:Pointer; b:Pointer):Integer; cdecl; far;
Function Fpbprint(a:Pointer; b:PChar; c:PChar):Integer; cdecl; far;
Function Fswprint(a:Pointer; b:PChar; c:PChar):Integer; cdecl; far;
Function Fproj(a:Pointer; b:pFIELDID):Integer; cdecl; far;
Function Fprojcpy(a:Pointer; b:Pointer; c:pFIELDID):Integer; cdecl; far;
Function Ftypcvt(a:pFLDLEN; b:Integer; c:Pointer; d:Integer; e:FLDLEN):Pointer; cdecl; far;
Function Fupdate(a:Pointer; b:Pointer):Integer; cdecl; far;
Function Fvopt(a:PChar; b:Integer; c:PChar):Integer; cdecl; far;
Function Fvsinit(a:Pointer; b:PChar):Integer; cdecl; far;
Function Fvnull(a:Pointer; b:PChar; c:FLDOCC; d:PChar):Integer; cdecl; far;
Function Fvselinit(a:Pointer; b:PChar; c:PChar):Integer; cdecl; far;
Function Fvftos(a:Pointer; b:Pointer; c:PChar):Integer; cdecl; far;
Function Fvftopb(a:Pointer; b:PChar; c:PChar):Integer; cdecl; far;
Function Fvstof(a:Pointer; b:Pointer; c:Integer; d:PChar):Integer; cdecl; far;
Procedure Fvrefresh; cdecl; far;
Function Fboolco(a:PChar):PChar; cdecl; far;
Function Fvboolco(a:PChar; b:PChar):PChar; cdecl; far;
Function Fstrerror(a:Integer):PChar; cdecl; far;
Function Fvttos(a:Pointer; b:Pointer; c:PChar):LongInt; cdecl; far;
Function Fvstot(a:Pointer; b:Pointer; c:LongInt; d:PChar):LongInt; cdecl; far;
Function Fcodeset(a:PChar):Integer; cdecl; far;

{ from libtux }
Function maskprt(a:Pointer):Integer; cdecl; far;
{ from cmddes }
Function do_form(a:PChar; b:Pointer):PChar; cdecl; far;

{ definitions of macros for string conversions }
//Function Fdel(a:Pointer; b:FIELDID; c:FLDOCC):Integer; cdecl; far;
Function Fpres(a:Pointer; b:FIELDID; c:FLDOCC):Integer; cdecl; far;
Function Fadds(a:Pointer; b:FIELDID; c:Pointer):Integer; cdecl; far;
Function Fchgs(a:Pointer; b:FIELDID; c:FLDOCC; d:Pointer):Integer; cdecl; far;
Function Fgets(a:Pointer; b:FIELDID; c:FLDOCC; d:PChar):Integer; cdecl; far;
Function Fgetsa(a:Pointer; b:FIELDID; c:FLDOCC; d:pFLDLEN):PChar; cdecl; far;
Function Ffinds(a:Pointer; b:FIELDID; c:FLDOCC):PChar; cdecl; far;

{$IFDEF FML32_H}
Function F16to32(a:Pointer; b:Pointer):Integer; cdecl; far;
Function F32to16(a:Pointer; b:Pointer):Integer; cdecl; far;
{$ENDIF}

implementation

constructor fml_h.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

Function _Fget_Ferror_addr:Pointer; cdecl; external TmaxDLL;
Function getFerror:Integer; cdecl; external TmaxDLL;

//field key buffer
Function fbput(a:Pointer; b:FLDKEY; c:Pointer; d:FLDLEN):Integer; cdecl; external TmaxDLL;
Function fbget(a:Pointer; b:FLDKEY; c:NTH; d:Pointer; e:pFLDLEN):Integer; cdecl; external TmaxDLL;
Function fbchg_tu(a:Pointer; b:FLDKEY; c:NTH; d:Pointer; e:FLDLEN):Integer; cdecl; external TmaxDLL;
Function fbgetvals_tu(a:Pointer; b:FLDKEY; c:NTH):PChar; cdecl; external TmaxDLL;
Function fbgetvall_tu(a:Pointer; b:FLDKEY; c:NTH):LongInt; cdecl; external TmaxDLL;
Function fbgetvals(a:Pointer; b:FLDKEY; c:NTH):PChar; cdecl; external TmaxDLL;
Function fbgetvali(a:Pointer; b:FLDKEY; c:NTH):LongInt; cdecl; external TmaxDLL;
Function fbget_tu(a:Pointer; b:FLDKEY; c:NTH; d:Pointer; e:pFLDLEN):Integer; cdecl; external TmaxDLL;
Function fbget_tut(a:Pointer; b:FLDKEY; c:NTH; d:Pointer; e:pFLDLEN; f:integer):Integer; cdecl; external TmaxDLL;
Function fbkeyoccur(a:Pointer; b:FLDKEY):NTH; cdecl; external TmaxDLL;
Function fbget_fldkey(a:PChar):FLDKEY; cdecl; external TmaxDLL;
Function fbstrerror(a:integer):Pointer; cdecl; external TmaxDLL;
Function getfberrno:integer;  cdecl; external TmaxDLL;
//field key buffer end

{ Function for Tuxedo Compatibility }
Function FMLread(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL;
Function FMLwrite(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL;
Function Fread(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL;
Function Fwrite(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL;

Function CFadd(a:Pointer; b:FIELDID; c:Pointer; d:FLDLEN; e:Integer):Integer; cdecl; external TmaxDLL;
Function CFchg(a:Pointer; b:FIELDID; c:FLDOCC; d:Pointer; e:FLDLEN; f:Integer):Integer; cdecl; external TmaxDLL;
Function CFfind(a:Pointer; b:FIELDID; c:FLDOCC; d:pFLDLEN; e:Integer):Pointer; cdecl; external TmaxDLL;
Function CFfindocc(a:Pointer; b:FIELDID; c:Pointer; d:FLDLEN; e:Integer):FLDOCC; cdecl; external TmaxDLL;
Function CFget(a:Pointer; b:FIELDID; c:FLDOCC; d:Pointer; e:pFLDLEN; f:Integer):Integer; cdecl; external TmaxDLL;
Function CFgetalloc(a:Pointer; b:FIELDID; c:FLDOCC; d:Integer; e:pFLDLEN):Pointer; cdecl; external TmaxDLL;
Procedure F_error(a:PChar); cdecl; external TmaxDLL;
Function Fappend(a:Pointer; b:FIELDID; c:Pointer; d:FLDLEN):Integer; cdecl; external TmaxDLL;
//Function Fadd(a:Pointer; b:FIELDID; c:Pointer; d:FLDLEN):Integer; cdecl; external TmaxDLL;
Function Falloc(a:FLDOCC; b:FLDLEN):Pointer; cdecl; external TmaxDLL;
Function Frealloc(a:Pointer; b:FLDOCC; c:FLDLEN):Pointer; cdecl; external TmaxDLL;
Function Ffree(a:Pointer):Integer; cdecl; external TmaxDLL;
Function Fboolev(a:Pointer; b:PChar):Integer; cdecl; external TmaxDLL;
Function Fvboolev(a:Pointer; b:PChar; c:PChar):Integer; cdecl; external TmaxDLL;
Function Ffloatev(a:Pointer; b:PChar):Double; cdecl; external TmaxDLL;
Function Fvfloatev(a:Pointer; b:PChar; c:PChar):Double; cdecl; external TmaxDLL;
Procedure Fboolpr(a:PChar; b:Pointer); cdecl; external TmaxDLL;
Procedure Fvboolpr(a:PChar; b:Pointer; c:PChar); cdecl; external TmaxDLL;
Function Fchg(a:Pointer; b:FIELDID; c:FLDOCC; d:Pointer; e:FLDLEN):Integer; cdecl; external TmaxDLL;
Function Fchksum(a:Pointer):LongInt; cdecl; external TmaxDLL;
Function Fcmp(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL;
Function Fconcat(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL;
Function Fcpy(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL;
Function Fdelall(a:Pointer; b:FIELDID):Integer; cdecl; external TmaxDLL;
Function Fdelete(a:Pointer; b:pFIELDID):Integer; cdecl; external TmaxDLL;
Function Fextread(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL;
Function Fstrread(a:Pointer; b:PChar):Integer; cdecl; external TmaxDLL;
Function Ffind(a:Pointer; b:FIELDID; c:FLDOCC; d:pFLDLEN):Pointer; cdecl; external TmaxDLL;
Function Fvals(a:Pointer; b:FIELDID; c:FLDOCC):PChar; cdecl; external TmaxDLL;
Function Fvall(a:Pointer; b:FIELDID; c:FLDOCC):LongInt; cdecl; external TmaxDLL;
Function Ffindocc(a:Pointer; b:FIELDID; c:Pointer; d:FLDLEN):FLDOCC; cdecl; external TmaxDLL;
Function Fget(a:Pointer; b:FIELDID; c:FLDOCC; d:Pointer; e:pFLDLEN):Integer; cdecl; external TmaxDLL;
Function Fgetalloc(a:Pointer; b:FIELDID; c:FLDOCC; d:pFLDLEN):Pointer; cdecl; external TmaxDLL;
Function Fldtype(a:FIELDID):Integer; cdecl; external TmaxDLL;
Function Fldno(a:FIELDID):FLDOCC; cdecl; external TmaxDLL;
Function Fielded(a:Pointer):Integer; cdecl; external TmaxDLL;
Function Fneeded(a:FLDOCC; b:FLDLEN):LongInt; cdecl; external TmaxDLL;
Function Fused(a:Pointer):LongInt; cdecl; external TmaxDLL;
Function Fidxused(a:Pointer):LongInt; cdecl; external TmaxDLL;
Function Funused(a:Pointer):LongInt; cdecl; external TmaxDLL;
Function Fsizeof(a:Pointer):LongInt; cdecl; external TmaxDLL;
Function Fmkfldid(a:Integer; b:FIELDID):FIELDID; cdecl; external TmaxDLL;
Function Fieldlen(a:PChar; b:pFLDLEN; c:pFLDLEN):FLDLEN; cdecl; external TmaxDLL;
Function Funindex(a:Pointer):FLDOCC; cdecl; external TmaxDLL;
Function Frstrindex(a:Pointer; b:FLDOCC):Integer; cdecl; external TmaxDLL;
Function Findex(a:Pointer; b:FLDOCC):Integer; cdecl; external TmaxDLL;
Function Finit(a:Pointer; b:FLDLEN):Integer; cdecl; external TmaxDLL;
Function Fjoin(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL;
Function Fojoin(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL;
Function Ffindlast(a:Pointer; b:FIELDID; c:pFLDOCC; d:pFLDLEN):Pointer; cdecl; external TmaxDLL;
Function Fgetlast(a:Pointer; b:FIELDID; c:pFLDOCC; d:Pointer; e:pFLDLEN):Integer; cdecl; external TmaxDLL;
Function Flen(a:Pointer; b:FIELDID; c:FLDOCC):Integer; cdecl; external TmaxDLL;
Function Fmove(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL;
Function Fnext(a:Pointer; b:pFIELDID; c:pFLDOCC; d:Pointer; e:pFLDLEN):Integer; cdecl; external TmaxDLL;
Function Fldid(a:PChar):FIELDID; cdecl; external TmaxDLL;
Function Fname(a:FIELDID):PChar; cdecl; external TmaxDLL;
Function Ftype(a:FIELDID):PChar; cdecl; external TmaxDLL;
Procedure Fnmid_unload; cdecl; external TmaxDLL;
Procedure Fidnm_unload; cdecl; external TmaxDLL;
Function Fnum(a:Pointer):FLDOCC; cdecl; external TmaxDLL;
Function Foccur(a:Pointer; b:FIELDID):FLDOCC; cdecl; external TmaxDLL;
Function Fprint(a:Pointer):Integer; cdecl; external TmaxDLL;
Function Ffprint(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL;
Function Fpbprint(a:Pointer; b:PChar; c:PChar):Integer; cdecl; external TmaxDLL;
Function Fswprint(a:Pointer; b:PChar; c:PChar):Integer; cdecl; external TmaxDLL;
Function Fproj(a:Pointer; b:pFIELDID):Integer; cdecl; external TmaxDLL;
Function Fprojcpy(a:Pointer; b:Pointer; c:pFIELDID):Integer; cdecl; external TmaxDLL;
Function Ftypcvt(a:pFLDLEN; b:Integer; c:Pointer; d:Integer; e:FLDLEN):Pointer; cdecl; external TmaxDLL;
Function Fupdate(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL;
Function Fvopt(a:PChar; b:Integer; c:PChar):Integer; cdecl; external TmaxDLL;
Function Fvsinit(a:Pointer; b:PChar):Integer; cdecl; external TmaxDLL;
Function Fvnull(a:Pointer; b:PChar; c:FLDOCC; d:PChar):Integer; cdecl; external TmaxDLL;
Function Fvselinit(a:Pointer; b:PChar; c:PChar):Integer; cdecl; external TmaxDLL;
Function Fvftos(a:Pointer; b:Pointer; c:PChar):Integer; cdecl; external TmaxDLL;
Function Fvftopb(a:Pointer; b:PChar; c:PChar):Integer; cdecl; external TmaxDLL;
Function Fvstof(a:Pointer; b:Pointer; c:Integer; d:PChar):Integer; cdecl; external TmaxDLL;
Procedure Fvrefresh; cdecl; external TmaxDLL;
Function Fboolco(a:PChar):PChar; cdecl; external TmaxDLL;
Function Fvboolco(a:PChar; b:PChar):PChar; cdecl; external TmaxDLL;
Function Fstrerror(a:Integer):PChar; cdecl; external TmaxDLL;
Function Fvttos(a:Pointer; b:Pointer; c:PChar):LongInt; cdecl; external TmaxDLL;
Function Fvstot(a:Pointer; b:Pointer; c:LongInt; d:PChar):LongInt; cdecl; external TmaxDLL;
Function Fcodeset(a:PChar):Integer; cdecl; external TmaxDLL;

{ from libtux }
Function maskprt(a:Pointer):Integer; cdecl; external TmaxDLL;
{ from cmddes }
Function do_form(a:PChar; b:Pointer):PChar; cdecl; external TmaxDLL;

{ definitions of macros for string conversions }
//Function Fdel(a:Pointer; b:FIELDID; c:FLDOCC):Integer; cdecl; external TmaxDLL;
Function Fpres(a:Pointer; b:FIELDID; c:FLDOCC):Integer; cdecl; external TmaxDLL;
Function Fadds(a:Pointer; b:FIELDID; c:Pointer):Integer; cdecl; external TmaxDLL;
Function Fchgs(a:Pointer; b:FIELDID; c:FLDOCC; d:Pointer):Integer; cdecl; external TmaxDLL;
Function Fgets(a:Pointer; b:FIELDID; c:FLDOCC; d:PChar):Integer; cdecl; external TmaxDLL;
Function Fgetsa(a:Pointer; b:FIELDID; c:FLDOCC; d:pFLDLEN):PChar; cdecl; external TmaxDLL;
Function Ffinds(a:Pointer; b:FIELDID; c:FLDOCC):PChar; cdecl; external TmaxDLL;

{$IFDEF FML32_H}
Function F16to32(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL;
Function F32to16(a:Pointer; b:Pointer):Integer; cdecl; external TmaxDLL;
{$ENDIF}

end.

