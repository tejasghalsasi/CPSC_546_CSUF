create table inventoryitem (
	itemid varchar(50) primary key,
	inventoryid VARCHAR(255),
	foreign key (inventoryid) references inventory(inventoryid),
	itemname VARCHAR(150),
	Description VARCHAR(250),
	itemgroup VARCHAR(100),
	quantity varchar(50),
	Location VARCHAR(100),
	uniteofmeasure VARCHAR(50),
	costperunit VARCHAR(50),
	status VARCHAR(14),
	createddate VARCHAR(20),
	Expirationdate VARCHAR(20),
	image longblob
);

INSERT INTO inventoryitem (SELECT * FROM CSVREAD('C:/Users/Tejas Ghalsasi/Desktop/CPSC546/inventoryitem.csv'));