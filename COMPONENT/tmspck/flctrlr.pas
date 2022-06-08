{********************************************************************
Extended filecontrol components
for Delphi 2.0, 3.0, 4.0, 5.0 & C++ Builder 1.0, 3.0, 4.0, 5.0
version 1.1

written by :
           TMS Software
           copyright © 1999-2000
           Email : info@tmssoftware.com
           Website : http://www.tmssoftware.com

The source code is given as is. The author is not responsible
for any possible damage done due to the use of this code.
The component can be freely used in any application. The source
code remains property of the writer and may not be distributed
freely as such.
********************************************************************}

unit flctrlr;

interface

uses
  classes, flctrlex;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents ( 'TMS', [TFileListBoxEx,TDirectoryListBoxEx,TDriveComboBoxEx] );
end;


end.
 
