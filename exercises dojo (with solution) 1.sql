
 
------  select all customer name, surname, and date of birth  that were born after 01 March 1992

SELECT FirstName , LastName,DateOfBirth FROM  CustomerDetails 
WHERE  DateOfBirth >  '1992-03-01' ;


--- count all lines in CustomerDetails table , name your statistic as "nlines"

SELECT COUNT(*) nlines FROM CustomerDetails;



--- sum all the balance you have in  account details table 

SELECT SUM(balance) FROM AccountDetails ;

----  looking at the precendent question, sum the balance only for Saving accounts

SELECT SUM(balance) FROM AccountDetails 
where AccountType = 'Savings';


----  looking at the precendent question, sum the balance only for Checkings  accounts

SELECT SUM(balance) FROM AccountDetails
where AccountType = 'Checking';


--- use a union clause, make a report that show the type of account and the sum of balance 
--- for each of the two types, show as well the type of account as first column 

SELECT AccountType, SUM(balance) FROM AccountDetails 
where AccountType = 'Savings'
union all 
SELECT AccountType, SUM(balance) FROM AccountDetails 
where AccountType = 'Checking';


--- obtain the same result of the precedent query WITHOUT union clause

SELECT AccountType ,  SUM(balance) FROM AccountDetails 
group by AccountType;




--- select all the different  surnames. According to you, is there (at least) a repeate surnname
-- proof the second question using a DISTINCT
-- ? 

SELECT DISTINCT LastName FROM (CustomerDetails);





-- is it possible to retrieve the  surname that is duplicated? 
-- Tip:  you can investigate all the the surname with a where or
--- you can use some clauses we already used, as for the statistic nline 

select LastName ,  count(*) as nline from CustomerDetails
group by LastName
having nline > 1;






 