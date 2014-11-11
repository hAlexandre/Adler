unit InserirEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, jpeg, ExtCtrls;

type
  TInsere_empresa = class(TForm)
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
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Insere_empresa: TInsere_empresa;

implementation

uses Datamodule_Empresas, Unit2;

{$R *.dfm}

procedure TInsere_empresa.Button1Click(Sender: TObject);
begin

Datamoduleempresas.ADOTable1.Open;
  Datamoduleempresas.ADOTable1.Insert;

        Datamoduleempresas.ADOTable1.FieldByName('Nome').Value:=edit1.Text;
   Datamoduleempresas.ADOTable1.FieldByName('Razao_social').Value:=edit2.Text;
        Datamoduleempresas.ADOTable1.FieldByName('CNPJ').Value:=edit3.Text;
        Datamoduleempresas.ADOTable1.FieldByName('Endereco').Value:=Edit4.Text;
        Datamoduleempresas.ADOTable1.FieldByName('Telefone').Value:=edit5.text;
        Datamoduleempresas.ADOTable1.FieldByName('Email').Value:=edit6.text;

  Datamoduleempresas.ADOTable1.Post;
    ShowMessage('Empresa inserida com sucesso');
    Self.DestroyHandle;
    TelaInicial.show;
end;

procedure TInsere_empresa.Button3Click(Sender: TObject);
var confirma: integer;
begin
confirma := MessageDlg('Deseja mesmo voltar?',mtCustom, mbOKCancel, 0);
       if confirma = mrOK then
        begin
          Self.Hide;
          TelaInicial.Show;
        end;
end;

end.
