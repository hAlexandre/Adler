unit datamodule_usuarios;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdtmusuario = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable1Cdigo: TAutoIncField;
    ADOTable1usuario: TWideStringField;
    ADOTable1senha: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmusuario: Tdtmusuario;

implementation



{$R *.dfm}

end.
