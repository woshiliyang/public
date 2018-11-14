using System;
using System.Activities;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eshop
{
    public partial class myorder : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //保证有id才能进入
            try
            {
                Label1.Text = Session["name"].ToString();
            }
            catch 
            {
                Response.Write("<script>alert('您尚未登陆，请先登陆')</script>");
              
                Response.Write("<script language=javascript>window.location.href='Login.aspx'</script>");

            }
           
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Label1.Text.Trim() != null)
            {
                Response.Redirect("UPDATEpro.aspx");
          
            }  
          
        }
        
    }
}