unit UDMMov_Mensal;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient, Provider, DB, SqlExpr;

type
  TDMMov_Mensal = class(TDataModule)
    sdsMov_Mensal: TSQLDataSet;
    sdsMov_MensalID: TIntegerField;
    sdsMov_MensalDTGERACAO: TDateField;
    sdsMov_MensalOBS: TMemoField;
    sdsMov_MensalID_ALUNO: TIntegerField;
    sdsMov_MensalVLRTOTAL: TFloatField;
    sdsMov_MensalVLRDESCONTO: TFloatField;
    sdsMov_MensalVLRLIQUIDO: TFloatField;
    sdsMov_MensalPERCDESCONTO: TFloatField;
    sdsMov_MensalDTVENCIMENTO: TDateField;
    sdsMov_MensalVLRPAGO: TFloatField;
    sdsMov_MensalDTPAGAMENTO: TDateField;
    sdsMov_MensalVLRRESTANTE: TFloatField;
    dspMov_Mensal: TDataSetProvider;
    cdsMov_Mensal: TClientDataSet;
    cdsMov_MensalID: TIntegerField;
    cdsMov_MensalDTGERACAO: TDateField;
    cdsMov_MensalOBS: TMemoField;
    cdsMov_MensalID_ALUNO: TIntegerField;
    cdsMov_MensalVLRTOTAL: TFloatField;
    cdsMov_MensalVLRDESCONTO: TFloatField;
    cdsMov_MensalVLRLIQUIDO: TFloatField;
    cdsMov_MensalPERCDESCONTO: TFloatField;
    cdsMov_MensalDTVENCIMENTO: TDateField;
    cdsMov_MensalVLRPAGO: TFloatField;
    cdsMov_MensalDTPAGAMENTO: TDateField;
    cdsMov_MensalVLRRESTANTE: TFloatField;
    dsMov_Mensal: TDataSource;
    dsMov_Mensal_Mestre: TDataSource;
    sdsMov_Mensal_Eventos: TSQLDataSet;
    cdsMov_Mensal_Eventos: TClientDataSet;
    dsMov_Mensal_Eventos: TDataSource;
    sdsMov_MensalANO_MOV: TIntegerField;
    sdsMov_MensalMES_MOV: TIntegerField;
    cdsMov_MensalANO_MOV: TIntegerField;
    cdsMov_MensalMES_MOV: TIntegerField;
    sdsMov_MensalNOME_ALUNO: TStringField;
    sdsMov_MensalENDERECO: TStringField;
    sdsMov_MensalCODCIDADE: TIntegerField;
    sdsMov_MensalCIDADE: TStringField;
    sdsMov_MensalUF: TStringField;
    sdsMov_MensalCEP: TStringField;
    sdsMov_MensalBAIRRO: TStringField;
    sdsMov_MensalDDD: TIntegerField;
    sdsMov_MensalFONE: TStringField;
    sdsMov_MensalNOME_RESPONSAVEL: TStringField;
    sdsMov_MensalCPF_REPONSAVEL: TStringField;
    sdsMov_MensalCODTURMA: TIntegerField;
    sdsMov_MensalDTNASCIMENTO: TDateField;
    cdsMov_MensalNOME_ALUNO: TStringField;
    cdsMov_MensalENDERECO: TStringField;
    cdsMov_MensalCODCIDADE: TIntegerField;
    cdsMov_MensalCIDADE: TStringField;
    cdsMov_MensalUF: TStringField;
    cdsMov_MensalCEP: TStringField;
    cdsMov_MensalBAIRRO: TStringField;
    cdsMov_MensalDDD: TIntegerField;
    cdsMov_MensalFONE: TStringField;
    cdsMov_MensalNOME_RESPONSAVEL: TStringField;
    cdsMov_MensalCPF_REPONSAVEL: TStringField;
    cdsMov_MensalCODTURMA: TIntegerField;
    cdsMov_MensalDTNASCIMENTO: TDateField;
    sdsMov_MensalNOMEBANCO_PAG: TStringField;
    sdsMov_MensalNUMCHEQUE: TIntegerField;
    sdsMov_MensalCODALUNO: TIntegerField;
    cdsMov_MensalNOMEBANCO_PAG: TStringField;
    cdsMov_MensalNUMCHEQUE: TIntegerField;
    cdsMov_MensalCODALUNO: TIntegerField;
    sdsMov_MensalRECIBO_BOLETO: TStringField;
    cdsMov_MensalRECIBO_BOLETO: TStringField;
    sdsMov_Mensal_EventosID: TIntegerField;
    sdsMov_Mensal_EventosITEM: TIntegerField;
    sdsMov_Mensal_EventosID_EVENTO: TIntegerField;
    sdsMov_Mensal_EventosVLREVENTO: TFloatField;
    sdsMov_Mensal_EventosQTD: TFloatField;
    sdsMov_Mensal_EventosVLRTOTAL: TFloatField;
    sdsMov_Mensal_EventosVLRDESCONTO: TFloatField;
    sdsMov_Mensal_EventosPERCDESCONTO: TFloatField;
    sdsMov_Mensal_EventosANO_MOV: TIntegerField;
    sdsMov_Mensal_EventosMES_MOV: TIntegerField;
    sdsMov_Mensal_EventosTESTE: TStringField;
    cdsMov_MensalsdsMov_Mensal_Eventos: TDataSetField;
    cdsMov_Mensal_EventosID: TIntegerField;
    cdsMov_Mensal_EventosITEM: TIntegerField;
    cdsMov_Mensal_EventosID_EVENTO: TIntegerField;
    cdsMov_Mensal_EventosVLREVENTO: TFloatField;
    cdsMov_Mensal_EventosQTD: TFloatField;
    cdsMov_Mensal_EventosVLRTOTAL: TFloatField;
    cdsMov_Mensal_EventosVLRDESCONTO: TFloatField;
    cdsMov_Mensal_EventosPERCDESCONTO: TFloatField;
    cdsMov_Mensal_EventosANO_MOV: TIntegerField;
    cdsMov_Mensal_EventosMES_MOV: TIntegerField;
    cdsMov_Mensal_EventosTESTE: TStringField;
    qProximo_Item: TSQLDataSet;
    qProximo_ItemITEM: TIntegerField;
    cdsMov_Mensal_EventosDESCONTO: TStringField;
    qEvento: TSQLQuery;
    qEventoID: TIntegerField;
    qEventoNOME: TStringField;
    qEventoVALOR: TFloatField;
    qEventoOBS: TMemoField;
    qEventoDESCONTO: TStringField;
    cdsMov_Mensal_EventosNOMEVENTO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsMov_Mensal_EventosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMMov_Mensal: TDMMov_Mensal;
  ctMov_Mensal : String;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMMov_Mensal.DataModuleCreate(Sender: TObject);
begin
  ctMov_Mensal := sdsMov_Mensal.CommandText;
end;

procedure TDMMov_Mensal.cdsMov_Mensal_EventosCalcFields(DataSet: TDataSet);
begin
  if cdsMov_Mensal_EventosID_EVENTO.AsInteger > 0 then
  begin
    qEvento.Close;
    qEvento.ParamByName('ID').AsInteger := cdsMov_Mensal_EventosID_EVENTO.AsInteger;
    qEvento.Open;
    cdsMov_Mensal_EventosNOMEVENTO.AsString := qEventoNOME.AsString;
    cdsMov_Mensal_EventosDESCONTO.AsString  := qEventoDESCONTO.AsString;
  end
  else
  begin
    cdsMov_Mensal_EventosNOMEVENTO.AsString := '';
    cdsMov_Mensal_EventosDESCONTO.AsString  := '';
  end
end;

end.
