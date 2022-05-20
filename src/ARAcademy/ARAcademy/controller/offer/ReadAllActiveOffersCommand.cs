using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.model.offer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.offer
{
    public class ReadAllActiveOffersCommand : Command
    {
        private List<Offer> offers;
        private Offer offer;

        public ReadAllActiveOffersCommand()
        {
        }

        public List<Offer> Offers { get => offers; set => offers = value; }
        public Offer Offer { get => offer; set => offer = value; }

        public override void Execute()
        {
            DAOOffer daoOffer = new DAOOffer();
            offers = daoOffer.ReadAllActiveOffers();
        }
    }
}
