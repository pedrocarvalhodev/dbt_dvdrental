with source as (

    select * from {{ref('dr_events')}} 

),

grouped as (

    select 
        film_id as film_id,
        count(inventory_id) as inventory_id_count
    from source
    group by film_id
    )

select * from grouped