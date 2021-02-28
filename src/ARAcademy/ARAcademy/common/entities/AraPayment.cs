using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.common.entities
{
    public class AraPayment : Entity
    {
        private int id;
        private DateTime paymentDate;
        private DateTime expirationDate;
        private String paypalTransactionId;
        private Double amount;
        private int availableClasses;
        private Section section;
        private Student student;

        public AraPayment()
        {
        }

        public AraPayment(int id, DateTime paymentDate, DateTime expirationDate, string paypalTransactionId, double amount, int availableClasses, Section section, Student student)
        {
            this.id = id;
            this.paymentDate = paymentDate;
            this.expirationDate = expirationDate;
            this.paypalTransactionId = paypalTransactionId;
            this.amount = amount;
            this.availableClasses = availableClasses;
            this.section = section;
            this.student = student;
        }

        public AraPayment(DateTime paymentDate, DateTime expirationDate, string paypalTransactionId, double amount, int availableClasses, Section section, Student student)
        {
            this.paymentDate = paymentDate;
            this.expirationDate = expirationDate;
            this.paypalTransactionId = paypalTransactionId;
            this.amount = amount;
            this.availableClasses = availableClasses;
            this.section = section;
            this.student = student;
        }

        public int Id { get => id; set => id = value; }
        public DateTime PaymentDate { get => paymentDate; set => paymentDate = value; }
        public DateTime ExpirationDate { get => expirationDate; set => expirationDate = value; }
        public string PaypalTransactionId { get => paypalTransactionId; set => paypalTransactionId = value; }
        public double Amount { get => amount; set => amount = value; }
        public int AvailableClasses { get => availableClasses; set => availableClasses = value; }
        public Section Section { get => section; set => section = value; }
        public Student Student { get => student; set => student = value; }
    }
}