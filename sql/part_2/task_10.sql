----Как и в задаче из прошлого урока, вычислите НДС каждого товара в таблице products и рассчитайте цену без учёта НДС.
--Однако теперь примите во внимание, что для товаров из списка налог составляет 10%. Для остальных товаров НДС тот же — 20%.
--
----Выведите всю информацию о товарах, включая сумму налога и цену без его учёта.
-- Колонки с суммой налога и ценой без НДС назовите соответственно tax и price_before_tax.
-- Округлите значения в этих колонках до двух знаков после запятой.
----
----Результат отсортируйте сначала по убыванию цены товара без учёта НДС, затем по возрастанию id товара.
----
----Поля в результирующей таблице: product_id, name, price, tax, price_before_tax

SELECT product_id,
       name,
       price,
       case when name in ('сахар', 'сухарики', 'сушки', 'семечки', 'масло льняное', 'виноград',
       'масло оливковое', 'арбуз', 'батон', 'йогурт', 'сливки', 'гречка', 'овсянка', 'макароны',
       'баранина', 'апельсины', 'бублики', 'хлеб', 'горох', 'сметана', 'рыба копченая', 'мука',
        'шпроты', 'сосиски', 'свинина', 'рис', 'масло кунжутное', 'сгущенка', 'ананас', 'говядина',
         'соль', 'рыба вяленая', 'масло подсолнечное', 'яблоки', 'груши', 'лепешка', 'молоко',
         'курица', 'лаваш', 'вафли', 'мандарины') then round((price / 1.1 * 0.1),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         2)
            else round((price / 1.2 * 0.2), 2) end as tax,
       case when name in ('сахар', 'сухарики', 'сушки', 'семечки', 'масло льняное', 'виноград',
                          'масло оливковое', 'арбуз', 'батон', 'йогурт', 'сливки',
                          'гречка', 'овсянка', 'макароны', 'баранина', 'апельсины',
                          'бублики', 'хлеб', 'горох', 'сметана', 'рыба копченая', 'мука',
                          'шпроты', 'сосиски', 'свинина', 'рис', 'масло кунжутное',
                          'сгущенка', 'ананас', 'говядина', 'соль', 'рыба вяленая',
                          'масло подсолнечное', 'яблоки', 'груши', 'лепешка', 'молоко',
                          'курица', 'лаваш', 'вафли', 'мандарины') then round ((price - (price / 1.1 * 0.1)), 2)
            else round ((price - (price / 1.2 * 0.2)), 2) end as price_before_tax
FROM   products
ORDER BY price_before_tax desc, product_id