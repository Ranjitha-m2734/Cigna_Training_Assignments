using System;

namespace Assignment1
{
     internal class AreaCalculator
    {
         static void AreaCal(double r)
        {
            double area = Math.PI * r * r;
            Console.WriteLine($"Area of Circle is : {area}"); 
        }

        static void AreaCal(double l, double b)
        {
            double area = l * b;
            Console.WriteLine($"Area of Reactangle is : {area}");
        }

        static void AreaCal(float s)
        {
            double area = (double) s * (double) s;
            Console.WriteLine($"Area of Square is : {area}");
        }

        static void Main()
        {
            Console.WriteLine("Enter the Radius for area calculation");
            double radius = Convert.ToDouble(Console.ReadLine());
            AreaCal(radius);

            Console.WriteLine();

            Console.WriteLine("Enter the Length for area calculation");
            double length = Convert.ToDouble(Console.ReadLine());
            Console.WriteLine("Enter the Breadth for area calculation");
            double breadth = Convert.ToDouble(Console.ReadLine());
            AreaCal(length, breadth);
            Console.WriteLine();

            Console.WriteLine("Enter the Side value for area calculation");
            float side = float.parse(Console.ReadLine());
            AreaCal(side);
            Console.WriteLine();
        }
    }
}
