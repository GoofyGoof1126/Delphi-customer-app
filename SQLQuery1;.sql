CREATE TABLE Versekering(
	
);

select * from LedeKaart;
select * from LedeInfo;

UPDATE LedeKaart
SET Tiepe = 'Goud'
Where id = 12547;

Alter table LedeInfo
drop column Gender;

Alter table LedeInfo
add Gender char(10);