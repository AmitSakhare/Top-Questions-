select top 3  * from so;
select * from so;

--- Drop Unwanted Rows
alter table so drop column dealer,reportType,ExciseAmt,CessAmt,EduCessAmt,SHCessAmt,TaxAmt,L_C,VAT,CST,EntryTax,SiteName;