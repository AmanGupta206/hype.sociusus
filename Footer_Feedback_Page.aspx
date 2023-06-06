<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Footer_Feedback_Page.aspx.cs" Inherits="hype.sociusus.Footer_Feedback_Page1" %>

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
    <link href="css/Footer_Feedback_Page.css" rel="stylesheet" />
    <%--Custom css--%>
    <link href="css/recent_blog_internal_page.css" rel="stylesheet" />

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

        <div class="row FirstRow">
            <div class="col-md-6">
                <div class="alldoc" style="display: flex; padding-left: 15%;">
                    <h2>Feedback</h2>
                </div>
            </div>
            <div class="col-md-6" style="padding-right: 9%;">

                <a class="btn btn-secondary rtbtn" href="homepage.aspx" role="button">Home >> Feedback</a>
            </div>
        </div>
        <%--Main Part codes start--%>
        <div style="padding: 2%;">
            <div class="row">

                <div class="col-md-8" style="padding: 2rem;">
                    <div class="row">

                        <div class="card" style="padding: 2rem;">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <h4>Tell us what you think of us</h4>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <p style="padding-top: 17px;">We would like to hear your opinions about the website. We would be grateful if you could take the time to fill out this form</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Full Name</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Email Address</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Phone Number</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>


                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Subject</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Is there anything you would like to tell us?</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Message..."></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <asp:Button class="btn btn-primary  btn-block btn-lg" ID="Button2" runat="server" Text="Submit" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-md-4" style="padding-top: 45px;">
                    <div>
                        <h3 style="padding-top: 20px;">Recent Blog</h3>
                        <div class="row">
                            <div class="col-md-4">
                                <a href="#">
                                    <img src="images/Other%20Images/image%20logo.png" alt="Image Logo" style="width: 100%;">
                                    <div class="top-bottom text-dark" style="padding-left: 20%; padding-right: 18%;">Admin</div>
                                </a>
                            </div>
                            <div class="col-md-6" style="background-color: white;">
                                <div class="bottom-left text-dark">
                                    <h4 style="background-color: white;">First Blog</h4>
                                    <p class="text-dark" style="background-color: white;">3 Years Ago</p>
                                </div>
                            </div>
                        </div>
                        <p style="padding-top: 20px;">Testimonials</p>
                    </div>
                    <%--crousal of testimonials part code--%>
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="background-color: #fff;">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="card-body">
                                    <i class="fa-solid fa-quote-left testiconleft"></i>
                                    <br />
                                    <p style="width: auto">
                                        Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla paria tur.
                                    Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                    </p>
                                    <i class="fa-solid fa-quote-right "></i>
                                    <div style="display: flex">
                                        <img src="images/default_user.png" style="width: 80px; height: 75px; border-radius: 50px" />
                                        <div style="margin-left: 25px; padding-top: 10px;">
                                            <h5>Tony Stark</h5>
                                            <h6 style="color: #184698">Social Marketing</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">

                                <div class="card-body">
                                    <i class="fa-solid fa-quote-left testiconleft"></i>
                                    <br />
                                    <p style="width: auto">
                                        Elitsed do eiusmod tempor incididunt ut labore laboris nisi ut aliquip ex ea et dolore magna aliqua Ut enim ad minim veniam, 
                                    quis nostrud exercitation ullamco laboris nisi ut aliquip e

                                    </p>
                                    <i class="fa-solid fa-quote-right "></i>
                                    <div style="display: flex">
                                        <img src="images/default_user.png" style="width: 80px; height: 75px; border-radius: 50px" />
                                        <div style="margin-left: 25px; padding-top: 10px;">
                                            <h5>Steve Roger</h5>
                                            <h6 style="color: #184698">Content Writer</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="card-body">
                                    <i class="fa-solid fa-quote-left testiconleft"></i>
                                    <br />
                                    <p style="width: auto">
                                        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo do consequat.
                                    Elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua

                                    </p>
                                    <i class="fa-solid fa-quote-right "></i>
                                    <div style="display: flex">
                                        <img src="images/default_user.png" style="width: 80px; height: 75px; border-radius: 50px" />
                                        <div style="margin-left: 25px; padding-top: 10px;">
                                            <h5>Natasha</h5>
                                            <h6 style="color: #184698">Designer</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>

                    <div style="padding-top: 2rem;">
                        <h3>Social Profiles</h3>

                        <span class="blogicon">
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
</body>
</html>
