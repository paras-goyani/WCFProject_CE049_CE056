using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace Host
{
    class Program
    {
        
        static void Main(string[] args)
        {
            using(ServiceHost host = new ServiceHost(typeof(TourService.Service1)))
            using(ServiceHost host1 = new ServiceHost(typeof(Tour_CRUD.crud)))
            {
                host.Open();
                host1.Open();
                Console.WriteLine("Host started @ " + DateTime.Now);
                Console.ReadLine();
                
            }
            
        }
    }
}
