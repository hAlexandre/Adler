unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Menus, StdCtrls;

type
  TForm3 = class(TForm)
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
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    eladeLogin1: TMenuItem;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure eladeLogin1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses datamodule_jogos, Unit2, Unit1;

{$R *.dfm}

procedure TForm3.Button2Click(Sender: TObject);
begin
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  Form2.show;
  Self.Hide;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  datamodulejogos.ADOTable1.Open;
  datamodulejogos.ADOTable1.Insert;

      datamodulejogos.ADOTable1.FieldByName('Nome').Value:=edit1.Text;
      datamodulejogos.ADOTable1.FieldByName('Descricao').Value:=edit2.Text;
      datamodulejogos.ADOTable1.FieldByName('Preco').Value:=StrToFloat(edit3.Text);

  datamodulejogos.ADOTable1.Post;
end;

procedure TForm3.eladeLogin1Click(Sender: TObject);
begin
Self.Hide;
Form1.Show;
end;

end.
