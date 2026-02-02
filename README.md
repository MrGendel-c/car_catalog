markdown
# Car Catalog
## Аналитические запросы

В файле `sql/queries.sql` реализованы:
1. Топ-3 самых дорогих автомобилей
2. Средняя цена по марке
3. Фильтр: новые и недорогие машины
4. Распределение по цветам (только популярные)
5. Классификация по возрасту (новый/старый)
## Запуск с Docker

   1. Установи Docker Desktop
   2. Выполни:
   ```bash
   docker-compose up -d
   ```
   3. Открой http://localhost:8080
- System (Движок): PostgreSQL
- Server (Сервер): db ← именно так называется сервис!
- Username (Имя пользователя): `postgres`
- Password (Пароль): `postgres` (если менял, то свой пароль)
- Database (База данных): `car_catalog_db`

   4. Или подключись через VS Code (порт 5432)

   ## Исследование
   Внутри контейнера выполнены команды:
   ```sql
   SELECT color, AVG(price) FROM cars GROUP BY color;
   ```
   Вывод: <car_catalog_db=# SELECT color, AVG(price) FROM cars GROUP BY color;
   color   |         avg
-----------+----------------------
 Dark Blue | 3800000.000000000000
 Red       |  950000.000000000000
 Orange    | 2100000.000000000000
 Blue      | 1200000.000000000000
 Green     | 1600000.500000000000
 Gray      | 5200000.750000000000
 Brown     |  980000.250000000000>
   
   ```sql
   SELECT brand, COUNT(*) FROM cars GROUP BY brand;
   ```
   Вывод: <car_catalog_db=# SELECT brand, COUNT(*) FROM cars GROUP BY brand;
     brand     | count
---------------+-------
 Ford          |     1
 Skoda         |     1
 Audi          |     1
 Kia           |     1
 Mercedes-Benz |     1
 Nissan        |     1
 Hyundai       |     1
(7 rows)>