-- Auto-generated from schema-map-mysql.yaml (map@sha1:09DF9CA612D1573E058190CC207FA257C05AEC1F)
-- engine: mysql
-- table:  carts

CREATE UNIQUE INDEX ux_carts_tenant_id ON carts (tenant_id, id);

CREATE INDEX idx_carts_tenant ON carts (tenant_id);
