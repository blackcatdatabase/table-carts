-- Auto-generated from joins-mysql.yaml (map@sha1:DA70105A5B799F72A56FEAB71A5171F946A770D2)
-- engine: mysql
-- view:   carts_with_items

CREATE OR REPLACE ALGORITHM=TEMPTABLE SQL SECURITY INVOKER VIEW vw_carts_with_items AS
SELECT
  c.id,
  c.tenant_id,
  c.user_id,
  c.created_at,
  COUNT(ci.id) AS items_count,
  SUM(ci.price_snapshot * ci.quantity) AS subtotal,
  MIN(ci.currency) AS currency
FROM carts c
LEFT JOIN cart_items ci ON ci.cart_id = c.id AND ci.tenant_id = c.tenant_id
GROUP BY c.id, c.tenant_id, c.user_id, c.created_at;
