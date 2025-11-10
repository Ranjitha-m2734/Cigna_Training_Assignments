

namespace ConsoleApp39
{

    interface IPayment
    {
        void Pay(double Amount);
        
    }


    class CreditCardPayment : IPayment
    {
        public void Pay(double Amount)
        {
            Console.WriteLine($"Payment Method : CreditCard \n Amount : {Amount}");
        }
    }

    class UPIPayment : IPayment
    {
        public void Pay(double Amount)
        {
            Console.WriteLine($"Payment Method: UPI \n Amount: {Amount}");
        }
    }

    class PaypalPayment : IPayment
    {
        public void Pay(double Amount)
        {
            Console.WriteLine($"Payment Method: Paypal \n Amount: {Amount}");
        }
    }




    class Program
    {
        static void Main(string[] args)
        {

            CreditCardPayment c = new CreditCardPayment();
            c.Pay(45678);

            UPIPayment u = new UPIPayment();
            u.Pay(3456);

            PaypalPayment p = new PaypalPayment();
            p.Pay(3456789);


            Console.ReadLine();
        }
    }
}
