<%@ Page Title="" Language="C#" MasterPageFile="~/shop.Master" AutoEventWireup="true" CodeBehind="reg.aspx.cs" Inherits="Eshop.reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .title_bar
        {
            width:700px;
            padding-left:30px;
            margin-top:20px;
            text-align:left;
        }
        .title_content {
         width:500px;
         border-bottom-style:solid;
         border-bottom-width:thin;
         border-bottom-color:#c0c0c0;
         font-family:黑体;
         font-weight:bold;
         font-size:large;
         color:#339933;
         text-align:left;
         letter-spacing:3pt;
        }
        .reg_content {
          width:600px;
          margin-top:5px;
          padding-left:30px;
          float:left;
        }
        .span_font {
          color:#808080;
          margin-left:15px;
          font-size:small;
        }
        .form_row {
          padding:10px 0px 10px 0px;
          width:600px;
          clear:both;
            height: 21px;
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
           height:18px;
           float:left;
        }
        .reg_right {
          border-left: thin dotted #cccccc;
width:141px;
          height:65px;
            float:right;
            padding: 10px 0px 0px 20px;
            text-align :left;
            font-size:14px;
            margin-left: 0px;
        }

        .btn {
           height:27px;
           width:70px;
           color:#497825;
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
          padding:4px 5px 0 10px;
          color:#333333;
        }
        .reg { 
            position:absolute;
            margin-left:200px;
            margin-top:10px;
            height: 561px;
            float:right;
        }
        .CheckBoxList1 {
             position:absolute;
             margin-left:150px;
        }
      
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="reg">
    <div class="title_bar">
        <div class="title_content">
            <span>|注册通行证</span>
            </div>
        <span class="span_font">简化您的购物流程，让您买得更方便，更安全。</span>
        </div>

    <div class="reg_content">
        <div class="form_row">
            <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="16px" style="margin-top: 0px; margin-left: 10px;"></asp:TextBox>
            </div>
        <div class="form_row">
            <asp:Label ID="Label2" runat="server" Text="密码："></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 22px"></asp:TextBox>
            </div>
        <div class="form_row">
            <asp:Label ID="Label3" runat="server" Text="确认密码："></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px"></asp:TextBox>
            </div>
        <div class="form_row">
            <asp:Label ID="Label4" runat="server" Text="性别："></asp:Label>
            <asp:RadioButton ID="RadioButton1" runat="server" Text="男" GroupName="1" />
            <asp:RadioButton ID="RadioButton2" runat="server" Text="女" GroupName="1" />
            <asp:Panel ID="Panel1" runat="server" style="margin-left: 457px" Width="113px">
            </asp:Panel>
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
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </div>
        <div class="form_row">
            <asp:Label ID="Label9" runat="server" Text="邮政编码："></asp:Label>
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </div>
        <div class="form_row">
            <asp:Label ID="Label10" runat="server" Text="电子邮箱："></asp:Label>
            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </div>
        <div class="form_row">
            <div class="CheckBoxList1">
            <asp:Label ID="Label11" runat="server" Text="关注产品类型："></asp:Label>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="16px" RepeatColumns="4" RepeatDirection="Horizontal" Width="320px">
                <asp:ListItem>手机</asp:ListItem>
                <asp:ListItem>笔记本电脑</asp:ListItem>
                <asp:ListItem>平板电脑</asp:ListItem>
                <asp:ListItem>相机</asp:ListItem>
                <asp:ListItem>摄像机</asp:ListItem>
                <asp:ListItem>手机配件</asp:ListItem>
                <asp:ListItem>智能设备</asp:ListItem>
                <asp:ListItem>路由器</asp:ListItem>
            </asp:CheckBoxList>
            </div>
            </div>
        <div class="form_row">
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="完成注册" Height="21px" OnClick="Button1_Click" Width="67px" />
            <asp:Button ID="Button2" runat="server" style="margin-left: 48px" Text="取消" OnClick="Button2_Click" />
            </div>
        </div>

    <div class="reg_right">
        <div>
            已经拥有账户？<br />
            <br />
&nbsp;<asp:Button ID="Button3" runat="server" Text="马上登录" OnClick="Button3_Click" />
            </div>
        </div>
    </div>
</asp:Content>
