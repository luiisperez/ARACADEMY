using ARAcademy.common.entities;
using ARAcademy.controller.section;
using Npgsql;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AceptarBtn_Click(object sender, EventArgs e)
        {
            Byte[] byteFile = FileManager.FileBytes;
            String byteString = Encoding.ASCII.GetString(byteFile); 
            byte[] bytes = Encoding.ASCII.GetBytes(byteString);
            String nameFile = FileManager.PostedFile.FileName;
            String nameFile2 = FileManager.PostedFile.FileName;


            var cs = String.Format("Server={0};Port={1};" +
                    "User Id={2};Password={3};Database={4};",
                    "localhost", "5432", "aracademy",
                    "ArA.062020", "ARAcademyDB");

            var con = new NpgsqlConnection(cs);
            con.Open();

            var cmd = new NpgsqlCommand();
            cmd.Connection = con;


            cmd.CommandText = 
                "INSERT INTO document(filename, visibility, filetype, fk_topic, bytes) " +
                "VALUES(@_filename, @_visibility, @_filetype, @_fk_topic, @_bytes)";
            NpgsqlParameter file = new NpgsqlParameter();
            NpgsqlParameter visibility = new NpgsqlParameter();
            NpgsqlParameter type = new NpgsqlParameter();
            NpgsqlParameter topic = new NpgsqlParameter();
            NpgsqlParameter bytea = new NpgsqlParameter();


            file.ParameterName = "_filename";
            visibility.ParameterName = "_visibility";
            type.ParameterName = "_filetype";
            topic.ParameterName = "_fk_topic";
            bytea.ParameterName = "_bytes";

            file.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            visibility.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            type.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            topic.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            bytea.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Bytea;

            file.Value = nameFile;
            visibility.Value = 1;
            type.Value = FileManager.PostedFile.ContentType;
            topic.Value = 1;
            bytea.Value = byteFile;

            cmd.Parameters.Add(file);
            cmd.Parameters.Add(visibility);
            cmd.Parameters.Add(type);
            cmd.Parameters.Add(topic);
            cmd.Parameters.Add(bytea);

            cmd.ExecuteNonQuery();
            con.Close();

            cmd = new NpgsqlCommand();
            cmd.Connection = con;


            cmd.CommandText =
                "SELECT * FROM DOCUMENT";

            NpgsqlDataReader dr = cmd.ExecuteReader();

            try
            {
                while (dr.Read())
                {
                    Byte[] bytesBD = (byte[])dr.GetValue(5);
                    String nameFiles = dr.GetString(1);
                    File.WriteAllBytes("C:\\Users\\luis.perez\\Desktop\\de base de datos " + nameFiles, bytesBD);
                }
                con.Close();
            }catch(Exception ex) { }
        }
    }
}