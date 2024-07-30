--Выведите id всех курьеров и их годы рождения из таблицы couriers.
--
--Год рождения необходимо получить из колонки birth_date. Новую колонку с годом назовите
--birth_year. Результат отсортируйте сначала по убыванию года рождения курьера (т.е. от самых младших к самым старшим),
-- затем по возрастанию id курьера.
--
--Поля в результирующей таблице: courier_id, birth_year
SELECT courier_id,
       date_part('year', birth_date) as birth_year
FROM   couriers
ORDER BY birth_year desc, courier_id