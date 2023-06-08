<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Membership_plan_payment_sheet.aspx.cs" Inherits="hype.sociusus.Membership_plan_payment_sheet1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <%--bootstrap css--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" rel="stylesheet" />
    <%--datatable css--%>
    <link href="datatables/css/jquery.dataTables.min.css" rel="stylesheet" />
    <%--fontawesome css--%>
     <link href="fontawesome/css/all.css" rel="stylesheet" />
 
    <%--Custom css--%>
    <link href="css/Membership_plan_payment_sheet.css" rel="stylesheet" />

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

            <div></div>


            <div class="dropdown top">
                <a class="btn btn-secondary " href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown">
                    <img class="avatarimg" src="images/default_user.png" />
                </a>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                    <a class="dropdown-item" href="Dashboard_main_page.aspx"><i class="fas fa-bars"></i>Dashboard</a>
                    <a class="dropdown-item" href="template_page_inside_dashboard.aspx"><i class="fa-solid fa-layer-group"></i>Templates</a>
                    <a class="dropdown-item" href="AI_image_page_in_dashboard.aspx"><i class="fa-solid fa-image"></i>AI Images</a>
                    <a class="dropdown-item" href="Dashboard_AI_Chat_Page.aspx"><i class="fa-solid fa-comment"></i>AI Chat</a>
                    <a class="dropdown-item" href="Speech_to_text.aspx"><i class="fa-solid fa-headphones"></i>Speech to Text</a>
                    <a class="dropdown-item" href="all_documents_page.aspx"><i class="fa-solid fa-file"></i>All Documents</a>
                    <a class="dropdown-item" href="Membership_page2.aspx"><i class="fa-solid fa-gift"></i>Membership</a>
                    <a class="dropdown-item" href="account_setting_page.aspx "><i class="fa-solid fa-gear"></i>Account Settings</a>
                    <a class="dropdown-item" href="#"><i class="fa-solid fa-right-from-bracket"></i>Logout</a>
                </div>
            </div>

            <div class="selectlang">
                <select id="langbtn" class="popup-with-zoom-anim button ripple-effect">
                    <option value="EN">English</option>
                    <option value="Ta">Tamil</option>
                    <option value="Te">Telugu</option>
                    <option value=" Arabic ">Arabic </option>
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
        <%--main part code starts--%>

        <div class="row FirstRow" style="background-color: #f5f5f5;">
            <div class="col-md-6">
                <div class="alldoc" style="display: flex; padding-left: 15%;">
                    <h2>Memberhip Plan</h2>
                </div>
            </div>
            <div class="col-md-6" style="padding-right: 9%;">

                <a class="btn btn-secondary rtbtn" href="homepage.aspx" role="button">Home >> Memberhip Plan</a>
            </div>
        </div>
        <%--Main Part codes start--%>
        <div style="padding: 2%;background-color: #f5f5f5;">
           <div class="container">
                     <div class="row">
                         <div class="col-md-12 mx-auto">
                             
                             <div class="row" style="padding-bottom: 30px;">
                                 
                                 <div class="radform" style="margin-left: auto;margin-right: auto;">
                                     <center>
                                     <div class="radio" >
                                        
                                         <input type="radio" name="radio-buttons" value="monthly" onchange="enableInputField(5)" />
                                         Monthly&nbsp; &nbsp; &nbsp;
              
                                            <input type="radio" name="radio-buttons" value="yearly" onchange="enableInputField(50)" />
                                         Yearly&nbsp; &nbsp; &nbsp;
              
                                            <input type="radio" name="radio-buttons" value="Lifetime" onchange="enableInputField(550)" />
                                         Life Time&nbsp; &nbsp; &nbsp;
               
                                     </div>
                                         </center>
                                 </div>
                                     
                             </div>
                            
                             <div class="row">
                                 <div class="col-md-4">
                                     <div class="card">
                                         <div class="card-body">
                                             <h4>Free Plan</h4>
                                             <div style="background-color: #f5f5f5; width: 100%;text-align: center;">
                                                 <h2>Free</h2>
                                             </div>

                                             <div class="card-body">
                                                 <ul class="list-unstyled mt-3 mb-4" style="text-align: left">
                                                     <li>
                                                         <h5>Features of Free Plan</h5>
                                                     </li>
                                                     <li>32 AI Document Templates<br />
                                                     </li>
                                                     <li>10,000 Words per month<br />
                                                     </li>
                                                     <li>100 Images per month<br />
                                                     </li>
                                                     <li>0 Speech to Text per month<br />
                                                     </li>
                                                     <li>0 MB Audio file size limit<br />
                                                     </li>
                                                     <li><i class="fa-solid fa-circle-xmark"></i>AI Chat <span class="font-weight-bold">?</span></li>
                                                     <li><i class="fa-solid fa-circle-xmark"></i>AI Code <span class="font-weight-bold">?</span></li>
                                                     <li><i class="fa-sharp fa-solid fa-square-check"></i>Hide Ads <span class="font-weight-bold"></span></li>
                                                     <li><i class="fa-solid fa-circle-xmark"></i>Free Setup <span class="font-weight-bold"></span></li>
                                                     <li><i class="fa-solid fa-circle-xmark"></i>Free Support <span class="font-weight-bold"></span></li>
                                                 </ul>
                                                 <a href="upgrade_membership_page2.aspx">
                                                     <button type="button" class="btn btn-lg btn-block btn-outline-primary">Upgrade</button></a>
                                             </div>

                                         </div>

                                     </div>
                                 </div>


                                 <div class="col-md-4">
                                     <div class="card">
                                         <div class="card-body">
                                             <h4>Trial Plan</h4>
                                             <div style="background-color: #f5f5f5; width: 100%;text-align: center;">
                                                 <h2>Trial</h2>
                                             </div>
                                             <div class="card-body">
                                                 <ul class="list-unstyled mt-3 mb-4" style="text-align: left">
                                                     <li>
                                                         <h5>Features of Trial Plan</h5>
                                                     </li>
                                                     <li>61 AI Document Templates<br />
                                                     </li>
                                                     <li>50,000 Words per month<br />
                                                     </li>
                                                     <li>500 Images per month<br />
                                                     </li>
                                                     <li>0 Speech to Text per month<br />
                                                     </li>
                                                     <li>0 MB Audio file size limit<br />
                                                     </li>
                                                     <li><i class="fa-solid fa-circle-xmark"></i>AI Chat <span class="font-weight-bold">?</span></li>
                                                     <li><i class="fa-solid fa-circle-xmark"></i>AI Code <span class="font-weight-bold">?</span></li>
                                                     <li><i class="fa-sharp fa-solid fa-square-check"></i>Hide Ads <span class="font-weight-bold"></span></li>
                                                     <li><i class="fa-solid fa-circle-xmark"></i>Free Setup <span class="font-weight-bold"></span></li>
                                                     <li><i class="fa-solid fa-circle-xmark"></i>Free Support <span class="font-weight-bold"></span></li>
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
                                             <div style="background-color: #f5f5f5;width: 100%;">
                                                 <input class="labl" type="text" id="input-field" style="background-color: #f5f5f5; border-color: white;width: 100%;" />
                                             </div>
                                             <div class="card-body">
                                                 <ul class="list-unstyled mt-3 mb-4" style="text-align: left">
                                                     <li>
                                                         <h5>Features of Trial Plan</h5>
                                                     </li>
                                                     <li>61 AI Document Templates<br />
                                                     </li>
                                                     <li>50,000 Words per month<br />
                                                     </li>
                                                     <li>500 Images per month<br />
                                                     </li>
                                                     <li>0 Speech to Text per month<br />
                                                     </li>
                                                     <li>0 MB Audio file size limit<br />
                                                     </li>
                                                     <li><i class="fa-solid fa-circle-xmark"></i>AI Chat <span class="font-weight-bold">?</span></li>
                                                     <li><i class="fa-solid fa-circle-xmark"></i>AI Code <span class="font-weight-bold">?</span></li>
                                                     <li><i class="fa-sharp fa-solid fa-square-check"></i>Hide Ads <span class="font-weight-bold"></span></li>
                                                     <li><i class="fa-sharp fa-solid fa-square-check"></i>Free Setup <span class="font-weight-bold"></span></li>
                                                     <li><i class="fa-sharp fa-solid fa-square-check"></i>Free Support <span class="font-weight-bold"></span></li>
                                                 </ul>
                                                 <a href="membership_billing_page.aspx">
                                                     <button type="button" class="btn btn-lg bg-primary text-white btn-block btn-outline-primary">Upgrade</button></a>
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
        </div>
        <!-- Footer -->
        <div id="footer" style="background-color: #303030">
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
                                <ul>
                                    <li><a style="color: white;" href="userlogin.aspx">Login</a></li>
                                    <li><a style="color: white;" href="userregister.aspx">Register</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-2 col-md-4">
                            <div style="color: white;" class="footer-links">
                                <h3>Helpful Links</h3>
                                <ul>
                                    <li><a style="color: white;" href="recent_blog_internal_page.aspx">Blog</a></li>
                                    <li><a style="color: white;" href="Footer_Feedback_Page.aspx">Feedback</a></li>
                                    <li><a style="color: white;" href="Footer_Contact_Page.aspx">Contact</a></li>
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
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12" style="background-color: #303030;">
                            <div style="color: white;" class="footer-row">


                                <span style="float: left" class="footer-copyright-text">2023 Socius IGB Pvt Ltd, All right reserved</span>
                                <span style="float: right">
                                    <a href="https://twitter.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-twitter"></i></a>
                                    <a href="https://www.instagram.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-instagram"></i></a>
                                    <a href="https://www.linkedin.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-linkedin-in"></i></a>
                                    <a href="https://in.pinterest.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-pinterest"></i></a>
                                    <a href="https://www.youtube.com/" target="_blank" rel="nofollow"><i class="fa-brands fa-youtube"></i></a></span>
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
