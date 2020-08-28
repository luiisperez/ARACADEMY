using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.model.topic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.topic
{
    public class ReadTopicCommand : Command
    {
        private Topic topic;

        public ReadTopicCommand(Topic topic)
        {
            this.topic = topic;
        }

        public Topic Topic { get => topic; set => topic = value; }

        public override void Execute()
        {
            DAOTopic daoTopic = new DAOTopic();
            topic = daoTopic.ReadTopic(topic);
        }
    }
}