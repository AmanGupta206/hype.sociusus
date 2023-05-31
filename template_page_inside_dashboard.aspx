<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="template_page_inside_dashboard.aspx.cs" Inherits="hype.sociusus.template_page_inside_dashboard" %>

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
    width:100%;
    
    min-height: calc(100vh-60px);
    background:#f5f5f5;
    

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
              <div style="height:90px;position:fixed; border-bottom: solid;  z-index:1; background-color:white; width:100%; margin-top:-1px; " class="Header"> 
                 <div class ="row" style="height:90px;position:fixed;  z-index:1;background-color:white;width:100%;margin-top:0px; border-width:0.5px; border-bottom:solid " >
                        <div class="col-md-2"> 
                             <a href="https://localhost:44367/homepage.aspx">
                               <img width:"20px" src="images/hype.%202023-04-17%20195423.png"/ style="   border: none;max-width: 100px;height: auto;" href="https://localhost:44367/homepage.aspx">
                             </a>
                       </div>      
<%--button for toggle--%>
                     <div class="col-md-8"> 
                         <nav style="margin-left:185px; height: 31px; width: 869px;" class="navbar navbar-toggleable-md fixed-top">
                                    <button id="nav-btn"class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarDiv"  aria-expanded="true" aria-label="Toggle navigation">
                                        <span class="fa fa-bars"></span>
                                    </button>
                         </nav>
                     </div> 

<%--FOR DROP DOWN BUTTON IN TOP--%> 
            <div class="col-md-1" style="border-right:1px solid #e0e0e0;border-left:1px solid #e0e0e0"> 
                         <div class="dropdown show">
                                  <a  style="align-content:center;" class="btn1" href="#" role="button" id="dropdownMenuLink"  data-toggle="dropdown" >
                                      <img style="align-content:center;margin:10px;height:60px;width:60px;" src="images/Dashboard%20Icons%20images/Screenshot%202023-05-02%20154408.png" />
                                  </a>
                             <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                  <a class="dropdown-item" href="Dashboard_main_page.aspx"><i class="fas fa-bars"></i> Dashboard</a>                           
                                  <a class="dropdown-item" href="template_page_inside_dashboard.aspx"><i class="fa-solid fa-layer-group"></i> Templates</a>
                                  <a class="dropdown-item" href="AI_image_page_in_dashboard.aspx"><i class="fa-solid fa-image"></i> AI Images</a>
                                  <a class="dropdown-item" href="Dashboard_AI_Chat_Page.aspx"><i class="fa-solid fa-comment"></i> AI Chat</a>
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
                   <div style="position: relative;display: inline-block;padding:30px 0px; ">
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
<%--sidebar  and main part starts--%>
<div class="container-fluid">
            <div class="row">
                <div class="col-md-2" id="side1"  style="padding-left: 0px; padding-right: 0px;" > 
                    <div class="sidebar" >    
                      <h4>&nbsp;&nbsp;My Account</h4>        
                        <a href="Dashboard_main_page.aspx"><i class="fas fa-bars"></i> Dashboard</a>
                           <div class="dropdown">
                                    <button class="btn btn-secondary dropdown-toggle"  style="background: #f5f5f5; border-color: #f5f5f5;color:black" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fa-solid fa-file"></i>&nbsp;My Documents
                                    </button>
                                 <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="all_documents_page.aspx">All Documents</a>
                                    <a class="dropdown-item" href="all_ai_image_page.aspx">All AI Images</a>                                  
                                 </div>
                            </div>
                      <h4>Organize And Manage</h4>
                          <a href="template_page_inside_dashboard.aspx"><i class="fa-solid fa-layer-group"></i> Templates</a>
                          <a href="AI_image_page_in_dashboard.aspx"><i class="fa-solid fa-image"></i> AI Images</a>
                          <a href="Dashboard_AI_Chat_Page.aspx"><i class="fa-solid fa-comment"></i> AI Chat</a>
                          <a href="Speech_to_text.aspx"><i class="fa-solid fa-headphones"></i> Speech to Text</a>
                          <a href="Dashboard_AI_Code_Page.aspx"><i class="fa-solid fa-code"></i> AI Code</a>        
                          <h4>&nbsp;&nbsp;Account</h4> 
                            <div class="dropdown">
                                        <button class="btn btn-secondary dropdown-toggle"  style="background: #f5f5f5; border-color: #f5f5f5;color:black" type="button" id="dropdownMenuButton1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="fa-solid fa-share-nodes"></i>&nbsp;Affiliate Program
                                        </button>
                                     <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="Dashboard_Affiliate_Program.aspx">Affiliate Program</a>
                                        <a class="dropdown-item" href="#">Withdrawls</a>                                  
                                     </div>
                                </div>
                          <a href="Membership_page2.aspx"><i class="fa-solid fa-gift"></i> Membership</a>
                          <a href="transaction_page.aspx"><i class="fa-solid fa-money-bill"></i> Transaction</a>
                          <a href="account_setting_page.aspx"><i class="fa-solid fa-gear"></i> Account Settings</a>
                          <a href="#"><i class="fa-solid fa-right-from-bracket"></i> Logout</a>
                   </div>
                </div>
                 <div class="col-md-10" id="main1"  style="padding-right: 0px;">
                  <div  class ="main"> 
                    <div class="row"  >
                           <div class="col-md-6 "  style="padding-top: 200px;padding-left:100px;display:flex" >  
                                     <div class="alldoc" style="display:flex"><h2>Templates</h2><p style= " padding-top: 10px; padding-left: 10px;"><i class="fa-solid fa-chart-simple docicon"></i> 0/10,000 words used</p></div>
                           </div>
                           <div class="col-md-6"   style="padding-top: 200px; padding-left:275px;">                              
                               <asp:Button class="btn btn-secondary"  ID="Button1" runat="server" Text="Home >> Templates" OnClick="Button1_Click" />                               
                           </div>
                    </div>
