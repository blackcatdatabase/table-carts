-- Auto-generated from schema-map.psd1 on 2025-10-21T02:32:05
-- table: carts
ALTER TABLE carts ADD CONSTRAINT fk_carts_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL;
