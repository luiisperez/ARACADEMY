using ARAcademy.common;
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
        private Administrator response;

        public AdminLoginCommand(Administrator administrator)
        {
            this.administrator = administrator;
        }

        public Administrator Administrator { get => administrator; set => administrator = value; }

        public override void Execute()
        {
            DAOAdministrator daoAdmin = new DAOAdministrator();
            administrator.Code = daoAdmin.LoginAdmin(administrator);
        }
    }
}