<%-- main part code--%>
                        
<%--CSS of templates--%>
<style>
.card6-block{
   padding: 1em;
  border: 0px solid gray;
  border-radius: 20px;
  width: fit-content;
  transition: 0.2s;
}
.card6-block:hover{
  margin-top: -10px;
  transition: 0.2s;
}
 
i{
    color:darkblue;
}
i:hover{
    color:gray;
}
 

</style>
<!-- Templete section starting -->
 <br>
 <section>
 <%-- temp body --%>
   
            <ul class="nav nav-pills nav-fill gap-2 p-1 small bg-secondary rounded-5 shadow-sm" 
                id="pillNav2" role="tablist" style="--bs-nav-link-color: var(--bs-white); 
                --bs-nav-pills-link-active-color: var(--bs-primary); --bs-nav-pills-link-active-bg: var(--bs-white);height:50px;width:990px;
                margin-left:50px;font-size:13px;">
                      <li class="nav-item" role="presentation">
                        <button class="nav-link active rounded-5" onclick="toggleData()" id="All-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="true">All Templates</button>
                      </li>
                      <li class="nav-item" role="presentation">
                        <button class="nav-link rounded-5" onclick="toggleData()" id="ab-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="false">Article and Blogs</button>
                      </li>
                      <li class="nav-item" role="presentation">
                        <button class="nav-link rounded-5" onclick="toggleData()" id="am-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="false">Ads and Marketing Tools</button>
                      </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link rounded-5" onclick="toggleData()" id="gw-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="false">General Writing</button>
                      </li>
                            <li class="nav-item" role="presentation">
                        <button class="nav-link rounded-5" onclick="toggleData()" id="ecom-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="false">Ecommerce</button>
                      </li>
                            <li class="nav-item" role="presentation">
                        <button class="nav-link rounded-5" onclick="toggleData()" id="ss-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="false">Social Media</button>
                      </li>
                            <li class="nav-item" role="presentation">
                        <button class="nav-link rounded-5" onclick="toggleData()" id="web-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="false">Website</button>
                      </li>
                            <li class="nav-item" role="presentation">
                        <button class="nav-link rounded-5" onclick="toggleData()" id="other-tab2" data-bs-toggle="tab" type="button" role="tab" aria-selected="false">Other</button>
                      </li>
             </ul>

    
    <div class="py-5">
    <div class="container5" id="data" style="width:1000px;margin-left:45px">
      <div class="row hidden-md-up" style="padding:20px 20px" id="data1">
                  <div class="template_head">
                     <h5>Article And Blogs</h5>
                     <hr>
                  </div>
       
                <div class="col-md-4">
                  <div class="card">
                    <div class="card6-block">
                      <a href="Templates_Blog_Ideas.aspx"><h4 class="card-title"><i class="fa fa-comment" ></i></h4>
                        <p class="card-subtitle text-muted">Blogs Ideas</p>
                      </a>
                        <p class="card-text p-y-1">Article/blog ideas that you can use to generate more traffic, leads,<br /> and sales for your business.</p>             
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card">
                    <div class="card6-block">
                      <h4 class="card-title"><i class="fa fa-align-left" aria-hidden="true"></i></h4>
                      <p class="card-subtitle text-muted">Blog Intros</p>
                      <p class="card-text p-y-1"> Enticing article/blog introductions that capture the attention of the audience.</p>
              
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card">
                    <div class="card6-block">
                      <h4 class="card-title"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></h4>
                      <h6 class="card-subtitle text-muted">Blog Titles</h6>
                      <p class="card-text p-y-1">Nobody wants to read boring blog titles, generate catchy blog titles with this tool.</p>
              
                    </div>
                  </div>
                </div>
              <br>
              <div class="row hidden-md-up" style="padding:20px 20px">
                <div class="col-md-4">
                  <div class="card">
                    <div class="card6-block">
                      <h4 class="card-title"><i class="fa fa-address-book" aria-hidden="true"></i></h4>
                      <h6 class="card-subtitle text-muted">Blog Section</h6>
                      <p class="card-text p-y-1">Write a few paragraphs about a subheading of your article.</p>
              
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card">
                    <div class="card6-block">
                      <h4 class="card-title"><i class="fa fa-check-square" aria-hidden="true"></i></h4>
                      <h6 class="card-subtitle text-muted">Blog Conclusion</h6>
                      <p class="card-text p-y-1">Create powerful conclusion that will make a reader take action.</p>
              
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="card">
                    <div class="card6-block">
                      <h4 class="card-title"><i class="fa fa-pencil-square" aria-hidden="true"></i></h4>
                      <h6 class="card-subtitle text-muted">Article Write</h6>
                      <p class="card-text p-y-1"> Create a fully complete high quality article from a title and outline text.</p>
              
                    </div>
                  </div>
                </div>
                  </div>
                <div class="row hidden-md-up" style="padding:20px 20px">
                  <div class="col-md-4">
                  <div class="card">
                    <div class="card6-block">
                      <h4 class="card-title"><i class="fa fa-pencil-square" ></i></h4>
                      <h6 class="card-subtitle text-muted">Article Rewrite</h6>
                      <p class="card-text p-y-1"> Copy an article, paste it in to the program, and with just one click
                                you'll have an entirely different article to read.</p>             
                    </div>
                  </div>
                </div>
                  <div class="col-md-4">
                  <div class="card">
                    <div class="card6-block">
                      <h4 class="card-title"><i class="fa fa-list" aria-hidden="true"></i></h4>
                      <h6 class="card-subtitle text-muted">Article Outlines</h6>
                      <p class="card-text p-y-1"> Detailed article outlines that help you write better content on a consistent basis.</p>   
                    </div>
                  </div>
                </div>
                  <div class="col-md-4">
                  <div class="card">
                    <div class="card6-block">
                      <h4 class="card-title"><i class="fa fa-list-ol" aria-hidden="true"></i></h4>
                      <h6 class="card-subtitle text-muted">Talking Points</h6>
                      <p class="card-text p-y-1"> Write short, simple and informative points for the subheadings of your article</p>
              
                    </div>
                  </div>
                </div>
                    </div>
                <div class="row hidden-md-up" style="padding:20px 20px">
                  <div class="col-md-4">
                  <div class="card">
                    <div class="card6-block">
                      <h4 class="card-title"><i class="fa fa-align-justify" aria-hidden="true"></i></h4>
                      <h6 class="card-subtitle text-muted">Paragrapher Writer</h6>
                      <p class="card-text p-y-1"> Perfectly structured paragraphs that are easy 
                                to read and packed with persuasive words.</p>
              
                    </div>
                  </div>
                </div>
                  <div class="col-md-4">
                  <div class="card">
                    <div class="card6-block">
                      <h4 class="card-title"><i class="fa fa-refresh" aria-hidden="true"></i></h4>
                      <h6 class="card-subtitle text-muted">Content Rephrase</h6>
                      <p class="card-text p-y-1">Rephrase your content in a different voice and style to appeal to different readers.</p>    
                    </div>
                  </div>
                </div>
                    </div>
          </div>
