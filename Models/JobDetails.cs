using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JobHunt.Models
{
    public class JobDetails
    {
        public int no = 0;

        public int jid { get; set; }
        public int id { get; set; }
        public String Name { get; set; }
        public String email { get; set; }
        public String radios { get; set; }

        public String loation { get; set; }
        public String jobdesc { get; set; }
        public String reqrmnts { get; set; }
        public String category { get; set; }
        public String companyname { get; set; }
        public String companydetails { get; set; }
        public int cantapply { get; set; }

    }
}