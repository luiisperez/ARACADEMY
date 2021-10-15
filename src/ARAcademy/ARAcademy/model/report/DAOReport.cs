using ARAcademy.common;
using ARAcademy.common.entities;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ARAcademy.model.report
{
    public class DAOReport : DAO
    {
        private NpgsqlConnection conn;
        public List<ClassMeeting> ReadClassByTeacherBetweenDates(DateTime initDate, DateTime endDate, Teacher teacher)
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

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOReportResource.ReadClassByTeacherPeriodSP, conn);
                NpgsqlParameter parameter = new NpgsqlParameter();


                parameter.ParameterName = DAOReportResource.IniDate;
                parameter.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = initDate;
                command.Parameters.Add(parameter);


                parameter.ParameterName = DAOReportResource.EndDate;
                parameter.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = endDate;
                command.Parameters.Add(parameter);


                parameter.ParameterName = DAOReportResource.Id;
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

        public List<Student> ReadAllStudentBySectionBetweenDates(DateTime initDate, DateTime endDate, Section section)
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
                NpgsqlCommand command = new NpgsqlCommand(DAOReportResource.ReadStudentsBySectionPeriodSP, conn);
                NpgsqlParameter parameter = new NpgsqlParameter();

                parameter.ParameterName = DAOReportResource.IniDate;
                parameter.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = initDate;
                command.Parameters.Add(parameter);


                parameter.ParameterName = DAOReportResource.EndDate;
                parameter.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = endDate;
                command.Parameters.Add(parameter);


                parameter.ParameterName = DAOReportResource.Id;
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

        public List<AraPayment> ReadAllPaymentsBetweenDates(DateTime initDate, DateTime endDate)
        {
            conn = DAO.getConnection();
            AraPayment readPayment = new AraPayment();
            List<AraPayment> payments = new List<AraPayment>();
            int id;
            DateTime paymentDate;
            DateTime expirationDate;
            String paypalTransactionId;
            Double amount;
            Section section;
            Student student;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOReportResource.PaymentListSP, conn);
                NpgsqlParameter parameter = new NpgsqlParameter();

                parameter.ParameterName = DAOReportResource.IniDate;
                parameter.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = initDate;
                command.Parameters.Add(parameter);


                parameter.ParameterName = DAOReportResource.EndDate;
                parameter.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = endDate;
                command.Parameters.Add(parameter);

                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        paymentDate = dr.GetDateTime(1);
                        expirationDate = dr.GetDateTime(2);
                        paypalTransactionId = dr.GetString(3);
                        amount = dr.GetDouble(4);
                        int remaingClasses = dr.GetInt32(5);
                        int sectionId = dr.GetInt32(6);
                        String studentId = dr.GetString(7);
                        section = new Section();
                        section.Id = sectionId;
                        student = new Student();
                        student.Email = studentId;
                        readPayment = new AraPayment(id, paymentDate, expirationDate, paypalTransactionId, amount, remaingClasses, section, student);
                        payments.Add(readPayment);
                    }
                    dr.Close();
                    tran.Commit();
                    return payments;
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

        public int CalculateTeacherSalaryBetweenDates(DateTime initDate, DateTime endDate, Teacher teacher)
        {
            conn = DAO.getConnection();
            ClassMeeting meeting = new ClassMeeting();
            int salary = -1;

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

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOReportResource.ReadClassByTeacherPeriodSP, conn);
                NpgsqlParameter parameter = new NpgsqlParameter();


                parameter.ParameterName = DAOReportResource.IniDate;
                parameter.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = initDate;
                command.Parameters.Add(parameter);


                parameter.ParameterName = DAOReportResource.EndDate;
                parameter.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = endDate;
                command.Parameters.Add(parameter);


                parameter.ParameterName = DAOReportResource.Id;
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
                        salary = dr.GetInt32(0);
                    }
                    dr.Close();
                    tran.Commit();
                    return salary;
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
    }
}