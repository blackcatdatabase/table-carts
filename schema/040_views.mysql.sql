-- Auto-generated from schema-views-mysql.psd1 (map@38d5403)
-- engine: mysql
-- table:  carts
-- Contract view for [carts]
CREATE OR REPLACE SQL SECURITY INVOKER VIEW vw_carts AS
SELECT
  id,
  user_id,
  created_at,
  updated_at
FROM carts;
