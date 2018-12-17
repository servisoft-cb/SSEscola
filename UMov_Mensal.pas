unit UMov_Mensal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, RxLookup, ToolEdit,
  RXDBCtrl, Grids, DBGrids, SMDBGrid, RxDBComb, RzEdit, RzDBEdit, RzTabs,
  FMTBcd, DB, SqlExpr, Provider, DBClient, DBVGrids, DBFilter, DBTables,
  ExtDlgs, CurrEdit, DBXpress;

type
  TfMov_Mensal = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    RzPageControl1: TRzPageControl;
    TabSheet3: TRzTabSheet;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBDateEdit1: TDBDateEdit;
    TabSheet1: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel3: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label15: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label25: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label9: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label10: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label12: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Label16: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    Label17: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    Label18: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    Label20: TLabel;
    DBEdit14: TDBEdit;
    Label22: TLabel;
    DBDateEdit3: TDBDateEdit;
    BitBtn7: TBitBtn;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    BitBtn15: TBitBtn;
    BitBtn2: TBitBtn;
    RxDBComboBox1: TRxDBComboBox;
    Label6: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label32: TLabel;
    CurrencyEdit6: TCurrencyEdit;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure CurrencyEdit1Exit(Sender: TObject);
    procedure CurrencyEdit5Exit(Sender: TObject);
    procedure CurrencyEdit2Exit(Sender: TObject);
    procedure CurrencyEdit2Enter(Sender: TObject);
    procedure CurrencyEdit3Exit(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CurrencyEdit6Exit(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure CurrencyEdit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBLookupCombo2Change(Sender: TObject);
    procedure RxDBLookupCombo2DropDown(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    {FDMMov_Mensal : TDMMov_Mensal;
    FDMTurma : TDMTurma;
    FDMEvento: TDMEvento;
    FDMCidade: TDMCidade;}

    vPercDesconto : Real;
    vCodAluno : Integer;
    vItemEvento : Integer;

    procedure Grava_Mov_Mensal;

    procedure Calcular_Total_Evento;

  public
    { Public declarations }
    vTalaoMC : Integer;

    {property DMMov_Mensal : TDmMov_Mensal read FDMMov_Mensal write FDMMov_Mensal;
    property DMTurma : TDMTurma read FDMTurma write FDMTurma;
    property DMEvento: TDMEvento read FDMEvento write FDMEvento;
    property DMCidade: TDMCidade read FDMCidade write FDMCidade;}

  end;

var
  fMov_Mensal: TfMov_Mensal;

implementation

uses DmdDatabase, UDMMov_Mensal, UDMEvento, UDMTurma, DateUtils,
  UDMAluno, UMov_MensalC, UEventoC, UAlunoC;

{$R *.dfm}

procedure TfMov_Mensal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMMov_Mensal.cdsMov_Mensal.State in [dsEdit,dsInsert] then
    DMMov_Mensal.cdsMov_Mensal.CancelUpdates;

  Tag    := 0;

  Action := Cafree;
end;

procedure TfMov_Mensal.BitBtn2Click(Sender: TObject);
begin
  if DMMov_Mensal.cdsMov_Mensal.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
    DMMov_Mensal.cdsMov_Mensal.CancelUpdates;
  end;
  
  Close;
end;

procedure TfMov_Mensal.BitBtn1Click(Sender: TObject);
var
  vVlrAux : Real;
begin
  if DMMov_Mensal.cdsMov_MensalID_ALUNO.AsInteger < 1 then
  begin
    ShowMessage('Aluno não foi informado!');
    exit;
  end;
  if DMMov_Mensal.cdsMov_MensalDTVENCIMENTO.AsDateTime < 10 then
  begin
    ShowMessage('Data de vencimento não foi informada!!');
    exit;
  end;
  if DMMov_Mensal.cdsMov_MensalDTVENCIMENTO.AsDateTime < DMMov_Mensal.cdsMov_MensalDTGERACAO.AsDateTime then
  begin
    ShowMessage('Data de vencimento não pode ser menor que data de geração!!');
    exit;
  end;

  if DMMov_Mensal.cdsMov_Mensal.State in [dsBrowse] then
    DMMov_Mensal.cdsMov_Mensal.Edit;

  DMMov_Mensal.cdsMov_MensalVLRTOTAL.AsFloat    := 0;
  DMMov_Mensal.cdsMov_MensalVLRDESCONTO.AsFloat := 0;
  DMMov_Mensal.cdsMov_MensalVLRLIQUIDO.AsFloat  := 0;
  DMMov_Mensal.cdsMov_Mensal_Eventos.First;
  while not DMMov_Mensal.cdsMov_Mensal_Eventos.Eof do
  begin
    vVlrAux := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat));
    //if DMMov_Mensal.cdsMov_Mensal_EventosDESCONTO.AsString = 'S' then
    //  vVlrAux := StrToFloat(FormatFloat('0.00',vVlrAux * -1));
    DMMov_Mensal.cdsMov_MensalVLRTOTAL.AsFloat    := DMMov_Mensal.cdsMov_MensalVLRTOTAL.AsFloat + vVlrAux + DMMov_Mensal.cdsMov_Mensal_EventosVLRDESCONTO.AsFloat;
    DMMov_Mensal.cdsMov_MensalVLRLIQUIDO.AsFloat  := DMMov_Mensal.cdsMov_MensalVLRLIQUIDO.AsFloat + vVlrAux;
    DMMov_Mensal.cdsMov_MensalVLRDESCONTO.AsFloat := DMMov_Mensal.cdsMov_MensalVLRDESCONTO.AsFloat + DMMov_Mensal.cdsMov_Mensal_EventosVLRDESCONTO.AsFloat;
    if DMMov_Mensal.cdsMov_Mensal_EventosDESCONTO.AsString = 'S' then
      DMMov_Mensal.cdsMov_MensalVLRDESCONTO.AsFloat := DMMov_Mensal.cdsMov_MensalVLRDESCONTO.AsFloat + (DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat * -1);
    DMMov_Mensal.cdsMov_Mensal_Eventos.Next;
  end;

  DMMov_Mensal.cdsMov_MensalVLRRESTANTE.AsFloat := DMMov_Mensal.cdsMov_MensalVLRLIQUIDO.AsFloat;

  Grava_Mov_Mensal;

  Close;
end;

procedure TfMov_Mensal.Grava_Mov_Mensal;
var
  vVlrAux : Real;
  ID: TTransactionDesc;
begin
  try
    ID.TransactionID := 999;
    ID.IsolationLevel := xilREADCOMMITTED;

    dmDatabase.scoDados.StartTransaction(ID);

    if (DMMov_Mensal.cdsMov_Mensal.ChangeCount > 0) or (vCodAluno <> DMMov_Mensal.cdsMov_MensalID_ALUNO.AsInteger)  then
    begin
      if DMAluno.cdsAluno.Locate('ID',DMMov_Mensal.cdsMov_MensalID_ALUNO.AsInteger,[loCaseInsensitive]) then
      begin
        DMMov_Mensal.cdsMov_MensalCODALUNO.AsInteger        := DMAluno.cdsAlunoCODIGO.AsInteger;
        DMMov_Mensal.cdsMov_MensalNOME_ALUNO.AsString       := DMAluno.cdsAlunoNOME.AsString;
        DMMov_Mensal.cdsMov_MensalNOME_RESPONSAVEL.AsString := DMAluno.cdsAlunoNOME_RESPONSAVEL.AsString;
        DMMov_Mensal.cdsMov_MensalCPF_REPONSAVEL.AsString   := DMAluno.cdsAlunoCPF_REPONSAVEL.AsString;
        DMMov_Mensal.cdsMov_MensalENDERECO.AsString         := DMAluno.cdsAlunoENDERECO.AsString;
        DMMov_Mensal.cdsMov_MensalBAIRRO.AsString           := DMAluno.cdsAlunoBAIRRO.AsString;
        DMMov_Mensal.cdsMov_MensalCODCIDADE.AsInteger       := DMAluno.cdsAlunoCODCIDADE.AsInteger;
        DMMov_Mensal.cdsMov_MensalCEP.AsString              := DMAluno.cdsAlunoCEP.AsString;
        DMMov_Mensal.cdsMov_MensalDDD.AsInteger             := DMAluno.cdsAlunoDDD.AsInteger;
        DMMov_Mensal.cdsMov_MensalFONE.AsString             := DMAluno.cdsAlunoFONE.AsString;
        DMMov_Mensal.cdsMov_MensalCODTURMA.AsInteger        := DMAluno.cdsAlunoCODTURMA.AsInteger;
        if DMMov_Mensal.cdsMov_MensalDTNASCIMENTO.AsDateTime > 10 then
          DMMov_Mensal.cdsMov_MensalDTNASCIMENTO.AsDateTime   := DMAluno.cdsAlunoDTNASCIMENTO.AsDateTime
        else
          DMMov_Mensal.cdsMov_MensalDTNASCIMENTO.Clear;

        fMov_MensalC.qCidade.Close;
        fMov_MensalC.qCidade.ParamByName('ID').AsInteger := DMAluno.cdsAlunoCODCIDADE.AsInteger;
        fMov_MensalC.qCidade.Open;
        if not fMov_MensalC.qCidade.IsEmpty then
        begin
          DMMov_Mensal.cdsMov_MensalCIDADE.AsString := fMov_MensalC.qCidadeNOME.AsString;
          DMMov_Mensal.cdsMov_MensalUF.AsString     := fMov_MensalC.qCidadeUF.AsString;
        end;
      end;
    end;

    //if DMMov_Mensal.cdsMov_Mensal.ChangeCount > 0 then
    //begin
      DMMov_Mensal.cdsMov_Mensal.Post;

      DMMov_Mensal.cdsMov_Mensal.ApplyUpdates(0);

      dmDatabase.scoDados.Commit(ID);

    //end
    //else
    //  DMMov_Mensal.cdsMov_Mensal.CancelUpdates;

    Close;

  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;
end;

procedure TfMov_Mensal.BitBtn7Click(Sender: TObject);
var
  vItemAux : Integer;
begin
  Calcular_Total_Evento;
  if RxDBLookupCombo2.Text = '' then
  begin
    ShowMessage('Evento não foi informado!');
    exit;
  end;
  if CurrencyEdit4.Value <= 0 then
  begin
    ShowMessage('Valor total esta zerado!');
    exit;
  end;

  if DMEvento.cdsEvento.Locate('ID',RxDBLookupCombo2.KeyValue,[loCaseInsensitive]) then
  begin
    if (DMEvento.cdsEventoDESCONTO.AsString = 'S') and ((CurrencyEdit2.Value > 0) or (CurrencyEdit3.Value > 0)) then
    begin
      ShowMessage('Quando o tipo é de desconto os campos "% desconto" e "Vlr.Desconto" não podem estar preenchidos!');
      exit;
    end;
  end;

  vItemAux := 0;
  if vItemEvento > 0 then
    if DMMov_Mensal.cdsMov_Mensal_Eventos.Locate('ITEM',vItemEvento,[loCaseInsensitive]) then
      vitemAux := vItemEvento;

  //if DMMov_Mensal.cdsMov_Mensal_Eventos.Locate('ID_EVENTO',RxDBLookupCombo2.KeyValue,[loCaseInsensitive]) then
   if vItemAux > 0 then
    DMMov_Mensal.cdsMov_Mensal_Eventos.Edit
  else
  begin
    {DMMov_Mensal.qProximo_Item.Close;
    DMMov_Mensal.qProximo_Item.ParamByName('ID').AsInteger := DMMov_Mensal.cdsMov_MensalID.AsInteger;
    DMMov_Mensal.qProximo_Item.Open;}
    //vItemAux := DMMov_Mensal.qProximo_ItemITEM.AsInteger;
    DMMov_Mensal.cdsMov_Mensal_Eventos.Last;
    vItemAux := DMMov_Mensal.cdsMov_Mensal_EventosITEM.AsInteger + 1;

    //DMMov_Mensal.cdsMov_Mensal_Eventos.Last;
    //vItemAux := DMMov_Mensal.cdsMov_Mensal_EventosITEM.AsInteger + 1;
    DMMov_Mensal.cdsMov_Mensal_Eventos.Insert;
    DMMov_Mensal.cdsMov_Mensal_EventosID.AsInteger        := DMMov_Mensal.cdsMov_MensalID.AsInteger;
    DMMov_Mensal.cdsMov_Mensal_EventosITEM.AsInteger      := vItemAux;
  end;
  DMMov_Mensal.cdsMov_Mensal_EventosDESCONTO.AsString    := DMEvento.cdsEventoDESCONTO.AsString;
  DMMov_Mensal.cdsMov_Mensal_EventosID_EVENTO.AsInteger  := RxDBLookupCombo2.KeyValue;
  //DMMov_Mensal.cdsMov_Mensal_EventosNOMEVENTO.AsString   := RxDBLookupCombo2.Text;
  DMMov_Mensal.cdsMov_Mensal_EventosVLREVENTO.AsFloat    := CurrencyEdit1.Value;
  DMMov_Mensal.cdsMov_Mensal_EventosQTD.AsFloat          := CurrencyEdit5.Value;
  DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat     := CurrencyEdit4.Value;
  if DMEvento.cdsEventoDESCONTO.AsString = 'S' then
    DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat   := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat * -1));
  DMMov_Mensal.cdsMov_Mensal_EventosVLRDESCONTO.AsFloat  := CurrencyEdit3.Value;
  DMMov_Mensal.cdsMov_Mensal_EventosPERCDESCONTO.AsFloat := CurrencyEdit2.Value;
  DMMov_Mensal.cdsMov_Mensal_EventosANO_MOV.AsInteger    := DMMov_Mensal.cdsMov_MensalANO_MOV.AsInteger;
  DMMov_Mensal.cdsMov_Mensal_EventosMES_MOV.AsInteger    := DMMov_Mensal.cdsMov_MensalMES_MOV.AsInteger;
  DMMov_Mensal.cdsMov_Mensal_Eventos.Post;

  SpeedButton2Click(Sender);
  CurrencyEdit6.SetFocus;
