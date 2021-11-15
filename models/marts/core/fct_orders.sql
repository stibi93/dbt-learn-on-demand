with payments as (
    select * from {{ref('stg_payments') }}
),

orders as (
    select * from {{ref('stg_orders') }}
),

final as (
    select 
        orders.order_id as order_id, 
        orders.customer_id as customer_id,
        payments.amount as amount 
    from orders
    inner join payments 
    on orders.order_id = payments.order_id
)

select * from final