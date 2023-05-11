<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recent_blog_internal_page.aspx.cs" Inherits="hype.sociusus.recent_blog_internal_page" %>

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



/*css color-profile main section*/
.main{
    position:relative;
    width:100%;
    
    min-height: calc(100vh-60px);
    background:#f5f5f5;
    bottom: 50px;

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
              <div style="height:90px;position:fixed;  z-index:1; background-color:white; border-bottom: solid; width:100%; margin-top:-1px; " class="Header"> 
                 <div  style="height:90px;position:fixed;  z-index:1;background-color:white;width:100%;margin-top:0px; border-width:0.5px; border-bottom:solid " class ="row">
                        <div class="col-md-10"> 
                             <a href="https://localhost:44367/homepage.aspx">
                               <img width:"20px" src="images/hype.%202023-04-17%20195423.png"/ style="   border: none;max-width: 100px;height: auto;" href="https://localhost:44367/homepage.aspx">
                             </a>
                        </div>

  <%--FOR DROP DOWN BUTTON IN TOP--%> 
            <div class="col-md-1" style="border-right: inset;border-left: outset;"> 
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
        <style>
.container_of_recent_blog {
  position: relative;
  height:400px;
  margin-left: 0px;
  margin-right: 0px;
  color: white;
}
.bottom-left {
  position: absolute;
  bottom: 8px;
  left: 16px;
}

.bottom-left {
  position: absolute;
  top: 8px;
  left: 16px;
}

</style>
<%--Codes for main body--%>

             <div style="height:calc(100%-60px);background-color: #f5f5f5;" class ="main"  > 
                     <div class="row"  >
                           <div class="col-md-6"  style="padding-top: 100px"; >  
                                     <h2  style="padding-top: 100px; padding-left:250px">Blogs</h2>                             
                           </div>
                           <div class="col-md-6"   style="padding-top: 200px; padding-left:215px;">  
                              
                               <asp:Button class="btn btn-secondary"  ID="Button1" runat="server" Text="Home >> Blog"  /> 
                               
                           </div>
                      </div>
   <%--Recent blogs codes start--%>
                <div class="row">
                   <div class="col-md-12 mx-auto" style="display: flex;">
                     <div class="col-md-8" >
                            <div class="container_of_recent_blog  bg-light" >
                                <div  style="margin-left: 300px;">
                                 <div style="margin-top:0px"; margin-bottom: 45px">
                                        <h3 class="text-dark">Recent Blog</h3>
                                        
                                 </div>
                                <div class="row" style="height: 325px;">
                    
                                     <div class="col-md-4">
                                          <a href="#"><img src="images/Other%20Images/image%20logo.png" alt="Image Logo" style="width:100%;">
                                         <div class="top-bottom text-dark">Admin</div></a>
                                    </div>
                                    <div class="col-md-6">                                        
                                          <div class="bottom-left text-dark">First Blog
                                          <p class="text-dark">Consectetur adipisicing elitsed do eiusmod tempor incididunt ut labore    et dolore magna aliqua Ut eni...</p>                 
                                         </div>
                                  </div>
                               </div>
                                </div>
                            </div>
                     </div>
                     <div class="col-md-4" ></div>
                   </div>
                </div>
    </form>
</body>
</html>
