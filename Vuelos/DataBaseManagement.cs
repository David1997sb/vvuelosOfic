using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;

namespace Vuelos
{
    public class DataBaseManagement
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataSet ds = new DataSet();
        Common common = new Common();
        public void addBitaData(SqlConnection conn,string registryCode, string description, string type, string registryDetail)
        {
            
            conn.Open();
            //Ejecuta el stored procedure
            cmd = new SqlCommand("sp_insert_bitaData", conn);
            //Se indica que la variable de tipo command va ser de tipo stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            //Se agregan los valores de los parametros del stored procedure
            cmd.Parameters.Add("@fecha", SqlDbType.VarChar).Value = common.GetDate();
            cmd.Parameters.Add("@codigo_registro", SqlDbType.VarChar).Value = registryCode;
            cmd.Parameters.Add("@tipo", SqlDbType.VarChar).Value = type;
            cmd.Parameters.Add("@descripcion", SqlDbType.VarChar).Value = description;
            cmd.Parameters.Add("@usuario", SqlDbType.VarChar).Value = "dsalas";//HttpContext.Current.Session["usserLogged"];
            cmd.Parameters.Add("@detalle", SqlDbType.VarChar).Value = registryDetail;
            //Se ejecuta el query
            int rowsAffected = cmd.ExecuteNonQuery();
        }

        public void  addErrorData(SqlConnection conn, string errorMsj)
        {
            try
            {
                conn.Open();
                //Ejecuta el stored procedure
                cmd = new SqlCommand("sp_insert_error", conn);
                //Se indica que la variable de tipo command va ser de tipo stored procedure
                cmd.CommandType = CommandType.StoredProcedure;
                //Se agregan los valores de los parametros del stored procedure
                cmd.Parameters.Add("@usuario", SqlDbType.VarChar).Value = HttpContext.Current.Session["usserLogged"]; ;
                cmd.Parameters.Add("@date", SqlDbType.VarChar).Value = common.GetDate();
                cmd.Parameters.Add("@msj_error", SqlDbType.VarChar).Value = errorMsj;
                //Se ejecuta el query
                int rowsAffected = cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch(Exception pe)
            {
            }
            
        }
        
        public string getColumValue1(SqlCommand cmd, SqlConnection conn)
        {

            conn.Open();
            string colValue1 = "";
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                // read the values from the data reader, e.g.
                // adapt to match your actual query! You didn't mentioned *what columns*
                // are being returned, and what data type they are
                colValue1 = rdr.GetString(0);

            }
            conn.Close();
            return colValue1;
        }

        public List<Int32> getCardsByUser(SqlCommand cmd, SqlConnection conn)
        {
            conn.ConnectionString = WebConfigurationManager.AppSettings["connectionStringPago"];

            List<Int32> cardsByUser = new List<int>();
            conn.Open();
            int colValue1;
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                // read the values from the data reader, e.g.
                // adapt to match your actual query! You didn't mentioned *what columns*
                // are being returned, and what data type they are
                colValue1 = rdr.GetInt32(0);
                cardsByUser.Add(colValue1);
            }
            conn.Close();
            return cardsByUser;
        }
        public List<Int32> getAllCardsByUser(SqlCommand cmd, SqlConnection conn)
        {
            conn.ConnectionString = WebConfigurationManager.AppSettings["connectionStringPago"];

            List<Int32> cardsByUser = new List<int>();
            conn.Open();
            int colValue1;
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                // read the values from the data reader, e.g.
                // adapt to match your actual query! You didn't mentioned *what columns*
                // are being returned, and what data type they are
                colValue1 = rdr.GetInt32(0);
                cardsByUser.Add(colValue1);
            }
            conn.Close();
            return cardsByUser;
        }

        public string getColumValue2(SqlCommand cmd, SqlConnection conn)
        {
            conn.Open();
            string colValue2 = "";
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                // read the values from the data reader, e.g.
                // adapt to match your actual query! You didn't mentioned *what columns*
                // are being returned, and what data type they are
                colValue2 = rdr.GetString(1);
            }
            conn.Close();
            return colValue2;
        }

        public int getMinMaxConsecutive(SqlConnection conn, string consecutive)
        {
            conn.Open();
            cmd = new SqlCommand("sp_get_min_max_consecutive", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@consecutive", SqlDbType.VarChar).Value = consecutive;
            conn.Close();
            //agregar todos los consecutivos que no tengan valor si no fallan
            int rangoIni = Convert.ToInt32(getColumValue1(cmd, conn));
            int rangoFin = Convert.ToInt32(getColumValue2(cmd, conn));
            int value = common.getRandConsecutiveValue(rangoIni, rangoFin);
            conn.Close();
            return value;
        }
    }
}