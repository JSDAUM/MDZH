unit DdeWinFaxConv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DdeMan;

const
  WINFAX_SERVICE = 'FAXMNG32';
  WINFAX_TOPIC = 'TRANSMIT';
  WINFAX_ITEM = 'sendfax';

type
//  ELinkWinFaxFailure = class(Exception);

  TSendFaxParams = class(TPersistent)
  private
    FPhoneNumber:string;
    FSendDateTime:TDateTime;
    FRecipientName:string;
    FRecipientCompany:string;
    FSubject:string;
    FKeywords:string;
    FBillingCode:string;
    FBftFax:string;
    { Private declarations }
  public
    constructor Create;
    destructor Destroy; override;
    { Public declarations }
  published
    property PhoneNumber:string read FPhoneNumber write FPhoneNumber;
    property SendDateTime:TDateTime read FSendDateTime write FSendDateTime;
    property RecipientName:string read FRecipientName write FRecipientName;
    property RecipientCompany:string read FRecipientCompany write FRecipientCompany;
    property Subject:string read FSubject write FSubject;
    property Keywords:string read FKeywords write FKeywords;
    property BillingCode:string read FBillingCode write FBillingCode;
    property BftFax:string read FBftFax write FBftFax;
    { Published declarations }
  end;

  TDdeWinFaxConv = class(TDdeClientConv)
  private
    FIncludeSendDateTime:boolean;
    FLocalAreaCode:string;
    FRemoveLocalAreaCode:boolean;
    FDialPrefix:string;
    FLongDistancePrefix:string;
    FSendFaxParams:TSendFaxParams;
    FDialAsEntered:boolean;

    function getLocalAreaCode:string;
    function getDialPrefix:string;
    function getLongDistancePrefix:string;

    procedure setLocalAreaCode(Value: string);
    procedure setDialPrefix(Value: string);
    procedure setLongDistancePrefix(Value: string);

    function FormatPhoneNo:string;
    { Private declarations }
  protected
    { Protected declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function SetWinFaxLink:boolean;
    procedure Execute;
    { Public declarations }
  published
    property IncludeSendDateTime:boolean read FIncludeSendDateTime write FIncludeSendDateTime;
    property LocalAreaCode:string read getLocalAreaCode write setLocalAreaCode;
    property RemoveLocalAreaCode:boolean read FRemoveLocalAreaCode write FRemoveLocalAreaCode;
    property DialPrefix:string read getDialPrefix write setDialPrefix;
    property LongDistancePrefix:string read getLongDistancePrefix write setLongDistancePrefix;
    property SendFaxParams:TSendFaxParams read FSendFaxParams write FSendFaxParams;
    property DialAsEntered:boolean read FDialAsEntered write FDialAsEntered;
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('uniHISPACK', [TDdeWinFaxConv]);
end;

constructor TSendFaxParams.Create;
begin
     inherited Create;
     FPhoneNumber := '555-5555';
     FSendDateTime := Now;
     FRecipientName := '';
     FRecipientCompany := '';
     FSubject := '';
     FKeywords := '';
     FBillingCode := '';
     FBftFax := 'Fax';
end;

destructor TSendFaxParams.Destroy;
begin
     inherited Destroy;
end;

constructor TDdeWinFaxConv.Create(AOwner: TComponent);
begin
     inherited Create(AOwner);

     FIncludeSendDateTime := False;
     FLocalAreaCode := '';
     FRemoveLocalAreaCode := False;
     FDialPrefix := '';
     FLongDistancePrefix := '';
     FSendFaxParams := TSendFaxParams.Create;
     FDialAsEntered := True;
end;

destructor TDdeWinFaxConv.Destroy;
begin
     FSendFaxParams.Free;
     inherited Destroy;
end;

function TDdeWinFaxConv.SetWinFaxLink:boolean;
begin
     Result := SetLink(WINFAX_SERVICE, WINFAX_TOPIC);
end;

procedure TDdeWinFaxConv.Execute;
var
   sRecipient, sNumber, sDate, sTime:string;
begin
     // Create & send the WinFax "recipient" DDE command
     with FSendFaxParams do begin
          if (not DialAsEntered) then sNumber := FormatPhoneNo
          else sNumber := PhoneNumber;

          if IncludeSendDateTime then begin
             sTime := FormatDateTime('hh:mm:ss',SendDateTime);
             sDate := FormatDateTime('mm/dd/yy',SendDateTime);
          end
          else begin
               sTime := '';
               sDate := '';
          end;

          sRecipient := 'recipient("' + sNumber             + '","' +
                                        sTime               + '","' +
                                        sDate               + '","' +
                                        RecipientName       + '","' +
                                        RecipientCompany    + '","' +
                                        Subject             + '","' +
                                        Keywords            + '","' +
                                        BillingCode         + '","' +
                                        BftFax              + '")';
     end;
     PokeData(WINFAX_ITEM,PChar(sRecipient));
end;

function TDdeWinFaxConv.getLocalAreaCode:string;
begin
     Result := FLocalAreaCode;
end;

function TDdeWinFaxConv.getDialPrefix:string;
begin
     Result := FDialPrefix;
end;

function TDdeWinFaxConv.getLongDistancePrefix:string;
begin
     Result := FLongDistancePrefix;
end;

procedure TDdeWinFaxConv.setLocalAreaCode(Value: string);
begin
     FLocalAreaCode := Value;
end;

procedure TDdeWinFaxConv.setDialPrefix(Value: string);
begin
     FDialPrefix := Value;
end;

procedure TDdeWinFaxConv.setLongDistancePrefix(Value: string);
begin
     FLongDistancePrefix := Value;
end;

function TDdeWinfaxConv.FormatPhoneNo:string;
const
     MAX_AREACODE = 3;
     MIN_LOCALNO = 7;
var
   i, max:integer;
   sTempAreaCode, sTempPhoneNo, sPhoneNo:string;

   function isNum(c:char):boolean;
   begin
        Result := ((c >= '0') and (c <= '9'));
   end;

begin
     // grab numbers, split them into area code and phone number...
     sTempAreaCode := '';
     sTempPhoneNo := '';
     sPhoneNo := SendFaxParams.PhoneNumber;
     max := Length(sPhoneNo);
     for i := 1 to max do begin
         if isNum(sPhoneNo[i]) then begin
            if Length(sTempAreaCode) < MAX_AREACODE then begin
               sTempAreaCode := sTempAreaCode + sPhoneNo[i];
            end
            else begin
                 sTempPhoneNo := sTempPhoneNo + sPhoneNo[i];
            end;
         end;
     end;

     // logic to reconnect area code and phone number...
     if (Length(sTempPhoneNo) < MIN_LOCALNO) then begin
        // not enough digits to make a long distance number
        sTempPhoneNo := sTempAreaCode + sTempPhoneNo;
     end
     else if ((not RemoveLocalAreaCode) or
              (sTempAreaCode <> LocalAreaCode)) then begin
          // combine area code and phone number
          sTempPhoneNo := LongDistancePrefix + sTempAreaCode + sTempPhoneNo;
     end;

     Result := DialPrefix + sTempPhoneNo;
end;

end.
