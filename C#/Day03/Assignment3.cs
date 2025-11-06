using System;



internal class Employee
{

    public int Id { get; set; }
    public string Name { get; set; }
    public string Job { get; set; }
    public double Basic { get; set; }
    public double HRA { get; set; }
    public double DA { get; set; }
    public double IT { get; set; }
    public double PF { get; set; }
    public double GrossSalary { get; set; }
 
    public void GetGrossSalary()
    {
        HRA = 0.15 * Basic;
        DA = 0.8 * Basic;
        IT = 0.10 * Basic;
        PF = 0.5 * Basic;

        GrossSalary = Basic + HRA + DA - IT - PF;
    }

    public void PrintDetails()
    {
        Console.WriteLine("/n Employee Details :");
        Console.WriteLine($"ID : {Id}");
        Console.WriteLine($"Name : {Name}");
        Console.WriteLine($"Job : {Job}");
        Console.WriteLine($"Basic Salary : {Basic}");
        Console.WriteLine($"HRA : {HRA}");
        Console.WriteLine($"DA : {DA}");
        Console.WriteLine($"IT : {IT}");
        Console.WriteLine($"PF : {PF}");
        Console.WriteLine($"Gross Salary : {GrossSalary}");
     }
    static void Main(string[] args)
    {
        Employee obj = new Employee();

        Console.WriteLine("Enter Employee Id: ");
        obj.Id = int.Parse(Console.ReadLine());

        Console.WriteLine("Enter Employee Name: ");
        obj.Name = Console.ReadLine();

        Console.WriteLine("Enter Job Name ");
        obj.Job = Console.ReadLine();

        Console.WriteLine("Enter Basic pay: ");
        obj.Basic = double.Parse(Console.ReadLine());

        obj.GetGrossSalary();
        obj.PrintDetails();

        
    }
}
