using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebQuanAo
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                login.InnerHtml = "<p class='user'>" + Session["username"].ToString() + "" + "</p>";
                int logCount = Convert.ToInt32(Application["cartnumber"]);

                if (Request.Cookies["cart"] != null)
                {
                    List<Product> cartList = new List<Product>();
                    List<Product> productList = (List<Product>)Application["ProductList"];

                    string[] productsID = Request.Cookies["cart"].Value.Split(',');
                    foreach (string productID in productsID)
                    {
                        foreach (Product product in productList)
                        {
                            if (product.id == productID)
                            {
                                logCount++;
                                cartList.Add(product);
                            }
                        }
                    }
                    string dssp = "";
                    dssp += "<div class='table__container'>";
                    dssp += "<table class='table'>";
                    dssp += "<tr>";
                    dssp += "<th>Image</th>";
                    dssp += "<th>Name</th>";
                    dssp += "<th>Price</th>";
                    dssp += "<th>Quantity</th>";
                    dssp += "<th>Subtotal</th>";
                    dssp += "<th>Remove</th>";
                    dssp += "</tr>";

                    int i = 0;
                    foreach (Product product in cartList)
                    {
                        i++;
                        dssp += "<tr>";
                        dssp += "<td><img class='cart--img' src='" + product.img1 + "'></td>";
                        dssp += "<td><h3 class='table__title'>" + product.name + "</h3> </td>";
                        dssp += "<td><span class='table__price'>" + product.price + "</h3> </td>";
                        dssp += "<td><input type='number' placeholder='3' class='quantity' min='1'></td>";
                        dssp += "<td>" + product.price + "</td>";
                        dssp += "<td>";
                        dssp += "<div><a href= 'DeleteProduct.aspx?id=" + product.id + "'><button class='Delete_Product'>Xóa</button></a></div>";
                        dssp += "</td>";
                        dssp += "</tr>";
                    }

                    dssp += "</table>";
                    dssp += "</div>";

                    cartProduct.InnerHtml = dssp;

                    //Display list products price
                    int productsPrice = 0;
                    foreach (Product product in cartList) 
                    {
                        productsPrice += Convert.ToInt32(product.price);
                    }
                    products_Price.InnerHtml = productsPrice.ToString();

                    int productsTotal = productsPrice + 10;
                    total_Price.InnerHtml = productsTotal.ToString();

                }
                else
                {
                    Response.Redirect("detail.aspx");

                }
            }
            else 
            {
                Response.Redirect("login.aspx");
            }

        }
    }
}