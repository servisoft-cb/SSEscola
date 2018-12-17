unit UConsMov_MensalEvento2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, Grids, DBGrids,
  SMDBGrid, DB, CurrEdit, DBCtrls, RxLookup, DBFilter, DBClient, FMTBcd,
  Provider, SqlExpr, ComCtrls, RLReport;

type
  TfConsMov_MensalEvento2 = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Panel2: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    ComboBox2: TComboBox;
    CurrencyEdit2: TCurrencyEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label6: TLabel;
    Label7: TLabel;
    sdsConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    Label2: TLabel;
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
    sdsConsultaID_EVENTO: TIntegerField;
    sdsConsultaNOMEEVENTO: TStringField;
    sdsConsultaVALOR: TFloatField;
    sdsConsultaMES_MOV: TIntegerField;
    sdsConsultaANO_MOV: TIntegerField;
    cdsConsultaID_EVENTO: TIntegerField;
    cdsConsultaNOMEEVENTO: TStringField;
    cdsConsultaVALOR: TFloatField;
    cdsConsultaMES_MOV: TIntegerField;
    cdsConsultaANO_MOV: TIntegerField;
    mData: TClientDataSet;
    mDataMes: TIntegerField;
    mDataAno: TIntegerField;
    mDataContador: TIntegerField;
    mEventoVlrMedia: TFloatField;
    mEventoTipo: TStringField;
    sdsAlunoEve: TSQLDataSet;
    dspAlunoEve: TDataSetProvider;
    cdsAlunoEve: TClientDataSet;
    dsAlunoEve: TDataSource;
    cdsAlunoEveID_ALUNO: TIntegerField;
    cdsAlunoEveID_EVENTO: TIntegerField;
    cdsAlunoEveNOMEALUNO: TStringField;
    sdsAlunoEveID_ALUNO: TIntegerField;
    sdsAlunoEveID_EVENTO: TIntegerField;
    sdsAlunoEveNOMEALUNO: TStringField;
    StaticText1: TStaticText;
    sdsAlunoEveVLRTOTAL: TFloatField;
    sdsAlunoEveCODALUNO: TIntegerField;
    cdsAlunoEveVLRTOTAL: TFloatField;
    cdsAlunoEveCODALUNO: TIntegerField;
    cdsAlunoEveclVlrMedia: TFloatField;
    qConsQtdAluno: TSQLQuery;
    qConsQtdAlunoQTDALUNO: TIntegerField;
    mDataQtdAluno: TIntegerField;
    mEventoAlu: TClientDataSet;
    mEventoAluCodEvento: TIntegerField;
    mEventoAluCodAluno: TIntegerField;
    mEventoAluNomeAluno: TStringField;
    mEventoAluVlrMes1: TFloatField;
    mEventoAluVlrMes2: TFloatField;
    mEventoAluVlrMes3: TFloatField;
    mEventoAluVlrMes4: TFloatField;
    mEventoAluVlrMes5: TFloatField;
    mEventoAluVlrMes6: TFloatField;
    mEventoAluVlrMes7: TFloatField;
    mEventoAluVlrMes8: TFloatField;
    mEventoAluVlrMes9: TFloatField;
    mEventoAluVlrMes10: TFloatField;
    mEventoAluVlrMes11: TFloatField;
    mEventoAluVlrMes12: TFloatField;
    mEventoAluVlrMes13: TFloatField;
    mEventoAluVlrMes14: TFloatField;
    mEventoAluVlrMedia: TFloatField;
    SQLDataSet1: TSQLDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    IntegerField3: TIntegerField;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    StringField2: TStringField;
    FloatField2: TFloatField;
    IntegerField6: TIntegerField;
    FloatField3: TFloatField;
    DataSource1: TDataSource;
    sdsAlunoEveANO_MOV: TIntegerField;
    sdsAlunoEveMES_MOV: TIntegerField;
    cdsAlunoEveANO_MOV: TIntegerField;
    cdsAlunoEveMES_MOV: TIntegerField;
    mEventoAluID_Aluno: TIntegerField;
    mEventoAluVlrTotal: TFloatField;
    dsmEventoAlu: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo1Exit(Sender: TObject);
    procedure CurrencyEdit2Exit(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure cdsAlunoEveCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    vAno_Ini, vAno_Fin, vMes_Ini, vMes_Fin : Integer;

    procedure Monta_sqlConsulta;
    procedure Le_cdsConsulta;
    procedure Configurar_Grid;

    procedure Grava_mEvento(CodEvento, Contador : Integer ; Nome : String ; Valor : Real);
    procedure Monta_AlunoEve;

  public
    { Public declarations }

  end;

var
  fConsMov_MensalEvento2: TfConsMov_MensalEvento2;

implementation

uses DateUtils, DmdDatabase, StdConvs, UDMEvento,
  Math, URelMov_MensalEvento2, UConsMov_MensalEvento_Aluno;

{$R *.dfm}
          
procedure TfConsMov_MensalEvento2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qConsQtdAluno.Close;
  DMEvento.cdsEvento.IndexFieldNames := '';

  if DMEvento.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMEvento);

  Action := Cafree;
