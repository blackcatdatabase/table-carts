-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-10-24T09:13:35Z)
-- engine: mysql
-- table:  carts
CREATE TABLE IF NOT EXISTS carts (
  id CHAR(36) PRIMARY KEY,
  user_id BIGINT UNSIGNED NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  updated_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
