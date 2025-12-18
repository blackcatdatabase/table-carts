-- Auto-generated from schema-views-postgres.yaml (map@sha1:3C365C10BD489376A27944AE10F143E1BE4D3BCF)
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
