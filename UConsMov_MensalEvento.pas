unit UConsMov_MensalEvento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, Grids, DBGrids,
  SMDBGrid, DB, CurrEdit, DBCtrls, RxLookup, DBFilter, DBClient, FMTBcd,
  Provider, SqlExpr, ComCtrls;

type
  TfConsMov_MensalEvento = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Panel2: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    DateEdit1: TDateEdit;
    Label5: TLabel;
    DateEdit2: TDateEdit;
    CurrencyEdit2: TCurrencyEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label6: TLabel;
    Label7: TLabel;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    sdsConsultaID_EVENTO: TIntegerField;
    sdsConsultaNOMEEVENTO: TStringField;
    sdsConsultaVLRTOTAL: TFloatField;
    cdsConsultaID_EVENTO: TIntegerField;
    cdsConsultaNOMEEVENTO: TStringField;
    cdsConsultaVLRTOTAL: TFloatField;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    Label2: TLabel;
    sdsConsultaVLRANUAL: TFloatField;
    cdsConsultaVLRANUAL: TFloatField;
    Label8: TLabel;
    ComboBox3: TComboBox;
    mEvento: TClientDataSet;
    mEventoCodEvento: TIntegerField;
    mEventoNomeEvento: TStringField;
    mEventoVlrTotal: TFloatField;
    mEventoVlrMes1: TFloatField;
    mEventoVlrMes2: TFloatField;
    mEventoVlrMes3: TFloatField;
    mEventoVlrMes4: TFloatField;
    mEventoVlrMes5: TFloatField;
    mEventoVlrMes6: TFloatField;
    mEventoVlrMes7: TFloatField;
    mEventoVlrMes8: TFloatField;
    mEventoVlrMes9: TFloatField;
    mEventoVlrMes10: TFloatField;
    mEventoVlrMes11: TFloatField;
    mEventoVlrMes12: TFloatField;
    mEventoVlrMes13: TFloatField;
    mEventoVlrMes14: TFloatField;
    dsmEvento: TDataSource;
    Label9: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    SQLDataSet1: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    DataSource1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure CurrencyEdit2Exit(Sender: TObject);
  private
    { Private declarations }
    procedure Monta_sqlConsulta;
  public
    { Public declarations }

  end;

var
  fConsMov_MensalEvento: TfConsMov_MensalEvento;

implementation

uses DateUtils, DmdDatabase, StdConvs, URelMov_MensalEvento, UDMEvento;

{$R *.dfm}
          
procedure TfConsMov_MensalEvento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DMEvento.cdsEvento.IndexFieldNames := '';

  if DMEvento.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMEvento);

  Action := Cafree;
end;

procedure TfConsMov_MensalEvento.BitBtn3Click(Sender: TObject);
begin
  Monta_sqlConsulta;
end;

procedure TfConsMov_MensalEvento.Monta_sqlConsulta;
var
  vAno : Integer;
begin
  if CurrencyEdit1.AsInteger > 0 then
    vAno := CurrencyEdit1.AsInteger
  else
  if DateEdit1.Date > 10 then
    vAno := YearOf(DateEdit1.Date)
  else
  if DateEdit2.Date > 10 then
    vAno := YearOf(DateEdit2.Date)
  else
    vAno := YearOf(Date);


  cdsConsulta.Close;
  sdsConsulta.CommandText := ' SELECT ME.id_evento, E.nome NOMEEVENTO, SUM(ME.vlrtotal) VLRTOTAL, VA.VLRANUAL '
                           + ' FROM mov_mensal M '
                           + ' INNER JOIN mov_mensal_eventos ME '
                           + '   ON M.ID = ME.ID '
                           + ' INNER JOIN evento E '
                           + '   ON ME.id_evento = E.ID '
                           + ' INNER JOIN (SELECT SUM(VALOR) VLRANUAL, ID_EVENTO '
                           + '   FROM VALORES_EVENTO '
                           + '   WHERE ANO_MOV = ' + IntToStr(vAno)
                           + '   GROUP BY ID_EVENTO) VA '
                           + ' ON ME.id_evento = VA.ID_EVENTO '
                           + ' WHERE 0 = 0 ';

  if CurrencyEdit2.AsInteger > 0 then
    sdsConsulta.CommandText := sdsConsulta.CommandText
                                            + ' AND ME.ID_EVENTO = ' + CurrencyEdit2.Text
  else
  if RxDBLookupCombo1.Text <> '' then
    sdsConsulta.CommandText := sdsConsulta.CommandText
                                            + ' AND ME.ID_EVENTO = ' + RxDBLookupCombo1.KeyValue;

  if CurrencyEdit1.AsInteger > 0 then
    sdsConsulta.CommandText := sdsConsulta.CommandText
                             + ' AND M.ANO_MOV = ' + CurrencyEdit1.Text;

  if ComboBox1.ItemIndex >= 0 then
    sdsConsulta.CommandText := sdsConsulta.CommandText + ' AND M.MES_MOV = ' + IntToStr(ComboBox1.ItemIndex + 1);

  if DateEdit1.Date > 10 then
    sdsConsulta.CommandText := sdsConsulta.CommandText
                             + ' AND M.DTVENCIMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));

  if DateEdit2.Date > 10 then
    sdsConsulta.CommandText := sdsConsulta.CommandText
                                            + ' AND M.DTVENCIMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));


  sdsConsulta.CommandText := sdsConsulta.CommandText + ' GROUP BY ME.id_evento, E.nome, VA.VLRANUAL ';

  case ComboBox2.ItemIndex of
    0 : sdsConsulta.CommandText := sdsConsulta.CommandText + ' ORDER BY ME.ID_EVENTO';
    1 : sdsConsulta.CommandText := sdsConsulta.CommandText + ' ORDER BY E.NOME';
  end;

  cdsConsulta.Open;

  Label2.Caption := 'Acumulado no ano ' + IntToStr(vAno);
end;

procedure TfConsMov_MensalEvento.FormShow(Sender: TObject);
var
  vData : TDateTime;
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  ComboBox1.ItemIndex     := -1;
  CurrencyEdit1.AsInteger := 0;

  if not Assigned(DMEvento) then
    DMEvento := TDMEvento.Create(Self);

  DMEvento.cdsEvento.Close;
  DMEvento.cdsEvento.Open;
  DMEvento.cdsEvento.IndexFieldNames := 'NOME';
end;

procedure TfConsMov_MensalEvento.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsMov_MensalEvento.BitBtn1Click(Sender: TObject);
begin
  fRelMov_MensalEvento := TfRelMov_MensalEvento.Create(Self);
  fRelMov_MensalEvento.RLReport1.Preview;
  fRelMov_MensalEvento.RLReport1.Free;
end;

procedure TfConsMov_MensalEvento.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 27) then
    ComboBox1.ItemIndex := -1;
end;

procedure TfConsMov_MensalEvento.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    CurrencyEdit2.AsInteger := DMEvento.cdsEventoID.AsInteger
  else
    CurrencyEdit2.AsInteger := 0;
end;

procedure TfConsMov_MensalEvento.CurrencyEdit2Exit(Sender: TObject);
begin
  if CurrencyEdit2.AsInteger <= 0 then
    RxDBLookupCombo1.ClearValue
  else
  if CurrencyEdit2.AsInteger > 0 then
    if DMEvento.cdsEvento.Locate('ID',CurrencyEdit2.AsInteger,[loCaseInsensitive]) then
      RxDBLookupCombo1.KeyValue := DMEvento.cdsEventoID.AsInteger;
end;

end.
