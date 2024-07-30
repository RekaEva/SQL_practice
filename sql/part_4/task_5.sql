--А теперь по данным таблицы courier_actions определите курьеров, которые в сентябре 2022 года доставили только по одному заказу.
--
--В этот раз выведите всего одну колонку с id курьеров. Колонку с числом заказов в результат включать не нужно.
--
--Результат отсортируйте по возрастанию id курьера.
--
--Поле в результирующей таблице: courier_id

SELECT courier_id
FROM   courier_actions
WHERE  date_part('year', time) = '2022'
   and date_part('month', time) = '09'
   and action = 'deliver_order'
GROUP BY courier_id having count(order_id) = 1