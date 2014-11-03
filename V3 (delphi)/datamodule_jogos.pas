unit datamodule_jogos;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdatamodulejogos = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable1Nome: TWideStringField;
    ADOTable1Preco: TIntegerField;
    ADOTable1Descricao: TWideStringField;
    ADOTable1Desenvolvedor: TWideStringField;
    ADOTable1Codigo: TAutoIncField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  datamodulejogos: Tdatamodulejogos;

implementation

{$R *.dfm}

end.
