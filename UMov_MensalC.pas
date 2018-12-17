unit UMov_MensalC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, Grids, DBGrids,
  SMDBGrid, DB, CurrEdit, DBCtrls, RxLookup, DBFilter, DBClient, FMTBcd,
  Provider, SqlExpr, ComCtrls, DBXpress;

type
  TfMov_MensalC = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    StaticText1: TStaticText;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn5: TBitBtn;
    ComboBox1: TComboBox;
    BitBtn4: TBitBtn;
    ProgressBar1: TProgressBar;
    CurrencyEdit2: TCurrencyEdit;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    SMDBGrid2: TSMDBGrid;
    qCidade: TSQLQuery;
    qCidadeID: TIntegerField;
    qCidadeNOME: TStringField;
    qCidadeUF: TStringField;
    qCidadeDDD: TIntegerField;
    qCidadeCODMUNICIPIO: TStringField;
    BitBtn6: TBitBtn;
    mAuxiliar: TClientDataSet;
    mAuxiliarID_MOV: TIntegerField;
    dsmAuxiliar: TDataSource;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Panel3: TPanel;
    BitBtn14: TBitBtn;
    BitBtn12: TBitBtn;
    Label3: TLabel;
    ComboBox3: TComboBox;
    sdsMov_MensalAnt: TSQLDataSet;
    dspMov_MensalAnt: TDataSetProvider;
    cdsMov_MensalAnt: TClientDataSet;
    dsMov_MensalAnt: TDataSource;
    dsMov_MensalAnt_Mestre: TDataSource;
    sdsMov_MensalAnt_Eventos: TSQLDataSet;
    cdsMov_MensalAnt_Eventos: TClientDataSet;
    dsMov_MensalAnt_Eventos: TDataSource;
    sdsMov_MensalAntID: TIntegerField;
    sdsMov_MensalAntANO_MOV: TIntegerField;
    sdsMov_MensalAntMES_MOV: TIntegerField;
    sdsMov_MensalAntDTGERACAO: TDateField;
    sdsMov_MensalAntOBS: TMemoField;
    sdsMov_MensalAntID_ALUNO: TIntegerField;
    sdsMov_MensalAntVLRTOTAL: TFloatField;
    sdsMov_MensalAntVLRDESCONTO: TFloatField;
    sdsMov_MensalAntVLRLIQUIDO: TFloatField;
    sdsMov_MensalAntPERCDESCONTO: TFloatField;
    sdsMov_MensalAntDTVENCIMENTO: TDateField;
    sdsMov_MensalAntVLRPAGO: TFloatField;
    sdsMov_MensalAntDTPAGAMENTO: TDateField;
    sdsMov_MensalAntVLRRESTANTE: TFloatField;
    sdsMov_MensalAntNOMEBANCO_PAG: TStringField;
    sdsMov_MensalAntNUMCHEQUE: TIntegerField;
    sdsMov_MensalAntRECIBO_BOLETO: TStringField;
    cdsMov_MensalAntID: TIntegerField;
    cdsMov_MensalAntANO_MOV: TIntegerField;
    cdsMov_MensalAntMES_MOV: TIntegerField;
    cdsMov_MensalAntDTGERACAO: TDateField;
    cdsMov_MensalAntOBS: TMemoField;
    cdsMov_MensalAntID_ALUNO: TIntegerField;
    cdsMov_MensalAntVLRTOTAL: TFloatField;
    cdsMov_MensalAntVLRDESCONTO: TFloatField;
    cdsMov_MensalAntVLRLIQUIDO: TFloatField;
    cdsMov_MensalAntPERCDESCONTO: TFloatField;
    cdsMov_MensalAntDTVENCIMENTO: TDateField;
    cdsMov_MensalAntVLRPAGO: TFloatField;
    cdsMov_MensalAntDTPAGAMENTO: TDateField;
    cdsMov_MensalAntVLRRESTANTE: TFloatField;
    cdsMov_MensalAntNOMEBANCO_PAG: TStringField;
    cdsMov_MensalAntNUMCHEQUE: TIntegerField;
    cdsMov_MensalAntRECIBO_BOLETO: TStringField;
    sdsMov_MensalAnt_EventosID: TIntegerField;
    sdsMov_MensalAnt_EventosID_EVENTO: TIntegerField;
    sdsMov_MensalAnt_EventosVLREVENTO: TFloatField;
    sdsMov_MensalAnt_EventosQTD: TFloatField;
    sdsMov_MensalAnt_EventosVLRTOTAL: TFloatField;
    sdsMov_MensalAnt_EventosVLRDESCONTO: TFloatField;
    sdsMov_MensalAnt_EventosPERCDESCONTO: TFloatField;
    cdsMov_MensalAntsdsMov_MensalAnt_Eventos: TDataSetField;
    cdsMov_MensalAnt_EventosID: TIntegerField;
    cdsMov_MensalAnt_EventosID_EVENTO: TIntegerField;
    cdsMov_MensalAnt_EventosVLREVENTO: TFloatField;
    cdsMov_MensalAnt_EventosQTD: TFloatField;
    cdsMov_MensalAnt_EventosVLRTOTAL: TFloatField;
    cdsMov_MensalAnt_EventosVLRDESCONTO: TFloatField;
    cdsMov_MensalAnt_EventosPERCDESCONTO: TFloatField;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Label5: TLabel;
    ComboBox4: TComboBox;
    sdsMov_MensalAntDIACOBRANCA: TIntegerField;
    cdsMov_MensalAntDIACOBRANCA: TIntegerField;
    mAuxiliarCodAluno: TIntegerField;
    mAuxiliarNomeAluno: TStringField;
    Shape1: TShape;
    Label9: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid2GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    procedure Abrir_sqlAlunos;
    procedure Le_Alunos;
    procedure Abrir_sqlMov_MensalAnt;
    procedure Le_Mov_MensalAnt;

    procedure Inserir_Mov_Mensal(ID_Aluno : Integer ; Gerar : Boolean);
    procedure Inserir_Mov_Mensal_Eventos(ID_Evento : Integer ; Qtd, Valor : Real);

    procedure Chama_AltEvento(Tipo : String); //A= Alteração   I= Inserir

  public
    { Public declarations }
    procedure Monta_sqlMov_Mensal(Tipo : String ; ID : Integer); //P=Com Parametros   N=Sem Parametros
    procedure Abre_cdsAluno;
    procedure Abre_cdsEvento;

  end;

