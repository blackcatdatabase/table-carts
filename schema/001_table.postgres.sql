-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  carts

CREATE TABLE IF NOT EXISTS carts (
  id CHAR(36) PRIMARY KEY,
  tenant_id BIGINT NOT NULL,
  user_id BIGINT NULL,
  note VARCHAR(200) NULL,
  created_at TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at TIMESTAMPTZ(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  version INTEGER NOT NULL DEFAULT 0,
  CONSTRAINT chk_carts_version CHECK (version >= 0)
);
