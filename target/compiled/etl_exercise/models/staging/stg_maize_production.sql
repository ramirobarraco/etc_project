with source as (
    select * 
    from hejora.public.maize_production
),

final as (
    select 
        ENTITY as entity, 
        CODE as code, 
        YEAR as year, 
        TONNES as tonnes, 
        'maize' as product
    from source
)

select * 
from final