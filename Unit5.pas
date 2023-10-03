unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;

type
  TKaarte = class(TForm)
    Label1: TLabel;
    edtID: TEdit;
    btnSave: TButton;
    radGoud: TRadioButton;
    radBlou: TRadioButton;
    Label2: TLabel;
    Label3: TLabel;
    radHoof: TRadioButton;
    radGade: TRadioButton;
    edtDateB: TEdit;
    Label4: TLabel;
    edtEnd: TEdit;
    Label5: TLabel;
    adoConnection: TADOConnection;
    adoQuery: TADOQuery;
    DataSource1: TDataSource;
    Label6: TLabel;
    edtLimiet: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure btnSaveClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Kaarte: TKaarte;

implementation

{$R *.dfm}

uses Unit2, Unit6;

procedure TKaarte.btnSaveClick(Sender: TObject);
var
  id, Tiepe, KaartRol, CurrentDate, FutureDate, KaartNum: string;
  UserExists : Boolean;
  KaartNumGen : Integer;
  KaartLimiet : Double;
begin
   id := edtID.Text;
   KaartLimiet := StrToFloat(edtLimiet.Text);
   UserExists := True;

   // Determine which card was seleceted
  if radGoud.Checked then
    Tiepe := 'Goud'
  else if radBlou.Checked then
    Tiepe := 'Blou'
  else
    Tiepe := '';

    // Determine the cardholder role
  if radHoof.Checked then
     KaartRol:= 'Hoof'
  else if radGade.Checked then
    KaartRol := 'Gade'
  else
    KaartRol := '';

    //Generate cardnumber
    KaartNumGen := 576000 + Random(1000);
    KaartNum := '576' + IntToStr(KaartNumGen);

    if UserExists then
    begin
      //Get current Date
      CurrentDate := DateToStr(Now);
      edtDateB.Text := CurrentDate;

      //Calculate the future date that will displayed
      //Only adding 3 days
      FutureDate := DateToStr(Now + 3);
      edtEnd.Text := FutureDate;

      adoConnection.Connected := True;

      //Update in the table
      adoQuery.SQL.Clear;
      adoQuery.SQL.Text := 'INSERT INTO LedeKaart (id, KaartRol, Tiepe,KaartNum, KaartLimiet) ' +
                           'VALUES (:id,:KaartRol, :Tiepe, :KaartNum, :KaartLimiet)';

      adoQuery.Parameters.ParamByName('id').Value := id;
      adoQuery.Parameters.ParamByName('KaartRol').Value := KaartRol;
      adoQuery.Parameters.ParamByName('Tiepe').Value := Tiepe;
      adoQuery.Parameters.ParamByName('KaartNum').Value := KaartNum;
      adoQuery.Parameters.ParamByName('KaartLimiet').Value := KaartLimiet;
      adoQuery.ExecSQL;

      ShowMessage('Kaart was suksesvol bestel!');
    end;

end;

procedure TKaarte.Button1Click(Sender: TObject);
begin
  Hide;
  BKaarte.Show;
end;

procedure TKaarte.Button2Click(Sender: TObject);
begin
  Hide;
  Main.Show;
end;

end.
