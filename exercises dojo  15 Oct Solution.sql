
--Lesson Goals:
--INSERT: Learn to add new customers to the database and handle optional information like phone numbers.
--UPDATE: Modify existing data such as addresses, phone numbers, and emails.
--DELETE: Remove specific customers from the database.



--Insertion Exercises (INSERT)
--Insert a new customer
--Insert a new customer with the following details:
--
--CustomerID: 11
--CustomerCode: CUST011
--FirstName: Sarah
--LastName: Connor
--DateOfBirth: 1990-05-12
--Address: 999 Future St
--City: Cyberdyne City
--PostalCode: 12345
--PhoneNumber: 1239876543
--Email: sarah.connor@example.com
--sql
INSERT INTO CustomerDetails 
(CustomerID, CustomerCode, FirstName, LastName, DateOfBirth, Address, City, PostalCode, PhoneNumber, Email)
VALUES 
(11, 'CUST011', 'Sarah', 'Connor', '1990-05-12', '999 Future St', 'Cyberdyne City', '12345', '1239876543', 'sarah.connor@example.com');



--Insert a customer without a phone number
--Insert a new customer with the following details but leave out the phone number:
--
--CustomerID: 12
--CustomerCode: CUST012
--FirstName: Kyle
--LastName: Reese
--DateOfBirth: 1991-11-05
--Address: 777 Skynet Blvd
--City: Machine Town
--PostalCode: 98765
--Email: kyle.reese@example.com
--sql


INSERT INTO CustomerDetails 
(CustomerID, CustomerCode, FirstName, LastName, DateOfBirth, Address, City, PostalCode, Email)
VALUES ('12', 'CUST012', 'Kyle', 'Reese', '1991-11-05', '777 Skynet Blvd', 'Machine Town', '98765', 'kyle.reese@example.com');
--Modification Exercises (UPDATE)
--Update a customer’s address
--The customer with CustomerID 5, Mark White, has moved. Update his address to:

--Address: 123 New State St
--City: New York
--PostalCode: 10002
--sql


UPDATE CustomerDetails 
SET Address = '123 New State St', City = 'New York', PostalCode = '10002'
WHERE CustomerID = 5;

--Update a customer’s phone number
--Update the phone number of the customer with CustomerCode CUST007 (Frank Derrik) to:
--PhoneNumber: 1112223333
UPDATE CustomerDetails 
SET PhoneNumber = '1112223333'
WHERE CustomerCode = 'CUST007';


--Update the email domain for all customers with "example.com"
--Change the email domain for all customers whose emails end in example.com to example.org.

UPDATE CustomerDetails 
SET Email = REPLACE(Email, 'example.com', 'example.org')
WHERE Email LIKE '%@example.com';


--Deletion Exercise (DELETE)
--Delete a customer from the database
--The customer with CustomerID 9 (Dercik Mailboy) has closed their account. Remove their details from the database.

DELETE FROM CustomerDetails 
WHERE CustomerID = 9;

-- we have clearly a problem here (it will be solved in the next lesson













