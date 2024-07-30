--Из таблицы user_actions получите информацию о всех отменах заказов, которые пользователи совершали
-- в течение августа 2022 года по средам с 12:00 до 15:59.
--
--Результат отсортируйте по убыванию id отменённых заказов.
--
--Поля в результирующей таблице: user_id, order_id, action, time

SELECT user_id,
       order_id,
       action,
       time
FROM   user_actions
WHERE  date_part('year', time) = 2022
   and date_part('month', time) = 08
   and date_part('dow', time) = 3
   and date_part('hour', time) between 12
   and 15
   and date_part('minute', time) <= 59
   and action = 'cancel_order'
ORDER BY order_id desc