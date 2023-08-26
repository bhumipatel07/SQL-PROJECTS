show databases;
use fingertips;
show tables;
select * from class;

#1 1. WRITE a sql query to show all Item_Identifier
select Item_Identifier from class;

#2. WRITE a sql query to show count of total Item_Identifier
select count(distinct Item_Identifier)as total_Item_Identifier from class;

#3WRITE a sql query to show maximum Item Weight
select max(Item_Weight) from class;

#4WRITE a query to show minimun  WeItemight
select min(Item_Weight) from class;

#5 WRITE a query to show average Itemight
select round(avg(Item_weight)) from class; 

##6 WRITE a query TO  show count OF Item_Fat_Content WHERE Item_Fat_Content IS Low Fat
select count(Item_Fat_Content) from class where Item_Fat_Content ="low fat";

select * from class;

#7 WRITE a query TO  show count OF Item_Fat_Content WHERE Item_Fat_Content IS Regular
select count(Item_Fat_Content) from class where Item_Fat_Content ="Regular";

#8 WRITE a query TO  show maximum Item_MRP
select max(item_mrp) from class;

#9 WRITE a query TO  show minimum Item_MRP
select min(item_mrp) from class; 

#10 WRITE a query TO  show Item_Identifier , 
#Item_Fat_Content ,Item_Type,Item_MRP and  Item_MRP IS greater than 200
select Item_Identifier , Item_Fat_Content ,Item_Type,Item_MRP from class where item_mrp >200;

#11 WRITE a query TO  show maximum Item_MRP WHERE  Item_Fat_Content IS Low Fat
select  max(item_mrp) from class where  Item_Fat_Content= 'Low Fat'

#12 WRITE a query TO  show minimum Item_MRp AND Item_Fat_Content IS Low Fat
select  min(item_mrp) from class where  Item_Fat_Content= 'Low fat'

#13 WRITE a query TO  show ALL DATA WHERE item MRP IS BETWEEN 50 TO 100
select * from class where item_mrp between 50 and 100;

select count(*) from class where item_mrp between 50 and 100;

#14 WRITE a query TO  show ALL UNIQUE value Item_Fat_Content
select distinct (item_fat_content) from class;

#15 WRITE a query TO  show   ALL UNIQUE value Item_Type
select distinct (item_type) from class;

#16 WRITE a query TO  show ALL DATA IN descending ORDER BY Item MRP
select * from class order by item_mrp desc;

#17 WRITE a query TO  show ALL DATA IN ascending ORDER BY Item_Outlet_Sales
select * from class order by item_Outlet_Sales asc

#18 WRITE a query TO  show ALL DATA IN ascending BY Item_Type
select * from class order by item_type asc

#19 WRITE a query TO  show DATA OF item_type dairy & Meat
select * from class where item_type in ('dairy','meat')

#20 WRITE a query TO  show ALL UNIQUE value OF Outlet_Size
select distinct (outlet_size) from class

#21 WRITE a query TO  show ALL UNIQUE value OF Outlet_Location_Type
select distinct (Outlet_Location_Type) from class

#22 WRITE a query TO  show ALL UNIQUE value OF Outlet_Type
select distinct (outlet_type) from class

#23 WRITE a query TO  show count NO. OF item BY Item_Type AND ordered it IN descening
select count(Item_Identifier) as no_of_item
from class group by Item_Type order by no_of_item desc;

select * from class;

#24 WRITE a query TO  show  count NO. OF item BY Outlet_Size AND ordered it IN ascening
select count(Item_Identifier) as no_of_item
from class group by Outlet_Size order by no_of_item desc;

#25 WRITE a query TO  show  count NO. OF item BY Outlet_Establishment_Year AND ordered it IN ascening
select count(Item_Identifier) as no_of_item
from class group by Outlet_Establishment_Year  order by no_of_item desc;

#26 WRITE a query TO  show  count NO. OF item BY Outlet_Type AND ordered it IN descening
select count(Item_Identifier) as no_of_item
from class group by Outlet_Type  order by no_of_item desc;

#27 WRITE a query TO  show ount NO. OF item BY Outlet_Location_Type AND ordered it IN descening
select count(Item_Identifier) as no_of_item
from class group by Outlet_Location_Type order by no_of_item desc;

#28 WRITE a query TO  show maximum MRP BY Item_Type
select max(item_mrp),item_type from class group by Item_Type 

#29 WRITE a query TO  show minimum MRP BY Item_Type
select min(item_mrp),item_type from class group by Item_Type 

#30 WRITE a query TO  show minimum MRP BY Outlet_Establishment_Year AND ordered it IN descending
select min(item_mrp),outlet_Establishment_Year from class 
group by outlet_Establishment_Year order by min(item_mrp)desc;

#31 WRITE a query TO  show maximum MRP BY Outlet_Establishment_Year AND ordered IN descending
select max(item_mrp),outlet_Establishment_Year from class 
group by outlet_Establishment_Year order by max(item_mrp)desc;

