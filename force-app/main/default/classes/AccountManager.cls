// for CI CD testing purpose


public class AccountManager {
    public static void createAccount() {
        Account acc = new Account();
        acc.Name = 'CI CD account';
        acc.Type = 'customer';
        insert acc;
    }
}