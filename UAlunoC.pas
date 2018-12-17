unit UAlunoC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, Grids, DBGrids,
  SMDBGrid, DB, CurrEdit, DBCtrls, RxLookup, DBFilter, DBClient, FMTBcd,
  Provider, SqlExpr;

type
  TfAlunoC = class(TForm)
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
    sdsAlunoCons: TSQLDataSet;
    dspAlunoCons: TDataSetProvider;
    cdsAlunoCons: TClientDataSet;
    dsAlunoCons: TDataSource;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label6: TLabel;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Label7: TLabel;
    ComboBox3: TComboBox;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    sdsAlunoConsID: TIntegerField;
    sdsAlunoConsCODIGO: TIntegerField;
    sdsAlunoConsNOME: TStringField;
    sdsAlunoConsENDERECO: TStringField;
    sdsAlunoConsCODCIDADE: TIntegerField;
    sdsAlunoConsCIDADE: TStringField;
    sdsAlunoConsUF: TStringField;
    sdsAlunoConsCEP: TStringField;
    sdsAlunoConsBAIRRO: TStringField;
    sdsAlunoConsDDD: TIntegerField;
    sdsAlunoConsFONE: TStringField;
    sdsAlunoConsNOME_PAI: TStringField;
    sdsAlunoConsCPF_PAI: TStringField;
    sdsAlunoConsDDD_PAI: TIntegerField;
    sdsAlunoConsFONE_PAI: TStringField;
    sdsAlunoConsNOME_MAE: TStringField;
    sdsAlunoConsCPF_MAE: TStringField;
    sdsAlunoConsDDD_MAE: TIntegerField;
    sdsAlunoConsFONE_MAE: TStringField;
    sdsAlunoConsTIPOCPF: TStringField;
    sdsAlunoConsNOME_RESPONSAVEL: TStringField;
    sdsAlunoConsCPF_REPONSAVEL: TStringField;
    sdsAlunoConsDIACOBRANCA: TIntegerField;
    sdsAlunoConsCODTURMA: TIntegerField;
    sdsAlunoConsOBS: TMemoField;
    sdsAlunoConsTIPO_RESPONSAVEL: TStringField;
    sdsAlunoConsINATIVO: TStringField;
    sdsAlunoConsDTINATIVO: TDateField;
    sdsAlunoConsDTNASCIMENTO: TDateField;
    sdsAlunoConsOBS_MEDICA: TMemoField;
    sdsAlunoConsPOSSUE_OBSMEDICA: TStringField;
    sdsAlunoConsOBS_FREQUENCIA: TMemoField;
    sdsAlunoConsMES_INICIO: TIntegerField;
    sdsAlunoConsANO_INICIO: TIntegerField;
    sdsAlunoConsMES_FINAL: TIntegerField;
    sdsAlunoConsANO_FINAL: TIntegerField;
    sdsAlunoConsRECIBO_BOLETO: TStringField;
    sdsAlunoConsEND_FOTO: TStringField;
    sdsAlunoConsSEXO: TStringField;
    sdsAlunoConsDTCADASTRO: TDateField;
    sdsAlunoConsNOMETURMA: TStringField;
    sdsAlunoConsIDADE_FINAL_ANOS: TIntegerField;
    sdsAlunoConsIDADE_FINAL_MESES: TIntegerField;
    sdsAlunoConsNOMECIDADE: TStringField;
    cdsAlunoConsID: TIntegerField;
    cdsAlunoConsCODIGO: TIntegerField;
    cdsAlunoConsNOME: TStringField;
    cdsAlunoConsENDERECO: TStringField;
    cdsAlunoConsCODCIDADE: TIntegerField;
    cdsAlunoConsCIDADE: TStringField;
    cdsAlunoConsUF: TStringField;
    cdsAlunoConsCEP: TStringField;
    cdsAlunoConsBAIRRO: TStringField;
    cdsAlunoConsDDD: TIntegerField;
    cdsAlunoConsFONE: TStringField;
    cdsAlunoConsNOME_PAI: TStringField;
    cdsAlunoConsCPF_PAI: TStringField;
    cdsAlunoConsDDD_PAI: TIntegerField;
    cdsAlunoConsFONE_PAI: TStringField;
    cdsAlunoConsNOME_MAE: TStringField;
    cdsAlunoConsCPF_MAE: TStringField;
    cdsAlunoConsDDD_MAE: TIntegerField;
    cdsAlunoConsFONE_MAE: TStringField;
    cdsAlunoConsTIPOCPF: TStringField;
    cdsAlunoConsNOME_RESPONSAVEL: TStringField;
    cdsAlunoConsCPF_REPONSAVEL: TStringField;
    cdsAlunoConsDIACOBRANCA: TIntegerField;
    cdsAlunoConsCODTURMA: TIntegerField;
    cdsAlunoConsOBS: TMemoField;
    cdsAlunoConsTIPO_RESPONSAVEL: TStringField;
    cdsAlunoConsINATIVO: TStringField;
    cdsAlunoConsDTINATIVO: TDateField;
    cdsAlunoConsDTNASCIMENTO: TDateField;
    cdsAlunoConsOBS_MEDICA: TMemoField;
    cdsAlunoConsPOSSUE_OBSMEDICA: TStringField;
    cdsAlunoConsOBS_FREQUENCIA: TMemoField;
    cdsAlunoConsMES_INICIO: TIntegerField;
    cdsAlunoConsANO_INICIO: TIntegerField;
    cdsAlunoConsMES_FINAL: TIntegerField;
    cdsAlunoConsANO_FINAL: TIntegerField;
    cdsAlunoConsRECIBO_BOLETO: TStringField;
    cdsAlunoConsEND_FOTO: TStringField;
    cdsAlunoConsSEXO: TStringField;
    cdsAlunoConsDTCADASTRO: TDateField;
    cdsAlunoConsNOMETURMA: TStringField;
    cdsAlunoConsIDADE_FINAL_ANOS: TIntegerField;
    cdsAlunoConsIDADE_FINAL_MESES: TIntegerField;
    cdsAlunoConsNOMECIDADE: TStringField;
    cdsAlunoConsclIdadeTexto: TStringField;
    sdsAluno_EventoCons: TSQLDataSet;
    sdsAluno_EventoConsID: TIntegerField;
    sdsAluno_EventoConsCODEVENTO: TIntegerField;
    sdsAluno_EventoConsVALOR: TFloatField;
    sdsAluno_EventoConsDTINICIO: TDateField;
    sdsAluno_EventoConsDTFINAL: TDateField;
    sdsAluno_EventoConsOBS: TMemoField;
    sdsAluno_EventoConsANO_INICIO: TIntegerField;
    sdsAluno_EventoConsMES_INICIO: TIntegerField;
    sdsAluno_EventoConsANO_FINAL: TIntegerField;
    sdsAluno_EventoConsMES_FINAL: TIntegerField;
    sdsAluno_EventoConsQTD: TFloatField;
    sdsAluno_EventoConsNOMEEVENTO: TStringField;
    cdsAluno_EventoCons: TClientDataSet;
    cdsAluno_EventoConsID: TIntegerField;
    cdsAluno_EventoConsCODEVENTO: TIntegerField;
    cdsAluno_EventoConsVALOR: TFloatField;
    cdsAluno_EventoConsDTINICIO: TDateField;
    cdsAluno_EventoConsDTFINAL: TDateField;
    cdsAluno_EventoConsOBS: TMemoField;
    cdsAluno_EventoConsANO_INICIO: TIntegerField;
    cdsAluno_EventoConsMES_INICIO: TIntegerField;
    cdsAluno_EventoConsANO_FINAL: TIntegerField;
    cdsAluno_EventoConsMES_FINAL: TIntegerField;
    cdsAluno_EventoConsQTD: TFloatField;
    cdsAluno_EventoConsNOMEEVENTO: TStringField;
    sdsAlunoConsPOSSUE_OBSNUTRICIONAIS: TStringField;
    sdsAlunoConsOBS_NUTRICIONAIS: TMemoField;
    cdsAlunoConsPOSSUE_OBSNUTRICIONAIS: TStringField;
    cdsAlunoConsOBS_NUTRICIONAIS: TMemoField;
    BitBtn6: TBitBtn;
    GroupBox1: TGroupBox;
    SMDBGrid2: TSMDBGrid;
    dsAlunoCons_Mestre: TDataSource;
    cdsAlunoConssdsAluno_EventoCons: TDataSetField;
    dsAluno_EventoCons: TDataSource;
    Panel3: TPanel;
    BitBtn14: TBitBtn;
    BitBtn12: TBitBtn;
    Shape1: TShape;
    Label8: TLabel;
    qProximoCod: TSQLQuery;
    qProximoCodCODIGO: TIntegerField;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure cdsAlunoConsCalcFields(DataSet: TDataSet);
    procedure BitBtn6Click(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure SMDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
    ctAlunoLoc : String;

    {FDMAluno : TDMAluno;
    FDMTurma : TDMTurma;
    FDMEvento: TDMEvento;
    FDMCidade: TDMCidade;}

    procedure Abrir_AlunoDM(ID : Integer);
    procedure Monta_sqlAluno(Tipo : String ; ID, Codigo : Integer); //P=Com Parametros   N=Sem Parametros
    procedure Inserir_Aluno;
    procedure Chama_AltEvento(Tipo : String); //A= Alteração   I= Inserir

  public
    { Public declarations }
    {property DMAluno : TDmAluno read FDMAluno write FDMAluno;
    property DMTurma : TDMTurma read FDMTurma write FDMTurma;
    property DMEvento: TDMEvento read FDMEvento write FDMEvento;
    property DMCidade: TDMCidade read FDMCidade write FDMCidade;}

  end;

var
  fAlunoC: TfAlunoC;

implementation

uses DateUtils, UAluno, DmdDatabase, UUtil, UDMAluno, UDMEvento, UDMTurma, UDMCidade,
  URelAluno, UDMEmpresa, URelAlunoFicha, UAlunoAltEvento;


{$R *.dfm}

procedure TfAlunoC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DMCidade.cdsCidade.IndexFieldNames := '';

  if DMAluno.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMAluno);
  if DMTurma.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMTurma);
  if DMEvento.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMEvento);
  if DMCidade.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMCidade);

  Action := Cafree;
