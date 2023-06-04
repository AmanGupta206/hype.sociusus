<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="account_setting_page(non responsive).aspx.cs" Inherits="hype.sociusus.account_setting_page" %>

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
   <%-- for dropdown--%>
  


</head>
<body>
    <form id="form1" runat="server">
<%--Css of side bar starts  --%>      

<style>
body {
  margin: 0;
  font-family: "Lato", sans-serif;
}

.sidebar {
  top: 90px;
  padding: 0;
  width: 250px;
  background-color: #f1f1f1;
  position: fixed;
  height: calc(100% - 70px);
  overflow:scroll;
  margin-bottom: 90px;

}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #04AA6D;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

div.content {
  margin-left: 0px;
  padding: 1px 0px;
  height: auto;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 10%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}


 </style>
<%--css of side bar ends--%>

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
                 

              


      <!--HEADER ENDS-->

 
  
<%--side navigation box starts--%>
       
           <div class="sidebar" >    
                      <h4>&nbsp;&nbsp;My Account</h4>        
                      <a href="Dashboard_main_page.aspx"><i class="fas fa-bars"></i> Dashboard</a>
                      <div class="dropdown">
                                    <button class="btn btn-secondary dropdown-toggle"  style="background: #f5f5f5; border-color: #f5f5f5;color:black" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fa-solid fa-file"></i>&nbsp;My Documents
                                    </button>
                                 <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="all_documents_page.aspx">All Documents</a>
                                    <a class="dropdown-item" href="all_ai_image_page.aspx">All AI Images</a>                                  
                                 </div>
                            </div>
                      <h4>Organize And Manage</h4>
                          <a href="template_page_inside_dashboard.aspx"><i class="fa-solid fa-layer-group"></i> Templates</a>
                          <a href="AI_image_page_in_dashboard.aspx"><i class="fa-solid fa-image"></i> AI Images</a>
                          <a href="Dashboard_AI_Chat_Page.aspx"><i class="fa-solid fa-comment"></i> AI Chat</a>
                          <a href="Speech_to_text.aspx"><i class="fa-solid fa-headphones"></i> Speech to Text</a>
                          <a href="Dashboard_AI_Code_Page.aspx"><i class="fa-solid fa-code"></i> AI Code</a>        
                          <h4>&nbsp;&nbsp;Account</h4> 
                            <div class="dropdown">
                                        <button class="btn btn-secondary dropdown-toggle"  style="background: #f5f5f5; border-color: #f5f5f5;color:black" type="button" id="dropdownMenuButton1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fa-solid fa-share-nodes"></i>&nbsp;Affiliate Program
                                        </button>
                                     <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="Dashboard_Affiliate_Program.aspx">Affiliate Program</a>
                                        <a class="dropdown-item" href="#">Withdrawls</a>                                  
                                     </div>
                                </div>
                          <a href="Membership_page2.aspx"><i class="fa-solid fa-gift"></i> Membership</a>
                          <a href="transaction_page.aspx"><i class="fa-solid fa-money-bill"></i> Transaction</a>
                          <a href="account_setting_page.aspx"><i class="fa-solid fa-gear"></i> Account Settings</a>
                          <a href="#"><i class="fa-solid fa-right-from-bracket"></i> Logout</a>
                   </div>
         

<%--side navigation ends --%>  


<%--Account settings page code starts--%>

              


     <div class="container" style="max-width: 80%; margin-right: 0px; margin-left: 254px; background-color: #f5f5f5;" >
          <div class="row"  ;>
                         <div class="col-md-6"   >  
                                 <h2  style="padding-top: 50px;">&nbsp;&nbsp;&nbsp;Account Settings</h2>                               
                         </div>
                           <div class="col-md-6"   style="padding-top: 100px;">  
                                <center>
                                   <a class="btn btn-secondary" href="homepage.aspx" role="button">Home >> Account Setting</a>
                                </center>
                           </div>
                      </div>

      <div class="row">
         <div class="col-md-12 mx-auto">
            <div class="card" style="width: 800px; margin-left: 60px;">
               <div class="card-body">
                  <div class="row">
                     <div class="col">                       
                            <h4><i class="fa-solid fa-gear"></i>Account Settings</h4>                                                   
                     </div>
                  </div>                 
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>

                   <div class="row">                            
                           <div class="col-md-4">                                   
                                <div class="form-group">                                
                                    <label class="form-label" for="customFile">Upload Your Avatar</label>
                                    <input type="file" class="form-control" id="customFile" />
                                </div>
                           </div>
                      </div>

                  <div class="row">
                         <div class="col-md-6">  
                                 <label>USER NAME</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="USER NAME" ></asp:TextBox>
                                </div>
                         </div>

                           <div class="col-md-6">  
                                 <label>Email Address</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Email Address" ></asp:TextBox>
                                </div>
                           </div>
                      </div>

                    <div class="row">
                         <div class="col-md-6">  
                                 <label>New Password</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="New Password" ></asp:TextBox>
                                </div>
                         </div>

                           <div class="col-md-6">  
                                 <label>Confirm Password</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Confirm Password" ></asp:TextBox>
                                </div>
                           </div>
                      </div>

                     <div class="row">                            
                           <div class="col-md-3">                                   
                                <div class="form-group">                                
                                    <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button3" runat="server" Text="Save Changes" />
                                </div>
                           </div>
                      </div>

                    </div>
                 </div>
             <br />
             <br>
             <%--   --------------------------------------------------------------------------------------------------%>
    
     
            <div class="card" style="width: 800px; margin-left: 60px; ">
               <div class="card-body">
                  <div class="row">
                     <div class="col">                       
                            <h4>Billing Details</h4>                                                   
                     </div>
                  </div>                 
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                         <div class="col-md-10">  
                                 <label>Type</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Personal/Business" ></asp:TextBox>
                                </div>
                         </div>
                  </div>
                  <div class="row">
                           <div class="col-md-10">  
                                 <label>Name*</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Name" ></asp:TextBox>
                                </div>
                           </div>
                   </div>

                    <div class="row">                            
                           <div class="col-md-10">  
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
                           <div class="col-md-3">  
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
                           <div class="col-md-10">  
                                 <label>Country*</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="India" ></asp:TextBox>
                                </div>
                           </div>
                      </div>

                    <div class="row">                            
                           <div class="col-md-3">                                   
                                <div class="form-group">
                                    <asp:Button  class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Save Changes" />
                                </div>
                           </div>
                      </div>
                    </div>
                 </div>
               </div>
             </div>
<%--Account settings part ends  --%>
             <!-- Footer -->
    <hr style="border-top: dotted 1px;" /> 
        <div class="footer-bottom-section">
       
                    
                <div class="container-fluid"  >
                     <div class="row" style="width: 749px;">
                        <div class="col-xl-12">
                          <div style="color: white; width: 950px;" class="footer-row">
                                 
                                     <span style="color: Black;" class="footer-copyright-text">2023 Socius IGB Pvt Ltd, All right reserved</span>           
                                           <span style="float:right"> 
                                             <a href="https://twitter.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-twitter"></i></a>
                                             <a href="https://www.instagram.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-instagram"></i></a>                           
                                             <a href="https://www.linkedin.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-linkedin-in"></i></a>      
                                             <a href="https://in.pinterest.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-pinterest"></i></a>                           
                                             <a href="https://www.youtube.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-youtube"></i></a>
                                           </span>
                          </div>                        
                       </div>                        
                 </div>
              </div>
          </div>
      </div>
       
         <!-- Footer -->

    </form>
</body>
</html>
