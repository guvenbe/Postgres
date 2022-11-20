select * from customer ;
select * from customer_order

select * from customer join customer_order co on customer.id = co.customer_id;
select co.* from customer inner join customer_order co on customer.id = co.customer_id;
select * from customer c left outer join customer_order co on c.id = co.customer_id;

 SELECT * FROM customer AS c
    JOIN customer_order co on c.id = co.customer_id
    JOIN order_item oi on co.id = oi.order_id
    JOIN product p on p.id = oi.product_id;

 SELECT * FROM customer AS c
    LEFT JOIN customer_order co on c.id = co.customer_id;




 SELECT * FROM customer AS c
    LEFT JOIN customer_order co on c.id = co.customer_id
WHERE co.id IS NULL;

 SELECT * FROM customer AS c
    FULL JOIN  customer_order co on c.id = co.customer_id;

-- ACID Properties
-- Atomicity guarantees that the transaction completes in an all-or-nothing manner.
-- Consistency ensures the change to data written to the database must be valid and follow predefined rules.
-- Isolation determines how transaction integrity is visible to other transactions.
-- Durability makes sure that transactions that have been committed will be stored in the database permanently.

CREATE TABLE IF NOT EXISTS accounts (
    id BIGSERIAL PRIMARY KEY ,
    name TEXT NOT NULL,
    balance NUMERIC(19, 2) NOT NULL
);

INSERT INTO accounts (name, balance)
VALUES ('James', 1000),
       ('Jamila', 1000);



 SELECT * FROM customer AS c
    RIGHT JOIN customer_order co on c.id = co.customer_id;

select * from pg_relation_filepath('customer');

select * from pg_settings where name ='bgwriter_delay';
select * from pg_settings where name ='bgwriter_lru_maxpages';