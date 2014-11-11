unit Datamodule_funcionarios;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule5 = class(TDataModule)
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable1codigo: TAutoIncField;
    ADOTable1Nome: TWideStringField;
    ADOTable1Cargo: TWideStringField;
    ADOTable1Salario: TIntegerField;
    ADOTable1Endereco: TWideStringField;
    ADOTable1Historico: TWideStringField;
    ADOTable1NecessidadeEspecial: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule5: TDataModule5;

implementation

{$R *.dfm}

end.
