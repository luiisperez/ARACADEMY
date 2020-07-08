using ARAcademy.common;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ARAcademy.model.teacher
{
    public class DAOTeacher : DAO
    {

        private NpgsqlConnection conn;

        public int CreateTeacher(Teacher teacher)
        {

            NpgsqlCommand command = new NpgsqlCommand(DAOTeacher.CreateTeacherSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter email = new NpgsqlParameter();
            NpgsqlParameter password = new NpgsqlParameter();
            NpgsqlParameter name = new NpgsqlParameter();
            NpgsqlParameter lastName = new NpgsqlParameter();
            NpgsqlParameter birthDate = new NpgsqlParameter();
            NpgsqlParameter phone = new NpgsqlParameter();
            NpgsqlParameter country = new NpgsqlParameter();

            email.ParameterName = DAOTeacher.Email;
            password.ParameterName = DAOTeacher.Password;
            name.ParameterName = DAOTeacher.Name;
            lastName.ParameterName = DAOTeacher.Lastname;
            birthDate.ParameterName = DAOTeacher.Birthdate;
            phone.ParameterName = DAOTeacher.Phone;
            country.ParameterName = DAOTeacher.Country;

            email.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            password.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            name.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            lastName.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            birthDate.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
            phone.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            country.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            email.Direction = ParameterDirection.Input;
            password.Direction = ParameterDirection.Input;
            name.Direction = ParameterDirection.Input;
            lastName.Direction = ParameterDirection.Input;
            birthDate.Direction = ParameterDirection.Input;
            phone.Direction = ParameterDirection.Input;
            country.Direction = ParameterDirection.Input;

            email.Value = teacher.Email;
            password.Value = teacher.Password;
            name.Value = teacher.Name;
            lastName.Value = teacher.LastName;
            birthDate.Value = teacher.BirthDate;
            phone.Value = teacher.Phone;
            country.Value = teacher.Country;

            command.Parameters.Add(email);
            command.Parameters.Add(password);
            command.Parameters.Add(name);
            command.Parameters.Add(lastName);
            command.Parameters.Add(birthDate);
            command.Parameters.Add(phone);
            command.Parameters.Add(country);

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