using System;


class Prod
{
    public int productId { get; set; }
    public string productName { get; set; }
    public double unitPrice { get; set; }
    public int quantity { get; set; }
}
internal class Product
{
    static void Main(string[] args)
    {
        Prod obj = new Prod();

        Console.WriteLine("Enter Product Id: ");
        obj.productId = int.Parse(Console.ReadLine());

        Console.WriteLine("Enter Product Name: ");
        obj.productName = Console.ReadLine();

        Console.WriteLine("Enter Unit Price: ");
        obj.unitPrice = double.Parse(Console.ReadLine());

        Console.WriteLine("Enter Quantity: ");
        obj.quantity = int.Parse(Console.ReadLine());

        Console.WriteLine("\nProduct Details:");
        Console.WriteLine($"Product Id   : {obj.productId}");
        Console.WriteLine($"Product Name : {obj.productName}");
        Console.WriteLine($"Unit Price   : {obj.unitPrice}");
        Console.WriteLine($"Quantity     : {obj.quantity}");
    }
}
