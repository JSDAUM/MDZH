unit FILECOPY;

interface

uses
 Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
 TFILECOPY = class(TComponent)
 private
   FSource,
   FDest     : String;
   procedure DoCopyFile(const SrcFile, DstFile: string);
 public
   procedure CopyFile; virtual;
 published
   property FileSource       : String read FSource write FSource;
   property FileDestination  : String read FDest write FDest;
 end;

procedure Register;

implementation

//uses FTPUPLOADU;

procedure TFILECOPY.CopyFile;
begin
 DoCopyFile(FileSource, FileDestination);
end;

procedure TFILECOPY.DoCopyFile(const SrcFile, DstFile: string);
const
 bufSize = 16384; {Use a 16K buffer. You can use whatever size suits you, though.}
var
   sStream,
   dStream : TFileStream;
   pBuf    : Pointer;
   cnt     : Integer;
   totCnt,
   X,
   strmSize    : LongInt;
begin
   totCnt := 0;
   {Open up the Source File to read it}
   sStream := TFileStream.Create(SrcFile, fmOpenRead or fmShareDenyWrite);

   {Get the size of the entire stream to use for the progress gauge. Note
   we have to call FileSeek first because it will place the pointer
   at the end of the file when we get the file first return value.}
   strmSize := sStream.size;

   try
      { Create the destination file. If it already exists,
      overwrite it. }
      dStream := TFileStream.Create(DstFile, fmCreate or fmShareExclusive);
      try
         GetMem(pBuf, bufSize);
         try
            {Read and write first bufSize bytes from source into the buffer
            If the file size is smaller than the default buffer size, then
            all the user will see is a quick flash of the progress form.}
            cnt := sStream.Read(pBuf^, bufSize);
            cnt := dStream.Write(pBuf^, cnt);

            totCnt := totCnt + cnt;
            {Loop the process of reading and writing}
            while (cnt > 0) do begin
               {Let things in the background proceed while loop is processing}
               Application.ProcessMessages;

               {Read bufSize bytes from source into the buffer}
               cnt := sStream.Read(pBuf^, bufSize);

               {Now write those bytes into destination}
               cnt := dStream.Write(pBuf^, cnt);

               {Increment totCnt for progress and do arithmetic to update the
               gauge}
               totcnt := totcnt + cnt;
{               if NOT prgFrm.CancelIt then
                  with prgFrm.Gauge1 do begin
                     Progress := Round((totCnt / strmSize) * 100);
                     Update;
                  end
               else
               break; }      {If user presses cancel button, then break out of loop}
                        {which will make program go to finally blocks}
            end;

         finally
            FreeMem(pBuf, bufSize);
         end;
      finally

      dStream.Free;

      end;
   finally
      sStream.Free;
   end;
end;

procedure Register;
begin
 {You can change the palette entry to something of your choice}
 RegisterComponents('BD', [TFILECOPY]);
end;

end.