var
  fMov_MensalC: TfMov_MensalC;

implementation

uses DateUtils, UDMMov_Mensal, UMov_Mensal, DmdDatabase, UDMParametros,
  StdConvs, UDMAluno, UDMEvento, URelRecibo, UMov_MensalAltEvento, UAlunoC,
  UEventoC;

{$R *.dfm}

procedure TfMov_MensalC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DMAluno.cdsAluno.IndexFieldNames := '';

  if DMMov_Mensal.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMMov_Mensal);
  if DMAluno.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMAluno);
  if DMParametros.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMParametros);
  if DMEvento.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMEvento);

  Action := Cafree;
end;

procedure TfMov_MensalC.BitBtn3Click(Sender: TObject);
begin
  Monta_sqlMov_Mensal('P',0);
  case ComboBox4.ItemIndex of
    0 : DMMov_Mensal.cdsMov_Mensal.IndexFieldNames := 'ANO_MOV;MES_MOV;CODALUNO';
    1 : DMMov_Mensal.cdsMov_Mensal.IndexFieldNames := 'ANO_MOV;MES_MOV;NOME_ALUNO';
  end;
  DMMov_Mensal.cdsMov_Mensal.Next;
end;

procedure TfMov_MensalC.Monta_sqlMov_Mensal(Tipo : String ; ID : Integer); //P=Com Parametros   N=Sem Parametros
begin                                                                                            
  DMMov_Mensal.cdsMov_Mensal.Close;

  if ID > 0 then
  begin
    DMMov_Mensal.sdsMov_Mensal.CommandText := ctMov_Mensal
                                            + ' WHERE M.ID = ' + IntToStr(ID);
  end
  else
  if Tipo = 'P' then
  begin
    DMMov_Mensal.sdsMov_Mensal.CommandText := ctMov_Mensal
                                            + ' WHERE 0=0 ';
    if CurrencyEdit1.AsInteger > 0 then
      DMMov_Mensal.sdsMov_Mensal.CommandText := DMMov_Mensal.sdsMov_Mensal.CommandText
                                              + ' AND M.ANO_MOV = ' + CurrencyEdit1.Text;
    if ComboBox1.ItemIndex >= 0 then
      DMMov_Mensal.sdsMov_Mensal.CommandText := DMMov_Mensal.sdsMov_Mensal.CommandText
                                              + ' AND M.MES_MOV = ' + IntToStr(ComboBox1.ItemIndex + 1);

    case ComboBox2.ItemIndex of
      0 : DMMov_Mensal.sdsMov_Mensal.CommandText := DMMov_Mensal.sdsMov_Mensal.CommandText + ' AND M.RECIBO_BOLETO = ' + QuotedStr('R');
      1 : DMMov_Mensal.sdsMov_Mensal.CommandText := DMMov_Mensal.sdsMov_Mensal.CommandText + ' AND M.RECIBO_BOLETO = ' + QuotedStr('B');
    end;


  end
  else
    DMMov_Mensal.sdsMov_Mensal.CommandText := ctMov_Mensal
                                            + ' WHERE M.ID = 0';

  DMMov_Mensal.sdsMov_Mensal.CommandText := DMMov_Mensal.sdsMov_Mensal.CommandText + ' ORDER BY M.ANO_MOV, M.MES_MOV, A.CODIGO';
  
  DMMov_Mensal.cdsMov_Mensal.Open;
