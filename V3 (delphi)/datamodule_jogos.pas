unit datamodule_jogos;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TBDJogos = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable1Nome: TWideStringField;
    ADOTable1Descricao: TWideStringField;
    ADOTable1Codigo: TAutoIncField;
    ADOTable1Censura: TWideStringField;
    ADOTable1Genero: TWideStringField;
    ADOTable1Requisitos: TWideStringField;
    ADOTable1Preco: TIntegerField;
    ADOTable1Desenvolvedor: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BDJogos: TBDJogos;

implementation

{$R *.dfm}

end.
