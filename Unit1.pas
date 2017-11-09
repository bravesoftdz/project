unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.Grids, Vcl.DBGrids,
  unit2;

type
  TForm1 = class(TForm)
  published
    Button1: TButton;
    //ADOConnection1: TADOConnection;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    /// <link>aggregation</link>
    Connection: TConnection;
    constructor create(AOwner: TComponent); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

constructor TForm1.create(AOwner: TComponent);
begin
  inherited;
  Connection := TConnection.create;
  ADOQuery1.Connection := Connection.GetConnection1;
  ADOQuery1.Active := true;
end;

end.
