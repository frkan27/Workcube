<cfprocessingdirective pageEncoding="utf-8">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/css/table.css" type="text/css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://wiki.workcube.com/Education/catalyst.css">
    
    <title>Aylik</title>
</head>
<body>
        <h1>Kategoriye Göre Aylık Satış Raporu</h1>
    <cfquery name="Aylik" datasource="AcmeDSN">
   SELECT 
CASE
	WHEN MONTH(o.ItemSoldDate) = '1'  THEN 'OCAK'
	WHEN MONTH(o.ItemSoldDate) = '2'  THEN 'ŞUBAT'
	WHEN MONTH(o.ItemSoldDate) = '3'  THEN 'MART'
	WHEN MONTH(o.ItemSoldDate) = '4'  THEN 'NİSAN'
	WHEN MONTH(o.ItemSoldDate) = '5'  THEN 'MAYIS'
	WHEN MONTH(o.ItemSoldDate) = '6'  THEN 'HAZİRAN'
	WHEN MONTH(o.ItemSoldDate) = '7'  THEN 'TEMMUZ'
	WHEN MONTH(o.ItemSoldDate) = '8'  THEN 'AĞUSTOS'
	WHEN MONTH(o.ItemSoldDate) = '9'  THEN 'EYLÜL'
	WHEN MONTH(o.ItemSoldDate) = '10'  THEN 'EKİM'
	WHEN MONTH(o.ItemSoldDate) = '11'  THEN 'KASIM'
	WHEN MONTH(o.ItemSoldDate) = '12'  THEN 'ARALIK'
END AS Ay,
CONVERT(VARCHAR(15),CAST(SUM(o.OrderTotal) AS MONEY),1) AS [ToplamTutar],c.[Name] AS [ToplamSatis]
FROM [Order] o 
INNER JOIN OrderItem oi ON o.Id = oi.Id
INNER JOIN Product p ON p.Id = oi.ProductId
INNER JOIN Category c ON c.Id = p.CategoryId
GROUP BY MONTH(o.ItemSoldDate),c.[Name]
ORDER BY MONTH(o.ItemSoldDate),c.[Name]


    </cfquery>
   <table id="example" class="table table-striped table-dark">
    <thead style="background-color: green;">
     <tr>
      <th>AY</th>
      <th>Toplam Tutar</th>
      <th>Toplam Satış</th>
     </tr>
    </thead>
    <tbody>
    <cfoutput query="Aylik">
    <tr>
       <td>#Ay#</td>
       <td>#ToplamTutar#</td>
       <td>#ToplamSatis#</td>
    </tr>
    </cfoutput>
    </tbody> 
    </table>

</body>
</html>