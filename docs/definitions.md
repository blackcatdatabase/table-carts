# carts

Carts keyed by UUID; may be anonymous or bound to user.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| created_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| id | CHAR(36) | NO |  | Cart id (UUID textual). |
| updated_at | DATETIME(6) | NO | CURRENT_TIMESTAMP(6) | Update timestamp (UTC). |
| user_id | BIGINT | YES |  | User owner (FK users.id), optional. |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| ux_carts_tenant_id | tenant_id, id |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_carts_tenant | tenant_id | CREATE INDEX idx_carts_tenant ON carts (tenant_id) |
| ux_carts_tenant_id | tenant_id,id | CREATE UNIQUE INDEX ux_carts_tenant_id ON carts (tenant_id, id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_carts_tenant | tenant_id | tenants(id) | ON DELETE RESTRICT |
| fk_carts_user | user_id | users(id) | ON DELETE SET |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| ux_carts_tenant_id | tenant_id, id |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_carts_tenant | tenant_id | CREATE INDEX IF NOT EXISTS idx_carts_tenant ON carts (tenant_id) |
| ux_carts_tenant_id | tenant_id,id | CREATE UNIQUE INDEX IF NOT EXISTS ux_carts_tenant_id ON carts (tenant_id, id) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_carts_tenant | tenant_id | tenants(id) | ON DELETE RESTRICT |
| fk_carts_user | user_id | users(id) | ON DELETE SET |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_carts | mysql | algorithm=MERGE, security=INVOKER | [schema\040_views.mysql.sql](schema\040_views.mysql.sql) |
| vw_carts_with_items | mysql | algorithm=TEMPTABLE, security=INVOKER | [schema\040_views_joins.mysql.sql](schema\040_views_joins.mysql.sql) |
| vw_carts | postgres |  | [schema\040_views.postgres.sql](schema\040_views.postgres.sql) |
| vw_carts_with_items | postgres |  | [schema\040_views_joins.postgres.sql](schema\040_views_joins.postgres.sql) |
