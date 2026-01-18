-- Запрос 1: Самые дорогие автомобили (топ-3 по цене)
SELECT brand, model, price
FROM cars
ORDER BY price DESC
LIMIT 3;

-- Запрос 2: Средняя цена по марке
SELECT brand, AVG(price) AS "Средняя_цена"
FROM cars
GROUP BY brand
ORDER BY "Средняя_цена" DESC;

-- Запрос 3: Автомобили новее 2020 года с ценой ниже 2 млн
SELECT brand, model, year, price
FROM cars
WHERE year > 2020 AND price < 2000000;
