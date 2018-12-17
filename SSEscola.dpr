program SSEscola;

uses
  Windows,
  Forms,
  DB,
  DBTables,
  Dialogs,
  sysutils,
  UMenuP in 'UMenuP.pas' {fMenuP},
  USobre in 'USobre.pas' {fSobre},
  SelfPrintDefs in 'SelfPrintDefs.pas',
  SendMail in 'SendMail.pas',
  SendMailOptions in 'SendMailOptions.pas' {FormSendMailOptions},
  rsDataSetError in '..\rslib\rsDataSetError.pas',
  LogProvider in '..\Logs\Src\LogProvider.pas',
  LogTypes in '..\Logs\Src\LogTypes.pas',
  FixBDE4GbBug in '..\generico\Util\FixBDE4GbBug.pas',
  arTypes in '..\rslib\arTypes.pas',
  UUtil in 'UUtil.pas',
  DmdDatabase in 'DmdDatabase.pas' {dmDatabase: TDataModule},
  UAlunoC in 'UAlunoC.pas' {fAlunoC},
  UDMAluno in 'UDMAluno.pas' {DMAluno: TDataModule},
  UAluno in 'UAluno.pas' {fAluno},
  UTurmaC in 'UTurmaC.pas' {fTurmaC},
  UDMTurma in 'UDMTurma.pas' {DMTurma: TDataModule},
  UTurma in 'UTurma.pas' {fTurma},
  UDMEvento in 'UDMEvento.pas' {DMEvento: TDataModule},
  UEventoC in 'UEventoC.pas' {fEventoC},
  UEvento in 'UEvento.pas' {fEvento},
  UConvTabelas in 'UConvTabelas.pas' {fConvTabelas},
  UDMCidade in 'UDMCidade.pas' {DMCidade: TDataModule},
  UCidadeC in 'UCidadeC.pas' {fCidadeC},
  UCidade in 'UCidade.pas' {fCidade},
  UDMMov_Mensal in 'UDMMov_Mensal.pas' {DMMov_Mensal: TDataModule},
  UMov_MensalC in 'UMov_MensalC.pas' {fMov_MensalC},
  UDMParametros in 'UDMParametros.pas' {DMParametros: TDataModule},
  UMov_Mensal in 'UMov_Mensal.pas' {fMov_Mensal},
  URelRecibo in 'URelRecibo.pas' {fRelRecibo},
  UDMEmpresa in 'UDMEmpresa.pas' {DMEmpresa: TDataModule},
  UEmpresa in 'UEmpresa.pas' {fEmpresa},
  UParametros in 'UParametros.pas' {fParametros},
  UConsMov_Mensal in 'UConsMov_Mensal.pas' {fConsMov_Mensal},
  UMov_MensalPag in 'UMov_MensalPag.pas' {fMov_MensalPag},
  UDMFuncionario in 'UDMFuncionario.pas' {DMFuncionario: TDataModule},
  UFuncionarioC in 'UFuncionarioC.pas' {fFuncionarioC},
  UFuncionario in 'UFuncionario.pas' {fFuncionario},
  URelMov_Mensal in 'URelMov_Mensal.pas' {fRelMov_Mensal},
  URelAluno in 'URelAluno.pas' {fRelAluno},
  URelAlunoFicha in 'URelAlunoFicha.pas' {fRelAlunoFicha},
  UAlunoAltEvento in 'UAlunoAltEvento.pas' {fAlunoAltEvento},
  UMov_MensalAltEvento in 'UMov_MensalAltEvento.pas' {fMov_MensalAltEvento},
  UConsMov_MensalEvento in 'UConsMov_MensalEvento.pas' {fConsMov_MensalEvento},
  URelMov_MensalEvento in 'URelMov_MensalEvento.pas' {fRelMov_MensalEvento},
  UConsMov_MensalEvento2 in 'UConsMov_MensalEvento2.pas' {fConsMov_MensalEvento2},
  URelMov_MensalEvento2 in 'URelMov_MensalEvento2.pas' {fRelMov_MensalEvento2},
  UConsMov_MensalEvento_Aluno in 'UConsMov_MensalEvento_Aluno.pas' {fConsMov_MensalEvento_Aluno},
  URelMov_MensalEvento_Aluno in 'URelMov_MensalEvento_Aluno.pas' {fRelMov_MensalEvento_Aluno},
  URelMov_MensalEvento_Aluno2 in 'URelMov_MensalEvento_Aluno2.pas' {fRelMov_MensalEvento_Aluno2};

{$R *.RES}
var
  Instancia: THandle;

function PossuiInstanciasAbertas: Boolean;
begin
  // Cria uma instância de um handle com o nome PrimeiraInstancia.
  Instancia := CreateMutex(nil, False, 'PrimeiraInstancia');
  // Verifica se o handle PrimeiraInstancia já está rodando caso esteja retorna TRUE.
  Result := WaitForSingleObject(Instancia, 0) = WAIT_TIMEOUT;
  // Se o Result for igual a TRUE verifica se existe uma segunda instância rodado.
  if Result then
  begin
    // Cria uma instância de um handle com o nome SegundaInstancia.
    Instancia := CreateMutex(nil, False, 'SegundaInstancia');
    // Verifica se o handle SegundaInstancia já está rodando caso esteja retorna TRUE.
    Result := WaitForSingleObject(Instancia, 0) = WAIT_TIMEOUT;
  end;
end;

begin
  try
    // Verifica se tem duas instâncias rodando, caso tenha termina a execução
    // do sistema, caso nenhum ou apenas uma estiver rodando continua a execução.
    if PossuiInstanciasAbertas then
      Exit;

    Application.Initialize;
    Session.AddPassword('46w3zq');
    Application.Title := 'SSEscola';
  Application.CreateForm(TdmDatabase, dmDatabase);
  Application.CreateForm(TDMEmpresa, DMEmpresa);
  Application.CreateForm(TfMenuP, fMenuP);
  Application.Run;
  except
    on e: Exception do
      ShowMessage('Ocorreu o seguinte erro ao executar: ' + #13 + e.Message);
  end;

  Application.UpdateFormatSettings := True;
  DateSeparator    := '/';
  ShortDateFormat  := 'dd/mm/YYYY';
  DecimalSeparator := ',';
  Application.UpdateFormatSettings := False;
end.

