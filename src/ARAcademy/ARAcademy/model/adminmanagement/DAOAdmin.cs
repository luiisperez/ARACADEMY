using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ARAcademy.model.adminmanagement
{
    public class DAOAdmin : DAO
    {

        private NpgsqlConnection conn;

        public int LoginAdmin(Administrator administrator)
        {

            NpgsqlCommand command = new NpgsqlCommand(DAOAdmin.AdministratorLoginSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter user = new NpgsqlParameter();
            NpgsqlParameter password = new NpgsqlParameter();

            user.ParameterName = DAOAdmin.User;
            password.ParameterName = DAOAdmin.Password;

            user.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            password.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            user.Direction = ParameterDirection.Input;
            password.Direction = ParameterDirection.Input;

            user.Value = administrator.User;
            password.Value = administrator.Password;

            command.Parameters.Add(user);
            command.Parameters.Add(password);

            command.CommandType = CommandType.StoredProcedure;

            int response = 500;

            NpgsqlDataReader dr = command.ExecuteReader();

            try
            {
                while (dr.Read())
                {
                    response = dr.GetInt32(0);
                }

                dr.Close();
                transaction.Commit();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.Close();
            }
            return response;
        }


    }
}