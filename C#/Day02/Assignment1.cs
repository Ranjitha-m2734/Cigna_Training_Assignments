using System;

namespace Assignment1
{
     internal class EmailSender
    {
         static void SendEmail(
            string sender,
            string recipient,
            string subject = "No Subject",
            string message = "No Message",
            bool isImportant = false)
        {
            Console.WriteLine("---- Email Details ----");
            Console.WriteLine($"From: {sender}");
            Console.WriteLine($"To: {recipient}");
            Console.WriteLine($"Subject: {subject}");
            Console.WriteLine($"Message: {message}");
            Console.WriteLine($"Important: {(isImportant ? "Yes" : "No")}");
            Console.WriteLine("------------------------\n");
        }

        static void Main()
        {
           
            SendEmail("scott@gmail.com", "brittni@gmail.com", "Meet and Greet Invite", "Hi" + "\n" + "Hope you are doing well! ", true);

            SendEmail("smith@gmail.com", "team@company.com");
        }
    }
}
