@RestResource(urlMapping='/MJ/Access/')
global class IntegrationAssignment3 {
    
    @httpGet
    global static String getAccessToken()
    {
       List<Account> acclist = new List<Account>();
        Map<String,String> accmap = RestContext.request.params;
        String accName = accmap.get('Name');
        acclist = [Select Id,Name from Account where Name like :accname+'%'];
        return 'Name';
    }
}