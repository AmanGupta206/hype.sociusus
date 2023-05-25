<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="hype.sociusus.homepage1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!-- Brain logo -->
        <br> 
        <p style="text-align:center;"><img src="images/logo.png" alt="image" alt="Logo"></p> <br/>
        <div class="animated_rainbow_2" style="margin-left:425px/;text-align:center;">
            <h1>Best AI Content Writer</h1>
        </div>               
<!-- Colored text CSS -->

<style>
.animated_rainbow_2 {
	font-size: 42px;
	font-family: Arial Black, Gadget, sans-serif;
    -webkit-animation: animatedBackground_b 5s linear infinite alternate;
}

@keyframes animatedBackground_b{
	0% {color: #ff8b00}
	10% {color: #e8ff00}
	20% {color: #5dff00}
	30% {color: #00ff2e}
	40% {color: #00ffb9}
	50% {color: #00b9ff}
	60% {color: #002eff}
	70% {color: #5d00ff}
	80% {color: #e800ff}
	90% {color: #ff008b}
	100% {color: #ff0000}
}

</style>


<!-- Written part and a button -->
   <section>
         <center>
                <div>                
                    <h4><p> SEO-optimized and unique content for your blogs,ads, <br>
                            emails,and website 10X faster & save hours of work. <p>  </h4>
               </div>     
               <div class="form-group">
                       <a href="userregister.aspx"><input  class="btn btn-info btn200" id="Button2" type="button"  value="Get Started For Free" /></a>
               </div>
         </center>

<style>  
.btn btn-info btn200
{
    border : 5px solid;
}
</style>  

        <center>
               <p>
                 <h7>   No credit card required.  <h7>
              </p>
        <center>
   </section>

 <!-- How its work part -->
  <hr style="border-top: dotted 1px;" /> 
    <section>       
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>How it Works?</h2>
                    <center>
                </div>
            </div>
              <div class="row">
                <div class="col-md-4">
                    <center>
                        <img width="190px" src="images/Screenshot%202023-04-18%20102209.png" />
                        <h2>Select a template</h2>
                        <p class="text-justify">
                            Choose a content creation template. Multiple templates are available for your all needs.
                        </p>
                    <center>
                </div>

                <div class="col-md-4">
                        <center>
                                <img width="150px" src="images/Screenshot%202023-04-18%20102226.png" />
                                <h2>Fill the form</h2>
                                <p class="text-justify">
                                    Enter a detailed description of your content. Tell the AI what do you want.
                                </p>
                        <center>
                </div>

                    <div class="col-md-4">
                        <center>
                                <img width="150px" src="images/Screenshot%202023-04-18%20102238.png" />
                                <h2>Get your content</h2>
                                    <p class="text-justify">
                                       Get a unique high quality content. The content is plagiarism free and you can use it anywhere.
                                    </p>
                        <center>
                </div>
            </div>
        </div>
    </section>
    <hr style="border-top: dotted 1px;" /> 
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


</style>
<!-- Templete section starting -->
    <br>

    <section>
 <%-- temp body --%>
        <div class="container">
            <center>
            <p style="font-size:20px;"><b>Templates</b></p>
            <p style="font-size:20px;">Generate your required content with over 60+ content creation templates</p>
            <ul class="nav nav-pills nav-fill gap-2 p-1 small bg-secondary rounded-5 shadow-sm" 
                id="pillNav2" role="tablist" style="--bs-nav-link-color: var(--bs-white); 
                --bs-nav-pills-link-active-color: var(--bs-primary); --bs-nav-pills-link-active-bg: var(--bs-white);height:50px;
                font-size:13px;">
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
            </div>
    <style>
        i{
            color:darkblue;
        }
        i:hover{
            color:gray;
        }
    </style>
    
    <div class="py-5">
    <div class="container" id="data">
      <div class="row hidden-md-up" id="data1">
                  <div class="template_head">
                     <h5>Article And Blogs</h5>
                     <hr>
                  </div>
       
                <div class="col-md-4 ">
                  <div class="card">
                    <div class="card6-block">
                      <h4 class="card-title"><i class="fa fa-comment" ></i></h4>
                       <p class="card-subtitle text-muted">Blogs Ideas</p> 
                      <p class="card-text p-y-1">Article/blog ideas that you can use to generate more traffic, leads,<br /> and sales for your business.</p>
              
                    </div>
                  </div>
                </div>
                <div class="col-md-4 ">
                  <div class="card">
                    <div class="card6-block">
                      <h4 class="card-title"><i class="fa fa-align-left" aria-hidden="true"></i></h4>
                      <p class="card-subtitle text-muted">Blog Intros</p>
                      <p class="card-text p-y-1"> Enticing article/blog introductions that capture the attention of the audience.</p>
              
                    </div>
                  </div>
                </div>
                <div class="col-md-4 ">
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
        <hr/>
      <%--  Membership Part--%>
                     <div  >
                           
                               <center>
                                     <h2>Memberhip Plan</h2>       
                                   </center>
                                                   
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









 </section>

    <br>
<!--Next Part-->          
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
    padding-right: 665px;
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
  background-color: #002eff;
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

<%--Testimonials code starts--%>
      
          <div id="carouselExampleControls" class="carousel slide" data-ride="carousel"   >
               <div class="carousel-inner" style="background-color:LightGray;" >
                           <div style="padding-left: 575px;padding-right: 730px;">
                                <h2>Testimonials</h2>
                            </div>    
                        <div class="carousel-item active">
                                               
                          <div class="card" style="width: 650px;margin-left: 350px; margin-bottom: 20px;">
                              <div class="card-body">                            
                                   <h4> <img src="images/last.png" />&nbsp;Tony Stark</h4>
                                   <p class="text-primary"  style="padding-right: 67px;">Social Marketing</p>                                                  
                                   <p class="card-text">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla paria tur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                               </div>
                             </div>
                          </div>
                       
                
                    <div class="carousel-item">
                                         
                          <div class="card" style="width: 650px;margin-left: 350px; margin-bottom: 20px;">
                              <div class="card-body">                            
                                   <h4> <img src="images/last.png" />&nbsp;Natasha</h4>
                                   <p class="text-primary"  style="padding-right: 67px;">Designer</p>                                                  
                                   <p class="card-text">Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo do consequat. Elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua</p>
                               </div>
                             </div>
                    </div>
                    <div class="carousel-item">                                      
                          <div class="card" style="width: 650px;margin-left: 350px; margin-bottom: 20px;">
                              <div class="card-body">                            
                                   <h4> <img src="images/last.png" />&nbsp;Steve Roger</h4>
                                   <p class="text-primary"  style="padding-right: 67px;">Content Writer</p>                                                  
                                   <p class="card-text">Elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip e</p>
                               </div>
                             </div>                     
                          </div>
                        <div >
                    </div>
                 </div>
              <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
           </div>
<%--Recent blogs codes start--%>
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

.top-left {
  position: absolute;
  top: 8px;
  left: 16px;
}

</style>

    <div class="container_of_recent_blog  bg-light" >
        <div  style="margin-left: 300px;">
             <div style="margin-top:0px"; margin-bottom: 45px">
                <h3 class="text-dark">Recent Blog</h3>
                <a href="#" class="text-dark"  style="padding-left: 700px;">View Blog -></a>
             </div>
            <div class="row" style="height: 325px;">                    
               <div class="col-md-4">
                <a href="#"><img src="images/Other%20Images/image%20logo.png" alt="Image Logo" style="width:100%;">
                <div class="top-left text-dark">Admin</div>
                <div class="bottom-left text-dark">First Blog
                <p class="text-dark">Consectetur adipisicing elitsed do eiusmod tempor incididunt ut labore    et dolore magna aliqua Ut eni...</p>                 
                </div></a>
              </div>
           </div>
        </div>
    </div>
<%--Carousel part below recent bog code starts--%>
  <%-- HTML--%>
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">
                <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.js"></script> <div class="brands"> 
                    <div class="container"> 
                        <div class="row"> 
                            <div class="col"> 
                                <div class="brands_slider_container"> 
                                    <div class="owl-carousel owl-theme brands_slider"> 
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img  width="60" height="60"src="images/Carosal%20above%20footer%20images/logo-carousel-01.png" />
                                               </div>
                                            </div> 
                                            <div class="owl-item"><div class="brands_item d-flex flex-column justify-content-center">
                                                <img src="images/Carosal%20above%20footer%20images/logo-carousel-02.png" />
                                            </div>
                                            </div> 
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="images/Carosal%20above%20footer%20images/logo-carousel-03.png" />
                                                </div>
                                            </div> 
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="images/Carosal%20above%20footer%20images/logo-carousel-04.png" />
                                                </div>
                                            </div> 
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="images/Carosal%20above%20footer%20images/logo-carousel-05.png" />
                                                </div>
                                            </div> 
                                            <div class="owl-item">
                                                <div class="brands_item d-flex flex-column justify-content-center">
                                                    <img src="images/Carosal%20above%20footer%20images/logo-carousel-06.png" />
                                                </div>
                                            </div>                                        
                                    </div> 
   <!-- Brands Slider Navigation --> 
                                    <div class="brands_nav brands_prev">
                                        <i class="fas fa-chevron-left"></i>
                                    </div> 
                                    <div class="brands_nav brands_next">
                                        <i class="fas fa-chevron-right"></i>
                                    </div> 
                                </div> 
                            </div> 
                        </div> 
                    </div> 
                </div>
   <%-- CSS--%>
  <style>
    body
    {
         background:#eee;
    }
 .brands {
     width: 100%;
     padding-top: 50px;
     padding-bottom: 50px
 }

 .brands_slider_container {
     height: 130px;
     border: solid 1px #e8e8e8;
     box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.1);
     padding-left: 80px;
     padding-right: 80px;
     background: #fff;
 }

 .brands_slider {
     height: 100%;
     margin-top: 35px
 }

 .brands_item {
     height: 100%
 }

 .brands_item img {
     max-width: 100%
 }

 .brands_nav {
     position: absolute;
     top: 50%;
     -webkit-transform: translateY(-50%);
     -moz-transform: translateY(-50%);
     -ms-transform: translateY(-50%);
     -o-transform: translateY(-50%);
     transform: translateY(-50%);
     padding: 5px;
     cursor: pointer
 }

 .brands_nav i {
     color: #e5e5e5;
     -webkit-transition: all 200ms ease;
     -moz-transition: all 200ms ease;
     -ms-transition: all 200ms ease;
     -o-transition: all 200ms ease;
     transition: all 200ms ease
 }

 .brands_nav:hover i {
     color: #676767
 }

 .brands_prev {
     left: 40px
 }

 .brands_next {
     right: 40px
 }
 </style>
   <%-- JavaScript--%>
    <script>
    $(document).ready(function(){

       if($('.brands_slider').length)
            {
                var brandsSlider = $('.brands_slider');

                brandsSlider.owlCarousel(
                {
                    loop:true,
                    autoplay:true,
                    autoplayTimeout:5000,
                    nav:false,
                    dots:false,
                    autoWidth:true,
                    items:8,
                    margin:42
                });

                if($('.brands_prev').length)
                {
                    var prev = $('.brands_prev');
                    prev.on('click', function()
                    {
                        brandsSlider.trigger('prev.owl.carousel');
                    });
                }

                if($('.brands_next').length)
                {
                    var next = $('.brands_next');
                    next.on('click', function()
                    {
                        brandsSlider.trigger('next.owl.carousel');
                    });
                }
            }


    });
    </script>

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


</asp:Content>
