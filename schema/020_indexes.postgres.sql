-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  carts

CREATE INDEX IF NOT EXISTS idx_carts_tenant ON carts (tenant_id);

CREATE UNIQUE INDEX IF NOT EXISTS ux_carts_tenant_id ON carts (tenant_id, id);
