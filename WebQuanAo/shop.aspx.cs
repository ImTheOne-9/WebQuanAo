using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebQuanAo
{
    public partial class shop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                login.InnerHtml = "<p class='user'>" + Session["username"].ToString() + "" + "</p>";
            }
            List<Product> productList = (List<Product>)Application["ProductList"];
            List<Product> products1 = new List<Product>();

            if (productList == null)
            {
                return;
            }

            foreach (Product product in productList)
            {
                string id = product.id;
                if (id == "1" || id == "2" || id == "3" || id == "4" || id == "5" )
                {
                    products1.Add(product);
                }
            }

            string dssp = "";
            int i = 0;
            foreach (Product product in productList)
            {
                i++;
                dssp += "<div class='product__item'>";

                // Phần hình ảnh và hành động sản phẩm
                dssp += "<div class='product__banner'>";
                dssp += "<a href='details.aspx?id=" + product.id + "' class='product__images'>";
                dssp += "<img src='" + product.img1 + "' class='product__img default' />";
                dssp += "<img src='" + product.img2 + "' class='product__img hover' />";
                dssp += "</a>";

                dssp += "<div class='product__actions'>";
                dssp += "<a href='#' class='action__btn' aria-label='Quick View'><i class='fi fi-rs-eye'></i></a>";
                dssp += "<a href='#' class='action__btn' aria-label='Add To Wishlist'><i class='fi fi-rs-heart'></i></a>";
                dssp += "<a href='#' class='action__btn' aria-label='Compare'><i class='fi fi-rs-shuffle'></i></a>";
                dssp += "</div>";

                dssp += "<div class='product__badge light-pink'>Hot</div>";
                dssp += "</div>"; // Đóng thẻ product__banner

                // Phần thông tin sản phẩm
                dssp += "<div class='product__content'>";
                dssp += "<span class='product__category'>" + product.type + "</span>";
                dssp += "<a href='details.aspx?id=" + product.id + "'>";
                dssp += "<h3 class='product__title'>" + product.name + "</h3>";
                dssp += "</a>";

                // Phần đánh giá sản phẩm
                dssp += "<div class='product__rating'>";
                dssp += "<i class='fi fi-rs-star'></i>";
                dssp += "<i class='fi fi-rs-star'></i>";
                dssp += "<i class='fi fi-rs-star'></i>";
                dssp += "<i class='fi fi-rs-star'></i>";
                dssp += "<i class='fi fi-rs-star'></i>";
                dssp += "</div>";

                // Phần giá sản phẩm
                dssp += "<div class='product__price flex'>";
                dssp += "<span class='new__price'>" + product.price + "</span>";
                dssp += "<span class='old__price'>" + product.price + "</span>";
                dssp += "</div>";

                // Nút thêm vào giỏ hàng
                dssp += "<a href='#' class='action__btn cart__btn' aria-label='Add To Cart'>";
                dssp += "<i class='fi fi-rs-shopping-bag-add'></i>";
                dssp += "</a>";

                dssp += "</div>"; // Đóng thẻ product__content
                dssp += "</div>"; // Đóng thẻ product__item
            }
            tableProduct.InnerHtml = dssp;

            //Filer part
            List<Product> productsList = (List<Product>)Application["ProductList"];
            List<Product> productsListBySearchAndFilter = new List<Product>();
            Page.Title = "Search";

            string search = Request.QueryString["search"];
            string filter = Request.QueryString["filter"];

            if(search != null)
            {
                search = search.ToLower();
                Page.Title = "Search";

                if(filter != null)
                {
                    if (filter == "01")
                    {
                        Page.Title = "Filter 01";
                        getProductsListBySearchAndFilter(search, 0, 50, productsListBySearchAndFilter, productsList);
                        total_products.InnerHtml = $"Kết quả tìm kiếm cho '{search}' Dưới 50 $ ({totalProducts(productsListBySearchAndFilter)})";
                    }
                    else if (filter == "02")
                    {
                        Page.Title = "Filter 02";
                        getProductsListBySearchAndFilter(search, 50, 100, productsListBySearchAndFilter, productsList);
                        total_products.InnerHtml = $"Kết quả tìm kiếm cho '{search}' từ 50$ - 100$ ({totalProducts(productsListBySearchAndFilter)})";
                    }
                    else if (filter == "03")
                    {
                        Page.Title = "Filter 03";
                        getProductsListBySearchAndFilter(search, 100, 150, productsListBySearchAndFilter, productsList);
                        total_products.InnerHtml = $"Kết quả tìm kiếm cho '{search}' từ 100$ - 150$ ({totalProducts(productsListBySearchAndFilter)})";
                    }
                }
                else
                {
                    getProductsListBySearchAndFilter(search, 0, 150, productsListBySearchAndFilter, productsList);
                    total_products.InnerHtml = $"Kết quả tìm kiếm cho '{search}' ({totalProducts(productsListBySearchAndFilter)})";
                }
            }
            else
            {
                if (filter == "01")
                {
                    Page.Title = "Filter 01";
                    getProductsFilter( 0, 50, productsListBySearchAndFilter, productsList);
                    total_products.InnerHtml = $"Kết quả tìm kiếm Dưới 50 $ ({totalProducts(productsListBySearchAndFilter)})";
                }
                else if (filter == "02")
                {
                    Page.Title = "Filter 02";
                    getProductsFilter( 50, 100, productsListBySearchAndFilter, productsList);
                    total_products.InnerHtml = $"Kết quả tìm kiếm từ 50$ - 100$ ({totalProducts(productsListBySearchAndFilter)})";
                }
                else if (filter == "03")
                {
                    Page.Title = "Filter 03";
                    getProductsFilter( 100, 150, productsListBySearchAndFilter, productsList);
                    total_products.InnerHtml = $"Kết quả tìm kiếm từ 100$ - 150$ ({totalProducts(productsListBySearchAndFilter)})";
                }
            }

        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            string searchText = "";
            if (search_text.Value != "")
            {
                searchText = search_text.Value.ToLower();
            }
            Response.Redirect($"shop.aspx?search={searchText}");
        }

        protected void getProductsListBySearchAndFilter(string search, int begin, int end, List<Product> productsListBySearchAndFilter, List<Product> productsLists)
        {
            foreach (Product product in productsLists)
            {
                if (product.name.ToLower().IndexOf(search) != -1 && Convert.ToInt32(product.price) >= begin && Convert.ToInt32(product.price) <= end)
                {
                    productsListBySearchAndFilter.Add(product);
                }
                if (product.name.ToLower().IndexOf(search) != 1)
                {
                    tableProduct.InnerHtml = "";
                }
            }
            string dssp = "";

            int i = 0;
            foreach (Product product in productsListBySearchAndFilter)
            {
                i++;
                dssp += "<div class='product__item'>";

                // Phần hình ảnh và hành động sản phẩm
                dssp += "<div class='product__banner'>";
                dssp += "<a href='details.aspx?id=" + product.id + "' class='product__images'>";
                dssp += "<img src='" + product.img1 + "' class='product__img default' />";
                dssp += "<img src='" + product.img2 + "' class='product__img hover' />";
                dssp += "</a>";

                dssp += "<div class='product__actions'>";
                dssp += "<a href='#' class='action__btn' aria-label='Quick View'><i class='fi fi-rs-eye'></i></a>";
                dssp += "<a href='#' class='action__btn' aria-label='Add To Wishlist'><i class='fi fi-rs-heart'></i></a>";
                dssp += "<a href='#' class='action__btn' aria-label='Compare'><i class='fi fi-rs-shuffle'></i></a>";
                dssp += "</div>";

                dssp += "<div class='product__badge light-pink'>Hot</div>";
                dssp += "</div>"; // Đóng thẻ product__banner

                // Phần thông tin sản phẩm
                dssp += "<div class='product__content'>";
                dssp += "<span class='product__category'>" + product.type + "</span>";
                dssp += "<a href='details.aspx?id=" + product.id + "'>";
                dssp += "<h3 class='product__title'>" + product.name + "</h3>";
                dssp += "</a>";

                // Phần đánh giá sản phẩm
                dssp += "<div class='product__rating'>";
                dssp += "<i class='fi fi-rs-star'></i>";
                dssp += "<i class='fi fi-rs-star'></i>";
                dssp += "<i class='fi fi-rs-star'></i>";
                dssp += "<i class='fi fi-rs-star'></i>";
                dssp += "<i class='fi fi-rs-star'></i>";
                dssp += "</div>";

                // Phần giá sản phẩm
                dssp += "<div class='product__price flex'>";
                dssp += "<span class='new__price'>" + product.price + "</span>";
                dssp += "<span class='old__price'>" + product.price + "</span>";
                dssp += "</div>";

                // Nút thêm vào giỏ hàng
                dssp += "<a href='#' class='action__btn cart__btn' aria-label='Add To Cart'>";
                dssp += "<i class='fi fi-rs-shopping-bag-add'></i>";
                dssp += "</a>";

                dssp += "</div>"; // Đóng thẻ product__content
                dssp += "</div>"; // Đóng thẻ product__item
            }
            tableProduct1.InnerHtml = dssp;
            tableProduct.InnerHtml = "";
        }
        protected void getProductsFilter(int begin, int end, List<Product> productsListBySearchAndFilter, List<Product> productsLists)
        {
            foreach (Product product in productsLists)
            {
                if (Convert.ToInt32(product.price) >= begin && Convert.ToInt32(product.price) <= end)
                {
                    productsListBySearchAndFilter.Add(product);
                }
            }
            string dssp = "";

            int i = 0;
            foreach (Product product in productsListBySearchAndFilter)
            {
                i++;
                dssp += "<div class='product__item'>";

                // Phần hình ảnh và hành động sản phẩm
                dssp += "<div class='product__banner'>";
                dssp += "<a href='details.aspx?id=" + product.id + "' class='product__images'>";
                dssp += "<img src='" + product.img1 + "' class='product__img default' />";
                dssp += "<img src='" + product.img2 + "' class='product__img hover' />";
                dssp += "</a>";

                dssp += "<div class='product__actions'>";
                dssp += "<a href='#' class='action__btn' aria-label='Quick View'><i class='fi fi-rs-eye'></i></a>";
                dssp += "<a href='#' class='action__btn' aria-label='Add To Wishlist'><i class='fi fi-rs-heart'></i></a>";
                dssp += "<a href='#' class='action__btn' aria-label='Compare'><i class='fi fi-rs-shuffle'></i></a>";
                dssp += "</div>";

                dssp += "<div class='product__badge light-pink'>Hot</div>";
                dssp += "</div>"; // Đóng thẻ product__banner

                // Phần thông tin sản phẩm
                dssp += "<div class='product__content'>";
                dssp += "<span class='product__category'>" + product.type + "</span>";
                dssp += "<a href='details.aspx?id=" + product.id + "'>";
                dssp += "<h3 class='product__title'>" + product.name + "</h3>";
                dssp += "</a>";

                // Phần đánh giá sản phẩm
                dssp += "<div class='product__rating'>";
                dssp += "<i class='fi fi-rs-star'></i>";
                dssp += "<i class='fi fi-rs-star'></i>";
                dssp += "<i class='fi fi-rs-star'></i>";
                dssp += "<i class='fi fi-rs-star'></i>";
                dssp += "<i class='fi fi-rs-star'></i>";
                dssp += "</div>";

                // Phần giá sản phẩm
                dssp += "<div class='product__price flex'>";
                dssp += "<span class='new__price'>" + product.price + "</span>";
                dssp += "<span class='old__price'>" + product.price + "</span>";
                dssp += "</div>";

                // Nút thêm vào giỏ hàng
                dssp += "<a href='#' class='action__btn cart__btn' aria-label='Add To Cart'>";
                dssp += "<i class='fi fi-rs-shopping-bag-add'></i>";
                dssp += "</a>";

                dssp += "</div>"; // Đóng thẻ product__content
                dssp += "</div>"; // Đóng thẻ product__item
            }
            tableProduct1.InnerHtml = dssp;
            tableProduct.InnerHtml = "";
        }

        protected string totalProducts(List<Product> productsListByTypeAndFilter)
        {
            int total = 0;
            foreach (Product product in productsListByTypeAndFilter)
            {
                total++;
            }
            return total.ToString();
        }

        protected string filterPrice(List<Product> productsList)
        {
            int type = 0;
            foreach (Product product in productsList)
            {
                int price = Convert.ToInt32(product.price);
                if (price >= 0 && price <= 50)
                {
                    type = 1;
                }
                else if (price >= 50 && price <= 100)
                {
                    type = 2;
                }
                else if (price >= 100 & price <= 150)
                {
                    type = 3;
                }
            }
            return type.ToString();
        }
    }
}