<cfprocessingdirective pageEncoding="utf-8">
<cfparam name = "form.hediye_gonderenAd" default = "">
<cfparam name = "form.hediye_aliciAd" default = "">
<cfparam name = "form.hediye_yakinlik" default = "">
<cfparam name = "form.hediye_hediye" default = "">
<cfparam name = "form.hediye_adres" default = "">
<cfparam name = "form.hediye_not" default = "">


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://wiki.workcube.com/Education/catalyst.css">
    <link rel="stylesheet" href="acme.css" type="text/css" />
    
    <title>Acme</title>
</head>
<body>

    
   
            <div style="text-align: center;">
                    <nav class="navbar">
                            <div class="logo" style="text-align:center">
                                <a href="#"><img src="acme/logo.jpg"/></a>
                                <h4>ACME Corporation Yılbaşı Hediye Sayfasına Hoş Geldiniz.</h4>
                            </div>
                        </nav>
               </div>
                  
        <cfif isdefined("form.is_submit") and len(form.is_submit)>
    <cfquery name = "INSERT_HEDIYE" datasource = "workcubeDSN">
        INSERT INTO [HEDIYE].[dbo].[HEDIYESEC] (
           GONDADI,
           ALICIADI,
           YAKINLIK,
           HEDIYESEC,
           ADRES,
           NOTUNUZ
        ) VALUES (
            <cfqueryparam cfsqltype="cf_sql_nvarchar" value="#form.hediye_gonderenAd#">,
            <cfqueryparam cfsqltype="cf_sql_nvarchar" value="#form.hediye_aliciAd#">,
            <cfqueryparam cfsqltype="cf_sql_nvarchar" value="#form.hediye_yakinlik#">,
            <cfqueryparam cfsqltype="cf_sql_nvarchar" value="#form.hediye_hediye#">,
            <cfqueryparam cfsqltype="cf_sql_nvarchar" value="#form.hediye_adres#">,
            <cfqueryparam cfsqltype="cf_sql_nvarchar" value="#form.hediye_not#">
        )
    </cfquery>
</cfif>
 <cfform name = "youngdev_form" action="" method="post">
 <cfoutput>
        <div class="row">
            <div class="col-md-6 col-xs-12" type="column" index = "1" sort="true" id="aaa">
            <div class="form-group" id="baslik">
                            
                           <label class="col col-6 col-xs-2" >
                                GÖNDEREN:
                            </label>
                           
                        </div>
                    <div class="form-group" id = "adı">
                            
                           <label class="col col-6 col-xs-2">
                                Adınız ve Soyadınız:
                            </label>
                           <div class="col col-6 col-xs-10">
                                    <input type = "text" name="hediye_gonderenAd" id = "hediye_gonderenAd" value="#form.hediye_gonderenAd#" placeholder="Ad ve Soyad Giriniz">
                                <input type = "hidden" name = "is_submit" id = "is_submit" value = "1">
                            </div>
                        </div>
                         <div class="form-group" id="baslik">
                            
                           <label class="col col-8 col-xs-2" >
                                HEDİYE GÖNDERİLECEK KİŞİ:
                            </label>
                           
                        </div>
                        <div class="form-group" id = "alıcıAdı">
                               
                               <label class="col col-6 col-xs-2">
                                   Adı ve Soyadı:
                                </label>
                               <div class="col col-6 col-xs-10">
                                        <input type = "text" name="hediye_aliciAd" id = "hediye_aliciAd" value="#form.hediye_aliciAd#" placeholder="Ad ve Soyad Giriniz">
                                   
                                </div>
                            </div>
                            <div class="form-group" id = "ad">
                                   <label class="col col-6 col-xs-2">
                                        Yakınlık Derecesi:
                                    </label>
                                    <div class="col col-6 col-xs-10">
                                            <select name="hediye_yakinlik">              
                                                <option value="Anne">Anne</option>
                                                <option value="Baba">Baba</option>
                                                <option value="Cocuk">Çocuk</option>
                                                <option value="Es(Sevgili)">Eş(Sevgili)</option>
                                                <option value="Kardes">Kardeş</option>
                                                <option value="Arkadas">Arkadaş</option> 
                                            </select>
                                       
                                    </div>
                                </div>
                                <div class="form-group" id = "ad">
                                        <label class="col col-6 col-xs-2">
                                            Hediye Seçimi:
                                        </label>
                                       <div class="col col-6 col-xs-10">
                                                <select name="hediye_hediye" >
                                                    <option value="Lego Seti">Lego Seti</option>
                                                    <option value="Kuruyemis">Kuruyemiş</option>
                                                    <option value="Kahve Makinesi">Kahve Makinesi</option>
                                                    <option value="Piyango Bileti">Piyango Bileti</option>
                                                    <option value="Kaskol">Kaşkol</option>                                      
                                                </select>
                                           
                                        </div>
                                    </div>
                             <div class="form-group" id = "adres">
                                <label class="col col-6 col-xs-2">
                                    Adres:
                                </label>
                                <div class="col col-6 col-xs-10">
                                       <input type = "text" name="hediye_adres" id = "hediye_adres" value="#form.hediye_adres#" placeholder="Adres Giriniz">
                                   
                                </div>
                            </div>
                            <div class="form-group" id = "not">
                                   <label class="col col-6 col-xs-2">
                                        Notunuz:
                                    </label>
                                   <div class="col col-6 col-xs-10">
                                       <input type = "text" name="hediye_not" id = "hediye_not" value="#form.hediye_not#" placeholder="Notunuzu Giriniz">
                                    </div>
                                </div>
                                <div class="col col-6 col-xs-10">
                                        <input type="submit" name="btnOk" id="btnOk" class="btn btn-success"> 
                                    </div>  

            </div>
          <div class="col-md-6 col-xs-12" id="lee">
           
          </div>
        </div>
       
    
    
  </cfoutput>
    </cfform>

</body>
</html>