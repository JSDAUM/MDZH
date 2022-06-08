{	Copyright (c) 1996 Penta Systems Technology, Inc.
	All rights reserved

	THIS IS UNPUBLISHED PROPRIETARY
	SOURCE CODE OF Penta Systems Technology, Inc.
	The copyright notice above does not evidence
        any actual or intended publication of such source code.
}

unit Atmi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

const
     TuxedoDLLName = 'WTUXWS32.DLL';
     { flags to service routines }
     TPNOFLAGS          = $00000000;
     TPNOBLOCK	        = $00000001;	{ non-blocking send/rcv }
     TPSIGRSTRT	        = $00000002;	{ restart rcv on interrupt }
     TPNOREPLY	        = $00000004;	{ no reply expected }
     TPNOTRAN	        = $00000008;	{ not sent in transaction mode }
     TPTRAN	        = $00000010;	{ sent in transaction mode }
     TPNOTIME	        = $00000020;	{ no timeout }
     TPABSOLUTE	        = $00000040;	{ absolute value on tmsetprio }
     TPGETANY	        = $00000080;	{ get any valid reply }
     TPNOCHANGE	        = $00000100;	{ force incoming buffer to match }
     RESERVED_BIT1	= $00000200;	{ reserved for future use }
     TPCONV	        = $00000400;	{ conversational service }
     TPSENDONLY	        = $00000800;	{ send-only mode }
     TPRECVONLY	        = $00001000;	{ recv-only mode }
     TPACK	        = $00002000;	{ }

     { Flags to tpscmt() - Valid TP_COMMIT_CONTROL characteristic values }
     TP_CMT_LOGGED	= $01;	{ return after commit decision is logged }
     TP_CMT_COMPLETE	= $02;	{ return after commit has completed }

     { Flags to tpinit() }
     TPU_MASK   = $00000007;	{ unsolicited notification mask }
     TPU_SIG	= $00000001;	{ signal based notification }
     TPU_DIP	= $00000002;	{ dip-in based notification }
     TPU_IGN	= $00000004;	{ ignore unsolicited messages }

     { Flags to tpconvert() }
     TPTOSTRING	        = $40000000;	{ Convert structure to string }
     TPCONVCLTID	= $00000001;	{ Convert CLIENTID }
     TPCONVTRANID	= $00000002;	{ Convert TRANID }
     TPCONVXID	        = $00000004;	{ Convert XID }

     TPCONVMAXSTR	= 256;		{ Maximum string size }

     { Return values to tpchkauth() }
     TPNOAUTH	= 0;		{ no authentication }
     TPSYSAUTH	= 1;		{ system authentication }
     TPAPPAUTH	= 2;		{ system and application authentication }

     MAXTIDENT	= 30;		{ max len of a /T identifier }

     {
     * tperrno values - error codes
     * The man pages explain the context in which the following error codes
     * can return.
     }

     TPMINVAL	     = 0;	{ minimum error message }
     TPEABORT	     = 1;
     TPEBADDESC	     = 2;
     TPEBLOCK	     = 3;
     TPEINVAL	     = 4;
     TPELIMIT	     = 5;
     TPENOENT	     = 6;
     TPEOS	     = 7;
     TPEPERM	     = 8;
     TPEPROTO	     = 9;
     TPESVCERR	     = 10;
     TPESVCFAIL	     = 11;
     TPESYSTEM	     = 12;
     TPETIME	     = 13;
     TPETRAN	     = 14;
     TPGOTSIG	     = 15;
     TPERMERR	     = 16;
     TPEITYPE	     = 17;
     TPEOTYPE	     = 18;
     TPERELEASE	     = 19;
     TPEHAZARD	     = 20;
     TPEHEURISTIC    = 21;
     TPEEVENT	     = 22;
     TPEMATCH	     = 23;
     TPEDIAGNOSTIC   = 24;
     TPEMIB	     = 25;
     TPMAXVAL	     = 26;	{ maximum error message }
     {
     *  WARNING:  when adding new error messages above, remember to:
     *	- increase TPMAXVAL
     *	- add a string for the message to LIBTUX.text
     *	- add an array entry in _tmemsgs[]
     }

     { conversations - events }
     TPEV_DISCONIMM	= $0001;
     TPEV_SVCERR	= $0002;
     TPEV_SVCFAIL	= $0004;
     TPEV_SVCSUCC	= $0008;
     TPEV_SENDONLY	= $0020;

     { START QUEUED MESSAGES ADD-ON }

     TMQNAMELEN	    = 15;
     TMMSGIDLEN	    = 32;
     TMCORRIDLEN    = 32;

     { structure elements that are valid - set in flags }
     TPQCORRID	          = $00001;		{ set/get correlation id }
     TPQFAILUREQ	  = $00002;		{ set/get failure queue }
     TPQBEFOREMSGID	  = $00004;		{ enqueue before message id }
     TPQGETBYMSGID	  = $00008;		{ dequeue by msgid }
     TPQMSGID	          = $00010;		{ get msgid of enq/deq message }
     TPQPRIORITY	  = $00020;		{ set/get message priority }
     TPQTOP		  = $00040;		{ enqueue at queue top }
     TPQWAIT		  = $00080;		{ wait for dequeuing }
     TPQREPLYQ	          = $00100;		{ set/get reply queue }
     TPQTIME_ABS	  = $00200;		{ set absolute time }
     TPQTIME_REL	  = $00400;		{ set absolute time }
     TPQGETBYCORRID	  = $00800;		{ dequeue by corrid }
     TPQPEEK		  = $01000;		{ peek }

     { THESE MUST MATCH THE DEFINITIONS IN qm.h }
     QMEINVAL	  = -1;
     QMEBADRMID	  = -2;
     QMENOTOPEN	  = -3;
     QMETRAN	  = -4;
     QMEBADMSGID  = -5;
     QMESYSTEM	  = -6;
     QMEOS	  = -7;
     QMEABORTED	  = -8;
     QMENOTA	  = QMEABORTED;
     QMEPROTO	  = -9;
     QMEBADQUEUE  = -10;
     QMENOMSG	  = -11;
     QMEINUSE	  = -12;
     QMENOSPACE	  = -13;
     { END QUEUED MESSAGES ADD-ON }

     { START EVENT BROKER MESSAGES }
     TPEVSERVICE   = $00000001;
     TPEVQUEUE	   = $00000002;
     TPEVTRAN	   = $00000004;
     TPEVPERSIST   = $00000008;

     TPUNSOLERR = TFarProc(-1);
     XATMI_SERVICE_NAME_LENGTH = 32;


