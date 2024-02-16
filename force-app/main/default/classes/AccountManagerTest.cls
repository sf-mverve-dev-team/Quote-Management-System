@isTest
public class AccountManagerTest {
    
    @isTest
    static void testCreateAccount() {
        AccountManager.createAccount();
        
        List<Account> accounts = [SELECT Id, Name, Type FROM Account WHERE Name = 'CI CD account' AND Type = 'customer' LIMIT 1];
        System.assertNotEquals(0, accounts.size(), 'Account should have been created');
        Account acc = accounts[0];
        System.assertEquals('CI CD account', acc.Name, 'Account name is incorrect');
        System.assertEquals('customer', acc.Type, 'Account type is incorrect');
    }   
}
