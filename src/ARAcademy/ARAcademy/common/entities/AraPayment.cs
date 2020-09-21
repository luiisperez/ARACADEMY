using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.common.entities
{
    public class AraPayment : Entity
    {
        private int id;
        private DateTime payDate;
        private DateTime expirationDate;
        private String paypalTransactionId;
        private Double amount;
        private Section section;
        private Student student;

        public AraPayment()
        {
        }

        public AraPayment(int id, DateTime payDate, DateTime expirationDate, string paypalTransactionId, double amount, Section section, Student student)
        {
            this.id = id;
            this.payDate = payDate;
            this.expirationDate = expirationDate;
            this.paypalTransactionId = paypalTransactionId;
            this.amount = amount;
            this.section = section;
            this.student = student;
        }

        public AraPayment(DateTime payDate, DateTime expirationDate, string paypalTransactionId, double amount, Section section, Student student)
        {
            this.payDate = payDate;
            this.expirationDate = expirationDate;
            this.paypalTransactionId = paypalTransactionId;
            this.amount = amount;
            this.section = section;
            this.student = student;
        }

        public int Id { get => id; set => id = value; }
        public DateTime PayDate { get => payDate; set => payDate = value; }
        public DateTime ExpirationDate { get => expirationDate; set => expirationDate = value; }
        public string PaypalTransactionId { get => paypalTransactionId; set => paypalTransactionId = value; }
        public double Amount { get => amount; set => amount = value; }
        public Section Section { get => section; set => section = value; }
        public Student Student { get => student; set => student = value; }
    }
}