using System;

namespace Assignment1
{

    internal class ArrayInput
    {
        public class NegativeNumberException : Exception
        {
            public NegativeNumberException(string message) : base(message)
            {
            }
        }
        static void Main()
        {
            try
            {

                Console.WriteLine("Enter the size of Elements : ");
                int size = Convert.ToInt32(Console.ReadLine());

                if (size < 0)
                {
                    throw new NegativeNumberException("Array size cannot be negative!");
                }

                int[] arr = new int[size];

                Console.WriteLine();

                Console.WriteLine("Enter the Numbers");
                for (int i = 0; i < size; i++)
                {
                    arr[i] = Convert.ToInt32(Console.ReadLine());
                }

                Console.WriteLine();
                Console.WriteLine("Numbers Entered are :");
                foreach(int item in arr)
                {
                    Console.Write(item + " ");
                }
            }
            catch (NegativeNumberException ex)
            {
                Console.WriteLine("Custom Error: " + ex.Message);
            }
            catch (FormatException)
            {
                Console.WriteLine("Error: Please enter only numbers!");
            }
            catch (OverflowException)
            {
                Console.WriteLine("Error: Number too large!");
            }
           
            catch(Exception ex)
            {
                Console.WriteLine($"Error Messsage : {ex.Message}");
            }
            finally
            {
                Console.WriteLine("\nProgram finished.");
            }
        }
    }

}



