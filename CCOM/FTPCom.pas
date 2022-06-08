unit FTPCom;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls,
     Forms, Dialogs, NMftp, MsgCom;

//TUXFTP Instance Create
function InitFTP: Boolean;

//TUXFTP Instance Free
function FreeFTP: Boolean;

//TUXFTP Set FTP File Type ASCII
function SetASCIIFTP: Boolean;

//TUXFTP Set FTP File Type Binary
function SetBINFTP: Boolean;

//TUXFTP Connect Host with Server IP, USERID, PASSWORD
function ConnectFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD: String): Boolean;

//TUXFTP Disconnect Host
function DisconnectFTP: Boolean;

//TUXFTP File Download
function DownloadFTP(RemoteFile, LocalFile: String): Boolean;

//TUXFTP File Get
function GetFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                     RemoteFile, LocalFile: String; FTP_MODE: Integer): Boolean;

//TUXFTP ASCII File Get
function GetASCIIFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                     RemoteFile, LocalFile: String): Boolean;

//TUXFTP BINARY File Get
function GetBINFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                     RemoteFile, LocalFile: String): Boolean;

//TUXFTP File Upload
function UpFTP(LocalFile, RemoteFile: String): Boolean;

//TUXFTP File Get
function PutFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                    LocalFile, RemoteFile: String; FTP_MODE: Integer): Boolean;

//TUXFTP ASCII File Get
function PutASCIIFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                     LocalFile, RemoteFile: String): Boolean;

//TUXFTP BINARY File Get
function PutBINFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                   LocalFile, RemoteFile: String): Boolean;

//TUXFTP File Size Check
function CheckFileSizeFTP(LocalFile: String; FTP_FILESIZE: LongInt; FTP_MODE: Integer): Boolean;

//TUXFTP Get RemoteFile Name
function GetLocalFileName(RemoteFile: String): String;

//TUXFTP Set LocalFile Date
function SetLocalFileDate(LocalFile, FTP_DATETIME: String): Boolean;

var
   TUXFTP: TNMFTP;

implementation

//TUXFTP Instance Create
function InitFTP: Boolean;
begin
     try
        TUXFTP := TNMFTP.Create(Application);
     except
           Result := False;
           Exit;
     end;

     Result := True;
end;

//TUXFTP Instance Free
function FreeFTP: Boolean;
begin
     try
        TUXFTP.Free;
     except
           Result := False;
           Exit;
     end;

     Result := True;
end;

//TUXFTP Set FTP File Type ASCII
function SetASCIIFTP: Boolean;
begin
     try
        TUXFTP.Mode(MODE_ASCII);
     except
           Result := False;
           Exit;
     end;

     Result := True;
end;

//TUXFTP Set FTP File Type Binary
function SetBINFTP: Boolean;
begin
     try
        TUXFTP.Mode(MODE_BYTE);
     except
           Result := False;
           Exit;
     end;

     Result := True;
end;

//TUXFTP Connect Host with Server IP, USERID, PASSWORD
function ConnectFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD: String): Boolean;
begin
     try
        TUXFTP.Host := FTP_SVRIP;
        TUXFTP.UserID := FTP_USERID;
        TUXFTP.Password := FTP_PASSWD;
        TUXFTP.Connect;
     except
           Result := False;
           Exit;
     end;

     Result := True;
end;

//TUXFTP Disconnect Host
function DisconnectFTP: Boolean;
begin
     try
        TUXFTP.Disconnect;
     except
           Result := False;
           Exit;
     end;

     Result := True;
end;

//TUXFTP File Download
function DownloadFTP(RemoteFile, LocalFile: String): Boolean;
begin
     try
        TUXFTP.Download(RemoteFile, LocalFile);
     except
           Result := False;
           Exit;
     end;

     Result := True;
end;

//TUXFTP File Get
function GetFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                     RemoteFile, LocalFile: String; FTP_MODE: Integer): Boolean;
begin
     if Not(InitFTP) then
     begin
          ShowMessageM('FTP Instance Creation failed');
          Result := False;
          Exit;
     end;

     if Not(ConnectFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD)) then
     begin
          ShowMessageM('FTP Connection failed');
          Result := False;
          Exit;
     end;

     if FTP_MODE = MODE_ASCII then
     begin
          if Not(SetASCIIFTP) then
          begin
               ShowMessageM('FTP ASCII MODE CHANGE failed');
               Result := False;
               Exit;
          end;
     end
     else if FTP_MODE = MODE_BYTE then
     begin
          if Not(SetBINFTP) then
          begin
               ShowMessageM('FTP BINARY MODE CHANGE failed');
               Result := False;
               Exit;
          end;
     end;

     if Not(DownloadFTP(RemoteFile, LocalFile)) then
     begin
          if FTP_MODE = MODE_ASCII then
          begin
               ShowMessageM('FTP ASCII File Download failed');
          end
          else if FTP_MODE = MODE_BYTE then
          begin
               ShowMessageM('FTP BINARY File Download failed');
          end;
          Result := False;
          Exit;
     end;

     if Not(DisconnectFTP) then
     begin
          ShowMessageM('FTP Disconnection failed');
          Result := False;
          Exit;
     end;

     if Not(FreeFTP) then
     begin
          ShowMessageM('FTP Instance Free failed');
          Result := False;
          Exit;
     end;

     Result := True;
