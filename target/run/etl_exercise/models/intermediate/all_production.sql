
  create or replace   view hejora.public.all_production
  
   as (
    with barley as (
    select * 
    from hejora.public.stg_barley_production
)

select * 
from barley
  );

