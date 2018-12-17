unit UDMCidade;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMCidade = class(TDataModule)
    sdsCidade: TSQLDataSet;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    dsCidade: TDataSource;
    sdsCidadeID: TIntegerField;
    sdsCidadeNOME: TStringField;
    sdsCidadeUF: TStringField;
    sdsCidadeDDD: TIntegerField;
    cdsCidadeID: TIntegerField;
    cdsCidadeNOME: TStringField;
    cdsCidadeUF: TStringField;
    cdsCidadeDDD: TIntegerField;
    sdsCidadeCODMUNICIPIO: TStringField;
    cdsCidadeCODMUNICIPIO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCidade: TDMCidade;
  ctCidade : String;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMCidade.DataModuleCreate(Sender: TObject);
begin
  ctCidade := sdsCidade.CommandText;
end;

end.
