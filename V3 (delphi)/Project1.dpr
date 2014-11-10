program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {TelaLogin},
  datamodule_usuarios in 'datamodule_usuarios.pas' {BDUsuarios: TDataModule},
  Unit2 in 'Unit2.pas' {TelaInicial},
  Unit3 in 'Unit3.pas' {InserirJogo},
  datamodule_jogos in 'datamodule_jogos.pas' {BDJogos: TDataModule},
  Form_alterarjogo in 'Form_alterarjogo.pas' {ConsultarJogo},
  Form_funcionario in 'Form_funcionario.pas' {FFormusuario},
  Form_usuario in 'Form_usuario.pas' {InserirUsuario},
  Form_alterarusuario in 'Form_alterarusuario.pas' {ERROUSUARIO},
  Alterar__usuario in 'Alterar__usuario.pas' {AlterarUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTelaLogin, TelaLogin);
  Application.CreateForm(TBDUsuarios, BDUsuarios);
  Application.CreateForm(TTelaInicial, TelaInicial);
  Application.CreateForm(TBDJogos, BDJogos);
  Application.CreateForm(TFFormusuario, FFormusuario);
  Application.CreateForm(TInserirUsuario, InserirUsuario);
  Application.CreateForm(TAlterarUsuario, AlterarUsuario);
  Application.Run;
end.
