using System;

namespace Assignment1
{

    internal class ArrayInput
    {
        static void Main()
        {
            try
            {
                Console.Write("Enter the number of elements: ");
                int size = Convert.ToInt32(Console.ReadLine());

                int[] numbers = new int[size];

                Console.WriteLine("Enter the numbers:");
                for (int i = 0; i < size; i++)
                {
                    numbers[i] = Convert.ToInt32(Console.ReadLine());
                }

                Console.WriteLine("\nYou entered:");
                foreach (int num in numbers)
                {
                    Console.Write(num + " ");
                }
            }
            catch (FormatException)
            {
                Console.WriteLine("Error: Please enter only numbers!");
            }
            catch (OverflowException)
            {
                Console.WriteLine("Error: Number too large!");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Unexpected Error: {ex.Message}");
            }
        }
    }

}
