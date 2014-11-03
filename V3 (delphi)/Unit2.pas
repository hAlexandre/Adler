unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Grids, DBGrids;

type
  TForm2 = class(TForm)
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
    eladelogin1: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure Inserirjogo1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Alterarjogo1Click(Sender: TObject);
    procedure eladelogin1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit3, Form_alterarjogo, datamodule_usuarios;

{$R *.dfm}

procedure TForm2.FormActivate(Sender: TObject);
begin
Form1.Hide;
end;

procedure TForm2.Inserirjogo1Click(Sender: TObject);
begin
  Self.Hide;
  Form3.Show;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Self.hide;
  Form1.Show;
end;

procedure TForm2.Alterarjogo1Click(Sender: TObject);
begin
  Self.hide;
  Form_alterajogo.Show;
end;

procedure TForm2.eladelogin1Click(Sender: TObject);
begin
Self.Hide;
Form1.Show;
end;

end.
