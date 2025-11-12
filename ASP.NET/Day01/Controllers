using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductsController : ControllerBase
    {


        public static List<Product> prodList { get; set; }

        static ProductsController()
        {
            prodList = new List<Product>()
            {
                new Product() { Id = 1, Name = "Alice", Price = 3456, Qty = 5 },
                new Product() { Id = 2, Name = "Bob", Price = 3456, Qty = 5  },
                new Product() { Id = 3, Name = "Charlie", Price = 3456, Qty = 5 }
            };

        }

        [HttpGet]
        public ActionResult <List<Product>> GetAll()
        {
          return Ok(prodList);
        }

        [HttpGet("{id}")]
        public ActionResult <List<Product>> GetProductByID(int id)
        {
            Product obj = prodList.FirstOrDefault(item => item.Id == id);

            if (obj != null)
                return Ok(obj);
            else
                return NotFound(new { status = "Failed", Message = "Requested Product id does not exsist" });
        }

        [HttpPost]
        public ActionResult Create(Product empObj)
        {
            prodList.Add(empObj);
            return Ok(new { status = "Success", message = " New Product details created in server" });
        }

        [HttpPut("{id}")]
        public ActionResult Update(int id, Product updatedProdObj)
        {
            int index = prodList.FindIndex(item => item.Id == id);

            if(index != -1)
            {
                prodList[index] = updatedProdObj;
                return Ok(new { status = "Success", messsage = "New Product details updates in server" });        
            }
            else
            {
                return Ok(new { status = "Failed", messsage = "Requested Product id does not exists" });
            }
        }

        [HttpDelete("{id}")]
        public ActionResult DeleteProductById(int id)
        {
            Product obj = prodList.FirstOrDefault(item => item.Id == id);

            if (obj != null)
            {

                prodList.Remove(obj);
                return Ok(new { status = "Success", message = "Requested Product detailed deleted from server" });
            }

            else
                return NotFound(new { status = "Failed", message = "Requested Product id does not exists" });
        }

    }
}
