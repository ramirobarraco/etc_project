with source as (
    select * 
    from {{source('snowflake', 'tomato_production')}}
),

final as (
    select 
        ENTITY as entity, 
        CODE as code, 
        YEAR as year, 
        TONNES as tonnes, 
        'tomato' as product
    from source
)

select * 
from final