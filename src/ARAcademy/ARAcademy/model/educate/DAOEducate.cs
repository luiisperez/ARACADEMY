using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using ARAcademy.common;
using ARAcademy.common.entities;
using Npgsql;

namespace ARAcademy.model.educate
{
    public class DAOEducate : DAO
    {
        private NpgsqlConnection conn;
        public int AssignSectionTeacher(Educate educate)
        {
            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOEducateResource.CreateEducateSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter fksection = new NpgsqlParameter();
            NpgsqlParameter fkteacher = new NpgsqlParameter();

            fksection.ParameterName = DAOEducateResource.SectionID;
            fkteacher.ParameterName = DAOEducateResource.TeacherID;

            fksection.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            fkteacher.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            fksection.Direction = ParameterDirection.Input;
            fkteacher.Direction = ParameterDirection.Input;

            fksection.Value = educate.Section.Id;
            fkteacher.Value = educate.Teacher.Email;

            command.Parameters.Add(fksection);
            command.Parameters.Add(fkteacher);

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

        public List<Educate> GetSectionByTeacher(Educate educate)
        {
            conn = DAO.getConnection();
            Educate readEducate = new Educate();
            List<Educate> sections = new List<Educate>();
            int id;
            String teacherEmail;
            String teacherName;
            String teacherLastname;
            int sectionId;
            String sectionName;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOEducateResource.ReadEducateByTeacherEmailSp, conn);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        teacherEmail = dr.GetString(1);
                        teacherName = dr.GetString(2);
                        teacherLastname = dr.GetString(3);
                        sectionId = dr.GetInt32(3);
                        sectionName = dr.GetString(4);
                        Section section = new Section();
                        section.Id = sectionId;
                        section.Name = sectionName;
                        Teacher teacher = new Teacher(teacherEmail, teacherName);
                        readEducate = new Educate(id, section, teacher);
                        sections.Add(readEducate);
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

        public List<Educate> GetTeacherBySection(Educate educate)
        {
            conn = DAO.getConnection();
            Educate readEducate = new Educate();
            List<Educate> teachers = new List<Educate>();
            String teacherEmail;
            String teacherName;
            String teacherLastname;

            try 
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOEducateResource.ReadTeacherBySectionIdSP, conn);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();

                try
                {
                    while (dr.Read())
                    {
                        teacherEmail = dr.GetString(0);
                        teacherName = dr.GetString(1);
                        teacherLastname = dr.GetString(2);
                        Teacher teacher = new Teacher();
                        teacher.Email = teacherEmail;
                        teacher.Name = teacherName;
                        teacher.LastName = teacherLastname;
                        readEducate = new Educate();
                        readEducate.Teacher = teacher;
                        teachers.Add(readEducate);
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

        public int RemoveSectionTeacher(Educate educate)
        {
            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOEducateResource.DeleteEducateSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();

            id.ParameterName = DAOEducateResource.Id;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

            id.Direction = ParameterDirection.Input;

            id.Value = educate.Id;

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