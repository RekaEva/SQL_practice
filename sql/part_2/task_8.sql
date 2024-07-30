--Из таблицы user_actions получите id всех заказов, сделанных пользователями сервиса в августе 2022 года.
--
--Результат отсортируйте по возрастанию id заказа.
--
--Поле в результирующей таблице: order_id

SELECT order_id
FROM   user_actions
WHERE  date_part('month', time) = '08'
   and date_part('year', time) = '2022'
   and action = 'create_order'