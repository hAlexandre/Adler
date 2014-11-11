unit datamodule_funcionarios_OK;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdatamodulefuncionarios = class(TDataModule)
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOTable1codigo: TAutoIncField;
    ADOTable1Nome: TWideStringField;
    ADOTable1Cargo: TWideStringField;
    ADOTable1Salario: TIntegerField;
    ADOTable1Endereco: TWideStringField;
    ADOTable1Historico: TWideStringField;
    ADOTable1NecessidadeEspecial: TWideStringField;
    ADOTable1CPF: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  datamodulefuncionarios: Tdatamodulefuncionarios;

implementation

{$R *.dfm}

end.
