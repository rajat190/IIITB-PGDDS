# Creating database 
create database assignment
use assignment

# Creating Bajaj Auto
create table `Bajaj Auto` (
Date date,
`Open Price` double(15,2),
`High Price` double(15,2),
`Low Price` double(15,2),
`Close Price` double(15,2),
WAP double(15,3),
`No of Shares` int(8),
`No of Trades` int(6),
`Total Turnover (Rs.)` bigint,
`Deliverable Quantity` varchar(8),
`Perc Deli Qty to Traded Qty` varchar(8),
`Spread High-Low` double(15,2),
`Spread Close-Open` double(15,2)
);	

# Creating Eicher Motors
create table `Eicher Motors` (
Date date,
`Open Price` double(15,2),
`High Price` double(15,2),
`Low Price` double(15,2),
`Close Price` double(15,2),
WAP double(15,3),
`No of Shares` int(8),
`No of Trades` int(6),
`Total Turnover (Rs.)` bigint,
`Deliverable Quantity` varchar(8),
`Perc Deli Qty to Traded Qty` varchar(8),
`Spread High-Low` double(15,2),
`Spread Close-Open` double(15,2)
);	

# Creating Hero Motocorp
create table `Hero Motocorp` (
Date date,
`Open Price` double(15,2),
`High Price` double(15,2),
`Low Price` double(15,2),
`Close Price` double(15,2),
WAP double(15,3),
`No of Shares` int(8),
`No of Trades` int(6),
`Total Turnover (Rs.)` bigint,
`Deliverable Quantity` varchar(8),
`Perc Deli Qty to Traded Qty` varchar(8),
`Spread High-Low` double(15,2),
`Spread Close-Open` double(15,2)
);	

# Creating Infosys
create table Infosys (
Date date,
`Open Price` double(15,2),
`High Price` double(15,2),
`Low Price` double(15,2),
`Close Price` double(15,2),
WAP double(15,3),
`No of Shares` int(8),
`No of Trades` int(6),
`Total Turnover (Rs.)` bigint,
`Deliverable Quantity` varchar(8),
`Perc Deli Qty to Traded Qty` varchar(8),
`Spread High-Low` double(15,2),
`Spread Close-Open` double(15,2)
);	

# Creating TCS
create table TCS (
Date date,
`Open Price` double(15,2),
`High Price` double(15,2),
`Low Price` double(15,2),
`Close Price` double(15,2),
WAP double(15,3),
`No of Shares` int(8),
`No of Trades` int(6),
`Total Turnover (Rs.)` bigint,
`Deliverable Quantity` varchar(8),
`Perc Deli Qty to Traded Qty` varchar(8),
`Spread High-Low` double(15,2),
`Spread Close-Open` double(15,2)
);	


# Creating TVS Motors
create table `TVS Motors` (
Date date,
`Open Price` double(15,2),
`High Price` double(15,2),
`Low Price` double(15,2),
`Close Price` double(15,2),
WAP double(15,3),
`No of Shares` int(8),
`No of Trades` int(6),
`Total Turnover (Rs.)` bigint,
`Deliverable Quantity` varchar(8),
`Perc Deli Qty to Traded Qty` varchar(8),
`Spread High-Low` double(15,2),
`Spread Close-Open` double(15,2)
);	

# Load data in Bajaj Auto table

LOAD DATA INFILE 'c:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Bajaj Auto.csv'
INTO TABLE `Bajaj Auto`
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@`Date`, `Open Price`, `High Price`, `Low Price`, `Close Price`,  WAP, `No of Shares`, `No of Trades`, `Total Turnover (Rs.)`, `Deliverable Quantity`, `Perc Deli Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`)
set `Date` = str_to_date(@`Date`, '%e-%M-%Y');

# Load data in Eicher Motors table

