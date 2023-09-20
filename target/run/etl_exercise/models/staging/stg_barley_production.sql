
  create or replace   view hejora.public.stg_barley_production
  
   as (
    with source as (
    select * 
    from hejora.public.barley_production
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
  );

