unit UConvTabelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBTables, ComCtrls, UDMAluno, UDMEvento, UDMCidade;

type
  TfConvTabelas = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    tAlunos: TTable;
    tAlunosMatricula: TAutoIncField;
    tAlunosNome_Aluno: TStringField;
    tAlunosNome_Responsa: TStringField;
    tAlunosCPF_Responsa: TStringField;
    tAlunosEnder_Aluno: TStringField;
    tAlunosBairro: TStringField;
    tAlunosCEP: TStringField;
    tAlunosCidade: TStringField;
    tAlunosTelefones: TStringField;
    tAlunosNome_Pediatra: TStringField;
    tAlunosTel_Pediatra: TStringField;
    tAlunosFrequencia: TMemoField;
    tAlunosCob_Doc: TStringField;
    tAlunosOBS: TMemoField;
    tAtividades: TTable;
    tAtividadesCod_Atividade: TAutoIncField;
    tAtividadesNome: TStringField;
    tAtividadesVl_Unitario: TCurrencyField;
    ProgressBar1: TProgressBar;
    BitBtn3: TBitBtn;
    tCidade: TTable;
    tCidadeCodigo: TIntegerField;
    tCidadeNome: TStringField;
    tCidadeEstado: TStringField;
    tCidadePrefixo: TStringField;
    tCidadeCep: TStringField;
    tCidadeCodMunicipio: TStringField;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }

    FDMAluno : TDMAluno;
    FDMEvento: TDMEvento;
    FDMCidade: TDMCidade;

    property DMAluno : TDmAluno read FDMAluno write FDMAluno;
    property DMEvento: TDMEvento read FDMEvento write FDMEvento;
    property DMCidade: TDMCidade read FDMCidade write FDMCidade;

  public
    { Public declarations }
  end;

var
  fConvTabelas: TfConvTabelas;

implementation

uses DmdDatabase, SyncObjs, StrUtils, UDMMov_Mensal;

{$R *.dfm}

procedure TfConvTabelas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if FDMAluno.Owner.ClassName = Self.ClassName then
    FreeAndNil(FDMAluno);
  if FDMCidade.Owner.ClassName = Self.ClassName then
    FreeAndNil(FDMCidade);
  if FDMEvento.Owner.ClassName = Self.ClassName then
    FreeAndNil(FDMEvento);

  Action := Cafree;
end;

procedure TfConvTabelas.FormShow(Sender: TObject);
begin
  if not Assigned(DMAluno) then
    DMAluno := TDMAluno.Create(Self);
  if not Assigned(DMEvento) then
    DMEvento := TDMEvento.Create(Self);
  if not Assigned(DMCidade) then
    DMCidade := TDMCidade.Create(Self);
  if not Assigned(DMMov_Mensal) then
    DMMov_Mensal := TDMMov_Mensal.Create(Self);
end;

procedure TfConvTabelas.BitBtn1Click(Sender: TObject);
var
  vCod : Integer;
  vCidade : String;
  i : Integer;
  vAux : String;
