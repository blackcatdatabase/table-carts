-- Auto-generated from schema-views-postgres.yaml (map@sha1:A35B3CB52780A1043442511D947A51BA2C27622C)
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
