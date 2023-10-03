unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TMain = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    comboPT: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    comboCards: TComboBox;
    Label3: TLabel;
    comboEnq: TComboBox;
    btnGo: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

uses Unit1, Unit3, Unit4, Unit5, Unit6, Unit7;

procedure TMain.FormCreate(Sender: TObject);
begin
  comboEnq.Items.Add('Insurence');
  comboEnq.Items.Add('Takeout Insurence');
  comboCards.Items.Add('Card Lost');
  comboCards.Items.Add('Add Card');
  comboCards.Items.Add('See Cards');
  comboPT.Items.Add('Personal Information');
  comboPT.Items.Add('Update Information');
end;
procedure TMain.btnGoClick(Sender: TObject);
var
  PretoriumC, CardC, EnquireC: String;
  NextForm: TForm;
begin
     PretoriumC := comboPT.Text;
     CardC := comboCards.Text;
     EnquireC := comboEnq.Text;

     //Link the chosen forms with the combobox options
     if PretoriumC = 'Personal Information' then
      NextForm := TForm4.Create(Self)

     else if PretoriumC = 'Update Information' then
      NextForm := TOpInfo.Create(Self)

     else if CardC = 'Add Card' then
      NextForm := TKaarte.Create(Self)

     else if CardC = 'See Cards' then
      NextForm := TBKaarte.Create(Self)

     else if CardC = 'Card Lost' then
      NextForm := TLostK.Create(Self)

     else if EnquireC = 'Insurence' then
      NextForm := TVerH.Create(Self)

    // else if EnquireC = 'Takeout Insurence' then
     // NextForm := TVersekeringPlan.Create(Self)

     else
     begin
       ShowMessage('Invalid option selected!');
     end;

     //FormToShow.ShowModal;
     //FormToShow.Free;
end;

procedure TMain.Button1Click(Sender: TObject);
begin
  Hide;
  Login.Show;
end;

end.
