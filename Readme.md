# dbops-project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"

## Создаём нового пользователя (test_user) с паролем test_password
CREATE ROLE test_user WITH LOGIN PASSWORD 'test_password';

## Даем пользователю права на базу данных store
GRANT CONNECT ON DATABASE store TO test_user;

## Даем пользователю права на все существующие таблицы в store
GRANT USAGE ON SCHEMA public TO test_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO test_user;
GRANT USAGE, SELECT, UPDATE ON ALL SEQUENCES IN SCHEMA public TO test_user;

ALTER DEFAULT PRIVILEGES IN SCHEMA public 
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO test_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public 
GRANT USAGE, SELECT, UPDATE ON SEQUENCES TO test_user;

## Запрос для получения количества проданных сосисок за каждый день предыдущей недели
SELECT o.date_created, SUM(op.quantity)
FROM orders AS o
JOIN order_product AS op ON o.id = op.order_id
WHERE o.status = 'shipped' AND o.date_created > NOW() - INTERVAL '7 DAY'
GROUP BY o.date_created; 