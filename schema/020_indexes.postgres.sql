-- Auto-generated from schema-map-postgres.yaml (map@4ae85c5)
-- engine: postgres
-- table:  carts

CREATE INDEX IF NOT EXISTS idx_carts_tenant ON carts (tenant_id);

CREATE UNIQUE INDEX IF NOT EXISTS ux_carts_tenant_id ON carts (tenant_id, id);
