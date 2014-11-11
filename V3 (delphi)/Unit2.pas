unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Grids, DBGrids, jpeg, ExtCtrls;

type
  TTelaInicial = class(TForm)
    MainMenu1: TMainMenu;
    Usuario1: TMenuItem;
    Inserirusurio1: TMenuItem;
    AlterarUsurio1: TMenuItem;
    Jogo1: TMenuItem;
    Inserirjogo1: TMenuItem;
    Alterarjogo1: TMenuItem;
    Funcionrio1: TMenuItem;
    InserirFuncionrio1: TMenuItem;
    AlterarFuncionrio1: TMenuItem;
    RemoverFuncionrio1: TMenuItem;
    eladelogin1: TMenuItem;
    Background: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Button3: TButton;
    Button4: TButton;
    Label4: TLabel;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Inserirjogo1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Alterarjogo1Click(Sender: TObject);
    procedure eladelogin1Click(Sender: TObject);
    procedure Inserirusurio1Click(Sender: TObject);
    procedure AlterarUsurio1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaInicial: TTelaInicial;

implementation

uses Unit1, Unit3, Form_alterarjogo, datamodule_usuarios, Form_usuario,
  Form_alterarusuario, Alterar__usuario, datamodule_jogos,
  Form_funcionario, Unit4, inserirfuncionario;

{$R *.dfm}

procedure TTelaInicial.FormActivate(Sender: TObject);
begin
TelaLogin.Hide;
end;

procedure TTelaInicial.Inserirjogo1Click(Sender: TObject);
begin
  Self.Hide;
  InserirJogo:=TInserirJogo.Create(Application);
  InserirJogo.Show;
end;

procedure TTelaInicial.Button1Click(Sender: TObject);
begin
  Self.hide;
  TelaLogin.Show;
end;

procedure TTelaInicial.Alterarjogo1Click(Sender: TObject);
begin
ConsultarJogo:=TConsultarJogo.Create(Application);
ConsultarJogo.DBGrid1.refresh;
ConsultarJogo.Show;
end;

procedure TTelaInicial.eladelogin1Click(Sender: TObject);
var confirma : integer;
begin
confirma := MessageDlg('Deseja mesmo sair?',mtCustom, mbOKCancel, 0);
       if confirma = mrOK then
        begin
          Self.Hide;
          TelaLogin.Show;
        end;
end;

procedure TTelaInicial.Inserirusurio1Click(Sender: TObject);
begin
      InserirUsuario:=TInserirUsuario.Create(Application);
      InserirUsuario.Show;
      Self.Hide;
end;

procedure TTelaInicial.AlterarUsurio1Click(Sender: TObject);
begin
Self.Hide;
AlterarUsuario:=TAlterarUsuario.Create(Application);
AlterarUsuario.show;
AlterarUsuario.DBGrid1.Enabled:=True;
AlterarUsuario.DBGrid1.Refresh;

end;

procedure TTelaInicial.Button5Click(Sender: TObject);
begin
Form_inserirfuncionario:=TForm_inserirfuncionario.Create(Application);
Form_inserirfuncionario.show;
Self.hide;

end;

end.
