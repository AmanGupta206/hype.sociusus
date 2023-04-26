<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userregister.aspx.cs" Inherits="hype.sociusus.usersignup" %>
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
                            <h4>Let's create your account!</h4>
                            <span>Already have an account? <a href="userlogin.aspx">Log In!</a></span>
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
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="FULL NAME" ></asp:TextBox>
                        </div>
                      
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="USER NAME" ></asp:TextBox>
                        </div>

                         <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="EMAIL ADDRESS" ></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="PASSWORD" ></asp:TextBox>
                        </div>

                        <div class="form-group">
                        
                            <asp:Button Class="btn btn-success btn-block btn-lg" ID="Button2" runat="server" Text="REGISTER" OnClick="Buttonsignup_Click" />
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
