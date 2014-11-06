unit Form_usuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TFormusuario_ = class(TForm)
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
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure eladelogin1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formusuario_: TFormusuario_;

implementation

uses Unit2, datamodule_usuarios, datamodule_jogos;

{$R *.dfm}

procedure TFormusuario_.eladelogin1Click(Sender: TObject);
begin
Self.Destroy;
Form2.Show;
end;

procedure TFormusuario_.Button1Click(Sender: TObject);
begin

  dtmusuario.ADOTable1.Open;
  dtmusuario.ADOTable1.Insert;
  dtmusuario.ADOTable1.FieldByName('nome').Value:=edit3.Text;
  dtmusuario.ADOTable1.FieldByName('usuario').Value:=edit1.Text;
  dtmusuario.ADOTable1.FieldByName('senha').Value:=edit2.Text;
  dtmusuario.ADOTable1.FieldByName('perfil').Value:=edit4.Text;
  dtmusuario.ADOTable1.FieldByName('endereco').Value:=edit5.Text;
  dtmusuario.ADOTable1.FieldByName('cpf').Value:=edit6.Text;

  dtmusuario.ADOTable1.Post;
  ShowMessage('Usuário inserido com sucesso');
  Self.DestroyHandle;
  Form2.show;

end;

procedure TFormusuario_.Button2Click(Sender: TObject);
begin
Edit6.Text:='';
Edit5.Text:='';
Edit4.Text:='';
Edit3.Text:='';
Edit2.Text:='';
Edit1.text:='';
end;

end.
