-- Auto-generated from schema-views-mysql.psd1 (map@62c9c93)
-- engine: mysql
-- table:  carts
-- Contract view for [carts]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_carts AS
SELECT
  tenant_id,
  id,
  user_id,
  note,
  created_at,
  updated_at,
  version
FROM carts;
