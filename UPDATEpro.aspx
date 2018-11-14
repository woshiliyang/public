<%@ Page Title="" Language="C#" MasterPageFile="~/shop.Master" AutoEventWireup="true" CodeBehind="UPDATEpro.aspx.cs" Inherits="Eshop.UPDATEpro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .title_bar
        {
          width:900px;
          padding-left:30px;
          margin-top:20px;
          text-align:left;
        }
        .title_content {
          width:500px;
          border-bottom-style:solid;
          border-top-width:thin;
          border-top-color:#c0c0c0;
          font-family:黑体;
          font-weight:bold;
          font-size:large;
          color:#339933;
          text-align:left;
          letter-spacing:3pt;
        }
        .reg_content {
          width:680px;
          margin-top:5px;
          padding-left:30px;
          float:left;
          height:821px;
        }
        .span_font {
           color:#808080;
           margin-left:15px;
           font-size:small;
        }
        .form_row {
           padding:10px 0px 10px 0px;
           width:600px;
           height:30px;
           clear:both;
        }
        .row_lbl {
           padding:4px 15px 0px 0px;
           width:120px;
           font-size:12px;
           color:#333333;
           text-align:right;
           float:left;
        }
        .row_input {
           border:1px solid #dfdfdf;
           width:180px;
           height:25px;
           float:left;
        }
        .reg_right {
           width:230px;
           height:150px;
           float:right;
           padding:10px 0px 0px 20px;
           text-align:left;
           font-size:14px;
           border-left-style:dotted;
           border-bottom-width:thin;
           border-left-color:#cccccc;
        }
        .btn {
          color :#497825;
          font-weight:bold;
          border:1px solid #cccfd3;
          background-color:#ffffff;
          margin-left:100px;
        }
        .error {
          width:120px;
          float:left;
          font-size:12px;
          text-align:left;
          padding:4px 5px 0 10px ;
          color:#333333
        }
        .updatelogo {
          position:absolute;
            margin-top:65px;
            margin-left:170px;
            top: 200px;
            left: 447px;
            width: 637px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="updatelogo">

            <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
            用户资料修改
    <div class="reg_contenr">
        <div class="form_row">

            <asp:Label ID="Label2" runat="server" Text="密码："></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 20px"></asp:TextBox>

            </div>
        <div class="form_row">

            <asp:Label ID="Label3" runat="server" Text="确认密码："></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

            </div>
        <div class="form_row">

            <asp:Label ID="Label4" runat="server" Text="性别："></asp:Label>
            &nbsp;
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="1" Text="男" />
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="1" Text="女" />

            </div>
        <div class="form_row">

            <asp:Label ID="Label5" runat="server" Text="出生年月："></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>

            </div>
        <div class="form_row">

            <asp:Label ID="Label6" runat="server" Text="学历："></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" style="margin-left: 24px" Width="65px">
                <asp:ListItem>小学</asp:ListItem>
                <asp:ListItem>初中</asp:ListItem>
                <asp:ListItem>中专</asp:ListItem>
                <asp:ListItem>高中</asp:ListItem>
                <asp:ListItem>大专</asp:ListItem>
                <asp:ListItem>本科</asp:ListItem>
                <asp:ListItem>硕士</asp:ListItem>
                <asp:ListItem>博士</asp:ListItem>
            </asp:DropDownList>

            </div>
        <div class="form_row">

            <asp:Label ID="Label7" runat="server" Text="联系地址："></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>

            </div>
        <div class="form_row">

            <asp:Label ID="Label8" runat="server" Text="联系电话："></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server" Height="19px"></asp:TextBox>

            </div>
        <div class="form_row">

            <asp:Label ID="Label9" runat="server" Text="邮政编码:"></asp:Label>
            &nbsp;
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>

            </div>
        <div class="form_row">

            <asp:Label ID="Label10" runat="server" Text="电子邮箱："></asp:Label>
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>

            </div>
        <div class="form_row">

            <asp:Button ID="Button1" runat="server" Text="确定修改" OnClick="Button1_Click1" />
            <asp:Button ID="Button2" runat="server" style="margin-left: 19px" Text="返回" Width="78px" />

            </div>
       
        </div>
        </div>
</asp:Content>

