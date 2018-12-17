unit UEventoC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, Grids, DBGrids,
  SMDBGrid, DB, CurrEdit, DBCtrls, RxLookup, DBFilter, DBClient, FMTBcd,
  Provider, SqlExpr;

type
  TfEventoC = class(TForm)
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
    procedure FormDblClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure Monta_sqlEvento(Tipo : String ; ID : Integer); //P=Com Parametros   N=Sem Parametros
    procedure Inserir_Evento;

  end;

var
  fEventoC: TfEventoC;

implementation

uses DateUtils, UDMEvento, UEvento, DmdDatabase;

{$R *.dfm}

procedure TfEventoC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMEvento.Owner.ClassName = Self.ClassName then
    FreeAndNil(DMEvento);

  Action := Cafree;
end;

procedure TfEventoC.BitBtn3Click(Sender: TObject);
begin
  Monta_sqlEvento('P',0);
end;

procedure TfEventoC.Monta_sqlEvento(Tipo : String ; ID : Integer); //P=Com Parametros   N=Sem Parametros
begin                                                                                            
  DMEvento.cdsEvento.Close;

  if ID > 0 then
  begin
    DMEvento.sdsEvento.CommandText := ctEvento
                                            + ' WHERE ID = ' + IntToStr(ID);
  end
  else
  if Tipo = 'P' then
  begin
    DMEvento.sdsEvento.CommandText := ctEvento
                                            + ' WHERE 0=0 ';

    if Edit1.Text <> '' then
      DMEvento.sdsEvento.CommandText := DMEvento.sdsEvento.CommandText
                                              + ' AND NOME LIKE ' + QuotedStr('%' + Edit1.Text + '%');
  end
  else
    DMEvento.sdsEvento.CommandText := ctEvento
                                            + ' WHERE ID = 0';

  DMEvento.cdsEvento.Open;
  case ComboBox3.ItemIndex of
    0 : DMEvento.cdsEvento.IndexFieldNames := 'ID';
    1 : DMEvento.cdsEvento.IndexFieldNames := 'NOME;ID';
  end;
end;

procedure TfEventoC.BitBtn2Click(Sender: TObject);
begin
  {if not DM1.tUsuarioExcEvento.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ', não autorizado!');
    exit;
  end;}

  if DMEvento.cdsEvento.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  DMEvento.cdsEvento.Delete;
  DMEvento.cdsEvento.ApplyUpdates(0);
end;

procedure TfEventoC.BitBtn1Click(Sender: TObject);
begin
  {if not DM1.tUsuarioInsEvento.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ', não autorizado!');
    exit;
  end;}

  if not DMEvento.cdsEvento.Active then
    Monta_sqlEvento('N',0);

  Inserir_Evento;

  fEvento := TfEvento.Create(Self);
  fEvento.Tag := 0;
  fEvento.ShowModal;
end;

procedure TfEventoC.FormShow(Sender: TObject);
var
  vData : TDateTime;
begin
  if not Assigned(DMEvento) then
    DMEvento := TDMEvento.Create(Self);

  {BitBtn1.Enabled := DM1.tUsuarioInsEvento.AsBoolean;
  BitBtn2.Enabled := DM1.tUsuarioExcEvento.AsBoolean;}
end;

procedure TfEventoC.SMDBGrid1DblClick(Sender: TObject);
begin
  if DMEvento.cdsEvento.IsEmpty then
    exit;
  {if not DM1.tUsuarioAltEvento.AsBoolean then
  begin
    ShowMessage('Usuário ' + DM1.tUsuarioUsuario.AsString + ' não autorizado a fazer a alteração!');
    exit;
  end;}

  fEvento := TfEvento.Create(Self);
  //{if DM1.tUsuarioAltEvento.AsBoolean then
    DMEvento.cdsEvento.Edit;
  {else
  begin
    fEvento.Panel1.Enabled   := False;
    fEvento.Panel2.Enabled   := False;
    fEvento.DBMemo1.ReadOnly := True;
    fEvento.BitBtn1.Enabled  := False;
    fEvento.BitBtn2.Enabled  := False;
  //end;}
  fEvento.Tag := 0;
  fEvento.ShowModal;
end;

procedure TfEventoC.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfEventoC.Inserir_Evento;
var
  vNumAux : Integer;
begin
  vNumAux := dmDatabase.ProximaSequencia('EVENTO',0);

  DMEvento.cdsEvento.Insert;
  DMEvento.cdsEventoID.AsInteger          := vNumAux;
end;

procedure TfEventoC.FormDblClick(Sender: TObject);
begin
  if DMEvento.cdsEventoID.AsInteger > 0 then
    
end;

end.
