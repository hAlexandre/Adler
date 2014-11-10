unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, ExtCtrls, DBCtrls, jpeg;

type
  TTelaLogin = class(TForm)
    Button1: TButton;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Image1: TImage;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaLogin: TTelaLogin;

implementation

uses Unit2, datamodule_usuarios;

{$R *.dfm}

procedure TTelaLogin.Button1Click(Sender: TObject);
begin

BDUsuarios.ADOTable1.Open;

if   BDUsuarios.ADOTable1.Locate('usuario', Edit1.Text, [loCaseInsensitive ]) and
  BDUsuarios.ADOTable1.Locate('senha', Edit2.Text, [loCaseInsensitive ]) then
  begin
  BDUsuarios.ADOTable1.Close;
  TelaInicial.Show;
  Self.Hide;
  Edit2.Text:='';
  Edit1.Text:='';
  end

else
  begin
    ShowMessage('Combinação inválida de usuario e senha');
    Edit2.Text:=''
  end;



end;

procedure TTelaLogin.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
  button1.Click;
  end;
end;

end.
