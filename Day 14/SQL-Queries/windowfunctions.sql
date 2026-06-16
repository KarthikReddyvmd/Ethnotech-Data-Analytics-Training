use sampledb;

select * from inventoryrecordssampledata;

SELECT 
    productid,
    productname,
    openingstock,
    purchase,
    unitssold,
    handinstock,
    SUM(unitssold) OVER (PARTITION BY productname) AS total_units_sold_per_product
FROM inventoryrecordssampledata;

SELECT 
    productname,
    costpriceperunit(usd),
    RANK() OVER (PARTITION BY productname ORDER BY costpriceperunit(usd) DESC) AS rank_in_category
FROM inventoryrecordssampledata;

SELECT 
    productid,
    productname,
    openingstock,
    purchase,
    unitssold,
    handinstock,
    ROW_NUMBER() OVER (ORDER BY handinstock) AS row_num,
    COUNT(*) OVER (PARTITION BY openingstock) AS count_per_openingstock,
    MAX(purchase) OVER (PARTITION BY openingstock) AS max_purchase_per_openingstock
FROM inventoryrecordssampledata;

select * , first_value(productid) over
(order by handinstock desc) as
highest from inventoryrecordssampledata;
