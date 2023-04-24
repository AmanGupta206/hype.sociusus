<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="hype.sociusus.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
      <div class="row">
         <div class="col-md-6 mx-auto">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                            <h4>Welcome Back!</h4>
                            <span>Don't have an account? <a href="userregister.aspx">Sign Up Now!</a></span>
                        </center>
                     </div>
                  </div>
                 
                  <div class="row">
                         <div class="col">
                             <hr>
                         </div>
               </div>
                  <div class="row">
                     <div class="col">
                       
                      
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="USER NAME/EMAIL ADDRESS" ></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="PASSWORD" ></asp:TextBox>
                        </div>
                            <a href="forgetpassword.aspx">Forget Password? </a><br><br>
                        <div class="form-group">
                           <a href="#"><input class="btn btn-info btn-block btn-lg" id="Button2" type="button" value="LOGIN" /></a>
                        </div>
                     </div>
                  </div> 
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br><br>
         </div>
      </div>
   </div>

</asp:Content>
