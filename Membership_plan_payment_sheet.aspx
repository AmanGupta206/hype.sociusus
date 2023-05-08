<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Membership_plan_payment_sheet.aspx.cs" Inherits="hype.sociusus.Membership_plan_payment_sheet" %>

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
              <div style="height:90px;position:fixed;  z-index:1; background-color:white; width:100%; margin-top:-1px; " class="Header"> 
                 <div  style="height:90px;position:fixed;  z-index:1;background-color:white;width:100%;margin-top:0px; border-width:0.5px; border-bottom:solid " class ="row">
                        <div class="col-md-10"> 
                             <a href="https://localhost:44367/homepage.aspx">
                               <img width:"20px" src="images/hype.%202023-04-17%20195423.png"/ style="   border: none;max-width: 100px;height: auto;" href="https://localhost:44367/homepage.aspx">
                             </a>
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
<%--Codes for main body--%>

             <div style="height:calc(100%-60px);background-color: #f5f5f5;" class ="main"  > 
                     <div class="row"  >
                           <div class="col-md-6"  style="padding-top: 100px"; >  
                                     <h2  style="padding-top: 100px; padding-left:250px">Memberhip Plan</h2>                             
                           </div>
                           <div class="col-md-6"   style="padding-top: 200px; padding-left:215px;">  
                              
                               <asp:Button class="btn btn-secondary"  ID="Button1" runat="server" Text="Home >> Memberhip Plan" /> 
                               
                           </div>
                      </div>
                    <div class="container">
                         <div class="row">
                           <div class="col-md-12 mx-auto">
                                <div class="row">
                                     <div class="col">                                              
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" class="checkmark" 
                                            style="Margin-left: 400px; margin-right: 400px; Margin-top: 60px; margin-bottom: 60px;">
                                            <asp:ListItem id="btn1">Monthly&nbsp;</asp:ListItem>
                                            <asp:ListItem  id="btn2">Yearly&nbsp;</asp:ListItem>
                                            <asp:ListItem id="btn3">Lifetime&nbsp;</asp:ListItem>
                                    </asp:RadioButtonList>
                                                                            
                                                                                
                                     </div>
                                 </div>  
                                <div class="row">
                                     <div class="col-md-4">  
                                          <div class="card">
                                              <div class="card-body">
                                                 <h4>Free Plan</h4>
                                                  <div style="background-color: #f5f5f5; padding-left: 110px; padding-right: 100px;"><h2>Free</h2></div>
                                                     
                                                        <div class="card-body">
            
                                                            <ul class="list-unstyled mt-3 mb-4" style="text-align:left">
                                                                <li><h5>Features of Free Plan</h5></li>
                                                              <li>32 AI Document Templates<br /></li>
                                                              <li>10,000 Words per month<br /></li>
                                                              <li>100 Images per month<br /></li>
                                                              <li>0 Speech to Text per month<br /></li>
                                                              <li>0 MB Audio file size limit<br /></li>
                                                                <li><i class="fa-solid fa-circle-xmark"></i> AI Chat <span class="font-weight-bold">?</span></li>
                                                                <li><i class="fa-solid fa-circle-xmark"></i> AI Code <span class="font-weight-bold">?</span></li>
                                                                <li><i class="fa-sharp fa-solid fa-square-check"></i> Hide Ads <span class="font-weight-bold"></span></li>
                                                                <li><i class="fa-solid fa-circle-xmark"></i> Free Setup <span class="font-weight-bold"></span></li>
                                                                <li><i class="fa-solid fa-circle-xmark"></i> Free Support <span class="font-weight-bold"></span></li>
                                                            </ul>
                                                            <button type="button" class="btn btn-lg btn-block btn-outline-primary">Upgrade</button>
                                                          </div>
                                                        
                                                  </div>

                                              </div>
                                          </div>
                                         

                                       <div class="col-md-4">  
                                             <div class="card">
                                              <div class="card-body">
                                                 <h4>Trial Plan</h4>
                                                  <div style="background-color: #f5f5f5; padding-left: 110px; padding-right: 100px;"><h2>Trial</h2></div>
                                                     
                                                        <div class="card-body">
            
                                                            <ul class="list-unstyled mt-3 mb-4" style="text-align:left">
                                                                <li><h5>Features of Trial Plan</h5></li>
                                                               <li>61 AI Document Templates<br /></li>
                                                                  <li>100,000 Words per month<br /></li>
                                                                  <li>1000 Images per month<br /></li>
                                                                  <li>0 Speech to Text per month<br /></li>
                                                                  <li>0 MB Audio file size limit<br /></li>
                                                                    <li><i class="mdi mdi-close"></i> AI Chat <span class="font-weight-bold">?</span></li>
                                                                    <li><i class="mdi mdi-close"></i> AI Code <span class="font-weight-bold">?</span></li>
                                                                    <li><i class="mdi mdi-check"></i>  Hide Ads <span class="font-weight-bold"></span></li>
                                                                    <li><i class="mdi mdi-check"></i> Free Setup <span class="font-weight-bold"></span></li>
                                                                    <li><i class="mdi mdi-check"></i> Free Support <span class="font-weight-bold"></span></li>
                                                            </ul>
                                                            <button type="button" class="btn btn-lg btn-block btn-outline-primary">Upgrade</button>
                                                          </div>
                                                        
                                                  </div>

                                              </div>
                                             </div>
                                       
                                        <div class="col-md-4">  
                                             <div class="card">
                                              <div class="card-body">
                                                 <h4>Free Plan</h4>
                                                  <div style="background-color: #f5f5f5; padding-left: 110px; padding-right: 100px;"><h2>Extended Plan</h2></div>
                                                  <div><h4>Features of Free Plan</h4>
                                                        <div class="card-body">
            
                                                            <ul class="list-unstyled mt-3 mb-4" style="text-align:left">
                                                               <li>Features of Free Plan</li>
                                                              <li>32 AI Document Templates<br /></li>
                                                              <li>10,000 Words per month<br /></li>
                                                              <li>100 Images per month<br /></li>
                                                              <li>0 Speech to Text per month<br /></li>
                                                              <li>0 MB Audio file size limit<br /></li>
                                                                <li><i class="fa-solid fa-circle-xmark"></i> AI Chat <span class="font-weight-bold">?</span></li>
                                                                <li><i class="mdi mdi-close"></i> AI Code <span class="font-weight-bold">?</span></li>
                                                                <li><i class="mdi mdi-check"></i>  Hide Ads <span class="font-weight-bold"></span></li>
                                                                <li><i class="mdi mdi-close"></i> Free Setup <span class="font-weight-bold"></span></li>
                                                                <li><i class="mdi mdi-close"></i> Free Support <span class="font-weight-bold"></span></li>
                                                            </ul>
                                                            <button type="button" class="btn btn-lg btn-block btn-outline-primary">Upgrade</button>
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
</body>
</html>
