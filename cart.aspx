<%@ Page Title="" Language="C#" MasterPageFile="~/shop.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Eshop.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         .title_demo
    {
      margin:10px 0px 0px 0px;
      font-family:宋体;
      font-size:small;
      padding-left:20px;
      color:#6c6c6c;
      text-align:left
    }
        .cart_item_frame {
           border-top: 1px solid #d0eaff;
            border-bottom: 1px solid #d0eaff;
width:780px;
            background-color:#faffff;
            text-align:left;
            vertical-align:middle;      
       }
        .product_name {
          vertical-align:middle;
          padding-left:20px;
          float:left;
          padding-top:20px;
          width:110px;
        }
        .cart_footer {
           text-align:right;
           width:760px;
           padding:0 10px 0 10px;
           margin-top:10px;
           background-color:#faffff;
           vertical-align:bottom;
        }
        .frame {
         width:800px;
         text-align:center;
        
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
        .chk_farme {
          width:50px;
          float:left;
          height:80px;
          padding-top:30px;
        }
        .picture_frame {
          width:100px;
          float:left;
          height:104px;
        }
        .price_frame {
           width:80px;
           float:left;
           padding-left:0px;
           padding-top:20px;
           text-align:center;
        }
        .sprice_frame {
        
         width:90px;
         float:left;
         padding-left:20px;
         padding-top:20px;
         margin-left:30px;
        }
        .sum_frame {
        
           float:left;
           width:154px;
           padding-left:20px;
           padding-top:20px;
        }
        .oper_frame {
           float:left;
           width:80px;
           padding-left:20px;
           padding-top:20px;

        }
        .cart_head_frame {
          width:780px;
          border-top-style:solid;
          border-top-width:1px;
          border-top-color:#d0eaff;
          border-top-style:solid;
          border-top-width:1px;
          border-top-color:#d0eaff;
          background-color:#eeeeee;
          text-align:left;
          vertical-align:middle;
          height:30px;
          font-family:微软雅黑;
          font-size:small;
          font-weight:bold;
          color:#333300;
             }
        .cart_content {
          width:100%;
          
        }
        .title_bar {
           width:150px;
           height:32px;
           float:left;
             }
        .carta {
            position:absolute;
            margin-left:200px;
             margin-top:20px;
        }
    </style>
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="carta">
    <div class="frame">
        <div class="title_bar">
            <img alt="" src="img/shopcart.gif" style="width:150px; height:32px; float:left"/>
            </div>
        <div class="title_demo">
            如果您对购物车里面的商品满意，请单击结算
            </div>
        <div class="cart_content">

            <asp:DataList ID="DataList1" runat="server" DataKeyField="cartId" DataSourceID="SqlDataSource2" OnDeleteCommand="DataList1_DeleteCommand" OnItemCommand="DataList1_ItemCommand" OnItemCreated="DataList1_ItemCreated" OnItemDataBound="DataList1_ItemDataBound" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="798px">
                <HeaderTemplate>
                    <div class="cart_head_frame">
                        <div style="width:800px;" class="head_item">
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            商品名称
                               &nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;           &nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;  
                                e商城价 
                               &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            数量
                          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           小计
                             &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                            操作
                          
                       </div>
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="cart_item_frame">
                        <div class="chk_farme">
                            <asp:CheckBox ID="chk_Select" runat="server" OnCheckedChanged="CheckBox2_CheckedChanged" />
                        </div>
                        <div class="picture_frame">
                            <asp:Image ID="Image1" runat="server" Height="110px" ImageUrl='<%# Eval("picture") %>' Width="98px" />
                        </div>
                        <div class="product_name">
                            <asp:HyperLink ID="linkname" runat="server" NavigateUrl='<%# Eval("merId", "detail.aspx?id={0}") %>' Text='<%# Eval("merName") %>'></asp:HyperLink>
                        </div>
                        <div class="price_frame">
                            <asp:Label ID="price" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                        </div>
                        <div id="Lable4" class="sprice_frame">
                            <asp:Label ID="lbl_sprice" runat="server" Text='<%# Eval("sprice") %>'></asp:Label>
                        </div>
                        <div class="sum_frame">
                            <asp:TextBox ID="txt_num" runat="server" Height="16px" Text='<%# Eval("amount") %>' Width="44px"></asp:TextBox>
                            <asp:Button ID="Button3" runat="server" CommandName="operNum" Text="修改" />
                            <asp:Label ID="lbl_sum" runat="server" Text="小计" Width="40px"></asp:Label>
                        </div>
                        <div class="oper_frame">
                            <asp:Button ID="btn_oper" runat="server" CommandName="Delete" Text="删除" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EshopConnectionString5 %>" SelectCommand="SELECT cart.cartId, cart.merId, cart.amount, Product.price, Product.sprice, Product.merName, Product.picture, cart.memberId FROM cart INNER JOIN Product ON cart.merId = Product.merId WHERE (cart.memberId = @memberId)">
                <SelectParameters>
                    <asp:SessionParameter Name="memberId" SessionField="id" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EshopConnectionString4 %>" SelectCommand="SELECT cart.cartId, cart.merId, cart.amount, Product.merName, Product.price, Product.sprice, Product.picture, cart.memberId FROM cart INNER JOIN Product ON cart.merId = Product.merId WHERE (cart.memberId = @MemberId)">
                <SelectParameters>
                    <asp:SessionParameter Name="memberId" SessionField="id" />
                </SelectParameters>
            </asp:SqlDataSource>

            </div>
        <div class="cart_footer">
            <div style="float:left;width:80px; text-align:left;height:200%">

                <asp:CheckBox ID="chk_All" runat="server" Text="全选" OnCheckedChanged="CheckBox1_CheckedChanged" />

                </div>

            <div style="float:right;">

                </div>
            <div style="float:left;width:150px;height:25px;vertical-align:bottom;padding-top:5px;">

                <asp:Label ID="Label2" runat="server" Text="商品金额总计："></asp:Label>
                <asp:Label ID="lblTotal" runat="server"></asp:Label>

                </div>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="总计金额" Width="66px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="bunShop" runat="server" Text="继续购物" Width="78px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnOrder" runat="server" Text="结算" OnClick="btnOrder_Click" />
            </div>
        </div>
        </div>
</asp:Content>
