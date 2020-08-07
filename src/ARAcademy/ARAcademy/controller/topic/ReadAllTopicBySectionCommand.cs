using ARAcademy.common.entities;
using ARAcademy.model.topic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.topic
{
    public class ReadAllTopicByTopicCommand : Command
    {
        Section section;
        private List<Topic> topics;

        public ReadAllTopicByTopicCommand(Section section)
        {
            this.section = section;
        }

        public List<Topic> Topics { get => topics; set => topics = value; }

        public override void Execute()
        {
            DAOTopic daoSection = new DAOTopic();
            topics = daoSection.ReadAllTopicsBySection(section);
        }
    }
}