<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="membership_plan.aspx.cs" Inherits="hype.sociusus.membership_plan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
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
    width:calc(105%);
    left : 250px;
    min-height: calc(100vh-60px);
    background:#f5f5f5;
    bottom: 50px;

}
.cards{
    width: 100%;
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

         
              <div style="height:90px;position:fixed;  z-index:1; background-color:white; width:100%; margin-top:-1px; " class="Header           "> 
                 <div  style="height:90px;position:fixed;  z-index:1;background-color:white;width:100%;margin-top:0px; border-width:0.5px; border-bottom:solid " class ="row">
                        <div class="col-md-10"> 
                             <a href="https://localhost:44367/homepage.aspx">
                               <img width:"20px" src="images/hype.%202023-04-17%20195423.png"/ style="   border: none;max-width: 100px;height: auto;" href="https://localhost:44367/homepage.aspx">
                             </a>
                        </div>
 <%--button for toggle--%>
                       <div>
                            <nav style="margin-left:200px; height: 31px; width: 869px;" class="navbar navbar-toggleable-md fixed-top">
                            <button id="nav-btn"class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarDiv"  aria-expanded="true" aria-label="Toggle navigation">
                                <span class="fa fa-bars"></span>

                            </button>
                                </nav>
                        </div>  

  <%--FOR DROP DOWN BUTTON IN TOP--%> 
            <div class="col-md-1"> 
                         <div class="dropdown show"  style="padding-top:10px">
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

<%--sidebar starts--%>
       <div class="container-fluid">
            <div class="row">
                <div class="col-md-3" id="side1">--%>
        
           <div class="sidebar"  >
    
                      <h4>&nbsp;&nbsp;My Account</h4>        
                      <a href="#">
                          <img width="15px" src="images/Dashboard%20Icons%20images/Screenshot%202023-05-02%20155743.png" /> Dashboard</a>
                      <a href="#"><i class="fa-solid fa-file"></i> My Documents</a>
                      <h4>Organize And Manage</h4>
                      <a href="#"><i class="fa-solid fa-bars"></i> Templates</a>
                      <a href="#"><i class="fa-solid fa-image"></i> AI Images</a>
                      <a href="#"><i class="fa-solid fa-comment"></i> AI Chat</a>
                      <a href="#"><i class="fa-solid fa-headphones"></i> Speech to Text</a>
                      <a href="#"><i class="fa-solid fa-code"></i> AI Code</a>        
                      <h4>&nbsp;&nbsp;Account</h4> 
                      <a href="#"><i class="fa-solid fa-share-nodes"></i> Affiliate Program</a>                   
                      <a href="#"><i class="fa-solid fa-gift"></i> Membership</a>
                      <a href="#"><i class="fa-solid fa-money-bill"></i> Transaction</a>
                      <a href="#"><i class="fa-solid fa-gear"></i> Account Settings</a>
                      <a href="#"><i class="fa-solid fa-right-from-bracket"></i> Logout</a>
            </div>
                    </div>
       <%--  </div>--%>
<%--sidebar ends --%>  
<%--main part of page starts--%>
               <div class="col-md-9" id="main1">--%>
        <div  class ="main"> 
             <div class="row"  >
                           <div class="col-md-6"  style="padding-top: 100px"; >  
                                     <h2  style="padding-top: 100px; padding-left:100px;">Current Plan</h2>                             
                           </div>
                           <div class="col-md-6"   style="padding-top: 200px; padding-left:100px;">  
                              
                               <asp:Button class="btn btn-secondary"  ID="Button1" runat="server" Text="Home >> Current Plan" /> 
                               
                           </div>
                      </div>
            <div class="row">
                
               <div class="col-md-12 mx-auto">
                 <div class="card" style="width: 800px; margin-top: 100px; margin-bottom: 100px;  margin-left: 100px; margin-right: 100px ";>
                     

                   <div class="card-body">
                      <div class="row">
                         <div class="col">                       
                            <h4><i class="fa-solid fa-gift"></i>&nbsp;Current Plan</h4>                                                   
                          </div>
                     </div>
                     <div class="row">
                        <div class="col"><hr></div>
                     </div>

                     <div class="row"  style="background-color: gainsboro;">
                                 <div class="col-md-3">  
                                         <label>Membership</label>                                  
                                 </div>

                               <div class="col-md-3">  
                                     <label>Payment Mode</label>                                   
                               </div>
                                 <div class="col-md-3">  
                                         <label>Start Date</label>                                     
                                 </div>
                               <div class="col-md-3">  
                                    <label>Expiry Date</label>
                               </div>
                     </div>

                    <div class="row">
                                 <div class="col-md-3">  
                                         <label>Free Plan</label>                                       
                                 </div>

                               <div class="col-md-3">  
                                     <label>One Time</label>                                   
                               </div>
                                 <div class="col-md-3">  
                                         <label>-</label>                                     
                                 </div>
                               <div class="col-md-3">  
                                    <label>-</label>
                               </div>
                          </div>

                       <div class="row">
                                <div class="col-md-9">                                                                                
                                </div>
                                 <div class="col-md-3">                                   
                                <div class="form-group">
                                    <asp:Button  class="btn btn-primary btn-block btn-sm" ID="Button2" runat="server" Text="Change Plan" />
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
     <%-- menu hide --%>
    <script>
        $("#nav-btn").on("click", function () {
                $("#side1").toggle();
            $("#main1").toggleClass('col-lg-12 full-width'); 

        });
    </script>
</body>
</html>
