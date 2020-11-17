--Заполнение данными
INSERT INTO Manager (Id, FullName, PhoneNumber, Salary)
VALUES (1, 'Ванин Никита Александрович', '88005553535', '7747');

INSERT INTO Branch (Id, City, PhoneNumber, Address, ManagerID)
VALUES (1, 'Томск', '88003335555', 'Герцена 18', 1);

INSERT INTO Customer (Id, FullName, PhoneNumber, IsRegularCustomer, Gender, Discount)
VALUES (1, 'Никитин Иван Александрович', '89998880099', 1, 'Мужчина', 15);

INSERT INTO Barber (Id, FullName, PhoneNumber, BranchID , Salary)
VALUES (1, 'Никитенко Александр Иванович', '88003535353', 1, '7747');

INSERT INTO Haircut (Id, Name, Gender, Price, BarberID)
VALUES (1, 'Андеркат', 1, 150, 1);

INSERT INTO TypeOfBill (BillType)
VALUES (1);

INSERT INTO Bill (Id, Discount, Description, TimeDate, ManagerID, Total, TypeOfBillID)
VALUES (1, 15, 'Описание', '11 ноября 2020', 1, 127, 1);

INSERT INTO Bank (Id, Name, BillID)
VALUES (1, 'Тинькофф', 1);

INSERT INTO ServiceBill (Id, Name, BillID)
VALUES (1, 'Андеркат-11.11.2020', 1);

INSERT INTO Service (Id, ManagerID, CustomerID, HaircutID, ServiceBillID, TimeRecieved, TimeCompleted)
VALUES (1, 1, 1, 1, 1, '11.11.2020 11:59', '11.11.2020 12:20');