begin
  if not DMCidade.cdsCidade.Active then
    DMCidade.cdsCidade.Open;

  tAlunos.Open;
  ProgressBar1.Max      := tAlunos.RecordCount;
  ProgressBar1.Position := 0;
  DMAluno.cdsAluno.Close;
  DMAluno.cdsAluno.Open;
  DMAluno.cdsAluno.First;
  while not DMAluno.cdsAluno.Eof do
  begin
    DMAluno.cdsAluno_Evento.First;
    while not DMAluno.cdsAluno_Evento.Eof do
      DMAluno.cdsAluno_Evento.Delete;
    DMAluno.cdsAluno.Delete;
  end;

  DMAluno.cdsAluno.ApplyUpdates(0);

  vCod := 0;
  tAlunos.First;
  while not tAlunos.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    vCod := vCod + 1;
    DMAluno.cdsAluno.Insert;
    DMAluno.cdsAlunoID.AsInteger                    := vCod;
    DMAluno.cdsAlunoINATIVO.AsString                := 'N';
    DMAluno.cdsAlunoPOSSUE_OBSMEDICA.AsString       := 'N';
    DMAluno.cdsAlunoPOSSUE_OBSNUTRICIONAIS.AsString := 'N';
    DMAluno.cdsAlunoRECIBO_BOLETO.AsString          := 'R';
    DMAluno.cdsAlunoCODIGO.AsInteger                := tAlunosMatricula.AsInteger;
    DMAluno.cdsAlunoNOME.AsString                   := UpperCase(tAlunosNome_Aluno.AsString);
    DMAluno.cdsAlunoNOME_RESPONSAVEL.AsString       := UpperCase(tAlunosNome_Responsa.AsString);
    vAux                                            := tAlunosCPF_Responsa.AsString;
    if Length(vAux) = 11 then
      DMAluno.cdsAlunoCPF_REPONSAVEL.AsString       := copy(vAux,1,3) + '.' + copy(vAux,4,3) + '.' + copy(vAux,7,3) + '-' + copy(vAux,10,2);
    DMAluno.cdsAlunoENDERECO.AsString               := UpperCase(tAlunosEnder_Aluno.AsString);
    DMAluno.cdsAlunoBAIRRO.AsString                 := UpperCase(tAlunosBairro.AsString);
    DMAluno.cdsAlunoCEP.AsString                    := tAlunosCEP.AsString;
    DMAluno.cdsAlunoFONE.AsString                   := tAlunosTelefones.AsString;
    DMAluno.cdsAlunoOBS_FREQUENCIA.Value            := tAlunosFrequencia.Value;
    DMAluno.cdsAlunoOBS.Value                       := tAlunosOBS.Value;
    DMAluno.cdsAlunoUF.AsString                     := 'RS';
    DMAluno.cdsAlunoMES_INICIO.AsInteger            := 0;
    DMAluno.cdsAlunoMES_FINAL.AsInteger             := 0;
    DMAluno.cdsAlunoANO_INICIO.AsInteger            := 0;
    DMAluno.cdsAlunoANO_FINAL.AsInteger             := 0;

    vCidade := TrimRight(UpperCase(tAlunosCidade.AsString));
    i := Pos('-',vCidade);
    if i > 0 then
      vCidade := TrimRight(Copy(vCidade,1,i-1));
    if DMCidade.cdsCidade.Locate('NOME',vCidade,[loCaseInsensitive]) then
    begin
      DMAluno.cdsAlunoCODCIDADE.AsInteger := DMCidade.cdsCidadeID.AsInteger;
      DMAluno.cdsAlunoCIDADE.AsString     := DMCidade.cdsCidadeNOME.AsString;
    end;

    DMAluno.cdsAluno.Post;

    tAlunos.Next;
  end;

  DMAluno.cdsAluno.ApplyUpdates(0);

  ShowMessage('Alunos Convertidos!');
end;

procedure TfConvTabelas.BitBtn3Click(Sender: TObject);
var
  vCod : Integer;
begin
  tCidade.Open;
  ProgressBar1.Max      := tCidade.RecordCount;
  ProgressBar1.Position := 0;
  DMCidade.cdsCidade.Close;
  DMCidade.cdsCidade.Open;
  DMCidade.cdsCidade.First;
  while not DMCidade.cdsCidade.Eof do
    DMCidade.cdsCidade.Delete;

  DMCidade.cdsCidade.ApplyUpdates(0);

  vCod := 0;
  tCidade.First;
  while not tCidade.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    vCod := vCod + 1;
    DMCidade.cdsCidade.Insert;
    DMCidade.cdsCidadeID.AsInteger          := vCod;
    DMCidade.cdsCidadeNOME.AsString         := tCidadeNome.AsString;
    DMCidade.cdsCidadeUF.AsString           := tCidadeEstado.AsString;
    DMCidade.cdsCidadeCODMUNICIPIO.AsString := tCidadeCodMunicipio.AsString;
    DMCidade.cdsCidade.Post;                
    tCidade.Next;
  end;

  DMCidade.cdsCidade.ApplyUpdates(0);

  ShowMessage('Cidade convertida!');
