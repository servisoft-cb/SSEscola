unit UMov_MensalAltEvento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ToolEdit, RxLookup, Mask, CurrEdit,
  DBCtrls, RXDBCtrl, DB, DateUtils;

type
  TfMov_MensalAltEvento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Panel3: TPanel;
    Label32: TLabel;
    Label9: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    DBText1: TDBText;
    Label1: TLabel;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    DBEdit6: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Panel3Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
  private
    { Private declarations }
    vVlrTotal, vVlrDesconto, vVlrLiquido, vVlrRestante : Real;

    procedure Calcular_Desconto;
  public
    { Public declarations }
  end;

var
  fMov_MensalAltEvento: TfMov_MensalAltEvento;

implementation

uses UAlunoC, UDMEvento, UMov_MensalC, UDMMov_Mensal;

{$R *.dfm}

procedure TfMov_MensalAltEvento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DMMov_Mensal.cdsMov_Mensal_Eventos.State in [dsInsert,dsedit] then
    DMMov_Mensal.cdsMov_Mensal_Eventos.CancelUpdates;

  Action := Cafree;
end;

procedure TfMov_MensalAltEvento.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfMov_MensalAltEvento.FormShow(Sender: TObject);
var
  vItemAux : Integer;
begin
  Panel3.Enabled := (DMMov_Mensal.cdsMov_Mensal_EventosID_EVENTO.AsInteger <= 0) or (DMMov_Mensal.cdsMov_Mensal_Eventos.State in [dsInsert,dsBrowse]);
  if DMMov_Mensal.cdsMov_Mensal_Eventos.State in [dsBrowse] then
  begin
    if DMMov_Mensal.cdsMov_Mensal_EventosID_EVENTO.AsInteger > 0 then
      DMMov_Mensal.cdsMov_Mensal_Eventos.Edit
    else
    begin
      DMMov_Mensal.cdsMov_Mensal_Eventos.Last;
      vItemAux := DMMov_Mensal.cdsMov_Mensal_EventosITEM.AsInteger + 1;

      DMMov_Mensal.cdsMov_Mensal_Eventos.Insert;
      DMMov_Mensal.cdsMov_Mensal_EventosID.AsInteger   := DMMov_Mensal.cdsMov_MensalID.AsInteger;
      DMMov_Mensal.cdsMov_Mensal_EventosITEM.AsInteger := vItemAux;
    end;
  end;
  if Panel3.Enabled then
    DBEdit1.SetFocus
  else
    DBEdit2.SetFocus;
  vVlrTotal    := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat));
  vVlrDesconto := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_Mensal_EventosVLRDESCONTO.AsFloat));
  vVlrLiquido  := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat - DMMov_Mensal.cdsMov_Mensal_EventosVLRDESCONTO.AsFloat));
  vVlrRestante := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat - DMMov_Mensal.cdsMov_Mensal_EventosVLRDESCONTO.AsFloat));
end;

procedure TfMov_MensalAltEvento.DBEdit1Exit(Sender: TObject);
begin
  if Trim(DBEdit1.Text) <> '' then
    if DMEvento.cdsEvento.Locate('ID',StrToInt(DBEdit1.Text),[loCaseInsensitive]) then
      RxDBLookupCombo2.KeyValue := DMEvento.cdsEventoID.AsInteger;
end;