end;

//TUXFTP ASCII File Get
function GetASCIIFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                     RemoteFile, LocalFile: String): Boolean;
begin
     Result := GetFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD, RemoteFile, LocalFile, MODE_ASCII);
end;

//TUXFTP BINARY File Get
function GetBINFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                     RemoteFile, LocalFile: String): Boolean;
begin
     Result := GetFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD, RemoteFile, LocalFile, MODE_BYTE);
end;

//TUXFTP File Upload
function UpFTP(LocalFile, RemoteFile: String): Boolean;
begin
     try
        TUXFTP.Upload(LocalFile, RemoteFile);
     except
           Result := False;
           Exit;
     end;

     Result := True;
end;

//TUXFTP File Get
function PutFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                    LocalFile, RemoteFile: String; FTP_MODE: Integer): Boolean;
begin
     if Not(InitFTP) then
     begin
          ShowMessageM('FTP Instance Creation failed');
          Result := False;
          Exit;
     end;

     if Not(ConnectFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD)) then
     begin
          ShowMessageM('FTP Connection failed');
          Result := False;
          Exit;
     end;

     if FTP_MODE = MODE_ASCII then
     begin
          if Not(SetASCIIFTP) then
          begin
               ShowMessageM('FTP ASCII MODE CHANGE failed');
               Result := False;
               Exit;
          end;
     end
     else if FTP_MODE = MODE_BYTE then
     begin
          if Not(SetASCIIFTP) then
          begin
               ShowMessageM('FTP BINARY MODE CHANGE failed');
               Result := False;
               Exit;
          end;
     end;

     if Not(UpFTP(LocalFile, RemoteFile)) then
     begin
          if FTP_MODE = MODE_ASCII then
          begin
               ShowMessageM('FTP ASCII File Upload failed');
          end
          else if FTP_MODE = MODE_BYTE then
          begin
               ShowMessageM('FTP BINARY File Upload failed');
          end;
          Result := False;
          Exit;
     end;

     if Not(DisconnectFTP) then
     begin
          ShowMessageM('FTP Disconnection failed');
          Result := False;
          Exit;
     end;

     if Not(FreeFTP) then
     begin
          ShowMessageM('FTP Instance Free failed');
          Result := False;
          Exit;
     end;

     Result := True;
end;

//TUXFTP ASCII File Get
function PutASCIIFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                     LocalFile, RemoteFile: String): Boolean;
begin
     Result := PutFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD, LocalFile, RemoteFile, MODE_ASCII);
end;

//TUXFTP BINARY File Get
function PutBINFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD,
                     LocalFile, RemoteFile: String): Boolean;
begin
     Result := PutFileFTP(FTP_SVRIP, FTP_USERID, FTP_PASSWD, LocalFile, RemoteFile, MODE_BYTE);
end;

//TUXFTP File Size Check
function CheckFileSizeFTP(LocalFile: String; FTP_FILESIZE: LongInt; FTP_MODE: Integer): Boolean;
var
   FBIN: file of Byte;
   FASCII: TextFile;
   size, FLine : Longint;
   S: String;
begin
     AssignFile(FBIN, LocalFile);

     Reset(FBIN);

     size := FileSize(FBIN);

     CloseFile(FBIN);

     if FTP_MODE = MODE_ASCII then
     begin
          AssignFile(FASCII, LocalFile);

          Reset(FASCII);

          FLine := 0;

          while not(EOF(FASCII)) do
          begin
               Readln(FASCII, S);
               FLine := FLine + 1;
          end;

          FTP_FILESIZE := FTP_FILESIZE + FLine;

          CloseFile(FASCII);
     end;

     if ftp_filesize = size then
     begin
          Result := True;
     end
     else
     begin
          Result := False;
     end;
end;

//TUXFTP Get RemoteFile Name
function GetLocalFileName(RemoteFile: String): String;
begin
     Result := 'C:\dev\temp\spool\' + Copy(RemoteFile, 11, Length(RemoteFile) - 10);
end;

//TUXFTP Set LocalFile Date 'yyyy-mm-dd hh:mi:ss'
function SetLocalFileDate(LocalFile, FTP_DATETIME: String): Boolean;
var
   FileHandle: Integer;
begin
     try
        FileHandle := FileOpen(LocalFile, fmOpenReadWrite);
        FileSetDate(FileHandle, DateTimeToFileDate(StrToDateTime(FTP_DATETIME)));
        FileClose(FileHandle);
     except
           Result := False;
     end;
     Result := True;
end;

end.
