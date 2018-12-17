unit URelAluno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelAluno = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLDraw1: TRLDraw;
    RLSubDetail1: TRLSubDetail;
    RLSubDetail2: TRLSubDetail;
    RLBand5: TRLBand;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLDraw4: TRLDraw;
    RLBand6: TRLBand;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLBand7: TRLBand;
    RLDraw3: TRLDraw;
    RLLabel15: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLBand2: TRLBand;
    RLDraw2: TRLDraw;
    RLLabel4: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel26: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel10: TRLLabel;
    RLBand4: TRLBand;
    RLDraw7: TRLDraw;
    RLLabel2: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLDBText12: TRLDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelAluno: TfRelAluno;

implementation

uses StdCtrls, ToolEdit, DB, UDMAluno, UAlunoC, UDMEmpresa;

{$R *.dfm}

procedure TfRelAluno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelAluno.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel1.Caption := DMEmpresa.cdsEmpresaNOME.AsString;
end;

procedure TfRelAluno.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fAlunoC.cdsAlunoConsRECIBO_BOLETO.AsString = 'B' then
    RLLabel14.Caption := 'Boleto'
  else
    RLLabel14.Caption := 'Recibo';

  {fAlunoC.cdsAluno_EventoCons.Close;
  fAlunoC.sdsAluno_EventoCons.ParamByName('ID').AsInteger := fAlunoC.cdsAlunoConsID.AsInteger;
  fAlunoC.cdsAluno_EventoCons.Open;}
end;

end.
