unit Form_alterarjogo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, DB, ADODB, Grids, DBGrids;

type
  TForm_alterajogo = class(TForm)
    MainMenu1: TMainMenu;
    Usuario1: TMenuItem;
    Inserirusurio1: TMenuItem;
    AlterarUsurio1: TMenuItem;
    Removerusuario1: TMenuItem;
    Jogo1: TMenuItem;
    Inserirjogo1: TMenuItem;
    Alterarjogo1: TMenuItem;
    Removerjogo1: TMenuItem;
    Funcionrio1: TMenuItem;
    InserirFuncionrio1: TMenuItem;
    AlterarFuncionrio1: TMenuItem;
    RemoverFuncionrio1: TMenuItem;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_alterajogo: TForm_alterajogo;

implementation

uses datamodule_jogos;

{$R *.dfm}

procedure TForm_alterajogo.Button1Click(Sender: TObject);
begin
                 ADOQuery1.Close; {Fecha a query}
                 ADOQuery1.SQL.Clear; {Limpa o conteúdo da propriedade SQL}
                 ADOQuery1.SQL.Add('SELECT * from Jogo');
                 ADOQuery1.SQL.Add('where Nome like'+#39+Edit1.text+'%'+#39);
                 ADOQuery1.Open ;
end;

end.
