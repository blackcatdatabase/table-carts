-- Auto-generated from schema-map-mysql.yaml (map@94ebe6c)
-- engine: mysql
-- table:  carts

CREATE UNIQUE INDEX ux_carts_tenant_id ON carts (tenant_id, id);

CREATE INDEX idx_carts_tenant ON carts (tenant_id);
