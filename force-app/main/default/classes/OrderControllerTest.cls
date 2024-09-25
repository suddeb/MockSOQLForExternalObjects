@isTest
public class OrderControllerTest {
    @isTest
    static void testNumberOfOrders(){
        OrderController orderContoller = new OrderController();
        SObjectType type = orderContoller.getSObjectTypeForDynamicSoql('Order__x');

        Test.createSoqlStub(type, new OrderProvider());

        Test.startTest();

        Assert.areEqual(1, orderContoller.fetchAllOrders().size());
        Test.stopTest();
    }
}