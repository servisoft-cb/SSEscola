unit UDMFuncionario;
                   
interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMFuncionario = class(TDataModule)
    sdsFuncionario: TSQLDataSet;
    dspFuncionario: TDataSetProvider;
    cdsFuncionario: TClientDataSet;
    dsFuncionario: TDataSource;
    sdsFuncionarioID: TIntegerField;
    sdsFuncionarioNOME: TStringField;
    sdsFuncionarioENDERECO: TStringField;
    sdsFuncionarioCODCIDADE: TIntegerField;
    sdsFuncionarioBAIRRO: TStringField;
    sdsFuncionarioCEP: TStringField;
    sdsFuncionarioFONE: TStringField;
    sdsFuncionarioDTADMISSAO: TDateField;
    sdsFuncionarioCPF: TStringField;
    sdsFuncionarioRG: TStringField;
    sdsFuncionarioCTPS: TIntegerField;
    sdsFuncionarioSERIE: TStringField;
    sdsFuncionarioPIS: TStringField;
    sdsFuncionarioDTNASCIMENTO: TDateField;
    sdsFuncionarioHRSEMANAIS: TFloatField;
    sdsFuncionarioTIPOPGTO: TStringField;
    sdsFuncionarioVLRSALARIO: TFloatField;
    sdsFuncionarioDTDEMISSAO: TDateField;
    sdsFuncionarioHORARIO1: TStringField;
    sdsFuncionarioHORARIO2: TStringField;
    sdsFuncionarioUF: TStringField;
    sdsFuncionarioOBS: TMemoField;
    sdsFuncionarioESTCIVIL: TStringField;
    sdsFuncionarioESCOLARIDADE: TStringField;
    sdsFuncionarioFUNCAO: TStringField;
    sdsFuncionarioNOMECONJUGE: TStringField;
    sdsFuncionarioNUMMATRICULA: TIntegerField;
    sdsFuncionarioNOMEPAI: TStringField;
    sdsFuncionarioNOMEMAE: TStringField;
    sdsFuncionarioENDFOTO: TStringField;
    sdsFuncionarioCODCIDADENASC: TIntegerField;
    sdsFuncionarioNASCIONALIDADE: TStringField;
    sdsFuncionarioSEXO: TStringField;
    sdsFuncionarioUFNASC: TStringField;
    sdsFuncionarioCELULAR: TStringField;
    sdsFuncionarioMOTIVOSAIDA: TMemoField;
    sdsFuncionarioCODTURMA: TIntegerField;
    sdsFuncionarioDDD: TIntegerField;
    sdsFuncionarioCIDADE: TStringField;
    sdsFuncionarioNUMPONTO: TIntegerField;
    cdsFuncionarioID: TIntegerField;
    cdsFuncionarioNOME: TStringField;
    cdsFuncionarioENDERECO: TStringField;
    cdsFuncionarioCODCIDADE: TIntegerField;
    cdsFuncionarioBAIRRO: TStringField;
    cdsFuncionarioCEP: TStringField;
    cdsFuncionarioFONE: TStringField;
    cdsFuncionarioDTADMISSAO: TDateField;
    cdsFuncionarioCPF: TStringField;
    cdsFuncionarioRG: TStringField;
    cdsFuncionarioCTPS: TIntegerField;
    cdsFuncionarioSERIE: TStringField;
    cdsFuncionarioPIS: TStringField;
    cdsFuncionarioDTNASCIMENTO: TDateField;
    cdsFuncionarioHRSEMANAIS: TFloatField;
    cdsFuncionarioTIPOPGTO: TStringField;
    cdsFuncionarioVLRSALARIO: TFloatField;
    cdsFuncionarioDTDEMISSAO: TDateField;
    cdsFuncionarioHORARIO1: TStringField;
    cdsFuncionarioHORARIO2: TStringField;
    cdsFuncionarioUF: TStringField;
    cdsFuncionarioOBS: TMemoField;
    cdsFuncionarioESTCIVIL: TStringField;
    cdsFuncionarioESCOLARIDADE: TStringField;
    cdsFuncionarioFUNCAO: TStringField;
    cdsFuncionarioNOMECONJUGE: TStringField;
    cdsFuncionarioNUMMATRICULA: TIntegerField;
    cdsFuncionarioNOMEPAI: TStringField;
    cdsFuncionarioNOMEMAE: TStringField;
    cdsFuncionarioENDFOTO: TStringField;
    cdsFuncionarioCODCIDADENASC: TIntegerField;
    cdsFuncionarioNASCIONALIDADE: TStringField;
    cdsFuncionarioSEXO: TStringField;
    cdsFuncionarioUFNASC: TStringField;
    cdsFuncionarioCELULAR: TStringField;
    cdsFuncionarioMOTIVOSAIDA: TMemoField;
    cdsFuncionarioCODTURMA: TIntegerField;
    cdsFuncionarioDDD: TIntegerField;
    cdsFuncionarioCIDADE: TStringField;
    cdsFuncionarioNUMPONTO: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMFuncionario: TDMFuncionario;
  ctFuncionario : String;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMFuncionario.DataModuleCreate(Sender: TObject);
begin
  ctFuncionario := sdsFuncionario.CommandText;
end;

end.
