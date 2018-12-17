unit UFuncionarioC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, Grids, DBGrids,
  SMDBGrid, DB, CurrEdit, DBCtrls, RxLookup, DBFilter, DBClient, FMTBcd,
  Provider, SqlExpr;

type
  TfFuncionarioC = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    SMDBGrid1: TSMDBGrid;
    StaticText1: TStaticText;
    BitBtn5: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Panel2: TPanel;
    BitBtn4: TBitBtn;
    Label10: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label7: TLabel;
    ComboBox3: TComboBox;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    sdsFuncionarioCons: TSQLDataSet;
    dspFuncionarioCons: TDataSetProvider;
    cdsFuncionarioCons: TClientDataSet;
    dsFuncionarioCons: TDataSource;
    sdsFuncionarioConsNOME: TStringField;
    sdsFuncionarioConsENDERECO: TStringField;
    sdsFuncionarioConsCODCIDADE: TIntegerField;
    sdsFuncionarioConsBAIRRO: TStringField;
    sdsFuncionarioConsCEP: TStringField;
    sdsFuncionarioConsFONE: TStringField;
    sdsFuncionarioConsDTADMISSAO: TDateField;
    sdsFuncionarioConsCPF: TStringField;
    sdsFuncionarioConsRG: TStringField;
    sdsFuncionarioConsCTPS: TIntegerField;
    sdsFuncionarioConsSERIE: TStringField;
    sdsFuncionarioConsPIS: TStringField;
    sdsFuncionarioConsDTNASCIMENTO: TDateField;
    sdsFuncionarioConsHRSEMANAIS: TFloatField;
    sdsFuncionarioConsTIPOPGTO: TStringField;
    sdsFuncionarioConsVLRSALARIO: TFloatField;
    sdsFuncionarioConsDTDEMISSAO: TDateField;
    sdsFuncionarioConsHORARIO1: TStringField;
    sdsFuncionarioConsHORARIO2: TStringField;
    sdsFuncionarioConsUF: TStringField;
    sdsFuncionarioConsOBS: TMemoField;
    sdsFuncionarioConsESTCIVIL: TStringField;
    sdsFuncionarioConsESCOLARIDADE: TStringField;
    sdsFuncionarioConsFUNCAO: TStringField;
    sdsFuncionarioConsNOMECONJUGE: TStringField;
    sdsFuncionarioConsNUMMATRICULA: TIntegerField;
    sdsFuncionarioConsNOMEPAI: TStringField;
    sdsFuncionarioConsNOMEMAE: TStringField;
    sdsFuncionarioConsENDFOTO: TStringField;
    sdsFuncionarioConsCODCIDADENASC: TIntegerField;
    sdsFuncionarioConsNASCIONALIDADE: TStringField;
    sdsFuncionarioConsSEXO: TStringField;
    sdsFuncionarioConsUFNASC: TStringField;
    sdsFuncionarioConsCELULAR: TStringField;
    sdsFuncionarioConsMOTIVOSAIDA: TMemoField;
    sdsFuncionarioConsCODTURMA: TIntegerField;
    sdsFuncionarioConsDDD: TIntegerField;
    sdsFuncionarioConsNOMETURMA: TStringField;
    cdsFuncionarioConsNOME: TStringField;
    cdsFuncionarioConsENDERECO: TStringField;
    cdsFuncionarioConsCODCIDADE: TIntegerField;
    cdsFuncionarioConsBAIRRO: TStringField;
    cdsFuncionarioConsCEP: TStringField;
    cdsFuncionarioConsFONE: TStringField;
    cdsFuncionarioConsDTADMISSAO: TDateField;
    cdsFuncionarioConsCPF: TStringField;
    cdsFuncionarioConsRG: TStringField;
    cdsFuncionarioConsCTPS: TIntegerField;
    cdsFuncionarioConsSERIE: TStringField;
    cdsFuncionarioConsPIS: TStringField;
    cdsFuncionarioConsDTNASCIMENTO: TDateField;
    cdsFuncionarioConsHRSEMANAIS: TFloatField;
    cdsFuncionarioConsTIPOPGTO: TStringField;
    cdsFuncionarioConsVLRSALARIO: TFloatField;
    cdsFuncionarioConsDTDEMISSAO: TDateField;
    cdsFuncionarioConsHORARIO1: TStringField;
    cdsFuncionarioConsHORARIO2: TStringField;
    cdsFuncionarioConsUF: TStringField;
    cdsFuncionarioConsOBS: TMemoField;
    cdsFuncionarioConsESTCIVIL: TStringField;
    cdsFuncionarioConsESCOLARIDADE: TStringField;
    cdsFuncionarioConsFUNCAO: TStringField;
    cdsFuncionarioConsNOMECONJUGE: TStringField;
    cdsFuncionarioConsNUMMATRICULA: TIntegerField;
    cdsFuncionarioConsNOMEPAI: TStringField;
    cdsFuncionarioConsNOMEMAE: TStringField;
    cdsFuncionarioConsENDFOTO: TStringField;
    cdsFuncionarioConsCODCIDADENASC: TIntegerField;
    cdsFuncionarioConsNASCIONALIDADE: TStringField;
    cdsFuncionarioConsSEXO: TStringField;
    cdsFuncionarioConsUFNASC: TStringField;
    cdsFuncionarioConsCELULAR: TStringField;
    cdsFuncionarioConsMOTIVOSAIDA: TMemoField;
    cdsFuncionarioConsCODTURMA: TIntegerField;
    cdsFuncionarioConsDDD: TIntegerField;
    cdsFuncionarioConsNOMETURMA: TStringField;
    sdsFuncionarioConsCIDADE: TStringField;
    cdsFuncionarioConsCIDADE: TStringField;
    sdsFuncionarioConsNUMPONTO: TIntegerField;
    cdsFuncionarioConsNUMPONTO: TIntegerField;
    Label6: TLabel;
    DateEdit3: TDateEdit;
    Label8: TLabel;
    DateEdit4: TDateEdit;
    sdsFuncionarioConsID: TIntegerField;
    cdsFuncionarioConsID: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
    ctFuncionarioLoc : String;

    {FDMFuncionario : TDMFuncionario;
    FDMTurma : TDMTurma;
    FDMEvento: TDMEvento;
    FDMCidade: TDMCidade;}

    procedure Abrir_FuncionarioDM(ID : Integer);
    procedure Monta_sqlFuncionario(Tipo : String ; ID : Integer); //P=Com Parametros   N=Sem Parametros
    procedure Inserir_Funcionario;

  public
    { Public declarations }
    {property DMFuncionario : TDmFuncionario read FDMFuncionario write FDMFuncionario;
    property DMTurma : TDMTurma read FDMTurma write FDMTurma;
    property DMEvento: TDMEvento read FDMEvento write FDMEvento;
    property DMCidade: TDMCidade read FDMCidade write FDMCidade;}

  end;

