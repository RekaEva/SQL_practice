--Посчитайте количество курьеров женского пола в таблице couriers. Полученный столбец с одним значением назовите couriers.
--
--Поле в результирующей таблице: couriers

SELECT count(courier_id) as couriers
FROM   couriers
WHERE  sex = 'female'