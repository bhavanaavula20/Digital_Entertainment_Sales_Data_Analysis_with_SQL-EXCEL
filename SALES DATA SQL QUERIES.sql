
/*sales Data Analysis using SQL Workbench*/


use project;

/*Retrive the whole data*/

select * from project.salesdata;

/*Retrive the Specific data*/

select distinct item from project.salesdata;
select distinct Region from project.salesdata;
select distinct SalesMan from project.salesdata;
select distinct Manager from project.salesdata;

/*Removing Duplicate columns*/

select  distinct Item from project.salesdata
where Region="East";

/*Total sales by Region*/

select Region,sum(sale_amt)As Total_sales from project.salesdata
group by Region
order by Total_sales desc;

/*Best selling items*/

select item ,sum(Units) as Total_units_sold from salesdata
group by item
order by Total_units_sold desc;

/*sales performance by Manager*/

select Manager,sum(sale_amt) as Total_sales,
Avg(sale_amt) as Average_sale from project.salesdata
group by Manager
order by Total_sales;


/*salesmen by Region*/


select Region,Salesman,SUM(Sale_amt) as Total_sales from project.salesdata
group by Region,SalesMan
order by  Region, Total_sales Desc;


/*Average sale Amount by item*/


select item,avg(sale_amt) as Average_sale from project.salesdata
group by item
order by Average_sale Desc;

/*Toatal sales by order*/

select OrderDate ,
sum(Sale_amt) as Total_sales from project.salesdata
group by OrderDate
order by Total_sales desc
limit 15;

/* sales performance by Region and manager*/

select Region,Manager,sum(Sale_amt) as Total_sales from project.salesdata
group by Region,Manager
order by Region,Total_Sales desc;

/*Retiving each item unit price*/

select distinct Item,Unit_price from project.salesdata;