type
    atmi_h = class(TComponent)
    end;

    { tpinit(3) interface structure }
    tpinfo_t = record
	     usrname: array[0..MAXTIDENT + 1] of char;	{ client user name }
	     cltname: array[0..MAXTIDENT + 1] of char;	{ application client name }
	     passwd:  array[0..MAXTIDENT + 1] of char;	{ application password }
	     grpname: array[0..MAXTIDENT + 1] of char;	{ client group name }
	     flags:   LongInt;		                { initialization flags }
	     datalen: LongInt;		                { length of app specific data }
	     data:    LongInt;		                { placeholder for app data }
     end;
     pTPINIT = ^tpinfo_t;

     { TPTRANID structure for tpsuspend(3) and tpresume(3) }
     tp_tran_t = record
               info: array[0..5] of LongInt;
     end;
     pTPTRANID = ^tp_tran_t;

     { client identifier structure }
     clientid_t = record
	        clientdata: array[0..3] of LongInt;	{ reserved for internal use }
     end;
     pCLIENTID = ^clientid_t;

     tpqctl_t = record		                          { control parameters to queue primitives }
	      flags: LongInt;		                  { indicates which of the values are set }
	      deq_time: LongInt;		          { absolute/relative  time for dequeuing }
	      priority: LongInt;		          { enqueue priority }
	      diagnostic: LongInt;	                  { indicates reason for failure }
	      msgid: array[0..TMMSGIDLEN-1] of char;	  { id of message before which to queue }
	      corrid: array[0..TMCORRIDLEN-1] of char;    { correlation id used to identify message }
	      replyqueue: array[0..TMQNAMELEN] of char;	  { queue name for reply message }
	      failurequeue: array[0..TMQNAMELEN] of char; { queue name for failure message }
	      cltid: clientid_t;		                  { client identifier for originating client }
	      urcode: LongInt;		                  { application user-return code }
	      appkey: LongInt;		                  { application authentication client key }
     end;
     pTPQCTL = ^tpqctl_t;

     { Subscription Control structure }
     tpevctl_t = record
	       flags: LongInt;
	       name1: array[0..XATMI_SERVICE_NAME_LENGTH-1] of char;
	       name2: array[0..XATMI_SERVICE_NAME_LENGTH-1] of char;
	       qctl: tpqctl_t;
     end;
     pTPEVCTL = tpevctl_t;

     pLongInt = ^LongInt;
     pInteger = ^Integer;

Function gettperrno:Integer; stdcall; far;
Function gettpurcode:LongInt; stdcall; far;

