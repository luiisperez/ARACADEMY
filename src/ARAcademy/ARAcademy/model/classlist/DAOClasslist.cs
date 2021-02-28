using ARAcademy.common.entities;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ARAcademy.model.classlist
{
    public class DAOClasslist : DAO
    {
        private NpgsqlConnection conn;

        public int CreateClasslist(Classlist classlist)
        {
            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOClasslistResource.CreateClasslistSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter classMeeting = new NpgsqlParameter();
            NpgsqlParameter student = new NpgsqlParameter();

            classMeeting.ParameterName = DAOClasslistResource.ClassId;
            student.ParameterName = DAOClasslistResource.StudentId;

            classMeeting.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            student.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            classMeeting.Direction = ParameterDirection.Input;
            student.Direction = ParameterDirection.Input;

            classMeeting.Value = classlist.ClassMeeting.Id;
            student.Value = classlist.Student.Email;

            command.Parameters.Add(classMeeting);
            command.Parameters.Add(student);

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

        public int DeleteClasslist(Classlist classlist)
        {
            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOClasslistResource.DeleteClasslistSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();

            id.ParameterName = DAOClasslistResource.Id;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

            id.Direction = ParameterDirection.Input;

            id.Value = classlist.Id;

            command.Parameters.Add(id);

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

        public List<Classlist> ReadClasslist(ClassMeeting classMeeting)
        {
            conn = DAO.getConnection();
            Classlist readClasslist = new Classlist();
            List<Classlist> classLists = new List<Classlist>();
            int id;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOClasslistResource.ReadClasslistByClassSP, conn);
                NpgsqlParameter parameter = new NpgsqlParameter();
                parameter.ParameterName = DAOClasslistResource.Id;
                parameter.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = classMeeting.Id;
                command.Parameters.Add(parameter);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        String classId = dr.GetString(1);
                        DateTime classDate = dr.GetDateTime(2);
                        String classLink = dr.GetString(3);
                        String classComment = dr.GetString(4);
                        String studentEmail = dr.GetString(5);
                        String studentName = dr.GetString(6);
                        String studentLastname = dr.GetString(7);
                        Student student = new Student();
                        student.Email = studentEmail;
                        student.Name = studentName;
                        student.LastName = studentLastname;
                        classMeeting.StartTime = classDate;
                        classMeeting.JoinUrl = classLink;
                        classMeeting.Comment = classComment;
                        readClasslist = new Classlist(id, classMeeting, student);
                        classLists.Add(readClasslist);
                    }
                    dr.Close();
                    tran.Commit();
                    return classLists;
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

        public int UpdateClasslistComment(Classlist classlist)
        {
            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOClasslistResource.UpdateClasslistSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();
            NpgsqlParameter classMeeting = new NpgsqlParameter();
            NpgsqlParameter student = new NpgsqlParameter();

            id.ParameterName = DAOClasslistResource.Id;
            classMeeting.ParameterName = DAOClasslistResource.ClassId;
            student.ParameterName = DAOClasslistResource.StudentId;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            classMeeting.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            student.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            id.Direction = ParameterDirection.Input;
            classMeeting.Direction = ParameterDirection.Input;
            student.Direction = ParameterDirection.Input;

            id.Value = classlist.Id;
            classMeeting.Value = classlist.ClassMeeting.Id;
            student.Value = classlist.Student.Email;

            command.Parameters.Add(id);
            command.Parameters.Add(classMeeting);
            command.Parameters.Add(student);

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