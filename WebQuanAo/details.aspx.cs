using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebQuanAo
{
    public partial class details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                login.InnerHtml = "<p class='user'>" + Session["username"].ToString() + "" + "</p>";
            }

            string id = Request.QueryString["id"];

            if (id != null) 
            {
                List<Product> productList = (List<Product>)Application["ProductList"];
                List<Product> products1 = new List<Product>();

                foreach (Product product in productList)
                {
                    if (id == product.id)
                    {
                        products1.Add(product);
                    }
                }
                string dssp = "";

                foreach (Product product in products1) 
                {
                    dssp += "<div class='deatails__container container grid'>";
                    dssp += "<div class='details__group'>";
                    dssp += "<img src='" + product.img1 + "' alt class='details__img' onload='imgGallery()'>";

                    dssp += "<div class='details__small-images grid'>";
                    dssp += "<img src='" + product.img2 + "' alt class='details__small-img'>";
                    dssp += "<img src='" + product.img1 + "' alt class='details__small-img'>";
                    dssp += "<img src='" + product.img2 + "' alt class='details__small-img'>";
                    dssp += "</div>"; // end details__small-images

                    dssp += "</div>"; // end details__group

                    dssp += "<div class='details__group'>";
                    dssp += "<h3 class='details__title'>" + product.name + "</h3>";
                    

                    dssp += "<div class='details__price flex'>";
                    dssp += "<span class='new__price'>$" + product.price + "</span>";
                    dssp += "<span class='old__price'>$" + product.price + "</span>";
                    dssp += "<span class='save__price'>" + product.discount + "% Off</span>";
                    dssp += "</div>"; // end details__price

                    dssp += "<p class='details__description'>Lorem ipsum dolor sit amet consecteturadipisicing elit. Suscipit maxime accusantium aspernatur laborum assumenda distinctio, perferendis natus incidunt repudiandae omnis? Adipisci vitae officiis repellat facere distinctio vel voluptatem cupiditate ducimus.</p>";

                    dssp += "<ul class='product__list'>";
                    dssp += "<li class='list__item flex'><i class='fi-rs-crown'></i>1 year Al Jazeera Brand Warranty</li>";
                    dssp += "<li class='list__item flex'><i class='fi-rs-refresh'></i>30 days return policy</li>";
                    dssp += "<li class='list__item flex'><i class='fi-rs-credit-card'></i>Card on Delivery available Warranty</li>";
                    dssp += "</ul>"; // end product__list

                    dssp += "<div class='details__size flex'>";
                    dssp += "<span class='details__size-title'>Size</span>";
                    dssp += "<ul class='size__list'>";
                    //foreach (var size in product.availableSizes) // product.availableSizes giả định là một danh sách kích thước
                    //{
                    //    dssp += "<li><a href='#' class='size__link'>" + size + "</a></li>";
                    //}
                    dssp += "</ul>"; // end size__list
                    dssp += "</div>"; // end details__size

                    dssp += "<div class='details__action'>";
                    dssp += "<input type='number' runat='server' class='quantity' value='1'>"; // Mặc định số lượng là 1
                    dssp += "<button type ='submit' runat='server' class='btn btn--sm' onserverclick='AddToCartBtn_Click'>Add to Cart</a>";
                    dssp += "</div>"; // end details__action

                    dssp += "</div>"; // end details__group
                    dssp += "</div>"; // end deatails__container
                }
                infoProduct.InnerHtml = dssp;
            }
            else
            {
                Response.Redirect("login.aspx");
            }
            if (IsPostBack)
            {
                AddToCartBtn_Click(sender, e);
            }
        }

        private void AddToCartBtn_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                string id = Request.QueryString["id"];
                if (id != null) 
                {
                    HttpCookie cartCookie = Request.Cookies["cart"];
                    if (cartCookie == null)
                    {
                        cartCookie = new HttpCookie("cart");
                        cartCookie.Value = id + ",";
                        cartCookie.Expires = DateTime.Now.AddDays(14);
                        Response.Cookies.Add(cartCookie);
                    }
                    else
                    {
                        cartCookie.Value += id + ",";
                        cartCookie.Expires = DateTime.Now.AddDays(14);
                        Response.Cookies.Set(cartCookie);
                    }
                    
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}