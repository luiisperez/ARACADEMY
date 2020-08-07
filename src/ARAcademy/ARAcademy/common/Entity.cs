using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.common
{
    public abstract class Entity
    {
        private int code;
        private char status;

        public int Code { get => code; set => code = value; }

        public char Status { get => status; set => status = value; }
    }
}