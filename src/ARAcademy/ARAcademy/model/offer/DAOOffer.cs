using ARAcademy.common.entities;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ARAcademy.model.offer
{
    public class DAOOffer : DAO
    {
        private NpgsqlConnection conn;

        public int UpdateOffer(Offer offer)
        {

            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOOfferResource.UpdateOfferSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();
            NpgsqlParameter name = new NpgsqlParameter();
            NpgsqlParameter minArticles = new NpgsqlParameter();
            NpgsqlParameter percentage = new NpgsqlParameter();
            NpgsqlParameter initDate = new NpgsqlParameter();
            NpgsqlParameter endDate = new NpgsqlParameter();
            NpgsqlParameter description = new NpgsqlParameter();

            id.ParameterName = DAOOfferResource.Id;
            name.ParameterName = DAOOfferResource.Name;
            minArticles.ParameterName = DAOOfferResource.MinArticles;
            percentage.ParameterName = DAOOfferResource.Percentage;
            initDate.ParameterName = DAOOfferResource.InitDate;
            endDate.ParameterName = DAOOfferResource.EndDate;
            description.ParameterName = DAOOfferResource.Description;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            name.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            minArticles.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            percentage.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            initDate.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
            endDate.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
            description.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            id.Direction = ParameterDirection.Input;
            name.Direction = ParameterDirection.Input;
            minArticles.Direction = ParameterDirection.Input;
            percentage.Direction = ParameterDirection.Input;
            initDate.Direction = ParameterDirection.Input;
            endDate.Direction = ParameterDirection.Input;
            description.Direction = ParameterDirection.Input;

            id.Value = offer.Id;
            name.Value = offer.Name;
            minArticles.Value = offer.MinArticles;
            percentage.Value = offer.Percentage;
            initDate.Value = offer.InitDate;
            endDate.Value = offer.EndDate;
            description.Value = offer.Description;

            command.Parameters.Add(id);
            command.Parameters.Add(name);
            command.Parameters.Add(minArticles);
            command.Parameters.Add(percentage);
            command.Parameters.Add(initDate);
            command.Parameters.Add(endDate);
            command.Parameters.Add(description);

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

        public List<Offer> ReadAllActiveOffers()
        {
            conn = DAO.getConnection();
            Offer readOffer = new Offer();
            List<Offer> offers = new List<Offer>();
            int id;
            String name;
            int minArticles;
            int percentage;
            DateTime initDate;
            DateTime endDate;
            String description;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOOfferResource.ReadActiveOfferSP, conn);

                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        name = dr.GetString(1);
                        minArticles = dr.GetInt32(2);
                        percentage = dr.GetInt32(3);
                        initDate = dr.GetDateTime(4);
                        endDate = dr.GetDateTime(5);
                        description = dr.GetString(6);
                        readOffer = new Offer(id, name, minArticles, percentage, initDate, endDate, description);
                        offers.Add(readOffer);
                    }
                    dr.Close();
                    tran.Commit();
                    return offers;
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

        public List<Offer> ReadAllOffers()
        {
            conn = DAO.getConnection();
            Offer readOffer = new Offer();
            List<Offer> offers = new List<Offer>();
            int id;
            String name;
            int minArticles;
            int percentage;
            DateTime initDate;
            DateTime endDate;
            String description;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOOfferResource.ReadOffersSP, conn);

                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {
                        id = dr.GetInt32(0);
                        name = dr.GetString(1);
                        minArticles = dr.GetInt32(2);
                        percentage = dr.GetInt32(3);
                        initDate = dr.GetDateTime(4);
                        endDate = dr.GetDateTime(5);
                        description = dr.GetString(6);
                        readOffer = new Offer(id, name, minArticles, percentage, initDate, endDate, description);
                        offers.Add(readOffer);
                    }
                    dr.Close();
                    tran.Commit();
                    return offers;
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

        public int CreateOffer(Offer offer)
        {

            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOOfferResource.CreateOfferSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter name = new NpgsqlParameter();
            NpgsqlParameter minArticles = new NpgsqlParameter();
            NpgsqlParameter percentage = new NpgsqlParameter();
            NpgsqlParameter initDate = new NpgsqlParameter();
            NpgsqlParameter endDate = new NpgsqlParameter();
            NpgsqlParameter description = new NpgsqlParameter();

            name.ParameterName = DAOOfferResource.Name;
            minArticles.ParameterName = DAOOfferResource.MinArticles;
            percentage.ParameterName = DAOOfferResource.Percentage;
            initDate.ParameterName = DAOOfferResource.InitDate;
            endDate.ParameterName = DAOOfferResource.EndDate;
            description.ParameterName = DAOOfferResource.Description;

            name.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            minArticles.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            percentage.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            initDate.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
            endDate.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Date;
            description.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;

            name.Direction = ParameterDirection.Input;
            minArticles.Direction = ParameterDirection.Input;
            percentage.Direction = ParameterDirection.Input;
            initDate.Direction = ParameterDirection.Input;
            endDate.Direction = ParameterDirection.Input;
            description.Direction = ParameterDirection.Input;

            name.Value = offer.Name;
            minArticles.Value = offer.MinArticles;
            percentage.Value = offer.Percentage;
            initDate.Value = offer.InitDate;
            endDate.Value = offer.EndDate;
            description.Value = offer.Description;

            command.Parameters.Add(name);
            command.Parameters.Add(minArticles);
            command.Parameters.Add(percentage);
            command.Parameters.Add(initDate);
            command.Parameters.Add(endDate);
            command.Parameters.Add(description);

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

        public int DeleteOffer(Offer offer)
        {

            conn = DAO.getConnection();
            NpgsqlCommand command = new NpgsqlCommand(DAOOfferResource.DeleteOfferSP, conn);
            NpgsqlTransaction transaction = conn.BeginTransaction();

            NpgsqlParameter id = new NpgsqlParameter();

            id.ParameterName = DAOOfferResource.Id;

            id.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;

            id.Direction = ParameterDirection.Input;

            id.Value = offer.Id;

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

        public Offer ReadOffer(Offer offer)
        {
            conn = DAO.getConnection();
            Offer readOffer = new Offer();
            int id;
            String name;
            int minArticles;
            int percentage;
            DateTime initDate;
            DateTime endDate;
            String description;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOOfferResource.ReadOfferByIdSP, conn);
                NpgsqlParameter parameter = new NpgsqlParameter();
                parameter.ParameterName = DAOOfferResource.Id;
                parameter.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
                parameter.Direction = ParameterDirection.Input;
                parameter.Value = offer.Id;
                command.Parameters.Add(parameter);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {
                        id = offer.Id;
                        name = dr.GetString(0);
                        minArticles = dr.GetInt32(1);
                        percentage = dr.GetInt32(2);
                        initDate = dr.GetDateTime(3);
                        endDate = dr.GetDateTime(4);
                        description = dr.GetString(5);
                        readOffer = new Offer(id, name, minArticles, percentage, initDate, endDate, description);
                    }
                    dr.Close();
                    tran.Commit();
                    return readOffer;
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
