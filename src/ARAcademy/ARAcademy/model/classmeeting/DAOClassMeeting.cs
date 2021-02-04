using ARAcademy.common;
using ARAcademy.common.entities;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ARAcademy.model.classmeeting
{
    public class DAOClassMeeting : DAO
    {
        private NpgsqlConnection conn;
        public int CreateClassMeeting(ClassMeeting classMeeting)
        {

            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOClassMeetingResource.CreateClassSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();
            NpgsqlParameter uuId = new NpgsqlParameter();
            NpgsqlParameter hostId = new NpgsqlParameter();
            NpgsqlParameter hostEmail = new NpgsqlParameter();
            NpgsqlParameter topic = new NpgsqlParameter();
            NpgsqlParameter type = new NpgsqlParameter();
            NpgsqlParameter status = new NpgsqlParameter();
            NpgsqlParameter startTime = new NpgsqlParameter();
            NpgsqlParameter duration = new NpgsqlParameter();
            NpgsqlParameter timezone = new NpgsqlParameter();
            NpgsqlParameter agenda = new NpgsqlParameter();
            NpgsqlParameter createdAt = new NpgsqlParameter();
            NpgsqlParameter startUrl = new NpgsqlParameter();
            NpgsqlParameter joinUrl = new NpgsqlParameter();
            NpgsqlParameter password = new NpgsqlParameter();
            NpgsqlParameter h323Password = new NpgsqlParameter();
            NpgsqlParameter pstnPassword = new NpgsqlParameter();
            NpgsqlParameter encryptedPassword = new NpgsqlParameter();
            NpgsqlParameter comment = new NpgsqlParameter();
            NpgsqlParameter section = new NpgsqlParameter();
            NpgsqlParameter teacher = new NpgsqlParameter();

            id.ParameterName = DAOClassMeetingResource.Id;
            uuId.ParameterName = DAOClassMeetingResource.uuId;
            hostId.ParameterName = DAOClassMeetingResource.IdHost;
            hostEmail.ParameterName = DAOClassMeetingResource.EmailHost;
            topic.ParameterName = DAOClassMeetingResource.Topic;
            type.ParameterName = DAOClassMeetingResource.Type;
            status.ParameterName = DAOClassMeetingResource.Status;
            startTime.ParameterName = DAOClassMeetingResource.StartTime;
            duration.ParameterName = DAOClassMeetingResource.Duration;
            timezone.ParameterName = DAOClassMeetingResource.Timezone;
            agenda.ParameterName = DAOClassMeetingResource.Agenda;
            createdAt.ParameterName = DAOClassMeetingResource.CreationDate;
            startUrl.ParameterName = DAOClassMeetingResource.StartLink;
            joinUrl.ParameterName = DAOClassMeetingResource.ReunionLink;
            password.ParameterName = DAOClassMeetingResource.Password;
            h323Password.ParameterName = DAOClassMeetingResource.PasswordH323;
            pstnPassword.ParameterName = DAOClassMeetingResource.PasswordPSTN;
            encryptedPassword.ParameterName = DAOClassMeetingResource.PasswordEncrypted;
            comment.ParameterName = DAOClassMeetingResource.Comment;
            section.ParameterName = DAOClassMeetingResource.Section;
            teacher.ParameterName = DAOClassMeetingResource.Teacher;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            uuId.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            hostId.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            hostEmail.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            topic.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            type.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            status.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            startTime.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
            duration.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            timezone.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            agenda.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            createdAt.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
            startUrl.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            joinUrl.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            password.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            h323Password.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            pstnPassword.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            encryptedPassword.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            comment.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            section.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            teacher.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            id.Direction = ParameterDirection.Input;
            uuId.Direction = ParameterDirection.Input;
            hostId.Direction = ParameterDirection.Input;
            hostEmail.Direction = ParameterDirection.Input;
            topic.Direction = ParameterDirection.Input;
            type.Direction = ParameterDirection.Input;
            status.Direction = ParameterDirection.Input;
            startTime.Direction = ParameterDirection.Input;
            duration.Direction = ParameterDirection.Input;
            timezone.Direction = ParameterDirection.Input;
            agenda.Direction = ParameterDirection.Input;
            createdAt.Direction = ParameterDirection.Input;
            startUrl.Direction = ParameterDirection.Input;
            joinUrl.Direction = ParameterDirection.Input;
            password.Direction = ParameterDirection.Input;
            h323Password.Direction = ParameterDirection.Input;
            pstnPassword.Direction = ParameterDirection.Input;
            encryptedPassword.Direction = ParameterDirection.Input;
            comment.Direction = ParameterDirection.Input;
            section.Direction = ParameterDirection.Input;
            teacher.Direction = ParameterDirection.Input;

            id.Value = classMeeting.Id;
            uuId.Value = classMeeting.UuId;
            hostId.Value = classMeeting.HostId;
            hostEmail.Value = classMeeting.HostEmail;
            topic.Value = classMeeting.Topic;
            type.Value = classMeeting.Type;
            status.Value = classMeeting.Status;
            startTime.Value = classMeeting.StartTime;
            duration.Value = classMeeting.Duration;
            timezone.Value = classMeeting.Timezone;
            agenda.Value = classMeeting.Agenda;
            createdAt.Value = classMeeting.CreatedAt;
            startUrl.Value = classMeeting.StartUrl;
            joinUrl.Value = classMeeting.JoinUrl;
            password.Value = classMeeting.Password;
            h323Password.Value = classMeeting.H323Password;
            pstnPassword.Value = classMeeting.PstnPassword;
            encryptedPassword.Value = classMeeting.EncryptedPassword;
            comment.Value = classMeeting.Comment;
            section.Value = classMeeting.Section.Id;
            teacher.Value = classMeeting.Teacher.Email;

            command.Parameters.Add(id);
            command.Parameters.Add(uuId);
            command.Parameters.Add(hostId);
            command.Parameters.Add(hostEmail);
            command.Parameters.Add(topic);
            command.Parameters.Add(type);
            command.Parameters.Add(status);
            command.Parameters.Add(startTime);
            command.Parameters.Add(duration);
            command.Parameters.Add(timezone);
            command.Parameters.Add(agenda);
            command.Parameters.Add(createdAt);
            command.Parameters.Add(startUrl);
            command.Parameters.Add(joinUrl);
            command.Parameters.Add(password);
            command.Parameters.Add(h323Password);
            command.Parameters.Add(pstnPassword);
            command.Parameters.Add(encryptedPassword);
            command.Parameters.Add(comment);
            command.Parameters.Add(section); 
            command.Parameters.Add(teacher);

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

        public int DeleteClassMeeting(ClassMeeting classMeeting)
        {
            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOClassMeetingResource.DeleteClassSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();

            id.ParameterName = DAOClassMeetingResource.Id;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            id.Direction = ParameterDirection.Input;

            id.Value = classMeeting.Id;

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

        public List<ClassMeeting> ReadAllClassMeetings()
        {
            conn = DAO.getConnection();
            ClassMeeting meeting = new ClassMeeting();
            List<ClassMeeting> meetings = new List<ClassMeeting>();

            String id;
            String uuId;
            String hostId;
            String hostEmail;
            String topic;
            int type;
            String status;
            DateTime startTime;
            int duration;
            String timezone;
            String agenda;
            DateTime createdAt;
            String startUrl;
            String joinUrl;
            String password;
            String h323Password;
            String pstnPassword;
            String encryptedPassword;
            String comment;
            Section section;
            Teacher teacher;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOClassMeetingResource.ReadAllClassesSP, conn);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetString(0);
                        uuId = dr.GetString(1);
                        hostId = dr.GetString(2);
                        hostEmail = dr.GetString(3);
                        topic = dr.GetString(4);
                        type = dr.GetInt32(5);
                        status = dr.GetString(6);
                        startTime = dr.GetDateTime(7);
                        duration = dr.GetInt32(8);
                        timezone = dr.GetString(9);
                        agenda = dr.GetString(10);
                        createdAt = dr.GetDateTime(11);
                        startUrl = dr.GetString(12);
                        joinUrl = dr.GetString(13);
                        password = dr.GetString(14);
                        h323Password = dr.GetString(15);
                        pstnPassword = dr.GetString(16);
                        encryptedPassword = dr.GetString(17);
                        comment = dr.GetString(18);
                        int sectionId = dr.GetInt32(19);
                        String sectionName = dr.GetString(20);
                        String teacherId = dr.GetString(21);
                        String teacherName = dr.GetString(22);
                        String teacherLastname = dr.GetString(23);
                        section = new Section();
                        teacher = new Teacher();
                        section.Id = sectionId;
                        section.Name = sectionName;
                        teacher.Email = teacherId;
                        teacher.Name = teacherName;
                        teacher.LastName = teacherLastname;
                        meeting = new ClassMeeting(id, uuId, hostId, hostEmail, topic, type, status, startTime, duration, timezone, agenda, createdAt, startUrl, joinUrl, password, h323Password,  pstnPassword, encryptedPassword, comment, section, teacher);
                        meetings.Add(meeting);
                    }
                    dr.Close();
                    tran.Commit();
                    return meetings;
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
            throw new NotImplementedException();
        }

        public ClassMeeting ReadClassMeeting(ClassMeeting classMeeting)
        {
            conn = DAO.getConnection();
            ClassMeeting meeting = new ClassMeeting();

            String id;
            String uuId;
            String hostId;
            String hostEmail;
            String topic;
            int type;
            String status;
            DateTime startTime;
            int duration;
            String timezone;
            String agenda;
            DateTime createdAt;
            String startUrl;
            String joinUrl;
            String password;
            String h323Password;
            String pstnPassword;
            String encryptedPassword;
            String comment;
            Section section;
            Teacher teacher;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOClassMeetingResource.ReadClassSP, conn);
                NpgsqlParameter parameter = new NpgsqlParameter();
                parameter.ParameterName = DAOClassMeetingResource.Id;
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
                        id = dr.GetString(0);
                        uuId = dr.GetString(1);
                        hostId = dr.GetString(2);
                        hostEmail = dr.GetString(3);
                        topic = dr.GetString(4);
                        type = dr.GetInt32(5);
                        status = dr.GetString(6);
                        startTime = dr.GetDateTime(7);
                        duration = dr.GetInt32(8);
                        timezone = dr.GetString(9);
                        agenda = dr.GetString(10);
                        createdAt = dr.GetDateTime(11);
                        startUrl = dr.GetString(12);
                        joinUrl = dr.GetString(13);
                        password = dr.GetString(14);
                        h323Password = dr.GetString(15);
                        pstnPassword = dr.GetString(16);
                        encryptedPassword = dr.GetString(17);
                        comment = dr.GetString(18);
                        int sectionId = dr.GetInt32(19);
                        String sectionName = dr.GetString(20);
                        String teacherId = dr.GetString(21);
                        String teacherName = dr.GetString(22);
                        String teacherLastname = dr.GetString(23);
                        section = new Section();
                        teacher = new Teacher();
                        section.Id = sectionId;
                        section.Name = sectionName;
                        teacher.Email = teacherId;
                        teacher.Name = teacherName;
                        teacher.LastName = teacherLastname;
                        meeting = new ClassMeeting(id, uuId, hostId, hostEmail, topic, type, status, startTime, duration, timezone, agenda, createdAt, startUrl, joinUrl, password, h323Password, pstnPassword, encryptedPassword, comment, section, teacher);
                    }
                    dr.Close();
                    tran.Commit();
                    return meeting;
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
            throw new NotImplementedException();
        }

        public int UpdateClassMeetingComment(ClassMeeting classMeeting)
        {

            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOClassMeetingResource.UpdateClassSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();
            NpgsqlParameter comment = new NpgsqlParameter();

            id.ParameterName = DAOClassMeetingResource.Id;
            comment.ParameterName = DAOClassMeetingResource.Comment;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            comment.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            id.Direction = ParameterDirection.Input;
            comment.Direction = ParameterDirection.Input;

            id.Value = classMeeting.Id;
            comment.Value = classMeeting.Comment;

            command.Parameters.Add(id);
            command.Parameters.Add(comment);

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

        public int UpdateClassMeeting(ClassMeeting classMeeting)
        {

            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOClassMeetingResource.UpdateClassSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();
            NpgsqlParameter uuId = new NpgsqlParameter();
            NpgsqlParameter hostId = new NpgsqlParameter();
            NpgsqlParameter hostEmail = new NpgsqlParameter();
            NpgsqlParameter topic = new NpgsqlParameter();
            NpgsqlParameter type = new NpgsqlParameter();
            NpgsqlParameter status = new NpgsqlParameter();
            NpgsqlParameter startTime = new NpgsqlParameter();
            NpgsqlParameter duration = new NpgsqlParameter();
            NpgsqlParameter timezone = new NpgsqlParameter();
            NpgsqlParameter agenda = new NpgsqlParameter();
            NpgsqlParameter createdAt = new NpgsqlParameter();
            NpgsqlParameter startUrl = new NpgsqlParameter();
            NpgsqlParameter joinUrl = new NpgsqlParameter();
            NpgsqlParameter password = new NpgsqlParameter();
            NpgsqlParameter h323Password = new NpgsqlParameter();
            NpgsqlParameter pstnPassword = new NpgsqlParameter();
            NpgsqlParameter encryptedPassword = new NpgsqlParameter();
            NpgsqlParameter comment = new NpgsqlParameter();
            NpgsqlParameter section = new NpgsqlParameter();
            NpgsqlParameter teacher = new NpgsqlParameter();

            id.ParameterName = DAOClassMeetingResource.Id;
            uuId.ParameterName = DAOClassMeetingResource.uuId;
            hostId.ParameterName = DAOClassMeetingResource.IdHost;
            hostEmail.ParameterName = DAOClassMeetingResource.EmailHost;
            topic.ParameterName = DAOClassMeetingResource.Topic;
            type.ParameterName = DAOClassMeetingResource.Type;
            status.ParameterName = DAOClassMeetingResource.Status;
            startTime.ParameterName = DAOClassMeetingResource.StartTime;
            duration.ParameterName = DAOClassMeetingResource.Duration;
            timezone.ParameterName = DAOClassMeetingResource.Timezone;
            agenda.ParameterName = DAOClassMeetingResource.Agenda;
            createdAt.ParameterName = DAOClassMeetingResource.CreationDate;
            startUrl.ParameterName = DAOClassMeetingResource.StartLink;
            joinUrl.ParameterName = DAOClassMeetingResource.ReunionLink;
            password.ParameterName = DAOClassMeetingResource.Password;
            h323Password.ParameterName = DAOClassMeetingResource.PasswordH323;
            pstnPassword.ParameterName = DAOClassMeetingResource.PasswordPSTN;
            encryptedPassword.ParameterName = DAOClassMeetingResource.PasswordEncrypted;
            comment.ParameterName = DAOClassMeetingResource.Comment;
            section.ParameterName = DAOClassMeetingResource.Section;
            teacher.ParameterName = DAOClassMeetingResource.Teacher;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            uuId.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            hostId.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            hostEmail.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            topic.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            type.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            status.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            startTime.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
            duration.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            timezone.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            agenda.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            createdAt.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
            startUrl.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            joinUrl.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            password.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            h323Password.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            pstnPassword.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            encryptedPassword.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            comment.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            section.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            teacher.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            id.Direction = ParameterDirection.Input;
            uuId.Direction = ParameterDirection.Input;
            hostId.Direction = ParameterDirection.Input;
            hostEmail.Direction = ParameterDirection.Input;
            topic.Direction = ParameterDirection.Input;
            type.Direction = ParameterDirection.Input;
            status.Direction = ParameterDirection.Input;
            startTime.Direction = ParameterDirection.Input;
            duration.Direction = ParameterDirection.Input;
            timezone.Direction = ParameterDirection.Input;
            agenda.Direction = ParameterDirection.Input;
            createdAt.Direction = ParameterDirection.Input;
            startUrl.Direction = ParameterDirection.Input;
            joinUrl.Direction = ParameterDirection.Input;
            password.Direction = ParameterDirection.Input;
            h323Password.Direction = ParameterDirection.Input;
            pstnPassword.Direction = ParameterDirection.Input;
            encryptedPassword.Direction = ParameterDirection.Input;
            comment.Direction = ParameterDirection.Input;
            section.Direction = ParameterDirection.Input;
            teacher.Direction = ParameterDirection.Input;

            id.Value = classMeeting.Id;
            uuId.Value = classMeeting.UuId;
            hostId.Value = classMeeting.HostId;
            hostEmail.Value = classMeeting.HostEmail;
            topic.Value = classMeeting.Topic;
            type.Value = classMeeting.Type;
            status.Value = classMeeting.Status;
            startTime.Value = classMeeting.StartTime;
            duration.Value = classMeeting.Duration;
            timezone.Value = classMeeting.Timezone;
            agenda.Value = classMeeting.Agenda;
            createdAt.Value = classMeeting.CreatedAt;
            startUrl.Value = classMeeting.StartUrl;
            joinUrl.Value = classMeeting.JoinUrl;
            password.Value = classMeeting.Password;
            h323Password.Value = classMeeting.H323Password;
            pstnPassword.Value = classMeeting.PstnPassword;
            encryptedPassword.Value = classMeeting.EncryptedPassword;
            comment.Value = classMeeting.Comment;
            section.Value = classMeeting.Section.Id;
            teacher.Value = classMeeting.Teacher.Email;

            command.Parameters.Add(id);
            command.Parameters.Add(uuId);
            command.Parameters.Add(hostId);
            command.Parameters.Add(hostEmail);
            command.Parameters.Add(topic);
            command.Parameters.Add(type);
            command.Parameters.Add(status);
            command.Parameters.Add(startTime);
            command.Parameters.Add(duration);
            command.Parameters.Add(timezone);
            command.Parameters.Add(agenda);
            command.Parameters.Add(createdAt);
            command.Parameters.Add(startUrl);
            command.Parameters.Add(joinUrl);
            command.Parameters.Add(password);
            command.Parameters.Add(h323Password);
            command.Parameters.Add(pstnPassword);
            command.Parameters.Add(encryptedPassword);
            command.Parameters.Add(comment);
            command.Parameters.Add(section);
            command.Parameters.Add(teacher);

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
        public int UpdateClassMeetingTeacher(ClassMeeting classMeeting)
        {

            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOClassMeetingResource.UpdateClassTeacherSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();
            NpgsqlParameter teacher = new NpgsqlParameter();

            id.ParameterName = DAOClassMeetingResource.Id;
            teacher.ParameterName = DAOClassMeetingResource.Teacher;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            teacher.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            id.Direction = ParameterDirection.Input;
            teacher.Direction = ParameterDirection.Input;

            id.Value = classMeeting.Id;
            teacher.Value = classMeeting.Teacher.Email;

            command.Parameters.Add(id);
            command.Parameters.Add(teacher);

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