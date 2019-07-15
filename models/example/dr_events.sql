select *
from {{ var('inventory_table') }}
where store_id = 2
