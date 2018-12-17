unit URelMov_MensalEvento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelMov_MensalEvento = class(TForm)
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
    RLDBText1: TRLDBText;
    RLDBResult2: TRLDBResult;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelMov_MensalEvento: TfRelMov_MensalEvento;

implementation

uses StdCtrls, ToolEdit, DB, UConsMov_MensalEvento;

{$R *.dfm}

procedure TfRelMov_MensalEvento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelMov_MensalEvento.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel1.Caption := 'Relatório do Movimento Mensal Por Evento';
  RLLabel3.Caption := '';
  if (fConsMov_MensalEvento.ComboBox1.ItemIndex >= 0) and (fConsMov_MensalEvento.CurrencyEdit1.AsInteger > 0) then
    RLLabel1.Caption := RLLabel1.Caption + ' - ' + 'Mês/Ano: ' + fConsMov_MensalEvento.ComboBox1.Text + ' / ' + fConsMov_MensalEvento.CurrencyEdit1.Text;
  if (fConsMov_MensalEvento.DateEdit1.Date > 0) and (fConsMov_MensalEvento.DateEdit2.Date > 0) then
    RLLabel3.Caption := '(Dt.Vecto: ' + fConsMov_MensalEvento.DateEdit1.Text + ' até ' + fConsMov_MensalEvento.DateEdit2.Text + ') '
  else
  if (fConsMov_MensalEvento.DateEdit1.Date > 0) then
    RLLabel3.Caption := '(Dt.Vecto Inicial: ' + fConsMov_MensalEvento.DateEdit1.Text + ') '
  else
  if (fConsMov_MensalEvento.DateEdit2.Date > 0) then
    RLLabel3.Caption := '(Dt.Vecto Final: ' + fConsMov_MensalEvento.DateEdit2.Text + ') ';
end;

end.
