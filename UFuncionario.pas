unit UFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, RxLookup, ToolEdit,
  RXDBCtrl, Grids, DBGrids, SMDBGrid, RxDBComb, RzEdit, RzDBEdit, RzTabs,
  FMTBcd, DB, SqlExpr, Provider, DBClient, DBVGrids, DBFilter, DBTables,
  ExtDlgs, CurrEdit, VerificaCPF;

type
  TfFuncionario = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RzPageControl1: TRzPageControl;
    TabSheet3: TRzTabSheet;
    DBMemo1: TDBMemo;
    OpenPictureDialog2: TOpenPictureDialog;
    TabSheet2: TRzTabSheet;
    DBMemo2: TDBMemo;
    TabSheet6: TRzTabSheet;
    Label12: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    VerificaCPF1: TVerificaCPF;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Image1: TImage;
    Label6: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label21: TLabel;
    Label52: TLabel;
    Label27: TLabel;
    Label4: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label10: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit1: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    DBEdit6: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    RxDBLookupCombo4: TRxDBLookupCombo;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    BitBtn3: TBitBtn;
    DBEdit24: TDBEdit;
    RxDBComboBox4: TRxDBComboBox;
    DBEdit4: TDBEdit;
    DBDateEdit4: TDBDateEdit;
    DBEdit23: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    Label25: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label36: TLabel;
    DBEdit29: TDBEdit;
    Label37: TLabel;
    DBEdit30: TDBEdit;
    Label38: TLabel;
    DBEdit31: TDBEdit;
    Label39: TLabel;
    DBEdit32: TDBEdit;
    Label17: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    Label18: TLabel;
    DBEdit15: TDBEdit;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    Label9: TLabel;
    Label20: TLabel;
    DBEdit17: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBEdit24Change(Sender: TObject);
    procedure RxDBLookupCombo4Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure RxDBLookupCombo3Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
  private
    { Private declarations }

    procedure Grava_Funcionario;

  public
    { Public declarations }

  end;

var
  fFuncionario: TfFuncionario;

implementation

uses DmdDatabase, UDMFuncionario, UDMTurma, UDMCidade, DateUtils;

{$R *.dfm}

procedure TfFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DMTurma.cdsTurma.IndexFieldNames := '';

  if DMFuncionario.cdsFuncionario.State in [dsEdit,dsInsert] then
    DMFuncionario.cdsFuncionario.CancelUpdates;

  if DMFuncionario.cdsFuncionario.ClassName  = Self.ClassName then
    FreeAndNil(DMFuncionario);

  Tag    := 0;

  Action := Cafree;
end;

procedure TfFuncionario.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  DMFuncionario.cdsFuncionario.CancelUpdates;
  Close;
end;

procedure TfFuncionario.BitBtn1Click(Sender: TObject);
begin
  if trim(DMFuncionario.cdsFuncionarioNOME.AsString) = '' then
  begin
    ShowMessage('Nome do Funcionario não foi informado!');
    exit;
  end;

  if DMFuncionario.cdsFuncionario.State in [dsBrowse] then
    DMFuncionario.cdsFuncionario.Edit;

  Grava_Funcionario;

  Close;
end;

procedure TfFuncionario.Grava_Funcionario;
var
  vVlrAux : Real;
begin
  try
    DMFuncionario.cdsFuncionarioCIDADE.AsString := RxDBLookupCombo4.Text;

    if DMCidade.cdsCidade.Locate('ID',DMFuncionario.cdsFuncionarioCODCIDADE.AsInteger,[loCaseInsensitive]) then
    begin
      DMFuncionario.cdsFuncionarioCIDADE.AsString := DMCidade.cdsCidadeNOME.AsString;
      DMFuncionario.cdsFuncionarioUF.AsString     := DMCidade.cdsCidadeUF.AsString;
    end;
    if DMCidade.cdsCidade.Locate('ID',DMFuncionario.cdsFuncionarioCODCIDADENASC.AsInteger,[loCaseInsensitive]) then
      DMFuncionario.cdsFuncionarioUFNASC.AsString := DMCidade.cdsCidadeUF.AsString;

    if DMFuncionario.cdsFuncionarioDTDEMISSAO.AsDateTime < 10 then
      DMFuncionario.cdsFuncionarioDTDEMISSAO.Clear;

    DMFuncionario.cdsFuncionario.Post;

    DMFuncionario.cdsFuncionario.ApplyUpdates(0);

  except
    on E: Exception do
    begin
      ShowMessage('Não foi possível gravar, ' + E.Message + '!');
    end;
  end;
end;

procedure TfFuncionario.BitBtn3Click(Sender: TObject);
begin
  OpenPictureDialog2.Execute;
  DMFuncionario.cdsFuncionarioENDFOTO.AsString := OpenPictureDialog2.FileName;
end;

procedure TfFuncionario.DBEdit24Change(Sender: TObject);
begin
  Image1.Picture := Nil;
  if FileExists(DMFuncionario.cdsFuncionarioENDFOTO.AsString) Then
    Image1.Picture.LoadFromFile(DMFuncionario.cdsFuncionarioENDFOTO.AsString);
end;

procedure TfFuncionario.RxDBLookupCombo4Exit(Sender: TObject);
begin
  DMFuncionario.cdsFuncionarioUF.AsString := DMCidade.cdsCidadeUF.AsString;
end;

procedure TfFuncionario.DBEdit5Exit(Sender: TObject);
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

procedure TfFuncionario.DBEdit15Exit(Sender: TObject);
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

procedure TfFuncionario.DBEdit16Exit(Sender: TObject);
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

procedure TfFuncionario.RxDBLookupCombo3Exit(Sender: TObject);
begin
  DMFuncionario.cdsFuncionarioUFNASC.AsString := DMCidade.cdsCidadeUF.AsString;
end;

procedure TfFuncionario.FormShow(Sender: TObject);
begin
  DMTurma.cdsTurma.IndexFieldNames := 'NOME';
end;

procedure TfFuncionario.DBEdit5Enter(Sender: TObject);
begin
  DMFuncionario.cdsFuncionarioCPF.EditMask := '999.999.999-99';
end;

end.
