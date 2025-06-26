select top 3  * from so;
select * from so;

--- Drop Unwanted Rows
alter table so drop column dealer,reportType,ExciseAmt,CessAmt,EduCessAmt,SHCessAmt,TaxAmt,L_C,VAT,CST,EntryTax,SiteName;
-- Change Description Column Name and Values
sp_rename 'so.Description','Type_of_Sale'; -- Rename Column_Name

update dbo.so Set Type_of_Sale = 'Export' where Godown = 'Export Godown';-- Value Changes in Column

--Calculate rate 
select * , ROUND((GAmount/TotWeight),2) as Rate from so;

-- Calculate Avg Sales
select Distributor,round(avg(NetAmount),2) from so group by Distributor;

-- Calculate April Avg Sales
select Distributor,round(avg(netamount),2) as AvgSaleAmt from so 
where Billdate between '2024-04-01' and '2024-04-30' group by Distributor;





