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
                                  <a class="dropdown-item" href="dashboard_page.aspx"><img width="15px" src="images/Dashboard%20Icons%20images/Screenshot%202023-05-02%20155743.png" /> Dashboard</a>                            
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
<%--Codes for main body--%>

             <div style="height:calc(100%-60px);background-color: #f5f5f5;" class ="main"  > 
                     <div class="row"  >
                           <div class="col-md-6"  style="padding-top: 100px"; >  
                                     <h2  style="padding-top: 100px; padding-left:250px">Memberhip Plan</h2>                             
                           </div>
                           <div class="col-md-6"   style="padding-top: 200px; padding-left:215px;">  
                               <a class="btn btn-secondary" href="homepage.aspx" role="button">Home >> Memberhip Plan</a>                            
                           </div>
                      </div>
                    <div class="container">
                         <div class="row">
                           <div class="col-md-12 mx-auto">
                                <div class="row" style="padding-left: 422px;padding-bottom: 30px;">
                                  
                                    <div class="radform">
                                        <div class="radio">
                                            <input type="radio" name="radio-buttons" value="monthly" onchange="enableInputField(5)" />
                                            Monthly&nbsp; &nbsp; &nbsp;
              
                                            <input type="radio" name="radio-buttons" value="yearly" onchange="enableInputField(50)" />
                                            Yearly&nbsp; &nbsp; &nbsp;
              
                                            <input type="radio" name="radio-buttons" value="Lifetime" onchange="enableInputField(550)" />
                                            Life Time&nbsp; &nbsp; &nbsp;
               
                                        </div>
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
                                                            <a href="upgrade_membership_page2.aspx"><button type="button" class="btn btn-lg btn-block btn-outline-primary">Upgrade</button></a>
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
                                                                  <li>50,000 Words per month<br /></li>
                                                                  <li>500 Images per month<br /></li>
                                                                  <li>0 Speech to Text per month<br /></li>
                                                                  <li>0 MB Audio file size limit<br /></li>
                                                                   <li><i class="fa-solid fa-circle-xmark"></i> AI Chat <span class="font-weight-bold">?</span></li>
                                                                   <li><i class="fa-solid fa-circle-xmark"></i> AI Code <span class="font-weight-bold">?</span></li>
                                                                   <li><i class="fa-sharp fa-solid fa-square-check"></i> Hide Ads <span class="font-weight-bold"></span></li>
                                                                   <li><i class="fa-solid fa-circle-xmark"></i> Free Setup <span class="font-weight-bold"></span></li>
                                                                   <li><i class="fa-solid fa-circle-xmark"></i> Free Support <span class="font-weight-bold"></span></li>
                                                            </ul>
                                                            <button type="button" class="btn btn-lg btn-block btn-outline-primary">Current Plan</button>
                                                          </div>                                                        
                                                  </div>
                                              </div>
                                             </div>
                                       
                                        <div class="col-md-4">  
                                             <div class="card">
                                              <div class="card-body">
                                                 <h4>Extended Plan</h4>
                                                  <div style="background-color: #f5f5f5; padding-left: 48px; padding-right: 70px;padding-top: 5px;padding-bottom: 5px;">
                                                      <input class="labl" type="text" id="input-field" style="background-color: #f5f5f5; border-color: white;  "/>
                                                  </div>                                                   
                                                        <div class="card-body">          
                                                            <ul class="list-unstyled mt-3 mb-4" style="text-align:left">
                                                                <li><h5>Features of Trial Plan</h5></li>
                                                               <li>61 AI Document Templates<br /></li>
                                                                  <li>50,000 Words per month<br /></li>
                                                                  <li>500 Images per month<br /></li>
                                                                  <li>0 Speech to Text per month<br /></li>
                                                                  <li>0 MB Audio file size limit<br /></li>
                                                                   <li><i class="fa-solid fa-circle-xmark"></i> AI Chat <span class="font-weight-bold">?</span></li>
                                                                   <li><i class="fa-solid fa-circle-xmark"></i> AI Code <span class="font-weight-bold">?</span></li>
                                                                   <li><i class="fa-sharp fa-solid fa-square-check"></i> Hide Ads <span class="font-weight-bold"></span></li>
                                                                   <li><i class="fa-sharp fa-solid fa-square-check"></i> Free Setup <span class="font-weight-bold"></span></li>
                                                                   <li><i class="fa-sharp fa-solid fa-square-check"></i> Free Support <span class="font-weight-bold"></span></li>
                                                            </ul>
                                                            <a href="membership_billing_page.aspx"><button type="button" class="btn btn-lg bg-primary text-white btn-block btn-outline-primary">Upgrade</button></a>
                                                          </div>                                                        
                                                  </div>
                                              </div>
                                             </div>
                                      </div> 
                                </div> 
                            </div>
                          </div>
                     </div>
