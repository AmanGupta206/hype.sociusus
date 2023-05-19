<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Footer_FAQ.aspx.cs" Inherits="hype.sociusus.Footer_FAQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

     <!-- Bootstrap 4 CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>

     <%--bootstrap css--%>
    <link href="Bootstrap/cs/bootstrap.min.css" rel="stylesheet" />
     <%--datatable css--%>
    <link href="datatables/css/jquery.dataTables.min.css" rel="stylesheet" />
     <%--fontawesome css--%>
    <link href="fontawesome/css/all.css" rel="stylesheet" />


     <%--Custom css--%>
  <%--  <link href="css/CustomStyleSheet.css" rel="stylesheet" />--%>


    <%--jquery--%>
    <script src="Bootstrap/js/jquery-3.3.1.slim.min.js"></script>
    <%--popper js--%>       
    <script src="Bootstrap/js/popper.min.js"></script>
    <%--bootstrap js--%>
    <script src="Bootstrap/js/bootstrap.min.js"></script>
</head>
<body>  
    <form id="form1" runat="server">

<!--HEADER START-->
        <div style="position:sticky;  z-index:4;">
            <div class="row" >
                <div class="col-4 col-sm-8 col-md-10"> <%--for extra small than small than medium device--%>
                    <a href="https://localhost:44367/homepage.aspx">
                     <img src="images/hype.%202023-04-17%20195423.png"/ href="https://localhost:44367/homepage.aspx"/>
                    </a>
                 </div>
                 <div class="col-4 col-sm-2 col-md-1 "> 
                         <div class="dropdown show"  style="padding-top:10px">
                                  <a class="btn btn-secondary " href="#" role="button" id="dropdownMenuLink"  data-toggle="dropdown" >
                                      <img src="images/Dashboard%20Icons%20images/Screenshot%202023-05-02%20154408.png" />
                                  </a>
                              <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                <a class="dropdown-item" href="#"><img width="15px" src="images/Dashboard%20Icons%20images/Screenshot%202023-05-02%20155743.png" /> Dashboard</a>
                                <a class="dropdown-item" href="#"><i class="fa-solid fa-file"></i> My Documents</a>
                                <a class="dropdown-item" href="#"><i class="fa-solid fa-bars"></i> Templates</a>
                                  <a class="dropdown-item" href="#"><i class="fa-solid fa-image"></i> AI Images</a>
                                  <a class="dropdown-item" href="#"><i class="fa-solid fa-comment"></i> AI Chat</a>
                                  <a class="dropdown-item" href="#"><i class="fa-solid fa-headphones"></i> Speech to Text</a>
                                  <a class="dropdown-item" href="#"><i class="fa-solid fa-file"></i> All Documents</a>
                                  <a class="dropdown-item" href="#"><i class="fa-solid fa-gift"></i> Membership</a>
                                  <a class="dropdown-item" href="#"><i class="fa-solid fa-gear"></i> Account Settings</a>
                                  <a class="dropdown-item" href="#"><i class="fa-solid fa-right-from-bracket"></i> Logout</a>                 
                              </div>
                        </div>
                 </div>
                <div class="col-4 col-sm-2 col-md-1"> 
                   <div <%--style="position: relative;display: inline-block; margin-bottom:auto ; padding-top:40px;"--%>>
                       <label for="Language"></label>
                       <select name="Languge" id="Languge">
                           <option value="English">English</option>
                           <option value=" Arabic "> Arabic </option>
                           <option value="Bangali">Bangali</option>
                           <option value="Bulgarian">Bulgarian</option>
                           <option value="Chinese">Chinese</option>
                           <option value="English">English</option>
                           <option value="French">French</option>
                           <option value="German">German</option>
                           <option value="Hebrew">Hebrew</option>
                           <option value="Hindi">Hindi</option>
                           <option value="Italian">Italian</option>
                           <option value="Hindi">Hindi</option>
                           <option value="Japanese">Japanese</option>
                           <option value="Polish">Polish</option>
                           <option value="Romanian">Romanian</option>
                           <option value="Russian">Russian</option>
                           <option value="Spanish">Spanish</option>
                           <option value="Swedish">Swedish</option>
                           <option value="Thai">Thai</option>
                           <option value="Turkish">Turkish</option>
                           <option value="Urdu">Urdu</option>
                           <option value="Vietnamese">Vietnamese</option>
                        </select>
                     </div>              
                </div>
           </div>
            </div>
   
