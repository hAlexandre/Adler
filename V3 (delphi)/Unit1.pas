unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, ExtCtrls, DBCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
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
    ShowMessage('Combinação inválida de usuario e senha');
    Edit2.Text:=''
  end;



end;

end.
