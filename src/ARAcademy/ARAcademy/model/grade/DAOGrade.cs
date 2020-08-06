using ARAcademy.common.entities;
using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ARAcademy.model.grade
{
    public class DAOGrade : DAO
    {
        private NpgsqlConnection conn;

        public List<Grade> ReadAllGrades()
        {
            conn = DAO.getConnection();
            List<Grade> grades = new List<Grade>();
            int gradeId;
            String gradeName;

            try
            {
                conn = DAO.getConnection();
                NpgsqlTransaction tran = conn.BeginTransaction();
                NpgsqlCommand command = new NpgsqlCommand(DAOGradeResource.ReadAllGradeSP, conn);
                command.CommandType = CommandType.StoredProcedure;

                NpgsqlDataReader dr = command.ExecuteReader();
                try
                {
                    while (dr.Read())
                    {
                        gradeId = dr.GetInt32(0);
                        gradeName = dr.GetString(1);
                        Grade grade = new Grade(gradeId, gradeName);
                        grades.Add(grade);
                    }
                    dr.Close();
                    tran.Commit();
                    return grades;
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