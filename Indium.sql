--To find the 3 consecutive similar num value ?

Schema :-

create table logs(id int primary key,num int);

insert into logs values
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 1),
(6, 2),
(7, 2);

Answer :-

SELECT * from logs;

with cte as(
select num, 
lead(num,1)over(order by id) next_num,
lead(num,2)over(order by id) next_2nd_num
from logs
)

select num as consecutive_3row 
from cte
where num=next_num and num=next_2nd_num;