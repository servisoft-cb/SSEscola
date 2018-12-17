unit UMenuP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls, DBCtrls, ExtCtrls, Db, DBTables, DBIProcs,
  Buttons, Grids, DBGrids, SpeedBar, RXCtrls, MemTable, jpeg, Mask, Planner,
  DBPlanner, RzEdit, MaskEdEx, AdvEdit, DBAdvEd, RzSndMsg, TimerLst,
  RzStatus, TypInfo, RLConsts;

type
  TfMenuP = class(TForm)
    MainMenu1: TMainMenu;
    Sobre1: TMenuItem;
    RxSpeedButton1: TRxSpeedButton;
    PopupMenu1: TPopupMenu;
    RxSpeedButton9: TRxSpeedButton;
    Alunos1: TMenuItem;
    Eventos1: TMenuItem;
    rumas1: TMenuItem;
    BitBtn1: TBitBtn;
    Cidade1: TMenuItem;
    Parametros1: TMenuItem;
    Image2: TImage;
    RxSpeedButton7: TRxSpeedButton;
    PopupMenu7: TPopupMenu;
    N9Banco1: TMenuItem;
    PagamentodoMovimento1: TMenuItem;
    N1: TMenuItem;
    Empresa1: TMenuItem;
    Funcionrios1: TMenuItem;
    ConsultaPorEvento1: TMenuItem;
    ConsultaEventoAcumulado1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxSpeedButton9Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Alunos1Click(Sender: TObject);
    procedure Eventos1Click(Sender: TObject);
    procedure rumas1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Cidade1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure N9Banco1Click(Sender: TObject);
    procedure Parametros1Click(Sender: TObject);
    procedure Empresa1Click(Sender: TObject);
    procedure PagamentodoMovimento1Click(Sender: TObject);
    procedure Funcionrios1Click(Sender: TObject);
    procedure ConsultaPorEvento1Click(Sender: TObject);
    procedure ConsultaEventoAcumulado1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMenuP: TfMenuP;
  Auto: string[15];

implementation

uses USobre, UAlunoC, UEventoC, UTurmaC, UConvTabelas, UCidade, UCidadeC,
  UMov_MensalC, UParametros, UEmpresa, UConsMov_Mensal, UFuncionarioC,
  UConsMov_MensalEvento, UConsMov_MensalEvento2;

{$R *.DFM}

procedure TfMenuP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;                                             
end;

procedure TfMenuP.RxSpeedButton9Click(Sender: TObject);
begin
  Close;
end;

procedure TfMenuP.Sobre1Click(Sender: TObject);
begin
  fSobre := TfSobre.Create(Self);
  fSobre.ShowModal;
end;

procedure TfMenuP.Alunos1Click(Sender: TObject);
begin
  fAlunoC := TfAlunoC.Create(Self);
  fAlunoC.ShowModal;
end;

procedure TfMenuP.Eventos1Click(Sender: TObject);
begin
  fEventoC := TfEventoC.Create(Self);
  fEventoC.ShowModal;
end;

procedure TfMenuP.rumas1Click(Sender: TObject);
begin
  fTurmaC := TfTurmaC.Create(Self);
  fTurmaC.ShowModal;
end;

procedure TfMenuP.BitBtn1Click(Sender: TObject);
begin
  fConvTabelas := TfConvTabelas.Create(Self);
  fConvTabelas.ShowModal;
end;

procedure TfMenuP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    BitBtn1.Visible := not BitBtn1.Visible;
end;

procedure TfMenuP.Cidade1Click(Sender: TObject);
begin
  fCidadeC := TfCidadeC.Create(Self);
  fCidadeC.ShowModal;
end;

procedure TfMenuP.Image2Click(Sender: TObject);
begin
  fSobre := TfSobre.Create(Self);
  fSobre.ShowModal;
end;

procedure TfMenuP.N9Banco1Click(Sender: TObject);
begin
  fMov_MensalC := TfMov_MensalC.Create(Self);
  fMov_MensalC.ShowModal;
end;

procedure TfMenuP.Parametros1Click(Sender: TObject);
begin
  fParametros := TfParametros.Create(Self);
  fParametros.ShowModal;
end;

procedure TfMenuP.Empresa1Click(Sender: TObject);
begin
  fEmpresa := TfEmpresa.Create(Self);
  fEmpresa.ShowModal;
end;

procedure TfMenuP.PagamentodoMovimento1Click(Sender: TObject);
begin
  fConsMov_Mensal := TfConsMov_Mensal.Create(Self);
  fConsMov_Mensal.ShowModal;
end;

procedure TfMenuP.Funcionrios1Click(Sender: TObject);
begin
  fFuncionarioC := TfFuncionarioC.Create(Self);
  fFuncionarioC.ShowModal;
end;

procedure TfMenuP.ConsultaPorEvento1Click(Sender: TObject);
begin
  fConsMov_MensalEvento := TfConsMov_MensalEvento.Create(Self);
  fConsMov_MensalEvento.ShowModal;
end;

procedure TfMenuP.ConsultaEventoAcumulado1Click(Sender: TObject);
begin
  fConsMov_MensalEvento2 := TfConsMov_MensalEvento2.Create(Self);
  fConsMov_MensalEvento2.ShowModal;
end;

initialization
 RLConsts.SetVersion(3,72,'B');

end.


