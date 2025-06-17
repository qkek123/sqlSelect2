SELECT  USER_ID, PRODUCT_ID
from ONLINE_SALE
group by USER_ID, PRODUCT_ID
having count(*) >=2
order by User_ID, PRODUCT_ID DESC;