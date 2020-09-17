using ARAcademy.common.entities;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ARAcademy.model.document
{
    public class DAODocument : DAO
    {
        private NpgsqlConnection conn;
        public int UpdateDocument(Document document)
        {
            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAODocumentResource.UpdateDocumentSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();
            NpgsqlParameter name = new NpgsqlParameter();
            NpgsqlParameter visibility = new NpgsqlParameter();
            NpgsqlParameter filetype = new NpgsqlParameter();
            NpgsqlParameter fktopic = new NpgsqlParameter();
            NpgsqlParameter binaryData = new NpgsqlParameter();

            id.ParameterName = DAODocumentResource.Id;
            name.ParameterName = DAODocumentResource.Name;
            visibility.ParameterName = DAODocumentResource.Visibility;
            filetype.ParameterName = DAODocumentResource.Filetype;
            fktopic.ParameterName = DAODocumentResource.Topic;
            binaryData.ParameterName = DAODocumentResource.BinaryContent;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            name.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            visibility.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            filetype.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            fktopic.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            binaryData.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Bytea;

            id.Direction = ParameterDirection.Input;
            name.Direction = ParameterDirection.Input;
            visibility.Direction = ParameterDirection.Input;
            filetype.Direction = ParameterDirection.Input;
            fktopic.Direction = ParameterDirection.Input;
            binaryData.Direction = ParameterDirection.Input;

            id.Value = document.Id;
            name.Value = document.File;
            visibility.Value = document.Visibility;
            filetype.Value = document.Type;
            fktopic.Value = document.Topic.Id;
            binaryData.Value = document.Bytea;

            command.Parameters.Add(id);
            command.Parameters.Add(name);
            command.Parameters.Add(visibility);
            command.Parameters.Add(filetype);
            command.Parameters.Add(fktopic);
            command.Parameters.Add(binaryData);

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

        public Document ReadDocument(Document document)
        {
            conn = DAO.getConnection();
            Document readDocument = new Document();
            List<Document> documents = new List<Document>();
            int id;
            String name;
            int visibility;
            String filetype;
            int topicId;
            String topicName;
            Byte[] bytes;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAODocumentResource.ReadDocumentSP, conn);
                NpgsqlParameter ide = new NpgsqlParameter();

                ide.ParameterName = DAODocumentResource.Id;

                ide.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

                ide.Direction = ParameterDirection.Input;

                ide.Value = document.Id;

                command.Parameters.Add(ide);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        name = dr.GetString(1);
                        visibility = dr.GetInt32(2);
                        filetype = dr.GetString(3);
                        topicId = dr.GetInt32(4);
                        topicName = dr.GetString(5);
                        bytes = (byte[])dr.GetValue(6);
                        Topic topic = new Topic();
                        topic.Id = topicId;
                        topic.Name = topicName;
                        readDocument = new Document(id, name, visibility, filetype, topic, bytes);
                    }
                    dr.Close();
                    tran.Commit();
                    return readDocument;
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

        public List<Document> ReadAllDocuments()
        {
            conn = DAO.getConnection();
            Document readDocument = new Document();
            List<Document> documents = new List<Document>();
            int id;
            String name;
            int visibility;
            String filetype;
            int topicId;
            String topicName;
            Byte[] bytes;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAODocumentResource.ReadAllDocumentSP, conn);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        name = dr.GetString(1);
                        visibility = dr.GetInt32(2);
                        filetype = dr.GetString(3);
                        topicId = dr.GetInt32(4);
                        topicName = dr.GetString(5);
                        bytes = (byte[])dr.GetValue(6);
                        Topic topic = new Topic();
                        topic.Id = topicId;
                        topic.Name = topicName;
                        readDocument = new Document(id, name, visibility, filetype, topic, bytes);
                        documents.Add(readDocument);
                    }
                    dr.Close();
                    tran.Commit();
                    return documents;
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

        public List<Document> ReadAllDocumentsBySection(Section section)
        {
            conn = DAO.getConnection();
            Document readDocument = new Document();
            List<Document> documents = new List<Document>();
            int id;
            String name;
            int visibility;
            String filetype;
            int topicId;
            String topicName;
            Byte[] bytes;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAODocumentResource.ReadDocumentBySectionSP, conn);
                NpgsqlParameter ide = new NpgsqlParameter();

                ide.ParameterName = DAODocumentResource.Id;

                ide.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

                ide.Direction = ParameterDirection.Input;

                ide.Value = section.Id;

                command.Parameters.Add(ide);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        name = dr.GetString(1);
                        visibility = dr.GetInt32(2);
                        filetype = dr.GetString(3);
                        bytes = (byte[])dr.GetValue(4);
                        Topic topic = new Topic();
                        topic.Id = 0;
                        topic.Name = "";
                        readDocument = new Document(id, name, visibility, filetype, topic, bytes);
                        documents.Add(readDocument);
                    }
                    dr.Close();
                    tran.Commit();
                    return documents;
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

        public int CreateDocument(Document document)
        {
            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAODocumentResource.CreateDocumentSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter name = new NpgsqlParameter();
            NpgsqlParameter visibility = new NpgsqlParameter();
            NpgsqlParameter filetype = new NpgsqlParameter();
            NpgsqlParameter fktopic = new NpgsqlParameter();
            NpgsqlParameter binaryData = new NpgsqlParameter();

            name.ParameterName = DAODocumentResource.Name;
            visibility.ParameterName = DAODocumentResource.Visibility;
            filetype.ParameterName = DAODocumentResource.Filetype;
            fktopic.ParameterName = DAODocumentResource.Topic;
            binaryData.ParameterName = DAODocumentResource.BinaryContent;

            name.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            visibility.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            filetype.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            fktopic.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            binaryData.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Bytea;

            name.Direction = ParameterDirection.Input;
            visibility.Direction = ParameterDirection.Input;
            filetype.Direction = ParameterDirection.Input;
            fktopic.Direction = ParameterDirection.Input;
            binaryData.Direction = ParameterDirection.Input;

            name.Value = document.File;
            visibility.Value = document.Visibility;
            filetype.Value = document.Type;
            fktopic.Value = document.Topic.Id;
            binaryData.Value = document.Bytea;

            command.Parameters.Add(name);
            command.Parameters.Add(visibility);
            command.Parameters.Add(filetype);
            command.Parameters.Add(fktopic);
            command.Parameters.Add(binaryData);

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

        public int DeleteDocument(Document document)
        {
            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAODocumentResource.DeleteDocumentSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();

            id.ParameterName = DAODocumentResource.Id;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

            id.Direction = ParameterDirection.Input;

            id.Value = document.Id;

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