end;

procedure TfConvTabelas.BitBtn2Click(Sender: TObject);
var
  vCod : Integer;
begin
  tAtividades.Open;
  ProgressBar1.Max      := tAtividades.RecordCount;
  ProgressBar1.Position := 0;
  DMEvento.cdsEvento.Close;
  DMEvento.cdsEvento.Open;
  DMEvento.cdsEvento.First;
  while not DMEvento.cdsEvento.Eof do
    DMEvento.cdsEvento.Delete;
  DMEvento.cdsEvento.ApplyUpdates(0);

  vCod := 0;
  tAtividades.First;
  while not tAtividades.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;
    vCod := vCod + 1;
    DMEvento.cdsEvento.Insert;
    //DMEvento.cdsEventoID.AsInteger  := vCod;
    DMEvento.cdsEventoID.AsInteger  := tAtividadesCod_Atividade.AsInteger;
    DMEvento.cdsEventoNOME.AsString := UpperCase(tAtividadesNome.AsString);
    DMEvento.cdsEventoVALOR.AsFloat := tAtividadesVl_Unitario.AsFloat;
    DMEvento.cdsEvento.Post;
    tAtividades.Next;
  end;

  DMEvento.cdsEvento.ApplyUpdates(0);

  ShowMessage('Eventos convertidos!');
end;

procedure TfConvTabelas.BitBtn4Click(Sender: TObject);
begin
  DMMov_Mensal.cdsMov_Mensal.Open;
  DMMov_Mensal.cdsMov_Mensal.First;
  while not DMMov_Mensal.cdsMov_Mensal.Eof do
  begin
    DMMov_Mensal.cdsMov_Mensal_Eventos.First;
    while not DMMov_Mensal.cdsMov_Mensal_Eventos.Eof do
    begin
      DMMov_Mensal.cdsMov_Mensal_Eventos.Edit;
      DMMov_Mensal.cdsMov_Mensal_EventosANO_MOV.AsInteger := DMMov_Mensal.cdsMov_MensalANO_MOV.AsInteger;
      DMMov_Mensal.cdsMov_Mensal_EventosMES_MOV.AsInteger := DMMov_Mensal.cdsMov_MensalMES_MOV.AsInteger;
      DMMov_Mensal.cdsMov_Mensal_Eventos.Post;
      DMMov_Mensal.cdsMov_Mensal_Eventos.ApplyUpdates(0);
      DMMov_Mensal.cdsMov_Mensal_Eventos.Next;
    end;
    DMMov_Mensal.cdsMov_Mensal.Next;
  end;

end;

procedure TfConvTabelas.BitBtn5Click(Sender: TObject);
var
  vItem : Integer;
begin
  DMMov_Mensal.cdsMov_Mensal.Close;
  DMMov_Mensal.sdsMov_Mensal.CommandText := ctMov_Mensal;
  DMMov_Mensal.cdsMov_Mensal.Open;

  DMMov_Mensal.cdsMov_Mensal.First;
  while not DMMov_Mensal.cdsMov_Mensal.Eof do
  begin
    vItem := 0;
    DMMov_Mensal.cdsMov_Mensal_Eventos.First;
    while not DMMov_Mensal.cdsMov_Mensal_Eventos.Eof do
    begin
      vItem := vItem + 1;
      DMMov_Mensal.cdsMov_Mensal_Eventos.Edit;
      DMMov_Mensal.cdsMov_Mensal_EventosITEM.AsInteger := vItem;
      DMMov_Mensal.cdsMov_Mensal_Eventos.Post;
      DMMov_Mensal.cdsMov_Mensal_Eventos.Next;
    end;
    DMMov_Mensal.cdsMov_Mensal.Next;
  end;

  DMMov_Mensal.cdsMov_Mensal_Eventos.ApplyUpdates(0);

  DMMov_Mensal.cdsMov_Mensal.Close;
end;

end.