<%-- ads and marketing --%>
        <div class="row hidden-md-up" style="padding:20px 20px" id="data2">
          <div class="template_head" >
              <h5>Ads And Marketing Tools</h5>
              <hr>
          </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-brands fa-square-facebook"></i></h4>
               <p class="card-subtitle text-muted">Facebook Ads</p> 
              <p class="card-text p-y-1">Facebook ad copies that make your ads truly stand out.</p>
              
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-brands fa-square-facebook"></i></h4>
              <p class="card-subtitle text-muted">Facebook Ads Headlines</p>
              <p class="card-text p-y-1">Write catchy and convincing headlines to make your Facebook Ads stand out.</p>
              
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-brands fa-google"></i></h4>
              <h6 class="card-subtitle text-muted">Google Ad Titles</h6>
              <p class="card-text p-y-1">Creating ads with unique and appealing titles that entice people to click on your ad and purchase from your site.</p>
              
            </div>
          </div>
        </div>
      <br>
      <div class="row hidden-md-up" style="padding:20px 20px">
                <div class="col-md-4">
                    <div class="card">
                    <div class="card6-block">
                        <h4 class="card-title"><i class="fa-brands fa-google"></i></h4>
                        <h6 class="card-subtitle text-muted">Google Ad Descriptions</h6>
                        <p class="card-text p-y-1">The best-performing Google ad copy converts visitors into customers.</p>
              
                    </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                    <div class="card6-block">
                        <h4 class="card-title"><i class="fa-brands fa-linkedin"></i></h4>
                        <h6 class="card-subtitle text-muted">Linkedin Ad Headlines</h6>
                        <p class="card-text p-y-1">Attention-grabbing, click-inducing, and high-converting ad headlines for Linkedin.</p>
              
                    </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                    <div class="card6-block">
                        <h4 class="card-title"><i class="fa-brands fa-linkedin"></i></h4>
                        <h6 class="card-subtitle text-muted">Linkedin Ad Descriptions</h6>
                        <p class="card-text p-y-1">Professional and eye-catching ad descriptions that will make your product shine.</p>
              
                    </div>
                    </div>
                </div>
          </div>
        
          <div class="col-md-4">
              <div class="card">
                <div class="card6-block">
                  <h4 class="card-title"><i class="fa fa-bell" aria-hidden="true"></i></h4>
                  <h6 class="card-subtitle text-muted">Apps and SMS Notifications</h6>
                  <p class="card-text p-y-1">Notification messages for your apps, websites, and mobile devices that keep users coming back for more.</p>
              
                </div>
              </div>
            </div>
         </div> 
