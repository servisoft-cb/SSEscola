unit UAluno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, RxLookup, ToolEdit,
  RXDBCtrl, Grids, DBGrids, SMDBGrid, RxDBComb, RzEdit, RzDBEdit, RzTabs,
  FMTBcd, DB, SqlExpr, Provider, DBClient, DBVGrids, DBFilter, DBTables,
  ExtDlgs, CurrEdit, VerificaCPF;

type
  TfAluno = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    RzPageControl1: TRzPageControl;
    TabSheet3: TRzTabSheet;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    TabSheet1: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel3: TPanel;
    OpenPictureDialog2: TOpenPictureDialog;
    BitBtn7: TBitBtn;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label13: TLabel;
    DBEdit2: TDBEdit;
    TabSheet2: TRzTabSheet;
    DBMemo2: TDBMemo;
    TabSheet4: TRzTabSheet;
    DBMemo3: TDBMemo;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label14: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label15: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Image1: TImage;
    Label6: TLabel;
    DBEdit10: TDBEdit;
    Label8: TLabel;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    DBEdit12: TDBEdit;
    TabSheet6: TRzTabSheet;
    Label12: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label20: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBCheckBox1: TDBCheckBox;
    Label52: TLabel;
    BitBtn3: TBitBtn;
    DBEdit24: TDBEdit;
    Label25: TLabel;
    DBDateEdit2: TDBDateEdit;
    DBCheckBox2: TDBCheckBox;
    Label26: TLabel;
    DBDateEdit3: TDBDateEdit;
    Label27: TLabel;
    RxDBComboBox4: TRxDBComboBox;
    Label9: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    TabSheet5: TRzTabSheet;
    TabSheet7: TRzTabSheet;
    Panel4: TPanel;
    Label10: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit7: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    DBEdit22: TDBEdit;
    DBEdit21: TDBEdit;
    RxDBComboBox2: TRxDBComboBox;
    RxDBComboBox3: TRxDBComboBox;
    DBCheckBox3: TDBCheckBox;
    DBMemo4: TDBMemo;
    Label28: TLabel;
    DateEdit1: TDateEdit;
    Label29: TLabel;
    DateEdit2: TDateEdit;
    Label30: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label31: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    VerificaCPF1: TVerificaCPF;
    Label32: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBEdit24Change(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure DBCheckBox3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure DBEdit16Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure CurrencyEdit3Exit(Sender: TObject);
  private
    { Private declarations }
    {FDMAluno : TDMAluno;
    FDMTurma : TDMTurma;
    FDMEvento: TDMEvento;
    FDMCidade: TDMCidade;}

    procedure Grava_Aluno;

  public
    { Public declarations }
    vTalaoMC : Integer;

    {property DMAluno : TDmAluno read FDMAluno write FDMAluno;
    property DMTurma : TDMTurma read FDMTurma write FDMTurma;
    property DMEvento: TDMEvento read FDMEvento write FDMEvento;
    property DMCidade: TDMCidade read FDMCidade write FDMCidade;}

  end;

var
  fAluno: TfAluno;

implementation

uses DmdDatabase, UDMAluno, UDMEvento, UDMTurma, UDMCidade, DateUtils;

{$R *.dfm}

procedure TfAluno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DMEvento.cdsEvento.IndexFieldNames := '';

  if DMAluno.cdsAluno.State in [dsEdit,dsInsert] then
    DMAluno.cdsAluno.CancelUpdates;

  if DMAluno.cdsAluno.ClassName  = Self.ClassName then
    FreeAndNil(DMAluno);

  Tag    := 0;

  Action := Cafree;
end;

procedure TfAluno.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  DMAluno.cdsAluno.CancelUpdates;
  Close;
end;

procedure TfAluno.BitBtn1Click(Sender: TObject);
begin
  if trim(DMAluno.cdsAlunoNOME.AsString) = '' then
  begin
    ShowMessage('Nome do aluno não foi informado!');
    exit;
  end;
  if trim(DMAluno.cdsAlunoNOME_RESPONSAVEL.AsString) = '' then
  begin
    ShowMessage('Nome do responsável não foi informado!');
    exit;
  end;
  if DMAluno.cdsAlunoDIACOBRANCA.AsInteger > 30 then
  begin
    ShowMessage('Dia de cobrança inválido!');
    exit;
  end;

  if DMAluno.cdsAluno.State in [dsBrowse] then
    DMAluno.cdsAluno.Edit;

  Grava_Aluno;

  Close;
end;

procedure TfAluno.Grava_Aluno;
var
  vVlrAux : Real;
begin
  try
    DMAluno.cdsAlunoCIDADE.AsString := RxDBLookupCombo4.Text;

    if DMCidade.cdsCidade.Locate('ID',DMAluno.cdsAlunoCODCIDADE.AsInteger,[loCaseInsensitive]) then
    begin
      DMAluno.cdsAlunoCIDADE.AsString := DMCidade.cdsCidadeNOME.AsString;
      DMAluno.cdsAlunoUF.AsString     := DMCidade.cdsCidadeUF.AsString;
    end;
    if DMAluno.cdsAlunoMES_INICIO.AsInteger < 1 then
      DMAluno.cdsAlunoMES_INICIO.AsInteger := 0;
    if DMAluno.cdsAlunoMES_FINAL.AsInteger < 1 then
      DMAluno.cdsAlunoMES_FINAL.AsInteger := 0;
    if DMAluno.cdsAlunoANO_INICIO.AsInteger < 1 then
      DMAluno.cdsAlunoANO_INICIO.AsInteger := 0;
    if DMAluno.cdsAlunoANO_FINAL.AsInteger < 1 then
      DMAluno.cdsAlunoANO_FINAL.AsInteger := 0;

    if DMAluno.cdsAlunoINATIVO.AsString = 'N' then
      DMAluno.cdsAlunoDTINATIVO.Clear;

    DMAluno.cdsAluno.Post;

    DMAluno.cdsAluno.ApplyUpdates(0);

  except
    on E: Exception do
    begin
      ShowMessage('Não foi possível gravar, ' + E.Message + '!');
    end;
  end;
end;

procedure TfAluno.BitBtn7Click(Sender: TObject);
var
  vItemAux : Integer;
begin
  if RxDBLookupCombo2.Text = '' then
  begin
    ShowMessage('Evento não foi informado!');
    exit;
  end;

  DMAluno.cdsAluno_Evento.Insert;
  DMAluno.cdsAluno_EventoID.AsInteger         := DMAluno.cdsAlunoID.AsInteger;
  DMAluno.cdsAluno_EventoCODEVENTO.AsInteger  := RxDBLookupCombo2.KeyValue;
  DMAluno.cdsAluno_EventoNOMEEVENTO.AsString  := RxDBLookupCombo2.Text;
  DMAluno.cdsAluno_EventoANO_INICIO.AsInteger := 0;
  DMAluno.cdsAluno_EventoMES_INICIO.AsInteger := 0;
  DMAluno.cdsAluno_EventoANO_FINAL.AsInteger  := 0;
  DMAluno.cdsAluno_EventoMES_FINAL.AsInteger  := 0;
  DMAluno.cdsAluno_EventoQTD.AsFloat          := CurrencyEdit1.Value;
  DMAluno.cdsAluno_EventoVALOR.AsFloat        := CurrencyEdit2.Value;

  if DMEvento.cdsEvento.Locate('ID',DMAluno.cdsAluno_EventoCODEVENTO.AsInteger,[loCaseInsensitive]) then
    DMAluno.cdsAluno_EventoVALOREVENTO.AsFloat := DMEvento.cdsEventoVALOR.AsFloat;

  if DateEdit1.Date > 10 then
    DMAluno.cdsAluno_EventoDTINICIO.AsDateTime := DateEdit1.Date
  else
    DMAluno.cdsAluno_EventoDTINICIO.Clear;
  if DateEdit2.Date > 10 then
    DMAluno.cdsAluno_EventoDTFINAL.AsDateTime := DateEdit2.Date
  else
    DMAluno.cdsAluno_EventoDTFINAL.Clear;
  if DMAluno.cdsAluno_EventoDTINICIO.AsDateTime > 0 then
  begin
    DMAluno.cdsAluno_EventoANO_INICIO.AsInteger := YearOf(DMAluno.cdsAluno_EventoDTINICIO.AsDateTime);
    DMAluno.cdsAluno_EventoMES_INICIO.AsInteger := MonthOf(DMAluno.cdsAluno_EventoDTINICIO.AsDateTime);
  end;
  if DMAluno.cdsAluno_EventoDTFINAL.AsDateTime > 0 then
  begin
    DMAluno.cdsAluno_EventoANO_FINAL.AsInteger := YearOf(DMAluno.cdsAluno_EventoDTFINAL.AsDateTime);
    DMAluno.cdsAluno_EventoMES_FINAL.AsInteger := MonthOf(DMAluno.cdsAluno_EventoDTFINAL.AsDateTime);
  end;
  DMAluno.cdsAluno_Evento.Post;

  SpeedButton2Click(Sender);
  CurrencyEdit3.SetFocus;
end;

procedure TfAluno.SpeedButton3Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir o anexo?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  DMAluno.cdsAluno_Evento.Delete;
end;

procedure TfAluno.SpeedButton2Click(Sender: TObject);
begin
  RxDBLookupCombo2.ClearValue;
  CurrencyEdit1.AsInteger := 1;
  CurrencyEdit2.Clear;
  CurrencyEdit3.Clear;
end;

procedure TfAluno.DBCheckBox1Click(Sender: TObject);
begin
  TabSheet4.TabVisible := DBCheckBox1.Checked;
end;

procedure TfAluno.BitBtn3Click(Sender: TObject);
begin
  OpenPictureDialog2.Execute;
  DMAluno.cdsAlunoEND_FOTO.AsString := OpenPictureDialog2.FileName;
end;

procedure TfAluno.DBEdit24Change(Sender: TObject);
begin
  Image1.Picture := Nil;
  if FileExists(DMAluno.cdsAlunoEND_FOTO.AsString) Then
    Image1.Picture.LoadFromFile(DMAluno.cdsAlunoEND_FOTO.AsString);
end;

procedure TfAluno.DBCheckBox2Click(Sender: TObject);
begin
  Label26.Visible     := DBCheckBox2.Checked;
  DBDateEdit3.Visible := DBCheckBox2.Checked;
end;

procedure TfAluno.DBCheckBox3Click(Sender: TObject);
begin
  TabSheet5.TabVisible := DBCheckBox3.Checked;
end;

procedure TfAluno.FormShow(Sender: TObject);
begin
  TabSheet4.TabVisible := DBCheckBox1.Checked;
  TabSheet5.TabVisible := DBCheckBox3.Checked;

  DMEvento.cdsEvento.IndexFieldNames := 'NOME';

  Label26.Visible     := DBCheckBox2.Checked;
  DBDateEdit3.Visible := DBCheckBox2.Checked;
end;

procedure TfAluno.RxDBLookupCombo4Exit(Sender: TObject);
begin
  DMAluno.cdsAlunoUF.AsString := DMCidade.cdsCidadeUF.AsString;
end;

procedure TfAluno.DBEdit5Enter(Sender: TObject);
begin
  DMAluno.cdsAlunoCPF_REPONSAVEL.EditMask := '999.999.999-99'
end;

procedure TfAluno.DBEdit15Enter(Sender: TObject);
begin
  DMAluno.cdsAlunoCPF_PAI.EditMask := '999.999.999-99'
end;

procedure TfAluno.DBEdit16Enter(Sender: TObject);
begin
  DMAluno.cdsAlunoCPF_MAE.EditMask := '999.999.999-99'
end;

procedure TfAluno.DBEdit5Exit(Sender: TObject);
begin
  if (DBEdit5.Text <> '   .   .   -  ') then
  begin
    VerificaCPF1.Entrada := DBEdit5.Text;
    if not VerificaCPF1.Resultado then
    begin
      ShowMessage('Número de CPF inválido!');
      DBEdit5.SetFocus;
    end;
  end;
end;

procedure TfAluno.DBEdit15Exit(Sender: TObject);
begin
  if (DBEdit15.Text <> '   .   .   -  ') then
  begin
    VerificaCPF1.Entrada := DBEdit15.Text;
    if not VerificaCPF1.Resultado then
    begin
      ShowMessage('Número de CPF inválido!');
      DBEdit15.SetFocus;
    end;
  end;
end;

procedure TfAluno.DBEdit16Exit(Sender: TObject);
begin
  if (DBEdit16.Text <> '   .   .   -  ') then
  begin
    VerificaCPF1.Entrada := DBEdit16.Text;
    if not VerificaCPF1.Resultado then
    begin
      ShowMessage('Número de CPF inválido!');
      DBEdit16.SetFocus;
    end;
  end;
end;

procedure TfAluno.RxDBLookupCombo2Exit(Sender: TObject);
begin
  CurrencyEdit2.Value     := DMEvento.cdsEventoVALOR.AsFloat;
  CurrencyEdit3.AsInteger := DMEvento.cdsEventoID.AsInteger;
end;

procedure TfAluno.CurrencyEdit3Exit(Sender: TObject);
begin
  if CurrencyEdit3.AsInteger > 0 then
    if DMEvento.cdsEvento.Locate('ID',CurrencyEdit3.AsInteger,[loCaseInsensitive]) then
      RxDBLookupCombo2.KeyValue := DMEvento.cdsEventoID.AsInteger;
end;

end.
