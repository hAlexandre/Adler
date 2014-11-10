unit datamodule_usuarios;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TBDUsuarios = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable1usuario: TWideStringField;
    ADOTable1senha: TWideStringField;
    ADOTable1Codigo: TAutoIncField;
    ADOTable1nome: TWideStringField;
    ADOTable1perfil: TWideStringField;
    ADOTable1endereco: TWideStringField;
    ADOTable1cpf: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BDUsuarios: TBDUsuarios;

implementation



{$R *.dfm}

end.
