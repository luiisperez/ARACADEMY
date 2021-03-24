using ARAcademy.common.entities;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ARAcademy.model.payment
{
    public class DAOPayment : DAO
    {
        private NpgsqlConnection conn;
        public int CreatePayment(AraPayment payment)
        {

            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOPaymentResource.CreatePaymentSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter paymentDate = new NpgsqlParameter();
            NpgsqlParameter expirationDate = new NpgsqlParameter();
            NpgsqlParameter paypalTransactionId = new NpgsqlParameter();
            NpgsqlParameter amount = new NpgsqlParameter();
            NpgsqlParameter remainingClasses = new NpgsqlParameter();
            NpgsqlParameter section = new NpgsqlParameter();
            NpgsqlParameter student = new NpgsqlParameter();

            paymentDate.ParameterName = DAOPaymentResource.PaymentDate;
            expirationDate.ParameterName = DAOPaymentResource.ExpirationDate;
            paypalTransactionId.ParameterName = DAOPaymentResource.PaypalTransactionID;
            amount.ParameterName = DAOPaymentResource.Amount;
            remainingClasses.ParameterName = DAOPaymentResource.RemainingClasses;
            section.ParameterName = DAOPaymentResource.SectionID;
            student.ParameterName = DAOPaymentResource.StudentID;

            paymentDate.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
            expirationDate.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
            paypalTransactionId.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            amount.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Numeric;
            remainingClasses.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            section.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            student.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            paymentDate.Direction = ParameterDirection.Input;
            expirationDate.Direction = ParameterDirection.Input;
            paypalTransactionId.Direction = ParameterDirection.Input;
            amount.Direction = ParameterDirection.Input;
            remainingClasses.Direction = ParameterDirection.Input;
            section.Direction = ParameterDirection.Input;
            student.Direction = ParameterDirection.Input;

            paymentDate.Value = payment.PaymentDate;
            expirationDate.Value = payment.ExpirationDate;
            paypalTransactionId.Value = payment.PaypalTransactionId;
            amount.Value = payment.Amount;
            remainingClasses.Value = payment.RemainingClasses;
            section.Value = payment.Section.Id;
            student.Value = payment.Student.Email;

            command.Parameters.Add(paymentDate);
            command.Parameters.Add(expirationDate);
            command.Parameters.Add(paypalTransactionId);
            command.Parameters.Add(amount);
            command.Parameters.Add(remainingClasses);
            command.Parameters.Add(section);
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

        public AraPayment ReadPayment(AraPayment payment)
        {
            conn = DAO.getConnection();
            AraPayment readPayment = new AraPayment();
            int id;
            DateTime paymentDate;
            DateTime expirationDate;
            String paypalTransactionId;
            Double amount;
            int remainingClasses;
            Section section;
            Student student;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOPaymentResource.ReadPaymentSP, conn);
                NpgsqlParameter parameter = new NpgsqlParameter();
                parameter.ParameterName = DAOPaymentResource.Id;
                parameter.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = payment.Id;
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
                        remainingClasses = dr.GetInt32(5);
                        int sectionId = dr.GetInt32(6);
                        String studentId = dr.GetString(7);
                        section = new Section();
                        student = new Student();
                        section.Id = sectionId;
                        student.Email = studentId;
                        readPayment = new AraPayment(id, paymentDate, expirationDate, paypalTransactionId, amount, remainingClasses, section, student);
                    }
                    dr.Close();
                    tran.Commit();
                    return readPayment;
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

        public List<AraPayment> ReadAllPayments()
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
                NpgsqlCommand command = new NpgsqlCommand(DAOPaymentResource.ReadAllPaymentsSP, conn);
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
                        int remainingClasses = dr.GetInt32(5);
                        int sectionId = dr.GetInt32(6);
                        String studentId = dr.GetString(7);
                        section = new Section();
                        student = new Student();
                        section.Id = sectionId;
                        student.Email = studentId;
                        readPayment = new AraPayment(id, paymentDate,expirationDate, paypalTransactionId, amount, remainingClasses, section, student);
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

        public List<AraPayment> ReadAllPaymentsBySection(Section section)
        {
            conn = DAO.getConnection();
            AraPayment readPayment = new AraPayment();
            List<AraPayment> payments = new List<AraPayment>();
            int id;
            DateTime paymentDate;
            DateTime expirationDate;
            String paypalTransactionId;
            Double amount;
            Student student;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOPaymentResource.ReadPaymentsBySectionSP, conn);
                NpgsqlParameter parameter = new NpgsqlParameter();
                parameter.ParameterName = DAOPaymentResource.SectionID;
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
                        paymentDate = dr.GetDateTime(1);
                        expirationDate = dr.GetDateTime(2);
                        paypalTransactionId = dr.GetString(3);
                        amount = dr.GetDouble(4);
                        int remaingClasses = dr.GetInt32(5);
                        int sectionId = dr.GetInt32(6);
                        String studentId = dr.GetString(7);
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

        public int DeletePayment(AraPayment payment)
        {
            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOPaymentResource.DeletePaymentSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();

            id.ParameterName = DAOPaymentResource.Id;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            id.Direction = ParameterDirection.Input;

            id.Value = payment.Id;

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

        public int UpdatePayment(AraPayment payment)
        {

            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOPaymentResource.UpdatePaymentSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();
            NpgsqlParameter paymentDate = new NpgsqlParameter();
            NpgsqlParameter expirationDate = new NpgsqlParameter();
            NpgsqlParameter paypalTransactionId = new NpgsqlParameter();
            NpgsqlParameter amount = new NpgsqlParameter();
            NpgsqlParameter section = new NpgsqlParameter();
            NpgsqlParameter student = new NpgsqlParameter();

            id.ParameterName = DAOPaymentResource.Id;
            paymentDate.ParameterName = DAOPaymentResource.PaymentDate;
            expirationDate.ParameterName = DAOPaymentResource.ExpirationDate;
            paypalTransactionId.ParameterName = DAOPaymentResource.PaypalTransactionID;
            amount.ParameterName = DAOPaymentResource.Amount;
            section.ParameterName = DAOPaymentResource.SectionID;
            student.ParameterName = DAOPaymentResource.StudentID;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            paymentDate.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
            expirationDate.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
            paypalTransactionId.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            amount.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Numeric;
            section.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            student.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            id.Direction = ParameterDirection.Input;
            paymentDate.Direction = ParameterDirection.Input;
            expirationDate.Direction = ParameterDirection.Input;
            paypalTransactionId.Direction = ParameterDirection.Input;
            amount.Direction = ParameterDirection.Input;
            section.Direction = ParameterDirection.Input;
            student.Direction = ParameterDirection.Input;

            id.Value = payment.Id;
            paymentDate.Value = payment.PaymentDate;
            expirationDate.Value = payment.ExpirationDate;
            paypalTransactionId.Value = payment.PaypalTransactionId;
            amount.Value = payment.Amount;
            section.Value = payment.Section.Id;
            student.Value = payment.Student.Email;

            command.Parameters.Add(id);
            command.Parameters.Add(paymentDate);
            command.Parameters.Add(expirationDate);
            command.Parameters.Add(paypalTransactionId);
            command.Parameters.Add(amount);
            command.Parameters.Add(section);
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


        public int UpdateClasses(AraPayment payment)
        {

            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOPaymentResource.UpdateClassesSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();
            NpgsqlParameter remainingClasses = new NpgsqlParameter();

            id.ParameterName = DAOPaymentResource.Id;
            remainingClasses.ParameterName = DAOPaymentResource.RemainingClasses;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            remainingClasses.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

            id.Direction = ParameterDirection.Input;
            remainingClasses.Direction = ParameterDirection.Input;

            id.Value = payment.Id;
            remainingClasses.Value = Int32.Parse(DAOPaymentResource.AvailableClasses);

            command.Parameters.Add(id);
            command.Parameters.Add(remainingClasses);

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


        public List<AraPayment> ReadAllPaymentsByStudent(Student student)
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

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOPaymentResource.ReadPaymentByStudentSP, conn);
                NpgsqlParameter parameter = new NpgsqlParameter();
                parameter.ParameterName = DAOPaymentResource.StudentID;
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

    }
}