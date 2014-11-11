unit Form_usuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, jpeg, ExtCtrls;

type
  TInserirUsuario = class(TForm)
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
    ImagemInserirusuario: TImage;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Button3: TButton;
    procedure eladelogin1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InserirUsuario: TInserirUsuario;

implementation

uses Unit2, datamodule_usuarios, datamodule_jogos, Unit1;

{$R *.dfm}

procedure TInserirUsuario.eladelogin1Click(Sender: TObject);
var confirma : integer;
begin
confirma := MessageDlg('Deseja mesmo voltar?',mtCustom, mbOKCancel, 0);
       if confirma = mrOK then
        begin
          Self.Hide;
          TelaInicial.Show;
        end;
end;

procedure TInserirUsuario.Button1Click(Sender: TObject);
begin

  if (edit1.Text = '') OR (edit2.Text = '') OR (edit3.Text = '') OR (edit4.Text = '') OR (edit5.Text = '') OR (edit6.Text = '') then
  begin
    ShowMessage ('Campos Incompletos');
    exit;
  end;

  BDUsuarios.ADOTable1.Open;
  BDUsuarios.ADOTable1.Insert;
  BDUsuarios.ADOTable1.FieldByName('nome').Value:=edit3.Text;
  BDUsuarios.ADOTable1.FieldByName('usuario').Value:=edit1.Text;
  BDUsuarios.ADOTable1.FieldByName('senha').Value:=edit2.Text;
  BDUsuarios.ADOTable1.FieldByName('perfil').Value:=edit4.Text;
  BDUsuarios.ADOTable1.FieldByName('endereco').Value:=edit5.Text;
  BDUsuarios.ADOTable1.FieldByName('cpf').Value:=edit6.Text;

  BDUsuarios.ADOTable1.Post;
  ShowMessage('Usuário inserido com sucesso');
  Self.DestroyHandle;
  TelaInicial.show;

end;

procedure TInserirUsuario.Button2Click(Sender: TObject);
begin
Edit6.Text:='';
Edit5.Text:='';
Edit4.Text:='';
Edit3.Text:='';
Edit2.Text:='';
Edit1.text:='';
end;

end.
