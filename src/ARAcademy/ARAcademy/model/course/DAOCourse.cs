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
        public int UpdateCourse(Course course, String oldId)
        {
            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOCourseResource.UpdateCourseSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();
            NpgsqlParameter name = new NpgsqlParameter();
            NpgsqlParameter description = new NpgsqlParameter();
            NpgsqlParameter fkgrade = new NpgsqlParameter();
            NpgsqlParameter idOld = new NpgsqlParameter();

            id.ParameterName = DAOCourseResource.Id;
            name.ParameterName = DAOCourseResource.Name;
            description.ParameterName = DAOCourseResource.Description;
            fkgrade.ParameterName = DAOCourseResource.GradeID;
            idOld.ParameterName = DAOCourseResource.OldId;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            name.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            description.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            fkgrade.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            idOld.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            id.Direction = ParameterDirection.Input;
            name.Direction = ParameterDirection.Input;
            description.Direction = ParameterDirection.Input;
            fkgrade.Direction = ParameterDirection.Input;
            idOld.Direction = ParameterDirection.Input;

            id.Value = course.Id;
            name.Value = course.Name;
            description.Value = course.Description;
            fkgrade.Value = course.Grade.Id;
            idOld.Value = oldId;

            command.Parameters.Add(id);
            command.Parameters.Add(name);
            command.Parameters.Add(description);
            command.Parameters.Add(fkgrade);
            command.Parameters.Add(idOld);

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

        public int DeleteCourse(Course course)
        {
            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOCourseResource.DeleteCourseSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();

            id.ParameterName = DAOCourseResource.Id;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            id.Direction = ParameterDirection.Input;

            id.Value = course.Id;

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

        public List<Course> ReadAllCourses()
        {
            conn = DAO.getConnection();
            Course readCourse = new Course();
            List<Course> courses = new List<Course>();
            String id;
            String name;
            String descripcion;
            int gradeId;
            String gradeName;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOCourseResource.ReadAllCoursesSP, conn);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {


                        id = dr.GetString(0);
                        name = dr.GetString(1);
                        descripcion = dr.GetString(2);
                        gradeId = dr.GetInt32(3);
                        gradeName = dr.GetString(4);
                        Grade grade = new Grade(gradeId, gradeName);
                        readCourse = new Course(id, name, descripcion, grade);
                        courses.Add(readCourse);
                    }
                    dr.Close();
                    tran.Commit();
                    return courses;
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

        public Course ReadCourse(Course course)
        {
            conn = DAO.getConnection();
            Course readCourse = new Course();
            String id;
            String name;
            String descripcion;
            int gradeId;
            String gradeName;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOCourseResource.ReadCourseSP, conn);
                NpgsqlParameter parameter = new NpgsqlParameter();
                parameter.ParameterName = DAOCourseResource.Id;
                parameter.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = course.Id;
                command.Parameters.Add(parameter);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {


                        id = dr.GetString(0);
                        name = dr.GetString(1);
                        descripcion = dr.GetString(2);
                        gradeId = dr.GetInt32(3);
                        gradeName = dr.GetString(4);
                        Grade grade = new Grade(gradeId, gradeName);
                        readCourse = new Course(id, name, descripcion, grade);
                    }
                    dr.Close();
                    tran.Commit();
                    return readCourse;
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

        public List<Course> ReadAllCoursesByGrade(Grade gradeConsulted)
        {
            conn = DAO.getConnection();
            Course readCourse = new Course();
            List<Course> courses = new List<Course>();
            String id;
            String name;
            String descripcion;
            int gradeId;
            String gradeName;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOCourseResource.ReadCoursesByGradeSP, conn);
                NpgsqlParameter parameter = new NpgsqlParameter();
                parameter.ParameterName = DAOCourseResource.Id;
                parameter.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = gradeConsulted.Id;
                command.Parameters.Add(parameter);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {


                        id = dr.GetString(0);
                        name = dr.GetString(1);
                        descripcion = dr.GetString(2);
                        gradeId = dr.GetInt32(3);
                        gradeName = dr.GetString(4);
                        Grade grade = new Grade(gradeId, gradeName);
                        readCourse = new Course(id, name, descripcion, grade);

                        courses.Add(readCourse);
                    }
                    dr.Close();
                    tran.Commit();
                    return courses;
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

        public int CreateCourse(Course course)
        {
            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOCourseResource.CreateCourseSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();
            NpgsqlParameter name = new NpgsqlParameter();
            NpgsqlParameter description = new NpgsqlParameter();
            NpgsqlParameter fkgrade = new NpgsqlParameter();

            id.ParameterName = DAOCourseResource.Id;
            name.ParameterName = DAOCourseResource.Name;
            description.ParameterName = DAOCourseResource.Description;
            fkgrade.ParameterName = DAOCourseResource.GradeID;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
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
    }
}