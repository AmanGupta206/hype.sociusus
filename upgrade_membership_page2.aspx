<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upgrade_membership_page2.aspx.cs" Inherits="hype.sociusus.upgrade_membership_page2" %>

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
<!--HEADER START-->

         
              <div style="height:90px;position:fixed;  z-index:1;background-color:white;width:100%;margin-top:-1px;" class="Header"> 
                 <div  style="height:90px;position:fixed;  z-index:1;background-color:white;width:100%;margin-top:0px;" class ="row" >
                        <div class="col-md-10"> 
                         <a href="https://localhost:44367/homepage.aspx">
                           <img width:"20px" src="images/hype.%202023-04-17%20195423.png"/ style="   border: none;max-width: 100px;height: auto;" href="https://localhost:44367/homepage.aspx">
                         </a>
                        </div>

<%--FOR DROP DOWN BUTTON IN TOP--%> 
            <div class="col-md-1"> 
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
                 
<%--CSS for table used--%>
<style>
table { 
  border-collapse: collapse;
  width: 65%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}
</style>              


<!--HEADER ENDS-->
<%--Codes for main body--%>

             <div style="height:calc(100%-60px);background-color: #f5f5f5;" class ="main"  > 
             <div class="row"  >
                           <div class="col-md-6"  style="padding-top: 100px"; >  
                                     <h2  style="padding-top: 100px; padding-left:250px">Upgrade Membership</h2>                             
                           </div>
                           <div class="col-md-6"   style="padding-top: 200px; padding-left:275px;">  
                              
                               <asp:Button class="btn btn-secondary"  ID="Button1" runat="server" Text="Home >> Upgrade" /> 
                               
                           </div>
                      </div>
             <div class="row">               
               <div class="col-md-12 mx-auto" style="background: white;">
                 <div class="card" style="width: 865px; margin-top: 100px; margin-bottom: 100px;  margin-left: 255px; margin-right: 100px ";>
                     
                      <div class="row">
                         <div class="col-md-9" style="background-color:#f5f5f5;">                       
                            <h4>Payment Method</h4>  
                               <div class="form-group">
                                   <div style="background: white";>
                                       <asp:RadioButton ID="RadioButton2" runat="server" />   Downgrade to Free Plan                                      
                                    </div>
                                </div>
                             
                               <div style="width: 20%;"><asp:Button class="btn btn-primary btn-block btn-lg" ID="Button3" runat="server" Text="Submit" /></div>                            
                          </div>
                           <div class="col-md-3" style="background-color: gainsboro";>  
                                  <table>
                                      <tr>
                                        <td>Membership</td>
                                        <td style="padding-right: 0;">Free Plan</td>  
                                      </tr>
                                      <tr>
                                        <td>Start Date</td>
                                        <td>11/05/23</td> 
                                      </tr>
                                      <tr>
                                        <td>Expire Date</td>
                                        <td>Life Time</td>   
                                      </tr>
                                      <tr>
                                        <td>Total Cost</td>
                                        <td>0</td>
                                      </tr>
                                </table>
                          </div> 
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
                                    <li><a style="color: white;"  href="">Feedback</a></li>
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
