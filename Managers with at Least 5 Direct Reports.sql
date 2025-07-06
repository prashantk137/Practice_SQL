Table: Employee

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| department  | varchar |
| managerId   | int     |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table indicates the name of an employee, their department, and the id of their manager.
If managerId is null, then the employee does not have a manager.
No employee will be the manager of themself.

Schema -

Create table If Not Exists Employee (id int, name varchar(255), department varchar(255), managerId int)
Truncate table Employee
insert into Employee (id, name, department, managerId) values ('101', 'John', 'A', NULL)
insert into Employee (id, name, department, managerId) values ('102', 'Dan', 'A', '101')
insert into Employee (id, name, department, managerId) values ('103', 'James', 'A', '101')
insert into Employee (id, name, department, managerId) values ('104', 'Amy', 'A', '101')
insert into Employee (id, name, department, managerId) values ('105', 'Anne', 'A', '101')
insert into Employee (id, name, department, managerId) values ('106', 'Ron', 'B', '101');

Question -

Write a solution to find managers with at least five direct reports.

Answer -

select m.name
from Employee e
inner join Employee m
on e.managerId = m.id
group by m.name,m.id
having count(m.id)>= 5