unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, ExtCtrls, DBCtrls, jpeg;

type
  TForm1 = class(TForm)
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
  Form1: TForm1;

implementation

uses Unit2, datamodule_usuarios;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

dtmusuario.ADOTable1.Open;

if   dtmusuario.ADOTable1.Locate('usuario', Edit1.Text, [loCaseInsensitive ]) and
  dtmusuario.ADOTable1.Locate('senha', Edit2.Text, [loCaseInsensitive ]) then
  begin
  dtmusuario.ADOTable1.Close;
  Form2.Show;
  Self.Hide;
  Edit2.Text:='';
  Edit1.Text:='';
  end

else
  begin
    ShowMessage('Combina��o inv�lida de usuario e senha');
    Edit2.Text:=''
  end;



end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
  button1.Click;
  end;
end;

end.
