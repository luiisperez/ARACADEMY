using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.model.offer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.offer
{
    public class ReadAllOfferCommand : Command
    {
        private List<Offer> offers;

        public List<Offer> Offers { get => offers; set => offers = value; }

        public override void Execute()
        {
            DAOOffer daoOffer = new DAOOffer();
            offers = daoOffer.ReadAllOffers();
        }
    }
}