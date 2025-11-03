using System;

namespace Assignment1
{
    internal class Program
    {
        static void Main(string[] args) 
        {

            int sum = 0;
            Console.WriteLine("Enter a number between 1-25 :  ");
            int num = int.Parse(Console.ReadLine());
            sum = num;

            Console.WriteLine("Admin or Not (true/false) :  ");
            bool isAdmin = bool.Parse(Console.ReadLine());
            if (isAdmin)
            {
                sum += 50;
            }
            else { sum += 0; }

            Console.WriteLine("Has Special Permission (true/false) :  ");
            bool isSplPerm = bool.Parse(Console.ReadLine());
            if (isSplPerm)
            {
                sum += 25;
            }
            else { sum += 0; }


            if (sum >= 75)
            {
                Console.WriteLine("Full Access");
            }
            else if (sum >= 50 & sum < 75) 
            {
                Console.WriteLine("Admin Access");
            }
            else if( sum >= 25 & sum < 50)
            {
                Console.WriteLine("Standard Access");
            }
            else if( sum < 25)
            {
                Console.WriteLine("Restricted Acess");
            }

            Console.ReadLine();

        }
    }
}
