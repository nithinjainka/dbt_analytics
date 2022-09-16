
-- Use the `ref` function to select from other models

select *
from {{ ref('dbt_companies') }}
where type_name = 'Company'