end;

procedure TfMov_Mensal.SpeedButton3Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir o registro selecionado?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  DMMov_Mensal.cdsMov_Mensal_Eventos.Delete;
  SpeedButton2Click(Sender);
end;

procedure TfMov_Mensal.SpeedButton2Click(Sender: TObject);
begin
  vItemEvento               := 0;
  RxDBLookupCombo2.ClearValue;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
  CurrencyEdit4.Clear;
  CurrencyEdit5.AsInteger  := 1;
  CurrencyEdit6.Clear;
  RxDBLookupCombo2.Enabled := True;
  CurrencyEdit6.Enabled    := True;
end;

procedure TfMov_Mensal.RxDBLookupCombo2Exit(Sender: TObject);
begin
  CurrencyEdit1.Value := DMEvento.cdsEventoVALOR.AsFloat;
  if RxDBLookupCombo2.Text <> '' then
    CurrencyEdit6.Value := RxDBLookupCombo2.KeyValue
  else
    CurrencyEdit6.Value := 0;
end;

procedure TfMov_Mensal.CurrencyEdit1Exit(Sender: TObject);
begin
  Calcular_Total_Evento;
end;

procedure TfMov_Mensal.Calcular_Total_Evento;
var
  vDesconto : Real;
  vTotal : Real;
