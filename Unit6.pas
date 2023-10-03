unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TBKaarte = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtID: TEdit;
    btnCheck: TButton;
    Label3: TLabel;
    lblKaartNum: TLabel;
    lblKaartStatus: TLabel;
    Label6: TLabel;
    lblKaartLimiet: TLabel;
    Label8: TLabel;
    lblKaartRol: TLabel;
    Back: TButton;
    Label4: TLabel;
    Button1: TButton;
    procedure BackClick(Sender: TObject);
    procedure btnCheckClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BKaarte: TBKaarte;

implementation

{$R *.dfm}

uses Unit2, Unit5;

procedure TBKaarte.BackClick(Sender: TObject);
begin
  Hide;
  Main.Show;
end;

procedure TBKaarte.btnCheckClick(Sender: TObject);
var
ID, KaartNum, KaartLimiet,KaartStatus,KaartRol : String;
begin
//Assign values to the labels to display info
  id := edtID.Text;
  KaartNum := lblKaartNum.Caption;
  KaartLimiet := lblKaartLimiet.Caption;
  KaartStatus := lblKaartStatus.Caption;
  KaartRol := lblKaartRol.Caption;

  //Link to the database to retrieve info
  Kaarte.adoQuery.SQL.Clear;
  Kaarte.adoQuery.SQL.Text := 'SELECT ID, KaartNum, KaartLimiet, KaartStatus, KaartRol FROM LedeKaart ' +
                            'WHERE id = :id';
  Kaarte.adoQuery.Parameters.ParamByName('id').Value := id;
  Kaarte.adoQuery.Open;

  // Check if the user was found
  if not Kaarte.adoQuery.IsEmpty then
  begin
    KaartNum := Kaarte.adoQuery.FieldByName('KaartNum').AsString;
    KaartLimiet := Kaarte.adoQuery.FieldByName('KaartLimiet').AsString;
    KaartStatus := Kaarte.adoQuery.FieldByName('KaartStatus').AsString;
    KaartRol := Kaarte.adoQuery.FieldByName('KaartRol').AsString;

    // Display the user's information in labels
    lblKaartNum.Caption := KaartNum;
    lblKaartLimiet.Caption := KaartLimiet;
    lblKaartStatus.Caption := KaartStatus;
    lblKaartRol.Caption := KaartRol;
  end
  else
    ShowMessage('User was not found.');

    // Close the query
  Kaarte.adoQuery.Close;
end;

procedure TBKaarte.Button1Click(Sender: TObject);
begin
 Hide;
 Kaarte.Show;
end;

end.
