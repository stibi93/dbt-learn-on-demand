with payments as (

    select
        orderid as order_id,
        amount as amount 
    from {{ source('stripe', 'payment') }}

)

select * from payments