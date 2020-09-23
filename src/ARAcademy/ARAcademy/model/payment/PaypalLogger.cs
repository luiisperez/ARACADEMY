using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace ARAcademy.model.payment
{
    public class PaypalLogger
    {
        public static String LogDirectoryPath = Environment.CurrentDirectory;

        public static void Log(String messages)
        {
            try
            {
                StreamWriter strw = new StreamWriter(LogDirectoryPath + "\\PaypalError.log", true);
                strw.WriteLine("", DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss"), messages);
            }
            catch (Exception ex)
            {
                String y = ex.Message;
            }
        }
    }
}