end;

procedure TfAlunoC.BitBtn3Click(Sender: TObject);
begin
  Monta_sqlAluno('P',0,CurrencyEdit1.AsInteger);
end;

procedure TfAlunoC.Monta_sqlAluno(Tipo : String ; ID,Codigo : Integer); //P=Com Parametros   N=Sem Parametros
begin
  cdsAlunoCons.Close;

  if ID > 0 then
  begin
    sdsAlunoCons.CommandText := ctAlunoLoc
                                            + ' WHERE AL.ID = ' + IntToStr(ID);
  end
  else
  if Codigo > 0 then
  begin
    sdsAlunoCons.CommandText := ctAlunoLoc
                                            + ' WHERE AL.CODIGO = ' + IntToStr(Codigo);
  end
  else
  if Tipo = 'P' then
  begin
    sdsAlunoCons.CommandText := ctAlunoLoc + ' WHERE 0=0 ';
    if DateEdit1.Date > 0 then
      sdsAlunoCons.CommandText := sdsAlunoCons.CommandText
                                              + ' AND AL.DTCADASTRO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
    if DateEdit2.Date > 0 then
      sdsAlunoCons.CommandText := sdsAlunoCons.CommandText
                                              + ' AND AL.DTCADASTRO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));

    if RxDBLookupCombo1.Text <> '' then
      sdsAlunoCons.CommandText := sdsAlunoCons.CommandText
                                              + ' AND AL.CODTURMA = ' + IntToStr(RxDBLookupCombo1.KeyValue);

    if Edit1.Text <> '' then
      sdsAlunoCons.CommandText := sdsAlunoCons.CommandText
                                              + ' AND AL.NOME LIKE ' + QuotedStr('%' + Edit1.Text + '%');

    case ComboBox1.ItemIndex of
      0 : sdsAlunoCons.CommandText := sdsAlunoCons.CommandText + ' AND AL.INATIVO = ' + QuotedStr('N');
      1 : sdsAlunoCons.CommandText := sdsAlunoCons.CommandText + ' AND AL.INATIVO = ' + QuotedStr('S');
    end;

    case ComboBox3.ItemIndex of
      0 : sdsAlunoCons.CommandText := sdsAlunoCons.CommandText + ' ORDER BY AL.CODIGO';
      1 : sdsAlunoCons.CommandText := sdsAlunoCons.CommandText + ' ORDER BY AL.NOME, AL.CODIGO ';
      2 : sdsAlunoCons.CommandText := sdsAlunoCons.CommandText + ' ORDER BY AL.DTNASCIMENTO, AL.NOME, AL.CODIGO ';
      3 : sdsAlunoCons.CommandText := sdsAlunoCons.CommandText + ' ORDER BY T.NOME, AL.NOME, AL.CODIGO ';
      4 : sdsAlunoCons.CommandText := sdsAlunoCons.CommandText + ' ORDER BY CID.NOME, AL.NOME, AL.CODIGO ';
    end;

  end
  else
    sdsAlunoCons.CommandText := ctAlunoLoc
                                            + ' WHERE AL.ID = 0';

  cdsAlunoCons.Open;
