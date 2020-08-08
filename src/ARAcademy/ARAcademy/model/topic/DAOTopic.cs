using ARAcademy.common.entities;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ARAcademy.model.topic
{
    public class DAOTopic : DAO
    {
        private NpgsqlConnection conn;
        public int UpdateTopic(Topic topic)
        {
            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOTopicResource.UpdateTopicSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();
            NpgsqlParameter name = new NpgsqlParameter();
            NpgsqlParameter fktopic = new NpgsqlParameter();

            id.ParameterName = DAOTopicResource.Id;
            name.ParameterName = DAOTopicResource.Name;
            fktopic.ParameterName = DAOTopicResource.SectionID;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            name.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            fktopic.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

            id.Direction = ParameterDirection.Input;
            name.Direction = ParameterDirection.Input;
            fktopic.Direction = ParameterDirection.Input;

            id.Value = topic.Id;
            name.Value = topic.Name;
            fktopic.Value = topic.Section.Id;

            command.Parameters.Add(id);
            command.Parameters.Add(name);
            command.Parameters.Add(fktopic);

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

        public Topic ReadTopic(Topic topic)
        {
            conn = DAO.getConnection();
            Topic readTopic = new Topic();
            List<Topic> topics = new List<Topic>();
            int id;
            String name;
            int sectionId;
            String sectionName;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOTopicResource.ReadTopicSP, conn);
                NpgsqlParameter parameter = new NpgsqlParameter();
                parameter.ParameterName = DAOTopicResource.Id;
                parameter.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = topic.Id;
                command.Parameters.Add(parameter);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        name = dr.GetString(1);
                        sectionId = dr.GetInt32(2);
                        sectionName = dr.GetString(3);
                        Section section = new Section();
                        section.Id = sectionId;
                        section.Name = sectionName;
                        readTopic = new Topic(id, name, section);
                    }
                    dr.Close();
                    tran.Commit();
                    return readTopic;
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

        public List<Topic> ReadAllTopicsBySection(Section sectionRead)
        {
            conn = DAO.getConnection();
            Topic readTopic = new Topic();
            List<Topic> topics = new List<Topic>();
            int id;
            String name;
            int sectionId;
            String sectionName;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOTopicResource.ReadTopicBySectionSP, conn);
                NpgsqlParameter parameter = new NpgsqlParameter();
                parameter.ParameterName = DAOTopicResource.Id;
                parameter.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = sectionRead.Id;
                command.Parameters.Add(parameter);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        name = dr.GetString(1);
                        sectionId = dr.GetInt32(2);
                        sectionName = dr.GetString(3);
                        Section section = new Section();
                        section.Id = sectionId;
                        section.Name = sectionName;
                        readTopic = new Topic(id, name, section);
                        topics.Add(readTopic);
                    }
                    dr.Close();
                    tran.Commit();
                    return topics;
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

        public List<Topic> ReadAllTopics()
        {
            conn = DAO.getConnection();
            Topic readTopic = new Topic();
            List<Topic> topics = new List<Topic>();
            int id;
            String name;
            int sectionId;
            String sectionName;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOTopicResource.ReadAllTopicsSP, conn);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        name = dr.GetString(1);
                        sectionId = dr.GetInt32(2);
                        sectionName = dr.GetString(3);
                        Section section = new Section();
                        section.Id = sectionId;
                        section.Name = sectionName;
                        readTopic = new Topic(id, name, section);
                        topics.Add(readTopic);
                    }
                    dr.Close();
                    tran.Commit();
                    return topics;
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

        public int CreateTopic(Topic topic)
        {
            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOTopicResource.CreateTopicSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();
            NpgsqlParameter name = new NpgsqlParameter();
            NpgsqlParameter fktopic = new NpgsqlParameter();

            name.ParameterName = DAOTopicResource.Name;
            fktopic.ParameterName = DAOTopicResource.SectionID;

            name.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            fktopic.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

            name.Direction = ParameterDirection.Input;
            fktopic.Direction = ParameterDirection.Input;

            name.Value = topic.Name;
            fktopic.Value = topic.Section.Id;

            command.Parameters.Add(name);
            command.Parameters.Add(fktopic);

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

        public int DeleteTopic(Topic topic)
        {
            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOTopicResource.DeleteTopicSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();

            id.ParameterName = DAOTopicResource.Id;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

            id.Direction = ParameterDirection.Input;

            id.Value = topic.Id;

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