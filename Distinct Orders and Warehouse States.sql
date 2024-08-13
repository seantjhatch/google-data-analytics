--distinct orders grouped by state of warehouse they were shipped from

--links to datasets: 
--https://console.cloud.google.com/bigquery?ws=!1m5!1m4!4m3!1ssilent-complex-430821-f3!2swarehouse_orders!3sorders
--https://console.cloud.google.com/bigquery?ws=!1m5!1m4!4m3!1ssilent-complex-430821-f3!2swarehouse_orders!3swarehouse

SELECT 
  state,
  COUNT(DISTINCT order_id) AS num_orders
FROM 
  `silent-complex-430821-f3.warehouse_orders.orders` AS orders
JOIN
  `silent-complex-430821-f3.warehouse_orders.warehouse` AS warehouse
ON
  orders.warehouse_id = warehouse.warehouse_id
GROUP BY
  warehouse.state;