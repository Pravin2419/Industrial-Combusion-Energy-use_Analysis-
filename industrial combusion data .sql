create database project_3;
use project_3;
-------------------------------------------------------------
select Fuel_Type, MMBtu_TOTAL, GWht_TOTAL 
from data_1 where Fuel_Type in ('Ethanol (100%)', 'ethane')
group by Fuel_Type;
--------------------------------------------------------------------------------
select mecs_region , round(((sum(mmbtu_total)/10570163192) * 100)/2 ,2) as Sum_of_MMBtu_TOTAL
from data_1 group by mecs_region  ;

---------------------------------------------------------------------------------------------------------
select  Unit_Name, sum(GWht_TOTAL) from data_1 where Unit_Name between "1950-01-01" and  "2023-12-31";
---------------------------------------------------------------------------------------------------------------
select PRIMARY_NAICS_TITLE, County, round(count(FACILITY_NAME)/2,2) as Count_Of_Facility_Name 
from data_1 where PRIMARY_NAICS_TITLE='Solid Waste Landfill' 
group by county 
order by County ;
--------------------------------------------------------------------------------------------------------------------
select mmbtu_total, gwht_total , round(((sum(mmbtu_total)/10570163192) * 100)/2,2) as Sum_of_MMBtu_TOTAL, 
round(((sum(GWht_TOTAL)/3097828.679) * 100)/2,2) as Sum_of_GWht_TOTAL 
from data_1 as D1 group by D1.grouping;
------------------------------------------------------------------------------------------------------------------------
select mmbtu_total, gwht_total, d1.grouping from data_1 as D1 where D1.grouping ='Administrative and Support and Waste Management and Remediation Services'