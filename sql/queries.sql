SELECT 
    brand, 
    model, 
    year,
    CASE
        WHEN EXTRACT(YEAR FROM CURRENT_DATE) - year <= 3 THEN 'новый'
        ELSE 'старый'
    END AS "Категория"
FROM cars;