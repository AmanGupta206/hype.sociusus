<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard2.aspx.cs" Inherits="hype.sociusus.dashboard2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
  position: fixed;
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
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
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


<div class="sidebar">
  <h3>My Account</h3>
  <a class="active" href="#home">Dashboard</a>
  <a href="#">My Documents</a>
  <ul> 
  <li><a href="#">All Documents</a></li>
  <li><a href="#">All AI Documents</a></li>
  </ul>
  <h3>Organize And Manage</h3>  
  <a href="#">Templates</a>
  <a href="#">AI Images</a>
  <a href="#">AI Chat</a>
  <a href="#">Speech to Text</a>
  <a href="#">AI Code</a>
  <h3>Account</h3> 
  <a href="#">Affiliate Program</a>
  <ul> 
  <li><a href="#">Affiliate Program</a></li>
  <li><a href="#">Withdrawals</a></li>
  </ul>
  <a href="#">Membership</a>
  <a href="#">Transaction</a>
  <a href="#">Account Settings</a>
  <a href="#">Logout</a>
</div>

<div class="content">
  <h2>Dashboard</h2>
   <div class="container">
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
