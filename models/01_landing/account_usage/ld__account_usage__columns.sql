select
    column_id as __id,
    --
    column_id,
    column_name,
    table_id,
    table_name,
    table_schema_id,
    table_schema,
    table_catalog_id,
    table_catalog,
    ordinal_position,
    column_default,
    is_nullable,
    data_type,
    character_maximum_length,
    character_octet_length,
    numeric_precision,
    numeric_precision_radix,
    numeric_scale,
    datetime_precision,
    interval_type,
    interval_precision,
    character_set_catalog,
    character_set_schema,
    character_set_name,
    collation_catalog,
    collation_schema,
    collation_name,
    domain_catalog,
    domain_schema,
    domain_name,
    udt_catalog,
    udt_schema,
    udt_name,
    scope_catalog,
    scope_schema,
    scope_name,
    maximum_cardinality,
    dtd_identifier,
    is_self_referencing,
    is_identity,
    identity_generation,
    identity_start,
    identity_increment,
    identity_maximum,
    identity_minimum,
    identity_cycle,
    identity_ordered,
    comment,
    deleted
from
    snowflake.account_usage.columns

{% if var("source_filter_out_deleted") %}
-- filter out the deleted objects
where deleted is null
{% endif %}
