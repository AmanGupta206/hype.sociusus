<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard_page.aspx.cs" Inherits="hype.sociusus.dashboard_page" %>

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
                               <img width:"20px" src="images/hype.%202023-04-17%20195423.png"/ style="   border: none;max-width: 100px;height: auto;" href="https://localhost:44367/homepage.aspx"/>
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
                                  <a class="dropdown-item" href="dashboard_page.aspx"><img width:"15px" src="images/Dashboard%20Icons%20images/Screenshot%202023-05-02%20155743.png" /> Dashboard</a>                            
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
                                     <h2  style="padding-top: 100px; padding-left:100px;">Dashboard</h2>                             
                           </div>
                           <div class="col-md-6"   style="padding-top: 200px; padding-left:275px;">  
                              
                               <asp:Button class="btn btn-secondary"  ID="Button1" runat="server" Text="Home >> Dashboard" OnClick="Button1_Click" /> 
                               
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