Function tpalloc(a:PChar; b:PChar; c:LongInt):Pointer; stdcall; far;
//Function tpalloc32(a:PChar; b:PChar; c:LongInt):Pointer; stdcall; far;
Function tprealloc(a:Pointer; b:LongInt):Pointer; stdcall; far;
Function tpcall(a:PChar; b:Pointer; c:LongInt; d:Pointer; e:pLongInt; f:LongInt):Integer; stdcall; far;
Function tpacall(a:PChar; b:Pointer; c:LongInt; d:LongInt):Integer; stdcall; far;
Function tpgetrply(a:pInteger; b:Pointer; c:pLongInt; d:LongInt):Integer; stdcall; far;
Function tpcancel(a:Integer):Integer; stdcall; far;
Function tpscmt(a:LongInt):Integer; stdcall; far;
Function tpabort(a:LongInt):Integer; stdcall; far;
Function tpbegin(a:LongInt; b:LongInt):Integer; stdcall; far;
Function tpcommit(a:LongInt):Integer; stdcall; far;
Function tpconvert(a:Pointer; b:Pointer; c:LongInt):Integer; stdcall; far;
Function tpsuspend(a:pTPTRANID; b:LongInt):Integer; stdcall; far;
Function tpresume(a:pTPTRANID; b:LongInt):Integer; stdcall; far;
Function tpinit(a:pTPINIT):Integer; stdcall; far;
Function tpterm:Integer; stdcall; far;
Function tpsprio(a:Integer; b:LongInt):Integer; stdcall; far;
Function tpgprio:Integer; stdcall; far;
Function tpgetlev:Integer; stdcall; far;
Function tptypes(a:Pointer; b:PChar; c:PChar):LongInt; stdcall; far;
Procedure tpfree(a:Pointer); stdcall; far;
Function tpchkauth:Integer; stdcall; far;
Function tpbroadcast(a:PChar; b:PChar; c:PChar; d:Pointer; e:LongInt; f:LongInt):Integer; stdcall; far;
Function tpnotify(a:pCLIENTID; b:Pointer; c:LongInt; d:LongInt):Integer; stdcall; far;
Function tpsetunsol(a:TFarProc):TFarProc; stdcall; far;
Function tpchkunsol:Integer; stdcall; far;
Function tpstrerror(a:Integer):PChar; stdcall; far;

{ conversations }
Function tpsend(a:Integer; b:Pointer; c:LongInt; d:LongInt; e:pLongInt):Integer; stdcall; far;
Function tprecv(a:Integer; b:Pointer; c:pLongInt; d:LongInt; e:pLongInt):Integer; stdcall; far;
Function tpconnect(a:PChar; b:Pointer; c:LongInt; d:LongInt):Integer; stdcall; far;
Function tpdiscon(a:Integer):Integer; stdcall; far;

{ /T Addition }
Function bq(a:PChar):Integer; stdcall; far;

{ /WS additions }
Function AEWisblocked:Integer; stdcall; far;
Function AEWsetblockinghook(a:TFarProc):TFarProc; stdcall; far;
Function AEWsetunsol(a:Word; b:Word):Integer; stdcall; far;

Function tuxgetenv(a:PChar):PChar; stdcall; far;
Function tuxputenv(a:PChar):Integer; stdcall; far;
Function tuxreadenv(a:PChar; b:PChar):Integer; stdcall; far;

Function tpenqueue(a:PChar; b:PChar; c:pTPQCTL; d:Pointer; e:LongInt; f:LongInt):Integer; stdcall; far;
Function tpdequeue(a:PChar; b:PChar; c:pTPQCTL; d:Pointer; e:pLongInt; f:LongInt):Integer; stdcall; far;

{ Function prototypes }
Function tpsubscribe(a:PChar; b:PChar; c:pTPEVCTL; d:LongInt):LongInt; stdcall; far;
Function tpunsubscribe(a:LongInt; b:LongInt):Integer; stdcall; far;
Function tppost(a:PChar; b:Pointer; c:LongInt; d:LongInt):Integer; stdcall; far;
{ END EVENT BROKER MESSAGES }

Procedure Register;

implementation

Function gettperrno:Integer; stdcall; external TuxedoDLLName;
Function gettpurcode:LongInt; stdcall; external TuxedoDLLName;

