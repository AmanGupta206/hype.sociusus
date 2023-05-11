<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testimonials_inner_page.aspx.cs" Inherits="hype.sociusus.testimonials_inner_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <%--bootstrap css--%>
    <link href="Bootstrap/cs/bootstrap.min.css" rel="stylesheet" />
     <%--datatable css--%>
    <link href="datatables/css/jquery.dataTables.min.css" rel="stylesheet" />
     <%--fontawesome css--%>
    <link href="fontawesome/css/all.css" rel="stylesheet" />


     <%--Custom css--%>
    <link href="css/CustomStyleSheet.css" rel="stylesheet" />


    <%--jquery--%>
    <script src="Bootstrap/js/jquery-3.3.1.slim.min.js"></script>
    <%--popper js--%>       
    <script src="Bootstrap/js/popper.min.js"></script>
    <%--bootstrap js--%>
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    <%--for graph--%>
   <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <form id="form1" runat="server">
<style>
body {
  margin: 0;
  font-family: "Lato", sans-serif;
}



/*css color-profile main section*/
.main{
    position:relative;
    width:100%;
    
    min-height: calc(100vh-60px);
    background:#f5f5f5;
    bottom: 50px;

}
.cards{
  
    padding: 35px 20px;
    display: grid;
    grid-template-columns: repeat(3,1fr);
    grid-gap:20px;

}
.cards .card{
    padding:5px;
    padding-top:20px;
    display:flex;
    align-items:center;
    justify-content:space-between;
    background: #fff;
    border-radius:10px;
    box-shadow:0 7px 25px 0 inherit;
}


</style>
 <!--HEADER START-->
              <div style="height:90px;position:fixed;  z-index:1; background-color:white; border-bottom: solid; width:100%; margin-top:-1px; " class="Header"> 
                 <div  style="height:90px;position:fixed;  z-index:1;background-color:white;width:100%;margin-top:0px; border-width:0.5px; border-bottom:solid " class ="row">
                        <div class="col-md-10"> 
                             <a href="https://localhost:44367/homepage.aspx">
                               <img width:"20px" src="images/hype.%202023-04-17%20195423.png"/ style="   border: none;max-width: 100px;height: auto;" href="https://localhost:44367/homepage.aspx">
                             </a>
                        </div>

  <%--FOR DROP DOWN BUTTON IN TOP--%> 
            <div class="col-md-1" style="border-right: inset;border-left: outset;"> 
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

<%-- END OF CODE FOR DROP DOWN--%>              
          <div class="col-md-1"> 
                   <div style="position: relative;display: inline-block; margin-bottom:auto ; padding-top:40px;">
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
                 

<!--HEADER ENDS-->
<%--Codes for main body--%>

             <div style="height:calc(100%-60px);background-color: #f5f5f5;" class ="main"  > 
                     <div class="row"  >
                           <div class="col-md-6"  style="padding-top: 100px"; >  
                                     <h2  style="padding-top: 100px; padding-left:250px">Testimonials</h2>                             
                           </div>
                           <div class="col-md-6"   style="padding-top: 200px; padding-left:215px;">  
                              
                               <asp:Button class="btn btn-secondary"  ID="Button1" runat="server" Text="Home >> Testimonials" OnClick="Button1_Click" /> 
                               
                           </div>
                      </div>
                    <div class="container">
                         <div class="row">
                           <div class="col-md-12 mx-auto">
                                <div class="row" style="padding-left: 422px;padding-bottom: 30px;">                                   
                              </div>
                           </div>  
                                <div class="row">
                                     <div class="col-md-4">  
                                          <div class="card">
                                              <div class="card-body">                                            
                                                   <i class="fa-solid fa-quote-left testiconleft" ></i><br />
                                                        <p style="width:auto" > Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla paria tur.
                                                            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                                        </p>
                                                     <i class="fa-solid fa-quote-right "></i>  
                                                        <div style="display:flex">
                                                            <img src="images/default_user.png" style="width:80px;height:75px;border-radius:50px" />
                                                            <div style="Margin-left:25px; padding-top: 10px; "><h5>Tony Stark</h5>
                                                            <h6 style="color:#184698">Social Marketing</h6>
                                                                </div>
                                                        </div>
                                                  </div>
                                              </div>
                                          </div>                                         
                                       <div class="col-md-4">  
                                             <div class="card">
                                              <div class="card-body">
                                                      <i class="fa-solid fa-quote-left testiconleft" ></i><br />
                                                        <p  style="width:auto" > Elitsed do eiusmod tempor incididunt ut labore laboris nisi ut aliquip ex ea et dolore magna aliqua Ut enim ad minim veniam, 
                                                            quis nostrud exercitation ullamco laboris nisi ut aliquip e

                                                        </p>
                                                      <i class="fa-solid fa-quote-right "></i>   
                                                          <div style="display:flex">
                                                            <img src="images/default_user.png" style="width:80px;height:75px;border-radius:50px" />
                                                            <div style="Margin-left:25px; padding-top: 10px; "><h5>Steve Roger</h5>
                                                            <h6 style="color:#184698">Content Writer</h6>
                                                                </div>
                                                           </div>
                                                  </div>
                                              </div>
                                             </div>
                                       
                                        <div class="col-md-4">  
                                             <div class="card">
                                              <div class="card-body">
                                                         <i class="fa-solid fa-quote-left testiconleft" ></i><br />
                                                            <p  style="width:auto" >
                                                                Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo do consequat.
                                                                Elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua

                                                            </p>
                                                         <i class="fa-solid fa-quote-right " ></i>     
                                                         <div style="display:flex">
                                                            <img src="images/default_user.png" style="width:80px;height:75px;border-radius:50px" />
                                                            <div style="Margin-left:25px; padding-top: 10px; "><h5>Natasha</h5>
                                                            <h6 style="color:#184698">Designer</h6>
                                                                </div>
                                                         </div>
                                                 </div>
                                              </div>
                                             </div>
                                      </div> 
                                </div> 
                            </div>
                          </div>
                     </div>
<!-- Footer PART CODES-->
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
                                    <li><a style="color: white;"  href="#">Feedback</a></li>
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
</body>
</html>
