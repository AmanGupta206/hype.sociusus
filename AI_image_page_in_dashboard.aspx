<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AI_image_page_in_dashboard.aspx.cs" Inherits="hype.sociusus.AI_image_page_in_dashboard1" %>

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
    <link href="css/AI_image_page_in_dashboard.css" rel="stylesheet" />


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
                                   <div class="alldoc" style="display:flex"><h2>AI   Images</h2><p><i class="fa-solid fa-chart-simple docicon"></i> 0/100 Images used</p></div>                           
                           </div>
                           <div class="col-md-6"   >  
                               <%--<asp:Button class="btn btn-secondary rtbtn"  ID="Button1" runat="server" Text="Home >> Dashboard"  /> --%>
                               <a class="btn btn-secondary rtbtn" href="homepage.aspx" role="button">Home >> AI Images</a>
                           </div>
                    </div>
                <%-- main part code--%>
                     <div style="padding-left: 50px; padding-top: 40px;">
                              <p>Start with Detailed Description <strong>Example</strong></p>
                              <div class="row">
                                  <div class="col-md-8">
                                   <asp:TextBox ID="TextBox1" style="height: 40px; width: 105%" runat="server" placeholder="A mouse riding on a horse in a mountainside scene, Painting by Rembrandt"></asp:TextBox>
                                  </div>
                                  <div class="col-md-4">
                                      <asp:Button  style="height: 40px; width: 60%" class="btn btn-primary btn-block btn-lg" ID="Button2" runat="server" Text="Generate ->" />
                                  </div>
                              </div>
                      </div>
                     <br/> 


                <%-- Advance settings page button toggle and data--%>               

   <input type="button" id="togbtn" value="Advance Settings"  style="margin-left: 50px;"/>
              <div class="abc" style="padding: 60px;">
                     
                        <div id="adv">
                         <div class = "row">
                            <div class="col-md-3">
                          
                                  <div class="form-group">
                                    <label >Image Title</label>
                                    <input type="text" class="form-control" id="Image Title" placeholder="New Image"/>
                                  </div>
                            </div>
                            <div class="col-md-3">                        
                                 <div class="form-group">
                                    <label>Art Style</label>
                                    <select class="form-control" id="Art Style">
                                      <option>None</option>
                                      <option>3D render</option>
                                      <option>Pixel</option>
                                      <option>Sticker</option>
                                      <option>Realistic</option>
                                      <option>Isometric</option>
                                      <option>Cyberpunk</option>
                                      <option>Line art</option>
                                      <option>Pencil drawing</option>
                                      <option>Ballpoint pen drawing</option>
                                      
                                    </select>
                                  </div>
                            </div>
                             <div class="col-md-3">
                                  <div class="form-group">
                                    <label>Lighting Style</label>
                                    <select class="form-control" id="Lighting Style">
                                      <option>None</option>
                                      <option>Warm</option>
                                      <option>Cold</option>
                                      <option>Golden Hour</option>
                                      <option>Blue Hour</option>
                                      <option>Ambient</option>
                                      <option>Studio</option>
                                      <option>Neon</option>
                                      <option>Dramatic</option>
                                      <option>Cinematic</option>
                                      <option>Natural</option>
                                     
                                    </select>
                                  </div>
                            </div>
                             <div class="col-md-3">                       
                                  <div class="form-group">
                                    <label>Mood</label>
                                    <select class="form-control" id="Mood">
                                      <option>None</option>
                                      <option>Aggressive</option>
                                      <option>Angry</option>
                                      <option>Boring</option>
                                      <option>Bright</option>
                                      <option>Calm</option>
                                      <option>Cheerful</option>
                                      <option>Chilling</option>
                                      <option>Colorful</option>
                                      <option>Dark</option>
                                      <option>Natural</option>
                                    </select>
                              </div>
                           </div>
                         </div>
                         <div class = "row">
                            <div class="col-md-3">                          
                                 <div class="form-group">
                                    <lable>Resolutions<lable>
                                    <select class="form-control" id="Resolutions">
                                       <option value="256x256">Small Image (256x256)</option>
                                       <option value="512x512">Medium Image (512x512)</option>
                                       <option value="1024x1024">Large Image (1024x1024)</option>
                                    </select>
                                  </div>
                              </div>
                            <div class="col-md-3">
                                 <div class="form-group">
                                    <lable>No of Images<lable>
                                    <select class="form-control" id="No of Images">
                                      <option>1</option>
                                      <option>2</option>
                                      <option>3</option>
                                      <option>4</option>
                                      <option>5</option>
                                    </select>
                                  </div>
                             </div>
                          </div>                       
                        </div>
                    </div>
                </div>

                   <!-- Footer -->

             <hr style="border-top: dotted 1px;" />
                <div class="footer-bottom-section">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-xl-12">
                                <div style="color: white;" class="footer-row">
                                    <span style="color: Black;" class="footer-copyright-text">2023 Socius IGB Pvt Ltd, All right reserved</span>
                                    <span style="float: right">
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
    <%--Script for advance setting part function (Hide and show)--%>
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
