﻿ 
  
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Speech_to_text(not responsive).aspx.cs" Inherits="hype.sociusus.Speech_to_text" %>

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

.docicon{
}
.alldoc p{
    background-color:#18469833;
    margin:7px;
    padding:5px;
    height:30px;
    border-radius:10px;


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
            <div class="col-md-1" style="border-right: inset;border-left: outset;"> 
                         <div class="dropdown show"  style="padding-top:10px">
                                  <a class="btn btn-secondary " href="#" role="button" id="dropdownMenuLink"  data-toggle="dropdown" >
                                      <img src="images/Dashboard%20Icons%20images/Screenshot%202023-05-02%20154408.png" />
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
                                            <a class="dropdown-item" href="Dashboard_withdrawal_page.aspx">Withdrawls</a>                                  
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
                                   <div class="col-md-6 "  style="padding-top: 200px; padding-left:100px; padding-bottom: 50px; display:flex" >  
                                             <div class="alldoc" style="display:flex"><h2 ">Speech to text</h2><p><i class="fa-solid fa-chart-simple docicon"></i> 0/0 Used</p></div>
                                   </div>
                                   <div class="col-md-6"   style="padding-top: 200px; padding-left:275px;">                              
                                       <a class="btn btn-secondary" href="homepage.aspx" role="button">Home >> Speech to text</a>
                                   </div>
                    </div>


<%--CSS for Items inside main part--%>
        <%--CSS for textarea--%>
 <style>
     textarea {
        width: 80%;
        height: 25px;
     }
     .textarea2 {
        width: 80%; 
        height: 70px;
     }

     
  </style>

<%--CSS of below text editor--%>
 <style>
#textEditor {
  width: 90%;
  height: 320px;
  border: 1px solid #ccc;
  padding: 5px;
  
}

.toolbar {
  margin-top: 10px;
}

.toolbar button {
  padding: 5px 10px;
}

.fa-align-left:before {
  content: "\f036";
}

.fa-align-center:before {
  content: "\f037";
}

.fa-align-right:before {
  content: "\f038";
}
  </style>


<%-- main part code--%>

                        <div class="row" style="margin: 10px;">   
                            <div class="col-12 col-sm-6 col-md-3">
                                <div class ="card" style="padding: 17px;">
                                    <div>
                                       <h5><i class="fa-solid fa-headphones"></i>
                                        <b>Speech to text</b></h5>
                                    </div>
                                    <hr>
                                    <div>
                                        <p style="background-color: #e9f7fe; color:#3184ae"">Create audio transcription from a file.</p>
                                    </div>

                                    <div>
                                        <div>
                                           <h5>Title</h5>
                                          <textarea  id="myTextarea" maxlength="100"></textarea>
                                          <p><span id="charCount">100</span> characters remaining</p>
                                        </div>
                                    </div>
                                        
                                    <div>
                                        <h5 >Upload Media</h5>
                                        <form action="/action_page.php">
                                          <input type="file" id="myFile" name="filename"/ >
                                        </form>
                                       
                                        <p>.mp3, .mp4, .mpeg, .mpga, .m4a, .wav, .webm allowed. Max file size: 0 MB</p>
                                    </div>

                                    <div>
                                        <h5>Audio Description</h5>
                                         <textarea class="textArea2" maxlength="200"></textarea>
                                         <p id="charCount2">Characters remaining: 200</p>
                                         <p>Describe the speech from the file to help the AI. (Optional)</p>
                                    </div>

                                    <div>
                                        <button type="button" class="btn btn-primary">Generate</button>
                                        <p style="background-color: #e9f7fe; color:#3184ae">Audio transcription may takes time due to the file size.</p>
                                    </div>
                                </div>
                            </div>   
