--To Calculate the average transaction amount of each user every year between 2018 to 2022 ?

Schema

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    user_id INT NOT NULL,
    transaction_date DATE NOT NULL,
    transaction_amount DECIMAL(10, 2) NOT NULL
);

INSERT INTO transactions VALUES
    (1, 269, '2018-08-15', 500),
    (2, 478, '2018-11-25', 400),
    (3, 269, '2019-01-05', 1000),
    (4, 123, '2020-10-20', 600),
    (5, 478, '2021-07-05', 700),
    (6, 123, '2022-03-05', 900),
	(7, 123, '2022-04-05', 500);

Answer :-

Select YEAR(transaction_date) as year,user_id,avg(transaction_amount) avg_transaction
from transactions
where YEAR(transaction_date) between 2018 and 2022
group by YEAR(transaction_date),user_id
order by year asc;