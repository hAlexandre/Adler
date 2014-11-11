unit inserirfuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, jpeg, ExtCtrls;

type
  TForm_inserirfuncionario = class(TForm)
    ImagemInserirusuario: TImage;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_inserirfuncionario: TForm_inserirfuncionario;

implementation

uses Alterar__usuario, Datamodule_funcionarios, datamodule_jogos,
  datamodule_usuarios, Form_alterarjogo, Form_alterarusuario,
  Form_funcionario, Form_usuario, Unit1, Unit2, Unit3,
  datamodule_funcionarios_OK, Unit4;

{$R *.dfm}

procedure TForm_inserirfuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Self.Destroy;
TelaInicial.Show;
end;

procedure TForm_inserirfuncionario.Button3Click(Sender: TObject);
begin
Self.Destroy;
TelaInicial.Show;

end;

procedure TForm_inserirfuncionario.RadioButton1Click(Sender: TObject);
begin
Edit7.Visible:=True;
Label17.Visible:=True;

end;

procedure TForm_inserirfuncionario.Button1Click(Sender: TObject);
begin

  datamodulefuncionarios.ADOTable1.Open;
  datamodulefuncionarios.ADOTable1.Insert;

        datamodulefuncionarios.ADOTable1.FieldByName('Nome').Value:=edit1.Text;
   datamodulefuncionarios.ADOTable1.FieldByName('Cargo').Value:=edit2.Text;
        datamodulefuncionarios.ADOTable1.FieldByName('CPF').Value:=edit4.Text;
        datamodulefuncionarios.ADOTable1.FieldByName('Salario').Value:=StrToFloat(edit3.Text);
        datamodulefuncionarios.ADOTable1.FieldByName('Endereco').Value:=edit5.text;
        datamodulefuncionarios.ADOTable1.FieldByName('Historico').Value:=edit6.text;

  datamodulefuncionarios.ADOTable1.Post;
    ShowMessage('Funcionário inserido com sucesso');
    Self.DestroyHandle;
    TelaInicial.show;



end;

end.
