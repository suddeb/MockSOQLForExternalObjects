public with sharing class OrderController {
    public List<Order__x> fetchAllOrders (){
        
        List<Order__x> allOrders = [SELECT ExternalId, Id, customerID__c, 
                                    orderDate__c, orderID__c, shippedDate__c 
                                    FROM Order__x LIMIT 10];
        return allOrders;
    }
    
    public SObjectType getSObjectTypeForDynamicSoql(String name) {
        Schema.DescribeSObjectResult[] descResult = Schema.describeSobjects(new List<String>{name});
        SObjectType type = descResult.get(0).getSobjectType();
        return type;
    }
}