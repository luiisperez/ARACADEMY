using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.model.offer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.offer
{
    public class DeleteOfferCommand : Command
    {
        private Offer offer;
        private Offer response;

        public DeleteOfferCommand(Offer offer)
        {
            this.offer = offer;
        }

        public Offer Offer { get => offer; set => offer = value; }

        public override void Execute()
        {
            DAOOffer daoOffer = new DAOOffer();
            offer.Code = daoOffer.DeleteOffer(offer);
        }
    }
}