<%-- General Writing --%>
        <div class="row hidden-md-up" style="padding:20px 20px" id="data3">
          <div class="template_head" >
              <h5>General Writing</h5>
              <hr>
          </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa fa-text-width" aria-hidden="true"></i></h4>
               <p class="card-subtitle text-muted">Text Extender</p> 
              <p class="card-text p-y-1">Extend short sentences into more descriptive and interesting ones.</p>
              
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa fa-text-width" aria-hidden="true"></i></h4>
              <p class="card-subtitle text-muted">Content Shorten</p>
              <p class="card-text p-y-1">Short your content in a different voice and style to appeal to different readers.</p>
              
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-brands fa-quora"></i></h4>
              <h6 class="card-subtitle text-muted">Quora Answers</h6>
              <p class="card-text p-y-1">Answers to Quora questions that will position you as an authority.</p>
              
            </div>
          </div>
        </div>
     <br>
      <div class="row hidden-md-up" style="padding:20px 20px">
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa fa-child" aria-hidden="true"></i></h4>
              <h6 class="card-subtitle text-muted">Summarize for a 2nd grader</h6>
              <p class="card-text p-y-1">Translates difficult text into simpler concepts.</p>
              
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-regular fa-heart"></i></h4>
              <h6 class="card-subtitle text-muted">Stories</h6>
              <p class="card-text p-y-1">Engaging and persuasive stories that will capture your reader's attention and interest.</p>
              
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa fa-list" aria-hidden="true"></i></h4>
              <h6 class="card-subtitle text-muted">Bullet Point Answers</h6>
              <p class="card-text p-y-1">Precise and informative bullet points that provide quick and valuable answers to your customers' questions.</p>
              
            </div>
          </div>
        </div>
          </div>
        <div class="row hidden-md-up" style="padding:20px 20px">
          <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa fa-server" aria-hidden="true"></i></h4>
              <h6 class="card-subtitle text-muted">Definition</h6>
              <p class="card-text p-y-1">A definition for a word, phrase, or acronym that's used often by your target buyers.</p>
              
            </div>
          </div>
        </div>
          <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa fa-check-circle" aria-hidden="true"></i></h4>
              <h6 class="card-subtitle text-muted">Answers</h6>
              <p class="card-text p-y-1">Instant, quality answers to any questions or concerns that your audience might have.</p>
              
            </div>
          </div>
        </div>
          <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa fa-question-circle" aria-hidden="true"></i></h4>
              <h6 class="card-subtitle text-muted">Questions</h6>
              <p class="card-text p-y-1">A tool to create engaging questions and polls that increase audience participation and engagement.</p>
              
            </div>
          </div>
        </div>
            </div>
        <div class="row hidden-md-up" style="padding:20px 20px">
          <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa fa-sort-alpha-desc" aria-hidden="true"></i></h4>
              <h6 class="card-subtitle text-muted">Passive to Active Voice</h6>
              <p class="card-text p-y-1">Easy and quick solution to converting your passive voice sentences into active voice sentences.</p>
              
            </div>
          </div>
        </div>
          <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa fa-key" aria-hidden="true"></i></h4>
              <h6 class="card-subtitle text-muted">Pros and Cons</h6>
              <p class="card-text p-y-1">List of the main benefits versus the most common problems and concerns.</p>
              
            </div>
          </div>
        </div>
            <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa fa-refresh" aria-hidden="true"></i></h4>
              <h6 class="card-subtitle text-muted">Rewrite With Keywords</h6>
              <p class="card-text p-y-1">Rewrite your existing content to include more keywords and boost your search engine rankings.</p>
              
            </div>
          </div>
        </div>
            </div>
            <div class="row hidden-md-up" style="padding:20px 20px">
          <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa fa-envelope" aria-hidden="true"></i></h4>
              <h6 class="card-subtitle text-muted">Emails</h6>
              <p class="card-text p-y-1">Professional-looking emails that help you engage leads and customers.</p>
              
            </div>
          </div>
        </div>
          <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa fa-envelope" aria-hidden="true"></i></h4>
              <h6 class="card-subtitle text-muted">Emails V2</h6>
              <p class="card-text p-y-1">Personalized email outreach to your target prospects that get better results.</p>
              
            </div>
          </div>
        </div>
          <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-solid fa-envelope"></i></h4>
              <h6 class="card-subtitle text-muted">Email Subject Lines</h6>
              <p class="card-text p-y-1">Powerful email subject lines that increase open rates.</p>
              
            </div>
          </div>
        </div>
            </div>
            <div class="row hidden-md-up" style="padding:20px 20px">
                      <div class="col-md-4">
                      <div class="card">
                        <div class="card6-block">
                          <h4 class="card-title"><i class="fa fa-bullhorn" aria-hidden="true"></i></h4>
                          <h6 class="card-subtitle text-muted">Startup Name Generator</h6>
                          <p class="card-text p-y-1">Generate cool, creative, and catchy names for your startup in seconds.</p>
              
                        </div>
                      </div>
                    </div>
                      <div class="col-md-4">
                      <div class="card">
                        <div class="card6-block">
                          <h4 class="card-title"><i class="fa fa-file-text" aria-hidden="true"></i></h4>
                          <h6 class="card-subtitle text-muted">Company Bios</h6>
                          <p class="card-text p-y-1">Short and sweet company bio that will help you connect with your target audience.</p>
              
                        </div>
                      </div>
                    </div>
                      <div class="col-md-4">
                      <div class="card">
                        <div class="card6-block">
                          <h4 class="card-title"><i class="fa fa-list-ol" aria-hidden="true"></i></h4>
                          <h6 class="card-subtitle text-muted">Company Mission</h6>
                          <p class="card-text p-y-1">A clear and concise statement of your company's goals and purpose.</p>
              
                        </div>
                      </div>
                    </div>
                </div>



              <div class="row hidden-md-up" style="padding:20px 20px">
                      <div class="col-md-4">
                      <div class="card">
                        <div class="card6-block">
                          <h4 class="card-title"><i class="fa fa-align-left" aria-hidden="true"></i></h4>
                          <h6 class="card-subtitle text-muted">Company Vision</h6>
                          <p class="card-text p-y-1">A vision that attracts the right people, clients, and employees.</p>
              
                        </div>
                      </div>
                    </div>
            </div>
             </div>
