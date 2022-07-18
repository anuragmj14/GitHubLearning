trigger AccountUpdateAddress on Account (before insert) {

  for(Account acc : trigger.new)
  { 
    
        acc.ShippingStreet = acc.BillingStreet;
        acc.ShippingCity = acc.billingCity;
        acc.ShippingCountry = acc.ShippingCountry;
        acc.ShippingState = acc.ShippingState;
   }
  
}