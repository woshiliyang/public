<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productbrief.aspx.cs" Inherits="Eshop.Product" %>

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
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="关键字"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go" />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="merId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="103px" Width="998px" HorizontalAlign="Left" AllowPaging="True" PageSize="5">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="picture" HeaderText="图片">
                            <ControlStyle Height="100px" Width="100px" />
                        </asp:ImageField>
                        <asp:HyperLinkField DataNavigateUrlFields="merId" DataNavigateUrlFormatString="detail.aspx?id={0}" DataTextField="merName" HeaderText="商品名称" />
                        <asp:BoundField DataField="price" HeaderText="商品价格" SortExpression="price" />
                        <asp:BoundField DataField="sprice" HeaderText="商品现价" SortExpression="sprice" />
                        <asp:ButtonField ButtonType="Button" HeaderText="购买" Text="购买" />
                        <asp:ButtonField ButtonType="Button" HeaderText="收藏" Text="收藏" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <EmptyDataTemplate>
                        图片
                    </EmptyDataTemplate>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" VerticalAlign="Top" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EshopConnectionString2 %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
                </div>
            <div class="footer">
                  
                    <div class="left_footer">

                    </div>
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