end;

procedure TfMov_MensalC.BitBtn2Click(Sender: TObject);
begin
  {if not DM1.tUsuarioExcMov_Mensal.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ', não autorizado!');
    exit;
  end;}

  if DMMov_Mensal.cdsMov_Mensal.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  DMMov_Mensal.cdsMov_Mensal_Eventos.First;
  while not DMMov_Mensal.cdsMov_Mensal_Eventos.Eof do
    DMMov_Mensal.cdsMov_Mensal_Eventos.Delete; 

  DMMov_Mensal.cdsMov_Mensal.Delete;
  DMMov_Mensal.cdsMov_Mensal.ApplyUpdates(0);
end;

procedure TfMov_MensalC.BitBtn1Click(Sender: TObject);
begin
  {if not DM1.tUsuarioInsMov_Mensal.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ', não autorizado!');
    exit;
  end;}

  if (ComboBox1.ItemIndex < 0) or (CurrencyEdit1.AsInteger < 2012) then
  begin
    ShowMessage('Mês e Ano são campos obrigatórios!');
    exit;
  end;

  if not DMMov_Mensal.cdsMov_Mensal.Active then
    Monta_sqlMov_Mensal('N',0);

  Inserir_Mov_Mensal(0, False);

  fMov_Mensal := TfMov_Mensal.Create(Self);
  fMov_Mensal.Tag := 0;
  fMov_Mensal.ShowModal;
end;

procedure TfMov_MensalC.FormShow(Sender: TObject);
var
  vData : TDateTime;
begin
  Top    := 0;
  Left   := 0;
  Width  := Screen.Width;
  Height := Screen.Height - 35;

  ComboBox1.ItemIndex     := -1;
  CurrencyEdit1.AsInteger := 0;

  if not Assigned(DMMov_Mensal) then
    DMMov_Mensal := TDMMov_Mensal.Create(Self);
  if not Assigned(DMAluno) then
    DMAluno := TDMAluno.Create(Self);
  if not Assigned(DMEvento) then
    DMEvento := TDMEvento.Create(Self);
  if not Assigned(DMParametros) then
    DMParametros := TDMParametros.Create(Self);


  Abre_cdsAluno;
  Abre_cdsEvento;

  DMParametros.cdsParametros.Close;
  DMParametros.cdsParametros.Open;
  DMParametros.cdsParametros.First;
  if not DMParametros.cdsParametros.IsEmpty then
  begin
    ComboBox1.ItemIndex     := DMParametros.cdsParametrosMES_MOV.AsInteger - 1;
    CurrencyEdit1.AsInteger := DMParametros.cdsParametrosANO_MOV.AsInteger;
    CurrencyEdit2.AsInteger := DMParametros.cdsParametrosDIA_VENCIMENTO.AsInteger;
  end;

  {BitBtn1.Enabled := DM1.tUsuarioInsMov_Mensal.AsBoolean;
  BitBtn2.Enabled := DM1.tUsuarioExcMov_Mensal.AsBoolean;}
end;

procedure TfMov_MensalC.SMDBGrid1DblClick(Sender: TObject);
begin
  if DMMov_Mensal.cdsMov_Mensal.IsEmpty then
    exit;
  fMov_Mensal := TfMov_Mensal.Create(Self);
  if StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_MensalVLRPAGO.AsFloat)) > 0 then
  begin
    fMov_Mensal.Panel1.Enabled   := False;
    fMov_Mensal.Panel2.Enabled   := False;
    fMov_Mensal.Panel3.Enabled   := False;
    fMov_Mensal.DBMemo1.ReadOnly := True;
  end
  else
    DMMov_Mensal.cdsMov_Mensal.Edit;
  fMov_Mensal.Tag := 0;
  fMov_Mensal.ShowModal;
