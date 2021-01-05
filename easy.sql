#1571
select name as "WAREHOUSE_NAME", sum(Width * Length * Height * units) as "VOLUME"
from warehouse
left join products
using (product_id)
group by name

#1581
select customer_id, count(visit_id) as 'count_no_trans'
from Visits 
where Visits.visit_id not in (
    select visit_id
    from Transactions
)
group by customer_id
order by 'count_no_trans' ASC, customer_id asc

# 1484
select sell_date, count(distinct product) as num_sold, group_concat(distinct product) as products
from activities
group by sell_date

