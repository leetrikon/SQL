CREATE TABLE IF NOT EXISTS Customer (
	Id integer PRIMARY KEY,
	FullName text NOT NULL,
	PhoneNumber text,
	IsRegularCustomer int, --boolean не завезли, 0 -нет, 1 - да
	Gender text, --boolean, ведь гендеров два
	Discount integer
);

CREATE TABLE IF NOT EXISTS Manager (
	Id integer PRIMARY KEY,
	FullName text NOT NULL,
	PhoneNumber text,
	Salary real
);

CREATE TABLE IF NOT EXISTS Branch (
	Id integer PRIMARY KEY,
	City text NOT NULL,
	PhoneNumber text,
	Address text,
	ManagerID integer,
	FOREIGN KEY (ManagerID) REFERENCES Manager (Id)
);

CREATE TABLE IF NOT EXISTS Barber (
	Id integer PRIMARY KEY,
	FullName text NOT NULL,
	PhoneNumber text,
	BranchID integer,
	Salary real,
	FOREIGN KEY (BranchID) REFERENCES Branch (Id)
);

CREATE TABLE IF NOT EXISTS Haircut (
	Id integer PRIMARY KEY,
	Name text NOT NULL,
	Gender integer,
	Price real,
	BarberID integer,
	FOREIGN KEY (BarberID) REFERENCES Barber (Id)
);

CREATE TABLE IF NOT EXISTS TypeOfBill (
	Id integer PRIMARY KEY,
	BillType integer NOT NULL -- нал/безнал --Payment method?
);

CREATE TABLE IF NOT EXISTS Bill (
  	Id integer PRIMARY KEY,
  	Discount integer ,
  	Description TEXT,
  	TimeDate TEXT,
  	ManagerID  integer,
  	Total REAL,
  	TypeOfBillID integer, --нал/безнал
  	FOREIGN KEY (ManagerID) REFERENCES Manager (Id),
  	FOREIGN KEY (TypeOfBillID) REFERENCES TypeOfBill (Id)
  );

CREATE TABLE Bank (
	Id integer PRIMARY KEY,
	Name TEXT,
	BillID integer,
	FOREIGN KEY (BillID) REFERENCES Bill (Id)
	);
  
CREATE TABLE ServiceBill (
 	Id integer PRIMARY KEY,
  	Name TEXT,
  	BillID integer,
  	FOREIGN KEY (BillID) REFERENCES Bill (Id)
  	);
  
CREATE TABLE Service (
	Id integer PRIMARY KEY,
  	ManagerID integer,
  	CustomerID integer,
  	HaircutID integer,
  	ServiceBillID integer,
  	TimeRecieved TEXT,
  	TimeCompleted TEXT,
  	FOREIGN KEY (ManagerId) REFERENCES Manager (Id),
  	FOREIGN KEY (CustomerID) REFERENCES Customer (Id),
  	FOREIGN KEY (HaircutID) REFERENCES Haircut (Id),
  	FOREIGN KEY (ServiceBillID) REFERENCES ServiceBill (Id)
  );
  

  