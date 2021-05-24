-- total_sales_{year}.sql: What are the respective total sales for each of those years?
Select round((Select sum(Total) 
                From Invoice 
                where strftime('%Y', InvoiceDate) is '2009'), 2) as Total_Sales_2009,
        round((Select sum(Total) 
                From Invoice 
                where strftime('%Y', InvoiceDate) is '2011'), 2) as Total_Sales_2011;