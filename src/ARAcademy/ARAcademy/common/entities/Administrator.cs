using ARAcademy.common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.common
{
    public class Administrator : Entity
    {
        private String user;
        private String password;

        public Administrator()
        {

        }

        public Administrator(String user, String password)
        {
            this.user = user;
            this.password = password;
        }

        public string User { get => user; set => user = value; }
        public string Password { get => password; set => password = value; }
    }
}