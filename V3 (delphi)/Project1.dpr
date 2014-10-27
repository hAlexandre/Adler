program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  datamodule_usuarios in 'datamodule_usuarios.pas' {dtmusuario: TDataModule},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  datamodule_jogos in 'datamodule_jogos.pas' {datamodulejogos: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdtmusuario, dtmusuario);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(Tdatamodulejogos, datamodulejogos);
  Application.Run;
end.
