with barley as (
    select * 
    from {{ref("stg_barley_production")}}
)

select * 
from barley