LOAD DATA INFILE 'c:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Eicher Motors.csv'
INTO TABLE `Eicher Motors`
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@`Date`, `Open Price`, `High Price`, `Low Price`, `Close Price`,  WAP, `No of Shares`, `No of Trades`, `Total Turnover (Rs.)`, `Deliverable Quantity`, `Perc Deli Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`)
set `Date` = str_to_date(@`Date`, '%e-%M-%Y');

# Load data in Hero Motocorp table

LOAD DATA INFILE 'c:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Hero Motocorp.csv'
INTO TABLE `Hero Motocorp`
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@`Date`, `Open Price`, `High Price`, `Low Price`, `Close Price`,  WAP, `No of Shares`, `No of Trades`, `Total Turnover (Rs.)`, `Deliverable Quantity`, `Perc Deli Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`)
set `Date` = str_to_date(@`Date`, '%e-%M-%Y');

# Load data in Infosys table

LOAD DATA INFILE 'c:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Infosys.csv'
INTO TABLE Infosys
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@`Date`, `Open Price`, `High Price`, `Low Price`, `Close Price`,  WAP, `No of Shares`, `No of Trades`, `Total Turnover (Rs.)`, `Deliverable Quantity`, `Perc Deli Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`)
set `Date` = str_to_date(@`Date`, '%e-%M-%Y');

# Load data in TCS table

LOAD DATA INFILE 'c:/ProgramData/MySQL/MySQL Server 8.0/Uploads/TCS.csv'
INTO TABLE TCS
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@`Date`, `Open Price`, `High Price`, `Low Price`, `Close Price`,  WAP, `No of Shares`, `No of Trades`, `Total Turnover (Rs.)`, `Deliverable Quantity`, `Perc Deli Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`)
set `Date` = str_to_date(@`Date`, '%e-%M-%Y');

# Load data in TVS Motors table

LOAD DATA INFILE 'c:/ProgramData/MySQL/MySQL Server 8.0/Uploads/TVS Motors.csv'
INTO TABLE `TVS Motors`
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@`Date`, `Open Price`, `High Price`, `Low Price`, `Close Price`,  WAP, `No of Shares`, `No of Trades`, `Total Turnover (Rs.)`, `Deliverable Quantity`, `Perc Deli Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`)
set `Date` = str_to_date(@`Date`, '%e-%M-%Y');

#Task 1 : Create table bajaj1, eicher1, hero1, infosys1, tcs1, tvs1
create table bajaj1 as
select Date, `Close Price`, 
CASE
  WHEN row_number() over w >= 20
 
  THEN ROUND(AVG(`Close Price`) OVER (w ROWS BETWEEN 19 PRECEDING AND CURRENT ROW),2)
  ELSE NULL
  END as `20 Day MA`,
  CASE
  WHEN row_number() over w >= 50
 
  THEN ROUND(AVG(`Close Price`) OVER (w ROWS BETWEEN 49 PRECEDING AND CURRENT ROW),2)
   ELSE NULL
END AS `50 Day MA`
FROM `Bajaj Auto`
WINDOW w as (ORDER BY `Date`);


create table eicher1 as
select Date, `Close Price`, 
CASE
  WHEN row_number() over w >= 20
 
  THEN ROUND(AVG(`Close Price`) OVER (w ROWS BETWEEN 19 PRECEDING AND CURRENT ROW),2)
  ELSE NULL
  END as `20 Day MA`,
  CASE
  WHEN row_number() over w >= 50
 
  THEN ROUND(AVG(`Close Price`) OVER (w ROWS BETWEEN 49 PRECEDING AND CURRENT ROW),2)
   ELSE NULL
END AS `50 Day MA`
FROM `Eicher Motors`
WINDOW w as (ORDER BY `Date`);



create table hero1 as
select Date, `Close Price`, 
CASE
  WHEN row_number() over w >= 20
 
  THEN ROUND(AVG(`Close Price`) OVER (w ROWS BETWEEN 19 PRECEDING AND CURRENT ROW),2)
  ELSE NULL
  END as `20 Day MA`,
  CASE
  WHEN row_number() over w >= 50
 
  THEN ROUND(AVG(`Close Price`) OVER (w ROWS BETWEEN 49 PRECEDING AND CURRENT ROW),2)
   ELSE NULL
