--Посчитайте, сколько пользователей никогда не отменяли свой заказ.
-- Для этого из общего числа всех уникальных пользователей отнимите число уникальных пользователей,
--  которые хотя бы раз отменяли заказ. Подумайте, какое условие необходимо указать в FILTER,
--  чтобы получить корректный результат.
--
--Полученный столбец назовите users_count.
--
--Поле в результирующей таблице: users_count

SELECT (count (distinct user_id) - count(distinct user_id) filter (WHERE action = 'cancel_order')) as users_count
FROM   user_actions