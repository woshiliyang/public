using System;
using System.Collections.Generic;

using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Eshop.BLL;
using Eshop.Model;
using System.Collections.Specialized;

namespace Eshop
{
    public partial class myorder1 : System.Web.UI.Page
    {
       
        UserUpdateBLL updateBLL = new UserUpdateBLL();
        UserInfo userInfo = new UserInfo();
        UserInfoBLL userinfobll = new UserInfoBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            //保证有id才能进入
            try
            {
                
                Label1.Text = Session["name"].ToString();

                userInfo.id = Convert.ToInt32(Session["id"]);

                  Image1.ImageUrl =userinfobll.getimg(userInfo.id);

                
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

        protected void Button1_Click(object sender, EventArgs e)
        {
           

            if (!FileUpload1.HasFile)
            {
                Response.Write("未选择文件");
                return;
            }
            else
            {
                userInfo.id = Convert.ToInt32(Session["id"]);
                string filename = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
                string imgurl = "img/" + filename + ".jpg";
                FileUpload1.SaveAs(Server.MapPath(imgurl));
                Image1.ImageUrl = imgurl;
                userInfo.image=imgurl;
                if (updateBLL.UpdateImage(userInfo))
                {
                    Response.Write("<script>alert('上传成功')</script>");
                }
                else 
                {
                    Response.Write("<script>alert('上传失败')</script>");
                }

            }
            
        }
       

        protected void Button3_Click(object sender, EventArgs e)
        {

        }
    }
}
