using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.common.entities
{
    public class Document : Entity
    {
        private int id;
        private String file;
        private int visibility;
        private String type;
        private Topic topic;
        private Byte[] bytea;

        public Document()
        {
        }

        public Document(int id, string file, int visibility, string type, Topic topic, byte[] bytea)
        {
            this.id = id;
            this.file = file;
            this.visibility = visibility;
            this.type = type;
            this.topic = topic;
            this.bytea = bytea;
        }

        public string File { get => file; set => file = value; }
        public int Visibility { get => visibility; set => visibility = value; }
        public string Type { get => type; set => type = value; }
        public Topic Topic { get => topic; set => topic = value; }
        public byte[] Bytea { get => bytea; set => bytea = value; }
        public int Id { get => id; set => id = value; }
    }
}