end;

procedure TfConsMov_MensalEvento2.BitBtn3Click(Sender: TObject);
begin
  if (ComboBox1.ItemIndex < 0) then
  begin
    ShowMessage('Mês não foi informado!');
    exit;
  end;
  if (CurrencyEdit1.AsInteger <= 0) then
  begin
    ShowMessage('Mês não foi informado!');
    exit;
  end;

  mEvento.IndexFieldNames := 'CodEvento';

  Monta_sqlConsulta;
  Le_cdsConsulta;
  Configurar_Grid;

  if mData.RecordCount > 0 then
  begin
    mEvento.First;
    while not mEvento.Eof do
    begin
      mEvento.Edit;
      mEventoVlrMedia.AsFloat := mEventoVlrTotal.AsFloat / mData.RecordCount;
      mEvento.Post;
      mEvento.Next;
    end;
  end;
  case ComboBox2.ItemIndex of
    0 : mEvento.IndexFieldNames := 'Tipo;CodEvento';
    1 : mEvento.IndexFieldNames := 'Tipo;NomeEvento';
  end;
end;

procedure TfConsMov_MensalEvento2.Monta_sqlConsulta;
var
  i, vCont : Integer;
  vFlag : Boolean;
begin
  if ComboBox3.ItemIndex = 0 then
  begin
    vAno_Ini := CurrencyEdit1.AsInteger;
    vAno_Fin := CurrencyEdit1.AsInteger;
    vMes_Ini := 01;
    vMes_Fin := (ComboBox1.ItemIndex + 1);
  end
  else
  begin
    vAno_Ini := CurrencyEdit1.AsInteger - 1;
    vAno_Fin := CurrencyEdit1.AsInteger;
    vMes_Fin := (ComboBox1.ItemIndex + 1);
    vMes_Ini := (ComboBox1.ItemIndex + 1);
    i := 0;
    while i <= 12 do
    begin
      i := i + 1;
      vMes_Ini := vMes_Ini - 1;
      if vMes_Ini <= 0 then
        vMes_Ini := 12;
    end;
  end;

  cdsConsulta.Close;
  sdsConsulta.CommandText := ' SELECT V.id_evento, E.nome NOMEEVENTO, V.VALOR, V.MES_MOV, V.ANO_MOV '
                           + ' FROM VALORES_EVENTO V '
                           + ' INNER JOIN evento E '
                           + ' ON V.ID_EVENTO = E.ID '
                           + ' WHERE ((V.ANO_MOV = ' + IntToStr(vAno_Ini) + ' AND V.MES_MOV >= ' + IntToStr(vMes_Ini) + ')'
                           + '   OR (V.ANO_MOV = ' + IntToStr(vAno_Fin) + ' AND V.MES_MOV <= ' + IntToStr(vMes_Fin) + '))';

  {sdsConsulta.CommandText := ' SELECT V.id_evento, E.nome NOMEEVENTO, V.VALOR, V.MES_MOV, V.ANO_MOV '
                           + ' FROM VALORES_EVENTO V '
                           + ' INNER JOIN evento E '
                           + ' ON V.ID_EVENTO = E.ID '
                           + ' WHERE V.ANO_MOV = ' + CurrencyEdit1.Text
                           + ' AND ((V.MES_MOV >= ' + IntToStr(vMes_Ini) + ')'
                           + ' AND (V.MES_MOV <= ' + IntToStr(vMes_Fin) + '))';}

  if CurrencyEdit2.AsInteger > 0 then
    sdsConsulta.CommandText := sdsConsulta.CommandText
                                            + ' AND V.ID_EVENTO = ' + CurrencyEdit2.Text
  else
  if RxDBLookupCombo1.Text <> '' then
    sdsConsulta.CommandText := sdsConsulta.CommandText
                                            + ' AND V.ID_EVENTO = ' + RxDBLookupCombo1.KeyValue;

  cdsConsulta.Open;

  //Label2.Caption := 'Acumulado no ano ' + IntToStr(vAno);
end;

