@isTest
public class AccountOperationsTest {

    @isTest
    static void testCreateAccount() {
        Account acc = AccountOperations.createAccount('Test Account', '1234567890', 'Technology');
        System.assertEquals('Test Account', acc.Name);
        // Add more assertions as needed
    }

    @isTest
    static void testUpdateAccount() {
        Account acc = new Account(Name = 'Test Account', Phone = '1234567890', Industry = 'Technology');
        insert acc;

        AccountOperations.updateAccount(acc.Id, '9876543210', 'Manufacturing');
        Account updatedAcc = [SELECT Phone, Industry FROM Account WHERE Id = :acc.Id];
        System.assertEquals('9876543210', updatedAcc.Phone);
        System.assertEquals('Manufacturing', updatedAcc.Industry);
        // Add more assertions as needed
    }

    @isTest
    static void testDeleteAccount() {
        Account acc = new Account(Name = 'Test Account', Phone = '1234567890', Industry = 'Technology');
        insert acc;

        AccountOperations.deleteAccount(acc.Id);
        Account deletedAcc = [SELECT Id FROM Account WHERE Id = :acc.Id];
        System.assertEquals(null, deletedAcc);
        // Add more assertions as needed
    }
}
