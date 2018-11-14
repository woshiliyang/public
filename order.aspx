<%@ Page Title="" Language="C#" MasterPageFile="~/shop.Master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="Eshop.order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .order_main {
            width:800px;
            border:solid 1px silver;
            text-align:left;
            position:absolute;
            margin-left:200px;
            margin-top:20px;
        }
        .order_demo {
            width:765px;
            height:auto;
            float:left;
            padding:10px 10px 10px 20px;


        }
        .order_content {
            border:medium solid #efefef;
            margin:10px 0px 0px 0px;
            float:left;
            width:790px;
            text-align:center;
        
        }
        .order_item {
           border-bottom:thin dashed #EADBC9;
           float :left;
           width:750px;
           text-align:right;
           font-size:medium;
           font-family:黑体;
           padding-right:20px;
           padding-left:20px;
        }
        .address_frame {
            text-align:left;
            width:750px;
            float:left;
            font-family:微软雅黑;
            font-size:small;
            }
        .btn {
          height:27px;
          width:70px;
          color:#ffffff;
          font-weight:bold;
          border:1px outset #999999;
          background-color:#59a9bf;
          margin-left:5px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="order_main">
        <div style="height:16px">
            <img alt="" src="img/balance.gif" style="width:150px; height:32px; float:left;"/>
            </div>
        <div class=" order_demo">
            <img alt="" src="img/shopcart_2.gif" style="width:400px; height:11px;"/>
            </div>
        <div class="order_content">
            <div class="order_item">
                <span style ="font-size:medium ;font-family:黑体;margin:5px 0 5px 5px ;float:left; width:auto;">商品清单</span>

                <div style="float:left;width:750px; text-align:left;">
                    <div class="order_item">
                        <span style ="font-size:medium ;font-family:黑体;margin:5px 0 5px 5px ;float:left; width:auto;">收货人信息</span>
                        <div style="font-size:medium;float:left;width:auto;margin:5px 0px 5px 10px">

                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">添加地址</asp:LinkButton>

                            </div>
                        </div>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="联系方式" DataValueField="contactId">
                    </asp:RadioButtonList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EshopConnectionString8 %>" SelectCommand="SELECT contactId, addressee + ',' + address + ',' + phone AS 联系方式, memberId FROM contact WHERE (memberId = @memberId)">
                        <SelectParameters>
                            <asp:SessionParameter Name="memberId" SessionField="id" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EshopConnectionString6 %>" SelectCommand="SELECT memberId, contactId, addressee, address, zip, phone AS 联系方式 FROM contact WHERE (memberId = @memberId)">
                        <SelectParameters>
                            <asp:SessionParameter Name="memberId" SessionField="id" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:Repeater ID="Repeater1" runat="server"  >
                        <HeaderTemplate>

                            <div style="background-color:#1c5e55;color:#333333">
                                所购商品
                                </div>
                            </HeaderTemplate>
                        <ItemTemplate>
                            <div style="width:100%;background-color:#e3eaeb;height:25px">
                                <asp:Label ID="lblId" runat="server" Text='<%#  Eval("id") %>'></asp:Label>
                                 <asp:Label ID="lblName" runat="server" Text='<%#  Eval("productname") %>'></asp:Label>
                                 <asp:Label ID="lblPrice" runat="server" Text='<%#  Eval("localPrice") %>'></asp:Label>
                                 <asp:Label ID="lblAmount" runat="server" Text='<%#  Eval("buycount") %>'></asp:Label>
                                </div>
                            </ItemTemplate>
                        <AlternatingItemTemplate>
                            <div style="width:100%;background-color:white;height:25px">
                                 <asp:Label ID="lblId" runat="server" Text='<%#  Eval("id") %>'></asp:Label>
                                 <asp:Label ID="lblName" runat="server" Text='<%#  Eval("productname") %>'></asp:Label>
                                 <asp:Label ID="lblPrice" runat="server" Text='<%#  Eval("localPrice") %>'></asp:Label>
                                 <asp:Label ID="lblAmount" runat="server" Text='<%#  Eval("buycount") %>'></asp:Label>
                                </div>
                            </AlternatingItemTemplate>
                        
                    </asp:Repeater>
                  
                    </div>
                </div>
            <div class="order_item">
                <span style ="font-size:medium ;font-family:黑体;margin:5px 0 5px 5px ;float:left; width:auto;">商品金额总计：<asp:Label ID="lblTotal" runat="server" Text="Label"></asp:Label>
                </span>
                &nbsp;</div>
            <div class="order_item">

                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="生成订单" style="height: 21px" />

                </div>

            </div>
        </div>
</asp:Content>
