using ARAcademy.common.entities;
using ARAcademy.model.payment;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.payment
{
    public class ReadAllPaymentByStudentCommand : Command
    {
        Student student;
        private List<AraPayment> payments;

        public ReadAllPaymentByStudentCommand(Student student)
        {
            this.student = student;
        }

        public List<AraPayment> Payments { get => payments; set => payments = value; }

        public override void Execute()
        {
            DAOPayment daoPayment = new DAOPayment();
            payments = daoPayment.ReadAllPaymentsByStudent(student);
        }
    }
}
