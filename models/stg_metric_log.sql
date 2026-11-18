{{ 
    config(
        materialized='table',
        schema='stg',
        tags=['stg', 'metric_log'],
    )
}}
select * from {{ source('aa_database', 'metric_log') }}