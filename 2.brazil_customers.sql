-- brazil_customers.sql: Provide a query only showing the Customers from Brazil.
select CustomerId, FirstName, LastName, Country from Customer where Country is "Brazil";