<%-- Ecommerce --%>
        <div class="row hidden-md-up" style="padding:20px 20px" id="data4">
         <div class="template_head" >
          <h5>Ecommerce</h5>
          <hr>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa fa-gift" aria-hidden="true"></i></h4>
               <p class="card-subtitle text-muted">Product Name Generator</p> 
              <p class="card-text p-y-1">Create creative product names from examples words.</p>
              
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa fa-gift" aria-hidden="true"></i></h4>
              <p class="card-subtitle text-muted">Product Descriptions</p>
              <p class="card-text p-y-1">Authentic product descriptions that will compel, inspire, and influence.</p>
              
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-brands fa-amazon"></i></h4>
              <h6 class="card-subtitle text-muted">Amazon Product Titles</h6>
              <p class="card-text p-y-1">Product titles that will make your product stand out in a sea of competition.</p>
              
            </div>
          </div>
        </div>
      <br>
      <div class="row hidden-md-up" style="padding:20px 20px">
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-brands fa-amazon"></i></h4>
              <h6 class="card-subtitle text-muted">Amazon Product Descriptions</h6>
              <p class="card-text p-y-1">Descriptions for Amazon products that rank on the first page of the search results.</p>
              
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-brands fa-amazon"></i></h4>
              <h6 class="card-subtitle text-muted">Amazon Product Features</h6>
              <p class="card-text p-y-1">Advantages and features of your products that will make them irresistible to shoppers.</p>
              
            </div>
          </div>
        </div>
        
        </div>
            </div>
