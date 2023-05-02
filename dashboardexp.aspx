<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboardexp.aspx.cs" Inherits="hype.sociusus.dashboardexp" %>

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
  height: auto;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 120%;
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



.cards{
    width: 100%;
    padding: 35px 20px;
    display: grid;
    grid-template-columns: repeat(3,1fr);
    grid-gap:20px;

}
.cards .card{
    padding:20px;
    display:flex;
    align-items:center;
    justify-content:space-between;
    background: #fff;
    border-radius:10px;
    box-shadow:0 7px 25px 0 inherit;
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

                    <%--FOR DROP DOWN BUTTON IN TOP--%> 
            <class="nav navbar-nav navbar-right"> 
             <div class="dropdown show" >
                      <a class="btn btn-secondary " href="#" role="button" id="dropdownMenuLink"  data-toggle="dropdown" >
                          <img src="images/Dashboard%20Icons%20images/Screenshot%202023-05-02%20154408.png" />
                      </a>

                  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                    <a class="dropdown-item" href="#"><img width="15px" src="images/Dashboard%20Icons%20images/Screenshot%202023-05-02%20155743.png" /> Dashboard</a>
                    <a class="dropdown-item" href="#"><i class="fa-solid fa-file"></i> My Documents</a>
                    <a class="dropdown-item" href="#"><i class="fa-solid fa-bars"></i> Templates</a>
                      <a class="dropdown-item" href="#"><i class="fa-solid fa-image"></i> AI Images</a>
                      <a class="dropdown-item" href="#"><i class="fa-solid fa-comment"></i> AI Chat</a>
                      <a class="dropdown-item" href="#"><i class="fa-solid fa-headphones"></i> Speech to Text</a>
                      <a class="dropdown-item" href="#"><i class="fa-solid fa-file"></i> All Documents</a>
                      <a class="dropdown-item" href="#"><i class="fa-solid fa-gift"></i> Membership</a>
                      <a class="dropdown-item" href="#"><i class="fa-solid fa-gear"></i> Account Settings</a>
                      <a class="dropdown-item" href="#"><i class="fa-solid fa-right-from-bracket"></i> Logout</a>
                    
                  </div>
            </div>

               <%-- END OF CODE FOR DROP DOWN--%>

           
          
              
                

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

<style>
.content{
    min-width:17rem;
    width:17rem;
    height:100vh;
    position:fixed;
    top:0;
    left:0;
    box-shadow:3px 3px 10px rgba(0,-0,-0,-0.1);
    transition:all 0.4s;
}
/*css color-profile main section*/
.main{
   
    width:calc(100% - 17rem);
    margin-left : 17rem;
     transition:all 0.4s;
    min-height: calc(100vh-60px);
    background:#f5f5f5;

}
#sidebar.active{
    margin-left:-17rem;

}
#main.active{
    width:100%;
    margin:0;
}
.seperator{
    margin:3rem 0;
    border-button: 1px dashed white;
}

@media(max-width: 768px) {
    #sidebar{
        margin-left: -17rem;
    }
    #sidebar.active{
        margin-left:0;
    }
    #main{
        width:100%;
        margin:0;
    }
    #main.active{
       
         margin-left: 17rem;
          width:calc(100%-17rem);
    }
}

$(function(){$('#sidebarcollapse').on('click',function() {$('#sidebar,#main').toggleclass('active');});});
     
</style>



  
<%--side navigation box starts--%>
         <div class="content" id="sidebar">
           <div class="sidebar" style="position:relative;float:left">
    
                      <h5>&nbsp;&nbsp;My Account</h5>        
                      <a href="#">
                          <img width="15px" src="images/Dashboard%20Icons%20images/Screenshot%202023-05-02%20155743.png" /> Dashboard</a>
                      <a href="#"><i class="fa-solid fa-file"></i> My Documents</a>
                      <h5>Organize And Manage</h5>
                      <a href="#"><i class="fa-solid fa-bars"></i> Templates</a>
                      <a href="#"><i class="fa-solid fa-image"></i> AI Images</a>
                      <a href="#"><i class="fa-solid fa-comment"></i> AI Chat</a>
                      <a href="#"><i class="fa-solid fa-headphones"></i> Speech to Text</a>
                      <a href="#"><i class="fa-solid fa-code"></i> AI Code</a>        
                      <h5>&nbsp;&nbsp;Account</h5> 
                      <a href="#"><i class="fa-solid fa-share-nodes"></i> Affiliate Program</a>                   
                      <a href="#"><i class="fa-solid fa-gift"></i> Membership</a>
                      <a href="#"><i class="fa-solid fa-money-bill"></i> Transaction</a>
                      <a href="#"><i class="fa-solid fa-gear"></i> Account Settings</a>
                      <a href="#"><i class="fa-solid fa-right-from-bracket"></i> Logout</a>
            </div>
          </div>

<%--side navigation ends --%>  

      <%--  Toggler Button--%>
        <button id ="sidebarcollapse" type ="button" class=" btn btn-light bg-white rounded-pill shadow-sm px-4 mb-4>">Toggler</button>

  <div class ="main" id="main">
       <h2>&nbsp;Dashboard</h2>
      <div class ="cards">
                 <div class="card">             
                       <div class="content">                  
                                <h4>Words Used</h4>
                                <p >
                                  0/10,000
                                </p>
                                <img src="images/Dashboard%20Icons%20images/Screenshot%202023-04-28%20185928.png" />                                   
                        </div>
                 </div>
                         <div class="card">             
                           <div class="content">                   
                                    <h4>Images Used</h4>
                                    <p >
                                      0/100
                                    </p>
                                   <img src="images/Dashboard%20Icons%20images/Screenshot%202023-04-28%20190005.png" />                                   
                            </div>
                          </div>
                         <div class="card">             
                           <div class="content">                    
                                    <h4>Speech to text</h4>
                                    <p >
                                      0/0
                                    </p>
                                     <img src="images/Dashboard%20Icons%20images/Screenshot%202023-04-28%20190034.png" />                                   
                            </div>
                          </div>
           </div>

               <div>
                  Words used this month
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
