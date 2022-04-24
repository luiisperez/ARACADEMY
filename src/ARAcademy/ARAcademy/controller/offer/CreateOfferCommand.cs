using ARAcademy.common.entities;
using ARAcademy.model.offer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.offer
{
    public class CreateOfferCommand : Command
    {
        private Offer offer;

        public CreateOfferCommand(Offer offer)
        {
            this.offer = offer;
        }

        public Offer Offer { get => offer; set => offer = value; }

        public override void Execute()
        {
            DAOOffer daoOffer = new DAOOffer();
            offer.Code = daoOffer.CreateOffer(offer);
        }
    }
}