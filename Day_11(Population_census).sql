select sum(c.POPULATION) from CITY as c join COUNTRY as cc 
on c.CountryCode=cc.CODE where CONTINENT='Asia';