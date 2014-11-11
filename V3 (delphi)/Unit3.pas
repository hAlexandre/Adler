unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Menus, StdCtrls, jpeg, ExtCtrls;

type
  TInserirJogo = class(TForm)
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
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    eladeLogin1: TMenuItem;
    Button3: TButton;
    Fundo_InsJogo: TImage;
    Label7: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Edit4: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Edit5: TEdit;
    Label12: TLabel;
    Edit6: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Edit7: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure eladeLogin1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InserirJogo: TInserirJogo;

implementation

uses datamodule_jogos, Unit2, Unit1;

{$R *.dfm}

procedure TInserirJogo.Button2Click(Sender: TObject);
var confirma : integer;
begin
  confirma := MessageDlg('Deseja mesmo descartar os dados?',mtCustom, mbOKCancel, 0);
   if confirma = mrOK then
   begin
    Edit1.Text:='';
    Edit2.Text:='';
    Edit3.Text:='';
    Edit4.Text:='';
    Edit5.Text:='';
    Edit6.Text:='';
    Edit7.Text:='';
   end;
end;

procedure TInserirJogo.Button1Click(Sender: TObject);
begin
  BDJogos.ADOTable1.Open;
  BDJogos.ADOTable1.Insert;

      BDJogos.ADOTable1.FieldByName('Nome').Value:=edit1.Text;
      BDJogos.ADOTable1.FieldByName('Descricao').Value:=edit2.Text;
      BDJogos.ADOTable1.FieldByName('Desenvolvedor').Value:=edit7.Text;
      BDJogos.ADOTable1.FieldByName('Preco').Value:=StrToFloat(edit3.Text);
      BDJogos.ADOTable1.FieldByName('Censura').Value:=edit4.Text;
      BDJogos.ADOTable1.FieldByName('Genero').Value:=edit5.Text;
      BDJogos.ADOTable1.FieldByName('Requisitos').Value:=edit6.Text;
  BDJogos.ADOTable1.Post;
  ShowMessage('Jogo inserido com sucesso');
  Self.DestroyHandle;
  TelaInicial.show;

end;

procedure TInserirJogo.eladeLogin1Click(Sender: TObject);
var confirma : integer;
begin
confirma := MessageDlg('Deseja mesmo sair?',mtCustom, mbOKCancel, 0);
       if confirma = mrOK then
        begin
          Self.Hide;
          TelaLogin.Show;
        end;
end;

procedure TInserirJogo.Button3Click(Sender: TObject);
var confirma : integer;
begin
  confirma := MessageDlg('Deseja mesmo voltar?',mtCustom, mbOKCancel, 0);
   if confirma = mrOK then
   begin
      TelaInicial.show;
      Self.Hide;
      end;
end;

procedure TInserirJogo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Self.Destroy;
TelaInicial.show;
end;

end.
