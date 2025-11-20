-- Auto-generated from schema-map-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  carts
CREATE INDEX IF NOT EXISTS idx_carts_tenant ON carts (tenant_id);

CREATE UNIQUE INDEX IF NOT EXISTS ux_carts_tenant_id ON carts (tenant_id, id);
