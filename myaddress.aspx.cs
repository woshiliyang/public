using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eshop
{
    public partial class addAdress : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["id"]);
            string sql = "insert into contact (memberId,addressee,address,phone,zip) values('" + id + "','" + TextBox1.Text.Trim() + "','" + TextBox2.Text.Trim() + "','" + TextBox3.Text.Trim() + "','" + TextBox4.Text.Trim() + "')";
            if (SqlHelper.ExecuteNonQuery(sql) > 0)
            {
                Response.Write("<script>alert('添加成功')</script>");
                Response.Write("<script language=javascript>window.location.href='order.aspx'</script>");
            }
            else
            {
                Response.Write("<script>alert('添加失败')</script>");
            }
        }
    }
}