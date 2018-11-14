using Eshop.BLL;
using Eshop.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eshop
{
    public partial class UPDATEpro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["name"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            UserInfoBLL userInfoBLL = new UserInfoBLL();
            if (RadioButton1.Checked == true)
            {
                UserInfo mi = new UserInfo()
                {
                    id = Convert.ToInt32(Session["id"]),
                    loginname = Label1.Text,
                    loginpwd = TextBox2.Text,
                    sex = RadioButton1.Text,
                    brith = TextBox5.Text,
                    education = DropDownList1.Text,
                    address = TextBox7.Text,
                    phone = TextBox8.Text,
                    zip = TextBox9.Text,
                    email = TextBox10.Text
                };
                if (userInfoBLL.edit(mi))
                {
                    Response.Write("ojbk");
                }
            }
            if(RadioButton2.Checked==true)
            {
                UserInfo mi = new UserInfo()
                {
                    id = Convert.ToInt32(Session["id"]),
                    loginname = Label1.Text,
                    loginpwd = TextBox2.Text,
                    sex = RadioButton2.Text,
                    brith = TextBox5.Text,
                    education = DropDownList1.Text,
                    address = TextBox7.Text,
                    phone = TextBox8.Text,
                    zip = TextBox9.Text,
                    email = TextBox10.Text
                };
                if (userInfoBLL.edit(mi))
                {
                    Response.Write("ojbk");
                }
            }




            

        }
    }
}