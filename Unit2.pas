unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.Grids, Vcl.DBGrids;

type
  TConnection = class
  private
    ADOConnection1: TADOConnection;
  public
    function GetConnection1: TADOConnection;
  published
    constructor create;
  end;

implementation

{ TConnection }

constructor TConnection.create;
begin
  ADOConnection1 := TADOConnection.Create(nil);
  ADOConnection1.ConnectionString := 'Provider=MSDASQL.1;Password=1234;Persist Security Info=True;User ID=root;Extended Properties="DRIVER={MySQL ODBC 5.3 Unicode Driver};UID=root;PWD=1234;SERVER=localhost;DATABASE=db;PORT=3306;COLUMN_SIZE_S32=1;"';
  ADOConnection1.LoginPrompt := false;
  ADOConnection1.Connected := true;
end;

function TConnection.GetConnection1: TADOConnection;
begin
  result := ADOConnection1;
end;

end.