<%-- Social Media --%>
        <div class="row hidden-md-up" style="padding:20px 20px" id="data5">
          <div class="template_head" >
          <h5>Social Media</h5>
           <hr>
          </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-brands fa-square-facebook"></i></h4>
               <p class="card-subtitle text-muted">Social Media Post (Personal)</p> 
              <p class="card-text p-y-1">Write a social media post for yourself to be published on any platform.</p>
              
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-brands fa-square-facebook"></i></h4>
              <p class="card-subtitle text-muted">Social Media Post (Business)</p>
              <p class="card-text p-y-1">Write a post for your business to be published on any social media platform.</p>
              
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-brands fa-instagram"></i></h4>
              <h6 class="card-subtitle text-muted">Instagram Captions</h6>
              <p class="card-text p-y-1">Captions that turn your images into attention-grabbing Instagram posts.</p>
              
            </div>
          </div>
        </div>
     <br>
      <div class="row hidden-md-up" style="padding:20px 20px" >
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-brands fa-instagram"></i></h4>
              <h6 class="card-subtitle text-muted">Instagram Hashtags</h6>
              <p class="card-text p-y-1">Trending and highly relevant hashtags to help you get more followers and engagement.</p>
              
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-brands fa-square-twitter"></i></h4>
              <h6 class="card-subtitle text-muted">Twitter Tweets</h6>
              <p class="card-text p-y-1">Generate tweets using AI, that are relevant and on-trend.</p>
              
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-brands fa-youtube"></i></h4>
              <h6 class="card-subtitle text-muted">YouTube Titles</h6>
              <p class="card-text p-y-1">Catchy titles that attract more views and increase the number of shares.</p>
              
            </div>
          </div>
        </div>
          </div>
        <div class="row hidden-md-up" style="padding:20px 20px">
          <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-brands fa-youtube"></i></h4>
              <h6 class="card-subtitle text-muted">YouTube Descriptions</h6>
              <p class="card-text p-y-1"> Catchy and persuasive YouTube descriptions that help your videos rank higher.</p>
              
            </div>
          </div>
        </div>
          <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-brands fa-youtube"></i></h4>
              <h6 class="card-subtitle text-muted">YouTube Outlines</h6>
              <p class="card-text p-y-1">Video outlines that are a breeze to create and uber-engaging.</p>
              
            </div>
          </div>
        </div>
          <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-brands fa-linkedin"></i></h4>
              <h6 class="card-subtitle text-muted">LinkedIn Posts</h6>
              <p class="card-text p-y-1">Inspiring LinkedIn posts that will help you build trust and authority in your industry.</p>
              
            </div>
          </div>
        </div>
            </div>
        <div class="row hidden-md-up" style="padding:20px 20px">
          <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa fa-film" aria-hidden="true"></i></h4>
              <h6 class="card-subtitle text-muted">TikTok Video Scripts</h6>
              <p class="card-text p-y-1">Video scripts that are ready to shoot and will make you go viral.</p>
              
            </div>
          </div>
        </div>
      </div>
             </div>