end;

procedure TfMov_MensalC.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfMov_MensalC.Inserir_Mov_Mensal(ID_Aluno : Integer ; Gerar : Boolean);
var
  vNumAux : Integer;
  vDia : Integer;
begin
  vNumAux := dmDatabase.ProximaSequencia('MOV_MENSAL',0);

  DMMov_Mensal.cdsMov_Mensal.Insert;
  DMMov_Mensal.cdsMov_MensalID.AsInteger         := vNumAux;
  DMMov_Mensal.cdsMov_MensalANO_MOV.AsInteger    := CurrencyEdit1.AsInteger;
  DMMov_Mensal.cdsMov_MensalMES_MOV.AsInteger    := ComboBox1.ItemIndex + 1;
  DMMov_Mensal.cdsMov_MensalDTGERACAO.AsDateTime := Date;
  DMMov_Mensal.cdsMov_MensalID_ALUNO.AsInteger   := ID_Aluno;
  DMMov_Mensal.cdsMov_MensalVLRTOTAL.AsFloat     := 0;
  DMMov_Mensal.cdsMov_MensalVLRDESCONTO.AsFloat  := 0;
  DMMov_Mensal.cdsMov_MensalVLRLIQUIDO.AsFloat   := 0;
  DMMov_Mensal.cdsMov_MensalPERCDESCONTO.AsFloat := 0;
  DMMov_Mensal.cdsMov_MensalVLRPAGO.AsFloat      := 0;
  DMMov_Mensal.cdsMov_MensalVLRRESTANTE.AsFloat  := 0;
  DMMov_Mensal.cdsMov_MensalDTPAGAMENTO.Clear;
  DMMov_Mensal.cdsMov_MensalRECIBO_BOLETO.AsString := 'R';

  if (ID_Aluno > 0) and (DMAluno.cdsAlunoDIACOBRANCA.AsInteger > 0) and (ComboBox3.ItemIndex = 1)  then
    vDia := DMAluno.cdsAlunoDIACOBRANCA.AsInteger
  else
  if (ID_Aluno > 0) and (cdsMov_MensalAntDIACOBRANCA.AsInteger > 0) and (ComboBox3.ItemIndex = 0)  then
    vDia := cdsMov_MensalAntDIACOBRANCA.AsInteger
  else
    vDia := CurrencyEdit2.AsInteger;

  if (ID_Aluno > 0 ) and (ComboBox3.ItemIndex = 1) then
  begin
    DMMov_Mensal.cdsMov_MensalOBS.Value              := DMAluno.cdsAlunoOBS.Value;
    DMMov_Mensal.cdsMov_MensalRECIBO_BOLETO.AsString := DMAluno.cdsAlunoRECIBO_BOLETO.AsString;
  end;

  if (Gerar) and (ComboBox3.ItemIndex = 0) then
    DMMov_Mensal.cdsMov_MensalOBS.Value := cdsMov_MensalAntOBS.Value;

  DMMov_Mensal.cdsMov_MensalDTVENCIMENTO.AsDateTime := EncodeDate(CurrencyEdit1.AsInteger,ComboBox1.ItemIndex + 1,vDia);
end;

