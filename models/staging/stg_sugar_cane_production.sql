with source as (
    select * 
    from {{source('snowflake', 'sugar_cane_production')}}
),

final as (
    select 
        ENTITY as entity, 
        CODE as code, 
        YEAR as year, 
        TONNES as tonnes, 
        'sugar cane' as product
    from source
)

select * 
from final