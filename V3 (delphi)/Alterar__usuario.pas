unit Alterar__usuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, DB, ADODB, StdCtrls, jpeg, ExtCtrls,
  Buttons;

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
    Edit2: TEdit;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Button5: TButton;
    Label2: TLabel;
    Edit3: TEdit;
    Button6: TButton;
    Image1: TImage;
    Label7: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button6Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure eladelogin1Click(Sender: TObject);
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
  Form_alterarusuario, Form_funcionario, Form_usuario, Unit2, Unit1;

{$R *.dfm}

procedure TAlterarUsuario.Button1Click(Sender: TObject);
begin
 DBGrid1.Enabled:=True;
                 ADOQuery1.Close; {Fecha a query}
                 ADOQuery1.SQL.Clear; {Limpa o conteúdo da propriedade SQL}
                 ADOQuery1.SQL.Add('SELECT * from Usuariodesistema');
                 ADOQuery1.SQL.Add('where usuario like'+#39+Edit1.text+'%'+#39);
                 ADOQuery1.Open;
end;

procedure TAlterarUsuario.Button2Click(Sender: TObject);
begin

    Edit1.Visible:=False;
    Edit2.Visible:=True;
    Edit3.Visible:=True;
    Edit4.Visible:=True;
    Edit5.Visible:=True;
    Edit2.text := '';
    Edit3.text := '';
    Edit4.text := '';
    Edit5.text := '';

    DBGrid1.Visible:=False;
    Label1.Visible:=True;
    Label2.Visible:=True;
    Button3.Visible:=True;
    Button4.Visible:=True;
    Button1.Visible:=False;
    Button5.Visible:=False;
    Label3.Visible:=True;
    Label4.Visible:=True;
    Label5.Visible:=True;
    Label6.Visible:=True;
    Label7.Visible:=False;
    Label8.Visible:=False;


end;

procedure TAlterarUsuario.Button3Click(Sender: TObject);
begin

             if edit2.Text <> edit5.Text then
              begin
                ShowMessage('A nova senha não confere');
                exit;
              end;

              if (edit2.Text = '') AND (edit3.Text = '') then
              begin
                ShowMessage('Nenhuma modificação foi feita');
                exit;
              end;

  ADOQuery1.refresh;
  BDUsuarios.ADOTable1.Open;
  aux := DBGrid1.DataSource.DataSet.FieldValues['Codigo'];
  if BDUsuarios.ADOTable1.Locate('Codigo',aux,[])    then
    begin

        BDUsuarios.ADOTable1.Edit;

          if edit2.Text <> '' then
          begin
            BDUsuarios.ADOTable1.FieldByName('senha').Value:=edit2.Text;
          end;

        if edit3.Text <> '' then
        begin
          BDUsuarios.ADOTable1.FieldByName('endereco').Value:=edit3.Text;
        end;
        BDUsuarios.ADOTable1.Post;
    end;
    ADOQuery1.Refresh;
    DBGrid1.Refresh;
    Button1.Enabled:=True;
    DBGrid1.Visible:=True;
    Edit2.Visible:=False;
    Edit3.Visible:=False;
    Button3.Visible:=False;
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
    Edit1.Visible:=True;
    Edit2.Visible:=False;
    Edit3.Visible:=False;
    Edit4.Visible:=False;
    Edit5.Visible:=False;

    SpeedButton1.Visible := True;
    DBGrid1.Visible:=True;
    Label1.Visible:=False;
    Label2.Visible:=False;
    Button3.Visible:=False;
    Button4.Visible:=False;
    Button5.Visible:=True;
    Button1.Visible:=True;
    Label7.Visible:=False;
    Label6.Visible:=False;
    Label5.Visible:=False;
    Label3.Visible:=False;
    Label4.Visible:=False;
    Label8.Visible:=True;
end;

procedure TAlterarUsuario.Button5Click(Sender: TObject);
var confirma : Integer;
begin
       confirma := MessageDlg('Confirmation',mtCustom, mbOKCancel, 0);
       if confirma = mrCancel then
        begin
          exit;
        end;


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

procedure TAlterarUsuario.DBGrid1CellClick(Column: TColumn);
begin

    SpeedButton1.Enabled:=True;
    Button5.Enabled:=True;

end;

procedure TAlterarUsuario.DBGrid1Exit(Sender: TObject);
begin

    SpeedButton1.Enabled:=False;
    Button5.Enabled:=True;
end;

procedure TAlterarUsuario.SpeedButton1Click(Sender: TObject);
begin
    Edit1.Visible:=False;
    Edit2.Visible:=True;
    Edit3.Visible:=True;
    Edit4.Visible:=True;
    Edit5.Visible:=True;
    Edit2.text := '';
    Edit3.text := '';
    Edit4.text := '';
    Edit5.text := '';

    SpeedButton1.Visible := False;
    DBGrid1.Visible:=False;
    Label1.Visible:=True;
    Label2.Visible:=True;
    Button3.Visible:=True;
    Button4.Visible:=True;
    Button1.Visible:=False;
    Button5.Visible:=False;
    Label3.Visible:=True;
    Label4.Visible:=True;
    Label5.Visible:=True;
    Label6.Visible:=True;
    Label7.Visible:=True;
    Label8.Visible:=False;
end;

procedure TAlterarUsuario.eladelogin1Click(Sender: TObject);
var confirma : integer;
begin
confirma := MessageDlg('Deseja mesmo sair?',mtCustom, mbOKCancel, 0);
       if confirma = mrOK then
        begin
          Self.Hide;
          TelaLogin.Show;
        end;

end;

end.
