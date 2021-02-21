using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tour_CRUD
{
    public class tour
    {
        string _name;
        string _desc;
        string _price;
        string _imagepath;
        int _placeid;

        public int placeid
        {
            get { return _placeid; }
            set { _placeid = value; }
        }

        public string name {
            get { return _name; }
            set { _name = value; }
        }
        public string desc
        {
            get { return _desc; }
            set { _desc = value; }
        }
        public string price
        {
            get { return _price; }
            set { _price = value; }
        }
        public string imagepath
        {
            get { return _imagepath; }
            set { _imagepath = value; }
        }
    }
}
