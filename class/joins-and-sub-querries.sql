INSERT INTO bills VALUES 
(1,'adithya','987656765','2020-03-22'),
(2,'baansha','967656765','2021-05-01'),
(3,'samad','927656765','2021-12-22'),
(4,'athira','996656765','2022-09-20');

CREATE TABLE bill_items(
    pk_item_id SERIAL PRIMARY KEY,
    fk_product_id INT,
    item_price INT,
    item_quantity INT,
    fk_bill_id INT,
    FOREIGN KEY(fk_product_id) REFERENCES items(pk_product_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(fk_bill_id) REFERENCES bills(pk_bill_id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO bill_items VALUES
(1,4,10,5,1),
(2,2,100,2,2),
(3,5,15,3,3),
(4,1,45,6,4);

SELECT pk_bill_id,bill_date,customer_name, SUM(item_price*item_quantity) AS total_bill
FROM bill_items INNER JOIN bills ON bill_items.fk_bill_id=bills.pk_bill_id 
GROUP BY pk_bill_id;

CREATE TABLE stocks(
    pk_stock_id SERIAL PRIMARY KEY,
    fk_product_id INT,
    quantity INT,
    FOREIGN KEY(fk_product_id) REFERENCES items(pk_product_id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO stocks VALUES
    (1,1,300),
    (2,2,200),
    (3,3,400);

SELECT items.product_name,stocks.quantity FROM items  LEFT JOIN stocks  ON items.pk_product_id = stocks.fk_product_id;

SELECT i.product_name,s.quantity FROM items i LEFT JOIN stocks s ON i.pk_product_id = s.fk_product_id;

SELECT product_name,quantity FROM items INNER JOIN stocks ON items.pk_product_id = stocks.fk_product_id;

insert into category(category_name,description) values('sports','sports items'),
('electronics','electronics items');

SELECT product_name,category_name FROM items RIGHT JOIN category ON items.fk_category_id = category.pk_category_id;

SELECT product_name,category_name FROM items INNER JOIN category ON items.fk_category_id = category.pk_category_id;

SELECT * FROM items WHERE fk_category_id = 1;