var
  fFuncionarioC: TfFuncionarioC;

implementation

uses DateUtils, UFuncionario, DmdDatabase, UUtil, UDMFuncionario, UDMEvento, UDMTurma, UDMCidade;


{$R *.dfm}

procedure TfFuncionarioC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DMCidade.cdsCidade.IndexFieldNames := '';

  if DMFuncionario.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMFuncionario);
  if DMTurma.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMTurma);
  if DMCidade.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMCidade);

  Action := Cafree;
end;

procedure TfFuncionarioC.BitBtn3Click(Sender: TObject);
begin
  Monta_sqlFuncionario('P',CurrencyEdit1.AsInteger);
end;

procedure TfFuncionarioC.Monta_sqlFuncionario(Tipo : String ; ID : Integer); //P=Com Parametros   N=Sem Parametros
begin
  cdsFuncionarioCons.Close;

  if ID > 0 then
  begin
    sdsFuncionarioCons.CommandText := ctFuncionarioLoc
                                            + ' WHERE F.ID = ' + IntToStr(ID);
  end
  else
  if Tipo = 'P' then
  begin
    sdsFuncionarioCons.CommandText := ctFuncionarioLoc + ' WHERE 0=0 ';
    if DateEdit1.Date > 0 then
      sdsFuncionarioCons.CommandText := sdsFuncionarioCons.CommandText
                                              + ' AND F.DTADMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 0 then
      sdsFuncionarioCons.CommandText := sdsFuncionarioCons.CommandText
                                              + ' AND F.DTADMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));

    if DateEdit3.Date > 0 then
      sdsFuncionarioCons.CommandText := sdsFuncionarioCons.CommandText
                                              + ' AND F.DTDEMISSAO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
    if DateEdit4.Date > 0 then
      sdsFuncionarioCons.CommandText := sdsFuncionarioCons.CommandText
                                              + ' AND F.DTDEMISSAO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
                                                                                                                         
    if RxDBLookupCombo1.Text <> '' then
      sdsFuncionarioCons.CommandText := sdsFuncionarioCons.CommandText
                                              + ' AND F.CODTURMA = ' + IntToStr(RxDBLookupCombo1.KeyValue);

    if Edit1.Text <> '' then
      sdsFuncionarioCons.CommandText := sdsFuncionarioCons.CommandText
                                              + ' AND F.NOME LIKE ' + QuotedStr('%' + Edit1.Text + '%');

    case ComboBox1.ItemIndex of
      0 : sdsFuncionarioCons.CommandText := sdsFuncionarioCons.CommandText + ' AND DTDEMISSAO is NULL ';
      1 : sdsFuncionarioCons.CommandText := sdsFuncionarioCons.CommandText + ' AND DTDEMISSAO is not NULL ';
    end;

    case ComboBox1.ItemIndex of
      0 : sdsFuncionarioCons.CommandText := sdsFuncionarioCons.CommandText + ' ORDER BY F.ID';
      1 : sdsFuncionarioCons.CommandText := sdsFuncionarioCons.CommandText + ' ORDER BY F.NOME, F.ID ';
      2 : sdsFuncionarioCons.CommandText := sdsFuncionarioCons.CommandText + ' ORDER BY T.NOME, F.NOME, F.ID ';
      3 : sdsFuncionarioCons.CommandText := sdsFuncionarioCons.CommandText + ' ORDER BY F.CIDADE, F.NOME, F.ID ';
      4 : sdsFuncionarioCons.CommandText := sdsFuncionarioCons.CommandText + ' ORDER BY F.NUMMATRICULA, F.NOME, F.ID ';
      5 : sdsFuncionarioCons.CommandText := sdsFuncionarioCons.CommandText + ' ORDER BY F.NUMPONTO, F.NOME, F.ID ';
    end;
  end
  else
    sdsFuncionarioCons.CommandText := ctFuncionarioLoc
                                            + ' WHERE F.ID = 0';

  cdsFuncionarioCons.Open;