end;

procedure TfAlunoC.BitBtn2Click(Sender: TObject);
begin
  {if not DM1.tUsuarioExcAluno.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ', não autorizado!');
    exit;
  end;}

  Abrir_AlunoDM(cdsAlunoConsID.AsInteger);

  if DMAluno.cdsAluno.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  DMAluno.cdsAluno_Evento.First;
  while not DMAluno.cdsAluno_Evento.Eof do
    DMAluno.cdsAluno_Evento.Delete;

  DMAluno.cdsAluno.Delete;
  DMAluno.cdsAluno.ApplyUpdates(0);

  BitBtn3Click(Sender);
end;

procedure TfAlunoC.BitBtn1Click(Sender: TObject);
begin
  {if not DM1.tUsuarioInsAluno.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ', não autorizado!');
    exit;
  end;}

  if not DMAluno.cdsAluno.Active then
    Abrir_AlunoDM(0);

  Inserir_Aluno;

  fAluno := TfAluno.Create(Self);
  fAluno.Tag := 0;
  fAluno.ShowModal;
end;

procedure TfAlunoC.FormShow(Sender: TObject);
var
  vData : TDateTime;
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  ctAlunoLoc := sdsAlunoCons.CommandText;
  if not Assigned(DMAluno) then
    DMAluno := TDMAluno.Create(Self);
  if not Assigned(DMTurma) then
    DMTurma := TDMTurma.Create(Self);
  if not Assigned(DMEvento) then
    DMEvento := TDMEvento.Create(Self);
  if not Assigned(DMCidade) then
    DMCidade := TDMCidade.Create(Self);

  DMCidade.cdsCidade.Close;
  DMCidade.cdsCidade.Open;
  DMCidade.cdsCidade.IndexFieldNames := 'NOME';

  DMEvento.cdsEvento.Close;
  DMEvento.cdsEvento.Open;
  DMTurma.cdsTurma.Close;
  DMTurma.cdsTurma.Open;

  {BitBtn1.Enabled := DM1.tUsuarioInsAluno.AsBoolean;
  BitBtn2.Enabled := DM1.tUsuarioExcAluno.AsBoolean;}
