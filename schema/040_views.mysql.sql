-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-10-24T09:19:46Z)
-- engine: mysql
-- table:  carts
-- Contract view for [carts]
CREATE OR REPLACE VIEW vw_carts AS
SELECT
  id,
  user_id,
  created_at,
  updated_at
FROM carts;
