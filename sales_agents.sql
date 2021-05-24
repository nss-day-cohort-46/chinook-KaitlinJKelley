-- sales_agents.sql: Provide a query showing only the Employees who are Sales Agents.
Select * From Customer
Join Employee On EmployeeId = SupportRepId
Group By EmployeeId;