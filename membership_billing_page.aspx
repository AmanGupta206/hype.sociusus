<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="membership_billing_page.aspx.cs" Inherits="hype.sociusus.membership_billing_page" %>

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
                                  <a class="dropdown-item" href="Dashboard_main_page.aspx"><i class="fas fa-bars"></i> Dashboard</a>                           
                                  <a class="dropdown-item" href="template_page_inside_dashboard.aspx"><i class="fa-solid fa-layer-group"></i> Templates</a>
                                  <a class="dropdown-item" href="AI_image_page_in_dashboard.aspx"><i class="fa-solid fa-image"></i> AI Images</a>
                                  <a class="dropdown-item" href="Dashboard_AI_Chat_Page.aspx"><i class="fa-solid fa-comment"></i> AI Chat</a>
                                  <a class="dropdown-item" href="Speech_to_text.aspx"><i class="fa-solid fa-headphones"></i> Speech to Text</a>
                                  <a class="dropdown-item" href="all_documents_page.aspx"><i class="fa-solid fa-file"></i> All Documents</a>
                                  <a class="dropdown-item" href="Membership_page2.aspx"><i class="fa-solid fa-gift"></i> Membership</a>
                                  <a class="dropdown-item" href="account_setting_page.aspx "><i class="fa-solid fa-gear"></i> Account Settings</a>
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
<%--main body part codes--%>
        <%--Codes for main body--%>

             <div style="height:calc(100%-60px);background-color: #f5f5f5;" class ="main"  > 
             <div class="row"  >
                           <div class="col-md-6"  style="padding-top: 72px"; >  
                                     <h2  style="padding-top: 100px; padding-left:190px">Billing Details</h2>                             
                           </div>
                           <div class="col-md-6"   style="padding-top: 175px; padding-left:175px;">  
                               <a class="btn btn-secondary" href="homepage.aspx" role="button">Home >> Membership Plan >> Billing Details</a>                           
                           </div>
                      </div>
        <div class="row">
         <div class="col-md-12 mx-auto">
           <div class="card" style="width: 875px; margin-left: 240px; margin-bottom: 25px; ">
               <div class="card-body">
                  <div class="row">
                     <div class="col">                       
                            <h4>Billing Details</h4>                                                   
                     </div>
                  </div>                 
                  <div class="row">
                     <div class="col" style="padding-left: 20px; background-color: lightblue;">
                        <p style="padding-top: 17px;">These Details will be used in invoice and tax handeling</p>
                     </div>
                  </div>
                  <div class="row">
                         <div class="col-md-12">  
                                 <label>Type</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Personal/Business" ></asp:TextBox>
                                </div>
                         </div>
                  </div>
                  <div class="row">
                           <div class="col-md-12">  
                                 <label>Name*</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Name" ></asp:TextBox>
                                </div>
                           </div>
                   </div>

                    <div class="row">                            
                           <div class="col-md-12">  
                                 <label>Address*</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Address" ></asp:TextBox>
                                </div>
                           </div>
                      </div>
                    <div class="row">                            
                           <div class="col-md-6">  
                                 <label>City*</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Bengaluru" ></asp:TextBox>
                                </div>
                           </div>
                           <div class="col-md-4">  
                                 <label>State</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Karnataka" ></asp:TextBox>
                                </div>
                           </div>
                         <div class="col-md-2">  
                                 <label>Zip Code</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="560093" ></asp:TextBox>
                                </div>
                           </div>
                      </div>

                    <div class="row">                            
                           <div class="col-md-12">  
                                 <label>Country*</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="India" ></asp:TextBox>
                                </div>
                           </div>
                      </div>

                    <div class="row">                            
                           <div class="col-md-5">                                   
                                <div class="form-group">
                                    <asp:Button  class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Save and Continue to checkout" />
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
                                    <li><a style="color: white;" href="userlogin.aspx">Login</a></li>
                                    <li><a style="color: white;" href="userregister.aspx">Register</a></li>                        
                               </ul>
                          </div>
                      </div>
                    <div class="col-xl-2 col-lg-2 col-md-4">
                        <div style="color: white;" class="footer-links">
                            <h3>Helpful Links</h3>
                                <ul>
                                    <li><a style="color: white;" href="recent_blog_internal_page.aspx">Blog</a></li>                            
                                    <li><a style="color: white;"  href="Footer_Feedback_Page.aspx">Feedback</a></li>
                                    <li><a style="color: white;"  href="Footer_Contact_Page.aspx">Contact</a></li>
                                </ul>
                        </div>
                    </div>
                  <div class="col-xl-2 col-lg-2 col-md-4">
                        <div style="color: white;" class="footer-links">
                            <h3>Information</h3>
                                 <ul>
                                    <li><a style="color: white;" href="Footer_FAQ.aspx">FAQ</a></li>
                                    <li><a style="color: white;" href="testimonials_inner_page.aspx">Testimonials</a></li>                        
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
