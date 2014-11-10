unit Alterar__usuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, DB, ADODB, StdCtrls;

type
  TAlterarUsuario = class(TForm)
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
    Edit1: TEdit;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Edit2: TEdit;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Button5: TButton;
    Label2: TLabel;
    Edit3: TEdit;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AlterarUsuario: TAlterarUsuario;
  aux: integer;


implementation

uses datamodule_jogos, datamodule_usuarios, Form_alterarjogo,
  Form_alterarusuario, Form_funcionario, Form_usuario, Unit2;

{$R *.dfm}

procedure TAlterarUsuario.Button1Click(Sender: TObject);
begin
 DBGrid1.Enabled:=True;
                 ADOQuery1.Close; {Fecha a query}
                 ADOQuery1.SQL.Clear; {Limpa o conteúdo da propriedade SQL}
                 ADOQuery1.SQL.Add('SELECT * from Usuariodesistema');
                 ADOQuery1.SQL.Add('where usuario like'+#39+Edit1.text+'%'+#39);
                 ADOQuery1.Open ;
end;

procedure TAlterarUsuario.Button2Click(Sender: TObject);
begin
Edit2.Visible:=True;
Edit3.Visible:=True;
    Edit2.text := '';
    Edit3.text := '';
    Button2.Visible:=False;
    DBGrid1.Visible:=False;
    Label1.Visible:=True;
    Label2.Visible:=True;
    Button3.Visible:=True;
    Button4.Visible:=True;
    Button1.Enabled:=False;

end;

procedure TAlterarUsuario.Button3Click(Sender: TObject);
begin



  ADOQuery1.refresh;
  BDUsuarios.ADOTable1.Open;
  aux := DBGrid1.DataSource.DataSet.FieldValues['Codigo'];
  if BDUsuarios.ADOTable1.Locate('Codigo',aux,[])    then
    begin


        BDUsuarios.ADOTable1.Edit;
        BDUsuarios.ADOTable1.FieldByName('senha').Value:=edit2.Text;
        BDUsuarios.ADOTable1.FieldByName('endereco').Value:=edit3.Text;
        BDUsuarios.ADOTable1.Post;
    end;
    ADOQuery1.Refresh;
    DBGrid1.Refresh;
    Button1.Enabled:=True;
    DBGrid1.Visible:=True;
    Edit2.Visible:=False;
    Edit3.Visible:=False;
    Button3.Visible:=False;
    Button2.Visible:=True;
    Button4.Visible:=False;
    DBGrid1.Refresh;
    Edit2.Text:='';
    Edit3.Text:='';
    Label1.Visible:=False;
    Label2.Visible:=False;
    ShowMessage('Alteração realizada com sucesso');


Button1.Enabled:=True;

end;

procedure TAlterarUsuario.Button4Click(Sender: TObject);
begin
Self.Destroy;
TelaInicial.Show;
end;

procedure TAlterarUsuario.Button5Click(Sender: TObject);
begin
                 BDUsuarios.ADOTable1.open ;
       aux := DBGrid1.DataSource.DataSet.FieldValues['codigo'];
       if BDUsuarios.ADOTable1.Locate('codigo',aux,[])    then
       begin
        DBGrid1.DataSource.DataSet.Delete;


       end;
end;

procedure TAlterarUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Self.Destroy;
TelaInicial.show;
end;

procedure TAlterarUsuario.Button6Click(Sender: TObject);

begin
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  TelaInicial.show;
  Self.Hide;
end;

end.
