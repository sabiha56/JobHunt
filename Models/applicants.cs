using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JobHunt.Models
{
    public class applicants
    {
        public int no { get; set; }
        public int apply_id { get; set; }
        public int company_id { get; set; }
        public int job_id { get; set; }
        public int jobseeker_id { get; set; }
        public int japplystatus { get; set; }

        public string applicant_firstname { get; set; }
        public string applicant_lastname { get; set; }
        public string email { get; set; }
        public string phoneno { get; set; }
        public string city { get; set; }
        public string addres { get; set; }
        public string qualification { get; set; }
        public string experience { get; set; }
     




    }
}