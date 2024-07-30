--Используя операторы SELECT, FROM, ORDER BY и LIMIT,
--а также функцию LENGTH, определите товар с самым длинным названием в таблице
--products. Выведите его наименование, длину наименования в символах,
-- а также цену этого товара. Колонку с длиной наименования в символах
-- назовите name_length.
--Поля в результирующей таблице: name, name_length, price

SELECT name,
       price,
       length(name) as name_length
FROM   products
ORDER BY name_length desc limit 1