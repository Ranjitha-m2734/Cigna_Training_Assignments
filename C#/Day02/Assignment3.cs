using System;

namespace Assignment1
{
    internal class Logger
    {
        // 1. Basic message
        static void Log(string message)
        {
            Console.WriteLine($"MESSAGE : {message}");
        }

        // 2. Message with level
        static void Log(string message, string level)
        {
            Console.WriteLine($"{level}: {message}");
        }

        // 3. Message with level and timestamp
        static void Log(string message, string level, DateTime timestamp)
        {
            Console.WriteLine($"{timestamp} , {level} : {message}");
        }

        static void Main()
        {
            Log("System started.");
            Log("Low disk space.", "WARNING");
            Log("Application crashed!", "ERROR", DateTime.Now);
        }
    }
}
