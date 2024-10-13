
--- create a report where you have: client FirstName, client LastName,  Account Number (using a left  join ) 

select cl.FirstName, cl.LastName, acco.AccountNumber from 
CustomerDetails cl 
left join  AccountDetails  acco
on cl.CustomerCode = acco.CustomerCode;


-- look at the precendent report. 
--  a few  clients appear twice, this is probabyl because
-- this is probably because they have more than one account. 
-- verify it by filtering  the Accountf for  AccountType = 'Checking'; 

select cl.FirstName, cl.LastName, acco.AccountNumber from 
CustomerDetails cl 
left join  AccountDetails  acco
on cl.CustomerCode = acco.CustomerCode

where AccountType ='Checking'
;


--- LOOK AT the precedente report. 
--  using  a concatenation of left join, show all the card number related the checking account 
-- note: normally, card number are confidentials, so not visible to you in real situations.
-- but this is still a good exercise to handle multijoins (we are joining 3 tables) 
select cl.FirstName, cl.LastName, acco.AccountNumber, card.CardNumber from 
CustomerDetails cl 
left join  AccountDetails  acco
on cl.CustomerCode = acco.CustomerCode
left join CardDetails card 
on card.AccountNumber = acco.AccountNumber
where AccountType ='Checking'
;



--- LOOK AT the precedente report. 
--  using  a concatenation of left join, show all the card number related the checking account 
-- but now we want columns in this order: 
-- CardNumber, AccountNumber, Lastname, FirstName


select   card.CardNumber  , acco.AccountNumber, cl.LastName, cl.FirstName from 
CustomerDetails cl 
left join  AccountDetails  acco
on cl.CustomerCode = acco.CustomerCode
left join CardDetails card 
on card.AccountNumber = acco.AccountNumber
where AccountType ='Checking'
;


--- now add as secdon column the cardtype 
select   card.CardNumber, card.CardType  , acco.AccountNumber, cl.LastName, cl.FirstName from 
CustomerDetails cl 
left join  AccountDetails  acco
on cl.CustomerCode = acco.CustomerCode
left join CardDetails card 
on card.AccountNumber = acco.AccountNumber
where AccountType ='Checking'
;


--- apply a filter to the precedent report: make is show only the Credi Cards (and goes after the where) 
select   card.CardNumber, card.CardType  , acco.AccountNumber, cl.LastName, cl.FirstName from 
CustomerDetails cl 
left join  AccountDetails  acco
on cl.CustomerCode = acco.CustomerCode
left join CardDetails card 
on card.AccountNumber = acco.AccountNumber
where AccountType ='Checking'
and CardType = 'Credit'
;



--- using a group by  and a max statement, 
-- select the max transaction per type (TransactionType)  and month 
-- from the transaction table (tip: use a with statement and transform the months to string, then 
--  the you can make the statistics for transactions by month. 


--- tip to transform the date into a string
SELECT strftime('%Y-%m', Date) AS YearMonth, TransactionType,   Amount
FROM Transactions;

with  base_table as (
SELECT strftime('%Y-%m', Date) AS YearMonth, TransactionType,    Amount 
FROM Transactions) 
select YearMonth, TransactionType, max(Amount) from base_table
group  by YearMonth, TransactionType;

