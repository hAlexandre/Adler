unit Consultar_funcionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Menus, Grids, DBGrids, StdCtrls, Buttons, jpeg,
  ExtCtrls;

type
  TConsulta_FUncionarios = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Label7: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit3: TEdit;
    Button6: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Button2: TButton;
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
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
aux: integer;
confirma: integer;
  Consulta_FUncionarios: TConsulta_FUncionarios;

implementation

uses datamodule_funcionarios_OK, datamodule_usuarios, Unit2;

{$R *.dfm}

procedure TConsulta_FUncionarios.Button1Click(Sender: TObject);
begin
 DBGrid1.Enabled:=True;
                 ADOQuery1.Close; {Fecha a query}
                 ADOQuery1.SQL.Clear; {Limpa o conteúdo da propriedade SQL}
                 ADOQuery1.SQL.Add('SELECT * from TabelaFuncionarios');
                 ADOQuery1.SQL.Add('where nome like'+#39+Edit1.text+'%'+#39);
                 ADOQuery1.Open;

end;

procedure TConsulta_FUncionarios.DBGrid1CellClick(Column: TColumn);
begin

    SpeedButton1.Enabled:=True;
    Button5.Enabled:=True;
end;

procedure TConsulta_FUncionarios.DBGrid1Exit(Sender: TObject);
begin

    SpeedButton1.Enabled:=False;
    Button5.Enabled:=True;
end;

procedure TConsulta_FUncionarios.SpeedButton1Click(Sender: TObject);
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

procedure TConsulta_FUncionarios.Button3Click(Sender: TObject);
begin





  ADOQuery1.refresh;
  datamodulefuncionarios.ADOTable1.Open;
  aux := DBGrid1.DataSource.DataSet.FieldValues['Codigo'];
  if datamodulefuncionarios.ADOTable1.Locate('Codigo',aux,[])    then
    begin

       datamodulefuncionarios.ADOTable1.Edit;


            datamodulefuncionarios.ADOTable1.FieldByName('Cargo').Value:=edit2.Text;
          datamodulefuncionarios.ADOTable1.FieldByName('Salario').Value:=edit3.Text;
                    datamodulefuncionarios.ADOTable1.FieldByName('Endereco').Value:=edit4.Text;
                              datamodulefuncionarios.ADOTable1.FieldByName('Historico').Value:=edit5.Text;
        datamodulefuncionarios.ADOTable1.Post;
    end;
    ADOQuery1.Refresh;
    DBGrid1.Refresh;
    Button1.Enabled:=True;
    DBGrid1.Visible:=True;
    Edit2.Visible:=False;
    Edit3.Visible:=False;
    Edit4.Visible:=False;
    Edit5.Visible:=False;
    Button3.Visible:=False;
    Button4.Visible:=False;
    DBGrid1.Refresh;
    Edit2.Text:='';
    Edit3.Text:='';
    Edit4.Text:='';
    Edit5.Text:='';
    Label1.Visible:=False;
    Label2.Visible:=False;
    Button5.Visible:=True;
    SpeedButton1.Visible:=True;
    ShowMessage('Alteração realizada com sucesso');


Button1.Enabled:=True;
end;



procedure TConsulta_FUncionarios.Button5Click(Sender: TObject);
begin
       confirma := MessageDlg('Confirmation',mtCustom, mbOKCancel, 0);
       if confirma = mrCancel then
        begin
          exit;
        end;


       datamodulefuncionarios.ADOTable1.open ;
       aux := DBGrid1.DataSource.DataSet.FieldValues['codigo'];
       if datamodulefuncionarios.ADOTable1.Locate('codigo',aux,[])    then
       begin
        DBGrid1.DataSource.DataSet.Delete;

       end;
end;

procedure TConsulta_FUncionarios.Button2Click(Sender: TObject);
begin
confirma := MessageDlg('Deseja mesmo voltar?',mtCustom, mbOKCancel, 0);
       if confirma = mrOK then
        begin
          Self.Hide;
          TelaInicial.Show;
        end;
end;

end.
