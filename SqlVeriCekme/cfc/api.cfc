<cfcomponent>
<cffunction  name="FotoGetir" returnFormat="JSON" returntype="any">
<cfargument  name="foto">
<cfquery name="seciliFoto" datasource="workcubeDSN">
   SELECT * FROM Photo
</cfquery>
<cfreturn seciliFoto>
</cffunction>
</cfcomponent>