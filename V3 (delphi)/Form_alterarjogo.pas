unit Form_alterarjogo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, DB, ADODB, Grids, DBGrids;

type
  TConsultarJogo = class(TForm)
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
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Button3: TButton;
    Edit2: TEdit;
    Button4: TButton;
    Button5: TButton;
    eladelogin1: TMenuItem;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure eladelogin1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConsultarJogo: TConsultarJogo;
  aux: integer;

implementation

uses datamodule_jogos, Unit1;

{$R *.dfm}

procedure TConsultarJogo.Button1Click(Sender: TObject);
begin

                 DBGrid1.Enabled:=True;
                 ADOQuery1.Close; {Fecha a query}
                 ADOQuery1.SQL.Clear; {Limpa o conteúdo da propriedade SQL}
                 ADOQuery1.SQL.Add('SELECT * from Jogo');
                 ADOQuery1.SQL.Add('where Nome like'+#39+Edit1.text+'%'+#39);
                 ADOQuery1.Open ;
end;

procedure TConsultarJogo.Button3Click(Sender: TObject);
begin
    Edit2.Visible:=True;
    Edit2.text := DBGrid1.DataSource.DataSet.FieldValues['Nome'];
    Button3.Visible:=False;
    DBGrid1.Visible:=False;
    Button4.Visible:=True;
    Button5.Visible:=True;
    Button1.Enabled:=False;
    Button2.Enabled:=False;
    

end;

procedure TConsultarJogo.Button4Click(Sender: TObject);
begin
  Edit2.Text:='';
  Edit2.Visible:=False;
  Button4.Visible:=False;
  Button3.Visible:=True;
  DBGrid1.Visible:=True;
  Button1.Enabled:=True;
  Button5.Visible:=False;
  Button2.Enabled:=True;
  


end;

procedure TConsultarJogo.Button5Click(Sender: TObject);
begin
  ADOQuery1.refresh;
  aux := DBGrid1.DataSource.DataSet.FieldValues['codigo'];
  if BDJogos.ADOTable1.Locate('codigo',aux,[])    then
    begin
      BDJogos.ADOTable1.Open;
      BDJogos.ADOTable1.Edit;
      BDJogos.ADOTable1.FieldByName('Nome').Value:=edit2.Text;
      BDJogos.ADOTable1.Post;
    end;
    ADOQuery1.Refresh;
    Button1.Enabled:=True;
    Button2.Enabled:=True;
    DBGrid1.Visible:=True;
    Edit2.Visible:=False;
    Button5.Visible:=False;
    Button3.Visible:=True;
    Button4.Visible:=False;
    DBGrid1.Refresh;

end;

procedure TConsultarJogo.eladelogin1Click(Sender: TObject);
begin
Self.Hide;
TelaLogin.Show;
end;

procedure TConsultarJogo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Self.Destroy;
end;

procedure TConsultarJogo.Button6Click(Sender: TObject);
begin
BDJogos.ADOTable1.open ;
       aux := DBGrid1.DataSource.DataSet.FieldValues['codigo'];
       if BDJogos.ADOTable1.Locate('codigo',aux,[])    then
       begin
        DBGrid1.DataSource.DataSet.Delete;


       end;
end;

end.
