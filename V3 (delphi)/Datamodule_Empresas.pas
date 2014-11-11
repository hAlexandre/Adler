unit Datamodule_Empresas;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDatamoduleempresas = class(TDataModule)
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    ADOTable1Codigo: TAutoIncField;
    ADOTable1Nome: TWideStringField;
    ADOTable1Razao_social: TWideStringField;
    ADOTable1CNPJ: TIntegerField;
    ADOTable1Endereco: TWideStringField;
    ADOTable1Telefone: TIntegerField;
    ADOTable1Email: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Datamoduleempresas: TDatamoduleempresas;

implementation

{$R *.dfm}

end.
