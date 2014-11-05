program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  datamodule_usuarios in 'datamodule_usuarios.pas' {dtmusuario: TDataModule},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  datamodule_jogos in 'datamodule_jogos.pas' {datamodulejogos: TDataModule},
  Form_alterarjogo in 'Form_alterarjogo.pas' {Form_alterajogo},
  Form_funcionario in 'Form_funcionario.pas' {FFormusuario},
  Form_usuario in 'Form_usuario.pas' {Formusuario_},
  Form_alterarusuario in 'Form_alterarusuario.pas' {Alterausuario},
  Alterar__usuario in 'Alterar__usuario.pas' {formAlter_Usuario};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdtmusuario, dtmusuario);
  Application.CreateForm(Tdatamodulejogos, datamodulejogos);
  Application.CreateForm(TFFormusuario, FFormusuario);
  Application.CreateForm(TFormusuario_, Formusuario_);
  Application.CreateForm(TformAlter_Usuario, formAlter_Usuario);
  Application.Run;
end.
