using ARAcademy.common.entities;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ARAcademy.model.course
{
    public class DAOCourse : DAO
    {

        private NpgsqlConnection conn;
        public int UpdateCourse(Course course)
        {
            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOCourseResource.UpdateCourseSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();
            NpgsqlParameter name = new NpgsqlParameter();
            NpgsqlParameter description = new NpgsqlParameter();
            NpgsqlParameter fkgrade = new NpgsqlParameter();

            id.ParameterName = DAOCourseResource.Id;
            name.ParameterName = DAOCourseResource.Name;
            description.ParameterName = DAOCourseResource.Description;
            fkgrade.ParameterName = DAOCourseResource.GradeID;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            name.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            description.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            fkgrade.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

            id.Direction = ParameterDirection.Input;
            name.Direction = ParameterDirection.Input;
            description.Direction = ParameterDirection.Input;
            fkgrade.Direction = ParameterDirection.Input;

            id.Value = course.Id;
            name.Value = course.Name;
            description.Value = course.Description;
            fkgrade.Value = course.Grade.Id;

            command.Parameters.Add(id);
            command.Parameters.Add(name);
            command.Parameters.Add(description);
            command.Parameters.Add(fkgrade);

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

        internal int DeleteCourse(Course course)
        {
            throw new NotImplementedException();
        }

        internal List<Course> ReadAllCourses()
        {
            throw new NotImplementedException();
        }

        internal Course ReadCourse(Course course)
        {
            throw new NotImplementedException();
        }

        internal int CreateCourse(Course course)
        {
            throw new NotImplementedException();
        }
    }
}