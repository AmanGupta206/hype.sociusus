<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard_withdrawal_page.aspx.cs" Inherits="hype.sociusus.Dashboard_withdrawal_page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <%--bootstrap css--%>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" rel="stylesheet"/>    
    <%--datatable css--%>
    <link href="datatables/css/jquery.dataTables.min.css" rel="stylesheet" />
     <%--fontawesome css--%>
    <link href="fontawesome/css/all.css" rel="stylesheet" />


     <%--Custom css--%>
    <link href="css/Dashboard_withdrawal_page.css" rel="stylesheet" />

    <%--jquery--%>
    <script src="Bootstrap/js/jquery-3.3.1.slim.min.js"></script>
    <%--popper js--%>       
    <script src="Bootstrap/js/popper.min.js"></script>
    <%--bootstrap js--%>
    <script src="Bootstrap/js/bootstrap.min.js"></script>
   

   <%--  For responsiveness--%>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
</head>
<body>
    <form id="form1" runat="server">
     <%-- Header Code--%>
    <div class="topbar">
            <div class="logo">       
                    <a href="https://localhost:44367/homepage.aspx">
                        <img width:"20px" src="images/hype.%202023-04-17%20195423.png"/ style="border: none;max-width: 100px;height: auto;"/>
                    </a>              
            </div>
            <div>
                    <button id="nav-btn"class="navbar-toggler navbar-toggler-right" type="button" 
                        data-toggle="collapse" data-target="#navbarDiv"  aria-expanded="true" 
                        aria-label="Toggle navigation">
                        <span class="fa fa-bars"></span>
                    </button>
            </div>

            <div class="dropdown top">
                        <a class="btn btn-secondary " href="#" role="button" id="dropdownMenuLink"  data-toggle="dropdown" >
                            <img class="avatarimg" src="images/default_user.png" />
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

            <div class="selectlang">
                <select id="langbtn" class="popup-with-zoom-anim button ripple-effect">
                            <option value="EN">English</option>
                            <option value="Ta">Tamil</option>
                            <option value="Te">Telugu</option>            
                           <option value=" Arabic "> Arabic </option>
                           <option value="Bangali">Bangali</option>
                           <option value="Bulgarian">Bulgarian</option>
                           <option value="Chinese">Chinese</option>
                           <option value="French">French</option>
                           <option value="German">German</option>
                           <option value="Hebrew">Hebrew</option>
                           <option value="Hindi">Hindi</option>
                           <option value="Italian">Italian</option>                  
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
   <%--sidebar and main part code starts--%>
            
    <div class="container-fluid">
        <div class="row MainRow">
            <div class="col-lg-3 LeftSideBar">            
                  <div class="sidebar" >
                      <ul>
                          <h5>&nbsp;&nbsp;My Account</h5> 
                          <li><a href="Dashboard_main_page.aspx"><i class="fas fa-bars"></i> Dashboard</a></li>
                          <li>
                               <div class="dropdown">
                                  <button class="btn btn-secondary dropdown-toggle" style="background: #f5f5f5; border-color: #f5f5f5; color: black" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                      <i class="fa-solid fa-file"></i>&nbsp;My Documents
                                  </button>
                                  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                      <a class="dropdown-item" href="all_documents_page.aspx">All Documents</a>
                                      <a class="dropdown-item" href="all_ai_image_page.aspx">All AI Images</a>
                                  </div>
                              </div>
                          </li>
                      </ul>


                       <ul>            
                          <h4>Organize And Manage</h4>
                          <li><a href="template_page_inside_dashboard.aspx"><i class="fa-solid fa-layer-group"></i> Templates</a></li>
                          <li><a href="AI_image_page_in_dashboard.aspx"><i class="fa-solid fa-image"></i> AI Images</a></li>
                          <li><a href="Dashboard_AI_Chat_Page.aspx"><i class="fa-solid fa-comment"></i> AI Chat</a></li>
                          <li><a href="Speech_to_text.aspx"><i class="fa-solid fa-headphones"></i> Speech to Text</a></li>
                          <li><a href="Dashboard_AI_Code_Page.aspx"><i class="fa-solid fa-code"></i> AI Code</a></li>  
                           
                        </ul> 

                      <ul> 
                          <h4>&nbsp;&nbsp;Account</h4> 
                             <li>
                                <div class="dropdown">
                                        <button class="btn btn-secondary dropdown-toggle"  style="background: #f5f5f5; border-color: #f5f5f5;color:black" type="button" id="dropdownMenuButton1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fa-solid fa-share-nodes"></i>&nbsp;Affiliate Program
                                        </button>
                                     <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="Dashboard_Affiliate_Program.aspx">Affiliate Program</a>
                                        <a class="dropdown-item" href="Dashboard_withdrawal_page.aspx">Withdrawls</a>                                  
                                     </div>
                                </div>
                             </li>
                          <li><a href="Membership_page2.aspx"><i class="fa-solid fa-gift"></i> Membership</a></li>
                          <li><a href="transaction_page.aspx"><i class="fa-solid fa-money-bill"></i> Transaction</a></li>
                          <li><a href="account_setting_page.aspx"><i class="fa-solid fa-gear"></i> Account Settings</a></li>
                          <li><a href="#"><i class="fa-solid fa-right-from-bracket"></i> Logout</a></li>
                      </ul> 
                   </div>
                  
            </div>

            <div class="col-lg-9 RightMainPart">

                <div  class ="main"> 
                    <div class="row FirstRow">
                           <div class="col-md-6">  
                                    <div class="alldoc"><h2>Withdrawals</h2></div>                            
                           </div>
                           <div class="col-md-6"   >  
                               <%--<asp:Button class="btn btn-secondary rtbtn"  ID="Button1" runat="server" Text="Home >> Dashboard"  /> --%>
                               <a class="btn btn-secondary rtbtn" href="homepage.aspx" role="button">Home >> Withdrawals</a>
                           </div>
                    </div>
                <%-- main part code--%>
                    <div class="card" style="margin-right: 3%;margin-left: 3%; margin-bottom: 3%; ">                                   
                             <div class="row  request_withdrawal" >                                            
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

               

                    <div class="row">                
                       <div class="col-md-12 mx-auto alldoc-body">
                         <div class="card" style="width: 96%; margin: 2%;";>                     
                           <div class="card-body">
                              <div class="row">
                                  <div class="col">                       
                                    <h4><i class="fa-solid fa-rectangle-list"></i>&nbsp;Withdrawal Requests</h4>                                                 
                                  </div>
                             </div>
                             <div class="row">
                                <div class="col"><hr></div>
                             </div>
                               <div class="table-responsive">
                                   <table>
                                      <tr>
                                        <th>Requested On</th>
                                        <th>Amount</th>
                                        <th>Payment Method</th>
                                        <th>Status</th>
                                      </tr>
                                    </table>
                               </div>
                               <div class="row">
                                    <div class="below_table_data">  
                                          No Documents Found                                      
                                    </div>                                      
                                </div>                              
                            </div>
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
       </div>
    </div>
 </form>

<%--Script for Toggle Option--%>
    <script>
        $("#nav-btn").on("click", function () {
            $(".LeftSideBar").toggle();
            $(".RightMainPart").toggleClass('col-lg-12 full-width');

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
