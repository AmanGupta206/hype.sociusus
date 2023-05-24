<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard_main_page.aspx.cs" Inherits="hype.sociusus.Dashboard_main_page" %>

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
    <link href="css/Dashboard_main_page.css" rel="stylesheet" />


    <%--jquery--%>
    <script src="Bootstrap/js/jquery-3.3.1.slim.min.js"></script>
    <%--popper js--%>       
    <script src="Bootstrap/js/popper.min.js"></script>
    <%--bootstrap js--%>
    <script src="Bootstrap/js/bootstrap.min.js"></script>
    <%--for graph--%>
   <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
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
                <a class="btn" id="avtrbtn" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    <img class="avatarimg" src="images/default_user.png" />
                </a>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="dashboard_page.aspx"><i class="fa fa-dashboard icons"></i>DashBoard</a></li>
                    <li><a class="dropdown-item" href="template_page_inside_dashboard.aspx"><i class="fa-solid fa-layer-group"></i>Templates</a></li>
                    <li><a class="dropdown-item" href="AI_image_page_in_dashboard.aspx"><i class="fa-regular fa-image"></i>AI Images</a></li>
                    <li><a class="dropdown-item" href="Dashboard_AI_Chat_Page2.aspx"><i class="fa-solid fa-comment"></i>AI Chat</a></li>
                    <li><a class="dropdown-item" href="Speech_to_text.aspx"><i class="fa-solid fa-headphones"></i>Speech to Text</a></li>
                    <li><a class="dropdown-item" href="#"><i class="fa-solid fa-code"></i>AI Code</a></li>
                    <li><a class="dropdown-item" href="all_documents_page.aspx"><i class="fa-solid fa-file-lines"></i>All Documents</a></li>
                    <li><a class="dropdown-item" href="Membership_page2.aspx"><i class="fa-solid fa-gift"></i>Membership</a></li>
                    <li><a class="dropdown-item" href="account_setting_page.aspx"><i class="fa-solid fa-arrow-right-from-bracket"></i>Account Setting</a></li>
                    <li><a class="dropdown-item" href="homepage.aspx"><i class="fa-solid fa-power-off"></i>Logout</a></li>
                </ul>
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
   <%-- Header Ends--%>
              
    <div class="container-fluid">
        <div class="row MainRow">
            <div class="col-lg-3 LeftSideBar">            
                  <div class="sidebar" >
                      <ul>
                          <h5>&nbsp;&nbsp;My Account</h5> 
                          <li><a href="dashboard_page.aspx"><i class="fas fa-bars"></i> Dashboard</a></li>
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
                          <li><a href="template_page_inside_dashboard.aspx"><i class="fa-solid fa-bars"></i> Templates</a></li>
                          <li><a href="AI_image_page_in_dashboard.aspx"><i class="fa-solid fa-image"></i> AI Images</a></li>
                          <li><a href="Dashboard_AI_Chat_Page2.aspx"><i class="fa-solid fa-comment"></i> AI Chat</a></li>
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
                                        <a class="dropdown-item" href="#">Withdrawls</a>                                  
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
                           <div class="col-md-6"  ; >  
                                     <h2 >Dashboard</h2>                             
                           </div>
                           <div class="col-md-6"   ">  
                               <asp:Button class="btn btn-secondary rtbtn"  ID="Button1" runat="server" Text="Home >> Dashboard"  /> 
                           </div>
                    </div>
                <%-- main part code--%>
             <div class ="cards">
                 <div class="card">             
                          <div class="row">                  
                                <div class="col-md-6"><h2>Words Used <p>0/10,000</p></h2></div>                                  
                                <div class="col-md-6"><img src="images/Dashboard%20Icons%20images/Screenshot%202023-04-28%20185928.png" /></div>                                   
                          </div>
                 </div>
                 <div class="card">             
                           <div class="row">
                                   <div class="col-md-6"><h2>Images Used <p>0/100</p></h2></div> 
                                   <div class="col-md-6"><img src="images/Dashboard%20Icons%20images/Screenshot%202023-04-28%20190005.png" /></div>                                    
                            </div>
                  </div>
                   <div class="card">             
                           <div class="row">                    
                                 <div class="col-md-6"><h2>Speech to text<p>0/0</p></h2></div> 
                                 <div class="col-md-6"><img src="images/Dashboard%20Icons%20images/Screenshot%202023-04-28%20190034.png" /></div>                                    
                            </div>
                   </div>
                </div>

               <div>
                  <h3>&nbsp;Words used this month</h3>
                  <div >
                   <canvas id="myChart" ></canvas>
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
    </div>


 




 



 </form>

<%--Script for Toggle Option--%>
    <script>
        $("#nav-btn").on("click", function () {
            $(".LeftSideBar").toggle();
            $(".RightMainPart").toggleClass('col-lg-12 full-width');

        });
    </script>
<%--script for graph--%>
    <script>
        const ctx = document.getElementById('myChart');

        new Chart(ctx, {
            type: 'line',
            data: {
                labels: ["01 May", "02 May", "03 May", "04 May", "05 May", "06 May", "07 May", "08 May", "09 May", "10 May", "11 May", "12 May", "13 May", "14 May", "15 May", "16 May", "17 May", "18 May", "19 May", "20 May", "21 May", "22 May", "23 May", "24 May", "25 May", "26 May", "27 May", "28 May", "29 May", "30 May", "31 May"],
                // Information about the dataset
                datasets: [{
                    label: "Words Used Graphical Representation",
                    backgroundColor: '#18469815',
                    borderColor: '#184698',
                    borderWidth: "3",
                    data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                    pointRadius: 5,
                    pointHoverRadius: 5,
                    pointHitRadius: 10,
                    pointBackgroundColor: "#fff",
                    pointHoverBackgroundColor: "#fff",
                    pointBorderWidth: "2",
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>




   
</body>
</html>
