<%@ Page Title="" Language="C#" MasterPageFile="~/shop.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Eshop.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .login_frame
        {
            border:medium solid #f1f1f1;
            width:99%;
            float:left;
            text-align:center;
        }
        .form_row {
            padding:10px 0px 10px 0px;
            width:760px;
            clear:both;
           }
        .login_head {
            letter-spacing:7pt;
            color:#003366;
            font-size:large;
            font-family:黑体;
            font-weight:bold;
        margin-right: 0px;
        margin-top: 20px;
        margin-bottom: 20px;
    }
        .leftlable {
          padding:4px 45px 0px 80px;
          width:100px;
          font-size:12px;
          color:#333333;
          text-align:right;
          float:left;
        }
        .rightInput {
          border:1px solid #dfdfdf;
          float:left;
          padding-left:10px;
          width:200px;
        }
        .content {
           
          width:500px;
          float:right;
        }
        .loginbtn {
         color:#497825;
         font-weight:bold;
         border:1px solid #cccfd3;
         background-color:#ffffff;
         margin-left:80px;
        }
        .login {
           position:absolute;
           margin-left:200px;
          
          
      
        }
       
      </style>
</asp:Content>
 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div class="login"  >
    <div class="login_head">
&nbsp;
用户登录
        </div>
        <div class="login_frame">
            <div class="form_row">
            
            <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px"></asp:TextBox>
            
        </div>
        <div class="form_row">
            <asp:Label ID="Label2" runat="server" Text="密码："></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 12px" TextMode="Password"></asp:TextBox>
        </div>
        <div class="form_row">
            <asp:Label ID="Label3" runat="server" Text="验证码："></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 14px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </div>
        <div class="form_row">
            <asp:Button ID="Button1" runat="server" Text="登陆" Width="54px" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" style="margin-left: 71px" Text="立即注册" OnClick="Button2_Click" />
        </div>
      </div>
      </div>
</asp:Content>
