-- Auto-generated from schema-map.psd1 (map@1e83bb6)
-- table: carts
ALTER TABLE carts ADD CONSTRAINT fk_carts_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL;
