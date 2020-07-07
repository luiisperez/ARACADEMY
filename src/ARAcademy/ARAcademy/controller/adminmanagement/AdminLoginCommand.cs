using ARAcademy.model.adminmanagement;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.adminmanagement
{
    public class AdminLoginCommand : Command
    {
        private Administrator administrator;
        private int response;

        public AdminLoginCommand(Administrator administrator)
        {
            this.administrator = administrator;
        }

        public int Response { get => response; set => response = value; }

        public override void Execute()
        {
            DAOAdmin daoAdmin = new DAOAdmin();
            response = daoAdmin.LoginAdmin(administrator);
        }
    }
}