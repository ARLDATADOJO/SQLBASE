-- Create the customer details table
CREATE TABLE CustomerDetails (
    CustomerID INTEGER PRIMARY KEY,
    CustomerCode TEXT NOT NULL UNIQUE,
    FirstName TEXT NOT NULL,
    LastName TEXT NOT NULL,
    DateOfBirth DATE NOT NULL,
    Address TEXT NOT NULL,
    City TEXT NOT NULL,
    PostalCode TEXT NOT NULL,
    PhoneNumber TEXT NOT NULL,
    Email TEXT NOT NULL
);

-- Insert data into the customer details table
INSERT INTO CustomerDetails (CustomerCode, FirstName, LastName, DateOfBirth, Address, City, PostalCode, PhoneNumber, Email) VALUES
('CUST001', 'John', 'Doe', '1980-01-01', '123 Main St', 'New York', '10001', '1234567890', 'john.doe@example.com'),
('CUST002', 'Jane', 'Smith', '1985-02-02', '456 Elm St', 'Los Angeles', '90001', '0987654321', 'jane.smith@example.com');
INSERT INTO CustomerDetails (CustomerCode, FirstName, LastName, DateOfBirth, Address, City, PostalCode, PhoneNumber, Email) VALUES
('CUST003', 'Gabriel', 'Black', '1986-03-03', '999 Main St', 'Luxembourg', '10333', '222222222', 'gabriel.black@example.com');
INSERT INTO CustomerDetails (CustomerCode, FirstName, LastName, DateOfBirth, Address, City, PostalCode, PhoneNumber, Email) VALUES
('CUST004', 'Angel', 'Deer', '1992-02-02', '456 Spit St', 'Mountain View', '88888', '098733333', 'angel.deer@example.com');
INSERT INTO CustomerDetails (CustomerCode, FirstName, LastName, DateOfBirth, Address, City, PostalCode, PhoneNumber, Email) VALUES
('CUST005', 'Mark', 'White', '1992-03-03', '459 State St', 'New Berlin', '232323', '098733333', 'mark.white@example.com'),
('CUST006', 'Angela', 'Schmit', '1995-08-02', '44 Heaven St', 'Little Luxembourg', '32412', '098733333', 'angela.schmit@example.com'),
('CUST007', 'Frank', 'Derrik', '1998-03-07', '33 Honduras St', 'Rice Beach', '55555', '098733333', 'frank.derrik@example.com');
INSERT INTO CustomerDetails (CustomerCode, FirstName, LastName, DateOfBirth, Address, City, PostalCode, PhoneNumber, Email) VALUES
('CUST008', 'Mario', 'Deer', '1999-10-07', '22 Churchill St', 'Museum Valley', '44444', '098733333', 'mario.deer@example.com'),
('CUST009', 'Dercik', 'Mailboy', '1988-10-10', '888 Paris Avenue', 'Panorama Point', '66666', '098733333', 'dercik.mailboy@example.com');
INSERT INTO CustomerDetails (CustomerCode, FirstName, LastName, DateOfBirth, Address, City, PostalCode, PhoneNumber, Email) VALUES
('CUST010', 'Rick', 'Boy', '1999-10-10', '76 Rome Avenue', 'Beatifull Point', '88888', '097745633', 'rick.boy@example.com');









-- Create the account details table
CREATE TABLE AccountDetails (
    AccountID TEXT NOT NULL,
    CustomerCode TEXT NOT NULL,
    AccountNumber TEXT NOT NULL,
    AccountType TEXT NOT NULL,
    Balance REAL NOT NULL,
    OpeningDate DATE NOT NULL,
    FOREIGN KEY (CustomerCode) REFERENCES CustomerDetails(CustomerCode)
);
 
-- Insert data into the account details table
INSERT INTO AccountDetails (AccountID , CustomerCode, AccountNumber, AccountType, Balance, OpeningDate) VALUES
('ACC_ID_0001', 'CUST001', 'US1234567890123456', 'Checking', 1500.00, '2020-01-01'),
('ACC_ID_0002', 'CUST002', 'US6543210987654321', 'Savings', 3000.00, '2021-02-02'),
('ACC_ID_0003', 'CUST003', 'US6543210987600001', 'Checking', 4000.00, '2022-02-02'),
('ACC_ID_0004', 'CUST004', 'US6543210987600002', 'Checking', 5000.00, '2022-02-01'),
('ACC_ID_0005', 'CUST005', 'US6543210987600003', 'Checking', 6000.00, '2022-02-03'),
('ACC_ID_0006', 'CUST006', 'US6543210987600004', 'Checking', 7000.00, '2022-02-04'),
('ACC_ID_0007', 'CUST008', 'US6543210987600005', 'Checking', 8000.00, '2022-02-05'),
('ACC_ID_0008', 'CUST009', 'US6543210987600006', 'Checking', 9000.00, '2022-02-06'),
('ACC_ID_0009', 'CUST010', 'US6543210987600007', 'Checking', 10000.00, '2022-02-07'),
('ACC_ID_0010', 'CUST010', 'US6543210987600008', 'Savings', 11000.00, '2022-02-08'),
('ACC_ID_0011', 'CUST008', 'US6543210987600009', 'Checking', 5000.00, '2022-02-09'),
('ACC_ID_0011', 'CUST009', 'US6543210987600010', 'Checking', 5000.00, '2022-02-10'),
('ACC_ID_0012', 'CUST006', 'US6543210987600011', 'Savings', 4000.00, '2022-02-12');


-- Create the card details table
 PRAGMA foreign_keys = ON;
 
CREATE TABLE CardDetails (
    CardID INTEGER PRIMARY KEY,
    AccountNumber TEXT NOT NULL,
    CardNumber TEXT NOT NULL,
    CardType TEXT NOT NULL,
    ExpiryDate DATE NOT NULL);
  --  FOREIGN KEY (AccountNumber) REFERENCES AccountDetails(AccountNumber)  );



select AccountNumber from  AccountDetails;

-- Insert data into the card details table
INSERT INTO CardDetails (CardID, AccountNumber, CardNumber, CardType, ExpiryDate) VALUES
(1, 'US1234567890123456', '1234567812345678', 'Credit', '2025-01-01'),
(2, 'US6543210987654321', '8765432187654321', 'Debit', '2026-02-02');



----- just tes 

 
select card.*, AccountID, CustomerCode from CardDetails card 
INNER join  AccountDetails acco
on  acco.AccountNumber = card.AccountNumber;
 