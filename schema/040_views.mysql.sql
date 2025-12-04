-- Auto-generated from schema-views-mysql.yaml (map@74ce4f4)
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
