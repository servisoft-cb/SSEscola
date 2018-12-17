unit URelRecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelRecibo = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText9: TRLDBText;
    RLDraw1: TRLDraw;
    RLDraw3: TRLDraw;
    RLLabel14: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBText13: TRLDBText;
    RLDraw4: TRLDraw;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLBand2: TRLBand;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLDraw2: TRLDraw;
    RLBand5: TRLBand;
    RLDraw6: TRLDraw;
    RLBand4: TRLBand;
    RLDraw7: TRLDraw;
    RLLabel24: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLLabel25: TRLLabel;
    RLDBText14: TRLDBText;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLBand3: TRLBand;
    RLLabel28: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel29: TRLLabel;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4AfterPrint(Sender: TObject);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
    vMes : array[1..12] of String;
    vTamObs : Integer;
  public
    { Public declarations }
  end;

var
  fRelRecibo: TfRelRecibo;

implementation

uses UMov_MensalC, UDMMov_Mensal, DB, UDMParametros, UDMEmpresa;

{$R *.dfm}

procedure TfRelRecibo.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vVlrAux : Real;
begin
  if not DMMov_Mensal.cdsMov_Mensal.Locate('ID',fMov_MensalC.mAuxiliarID_MOV.AsInteger,[loCaseInsensitive]) then
    exit;

  {if vVoltar_Reg = 'S' then
  begin
    DMMov_Mensal.cdsMov_Mensal.Prior;
    vVoltar_Reg := 'N';
  end
  else
  if vVoltar_Reg <> 'F' then
  begin
    vVoltar_Reg := 'S';
    vContImp := vContImp + 1;
  end;}

  RLLabel2.Caption  := DMMov_Mensal.cdsMov_MensalID.AsString;

  RLLabel16.Caption := 'Prestação de serviço referente a ' + vMes[DMMov_Mensal.cdsMov_MensalMES_MOV.AsInteger] + ' de ' + DMMov_Mensal.cdsMov_MensalANO_MOV.AsString;

  if DMParametros.cdsParametrosPERC_JUROS.AsFloat > 0 then
    vVlrAux := StrToFloat(FormatFloat('0.00',((DMMov_Mensal.cdsMov_MensalVLRRESTANTE.AsFloat * DMParametros.cdsParametrosPERC_JUROS.AsFloat) / 100) / 30));

  RLLabel17.Caption := 'Juros de mora ao dia: R$ ' + FormatFloat('###,###,##0.00',vVlrAux);
  RLLabel18.Caption := 'Multa de mora: % ' + FormatFloat('0.00',DMParametros.cdsParametrosPERC_MULTA.AsFloat);

  RLLabel22.Caption := DMEmpresa.cdsEmpresaNOME.AsString;
  if DMEmpresa.cdsEmpresaPESSOA.AsString = 'F' then
    RLLabel23.Caption := 'CPF: ' + DMEmpresa.cdsEmpresaCPF_CNPJ.AsString
  else
    RLLabel23.Caption := 'CNPJ: ' + DMEmpresa.cdsEmpresaCPF_CNPJ.AsString;
  RLLabel23.Caption := RLLabel23.Caption + '   Fone: ' + DMEmpresa.cdsEmpresaDDD.AsString + '-' + DMEmpresa.cdsEmpresaFONE.AsString;
end;

procedure TfRelRecibo.FormCreate(Sender: TObject);
var
  i : Integer;
begin
  vMes[1]  := 'Janeiro';
  vMes[2]  := 'Fevereiro';
  vMes[3]  := 'Março';
  vMes[4]  := 'Abril';
  vMes[5]  := 'Maio';
  vMes[6]  := 'Junho';
  vMes[7]  := 'Julho';
  vMes[8]  := 'Agosto';
  vMes[9]  := 'Setembro';
  vMes[10] := 'Outubro';
  vMes[11] := 'Novembro';
  vMes[12] := 'Dezembro';
end;

procedure TfRelRecibo.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vCont : Integer;
  vTam, vQtdEvento, vTamAjuste : Integer;
begin
  if DMParametros.cdsParametrosQTDEVENTOSNORECIBO.AsInteger > 0 then
    vQtdEvento := DMParametros.cdsParametrosQTDEVENTOSNORECIBO.AsInteger;
  if DMParametros.cdsParametrosTAMANHODARLBANDA.AsInteger > 0 then
    vTam := DMParametros.cdsParametrosTAMANHODARLBANDA.AsInteger;
  if DMParametros.cdsParametrosTAMANHOAJUSTERLBANDA.AsInteger > 0 then
    vTamAjuste := DMParametros.cdsParametrosTAMANHOAJUSTERLBANDA.AsInteger;
  if vQtdEvento <= 0 then
    vQtdEvento := 9;
  if vTam <= 0 then
    vTam := 16;
  if vTamAjuste <= 0 then
    vTamAjuste := 8;
  vCont := DMMov_Mensal.cdsMov_Mensal_Eventos.RecordCount div 2;
  if DMMov_Mensal.cdsMov_Mensal_Eventos.RecordCount mod 2 > 0 then
    vCont := vCont + 1;
  vCont := vQtdEvento - vCont;
  if vCont > 0 then
    vCont := vCont * vTam;
  vCont := vCont + vTamAjuste;
  vTamObs := StrToInt(FormatFloat('0',vTamObs - 20));
  RLBand3.Height := vCont - vTamObs;
end;

procedure TfRelRecibo.RLBand4AfterPrint(Sender: TObject);
begin
  vTamObs := RLBand4.Height;
end;

procedure TfRelRecibo.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLDBText10.Visible := (StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_Mensal_EventosVLRDESCONTO.AsFloat)) > 0);
end;

end.
