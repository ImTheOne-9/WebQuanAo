using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebQuanAo
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) 
            {
                List<User> users = (List<User>)Application["Users"];
                if (users == null)
                {
                    errorMessage.InnerHtml = "Cant access user's database";
                    return;
                }
                string username = Request.Form["username"];
                string password = Request.Form["password"];

                if (username != "" && password != "")
                {
                    foreach (User user in users)
                    {
                        if (username == user.username)
                        {
                            if (password == user.password)
                            {
                                Session["username"] = username;
                                Response.Redirect("home.aspx");
                                break;
                            }
                            else
                            {
                                if (Session["dem"] == null)
                                {
                                    Session["dem"] = 1;
                                }
                                else
                                {
                                    Session["dem"] = (int)Session["dem"] + 1;
                                    if ((int)Session["dem"] > 5)
                                    {
                                        errorMessage.InnerHtml = "Error!!!!!!!!!!!!!";
                                    }
                                }
                                errorMessage.InnerHtml = "Bạn đã nhập sai mật khẩu lần thứ " + Session["dem"];
                            }
                        }
                        else
                        {
                            errorMessage.InnerHtml = "Tài khoản không tồn tại";
                        }
                    }
                }
                else 
                {
                    errorMessage.InnerHtml = "Vui lòng không để trống thông tin đăng nhập";
                }
            }
        }
    }
}