<%--Codes for main body--%>
       
      <div style="height:calc(100%-60px);background-color: #f5f5f5; padding-bottom:100px" class ="main"> 
          <div style="padding-top:5%; padding-bottom:5%;">
               <div class="row">                    
                           <div class="col-md-10 faqbtn"  >  
                                     <h2 style="padding-left:3%;">Frequently Asked Question</h2>                             
                           </div>                   
                           <div class="col-md-2" >                        
                               <asp:Button class="btn btn-secondary" ID="Button1" runat="server" Text="Home >> FAQ" />                             
                           </div>                    
                </div>
          </div>

<%--Main part of FAQ--%>    
            <div class="row" >            
                  <div class="col-md-12 mx-auto">
                   <div style="margin-right: 4%;margin-left: 4%;">  
                       <input class="btn btn-primary" type="button" id="togbtn" value="Lorem ipsum dolor sit amet"   style="width: 100%;  transition: 0.6s;"/>
                   </div>
 


                   <div class="abc" style="padding: 10px 60px 60px;">      
                       <div class="card">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vestibulum rhoncus libero ut condimentum. 
                            Etiam pretium diam odio, vitae varius dolor tristique quis. Fusce sodales dolor commodo iaculis vehicula. 
                            Maecenas laoreet leo massa, ut sagittis nulla pellentesque vel. In hac habitasse platea dictumst. In rhoncus vehicula tristique. 
                            Fusce auctor iaculis ornare. 
                            Duis condimentum est non massa lobortis, quis pellentesque nisi pulvinar. </p>
                       </div>
                    </div>           
                 </div>                    
            </div>

      </div>
           

<!-- Footer -->
     <div id="footer" style="background-color:#303030">
        <div class="footer-middle-section">
            <div class="container">
                <div class="row">
                    <div class="col-xl-5 col-lg-5 col-md-12">
                        <div class="footer-logo">
                            <img src="images/Footer%20all%20images/Screenshot%202023-04-27%20130014.png" alt="Logo">                           
                        </div>
                        <p style="color: white;">Create SEO-optimized and unique content for your blogs, ads, emails, and website 10X faster &amp; save hours of work with hype</p>
                    </div>
               <div class="col-xl-1 col-lg-1">
                 </div>
                    <div class="col-xl-2 col-lg-2 col-md-4">
                        <div style="color: white;" class="footer-links">
                            <h3>My Account</h3>
                                <ul>
                                    <li><a style="color: white;" href="#">Login</a></li><li><a style="color: white;" href="#">Register</a></li>                        
                               </ul>
                          </div>
                      </div>
                    <div class="col-xl-2 col-lg-2 col-md-4">
                        <div style="color: white;" class="footer-links">
                            <h3>Helpful Links</h3>
                                <ul>
                                    <li><a style="color: white;" href="#">Blog</a></li>                            
                                    <li><a style="color: white;"  href="http://hype.sociusus.com/feedback">Feedback</a></li>
                                    <li><a style="color: white;"  href="#">Contact</a></li>
                                </ul>
                        </div>
                    </div>
                  <div class="col-xl-2 col-lg-2 col-md-4">
                        <div style="color: white;" class="footer-links">
                            <h3>Information</h3>
                                 <ul>
                                    <li><a style="color: white;" href="#">FAQ</a></li>
                                    <li><a style="color: white;" href="#">Testimonials</a></li>                        
                                </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     <hr style="border-top: dotted 1px;" /> 
        <div class="footer-bottom-section">                   
                <div class="container-fluid"  >
                     <div class="row">
                        <div class="col-xl-12">
                          <div style="color: white;" class="footer-row">
                              
                                 
                                     <span style="float:left" class="footer-copyright-text">2023 Socius IGB Pvt Ltd, All right reserved</span>
                              

                                         <span style="float:right"> <a href="#" target="_blank" rel="nofollow"><i class="fa-brands fa-twitter"></i> </a>
                               

                                  
                                        <a href="#" target="_blank" rel="nofollow"><i class="fa-brands fa-instagram"></i></a>
                            

                                         <a href="#" target="_blank" rel="nofollow"><i class="fa-brands fa-linkedin-in"></i></a>
                             
                      
                                         <a href="#" target="_blank" rel="nofollow"><i class="fa-brands fa-pinterest"></i></a>
                             

                                         <a href="#" target="_blank" rel="nofollow"><i class="fa-brands fa-youtube"></i></a></span></div>                        
                                    </div>                        
                               </div>
                           </div>
                      </div>
                </div>       

    </form>

<%--Script for Hide and show--%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script>
    $(document).ready(function () {
        $("#togbtn").on("click", function () {

            $(".abc").toggle();

        });
       
    });
</script>

</body>
</html>
