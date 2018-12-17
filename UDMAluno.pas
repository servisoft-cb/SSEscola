unit UDMAluno;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMAluno = class(TDataModule)
    sdsAluno: TSQLDataSet;
    dspAluno: TDataSetProvider;
    cdsAluno: TClientDataSet;
    dsAluno: TDataSource;
    sdsAlunoID: TIntegerField;
    sdsAlunoCODIGO: TIntegerField;
    sdsAlunoNOME: TStringField;
    sdsAlunoENDERECO: TStringField;
    sdsAlunoCODCIDADE: TIntegerField;
    sdsAlunoCIDADE: TStringField;
    sdsAlunoUF: TStringField;
    sdsAlunoCEP: TStringField;
    sdsAlunoBAIRRO: TStringField;
    sdsAlunoDDD: TIntegerField;
    sdsAlunoFONE: TStringField;
    sdsAlunoNOME_PAI: TStringField;
    sdsAlunoCPF_PAI: TStringField;
    sdsAlunoFONE_PAI: TStringField;
    sdsAlunoNOME_MAE: TStringField;
    sdsAlunoCPF_MAE: TStringField;
    sdsAlunoFONE_MAE: TStringField;
    sdsAlunoTIPOCPF: TStringField;
    sdsAlunoNOME_RESPONSAVEL: TStringField;
    sdsAlunoCPF_REPONSAVEL: TStringField;
    sdsAlunoDIACOBRANCA: TIntegerField;
    sdsAlunoCODTURMA: TIntegerField;
    sdsAlunoOBS: TMemoField;
    sdsAlunoTIPO_RESPONSAVEL: TStringField;
    sdsAlunoINATIVO: TStringField;
    sdsAlunoDTINATIVO: TDateField;
    sdsAlunoDTNASCIMENTO: TDateField;
    sdsAlunoPOSSUE_OBSMEDICA: TStringField;
    cdsAlunoID: TIntegerField;
    cdsAlunoCODIGO: TIntegerField;
    cdsAlunoNOME: TStringField;
    cdsAlunoENDERECO: TStringField;
    cdsAlunoCODCIDADE: TIntegerField;
    cdsAlunoCIDADE: TStringField;
    cdsAlunoUF: TStringField;
    cdsAlunoCEP: TStringField;
    cdsAlunoBAIRRO: TStringField;
    cdsAlunoDDD: TIntegerField;
    cdsAlunoFONE: TStringField;
    cdsAlunoNOME_PAI: TStringField;
    cdsAlunoCPF_PAI: TStringField;
    cdsAlunoFONE_PAI: TStringField;
    cdsAlunoNOME_MAE: TStringField;
    cdsAlunoCPF_MAE: TStringField;
    cdsAlunoFONE_MAE: TStringField;
    cdsAlunoTIPOCPF: TStringField;
    cdsAlunoNOME_RESPONSAVEL: TStringField;
    cdsAlunoCPF_REPONSAVEL: TStringField;
    cdsAlunoDIACOBRANCA: TIntegerField;
    cdsAlunoCODTURMA: TIntegerField;
    cdsAlunoOBS: TMemoField;
    cdsAlunoTIPO_RESPONSAVEL: TStringField;
    cdsAlunoINATIVO: TStringField;
    cdsAlunoDTINATIVO: TDateField;
    cdsAlunoDTNASCIMENTO: TDateField;
    cdsAlunoPOSSUE_OBSMEDICA: TStringField;
    dsAluno_Mestre: TDataSource;
    sdsAluno_Evento: TSQLDataSet;
    sdsAluno_EventoID: TIntegerField;
    sdsAluno_EventoCODEVENTO: TIntegerField;
    sdsAluno_EventoVALOR: TFloatField;
    sdsAluno_EventoDTINICIO: TDateField;
    sdsAluno_EventoOBS: TMemoField;
    cdsAlunosdsAluno_Evento: TDataSetField;
    cdsAluno_Evento: TClientDataSet;
    cdsAluno_EventoID: TIntegerField;
    cdsAluno_EventoCODEVENTO: TIntegerField;
    cdsAluno_EventoVALOR: TFloatField;
    cdsAluno_EventoDTINICIO: TDateField;
    cdsAluno_EventoOBS: TMemoField;
    dsAluno_Evento: TDataSource;
    sdsAlunoOBS_FREQUENCIA: TMemoField;
    sdsAlunoMES_INICIO: TIntegerField;
    sdsAlunoANO_INICIO: TIntegerField;
    sdsAlunoMES_FINAL: TIntegerField;
    sdsAlunoANO_FINAL: TIntegerField;
    cdsAlunoOBS_FREQUENCIA: TMemoField;
    cdsAlunoMES_INICIO: TIntegerField;
    cdsAlunoANO_INICIO: TIntegerField;
    cdsAlunoMES_FINAL: TIntegerField;
    cdsAlunoANO_FINAL: TIntegerField;
    sdsAlunoDDD_PAI: TIntegerField;
    sdsAlunoDDD_MAE: TIntegerField;
    cdsAlunoDDD_PAI: TIntegerField;
    cdsAlunoDDD_MAE: TIntegerField;
    sdsAlunoOBS_MEDICA: TMemoField;
    cdsAlunoOBS_MEDICA: TMemoField;
    sdsAlunoRECIBO_BOLETO: TStringField;
    cdsAlunoRECIBO_BOLETO: TStringField;
    sdsAlunoEND_FOTO: TStringField;
    cdsAlunoEND_FOTO: TStringField;
    sdsAlunoSEXO: TStringField;
    cdsAlunoSEXO: TStringField;
    sdsAluno_EventoNOMEEVENTO: TStringField;
    cdsAluno_EventoNOMEEVENTO: TStringField;
    sdsAlunoDTCADASTRO: TDateField;
    cdsAlunoDTCADASTRO: TDateField;
    sdsAlunoPOSSUE_OBSNUTRICIONAIS: TStringField;
    cdsAlunoPOSSUE_OBSNUTRICIONAIS: TStringField;
    sdsAlunoOBS_NUTRICIONAIS: TMemoField;
    cdsAlunoOBS_NUTRICIONAIS: TMemoField;
    sdsAluno_EventoDTFINAL: TDateField;
    sdsAluno_EventoANO_INICIO: TIntegerField;
    sdsAluno_EventoMES_INICIO: TIntegerField;
    sdsAluno_EventoANO_FINAL: TIntegerField;
    sdsAluno_EventoMES_FINAL: TIntegerField;
    cdsAluno_EventoDTFINAL: TDateField;
    cdsAluno_EventoANO_INICIO: TIntegerField;
    cdsAluno_EventoMES_INICIO: TIntegerField;
    cdsAluno_EventoANO_FINAL: TIntegerField;
    cdsAluno_EventoMES_FINAL: TIntegerField;
    sdsAluno_EventoQTD: TFloatField;
    cdsAluno_EventoQTD: TFloatField;
    sdsAluno_EventoVALOREVENTO: TFloatField;
    cdsAluno_EventoVALOREVENTO: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsAlunoNewRecord(DataSet: TDataSet);
    procedure cdsAlunoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMAluno: TDMAluno;
  ctAluno : String;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMAluno.DataModuleCreate(Sender: TObject);
begin
  ctAluno := sdsAluno.CommandText;
end;

procedure TDMAluno.cdsAlunoNewRecord(DataSet: TDataSet);
begin
  DMAluno.cdsAlunoINATIVO.AsString                := 'N';
  DMAluno.cdsAlunoPOSSUE_OBSMEDICA.AsString       := 'N';
  DMAluno.cdsAlunoPOSSUE_OBSNUTRICIONAIS.AsString := 'N';
end;

procedure TDMAluno.cdsAlunoBeforePost(DataSet: TDataSet);
begin
  if DMAluno.cdsAlunoINATIVO.AsString = 'N' then
    DMAluno.cdsAlunoDTINATIVO.Clear;
end;

end.