END AS `50 Day MA`
FROM `Hero Motocorp`
WINDOW w as (ORDER BY `Date`);


create table infosys1 as
select Date, `Close Price`, 
CASE
  WHEN row_number() over w >= 20
 
  THEN ROUND(AVG(`Close Price`) OVER (w ROWS BETWEEN 19 PRECEDING AND CURRENT ROW),2)
  ELSE NULL
  END as `20 Day MA`,
  CASE
  WHEN row_number() over w >= 50
 
  THEN ROUND(AVG(`Close Price`) OVER (w ROWS BETWEEN 49 PRECEDING AND CURRENT ROW),2)
   ELSE NULL
END AS `50 Day MA`
FROM infosys
WINDOW w as (ORDER BY `Date`);


create table tcs1 as
select Date, `Close Price`, 
CASE
  WHEN row_number() over w >= 20
 
  THEN ROUND(AVG(`Close Price`) OVER (w ROWS BETWEEN 19 PRECEDING AND CURRENT ROW),2)
  ELSE NULL
  END as `20 Day MA`,
  CASE
  WHEN row_number() over w >= 50
 
  THEN ROUND(AVG(`Close Price`) OVER (w ROWS BETWEEN 49 PRECEDING AND CURRENT ROW),2)
   ELSE NULL
END AS `50 Day MA`
FROM tcs
WINDOW w as (ORDER BY `Date`);



create table tvs1 as
select Date, `Close Price`, 
CASE
  WHEN row_number() over w >= 20
 
  THEN ROUND(AVG(`Close Price`) OVER (w ROWS BETWEEN 19 PRECEDING AND CURRENT ROW),2)
  ELSE NULL
  END as `20 Day MA`,
  CASE
  WHEN row_number() over w >= 50
 
  THEN ROUND(AVG(`Close Price`) OVER (w ROWS BETWEEN 49 PRECEDING AND CURRENT ROW),2)
   ELSE NULL
END AS `50 Day MA`
FROM `tvs motors`
WINDOW w as (ORDER BY `Date`);



#Task 2: Create master table containing date and close price of all the six stocks

create table master_stocks as (SELECT b.Date, b.`Close Price` Bajaj, tc.`Close Price` TCS,
 tv.`Close Price` TVS, i.`Close Price` Infosys, e.`Close Price` Eicher, h.`Close Price` Hero
            FROM  bajaj1 AS b, eicher1 AS e,  hero1 AS h, infosys1 AS i, tcs1 AS tc, tvs1 AS tv
            WHERE b.Date = e.Date AND b.date = h.Date AND b.date = i.Date AND b.date = tc.Date AND b.date = tv.Date);



# Task 3: Create bajaj2, eicher2, hero2, infosys2, tcs2, tvs2 for generating buy and sell signal

CREATE table bajaj2 as select Date, `Close Price`,
CASE 
	WHEN(`20 Day MA` IS NULL) OR (`50 Day MA` IS NULL) THEN
	'HOLD'
ELSE
	CASE
		WHEN `20 Day MA` >= `50 Day MA` THEN
			CASE WHEN LAG(`20 Day MA`) OVER w < LAG(`50 Day MA`) OVER w THEN 'BUY' ELSE 'HOLD' END
		ELSE
			CASE WHEN LAG(`20 Day MA`) OVER w > LAG(`50 Day MA`) OVER w THEN 'SELL' ELSE 'HOLD' END
	END
END

as `Signal`
FROM `bajaj1`
WINDOW w as (ORDER BY `Date`);


CREATE table eicher2 as select Date, `Close Price`,
CASE 
	WHEN(`20 Day MA` IS NULL) OR (`50 Day MA` IS NULL) THEN
	'HOLD'
