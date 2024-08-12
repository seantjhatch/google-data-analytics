--warehouses, their number of orders, and the % of orders fulfilled (walk-through)
--links to datasets: 
--https://console.cloud.google.com/bigquery?ws=!1m5!1m4!4m3!1ssilent-complex-430821-f3!2swarehouse_orders!3sorders
--https://console.cloud.google.com/bigquery?ws=!1m5!1m4!4m3!1ssilent-complex-430821-f3!2swarehouse_orders!3swarehouse

SELECT  
  Warehouse.warehouse_id,
  CONCAT(Warehouse.state,': ', Warehouse.warehouse_alias) AS warehouse_name,
  COUNT(Orders.order_id) AS number_of_orders,
  (SELECT COUNT(*)
    FROM `silent-complex-430821-f3.warehouse_orders.orders`AS Orders) AS total_orders,
    CASE
      WHEN COUNT (Orders.order_id)/(SELECT COUNT(*)FROM `silent-complex-430821-f3.warehouse_orders.orders`AS Orders) <= 0.20
      THEN 'Fulfilled 0-20% of Orders'
      WHEN COUNT (Orders.order_id)/(SELECT COUNT(*)FROM `silent-complex-430821-f3.warehouse_orders.orders`AS Orders) > 0.20
      AND COUNT (Orders.order_id)/(SELECT COUNT(*)FROM `silent-complex-430821-f3.warehouse_orders.orders`AS Orders) <= 0.60
      THEN 'Fulfilled 21-60% of Orders'
    ELSE 'Fulfilled more than 60% of Orders'
  END AS fulfillment_summary
FROM 
  `silent-complex-430821-f3.warehouse_orders.warehouse` AS Warehouse
LEFT JOIN
  `silent-complex-430821-f3.warehouse_orders.orders` AS Orders
  ON Orders.warehouse_id = Warehouse.warehouse_id
GROUP BY
  Warehouse.warehouse_id,
  warehouse_name
HAVING
  COUNT(Orders.order_id) > 0;