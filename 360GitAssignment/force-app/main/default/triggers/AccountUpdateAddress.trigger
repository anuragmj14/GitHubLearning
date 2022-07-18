trigger AccountUpdateAddress on Account (After insert) {
List<Account> acclist = new List<Account>();
  for(Account acc : trigger.new)
  { 
    if(Acc.BillingAddress!= null)
    {
        acc.ShippingAddress = acc.BillingAddress;
        acclist.add(acc);
    }
  }
  if(acclist.size()>0)
  Database.update(acclist);
}