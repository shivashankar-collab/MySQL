# Write your MySQL query statement below
select euni.unique_id , E.name
from Employees e
left JOIN EmployeeUNI euni  
ON e.id = euni.id;