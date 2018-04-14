SELECt companyname as Company,count (productname) as Product from products join suppliers on products.supplierid = suppliers.supplierid
group by company
order by product desc,company asc
