-- Auto-generated from schema-views-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  carts
-- Contract view for [carts]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_carts AS
SELECT
  id,
  user_id,
  note,
  created_at,
  updated_at,
  version
FROM carts;