procedure TfMov_MensalC.BitBtn4Click(Sender: TObject);
begin
  if (ComboBox1.ItemIndex < 0) or (CurrencyEdit1.AsInteger < 2012) then
  begin
    ShowMessage('Mês e Ano são campos obrigatórios!');
    exit;
  end;

  Monta_sqlMov_Mensal('P',0);

  if not DMMov_Mensal.cdsMov_Mensal.IsEmpty then
  begin
    ShowMessage('Movimento para este período já gerado!');
    exit;
  end;

  if MessageDlg('Deseja gerar movimento para Mês/Ano ' + IntToStr(ComboBox1.ItemIndex + 1) + '/' + CurrencyEdit1.Text + ' ?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  if ComboBox3.ItemIndex = 0 then
  begin
    Abrir_sqlMov_MensalAnt;
    Le_Mov_MensalAnt;
  end
  else
  if ComboBox3.ItemIndex = 1 then
  begin
    Abrir_sqlAlunos;
    Le_Alunos;
  end;

  if DMMov_Mensal.cdsMov_Mensal.State in [dsEdit,dsInsert] then
    DMMov_Mensal.cdsMov_Mensal.Post;

  DMMov_Mensal.cdsMov_Mensal.ApplyUpdates(0);

  //Grava os parâmetros
  if not DMParametros.cdsParametros.IsEmpty then
    DMParametros.cdsParametros.Edit
  else
  begin
    DMParametros.cdsParametros.Insert;
    DMParametros.cdsParametrosID.AsInteger := 1;
  end;
  DMParametros.cdsParametrosANO_MOV.AsInteger        := CurrencyEdit1.AsInteger;
  DMParametros.cdsParametrosMES_MOV.AsInteger        := ComboBox1.ItemIndex + 1;
  DMParametros.cdsParametrosDIA_VENCIMENTO.AsInteger := CurrencyEdit2.AsInteger;
  DMParametros.cdsParametros.Post;

  DMParametros.cdsParametros.ApplyUpdates(0);

  BitBtn3Click(Sender);
end;


procedure TfMov_MensalC.Abrir_sqlAlunos;
begin
  DMAluno.cdsAluno.Close;
  DMAluno.sdsAluno.CommandText := ctAluno
                                + ' WHERE INATIVO =  ' + QuotedStr('N')
                                + '   AND ANO_INICIO <= ' + CurrencyEdit1.Text
                                + '   AND ((ANO_FINAL = 0) OR (ANO_FINAL >= ' + CurrencyEdit1.Text + '))';
  DMAluno.cdsAluno.Open;
end;

procedure TfMov_MensalC.Le_Alunos;
var
  vGerar : Boolean;
  vDataIni, vDataFin : TDateTime;
  vDiaFinal : Integer;
  vVlrAux : Real;
begin
  vDataIni  := EncodeDate(CurrencyEdit1.AsInteger,ComboBox1.ItemIndex+1,01);
  vDiaFinal := DaysInAMonth(CurrencyEdit1.AsInteger,ComboBox1.ItemIndex+1);
  vDataFin  := EncodeDate(CurrencyEdit1.AsInteger,ComboBox1.ItemIndex+1,vDiaFinal);

  ProgressBar1.Max      := DMAluno.cdsAluno.RecordCount;
  ProgressBar1.Position := 0;
  DMAluno.cdsAluno.First;
  while not DMAluno.cdsAluno.Eof do
  begin
    if DMAluno.cdsAlunoCODIGO.AsInteger = 212 then
      ShowMessage('aqui');

    ProgressBar1.Position := ProgressBar1.Position + 1;
    vGerar := True;

    if (DMAluno.cdsAlunoMES_INICIO.AsInteger > 0)
       and ((DMAluno.cdsAlunoANO_INICIO.AsInteger = CurrencyEdit1.AsInteger) and (DMAluno.cdsAlunoMES_INICIO.AsInteger > ComboBox1.ItemIndex+1)) then
      vGerar := False;
    if (DMAluno.cdsAlunoMES_FINAL.AsInteger > 0)
       and ((DMAluno.cdsAlunoANO_FINAL.AsInteger = CurrencyEdit1.AsInteger) and (DMAluno.cdsAlunoMES_FINAL.AsInteger < ComboBox1.ItemIndex+1)) then
      vGerar := False;

    if (vGerar) and not(DMAluno.cdsAluno_Evento.IsEmpty) then
    begin
      Inserir_Mov_Mensal(DMAluno.cdsAlunoID.AsInteger,True);
      DMAluno.cdsAluno_Evento.First;
      while not DMAluno.cdsAluno_Evento.Eof do
      begin
        vGerar := True;
        if ((DMAluno.cdsAluno_EventoANO_INICIO.AsInteger > 0) AND (DMAluno.cdsAluno_EventoANO_INICIO.AsInteger > CurrencyEdit1.AsInteger))
          or ((DMAluno.cdsAluno_EventoANO_INICIO.AsInteger = CurrencyEdit1.AsInteger) and (DMAluno.cdsAluno_EventoMES_INICIO.AsInteger > ComboBox1.ItemIndex+1))  then
          vGerar := False;
        if ((DMAluno.cdsAluno_EventoANO_FINAL.AsInteger > 0) AND (DMAluno.cdsAluno_EventoANO_FINAL.AsInteger < CurrencyEdit1.AsInteger))
          or ((DMAluno.cdsAluno_EventoANO_FINAL.AsInteger = CurrencyEdit1.AsInteger) and (DMAluno.cdsAluno_EventoMES_FINAL.AsInteger < ComboBox1.ItemIndex+1))  then
          vGerar := False;
        if vGerar then
        begin
          if DMAluno.cdsAluno_EventoVALOR.AsFloat > 0 then
            vVlrAux := StrToFloat(FormatFloat('0.00',DMAluno.cdsAluno_EventoVALOR.AsFloat))
          else
            vVlrAux := StrToFloat(FormatFloat('0.00',DMAluno.cdsAluno_EventoVALOREVENTO.AsFloat));
                                                                                                 
          Inserir_Mov_Mensal_Eventos(DMAluno.cdsAluno_EventoCODEVENTO.AsInteger,StrToFloat(FormatFloat('0.00',DMAluno.cdsAluno_EventoQTD.AsFloat)),StrToFloat(FormatFloat('0.00',vVlrAux)));
        end;

        DMAluno.cdsAluno_Evento.Next;
      end;

    end;

    DMAluno.cdsAluno.Next;
  end;

  ShowMessage('Gerado o movimento para cobrança do mês selecionado!');

end;


procedure TfMov_MensalC.Inserir_Mov_Mensal_Eventos(ID_Evento : Integer ; Qtd, Valor : Real);
var
  vItemAux : Integer;
begin
  DMMov_Mensal.cdsMov_Mensal_Eventos.Last;
  vItemAux := DMMov_Mensal.cdsMov_Mensal_EventosITEM.AsInteger + 1;

  DMMov_Mensal.cdsMov_Mensal_Eventos.Insert;
  DMMov_Mensal.cdsMov_Mensal_EventosID.AsInteger         := DMMov_Mensal.cdsMov_MensalID.AsInteger;
  DMMov_Mensal.cdsMov_Mensal_EventosITEM.AsInteger       := vItemAux;
  DMMov_Mensal.cdsMov_Mensal_EventosID_EVENTO.AsInteger  := ID_EVENTO;
  DMMov_Mensal.cdsMov_Mensal_EventosVLREVENTO.AsFloat    := StrToFloat(FormatFloat('0.00',Valor));
  if Qtd <= 0 then
    Qtd := 1;

  DMMov_Mensal.cdsMov_Mensal_EventosQTD.AsFloat := Qtd;
  if ComboBox3.ItemIndex = 0 then
    DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat   := StrToFloat(FormatFloat('0.00',Valor))
  else
    DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat   := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_Mensal_EventosVLREVENTO.AsFloat * DMMov_Mensal.cdsMov_Mensal_EventosQTD.AsFloat));
  DMMov_Mensal.cdsMov_Mensal_EventosVLRDESCONTO.AsFloat  := 0;
  DMMov_Mensal.cdsMov_Mensal_EventosPERCDESCONTO.AsFloat := 0;
  DMMov_Mensal.cdsMov_Mensal_EventosANO_MOV.AsInteger    := DMMov_Mensal.cdsMov_MensalANO_MOV.AsInteger;
  DMMov_Mensal.cdsMov_Mensal_EventosMES_MOV.AsInteger    := DMMov_Mensal.cdsMov_MensalMES_MOV.AsInteger;
  DMMov_Mensal.cdsMov_Mensal_Eventos.Post;

  if DMMov_Mensal.cdsMov_Mensal.State in [dsBrowse] then
    DMMov_Mensal.cdsMov_Mensal.Edit;

  DMMov_Mensal.cdsMov_MensalVLRTOTAL.AsFloat    := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_MensalVLRTOTAL.AsFloat + DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat));
  DMMov_Mensal.cdsMov_MensalVLRLIQUIDO.AsFloat  := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_MensalVLRLIQUIDO.AsFloat + DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat));
  DMMov_Mensal.cdsMov_MensalVLRRESTANTE.AsFloat := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_MensalVLRRESTANTE.AsFloat + DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat));
