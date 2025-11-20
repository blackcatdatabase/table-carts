<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – carts

Carts keyed by UUID; may be anonymous or bound to user.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | CHAR(36) | — | — | Cart id (UUID textual). |  |
| tenant_id | BIGINT | NO | — |  |  |
| user_id | BIGINT | YES | — | User owner (FK users.id), optional. |  |
| note | VARCHAR(200) | YES | — |  |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |  |
| updated_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Update timestamp (UTC). |  |
| version | INTEGER | NO | 0 |  |  |