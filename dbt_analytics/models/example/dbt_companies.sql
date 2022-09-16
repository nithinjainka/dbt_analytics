
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (

    select id,company_name,parent_id,customer_number,
type_name 
from ingestion.companies
    -- select  id, 'Company Name 1' as name
    -- union all
    -- select null as id, 'Company Name 2' as name

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
