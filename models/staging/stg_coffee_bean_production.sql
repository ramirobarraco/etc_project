with source as (
    select * 
    from {{source('snowflake', 'coffee_bean_production')}}
),

final as (
    select 
        ENTITY as entity, 
        CODE as code, 
        YEAR as year, 
        TONNES as tonnes, 
        'coffee bean' as product
    from source
)

select * 
from final