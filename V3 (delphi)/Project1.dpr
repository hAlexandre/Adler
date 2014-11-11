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
  Alterar__usuario in 'Alterar__usuario.pas' {AlterarUsuario},
  inserirfuncionario in 'inserirfuncionario.pas' {Form_inserirfuncionario},
  Unit4 in 'Unit4.pas',
  datamodule_funcionarios_OK in 'datamodule_funcionarios_OK.pas' {datamodulefuncionarios: TDataModule},
  Consultar_funcionario in 'Consultar_funcionario.pas' {Consulta_FUncionarios},
  Datamodule_funcionarios in 'Datamodule_funcionarios.pas' {DataModule5: TDataModule},
  Datamodule_Empresas in 'Datamodule_Empresas.pas' {Datamoduleempresas: TDataModule},
  InserirEmpresa in 'InserirEmpresa.pas' {Insere_empresa},
  Consultar_empresa in 'Consultar_empresa.pas' {Form_Consultar_Emrpesa};

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
  Application.CreateForm(TForm_inserirfuncionario, Form_inserirfuncionario);
  Application.CreateForm(Tdatamodulefuncionarios, datamodulefuncionarios);
  Application.CreateForm(TConsulta_FUncionarios, Consulta_FUncionarios);
  Application.CreateForm(TDataModule5, DataModule5);
  Application.CreateForm(TDatamoduleempresas, Datamoduleempresas);
  Application.CreateForm(TInsere_empresa, Insere_empresa);
  Application.CreateForm(TForm_Consultar_Emrpesa, Form_Consultar_Emrpesa);
  Application.Run;
end.
