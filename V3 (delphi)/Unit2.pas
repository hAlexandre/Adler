unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Grids, DBGrids, jpeg, ExtCtrls;

type
  TForm2 = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit3, Form_alterarjogo, datamodule_usuarios, Form_usuario,
  Form_alterarusuario, Alterar__usuario, datamodule_jogos,
  Form_funcionario;

{$R *.dfm}

procedure TForm2.FormActivate(Sender: TObject);
begin
Form1.Hide;
end;

procedure TForm2.Inserirjogo1Click(Sender: TObject);
begin
  Self.Hide;
  Form3:=TForm3.Create(Application);
  Form3.Show;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Self.hide;
  Form1.Show;
end;

procedure TForm2.Alterarjogo1Click(Sender: TObject);
begin
Form_alterajogo:=TForm_alterajogo.Create(Application);
Form_alterajogo.DBGrid1.refresh;
Form_alterajogo.Show;
end;

procedure TForm2.eladelogin1Click(Sender: TObject);
begin
Self.Hide;
Form1.Show;
end;

procedure TForm2.Inserirusurio1Click(Sender: TObject);
begin
      Formusuario_:=TFormusuario_.Create(Application);
      Formusuario_.Show;
      Self.Hide;
end;

procedure TForm2.AlterarUsurio1Click(Sender: TObject);
begin
Self.Hide;
formAlter_Usuario:=TformAlter_Usuario.Create(Application);
formAlter_Usuario.show;
formAlter_Usuario.DBGrid1.Enabled:=True;
formAlter_Usuario.DBGrid1.Refresh;

end;

end.