begin
  if CurrencyEdit5.Value <= 0 then
    CurrencyEdit5.Value := 1;

  if CurrencyEdit1.Value <= 0 then
    exit;

  vTotal := StrToFloat(FormatFloat('0.00',CurrencyEdit1.Value * CurrencyEdit5.Value));

  if CurrencyEdit2.Value > 0 then
  begin
    vDesconto := StrToFloat(FormatFloat('0.00',(vTotal * CurrencyEdit2.Value) / 100));
    CurrencyEdit3.Value := StrToFloat(FormatFloat('0.00',vDesconto));
  end;
  CurrencyEdit4.Value := StrToFloat(FormatFloat('0.00',vTotal - CurrencyEdit3.Value));
end;

procedure TfMov_Mensal.CurrencyEdit5Exit(Sender: TObject);
begin
  Calcular_Total_Evento;
end;

procedure TfMov_Mensal.CurrencyEdit2Exit(Sender: TObject);
begin
  if (CurrencyEdit2.Value <= 0) and (vPercDesconto > 0) then
    CurrencyEdit3.Value := 0;
  Calcular_Total_Evento;
end;

procedure TfMov_Mensal.CurrencyEdit2Enter(Sender: TObject);
begin
  vPercDesconto := CurrencyEdit2.Value;
