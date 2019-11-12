<!DOCTYPE html>
<html lang="en">
<head>
   
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="main.css" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Intranet</title>
</head>
<body>
  <nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
                <button class="navbar-toggler"  data-toggle="collapse" data-target="#collapse_target">
                   <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="collapse_target">
                  <ul class="navbar-nav">
                    <li class="nav-item active">
                      <a class="nav-link" href="#">LİTERATÜR </a>
                    </li>
                    <li class="nav-item active">
                      <a class="nav-link" href="#">FORUM</a>
                    </li>
                    <li class="nav-item active">
                      <a class="nav-link" href="#">DİGİTAL ARŞİV</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#">KİM KİMDİR? </a>
                      </li>
                      <li class="nav-item active">
                        <a class="nav-link" href="#">EĞİTİM</a>
                      </li>
                      <li class="nav-item active">
                        <a class="nav-link" href="#">SOSYAL</a>
                      </li>
                      <li class="nav-item active">
                        <a class="nav-link" href="#">DİĞER</a>
                      </li>
                  </ul>
                </div>
              </nav>

              <div class="container">
                 <div class="row">
                     <div class="col-sm">
                          <h4 style="color: green;">TAZE BİLGİ</h4>
                         <div class="row">
                         <cfset api = createObject("component","cfc.api")>
                         <cfset getPhoto = api.FotoGetir()>
                         <cfoutput query="getPhoto">
                            <div class="col-sm-6">
                                        <div style="background-color: skyblue;" style="width: 150px; height: 150px;">
                                          <img src="#Path#"width="100%" height="150px"/><br/>
                                          <font style="color: purple;"><b>#Name#</b></font><br/>
                                          <font size="2px">#Job#</font><br/>
                                          <font size="1px">#Info#</font><br/>
                                        </div>
                                        <br/>
                                    </div>
                         </cfoutput>
                                
                                   
                         </div>
                        
                     </div>
                     <div class="col-sm">
                         <h4 style="color: green;">GÜNCEL TARTIŞMALAR</h4>
                         <div class="row">
                           <div class="col-sm-4">
                            <h5 style="color: red;">75</h5>
                            <h6>FORUM</h6>
                           </div>
                           <div class="col-sm-4">
                            <h5 style="color: red;">612</h5>
                            <h6>KONU</h6>
                          </div>
                          <div class="col-sm-4">
                            <h5 style="color: red;">7.2K</h5>
                            <h6>CEVAP</h6>
                          </div>
                         </div>                     
                         <div class="row">
                          <div class="col-sm-3">
                                  <div class="dairesel">
                                      <a href="#"><img src="ıntranet/img/elon.jpg" style="border-radius: 150px; -webkit-border-radius:150px; -moz-border-radius:150px;"  width="50px" height="50px" /></a>
                                  </div>  
                              </div>
                              <div class="col-sm-9">
                                  <b>Elon Mask</b><br/>
                                 <font size="2px"><i>26.10.2019 15:16</i></font> <br/>
                                 <font size="2px"><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit rerum aliquam enim.</p> 
                                  </div>
                                 </div>
                                 <div class="row">
                                  <div class="col-sm-3">
                                          <a href="#"><img src="ıntranet/img/audrey.jpg" style="border-radius: 150px; -webkit-border-radius:150px; -moz-border-radius:150px" width="50px" height="50px" /></a>
                                          
                                      </div>
                                      <div class="col-sm-9">
                                          <b>Audrey Hepburn</b><br/>
                                          <font size="2px"><i>26.10.2019 15:16</i></font> <br/>
                                          <font size="2px"><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit rerum aliquam enim.</p> 
                                        </div>
                                </div>
                                         <div class="row">
                                          <div class="col-sm-3">
                                                  <a href="#"><img src="ıntranet/img/elon.jpg" style="border-radius: 150px; -webkit-border-radius:150px; -moz-border-radius:150px" width="50px" height="50px" /></a>
                                                  
                                              </div>
                                              <div class="col-sm-9">
                                                  <b>Elon Mask</b><br/>
                                                  <font size="2px"><i>26.10.2019 15:16</i></font> <br/>
                                                  <font size="2px"><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit rerum aliquam enim.</p>
                                                </div>
                                                 </div>
                                                 <div class="row">
                                                    <div class="col-sm-3">
                                                            <a href="#"><img src="ıntranet/img/audrey.jpg" style="border-radius: 120px; -webkit-border-radius:120px; -moz-border-radius:150px;" width="50px" height="50px" /></a>
                                                            
                                                        </div>
                                                        <div class="col-sm-9">
                                                            <b>Audrey Hepburn</b><br/>
                                                            <font size="2px"><i>26.10.2019 15:16</i></font> <br/>
                                                            <font size="2px"><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sit rerum aliquam enim.</p> 
                                                          </div>
                                                           </div>
                   </div>
                       
                        <div class="col-sm">
                         
                            <a href="#"><img src="ıntranet/img/yasam.jpg" width="300px" height="400px" /></a>
                           
                          
                          <div>
                              <a href="#"><img src="ıntranet/img/sosyal.jpg" width="100%" height="100px" /></a>
                              </div>
                              
                                <div class="row">
                                  <div class="col-sm">
                                      <a href="#" class="fa fa-facebook"></a> Facebook
                                  </div>
                                  <div class="col-sm">
                                      <a href="#" class="fa fa-twitter"></a> Twitter
                                  </div>
                                </div>
                                  <div class="row">
                                      <div class="col-sm">
                                          <a href="#" class="fa fa-google"></a> Google 
                                      </div>
                                      <div class="col-sm">
                                          <a href="#" class="fa fa-linkedin"></a> Linkedin
                                      </div>
                                    </div>
                                      <div class="row">
                                          <div class="col-sm">
                                              <a href="#" class="fa fa-youtube"></a> Youtube
                                          </div>
                                          <div class="col-sm">
                                              <a href="#" class="fa fa-instagram"></a> İnstagram
                                          </div>
                                      </div>
                        
                  </div>
              </div>

     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>