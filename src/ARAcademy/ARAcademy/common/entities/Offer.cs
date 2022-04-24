using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ARAcademy.common.entities
{
    public class Offer : Entity
    {
        private int id;
        private String name;
        private int minArticles;
        private int percentage;
        private DateTime initDate;
        private DateTime endDate;
        private String description;

        public Offer()
        {
        }

        public Offer(int id, string name, int minArticles, int percentage, DateTime initDate, DateTime endDate, String description)
        {
            this.id = id;
            this.name = name;
            this.minArticles = minArticles;
            this.percentage = percentage;
            this.initDate = initDate;
            this.endDate = endDate;
            this.description = description;
        }

        public Offer(string name, int minArticles, int percentage, DateTime initDate, DateTime endDate, String description)
        {
            this.name = name;
            this.minArticles = minArticles;
            this.percentage = percentage;
            this.initDate = initDate;
            this.endDate = endDate;
            this.description = description;
        }

        public int Id { get => id; set => id = value; }
        public string Name { get => name; set => name = value; }
        public int MinArticles { get => minArticles; set => minArticles = value; }
        public int Percentage { get => percentage; set => percentage = value; }
        public DateTime InitDate { get => initDate; set => initDate = value; }
        public DateTime EndDate { get => endDate; set => endDate = value; }
        public string Description { get => description; set => description = value; }
    }
}