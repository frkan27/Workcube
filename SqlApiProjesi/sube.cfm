<cfprocessingdirective pageEncoding="utf-8">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://wiki.workcube.com/Education/catalyst.css">
    <title>Şube</title>
</head>
<body>
    <h1>Şubelere Göre Satış</h1>
    <cfquery name="Sube" datasource="AcmeDSN">
      SELECT b.[Name], CONVERT(VARCHAR(15),CAST(SUM(o.OrderTotal) AS MONEY),1) AS [ToplamTutar],c.[Name] AS [Kategori]
            FROM [Order] o 
            INNER JOIN OrderItem oi ON o.Id = oi.Id
            INNER JOIN Product p ON p.Id = oi.ProductId
            INNER JOIN Category c ON c.Id = p.CategoryId
            INNER JOIN Employee e ON e.Id = o.EmployeeId
           INNER JOIN Branch b ON b.Id = e.BranchId
           GROUP BY c.[Name],b.[Name]
           ORDER BY b.[Name]


    </cfquery>
    <div class="table-responsive-sm">
    <table class="table table-striped table-dark">
    <thead style="background-color: green;">
     <tr>
      <th>Adı</th>
      <th>Toplam Tutar</th>
      <th>Kategori</th>
     </tr>
    </thead>
    <tbody>
      <cfoutput query="Sube">
      <tr>
       <td>#Name#</td>
       <td>#ToplamTutar#</td>
       <td>#Kategori#</td>
    </tr>
    </cfoutput>
    </tbody>
    </table>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>

    