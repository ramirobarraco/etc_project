with source as (
    select * 
    from hejora.public.wheat_production
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