using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Tour_CRUD
{
    [ServiceContract]
    public interface IService1
    {
        [OperationContract]
        bool addPlace(String name, String desc, String price,String imagepath);

        [OperationContract]
        List<tour> getAllPlace();

        [OperationContract]
        tour getPlace(int id);

        [OperationContract]
        List<tour> getFPlace(string email);

        [OperationContract]
        bool updatePlace(int id,String name,String description,String price,String imagepath);

        [OperationContract]
        bool delete(int id);

        [OperationContract]
        bool addToFav(String email, int placeid);

        [OperationContract]
        bool addpessenger(string fname, string lname, string email, string age, string trip_date);
    }
}
