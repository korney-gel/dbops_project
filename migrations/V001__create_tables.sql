CREATE TABLE store.order_product (
    order_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    quantity INT NOT NULL
);

CREATE TABLE store.orders (
    id BIGINT PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    status VARCHAR(255)
);

CREATE TABLE store.orders_date (
    order_id BIGINT NOT NULL,
    status VARCHAR(255),
    date_created DATE DEFAULT CURRENT_DATE
);

CREATE TABLE store.product (
    id BIGINT PRIMARY KEY GENERATED,
    name VARCHAR(255) NOT NULL,
    picture_url VARCHAR(255)
);

CREATE TABLE store.product_info (
    product_id BIGINT NOT NULL,
    name VARCHAR(255),
    price DECIMAL(10, 2)
);