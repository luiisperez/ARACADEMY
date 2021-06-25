using ARAcademy.common.entities;
using ARAcademy.model.payment;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.payment
{
    public class UpdateRemainingClassesCommand : Command
    {
        private AraPayment payment;
        // private String oldId;

        public UpdateRemainingClassesCommand(AraPayment payment)
        {
            this.payment = payment;
        }

        public AraPayment Payment { get => payment; set => payment = value; }
        // public string OldId { get => oldId; set => oldId = value; }

        public override void Execute()
        {
            DAOPayment daoPayment = new DAOPayment();
            payment.Code = daoPayment.UpdateClasses(payment);
        }
    }
}