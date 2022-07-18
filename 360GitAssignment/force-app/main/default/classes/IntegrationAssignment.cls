@RestResource(urlMapping='/MJ/')
global class IntegrationAssignment {
    
  // fetching contacts inside org  
    @httpGet
    global static Contact createcontact()
    {
       Contact con = new Contact();
        Map<String,String> conmap = RestContext.request.params;
        String conid = conmap.get('Id');
        con = [Select Id,Name,Email from Contact where Id = :conid];
        return con;
    }
    
    //creating account
    @httpPost
    global static Account createAccount(AccountWrap acc)
    {
        Account accnew = acc.accvalue;
        insert accnew;
        return accnew;
    }
    global class AccountWrap
    {
        Account Accvalue{get;set;}
    }
}