using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace TourService
{
    [ServiceContract]
    public interface IService1
    {
        [OperationContract]
        bool addUser(String email, String fname, String lname, String password);

        [OperationContract]

        User getSingleUser(String email);

        [OperationContract]

        bool update(String email,String fname,String lname);

        [OperationContract]
        List<User> getUsers();

        [OperationContract]
        bool checkUser(String email,String password);

        [OperationContract]
        bool delete(String email, String password);

        [OperationContract]
        List<User> getpassengers(string email);
    }
}