<%-- Website --%>
        <div class="row hidden-md-up" style="padding:20px 20px" id="data6">
          <div class="template_head">
            <h5 class="Template head">Website</h5>
            <hr>
          </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-brands fa-google"></i></h4>
               <p class="card-subtitle text-muted">SEO Meta Tags (Blog Post)</p> 
              <p class="card-text p-y-1">A set of optimized meta title and meta description tags that will boost your search rankings for your blog.</p>
              
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-brands fa-google"></i></h4>
              <p class="card-subtitle text-muted">SEO Meta Tags (Homepage)</p>
              <p class="card-text p-y-1">A set of optimized meta title and meta description tags that will boost your search rankings for your home page.</p>
              
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-brands fa-google"></i></h4>
              <h6 class="card-subtitle text-muted">SEO Meta Tags (Product Page)</h6>
              <p class="card-text p-y-1">A set of optimized meta title and meta description tags that will boost your search rankings for your product page.</p>
              
            </div>
          </div>
        </div>
      </div><br>
      
<%-- Other --%>
        <div class="row hidden-md-up" style="padding:20px 20px" id="data7">
          <div class="template_head" >
            <h5 >Other</h5>
            <hr>
          </div>
        <div class="col-md-4" >
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa fa-refresh" aria-hidden="true"></i></h4>
               <p class="card-subtitle text-muted">Tone Changer</p> 
              <p class="card-text p-y-1">Change the tone of your writing to match your audience and copy.</p>
              
            </div>
          </div>
        </div>
        <div class="col-md-4" >
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa fa-music" aria-hidden="true"></i></h4>
              <p class="card-subtitle text-muted">Song Lyrics</p>
              <p class="card-text p-y-1">Unique song lyrics that will be perfect for your next hit song.</p>
              
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa fa-globe" aria-hidden="true"></i></h4>
              <h6 class="card-subtitle text-muted">Translate</h6>
              <p class="card-text p-y-1">Translate your content into any language you want.</p>
              
            </div>
          </div>
        </div>
      <br>
      <div class="row hidden-md-up" style="padding:20px 20px">
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-solid fa-circle-question"></i></h4>
              <h6 class="card-subtitle text-muted">FAQs</h6>
              <p class="card-text p-y-1">Generate frequently asked questions based on your product description.</p>
              
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><i class="fa-solid fa-circle-question"></i></h4>
              <h6 class="card-subtitle text-muted">FAQ Answers</h6>
              <p class="card-text p-y-1">Generate creative answers to questions (FAQs) about your business or website.</p>
              
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card6-block">
              <h4 class="card-title"><img src="images/Others/star%20new.png"  /></h4>          
              <h6 class="card-subtitle text-muted">Testimonials / Reviews</h6>
              <p class="card-text p-y-1">Add social proof to your website by generating user testimonials.</p>
              
            </div>
          </div>
        </div>
          </div>
        
    </div>
  </div>
      </div>



 </section>
 <br>
     