end;

procedure TfMov_MensalC.BitBtn6Click(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  SMDBGrid2.DisableScroll;
  mAuxiliar.EmptyDataSet;
  DMMov_Mensal.cdsMov_Mensal.First;
  while not DMMov_Mensal.cdsMov_Mensal.Eof do
  begin
    mAuxiliar.Insert;
    mAuxiliarID_MOV.AsInteger   := DMMov_Mensal.cdsMov_MensalID.AsInteger;
    mAuxiliarCodAluno.AsInteger := DMMov_Mensal.cdsMov_MensalCODALUNO.AsInteger;
    mAuxiliarNomeAluno.AsString := DMMov_Mensal.cdsMov_MensalNOME_ALUNO.AsString;
    mAuxiliar.Post;

    mAuxiliar.Insert;
    mAuxiliarID_MOV.AsInteger   := DMMov_Mensal.cdsMov_MensalID.AsInteger;
    mAuxiliarCodAluno.AsInteger := DMMov_Mensal.cdsMov_MensalCODALUNO.AsInteger;
    mAuxiliarNomeAluno.AsString := DMMov_Mensal.cdsMov_MensalNOME_ALUNO.AsString;
    mAuxiliar.Post;

    DMMov_Mensal.cdsMov_Mensal.Next;
  end;

  case ComboBox4.ItemIndex of
    0 : mAuxiliar.IndexFieldNames := 'CodAluno';
    1 : mAuxiliar.IndexFieldNames := 'NomeAluno';
  end;

  fRelRecibo := TfRelRecibo.Create(Self);
  fRelRecibo.RLReport1.Preview;
  fRelRecibo.RLReport1.Free;

  SMDBGrid1.EnableScroll;
  SMDBGrid2.EnableScroll;
end;

procedure TfMov_MensalC.Chama_AltEvento(Tipo: String);
var
  vItemAux : Integer;
begin
  if not(DMMov_Mensal.cdsMov_Mensal.Active) or (DMMov_Mensal.cdsMov_MensalID.AsInteger < 1) then
  begin
    ShowMessage('Não existe aluno selecionado!');
    exit;
  end;

  if Tipo = 'I' then
  begin
    DMMov_Mensal.qProximo_Item.Close;
    DMMov_Mensal.qProximo_Item.ParamByName('ID').AsInteger := DMMov_Mensal.cdsMov_MensalID.AsInteger;
    DMMov_Mensal.qProximo_Item.Open;
    vItemAux := DMMov_Mensal.qProximo_ItemITEM.AsInteger;

    //DMMov_Mensal.cdsMov_Mensal_Eventos.Last;
    //vItemAux := DMMov_Mensal.cdsMov_Mensal_EventosITEM.AsInteger + 1;
                                                                    
    DMMov_Mensal.cdsMov_Mensal_Eventos.Insert;
    DMMov_Mensal.cdsMov_Mensal_EventosID.AsInteger   := DMMov_Mensal.cdsMov_MensalID.AsInteger;
    DMMov_Mensal.cdsMov_Mensal_EventosITEM.AsInteger := vItemAux + 1;
  end
  else
    DMMov_Mensal.cdsMov_Mensal_Eventos.Edit;

  fMov_MensalAltEvento := TfMov_MensalAltEvento.Create(Self);
  fMov_MensalAltEvento.ShowModal;
end;

procedure TfMov_MensalC.BitBtn14Click(Sender: TObject);
begin
  Chama_AltEvento('I');
end;

procedure TfMov_MensalC.BitBtn12Click(Sender: TObject);
var
  vVlrAux, vVlrDescAux : Real;
  ID: TTransactionDesc;
begin
  if DMMov_Mensal.cdsMov_Mensal_Eventos.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  try

    ID.TransactionID := 999;
    ID.IsolationLevel := xilREADCOMMITTED;

    dmDatabase.scoDados.StartTransaction(ID);

    vVlrAux     := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat));
    vVlrDescAux := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_Mensal_EventosVLRDESCONTO.AsFloat));
    DMMov_Mensal.cdsMov_Mensal_Eventos.Delete;

    DMMov_Mensal.cdsMov_Mensal.Edit;
    DMMov_Mensal.cdsMov_MensalVLRTOTAL.AsFloat    := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_MensalVLRTOTAL.AsFloat - vVlrAux - vVlrDescAux));
    DMMov_Mensal.cdsMov_MensalVLRLIQUIDO.AsFloat  := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_MensalVLRLIQUIDO.AsFloat - vVlrAux));
    DMMov_Mensal.cdsMov_MensalVLRRESTANTE.AsFloat := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_MensalVLRLIQUIDO.AsFloat));
    DMMov_Mensal.cdsMov_Mensal.Post;

    //DMMov_Mensal.cdsMov_Mensal_Eventos.ApplyUpdates(0);
    DMMov_Mensal.cdsMov_Mensal.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);

  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;