procedure TfMov_MensalAltEvento.BitBtn1Click(Sender: TObject);
begin
  if RxDBLookupCombo2.Text = '' then
  begin
    ShowMessage('Evento não foi informado!');
    exit;
  end;

  if StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat)) <= 0 then
  begin
    ShowMessage('Valor não foi informado!');
    exit;
  end;

  if (DMEvento.cdsEventoDESCONTO.AsString = 'S') and
     ((StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_Mensal_EventosPERCDESCONTO.AsFloat)) > 0) or (StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_Mensal_EventosVLRDESCONTO.AsFloat)) > 0)) then
  begin
    ShowMessage('Quando o tipo é de desconto os campos "% desconto" e "Vlr.Desconto" não podem estar preenchidos!');
    exit;
  end;
  if DMEvento.cdsEventoDESCONTO.AsString = 'S' then
    DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat * -1));

  //DMMov_Mensal.cdsMov_Mensal_EventosNOMEVENTO.AsString := RxDBLookupCombo2.Text;

  //DMMov_Mensal.cdsMov_Mensal_EventosVLREVENTO.AsFloat  := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat));

  DMMov_Mensal.cdsMov_Mensal_EventosANO_MOV.AsInteger    := DMMov_Mensal.cdsMov_MensalANO_MOV.AsInteger;
  DMMov_Mensal.cdsMov_Mensal_EventosMES_MOV.AsInteger    := DMMov_Mensal.cdsMov_MensalMES_MOV.AsInteger;

  DMMov_Mensal.cdsMov_Mensal_Eventos.Post;

  DMMov_Mensal.cdsMov_Mensal.Edit;
  DMMov_Mensal.cdsMov_MensalVLRTOTAL.AsFloat    := StrToFloat(FormatFloat('0.00',(DMMov_Mensal.cdsMov_MensalVLRTOTAL.AsFloat + DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat + DMMov_Mensal.cdsMov_Mensal_EventosVLRDESCONTO.AsFloat ) - vVlrTotal - vVlrDesconto));
  DMMov_Mensal.cdsMov_MensalVLRLIQUIDO.AsFloat  := StrToFloat(FormatFloat('0.00',(DMMov_Mensal.cdsMov_MensalVLRLIQUIDO.AsFloat + DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat) - vVlrTotal));
  DMMov_Mensal.cdsMov_MensalVLRRESTANTE.AsFloat := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_MensalVLRLIQUIDO.AsFloat));
  DMMov_Mensal.cdsMov_Mensal.Post;

  //DMMov_Mensal.cdsMov_Mensal_Eventos.Post;

  //DMMov_Mensal.cdsMov_Mensal_Eventos.ApplyUpdates(0);
  DMMov_Mensal.cdsMov_Mensal.ApplyUpdates(0);

  Close;
end;

procedure TfMov_MensalAltEvento.Panel3Exit(Sender: TObject);
begin
  if DMEvento.cdsEvento.Locate('ID',DMMov_Mensal.cdsMov_Mensal_EventosID_EVENTO.AsInteger,[loCaseInsensitive]) then
  begin
    DMMov_Mensal.cdsMov_Mensal_EventosVLREVENTO.AsFloat := DMEvento.cdsEventoVALOR.AsFloat;
    DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat  := DMEvento.cdsEventoVALOR.AsFloat;
    DMMov_Mensal.cdsMov_Mensal_EventosDESCONTO.AsString := DMEvento.cdsEventoDESCONTO.AsString;
  end;
end;

procedure TfMov_MensalAltEvento.Calcular_Desconto;
var
  vVlrAux : Real;
begin
  vVlrAux := 0;
  if (StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_Mensal_EventosPERCDESCONTO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_Mensal_EventosVLREVENTO.AsFloat)) > 0) then
    vVlrAux := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_Mensal_EventosVLREVENTO.AsFloat * DMMov_Mensal.cdsMov_Mensal_EventosPERCDESCONTO.AsFloat / 100));
  if (StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_Mensal_EventosVLRDESCONTO.AsFloat)) <= 0) and (StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_Mensal_EventosVLREVENTO.AsFloat)) > 0) then
    DMMov_Mensal.cdsMov_Mensal_EventosVLRDESCONTO.AsFloat := StrToFloat(FormatFloat('0.00',vVlrAux));
  DMMov_Mensal.cdsMov_Mensal_EventosVLRTOTAL.AsFloat := StrToFloat(FormatFloat('0.00',DMMov_Mensal.cdsMov_Mensal_EventosVLREVENTO.AsFloat - DMMov_Mensal.cdsMov_Mensal_EventosVLRDESCONTO.AsFloat));
end;

procedure TfMov_MensalAltEvento.DBEdit4Exit(Sender: TObject);
begin
  Calcular_Desconto;
end;

procedure TfMov_MensalAltEvento.DBEdit5Exit(Sender: TObject);
begin
  Calcular_Desconto;
end;

procedure TfMov_MensalAltEvento.DBEdit3Exit(Sender: TObject);
begin
  Calcular_Desconto;
end;

end.
