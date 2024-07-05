@isTest
private class AccountServiceTest {

    @isTest
    static void testCreateAccount() {
        // Test creating an account
        Account acc = AccountService.createAccount('Test Account', '1234567890', 'Technology');
        System.assertNotEquals(null, acc.Id);
    }

    @isTest
    static void testUpdateAccount() {
        // Create a test account
        Account acc = new Account(Name = 'Test Account', Industry = 'Technology');
        insert acc;
        
        // Test updating the account
        AccountService.updateAccount(acc.Id, '9876543210', 'Manufacturing');
        Account updatedAcc = [SELECT Id, Phone, Industry FROM Account WHERE Id = :acc.Id];
        System.assertEquals('9876543210', updatedAcc.Phone);
        System.assertEquals('Manufacturing', updatedAcc.Industry);
    }

    @isTest
    static void testDeleteAccount() {
        // Create a test account
        Account acc = new Account(Name = 'Test Account', Industry = 'Technology');
        insert acc;
        
        // Test deleting the account
        AccountService.deleteAccount(acc.Id);
        List<Account> deletedAccounts = [SELECT Id FROM Account WHERE Id = :acc.Id];
        System.assertEquals(0, deletedAccounts.size());
    }
}