using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eshop
{
    public partial class detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        int id;
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
           id = Convert.ToInt32(Session["id"]);
           if (id > 0)
           {
               //有用户登录
               string strsql = "select * from cart where memberId=" + id + "and merId=" + Request.QueryString["id"];
               DataTable dt= SqlHelper.GetDataTable(strsql);
                if (dt.Rows.Count > 0)
                {
                    int num = Int32.Parse(dt.Rows[0]["amount"].ToString()) + Int32.Parse(TextBox1.Text);

                    strsql = "update cart set amount=" + num + "where memberId=" + id + "and merId=" + Request.QueryString["id"];

                    if (SqlHelper.ExecuteNonQuery(strsql) > 0)
                    {
                        Response.Write("<script>alert('添加成功')</script>");

                    }
                    else
                    {
                        //float price = float.Parse(DetailsView1.Rows[4].Cells[1].Text);
                        //strsql = "insert into cart values(" + id + "," + Request.QueryString["id"] + "," + Int32.Parse(TextBox1.Text) + "," + price + ")";

                        //if (SqlHelper.ExecuteNonQuery(strsql) > 0)
                        //{

                            Response.Write("<script>alert('添加失败')</script>");
                        //}
                    }
                }
                else
                {
                    //doto 查询用户否  然后charu
                    int num = Convert.ToInt32(TextBox1.Text);

                    strsql = "insert into cart(amount,memberId,merId) values(" + num + "," + id + "," + Request.QueryString["id"] + ")";
                    if (SqlHelper.ExecuteNonQuery(strsql) > 0)
                    {
                        Response.Write("<script>alert('插入成功')</script>");

                    }
                    else
                    {
                        Response.Write("<script>alert('插入失败')</script>");
                    }
                }
            }
           else 
           {
              //无登陆
               Response.Write("<script>alert('您尚未登陆，请先登陆')</script>");

               Response.Write("<script language=javascript>window.location.href='Login.aspx'</script>");

           }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("cart.aspx");
        }
        
    }
}