end;

procedure TfAlunoC.SMDBGrid1DblClick(Sender: TObject);
begin
  Abrir_AlunoDM(cdsAlunoConsID.AsInteger);

  if DMAluno.cdsAluno.IsEmpty then
    exit;
  {if not DM1.tUsuarioAltAluno.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ' não autorizado a fazer a alteração!');
    exit;
  end;}

  fAluno := TfAluno.Create(Self);

  //if DM1.tUsuarioAltAluno.AsBoolean then
    DMAluno.cdsAluno.Edit;
  {//else
  //begin
    fAluno.Panel1.Enabled   := False;
    fAluno.Panel2.Enabled   := False;
    fAluno.Panel3.Enabled   := False;
    fAluno.DBMemo1.ReadOnly := True;
    fAluno.BitBtn1.Enabled  := False;
    fAluno.BitBtn2.Enabled  := False;
  //end;}
  fAluno.Tag := 0;
  fAluno.ShowModal;
end;

procedure TfAlunoC.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfAlunoC.Inserir_Aluno;
var
  vNumAux : Integer;
  sds: TSQLDataSet;
  vCodMatricula : Integer;
begin
  //Busca o último código da matrícula
  {qProximoCod.Close;
  qProximoCod.Open;
  vCodMatricula := qProximoCodCODIGO.AsInteger;}

  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;

  sds.Close;
  sds.CommandText :=  ' SELECT MAX(CODIGO) CODIGO  '+
                      '   FROM ALUNO                    ';
  sds.Open;

  vCodMatricula := sds.FieldByName('CODIGO').AsInteger + 1;

  FreeAndNil(sds);

  //Busca o último ID
  vNumAux := dmDatabase.ProximaSequencia('ALUNO',0);

  DMAluno.cdsAluno.Insert;
  DMAluno.cdsAlunoID.AsInteger          := vNumAux;
  DMAluno.cdsAlunoDTCADASTRO.AsDateTime := Date;
  DMAluno.cdsAlunoCODIGO.AsInteger      := vCodMatricula;
end;

procedure TfAlunoC.BitBtn4Click(Sender: TObject);
begin
  if not DMEmpresa.cdsEmpresa.Active then
    DMEmpresa.cdsEmpresa.Open;

  fRelAluno := TfRelAluno.Create(Self);
  fRelAluno.RLReport1.Preview;
  fRelAluno.RLReport1.Free;
end;

procedure TfAlunoC.Abrir_AlunoDM(ID : Integer);
begin
  DMAluno.cdsAluno.Close;
  DMAluno.sdsAluno.CommandText := ctAluno + ' WHERE ID = ' + IntToStr(ID);
  DMAluno.cdsAluno.Open;

  if (ID > 0) and (DMAluno.cdsAluno.IsEmpty) then
    ShowMessage('Registro não encontrado!');
end;

procedure TfAlunoC.cdsAlunoConsCalcFields(DataSet: TDataSet);
begin
  prc_Calcular_Idade(cdsAlunoConsDTNASCIMENTO.AsDateTime);
  cdsAlunoConsclIdadeTexto.AsString := vIdade_Texto;
end;

procedure TfAlunoC.BitBtn6Click(Sender: TObject);
begin
  if not DMEmpresa.cdsEmpresa.Active then
    DMEmpresa.cdsEmpresa.Open;

  fRelAlunoFicha := TfRelAlunoFicha.Create(Self);
  fRelAlunoFicha.RLReport1.Preview;
  fRelAlunoFicha.RLReport1.Free;
end;

procedure TfAlunoC.SMDBGrid2DblClick(Sender: TObject);
begin
  if not(cdsAlunoCons.Active) or (cdsAluno_EventoConsCODEVENTO.AsInteger < 1) then
  begin
    ShowMessage('Não existe evento para alterar!');
    exit;
  end;

  Chama_AltEvento('A');
end;

procedure TfAlunoC.SMDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    if not(cdsAlunoCons.Active) or (cdsAluno_EventoConsCODEVENTO.AsInteger < 1) then
    begin
      ShowMessage('Não existe evento para alterar!');
      exit;
    end;
    Chama_AltEvento('A');
  end;
end;

procedure TfAlunoC.Chama_AltEvento(Tipo : String);
begin
  if not(cdsAlunoCons.Active) or (cdsAlunoConsID.AsInteger < 1) then
  begin
    ShowMessage('Não existe aluno selecionado!');
    exit;
  end;

  if Tipo = 'I' then
  begin
    cdsAluno_EventoCons.Insert;
    cdsAluno_EventoConsID.AsInteger := cdsAlunoConsID.AsInteger;
  end
  else
    cdsAluno_EventoCons.Edit;

  fAlunoAltEvento := TfAlunoAltEvento.Create(Self);
  fAlunoAltEvento.ShowModal;
end;

procedure TfAlunoC.BitBtn14Click(Sender: TObject);
begin
  Chama_AltEvento('I');
end;

procedure TfAlunoC.BitBtn12Click(Sender: TObject);
begin
  if cdsAluno_EventoCons.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  cdsAluno_EventoCons.Delete;
  cdsAluno_EventoCons.ApplyUpdates(0);
end;

procedure TfAlunoC.SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if cdsAlunoConsINATIVO.AsString = 'S' then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end;
end;

procedure TfAlunoC.CheckBox1Click(Sender: TObject);
begin
  GroupBox1.Visible := CheckBox1.Checked;
end;

end.
