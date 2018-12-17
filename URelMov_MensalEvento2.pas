unit URelMov_MensalEvento2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelMov_MensalEvento2 = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand2: TRLBand;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDraw2: TRLDraw;
    RLBand3: TRLBand;
    rlrMes1: TRLDBResult;
    RLLabel10: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBResult2: TRLDBResult;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    rlMes1: TRLLabel;
    rlMes2: TRLLabel;
    rlMes4: TRLLabel;
    rlMes3: TRLLabel;
    rlMes5: TRLLabel;
    rlMes6: TRLLabel;
    rlMes8: TRLLabel;
    rlMes7: TRLLabel;
    rlMes9: TRLLabel;
    rlMes10: TRLLabel;
    rlMes12: TRLLabel;
    rlMes11: TRLLabel;
    rlrMes2: TRLDBResult;
    rlrMes3: TRLDBResult;
    rlrMes5: TRLDBResult;
    rlrMes4: TRLDBResult;
    rlrMes6: TRLDBResult;
    rlrMes7: TRLDBResult;
    rlrMes9: TRLDBResult;
    rlrMes8: TRLDBResult;
    rlrMes10: TRLDBResult;
    rlrMes11: TRLDBResult;
    rlrMes12: TRLDBResult;
    RLLabel5: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelMov_MensalEvento2: TfRelMov_MensalEvento2;

implementation

uses StdCtrls, ToolEdit, DB, UConsMov_MensalEvento2;

{$R *.dfm}

procedure TfRelMov_MensalEvento2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelMov_MensalEvento2.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  i : Integer;  
begin
  RLLabel1.Caption := 'Relatório do Movimento Mensal Por Evento';
  RLLabel3.Caption := '(Ano/Mês: ' + fConsMov_MensalEvento2.CurrencyEdit1.Text
                    + '/' + FormatFloat('00',fConsMov_MensalEvento2.ComboBox1.ItemIndex + 1) + ')';
  case fConsMov_MensalEvento2.ComboBox3.ItemIndex of
    0 : RLLabel3.Caption := RLLabel3.Caption + ' (Dentro do Ano)';
    1 : RLLabel3.Caption := RLLabel3.Caption + ' (Últimos 12 Meses)';
  end;

  for i := 1 to 12 do
    TRLLabel(FindComponent('rlMes'+IntToStr(i))).Caption := '';

  i := 0;
  fConsMov_MensalEvento2.mData.First;
  while not fConsMov_MensalEvento2.mData.Eof do
  begin
    i := i + 1;
    TRLLabel(FindComponent('rlMes'+IntToStr(i))).Caption := fConsMov_MensalEvento2.mDataMes.AsString + '/' + fConsMov_MensalEvento2.mDataAno.AsString + '(' + fConsMov_MensalEvento2.mDataQtdAluno.AsString + ')';
    fConsMov_MensalEvento2.mData.Next;
  end;
end;

procedure TfRelMov_MensalEvento2.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vVlrTotalAux : Real;
  i : Integer;
begin
  PrintIt := False;
  if not PrintIt then
    exit;

  for i := 1 to 12 do
    TRLLabel(FindComponent('rlrMes'+IntToStr(i))).Visible := (i <= fConsMov_MensalEvento2.mData.RecordCount);

  vVlrTotalAux := RLDBResult2.Value;
  vVlrTotalAux := vVlrTotalAux / fConsMov_MensalEvento2.mData.RecordCount;
  RLLabel5.Caption := FormatFloat('0.00',vVlrTotalAux);
end;

procedure TfRelMov_MensalEvento2.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLDBText3.Visible := (fConsMov_MensalEvento2.mEventoTipo.AsString <> 'ZZZ');
  if fConsMov_MensalEvento2.mEventoTipo.AsString = 'ZZZ' then
    RLBand2.Color := clBtnFace
  else
    RLBand2.Color := clWhite;
end;

end.