end;

procedure TfMov_MensalC.SMDBGrid2DblClick(Sender: TObject);
begin
  if not(DMMov_Mensal.cdsMov_Mensal.Active) or (DMMov_Mensal.cdsMov_Mensal_EventosID_EVENTO.AsInteger < 1) then
  begin
    ShowMessage('Não existe evento para alterar!');
    exit;
  end;

  Chama_AltEvento('A');
end;

procedure TfMov_MensalC.Abrir_sqlMov_MensalAnt;
var
  vAnoAux, vMesAux : Integer;
begin
  vAnoAux := CurrencyEdit1.AsInteger;
  vMesAux := (ComboBox1.ItemIndex + 1) - 1;
  if vMesAux < 1 then
  begin
    vMesAux := 12;
    vAnoAux := vAnoAux - 1;
  end;

  cdsMov_MensalAnt.Close;
  sdsMov_MensalAnt.ParamByName('ANO_MOV').AsInteger := vAnoAux;
  sdsMov_MensalAnt.ParamByName('MES_MOV').AsInteger := vMesAux;
  cdsMov_MensalAnt.Open;
end;

procedure TfMov_MensalC.Le_Mov_MensalAnt;
begin
  if cdsMov_MensalAnt.IsEmpty then
  begin
    ShowMessage('Não existe lançamentos no mês anterior!');
    exit;
  end;

  ProgressBar1.Max      := cdsMov_MensalAnt.RecordCount;
  ProgressBar1.Position := 0;
  cdsMov_MensalAnt.First;
  while not cdsMov_MensalAnt.Eof do
  begin
    ProgressBar1.Position := ProgressBar1.Position + 1;

    if not(cdsMov_MensalAnt_Eventos.IsEmpty) then
    begin
      Inserir_Mov_Mensal(cdsMov_MensalAntID_ALUNO.AsInteger,True);
      cdsMov_MensalAnt_Eventos.First;
      while not cdsMov_MensalAnt_Eventos.Eof do
      begin
        Inserir_Mov_Mensal_Eventos(cdsMov_MensalAnt_EventosID_EVENTO.AsInteger,StrToFloat(FormatFloat('0.00',cdsMov_MensalAnt_EventosQTD.AsFloat)),StrToFloat(FormatFloat('0.00',cdsMov_MensalAnt_EventosVLRTOTAL.AsFloat)));

        cdsMov_MensalAnt_Eventos.Next;
      end;

    end;

    cdsMov_MensalAnt.Next;
  end;

  ShowMessage('Gerado o movimento para cobrança do mês selecionado!');

