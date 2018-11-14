using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eshop
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            //保证有id才能进入
            try
            {


                if ( Session["id"]==null)
                {
                    Response.Write("<script>alert('您尚未登陆，请先登陆')</script>");

                    Response.Write("<script language=javascript>window.location.href='Login.aspx'</script>");
                   
                }


            }
            catch
            {
                Response.Write("<script>alert('您尚未登陆，请先登陆')</script>");

                Response.Write("<script language=javascript>window.location.href='Login.aspx'</script>");

            }

        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label labelprice = e.Item.FindControl("lbl_sprice") as Label;
                float price = float.Parse(labelprice.Text);
                TextBox textnum = e.Item.FindControl("txt_num") as TextBox;
                int num = Int32.Parse(textnum.Text);
                float sum = price * num;
                Label labelsum = e.Item.FindControl("lbl_sum") as Label;
                labelsum.Text = sum.ToString("C");
            }
        }

        protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
        {
            string strsql = string.Format("delete from cart where cartId={0}", DataList1.DataKeys[e.Item.ItemIndex].ToString());
            if (SqlHelper.ExecuteNonQuery(strsql) > 0)
            {
                Response.Write("<script>alert('删除成功')</script>");
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCreated(object sender, DataListItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem || e.Item.ItemType == ListItemType.EditItem)
            {
                Button button = (Button)e.Item.FindControl("btn_oper");
                button.Attributes.Add("onclick", "return confirm('确实要删除此行吗？')");
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "operNum")
            {
                TextBox txtnum = e.Item.FindControl("txt_num") as TextBox;
                int num = int.Parse(txtnum.Text);
                int cartid = Int32.Parse(DataList1.DataKeys[e.Item.ItemIndex].ToString());

                string sql = string.Format("update cart set amount={0} where cartId={1}", num, cartid);

                if (SqlHelper.ExecuteNonQuery(sql)>0)
                {
                    Response.Write("<script>alert('修改成功')</script>");
                    DataList1.DataBind();
                }
            }
        }
        float total = 0;
        protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
        {
            lblTotal.Text = Calculate().ToString("C");
        }
        public float Calculate()
        {
            
            for (int i = 0; i < DataList1.Items.Count; i++)
            {
                CheckBox check = DataList1.Items[i].FindControl("chk_Select") as CheckBox;
                if (check.Checked)
                {
                    Label label = DataList1.Items[i].FindControl("lbl_sum") as Label;

                    total += float.Parse(label.Text.Substring(1));
                }
            }
            return total;
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (chk_All.Checked)
            {
                for (int i = 0; i < DataList1.Items.Count; i++)
                {
                    CheckBox check = DataList1.Items[i].FindControl("chk_Select") as CheckBox;

                    check.Checked = true;
                }
            }
            else
            {
                for (int i = 0; i < DataList1.Items.Count; i++)
                {
                    CheckBox check = DataList1.Items[i].FindControl("chk_Select") as CheckBox;

                    check.Checked = false;
                }
            }
          
            lblTotal.Text = Calculate().ToString("C");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = new DataTable();
            dt.Columns.Add("id", typeof(Int32));

            dt.Columns.Add("productname", typeof(string));

            dt.Columns.Add("localprice", typeof(string));

            dt.Columns.Add("posttime", typeof(string));

            dt.Columns.Add("buycount", typeof(Int32));

           float total = 0;

            for (int i = 0; i < DataList1.Items.Count; i++)
            {
                CheckBox check = DataList1.Items[i].FindControl("chk_Select") as CheckBox;
                if (check.Checked)
                {
                    DataRow row = dt.NewRow();
                    row["id"] = Int32.Parse(DataList1.DataKeys[i].ToString());

                    row["productname"] = (DataList1.Items[i].FindControl("linkname") as HyperLink).Text;
                    

                    row["localprice"] = (DataList1.Items[i].FindControl("price") as Label).Text;

                    row["posttime"] = (DataList1.Items[i].FindControl("lbl_sprice") as Label).Text;

                    row["buycount"] = Int32.Parse((DataList1.Items[i].FindControl("txt_num") as TextBox).Text);

                    dt.Rows.Add(row);

                    Label lalsum = (Label)DataList1.Items[i].FindControl("lbl_sum");
                    string tmp = lalsum.Text;
                    tmp = tmp.Substring(1);
                    total += float .Parse(tmp);
                }
            }
            Session["shopcart"] = dt;
            Session["total"] = total;

            Response.Redirect("order.aspx");
            
        }
    }
}