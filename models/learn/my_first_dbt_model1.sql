

{{ config(materialized='table') }}

with FIRST_data as (

    select *  FROM FIRSTDB.FIRST.MYTABLE WHERE C_MKTSEGMENT = 'BUILDING'


)

select *
from FIRST_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
