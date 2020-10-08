trigger updateCash on Expense__c (after insert, after update) {
    System.debug('Hello World!');
}