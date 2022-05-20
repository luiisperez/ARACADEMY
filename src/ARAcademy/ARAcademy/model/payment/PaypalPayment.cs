using ARAcademy.common.entities;
using PayPal.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.model.payment
{
    public class PaypalPayment
    {
        public static Payment CreatePayment(APIContext apiContext, String redirectUrl, List<Section> cartList, Double discount)
        {
            var listItems = new ItemList() { items = new List<Item>() };

            Double subtotal = 0;
            foreach (Section item in cartList)
            {
                item.Amount = Math.Round(item.Amount - (item.Amount * discount), 2);
                listItems.items.Add(new Item() 
                {
                    name = item.Name,
                    currency = "EUR",
                    price = item.Amount.ToString(),
                    quantity = "1",
                    sku = item.Id.ToString()
                });   
                subtotal += item.Amount;
            }

            //subtotal = subtotal - (subtotal * discount);
            subtotal = Math.Round(subtotal, 2);

            var payer = new Payer() { payment_method = "paypal" };

            //Crear Enlances de redireccion
            var redirUrls = new RedirectUrls()
            {
                cancel_url = redirectUrl,
                return_url = redirectUrl
            };

            Double tax = subtotal * 0.21;
            //Crear detalles de la transaccion
            var details = new Details()
            {
                tax = tax.ToString().Replace(",", "."),
                shipping = "0",
                subtotal = subtotal.ToString().Replace(",", ".")
            };

            Double total = tax + subtotal;
            //Crear monto
            var amount = new Amount()
            {
                currency = "EUR",
                total = (total).ToString().Replace(",", "."),
                details = details
            };

            //Crear transaccion
            var transactionList = new List<Transaction>();
            transactionList.Add(new Transaction()
            {
                description = "Pago a ARAcademy",
                invoice_number = Convert.ToString(new Random().Next(100000)),
                amount = amount,
                item_list = listItems
            });

            var payment = new Payment()
            {
                intent = "sale",
                payer = payer,
                transactions = transactionList,
                redirect_urls = redirUrls
            };

            return payment.Create(apiContext);
        }

        public static Payment ExecutePayment(APIContext apiContext, String payerId, String paymentId)
        {
            var paymentExecution = new PaymentExecution()
            {
                payer_id = payerId
            };
            Payment payment = new Payment() { id = paymentId }; 
            return payment.Execute(apiContext, paymentExecution);
        }
    }
}