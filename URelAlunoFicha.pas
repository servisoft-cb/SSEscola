unit URelAlunoFicha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelAlunoFicha = class(TForm)
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
    RLDraw5: TRLDraw;
    RLImage1: TRLImage;
    RLDraw6: TRLDraw;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel20: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel27: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDraw9: TRLDraw;
    RLLabel28: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel31: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel32: TRLLabel;
    RLDBText22: TRLDBText;
    RLDraw10: TRLDraw;
    RLLabel33: TRLLabel;
    RLDBText23: TRLDBText;
    RLLabel34: TRLLabel;
    RLDBText24: TRLDBText;
    RLLabel35: TRLLabel;
    RLDBText25: TRLDBText;
    RLLabel36: TRLLabel;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLDBText28: TRLDBText;
    RLBand3: TRLBand;
    RLDraw11: TRLDraw;
    RLLabel39: TRLLabel;
    RLDBMemo2: TRLDBMemo;
    RLBand8: TRLBand;
    RLDraw12: TRLDraw;
    RLLabel40: TRLLabel;
    RLDBMemo3: TRLDBMemo;
    RLBand9: TRLBand;
    RLDraw13: TRLDraw;
    RLLabel41: TRLLabel;
    RLDBMemo4: TRLDBMemo;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelAlunoFicha: TfRelAlunoFicha;

implementation

uses StdCtrls, ToolEdit, DB, UDMAluno, UAlunoC, UDMEmpresa;

{$R *.dfm}

procedure TfRelAlunoFicha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelAlunoFicha.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel1.Caption := DMEmpresa.cdsEmpresaNOME.AsString;
end;

procedure TfRelAlunoFicha.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if FileExists(fAlunoC.cdsAlunoConsEND_FOTO.AsString) Then
    RLImage1.Picture.LoadFromFile(fAlunoC.cdsAlunoConsEND_FOTO.AsString)
  else
    RLImage1.Picture := nil;

  if fAlunoC.cdsAlunoConsRECIBO_BOLETO.AsString = 'B' then
    RLLabel14.Caption := 'Boleto'
  else
    RLLabel14.Caption := 'Recibo';

  if fAlunoC.cdsAlunoConsSEXO.AsString = 'M' then
    RLLabel19.Caption := 'Masculino'
  else
  if fAlunoC.cdsAlunoConsSEXO.AsString = 'F' then
    RLLabel19.Caption := 'Feminino';

  if fAlunoC.cdsAlunoConsPOSSUE_OBSMEDICA.AsString = 'S' then
    RLLabel42.Caption := '(  X  )'
  else
    RLLabel42.Caption := '(     )';
  if fAlunoC.cdsAlunoConsPOSSUE_OBSNUTRICIONAIS.AsString = 'S' then
    RLLabel43.Caption := '(  X  )'
  else
    RLLabel43.Caption := '(     )';

  {fAlunoC.cdsAluno_EventoCons.Close;
  fAlunoC.sdsAluno_EventoCons.ParamByName('ID').AsInteger := fAlunoC.cdsAlunoConsID.AsInteger;
  fAlunoC.cdsAluno_EventoCons.Open;}
end;

end.
