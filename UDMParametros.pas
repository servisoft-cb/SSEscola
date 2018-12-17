unit UDMParametros;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMParametros = class(TDataModule)
    sdsParametros: TSQLDataSet;
    dspParametros: TDataSetProvider;
    cdsParametros: TClientDataSet;
    dsParametros: TDataSource;
    sdsParametrosID: TIntegerField;
    sdsParametrosANO_MOV: TIntegerField;
    sdsParametrosMES_MOV: TIntegerField;
    sdsParametrosPERC_JUROS: TFloatField;
    sdsParametrosPERC_MULTA: TFloatField;
    cdsParametrosID: TIntegerField;
    cdsParametrosANO_MOV: TIntegerField;
    cdsParametrosMES_MOV: TIntegerField;
    cdsParametrosPERC_JUROS: TFloatField;
    cdsParametrosPERC_MULTA: TFloatField;
    sdsParametrosDIA_VENCIMENTO: TIntegerField;
    cdsParametrosDIA_VENCIMENTO: TIntegerField;
    sdsParametrosQTDEVENTOSNORECIBO: TIntegerField;
    sdsParametrosTAMANHODARLBANDA: TIntegerField;
    cdsParametrosQTDEVENTOSNORECIBO: TIntegerField;
    cdsParametrosTAMANHODARLBANDA: TIntegerField;
    sdsParametrosTAMANHOAJUSTERLBANDA: TIntegerField;
    cdsParametrosTAMANHOAJUSTERLBANDA: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMParametros: TDMParametros;
  ctParametros : String;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMParametros.DataModuleCreate(Sender: TObject);
begin
  ctParametros := sdsParametros.CommandText;
end;

end.
