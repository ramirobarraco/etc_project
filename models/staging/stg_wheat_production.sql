with source as (
    select * 
    from {{source('snowflake', 'wheat_production')}}
),

final as (
    select 
        ENTITY as entity, 
        CODE as code, 
        YEAR as year, 
        TONNES as tonnes, 
        'wheat' as product
    from source
)

select * 
from final