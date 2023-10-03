unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls;

type
  TLogin = class(TForm)
    btnRegister: TButton;
    edtID: TEdit;
    edtName: TEdit;
    adoConnection: TADOConnection;
    adoQuery: TADOQuery;
    DataSource1: TDataSource;
    btnLogin: TButton;
    btnExit: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnRegisterClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login: TLogin;

implementation

{$R *.dfm}

uses Unit2;

procedure TLogin.btnExitClick(Sender: TObject);
begin
 Close;
end;

procedure TLogin.btnLoginClick(Sender: TObject);
begin
//!PLEASE INSERT YOUR OWN DATABASE!
  adoQuery.SQL.Text := 'SELECT * FROM LedeInfo WHERE id = :ID AND CusName = :CusName';
   adoQuery.Parameters.ParamByName('ID').Value := edtID.Text;
  adoQuery.Parameters.ParamByName('CusName').Value := edtName.Text;
  adoQuery.Open;

  if not adoQuery.IsEmpty then
  begin

    //login successful
    Hide;
    Main.Show;
  end
  else
  ShowMessage('Ongeldige login inligting! Probeer asseblief weer!');
   adoQuery.Close;

   //clear boxes
    edtID.Clear;
    edtName.Clear;
end;

procedure TLogin.btnRegisterClick(Sender: TObject);
begin

  adoQuery.SQL.Text := 'INSERT INTO LedeInfo (id,CusName) VALUES(:ID, :CusName)';

  adoQuery.Parameters.ParamByName('ID').Value := edtID.Text;
  adoQuery.Parameters.ParamByName('CusName').Value := edtName.Text;
  adoQuery.ExecSQL;

  //clear boxes
    edtID.Clear;


  ShowMessage('Suksesvol op geteken. Teken aan asseblief!')
end;

end.
