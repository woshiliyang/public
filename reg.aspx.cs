using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Eshop.BLL;
using Eshop.Model;

namespace Eshop
{
    public partial class reg : System.Web.UI.Page
    {
        UserInfoBLL mibll = new UserInfoBLL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox2.Text.Trim() == TextBox3.Text.Trim())
            {
                if (RadioButton1.Checked == true)
                {
                    UserInfo mi = new UserInfo()
                    {
                        loginname = TextBox1.Text,
                        loginpwd = TextBox2.Text,
                        sex = RadioButton1.Text,
                        brith = TextBox5.Text,
                        education = DropDownList1.Text,
                        address = TextBox7.Text,
                        phone = TextBox8.Text,
                        zip = TextBox9.Text,
                        email = TextBox10.Text,
                        regdate = DateTime.Now.ToString(),
                        lastdate = DateTime.Now.ToString(),
                        logintimes = 1,
                        memberlevel = 1
                    };
                    if (mibll.Add(mi))
                    {
                        string str = "注册信息为<br/>";
                        str += "用户账号：" + TextBox1.Text + "<br/>";
                        str += "出生年月：" + TextBox5.Text + "<br/>";
                        str += "联系地址：" + TextBox7.Text + "<br/>";
                        str += "联系电话：" + TextBox8.Text + "<br/>";
                        str += "电子邮箱：" + TextBox10.Text + "<br/>";
                        str += "邮政编码：" + TextBox9.Text + "<br/>";
                        str += "性别：" + RadioButton1.Text + "<br/>";
                        str += "学历：" + DropDownList1.Text + "<br/>";

                        string strattention = "您关注的类型为：";
                        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
                        {
                            if (CheckBoxList1.Items[i].Selected)
                            {
                                strattention += CheckBoxList1.Items[i].Text + "";
                            }
                        }
                        str += strattention;
                        Response.Write(str);
                        Response.Write("<script>alert('注册成功')</script>");

                        Response.Write("<script language=javascript>window.location.href='Login.aspx'</script>");
                    }
                    else
                    {
                        Response.Write("添加失败，请稍后重试");
                    }
                    
                    
                    
                }
                else
                {
                    UserInfo mi = new UserInfo()
                    {
                        loginname = TextBox1.Text,
                        loginpwd = TextBox2.Text,
                        sex = RadioButton2.Text,
                        brith = TextBox5.Text,
                        education = DropDownList1.Text,
                        address = TextBox7.Text,
                        phone = TextBox8.Text,
                        zip = TextBox9.Text,
                        email = TextBox10.Text,
                        regdate = DateTime.Now.ToString(),
                        lastdate = DateTime.Now.ToString(),
                        logintimes = 1,
                        memberlevel = 1
                    };
                    if (mibll.Add(mi))
                    {
                        string str = "注册信息为<br/>";
                        str += "用户账号：" + TextBox1.Text + "<br/>";
                        str += "出生年月：" + TextBox5.Text + "<br/>";
                        str += "联系地址：" + TextBox7.Text + "<br/>";
                        str += "联系电话：" + TextBox8.Text + "<br/>";
                        str += "电子邮箱：" + TextBox10.Text + "<br/>";
                        str += "邮政编码：" + TextBox9.Text + "<br/>";
                        str += "性别：" + RadioButton2.Text + "<br/>";
                        str += "学历：" + DropDownList1.Text + "<br/>";

                        string strattention = "您关注的类型为：";
                        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
                        {
                            if (CheckBoxList1.Items[i].Selected)
                            {
                                strattention += CheckBoxList1.Items[i].Text + "";
                            }
                        }
                        str += strattention;
                        Response.Write(str);
                        Response.Write("<script>alert('注册成功')</script>");

                        Response.Write("<script language=javascript>window.location.href='Login.aspx'</script>");
                    }
                    else
                    {
                        Response.Write("添加失败，请稍后重试");
                    }
                   
                }
                
            }
            else
            {
                Response.Write("两次密码输入不一致，请重新输入");
             
            }
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Response.Redirect("Login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}