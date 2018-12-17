unit URelMov_Mensal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfRelMov_Mensal = class(TForm)
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
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand2: TRLBand;
    RLLabel12: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDraw2: TRLDraw;
    RLBand3: TRLBand;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLLabel10: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelMov_Mensal: TfRelMov_Mensal;

implementation

uses UDMMov_Mensal, UConsMov_Mensal, StdCtrls, ToolEdit, DB;

{$R *.dfm}

procedure TfRelMov_Mensal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfRelMov_Mensal.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel1.Caption := 'Relatório do Movimento Mensal';
  RLLabel3.Caption := '';
  if (fConsMov_Mensal.ComboBox1.ItemIndex >= 0) and (fConsMov_Mensal.CurrencyEdit1.AsInteger > 0) then
    RLLabel1.Caption := RLLabel1.Caption + ' - ' + 'Mês/Ano: ' + fConsMov_Mensal.ComboBox1.Text + ' / ' + fConsMov_Mensal.CurrencyEdit1.Text;
  if (fConsMov_Mensal.DateEdit1.Date > 0) and (fConsMov_Mensal.DateEdit2.Date > 0) then
    RLLabel3.Caption := '(Dt.Vecto: ' + fConsMov_Mensal.DateEdit1.Text + ' até ' + fConsMov_Mensal.DateEdit2.Text + ') '
  else
  if (fConsMov_Mensal.DateEdit1.Date > 0) then
    RLLabel3.Caption := '(Dt.Vecto Inicial: ' + fConsMov_Mensal.DateEdit1.Text + ') '
  else
  if (fConsMov_Mensal.DateEdit2.Date > 0) then
    RLLabel3.Caption := '(Dt.Vecto Final: ' + fConsMov_Mensal.DateEdit2.Text + ') ';
  case fConsMov_Mensal.ComboBox4.ItemIndex of
    0 : RLLabel3.Caption := '(Opção de Recibo)';
    1 : RLLabel3.Caption := '(Opção de Boleto)';
  end;
end;

procedure TfRelMov_Mensal.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel12.Caption := DMMov_Mensal.cdsMov_MensalMES_MOV.AsString + '/' + DMMov_Mensal.cdsMov_MensalANO_MOV.AsString;
end;

end.
