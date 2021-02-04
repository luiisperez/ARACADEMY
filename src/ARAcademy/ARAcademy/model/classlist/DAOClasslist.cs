using ARAcademy.common.entities;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.model.classlist
{
    public class DAOClasslist : DAO
    {
        private NpgsqlConnection conn;

        public int CreateClasslist(Classlist classlist)
        {
            throw new NotImplementedException();
        }

        internal int DeleteClasslist(Classlist classlist)
        {
            throw new NotImplementedException();
        }

        internal List<Classlist> ReadClasslist(List<Classlist> classlist)
        {
            throw new NotImplementedException();
        }

        internal int UpdateClasslistComment(Classlist classlist)
        {
            throw new NotImplementedException();
        }
    }
}