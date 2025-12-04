-- Auto-generated from schema-views-postgres.yaml (map@74ce4f4)
-- engine: postgres
-- table:  carts

-- Contract view for [carts]
CREATE OR REPLACE VIEW vw_carts AS
SELECT
  id,
  tenant_id,
  user_id,
  note,
  created_at,
  updated_at,
  version
FROM carts;
