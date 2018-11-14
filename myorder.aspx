<%@ Page Title="" Language="C#" MasterPageFile="~/Account.Master" AutoEventWireup="true" CodeBehind="myorder.aspx.cs" Inherits="Eshop.myorder1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <style type="text/css">
         .content_frame {
            border:thin solid #eeeeee;
            width:760px;
        }
        .photo_pre {
            width:100px;
            height:120px;
            margin-top:30px;
            margin-left:30px;
            float:left;
        }
        .photo_browse {
           width:500px;
           margin-top:30px;
           margin-left:20px;
           float:left;
           font-size:small;
        }
        .photo_choice {
           border:1px solid #aec7cb;
           width:500px;
           height:200px;
           background-color:#f4feff;
           margin-top:15px;
        }
        .photo_load {
           border-bottom-style:dotted;
           border-bottom-width:thin;
           border-bottom-color:#c0c0c0;
           margin-bottom:10px;
           height:80px;
           padding:10px 0 0 25px;
        }
        .order {
            position:absolute;
            margin-top:30px;
            margin-left:200px;
        }
       
      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="order">
         <p>〈账户管理〉 欢迎您:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
         </p>
        <div class="content_frame">
            <div class="photo_pre">

                <asp:Image ID="Image1" runat="server" Height="116px" Width="101px" />

                </div>

            <div class="photo_browse">
                <div >
                    <ul>
                        <li><span>从您的电脑中上传图片作为头像：支持图片格式为.jpg .png .gif</span></li>
                        </ul>
                    
                </div>
                <div class="photo_load">


                    <asp:FileUpload ID="FileUpload1" runat="server" Width="191px" />


                    <asp:Button ID="Button1" runat="server" style="margin-left: 67px" Text="提交" OnClick="Button1_Click" />


                    </div>

                <div>
                    <p>
                        <asp:Button ID="Button2" runat="server" Text="修改更多资料" OnClick="Button2_Click" style="height: 21px" />
                    </p>
                    </div>
                        </div>
                <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
                </div>
        </div>            
    
</asp:Content>
