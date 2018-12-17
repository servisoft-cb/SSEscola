unit UMov_MensalPag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, DBCtrls, RxLookup, ToolEdit,
  RXDBCtrl, Grids, DBGrids, SMDBGrid, RxDBComb, RzEdit, RzDBEdit, RzTabs,
  FMTBcd, DB, SqlExpr, Provider, DBClient, DBVGrids, DBFilter, DBTables,
  ExtDlgs, CurrEdit;

type
  TfMov_MensalPag = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
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
    BitBtn2: TBitBtn;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    {FDMMov_Mensal : TDMMov_Mensal;
    FDMTurma : TDMTurma;
    FDMEvento: TDMEvento;
    FDMCidade: TDMCidade;}

    procedure Grava_Mov_Mensal;


  public
    { Public declarations }

    {property DMMov_Mensal : TDmMov_Mensal read FDMMov_Mensal write FDMMov_Mensal;
    property DMTurma : TDMTurma read FDMTurma write FDMTurma;
    property DMEvento: TDMEvento read FDMEvento write FDMEvento;
    property DMCidade: TDMCidade read FDMCidade write FDMCidade;}

  end;

var
  fMov_MensalPag: TfMov_MensalPag;

implementation

uses DmdDatabase, UDMMov_Mensal, UDMEvento, UDMTurma, DateUtils,
  UDMAluno, UMov_MensalC;

{$R *.dfm}

procedure TfMov_MensalPag.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMMov_Mensal.cdsMov_Mensal.State in [dsEdit,dsInsert] then
    DMMov_Mensal.cdsMov_Mensal.CancelUpdates;

  Tag    := 0;

  Action := Cafree;
end;

procedure TfMov_MensalPag.BitBtn2Click(Sender: TObject);
begin
  if DMMov_Mensal.cdsMov_Mensal.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Deseja cancelar a inclusão/alteração?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
    DMMov_Mensal.cdsMov_Mensal.CancelUpdates;
  end;
  
  Close;
end;

procedure TfMov_MensalPag.BitBtn1Click(Sender: TObject);
begin
  if (DMMov_Mensal.cdsMov_MensalDTPAGAMENTO.AsDateTime < 10) or (StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_MensalVLRPAGO.AsFloat)) <= 0) then
    if MessageDlg('Deseja zerar o pagamento (esta opção vai colocar o registro pendente)?',mtConfirmation,[mbYes,mbNo],0) = mrNO then
      exit;

  Grava_Mov_Mensal;

end;

procedure TfMov_MensalPag.Grava_Mov_Mensal;
var
  vVlrAux : Real;
begin
  try
    if (DMMov_Mensal.cdsMov_MensalDTPAGAMENTO.AsDateTime < 10) or (StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_MensalVLRPAGO.AsFloat)) <= 0) then
    begin
      DMMov_Mensal.cdsMov_MensalDTPAGAMENTO.Clear;
      DMMov_Mensal.cdsMov_MensalVLRPAGO.AsFloat     := 0;
      DMMov_Mensal.cdsMov_MensalVLRRESTANTE.AsFloat := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_MensalVLRLIQUIDO.AsFloat));
    end
    else
      DMMov_Mensal.cdsMov_MensalVLRRESTANTE.AsFloat := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_MensalVLRLIQUIDO.AsFloat - DMMov_Mensal.cdsMov_MensalVLRPAGO.AsFloat));

    if StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_MensalVLRRESTANTE.AsFloat)) <= 0 then
      DMMov_Mensal.cdsMov_MensalVLRRESTANTE.AsFloat := StrToFloat(FormatFloat('0.00',0));

    DMMov_Mensal.cdsMov_Mensal.Post;

    DMMov_Mensal.cdsMov_Mensal.ApplyUpdates(0);

    Close;
    
  except
    on E: Exception do
    begin
      ShowMessage('Não foi possível gravar, ' + E.Message + '!');
    end;
  end;
end;

procedure TfMov_MensalPag.FormShow(Sender: TObject);
begin
  if DMMov_Mensal.cdsMov_Mensal.State in [dsBrowse] then
    DMMov_Mensal.cdsMov_Mensal.Edit;
  DMMov_Mensal.cdsMov_MensalVLRPAGO.AsFloat := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_MensalVLRPAGO.AsFloat + DMMov_Mensal.cdsMov_MensalVLRRESTANTE.AsFloat));
end;

end.
