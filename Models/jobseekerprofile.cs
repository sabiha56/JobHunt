using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JobHunt.Models
{
    public class jobseekerprofile
    {


        public int jobseeker_id { get; set; }
        public string jobseeker_name { get; set; }
        public string gender{ get; set; }
        public string username { get; set; }
        public string education { get; set; }
        public int contactno { get; set; }
        public string addres { get; set; }
        public string email { get; set; }
        public string interest { get; set; }




    }
}