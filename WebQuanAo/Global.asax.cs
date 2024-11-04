using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WebQuanAo
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["Users"] = new List<User>();
            List<User> users = (List<User>)Application["Users"];
            users.Add(new User("nghiadinh", "nghiadinh115", "123", "123"));
            users.Add(new User("dvh1910", "doanhoang1024", "123", "123"));

            Application["ProductList"] = new List<Product>();
            List<Product> products = (List<Product>)Application["ProductList"];

            //T-shirt
            products.Add(new Product() { id = "1", type = "shirt", img1 = "img/product-1-1.jpg", img2 = "img/product-1-2.jpg", name="Áo sơ mi 1", price="50", discount= 0.3f, TT="New"});
            products.Add(new Product() { id = "2", type = "shirt", img1 = "img/product-2-1.jpg", img2 = "img/product-2-2.jpg", name = "Áo sơ mi 2", price = "30", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "3", type = "shirt", img1 = "img/product-6-1.jpg", img2 = "img/product-6-2.jpg", name = "Áo sơ mi 3", price = "50", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "4", type = "shirt", img1 = "img/product-8-1.jpg", img2 = "img/product-8-2.jpg", name = "Áo sơ mi 4", price = "50", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "5", type = "shirt", img1 = "img/product-9-1.jpg", img2 = "img/product-9-2.jpg", name = "Áo sơ mi 5", price = "50", discount = 0.3f, TT = "New" });

            //Pant
            products.Add(new Product() { id = "6", type = "pant", img1 = "img/product-4-1.jpg", img2 = "img/product-4-2.jpg", name = "Quần dài 1", price = "110", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "7", type = "pant", img1 = "img/product-11-1.jpg", img2 = "img/product-11-2.jpg", name = "Quần dài 2", price = "120", discount = 0.3f, TT = "New" });

            //shoes
            products.Add(new Product() { id = "8", type = "shoes", img1 = "img/product-3-1.jpg", img2 = "img/product-3-2.jpg", name = "Giày dép 1", price = "150", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "9", type = "shoes", img1 = "img/product-10-1.jpg", img2 = "img/product-10-2.jpg", name = "Giày dép 1", price = "100", discount = 0.3f, TT = "New" });

            //Accessory
            products.Add(new Product() { id = "10", type = "accessory", img1 = "img/product-5-1.jpg", img2 = "", name = "Phụ kiện 1", price = "50", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "11", type = "accessory", img1 = "img/product-5-2.jpg", img2 = "", name = "Phụ kiện 2", price = "60", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "12", type = "accessory", img1 = "img/product-13-1.jpg", img2 = "", name = "Phụ kiện 3", price = "150", discount = 0.3f, TT = "New" });
            products.Add(new Product() { id = "13", type = "accessory", img1 = "img/product-13-2.jpg", img2 = "", name = "Phụ kiện 4", price = "100", discount = 0.3f, TT = "New" });

            Application["ProductList"] = products;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["login"] = 0;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}