using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eshop
{
    public partial class myallorder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem) 
            {
                int rownum = e.Item.ItemIndex;
                switch (Int32.Parse(((Label)e.Item.FindControl("lblStatus")).Text))
                {
                    case 0:
                        ((Label)e.Item.FindControl("lblStatus")).Text = "等待付款";
                        ((LinkButton)e.Item.FindControl("lbltnOper")).Text = "付款";
                        break;
                    case 1:
                        ((Label)e.Item.FindControl("lblStatus")).Text = "等待发货";
                        ((LinkButton)e.Item.FindControl("lbltnOper")).Text = "提醒发货";
                        break;
                    case 2:
                        ((Label)e.Item.FindControl("lblStatus")).Text = "卖家已发货";
                        ((LinkButton)e.Item.FindControl("lbltnOper")).Text = "确认收货";
                        break;
                    case 3:
                        ((Label)e.Item.FindControl("lblStatus")).Text = "交易完成";
                        ((LinkButton)e.Item.FindControl("lbltnOper")).Text = "评价";
                        break;
                    case 4:
                        ((Label)e.Item.FindControl("lblStatus")).Text = "交易完成";
                        ((LinkButton)e.Item.FindControl("lbltnOper")).Visible = false;
                        ((Label)e.Item.FindControl("Label1")).Visible = true;
                        break;

                }
            }
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "oper")
            {
                string orderid = ((Label)e.Item.FindControl("lblOrderid")).Text;
                LinkButton btn = (LinkButton)(e.Item.FindControl("lbltnOper"));
                string strsql = "";
                string operdate = DateTime.Now.ToString();
                switch (btn.Text.Trim())
                {
                    case "付款":
                        strsql = "update order1 set status=1 , paydate='" + operdate + "'where orderId='" + orderid+"'";
                        if (SqlHelper.ExecuteNonQuery(strsql)>0)
                        {
                            Response.Write("<script>alert('付款成功')</script>");
                            Response.Write("<script language=javascript>window.location.href='myallorder.aspx'</script>");
                        }
                        break;
                    case "提醒发货":
                        Response.Write("<script>alert('已经提醒卖家')</script>");
                        Response.Write("<script language=javascript>window.location.href='myallorder.aspx'</script>");
                        break;
                    case "确认收货":
                        strsql = "update order1 set status=3, receiptDate='" + operdate + "'where orderId='" + orderid + "'";
                        if (SqlHelper.ExecuteNonQuery(strsql) > 0)
                        {
                            Response.Write("<script>alert('交易成功')</script>");
                            Response.Write("<script language=javascript>window.location.href='myallorder.aspx'</script>");
                        }
                        break;

                    case "评价":
                        Response.Redirect("evaluation.aspx?orderid=" + orderid);
                        break;
                }
            }
        }
    }
}