-- Auto-generated from joins-postgres.yaml (map@85230ed)
-- engine: postgres
-- view:   carts_with_items

-- Carts with item count and subtotal snapshot
CREATE OR REPLACE VIEW vw_carts_with_items AS
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
