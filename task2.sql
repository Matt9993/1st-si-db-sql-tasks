SELECt companyname as Company,count (productname) as numberofproducts from products join suppliers on products.supplierid = suppliers.supplierid
group by company
order by numberofproducts desc 