ELSE
	CASE
		WHEN `20 Day MA` >= `50 Day MA` THEN
			CASE WHEN LAG(`20 Day MA`) OVER w < LAG(`50 Day MA`) OVER w THEN 'BUY' ELSE 'HOLD' END
		ELSE
			CASE WHEN LAG(`20 Day MA`) OVER w > LAG(`50 Day MA`) OVER w THEN 'SELL' ELSE 'HOLD' END
	END
END

as `Signal`
FROM `eicher1`
WINDOW w as (ORDER BY `Date`);


CREATE table hero2 as select Date, `Close Price`,
CASE 
	WHEN(`20 Day MA` IS NULL) OR (`50 Day MA` IS NULL) THEN
	'HOLD'
ELSE
	CASE
		WHEN `20 Day MA` >= `50 Day MA` THEN
			CASE WHEN LAG(`20 Day MA`) OVER w < LAG(`50 Day MA`) OVER w THEN 'BUY' ELSE 'HOLD' END
		ELSE
			CASE WHEN LAG(`20 Day MA`) OVER w > LAG(`50 Day MA`) OVER w THEN 'SELL' ELSE 'HOLD' END
	END
END

as `Signal`
FROM `hero1`
WINDOW w as (ORDER BY `Date`);


CREATE table infosys2 as select Date, `Close Price`,
CASE 
	WHEN(`20 Day MA` IS NULL) OR (`50 Day MA` IS NULL) THEN
	'HOLD'
ELSE
	CASE
		WHEN `20 Day MA` >= `50 Day MA` THEN
			CASE WHEN LAG(`20 Day MA`) OVER w < LAG(`50 Day MA`) OVER w THEN 'BUY' ELSE 'HOLD' END
		ELSE
			CASE WHEN LAG(`20 Day MA`) OVER w > LAG(`50 Day MA`) OVER w THEN 'SELL' ELSE 'HOLD' END
	END
END

as `Signal`
FROM `infosys1`
WINDOW w as (ORDER BY `Date`);



CREATE table tcs2 as select Date, `Close Price`,
CASE 
	WHEN(`20 Day MA` IS NULL) OR (`50 Day MA` IS NULL) THEN
	'HOLD'
ELSE
	CASE
		WHEN `20 Day MA` >= `50 Day MA` THEN
			CASE WHEN LAG(`20 Day MA`) OVER w < LAG(`50 Day MA`) OVER w THEN 'BUY' ELSE 'HOLD' END
		ELSE
			CASE WHEN LAG(`20 Day MA`) OVER w > LAG(`50 Day MA`) OVER w THEN 'SELL' ELSE 'HOLD' END
	END
END

as `Signal`
FROM `tcs1`
WINDOW w as (ORDER BY `Date`);



CREATE table tvs2 as select Date, `Close Price`,
CASE 
	WHEN(`20 Day MA` IS NULL) OR (`50 Day MA` IS NULL) THEN
	'HOLD'
ELSE
	CASE
		WHEN `20 Day MA` >= `50 Day MA` THEN
			CASE WHEN LAG(`20 Day MA`) OVER w < LAG(`50 Day MA`) OVER w THEN 'BUY' ELSE 'HOLD' END
		ELSE
			CASE WHEN LAG(`20 Day MA`) OVER w > LAG(`50 Day MA`) OVER w THEN 'SELL' ELSE 'HOLD' END
	END
END

as `Signal`
FROM `tvs1`
WINDOW w as (ORDER BY `Date`);


#Task 4: Create User defined function to return signal based on input date

delimiter $$
CREATE FUNCTION getSignal (`val` Date)
RETURNS char(5)
deterministic
begin
DECLARE `output` char(4);
(select `Signal` into output from bajaj2 where Date=val);
RETURN `output`;
end;
$$


select getSignal("2015-12-25");


