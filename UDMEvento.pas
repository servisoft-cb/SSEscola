unit UDMEvento;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMEvento = class(TDataModule)
    sdsEvento: TSQLDataSet;
    dspEvento: TDataSetProvider;
    cdsEvento: TClientDataSet;
    dsEvento: TDataSource;
    sdsEventoID: TIntegerField;
    sdsEventoNOME: TStringField;
    sdsEventoVALOR: TFloatField;
    cdsEventoID: TIntegerField;
    cdsEventoNOME: TStringField;
    cdsEventoVALOR: TFloatField;
    sdsEventoOBS: TMemoField;
    cdsEventoOBS: TMemoField;
    sdsEventoDESCONTO: TStringField;
    cdsEventoDESCONTO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMEvento: TDMEvento;
  ctEvento : String;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMEvento.DataModuleCreate(Sender: TObject);
begin
  ctEvento := sdsEvento.CommandText;
end;

end.
