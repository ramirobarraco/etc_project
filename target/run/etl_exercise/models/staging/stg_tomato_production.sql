
  create or replace   view hejora.public.stg_tomato_production
  
   as (
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
  );

