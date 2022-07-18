trigger AccountUpdateAddress on Account (before insert) {
List<Account> acclist = new List<Account>();
  for(Account acc : trigger.new)
  { 
    
        acc.ShippingStreet = acc.BillingStreet;
        acc.ShippingCity = acc.billingCity;
        acc.ShippingCountry = acc.ShippingCountry;
        acc.ShippingState = acc.ShippingState;
      

        acclist.add(acc);
    
  }
  if(acclist.size()>0)
  Database.insert(acclist);
}