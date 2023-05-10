<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="membership_billing_page.aspx.cs" Inherits="hype.sociusus.membership_billing_page" %>

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
<!--HEADER START-->

         
              <div style="height:90px;position:fixed;  z-index:1;background-color:white;width:100%;margin-top:-1px;" class="Header"> 
                 <div  style="height:90px;position:fixed;  z-index:1;background-color:white;width:100%;margin-top:0px;" class ="row" >
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
<%--main body part codes--%>
        <%--Codes for main body--%>

             <div style="height:calc(100%-60px);background-color: #f5f5f5;" class ="main"  > 
             <div class="row"  >
                           <div class="col-md-6"  style="padding-top: 100px"; >  
                                     <h2  style="padding-top: 100px; padding-left:250px">Upgrade Membership</h2>                             
                           </div>
                           <div class="col-md-6"   style="padding-top: 200px; padding-left:275px;">  
                              
                               <asp:Button class="btn btn-secondary"  ID="Button2" runat="server" Text="Home >> Upgrade" /> 
                               
                           </div>
                      </div>
        <div class="row">
         <div class="col-md-12 mx-auto">
           <div class="card" style="width: 800px; margin-left: 60px; ">
               <div class="card-body">
                  <div class="row">
                     <div class="col">                       
                            <h4>Billing Details</h4>                                                   
                     </div>
                  </div>                 
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                         <div class="col-md-10">  
                                 <label>Type</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Personal/Business" ></asp:TextBox>
                                </div>
                         </div>
                  </div>
                  <div class="row">
                           <div class="col-md-10">  
                                 <label>Name*</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Name" ></asp:TextBox>
                                </div>
                           </div>
                   </div>

                    <div class="row">                            
                           <div class="col-md-10">  
                                 <label>Address*</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Address" ></asp:TextBox>
                                </div>
                           </div>
                      </div>
                    <div class="row">                            
                           <div class="col-md-6">  
                                 <label>City*</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Bengaluru" ></asp:TextBox>
                                </div>
                           </div>
                           <div class="col-md-3">  
                                 <label>State</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Karnataka" ></asp:TextBox>
                                </div>
                           </div>
                         <div class="col-md-2">  
                                 <label>Zip Code</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="560093" ></asp:TextBox>
                                </div>
                           </div>
                      </div>

                    <div class="row">                            
                           <div class="col-md-10">  
                                 <label>Country*</label>
                                <div class="form-group">
                                   <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="India" ></asp:TextBox>
                                </div>
                           </div>
                      </div>

                    <div class="row">                            
                           <div class="col-md-3">                                   
                                <div class="form-group">
                                    <asp:Button  class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Save Changes" />
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
