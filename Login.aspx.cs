using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using Eshop.BLL;
using Eshop.Model;
      
namespace Eshop
{
    public partial class Login : System.Web.UI.Page
    {
        private string codenumber;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            //防止自动刷新
            if (!IsPostBack)
            {
                codefunctuon();
                Label4.Text = codenumber;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                string name = TextBox1.Text.Trim();
                string pwd = TextBox2.Text.Trim();

                int type;
                UserInfoBLL miBll = new UserInfoBLL();
                UserInfo mi = new UserInfo();

                LoginState loginState = miBll.Login(name, pwd, out type);
            if (TextBox3.Text == Label4.Text)
            {

                switch (loginState)
                {
                    case LoginState.Ok:

                        Session.Timeout = 20;

                        mi.loginname = TextBox1.Text.ToString();
                        Session["name"] = mi.loginname.ToString();
                        Session["id"] = miBll.sessionid(mi.loginname.ToString());
                        Response.Write("<script>alert('登陆成功')</script>");
                        Response.Redirect("index.aspx");
                        break;
                    case LoginState.NameErrow:
                       
                        Response.Write("<script>alert('用户名错误')</script>");
                        codefunctuon();
                        Label4.Text = codenumber;

                        break;
                    case LoginState.PwdError:
                       
                        Response.Write("<script>alert('密码错误')</script>");
                        codefunctuon();
                        Label4.Text = codenumber;
                        break;
                }
            }
            else
            {
                Response.Write("<script>alert('验证码错误')</script>");
                codefunctuon();
                Label4.Text = codenumber;
            }
          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("reg.aspx");
        }

        public string codefunctuon() 
        {
           
            Random rm = new Random();
            for (int i = 0; i <= 3; i++) 
            {
               codenumber=codenumber+ rm.Next(0, 9).ToString();
            
            }
            return codenumber;
        }
    }
}