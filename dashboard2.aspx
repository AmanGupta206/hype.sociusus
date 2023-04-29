<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard2.aspx.cs" Inherits="hype.sociusus.dashboard2" %>

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
       
<%--Dashboard part starts--%>

<style>
body {
  margin: 0;
  font-family: "Lato", sans-serif;
}

.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  position: relative;
  height: 100%;
  overflow: auto;
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
  height: 500px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
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


   <!--HEADER AND NAVIGATION PART START-->

          <nav class="navbar navbar-inverse">
              <div class="container-fluid"> 
                <div class ="navbar header">
                   <a href="https://localhost:44367/homepage.aspx">
                       <img width="150px" src="images/hype.%202023-04-17%20195423.png"/ style="   border: none;max-width: 100px;height: auto;" href="https://localhost:44367/homepage.aspx">
                   </a>
               </div>
            <class="nav navbar-nav navbar-right">
            
               <div style="position: relative;display: inline-block;">
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
         </nav>
       
      <hr style="border-top: dotted 1px;" />                

              


      <!--HEADER AND NAVIGATION PART ENDS-->




            

  
<%--<div class="container">--%>
       <div class="content">
           <div class="sidebar" style="position:relative;float:left">
    
                      <h5>&nbsp;My Account</h5>        
                      <a class="active" href="#home"><i class="fa-solid fa-grid-horizontal"></i> Dashboard</a>
                      <a href="#"><i class="fa-solid fa-file"></i> My Documents</a>
                      <h5>&nbsp;Organize And Manage</h5>
                      <a href="#"><i class="fa-solid fa-bars"></i> Templates</a>
                      <a href="#"><i class="fa-solid fa-image"></i> AI Images</a>
                      <a href="#"><i class="fa-solid fa-comment"></i> AI Chat</a>
                      <a href="#"><i class="fa-solid fa-headphones"></i> Speech to Text</a>
                      <a href="#"><i class="fa-solid fa-code-simple"></i>AI Code</a>        
                      <h5>&nbsp;Account</h5> 
                      <a href="#"><i class="fa-sharp fa-regular fa-share-nodes"></i> Affiliate Program</a>                   
                      <a href="#"><i class="fa-solid fa-gift"></i> Membership</a>
                      <a href="#"><i class="fa-solid fa-money-bill"></i> Transaction</a>
                      <a href="#"><i class="fa-solid fa-gear"></i> Account Settings</a>
                      <a href="#"><i class="fa-solid fa-right-from-bracket"></i> Logout</a>
            </div>

           <h2>&nbsp;Dashboard</h2>
         <div class="row">
             
               <div class="col-md-4">                  
                        <h4>Words Used</h4>
                        <p >
                          0/10,000
                        </p>
                        <img src="images/Dashboard%20Icons%20images/Screenshot%202023-04-28%20185928.png" />                                   
                </div>
                <div class="col-md-4">                   
                        <h4>Images Used</h4>
                        <p >
                          0/100
                        </p>
                       <img src="images/Dashboard%20Icons%20images/Screenshot%202023-04-28%20190005.png" />                                   
                </div>
                 <div class="col-md-4">                   
                        <h4>Speech to text</h4>
                        <p >
                          0/0
                        </p>
                         <img src="images/Dashboard%20Icons%20images/Screenshot%202023-04-28%20190034.png" />                                   
                </div>



   <div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3>Line Series</h3>
                </div>
                <div class="panel-body">
                    <div id="chart1"></div>
                </div>
            </div>
        </div>

<link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light-bootstrap/all.min.css" />
<script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>

<script type="text/javascript">
    jQuery(function ($) {
        var data1 = [12, 3, 4, 2, 12, 3, 4, 17, 22, 34, 54, 67];
        var data2 = [3, 9, 12, 14, 22, 32, 45, 12, 67, 45, 55, 7];
        var data3 = [23, 19, 11, 134, 242, 352, 435, 22, 637, 445, 555, 57];
        var data4 = [13, 19, 112, 114, 212, 332, 435, 132, 67, 45, 55, 7];

        $("#chart1").shieldChart({
            exportOptions: {
                image: false,
                print: false
            },
            axisY: {
                title: {
                    text: "Break-Down for selected quarter"
                }
            },
            dataSeries: [{
                seriesType: "line",
                data: data1
            }]
        });
   
</script>

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
       
         <!-- Footer -->

    </form>
</body>
</html>
<body>

<%--<div class="sidebar">
  <h3>My Account</h3>
  <a class="active" href="#home">Dashboard</a>
  <a href="#">My Documents</a>
  <ul> 
  <li><a href="#">All Documents</a></li>
  <li><a href="#">All AI Documents</a></li>
  </ul>
  <h3>Organize And Manage</h3>
  <ul> 
  <li><a href="#">Templates</a></li>
  <li><a href="#">AI Images</a></li>
  <li><a href="#">AI Chat</a></li>
  <li><a href="#">Speech to Text</a></li>
  <li><a href="#">AI Code</a></li>  
  </ul>
  <a href="#">Contact</a>
  <a href="#">About</a>
  <h1></hi>
</div>

<div class="content">
  <h2>Responsive Sidebar Example</h2>
  <p>This example use media queries to transform the sidebar to a top navigation bar when the screen size is 700px or less.</p>
  <p>We have also added a media query for screens that are 400px or less, which will vertically stack and center the navigation links.</p>
  <h3>Resize the browser window to see the effect.</h3>
</div>

</body>--%>
