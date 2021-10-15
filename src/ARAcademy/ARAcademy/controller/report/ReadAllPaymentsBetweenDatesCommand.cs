using ARAcademy.common.entities;
using ARAcademy.model.report;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.report
{
    public class ReadAllPaymentsBetweenDatesCommand : Command
    {
        DateTime initDate;
        DateTime endDate;
        private List<AraPayment> payments;

        public ReadAllPaymentsBetweenDatesCommand(DateTime initDate, DateTime endDate)
        {
            this.initDate = initDate;
            this.endDate = endDate;
        }

        public List<AraPayment> Payments { get => payments; set => payments = value; }

        public override void Execute()
        {
            DAOReport daoReport = new DAOReport();
            payments = daoReport.ReadAllPaymentsBetweenDates(initDate, endDate);
        }

        public int CountTotalPayments()
        {
            return payments.Count();
        }
    }
}
