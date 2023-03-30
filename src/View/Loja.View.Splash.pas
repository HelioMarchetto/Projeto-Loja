unit Loja.View.Splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls;

type
  TunitSplash = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    pnlTopo: TPanel;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    lblCarregamento: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  unitSplash: TunitSplash;

implementation

{$R *.dfm}

uses Loja.View.Principal;

procedure TunitSplash.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.Position := ProgressBar1.Position + 10;
  case ProgressBar1.Position of
  30: lblCarregamento.Caption := 'Carregando informações';
  50: lblCarregamento.Caption := 'Carregando dados';
  80: lblCarregamento.Caption := 'Iniciando sistema';
  end;

  if ProgressBar1.Position = 100 then
    Close;
end;

end.
