# dbops-project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"

## Создаём нового пользователя (test_user) с паролем test_password
CREATE ROLE test_user WITH LOGIN PASSWORD 'test_password';

## Даем права на базу данных store
GRANT CONNECT ON DATABASE store TO test_user;

## Даем права на все существующие таблицы в store
GRANT USAGE ON SCHEMA public TO test_user;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA public TO test_user;
GRANT USAGE, SELECT, UPDATE ON ALL SEQUENCES IN SCHEMA public TO test_user;

ALTER DEFAULT PRIVILEGES IN SCHEMA public 
GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO test_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA public 
GRANT USAGE, SELECT, UPDATE ON SEQUENCES TO test_user;