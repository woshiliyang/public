<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="Eshop.detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="stylesheet" type="text/css" href="cssstyle.css" />
  
    <style>
        .left_menu {
             margin:auto;
            width:999px;
        }
        .left_content
        {
            margin:auto;
            width:189px;
            border:solid 1px ;
            border-color:black;
            float:left;
        }
        a.nav8:link, a.nav8:visited {
    display: block;
    float: left;
    padding: 0px 8px 0px 22px;
    margin: 0 14px 0 14px;
    height: 50px;
    text-decoration: none;
    background: url(img/square-blue-add.gif) no-repeat left;
    color: #676d77;
}

        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="main-container">
            <div class="top_bar">
                </div>
            <div class="header">
                <div class="logo">
                    <img alt="" src="img/logo.jpg" style="width:171px; height:73px"/>
                    </div>
                <div class="search_text">
                    <input type="text" class="search_input" name="search" value="请输入关键字"/>
                    <input type="image" src="img/search.gif" class="search_bt"/>
                </div>
                <div class="header_class">
                    <div class="header_img">
                        <img alt="推荐商品" src="img/top_hot.gif"/>
                        </div>
                    <div class="header_img">
                        <img alt="新品速递" src="img/top_news.gif"/>
                        </div>
                    <div class="header_img">
                        <img alt="热销排行" src="img/top_commend.gif"/>
                        </div>
                    </div>
                </div>
            <div class="menu_bar">
                <div class="left_menu_corner">
                    </div>
                <ul class="menu">
                    <li><a href="index.aspx" class="nav1">Home</a></li>
                    <li class="divider"></li>
                    <li><a href="productbrief.aspx" class="nav2">Products</a></li>
                    <li class="divider"></li>
                    <li><a href="special.aspx" class="nav3">Specials</a></li>
                    <li class="divider"></li>
                    <li><a href="myorder.aspx" class="nav4">My account</a></li>
                    <li class="divider"></li>
                    <li><a href="login.aspx" class="nav5">Sign Up</a></li>
                    <li class="divider"></li>
                    <li><a href="shooping.aspx" class="nav6">Shooping</a></li>
                    <li class="divider"></li>
                    
                    <li><a href="collect.aspx" class="nav7">Contact Us</a></li>
                    <li class="divider"></li>

                    <li><a href="admin.aspx" class="nav8">Store</a></li>
                    <li class="divider"></li>
                    </ul>
                <div class="right_menu_corner">
                   </div>
                </div>
            <div class="crumb_navigation">
                 
                </div>

            <div class="left_menu">
                &nbsp;<br />
&nbsp;<br />
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="merId" DataSourceID="SqlDataSource1" Height="50px" Width="996px">
                    <Fields>
                        <asp:BoundField DataField="merId" HeaderText="商品编号" ReadOnly="True" SortExpression="merId" />
                        <asp:BoundField DataField="merName" HeaderText="商品名称" SortExpression="merName" />
                        <asp:ImageField DataImageUrlField="picture" HeaderText="商品图片">
                            <ControlStyle Height="300px" Width="300px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="price" HeaderText="商品价格" SortExpression="price" />
                        <asp:BoundField DataField="sprice" HeaderText="促销价格" SortExpression="sprice" />
                        <asp:BoundField DataField="goodDesc" HeaderText="商品描述" SortExpression="goodDesc" />
                        <asp:BoundField DataField="goodFactory" HeaderText="商品产地" SortExpression="goodFactory" />
                        <asp:BoundField DataField="inputdate" HeaderText="出厂日期" SortExpression="inputdate" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EshopConnectionString3 %>" SelectCommand="SELECT * FROM [Product] WHERE ([merId] = @merId)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="merId" QueryStringField="id" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="购买数量"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" style="margin-top: 0px" Width="74px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="39px" ImageUrl="img/icon06.gif" OnClick="ImageButton1_Click" Width="43px" />
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">查看购物车</asp:LinkButton>
                <br />
                </div>
            <div class="footer">
                  
                <div class="center_footer">
                    </br>
                    </br>
                     </br>
                    </br>
                     </br>
                    </br>
                     </br>
                    </br>
                     </br>
                    </br>
                     </br>
                    </br>
                     </br>
                    </br>
                     </br>
                    </br>
                     </br>
                    </br>
                    
                  Power by Microsoft Visual Studio   </br>  &nbsp;&nbsp;&nbsp;&nbsp;@Ly2018 
                </div>
              
                <div class="right_footer">

                    </div>
                   
                    
                    </div>
              
               
            </div>
    </form>
</body>
</html>