procedure TfConsMov_MensalEvento2.FormShow(Sender: TObject);
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

  CurrencyEdit1.AsInteger := YearOf(Date);

end;

procedure TfConsMov_MensalEvento2.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfConsMov_MensalEvento2.BitBtn1Click(Sender: TObject);
begin
  fRelMov_MensalEvento2 := TfRelMov_MensalEvento2.Create(Self);
  fRelMov_MensalEvento2.RLReport1.Preview;
  fRelMov_MensalEvento2.RLReport1.Free;
end;

procedure TfConsMov_MensalEvento2.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 27) then
    ComboBox1.ItemIndex := -1;
end;

procedure TfConsMov_MensalEvento2.RxDBLookupCombo1Exit(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
    CurrencyEdit2.AsInteger := DMEvento.cdsEventoID.AsInteger
  else
    CurrencyEdit2.AsInteger := 0;
end;

procedure TfConsMov_MensalEvento2.CurrencyEdit2Exit(Sender: TObject);
begin
  if CurrencyEdit2.AsInteger <= 0 then
    RxDBLookupCombo1.ClearValue
  else
  if CurrencyEdit2.AsInteger > 0 then
    if DMEvento.cdsEvento.Locate('ID',CurrencyEdit2.AsInteger,[loCaseInsensitive]) then
      RxDBLookupCombo1.KeyValue := DMEvento.cdsEventoID.AsInteger;
end;

procedure TfConsMov_MensalEvento2.Le_cdsConsulta;
var
  vContador : Integer;
  i : Integer;
begin
  mData.EmptyDataSet;
  mEvento.EmptyDataSet;

  cdsConsulta.First;
  while not cdsConsulta.Eof do
  begin
    mData.Last;
    i := mDataContador.AsInteger;
    vContador := 0;
    if mData.Locate('Ano;Mes',VarArrayOf([cdsConsultaANO_MOV.AsInteger,cdsConsultaMES_MOV.AsInteger]),[locaseinsensitive]) then
      vContador := mDataContador.AsInteger
    else
    begin
      qConsQtdAluno.Close;
      qConsQtdAluno.ParamByName('Ano_Mov').AsInteger := cdsConsultaANO_MOV.AsInteger;
      qConsQtdAluno.ParamByName('Mes_Mov').AsInteger := cdsConsultaMES_MOV.AsInteger;
      qConsQtdAluno.Open;

      i := i + 1;
      mData.Insert;
      mDataAno.AsInteger      := cdsConsultaANO_MOV.AsInteger;
      mDataMes.AsInteger      := cdsConsultaMES_MOV.AsInteger;
      mDataContador.AsInteger := i;
      mDataQtdAluno.AsInteger := qConsQtdAlunoQTDALUNO.AsInteger;
      mData.Post;
      vContador := i;
    end;

    Grava_mEvento(cdsConsultaID_EVENTO.AsInteger,vContador,cdsConsultaNOMEEVENTO.AsString,cdsConsultaVALOR.AsFloat);

    Grava_mEvento(99999,vContador,cdsConsultaNOMEEVENTO.AsString,cdsConsultaVALOR.AsFloat);

    cdsConsulta.Next;
  end;
end;

procedure TfConsMov_MensalEvento2.Configurar_Grid;
var
  i : Integer;
  vContCol : Integer;
  x : Integer;
  vNomeCol : String;
  NumGrid : Integer;
  v : Integer;
begin
  vContCol := mData.RecordCount;
  for NumGrid := 1 to 1 do
  begin               
    i := 0;
    while i <= (TSMDBGrid(FindComponent('SMDBGrid'+IntToStr(NumGrid))).ColCount - 2) do
    begin
      x:= 0;
      vNomeCol := TSMDBGrid(FindComponent('SMDBGrid'+IntToStr(NumGrid))).Columns[i].FieldName;
      if copy(vNomeCol,1,6) = 'VlrMes' then
      begin
        vNomeCol := copy(vNomeCol,7,2);
        x := StrToInt(vNomeCol);
        TSMDBGrid(FindComponent('SMDBGrid'+IntToStr(NumGrid))).Columns[i].Visible := (x <= vContCol);
        if mData.Locate('Contador',x,[loCaseInsensitive]) then
          TSMDBGrid(FindComponent('SMDBGrid'+IntToStr(NumGrid))).Columns[i].Title.Caption := FormatFloat('00',mDataMes.AsInteger) + '/' + mDataAno.AsString + ' (' + mDataQtdAluno.AsString + ')';
      end;
      i := i + 1;
    end;
  end;
end;


procedure TfConsMov_MensalEvento2.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if mEventoTipo.AsString = 'ZZZ' then
    Background := clBtnFace;
  if Field = mEventoVlrTotal then
  begin
    Background  := clMoneyGreen;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end
  else
  if Field = mEventoVlrMedia then
  begin
    Background  := clAqua;
    AFont.Style := [fsBold];
    AFont.Color := clBlack;
  end;
end;

procedure TfConsMov_MensalEvento2.Grava_mEvento(CodEvento,
  Contador: Integer; Nome: String; Valor: Real);
begin
  if mEvento.FindKey([CodEvento]) then
    mEvento.Edit
  else
  begin
    mEvento.Insert;
    mEventoCodEvento.AsInteger := CodEvento;
    mEventoNomeEvento.AsString := Nome;
    if CodEvento = 99999 then
    begin
      mEventoTipo.AsString       := 'ZZZ';
      mEventoNomeEvento.AsString := '... TOTAL ...';
    end
    else
      mEventoTipo.AsString := '';
  end;
  mEvento.FieldByName('VlrMes'+IntToStr(Contador)).AsFloat := mEvento.FieldByName('VlrMes'+IntToStr(Contador)).AsFloat + Valor;
  mEventoVlrTotal.AsFloat := mEventoVlrTotal.AsFloat + Valor;
  mEvento.Post;
end;

procedure TfConsMov_MensalEvento2.SMDBGrid1DblClick(Sender: TObject);
begin
  if mEvento.IsEmpty then
    exit;
  if mEventoCodEvento.AsInteger < 1 then
    exit;

  Monta_AlunoEve;
  fConsMov_MensalEvento_Aluno := TfConsMov_MensalEvento_Aluno.Create(Self);
  fConsMov_MensalEvento_Aluno.ShowModal;
end;

procedure TfConsMov_MensalEvento2.Monta_AlunoEve;
var
  vContador : Integer;
begin
  cdsAlunoEve.Close;
  sdsAlunoEve.ParamByName('ANOINI').AsInteger    := vAno_Ini;
  sdsAlunoEve.ParamByName('MESINI').AsInteger    := vMes_Ini;
  sdsAlunoEve.ParamByName('ANOFIN').AsInteger    := vAno_Fin;
  sdsAlunoEve.ParamByName('MESFIN').AsInteger    := vMes_Fin;
  sdsAlunoEve.ParamByName('CODEVENTO').AsInteger := mEventoCodEvento.AsInteger;
  cdsAlunoEve.Open;

  mEventoAlu.IndexFieldNames := 'ID_Aluno';

  mEventoAlu.EmptyDataSet;
  cdsAlunoEve.First;
  while not cdsAlunoEve.Eof do
  begin
    if mData.Locate('Ano;Mes',VarArrayOf([cdsAlunoEveANO_MOV.AsInteger,cdsAlunoEveMES_MOV.AsInteger]),[locaseinsensitive]) then
      vContador := mDataContador.AsInteger;

    if mEventoAlu.FindKey([cdsAlunoEveID_ALUNO.AsInteger]) then
      mEventoAlu.Edit
    else
    begin
      mEventoAlu.Insert;
      mEventoAluID_Aluno.AsInteger  := cdsAlunoEveID_ALUNO.AsInteger;
      mEventoAluCodEvento.AsInteger := cdsAlunoEveID_EVENTO.AsInteger;
      mEventoAluCodAluno.AsInteger  := cdsAlunoEveCODALUNO.AsInteger;
      mEventoAluNomeAluno.AsString  := cdsAlunoEveNOMEALUNO.AsString;
    end;

    mEventoAlu.FieldByName('VlrMes'+IntToStr(vContador)).AsFloat := mEventoAlu.FieldByName('VlrMes'+IntToStr(vContador)).AsFloat + cdsAlunoEveVLRTOTAL.AsFloat;
    mEventoAluVlrTotal.AsFloat := mEventoAluVlrTotal.AsFloat + cdsAlunoEveVLRTOTAL.AsFloat;
    mEventoAluVlrMedia.AsFloat := mEventoAluVlrTotal.AsFloat / mData.RecordCount;
    mEventoAlu.Post;

    cdsAlunoEve.Next;
  end;

end;

procedure TfConsMov_MensalEvento2.cdsAlunoEveCalcFields(DataSet: TDataSet);
begin
  if StrToFloat(FormatFloat('0.00',cdsAlunoEveVLRTOTAL.AsFloat)) > 0 then
    cdsAlunoEveclVlrMedia.AsFloat := cdsAlunoEveVLRTOTAL.AsFloat / mData.RecordCount;
end;

end.
