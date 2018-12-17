unit UDMEmpresa;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMEmpresa = class(TDataModule)
    sdsEmpresa: TSQLDataSet;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    dsEmpresa: TDataSource;
    sdsEmpresaID: TIntegerField;
    sdsEmpresaNOME: TStringField;
    sdsEmpresaENDERECO: TStringField;
    sdsEmpresaBAIRRO: TStringField;
    sdsEmpresaCEP: TStringField;
    sdsEmpresaCIDADE: TStringField;
    sdsEmpresaUF: TStringField;
    sdsEmpresaCPF_CNPJ: TStringField;
    sdsEmpresaPESSOA: TStringField;
    sdsEmpresaDDD: TIntegerField;
    sdsEmpresaFONE: TStringField;
    cdsEmpresaID: TIntegerField;
    cdsEmpresaNOME: TStringField;
    cdsEmpresaENDERECO: TStringField;
    cdsEmpresaBAIRRO: TStringField;
    cdsEmpresaCEP: TStringField;
    cdsEmpresaCIDADE: TStringField;
    cdsEmpresaUF: TStringField;
    cdsEmpresaCPF_CNPJ: TStringField;
    cdsEmpresaPESSOA: TStringField;
    cdsEmpresaDDD: TIntegerField;
    cdsEmpresaFONE: TStringField;
    sdsEmpresaENDLOGO: TStringField;
    sdsEmpresaFANTASIA: TStringField;
    cdsEmpresaENDLOGO: TStringField;
    cdsEmpresaFANTASIA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMEmpresa: TDMEmpresa;
  ctEmpresa : String;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMEmpresa.DataModuleCreate(Sender: TObject);
begin
  ctEmpresa := sdsEmpresa.CommandText;
  cdsEmpresa.Close;
  cdsEmpresa.Open;
end;

end.
