using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eshop
{
    public partial class order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["shopcart"] != null)
            {
                DataTable dt = Session["shopcart"] as DataTable;
                Repeater1.DataSource = dt.DefaultView;
                Repeater1.DataBind();
                if (Session["total"] != null)
                {
                    lblTotal.Text = Session["total"].ToString();
                }
            }
            RadioButtonList1.SelectedIndex = 0;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Random rm = new Random();
            int num = rm.Next(100, 1000);
            string orderid = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute + num.ToString();

            int contactid = Int32.Parse(RadioButtonList1.SelectedValue);

            string orderdate = DateTime.Now.ToString();

            float total = float.Parse(lblTotal.Text);
            string sql = "insert into order1 (orderId,merId,contactId,total,orderDate) values('" + orderid + "','" + Session["id"].ToString() + "','" + contactid + "','" + total + "','" + orderdate + "')";
          
            if (SqlHelper.ExecuteNonQuery(sql) > 0) 
            {
                for (int i = 0; i < Repeater1.Items.Count; i++) 
                {
                    int merid = Int32.Parse((Repeater1.Items[i].FindControl("lblId") as Label).Text);

                    float price = float.Parse((Repeater1.Items[i].FindControl("lblPrice") as Label).Text.Substring(1));

                    int amount = Int32.Parse((Repeater1.Items[i].FindControl("lblAmount") as Label).Text);

                    sql = string.Format("insert into orderDetail values('{0}','{1}','{2}','{3}')", orderid, merid, price, amount);

                    SqlHelper.ExecuteNonQuery(sql);
                }
                Response.Write("<script>alert('订单生成成功')</script>");
                Response.Write("<script language=javascript>window.location.href='myallorder.aspx'</script>");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
    }
}