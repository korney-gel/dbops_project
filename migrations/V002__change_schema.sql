ALTER TABLE product
    ADD COLUMN price decimal(10, 2);

ALTER TABLE orders
    ADD COLUMN date_created DATE DEFAULT CURRENT_DATE;

ALTER TABLE order_product
    ADD CONSTRAINT order_product_pk PRIMARY KEY (order_id, product_id);

ALTER TABLE order_product
    ADD CONSTRAINT order_product_order_fk FOREIGN KEY (order_id) REFERENCES orders(id);

ALTER TABLE order_product
    ADD CONSTRAINT order_product_product_fk FOREIGN KEY (product_id) REFERENCES product(id);

DROP TABLE IF EXISTS orders_date;

DROP TABLE IF EXISTS product_info;
