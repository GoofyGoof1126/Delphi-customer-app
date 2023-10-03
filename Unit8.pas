unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TVersekeringPlan = class(TForm)
    Label1: TLabel;
    edtID: TEdit;
    radCar: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VersekeringPlan: TVersekeringPlan;

implementation

{$R *.dfm}

uses Unit7, Unit2;

procedure TVersekeringPlan.Button1Click(Sender: TObject);
begin
  Hide;
  VerH.Show;
end;

procedure TVersekeringPlan.Button2Click(Sender: TObject);
begin
  Hide;
  Main.Show;
end;

end.
