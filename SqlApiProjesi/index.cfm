<cfprocessingdirective pageEncoding="utf-8">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://wiki.workcube.com/Education/catalyst.css">
    <title>Müşteri</title>
</head>
<body>
<h1>Müşteriye Göre Ortalama Satış</h1>
    <cfquery name="MüsteriSatis" datasource="AcmeDSN">
      select o.CustomerId,c.[Name],c.Surname,c.Email,AVG(o.OrderTotal) as OrtalamaSatis
      from [Order] o
      inner join Customer c on o.CustomerId = c.Id
      group by CustomerId,c.[Name],c.Surname,c.Email

    </cfquery>
   <table class="table table-striped table-dark">
    <thead style="background-color: green;">
      <th>Adı</th>
      <th>Soyadı</th>
      <th>Mail</th>
      <th>Ortalama Satış</th>
     </tr>
    </thead>
    <tbody>
      <cfoutput query="MüsteriSatis">
          <tr>
       <td>#Name#</td>
       <td>#Surname#</td>
       <td>#Email#</td>
       <td>#OrtalamaSatis#</td>
    </tr>
    </cfoutput>
    </tbody>
    </table>
</body>
</html>