
  create or replace   view hejora.public.stg_coffee_bean_production
  
   as (
    with source as (
    select * 
    from hejora.public.coffee_bean_production
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
  );