Function tpalloc(a:PChar; b:PChar; c:LongInt):Pointer; stdcall; external TuxedoDLLName;
//Function tpalloc32(a:PChar; b:PChar; c:LongInt):Pointer; stdcall; external TuxedoDLLName;
Function tprealloc(a:Pointer; b:LongInt):Pointer; stdcall; external TuxedoDLLName;
Function tpcall(a:PChar; b:Pointer; c:LongInt; d:Pointer; e:pLongInt; f:LongInt):Integer; stdcall; external TuxedoDLLName;
Function tpacall(a:PChar; b:Pointer; c:LongInt; d:LongInt):Integer; stdcall; external TuxedoDLLName;
Function tpgetrply(a:pInteger; b:Pointer; c:pLongInt; d:LongInt):Integer; stdcall; external TuxedoDLLName;
Function tpcancel(a:Integer):Integer; stdcall; external TuxedoDLLName;
Function tpscmt(a:LongInt):Integer; stdcall; external TuxedoDLLName;
Function tpabort(a:LongInt):Integer; stdcall; external TuxedoDLLName;
Function tpbegin(a:LongInt; b:LongInt):Integer; stdcall; external TuxedoDLLName;
Function tpcommit(a:LongInt):Integer; stdcall; external TuxedoDLLName;
Function tpconvert(a:Pointer; b:Pointer; c:LongInt):Integer; stdcall; external TuxedoDLLName;
Function tpsuspend(a:pTPTRANID; b:LongInt):Integer; stdcall; external TuxedoDLLName;
Function tpresume(a:pTPTRANID; b:LongInt):Integer; stdcall; external TuxedoDLLName;
Function tpinit(a:pTPINIT):Integer; stdcall; external TuxedoDLLName;
Function tpterm:Integer; stdcall; external TuxedoDLLName;
Function tpsprio(a:Integer; b:LongInt):Integer; stdcall; external TuxedoDLLName;
Function tpgprio:Integer; stdcall; external TuxedoDLLName;
Function tpgetlev:Integer; stdcall; external TuxedoDLLName;
Function tptypes(a:Pointer; b:PChar; c:PChar):LongInt; stdcall; external TuxedoDLLName;
Procedure tpfree(a:Pointer); stdcall; external TuxedoDLLName;
Function tpchkauth:Integer; stdcall; external TuxedoDLLName;
Function tpbroadcast(a:PChar; b:PChar; c:PChar; d:Pointer; e:LongInt; f:LongInt):Integer; stdcall; external TuxedoDLLName;
Function tpnotify(a:pCLIENTID; b:Pointer; c:LongInt; d:LongInt):Integer; stdcall; external TuxedoDLLName;
Function tpsetunsol(a:TFarProc):TFarProc; stdcall; external 'wtuxws32.dll';
Function tpchkunsol:Integer; stdcall; external TuxedoDLLName;
Function tpstrerror(a:Integer):PChar; stdcall; external TuxedoDLLName;

{ conversations }
Function tpsend(a:Integer; b:Pointer; c:LongInt; d:LongInt; e:pLongInt):Integer; stdcall; external TuxedoDLLName;
Function tprecv(a:Integer; b:Pointer; c:pLongInt; d:LongInt; e:pLongInt):Integer; stdcall; external TuxedoDLLName;
Function tpconnect(a:PChar; b:Pointer; c:LongInt; d:LongInt):Integer; stdcall; external TuxedoDLLName;
Function tpdiscon(a:Integer):Integer; stdcall; external TuxedoDLLName;

{ /T Addition }
Function bq(a:PChar):Integer; stdcall; external TuxedoDLLName;

{ /WS additions }
Function AEWisblocked:Integer; stdcall; external TuxedoDLLName;
Function AEWsetblockinghook(a:TFarProc):TFarProc; stdcall; external TuxedoDLLName;
Function AEWsetunsol(a:Word; b:Word):Integer; stdcall; external TuxedoDLLName;

Function tuxgetenv(a:PChar):PChar; stdcall; external TuxedoDLLName;
Function tuxputenv(a:PChar):Integer; stdcall; external TuxedoDLLName;
Function tuxreadenv(a:PChar; b:PChar):Integer; stdcall; external TuxedoDLLName;

Function tpenqueue(a:PChar; b:PChar; c:pTPQCTL; d:Pointer; e:LongInt; f:LongInt):Integer; stdcall; external TuxedoDLLName;
Function tpdequeue(a:PChar; b:PChar; c:pTPQCTL; d:Pointer; e:pLongInt; f:LongInt):Integer; stdcall; external TuxedoDLLName;

{ Function prototypes }
Function tpsubscribe(a:PChar; b:PChar; c:pTPEVCTL; d:LongInt):LongInt; stdcall; external TuxedoDLLName;
Function tpunsubscribe(a:LongInt; b:LongInt):Integer; stdcall; external TuxedoDLLName;
Function tppost(a:PChar; b:Pointer; c:LongInt; d:LongInt):Integer; stdcall; external TuxedoDLLName;
{ END EVENT BROKER MESSAGES }

procedure Register;
begin
  RegisterComponents('Tux61', [atmi_h]);
end;

end.