end;

procedure TfMov_MensalC.BitBtn7Click(Sender: TObject);
begin
  fAlunoC := TfAlunoC.Create(Self);
  fAlunoC.ShowModal;
  Abre_cdsAluno;
end;

procedure TfMov_MensalC.BitBtn8Click(Sender: TObject);
begin
  fEventoC := TfEventoC.Create(Self);
  fEventoC.ShowModal;
  fMov_MensalC.Abre_cdsEvento;
end;

procedure TfMov_MensalC.Abre_cdsAluno;
begin
  DMAluno.cdsAluno.Close;
  DMAluno.sdsAluno.CommandText := ctAluno
                                  + ' WHERE INATIVO = ' + QuotedStr('N');
  DMAluno.cdsAluno.Open;
  DMAluno.cdsAluno.IndexFieldNames := 'NOME';
end;

procedure TfMov_MensalC.Abre_cdsEvento;
begin
  DMEvento.cdsEvento.Close;
  DMEvento.sdsEvento.CommandText := ctEvento;
  DMEvento.cdsEvento.Open;
  DMEvento.cdsEvento.IndexFieldNames := 'NOME';
end;

procedure TfMov_MensalC.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DMMov_Mensal.cdsMov_MensalID.AsInteger > 0 then
  begin
    if StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_MensalVLRPAGO.AsFloat)) > 0 then
    begin
      Background  := clTeal;
      AFont.Color := clWindow;
    end
    else
    if Field = DMMov_Mensal.cdsMov_MensalVLRLIQUIDO then
    begin
      Background  := clMoneyGreen;
      AFont.Style := [fsBold];
      AFont.Color := clBlack;
    end;
  end;

end;

procedure TfMov_MensalC.SMDBGrid2GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if DMMov_Mensal.cdsMov_Mensal_EventosITEM.AsInteger > 0 then
  begin
    if Field = DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL then
    begin
      Background  := clMoneyGreen;
      AFont.Style := [fsBold];
      AFont.Color := clBlack;
    end;
  end;
end;

end.