end;

procedure TfMov_Mensal.CurrencyEdit3Exit(Sender: TObject);
begin
  Calcular_Total_Evento;
end;

procedure TfMov_Mensal.BitBtn15Click(Sender: TObject);
begin
  if DMMov_Mensal.cdsMov_Mensal_Eventos.IsEmpty then
    exit;

  vItemEvento               := DMMov_Mensal.cdsMov_Mensal_EventosITEM.AsInteger;
  RxDBLookupCombo2.KeyValue := DMMov_Mensal.cdsMov_Mensal_EventosID_EVENTO.AsInteger;
  CurrencyEdit1.Value       := DMMov_Mensal.cdsMov_Mensal_EventosVLREVENTO.AsFloat;
  CurrencyEdit2.Value       := DMMov_Mensal.cdsMov_Mensal_EventosPERCDESCONTO.AsFloat;
  CurrencyEdit3.Value       := DMMov_Mensal.cdsMov_Mensal_EventosVLRDESCONTO.AsFloat;
  CurrencyEdit4.Value       := DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat;
  CurrencyEdit5.Value       := DMMov_Mensal.cdsMov_Mensal_EventosQTD.AsFloat;
  CurrencyEdit1.SetFocus;
  RxDBLookupCombo2.Enabled  := False;
  CurrencyEdit6.Enabled     := False;
