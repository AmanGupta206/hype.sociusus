<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Footer_Contact_Page.aspx.cs" Inherits="hype.sociusus.Footer_Contact_Page" %>

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
</head>
<body>
    <form id="form1" runat="server">
<style>
body {
  margin: 0;
  font-family: "Lato", sans-serif;
}
.blogicon{
    padding:8px;
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
            <div class="col-md-1" style="border-right: inset;border-left: outset; padding-left: 7px;"> 
                         <div class="dropdown show"  style="padding-top:10px">
                                  <a class="btn btn-secondary " href="#" role="button" style="background-color: white; border-color: white;"  id="dropdownMenuLink"  data-toggle="dropdown" >
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
                 

<!--HEADER ENDS-->
<style>
.container_of_recent_blog {
  position: relative;
  height:400px;
  margin-left: 0px;
  margin-right: 0px;
  color: white;
}
.bottom-left {
  position: absolute;
  bottom: 8px;
  left: 16px;
}

.bottom-left {
  position: absolute;
  top: 8px;
  left: 16px;   
}
</style>
<%--Codes for main body--%>
             <div style="height:100%-60px;background-color: #f5f5f5; bottom:0px" class ="main"  > 
                     <div class="row"  >
                           <div class="col-md-6"  style="padding-top: 100px"; >  
                                     <h2  style="padding-top: 100px; padding-left:250px">Contact Us</h2>
                                     
                           </div>
                           <div class="col-md-6"   style="padding-top: 200px; padding-left:215px;">  
                              
                               <asp:Button class="btn btn-secondary"  ID="Button1" runat="server" Text="Home >> Contact Us" OnClick="Button1_Click"  /> 
                               
                           </div>
                      </div>

                <div class="row">
                   <div class="col-md-12 mx-auto" style="display: flex;">
                     <div class="col-md-8"  style="padding: 3rem ; background-color: rgba(230, 230, 230, 0.1);">
                                  <div class="row">
         <div class="col-md-12 mx-auto">
           <div class="card" style="Padding: 2rem;">
               <div class="card-body">
                  <div class="row">
                     <div class="col">                       
                            <h4>Contact Us</h4>                                                   
                     </div>
                  </div>                 
                 
                  <div class="row">
                         <div class="col-md-6">  
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Your Name" ></asp:TextBox>
                                </div>
                             </div>
                            <div class="col-md-6">  
                            <div class="form-group">
                                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Your E-mail" ></asp:TextBox>
                            </div>
                         </div>
                         
                  </div>
                  <div class="row">
                           <div class="col-md-12">  
                                  <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Subject" ></asp:TextBox>
                                </div>
                           </div>
                   </div>

                    <div class="row">                            
                           <div class="col-md-12">  
                                <textarea name="message" id="message" style="width: 29rem;" class="with-border" rows="7" placeholder="Message"></textarea>
                           </div>
                      </div>                   

                    <div class="row">                            
                           <div class="col-md-4">                                   
                                <div class="form-group">
                                    <asp:Button  class="btn btn-primary  btn-block btn-lg" ID="Button2" runat="server" Text="Send Message" />
                                </div>
                           </div>
                      </div>
                    </div>
                 </div>
               </div>
             </div>
                     </div>
                 <div class="col-md-4" style="padding-top: 45px;" >
                     <div class="card">
                          <div class="card-header">
                            Get In Touch
                          </div>
                          <div class="card-body">                  
                              <p>Please get in touch and our expert support team will answer all your questions.</p>                          
                          </div>
                        </div>
                      <div class="card">
                          <div class="card-header">
                            Contact Information
                          </div>
                          <div class="card-body">                  
                              <ul>
                              <li><i class="fa-sharp fa-solid fa-location-pin"></i> 142, Basant Viahr</li>
                                <li><i class="fa-solid fa-phone"></i> 1-972-8103-393</li>
                                <li><i class="fa-solid fa-envelope"></i> contact@gmail.com</li>
                            </ul>                         
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
                                <ul >
                                    <li ><a style="color: white;" href="userlogin.aspx">Login</a></li>
                                    <li><a style="color: white;" href="userregister.aspx">Register</a></li>                        
                               </ul>
                          </div>
                      </div>
                    <div class="col-xl-2 col-lg-2 col-md-4">
                        <div style="color: white;" class="footer-links">
                            <h3>Helpful Links</h3>
                                <ul">
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
                                         <span style="float:right"> <a href="https://twitter.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-twitter"></i> </a>
                                         <a href="https://www.instagram.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-instagram"></i></a>                           
                                         <a href="https://www.linkedin.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-linkedin-in"></i></a>      
                                         <a href="https://in.pinterest.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-pinterest"></i></a>                           
                                         <a href="https://www.youtube.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-youtube"></i></a></span></div>                        
                            </div>                  
                          </div>
                       </div>
                   </div>
                </div>



        </div>
    </form>
</body>
</html>
