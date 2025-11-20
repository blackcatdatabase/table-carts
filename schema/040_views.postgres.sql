-- Auto-generated from schema-views-postgres.psd1 (map@62c9c93)
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
