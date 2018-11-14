<%@ Page Title="" Language="C#" MasterPageFile="~/Account.Master" AutoEventWireup="true" CodeBehind="myallorder.aspx.cs" Inherits="Eshop.myallorder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        .aab {
          position:absolute;
          width:800px;
          margin-left:200px;
        }
        .item_head{
            width:100px;
            font-family:微软雅黑;
            font-size:small;
            font-weight:bold;
            text-align:center;
            float:left;
            color:#5AA18F;
            padding-bottom:5px;
            padding-top:5px;
        }
        .repeater_head{
            width:740px;
            font-family:宋体;
            font-size:small;
            font-weight:normal;
            text-align:center;
            float:left;
            color:#5AA18F;
            padding-bottom:5px;
            padding-top:5px;
            border-bottom-style:solid;
            border-bottom-width:2px;
            margin-left:10px;
        }
        .reapter_item{
            width:740px;
            float:left;
            margin-left:10px;
        }
        .item_list{
            width:100px;
            font-family:宋体;
            font-size:small;
            text-align:center;
            float:left;
            height:30px;
            border-bottom-style:solid;
            border-bottom-width:2px;
            border-bottom-color:#DDDDDD;
            padding:10px 0 0 0;
            vertical-align:bottom;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="aab">
    <p>我的订单</p>
        <div style="width:100%">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemDataBound="Repeater1_ItemDataBound" OnItemCommand="Repeater1_ItemCommand"  >
            <HeaderTemplate>
                <div class="repeater_head">
                    <div class="item_head">订单号</div>
                    <div class="item_head">收货人</div>
                    <div class="item_head">订单总额</div>
                    <div class="item_head">订单状态</div>
                    <div class="item_head" style="width:180px">下单时间</div>
                    <div class="item_head">操作</div>
                </div>
            </HeaderTemplate>
            <ItemTemplate>
                <div class="reapter_item">
                    <asp:Label ID="lblOrderid" runat="server" Text='<%#Eval("OrderId") %>' CssClass="item_list" ForeColor="#1A66B3"></asp:Label>
                    <asp:Label ID="lblAddressee" runat="server" Text='<%#Eval("Addressee") %>' CssClass="item_list"></asp:Label>
                    <asp:Label ID="lblToal" runat="server" Text='<%#Eval("Total","{0:C}") %>' CssClass="item_list"></asp:Label>
                    <asp:Label ID="lblStatus" runat="server" Text='<%#Eval("Status") %>' CssClass="item_list"></asp:Label>
                    <asp:Label ID="lblOrderDate" runat="server" Text='<%#Eval("OrderDate","{0:MM/dd/yyyy}") %>' CssClass="item_list" Width="180px"></asp:Label>
                    <asp:LinkButton ID="lbltnOper" runat="server" CssClass="item_list" CommandName="oper">提醒发货</asp:LinkButton>
                    <asp:Label ID="Label1" runat="server" Text="--" CssClass="item_list" Visible="false"></asp:Label>
                </div>
            </ItemTemplate>
        </asp:Repeater>

        
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EshopConnectionString7 %>" SelectCommand="SELECT order1.orderId, order1.contactId, order1.merId, order1.total, order1.status, order1.orderDate, contact.addressee FROM order1 INNER JOIN contact ON order1.contactId = contact.contactId WHERE (order1.merId = @member)">
                <SelectParameters>
                    <asp:SessionParameter Name="member" SessionField="id" />
                </SelectParameters>
            </asp:SqlDataSource>

        
    </div>
        </div>
</asp:Content>
