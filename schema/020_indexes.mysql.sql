-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
-- engine: mysql
-- table:  carts

CREATE UNIQUE INDEX ux_carts_tenant_id ON carts (tenant_id, id);

CREATE INDEX idx_carts_tenant ON carts (tenant_id);