end;

procedure TfMov_Mensal.FormShow(Sender: TObject);
begin
  DMMov_Mensal.cdsMov_Mensal_Eventos.First;
  vCodAluno := DMMov_Mensal.cdsMov_MensalID_ALUNO.AsInteger;
end;

procedure TfMov_Mensal.CurrencyEdit6Exit(Sender: TObject);
begin
  if CurrencyEdit6.AsInteger > 0 then
    if DMEvento.cdsEvento.Locate('ID',CurrencyEdit6.AsInteger,[loCaseInsensitive]) then
      RxDBLookupCombo2.KeyValue := DMEvento.cdsEventoID.AsInteger;
end;

procedure TfMov_Mensal.RxDBLookupCombo4Exit(Sender: TObject);
var
  vDia : Integer;
begin
  if (DMMov_Mensal.cdsMov_Mensal.State in [dsInsert]) and (DMAluno.cdsAlunoDIACOBRANCA.AsInteger > 0) then
    DMMov_Mensal.cdsMov_MensalDTVENCIMENTO.AsDateTime := EncodeDate(YearOf(DMMov_Mensal.cdsMov_MensalDTVENCIMENTO.AsDateTime),MonthOf(DMMov_Mensal.cdsMov_MensalDTVENCIMENTO.AsDateTime),DMAluno.cdsAlunoDIACOBRANCA.AsInteger);
end;

procedure TfMov_Mensal.SpeedButton4Click(Sender: TObject);
begin
  fEventoC := TfEventoC.Create(Self);
  fEventoC.Tag := 1;
  fEventoC.ShowModal;
  fMov_MensalC.Abre_cdsEvento;
end;

procedure TfMov_Mensal.CurrencyEdit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and (CurrencyEdit6.AsInteger > 0) then
    RxDBLookupCombo2.SetFocus;
end;

procedure TfMov_Mensal.RxDBLookupCombo2Change(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
  begin
    CurrencyEdit1.Value := DMEvento.cdsEventoVALOR.AsFloat;
    CurrencyEdit6.Value := RxDBLookupCombo2.KeyValue
  end;
end;

procedure TfMov_Mensal.RxDBLookupCombo2DropDown(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
  begin
    CurrencyEdit1.Value := DMEvento.cdsEventoVALOR.AsFloat;
    CurrencyEdit6.Value := RxDBLookupCombo2.KeyValue
  end;
end;

procedure TfMov_Mensal.SpeedButton1Click(Sender: TObject);
begin
  fAlunoC := TfAlunoC.Create(Self);
  fAlunoC.ShowModal;
  fMov_MensalC.Abre_cdsAluno;
end;

end.
