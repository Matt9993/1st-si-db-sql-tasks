SELECt companyname as Company,count (productname) as Product from products join suppliers on products.supplierid = suppliers.supplierid
group by company
having count(productname)>= 5
order by product desc,Company asc 
