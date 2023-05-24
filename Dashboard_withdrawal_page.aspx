<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard_withdrawal_page.aspx.cs" Inherits="hype.sociusus.Dashboard_withdrawal_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


      <meta charset="utf-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

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


/*css color-profile main section*/
.main{
    position:relative;
    width:100%;
    
    min-height: calc(100vh-60px);
    background:#f5f5f5;
    

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
              <div style="height:90px;position:fixed; border-bottom: solid;  z-index:1; background-color:white; width:100%; margin-top:-1px; " class="Header"> 
                 <div class ="row" style="height:90px;position:fixed;  z-index:1;background-color:white;width:100%;margin-top:0px; border-width:0.5px; border-bottom:solid " >
                        <div class="col-md-2"> 
                             <a href="https://localhost:44367/homepage.aspx">
                               <img width:"20px" src="images/hype.%202023-04-17%20195423.png"/ style="   border: none;max-width: 100px;height: auto;" href="https://localhost:44367/homepage.aspx">
                             </a>
                       </div>      
 <%--button for toggle--%>
                     <div class="col-md-8"> 
                                <nav style="margin-left:185px; height: 31px; width: 869px;" class="navbar navbar-toggleable-md fixed-top">
                                    <button id="nav-btn"class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarDiv"  aria-expanded="true" aria-label="Toggle navigation">
                                        <span class="fa fa-bars"></span>
                                    </button>
                               </nav>
                     </div> 

       <%--FOR DROP DOWN BUTTON IN TOP--%> 
            <div class="col-md-1" style="border-right: inset;border-left: outset;"> 
                         <div class="dropdown show"  style="padding-top:10px">
                                  <a class="btn btn-secondary " href="#" role="button" id="dropdownMenuLink"  data-toggle="dropdown" >
                                      <img src="images/Dashboard%20Icons%20images/Screenshot%202023-05-02%20154408.png" />
                                  </a>
                              <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                  <a class="dropdown-item" href="dashboard_page.aspx"><img width="15px" src="images/Dashboard%20Icons%20images/Screenshot%202023-05-02%20155743.png" /> Dashboard</a>                            
                                  <a class="dropdown-item" href="template_page_inside_dashboard.aspx"><i class="fa-solid fa-bars"></i> Templates</a>
                                  <a class="dropdown-item" href="AI_image_page_in_dashboard.aspx"><i class="fa-solid fa-image"></i> AI Images</a>
                                  <a class="dropdown-item" href="Dashboard_AI_Chat_Page2.aspx"><i class="fa-solid fa-comment"></i> AI Chat</a>
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
<%--sidebar  and main part starts--%>
<div class="container-fluid">
            <div class="row">
                <div class="col-md-2" id="side1"  style="padding-left: 0px; padding-right: 0px;" > 
                    <div class="sidebar" >    
                      <h4>&nbsp;&nbsp;My Account</h4>        
                      <a href="dashboard_page.aspx">
                          <img width="15px" src="images/Dashboard%20Icons%20images/Screenshot%202023-05-02%20155743.png"/> Dashboard
                      </a>
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
                          <a href="template_page_inside_dashboard.aspx"><i class="fa-solid fa-bars"></i> Templates</a>
                          <a href="AI_image_page_in_dashboard.aspx"><i class="fa-solid fa-image"></i> AI Images</a>
                          <a href="Dashboard_AI_Chat_Page2.aspx"><i class="fa-solid fa-comment"></i> AI Chat</a>
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
                </div>
                 <div class="col-md-10" id="main1"  style="padding-right: 0px;">
                  <div  class ="main"> 
                    <div class="row"  >
                           <div class="col-md-6"  style="padding-top: 100px"; >  
                                     <h2  style="padding-top: 100px; padding-left:100px;">Withdrawals</h2>                             
                           </div>
                           <div class="col-md-6"   style="padding-top: 200px; padding-left:275px;">           
                               <a class="btn btn-secondary" href="homepage.aspx" role="button">Home >> Withdrawals</a>
                           </div>
                    </div>
                  <%-- main part code--%>
                    

                        
                       <div class="card" style="margin-right: 3%;margin-left: 3%; margin-bottom: 3%; ">                                   
                             <div class="row" style="margin-left: 32%;margin-right: 29%; margin-top: 1%; ">                                            
                                       <div >                                        
                                           <i class="fa-solid fa-bell"></i>
                                           <input  class="fa-solid fa-bars" type="button" id="togbtn" value=" Request WithDrawal &darr;"   style="transition: 0.6s;"/>                                     
                                       </div>
                              </div>

                               <div class="abc" style="padding:2%">      
                                   <div class="card" style="padding: 3%;">
                                       <div style="background-color:#e9f7fe;">
                                           <p style="color:#3184ae;margin-top: 1rem; margin-bottom: 1rem ">The requested amount will be deducted from your wallet and the amount will be blocked until it get approved or rejected by the administrator. 
                                           Once its approved, the requested amount will be manually pay to you.</p>
                                       </div>
                                        <div style="padding-top: 2rem;">
                                            <h4>Withdrawal Amount (₹)</h4>
                                            <input type="number" value="50"/>
                                       </div>
                                        <div style="padding-top: 2rem;">
                                            <h4>Payment Method</h4>
                                            <asp:RadioButtonList ID="RadioButtonList1"  runat="server" RepeatLayout="Flow">
                                                    <asp:ListItem> Paypal</asp:ListItem>
                                                    <asp:ListItem>  Bank Deposit</asp:ListItem>
                                           </asp:RadioButtonList>
                                       </div>
                                        <div style="padding-top: 1rem;">
                                            <h4>Account Details</h4>
                                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Write Payment Details"></asp:TextBox>
                                            <p>Write here your payment id or payment details of selected payment gateways.</p>
                                       </div>
                                           <div style="padding-top: 1rem;">
                                             <asp:Button class="btn btn-primary" ID="Button1"  runat="server" Text="Withdraw" />
                                           </div>
                                   </div>
                                </div>           
                             </div>                    
                                             
                      
                             <div class="card" style="margin-right: 3%;margin-left: 3%;margin-bottom: 3%; ">             
                                      <div class="row" >
                                         <div class="col" style="padding: 2%; padding-bottom: 0%;">                                     
                                            <h4><i class="fa-solid fa-rectangle-list"></i>&nbsp;Withdrawal Requests</h4>                    
                                          </div>
                                     </div>
                                     <hr/>
                                    
                                   <div class="row"  style="background-color: #6c757d21; margin-right: 2%;margin-left: 2%;">
                                           
                                             <div class="col-md-3">  
                                                     <label>Requested On</label>                                  
                                             </div>
                                            <div class="col-md-3">  
                                                 <label>Amount</label>                                   
                                            </div>
                                             <div class="col-md-3">  
                                                     <label>Payment Method</label>                                     
                                             </div>                                         
                                            <div class="col-md-3">  
                                                <label>Status</label>
                                            </div>
                                    </div>
                                  <div class="row">
                                         <div style="padding-left:36%; padding-right:35%;">  
                                                 <label>No result found.</label>                                      
                                         </div>
                                 </div>
                                               
                       </div>
  </div>
<%--Dashboard part ends--%>

 <!-- Footer -->
    <hr style="border-top: dotted 1px;" /> 
        <div class="footer-bottom-section">
       
                    
                <div class="container-fluid"  >
                     <div class="row">
                        <div class="col-xl-12">
                          <div style="color: white;" class="footer-row">                   
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







               </div>
           </div>
       </div>
     </div>




    </form>

<%--Script for Toggle Option--%>
    <script>
        $("#nav-btn").on("click", function () {
                $("#side1").toggle();
            $("#main1").toggleClass('col-lg-12 full-width'); 

        });
    </script>
<%--script for Copy Button--%>
  
        <script>
            function copyToClipboard() {
            const affiliateUrlInput = document.getElementById('affiliateUrl');
            affiliateUrlInput.select();
            document.execCommand('copy');
            alert('Affiliate URL copied to clipboard!');
            }
        </script>


 <%--Script for Hide and show / Toggle Button--%>
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
