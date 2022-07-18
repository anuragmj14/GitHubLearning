@RestResource(urlMapping='/MJ/BULK/')
global class IntegrationAssignment2 {
    
    // List of accounts for desired name
    
    @httpGet
    global static List<Account> getCases()
    {
       List<Account> acclist = new List<Account>();
        Map<String,String> accmap = RestContext.request.params;
        String accName = accmap.get('Name');
        acclist = [Select Id,Name from Account where Name like :accname+'%'];
        return acclist;
    }
}