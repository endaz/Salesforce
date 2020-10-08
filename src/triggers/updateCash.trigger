trigger updateCash on Expense__c (before insert, before update) {
    System.debug('The trigger has successfully started!');
    if (trigger.isInsert) {
        cashExpenseUpdate.updateDescriptions(Trigger.New);
    }

    if (trigger.isUpdate) {
        cashExpenseUpdate.updateDescriptions(Trigger.New);
    }
}