public with sharing class cashExpenseUpdate{
    public static void updateDescriptions (List <Expense__c> expenses) {
        for(Expense__c aExpense : expenses) {
            if (aExpense.Category__c == 'Cash Payment') {
                aExpense.Description_Test__c = 'Amount to be deducted from Cash Withdrawal Sum';   
            } else if (aExpense.Cash_Withdrawal__c == true) {
                aExpense.Amount__c = aExpense.Cash_Withdrawal_Sum__c + aExpense.Amount__c;
            }  
        }
    }

}