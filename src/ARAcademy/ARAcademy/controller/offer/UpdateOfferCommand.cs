using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.model.offer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.offer
{
    public class UpdateOfferCommand : Command
    {
        private Offer offer;
        // private String oldId;

        public UpdateOfferCommand(Offer offer)
        {
            this.offer = offer;
        }

        public Offer Offer { get => offer; set => offer = value; }
        // public string OldId { get => oldId; set => oldId = value; }

        public override void Execute()
        {
            DAOOffer daoOffer = new DAOOffer();
            offer.Code = daoOffer.UpdateOffer(offer);
        }
    }
}