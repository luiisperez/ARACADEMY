using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.model.topic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.topic
{
    public class ReadAllTopicCommand : Command
    {
        private List<Topic> topics;

        public List<Topic> Topics { get => topics; set => topics = value; }

        public override void Execute()
        {
            DAOTopic daoTopic = new DAOTopic();
            topics = daoTopic.ReadAllTopics();
        }
    }
}