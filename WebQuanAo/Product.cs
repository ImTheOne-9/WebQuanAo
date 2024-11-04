using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebQuanAo
{
    public class Product
    {
        public string id;
        public string type;
        public string img1;
        public string img2;
        public string name;
        public string price;
        public float discount;
        public string TT;

        public Product()
        {
        }

        public Product(string id, string type, string img1, string img2, string name, string price, float discount, string TT)
        {
            this.id = id;
            this.type = type;
            this.img1 = img1;
            this.img2 = img2;
            this.name = name;
            this.price = price;
            this.discount = discount;
            this.TT = TT;
        }
    }
}