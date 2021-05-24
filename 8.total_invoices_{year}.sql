-- total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?
Select COUNT(*) From Invoice where strftime('%Y', InvoiceDate) is '2011' or strftime('%Y', InvoiceDate) is '2009';