public with sharing class OrderProvider extends SoqlStubProvider{
    
    public override List<SObject> handleSoqlQuery(SObjectType sObjectType, String rawQuery, Map<String, Object> binds) {
        List<SObject> objs = new List<SObject>();
        Map<String, Object> singleMap = new Map<String, Object>{
            'Id' => 'x07xxghyu8dfhju'
        };

        Order__x singleOrder = (Order__x)Test.createStubQueryRow(sObjectType, singleMap);

        objs.add(singleOrder);
        return objs;

    }
}