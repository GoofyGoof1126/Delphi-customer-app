unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    edtName: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label2: TLabel;
    lblID: TLabel;
    Label4: TLabel;
    lblAddress: TLabel;
    Label6: TLabel;
    lblGender: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lblRekNum: TLabel;
    Label11: TLabel;
    lblBank: TLabel;
    Label13: TLabel;
    lblStatus: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit3, Unit2;

procedure TForm4.Button1Click(Sender: TObject);
var
  UserName, ID, Addres, Gender, RekNum, CusStatus, Bank: string;
begin
  // Get the user's name from the TEdit
  UserName := edtName.Text;

  // Validate the user (you'll need to implement your validation logic)
  // For simplicity, let's assume the user exists in the database
  // and retrieve their information based on the name.

  // Assume you have a connected ADO connection (adoConnection) and query (adoQuery)
  // Use your specific database components here (ADOQuery, ADOConnection, etc.)

  // Example SQL statement to retrieve user information based on the name
  OpInfo.adoQuery.SQL.Clear;
  OpInfo.adoQuery.SQL.Text := 'SELECT ID, CusStatus, Addres, Gender, RekNum, Bank FROM LedeInfo WHERE CusName = :CusName';
  OpInfo.adoQuery.Parameters.ParamByName('CusName'). Value := UserName;
  OpInfo.adoQuery.Open;

  // Check if the user was found
  if not OpInfo.adoQuery.IsEmpty then
  begin
    ID := OpInfo.adoQuery.FieldByName('ID').AsString;
    Addres := OpInfo.adoQuery.FieldByName('Addres').AsString;
    Gender := OpInfo.adoQuery.FieldByName('Gender').AsString;
    RekNum := OpInfo.adoQuery.FieldByName('RekNum').AsString;
    CusStatus := OpInfo.adoQuery.FieldByName('CusStatus').AsString;
    Bank := OpInfo.adoQuery.FieldByName('Bank').AsString;

    // Display the user's information in labels
    lblID.Caption := ID;
    lblAddress.Caption := Addres;
    lblGender.Caption := Gender;
    lblRekNum.Caption := RekNum;
    lblStatus.Caption := CusStatus;
    lblBank.Caption := Bank;
  end
  else
    ShowMessage('Gebruiker nie gevind nie.');

  // Close the query
  OpInfo.adoQuery.Close;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  Hide;
  OpInfo.Show;
  lblID.Caption := '';
  lblAddress.Caption := '';
  lblGender.Caption := '';
  lblRekNum.Caption := '';
  lblStatus.Caption := '';
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  Hide;
  Main.Show;
  lblID.Caption := '';
  lblAddress.Caption := '';
  lblGender.Caption := '';
  lblRekNum.Caption := '';
  lblStatus.Caption := '';
end;

end.
