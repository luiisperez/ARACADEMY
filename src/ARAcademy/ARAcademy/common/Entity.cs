using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.common
{
    public abstract class Entity
    {
        private int code;

        public int Code { get => code; set => code = value; }
    }
}