with source as (
    select * 
    from hejora.public.tomato_production
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