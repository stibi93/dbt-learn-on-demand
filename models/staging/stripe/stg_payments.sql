with payments as (

    select
        orderid as order_id,
        amount as amount 
    from raw.stripe.payment

)

select * from payments