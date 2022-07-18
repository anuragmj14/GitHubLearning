@isTest
public class TestAccountrigger{

@isTest
 public static void test1()
 {
   Account acc = new Account(Name='Anurag',BillingStreet='HN 360',BillingCity='Pune',BillingState='Maharashtra',BillingCountry='India');
   insert acc;
   System.assertequals(acc.Billingaddress,acc.ShippingAddress);
 }
    
}