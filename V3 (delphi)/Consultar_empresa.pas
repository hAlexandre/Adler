unit Consultar_empresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Menus, Grids, DBGrids, StdCtrls, Buttons, jpeg,
  ExtCtrls;

type
  TForm_Consultar_Emrpesa = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Speedbutton3: TSpeedButton;
    Label8: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
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
    DBGrid1: TDBGrid;
    Image1: TImage;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    SpeedButton1: TSpeedButton;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Speedbutton3Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
confirma: integer;
aux: integer;
  Form_Consultar_Emrpesa: TForm_Consultar_Emrpesa;

implementation

uses Datamodule_Empresas, Unit1, Unit2, Unit3, Unit4, datamodule_usuarios;

{$R *.dfm}

procedure TForm_Consultar_Emrpesa.DBGrid1CellClick(Column: TColumn);
begin

    SpeedButton1.Enabled:=True;
    Button5.Enabled:=True;

end;

procedure TForm_Consultar_Emrpesa.DBGrid1Exit(Sender: TObject);
begin

    SpeedButton1.Enabled:=True;
    Button5.Enabled:=True;

end;

procedure TForm_Consultar_Emrpesa.Button1Click(Sender: TObject);
begin
               DBGrid1.Enabled:=True;
                 ADOQuery1.Close; {Fecha a query}
                 ADOQuery1.SQL.Clear; {Limpa o conteúdo da propriedade SQL}
                 ADOQuery1.SQL.Add('SELECT * from Empresas');
                 ADOQuery1.SQL.Add('where nome like'+#39+Edit1.text+'%'+#39);
                 ADOQuery1.Open;
end;

procedure TForm_Consultar_Emrpesa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Self.DestroyHandle;
TelaInicial.show;

end;

procedure TForm_Consultar_Emrpesa.Speedbutton3Click(Sender: TObject);
begin
Edit1.Visible:=False;
    Edit2.Visible:=True;

    Edit4.Visible:=True;
    Edit5.Visible:=True;
    Edit2.text := '';

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

    Label5.Visible:=True;
    Label6.Visible:=True;
    Label7.Visible:=True;
    Label8.Visible:=False;
end;

procedure TForm_Consultar_Emrpesa.Button3Click(Sender: TObject);
begin



  ADOQuery1.refresh;
  Datamoduleempresas.ADOTable1.Open;
  aux := DBGrid1.DataSource.DataSet.FieldValues['Codigo'];
  if Datamoduleempresas.ADOTable1.Locate('Codigo',aux,[])    then
    begin

        Datamoduleempresas.ADOTable1.Edit;

            Datamoduleempresas.ADOTable1.FieldByName('telefone').Value:=edit2.Text;
                        Datamoduleempresas.ADOTable1.FieldByName('endereco').Value:=edit4.Text;
          Datamoduleempresas.ADOTable1.FieldByName('email').Value:=edit5.Text;



        Datamoduleempresas.ADOTable1.Post;

    ADOQuery1.Refresh;
    DBGrid1.Refresh;
    Button1.Enabled:=True;
    DBGrid1.Visible:=True;
    Edit2.Visible:=False;

    Edit4.Visible:=False;
    Edit5.Visible:=False;
    Button3.Visible:=False;
    Button4.Visible:=False;
    DBGrid1.Refresh;
    Edit2.Text:='';

    Edit4.Text:='';
    Edit5.Text:='';
    Label1.Visible:=False;
    Label2.Visible:=False;
    Button1.Visible:=True;
    edit1.Visible:=True;
    Button5.Visible:=True;
    SpeedButton1.Visible:=True;
    ShowMessage('Alteração realizada com sucesso');


Button1.Enabled:=True;


end;
end;
procedure TForm_Consultar_Emrpesa.Button5Click(Sender: TObject);
begin
  confirma := MessageDlg('Confirmation',mtCustom, mbOKCancel, 0);
       if confirma = mrCancel then
        begin
          exit;
        end;


       Datamoduleempresas.ADOTable1.open ;
       aux := DBGrid1.DataSource.DataSet.FieldValues['codigo'];
       if Datamoduleempresas.ADOTable1.Locate('codigo',aux,[])    then
       begin
        DBGrid1.DataSource.DataSet.Delete;

       end;
end;

procedure TForm_Consultar_Emrpesa.Button2Click(Sender: TObject);
begin
confirma := MessageDlg('Deseja mesmo voltar?',mtCustom, mbOKCancel, 0);
       if confirma = mrOK then
        begin
          Self.Hide;
          TelaInicial.Show;
        end;
end;

end.
