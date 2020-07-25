using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PTC
{
    public class Add
    {
        public int Id { get; set; }
        public string Brand { get; set; }
        public string Product { get; set; }
        public string Price { get; set; }
        public string Quantity { get; set; }
        public Add() { }

        public Add(string pQuantity, string pBrand, string pPrice, string pProduct, int PId)

        {
            this.Id = PId;
            this.Brand = pBrand;
            this.Product = pProduct;
            this.Price = pPrice;
            this.Quantity = pQuantity;
        }
    }
}