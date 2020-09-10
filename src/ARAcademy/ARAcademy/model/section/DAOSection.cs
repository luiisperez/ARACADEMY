using ARAcademy.common.entities;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ARAcademy.model.section
{
    public class DAOSection : DAO
    {
        private NpgsqlConnection conn;

        public int CreateSection(Section section)
        {
            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOSectionResource.CreateSectionSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter name = new NpgsqlParameter();
            NpgsqlParameter amount = new NpgsqlParameter();
            NpgsqlParameter description = new NpgsqlParameter();
            NpgsqlParameter fkcourse = new NpgsqlParameter();

            name.ParameterName = DAOSectionResource.Name;
            amount.ParameterName = DAOSectionResource.Amount;
            description.ParameterName = DAOSectionResource.Description;
            fkcourse.ParameterName = DAOSectionResource.CourseID;

            name.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            amount.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Double;
            description.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            fkcourse.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            name.Direction = ParameterDirection.Input;
            amount.Direction = ParameterDirection.Input;
            description.Direction = ParameterDirection.Input;
            fkcourse.Direction = ParameterDirection.Input;

            name.Value = section.Name;
            amount.Value = section.Amount;
            description.Value = section.Description;
            fkcourse.Value = section.Course.Id;

            command.Parameters.Add(name);
            command.Parameters.Add(amount);
            command.Parameters.Add(description);
            command.Parameters.Add(fkcourse);

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

        public Section ReadSection(Section section)
        {
            conn = DAO.getConnection();
            Section readSection = new Section();
            List<Section> sections = new List<Section>();
            int id;
            String name;
            Double amount;
            String descripcion;
            String courseId;
            String courseName;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOSectionResource.ReadSectionSP, conn);
                NpgsqlParameter parameter = new NpgsqlParameter();
                parameter.ParameterName = DAOSectionResource.Id;
                parameter.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = section.Id;
                command.Parameters.Add(parameter);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        name = dr.GetString(1);
                        amount = dr.GetDouble(2);
                        descripcion = dr.GetString(3);
                        courseId = dr.GetString(4);
                        courseName = dr.GetString(5);
                        Course course = new Course();
                        course.Id = courseId;
                        course.Name = courseName;
                        readSection = new Section(id, name, amount, descripcion, course);
                    }
                    dr.Close();
                    tran.Commit();
                    return readSection;
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

        public int UpdateSection(Section section)
        {
            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOSectionResource.UpdateSectionSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();
            NpgsqlParameter name = new NpgsqlParameter();
            NpgsqlParameter amount = new NpgsqlParameter();
            NpgsqlParameter description = new NpgsqlParameter();
            NpgsqlParameter fkcourse = new NpgsqlParameter();

            id.ParameterName = DAOSectionResource.Id;
            name.ParameterName = DAOSectionResource.Name;
            amount.ParameterName = DAOSectionResource.Amount;
            description.ParameterName = DAOSectionResource.Description;
            fkcourse.ParameterName = DAOSectionResource.CourseID;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            name.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            amount.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Double;
            description.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            fkcourse.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            id.Direction = ParameterDirection.Input;
            name.Direction = ParameterDirection.Input;
            amount.Direction = ParameterDirection.Input;
            description.Direction = ParameterDirection.Input;
            fkcourse.Direction = ParameterDirection.Input;

            id.Value = section.Id;
            name.Value = section.Name;
            amount.Value = section.Amount;
            description.Value = section.Description;
            fkcourse.Value = section.Course.Id;

            command.Parameters.Add(id);
            command.Parameters.Add(name);
            command.Parameters.Add(amount);
            command.Parameters.Add(description);
            command.Parameters.Add(fkcourse);

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

        public List<Section> ReadAllSections()
        {
            conn = DAO.getConnection();
            Section readSection = new Section();
            List<Section> sections = new List<Section>();
            int id;
            String name;
            Double amount;
            String descripcion;
            String courseId;
            String courseName;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOSectionResource.ReadAllSectionsSP, conn);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        name = dr.GetString(1);
                        amount = dr.GetDouble(2);
                        descripcion = dr.GetString(3);
                        courseId = dr.GetString(4);
                        courseName = dr.GetString(5);
                        Course course = new Course();
                        course.Id = courseId;
                        course.Name = courseName;
                        readSection = new Section(id, name, amount, descripcion, course);
                        sections.Add(readSection);
                    }
                    dr.Close();
                    tran.Commit();
                    return sections;
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

        public List<Section> ReadAllSectionsByCourse(Course courseRead)
        {
            conn = DAO.getConnection();
            Section readSection = new Section();
            List<Section> sections = new List<Section>();
            int id;
            String name;
            Double amount;
            String descripcion;
            String courseId;
            String courseName;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOSectionResource.ReadSectionByCourseSP, conn);
                NpgsqlParameter parameter = new NpgsqlParameter();
                parameter.ParameterName = DAOSectionResource.Id;
                parameter.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = courseRead.Id;
                command.Parameters.Add(parameter);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        name = dr.GetString(1);
                        amount = dr.GetDouble(2);
                        descripcion = dr.GetString(3);
                        courseId = dr.GetString(4);
                        courseName = dr.GetString(5);
                        Course course = new Course();
                        course.Id = courseId;
                        course.Name = courseName;
                        readSection = new Section(id, name, amount, descripcion, course);
                        sections.Add(readSection);
                    }
                    dr.Close();
                    tran.Commit();
                    return sections;
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

        public int DeleteSection(Section section)
        {
            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOSectionResource.DeleteSectionSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();

            id.ParameterName = DAOSectionResource.Id;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

            id.Direction = ParameterDirection.Input;

            id.Value = section.Id;

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
    }
}