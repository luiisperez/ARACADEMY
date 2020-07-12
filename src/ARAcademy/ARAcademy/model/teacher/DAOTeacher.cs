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

            NpgsqlCommand command = new NpgsqlCommand(DAOTeacherResource.CreateTeacherSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter email = new NpgsqlParameter();
            NpgsqlParameter password = new NpgsqlParameter();
            NpgsqlParameter name = new NpgsqlParameter();
            NpgsqlParameter lastName = new NpgsqlParameter();
            NpgsqlParameter birthDate = new NpgsqlParameter();
            NpgsqlParameter phone = new NpgsqlParameter();
            NpgsqlParameter country = new NpgsqlParameter();

            email.ParameterName = DAOTeacherResource.Email;
            password.ParameterName = DAOTeacherResource.Password;
            name.ParameterName = DAOTeacherResource.Name;
            lastName.ParameterName = DAOTeacherResource.Lastname;
            birthDate.ParameterName = DAOTeacherResource.Birthdate;
            phone.ParameterName = DAOTeacherResource.Phone;
            country.ParameterName = DAOTeacherResource.Country;

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

        internal int LoginTeacher(Teacher teacher)
        {
            NpgsqlCommand command = new NpgsqlCommand(DAOTeacherResource.TeacherLoginSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter user = new NpgsqlParameter();
            NpgsqlParameter password = new NpgsqlParameter();

            user.ParameterName = DAOTeacherResource.Email;
            password.ParameterName = DAOTeacherResource.Password;

            user.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            password.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            user.Direction = ParameterDirection.Input;
            password.Direction = ParameterDirection.Input;

            user.Value = teacher.Email;
            password.Value = teacher.Password;

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

        public int UpdateTeacher(Teacher teacher)
        {

            NpgsqlCommand command = new NpgsqlCommand(DAOTeacherResource.UpdateTeacherSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter email = new NpgsqlParameter();
            NpgsqlParameter password = new NpgsqlParameter();
            NpgsqlParameter name = new NpgsqlParameter();
            NpgsqlParameter lastName = new NpgsqlParameter();
            NpgsqlParameter birthDate = new NpgsqlParameter();
            NpgsqlParameter phone = new NpgsqlParameter();
            NpgsqlParameter country = new NpgsqlParameter();

            email.ParameterName = DAOTeacherResource.Email;
            password.ParameterName = DAOTeacherResource.Password;
            name.ParameterName = DAOTeacherResource.Name;
            lastName.ParameterName = DAOTeacherResource.Lastname;
            birthDate.ParameterName = DAOTeacherResource.Birthdate;
            phone.ParameterName = DAOTeacherResource.Phone;
            country.ParameterName = DAOTeacherResource.Country;

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

        public Teacher ReadTeacher(Teacher teacher)
        {
            Teacher readTeacher = new Teacher();

            String email;
            String password;
            String name;
            String lastName;
            DateTime birthDate;
            String phone;
            String country;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOTeacherResource.ReadTeacherSP, conn);
                NpgsqlParameter parameter = new NpgsqlParameter();
                parameter.ParameterName = DAOTeacherResource.Email;
                parameter.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = teacher.Email;
                command.Parameters.Add(parameter);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {


                        email = dr.GetString(0);
                        password = dr.GetString(1);
                        name = dr.GetString(2);
                        lastName = dr.GetString(3);
                        birthDate = dr.GetDateTime(4);
                        phone = dr.GetString(5);
                        country = dr.GetString(6);
                        readTeacher = new Teacher(email, password, name, lastName, birthDate, phone, country);

                    }
                    dr.Close();
                    tran.Commit();
                    return readTeacher;
                }
                catch (Exception ex)
                {

                    throw ex;
                }

            }
            catch (NpgsqlException ex2)
            {
                throw ex2;
            }
            finally
            {
                conn.Close();
            }
        }

        public List<Teacher> ReadAllTeachers()
        {
            Teacher teacher = new Teacher();
            List<Teacher> teachers = new List<Teacher>();
            String email;
            String password;
            String name;
            String lastName;
            DateTime birthDate;
            String phone;
            String country;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOTeacherResource.ReadAllTeachersSP, conn);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {


                        email = dr.GetString(0);
                        password = dr.GetString(1);
                        name = dr.GetString(2);
                        lastName = dr.GetString(3);
                        birthDate = dr.GetDateTime(4);
                        phone = dr.GetString(5);
                        country = dr.GetString(6);
                        teacher = new Teacher(email, password, name, lastName, birthDate, phone, country);
                        teachers.Add(teacher);
                    }
                    dr.Close();
                    tran.Commit();
                    return teachers;
                }
                catch (Exception ex)
                {

                    throw ex;
                }

            }
            catch (NpgsqlException ex2)
            {
                throw ex2;
            }
            finally
            {
                conn.Close();
            }
        }

        public int DeleteTeacher(Teacher teacher)
        {

            NpgsqlCommand command = new NpgsqlCommand(DAOTeacherResource.DeleteTeacherSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter email = new NpgsqlParameter();

            email.ParameterName = DAOTeacherResource.Email;

            email.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            email.Direction = ParameterDirection.Input;

            email.Value = teacher.Email;

            command.Parameters.Add(email);

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