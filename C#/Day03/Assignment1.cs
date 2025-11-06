using System;

class Customer
{
    int custId;
    string custName;
    string city;

    
    public Customer()
    {
        custId = 0;
        custName = "Unknown";
        city = "Not Mentioned";
    }

    
    public Customer(int id)
    {
        custId = id;
        custName = "Unknown";
        city = "Not Mentioned";
    }

    
    public Customer(int id, string name)
    {
        custId = id;
        custName = name;
        city = "Not Mentioned";
    }

    
    public Customer(int id, string name, string cityName)
    {
        custId = id;
        custName = name;
        city = cityName;
    }

    public void ShowDetails()
    {
        Console.WriteLine($"Customer Details :: Id : {custId}, Name : {custName}, City : {city}");
    }

    
    static void Main()
    {
        Customer c1 = new Customer();
        Customer c2 = new Customer(10256);
        Customer c3 = new Customer(10256, "Scott");
        Customer c4 = new Customer(10256, "Scott", "Hyd");

        c1.ShowDetails();
        c2.ShowDetails();
        c3.ShowDetails();
        c4.ShowDetails();
    }
}
