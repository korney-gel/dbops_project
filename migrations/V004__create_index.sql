-- Индекс на orders по status (ускоряет запросы по статусу заказа)
CREATE INDEX IF NOT EXISTS idx_orders_status ON orders(status);

-- Индекс на orders по date_created (ускоряет выборку заказов по дате)
CREATE INDEX IF NOT EXISTS idx_orders_date_created ON orders(date_created);

-- Индекс на order_product по order_id (ускоряет JOIN с orders)
CREATE INDEX IF NOT EXISTS idx_order_product_order_id ON order_product(order_id);

-- Индекс на order_product по product_id (ускоряет JOIN с product)
CREATE INDEX IF NOT EXISTS idx_order_product_product_id ON order_product(product_id);