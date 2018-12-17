unit URelMov_MensalEvento_Aluno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelMov_MensalEvento_Aluno = class(TForm)
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
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDraw2: TRLDraw;
    RLBand3: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel10: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelMov_MensalEvento_Aluno: TfRelMov_MensalEvento_Aluno;

implementation

uses StdCtrls, ToolEdit, DB, UConsMov_MensalEvento2;

{$R *.dfm}

procedure TfRelMov_MensalEvento_Aluno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelMov_MensalEvento_Aluno.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel1.Caption := 'Relatório do Movimento Mensal Por Evento';
  RLLabel3.Caption := '(Ano/Mês: ' + fConsMov_MensalEvento2.CurrencyEdit1.Text
                    + '/' + FormatFloat('00',fConsMov_MensalEvento2.ComboBox1.ItemIndex + 1) + ')';
  case fConsMov_MensalEvento2.ComboBox3.ItemIndex of
    0 : RLLabel3.Caption := RLLabel3.Caption + ' (Dentro do Ano)';
    1 : RLLabel3.Caption := RLLabel3.Caption + ' (Últimos 12 Meses)';
  end;

  RLLabel8.Caption := fConsMov_MensalEvento2.mEventoCodEvento.AsString;
  RLLabel9.Caption := fConsMov_MensalEvento2.mEventoNomeEvento.AsString;
end;

procedure TfRelMov_MensalEvento_Aluno.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vVlrAux : Real;
begin
  vVlrAux := fConsMov_MensalEvento2.cdsAlunoEveVLRTOTAL.AsFloat / fConsMov_MensalEvento2.mData.RecordCount;
  RLLabel11.Caption := FormatFloat('0.00',vVlrAux);
end;

procedure TfRelMov_MensalEvento_Aluno.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  vVlrAux : Real;
begin
  vVlrAux := RLDBResult1.Value / fConsMov_MensalEvento2.mData.RecordCount;
  RLLabel12.Caption := FormatFloat('0.00',vVlrAux);
end;

end.
