using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.model.payment;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.payment
{
    public class DeletePaymentCommand : Command
    {
        private AraPayment payment;
        private AraPayment response;

        public DeletePaymentCommand(AraPayment payment)
        {
            this.payment = payment;
        }

        public AraPayment Payment { get => payment; set => payment = value; }

        public override void Execute()
        {
            DAOPayment daoPayment = new DAOPayment();
            payment.Code = daoPayment.DeletePayment(payment);
        }
    }
}