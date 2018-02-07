
CREATE TABLE inventory(
	inventoryid VARCHAR(255) primary key auto_increment,
	inventoryname VARCHAR(255) ,
	numberofitems VARCHAR(100),
	location varchar(100),
	createdby varchar(100),
	lastupdatedby varchar(100),
	company VARCHAR(100),
	country VARCHAR(100),
	foreign key (createdby) references user(username),
	foreign key (lastupdatedby) references user(username)
	);

	INSERT INTO inventory (SELECT * FROM CSVREAD('C:/Users/Tejas Ghalsasi/Desktop/CPSC546/inventory.csv'));