end;

procedure TfFuncionarioC.BitBtn2Click(Sender: TObject);
begin
  {if not DM1.tUsuarioExcFuncionario.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ', não autorizado!');
    exit;
  end;}

  Abrir_FuncionarioDM(cdsFuncionarioConsID.AsInteger);

  if DMFuncionario.cdsFuncionario.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  DMFuncionario.cdsFuncionario.Delete;
  DMFuncionario.cdsFuncionario.ApplyUpdates(0);
end;

procedure TfFuncionarioC.BitBtn1Click(Sender: TObject);
begin
  if not DMFuncionario.cdsFuncionario.Active then
    Abrir_FuncionarioDM(0);

  Inserir_Funcionario;

  fFuncionario := TfFuncionario.Create(Self);
  fFuncionario.Tag := 0;
  fFuncionario.ShowModal;
end;

procedure TfFuncionarioC.FormShow(Sender: TObject);
var
  vData : TDateTime;
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  ctFuncionarioLoc := sdsFuncionarioCons.CommandText;
  if not Assigned(DMFuncionario) then
    DMFuncionario := TDMFuncionario.Create(Self);
  if not Assigned(DMTurma) then
    DMTurma := TDMTurma.Create(Self);
  if not Assigned(DMCidade) then
    DMCidade := TDMCidade.Create(Self);

  DMCidade.cdsCidade.Close;
  DMCidade.cdsCidade.IndexFieldNames := 'NOME';
  DMCidade.cdsCidade.Open;

  DMTurma.cdsTurma.Close;
  DMTurma.cdsTurma.Open;
end;

procedure TfFuncionarioC.SMDBGrid1DblClick(Sender: TObject);
begin
  Abrir_FuncionarioDM(cdsFuncionarioConsID.AsInteger);

  if DMFuncionario.cdsFuncionario.IsEmpty then
    exit;

  fFuncionario := TfFuncionario.Create(Self);
  DMFuncionario.cdsFuncionario.Edit;
  fFuncionario.Tag := 0;
  fFuncionario.ShowModal;
end;

procedure TfFuncionarioC.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfFuncionarioC.Inserir_Funcionario;
var
  vNumAux : Integer;
begin
  //Busca o último ID
  vNumAux := dmDatabase.ProximaSequencia('FUNCIONARIO',0);

  DMFuncionario.cdsFuncionario.Insert;
  DMFuncionario.cdsFuncionarioID.AsInteger          := vNumAux;
  DMFuncionario.cdsFuncionarioDTADMISSAO.Clear;
  DMFuncionario.cdsFuncionarioDTDEMISSAO.Clear;
  DMFuncionario.cdsFuncionarioNASCIONALIDADE.AsString := 'BRASILEIRA';
end;

procedure TfFuncionarioC.Abrir_FuncionarioDM(ID : Integer);
begin
  DMFuncionario.cdsFuncionario.Close;
  DMFuncionario.sdsFuncionario.CommandText := ctFuncionario + ' WHERE ID = ' + IntToStr(ID);
  DMFuncionario.cdsFuncionario.Open;

  if (ID > 0) and (DMFuncionario.cdsFuncionario.IsEmpty) then
    ShowMessage('Registro não encontrado!');
end;

end.
