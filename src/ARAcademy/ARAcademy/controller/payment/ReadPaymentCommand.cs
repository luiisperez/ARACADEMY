using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.model.payment;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.payment
{
    public class ReadPaymentCommand : Command
    {
        private AraPayment payment;

        public ReadPaymentCommand(AraPayment payment)
        {
            this.payment = payment;
        }

        public AraPayment Payment { get => payment; set => payment = value; }

        public override void Execute()
        {
            DAOPayment daoPayment = new DAOPayment();
            payment = daoPayment.ReadPayment(payment);
        }
    }
}