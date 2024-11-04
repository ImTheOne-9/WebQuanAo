using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebQuanAo
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) 
            { 
                string email = Request.Form["email"];
                string username = Request.Form["username"];
                string password = Request.Form["password"];
                string repassword = Request.Form["txtRePassword"];

                List<User> users = (List<User>)Application["Users"];
                Boolean check = true;

                if (email != "" && username != "" && password != "" && repassword != "") 
                {
                    if (password != repassword)
                    {
                        errorMessage.InnerHtml = "Mật khẩu bạn nhập không khớp nhau";
                        check = false;
                    }

                    foreach (User user in users)
                    {
                        if (username == user.username)
                        {
                            errorMessage.InnerHtml = "This account has been registerd";
                            check = false;
                        }
                    }

                    if (check) 
                    {
                        errorMessage.InnerHtml = "Successfully Register";
                        User newuser = new User(username, email, password, repassword);
                        users.Add(newuser);
                        Application["Users"] = users;
                        return;
                    }
                }
            }
        }
    }
}