<%--Codes for text editor--%>
                            <div class="col-12 col-sm-6 col-md-9">
                                <div class ="card" style="padding: 30px;"> 
                                    <div>   
                                        <div>
                                            
                                             <h5><i class="fa-sharp fa-solid fa-bars-progress fa-lg"></i>
                                            <b>Generated Result</b></h5>
                                        </div>
                                        <div>
                                            <div class="toolbar">                                        
                                                                  
                                                <input class="btn btn-outline-dark" type="button" onclick="executeCommand('bold')" value="Bold"/>  
                                                <input class="btn btn-outline-dark" type="button" onclick="executeCommand('italic')" value="Italic"/>
                                                <input class="btn btn-outline-dark" type="button" onclick="executeCommand('underline')" value="Underline"/> 
                                                <input class="btn btn-outline-dark" type="button" onclick="executeCommand('strikeThrough')" value="Strike Through"/>  
                                                <input class="btn btn-outline-dark" type="button" onclick="executeCommand('justifyLeft')" value="Justify Left"/>
                                                <input class="btn btn-outline-dark" type="button" onclick="executeCommand('justifyCenter')" value="Justify Center"/>                     
                                                <input class="btn btn-outline-dark" type="button" onclick="executeCommand('justifyRight')" value="Justify Right"/>  
                                                <input class="btn btn-outline-dark" type="button" onclick="executeCommand('createLink', prompt('Enter the URL:'))" value="Insert/Edit Link"/>
                                                <input class="btn btn-outline-dark" type="button" onclick="executeCommand('insertHTML', createTableHTML())" value="Insert Table"/>                     
                                                <input class="btn btn-outline-dark" type="button" onclick="executeCommand('insertUnorderedList')" value="Unordered List"/>  
                                                <input class="btn btn-outline-dark" type="button" onclick="executeCommand('insertOrderedList')" value="Ordered List"/>                             
                                            </div>
                                        </div>
                                    </div>
                                    <div id="textEditor" contenteditable="true">                                      
                                    </div>
                                    <div class="toolbar">
                                         <input class="btn btn-outline-dark" type="button" onclick="exportAsWord()" value="Export as Word"/>                     
                                         <input class="btn btn-outline-dark" type="button" onclick="exportAsText()" value="Export as Text"/>  
                                         <input class="btn btn-outline-dark" type="button" onclick="copyText()" value="Copy Text"/>                  
                                    </div>
                                </div>
                            </div> 
                        </div>  




          

 <!-- Footer -->
    <hr style="border-top: dotted 1px;" /> 
        <div class="footer-bottom-section">
       
                    
                <div class="container-fluid"  >
                     <div class="row">
                        <div class="col-xl-12">
                          <div style="color: white;" class="footer-row">
                              
                                 
                                     <span style="color: Black;" class="footer-copyright-text">2023 Socius IGB Pvt Ltd, All right reserved</span>
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
<%--Java Script for 100 words text area 1--%>
    <script>
        const textarea = document.getElementById('myTextarea');
        const charCount = document.getElementById('charCount');

        textarea.addEventListener('input', function () {
            let remainingChars = 100 - textarea.value.length;

            charCount.innerText = remainingChars + (remainingChars === 1 ? ' character' : ' characters') + ' remaining';

            // Prevent entering more than 100 characters
            if (remainingChars < 0) {
                textarea.value = textarea.value.slice(0, 100);
                charCount.innerText = '0 characters remaining';
            }
        });
    </script>
<%--Java Script for 200 words text area 1--%>
    <script>
        const textArea = document.getElementById('textArea');
        const charCount2 = document.getElementById('charCount2');

        textArea.addEventListener('input', function () {
            const remainingChars = 200 - textArea.value.length;
            charCount2.textContent = `Characters remaining: ${remainingChars}`;
        });
    </script>

<%--Java Script for Text editor--%>
<script>
    function executeCommand(command, value = null) {
        document.execCommand(command, false, value);
    }

    function createTableHTML() {
        const rows = prompt('Enter the number of rows:');
        const columns = prompt('Enter the number of columns:');
        let html = '<table>';

        for (let i = 0; i < rows; i++) {
            html += '<tr>';
            for (let j = 0; j < columns; j++) {
                html += '<td contenteditable="true">Cell</td>';
            }
            html += '</tr>';
        }

        html += '</table>';
        return html;
    }

    function exportAsWord() {
        const content = document.getElementById('textEditor').innerHTML;
        const filename = 'document.doc';
        const blob = new Blob(['\ufeff', content], { type: 'application/msword' });
        const url = URL.createObjectURL(blob);
        const link = document.createElement('a');
        link.href = url;
        link.setAttribute('download', filename);
        document.body.appendChild(link);
        link.click();
        document.body.removeChild(link);
    }

    function exportAsText() {
        const content = document.getElementById('textEditor').innerText;
        const filename = 'document.txt';
        const blob = new Blob([content], { type: 'text/plain' });
        const url = URL.createObjectURL(blob);
        const link = document.createElement('a');
        link.href = url;
        link.setAttribute('download', filename);
        document.body.appendChild(link);
        link.click();
        document.body.removeChild(link);
    }

    function copyText() {
        const content = document.getElementById('textEditor').innerText;
        navigator.clipboard.writeText(content);
    }
</script>

</body>

</html>
