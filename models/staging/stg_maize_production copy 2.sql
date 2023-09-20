with source as (
    select * 
    from {{source('snowflake', 'barley_production')}}
),

final as (
    select 
        ENTITY as entity, 
        CODE as code, 
        YEAR as year, 
        TONNES as tonnes, 
        'barley' as product
    from source
)

select * 
from final