#32 WRITE a query TO  show average MRP BY Outlet_Size AND ordered IN descending
select outlet_size,avg(item_mrp) as avg_mrp from class 
group by Outlet_Size order by avg(Item_MRP) desc

#33 WRITE a query TO  show average MRP BY Outlet_Size
select outlet_size,avg(item_mrp) as avg_mrp from class group by outlet_size

#34.WRITE a query to show Average MRP BY Outlet_Type AND ordered IN ascending
select outlet_size,avg(item_mrp) as avg_mrp from class 
group by Outlet_Size order by avg(Item_MRP) asc

#35 WRITE a query TO  show maximum MRP BY Outlet_Type
select outlet_type,max(item_mrp) from class group by outlet_type 

#36 WRITE a query TO  show maximum  Item_Weight BY Item_Type 
select item_type,max(item_weight) from class group by item_type

#37 WRITE a query TO  show maximum  Item_Weight BY Outlet_Establishment_Year 
select max(item_weight),Outlet_Establishment_Year  from class group by Outlet_Establishment_Year ;

#38 WRITE a query TO  show minimum  Item_Weight BY Outlet_Type
select min(item_weight),Outlet_Type  from class group by outlet_type

#39 WRITE a query TO  show average Item_Weight BYOutlet_Location_Type  ORDER BY descending
select avg(item_weight), Outlet_Location_Type  from class group by Outlet_Location_Type 
order by Item_Weight desc 

#40 WRITE a query TO  show maximum  Item_Outlet_Sales BY  Item_Type
select min(Item_Outlet_Sales),item_type from class group by item_type

#41 WRITE a query TO  show minimum  Item_Outlet_Sales BY  Item_Type
select min(Item_Outlet_Sales ),item_type from class group by Item_Type 

#42 WRITE a query TO  show minimum Item_Outlet_Sales BY Item_Outlet_Sales
select min(Item_Outlet_Sales), Item_Outlet_Sales from class group by Item_Outlet_Sales

#43 WRITE a query TO  show maximum Item_Outlet_Sales BY Outlet_Establishment_Year ordered BY descending
select max(Item_Outlet_Sales),Outlet_Establishment_Year from class 
group by Outlet_Establishment_Year order by  max(Item_Outlet_Sales) desc;

#44 WRITE a query TO  show average Item_Outlet_Sales BY  Outlet_Size AND ORDER it itn descending
select avg(Item_Outlet_Sales),Outlet_Size from class 
group by Outlet_Size order by avg(Item_Outlet_Sales) desc

#45 WRITE a query TO  show average Item_Outlet_Sales BY Outlet_Size 
select avg(Item_Outlet_Sales),outlet_size from class
group by outlet_size


#46 WRITE a query TO  show average Item_Outlet_Sales BY Outlet_Type
select avg(item_outlet_sales),outlet_type from class group  by outlet_type 

#47 WRITE a query TO  show maximum Item_Outlet_Sales BY Outlet_Type
select max(item_outlet_sales),outlet_type from class group  by outlet_type
;
 select distinct(Outlet_Type) from class;

#48 WRITE a query TO  show total Item_Outlet_Sales BY Outlet_Establishment_Year
select count(distinct Item_Outlet_Sales),Outlet_Establishment_Year from class
group by Outlet_Establishment_Year;

#49 WRITE a query TO  show total Item_Outlet_Sales BY Item_Type
select count(distinct Item_Outlet_Sales ) , item_type from class group by Item_type;

#50 WRITE a query TO  show  total Item_Outlet_Sales BY Outlet_Location_Type
select count(distinct Item_Outlet_Sales ) , Outlet_Location_Type from class
group by Outlet_Location_Type;

#51 WRITE a query TO  show total Item_Outlet_Sales BY Item_Fat_ContentOutlet_Location_Type;
select count(distinct Item_Outlet_Sales ) , Item_Fat_Content from class
group by Item_Fat_Content;

#52 WRITE a query TO  show maximum  Item_Visibility BY  Item_Type
select max(Item_Visibility),item_type from class group by Item_Type 

#53 WRITE a query TO  show Minimum Item_Visibility BY Item_Type 
select min(Item_Visibility),item_type from class group by Item_Type 

#54 WRITE a query TO  show total  Item_Outlet_Sales BY Item_Type but ONLY WHERE 
# Outlet_Location_Type IS Tier 1
select count(Item_Outlet_Sales),item_type, Outlet_Location_Type  from class c  
group by Item_Type having Outlet_Location_Type = 'Tier 1';

select * from class;

#55 WRITE a query TO  show total Item_Outlet_Sales 
#BY ,Item_Type WHERE Item_Fat_Content IS ONLY Low Fat & LF
select count(Item_Outlet_Sales ),Item_Type,Item_Fat_Content   from class c 
group by Item_Type having Item_Fat_Content ="low fat";