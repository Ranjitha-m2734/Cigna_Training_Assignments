using System.Net;

namespace ConsoleApp39
{

    abstract class Shape
    {
        public abstract double CalculateArea();
    
        public void DisplayArea()
        {
            Console.WriteLine($"Area: {CalculateArea()}");
        }

    }

    class Circle : Shape
    {
        public double Radius { get; set; }

        public Circle( double radius)
        {
            Radius = radius;
        }

        public override double CalculateArea()
        {
            return Math.PI * Radius * Radius;
        }

   
    }

    class Rectangle : Shape
    {

        public double Length { get; set; }
        public double Breadth { get; set; }
        public Rectangle(double length,  double breadth)
        {
            Length = length;
            Breadth = breadth;

        }

        public override double CalculateArea()
        {
            return Length * Breadth;

        }


    }

    internal class Program
    {
        static void Main(string[] args)
        {

            Circle c1 = new Circle(56.7);

            Rectangle r1 = new Rectangle(23,45);

            double CircleArea = c1.CalculateArea();
            Console.WriteLine($"Area of Circle : {Math.Round(CircleArea,3)}");
            double CircleRectangle = r1.CalculateArea();
            Console.WriteLine($"Area of Rectangle : {Math.Round(CircleRectangle,3)}");



            Console.ReadLine();
        }
    }
}
