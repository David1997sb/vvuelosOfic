using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;

namespace Vuelos
{
    public class Encriptioner
    {
        public string encriptString( string cadena)
        {
            Byte[] encriptar = new UnicodeEncoding().GetBytes(cadena);
            string resultado = Convert.ToBase64String(encriptar);
            return resultado;
        }

        public string decryptString(string cadena)
        {
            Byte[] desencriptar = Convert.FromBase64String(cadena);
            string resultado = new UnicodeEncoding().GetString(desencriptar);
            return resultado;
        }

        internal object decryptString(DataTable dataTable)
        {
            string c = dataTable.ToString();
            Byte[] desencriptar = Convert.FromBase64String(c);
            string resultado = new UnicodeEncoding().GetString(desencriptar);
            return resultado;
        }
    }
}