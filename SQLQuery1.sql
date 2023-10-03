CREATE TABLE DelphiTest(
	id INT
	);

	select * from DelphiTest;

	ALTER TABLE DelphiTest 
	ADD Addres varchar(255);

	DELETE FROM DelphiTest;

	ALTER TABLE DelphiTest
	DROP COLUMN CusName;

	UPDATE DelphiTest 
	SET id = 01
	where CusName = 'Hendruk vd Merwe' ;