<!-- Footer PART CODES-->
      <div id="footer" style="background-color:#303030">
        <div class="footer-middle-section">
            <div class="container">
                <div class="row">
                    <div class="col-xl-5 col-lg-5 col-md-12">
                        <div class="footer-logo">
                            <img src="images/Footer%20all%20images/Screenshot%202023-04-27%20130014.png" alt="Logo">                           
                        </div>
                        <p style="color: white;">Create SEO-optimized and unique content for your blogs, ads, emails, and website 10X faster &amp; save hours of work with hype</p>
                    </div>
               <div class="col-xl-1 col-lg-1">
                 </div>
                    <div class="col-xl-2 col-lg-2 col-md-4">
                        <div style="color: white;" class="footer-links">
                            <h3>My Account</h3>
                                <ul >
                                   <li ><a style="color: white;" href="userlogin.aspx">Login</a></li>
                                    <li><a style="color: white;" href="userregister.aspx">Register</a></li>                         
                               </ul>
                          </div>
                      </div>
                    <div class="col-xl-2 col-lg-2 col-md-4">
                        <div style="color: white;" class="footer-links">
                            <h3>Helpful Links</h3>
                                <ul>
                                    <li><a style="color: white;" href="recent_blog_internal_page.aspx">Blog</a></li>                            
                                    <li><a style="color: white;"  href="Footer_Feedback_Page.aspx">Feedback</a></li>
                                    <li><a style="color: white;"  href="Footer_Contact_Page.aspx">Contact</a></li>
                                </ul>
                        </div>
                    </div>
                  <div class="col-xl-2 col-lg-2 col-md-4">
                        <div style="color: white;" class="footer-links">
                            <h3>Information</h3>
                                 <ul>
                                    <li><a style="color: white;" href="Footer_FAQ.aspx">FAQ</a></li>
                                    <li><a style="color: white;" href="testimonials_inner_page.aspx">Testimonials</a></li>                         
                                </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     <hr style="border-top: dotted 1px;" /> 
        <div class="footer-bottom-section">
       
                    
                <div class="container-fluid"  >
                     <div class="row">
                        <div class="col-xl-12">
                          <div style="color: white;" class="footer-row">
                                     <span style="float:left" class="footer-copyright-text">2023 Socius IGB Pvt Ltd, All right reserved</span>
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

       
    </form>
<%--script for change amount options--%>
    <script>
        function enableInputField(value) {
            const radioButtons = document.getElementsByName('radio-buttons');
            const inputField = document.getElementById('input-field');
            for (let i = 0; i < radioButtons.length; i++) {
                if (radioButtons[i].checked) {
                    inputField.disabled = false;
                    switch (value) {
                        case 5:
                            inputField.value = "₹" + value + " /per month ";
                            break;
                        case 50:
                            inputField.value = "₹" + value + " /per year";
                            break;
                        case 550:
                            inputField.value = "₹" + value + " /lifetime";
                            break;
                        default:
                            inputField.value = "";
                            break;
                    }
                    return;
                }
            }
            inputField.disabled = true;
            inputField.value = "";
        }

    </script>
</body>
</html>
