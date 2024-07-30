--Для каждого пользователя в таблице user_actions посчитайте общее количество оформленных заказов и долю отменённых заказов.
--
--Новые колонки назовите соответственно orders_count и cancel_rate.
--Колонку с долей отменённых заказов округлите до двух знаков после запятой.
--
--В результат включите только тех пользователей, которые оформили больше
-- трёх заказов и у которых показатель cancel_rate составляет не менее 0.5.
--
--Результат отсортируйте по возрастанию id пользователя.
--
--Поля в результирующей таблице: user_id, orders_count, cancel_rate

SELECT user_id,
       count(order_id) filter (WHERE action = 'create_order') as orders_count,
       (count(order_id) filter (WHERE action = 'cancel_order') :: decimal / count(order_id) filter (WHERE action = 'create_order')) :: decimal as cancel_rate
FROM   user_actions
GROUP BY user_id having (count(order_id) filter (
WHERE  action = 'create_order')) > 3
   and (count(order_id) filter (
WHERE  action = 'cancel_order') :: decimal / count(order_id) filter (
WHERE  action = 'create_order')) >= 0.5
ORDER BY user_id