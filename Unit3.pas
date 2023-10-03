unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;

type
  TOpInfo = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    edtAddress: TEdit;
    edtStatus: TEdit;
    edtReknmr: TEdit;
    radMale: TRadioButton;
    radFemale: TRadioButton;
    btnSave: TButton;
    btnBack: TButton;
    adoConnection: TADOConnection;
    adoQuery: TADOQuery;
    DataSource1: TDataSource;
    edtID: TEdit;
    edtBank: TEdit;
    procedure btnBackClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OpInfo: TOpInfo;

implementation

{$R *.dfm}

uses Unit2;

procedure TOpInfo.btnBackClick(Sender: TObject);
begin
  Hide;
  Main.Show;
end;

procedure TOpInfo.btnSaveClick(Sender: TObject);
var
  ID, Addres, CusStatus, RekNum, Gender, Bank: string;
begin
  // Get values from the controls
  ID := edtID.Text;
  Addres := edtAddress.Text;
  CusStatus := edtStatus.Text;
  RekNum := edtRekNmr.Text;
  Bank := edtBank.Text;

  // Determine the selected gender based on the radbtn
  if radMale.Checked then
    Gender := 'Male'
  else if radFemale.Checked then
    Gender := 'Female'
  else
    Gender := ''; // No gender was selected

  // Check if the ID is not empty
  if ID <> '' then
  begin
    // Perform an UPDATE operation into the database
    // Use your specific database component here

    // ADO components
    adoConnection.Connected := True;
    // Update the data in the table
    adoQuery.SQL.Clear;
    adoQuery.SQL.Text := 'UPDATE LedeInfo ' +
                     'SET Gender = :Gender, Addres = :Addres, CusStatus = :CusStatus, RekNum = :RekNum, Bank = :Bank ' +
                     'WHERE id = :ID';

    // Bind the parameters and execute the query
    adoQuery.Parameters.ParamByName('ID').Value := ID;
    adoQuery.Parameters.ParamByName('Addres').Value := Addres;
    adoQuery.Parameters.ParamByName('CusStatus').Value := CusStatus;
    adoQuery.Parameters.ParamByName('RekNum').Value := RekNum;
    adoQuery.Parameters.ParamByName('Gender').Value := Gender;
    adoQuery.Parameters.ParamByName('Bank').Value := Bank;
    adoQuery.ExecSQL;

    ShowMessage('Suksesvol opgedateer!');

    adoQuery.Close;
    edtID.Clear;
    edtAddress.Clear;
    edtStatus.Clear;
    edtRekNmr.Clear;
    edtBank.Clear;
  end
  else
    ShowMessage('Tik asseblief U ID kode in!');


end;
end.
