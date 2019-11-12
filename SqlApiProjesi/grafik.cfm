<cfprocessingdirective pageEncoding="utf-8">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Grafik</title>
</head>
<body>
    <h1>Müşteri Gruplama</h1>
    <cfset api=createObject("component","cfc.api")>
    <cfset getGrafik=api.grafikfunc()>
            <cfchart format="png" pieslicestyle="solid" chartWidth="600" chartHeight="400">
                    <cfchartseries  type="pie" serieslabel="Müşteri" >
                        <cfoutput query="getGrafik">
                            <cfchartdata item="#Musteri#" value="#Sayi#"></cfchartdata>
                        </cfoutput>
                    </cfchartseries>
            </cfchart>

</body>
</html>

