-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-11-27T15:13:14Z)
-- engine: mysql
-- table:  carts

CREATE UNIQUE INDEX ux_carts_tenant_id ON carts (tenant_id, id);

CREATE INDEX idx_carts_tenant ON carts (tenant_id);