<style>       
.btn btn-default
{
    border : 2px solid;
}
.btn btn-info btn200
{
    border : 2px solid;
}               
</style>           
<!--Next Part-->
   <hr style="border-top: dotted 1px;" /> 
<%--CSS of Templates Part--%>
    <style>
.template_head{
    padding-left: 20px;
    padding-right: 600px;
}
.hr {
    margin-top: 0rem;
    margin-bottom: 1rem;
    border: 0;
    border-top: 1px solid #000
}
.filterDiv {
  float: left;
  background-color: #2196F3;
  color: #ffffff;
  width: 25%;
  line-height: 20px;
  text-align: center;
  margin: 2px;
  display: none;
}

.show {
  display: block;
}

.container {
  margin-top: 20px;
  overflow: hidden;
}   

/* Style the buttons */
.btn {
  border: none;
  outline: none;
  padding: 12px 16px;
  
  cursor: pointer;
}

.btn:hover {
  background-color: #ddd;
}

.btn.active {
  background-color: #666;
  color: white;
}
</style>
<section>
       


</section>    

 <!-- Footer -->
        <div class="footer-bottom-section">                 
                <div class="container-fluid"  >
                     <div class="row">
                        <div class="col-xl-12">
                          <div style="color: white;" class="footer-row">                    
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
       
         <!-- Footer -->







               </div>
           </div>
       </div>
    




    </form>

<%--Script for Toggle Option--%>
    <script>
        $("#nav-btn").on("click", function () {
                $("#side1").toggle();
            $("#main1").toggleClass('col-lg-12 full-width'); 

        });
    </script>
<%--Java Script for templates filteration part--%>
     <script>
         $("#All-tab2").on("click", function () {
             $("#data").show();
             $("#data1").show();
             $("#data2").show();
             $("#data3").show();
             $("#data4").show();
             $("#data5").show();
             $("#data6").show();
             $("#data7").show();

         });

         $("#ab-tab2").on("click", function () {
             $("#data1").show();
             $("#data2").hide();
             $("#data3").hide();
             $("#data4").hide();
             $("#data5").hide();
             $("#data6").hide();
             $("#data7").hide();

         });
         $("#am-tab2").on("click", function () {
             $("#data1").hide();
             $("#data2").show();
             $("#data3").hide();
             $("#data4").hide();
             $("#data5").hide();
             $("#data6").hide();
             $("#data7").hide();

         });
         $("#gw-tab2").on("click", function () {
             $("#data1").hide();
             $("#data2").hide();
             $("#data3").show();
             $("#data4").hide();
             $("#data5").hide();
             $("#data6").hide();
             $("#data7").hide();

         });
         $("#ecom-tab2").on("click", function () {
             $("#data1").hide();
             $("#data2").hide();
             $("#data3").hide();
             $("#data4").show();
             $("#data5").hide();
             $("#data6").hide();
             $("#data7").hide();

         });
         $("#ss-tab2").on("click", function () {
             $("#data1").hide();
             $("#data2").hide();
             $("#data3").hide();
             $("#data4").hide();
             $("#data5").show();
             $("#data6").hide();
             $("#data7").hide();

         });
         $("#web-tab2").on("click", function () {
             $("#data1").hide();
             $("#data2").hide();
             $("#data3").hide();
             $("#data4").hide();
             $("#data5").hide();
             $("#data6").show();
             $("#data7").hide();

         });
         $("#other-tab2").on("click", function () {
             $("#data1").hide();
             $("#data2").hide();
             $("#data3").hide();
             $("#data4").hide();
             $("#data5").hide();
             $("#data6").hide();
             $("#data7").show();

         });

     </script>
  

</body>
</html>
