unit UCidadeC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, Grids, DBGrids,
  SMDBGrid, DB, CurrEdit, DBCtrls, RxLookup, DBFilter, DBClient, FMTBcd,
  Provider, SqlExpr;

type
  TfCidadeC = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    StaticText1: TStaticText;
    Label3: TLabel;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Panel2: TPanel;
    Edit1: TEdit;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    ComboBox3: TComboBox;
    BitBtn5: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure Monta_sqlCidade(Tipo : String ; ID : Integer); //P=Com Parametros   N=Sem Parametros
    procedure Inserir_Cidade;

  end;

var
  fCidadeC: TfCidadeC;

implementation

uses DateUtils, UDMCidade, UCidade, DmdDatabase;

{$R *.dfm}

procedure TfCidadeC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMCidade.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMCidade);

  Action := Cafree;
end;

procedure TfCidadeC.BitBtn3Click(Sender: TObject);
begin
  Monta_sqlCidade('P',CurrencyEdit1.AsInteger);
end;

procedure TfCidadeC.Monta_sqlCidade(Tipo : String ; ID : Integer); //P=Com Parametros   N=Sem Parametros
begin                                                                                            
  DMCidade.cdsCidade.Close;

  if ID > 0 then
  begin
    DMCidade.sdsCidade.CommandText := ctCidade
                                            + ' WHERE ID = ' + IntToStr(ID);
  end
  else
  if Tipo = 'P' then
  begin
    DMCidade.sdsCidade.CommandText := ctCidade
                                            + ' WHERE 0=0 ';

    if Edit1.Text <> '' then
      DMCidade.sdsCidade.CommandText := DMCidade.sdsCidade.CommandText
                                              + ' AND NOME LIKE ' + QuotedStr('%' + Edit1.Text + '%');
    case ComboBox3.ItemIndex of
      0 : DMCidade.sdsCidade.CommandText := DMCidade.sdsCidade.CommandText + ' ORDER BY ID';
      1 : DMCidade.sdsCidade.CommandText := DMCidade.sdsCidade.CommandText + ' ORDER BY NOME, ID ';
    end;

  end
  else
    DMCidade.sdsCidade.CommandText := ctCidade
                                            + ' WHERE ID = 0';

  DMCidade.cdsCidade.Open;
end;

procedure TfCidadeC.BitBtn2Click(Sender: TObject);
begin
  {if not DM1.tUsuarioExcCidade.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ', não autorizado!');
    exit;
  end;}

  if DMCidade.cdsCidade.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  DMCidade.cdsCidade.Delete;
  DMCidade.cdsCidade.ApplyUpdates(0);
end;

procedure TfCidadeC.BitBtn1Click(Sender: TObject);
begin
  {if not DM1.tUsuarioInsCidade.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ', não autorizado!');
    exit;
  end;}

  if DMCidade.cdsCidade.Active then
    Monta_sqlCidade('N',0);

  Inserir_Cidade;

  fCidade := TfCidade.Create(Self);
  fCidade.Tag := 0;
  fCidade.ShowModal;
end;

procedure TfCidadeC.FormShow(Sender: TObject);
var
  vData : TDateTime;
begin
  if not Assigned(DMCidade) then
    DMCidade := TDMCidade.Create(Self);

  {BitBtn1.Enabled := DM1.tUsuarioInsCidade.AsBoolean;
  BitBtn2.Enabled := DM1.tUsuarioExcCidade.AsBoolean;}
end;

procedure TfCidadeC.SMDBGrid1DblClick(Sender: TObject);
begin
  if DMCidade.cdsCidade.IsEmpty then
    exit;
  {if not DM1.tUsuarioAltCidade.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ' não autorizado a fazer a alteração!');
    exit;
  end;}

  fCidade := TfCidade.Create(Self);
  //{if DM1.tUsuarioAltCidade.AsBoolean then
    DMCidade.cdsCidade.Edit;
  {else
  begin
    fCidade.Panel1.Enabled   := False;
    fCidade.Panel2.Enabled   := False;
    fCidade.DBMemo1.ReadOnly := True;
    fCidade.BitBtn1.Enabled  := False;
    fCidade.BitBtn2.Enabled  := False;
  //end;}
  fCidade.Tag := 0;
  fCidade.ShowModal;
end;

procedure TfCidadeC.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfCidadeC.Inserir_Cidade;
var
  vNumAux : Integer;
begin
  vNumAux := dmDatabase.ProximaSequencia('CIDADE',0);

  DMCidade.cdsCidade.Insert;
  DMCidade.cdsCidadeID.AsInteger          := vNumAux;
end;

end.
