<cfcomponent>
<cffunction  name="grafikfunc" returntype="any" access="public">
<cfquery name="grafik" datasource="AcmeDSN" maxRows="5">
select Musteri,count(*) Sayi
from(
    select Case
when OrtalamaSatis>=40000 then '1.Grup(40000 +)'
when OrtalamaSatis<40000 and  OrtalamaSatis>=20000 then '2.Grup(40000-20000)'
when OrtalamaSatis<20000 and   OrtalamaSatis>=10000 then '3.Grup(20000-10000)'
when OrtalamaSatis<10000 and   OrtalamaSatis>=5000 then '4.Grup(10000-5000)'
when OrtalamaSatis<5000 then '5.Grup(5000 -)'
end as Musteri,CustomerId 
from (
select o.CustomerId,avg(OrderTotal) OrtalamaSatis
from [Order] o
inner join Customer c on o.CustomerId=c.Id 
group by o.CustomerId
)Tablo
)musteri 
group by Musteri 
order by Musteri
</cfquery>
<cfreturn grafik>
</cffunction>
</cfcomponent>