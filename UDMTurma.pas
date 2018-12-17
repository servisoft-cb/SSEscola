unit UDMTurma;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMTurma = class(TDataModule)
    sdsTurma: TSQLDataSet;
    dspTurma: TDataSetProvider;
    cdsTurma: TClientDataSet;
    dsTurma: TDataSource;
    sdsTurmaID: TIntegerField;
    sdsTurmaNOME: TStringField;
    sdsTurmaDADOS_ALIMENTARES: TMemoField;
    sdsTurmaDADOS_ROTINA: TMemoField;
    sdsTurmaCAPACIDADE: TIntegerField;
    sdsTurmaIDADE_INICIAL_ANOS: TIntegerField;
    sdsTurmaIDADE_INICIAL_MESES: TIntegerField;
    sdsTurmaIDADE_FINAL_ANOS: TIntegerField;
    sdsTurmaIDADE_FINAL_MESES: TIntegerField;
    cdsTurmaID: TIntegerField;
    cdsTurmaNOME: TStringField;
    cdsTurmaDADOS_ALIMENTARES: TMemoField;
    cdsTurmaDADOS_ROTINA: TMemoField;
    cdsTurmaCAPACIDADE: TIntegerField;
    cdsTurmaIDADE_INICIAL_ANOS: TIntegerField;
    cdsTurmaIDADE_INICIAL_MESES: TIntegerField;
    cdsTurmaIDADE_FINAL_ANOS: TIntegerField;
    cdsTurmaIDADE_FINAL_MESES: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTurma: TDMTurma;
  ctTurma : String;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMTurma.DataModuleCreate(Sender: TObject);
begin
  ctTurma := sdsTurma.CommandText;
end;

end.
