using ARAcademy.common.entities;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ARAcademy.model.student
{
    public class DAOStudent : DAO
    {

        private NpgsqlConnection conn;
        public int UpdateStudent(Student student)
        {

            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOStudentResource.UpdateStudentSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter email = new NpgsqlParameter();
            NpgsqlParameter password = new NpgsqlParameter();
            NpgsqlParameter name = new NpgsqlParameter();
            NpgsqlParameter lastName = new NpgsqlParameter();
            NpgsqlParameter birthDate = new NpgsqlParameter();
            NpgsqlParameter phone = new NpgsqlParameter();
            NpgsqlParameter country = new NpgsqlParameter();
            NpgsqlParameter grade = new NpgsqlParameter();

            email.ParameterName = DAOStudentResource.Email;
            password.ParameterName = DAOStudentResource.Password;
            name.ParameterName = DAOStudentResource.Name;
            lastName.ParameterName = DAOStudentResource.Lastname;
            birthDate.ParameterName = DAOStudentResource.Birthdate;
            phone.ParameterName = DAOStudentResource.Phone;
            country.ParameterName = DAOStudentResource.Country;
            grade.ParameterName = DAOStudentResource.GradeID;

            email.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            password.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            name.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            lastName.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            birthDate.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
            phone.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            country.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            grade.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

            email.Direction = ParameterDirection.Input;
            password.Direction = ParameterDirection.Input;
            name.Direction = ParameterDirection.Input;
            lastName.Direction = ParameterDirection.Input;
            birthDate.Direction = ParameterDirection.Input;
            phone.Direction = ParameterDirection.Input;
            country.Direction = ParameterDirection.Input;
            grade.Direction = ParameterDirection.Input;

            email.Value = student.Email;
            password.Value = student.Password;
            name.Value = student.Name;
            lastName.Value = student.LastName;
            birthDate.Value = student.BirthDate;
            phone.Value = student.Phone;
            country.Value = student.Country;
            grade.Value = student.Grade.Id;

            command.Parameters.Add(email);
            command.Parameters.Add(password);
            command.Parameters.Add(name);
            command.Parameters.Add(lastName);
            command.Parameters.Add(birthDate);
            command.Parameters.Add(phone);
            command.Parameters.Add(country);
            command.Parameters.Add(grade);

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

        public int UpdateGradeStudent(Student student)
        {

            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOStudentResource.UpdateGradeStudentSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter email = new NpgsqlParameter();
            NpgsqlParameter grade = new NpgsqlParameter();

            email.ParameterName = DAOStudentResource.Email;
            grade.ParameterName = DAOStudentResource.GradeID;

            email.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            grade.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

            email.Direction = ParameterDirection.Input;
            grade.Direction = ParameterDirection.Input;

            email.Value = student.Email;
            grade.Value = student.Grade.Id;

            command.Parameters.Add(grade);
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

        public int DeleteStudent(Student student)
        {
            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOStudentResource.DeleteStudentSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter email = new NpgsqlParameter();

            email.ParameterName = DAOStudentResource.Email;

            email.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            email.Direction = ParameterDirection.Input;

            email.Value = student.Email;

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

        public int LoginStudent(Student student)
        {
            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOStudentResource.StudentLoginSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter user = new NpgsqlParameter();
            NpgsqlParameter password = new NpgsqlParameter();

            user.ParameterName = DAOStudentResource.Email;
            password.ParameterName = DAOStudentResource.Password;

            user.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            password.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            user.Direction = ParameterDirection.Input;
            password.Direction = ParameterDirection.Input;

            user.Value = student.Email;
            password.Value = student.Password;

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

        public List<Student> ReadAllStudents()
        {
            conn = DAO.getConnection();
            Student readStudent = new Student();
            List<Student> students = new List<Student>();
            String email;
            String password;
            String name;
            String lastName;
            DateTime birthDate;
            String phone;
            String country;
            int gradeId;
            String gradeName;
            Char status;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOStudentResource.ReadAllStudentsSP, conn);
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
                        status = dr.GetChar(7);
                        gradeId = dr.GetInt32(8);
                        gradeName = dr.GetString(9);
                        Grade grade = new Grade(gradeId, gradeName);
                        readStudent = new Student(email, password, name, lastName, birthDate, phone, country, grade);
                        readStudent.Status = status;
                        students.Add(readStudent);
                    }
                    dr.Close();
                    tran.Commit();
                    return students;
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

        public Student ReadStudent(Student student)
        {
            conn = DAO.getConnection();
            Student readStudent = new Student();

            String email;
            String password;
            String name;
            String lastName;
            DateTime birthDate;
            String phone;
            String country;
            int gradeId;
            String gradeName;
            Char status;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOStudentResource.ReadStudentSP, conn);
                NpgsqlParameter parameter = new NpgsqlParameter();
                parameter.ParameterName = DAOStudentResource.Email;
                parameter.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = student.Email;
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
                        status = dr.GetChar(7);
                        gradeId = dr.GetInt32(8);
                        gradeName = dr.GetString(9);                      
                        Grade grade = new Grade(gradeId, gradeName);
                        readStudent = new Student(email, password, name, lastName, birthDate, phone, country, grade);
                        readStudent.Status = status;

                    }
                    dr.Close();
                    tran.Commit();
                    return readStudent;
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

        public int CreateStudent(Student student)
        {

            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOStudentResource.CreateStudentSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter email = new NpgsqlParameter();
            NpgsqlParameter password = new NpgsqlParameter();
            NpgsqlParameter name = new NpgsqlParameter();
            NpgsqlParameter lastName = new NpgsqlParameter();
            NpgsqlParameter birthDate = new NpgsqlParameter();
            NpgsqlParameter phone = new NpgsqlParameter();
            NpgsqlParameter country = new NpgsqlParameter();
            NpgsqlParameter grade = new NpgsqlParameter();

            email.ParameterName = DAOStudentResource.Email;
            password.ParameterName = DAOStudentResource.Password;
            name.ParameterName = DAOStudentResource.Name;
            lastName.ParameterName = DAOStudentResource.Lastname;
            birthDate.ParameterName = DAOStudentResource.Birthdate;
            phone.ParameterName = DAOStudentResource.Phone;
            country.ParameterName = DAOStudentResource.Country;
            grade.ParameterName = DAOStudentResource.GradeID;

            email.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            password.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            name.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            lastName.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            birthDate.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
            phone.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            country.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            grade.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

            email.Direction = ParameterDirection.Input;
            password.Direction = ParameterDirection.Input;
            name.Direction = ParameterDirection.Input;
            lastName.Direction = ParameterDirection.Input;
            birthDate.Direction = ParameterDirection.Input;
            phone.Direction = ParameterDirection.Input;
            country.Direction = ParameterDirection.Input;
            grade.Direction = ParameterDirection.Input;

            email.Value = student.Email;
            password.Value = student.Password;
            name.Value = student.Name;
            lastName.Value = student.LastName;
            birthDate.Value = student.BirthDate;
            phone.Value = student.Phone;
            country.Value = student.Country;
            grade.Value = student.Grade.Id;

            command.Parameters.Add(email);
            command.Parameters.Add(password);
            command.Parameters.Add(name);
            command.Parameters.Add(lastName);
            command.Parameters.Add(birthDate);
            command.Parameters.Add(phone);
            command.Parameters.Add(country);
            command.Parameters.Add(grade);

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